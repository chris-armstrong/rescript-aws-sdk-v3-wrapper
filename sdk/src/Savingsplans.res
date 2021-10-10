type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-savingsplans") @new
external createClient: unit => awsServiceClient = "SavingsplansClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type uuid = string
type termDurationInSeconds = float
type tagValue = string
type tagKey = string
type string_ = string
type savingsPlansFilterName = [
  | @as("end") #End
  | @as("start") #Start
  | @as("payment-option") #Payment_Option
  | @as("savings-plan-type") #Savings_Plan_Type
  | @as("term") #Term
  | @as("upfront") #Upfront
  | @as("commitment") #Commitment
  | @as("ec2-instance-family") #Ec2_Instance_Family
  | @as("region") #Region
]
type savingsPlansDuration = float
type savingsPlanUsageType = string
type savingsPlanType = [
  | @as("SageMaker") #SageMaker
  | @as("EC2Instance") #EC2Instance
  | @as("Compute") #Compute
]
type savingsPlanState = [
  | @as("queued-deleted") #Queued_Deleted
  | @as("queued") #Queued
  | @as("retired") #Retired
  | @as("active") #Active
  | @as("payment-failed") #Payment_Failed
  | @as("payment-pending") #Payment_Pending
]
type savingsPlanServiceCode = string
type savingsPlanRateUsageType = string
type savingsPlanRateUnit = [
  | @as("Request") #Request
  | @as("Lambda-GB-Second") #Lambda_GB_Second
  | @as("Hrs") #Hrs
]
type savingsPlanRateServiceCode = [
  | @as("AmazonSageMaker") #AmazonSageMaker
  | @as("AWSLambda") #AWSLambda
  | @as("AmazonEKS") #AmazonEKS
  | @as("AmazonECS") #AmazonECS
  | @as("AmazonEC2") #AmazonEC2
]
type savingsPlanRatePropertyKey = [
  | @as("tenancy") #Tenancy
  | @as("productDescription") #ProductDescription
  | @as("instanceFamily") #InstanceFamily
  | @as("instanceType") #InstanceType
  | @as("region") #Region
]
type savingsPlanRatePricePerUnit = string
type savingsPlanRateOperation = string
type savingsPlanRateFilterName = [
  | @as("operation") #Operation
  | @as("usageType") #UsageType
  | @as("serviceCode") #ServiceCode
  | @as("productType") #ProductType
  | @as("tenancy") #Tenancy
  | @as("productDescription") #ProductDescription
  | @as("instanceType") #InstanceType
  | @as("region") #Region
]
type savingsPlanRateFilterAttribute = [
  | @as("productId") #ProductId
  | @as("tenancy") #Tenancy
  | @as("productDescription") #ProductDescription
  | @as("instanceType") #InstanceType
  | @as("instanceFamily") #InstanceFamily
  | @as("region") #Region
]
type savingsPlanProductType = [
  | @as("SageMaker") #SageMaker
  | @as("Lambda") #Lambda
  | @as("Fargate") #Fargate
  | @as("EC2") #EC2
]
type savingsPlanPaymentOption = [
  | @as("No Upfront") #No_Upfront
  | @as("Partial Upfront") #Partial_Upfront
  | @as("All Upfront") #All_Upfront
]
type savingsPlanOperation = string
type savingsPlanOfferingPropertyKey = [
  | @as("instanceFamily") #InstanceFamily
  | @as("region") #Region
]
type savingsPlanOfferingId = string
type savingsPlanOfferingFilterAttribute = [
  | @as("instanceFamily") #InstanceFamily
  | @as("region") #Region
]
type savingsPlanId = string
type savingsPlanDescription = string
type savingsPlanArn = string
type region = string
type paginationToken = string
type pageSize = int
type maxResults = int
type jsonSafeFilterValueString = string
type ec2InstanceFamily = string
type dateTime = Js.Date.t
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
@ocaml.doc("<p>Information about a property.</p>")
type savingsPlanRateProperty = {
  @ocaml.doc("<p>The property value.</p>") value: option<jsonSafeFilterValueString>,
  @ocaml.doc("<p>The property name.</p>") name: option<savingsPlanRatePropertyKey>,
}
type savingsPlanRateOperationList = array<savingsPlanRateOperation>
type savingsPlanProductTypeList = array<savingsPlanProductType>
type savingsPlanPaymentOptionList = array<savingsPlanPaymentOption>
type savingsPlanOperationList = array<savingsPlanOperation>
@ocaml.doc("<p>Information about a property.</p>")
type savingsPlanOfferingRateProperty = {
  @ocaml.doc("<p>The property value.</p>") value: option<jsonSafeFilterValueString>,
  @ocaml.doc("<p>The property name.</p>") name: option<jsonSafeFilterValueString>,
}
@ocaml.doc("<p>Information about a property.</p>")
type savingsPlanOfferingProperty = {
  @ocaml.doc("<p>The property value.</p>") value: option<jsonSafeFilterValueString>,
  @ocaml.doc("<p>The property name.</p>") name: option<savingsPlanOfferingPropertyKey>,
}
type savingsPlanIdList = array<savingsPlanId>
type savingsPlanDescriptionsList = array<savingsPlanDescription>
type savingsPlanArnList = array<savingsPlanArn>
@ocaml.doc("<p>Information about a Savings Plan offering.</p>")
type parentSavingsPlanOffering = {
  @ocaml.doc("<p>The description.</p>") planDescription: option<savingsPlanDescription>,
  @ocaml.doc("<p>The currency.</p>") currency: option<currencyCode>,
  @ocaml.doc("<p>The duration, in seconds.</p>") durationSeconds: option<savingsPlansDuration>,
  @ocaml.doc("<p>The plan type.</p>") planType: option<savingsPlanType>,
  @ocaml.doc("<p>The payment option.</p>") paymentOption: option<savingsPlanPaymentOption>,
  @ocaml.doc("<p>The ID of the offering.</p>") offeringId: option<uuid>,
}
type listOfStrings = array<string_>
type filterValuesList = array<jsonSafeFilterValueString>
type durationsList = array<savingsPlansDuration>
type currencyList = array<currencyCode>
type savingsPlanRatePropertyList = array<savingsPlanRateProperty>
@ocaml.doc("<p>Information about a filter.</p>")
type savingsPlanRateFilter = {
  @ocaml.doc("<p>The filter values.</p>") values: option<listOfStrings>,
  @ocaml.doc("<p>The filter name.</p>") name: option<savingsPlanRateFilterName>,
}
type savingsPlanOfferingRatePropertyList = array<savingsPlanOfferingRateProperty>
@ocaml.doc("<p>Information about a filter.</p>")
type savingsPlanOfferingRateFilterElement = {
  @ocaml.doc("<p>The filter values.</p>") values: option<filterValuesList>,
  @ocaml.doc("<p>The filter name.</p>") name: option<savingsPlanRateFilterAttribute>,
}
type savingsPlanOfferingPropertyList = array<savingsPlanOfferingProperty>
@ocaml.doc("<p>Information about a filter.</p>")
type savingsPlanOfferingFilterElement = {
  @ocaml.doc("<p>The filter values.</p>") values: option<filterValuesList>,
  @ocaml.doc("<p>The filter name.</p>") name: option<savingsPlanOfferingFilterAttribute>,
}
@ocaml.doc("<p>Information about a filter.</p>")
type savingsPlanFilter = {
  @ocaml.doc("<p>The filter value.</p>") values: option<listOfStrings>,
  @ocaml.doc("<p>The filter name.</p>") name: option<savingsPlansFilterName>,
}
@ocaml.doc("<p>Information about a Savings Plan.</p>")
type savingsPlan = {
  @ocaml.doc("<p>One or more tags.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The duration of the term, in seconds.</p>")
  termDurationInSeconds: option<termDurationInSeconds>,
  @ocaml.doc("<p>The recurring payment amount.</p>") recurringPaymentAmount: option<amount>,
  @ocaml.doc("<p>The up-front payment amount.</p>") upfrontPaymentAmount: option<amount>,
  @ocaml.doc("<p>The hourly commitment, in USD.</p>") commitment: option<amount>,
  @ocaml.doc("<p>The currency.</p>") currency: option<currencyCode>,
  @ocaml.doc("<p>The product types.</p>") productTypes: option<savingsPlanProductTypeList>,
  @ocaml.doc("<p>The payment option.</p>") paymentOption: option<savingsPlanPaymentOption>,
  @ocaml.doc("<p>The plan type.</p>") savingsPlanType: option<savingsPlanType>,
  @ocaml.doc("<p>The EC2 instance family.</p>") ec2InstanceFamily: option<ec2InstanceFamily>,
  @ocaml.doc("<p>The AWS Region.</p>") region: option<region>,
  @ocaml.doc("<p>The state.</p>") state: option<savingsPlanState>,
  @ocaml.doc("<p>The end time.</p>") end: option<string_>,
  @ocaml.doc("<p>The start time.</p>") start: option<string_>,
  @ocaml.doc("<p>The description.</p>") description: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Savings Plan.</p>")
  savingsPlanArn: option<savingsPlanArn>,
  @ocaml.doc("<p>The ID of the Savings Plan.</p>") savingsPlanId: option<savingsPlanId>,
  @ocaml.doc("<p>The ID of the offering.</p>") offeringId: option<savingsPlanOfferingId>,
}
type savingsPlanRateFilterList = array<savingsPlanRateFilter>
@ocaml.doc("<p>Information about a Savings Plan rate.</p>")
type savingsPlanRate = {
  @ocaml.doc("<p>The properties.</p>") properties: option<savingsPlanRatePropertyList>,
  @ocaml.doc("<p>The specific AWS operation for the line item in the billing report.</p>")
  operation: option<savingsPlanRateOperation>,
  @ocaml.doc("<p>The usage details of the line item in the billing report.</p>")
  usageType: option<savingsPlanRateUsageType>,
  @ocaml.doc("<p>The service.</p>") serviceCode: option<savingsPlanRateServiceCode>,
  @ocaml.doc("<p>The product type.</p>") productType: option<savingsPlanProductType>,
  @ocaml.doc("<p>The unit.</p>") @as("unit") unit_: option<savingsPlanRateUnit>,
  @ocaml.doc("<p>The currency.</p>") currency: option<currencyCode>,
  @ocaml.doc("<p>The rate.</p>") rate: option<amount>,
}
type savingsPlanOfferingRateFiltersList = array<savingsPlanOfferingRateFilterElement>
@ocaml.doc("<p>Information about a Savings Plan offering rate.</p>")
type savingsPlanOfferingRate = {
  @ocaml.doc("<p>The properties.</p>") properties: option<savingsPlanOfferingRatePropertyList>,
  @ocaml.doc("<p>The specific AWS operation for the line item in the billing report.</p>")
  operation: option<savingsPlanRateOperation>,
  @ocaml.doc("<p>The usage details of the line item in the billing report.</p>")
  usageType: option<savingsPlanRateUsageType>,
  @ocaml.doc("<p>The service.</p>") serviceCode: option<savingsPlanRateServiceCode>,
  @ocaml.doc("<p>The product type.</p>") productType: option<savingsPlanProductType>,
  @ocaml.doc("<p>The unit.</p>") @as("unit") unit_: option<savingsPlanRateUnit>,
  @ocaml.doc("<p>The Savings Plan rate.</p>") rate: option<savingsPlanRatePricePerUnit>,
  @ocaml.doc("<p>The Savings Plan offering.</p>")
  savingsPlanOffering: option<parentSavingsPlanOffering>,
}
type savingsPlanOfferingFiltersList = array<savingsPlanOfferingFilterElement>
@ocaml.doc("<p>Information about a Savings Plan offering.</p>")
type savingsPlanOffering = {
  @ocaml.doc("<p>The properties.</p>") properties: option<savingsPlanOfferingPropertyList>,
  @ocaml.doc("<p>The specific AWS operation for the line item in the billing report.</p>")
  operation: option<savingsPlanOperation>,
  @ocaml.doc("<p>The usage details of the line item in the billing report.</p>")
  usageType: option<savingsPlanUsageType>,
  @ocaml.doc("<p>The service.</p>") serviceCode: option<savingsPlanServiceCode>,
  @ocaml.doc("<p>The currency.</p>") currency: option<currencyCode>,
  @ocaml.doc("<p>The duration, in seconds.</p>") durationSeconds: option<savingsPlansDuration>,
  @ocaml.doc("<p>The payment option.</p>") paymentOption: option<savingsPlanPaymentOption>,
  @ocaml.doc("<p>The description.</p>") description: option<savingsPlanDescription>,
  @ocaml.doc("<p>The plan type.</p>") planType: option<savingsPlanType>,
  @ocaml.doc("<p>The product type.</p>") productTypes: option<savingsPlanProductTypeList>,
  @ocaml.doc("<p>The ID of the offering.</p>") offeringId: option<uuid>,
}
type savingsPlanList = array<savingsPlan>
type savingsPlanFilterList = array<savingsPlanFilter>
type savingsPlanRateList = array<savingsPlanRate>
type savingsPlanOfferingsList = array<savingsPlanOffering>
type savingsPlanOfferingRatesList = array<savingsPlanOfferingRate>
@ocaml.doc("<p>Savings Plans are a pricing model that offer significant savings on AWS usage (for
        example, on Amazon EC2 instances). You commit to a consistent amount of usage, in USD
        per hour, for a term of 1 or 3 years, and receive a lower price for that usage. For
        more information, see the <a href=\"https://docs.aws.amazon.com/savingsplans/latest/userguide/\">AWS Savings Plans User Guide</a>.</p>")
module DeleteQueuedSavingsPlan = {
  type t
  type request = {@ocaml.doc("<p>The ID of the Savings Plan.</p>") savingsPlanId: savingsPlanId}

  @module("@aws-sdk/client-savingsplans") @new
  external new: request => t = "DeleteQueuedSavingsPlanCommand"
  let make = (~savingsPlanId, ()) => new({savingsPlanId: savingsPlanId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>")
    resourceArn: savingsPlanArn,
  }

  @module("@aws-sdk/client-savingsplans") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>One or more tags. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"
    )
    tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>")
    resourceArn: savingsPlanArn,
  }

  @module("@aws-sdk/client-savingsplans") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>")
    resourceArn: savingsPlanArn,
  }
  type response = {@ocaml.doc("<p>Information about the tags.</p>") tags: option<tagMap>}
  @module("@aws-sdk/client-savingsplans") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSavingsPlan = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") tags: option<tagMap>,
    @ocaml.doc(
      "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The time at which to purchase the Savings Plan, in UTC format (YYYY-MM-DDTHH:MM:SSZ).</p>"
    )
    purchaseTime: option<dateTime>,
    @ocaml.doc("<p>The up-front payment amount. This is a whole number between 50 and 99 percent of the total value of the Savings Plan.
       This parameter is supported only if the payment option is <code>Partial Upfront</code>.</p>")
    upfrontPaymentAmount: option<amount>,
    @ocaml.doc("<p>The hourly commitment, in USD. This is a value between 0.001 and 1 million. You cannot specify more
        than three digits after the decimal point.</p>")
    commitment: amount,
    @ocaml.doc("<p>The ID of the offering.</p>") savingsPlanOfferingId: savingsPlanOfferingId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the Savings Plan.</p>") savingsPlanId: option<savingsPlanId>,
  }
  @module("@aws-sdk/client-savingsplans") @new
  external new: request => t = "CreateSavingsPlanCommand"
  let make = (
    ~commitment,
    ~savingsPlanOfferingId,
    ~tags=?,
    ~clientToken=?,
    ~purchaseTime=?,
    ~upfrontPaymentAmount=?,
    (),
  ) =>
    new({
      tags: tags,
      clientToken: clientToken,
      purchaseTime: purchaseTime,
      upfrontPaymentAmount: upfrontPaymentAmount,
      commitment: commitment,
      savingsPlanOfferingId: savingsPlanOfferingId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSavingsPlans = {
  type t
  type request = {
    @ocaml.doc("<p>The filters.</p>") filters: option<savingsPlanFilterList>,
    @ocaml.doc("<p>The states.</p>") states: option<savingsPlanStateList>,
    @ocaml.doc("<p>The maximum number of results to return with a single call. To retrieve additional results, make another
       call with the returned token value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The IDs of the Savings Plans.</p>") savingsPlanIds: option<savingsPlanIdList>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the Savings Plans.</p>")
    savingsPlanArns: option<savingsPlanArnList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are no more 
       results to return.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the Savings Plans.</p>") savingsPlans: option<savingsPlanList>,
  }
  @module("@aws-sdk/client-savingsplans") @new
  external new: request => t = "DescribeSavingsPlansCommand"
  let make = (
    ~filters=?,
    ~states=?,
    ~maxResults=?,
    ~nextToken=?,
    ~savingsPlanIds=?,
    ~savingsPlanArns=?,
    (),
  ) =>
    new({
      filters: filters,
      states: states,
      maxResults: maxResults,
      nextToken: nextToken,
      savingsPlanIds: savingsPlanIds,
      savingsPlanArns: savingsPlanArns,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSavingsPlansOfferings = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call. To retrieve additional results, make another
       call with the returned token value.</p>")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The filters.</p>") filters: option<savingsPlanOfferingFiltersList>,
    @ocaml.doc("<p>The specific AWS operation for the line item in the billing report.</p>")
    operations: option<savingsPlanOperationList>,
    @ocaml.doc("<p>The usage details of the line item in the billing report.</p>")
    usageTypes: option<savingsPlanUsageTypeList>,
    @ocaml.doc("<p>The services.</p>") serviceCodes: option<savingsPlanServiceCodeList>,
    @ocaml.doc("<p>The descriptions.</p>") descriptions: option<savingsPlanDescriptionsList>,
    @ocaml.doc("<p>The currencies.</p>") currencies: option<currencyList>,
    @ocaml.doc("<p>The durations, in seconds.</p>") durations: option<durationsList>,
    @ocaml.doc("<p>The plan type.</p>") planTypes: option<savingsPlanTypeList>,
    @ocaml.doc("<p>The product type.</p>") productType: option<savingsPlanProductType>,
    @ocaml.doc("<p>The payment options.</p>") paymentOptions: option<savingsPlanPaymentOptionList>,
    @ocaml.doc("<p>The IDs of the offerings.</p>") offeringIds: option<uuids>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are no more 
       results to return.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the Savings Plans offerings.</p>")
    searchResults: option<savingsPlanOfferingsList>,
  }
  @module("@aws-sdk/client-savingsplans") @new
  external new: request => t = "DescribeSavingsPlansOfferingsCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~filters=?,
    ~operations=?,
    ~usageTypes=?,
    ~serviceCodes=?,
    ~descriptions=?,
    ~currencies=?,
    ~durations=?,
    ~planTypes=?,
    ~productType=?,
    ~paymentOptions=?,
    ~offeringIds=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters,
      operations: operations,
      usageTypes: usageTypes,
      serviceCodes: serviceCodes,
      descriptions: descriptions,
      currencies: currencies,
      durations: durations,
      planTypes: planTypes,
      productType: productType,
      paymentOptions: paymentOptions,
      offeringIds: offeringIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSavingsPlansOfferingRates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call. To retrieve additional results, make another
       call with the returned token value.</p>")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The filters.</p>") filters: option<savingsPlanOfferingRateFiltersList>,
    @ocaml.doc("<p>The specific AWS operation for the line item in the billing report.</p>")
    operations: option<savingsPlanRateOperationList>,
    @ocaml.doc("<p>The usage details of the line item in the billing report.</p>")
    usageTypes: option<savingsPlanRateUsageTypeList>,
    @ocaml.doc("<p>The services.</p>") serviceCodes: option<savingsPlanRateServiceCodeList>,
    @ocaml.doc("<p>The AWS products.</p>") products: option<savingsPlanProductTypeList>,
    @ocaml.doc("<p>The plan types.</p>") savingsPlanTypes: option<savingsPlanTypeList>,
    @ocaml.doc("<p>The payment options.</p>")
    savingsPlanPaymentOptions: option<savingsPlanPaymentOptionList>,
    @ocaml.doc("<p>The IDs of the offerings.</p>") savingsPlanOfferingIds: option<uuids>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are no more 
       results to return.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the Savings Plans offering rates.</p>")
    searchResults: option<savingsPlanOfferingRatesList>,
  }
  @module("@aws-sdk/client-savingsplans") @new
  external new: request => t = "DescribeSavingsPlansOfferingRatesCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~filters=?,
    ~operations=?,
    ~usageTypes=?,
    ~serviceCodes=?,
    ~products=?,
    ~savingsPlanTypes=?,
    ~savingsPlanPaymentOptions=?,
    ~savingsPlanOfferingIds=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters,
      operations: operations,
      usageTypes: usageTypes,
      serviceCodes: serviceCodes,
      products: products,
      savingsPlanTypes: savingsPlanTypes,
      savingsPlanPaymentOptions: savingsPlanPaymentOptions,
      savingsPlanOfferingIds: savingsPlanOfferingIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSavingsPlanRates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call. To retrieve additional results, make another
         call with the returned token value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The filters.</p>") filters: option<savingsPlanRateFilterList>,
    @ocaml.doc("<p>The ID of the Savings Plan.</p>") savingsPlanId: savingsPlanId,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are no more 
         results to return.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the Savings Plans rates.</p>")
    searchResults: option<savingsPlanRateList>,
    @ocaml.doc("<p>The ID of the Savings Plan.</p>") savingsPlanId: option<savingsPlanId>,
  }
  @module("@aws-sdk/client-savingsplans") @new
  external new: request => t = "DescribeSavingsPlanRatesCommand"
  let make = (~savingsPlanId, ~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters,
      savingsPlanId: savingsPlanId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
