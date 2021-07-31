type member = {
  name: string,
  target: string,
  traits: option<array<Trait.t>>,
}

type structureShapeDetails = {
  traits: option<array<Trait.t>>,
  members: array<member>,
}

type listShapeDetails = {target: string, traits: option<array<Trait.t>>}
type operationShapeDetails = {
  input: option<string>,
  output: option<string>,
  errors: option<array<string>>,
  documentation: option<string>,
}

type serviceShapeDetails = {
  version: string,
  operations: option<array<string>>,
  traits: array<Trait.t>,
}

type primitiveShapeDetails = {traits: option<array<Trait.t>>}

type mapKeyValue = {
  target: string,
  traits: option<array<Trait.t>>,
}

type mapShapeDetails = {
  mapKey: mapKeyValue,
  mapValue: mapKeyValue,
}

type timestampShapeDetails = {
  traits: option<array<Trait.t>>
}

type shapeDescriptor =
  | ListShape(listShapeDetails)
  | OperationShape(operationShapeDetails)
  | StructureShape(structureShapeDetails)
  | UnionShape(structureShapeDetails)
  | ServiceShape(serviceShapeDetails)
  | BlobShape
  | BooleanShape(primitiveShapeDetails)
  | IntegerShape(primitiveShapeDetails)
  | StringShape(primitiveShapeDetails)
  | MapShape(mapShapeDetails)
  // TODO: something useful with resource shapes (if needed)
  | ResourceShape
  | TimestampShape(timestampShapeDetails)
  | LongShape(primitiveShapeDetails)
  | DoubleShape(primitiveShapeDetails)

type t = {
  name: string,
  descriptor: shapeDescriptor
}

let isServiceShape = shape =>
  switch shape {
  | ServiceShape(_) => true
  | _ => false
  }