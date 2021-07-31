open Belt
open Generate

let optionalServiceName = (optShape: option<Shape.t>) =>
  switch optShape {
  | Some({name}) => Some(name)
  | None => None
  }

let findServiceShape = shapes =>
  shapes->Js.Array2.find(({descriptor}: Shape.t) => Shape.isServiceShape(descriptor))

let getServiceDetails = (serviceShapeOpt: option<Shape.t>) =>
  Option.flatMap(serviceShapeOpt, ({descriptor}) =>
    switch descriptor {
    | ServiceShape({traits}) =>
      switch traits->Trait.findTrait(Trait.isAwsApiServiceTrait) {
      | Some(ServiceTrait(serviceDetails)) => Some(serviceDetails)
      | _ => None
      }
    | _ => None
    }
  )

let kebabCaseToTitleCase = str =>
  str
  ->Js.String2.split("-")
  ->Belt.Array.map(part =>
    Js.String2.toUpperCase(Js.String2.slice(part, ~from=0, ~to_=1)) ++ Js.String2.sliceToEnd(part, ~from=1)
  )->Belt.Array.joinWith("", x => x)

type convertedModule = {
  moduleName: string,
  code: string,
}

let convert = parsed => {
  switch parsed {
  | Ok(shapes) => {
      // Put shapes in dependency order
      let ordered = Dependencies.order(shapes)
      // Separate out all operation shapes
      let (operationShapes, allStructures) = Array.partition(ordered, ({descriptor}) =>
        switch descriptor {
        | OperationShape(_) => true
        | _ => false
        }
      )
      // Simplify operations to their constituent parts
      let operations = Array.keepMap(operationShapes, shape =>
        switch shape {
        | {name, descriptor: OperationShape(details)} => Some((name, details))
        | _ => None
        }
      )
      // Get list of all operation dependencies
      let operationDependencies =
        operations
        ->Array.map(((_, {input, output})) =>
          Array.concat(
            Option.mapWithDefault(input, [], input => [input]),
            Option.mapWithDefault(output, [], output => [output]),
          )
        )
        ->Array.concatMany
      // Separate operation structures (input and output) from remaining structures
      let (operationStructures, remainingStructures) = Array.partition(allStructures, structure =>
        switch structure {
        | {name, descriptor: StructureShape(_)} => Js.Array2.includes(operationDependencies, name)
        | _ => false
        }
      )
      // Group operation structure with input/output dependencies
      let operationModuleParts = Array.map(operations, ((name, details)) => {
        let {input, output} = details
        let inputString = Belt.Option.getWithDefault(input, "")
        let outputString = Belt.Option.getWithDefault(output, "")
        let structures = Array.keep(operationStructures, structure =>
          structure.name === inputString || structure.name == outputString
        )
        (name, details, structures)
      })

      let service = findServiceShape(remainingStructures)
      let serviceDetails = getServiceDetails(service)
      switch serviceDetails {
      | Some({ arnNamespace: packagingName, cloudFormationName }) => {
          let moduleName = Js.String2.replace(cloudFormationName, " ", "");
          let operationSnippets = Array.map(operationModuleParts, modulePart =>
            generateOperationModule(packagingName, modulePart)
          )
          let codeSnippets = Array.map(remainingStructures, shape =>
            generateTypeBlock(packagingName, shape)
          )
          Ok({
            code: Array.concat(codeSnippets, operationSnippets)->Array.joinWith("\n", x => x),
            moduleName: moduleName,
          })
        }
      | None => Error("no service definition in file")
      }
    }
  | Error(y) => Error(`Unknown conversion error: ${y}`)
  }
}
