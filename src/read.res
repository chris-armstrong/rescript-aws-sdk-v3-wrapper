open Parse_api
let parsed = Parse_api.parse("aws-sdk-js-v3/codegen/sdk-codegen/aws-models/sqs.2012-11-05.json")

let safeTypeName = name =>
  Js.String2.toLowerCase(Js.String2.charAt(name, 0)) ++ Js.String2.sliceToEnd(name, ~from=1)

let generateStringType = (name, details: stringShapeDetails) => {
  let enumTrait = Js.Option.map((. traits) =>
    Js.Array2.find(traits, trait =>
      switch trait {
      | EnumTrait(_) => true
      | _ => false
      }
    )
  , details.traits)
  switch enumTrait {
  | Some(Some(EnumTrait(pairs))) => {
      let enum = Belt.Array.map(pairs, pair => "#" ++ pair.value)
      "type " ++ safeTypeName(name) ++ " = [ " ++ Belt.Array.joinWith(enum, " | ", x => x) ++ "]"
    }
  | _ => "type " ++ safeTypeName(name) ++ " = string"
  }
}

let isRequired = traits => Js.Array2.some(traits, trait =>
      switch trait {
      | RequiredTrait => true
      | _ => false
      }
    )

let generateMember = (m: member) => {
  let required = switch m.traits {
  | Some(traits) => isRequired(traits)
  | None => false
  }
  `\t@as("${m.name}") ` ++
  safeTypeName(m.name) ++
  ": " ++ (
    required ? `option<${safeTypeName(symbolName(m.target))}>` : safeTypeName(symbolName(m.target))
  )
}

type blah = {}

let generateStructureShape = (name, details) => {
  let memberStrings = Belt.Array.map(details.members, generateMember)
  "type " ++
  safeTypeName(name) ++
  " = {\n" ++
  Belt.Array.joinWith(memberStrings, ",\n", x => x) ++ "\n}"
}

let generate = shape => {
  let name = symbolName(shape.name)
  switch shape.descriptor {
  | StringShape(details) => generateStringType(name, details)
  | StructureShape(details) => generateStructureShape(name, details)
  | _ => ""
  }
}
switch parsed {
| Ok(shapes) => {
    let ordered = Dependencies.order(shapes)
    let codeSnippets = Belt.Array.map(ordered, shape => generate(shape))
    Js.log(Belt.Array.joinWith(codeSnippets, "\n", x => x))
  }
| Error(y) => Js.log2(`error`, y)
}
