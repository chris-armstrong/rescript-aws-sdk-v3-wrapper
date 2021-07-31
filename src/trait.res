type serviceDetails = {
  sdkId: string,
  arnNamespace: string,
  cloudFormationName: string,
  cloudTrailEventSource: string,
  endpointPrefix: option<string>,
}

type enumPair = {
  name: string,
  value: string,
}

type errorTraitType = Server | Client

type arnReferenceDetails = {
  type_: option<string>,
  service: string,
  resource: string,
}

type reference = { resource: string, service: option<string> };

type t =
  | DocumentationTrait(string)
  | ErrorTrait(errorTraitType)
  | HttpErrorTrait(float)
  | ServiceTrait(serviceDetails)
  | RequiredTrait
  | XmlFlattenedTrait
  | XmlNameTrait(string)
  | AwsAuthSigV4Trait(string)
  | ApiTitleTrait(string)
  | ApiXmlNamespaceTrait(string)
  | AwsProtocolAwsQueryTrait
  | AwsProtocolRestJson1Trait
  | EnumTrait(array<enumPair>)
  | CorsTrait
  | PaginatedTrait
  | PatternTrait(string)
  | IdempotencyTokenTrait
  | HttpLabelTrait
  | HttpQueryTrait
  | HttpHeaderTrait
  | RetryableTrait
  | RangeTrait(option<int>, option<int>)
  | LengthTrait(int, option<int>)
  | TimestampFormatTrait(string)
  | AwsProtocolAwsJson1_0Trait
  | AwsProtocolAwsJson1_1Trait
  | BoxTrait
  | SensitiveTrait
  | AwsApiArnReferenceTrait(arnReferenceDetails)
  | ReferencesTrait(array<reference>)
  | JsonNameTrait(string)
  | HttpPayloadTrait
  | HttpQueryParams
  | TagsTrait(array<string>)
  | DeprecatedTrait
  | MediaTypeTrait(string)

let isEnumTrait = trait =>
  switch trait {
  | EnumTrait(_) => true
  | _ => false
  }
let isRequiredTrait = trait =>
  switch trait {
  | RequiredTrait => true
  | _ => false
  }

let isErrorTrait = trait =>
  switch trait {
  | ErrorTrait(_) => true
  | _ => false
  }

let isAwsApiServiceTrait = trait =>
  switch trait {
  | ServiceTrait(_) => true
  | _ => false
  }
let isTimestampFormatTrait = trait =>
  switch trait {
  | TimestampFormatTrait(_) => true
  | _ => false
  }

let hasTrait = (traitsOption, traitTest) =>
  Js.Option.getWithDefault(
    false,
    Js.Option.map((. traits) => Js.Array2.some(traits, trait => traitTest(trait)), traitsOption),
  )

let findTrait = (traits, traitsTest) => traits->Js.Array2.find(traitsTest)
