type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-aws-marketplace") @new
external createClient: unit => awsServiceClient = "MarketplaceEntitlementServiceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type string_ = string
type productCode = string
type nonEmptyString = string
type integer_ = int
type getEntitlementFilterName = [
  | @as("DIMENSION") #DIMENSION
  | @as("CUSTOMER_IDENTIFIER") #CUSTOMER_IDENTIFIER
]
type filterValue = string
type errorMessage = string
type double = float
type boolean_ = bool
type filterValueList = array<filterValue>
type entitlementValue = {
  @as("StringValue") stringValue: option<string_>,
  @as("BooleanValue") booleanValue: option<boolean_>,
  @as("DoubleValue") doubleValue: option<double>,
  @as("IntegerValue") integerValue: option<integer_>,
}
type getEntitlementFilters = Js.Dict.t<filterValueList>
type entitlement = {
  @as("ExpirationDate") expirationDate: option<timestamp_>,
  @as("Value") value: option<entitlementValue>,
  @as("CustomerIdentifier") customerIdentifier: option<nonEmptyString>,
  @as("Dimension") dimension: option<nonEmptyString>,
  @as("ProductCode") productCode: option<productCode>,
}
type entitlementList = array<entitlement>

module GetEntitlements = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<integer_>,
    @as("NextToken") nextToken: option<nonEmptyString>,
    @as("Filter") filter: option<getEntitlementFilters>,
    @as("ProductCode") productCode: productCode,
  }
  type response = {
    @as("NextToken") nextToken: option<nonEmptyString>,
    @as("Entitlements") entitlements: option<entitlementList>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new
  external new_: request => t = "GetEntitlementsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
