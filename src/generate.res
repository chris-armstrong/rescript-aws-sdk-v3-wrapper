open Belt
open Util

let safeMemberName = name => switch name {
  | "type" => "type_"
  | "Type" => "type_"
  | _ => Js.String2.toLowerCase(Js.String2.charAt(name, 0)) ++ Js.String2.sliceToEnd(name, ~from=1)
}

let safeTypeName = (target) => {
  let name = symbolName(target)
  let namespace = symbolNamespace(target)
  let namespacePrefix =
    Belt.Option.getWithDefault(Js.String2.split(namespace, ".")[1], "")
  switch name {
  | "String" => namespacePrefix ++ "String"
  | "Integer" => namespacePrefix ++ "Integer"
  | "Boolean" => namespacePrefix ++ "Boolean"
  | "Bool" => namespacePrefix ++ "Bool"
  | "Long" => namespacePrefix ++ "Long"
  | "Timestamp" => namespacePrefix ++ "Timestamp"
  | "Double" => namespacePrefix ++ "Double"
  | "type" => "type_"
  | "Type" => "type_"
  | "unit" => "unit_"
  | "Unit" => "unit_"
  | "Export" => "export_"
  | "export" => "export_"
  | _ => Js.String2.toLowerCase(Js.String2.charAt(name, 0)) ++ Js.String2.sliceToEnd(name, ~from=1)
  }
}

let safeConstructorName = name => {
  switch (name) {
  | _ => Js.String2.toUpperCase(Js.String2.charAt(name, 0)) ++ Js.String2.sliceToEnd(name, ~from=1)
  }
}

let safeVariantName = name =>
  name->Js.String2.replaceByRe(Js.Re.fromStringWithFlags("-|#|:|\\.", ~flags="g"), "_")

let generateIntegerShape = name =>
  `type ${safeTypeName(name)} = int;`
let generateLongShape = name =>
  `type ${safeTypeName(name)} = float;` // ReScript doesn't properly support longs
let generateDoubleShape = name =>
  `type ${safeTypeName(name)} = float;` // ReScript doesn't properly support doubles
let generateFloatShape = name =>
  `type ${safeTypeName(name)} = float;`
let generateBooleanShape = name =>
  `type ${safeTypeName(name)} = bool;`
let generateBinaryShape = name => `type ${safeTypeName(name)} = NodeJs.Buffer.t;`

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
  let required = Trait.hasTrait(m.traits, Trait.isRequiredTrait)
  `@as("${m.name}") ` ++
  safeMemberName(m.name) ++
  ": " ++ (
    required
      ? `option<${safeTypeName(m.target)}>`
      : safeTypeName(m.target)
  )
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
    `exception ${safeConstructorName(symbolName(name))};`
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

exception NoServiceTrait(string)

let generateServiceShape = (serviceName, traits) => {
  switch traits->Trait.findTrait(Trait.isAwsApiServiceTrait) {
  | Some(ServiceTrait({cloudFormationName})) =>
    `type clientType;\n@module("@aws-sdk/client-${serviceName}") @new external createClient: unit => clientType = "${cloudFormationName}Client";`
  | _ => ""
  }
}

let generateSetShape = (name, details: Shape.setShapeDetails) => {
  // These appear to be generated as arrays
  `type ${safeTypeName(name)} = array<${safeTypeName(details.target)}>`;
}

exception UnknownTimestampFormat(string)

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
  let inputType = isOperationStructureNone(input) ? "Js.Promise.t<unit>" : "Js.Promise.t<request>"
  let outputType = isOperationStructureNone(output)? "Js.Promise.t<unit>" : "Js.Promise.t<response>"
  `module ${symbolName(name)} = {\n` ++
  `  type t;\n` ++
  `  ${request}\n` ++
  `  ${response}\n` ++
  `  @module("@aws-sdk/client-${moduleName}") @new external new_: (${inputType}) => t = "${commandName}";\n` ++
  `  @send external send: (clientType, t) => ${outputType} = "send";\n` ++
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
