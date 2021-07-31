open Parse_api
let parsed = Parse_api.parse("aws-sdk-js-v3/codegen/sdk-codegen/aws-models/sqs.2012-11-05.json")

let getTargets = shape =>
  switch shape {
  | ListShape(_, listShapeDetails) => [listShapeDetails.target]
  | OperationShape(_, details) =>
    Js.Array2.concat(
      [details.input],
      Js.Option.getWithDefault([], Belt.Option.map(details.output, (extracted) => [extracted])),
    )
  | StructureShape(_, { members }) => Js.Array2.map(members, member => member.target)
  | ServiceShape(_, { operations }) => Js.Array2.map(operations, operation => operation)
  | MapShape(_, { mapKey, mapValue }) => [mapKey.target, mapValue.target]
 | _ => []
  }

let order = shapes => {
  let targets = Js.Array2.map(shapes, getTargets)
  Js.log(targets)
}

switch parsed {
| Ok(shapes) => order(shapes)
| Error(y) => Js.log2(`error`, y)
}
