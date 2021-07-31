type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type errorMessage = string
type synthesizedJsonPriceListItemJSON = string
type amazonawsString = string
type filterType = [@as("TERM_MATCH") #TERM_MATCH]
type boxedInteger = int;
type priceList = array<synthesizedJsonPriceListItemJSON>
type filter = {
@as("Value") value: option<amazonawsString>,
@as("Field") field: option<amazonawsString>,
@as("Type") type_: option<filterType>
}
type attributeValue = {
@as("Value") value: amazonawsString
}
type attributeNameList = array<amazonawsString>
type service = {
@as("AttributeNames") attributeNames: attributeNameList,
@as("ServiceCode") serviceCode: amazonawsString
}
type filters = array<filter>
type attributeValueList = array<attributeValue>
type serviceList = array<service>
type clientType;
@module("@aws-sdk/client-pricing") @new external createClient: unit => clientType = "PricingClient";
module GetProducts = {
  type t;
  type request = {
@as("MaxResults") maxResults: boxedInteger,
@as("NextToken") nextToken: amazonawsString,
@as("FormatVersion") formatVersion: amazonawsString,
@as("Filters") filters: filters,
@as("ServiceCode") serviceCode: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("PriceList") priceList: priceList,
@as("FormatVersion") formatVersion: amazonawsString
}
  @module("@aws-sdk/client-pricing") @new external new_: (Js.Promise.t<request>) => t = "GetProductsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAttributeValues = {
  type t;
  type request = {
@as("MaxResults") maxResults: boxedInteger,
@as("NextToken") nextToken: amazonawsString,
@as("AttributeName") attributeName: option<amazonawsString>,
@as("ServiceCode") serviceCode: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("AttributeValues") attributeValues: attributeValueList
}
  @module("@aws-sdk/client-pricing") @new external new_: (Js.Promise.t<request>) => t = "GetAttributeValuesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeServices = {
  type t;
  type request = {
@as("MaxResults") maxResults: boxedInteger,
@as("NextToken") nextToken: amazonawsString,
@as("FormatVersion") formatVersion: amazonawsString,
@as("ServiceCode") serviceCode: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("FormatVersion") formatVersion: amazonawsString,
@as("Services") services: serviceList
}
  @module("@aws-sdk/client-pricing") @new external new_: (Js.Promise.t<request>) => t = "DescribeServicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
