open Shape

let smithyImplicitShapes: array<t> = [
  {name: "smithy.api#String", descriptor: StringShape({traits: None})},
  {name: "smithy.api#Boolean", descriptor: BooleanShape({ traits: None })},
  {name: "smithy.api#Integer", descriptor: IntegerShape({ traits: None })},
  {name: "smithy.api#Timestamp", descriptor: TimestampShape({traits: None})},
]

/**
 * Get the targets for each shape type
 */
let getTargets = shape =>
  switch shape {
  | ListShape(listShapeDetails) => [listShapeDetails.target]
  | OperationShape(details) =>
    Js.Array2.concatMany(
      Belt.Option.getWithDefault(Belt.Option.map(details.input, extracted => [extracted]), []),
      [
        Belt.Option.getWithDefault(Belt.Option.map(details.output, extracted => [extracted]), []),
        Belt.Option.getWithDefault(Belt.Option.map(details.errors, extracted => extracted), []),
      ],
    )
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
  }

exception DependencyError(array<string>, array<string>)

let containsAll = (within: array<string>, targets: array<string>) => {
  if Belt.Array.length(targets) === 0 {
    true
  } else {
    Belt.Array.every(targets, target => Js.Array2.includes(within, target))
  }
}
let part1 = ((x, _)) => x
let rec order_ = (remaining, ordered: array<Shape.t>): array<Shape.t> => {
  if Belt.Array.length(remaining) > 0 {
    let remainingShapesWithTargets = Belt.Array.map(remaining, shape => (
      shape,
      getTargets(shape.descriptor),
    ))

    let orderedNames = Belt.Array.map(ordered, ({name}) => name)
    let (free, unfree) = Belt.Array.partition(remainingShapesWithTargets, ((_, targets)) =>
      containsAll(orderedNames, targets)
    )
    if Belt.Array.length(free) === 0 {
      raise(
        DependencyError(
          Belt.Array.map(unfree, (({name}, _)) => name),
          Belt.Array.map(ordered, ({name}) => name),
        ),
      )
    }
    let ordered = Belt.Array.concat(ordered, Belt.Array.map(free, ((shape, _)) => shape))
    order_(Belt.Array.map(unfree, ((shape, _)) => shape), ordered)
  } else {
    ordered
  }
}
let order = shapes => {
  let implicitShapes = Belt.Array.keep(smithyImplicitShapes, shape =>
    Belt.Array.every(shapes, ({name}) => name != shape.name)
  )
  order_(shapes, implicitShapes)
}
