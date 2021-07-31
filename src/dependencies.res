open Parse_api

/**
 * Get the targets for each shape type
 */
let getTargets = shape =>
  switch shape {
  | ListShape(listShapeDetails) => [listShapeDetails.target]
  | OperationShape(details) =>
    Js.Array2.concatMany(
      [details.input],
      [
      Js.Option.getWithDefault([], Belt.Option.map(details.output, extracted => [extracted])),
      Js.Option.getWithDefault([], Belt.Option.map(details.errors, extracted => extracted)),
      ]
    )
  | StructureShape({members}) => Js.Array2.map(members, member => member.target)
  | ServiceShape({operations}) => Js.Array2.map(operations, operation => operation)
  | MapShape({mapKey, mapValue}) => [mapKey.target, mapValue.target]
  | BlobShape => []
  | BooleanShape => []
  | IntegerShape => []
  | StringShape(_) => []
  }

exception DependencyError

let containsAll = (within: array<string>, targets: array<string>) => {
  if Belt.Array.length(targets) === 0 {
    true
  } else {
    Belt.Array.every(targets, target => Js.Array2.includes(within, target))
  }
}
let part1 = ((x, _)) => x
let rec order_ = (remaining, ordered: array<shape>): array<shape> => {
  if (Belt.Array.length(remaining) > 0) {
    let remainingShapesWithTargets = Belt.Array.map(remaining, shape => (shape, getTargets(shape.descriptor)))

    let orderedNames = Belt.Array.map(ordered, ({ name }) => name)
    let (free, unfree) = Belt.Array.partition(remainingShapesWithTargets, ((_, targets)) =>
      containsAll(orderedNames, targets)
    )
    if Belt.Array.length(free) === 0 {
      raise(DependencyError)
    }
    let ordered = Belt.Array.concat(ordered, Belt.Array.map(free, ((shape, _))=> shape))
    order_(Belt.Array.map(unfree, ((shape, _)) => shape), ordered)
  } else {
    ordered
  }
}
let order = shapes => order_(shapes, [])