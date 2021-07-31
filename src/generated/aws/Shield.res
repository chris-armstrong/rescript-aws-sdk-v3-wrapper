type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-shield") @new
external createClient: unit => awsServiceClient = "ShieldClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type errorMessage = string
type validationExceptionReason = [
  | @as("OTHER") #OTHER
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
]
type unit_ = [
  | @as("REQUESTS") #REQUESTS
  | @as("PACKETS") #PACKETS
  | @as("BYTES") #BYTES
  | @as("BITS") #BITS
]
type token = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type subscriptionState = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type subResourceType = [@as("URL") #URL | @as("IP") #IP]
type string_ = string
type roleArn = string
type resourceArn = string
type protectionName = string
type protectionId = string
type protectionGroupPattern = [
  | @as("BY_RESOURCE_TYPE") #BY_RESOURCE_TYPE
  | @as("ARBITRARY") #ARBITRARY
  | @as("ALL") #ALL
]
type protectionGroupId = string
type protectionGroupAggregation = [@as("MAX") #MAX | @as("MEAN") #MEAN | @as("SUM") #SUM]
type protectedResourceType = [
  | @as("GLOBAL_ACCELERATOR") #GLOBAL_ACCELERATOR
  | @as("APPLICATION_LOAD_BALANCER") #APPLICATION_LOAD_BALANCER
  | @as("CLASSIC_LOAD_BALANCER") #CLASSIC_LOAD_BALANCER
  | @as("ELASTIC_IP_ALLOCATION") #ELASTIC_IP_ALLOCATION
  | @as("ROUTE_53_HOSTED_ZONE") #ROUTE_53_HOSTED_ZONE
  | @as("CLOUDFRONT_DISTRIBUTION") #CLOUDFRONT_DISTRIBUTION
]
type proactiveEngagementStatus = [
  | @as("PENDING") #PENDING
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
]
type phoneNumber = string
type maxResults = int
type long = float
type logBucket = string
type limitType = string
type limitNumber = float
type integer_ = int
type healthCheckId = string
type healthCheckArn = string
type emailAddress = string
type durationInSeconds = float
type double = float
type contactNotes = string
type autoRenew = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type attackTimestamp = Js.Date.t
type attackPropertyIdentifier = [
  | @as("WORDPRESS_PINGBACK_SOURCE") #WORDPRESS_PINGBACK_SOURCE
  | @as("WORDPRESS_PINGBACK_REFLECTOR") #WORDPRESS_PINGBACK_REFLECTOR
  | @as("SOURCE_USER_AGENT") #SOURCE_USER_AGENT
  | @as("SOURCE_IP_ADDRESS") #SOURCE_IP_ADDRESS
  | @as("SOURCE_COUNTRY") #SOURCE_COUNTRY
  | @as("SOURCE_ASN") #SOURCE_ASN
  | @as("REFERRER") #REFERRER
  | @as("DESTINATION_URL") #DESTINATION_URL
]
type attackLayer = [@as("APPLICATION") #APPLICATION | @as("NETWORK") #NETWORK]
type attackId = string
type validationExceptionField = {
  message: string_,
  name: string_,
}
type timeRange = {
  @as("ToExclusive") toExclusive: option<attackTimestamp>,
  @as("FromInclusive") fromInclusive: option<attackTimestamp>,
}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: option<tagValue>,
  @as("Key") key: option<tagKey>,
}
type summarizedCounter = {
  @as("Unit") unit_: option<string_>,
  @as("N") n: option<integer_>,
  @as("Sum") sum: option<double>,
  @as("Average") average: option<double>,
  @as("Max") max: option<double>,
  @as("Name") name: option<string_>,
}
type resourceArnList = array<resourceArn>
type resourceArnFilterList = array<resourceArn>
type protectionGroupMembers = array<resourceArn>
type protectionGroupArbitraryPatternLimits = {@as("MaxMembers") maxMembers: long}
type mitigation = {@as("MitigationName") mitigationName: option<string_>}
type logBucketList = array<logBucket>
type limit = {
  @as("Max") max: option<long>,
  @as("Type") type_: option<string_>,
}
type healthCheckIds = array<healthCheckId>
type emergencyContact = {
  @as("ContactNotes") contactNotes: option<contactNotes>,
  @as("PhoneNumber") phoneNumber: option<phoneNumber>,
  @as("EmailAddress") emailAddress: emailAddress,
}
type contributor = {
  @as("Value") value: option<long>,
  @as("Name") name: option<string_>,
}
type attackVolumeStatistics = {@as("Max") max: double}
type attackVectorDescription = {@as("VectorType") vectorType: string_}
type validationExceptionFieldList = array<validationExceptionField>
type topContributors = array<contributor>
type tagList_ = array<tag>
type summarizedCounterList = array<summarizedCounter>
type protectionGroupPatternTypeLimits = {
  @as("ArbitraryPatternLimits") arbitraryPatternLimits: protectionGroupArbitraryPatternLimits,
}
type protectionGroup = {
  @as("ProtectionGroupArn") protectionGroupArn: option<resourceArn>,
  @as("Members") members: protectionGroupMembers,
  @as("ResourceType") resourceType: option<protectedResourceType>,
  @as("Pattern") pattern: protectionGroupPattern,
  @as("Aggregation") aggregation: protectionGroupAggregation,
  @as("ProtectionGroupId") protectionGroupId: protectionGroupId,
}
type protection = {
  @as("ProtectionArn") protectionArn: option<resourceArn>,
  @as("HealthCheckIds") healthCheckIds: option<healthCheckIds>,
  @as("ResourceArn") resourceArn: option<resourceArn>,
  @as("Name") name: option<protectionName>,
  @as("Id") id: option<protectionId>,
}
type mitigationList = array<mitigation>
type limits = array<limit>
type emergencyContactList = array<emergencyContact>
type attackVolume = {
  @as("RequestsPerSecond") requestsPerSecond: option<attackVolumeStatistics>,
  @as("PacketsPerSecond") packetsPerSecond: option<attackVolumeStatistics>,
  @as("BitsPerSecond") bitsPerSecond: option<attackVolumeStatistics>,
}
type attackVectorDescriptionList = array<attackVectorDescription>
type summarizedAttackVector = {
  @as("VectorCounters") vectorCounters: option<summarizedCounterList>,
  @as("VectorType") vectorType: string_,
}
type protections = array<protection>
type protectionLimits = {@as("ProtectedResourceTypeLimits") protectedResourceTypeLimits: limits}
type protectionGroups = array<protectionGroup>
type protectionGroupLimits = {
  @as("PatternTypeLimits") patternTypeLimits: protectionGroupPatternTypeLimits,
  @as("MaxProtectionGroups") maxProtectionGroups: long,
}
type attackSummary = {
  @as("AttackVectors") attackVectors: option<attackVectorDescriptionList>,
  @as("EndTime") endTime: option<attackTimestamp>,
  @as("StartTime") startTime: option<attackTimestamp>,
  @as("ResourceArn") resourceArn: option<string_>,
  @as("AttackId") attackId: option<string_>,
}
type attackStatisticsDataItem = {
  @as("AttackCount") attackCount: long,
  @as("AttackVolume") attackVolume: option<attackVolume>,
}
type attackProperty = {
  @as("Total") total: option<long>,
  @as("Unit") unit_: option<unit_>,
  @as("TopContributors") topContributors: option<topContributors>,
  @as("AttackPropertyIdentifier") attackPropertyIdentifier: option<attackPropertyIdentifier>,
  @as("AttackLayer") attackLayer: option<attackLayer>,
}
type summarizedAttackVectorList = array<summarizedAttackVector>
type subscriptionLimits = {
  @as("ProtectionGroupLimits") protectionGroupLimits: protectionGroupLimits,
  @as("ProtectionLimits") protectionLimits: protectionLimits,
}
type attackSummaries = array<attackSummary>
type attackStatisticsDataList = array<attackStatisticsDataItem>
type attackProperties = array<attackProperty>
type subscription = {
  @as("SubscriptionArn") subscriptionArn: option<resourceArn>,
  @as("SubscriptionLimits") subscriptionLimits: subscriptionLimits,
  @as("ProactiveEngagementStatus") proactiveEngagementStatus: option<proactiveEngagementStatus>,
  @as("Limits") limits: option<limits>,
  @as("AutoRenew") autoRenew: option<autoRenew>,
  @as("TimeCommitmentInSeconds") timeCommitmentInSeconds: option<durationInSeconds>,
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: option<timestamp_>,
}
type subResourceSummary = {
  @as("Counters") counters: option<summarizedCounterList>,
  @as("AttackVectors") attackVectors: option<summarizedAttackVectorList>,
  @as("Id") id: option<string_>,
  @as("Type") type_: option<subResourceType>,
}
type subResourceSummaryList = array<subResourceSummary>
type attackDetail = {
  @as("Mitigations") mitigations: option<mitigationList>,
  @as("AttackProperties") attackProperties: option<attackProperties>,
  @as("AttackCounters") attackCounters: option<summarizedCounterList>,
  @as("EndTime") endTime: option<attackTimestamp>,
  @as("StartTime") startTime: option<attackTimestamp>,
  @as("SubResources") subResources: option<subResourceSummaryList>,
  @as("ResourceArn") resourceArn: option<resourceArn>,
  @as("AttackId") attackId: option<attackId>,
}

module GetSubscriptionState = {
  type t
  type request = unit
  type response = {@as("SubscriptionState") subscriptionState: subscriptionState}
  @module("@aws-sdk/client-shield") @new external new: request => t = "GetSubscriptionStateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateDRTRole = {
  type t
  type request = unit
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "DisassociateDRTRoleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateDRTLogBucket = {
  type t
  type request = {@as("LogBucket") logBucket: logBucket}
  type response = unit
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DisassociateDRTLogBucketCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSubscription = {
  type t
  type request = unit
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "DeleteSubscriptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProtectionGroup = {
  type t
  type request = {@as("ProtectionGroupId") protectionGroupId: protectionGroupId}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "DeleteProtectionGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProtection = {
  type t
  type request = {@as("ProtectionId") protectionId: protectionId}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "DeleteProtectionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSubscription = {
  type t
  type request = unit
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "CreateSubscriptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourcesInProtectionGroup = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<token>,
    @as("ProtectionGroupId") protectionGroupId: protectionGroupId,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("ResourceArns") resourceArns: resourceArnList,
  }
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "ListResourcesInProtectionGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDRTAccess = {
  type t
  type request = unit
  type response = {
    @as("LogBucketList") logBucketList: option<logBucketList>,
    @as("RoleArn") roleArn: option<roleArn>,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "DescribeDRTAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSubscription = {
  type t
  type request = {@as("AutoRenew") autoRenew: option<autoRenew>}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "UpdateSubscriptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProtectionGroup = {
  type t
  type request = {
    @as("Members") members: option<protectionGroupMembers>,
    @as("ResourceType") resourceType: option<protectedResourceType>,
    @as("Pattern") pattern: protectionGroupPattern,
    @as("Aggregation") aggregation: protectionGroupAggregation,
    @as("ProtectionGroupId") protectionGroupId: protectionGroupId,
  }
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "UpdateProtectionGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEmergencyContactSettings = {
  type t
  type request = {@as("EmergencyContactList") emergencyContactList: option<emergencyContactList>}
  type response = unit
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "UpdateEmergencyContactSettingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceARN") resourceARN: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceARN") resourceARN: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceARN") resourceARN: resourceArn}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-shield") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableProactiveEngagement = {
  type t
  type request = unit
  type response = unit
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "EnableProactiveEngagementCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateHealthCheck = {
  type t
  type request = {
    @as("HealthCheckArn") healthCheckArn: healthCheckArn,
    @as("ProtectionId") protectionId: protectionId,
  }
  type response = unit
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DisassociateHealthCheckCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableProactiveEngagement = {
  type t
  type request = unit
  type response = unit
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DisableProactiveEngagementCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProtectionGroup = {
  type t
  type request = {@as("ProtectionGroupId") protectionGroupId: protectionGroupId}
  type response = {@as("ProtectionGroup") protectionGroup: protectionGroup}
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DescribeProtectionGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProtection = {
  type t
  type request = {
    @as("ResourceArn") resourceArn: option<resourceArn>,
    @as("ProtectionId") protectionId: option<protectionId>,
  }
  type response = {@as("Protection") protection: option<protection>}
  @module("@aws-sdk/client-shield") @new external new: request => t = "DescribeProtectionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEmergencyContactSettings = {
  type t
  type request = unit
  type response = {@as("EmergencyContactList") emergencyContactList: option<emergencyContactList>}
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DescribeEmergencyContactSettingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProtectionGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Members") members: option<protectionGroupMembers>,
    @as("ResourceType") resourceType: option<protectedResourceType>,
    @as("Pattern") pattern: protectionGroupPattern,
    @as("Aggregation") aggregation: protectionGroupAggregation,
    @as("ProtectionGroupId") protectionGroupId: protectionGroupId,
  }
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "CreateProtectionGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProtection = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ResourceArn") resourceArn: resourceArn,
    @as("Name") name: protectionName,
  }
  type response = {@as("ProtectionId") protectionId: option<protectionId>}
  @module("@aws-sdk/client-shield") @new external new: request => t = "CreateProtectionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateProactiveEngagementDetails = {
  type t
  type request = {@as("EmergencyContactList") emergencyContactList: emergencyContactList}
  type response = unit
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "AssociateProactiveEngagementDetailsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateHealthCheck = {
  type t
  type request = {
    @as("HealthCheckArn") healthCheckArn: healthCheckArn,
    @as("ProtectionId") protectionId: protectionId,
  }
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "AssociateHealthCheckCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateDRTRole = {
  type t
  type request = {@as("RoleArn") roleArn: roleArn}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "AssociateDRTRoleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateDRTLogBucket = {
  type t
  type request = {@as("LogBucket") logBucket: logBucket}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new: request => t = "AssociateDRTLogBucketCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProtections = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Protections") protections: option<protections>,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "ListProtectionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProtectionGroups = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("ProtectionGroups") protectionGroups: protectionGroups,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "ListProtectionGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAttacks = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<token>,
    @as("EndTime") endTime: option<timeRange>,
    @as("StartTime") startTime: option<timeRange>,
    @as("ResourceArns") resourceArns: option<resourceArnFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("AttackSummaries") attackSummaries: option<attackSummaries>,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "ListAttacksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAttackStatistics = {
  type t
  type request = unit
  type response = {
    @as("DataItems") dataItems: attackStatisticsDataList,
    @as("TimeRange") timeRange: timeRange,
  }
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DescribeAttackStatisticsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSubscription = {
  type t
  type request = unit
  type response = {@as("Subscription") subscription: option<subscription>}
  @module("@aws-sdk/client-shield") @new external new: request => t = "DescribeSubscriptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAttack = {
  type t
  type request = {@as("AttackId") attackId: attackId}
  type response = {@as("Attack") attack: option<attackDetail>}
  @module("@aws-sdk/client-shield") @new external new: request => t = "DescribeAttackCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
