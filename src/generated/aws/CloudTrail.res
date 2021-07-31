type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cloudtrail") @new
external createClient: unit => awsServiceClient = "CloudTrailClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type string_ = string
type selectorName = string
type selectorField = string
type readWriteType = [@as("All") #All | @as("WriteOnly") #WriteOnly | @as("ReadOnly") #ReadOnly]
type operatorValue = string
type nextToken = string
type maxResults = int
type lookupAttributeKey = [
  | @as("AccessKeyId") #AccessKeyId
  | @as("EventSource") #EventSource
  | @as("ResourceName") #ResourceName
  | @as("ResourceType") #ResourceType
  | @as("Username") #Username
  | @as("ReadOnly") #ReadOnly
  | @as("EventName") #EventName
  | @as("EventId") #EventId
]
type insightType = [@as("ApiCallRateInsight") #ApiCallRateInsight]
type eventCategory = [@as("insight") #Insight]
type errorMessage = string
type date = Js.Date.t
type byteBuffer = NodeJs.Buffer.t
type boolean_ = bool
type trailNameList = array<string_>
type trailInfo = {
  @as("HomeRegion") homeRegion: option<string_>,
  @as("Name") name: option<string_>,
  @as("TrailARN") trailARN: option<string_>,
}
type trail = {
  @as("IsOrganizationTrail") isOrganizationTrail: option<boolean_>,
  @as("HasInsightSelectors") hasInsightSelectors: option<boolean_>,
  @as("HasCustomEventSelectors") hasCustomEventSelectors: option<boolean_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("CloudWatchLogsRoleArn") cloudWatchLogsRoleArn: option<string_>,
  @as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: option<string_>,
  @as("LogFileValidationEnabled") logFileValidationEnabled: option<boolean_>,
  @as("TrailARN") trailARN: option<string_>,
  @as("HomeRegion") homeRegion: option<string_>,
  @as("IsMultiRegionTrail") isMultiRegionTrail: option<boolean_>,
  @as("IncludeGlobalServiceEvents") includeGlobalServiceEvents: option<boolean_>,
  @as("SnsTopicARN") snsTopicARN: option<string_>,
  @as("SnsTopicName") snsTopicName: option<string_>,
  @as("S3KeyPrefix") s3KeyPrefix: option<string_>,
  @as("S3BucketName") s3BucketName: option<string_>,
  @as("Name") name: option<string_>,
}
type tag = {
  @as("Value") value: option<string_>,
  @as("Key") key: string_,
}
type resourceIdList = array<string_>
type resource = {
  @as("ResourceName") resourceName: option<string_>,
  @as("ResourceType") resourceType: option<string_>,
}
type publicKey = {
  @as("Fingerprint") fingerprint: option<string_>,
  @as("ValidityEndTime") validityEndTime: option<date>,
  @as("ValidityStartTime") validityStartTime: option<date>,
  @as("Value") value: option<byteBuffer>,
}
type operator = array<operatorValue>
type lookupAttribute = {
  @as("AttributeValue") attributeValue: string_,
  @as("AttributeKey") attributeKey: lookupAttributeKey,
}
type insightSelector = {@as("InsightType") insightType: option<insightType>}
type excludeManagementEventSources = array<string_>
type dataResourceValues = array<string_>
type trails = array<trailInfo>
type trailList = array<trail>
type tagsList = array<tag>
type resourceList = array<resource>
type publicKeyList = array<publicKey>
type lookupAttributesList = array<lookupAttribute>
type insightSelectors = array<insightSelector>
type dataResource = {
  @as("Values") values: option<dataResourceValues>,
  @as("Type") type_: option<string_>,
}
type advancedFieldSelector = {
  @as("NotEndsWith") notEndsWith: option<operator>,
  @as("NotStartsWith") notStartsWith: option<operator>,
  @as("NotEquals") notEquals: option<operator>,
  @as("EndsWith") endsWith: option<operator>,
  @as("StartsWith") startsWith: option<operator>,
  @as("Equals") equals: option<operator>,
  @as("Field") field: selectorField,
}
type resourceTag = {
  @as("TagsList") tagsList: option<tagsList>,
  @as("ResourceId") resourceId: option<string_>,
}
type event = {
  @as("CloudTrailEvent") cloudTrailEvent: option<string_>,
  @as("Resources") resources: option<resourceList>,
  @as("Username") username: option<string_>,
  @as("EventSource") eventSource: option<string_>,
  @as("EventTime") eventTime: option<date>,
  @as("AccessKeyId") accessKeyId: option<string_>,
  @as("ReadOnly") readOnly: option<string_>,
  @as("EventName") eventName: option<string_>,
  @as("EventId") eventId: option<string_>,
}
type dataResources = array<dataResource>
type advancedFieldSelectors = array<advancedFieldSelector>
type resourceTagList = array<resourceTag>
type eventsList = array<event>
type eventSelector = {
  @as("ExcludeManagementEventSources")
  excludeManagementEventSources: option<excludeManagementEventSources>,
  @as("DataResources") dataResources: option<dataResources>,
  @as("IncludeManagementEvents") includeManagementEvents: option<boolean_>,
  @as("ReadWriteType") readWriteType: option<readWriteType>,
}
type advancedEventSelector = {
  @as("FieldSelectors") fieldSelectors: advancedFieldSelectors,
  @as("Name") name: option<selectorName>,
}
type eventSelectors = array<eventSelector>
type advancedEventSelectors = array<advancedEventSelector>

module UpdateTrail = {
  type t
  type request = {
    @as("IsOrganizationTrail") isOrganizationTrail: option<boolean_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("CloudWatchLogsRoleArn") cloudWatchLogsRoleArn: option<string_>,
    @as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: option<string_>,
    @as("EnableLogFileValidation") enableLogFileValidation: option<boolean_>,
    @as("IsMultiRegionTrail") isMultiRegionTrail: option<boolean_>,
    @as("IncludeGlobalServiceEvents") includeGlobalServiceEvents: option<boolean_>,
    @as("SnsTopicName") snsTopicName: option<string_>,
    @as("S3KeyPrefix") s3KeyPrefix: option<string_>,
    @as("S3BucketName") s3BucketName: option<string_>,
    @as("Name") name: string_,
  }
  type response = {
    @as("IsOrganizationTrail") isOrganizationTrail: option<boolean_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("CloudWatchLogsRoleArn") cloudWatchLogsRoleArn: option<string_>,
    @as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: option<string_>,
    @as("LogFileValidationEnabled") logFileValidationEnabled: option<boolean_>,
    @as("TrailARN") trailARN: option<string_>,
    @as("IsMultiRegionTrail") isMultiRegionTrail: option<boolean_>,
    @as("IncludeGlobalServiceEvents") includeGlobalServiceEvents: option<boolean_>,
    @as("SnsTopicARN") snsTopicARN: option<string_>,
    @as("SnsTopicName") snsTopicName: option<string_>,
    @as("S3KeyPrefix") s3KeyPrefix: option<string_>,
    @as("S3BucketName") s3BucketName: option<string_>,
    @as("Name") name: option<string_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "UpdateTrailCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopLogging = {
  type t
  type request = {@as("Name") name: string_}
  type response = unit
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "StopLoggingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartLogging = {
  type t
  type request = {@as("Name") name: string_}
  type response = unit
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "StartLoggingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTrailStatus = {
  type t
  type request = {@as("Name") name: string_}
  type response = {
    @as("TimeLoggingStopped") timeLoggingStopped: option<string_>,
    @as("TimeLoggingStarted") timeLoggingStarted: option<string_>,
    @as("LatestDeliveryAttemptSucceeded") latestDeliveryAttemptSucceeded: option<string_>,
    @as("LatestNotificationAttemptSucceeded") latestNotificationAttemptSucceeded: option<string_>,
    @as("LatestNotificationAttemptTime") latestNotificationAttemptTime: option<string_>,
    @as("LatestDeliveryAttemptTime") latestDeliveryAttemptTime: option<string_>,
    @as("LatestDigestDeliveryError") latestDigestDeliveryError: option<string_>,
    @as("LatestDigestDeliveryTime") latestDigestDeliveryTime: option<date>,
    @as("LatestCloudWatchLogsDeliveryTime") latestCloudWatchLogsDeliveryTime: option<date>,
    @as("LatestCloudWatchLogsDeliveryError") latestCloudWatchLogsDeliveryError: option<string_>,
    @as("StopLoggingTime") stopLoggingTime: option<date>,
    @as("StartLoggingTime") startLoggingTime: option<date>,
    @as("LatestNotificationTime") latestNotificationTime: option<date>,
    @as("LatestDeliveryTime") latestDeliveryTime: option<date>,
    @as("LatestNotificationError") latestNotificationError: option<string_>,
    @as("LatestDeliveryError") latestDeliveryError: option<string_>,
    @as("IsLogging") isLogging: option<boolean_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "GetTrailStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTrail = {
  type t
  type request = {@as("Name") name: string_}
  type response = unit
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "DeleteTrailCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTrail = {
  type t
  type request = {@as("Name") name: string_}
  type response = {@as("Trail") trail: option<trail>}
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "GetTrailCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTags = {
  type t
  type request = {
    @as("TagsList") tagsList: option<tagsList>,
    @as("ResourceId") resourceId: string_,
  }
  type response = unit
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "RemoveTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutInsightSelectors = {
  type t
  type request = {
    @as("InsightSelectors") insightSelectors: insightSelectors,
    @as("TrailName") trailName: string_,
  }
  type response = {
    @as("InsightSelectors") insightSelectors: option<insightSelectors>,
    @as("TrailARN") trailARN: option<string_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new
  external new_: request => t = "PutInsightSelectorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTrails = {
  type t
  type request = {@as("NextToken") nextToken: option<string_>}
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Trails") trails: option<trails>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "ListTrailsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPublicKeys = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("EndTime") endTime: option<date>,
    @as("StartTime") startTime: option<date>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("PublicKeyList") publicKeyList: option<publicKeyList>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "ListPublicKeysCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInsightSelectors = {
  type t
  type request = {@as("TrailName") trailName: string_}
  type response = {
    @as("InsightSelectors") insightSelectors: option<insightSelectors>,
    @as("TrailARN") trailARN: option<string_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new
  external new_: request => t = "GetInsightSelectorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrails = {
  type t
  type request = {
    includeShadowTrails: option<boolean_>,
    trailNameList: option<trailNameList>,
  }
  type response = {trailList: option<trailList>}
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "DescribeTrailsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTrail = {
  type t
  type request = {
    @as("TagsList") tagsList: option<tagsList>,
    @as("IsOrganizationTrail") isOrganizationTrail: option<boolean_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("CloudWatchLogsRoleArn") cloudWatchLogsRoleArn: option<string_>,
    @as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: option<string_>,
    @as("EnableLogFileValidation") enableLogFileValidation: option<boolean_>,
    @as("IsMultiRegionTrail") isMultiRegionTrail: option<boolean_>,
    @as("IncludeGlobalServiceEvents") includeGlobalServiceEvents: option<boolean_>,
    @as("SnsTopicName") snsTopicName: option<string_>,
    @as("S3KeyPrefix") s3KeyPrefix: option<string_>,
    @as("S3BucketName") s3BucketName: string_,
    @as("Name") name: string_,
  }
  type response = {
    @as("IsOrganizationTrail") isOrganizationTrail: option<boolean_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("CloudWatchLogsRoleArn") cloudWatchLogsRoleArn: option<string_>,
    @as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: option<string_>,
    @as("LogFileValidationEnabled") logFileValidationEnabled: option<boolean_>,
    @as("TrailARN") trailARN: option<string_>,
    @as("IsMultiRegionTrail") isMultiRegionTrail: option<boolean_>,
    @as("IncludeGlobalServiceEvents") includeGlobalServiceEvents: option<boolean_>,
    @as("SnsTopicARN") snsTopicARN: option<string_>,
    @as("SnsTopicName") snsTopicName: option<string_>,
    @as("S3KeyPrefix") s3KeyPrefix: option<string_>,
    @as("S3BucketName") s3BucketName: option<string_>,
    @as("Name") name: option<string_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "CreateTrailCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTags = {
  type t
  type request = {
    @as("TagsList") tagsList: option<tagsList>,
    @as("ResourceId") resourceId: string_,
  }
  type response = unit
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "AddTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module LookupEvents = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("EventCategory") eventCategory: option<eventCategory>,
    @as("EndTime") endTime: option<date>,
    @as("StartTime") startTime: option<date>,
    @as("LookupAttributes") lookupAttributes: option<lookupAttributesList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Events") events: option<eventsList>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "LookupEventsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTags = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("ResourceIdList") resourceIdList: resourceIdList,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ResourceTagList") resourceTagList: option<resourceTagList>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new_: request => t = "ListTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutEventSelectors = {
  type t
  type request = {
    @as("AdvancedEventSelectors") advancedEventSelectors: option<advancedEventSelectors>,
    @as("EventSelectors") eventSelectors: option<eventSelectors>,
    @as("TrailName") trailName: string_,
  }
  type response = {
    @as("AdvancedEventSelectors") advancedEventSelectors: option<advancedEventSelectors>,
    @as("EventSelectors") eventSelectors: option<eventSelectors>,
    @as("TrailARN") trailARN: option<string_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new
  external new_: request => t = "PutEventSelectorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventSelectors = {
  type t
  type request = {@as("TrailName") trailName: string_}
  type response = {
    @as("AdvancedEventSelectors") advancedEventSelectors: option<advancedEventSelectors>,
    @as("EventSelectors") eventSelectors: option<eventSelectors>,
    @as("TrailARN") trailARN: option<string_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new
  external new_: request => t = "GetEventSelectorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
