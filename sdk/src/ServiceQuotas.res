type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-servicequotas") @new
external createClient: unit => awsServiceClient = "ServiceQuotasClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tagValue = string
type tagKey = string
type statistic = string
type serviceQuotaTemplateAssociationStatus = [
  | @as("DISASSOCIATED") #DISASSOCIATED
  | @as("ASSOCIATED") #ASSOCIATED
]
type serviceName = string
type serviceCode = string
type requester = string
type requestStatus = [
  | @as("CASE_CLOSED") #CASE_CLOSED
  | @as("DENIED") #DENIED
  | @as("APPROVED") #APPROVED
  | @as("CASE_OPENED") #CASE_OPENED
  | @as("PENDING") #PENDING
]
type requestId = string
type quotaValue = float
type quotaUnit = string
type quotaName = string
type quotaMetricNamespace = string
type quotaMetricName = string
type quotaCode = string
type quotaArn = string
type quotaAdjustable = bool
type periodValue = int
type periodUnit = [
  | @as("WEEK") #WEEK
  | @as("DAY") #DAY
  | @as("HOUR") #HOUR
  | @as("MINUTE") #MINUTE
  | @as("SECOND") #SECOND
  | @as("MILLISECOND") #MILLISECOND
  | @as("MICROSECOND") #MICROSECOND
]
type nextToken = string
type metricDimensionValue = string
type metricDimensionName = string
type maxResults = int
type globalQuota = bool
type exceptionMessage = string
type errorMessage = string
type errorCode = [
  | @as("SERVICE_QUOTA_NOT_AVAILABLE_ERROR") #SERVICE_QUOTA_NOT_AVAILABLE_ERROR
  | @as("DEPENDENCY_SERVICE_ERROR") #DEPENDENCY_SERVICE_ERROR
  | @as("DEPENDENCY_THROTTLING_ERROR") #DEPENDENCY_THROTTLING_ERROR
  | @as("DEPENDENCY_ACCESS_DENIED_ERROR") #DEPENDENCY_ACCESS_DENIED_ERROR
]
type dateTime = Js.Date.t
type customerServiceEngagementId = string
type awsRegion = string
type amazonResourceName = string
@ocaml.doc("<p>A complex data type that contains a tag key and tag value.</p>")
type tag = {
  @ocaml.doc("<p>A string that contains an optional tag value. The string length should be between 0 and
      256 characters. Valid characters include a-z, A-Z, 0-9, space, and the special characters _ -
      . : / = + @.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>A string that contains a tag key. The string length should be between 1 and 128
      characters. Valid characters include a-z, A-Z, 0-9, space, and the special characters _ - . :
      / = + @.</p>")
  @as("Key")
  key: tagKey,
}
@ocaml.doc("<p>Information about a quota increase request.</p>")
type serviceQuotaIncreaseRequestInTemplate = {
  @ocaml.doc("<p>Indicates whether the quota is global.</p>") @as("GlobalQuota")
  globalQuota: option<globalQuota>,
  @ocaml.doc("<p>The unit of measurement.</p>") @as("Unit") unit_: option<quotaUnit>,
  @ocaml.doc("<p>The AWS Region.</p>") @as("AwsRegion") awsRegion: option<awsRegion>,
  @ocaml.doc("<p>The new, increased value of the quota.</p>") @as("DesiredValue")
  desiredValue: option<quotaValue>,
  @ocaml.doc("<p>The quota name.</p>") @as("QuotaName") quotaName: option<quotaName>,
  @ocaml.doc("<p>The quota identifier.</p>") @as("QuotaCode") quotaCode: option<quotaCode>,
  @ocaml.doc("<p>The service name.</p>") @as("ServiceName") serviceName: option<serviceName>,
  @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: option<serviceCode>,
}
@ocaml.doc("<p>Information about a service.</p>")
type serviceInfo = {
  @ocaml.doc("<p>The service name.</p>") @as("ServiceName") serviceName: option<serviceName>,
  @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: option<serviceCode>,
}
@ocaml.doc("<p>Information about a quota increase request.</p>")
type requestedServiceQuotaChange = {
  @ocaml.doc("<p>The unit of measurement.</p>") @as("Unit") unit_: option<quotaUnit>,
  @ocaml.doc("<p>Indicates whether the quota is global.</p>") @as("GlobalQuota")
  globalQuota: option<globalQuota>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the quota.</p>") @as("QuotaArn")
  quotaArn: option<quotaArn>,
  @ocaml.doc("<p>The IAM identity of the requester.</p>") @as("Requester")
  requester: option<requester>,
  @ocaml.doc("<p>The date and time of the most recent change.</p>") @as("LastUpdated")
  lastUpdated: option<dateTime>,
  @ocaml.doc("<p>The date and time when the quota increase request was received and the case ID was
      created.</p>")
  @as("Created")
  created: option<dateTime>,
  @ocaml.doc("<p>The state of the quota increase request.</p>") @as("Status")
  status: option<requestStatus>,
  @ocaml.doc("<p>The new, increased value for the quota.</p>") @as("DesiredValue")
  desiredValue: option<quotaValue>,
  @ocaml.doc("<p>The quota name.</p>") @as("QuotaName") quotaName: option<quotaName>,
  @ocaml.doc("<p>The quota identifier.</p>") @as("QuotaCode") quotaCode: option<quotaCode>,
  @ocaml.doc("<p>The service name.</p>") @as("ServiceName") serviceName: option<serviceName>,
  @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: option<serviceCode>,
  @ocaml.doc("<p>The case ID.</p>") @as("CaseId") caseId: option<customerServiceEngagementId>,
  @ocaml.doc("<p>The unique identifier.</p>") @as("Id") id: option<requestId>,
}
@ocaml.doc("<p>Information about the quota period.</p>")
type quotaPeriod = {
  @ocaml.doc("<p>The time unit.</p>") @as("PeriodUnit") periodUnit: option<periodUnit>,
  @ocaml.doc("<p>The value.</p>") @as("PeriodValue") periodValue: option<periodValue>,
}
type metricDimensionsMapDefinition = Js.Dict.t<metricDimensionValue>
type inputTagKeys = array<tagKey>
@ocaml.doc("<p>An error that explains why an action did not succeed.</p>")
type errorReason = {
  @ocaml.doc("<p>The error message.</p>") @as("ErrorMessage") errorMessage: option<errorMessage>,
  @ocaml.doc("<p>Service Quotas returns the following error values:</p>
         <ul>
            <li>
               <p>
                  <code>DEPENDENCY_ACCESS_DENIED_ERROR</code> - The caller does not have the required
          permissions to complete the action. To resolve the error, you must have permission to
          access the service or quota.</p>
            </li>
            <li>
               <p>
                  <code>DEPENDENCY_THROTTLING_ERROR</code> - The service is throttling Service
          Quotas.</p>
            </li>
            <li>
               <p>
                  <code>DEPENDENCY_SERVICE_ERROR</code> - The service is not available.</p>
            </li>
            <li>
               <p>
                  <code>SERVICE_QUOTA_NOT_AVAILABLE_ERROR</code> - There was an error in Service
          Quotas.</p>
            </li>
         </ul>")
  @as("ErrorCode")
  errorCode: option<errorCode>,
}
type serviceQuotaIncreaseRequestInTemplateList = array<serviceQuotaIncreaseRequestInTemplate>
type serviceInfoListDefinition = array<serviceInfo>
type requestedServiceQuotaChangeHistoryListDefinition = array<requestedServiceQuotaChange>
type outputTags = array<tag>
@ocaml.doc("<p>Information about the CloudWatch metric that reflects quota usage.</p>")
type metricInfo = {
  @ocaml.doc("<p>The metric statistic that we recommend you use when determining quota usage.</p>")
  @as("MetricStatisticRecommendation")
  metricStatisticRecommendation: option<statistic>,
  @ocaml.doc("<p>The metric dimension. This is a name/value pair that is part of the identity of a
      metric.</p>")
  @as("MetricDimensions")
  metricDimensions: option<metricDimensionsMapDefinition>,
  @ocaml.doc("<p>The name of the metric.</p>") @as("MetricName")
  metricName: option<quotaMetricName>,
  @ocaml.doc("<p>The namespace of the metric.</p>") @as("MetricNamespace")
  metricNamespace: option<quotaMetricNamespace>,
}
type inputTags = array<tag>
@ocaml.doc("<p>Information about a quota.</p>")
type serviceQuota = {
  @ocaml.doc("<p>The error code and error reason.</p>") @as("ErrorReason")
  errorReason: option<errorReason>,
  @ocaml.doc("<p>The period of time.</p>") @as("Period") period: option<quotaPeriod>,
  @ocaml.doc("<p>Information about the measurement.</p>") @as("UsageMetric")
  usageMetric: option<metricInfo>,
  @ocaml.doc("<p>Indicates whether the quota is global.</p>") @as("GlobalQuota")
  globalQuota: option<globalQuota>,
  @ocaml.doc("<p>Indicates whether the quota value can be increased.</p>") @as("Adjustable")
  adjustable: option<quotaAdjustable>,
  @ocaml.doc("<p>The unit of measurement.</p>") @as("Unit") unit_: option<quotaUnit>,
  @ocaml.doc("<p>The quota value.</p>") @as("Value") value: option<quotaValue>,
  @ocaml.doc("<p>The quota name.</p>") @as("QuotaName") quotaName: option<quotaName>,
  @ocaml.doc("<p>The quota identifier.</p>") @as("QuotaCode") quotaCode: option<quotaCode>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the quota.</p>") @as("QuotaArn")
  quotaArn: option<quotaArn>,
  @ocaml.doc("<p>The service name.</p>") @as("ServiceName") serviceName: option<serviceName>,
  @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: option<serviceCode>,
}
type serviceQuotaListDefinition = array<serviceQuota>
@ocaml.doc("<p>With Service Quotas, you can view and manage your quotas easily as your AWS workloads
      grow. Quotas, also referred to as limits, are the maximum number of resources that you can
      create in your AWS account. For more information, see the <a href=\"https://docs.aws.amazon.com/servicequotas/latest/userguide/\">Service Quotas User Guide</a>.</p>")
module GetAssociationForServiceQuotaTemplate = {
  type t

  type response = {
    @ocaml.doc("<p>The association status. If the status is <code>ASSOCIATED</code>, the quota increase
      requests in the template are automatically applied to new accounts in your
      organization.</p>")
    @as("ServiceQuotaTemplateAssociationStatus")
    serviceQuotaTemplateAssociationStatus: option<serviceQuotaTemplateAssociationStatus>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: unit => t = "GetAssociationForServiceQuotaTemplateCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateServiceQuotaTemplate = {
  type t

  @module("@aws-sdk/client-servicequotas") @new
  external new: unit => t = "DisassociateServiceQuotaTemplateCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteServiceQuotaIncreaseRequestFromTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS Region.</p>") @as("AwsRegion") awsRegion: awsRegion,
    @ocaml.doc("<p>The quota identifier.</p>") @as("QuotaCode") quotaCode: quotaCode,
    @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: serviceCode,
  }

  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "DeleteServiceQuotaIncreaseRequestFromTemplateCommand"
  let make = (~awsRegion, ~quotaCode, ~serviceCode, ()) =>
    new({awsRegion: awsRegion, quotaCode: quotaCode, serviceCode: serviceCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateServiceQuotaTemplate = {
  type t

  @module("@aws-sdk/client-servicequotas") @new
  external new: unit => t = "AssociateServiceQuotaTemplateCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags that you want to remove from the resource.</p>")
    @as("TagKeys")
    tagKeys: inputTagKeys,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the applied quota that you want to untag. You can get
      this information by using the Service Quotas console, or by listing the quotas using the <a href=\"https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html\">list-service-quotas</a> AWS CLI command or the <a href=\"https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html\">ListServiceQuotas</a> AWS API operation.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-servicequotas") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RequestServiceQuotaIncrease = {
  type t
  type request = {
    @ocaml.doc("<p>The new, increased value for the quota.</p>") @as("DesiredValue")
    desiredValue: quotaValue,
    @ocaml.doc("<p>The quota identifier.</p>") @as("QuotaCode") quotaCode: quotaCode,
    @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: serviceCode,
  }
  type response = {
    @ocaml.doc("<p>Information about the quota increase request.</p>") @as("RequestedQuota")
    requestedQuota: option<requestedServiceQuotaChange>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "RequestServiceQuotaIncreaseCommand"
  let make = (~desiredValue, ~quotaCode, ~serviceCode, ()) =>
    new({desiredValue: desiredValue, quotaCode: quotaCode, serviceCode: serviceCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutServiceQuotaIncreaseRequestIntoTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The new, increased value for the quota.</p>") @as("DesiredValue")
    desiredValue: quotaValue,
    @ocaml.doc("<p>The AWS Region.</p>") @as("AwsRegion") awsRegion: awsRegion,
    @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: serviceCode,
    @ocaml.doc("<p>The quota identifier.</p>") @as("QuotaCode") quotaCode: quotaCode,
  }
  type response = {
    @ocaml.doc("<p>Information about the quota increase request.</p>")
    @as("ServiceQuotaIncreaseRequestInTemplate")
    serviceQuotaIncreaseRequestInTemplate: option<serviceQuotaIncreaseRequestInTemplate>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "PutServiceQuotaIncreaseRequestIntoTemplateCommand"
  let make = (~desiredValue, ~awsRegion, ~serviceCode, ~quotaCode, ()) =>
    new({
      desiredValue: desiredValue,
      awsRegion: awsRegion,
      serviceCode: serviceCode,
      quotaCode: quotaCode,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetServiceQuotaIncreaseRequestFromTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS Region.</p>") @as("AwsRegion") awsRegion: awsRegion,
    @ocaml.doc("<p>The quota identifier.</p>") @as("QuotaCode") quotaCode: quotaCode,
    @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: serviceCode,
  }
  type response = {
    @ocaml.doc("<p>Information about the quota increase request.</p>")
    @as("ServiceQuotaIncreaseRequestInTemplate")
    serviceQuotaIncreaseRequestInTemplate: option<serviceQuotaIncreaseRequestInTemplate>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "GetServiceQuotaIncreaseRequestFromTemplateCommand"
  let make = (~awsRegion, ~quotaCode, ~serviceCode, ()) =>
    new({awsRegion: awsRegion, quotaCode: quotaCode, serviceCode: serviceCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRequestedServiceQuotaChange = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the quota increase request.</p>") @as("RequestId")
    requestId: requestId,
  }
  type response = {
    @ocaml.doc("<p>Information about the quota increase request.</p>") @as("RequestedQuota")
    requestedQuota: option<requestedServiceQuotaChange>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "GetRequestedServiceQuotaChangeCommand"
  let make = (~requestId, ()) => new({requestId: requestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags that you want to add to the resource.</p>") @as("Tags") tags: inputTags,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the applied quota. You can get this information by
      using the Service Quotas console, or by listing the quotas using the <a href=\"https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html\">list-service-quotas</a> AWS CLI command or the <a href=\"https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html\">ListServiceQuotas</a> AWS API operation.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-servicequotas") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the applied quota for which you want to list tags. You
      can get this information by using the Service Quotas console, or by listing the quotas using the
        <a href=\"https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html\">list-service-quotas</a> AWS CLI command or the <a href=\"https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html\">ListServiceQuotas</a> AWS API operation.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>A complex data type that contains zero or more tag elements.</p>") @as("Tags")
    tags: option<outputTags>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListServices = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call. To retrieve the remaining
      results, if any, make another call with the token returned from this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>Information about the services.</p>") @as("Services")
    services: option<serviceInfoListDefinition>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
      no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-servicequotas") @new external new: request => t = "ListServicesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListServiceQuotaIncreaseRequestsInTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call. To retrieve the remaining
      results, if any, make another call with the token returned from this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The AWS Region.</p>") @as("AwsRegion") awsRegion: option<awsRegion>,
    @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode")
    serviceCode: option<serviceCode>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
      no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the quota increase requests.</p>")
    @as("ServiceQuotaIncreaseRequestInTemplateList")
    serviceQuotaIncreaseRequestInTemplateList: option<serviceQuotaIncreaseRequestInTemplateList>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "ListServiceQuotaIncreaseRequestsInTemplateCommand"
  let make = (~maxResults=?, ~nextToken=?, ~awsRegion=?, ~serviceCode=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      awsRegion: awsRegion,
      serviceCode: serviceCode,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRequestedServiceQuotaChangeHistoryByQuota = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call. To retrieve the remaining
      results, if any, make another call with the token returned from this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The status value of the quota increase request.</p>") @as("Status")
    status: option<requestStatus>,
    @ocaml.doc("<p>The quota identifier.</p>") @as("QuotaCode") quotaCode: quotaCode,
    @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: serviceCode,
  }
  type response = {
    @ocaml.doc("<p>Information about the quota increase requests.</p>") @as("RequestedQuotas")
    requestedQuotas: option<requestedServiceQuotaChangeHistoryListDefinition>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
      no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "ListRequestedServiceQuotaChangeHistoryByQuotaCommand"
  let make = (~quotaCode, ~serviceCode, ~maxResults=?, ~nextToken=?, ~status=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      status: status,
      quotaCode: quotaCode,
      serviceCode: serviceCode,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRequestedServiceQuotaChangeHistory = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call. To retrieve the remaining
      results, if any, make another call with the token returned from this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The status of the quota increase request.</p>") @as("Status")
    status: option<requestStatus>,
    @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode")
    serviceCode: option<serviceCode>,
  }
  type response = {
    @ocaml.doc("<p>Information about the quota increase requests.</p>") @as("RequestedQuotas")
    requestedQuotas: option<requestedServiceQuotaChangeHistoryListDefinition>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
      no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "ListRequestedServiceQuotaChangeHistoryCommand"
  let make = (~maxResults=?, ~nextToken=?, ~status=?, ~serviceCode=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, status: status, serviceCode: serviceCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetServiceQuota = {
  type t
  type request = {
    @ocaml.doc("<p>The quota identifier.</p>") @as("QuotaCode") quotaCode: quotaCode,
    @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: serviceCode,
  }
  type response = {
    @ocaml.doc("<p>Information about the quota.</p>") @as("Quota") quota: option<serviceQuota>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "GetServiceQuotaCommand"
  let make = (~quotaCode, ~serviceCode, ()) => new({quotaCode: quotaCode, serviceCode: serviceCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAWSDefaultServiceQuota = {
  type t
  type request = {
    @ocaml.doc("<p>The quota identifier.</p>") @as("QuotaCode") quotaCode: quotaCode,
    @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: serviceCode,
  }
  type response = {
    @ocaml.doc("<p>Information about the quota.</p>") @as("Quota") quota: option<serviceQuota>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "GetAWSDefaultServiceQuotaCommand"
  let make = (~quotaCode, ~serviceCode, ()) => new({quotaCode: quotaCode, serviceCode: serviceCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListServiceQuotas = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call. To retrieve the remaining
      results, if any, make another call with the token returned from this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: serviceCode,
  }
  type response = {
    @ocaml.doc("<p>Information about the quotas.</p>") @as("Quotas")
    quotas: option<serviceQuotaListDefinition>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
      no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "ListServiceQuotasCommand"
  let make = (~serviceCode, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, serviceCode: serviceCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAWSDefaultServiceQuotas = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call. To retrieve the remaining
      results, if any, make another call with the token returned from this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The service identifier.</p>") @as("ServiceCode") serviceCode: serviceCode,
  }
  type response = {
    @ocaml.doc("<p>Information about the quotas.</p>") @as("Quotas")
    quotas: option<serviceQuotaListDefinition>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
      no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-servicequotas") @new
  external new: request => t = "ListAWSDefaultServiceQuotasCommand"
  let make = (~serviceCode, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, serviceCode: serviceCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
