open Belt
open Util
open SafeNames;

let generateType = (name, definition) => {
  `type ${safeTypeName(name)} = ${definition}`;
}

let generateField = (~asName=?, fieldName, typeName) => `${Option.mapWithDefault(asName, "", x => `@as("${x}") `)}${safeMemberName(fieldName)}: ${typeName}`

let generateRecordTypeDefinition = members => `{\n${Array.joinWith(members, ",\n  ", x => x)}\n};`;

let generateIntegerShape = name => generateType(name, "int")
let generateLongShape = name => generateType(name, "float");
let generateDoubleShape = name => generateType(name, "float");
let generateFloatShape = name => generateType(name, "float");
let generateBooleanShape = name => generateType(name, "bool");
let generateBinaryShape = name => generateType(name, "NodeJs.Buffer.t");

let generateResponseMetadata = () => {
  generateType("responseMetadata", generateRecordTypeDefinition([
    generateField("httpStatusCode", "option<float>"),
    generateField("requestId", "option<string>"),
    generateField("extendedRequestId", "option<string>"),
    generateField("cfId", "option<string>"),
    generateField("attempts", "option<int>"),
    generateField("totalRetryDelay", "option<int>"),
  ]))
}

let generateExceptionType = (name, members) => {
  generateType(name, generateRecordTypeDefinition(Array.concat([
    generateField("name", "string"),
    generateField(~asName="$fault", "fault", "[#client | #server]"),
    generateField(~asName="$service", "service", "option<string>"),
    generateField(~asName="$metadata", "metadata", "responseMetadata"),
  ], members)))

}

let generateStringShape = (name, details: Shape.primitiveShapeDetails) => {
  let enumTrait = Js.Option.map(
    (. traits) => Js.Array2.find(traits, Trait.isEnumTrait),
    details.traits,
  )
  switch enumTrait {
  | Some(Some(EnumTrait(pairs))) => {
      let enum = Belt.Array.map(pairs, pair =>
        `@as("${pair.value}")` ++ " #" ++ safeVariantName(pair.value)
      )
      "type " ++
      safeTypeName(name) ++
      " = [" ++
      Belt.Array.joinWith(enum, " | ", x => x) ++ "]"
    }
  | _ =>
    "type " ++ safeTypeName(name) ++ " = string"
  }
}
let generateMember = (m: Shape.member) => {
  let safeName = safeMemberName(m.name)
  let required = Trait.hasTrait(m.traits, Trait.isRequiredTrait)
  let valueType =
    required
      ? safeTypeName(m.target)
      : `option<${safeTypeName(m.target)}>`
  let asName = (safeName != m.name ? Some(m.name) : None)
  generateField(~asName=?asName, safeName, valueType)
}

let indentString = indent => {
  let is = []
  Belt.Array.fill(is, ~len=indent, ~offset=0, " ")
  Belt.Array.joinWith(is, "", x => x)
}

let generateStructureShape = (name, details: Shape.structureShapeDetails, ~indent=0, ()) => {
  let is = indentString(indent)
  let memberStrings = Array.map(details.members, member => is ++ indentString(2) ++generateMember(member))
  let isError = Trait.hasTrait(details.traits, Trait.isErrorTrait)
  if isError {
    generateExceptionType(name, Array.map(details.members, generateMember))
  } else {
    is++"type " ++
    safeTypeName(name) ++
    " = " ++ (
      Array.length(memberStrings) == 0
        ? "unit"
        : "{\n" ++ Array.joinWith(memberStrings, ",\n", x => x) ++ "\n" ++is++"}"
    )
  }
}

let generateUnionMember = ({name, traits, target}: Shape.member) => {
  `${safeConstructorName(name)}(${safeTypeName(target)})`
}

let generateUnionShape = (name, details: Shape.structureShapeDetails) => {
  let memberStrings = Array.map(details.members, generateUnionMember)
  `type ${safeTypeName(
name
    )} = ${Array.joinWith(memberStrings, " | ", x => x)};`
}

let generateListShape = (name, target) =>
  `type ${safeTypeName(
name
    )} = array<${safeTypeName(target)}>`

let generateMapShape = (name, _, mapValue: Shape.mapKeyValue) => {
  let valueType = safeTypeName(mapValue.target)
  `type ${safeTypeName(
name
    )} = Js.Dict.t< ${valueType}>`
}

/*
 * thrown when the ServiceTrait is missing
 */
exception NoServiceTrait(string)
/*
 * thrown for unknown timestamp format trait
 */
exception UnknownTimestampFormat(string)

let generateServiceShape = (serviceName, traits) => {
  switch traits->Trait.findTrait(Trait.isAwsApiServiceTrait) {
  | Some(ServiceTrait({cloudFormationName})) =>
    `type awsServiceClient;\n@module("@aws-sdk/client-${serviceName}") @new external createClient: unit => awsServiceClient = "${cloudFormationName}Client";`
  | _ => ""
  }
}

let generateSetShape = (name, details: Shape.setShapeDetails) => {
  // These appear to be generated as arrays
  `type ${safeTypeName(name)} = array<${safeTypeName(details.target)}>`;
}

let generateTimestampShape = (name, {traits}: Shape.timestampShapeDetails) => {
  let timestampFormat = Trait.findTrait(
    Belt.Option.getWithDefault(traits, []),
    Trait.isTimestampFormatTrait,
  )
  let typeName = safeTypeName(name);
  switch timestampFormat {
  | Some(TimestampFormatTrait("date-time")) => `type ${typeName} = Js.Date.t;`
  | Some(TimestampFormatTrait("epoch-seconds")) => `type ${typeName} = int;`
  | _ => `type ${typeName} = Js.Date.t;`
  }
}

/**
 * The operation structure, which may be generated inline (OperationStructure), as
 * a type alias to a shared structure (OperationStructureRef), or as a unit when
 * has no parameters (OperationStructureNone)
 */
type operationStructure = | OperationStructure(Shape.structureShapeDetails) | OperationStructureRef(string) | OperationStructureNone
let generateOperationStructureType = (varName, opStruct) => switch opStruct {
  | OperationStructure(details) => generateStructureShape("#"++varName, details, ~indent=2, ())
  | OperationStructureRef(name) => `type ${varName} = ${safeTypeName(name)};`;
  | OperationStructureNone => ""
}
let isOperationStructureNone = opStruct => switch opStruct { |OperationStructureNone => true | _ => false}
let generateOperationModule = (
  moduleName,
  (name, input, output): (string, operationStructure, operationStructure),
) => {
  let commandName = `${symbolName(name)}Command`
  let request = generateOperationStructureType("request", input)
  let response = generateOperationStructureType("response", output)
  let inputType = isOperationStructureNone(input) ? "unit" : "request"
  let outputType = isOperationStructureNone(output)? "Js.Promise.t<unit>" : "Js.Promise.t<response>"
  `module ${symbolName(name)} = {\n` ++
  `  type t;\n` ++
  `  ${request}\n` ++
  `  ${response}\n` ++
  `  @module("@aws-sdk/client-${moduleName}") @new external new_: (${inputType}) => t = "${commandName}";\n` ++
  `  @send external rawSend: (awsServiceClient, t) => ${outputType} = "send";\n` ++
  `}\n`
}

let generateTypeBlock = (serviceName, { name, descriptor }: Shape.t) => {
  // Js.log(name)
  switch descriptor {
  | StringShape(details) => generateStringShape(name, details)
  | StructureShape(details) => generateStructureShape(name, details, ())
  | ListShape({target}) => generateListShape(name, target)
  | IntegerShape(_) => generateIntegerShape(name)
  | LongShape(_) => generateLongShape(name)
  | DoubleShape(_) => generateDoubleShape(name)
  | FloatShape(_) => generateFloatShape(name)
  | BooleanShape(_) => generateBooleanShape(name)
  | BlobShape => generateBinaryShape(name)
  | MapShape(details) => generateMapShape(name, details.mapKey, details.mapValue)
  | ServiceShape({traits}) => generateServiceShape(serviceName, traits)
  | UnionShape(details) => generateUnionShape(name, details)
  | TimestampShape(details) => generateTimestampShape(name, details)
  | ResourceShape => "" // TODO: do we need to generate for these?
  | OperationShape(_) => "" // generated separately, no need to do here
  | SetShape(details) => generateSetShape(name, details)
  }
}

let generateRecursiveTypeBlock = (serviceName, shapes: array<Shape.t>) => {
  let shapeTypes = Array.map(shapes, shape => generateTypeBlock(serviceName, shape))
  let blocks = Array.map(shapeTypes, shapeType => String.sub(shapeType, 5, String.length(shapeType)))
  "type rec "++ Array.joinWith(blocks, " and ", block => block)
}