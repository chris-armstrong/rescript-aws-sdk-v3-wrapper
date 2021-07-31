open Shape
open Belt

type shapeWithTarget = {name: string, descriptor: Shape.shapeDescriptor, targets: array<string>}

let smithyImplicitShapes = [
  {name: "smithy.api#String", descriptor: StringShape({traits: None}), targets: []},
  {name: "smithy.api#Boolean", descriptor: BooleanShape({traits: None}), targets: []},
  {name: "smithy.api#Integer", descriptor: IntegerShape({traits: None}), targets: []},
  {name: "smithy.api#Timestamp", descriptor: TimestampShape({traits: None}), targets: []},
  {name: "smithy.api#Long", descriptor: LongShape({traits: None}), targets: []},
]

/**
 * Get the targets for each shape type
 */
let getTargets = descriptor =>
  switch descriptor {
  | ListShape(listShapeDetails) => [listShapeDetails.target]
  | OperationShape(details) =>
    Array.concatMany([
      Option.getWithDefault(Option.map(details.input, extracted => [extracted]), []),
      Option.getWithDefault(Option.map(details.output, extracted => [extracted]), []),
      Option.getWithDefault(Option.map(details.errors, extracted => extracted), []),
    ])
  | StructureShape({members}) => Js.Array2.map(members, member => member.target)
  | ServiceShape({operations}) => Belt.Option.getWithDefault(operations, [])
  | MapShape({mapKey, mapValue}) => [mapKey.target, mapValue.target]
  | BlobShape => []
  | BooleanShape(_) => []
  | IntegerShape(_) => []
  | StringShape(_) => []
  | ResourceShape => []
  | TimestampShape(_) => []
  | UnionShape({members}) => Js.Array2.map(members, member => member.target)
  | LongShape(_) => []
  | DoubleShape(_) => []
  | SetShape({target}) => [target]
  | FloatShape(_) => []
  }

let getShapeTargets = shapes =>
  Array.map(shapes, (shape: Shape.t) => (shape, getTargets(shape.descriptor)))

exception DependencyError(array<string>, array<string>)

let containsAll = (within: array<string>, targets: array<string>) => {
  if Array.length(targets) === 0 {
    true
  } else {
    Array.every(targets, target => Js.Array2.includes(within, target))
  }
}
let rec order_ = (remaining: array<shapeWithTarget>, ordered: array<shapeWithTarget>): array<
  shapeWithTarget,
> => {
  if Array.length(remaining) > 0 {
    let orderedNames = Array.map(ordered, ({name}) => name)
    let (free, unfree) = Array.partition(remaining, ({targets}) =>
      containsAll(orderedNames, targets)
    )
    if Array.length(free) === 0 {
      raise(
        DependencyError(Array.map(unfree, ({name}) => name), Array.map(ordered, ({name}) => name)),
      )
    }
    let ordered = Array.concat(ordered, free)
    order_(unfree, ordered)
  } else {
    ordered
  }
}
let order = shapesWithTargets => {
  let implicitShapes = Array.keepMap(smithyImplicitShapes, shape =>
    Array.every(shapesWithTargets, ({name}) => name != shape.name)
      ? Some(shape)
      : None
  )
  order_(shapesWithTargets, implicitShapes)
}
