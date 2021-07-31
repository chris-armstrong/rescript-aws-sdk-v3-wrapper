open Belt
open Json.Decode
open Json.ResultHelpers
open Belt.Result

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

exception UnknownTrait(string)

let extractTargetSpec = target => target->parseObject->field("target")->parseString

let parseServiceTrait = traitResult => {
  let value = parseObject(traitResult)
  let sdkId_ = value->field("sdkId")->parseString
  let arnNamespace_ = value->field("arnNamespace")->parseString
  let cloudFormationName_ = value->field("cloudFormationName")->parseString
  let cloudTrailEventSource_ = value->field("cloudTrailEventSource")->parseString
  let endpointPrefix_ = optional(value->field("endpointPrefix"))->mapOptional(parseString)
  map5(sdkId_, arnNamespace_, cloudFormationName_, cloudTrailEventSource_, endpointPrefix_, (
    sdkId,
    arnNamespace,
    cloudFormationName,
    cloudTrailEventSource,
    endpointPrefix,
  ) => Trait.ServiceTrait({
    sdkId: sdkId,
    arnNamespace: arnNamespace,
    cloudFormationName: cloudFormationName,
    cloudTrailEventSource: cloudTrailEventSource,
    endpointPrefix: endpointPrefix,
  }))
}

let parseEnumNameValue = (enum): Result.t<Trait.enumPair, jsonParseError> => {
  let obj_ = parseObject(enum)
  let name_ = obj_->field("name")->parseString
  let value_ = obj_->field("value")->parseString
  map2(name_, value_, (name, value) => {
    open Trait
    {name: name, value: value}
  })
}

let parseArnReferenceTrait = (value): Result.t<Trait.t, jsonParseError> => {
  let record = parseObject(value)
  let type__ = optional(record->field("type"))->mapOptional(parseString)
  let service_ = record->field("service")->parseString
  let resource_ = record->field("resource")->parseString
  map3(type__, service_, resource_, (type_, service, resource) => Trait.AwsApiArnReferenceTrait({
    type_: type_,
    service: service,
    resource: resource,
  }))
}

let parseReference = (value): Result.t<Trait.reference, jsonParseError> => {
  let object = value->parseObject
  let resource = object->field("resource")->parseString
  let service = object->field("service")->optional->mapOptional(parseString)
  map2(resource, service, (resource, service): Trait.reference => {
    resource: resource,
    service: service,
  })
}

let parseTrait = (name, value: Result.t<jsonTreeRef, jsonParseError>) => {
  let traitValue = switch name {
  | "aws.api#service" => parseServiceTrait(value)
  | "smithy.api#documentation" =>
    value->parseString->map(documentation => Trait.DocumentationTrait(documentation))
  | "smithy.api#required" => Ok(RequiredTrait)
  | "smithy.api#xmlFlattened" => Ok(XmlFlattenedTrait)
  | "smithy.api#xmlName" => value->parseString->map(xmlName => Trait.XmlNameTrait(xmlName))
  | "smithy.api#error" =>
    value
    ->parseString
    ->map(error => error == "server" ? Trait.ErrorTrait(Server) : ErrorTrait(Client))
  | "smithy.api#httpError" => value->parseNumber->map(error => Trait.HttpErrorTrait(error))
  | "smithy.api#title" => value->parseString->map(title => Trait.ApiTitleTrait(title))
  | "smithy.api#xmlNamespace" =>
    value->parseObject->field("uri")->parseString->map(uri => Trait.ApiXmlNamespaceTrait(uri))
  | "smithy.api#enum" =>
    value->parseArray(parseEnumNameValue)->map(enumPairs => Trait.EnumTrait(enumPairs))
  | "aws.auth#sigv4" =>
    value->parseObject->field("name")->parseString->map(name => Trait.AwsAuthSigV4Trait(name))
  | "aws.protocols#awsQuery" => Ok(Trait.AwsProtocolAwsQueryTrait)
  | "smithy.api#paginated" => Ok(Trait.PaginatedTrait)
  | "smithy.api#pattern" => value->parseString->map(pattern => Trait.PatternTrait(pattern))
  | "smithy.api#cors" => Ok(CorsTrait)
  | "aws.protocols#restJson1" => Ok(Trait.AwsProtocolRestJson1Trait)
  | "smithy.api#idempotencyToken" => Ok(Trait.IdempotencyTokenTrait)
  | "smithy.api#httpLabel" => Ok(Trait.HttpLabelTrait)
  | "smithy.api#httpQuery" => Ok(Trait.HttpQueryTrait)
  | "smithy.api#httpHeader" => Ok(Trait.HttpHeaderTrait)
  | "smithy.api#retryable" => Ok(Trait.RetryableTrait)
  | "smithy.api#timestampFormat" =>
    value->parseString->map(timestampFormat => Trait.TimestampFormatTrait(timestampFormat))
  | "smithy.api#range" => {
    let obj = value->parseObject;
    let min = optional(obj->field("min"))->mapOptional(parseInteger);
    let max = optional(obj->field("max"))->mapOptional(parseInteger);
    map2(min, max, (min, max) => Trait.RangeTrait(min, max))
  }
  | "smithy.api#length" => {
      let record = value->parseObject
      map2(
        record->field("min")->parseInteger,
        optional(record->field("max"))->mapOptional(parseInteger),
        (min, max) => Trait.LengthTrait(min, max),
      )
    }
  | "aws.protocols#awsJson1_0" => Ok(Trait.AwsProtocolAwsJson1_0Trait)
  | "aws.protocols#awsJson1_1" => Ok(Trait.AwsProtocolAwsJson1_1Trait)
  | "smithy.api#box" => Ok(Trait.BoxTrait)
  | "smithy.api#sensitive" => Ok(Trait.SensitiveTrait)
  | "aws.api#arnReference" => parseArnReferenceTrait(value)->map(arnNamespace => arnNamespace)
  | "smithy.api#references" => value
    ->parseArray(parseReference)
    ->map(references => Trait.ReferencesTrait(references))
  | "smithy.api#jsonName" => parseString(value)->map(jsonName => Trait.JsonNameTrait(jsonName))
  | "smithy.api#httpPayload" => Ok(Trait.HttpPayloadTrait)
  | "smithy.api#httpQueryParams" => Ok(Trait.HttpQueryParams)
  | "smithy.api#tags" => value->parseArray(parseString)->map(tags => Trait.TagsTrait(tags))
  | "smithy.api#deprecated" => Ok(Trait.DeprecatedTrait)
  | "smithy.api#mediaType" => parseString(value)->map(mediaType => Trait.MediaTypeTrait(mediaType))
  | _ => raise(UnknownTrait(name))
  }
  traitValue
}

let parseListShape = shape => {
  let target_ = shape->field("member")->extractTargetSpec
  let traits_ = optional(shape->field("traits")->parseRecord(parseTrait))
  map2(target_, traits_, (target, traits) => Shape.ListShape({target: target, traits: traits}))
}

let parseMember = (name, value) => {
  let member = parseObject(value)
  let target_ = member->field("target")->parseString
  let traits_ = optional(parseRecord(member->field("traits"), parseTrait))
  map2(target_, traits_, (target, traits) => {
    open Shape
    {
      name: name,
      target: target,
      traits: traits,
    }
  })
}
let parseMembers = value => {
  parseRecord(value, parseMember)
}

let parseStructureShape = value => {
  let members = value->field("members")->parseMembers
  let traits = optional(value->field("traits")->parseRecord(parseTrait))
  map2(members, traits, (members, traits) => Shape.StructureShape({
    members: members,
    traits: traits,
  }))
}

let parseOperationShape = shape => {
  let inputTarget = optional(shape->field("input")->extractTargetSpec)
  let outputTarget = optional(shape->field("output")->extractTargetSpec)
  let errors = optional(shape->field("errors")->parseArray(extractTargetSpec))
  let documentation = optional(
    shape->field("traits")->parseObject->field("smithy.api#documentation")->parseString,
  )
  map4(inputTarget, outputTarget, errors, documentation, (
    inputValue,
    outputValue,
    errorsValue,
    documentationValue,
  ) => Shape.OperationShape({
    input: inputValue,
    output: outputValue,
    errors: errorsValue,
    documentation: documentationValue,
  }))
}

let parseServiceShape = shapeDict => {
  let version_ = shapeDict->field("version")->parseString
  let operations_ =
    optional(shapeDict->field("operations"))->mapOptional(operations =>
      parseArray(operations, extractTargetSpec)
    )
  let traits_ = shapeDict->field("traits")->parseRecord(parseTrait)
  map3(version_, operations_, traits_, (version, operations, traits) => Shape.ServiceShape({
    version: version,
    operations: operations,
    traits: traits,
  }))
}

let parseStringShape = shapeDict => {
  let traits_ =
    shapeDict->field("traits")->optional->mapOptional(traits => parseRecord(traits, parseTrait))
  map(traits_, traits => Shape.StringShape({traits: traits}))
}

let parseMapKey = val => {
  let mapValue = val->parseObject
  let target_ = mapValue->field("target")->parseString
  let traits_ =
    optional(mapValue->field("traits"))->mapOptional(traits => parseRecord(traits, parseTrait))
  map2(target_, traits_, (target, traits) => {
    open Shape
    {target: target, traits: traits}
  })
}

let parseMapShape = shapeDict => {
  let key_ = parseMapKey(shapeDict->field("key"))
  let value_ = parseMapKey(shapeDict->field("value"))
  map2(key_, value_, (key, value) => Shape.MapShape({mapKey: key, mapValue: value}))
}

let parseUnionShape = value => {
  let members = value->field("members")->parseMembers
  let traits = optional(value->field("traits")->parseRecord(parseTrait))
  map2(members, traits, (members, traits) => Shape.UnionShape({members: members, traits: traits}))
}

let parsePrimitive = shapeDict => {
  let traits_ =
    optional(shapeDict->field("traits"))->mapOptional(traits => traits->parseRecord(parseTrait))
  map(traits_, (traits): Shape.primitiveShapeDetails => {traits: traits})
}

// TODO: figure out if this is important for wrapper, or only for SDK codegen
let parseResourceShape = _ => Ok(Shape.ResourceShape)

let parseSetShape = shapeDict => {
  let target = shapeDict->field("member")->parseObject->field("target")->parseString;
  let traits = optional(shapeDict->field("traits"))->mapOptional(traits => traits->parseRecord(parseTrait))
  map2(target, traits, (target, traits) => Shape.SetShape({ target, traits }))
}

let parseTimestampShape = shapeDict => {
  let traits_ =
    optional(shapeDict->field("traits"))->mapOptional(traits => traits->parseRecord(parseTrait))
  map(traits_, traits => Shape.TimestampShape({traits: traits}))
}

let parseShape = (name, shape) => {
  let shapeDict = parseObject(shape)
  let typeDiscriminator = shapeDict->field("type")->parseString
  flatMap(typeDiscriminator, typeValue => {
    let descriptor_ = switch typeValue {
    | "list" => parseListShape(shapeDict)
    | "operation" => parseOperationShape(shapeDict)
    | "structure" => parseStructureShape(shapeDict)
    | "service" => parseServiceShape(shapeDict)
    | "blob" => Ok(BlobShape)
    | "boolean" => parsePrimitive(shapeDict)->map(primitive => Shape.BooleanShape(primitive))
    | "integer" => parsePrimitive(shapeDict)->map(primitive => Shape.IntegerShape(primitive))
    | "string" => parseStringShape(shapeDict)
    | "map" => parseMapShape(shapeDict)
    | "union" => parseUnionShape(shapeDict)
    | "resource" => parseResourceShape(shapeDict)
    | "timestamp" => parseTimestampShape(shapeDict)
    | "long" => parsePrimitive(shapeDict)->map(primitive => Shape.LongShape(primitive))
    | "double" => parsePrimitive(shapeDict)->map(primitive => Shape.DoubleShape(primitive))
    | "float" => parsePrimitive(shapeDict)->map(primitive => Shape.FloatShape(primitive))
    | "set" => parseSetShape(shapeDict)
    | _ => Error(CustomError(`unknown shape type ${typeValue}`))
    }
    map(descriptor_, descriptor => {
      open Shape
      {name: name, descriptor: descriptor}
    })
  })
}

let parseShapes = shapesModel => parseRecord(shapesModel, parseShape)
let parseModel = baseModel => baseModel->parseObject->field("shapes")->parseShapes
