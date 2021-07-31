type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type uUID = string
type termDurationInSeconds = float;
type tagValue = string
type tagKey = string
type amazonawsString = string
type savingsPlansFilterName = [@as("end") #end | @as("start") #start | @as("payment-option") #payment_option | @as("savings-plan-type") #savings_plan_type | @as("term") #term | @as("upfront") #upfront | @as("commitment") #commitment | @as("ec2-instance-family") #ec2_instance_family | @as("region") #region]
type savingsPlansDuration = float;
type savingsPlanUsageType = string
type savingsPlanType = [@as("SageMaker") #SageMaker | @as("EC2Instance") #EC2Instance | @as("Compute") #Compute]
type savingsPlanState = [@as("queued-deleted") #queued_deleted | @as("queued") #queued | @as("retired") #retired | @as("active") #active | @as("payment-failed") #payment_failed | @as("payment-pending") #payment_pending]
type savingsPlanServiceCode = string
type savingsPlanRateUsageType = string
type savingsPlanRateUnit = [@as("Request") #Request | @as("Lambda-GB-Second") #Lambda_GB_Second | @as("Hrs") #Hrs]
type savingsPlanRateServiceCode = [@as("AmazonSageMaker") #AmazonSageMaker | @as("AWSLambda") #AWSLambda | @as("AmazonEKS") #AmazonEKS | @as("AmazonECS") #AmazonECS | @as("AmazonEC2") #AmazonEC2]
type savingsPlanRatePropertyKey = [@as("tenancy") #tenancy | @as("productDescription") #productDescription | @as("instanceFamily") #instanceFamily | @as("instanceType") #instanceType | @as("region") #region]
type savingsPlanRatePricePerUnit = string
type savingsPlanRateOperation = string
type savingsPlanRateFilterName = [@as("operation") #operation | @as("usageType") #usageType | @as("serviceCode") #serviceCode | @as("productType") #productType | @as("tenancy") #tenancy | @as("productDescription") #productDescription | @as("instanceType") #instanceType | @as("region") #region]
type savingsPlanRateFilterAttribute = [@as("productId") #productId | @as("tenancy") #tenancy | @as("productDescription") #productDescription | @as("instanceType") #instanceType | @as("instanceFamily") #instanceFamily | @as("region") #region]
type savingsPlanProductType = [@as("SageMaker") #SageMaker | @as("Lambda") #Lambda | @as("Fargate") #Fargate | @as("EC2") #EC2]
type savingsPlanPaymentOption = [@as("No Upfront") #No Upfront | @as("Partial Upfront") #Partial Upfront | @as("All Upfront") #All Upfront]
type savingsPlanOperation = string
type savingsPlanOfferingPropertyKey = [@as("instanceFamily") #instanceFamily | @as("region") #region]
type savingsPlanOfferingId = string
type savingsPlanOfferingFilterAttribute = [@as("instanceFamily") #instanceFamily | @as("region") #region]
type savingsPlanId = string
type savingsPlanDescription = string
type savingsPlanArn = string
type region = string
type paginationToken = string
type pageSize = int;
type maxResults = int;
type jsonSafeFilterValueString = string
type eC2InstanceFamily = string
type dateTime = Js.Date.t;
type currencyCode = [@as("USD") #USD | @as("CNY") #CNY]
type clientToken = string
type amount = string
type uUIDs = array<uUID>
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type savingsPlanUsageTypeList = array<savingsPlanUsageType>
type savingsPlanTypeList = array<savingsPlanType>
type savingsPlanStateList = array<savingsPlanState>
type savingsPlanServiceCodeList = array<savingsPlanServiceCode>
type savingsPlanRateUsageTypeList = array<savingsPlanRateUsageType>
type savingsPlanRateServiceCodeList = array<savingsPlanRateServiceCode>
type savingsPlanRateProperty = {
@as("value") value: jsonSafeFilterValueString,
@as("name") name: savingsPlanRatePropertyKey
}
type savingsPlanRateOperationList = array<savingsPlanRateOperation>
type savingsPlanProductTypeList = array<savingsPlanProductType>
type savingsPlanPaymentOptionList = array<savingsPlanPaymentOption>
type savingsPlanOperationList = array<savingsPlanOperation>
type savingsPlanOfferingRateProperty = {
@as("value") value: jsonSafeFilterValueString,
@as("name") name: jsonSafeFilterValueString
}
type savingsPlanOfferingProperty = {
@as("value") value: jsonSafeFilterValueString,
@as("name") name: savingsPlanOfferingPropertyKey
}
type savingsPlanIdList = array<savingsPlanId>
type savingsPlanDescriptionsList = array<savingsPlanDescription>
type savingsPlanArnList = array<savingsPlanArn>
type parentSavingsPlanOffering = {
@as("planDescription") planDescription: savingsPlanDescription,
@as("currency") currency: currencyCode,
@as("durationSeconds") durationSeconds: savingsPlansDuration,
@as("planType") planType: savingsPlanType,
@as("paymentOption") paymentOption: savingsPlanPaymentOption,
@as("offeringId") offeringId: uUID
}
type listOfStrings = array<amazonawsString>
type filterValuesList = array<jsonSafeFilterValueString>
type durationsList = array<savingsPlansDuration>
type currencyList = array<currencyCode>
type savingsPlanRatePropertyList = array<savingsPlanRateProperty>
type savingsPlanRateFilter = {
@as("values") values: listOfStrings,
@as("name") name: savingsPlanRateFilterName
}
type savingsPlanOfferingRatePropertyList = array<savingsPlanOfferingRateProperty>
type savingsPlanOfferingRateFilterElement = {
@as("values") values: filterValuesList,
@as("name") name: savingsPlanRateFilterAttribute
}
type savingsPlanOfferingPropertyList = array<savingsPlanOfferingProperty>
type savingsPlanOfferingFilterElement = {
@as("values") values: filterValuesList,
@as("name") name: savingsPlanOfferingFilterAttribute
}
type savingsPlanFilter = {
@as("values") values: listOfStrings,
@as("name") name: savingsPlansFilterName
}
type savingsPlan = {
@as("tags") tags: tagMap,
@as("termDurationInSeconds") termDurationInSeconds: termDurationInSeconds,
@as("recurringPaymentAmount") recurringPaymentAmount: amount,
@as("upfrontPaymentAmount") upfrontPaymentAmount: amount,
@as("commitment") commitment: amount,
@as("currency") currency: currencyCode,
@as("productTypes") productTypes: savingsPlanProductTypeList,
@as("paymentOption") paymentOption: savingsPlanPaymentOption,
@as("savingsPlanType") savingsPlanType: savingsPlanType,
@as("ec2InstanceFamily") ec2InstanceFamily: eC2InstanceFamily,
@as("region") region: region,
@as("state") state: savingsPlanState,
@as("end") end: amazonawsString,
@as("start") start: amazonawsString,
@as("description") description: amazonawsString,
@as("savingsPlanArn") savingsPlanArn: savingsPlanArn,
@as("savingsPlanId") savingsPlanId: savingsPlanId,
@as("offeringId") offeringId: savingsPlanOfferingId
}
type savingsPlanRateFilterList = array<savingsPlanRateFilter>
type savingsPlanRate = {
@as("properties") properties: savingsPlanRatePropertyList,
@as("operation") operation: savingsPlanRateOperation,
@as("usageType") usageType: savingsPlanRateUsageType,
@as("serviceCode") serviceCode: savingsPlanRateServiceCode,
@as("productType") productType: savingsPlanProductType,
@as("unit") unit: savingsPlanRateUnit,
@as("currency") currency: currencyCode,
@as("rate") rate: amount
}
type savingsPlanOfferingRateFiltersList = array<savingsPlanOfferingRateFilterElement>
type savingsPlanOfferingRate = {
@as("properties") properties: savingsPlanOfferingRatePropertyList,
@as("operation") operation: savingsPlanRateOperation,
@as("usageType") usageType: savingsPlanRateUsageType,
@as("serviceCode") serviceCode: savingsPlanRateServiceCode,
@as("productType") productType: savingsPlanProductType,
@as("unit") unit: savingsPlanRateUnit,
@as("rate") rate: savingsPlanRatePricePerUnit,
@as("savingsPlanOffering") savingsPlanOffering: parentSavingsPlanOffering
}
type savingsPlanOfferingFiltersList = array<savingsPlanOfferingFilterElement>
type savingsPlanOffering = {
@as("properties") properties: savingsPlanOfferingPropertyList,
@as("operation") operation: savingsPlanOperation,
@as("usageType") usageType: savingsPlanUsageType,
@as("serviceCode") serviceCode: savingsPlanServiceCode,
@as("currency") currency: currencyCode,
@as("durationSeconds") durationSeconds: savingsPlansDuration,
@as("paymentOption") paymentOption: savingsPlanPaymentOption,
@as("description") description: savingsPlanDescription,
@as("planType") planType: savingsPlanType,
@as("productTypes") productTypes: savingsPlanProductTypeList,
@as("offeringId") offeringId: uUID
}
type savingsPlanList = array<savingsPlan>
type savingsPlanFilterList = array<savingsPlanFilter>
type savingsPlanRateList = array<savingsPlanRate>
type savingsPlanOfferingsList = array<savingsPlanOffering>
type savingsPlanOfferingRatesList = array<savingsPlanOfferingRate>
type clientType;
@module("@aws-sdk/client-savingsplans") @new external createClient: unit => clientType = "SavingsplansClient";
module DeleteQueuedSavingsPlan = {
  type t;
  type request = {
@as("savingsPlanId") savingsPlanId: option<savingsPlanId>
}
  type response = unit
  @module("@aws-sdk/client-savingsplans") @new external new_: (Js.Promise.t<request>) => t = "DeleteQueuedSavingsPlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<savingsPlanArn>
}
  type response = unit
  @module("@aws-sdk/client-savingsplans") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<savingsPlanArn>
}
  type response = unit
  @module("@aws-sdk/client-savingsplans") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<savingsPlanArn>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-savingsplans") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSavingsPlan = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("clientToken") clientToken: clientToken,
@as("purchaseTime") purchaseTime: dateTime,
@as("upfrontPaymentAmount") upfrontPaymentAmount: amount,
@as("commitment") commitment: option<amount>,
@as("savingsPlanOfferingId") savingsPlanOfferingId: option<savingsPlanOfferingId>
}
  type response = {
@as("savingsPlanId") savingsPlanId: savingsPlanId
}
  @module("@aws-sdk/client-savingsplans") @new external new_: (Js.Promise.t<request>) => t = "CreateSavingsPlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSavingsPlans = {
  type t;
  type request = {
@as("filters") filters: savingsPlanFilterList,
@as("states") states: savingsPlanStateList,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("savingsPlanIds") savingsPlanIds: savingsPlanIdList,
@as("savingsPlanArns") savingsPlanArns: savingsPlanArnList
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("savingsPlans") savingsPlans: savingsPlanList
}
  @module("@aws-sdk/client-savingsplans") @new external new_: (Js.Promise.t<request>) => t = "DescribeSavingsPlansCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSavingsPlansOfferings = {
  type t;
  type request = {
@as("maxResults") maxResults: pageSize,
@as("nextToken") nextToken: paginationToken,
@as("filters") filters: savingsPlanOfferingFiltersList,
@as("operations") operations: savingsPlanOperationList,
@as("usageTypes") usageTypes: savingsPlanUsageTypeList,
@as("serviceCodes") serviceCodes: savingsPlanServiceCodeList,
@as("descriptions") descriptions: savingsPlanDescriptionsList,
@as("currencies") currencies: currencyList,
@as("durations") durations: durationsList,
@as("planTypes") planTypes: savingsPlanTypeList,
@as("productType") productType: savingsPlanProductType,
@as("paymentOptions") paymentOptions: savingsPlanPaymentOptionList,
@as("offeringIds") offeringIds: uUIDs
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("searchResults") searchResults: savingsPlanOfferingsList
}
  @module("@aws-sdk/client-savingsplans") @new external new_: (Js.Promise.t<request>) => t = "DescribeSavingsPlansOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSavingsPlansOfferingRates = {
  type t;
  type request = {
@as("maxResults") maxResults: pageSize,
@as("nextToken") nextToken: paginationToken,
@as("filters") filters: savingsPlanOfferingRateFiltersList,
@as("operations") operations: savingsPlanRateOperationList,
@as("usageTypes") usageTypes: savingsPlanRateUsageTypeList,
@as("serviceCodes") serviceCodes: savingsPlanRateServiceCodeList,
@as("products") products: savingsPlanProductTypeList,
@as("savingsPlanTypes") savingsPlanTypes: savingsPlanTypeList,
@as("savingsPlanPaymentOptions") savingsPlanPaymentOptions: savingsPlanPaymentOptionList,
@as("savingsPlanOfferingIds") savingsPlanOfferingIds: uUIDs
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("searchResults") searchResults: savingsPlanOfferingRatesList
}
  @module("@aws-sdk/client-savingsplans") @new external new_: (Js.Promise.t<request>) => t = "DescribeSavingsPlansOfferingRatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSavingsPlanRates = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("filters") filters: savingsPlanRateFilterList,
@as("savingsPlanId") savingsPlanId: option<savingsPlanId>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("searchResults") searchResults: savingsPlanRateList,
@as("savingsPlanId") savingsPlanId: savingsPlanId
}
  @module("@aws-sdk/client-savingsplans") @new external new_: (Js.Promise.t<request>) => t = "DescribeSavingsPlanRatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
