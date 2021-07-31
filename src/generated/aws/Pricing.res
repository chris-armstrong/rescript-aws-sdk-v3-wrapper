type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-pricing") @new external createClient: unit => awsServiceClient = "PricingClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type errorMessage = string
type synthesizedJsonPriceListItemJSON = string
type string_ = string
type filterType = [@as("TERM_MATCH") #TERM_MATCH]
type boxedInteger = int
type priceList = array<synthesizedJsonPriceListItemJSON>
type filter = {
@as("Value") value: string_,
  @as("Field") field: string_,
  @as("Type") type_: filterType
}
type attributeValue = {
@as("Value") value: option<string_>
}
type attributeNameList = array<string_>
type service = {
@as("AttributeNames") attributeNames: option<attributeNameList>,
  @as("ServiceCode") serviceCode: option<string_>
}
type filters = array<filter>
type attributeValueList = array<attributeValue>
type serviceList = array<service>

module GetProducts = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<boxedInteger>,
  @as("NextToken") nextToken: option<string_>,
  @as("FormatVersion") formatVersion: option<string_>,
  @as("Filters") filters: option<filters>,
  @as("ServiceCode") serviceCode: option<string_>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
  @as("PriceList") priceList: option<priceList>,
  @as("FormatVersion") formatVersion: option<string_>
}
  @module("@aws-sdk/client-pricing") @new external new_: (request) => t = "GetProductsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAttributeValues = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<boxedInteger>,
  @as("NextToken") nextToken: option<string_>,
  @as("AttributeName") attributeName: string_,
  @as("ServiceCode") serviceCode: string_
}
  type response = {
@as("NextToken") nextToken: option<string_>,
  @as("AttributeValues") attributeValues: option<attributeValueList>
}
  @module("@aws-sdk/client-pricing") @new external new_: (request) => t = "GetAttributeValuesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeServices = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<boxedInteger>,
  @as("NextToken") nextToken: option<string_>,
  @as("FormatVersion") formatVersion: option<string_>,
  @as("ServiceCode") serviceCode: option<string_>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
  @as("FormatVersion") formatVersion: option<string_>,
  @as("Services") services: option<serviceList>
}
  @module("@aws-sdk/client-pricing") @new external new_: (request) => t = "DescribeServicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
