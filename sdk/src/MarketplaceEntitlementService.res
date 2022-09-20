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
@ocaml.doc("<p>The EntitlementValue represents the amount of capacity that the customer is entitled to
   for the product.</p>")
type entitlementValue = {
  @ocaml.doc("<p>The StringValue field will be populated with a string value when the entitlement is a
   string type. Otherwise, the field will not be set.</p>")
  @as("StringValue")
  stringValue: option<string_>,
  @ocaml.doc("<p>The BooleanValue field will be populated with a boolean value when the entitlement is a
      boolean type. Otherwise, the field will not be set.</p>")
  @as("BooleanValue")
  booleanValue: option<boolean_>,
  @ocaml.doc("<p>The DoubleValue field will be populated with a double value when the entitlement is a
   double type. Otherwise, the field will not be set.</p>")
  @as("DoubleValue")
  doubleValue: option<double>,
  @ocaml.doc("<p>The IntegerValue field will be populated with an integer value when the entitlement is an
   integer type. Otherwise, the field will not be set.</p>")
  @as("IntegerValue")
  integerValue: option<integer_>,
}
module EntitlementValue = {
  type t =
    StringValue(string_) | BooleanValue(boolean_) | DoubleValue(double) | IntegerValue(integer_)
  exception EntitlementValueUnspecified
  let classify = value =>
    switch value {
    | {stringValue: Some(x)} => StringValue(x)
    | {booleanValue: Some(x)} => BooleanValue(x)
    | {doubleValue: Some(x)} => DoubleValue(x)
    | {integerValue: Some(x)} => IntegerValue(x)
    | _ => raise(EntitlementValueUnspecified)
    }

  let make = value =>
    switch value {
    | StringValue(x) => {
        stringValue: Some(x),
        booleanValue: None,
        doubleValue: None,
        integerValue: None,
      }
    | BooleanValue(x) => {
        booleanValue: Some(x),
        stringValue: None,
        doubleValue: None,
        integerValue: None,
      }
    | DoubleValue(x) => {
        doubleValue: Some(x),
        stringValue: None,
        booleanValue: None,
        integerValue: None,
      }
    | IntegerValue(x) => {
        integerValue: Some(x),
        stringValue: None,
        booleanValue: None,
        doubleValue: None,
      }
    }
}
type getEntitlementFilters = Js.Dict.t<filterValueList>
@ocaml.doc("<p>An entitlement represents capacity in a product owned by the customer. For example, a
      customer might own some number of users or seats in an SaaS application or  some amount of
      data capacity in a multi-tenant database.</p>")
type entitlement = {
  @ocaml.doc("<p>The expiration date represents the minimum date through which this entitlement is
   expected to remain valid. For contractual products listed on AWS Marketplace, the expiration date
   is the date at which the customer will renew or cancel their contract. Customers who are opting
   to renew their contract will still have entitlements with an expiration date.</p>")
  @as("ExpirationDate")
  expirationDate: option<timestamp_>,
  @ocaml.doc("<p>The EntitlementValue represents the amount of capacity that the customer is entitled to
   for the product.</p>")
  @as("Value")
  value: option<entitlementValue>,
  @ocaml.doc("<p>The customer identifier is a handle to each unique customer in an application. Customer
   identifiers are obtained through the ResolveCustomer operation in AWS Marketplace Metering
   Service.</p>")
  @as("CustomerIdentifier")
  customerIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The dimension for which the given entitlement applies. Dimensions represent categories of
      capacity in a product and are specified when the product is listed in AWS
      Marketplace.</p>")
  @as("Dimension")
  dimension: option<nonEmptyString>,
  @ocaml.doc("<p>The product code for which the given entitlement applies. Product codes are provided by
   AWS Marketplace when the product listing is created.</p>")
  @as("ProductCode")
  productCode: option<productCode>,
}
type entitlementList = array<entitlement>
@ocaml.doc("<fullname>AWS Marketplace Entitlement Service</fullname>
         <p>This reference provides descriptions of the AWS Marketplace Entitlement Service
   API.</p>
         <p>AWS Marketplace Entitlement Service is used to determine the entitlement of a customer to
      a given product. An entitlement represents capacity in a product owned by the customer. For
      example, a customer might own some number of users or seats in an SaaS application or some
      amount of data capacity in a multi-tenant database.</p>
         <p>
            <b>Getting Entitlement Records</b>
         </p>
         <ul>
            <li>
               <p>
                  <i>GetEntitlements</i>- Gets the entitlements for a Marketplace
     product.</p>
            </li>
         </ul>")
module GetEntitlements = {
  type t
  @ocaml.doc("<p>The GetEntitlementsRequest contains parameters for the GetEntitlements
   operation.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of items to retrieve from the GetEntitlements operation. For
   pagination, use the NextToken field in subsequent calls to GetEntitlements.</p>")
    @as("MaxResults")
    maxResults: option<integer_>,
    @ocaml.doc("<p>For paginated calls to GetEntitlements, pass the NextToken from the previous
   GetEntitlementsResult.</p>")
    @as("NextToken")
    nextToken: option<nonEmptyString>,
    @ocaml.doc("<p>Filter is used to return entitlements for a specific customer or for a specific
      dimension. Filters are described as keys mapped to a lists of values. Filtered requests are
        <i>unioned</i> for each value in the value list, and then
        <i>intersected</i> for each filter key.</p>")
    @as("Filter")
    filter: option<getEntitlementFilters>,
    @ocaml.doc("<p>Product code is used to uniquely identify a product in AWS Marketplace. The product code
   will be provided by AWS Marketplace when the product listing is created.</p>")
    @as("ProductCode")
    productCode: productCode,
  }
  @ocaml.doc(
    "<p>The GetEntitlementsRequest contains results from the GetEntitlements operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>For paginated results, use NextToken in subsequent calls to GetEntitlements. If the
      result contains an empty set of entitlements, NextToken might still be present and should be
      used.</p>")
    @as("NextToken")
    nextToken: option<nonEmptyString>,
    @ocaml.doc("<p>The set of entitlements found through the GetEntitlements operation. If the result
      contains an empty set of entitlements, NextToken might still be present and should be
      used.</p>")
    @as("Entitlements")
    entitlements: option<entitlementList>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new
  external new: request => t = "GetEntitlementsCommand"
  let make = (~productCode, ~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter, productCode: productCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
