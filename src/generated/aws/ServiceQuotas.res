type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type tagValue = string
type tagKey = string
type statistic = string
type serviceQuotaTemplateAssociationStatus = [@as("DISASSOCIATED") #DISASSOCIATED | @as("ASSOCIATED") #ASSOCIATED]
type serviceName = string
type serviceCode = string
type requester = string
type requestStatus = [@as("CASE_CLOSED") #CASECLOSED | @as("DENIED") #DENIED | @as("APPROVED") #APPROVED | @as("CASE_OPENED") #CASEOPENED | @as("PENDING") #PENDING]
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
type periodUnit = [@as("WEEK") #WEEK | @as("DAY") #DAY | @as("HOUR") #HOUR | @as("MINUTE") #MINUTE | @as("SECOND") #SECOND | @as("MILLISECOND") #MILLISECOND | @as("MICROSECOND") #MICROSECOND]
type nextToken = string
type metricDimensionValue = string
type metricDimensionName = string
type maxResults = int
type globalQuota = bool
type exceptionMessage = string
type errorMessage = string
type errorCode = [@as("SERVICE_QUOTA_NOT_AVAILABLE_ERROR") #SERVICEQUOTANOTAVAILABLEERROR | @as("DEPENDENCY_SERVICE_ERROR") #DEPENDENCYSERVICEERROR | @as("DEPENDENCY_THROTTLING_ERROR") #DEPENDENCYTHROTTLINGERROR | @as("DEPENDENCY_ACCESS_DENIED_ERROR") #DEPENDENCYACCESSDENIEDERROR]
type dateTime = Js.Date.t;
type customerServiceEngagementId = string
type awsRegion = string
type amazonResourceName = string
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type serviceQuotaIncreaseRequestInTemplate = {
@as("GlobalQuota") globalQuota: option<globalQuota>,
@as("Unit") unit_: option<quotaUnit>,
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("DesiredValue") desiredValue: option<quotaValue>,
@as("QuotaName") quotaName: option<quotaName>,
@as("QuotaCode") quotaCode: option<quotaCode>,
@as("ServiceName") serviceName: option<serviceName>,
@as("ServiceCode") serviceCode: option<serviceCode>
}
type serviceInfo = {
@as("ServiceName") serviceName: option<serviceName>,
@as("ServiceCode") serviceCode: option<serviceCode>
}
type requestedServiceQuotaChange = {
@as("Unit") unit_: option<quotaUnit>,
@as("GlobalQuota") globalQuota: option<globalQuota>,
@as("QuotaArn") quotaArn: option<quotaArn>,
@as("Requester") requester: option<requester>,
@as("LastUpdated") lastUpdated: option<dateTime>,
@as("Created") created: option<dateTime>,
@as("Status") status: option<requestStatus>,
@as("DesiredValue") desiredValue: option<quotaValue>,
@as("QuotaName") quotaName: option<quotaName>,
@as("QuotaCode") quotaCode: option<quotaCode>,
@as("ServiceName") serviceName: option<serviceName>,
@as("ServiceCode") serviceCode: option<serviceCode>,
@as("CaseId") caseId: option<customerServiceEngagementId>,
@as("Id") id: option<requestId>
}
type quotaPeriod = {
@as("PeriodUnit") periodUnit: option<periodUnit>,
@as("PeriodValue") periodValue: option<periodValue>
}
type metricDimensionsMapDefinition = Js.Dict.t< metricDimensionValue>
type inputTagKeys = array<tagKey>
type errorReason = {
@as("ErrorMessage") errorMessage: option<errorMessage>,
@as("ErrorCode") errorCode: option<errorCode>
}
type serviceQuotaIncreaseRequestInTemplateList = array<serviceQuotaIncreaseRequestInTemplate>
type serviceInfoListDefinition = array<serviceInfo>
type requestedServiceQuotaChangeHistoryListDefinition = array<requestedServiceQuotaChange>
type outputTags = array<tag>
type metricInfo = {
@as("MetricStatisticRecommendation") metricStatisticRecommendation: option<statistic>,
@as("MetricDimensions") metricDimensions: option<metricDimensionsMapDefinition>,
@as("MetricName") metricName: option<quotaMetricName>,
@as("MetricNamespace") metricNamespace: option<quotaMetricNamespace>
}
type inputTags = array<tag>
type serviceQuota = {
@as("ErrorReason") errorReason: option<errorReason>,
@as("Period") period: option<quotaPeriod>,
@as("UsageMetric") usageMetric: option<metricInfo>,
@as("GlobalQuota") globalQuota: option<globalQuota>,
@as("Adjustable") adjustable: option<quotaAdjustable>,
@as("Unit") unit_: option<quotaUnit>,
@as("Value") value: option<quotaValue>,
@as("QuotaName") quotaName: option<quotaName>,
@as("QuotaCode") quotaCode: option<quotaCode>,
@as("QuotaArn") quotaArn: option<quotaArn>,
@as("ServiceName") serviceName: option<serviceName>,
@as("ServiceCode") serviceCode: option<serviceCode>
}
type serviceQuotaListDefinition = array<serviceQuota>
type awsServiceClient;
@module("@aws-sdk/client-servicequotas") @new external createClient: unit => awsServiceClient = "ServiceQuotasClient";
module GetAssociationForServiceQuotaTemplate = {
  type t;
  type request = unit
  type response = {
@as("ServiceQuotaTemplateAssociationStatus") serviceQuotaTemplateAssociationStatus: option<serviceQuotaTemplateAssociationStatus>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "GetAssociationForServiceQuotaTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateServiceQuotaTemplate = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "DisassociateServiceQuotaTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteServiceQuotaIncreaseRequestFromTemplate = {
  type t;
  type request = {
@as("AwsRegion") awsRegion: awsRegion,
@as("QuotaCode") quotaCode: quotaCode,
@as("ServiceCode") serviceCode: serviceCode
}
  type response = unit
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "DeleteServiceQuotaIncreaseRequestFromTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateServiceQuotaTemplate = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "AssociateServiceQuotaTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: inputTagKeys,
@as("ResourceARN") resourceARN: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RequestServiceQuotaIncrease = {
  type t;
  type request = {
@as("DesiredValue") desiredValue: quotaValue,
@as("QuotaCode") quotaCode: quotaCode,
@as("ServiceCode") serviceCode: serviceCode
}
  type response = {
@as("RequestedQuota") requestedQuota: option<requestedServiceQuotaChange>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "RequestServiceQuotaIncreaseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutServiceQuotaIncreaseRequestIntoTemplate = {
  type t;
  type request = {
@as("DesiredValue") desiredValue: quotaValue,
@as("AwsRegion") awsRegion: awsRegion,
@as("ServiceCode") serviceCode: serviceCode,
@as("QuotaCode") quotaCode: quotaCode
}
  type response = {
@as("ServiceQuotaIncreaseRequestInTemplate") serviceQuotaIncreaseRequestInTemplate: option<serviceQuotaIncreaseRequestInTemplate>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "PutServiceQuotaIncreaseRequestIntoTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetServiceQuotaIncreaseRequestFromTemplate = {
  type t;
  type request = {
@as("AwsRegion") awsRegion: awsRegion,
@as("QuotaCode") quotaCode: quotaCode,
@as("ServiceCode") serviceCode: serviceCode
}
  type response = {
@as("ServiceQuotaIncreaseRequestInTemplate") serviceQuotaIncreaseRequestInTemplate: option<serviceQuotaIncreaseRequestInTemplate>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "GetServiceQuotaIncreaseRequestFromTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRequestedServiceQuotaChange = {
  type t;
  type request = {
@as("RequestId") requestId: requestId
}
  type response = {
@as("RequestedQuota") requestedQuota: option<requestedServiceQuotaChange>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "GetRequestedServiceQuotaChangeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: inputTags,
@as("ResourceARN") resourceARN: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: amazonResourceName
}
  type response = {
@as("Tags") tags: option<outputTags>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListServices = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("Services") services: option<serviceInfoListDefinition>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "ListServicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListServiceQuotaIncreaseRequestsInTemplate = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>,
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("ServiceCode") serviceCode: option<serviceCode>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ServiceQuotaIncreaseRequestInTemplateList") serviceQuotaIncreaseRequestInTemplateList: option<serviceQuotaIncreaseRequestInTemplateList>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "ListServiceQuotaIncreaseRequestsInTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRequestedServiceQuotaChangeHistoryByQuota = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>,
@as("Status") status: option<requestStatus>,
@as("QuotaCode") quotaCode: quotaCode,
@as("ServiceCode") serviceCode: serviceCode
}
  type response = {
@as("RequestedQuotas") requestedQuotas: option<requestedServiceQuotaChangeHistoryListDefinition>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "ListRequestedServiceQuotaChangeHistoryByQuotaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRequestedServiceQuotaChangeHistory = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>,
@as("Status") status: option<requestStatus>,
@as("ServiceCode") serviceCode: option<serviceCode>
}
  type response = {
@as("RequestedQuotas") requestedQuotas: option<requestedServiceQuotaChangeHistoryListDefinition>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "ListRequestedServiceQuotaChangeHistoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetServiceQuota = {
  type t;
  type request = {
@as("QuotaCode") quotaCode: quotaCode,
@as("ServiceCode") serviceCode: serviceCode
}
  type response = {
@as("Quota") quota: option<serviceQuota>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "GetServiceQuotaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAWSDefaultServiceQuota = {
  type t;
  type request = {
@as("QuotaCode") quotaCode: quotaCode,
@as("ServiceCode") serviceCode: serviceCode
}
  type response = {
@as("Quota") quota: option<serviceQuota>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "GetAWSDefaultServiceQuotaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListServiceQuotas = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>,
@as("ServiceCode") serviceCode: serviceCode
}
  type response = {
@as("Quotas") quotas: option<serviceQuotaListDefinition>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "ListServiceQuotasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAWSDefaultServiceQuotas = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>,
@as("ServiceCode") serviceCode: serviceCode
}
  type response = {
@as("Quotas") quotas: option<serviceQuotaListDefinition>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-servicequotas") @new external new_: (request) => t = "ListAWSDefaultServiceQuotasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
