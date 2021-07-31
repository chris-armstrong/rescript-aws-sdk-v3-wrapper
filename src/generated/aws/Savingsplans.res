type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-savingsplans") @new external createClient: unit => awsServiceClient = "SavingsplansClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type uuid = string
type termDurationInSeconds = float
type tagValue = string
type tagKey = string
type string_ = string
type savingsPlansFilterName = [@as("end") #End | @as("start") #Start | @as("payment-option") #Payment_Option | @as("savings-plan-type") #Savings_Plan_Type | @as("term") #Term | @as("upfront") #Upfront | @as("commitment") #Commitment | @as("ec2-instance-family") #Ec2_Instance_Family | @as("region") #Region]
type savingsPlansDuration = float
type savingsPlanUsageType = string
type savingsPlanType = [@as("SageMaker") #SageMaker | @as("EC2Instance") #EC2Instance | @as("Compute") #Compute]
type savingsPlanState = [@as("queued-deleted") #Queued_Deleted | @as("queued") #Queued | @as("retired") #Retired | @as("active") #Active | @as("payment-failed") #Payment_Failed | @as("payment-pending") #Payment_Pending]
type savingsPlanServiceCode = string
type savingsPlanRateUsageType = string
type savingsPlanRateUnit = [@as("Request") #Request | @as("Lambda-GB-Second") #Lambda_GB_Second | @as("Hrs") #Hrs]
type savingsPlanRateServiceCode = [@as("AmazonSageMaker") #AmazonSageMaker | @as("AWSLambda") #AWSLambda | @as("AmazonEKS") #AmazonEKS | @as("AmazonECS") #AmazonECS | @as("AmazonEC2") #AmazonEC2]
type savingsPlanRatePropertyKey = [@as("tenancy") #Tenancy | @as("productDescription") #ProductDescription | @as("instanceFamily") #InstanceFamily | @as("instanceType") #InstanceType | @as("region") #Region]
type savingsPlanRatePricePerUnit = string
type savingsPlanRateOperation = string
type savingsPlanRateFilterName = [@as("operation") #Operation | @as("usageType") #UsageType | @as("serviceCode") #ServiceCode | @as("productType") #ProductType | @as("tenancy") #Tenancy | @as("productDescription") #ProductDescription | @as("instanceType") #InstanceType | @as("region") #Region]
type savingsPlanRateFilterAttribute = [@as("productId") #ProductId | @as("tenancy") #Tenancy | @as("productDescription") #ProductDescription | @as("instanceType") #InstanceType | @as("instanceFamily") #InstanceFamily | @as("region") #Region]
type savingsPlanProductType = [@as("SageMaker") #SageMaker | @as("Lambda") #Lambda | @as("Fargate") #Fargate | @as("EC2") #EC2]
type savingsPlanPaymentOption = [@as("No Upfront") #No_Upfront | @as("Partial Upfront") #Partial_Upfront | @as("All Upfront") #All_Upfront]
type savingsPlanOperation = string
type savingsPlanOfferingPropertyKey = [@as("instanceFamily") #InstanceFamily | @as("region") #Region]
type savingsPlanOfferingId = string
type savingsPlanOfferingFilterAttribute = [@as("instanceFamily") #InstanceFamily | @as("region") #Region]
type savingsPlanId = string
type savingsPlanDescription = string
type savingsPlanArn = string
type region = string
type paginationToken = string
type pageSize = int
type maxResults = int
type jsonSafeFilterValueString = string
type ec2InstanceFamily = string
type dateTime = Js.Date.t;
type currencyCode = [@as("USD") #USD | @as("CNY") #CNY]
type clientToken = string
type amount = string
type uuids = array<uuid>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type savingsPlanUsageTypeList = array<savingsPlanUsageType>
type savingsPlanTypeList = array<savingsPlanType>
type savingsPlanStateList = array<savingsPlanState>
type savingsPlanServiceCodeList = array<savingsPlanServiceCode>
type savingsPlanRateUsageTypeList = array<savingsPlanRateUsageType>
type savingsPlanRateServiceCodeList = array<savingsPlanRateServiceCode>
type savingsPlanRateProperty = {
value: option<jsonSafeFilterValueString>,
  name: option<savingsPlanRatePropertyKey>
}
type savingsPlanRateOperationList = array<savingsPlanRateOperation>
type savingsPlanProductTypeList = array<savingsPlanProductType>
type savingsPlanPaymentOptionList = array<savingsPlanPaymentOption>
type savingsPlanOperationList = array<savingsPlanOperation>
type savingsPlanOfferingRateProperty = {
value: option<jsonSafeFilterValueString>,
  name: option<jsonSafeFilterValueString>
}
type savingsPlanOfferingProperty = {
value: option<jsonSafeFilterValueString>,
  name: option<savingsPlanOfferingPropertyKey>
}
type savingsPlanIdList = array<savingsPlanId>
type savingsPlanDescriptionsList = array<savingsPlanDescription>
type savingsPlanArnList = array<savingsPlanArn>
type parentSavingsPlanOffering = {
planDescription: option<savingsPlanDescription>,
  currency: option<currencyCode>,
  durationSeconds: option<savingsPlansDuration>,
  planType: option<savingsPlanType>,
  paymentOption: option<savingsPlanPaymentOption>,
  offeringId: option<uuid>
}
type listOfStrings = array<string_>
type filterValuesList = array<jsonSafeFilterValueString>
type durationsList = array<savingsPlansDuration>
type currencyList = array<currencyCode>
type savingsPlanRatePropertyList = array<savingsPlanRateProperty>
type savingsPlanRateFilter = {
values: option<listOfStrings>,
  name: option<savingsPlanRateFilterName>
}
type savingsPlanOfferingRatePropertyList = array<savingsPlanOfferingRateProperty>
type savingsPlanOfferingRateFilterElement = {
values: option<filterValuesList>,
  name: option<savingsPlanRateFilterAttribute>
}
type savingsPlanOfferingPropertyList = array<savingsPlanOfferingProperty>
type savingsPlanOfferingFilterElement = {
values: option<filterValuesList>,
  name: option<savingsPlanOfferingFilterAttribute>
}
type savingsPlanFilter = {
values: option<listOfStrings>,
  name: option<savingsPlansFilterName>
}
type savingsPlan = {
tags: option<tagMap>,
  termDurationInSeconds: option<termDurationInSeconds>,
  recurringPaymentAmount: option<amount>,
  upfrontPaymentAmount: option<amount>,
  commitment: option<amount>,
  currency: option<currencyCode>,
  productTypes: option<savingsPlanProductTypeList>,
  paymentOption: option<savingsPlanPaymentOption>,
  savingsPlanType: option<savingsPlanType>,
  ec2InstanceFamily: option<ec2InstanceFamily>,
  region: option<region>,
  state: option<savingsPlanState>,
  end: option<string_>,
  start: option<string_>,
  description: option<string_>,
  savingsPlanArn: option<savingsPlanArn>,
  savingsPlanId: option<savingsPlanId>,
  offeringId: option<savingsPlanOfferingId>
}
type savingsPlanRateFilterList = array<savingsPlanRateFilter>
type savingsPlanRate = {
properties: option<savingsPlanRatePropertyList>,
  operation: option<savingsPlanRateOperation>,
  usageType: option<savingsPlanRateUsageType>,
  serviceCode: option<savingsPlanRateServiceCode>,
  productType: option<savingsPlanProductType>,
  @as("unit") unit_: option<savingsPlanRateUnit>,
  currency: option<currencyCode>,
  rate: option<amount>
}
type savingsPlanOfferingRateFiltersList = array<savingsPlanOfferingRateFilterElement>
type savingsPlanOfferingRate = {
properties: option<savingsPlanOfferingRatePropertyList>,
  operation: option<savingsPlanRateOperation>,
  usageType: option<savingsPlanRateUsageType>,
  serviceCode: option<savingsPlanRateServiceCode>,
  productType: option<savingsPlanProductType>,
  @as("unit") unit_: option<savingsPlanRateUnit>,
  rate: option<savingsPlanRatePricePerUnit>,
  savingsPlanOffering: option<parentSavingsPlanOffering>
}
type savingsPlanOfferingFiltersList = array<savingsPlanOfferingFilterElement>
type savingsPlanOffering = {
properties: option<savingsPlanOfferingPropertyList>,
  operation: option<savingsPlanOperation>,
  usageType: option<savingsPlanUsageType>,
  serviceCode: option<savingsPlanServiceCode>,
  currency: option<currencyCode>,
  durationSeconds: option<savingsPlansDuration>,
  paymentOption: option<savingsPlanPaymentOption>,
  description: option<savingsPlanDescription>,
  planType: option<savingsPlanType>,
  productTypes: option<savingsPlanProductTypeList>,
  offeringId: option<uuid>
}
type savingsPlanList = array<savingsPlan>
type savingsPlanFilterList = array<savingsPlanFilter>
type savingsPlanRateList = array<savingsPlanRate>
type savingsPlanOfferingsList = array<savingsPlanOffering>
type savingsPlanOfferingRatesList = array<savingsPlanOfferingRate>

module DeleteQueuedSavingsPlan = {
  type t;
  type request = {
savingsPlanId: savingsPlanId
}
  type response = unit
  @module("@aws-sdk/client-savingsplans") @new external new_: (request) => t = "DeleteQueuedSavingsPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
  resourceArn: savingsPlanArn
}
  type response = unit
  @module("@aws-sdk/client-savingsplans") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
  resourceArn: savingsPlanArn
}
  type response = unit
  @module("@aws-sdk/client-savingsplans") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: savingsPlanArn
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-savingsplans") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSavingsPlan = {
  type t;
  type request = {
tags: option<tagMap>,
  clientToken: option<clientToken>,
  purchaseTime: option<dateTime>,
  upfrontPaymentAmount: option<amount>,
  commitment: amount,
  savingsPlanOfferingId: savingsPlanOfferingId
}
  type response = {
savingsPlanId: option<savingsPlanId>
}
  @module("@aws-sdk/client-savingsplans") @new external new_: (request) => t = "CreateSavingsPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSavingsPlans = {
  type t;
  type request = {
filters: option<savingsPlanFilterList>,
  states: option<savingsPlanStateList>,
  maxResults: option<maxResults>,
  nextToken: option<paginationToken>,
  savingsPlanIds: option<savingsPlanIdList>,
  savingsPlanArns: option<savingsPlanArnList>
}
  type response = {
nextToken: option<paginationToken>,
  savingsPlans: option<savingsPlanList>
}
  @module("@aws-sdk/client-savingsplans") @new external new_: (request) => t = "DescribeSavingsPlansCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSavingsPlansOfferings = {
  type t;
  type request = {
maxResults: option<pageSize>,
  nextToken: option<paginationToken>,
  filters: option<savingsPlanOfferingFiltersList>,
  operations: option<savingsPlanOperationList>,
  usageTypes: option<savingsPlanUsageTypeList>,
  serviceCodes: option<savingsPlanServiceCodeList>,
  descriptions: option<savingsPlanDescriptionsList>,
  currencies: option<currencyList>,
  durations: option<durationsList>,
  planTypes: option<savingsPlanTypeList>,
  productType: option<savingsPlanProductType>,
  paymentOptions: option<savingsPlanPaymentOptionList>,
  offeringIds: option<uuids>
}
  type response = {
nextToken: option<paginationToken>,
  searchResults: option<savingsPlanOfferingsList>
}
  @module("@aws-sdk/client-savingsplans") @new external new_: (request) => t = "DescribeSavingsPlansOfferingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSavingsPlansOfferingRates = {
  type t;
  type request = {
maxResults: option<pageSize>,
  nextToken: option<paginationToken>,
  filters: option<savingsPlanOfferingRateFiltersList>,
  operations: option<savingsPlanRateOperationList>,
  usageTypes: option<savingsPlanRateUsageTypeList>,
  serviceCodes: option<savingsPlanRateServiceCodeList>,
  products: option<savingsPlanProductTypeList>,
  savingsPlanTypes: option<savingsPlanTypeList>,
  savingsPlanPaymentOptions: option<savingsPlanPaymentOptionList>,
  savingsPlanOfferingIds: option<uuids>
}
  type response = {
nextToken: option<paginationToken>,
  searchResults: option<savingsPlanOfferingRatesList>
}
  @module("@aws-sdk/client-savingsplans") @new external new_: (request) => t = "DescribeSavingsPlansOfferingRatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSavingsPlanRates = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<paginationToken>,
  filters: option<savingsPlanRateFilterList>,
  savingsPlanId: savingsPlanId
}
  type response = {
nextToken: option<paginationToken>,
  searchResults: option<savingsPlanRateList>,
  savingsPlanId: option<savingsPlanId>
}
  @module("@aws-sdk/client-savingsplans") @new external new_: (request) => t = "DescribeSavingsPlanRatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
