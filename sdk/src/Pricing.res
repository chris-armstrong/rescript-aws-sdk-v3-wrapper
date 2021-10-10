type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-pricing") @new
external createClient: unit => awsServiceClient = "PricingClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type errorMessage = string
type synthesizedJsonPriceListItemJSON = string
type string_ = string
type filterType = [@as("TERM_MATCH") #TERM_MATCH]
type boxedInteger = int
type priceList = array<synthesizedJsonPriceListItemJSON>
@ocaml.doc("<p>The constraints that you want all returned products to match.</p>")
type filter = {
  @ocaml.doc("<p>The service code or attribute value that you want to filter by. If you are filtering by 
         service code this is the actual service code, such as <code>AmazonEC2</code>. If you are 
         filtering by attribute name, this is the attribute value that you want the returned products
         to match, such as a <code>Provisioned IOPS</code> volume.</p>")
  @as("Value")
  value: string_,
  @ocaml.doc("<p>The product metadata field that you want to filter on. You can filter by just the 
         service code to see all products for a specific service, filter 
         by just the attribute name to see a specific attribute for multiple services, or use both a service code
         and an attribute name to retrieve only products that match both fields.</p>
         <p>Valid values include: <code>ServiceCode</code>, and all attribute names</p>
         
         <p>For example, you can filter by the <code>AmazonEC2</code> service code and the 
         <code>volumeType</code> attribute name to get the prices for only Amazon EC2 volumes.</p>")
  @as("Field")
  field: string_,
  @ocaml.doc("<p>The type of filter that you want to use.</p>
         <p>Valid values are: <code>TERM_MATCH</code>. <code>TERM_MATCH</code> returns only 
         products that match both the given filter field and the given value.</p>")
  @as("Type")
  type_: filterType,
}
@ocaml.doc("<p>The values of a given attribute, such as <code>Throughput Optimized HDD</code> or <code>Provisioned
          IOPS</code> for the <code>Amazon EC2</code> 
            <code>volumeType</code> attribute.</p>")
type attributeValue = {
  @ocaml.doc("<p>The specific value of an <code>attributeName</code>.</p>") @as("Value")
  value: option<string_>,
}
type attributeNameList = array<string_>
@ocaml.doc(
  "<p>The metadata for a service, such as the service code and available attribute names.</p>"
)
type service = {
  @ocaml.doc("<p>The attributes that are available for this service.</p>") @as("AttributeNames")
  attributeNames: option<attributeNameList>,
  @ocaml.doc("<p>The code for the AWS service.</p>") @as("ServiceCode")
  serviceCode: option<string_>,
}
type filters = array<filter>
type attributeValueList = array<attributeValue>
type serviceList = array<service>
@ocaml.doc("<p>AWS Price List Service API (AWS Price List Service) is a centralized and convenient way to
         programmatically query Amazon Web Services for services, products, and pricing information. The AWS Price List Service
         uses standardized product attributes such as <code>Location</code>, <code>Storage
            Class</code>, and <code>Operating System</code>, and provides prices at the SKU
         level. You can use the AWS Price List Service to build cost control and scenario planning tools, reconcile
         billing data, forecast future spend for budgeting purposes, and provide cost benefit
         analysis that compare your internal workloads with AWS.</p>
         <p>Use <code>GetServices</code> without a service code to retrieve the service codes for all AWS services, then 
         <code>GetServices</code> with a service code to retreive the attribute names for 
         that service. After you have the service code and attribute names, you can use <code>GetAttributeValues</code>
         to see what values are available for an attribute. With the service code and an attribute name and value, 
         you can use <code>GetProducts</code> to find specific products that you're interested in, such as 
         an <code>AmazonEC2</code> instance, with a <code>Provisioned IOPS</code> 
            <code>volumeType</code>.</p>
         <p>Service Endpoint</p>
         <p>AWS Price List Service API provides the following two endpoints:</p>
         <ul>
            <li>
               <p>https://api.pricing.us-east-1.amazonaws.com</p>
            </li>
            <li>
               <p>https://api.pricing.ap-south-1.amazonaws.com</p>
            </li>
         </ul>")
module GetProducts = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>") @as("MaxResults")
    maxResults: option<boxedInteger>,
    @ocaml.doc(
      "<p>The pagination token that indicates the next set of results that you want to retrieve.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The format version that you want the response to be in.</p>
         <p>Valid values are: <code>aws_v1</code>
         </p>")
    @as("FormatVersion")
    formatVersion: option<string_>,
    @ocaml.doc("<p>The list of filters that limit the returned products. only products that match all filters
         are returned.</p>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>The code for the service whose products you want to retrieve. </p>")
    @as("ServiceCode")
    serviceCode: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list of products that match your filters. The list contains both the product metadata and 
         the price information.</p>")
    @as("PriceList")
    priceList: option<priceList>,
    @ocaml.doc("<p>The format version of the response. For example, aws_v1.</p>")
    @as("FormatVersion")
    formatVersion: option<string_>,
  }
  @module("@aws-sdk/client-pricing") @new external new: request => t = "GetProductsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~formatVersion=?, ~filters=?, ~serviceCode=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      formatVersion: formatVersion,
      filters: filters,
      serviceCode: serviceCode,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAttributeValues = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in response.</p>") @as("MaxResults")
    maxResults: option<boxedInteger>,
    @ocaml.doc(
      "<p>The pagination token that indicates the next set of results that you want to retrieve.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The name of the attribute that you want to retrieve the values for, such as <code>volumeType</code>.</p>"
    )
    @as("AttributeName")
    attributeName: string_,
    @ocaml.doc("<p>The service code for the service whose attributes you want to retrieve. For example, if you want 
          the retrieve an EC2 attribute, use <code>AmazonEC2</code>.</p>")
    @as("ServiceCode")
    serviceCode: string_,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list of values for an attribute. For example, <code>Throughput Optimized HDD</code> and 
      <code>Provisioned IOPS</code> are two available values for the <code>AmazonEC2</code> 
            <code>volumeType</code>.</p>")
    @as("AttributeValues")
    attributeValues: option<attributeValueList>,
  }
  @module("@aws-sdk/client-pricing") @new external new: request => t = "GetAttributeValuesCommand"
  let make = (~attributeName, ~serviceCode, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      attributeName: attributeName,
      serviceCode: serviceCode,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeServices = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results that you want returned in the response.</p>")
    @as("MaxResults")
    maxResults: option<boxedInteger>,
    @ocaml.doc(
      "<p>The pagination token that indicates the next set of results that you want to retrieve.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The format version that you want the response to be in.</p>
         <p>Valid values are: <code>aws_v1</code>
         </p>")
    @as("FormatVersion")
    formatVersion: option<string_>,
    @ocaml.doc("<p>The code for the service whose information you want to retrieve, such as <code>AmazonEC2</code>.
          You can use 
         the <code>ServiceCode</code> to filter the results in a <code>GetProducts</code> call.
      To retrieve a list of all services, leave this blank.</p>")
    @as("ServiceCode")
    serviceCode: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token for the next set of retreivable results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The format version of the response. For example, <code>aws_v1</code>.</p>")
    @as("FormatVersion")
    formatVersion: option<string_>,
    @ocaml.doc("<p>The service metadata for the service or services in the response.</p>")
    @as("Services")
    services: option<serviceList>,
  }
  @module("@aws-sdk/client-pricing") @new external new: request => t = "DescribeServicesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~formatVersion=?, ~serviceCode=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      formatVersion: formatVersion,
      serviceCode: serviceCode,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
