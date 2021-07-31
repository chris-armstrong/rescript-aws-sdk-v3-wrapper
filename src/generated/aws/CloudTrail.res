type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsString = string
type selectorName = string
type selectorField = string
type readWriteType = [@as("All") #All | @as("WriteOnly") #WriteOnly | @as("ReadOnly") #ReadOnly]
type operatorValue = string
type nextToken = string
type maxResults = int;
type lookupAttributeKey = [@as("AccessKeyId") #AccessKeyId | @as("EventSource") #EventSource | @as("ResourceName") #ResourceName | @as("ResourceType") #ResourceType | @as("Username") #Username | @as("ReadOnly") #ReadOnly | @as("EventName") #EventName | @as("EventId") #EventId]
type insightType = [@as("ApiCallRateInsight") #ApiCallRateInsight]
type eventCategory = [@as("insight") #insight]
type errorMessage = string
type date = Js.Date.t;
type byteBuffer = NodeJs.Buffer.t;
type amazonawsBoolean = bool;
type trailNameList = array<amazonawsString>
type trailInfo = {
@as("HomeRegion") homeRegion: amazonawsString,
@as("Name") name: amazonawsString,
@as("TrailARN") trailARN: amazonawsString
}
type trail = {
@as("IsOrganizationTrail") isOrganizationTrail: amazonawsBoolean,
@as("HasInsightSelectors") hasInsightSelectors: amazonawsBoolean,
@as("HasCustomEventSelectors") hasCustomEventSelectors: amazonawsBoolean,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("CloudWatchLogsRoleArn") cloudWatchLogsRoleArn: amazonawsString,
@as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: amazonawsString,
@as("LogFileValidationEnabled") logFileValidationEnabled: amazonawsBoolean,
@as("TrailARN") trailARN: amazonawsString,
@as("HomeRegion") homeRegion: amazonawsString,
@as("IsMultiRegionTrail") isMultiRegionTrail: amazonawsBoolean,
@as("IncludeGlobalServiceEvents") includeGlobalServiceEvents: amazonawsBoolean,
@as("SnsTopicARN") snsTopicARN: amazonawsString,
@as("SnsTopicName") snsTopicName: amazonawsString,
@as("S3KeyPrefix") s3KeyPrefix: amazonawsString,
@as("S3BucketName") s3BucketName: amazonawsString,
@as("Name") name: amazonawsString
}
type tag = {
@as("Value") value: amazonawsString,
@as("Key") key: option<amazonawsString>
}
type resourceIdList = array<amazonawsString>
type resource = {
@as("ResourceName") resourceName: amazonawsString,
@as("ResourceType") resourceType: amazonawsString
}
type publicKey = {
@as("Fingerprint") fingerprint: amazonawsString,
@as("ValidityEndTime") validityEndTime: date,
@as("ValidityStartTime") validityStartTime: date,
@as("Value") value: byteBuffer
}
type operator = array<operatorValue>
type lookupAttribute = {
@as("AttributeValue") attributeValue: option<amazonawsString>,
@as("AttributeKey") attributeKey: option<lookupAttributeKey>
}
type insightSelector = {
@as("InsightType") insightType: insightType
}
type excludeManagementEventSources = array<amazonawsString>
type dataResourceValues = array<amazonawsString>
type trails = array<trailInfo>
type trailList = array<trail>
type tagsList = array<tag>
type resourceList = array<resource>
type publicKeyList = array<publicKey>
type lookupAttributesList = array<lookupAttribute>
type insightSelectors = array<insightSelector>
type dataResource = {
@as("Values") values: dataResourceValues,
@as("Type") type_: amazonawsString
}
type advancedFieldSelector = {
@as("NotEndsWith") notEndsWith: operator,
@as("NotStartsWith") notStartsWith: operator,
@as("NotEquals") notEquals: operator,
@as("EndsWith") endsWith: operator,
@as("StartsWith") startsWith: operator,
@as("Equals") equals: operator,
@as("Field") field: option<selectorField>
}
type resourceTag = {
@as("TagsList") tagsList: tagsList,
@as("ResourceId") resourceId: amazonawsString
}
type event = {
@as("CloudTrailEvent") cloudTrailEvent: amazonawsString,
@as("Resources") resources: resourceList,
@as("Username") username: amazonawsString,
@as("EventSource") eventSource: amazonawsString,
@as("EventTime") eventTime: date,
@as("AccessKeyId") accessKeyId: amazonawsString,
@as("ReadOnly") readOnly: amazonawsString,
@as("EventName") eventName: amazonawsString,
@as("EventId") eventId: amazonawsString
}
type dataResources = array<dataResource>
type advancedFieldSelectors = array<advancedFieldSelector>
type resourceTagList = array<resourceTag>
type eventsList = array<event>
type eventSelector = {
@as("ExcludeManagementEventSources") excludeManagementEventSources: excludeManagementEventSources,
@as("DataResources") dataResources: dataResources,
@as("IncludeManagementEvents") includeManagementEvents: amazonawsBoolean,
@as("ReadWriteType") readWriteType: readWriteType
}
type advancedEventSelector = {
@as("FieldSelectors") fieldSelectors: option<advancedFieldSelectors>,
@as("Name") name: selectorName
}
type eventSelectors = array<eventSelector>
type advancedEventSelectors = array<advancedEventSelector>
type clientType;
@module("@aws-sdk/client-cloudtrail") @new external createClient: unit => clientType = "CloudTrailClient";
module UpdateTrail = {
  type t;
  type request = {
@as("IsOrganizationTrail") isOrganizationTrail: amazonawsBoolean,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("CloudWatchLogsRoleArn") cloudWatchLogsRoleArn: amazonawsString,
@as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: amazonawsString,
@as("EnableLogFileValidation") enableLogFileValidation: amazonawsBoolean,
@as("IsMultiRegionTrail") isMultiRegionTrail: amazonawsBoolean,
@as("IncludeGlobalServiceEvents") includeGlobalServiceEvents: amazonawsBoolean,
@as("SnsTopicName") snsTopicName: amazonawsString,
@as("S3KeyPrefix") s3KeyPrefix: amazonawsString,
@as("S3BucketName") s3BucketName: amazonawsString,
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("IsOrganizationTrail") isOrganizationTrail: amazonawsBoolean,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("CloudWatchLogsRoleArn") cloudWatchLogsRoleArn: amazonawsString,
@as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: amazonawsString,
@as("LogFileValidationEnabled") logFileValidationEnabled: amazonawsBoolean,
@as("TrailARN") trailARN: amazonawsString,
@as("IsMultiRegionTrail") isMultiRegionTrail: amazonawsBoolean,
@as("IncludeGlobalServiceEvents") includeGlobalServiceEvents: amazonawsBoolean,
@as("SnsTopicARN") snsTopicARN: amazonawsString,
@as("SnsTopicName") snsTopicName: amazonawsString,
@as("S3KeyPrefix") s3KeyPrefix: amazonawsString,
@as("S3BucketName") s3BucketName: amazonawsString,
@as("Name") name: amazonawsString
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "UpdateTrailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopLogging = {
  type t;
  type request = {
@as("Name") name: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "StopLoggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartLogging = {
  type t;
  type request = {
@as("Name") name: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "StartLoggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTrailStatus = {
  type t;
  type request = {
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("TimeLoggingStopped") timeLoggingStopped: amazonawsString,
@as("TimeLoggingStarted") timeLoggingStarted: amazonawsString,
@as("LatestDeliveryAttemptSucceeded") latestDeliveryAttemptSucceeded: amazonawsString,
@as("LatestNotificationAttemptSucceeded") latestNotificationAttemptSucceeded: amazonawsString,
@as("LatestNotificationAttemptTime") latestNotificationAttemptTime: amazonawsString,
@as("LatestDeliveryAttemptTime") latestDeliveryAttemptTime: amazonawsString,
@as("LatestDigestDeliveryError") latestDigestDeliveryError: amazonawsString,
@as("LatestDigestDeliveryTime") latestDigestDeliveryTime: date,
@as("LatestCloudWatchLogsDeliveryTime") latestCloudWatchLogsDeliveryTime: date,
@as("LatestCloudWatchLogsDeliveryError") latestCloudWatchLogsDeliveryError: amazonawsString,
@as("StopLoggingTime") stopLoggingTime: date,
@as("StartLoggingTime") startLoggingTime: date,
@as("LatestNotificationTime") latestNotificationTime: date,
@as("LatestDeliveryTime") latestDeliveryTime: date,
@as("LatestNotificationError") latestNotificationError: amazonawsString,
@as("LatestDeliveryError") latestDeliveryError: amazonawsString,
@as("IsLogging") isLogging: amazonawsBoolean
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "GetTrailStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTrail = {
  type t;
  type request = {
@as("Name") name: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "DeleteTrailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTrail = {
  type t;
  type request = {
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("Trail") trail: trail
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "GetTrailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTags = {
  type t;
  type request = {
@as("TagsList") tagsList: tagsList,
@as("ResourceId") resourceId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "RemoveTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutInsightSelectors = {
  type t;
  type request = {
@as("InsightSelectors") insightSelectors: option<insightSelectors>,
@as("TrailName") trailName: option<amazonawsString>
}
  type response = {
@as("InsightSelectors") insightSelectors: insightSelectors,
@as("TrailARN") trailARN: amazonawsString
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "PutInsightSelectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTrails = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Trails") trails: trails
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "ListTrailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPublicKeys = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("EndTime") endTime: date,
@as("StartTime") startTime: date
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("PublicKeyList") publicKeyList: publicKeyList
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "ListPublicKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInsightSelectors = {
  type t;
  type request = {
@as("TrailName") trailName: option<amazonawsString>
}
  type response = {
@as("InsightSelectors") insightSelectors: insightSelectors,
@as("TrailARN") trailARN: amazonawsString
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "GetInsightSelectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTrails = {
  type t;
  type request = {
@as("includeShadowTrails") includeShadowTrails: amazonawsBoolean,
@as("trailNameList") trailNameList: trailNameList
}
  type response = {
@as("trailList") trailList: trailList
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "DescribeTrailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTrail = {
  type t;
  type request = {
@as("TagsList") tagsList: tagsList,
@as("IsOrganizationTrail") isOrganizationTrail: amazonawsBoolean,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("CloudWatchLogsRoleArn") cloudWatchLogsRoleArn: amazonawsString,
@as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: amazonawsString,
@as("EnableLogFileValidation") enableLogFileValidation: amazonawsBoolean,
@as("IsMultiRegionTrail") isMultiRegionTrail: amazonawsBoolean,
@as("IncludeGlobalServiceEvents") includeGlobalServiceEvents: amazonawsBoolean,
@as("SnsTopicName") snsTopicName: amazonawsString,
@as("S3KeyPrefix") s3KeyPrefix: amazonawsString,
@as("S3BucketName") s3BucketName: option<amazonawsString>,
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("IsOrganizationTrail") isOrganizationTrail: amazonawsBoolean,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("CloudWatchLogsRoleArn") cloudWatchLogsRoleArn: amazonawsString,
@as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: amazonawsString,
@as("LogFileValidationEnabled") logFileValidationEnabled: amazonawsBoolean,
@as("TrailARN") trailARN: amazonawsString,
@as("IsMultiRegionTrail") isMultiRegionTrail: amazonawsBoolean,
@as("IncludeGlobalServiceEvents") includeGlobalServiceEvents: amazonawsBoolean,
@as("SnsTopicARN") snsTopicARN: amazonawsString,
@as("SnsTopicName") snsTopicName: amazonawsString,
@as("S3KeyPrefix") s3KeyPrefix: amazonawsString,
@as("S3BucketName") s3BucketName: amazonawsString,
@as("Name") name: amazonawsString
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "CreateTrailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTags = {
  type t;
  type request = {
@as("TagsList") tagsList: tagsList,
@as("ResourceId") resourceId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "AddTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module LookupEvents = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("EventCategory") eventCategory: eventCategory,
@as("EndTime") endTime: date,
@as("StartTime") startTime: date,
@as("LookupAttributes") lookupAttributes: lookupAttributesList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Events") events: eventsList
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "LookupEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("ResourceIdList") resourceIdList: option<resourceIdList>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ResourceTagList") resourceTagList: resourceTagList
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "ListTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutEventSelectors = {
  type t;
  type request = {
@as("AdvancedEventSelectors") advancedEventSelectors: advancedEventSelectors,
@as("EventSelectors") eventSelectors: eventSelectors,
@as("TrailName") trailName: option<amazonawsString>
}
  type response = {
@as("AdvancedEventSelectors") advancedEventSelectors: advancedEventSelectors,
@as("EventSelectors") eventSelectors: eventSelectors,
@as("TrailARN") trailARN: amazonawsString
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "PutEventSelectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEventSelectors = {
  type t;
  type request = {
@as("TrailName") trailName: option<amazonawsString>
}
  type response = {
@as("AdvancedEventSelectors") advancedEventSelectors: advancedEventSelectors,
@as("EventSelectors") eventSelectors: eventSelectors,
@as("TrailARN") trailARN: amazonawsString
}
  @module("@aws-sdk/client-cloudtrail") @new external new_: (Js.Promise.t<request>) => t = "GetEventSelectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
