open Belt.Result
open Json.Decode
open Json.ResultHelpers

let symbolName = str => Js.String2.split(str, "#")[1]
let symbolNamespace = str => Js.String2.split(str, "#")[0]

type dual<'a, 'b> =
  | Primary('a)
  | Secondary('b)

let fallback = (value, parse1, parse2) =>
  switch parse1(value) {
  | Ok(parsed) => Ok(Primary(parsed))
  | Error(error) =>
    switch error {
    | WrongType(_) =>
      switch parse2(value) {
      | Ok(parsed) => Ok(Secondary(parsed))
      | Error(error) => Error(error)
      }
    | _ => Error(error)
    }
  }

type serviceDetails = {
  sdkId: string,
  arnNamespace: string,
  cloudFormationName: string,
  cloudTrailEventSource: string,
  endpointPrefix: string,
}

type enumPair = {
  name: string,
  value: string,
}

type traitValueType =
  | DocumentationTrait(string)
  | ErrorTrait(string)
  | HttpErrorTrait(float)
  | ServiceTrait(serviceDetails)
  | RequiredTrait
  | XmlFlattenedTrait
  | XmlNameTrait(string)
  | AwsAuthSigV4Trait(string)
  | ApiTitleTrait(string)
  | ApiXmlNamespaceTrait(string)
  | AwsProtocolAwsQueryTrait
  | EnumTrait(array<enumPair>)

type trait = (string, string, traitValueType)

exception UnknownTrait(string)

type member = {
  name: string,
  target: string,
  traits: option<array<trait>>,
}

type structureShapeDetails = {
  traits: option<array<trait>>,
  members: array<member>,
}

type listShapeDetails = {target: string, traits: option<array<trait>>}
type operationShapeDetails = {
  input: string,
  errors: option<array<string>>,
  documentation: option<string>,
}

type serviceShapeDetails = {
  version: string,
  operations: array<string>,
  traits: array<trait>,
}

type stringShapeDetails = {traits: option<array<trait>>}

type mapKeyValue = {
  target: string,
  traits: array<trait>,
}

type mapShapeDetails = {
  mapKey: mapKeyValue,
  mapValue: mapKeyValue,
}

type rec shape =
  | ListShape(string, listShapeDetails)
  | OperationShape(string, operationShapeDetails)
  | StructureShape(string, structureShapeDetails)
  | ServiceShape(string, serviceShapeDetails)
  | BlobShape(string)
  | BooleanShape(string)
  | IntegerShape(string)
  | StringShape(string, stringShapeDetails)
  | MapShape(string, mapShapeDetails)

let extractTargetSpec = target => target->parseObject->field("target")->parseString

let parseServiceTrait = traitResult => {
  let value = parseObject(traitResult)
  let sdkId_ = value->field("sdkId")->parseString
  let arnNamespace_ = value->field("arnNamespace")->parseString
  let cloudFormationName_ = value->field("cloudFormationName")->parseString
  let cloudTrailEventSource_ = value->field("cloudTrailEventSource")->parseString
  let endpointPrefix_ = value->field("endpointPrefix")->parseString
  map5(sdkId_, arnNamespace_, cloudFormationName_, cloudTrailEventSource_, endpointPrefix_, (
    sdkId,
    arnNamespace,
    cloudFormationName,
    cloudTrailEventSource,
    endpointPrefix,
  ) => ServiceTrait({
    sdkId: sdkId,
    arnNamespace: arnNamespace,
    cloudFormationName: cloudFormationName,
    cloudTrailEventSource: cloudTrailEventSource,
    endpointPrefix: endpointPrefix,
  }))
}

let parseEnumNameValue = (enum): Belt.Result.t<enumPair, jsonParseError> => {
  let obj_ = parseObject(enum)
  let name_ = obj_->field("name")->parseString
  let value_ = obj_->field("value")->parseString
  map2(name_, value_, (name, value) => {name, value: value})
}

let parseTrait = (name, value: t<jsonTreeRef, jsonParseError>) => {
  let namespace = symbolNamespace(name)
  let traitName = symbolName(name)
  let traitValue = switch name {
  | "aws.api#service" => parseServiceTrait(value)
  | "smithy.api#documentation" =>
    value->parseString->map(documentation => DocumentationTrait(documentation))
  | "smithy.api#required" => Ok(RequiredTrait)
  | "smithy.api#xmlFlattened" => Ok(XmlFlattenedTrait)
  | "smithy.api#xmlName" => value->parseString->map(xmlName => XmlNameTrait(xmlName))
  | "smithy.api#error" => value->parseString->map(error => ErrorTrait(error))
  | "smithy.api#httpError" => value->parseNumber->map(error => HttpErrorTrait(error))
  | "smithy.api#title" => value->parseString->map(title => ApiTitleTrait(title))
  | "smithy.api#xmlNamespace" =>
    value->parseObject->field("uri")->parseString->map(uri => ApiXmlNamespaceTrait(uri))
  | "smithy.api#enum" =>
    value->parseArray(parseEnumNameValue)->map(enumPairs => EnumTrait(enumPairs))
  | "aws.auth#sigv4" =>
    value->parseObject->field("name")->parseString->map(name => AwsAuthSigV4Trait(name))
  | "aws.protocols#awsQuery" => Ok(AwsProtocolAwsQueryTrait)
  | _ => raise(UnknownTrait(name))
  }
  traitValue->map(traitValueDecoded => (namespace, traitName, traitValueDecoded))
}

let parseListShape = (shapeName, shape) => {
  let target_ = shape->field("member")->extractTargetSpec->map(symbolName)
  let traits_ = optional(shape->field("traits")->parseRecord(parseTrait))
  map2(target_, traits_, (target, traits) => ListShape(shapeName, {target: target, traits: traits}))
}

let parseMember = (name, value) => {
  let member = parseObject(value)
  let target_ = member->field("target")->parseString
  let traits_ = optional(parseRecord(member->field("traits"), parseTrait))
  map2(target_, traits_, (target, traits) => {
    name: name,
    target: target,
    traits: traits,
  })
}
let parseMembers = value => {
  parseRecord(value, parseMember)
}

let parseStructureShape = (shapeName, value) => {
  let members = value->field("members")->parseMembers
  let traits = optional(value->field("traits")->parseRecord(parseTrait))
  map2(members, traits, (members, traits) => StructureShape(
    shapeName,
    {members: members, traits: traits},
  ))
}

let parseOperationShape = (shapeName, shape) => {
  let inputTarget = shape->field("input")->extractTargetSpec->map(symbolName)
  let errors = optional(shape->field("errors")->parseArray(extractTargetSpec))
  let documentation = optional(
    shape->field("traits")->parseObject->field("smithy.api#documentation")->parseString,
  )
  map3(inputTarget, errors, documentation, (
    inputValue,
    errorsValue,
    documentationValue,
  ) => OperationShape(
    shapeName,
    {
      input: inputValue,
      errors: errorsValue,
      documentation: documentationValue,
    },
  ))
}

let parseServiceShape = (shapeName, shapeDict) => {
  let version_ = shapeDict->field("version")->parseString
  let operations_ = shapeDict->field("operations")->parseArray(extractTargetSpec)
  let traits_ = shapeDict->field("traits")->parseRecord(parseTrait)
  map3(version_, operations_, traits_, (version, operations, traits) => ServiceShape(
    shapeName,
    {
      version: version,
      operations: operations,
      traits: traits,
    },
  ))
}

let parseStringShape = (shapeName, shapeDict) => {
  let traits_ =
    shapeDict->field("traits")->optional->mapOptional(traits => parseRecord(traits, parseTrait))
  map(traits_, traits => StringShape(shapeName, {traits: traits}))
}

let parseMapKey = val => {
  let mapValue = val->parseObject
  let target_ = mapValue->field("target")->parseString
  let traits_ = mapValue->field("traits")->parseRecord(parseTrait)
  map2(target_, traits_, (target, traits) => {target: target, traits: traits})
}

let parseMapShape = (shapeName, shapeDict) => {
  let key_ = parseMapKey(shapeDict->field("key"))
  let value_ = parseMapKey(shapeDict->field("key"))
  map2(key_, value_, (key, value) => MapShape(shapeName, {mapKey: key, mapValue: value}))
}

let parseShape = (name, shape) => {
  Js.log(`shape: ${name}`)
  let shapeName = Js.String2.split(name, "#")[1]
  let shapeDict = parseObject(shape)
  let typeDiscriminator = shapeDict->field("type")->parseString
  flatMap(typeDiscriminator, typeValue =>
    switch typeValue {
    | "list" => parseListShape(shapeName, shapeDict)
    | "operation" => parseOperationShape(shapeName, shapeDict)
    | "structure" => parseStructureShape(shapeName, shapeDict)
    | "service" => parseServiceShape(shapeName, shapeDict)
    | "blob" => Ok(BlobShape(shapeName))
    | "boolean" => Ok(BooleanShape(shapeName))
    | "integer" => Ok(IntegerShape(shapeName))
    | "string" => parseStringShape(shapeName, shapeDict)
    | "map" => parseMapShape(shapeName, shapeDict)
    | _ => Error(CustomError(`unknown shape type ${shapeName}`))
    }
  )
}

let parseShapes = shapesModel => parseRecord(shapesModel, parseShape)
let parseModel = baseModel => baseModel->parseObject->field("shapes")->parseShapes

let parse = filename => {
  let file = NodeJs.Fs.readFileSync(filename, ());
  parseJson(NodeJs.Buffer.toString(file), parseModel)
} 
