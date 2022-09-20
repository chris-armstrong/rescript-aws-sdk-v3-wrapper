open Belt
open Generate
open Dependencies

let optionalServiceName = (optShape: option<Shape.t>) =>
  switch optShape {
  | Some({name}) => Some(name)
  | None => None
  }

let findServiceShape = shapes =>
  shapes->Js.Array2.find(({descriptor}) => Shape.isServiceShape(descriptor))

let getServiceDetails = serviceShapeOpt =>
  Option.flatMap(serviceShapeOpt, ({descriptor}) =>
    switch descriptor {
    | ServiceShape({traits}) =>
      switch Option.getWithDefault(traits, [])->Trait.findTrait(Trait.isAwsApiServiceTrait) {
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
    Js.String2.toUpperCase(Js.String2.slice(part, ~from=0, ~to_=1)) ++
    Js.String2.sliceToEnd(part, ~from=1)
  )
  ->Belt.Array.joinWith("", x => x)

type convertedModule = {
  moduleName: string,
  code: string,
}

exception UnexpectedStructure(string)

let findOperationalStructure = (structures, input) => {
  switch input {
  | Some(target) =>
    switch Js.Array2.find(structures, structure => structure.name == target) {
    | Some(structure) =>
      switch structure.descriptor {
      | StructureShape(details) =>
        Array.length(details.members) > 0 ? OperationStructure(details) : OperationStructureNone
      | _ => raise(UnexpectedStructure("expected structure type for " ++ target))
      }
    | None => OperationStructureRef(target)
    }
  | None => OperationStructureNone
  }
}

let convert = (parsed: Result.t<array<Shape.t>, 'r>) => {
  switch parsed {
  | Ok(shapes) => {
      let shapesWithTargets = Array.map(shapes, ({
        name,
        descriptor,
      }): Dependencies.shapeWithTarget => {
        name: name,
        descriptor: descriptor,
        targets: Dependencies.getTargets(descriptor),
        recursWith: None,
      })
      let shapesWithTargets = Dependencies.order(shapesWithTargets)

      // Separate out all operation shapes
      let (operationShapes, allStructures) = Array.partition(shapesWithTargets, ({descriptor}) =>
        switch descriptor {
        | OperationShape(_) => true
        | _ => false
        }
      )

      // let (recursiveShapes, allStructures) = Array.partition(allStructures, ({ recursWith}) => Option.isSome(recursWith))

      // Simplify operations to their constituent parts
      let operations = Array.keepMap(operationShapes, shape =>
        switch shape {
        | {name, descriptor: OperationShape(details), targets} => Some((name, details, targets))
        | _ => None
        }
      )
      // Get list of all operation dependencies
      let operationDependencies =
        operations->Array.map(((_, _, targets)) => targets)->Array.concatMany

      // Separate operation structures (input and output) from remaining structures (except those that operations depend on)
      let (operationStructures, remainingStructures) = Array.partition(allStructures, structure =>
        switch structure {
        | {name, descriptor: StructureShape(_)} =>
          Js.Array2.includes(operationDependencies, name) &&
          !Array.some(allStructures, ({targets}) => Array.some(targets, target => target === name))
        | _ => false
        }
      )

      // Group operation structure with input/output dependencies
      let operationModuleParts = Array.map(operations, ((name, details, _)) => {
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
      | Some({arnNamespace: serviceName, cloudFormationName}) => {
          let moduleName = Js.String2.replace(cloudFormationName, " ", "")
          let operationSnippets = Array.map(operationModuleParts, ((name, details, structures)) => {
            let inputOperationStructure = findOperationalStructure(structures, details.input)
            let outputOperationStructure = findOperationalStructure(structures, details.output)
            generateOperationModule(
              serviceName,
              (name, inputOperationStructure, outputOperationStructure),
            )
          })
          let codeSnippets = Array.map(remainingStructures, shape => {
            switch shape.recursWith {
            | Some(recursItems) =>
              generateRecursiveTypeBlock(
                Array.concat([shape], recursItems)->Array.map((shape): Shape.t => {
                  name: shape.name,
                  descriptor: shape.descriptor,
                }),
              )
            | None => generateTypeBlock({name: shape.name, descriptor: shape.descriptor})
            }
          })
          Ok({
            code: Array.concatMany([
              [generateResponseMetadata()],
              [generateServiceShape(serviceName, cloudFormationName)],
              codeSnippets,
              operationSnippets,
            ])->Array.joinWith("\n", x => x),
            moduleName: moduleName,
          })
        }

      | None => Error("no service definition in file")
      }
    }

  | Error(y) => Error(`Unknown conversion error: ${y}`)
  }
}
