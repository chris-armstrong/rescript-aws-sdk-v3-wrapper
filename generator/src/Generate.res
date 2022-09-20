open Belt
open Util
open SafeNames

let generateType = (name, definition) => {
  `type ${safeTypeName(name)} = ${definition}`
}

let generateField = (~asName=?, ~doc=?, fieldName, typeName) =>
  `${Option.mapWithDefault(doc, "", x => `${x} `)}${Option.mapWithDefault(asName, "", x =>
      `@as("${x}") `
    )}${safeMemberName(fieldName)}: ${typeName}`

let generateRecordTypeDefinition = members =>
  Array.length(members) == 0 ? "{.}" : `{\n${Array.joinWith(members, ",\n  ", x => x)}\n}`

let escapeString = str =>
  str
  |> Js.String.replaceByRe(Js.Re.fromStringWithFlags("\\\\", ~flags="g"), "\\\\")
  |> Js.String.replaceByRe(Js.Re.fromStringWithFlags("\"", ~flags="g"), "\\\"")

let generateDoc = traits => {
  let docStrs =
    traits
    ->Option.getWithDefault([])
    ->Array.keepMap(trait =>
      switch trait {
      | Trait.DocumentationTrait(str) => Some(str)
      | _ => None
      }
    )
  let docs = Js.String.concatMany(docStrs, "")
  if Js.String.length(docs) > 0 {
    `@ocaml.doc("${escapeString(docs)}")`
  } else {
    ""
  }
}

let generateIntegerShape = () => "int"
let generateLongShape = () => "float"
let generateDoubleShape = () => "float"
let generateFloatShape = () => "float"
let generateBooleanShape = () => "bool"
let generateBinaryShape = () => "NodeJs.Buffer.t"

let generateResponseMetadata = () => {
  generateType(
    "responseMetadata",
    generateRecordTypeDefinition([
      generateField("httpStatusCode", "option<float>"),
      generateField("requestId", "option<string>"),
      generateField("extendedRequestId", "option<string>"),
      generateField("cfId", "option<string>"),
      generateField("attempts", "option<int>"),
      generateField("totalRetryDelay", "option<int>"),
    ]),
  )
}

let generateExceptionType = members => {
  generateRecordTypeDefinition(
    Array.concat(
      [
        generateField("name", "string"),
        generateField(~asName="$fault", "fault", "[#client | #server]"),
        generateField(~asName="$service", "service", "option<string>"),
        generateField(~asName="$metadata", "metadata", "responseMetadata"),
      ],
      members,
    ),
  )
}

let generateStringShape = (details: Shape.primitiveShapeDetails) => {
  let enumTrait = Js.Option.map(
    (. traits) => Js.Array2.find(traits, Trait.isEnumTrait),
    details.traits,
  )
  switch enumTrait {
  | Some(Some(EnumTrait(pairs))) => {
      let enum = Belt.Array.map(pairs, pair => 
        `@as("${pair.value}") #${safeVariantName(pair.value)}`
      )
      "[" ++ Belt.Array.joinWith(enum, " | ", x => x) ++ "]"
    }
  | _ => "string"
  }
}
let generateMember = (m: Shape.member) => {
  let safeName = safeMemberName(m.name)
  let required = Trait.hasTrait(m.traits, Trait.isRequiredTrait)
  let valueType = required ? safeTypeName(m.target) : `option<${safeTypeName(m.target)}>`
  let asName = safeName != m.name ? Some(m.name) : None
  let doc = generateDoc(m.traits)
  generateField(~asName?, safeName, valueType, ~doc)
}

let indentString = indent => {
  let is = []
  Belt.Array.fill(is, ~len=indent, ~offset=0, " ")
  Belt.Array.joinWith(is, "", x => x)
}

let generateStructureShape = (details: Shape.structureShapeDetails) => {
  let isError = Trait.hasTrait(details.traits, Trait.isErrorTrait)
  if isError {
    generateExceptionType(Array.map(details.members, generateMember))
  } else {
    generateRecordTypeDefinition(Array.map(details.members, generateMember))
  }
}
let generateUnionShape = (details: Shape.structureShapeDetails) => {
  generateStructureShape(details)
}

let safeUnionValue = (members: array<Shape.member>, member: Shape.member) => {
  let nones = Array.keepMap(members, candidate =>
    candidate != member ? Some(`${safeTypeName(candidate.name)}: None`) : None
  )
  `{ ${safeTypeName(member.name)}: Some(x), ${Array.joinWith(nones, ",", x => x)} }`
}

let generateUnionHelperModule = (name: string, details: Shape.structureShapeDetails) => {
  let tConstructors = Array.map(details.members, member =>
    `${safeVariantName(member.name)}(${safeTypeName(member.target)})`
  )
  let t = `type t = ${Array.joinWith(tConstructors, " | ", x => x)};`
  let classifyLines = Array.map(details.members, member =>
    `  | { ${safeMemberName(member.name)}: Some(x) } => ${safeConstructorName(member.name)}(x);`
  )
  let exceptionName = `${safeConstructorName(symbolName(name))}Unspecified`
  let classify = `let classify = value => switch value {
    ${Array.joinWith(classifyLines, "\n", x => x)}
    | _ => raise(${exceptionName})
  };
  `

  let makeLines = Array.map(details.members, member =>
    `| ${safeConstructorName(member.name)}(x) => ${safeUnionValue(details.members, member)}`
  )
  let make = `let make = value => switch value {
    ${Array.joinWith(makeLines, "\n", x => x)}
  };
  `
  let exc = `exception ${exceptionName};`
  `
  module ${symbolName(name)} = {
    ${t}
    ${exc}
    ${classify}
    ${make}
  }`
}

let generateListShape = target => `array<${safeTypeName(target)}>`

let generateMapShape = (_, mapValue: Shape.mapKeyValue) => {
  let valueType = safeTypeName(mapValue.target)
  `Js.Dict.t<${valueType}>`
}

/*
 * thrown when the ServiceTrait is missing
 */
exception NoServiceTrait(string)
/*
 * thrown for unknown timestamp format trait
 */
exception UnknownTimestampFormat(string)

let generateServiceShape = (serviceName, cloudFormationName) => {
  `type awsServiceClient;\n@module("@aws-sdk/client-${serviceName}") @new external createClient: unit => awsServiceClient = "${cloudFormationName}Client";`
}

let generateSetShape = (details: Shape.setShapeDetails) => {
  // These appear to be mapped as arrays in TypeScript
  `array<${safeTypeName(details.target)}>`
}

let generateTimestampShape = ({traits}: Shape.timestampShapeDetails) => {
  let timestampFormat = Trait.findTrait(
    Belt.Option.getWithDefault(traits, []),
    Trait.isTimestampFormatTrait,
  )
  switch timestampFormat {
  | Some(TimestampFormatTrait("date-time")) => `Js.Date.t;`
  | Some(TimestampFormatTrait("epoch-seconds")) => `int;`
  | _ => `Js.Date.t;`
  }
}

/**
 * The operation structure, which may be generated inline (OperationStructure), as
 * a type alias to a shared structure (OperationStructureRef), or as a unit when
 * has no parameters (OperationStructureNone)
 */
type operationStructure =
  | OperationStructure(Shape.structureShapeDetails)
  | OperationStructureRef(string)
  | OperationStructureNone

/**
  Generate the operation structure, which could be:
  1. None - no input request parameters => unit
  2. Ref - another type in the module => reference by name
  3. Structure - has its own structure => generate a type called `request`
*/
let generateOperationStructureType = (varName, opStruct) =>
  switch opStruct {
  | OperationStructure(details) => {
      let docs = generateDoc(details.traits)
      docs ++ generateType(`#${varName}`, generateStructureShape(details))
    }
  | OperationStructureRef(name) => generateType(`#${varName}`, safeTypeName(name))
  | OperationStructureNone => {
    generateType(`#${varName}`, generateStructureShape({ traits: None, members: [] }))
  } 
  }

/* Determine if the input request has a type, or is just `unit` */
let isOperationStructureNone = opStruct =>
  switch opStruct {
  | OperationStructureNone => true
  | _ => false
  }

let generateMake = input =>
  switch input {
  | OperationStructure({members}) => {
      let (requiredMembers, optionalMembers) = Array.partition(members, x =>
        Trait.hasTrait(x.traits, Trait.isRequiredTrait)
      )
      let requiredArguments = Array.map(requiredMembers, member =>
        `~${safeMemberName(member.name)}`
      )
      let optionalArguments = Array.map(optionalMembers, member =>
        `~${safeMemberName(member.name)}=?`
      )
      let arguments =
        Array.concat(requiredArguments, optionalArguments)->Array.joinWith(", ", x => x)
      let fields = Array.joinWith(members, ", ", member => safeMemberName(member.name) ++ ": " ++ safeMemberName(member.name))
      `let make = (${arguments}, ()) => new({ ${fields} })`
    }
  | OperationStructureNone => { `let make = () => new(Js.Obj.empty())`}
  | OperationStructureRef(_) => // FIXME: ref is in the broader types, so generate nothing for now
    ""
  }

let generateOperationModule = (
  moduleName,
  (name, input, output): (string, operationStructure, operationStructure),
) => {
  let commandName = `${symbolName(name)}Command`
  let request = generateOperationStructureType("request", input)
  let response = generateOperationStructureType("response", output)
  let inputType = "request"
  let outputType = isOperationStructureNone(output) ? "Js.Promise.t<unit>" : "Js.Promise.t<response>"
  let make = generateMake(input)
  Js.Array.joinWith("\n",[
    `module ${symbolName(name)} = {`,
    `  type t;`,
    `  ${request}`,
    `  ${response}`,
    `  @module("@aws-sdk/client-${moduleName}") @new external new: (${inputType}) => t = "${commandName}";`,
    `  ${make}`,
    `  @send external send: (awsServiceClient, t) => ${outputType} = "send";`,
    `}`
  ])
}

let generateTypeTarget = descriptor => {
  open Shape
  // Js.log(name)
  switch descriptor {
  | StringShape(details) => generateStringShape(details)
  | StructureShape(details) => generateStructureShape(details)
  | ListShape({target}) => generateListShape(target)
  | IntegerShape(_) => generateIntegerShape()
  | LongShape(_) => generateLongShape()
  | DoubleShape(_) => generateDoubleShape()
  | FloatShape(_) => generateFloatShape()
  | BooleanShape(_) => generateBooleanShape()
  | BlobShape(_) => generateBinaryShape()
  | MapShape(details) => generateMapShape(details.mapKey, details.mapValue)
  // ServiceShapes are handled separately
  | ServiceShape(_) => ""
  | UnionShape(details) => generateUnionShape(details)
  | TimestampShape(details) => generateTimestampShape(details)
  | ResourceShape => "" // TODO: do we need to generate for these?
  | OperationShape(_) => "" // generated separately, no need to do here
  | SetShape(details) => generateSetShape(details)
  }
}

/*
 * Generate a non-recursive type
 */
let generateTypeBlock = ({name, descriptor}: Shape.t) => {
  let result = generateTypeTarget(descriptor)
  let t = result == "" ? "" : generateType(name, result)
  let docs = generateDoc(Shape.getShapeTraits(descriptor))
  docs ++
  switch descriptor {
  | UnionShape(details) => {
      let shapeModule = generateUnionHelperModule(name, details)
      t ++ shapeModule
    }
  | _ => t
  }
}

/* Generate a recursive type (from the list of mutually dependent shapes) */
let generateRecursiveTypeBlock = (shapes: array<Shape.t>) => {
  let shapeTypes = Array.map(shapes, shape =>
    `${safeTypeName(shape.name)} = ${generateTypeTarget(shape.descriptor)}`
  )
  "type rec " ++ Array.joinWith(shapeTypes, " and ", block => block)
}
