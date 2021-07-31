open Belt
open Util
open SafeNames

let generateType = (name, definition) => {
  `type ${safeTypeName(name)} = ${definition}`
}

let generateField = (~asName=?, fieldName, typeName) =>
  `${Option.mapWithDefault(asName, "", x => `@as("${x}") `)}${safeMemberName(
      fieldName,
    )}: ${typeName}`

let generateRecordTypeDefinition = members => Array.length(members) == 0 ? "unit" : `{\n${Array.joinWith(members, ",\n  ", x => x)}\n}`

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

let generateExceptionType = (members) => {
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
        `@as("${pair.value}")` ++ " #" ++ safeVariantName(pair.value)
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
  generateField(~asName?, safeName, valueType)
}

let indentString = indent => {
  let is = []
  Belt.Array.fill(is, ~len=indent, ~offset=0, " ")
  Belt.Array.joinWith(is, "", x => x)
}

let generateStructureShape = (details: Shape.structureShapeDetails, ~indent=0, ()) => {
  let is = indentString(indent)
  let isError = Trait.hasTrait(details.traits, Trait.isErrorTrait)
  if isError {
    generateExceptionType(Array.map(details.members, generateMember))
  } else {
    generateRecordTypeDefinition(Array.map(details.members, generateMember))
  }
}
let generateUnionShape = (details: Shape.structureShapeDetails) => {
  generateStructureShape(details, ())
}

let generateListShape = (target) =>
  `array<${safeTypeName(target)}>`

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
  // These appear to be generated as arrays
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
let generateOperationStructureType = (varName, opStruct) =>
  switch opStruct {
  | OperationStructure(details) => generateType(`#${varName}`, generateStructureShape(details, ~indent=2, ()))
  | OperationStructureRef(name) => generateType(`#${varName}`, safeTypeName(name))
  | OperationStructureNone => ""
  }
let isOperationStructureNone = opStruct =>
  switch opStruct {
  | OperationStructureNone => true
  | _ => false
  }
let generateOperationModule = (
  moduleName,
  (name, input, output): (string, operationStructure, operationStructure),
) => {
  let commandName = `${symbolName(name)}Command`
  let request = generateOperationStructureType("request", input)
  let response = generateOperationStructureType("response", output)
  let inputType = isOperationStructureNone(input) ? "unit" : "request"
  let outputType = isOperationStructureNone(output)
    ? "Js.Promise.t<unit>"
    : "Js.Promise.t<response>"
  `module ${symbolName(name)} = {\n` ++
  `  type t;\n` ++
  `  ${request}\n` ++
  `  ${response}\n` ++
  `  @module("@aws-sdk/client-${moduleName}") @new external new_: (${inputType}) => t = "${commandName}";\n` ++
  `  @send external rawSend: (awsServiceClient, t) => ${outputType} = "send";\n` ++ `}\n`
}

let generateTypeTarget = (descriptor) => {
  open Shape
  // Js.log(name)
  switch descriptor {
  | StringShape(details) => generateStringShape(details)
  | StructureShape(details) => generateStructureShape(details, ())
  | ListShape({target}) => generateListShape(target)
  | IntegerShape(_) => generateIntegerShape()
  | LongShape(_) => generateLongShape()
  | DoubleShape(_) => generateDoubleShape()
  | FloatShape(_) => generateFloatShape()
  | BooleanShape(_) => generateBooleanShape()
  | BlobShape => generateBinaryShape()
  | MapShape(details) => generateMapShape(details.mapKey, details.mapValue)
  // | ServiceShape({traits}) => generateServiceShape(serviceName, traits)
  | ServiceShape(_) => ""
  | UnionShape(details) => generateUnionShape(details)
  | TimestampShape(details) => generateTimestampShape(details)
  | ResourceShape => "" // TODO: do we need to generate for these?
  | OperationShape(_) => "" // generated separately, no need to do here
  | SetShape(details) => generateSetShape(details)
  }
}

let generateTypeBlock = ({name, descriptor}: Shape.t) => {
  let result = generateTypeTarget(descriptor)
  result == "" ? "" : generateType(name, result)
}

let generateRecursiveTypeBlock = (shapes: array<Shape.t>) => {
  let shapeTypes = Array.map(shapes, shape => `${safeTypeName(shape.name)} = ${generateTypeTarget(shape.descriptor)}`)
  "type rec " ++ Array.joinWith(shapeTypes, " and ", block => block)
}
