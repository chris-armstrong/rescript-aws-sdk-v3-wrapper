type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type tagValue = string
type tagKey = string
type statistic = string
type serviceQuotaTemplateAssociationStatus = [@as("DISASSOCIATED") #DISASSOCIATED | @as("ASSOCIATED") #ASSOCIATED]
type serviceName = string
type serviceCode = string
type requester = string
type requestStatus = [@as("CASE_CLOSED") #CASE_CLOSED | @as("DENIED") #DENIED | @as("APPROVED") #APPROVED | @as("CASE_OPENED") #CASE_OPENED | @as("PENDING") #PENDING]
type requestId = string
type quotaValue = float;
type quotaUnit = string
type quotaName = string
type quotaMetricNamespace = string
type quotaMetricName = string
type quotaCode = string
type quotaArn = string
type quotaAdjustable = bool;
type periodValue = int;
type periodUnit = [@as("WEEK") #WEEK | @as("DAY") #DAY | @as("HOUR") #HOUR | @as("MINUTE") #MINUTE | @as("SECOND") #SECOND | @as("MILLISECOND") #MILLISECOND | @as("MICROSECOND") #MICROSECOND]
type nextToken = string
type metricDimensionValue = string
type metricDimensionName = string
type maxResults = int;
type globalQuota = bool;
type exceptionMessage = string
type errorMessage = string
type errorCode = [@as("SERVICE_QUOTA_NOT_AVAILABLE_ERROR") #SERVICE_QUOTA_NOT_AVAILABLE_ERROR | @as("DEPENDENCY_SERVICE_ERROR") #DEPENDENCY_SERVICE_ERROR | @as("DEPENDENCY_THROTTLING_ERROR") #DEPENDENCY_THROTTLING_ERROR | @as("DEPENDENCY_ACCESS_DENIED_ERROR") #DEPENDENCY_ACCESS_DENIED_ERROR]
type dateTime = Js.Date.t;
type customerServiceEngagementId = string
type awsRegion = string
type amazonResourceName = string
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type serviceQuotaIncreaseRequestInTemplate = {
@as("GlobalQuota") globalQuota: globalQuota,
@as("Unit") unit: quotaUnit,
@as("AwsRegion") awsRegion: awsRegion,
@as("DesiredValue") desiredValue: quotaValue,
@as("QuotaName") quotaName: quotaName,
@as("QuotaCode") quotaCode: quotaCode,
@as("ServiceName") serviceName: serviceName,
@as("ServiceCode") serviceCode: serviceCode
}
type serviceInfo = {
@as("ServiceName") serviceName: serviceName,
@as("ServiceCode") serviceCode: serviceCode
}
type requestedServiceQuotaChange = {
@as("Unit") unit: quotaUnit,
@as("GlobalQuota") globalQuota: globalQuota,
@as("QuotaArn") quotaArn: quotaArn,
@as("Requester") requester: requester,
@as("LastUpdated") lastUpdated: dateTime,
@as("Created") created: dateTime,
@as("Status") status: requestStatus,
@as("DesiredValue") desiredValue: quotaValue,
@as("QuotaName") quotaName: quotaName,
@as("QuotaCode") quotaCode: quotaCode,
@as("ServiceName") serviceName: serviceName,
@as("ServiceCode") serviceCode: serviceCode,
@as("CaseId") caseId: customerServiceEngagementId,
@as("Id") id: requestId
}
type quotaPeriod = {
@as("PeriodUnit") periodUnit: periodUnit,
@as("PeriodValue") periodValue: periodValue
}
type metricDimensionsMapDefinition = Js.Dict.t< metricDimensionValue>
type inputTagKeys = array<tagKey>
type errorReason = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("ErrorCode") errorCode: errorCode
}
type serviceQuotaIncreaseRequestInTemplateList = array<serviceQuotaIncreaseRequestInTemplate>
type serviceInfoListDefinition = array<serviceInfo>
type requestedServiceQuotaChangeHistoryListDefinition = array<requestedServiceQuotaChange>
type outputTags = array<tag>
type metricInfo = {
@as("MetricStatisticRecommendation") metricStatisticRecommendation: statistic,
@as("MetricDimensions") metricDimensions: metricDimensionsMapDefinition,
@as("MetricName") metricName: quotaMetricName,
@as("MetricNamespace") metricNamespace: quotaMetricNamespace
}
type inputTags = array<tag>
type serviceQuota = {
@as("ErrorReason") errorReason: errorReason,
@as("Period") period: quotaPeriod,
@as("UsageMetric") usageMetric: metricInfo,
@as("GlobalQuota") globalQuota: globalQuota,
@as("Adjustable") adjustable: quotaAdjustable,
@as("Unit") unit: quotaUnit,
@as("Value") value: quotaValue,
@as("QuotaName") quotaName: quotaName,
@as("QuotaCode") quotaCode: quotaCode,
@as("QuotaArn") quotaArn: quotaArn,
@as("ServiceName") serviceName: serviceName,
@as("ServiceCode") serviceCode: serviceCode
}
type serviceQuotaListDefinition = array<serviceQuota>
type clientType;
@module("@aws-sdk/client-servicequotas") @new external createClient: unit => clientType = "ServiceQuotasClient";
module GetAssociationForServiceQuotaTemplate = {
  type t;
  type request = unit
  type response = {
@as("ServiceQuotaTemplateAssociationStatus") serviceQuotaTemplateAssociationStatus: serviceQuotaTemplateAssociationStatus
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "GetAssociationForServiceQuotaTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateServiceQuotaTemplate = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "DisassociateServiceQuotaTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteServiceQuotaIncreaseRequestFromTemplate = {
  type t;
  type request = {
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("QuotaCode") quotaCode: option<quotaCode>,
@as("ServiceCode") serviceCode: option<serviceCode>
}
  type response = unit
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "DeleteServiceQuotaIncreaseRequestFromTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateServiceQuotaTemplate = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "AssociateServiceQuotaTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<inputTagKeys>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RequestServiceQuotaIncrease = {
  type t;
  type request = {
@as("DesiredValue") desiredValue: option<quotaValue>,
@as("QuotaCode") quotaCode: option<quotaCode>,
@as("ServiceCode") serviceCode: option<serviceCode>
}
  type response = {
@as("RequestedQuota") requestedQuota: requestedServiceQuotaChange
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "RequestServiceQuotaIncreaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutServiceQuotaIncreaseRequestIntoTemplate = {
  type t;
  type request = {
@as("DesiredValue") desiredValue: option<quotaValue>,
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("ServiceCode") serviceCode: option<serviceCode>,
@as("QuotaCode") quotaCode: option<quotaCode>
}
  type response = {
@as("ServiceQuotaIncreaseRequestInTemplate") serviceQuotaIncreaseRequestInTemplate: serviceQuotaIncreaseRequestInTemplate
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "PutServiceQuotaIncreaseRequestIntoTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServiceQuotaIncreaseRequestFromTemplate = {
  type t;
  type request = {
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("QuotaCode") quotaCode: option<quotaCode>,
@as("ServiceCode") serviceCode: option<serviceCode>
}
  type response = {
@as("ServiceQuotaIncreaseRequestInTemplate") serviceQuotaIncreaseRequestInTemplate: serviceQuotaIncreaseRequestInTemplate
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "GetServiceQuotaIncreaseRequestFromTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRequestedServiceQuotaChange = {
  type t;
  type request = {
@as("RequestId") requestId: option<requestId>
}
  type response = {
@as("RequestedQuota") requestedQuota: requestedServiceQuotaChange
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "GetRequestedServiceQuotaChangeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<inputTags>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = {
@as("Tags") tags: outputTags
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServices = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("Services") services: serviceInfoListDefinition,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "ListServicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServiceQuotaIncreaseRequestsInTemplate = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("AwsRegion") awsRegion: awsRegion,
@as("ServiceCode") serviceCode: serviceCode
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ServiceQuotaIncreaseRequestInTemplateList") serviceQuotaIncreaseRequestInTemplateList: serviceQuotaIncreaseRequestInTemplateList
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "ListServiceQuotaIncreaseRequestsInTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRequestedServiceQuotaChangeHistoryByQuota = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("Status") status: requestStatus,
@as("QuotaCode") quotaCode: option<quotaCode>,
@as("ServiceCode") serviceCode: option<serviceCode>
}
  type response = {
@as("RequestedQuotas") requestedQuotas: requestedServiceQuotaChangeHistoryListDefinition,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "ListRequestedServiceQuotaChangeHistoryByQuotaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRequestedServiceQuotaChangeHistory = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("Status") status: requestStatus,
@as("ServiceCode") serviceCode: serviceCode
}
  type response = {
@as("RequestedQuotas") requestedQuotas: requestedServiceQuotaChangeHistoryListDefinition,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "ListRequestedServiceQuotaChangeHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServiceQuota = {
  type t;
  type request = {
@as("QuotaCode") quotaCode: option<quotaCode>,
@as("ServiceCode") serviceCode: option<serviceCode>
}
  type response = {
@as("Quota") quota: serviceQuota
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "GetServiceQuotaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAWSDefaultServiceQuota = {
  type t;
  type request = {
@as("QuotaCode") quotaCode: option<quotaCode>,
@as("ServiceCode") serviceCode: option<serviceCode>
}
  type response = {
@as("Quota") quota: serviceQuota
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "GetAWSDefaultServiceQuotaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServiceQuotas = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("ServiceCode") serviceCode: option<serviceCode>
}
  type response = {
@as("Quotas") quotas: serviceQuotaListDefinition,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "ListServiceQuotasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAWSDefaultServiceQuotas = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("ServiceCode") serviceCode: option<serviceCode>
}
  type response = {
@as("Quotas") quotas: serviceQuotaListDefinition,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (Js.Promise.t<request>) => t = "ListAWSDefaultServiceQuotasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
