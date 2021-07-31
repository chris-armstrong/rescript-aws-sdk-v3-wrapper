type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type amazonawsString = string
type productCode = string
type nonEmptyString = string
type amazonawsInteger = int;
type getEntitlementFilterName = [@as("DIMENSION") #DIMENSION | @as("CUSTOMER_IDENTIFIER") #CUSTOMER_IDENTIFIER]
type filterValue = string
type errorMessage = string
type amazonawsDouble = float;
type amazonawsBoolean = bool;
type filterValueList = array<filterValue>
type entitlementValue = StringValue(amazonawsString) | BooleanValue(amazonawsBoolean) | DoubleValue(amazonawsDouble) | IntegerValue(amazonawsInteger);
type getEntitlementFilters = Js.Dict.t< filterValueList>
type entitlement = {
@as("ExpirationDate") expirationDate: amazonawsTimestamp,
@as("Value") value: entitlementValue,
@as("CustomerIdentifier") customerIdentifier: nonEmptyString,
@as("Dimension") dimension: nonEmptyString,
@as("ProductCode") productCode: productCode
}
type entitlementList = array<entitlement>
type clientType;
@module("@aws-sdk/client-aws-marketplace") @new external createClient: unit => clientType = "MarketplaceEntitlementServiceClient";
module GetEntitlements = {
  type t;
  type request = {
@as("MaxResults") maxResults: amazonawsInteger,
@as("NextToken") nextToken: nonEmptyString,
@as("Filter") filter: getEntitlementFilters,
@as("ProductCode") productCode: option<productCode>
}
  type response = {
@as("NextToken") nextToken: nonEmptyString,
@as("Entitlements") entitlements: entitlementList
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "GetEntitlementsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
