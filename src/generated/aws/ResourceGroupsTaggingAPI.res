type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type targetIdType = [@as("ROOT") #ROOT | @as("OU") #OU | @as("ACCOUNT") #ACCOUNT]
type targetId = string
type tagsPerPage = int;
type tagValue = string
type tagKey = string
type statusCode = int;
type status = string
type startDate = string
type s3Location = string
type s3Bucket = string
type resourcesPerPage = int;
type resourceARN = string
type region = string
type paginationToken = string
type nonCompliantResources = float;
type maxResultsGetComplianceSummary = int;
type lastUpdated = string
type includeComplianceDetails = bool;
type groupByAttribute = [@as("RESOURCE_TYPE") #RESOURCE_TYPE | @as("REGION") #REGION | @as("TARGET_ID") #TARGET_ID]
type excludeCompliantResources = bool;
type exceptionMessage = string
type errorMessage = string
type errorCode = [@as("InvalidParameterException") #InvalidParameterException | @as("InternalServiceException") #InternalServiceException]
type complianceStatus = bool;
type amazonResourceType = string
type targetIdFilterList = array<targetId>
type tagValuesOutputList = array<tagValue>
type tagValueList = array<tagValue>
type tagMap = Js.Dict.t< tagValue>
type tagKeyListForUntag = array<tagKey>
type tagKeyList = array<tagKey>
type tagKeyFilterList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type summary = {
@as("NonCompliantResources") nonCompliantResources: nonCompliantResources,
@as("ResourceType") resourceType: amazonResourceType,
@as("Region") region: region,
@as("TargetIdType") targetIdType: targetIdType,
@as("TargetId") targetId: targetId,
@as("LastUpdated") lastUpdated: lastUpdated
}
type resourceTypeFilterList = array<amazonResourceType>
type resourceARNListForTagUntag = array<resourceARN>
type resourceARNListForGet = array<resourceARN>
type regionFilterList = array<region>
type groupBy = array<groupByAttribute>
type failureInfo = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("ErrorCode") errorCode: errorCode,
@as("StatusCode") statusCode: statusCode
}
type tagList = array<tag>
type tagFilter = {
@as("Values") values: tagValueList,
@as("Key") key: tagKey
}
type summaryList = array<summary>
type failedResourcesMap = Js.Dict.t< failureInfo>
type complianceDetails = {
@as("ComplianceStatus") complianceStatus: complianceStatus,
@as("KeysWithNoncompliantValues") keysWithNoncompliantValues: tagKeyList,
@as("NoncompliantKeys") noncompliantKeys: tagKeyList
}
type tagFilterList = array<tagFilter>
type resourceTagMapping = {
@as("ComplianceDetails") complianceDetails: complianceDetails,
@as("Tags") tags: tagList,
@as("ResourceARN") resourceARN: resourceARN
}
type resourceTagMappingList = array<resourceTagMapping>
type clientType;
@module("@aws-sdk/client-tagging") @new external createClient: unit => clientType = "ResourceGroupsTaggingAPIClient";
module StartReportCreation = {
  type t;
  type request = {
@as("S3Bucket") s3Bucket: option<s3Bucket>
}
  type response = unit
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "StartReportCreationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReportCreation = {
  type t;
  type request = unit
  type response = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("StartDate") startDate: startDate,
@as("S3Location") s3Location: s3Location,
@as("Status") status: status
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "DescribeReportCreationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTagValues = {
  type t;
  type request = {
@as("Key") key: option<tagKey>,
@as("PaginationToken") paginationToken: paginationToken
}
  type response = {
@as("TagValues") tagValues: tagValuesOutputList,
@as("PaginationToken") paginationToken: paginationToken
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "GetTagValuesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTagKeys = {
  type t;
  type request = {
@as("PaginationToken") paginationToken: paginationToken
}
  type response = {
@as("TagKeys") tagKeys: tagKeyList,
@as("PaginationToken") paginationToken: paginationToken
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "GetTagKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResources = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyListForUntag>,
@as("ResourceARNList") resourceARNList: option<resourceARNListForTagUntag>
}
  type response = {
@as("FailedResourcesMap") failedResourcesMap: failedResourcesMap
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "UntagResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResources = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ResourceARNList") resourceARNList: option<resourceARNListForTagUntag>
}
  type response = {
@as("FailedResourcesMap") failedResourcesMap: failedResourcesMap
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "TagResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetComplianceSummary = {
  type t;
  type request = {
@as("PaginationToken") paginationToken: paginationToken,
@as("MaxResults") maxResults: maxResultsGetComplianceSummary,
@as("GroupBy") groupBy: groupBy,
@as("TagKeyFilters") tagKeyFilters: tagKeyFilterList,
@as("ResourceTypeFilters") resourceTypeFilters: resourceTypeFilterList,
@as("RegionFilters") regionFilters: regionFilterList,
@as("TargetIdFilters") targetIdFilters: targetIdFilterList
}
  type response = {
@as("PaginationToken") paginationToken: paginationToken,
@as("SummaryList") summaryList: summaryList
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "GetComplianceSummaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResources = {
  type t;
  type request = {
@as("ResourceARNList") resourceARNList: resourceARNListForGet,
@as("ExcludeCompliantResources") excludeCompliantResources: excludeCompliantResources,
@as("IncludeComplianceDetails") includeComplianceDetails: includeComplianceDetails,
@as("ResourceTypeFilters") resourceTypeFilters: resourceTypeFilterList,
@as("TagsPerPage") tagsPerPage: tagsPerPage,
@as("ResourcesPerPage") resourcesPerPage: resourcesPerPage,
@as("TagFilters") tagFilters: tagFilterList,
@as("PaginationToken") paginationToken: paginationToken
}
  type response = {
@as("ResourceTagMappingList") resourceTagMappingList: resourceTagMappingList,
@as("PaginationToken") paginationToken: paginationToken
}
  @module("@aws-sdk/client-tagging") @new external new_: (request) => t = "GetResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
