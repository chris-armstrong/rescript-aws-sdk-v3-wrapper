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
type targetIdType = [@as("ROOT") #ROOT | @as("OU") #OU | @as("ACCOUNT") #ACCOUNT]
type targetId = string
type tagsPerPage = int
type tagValue = string
type tagKey = string
type statusCode = int
type status = string
type startDate = string
type s3Location = string
type s3Bucket = string
type resourcesPerPage = int
type resourceARN = string
type region = string
type paginationToken = string
type nonCompliantResources = float
type maxResultsGetComplianceSummary = int
type lastUpdated = string
type includeComplianceDetails = bool
type groupByAttribute = [@as("RESOURCE_TYPE") #RESOURCETYPE | @as("REGION") #REGION | @as("TARGET_ID") #TARGETID]
type excludeCompliantResources = bool
type exceptionMessage = string
type errorMessage = string
type errorCode = [@as("InvalidParameterException") #InvalidParameterException | @as("InternalServiceException") #InternalServiceException]
type complianceStatus = bool
type amazonResourceType = string
type targetIdFilterList = array<targetId>
type tagValuesOutputList = array<tagValue>
type tagValueList = array<tagValue>
type tagMap = Js.Dict.t< tagValue>
type tagKeyListForUntag = array<tagKey>
type tagKeyList = array<tagKey>
type tagKeyFilterList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type summary = {
@as("NonCompliantResources") nonCompliantResources: option<nonCompliantResources>,
@as("ResourceType") resourceType: option<amazonResourceType>,
@as("Region") region: option<region>,
@as("TargetIdType") targetIdType: option<targetIdType>,
@as("TargetId") targetId: option<targetId>,
@as("LastUpdated") lastUpdated: option<lastUpdated>
}
type resourceTypeFilterList = array<amazonResourceType>
type resourceARNListForTagUntag = array<resourceARN>
type resourceARNListForGet = array<resourceARN>
type regionFilterList = array<region>
type groupBy = array<groupByAttribute>
type failureInfo = {
@as("ErrorMessage") errorMessage: option<errorMessage>,
@as("ErrorCode") errorCode: option<errorCode>,
@as("StatusCode") statusCode: option<statusCode>
}
type tagList_ = array<tag>
type tagFilter = {
@as("Values") values: option<tagValueList>,
@as("Key") key: option<tagKey>
}
type summaryList = array<summary>
type failedResourcesMap = Js.Dict.t< failureInfo>
type complianceDetails = {
@as("ComplianceStatus") complianceStatus: option<complianceStatus>,
@as("KeysWithNoncompliantValues") keysWithNoncompliantValues: option<tagKeyList>,
@as("NoncompliantKeys") noncompliantKeys: option<tagKeyList>
}
type tagFilterList = array<tagFilter>
type resourceTagMapping = {
@as("ComplianceDetails") complianceDetails: option<complianceDetails>,
@as("Tags") tags: option<tagList_>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type resourceTagMappingList = array<resourceTagMapping>
type awsServiceClient;
@module("@aws-sdk/client-tagging") @new external createClient: unit => awsServiceClient = "ResourceGroupsTaggingAPIClient";
module StartReportCreation = {
  type t;
  type request = {
@as("S3Bucket") s3Bucket: s3Bucket
}
  type response = unit
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "StartReportCreationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReportCreation = {
  type t;
  type request = unit
  type response = {
@as("ErrorMessage") errorMessage: option<errorMessage>,
@as("StartDate") startDate: option<startDate>,
@as("S3Location") s3Location: option<s3Location>,
@as("Status") status: option<status>
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "DescribeReportCreationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTagValues = {
  type t;
  type request = {
@as("Key") key: tagKey,
@as("PaginationToken") paginationToken: option<paginationToken>
}
  type response = {
@as("TagValues") tagValues: option<tagValuesOutputList>,
@as("PaginationToken") paginationToken: option<paginationToken>
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "GetTagValuesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTagKeys = {
  type t;
  type request = {
@as("PaginationToken") paginationToken: option<paginationToken>
}
  type response = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("PaginationToken") paginationToken: option<paginationToken>
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "GetTagKeysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResources = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyListForUntag,
@as("ResourceARNList") resourceARNList: resourceARNListForTagUntag
}
  type response = {
@as("FailedResourcesMap") failedResourcesMap: option<failedResourcesMap>
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "UntagResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResources = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("ResourceARNList") resourceARNList: resourceARNListForTagUntag
}
  type response = {
@as("FailedResourcesMap") failedResourcesMap: option<failedResourcesMap>
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "TagResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetComplianceSummary = {
  type t;
  type request = {
@as("PaginationToken") paginationToken: option<paginationToken>,
@as("MaxResults") maxResults: option<maxResultsGetComplianceSummary>,
@as("GroupBy") groupBy: option<groupBy>,
@as("TagKeyFilters") tagKeyFilters: option<tagKeyFilterList>,
@as("ResourceTypeFilters") resourceTypeFilters: option<resourceTypeFilterList>,
@as("RegionFilters") regionFilters: option<regionFilterList>,
@as("TargetIdFilters") targetIdFilters: option<targetIdFilterList>
}
  type response = {
@as("PaginationToken") paginationToken: option<paginationToken>,
@as("SummaryList") summaryList: option<summaryList>
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "GetComplianceSummaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResources = {
  type t;
  type request = {
@as("ResourceARNList") resourceARNList: option<resourceARNListForGet>,
@as("ExcludeCompliantResources") excludeCompliantResources: option<excludeCompliantResources>,
@as("IncludeComplianceDetails") includeComplianceDetails: option<includeComplianceDetails>,
@as("ResourceTypeFilters") resourceTypeFilters: option<resourceTypeFilterList>,
@as("TagsPerPage") tagsPerPage: option<tagsPerPage>,
@as("ResourcesPerPage") resourcesPerPage: option<resourcesPerPage>,
@as("TagFilters") tagFilters: option<tagFilterList>,
@as("PaginationToken") paginationToken: option<paginationToken>
}
  type response = {
@as("ResourceTagMappingList") resourceTagMappingList: option<resourceTagMappingList>,
@as("PaginationToken") paginationToken: option<paginationToken>
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "GetResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
