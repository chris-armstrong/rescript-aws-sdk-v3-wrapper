type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type errorMessage = string
type validationExceptionReason = [@as("OTHER") #OTHER | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED]
type unit_ = [@as("REQUESTS") #REQUESTS | @as("PACKETS") #PACKETS | @as("BYTES") #BYTES | @as("BITS") #BITS]
type token = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type subscriptionState = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type subResourceType = [@as("URL") #URL | @as("IP") #IP]
type amazonawsString = string
type roleArn = string
type resourceArn = string
type protectionName = string
type protectionId = string
type protectionGroupPattern = [@as("BY_RESOURCE_TYPE") #BY_RESOURCE_TYPE | @as("ARBITRARY") #ARBITRARY | @as("ALL") #ALL]
type protectionGroupId = string
type protectionGroupAggregation = [@as("MAX") #MAX | @as("MEAN") #MEAN | @as("SUM") #SUM]
type protectedResourceType = [@as("GLOBAL_ACCELERATOR") #GLOBAL_ACCELERATOR | @as("APPLICATION_LOAD_BALANCER") #APPLICATION_LOAD_BALANCER | @as("CLASSIC_LOAD_BALANCER") #CLASSIC_LOAD_BALANCER | @as("ELASTIC_IP_ALLOCATION") #ELASTIC_IP_ALLOCATION | @as("ROUTE_53_HOSTED_ZONE") #ROUTE_53_HOSTED_ZONE | @as("CLOUDFRONT_DISTRIBUTION") #CLOUDFRONT_DISTRIBUTION]
type proactiveEngagementStatus = [@as("PENDING") #PENDING | @as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type phoneNumber = string
type maxResults = int;
type amazonawsLong = float;
type logBucket = string
type limitType = string
type limitNumber = float;
type amazonawsInteger = int;
type healthCheckId = string
type healthCheckArn = string
type emailAddress = string
type durationInSeconds = float;
type amazonawsDouble = float;
type contactNotes = string
type autoRenew = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type attackTimestamp = Js.Date.t;
type attackPropertyIdentifier = [@as("WORDPRESS_PINGBACK_SOURCE") #WORDPRESS_PINGBACK_SOURCE | @as("WORDPRESS_PINGBACK_REFLECTOR") #WORDPRESS_PINGBACK_REFLECTOR | @as("SOURCE_USER_AGENT") #SOURCE_USER_AGENT | @as("SOURCE_IP_ADDRESS") #SOURCE_IP_ADDRESS | @as("SOURCE_COUNTRY") #SOURCE_COUNTRY | @as("SOURCE_ASN") #SOURCE_ASN | @as("REFERRER") #REFERRER | @as("DESTINATION_URL") #DESTINATION_URL]
type attackLayer = [@as("APPLICATION") #APPLICATION | @as("NETWORK") #NETWORK]
type attackId = string
type validationExceptionField = {
@as("message") message: option<amazonawsString>,
@as("name") name: option<amazonawsString>
}
type timeRange = {
@as("ToExclusive") toExclusive: attackTimestamp,
@as("FromInclusive") fromInclusive: attackTimestamp
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type summarizedCounter = {
@as("Unit") unit: amazonawsString,
@as("N") n: amazonawsInteger,
@as("Sum") sum: amazonawsDouble,
@as("Average") average: amazonawsDouble,
@as("Max") max: amazonawsDouble,
@as("Name") name: amazonawsString
}
type resourceArnList = array<resourceArn>
type resourceArnFilterList = array<resourceArn>
type protectionGroupMembers = array<resourceArn>
type protectionGroupArbitraryPatternLimits = {
@as("MaxMembers") maxMembers: option<amazonawsLong>
}
type mitigation = {
@as("MitigationName") mitigationName: amazonawsString
}
type logBucketList = array<logBucket>
type limit = {
@as("Max") max: amazonawsLong,
@as("Type") type_: amazonawsString
}
type healthCheckIds = array<healthCheckId>
type emergencyContact = {
@as("ContactNotes") contactNotes: contactNotes,
@as("PhoneNumber") phoneNumber: phoneNumber,
@as("EmailAddress") emailAddress: option<emailAddress>
}
type contributor = {
@as("Value") value: amazonawsLong,
@as("Name") name: amazonawsString
}
type attackVolumeStatistics = {
@as("Max") max: option<amazonawsDouble>
}
type attackVectorDescription = {
@as("VectorType") vectorType: option<amazonawsString>
}
type validationExceptionFieldList = array<validationExceptionField>
type topContributors = array<contributor>
type tagList = array<tag>
type summarizedCounterList = array<summarizedCounter>
type protectionGroupPatternTypeLimits = {
@as("ArbitraryPatternLimits") arbitraryPatternLimits: option<protectionGroupArbitraryPatternLimits>
}
type protectionGroup = {
@as("ProtectionGroupArn") protectionGroupArn: resourceArn,
@as("Members") members: option<protectionGroupMembers>,
@as("ResourceType") resourceType: protectedResourceType,
@as("Pattern") pattern: option<protectionGroupPattern>,
@as("Aggregation") aggregation: option<protectionGroupAggregation>,
@as("ProtectionGroupId") protectionGroupId: option<protectionGroupId>
}
type protection = {
@as("ProtectionArn") protectionArn: resourceArn,
@as("HealthCheckIds") healthCheckIds: healthCheckIds,
@as("ResourceArn") resourceArn: resourceArn,
@as("Name") name: protectionName,
@as("Id") id: protectionId
}
type mitigationList = array<mitigation>
type limits = array<limit>
type emergencyContactList = array<emergencyContact>
type attackVolume = {
@as("RequestsPerSecond") requestsPerSecond: attackVolumeStatistics,
@as("PacketsPerSecond") packetsPerSecond: attackVolumeStatistics,
@as("BitsPerSecond") bitsPerSecond: attackVolumeStatistics
}
type attackVectorDescriptionList = array<attackVectorDescription>
type summarizedAttackVector = {
@as("VectorCounters") vectorCounters: summarizedCounterList,
@as("VectorType") vectorType: option<amazonawsString>
}
type protections = array<protection>
type protectionLimits = {
@as("ProtectedResourceTypeLimits") protectedResourceTypeLimits: option<limits>
}
type protectionGroups = array<protectionGroup>
type protectionGroupLimits = {
@as("PatternTypeLimits") patternTypeLimits: option<protectionGroupPatternTypeLimits>,
@as("MaxProtectionGroups") maxProtectionGroups: option<amazonawsLong>
}
type attackSummary = {
@as("AttackVectors") attackVectors: attackVectorDescriptionList,
@as("EndTime") endTime: attackTimestamp,
@as("StartTime") startTime: attackTimestamp,
@as("ResourceArn") resourceArn: amazonawsString,
@as("AttackId") attackId: amazonawsString
}
type attackStatisticsDataItem = {
@as("AttackCount") attackCount: option<amazonawsLong>,
@as("AttackVolume") attackVolume: attackVolume
}
type attackProperty = {
@as("Total") total: amazonawsLong,
@as("Unit") unit: unit_,
@as("TopContributors") topContributors: topContributors,
@as("AttackPropertyIdentifier") attackPropertyIdentifier: attackPropertyIdentifier,
@as("AttackLayer") attackLayer: attackLayer
}
type summarizedAttackVectorList = array<summarizedAttackVector>
type subscriptionLimits = {
@as("ProtectionGroupLimits") protectionGroupLimits: option<protectionGroupLimits>,
@as("ProtectionLimits") protectionLimits: option<protectionLimits>
}
type attackSummaries = array<attackSummary>
type attackStatisticsDataList = array<attackStatisticsDataItem>
type attackProperties = array<attackProperty>
type subscription = {
@as("SubscriptionArn") subscriptionArn: resourceArn,
@as("SubscriptionLimits") subscriptionLimits: option<subscriptionLimits>,
@as("ProactiveEngagementStatus") proactiveEngagementStatus: proactiveEngagementStatus,
@as("Limits") limits: limits,
@as("AutoRenew") autoRenew: autoRenew,
@as("TimeCommitmentInSeconds") timeCommitmentInSeconds: durationInSeconds,
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp
}
type subResourceSummary = {
@as("Counters") counters: summarizedCounterList,
@as("AttackVectors") attackVectors: summarizedAttackVectorList,
@as("Id") id: amazonawsString,
@as("Type") type_: subResourceType
}
type subResourceSummaryList = array<subResourceSummary>
type attackDetail = {
@as("Mitigations") mitigations: mitigationList,
@as("AttackProperties") attackProperties: attackProperties,
@as("AttackCounters") attackCounters: summarizedCounterList,
@as("EndTime") endTime: attackTimestamp,
@as("StartTime") startTime: attackTimestamp,
@as("SubResources") subResources: subResourceSummaryList,
@as("ResourceArn") resourceArn: resourceArn,
@as("AttackId") attackId: attackId
}
type clientType;
@module("@aws-sdk/client-shield") @new external createClient: unit => clientType = "ShieldClient";
module GetSubscriptionState = {
  type t;
  type request = unit
  type response = {
@as("SubscriptionState") subscriptionState: option<subscriptionState>
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "GetSubscriptionStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateDRTRole = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DisassociateDRTRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateDRTLogBucket = {
  type t;
  type request = {
@as("LogBucket") logBucket: option<logBucket>
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DisassociateDRTLogBucketCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSubscription = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DeleteSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProtectionGroup = {
  type t;
  type request = {
@as("ProtectionGroupId") protectionGroupId: option<protectionGroupId>
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DeleteProtectionGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProtection = {
  type t;
  type request = {
@as("ProtectionId") protectionId: option<protectionId>
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DeleteProtectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSubscription = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "CreateSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResourcesInProtectionGroup = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: token,
@as("ProtectionGroupId") protectionGroupId: option<protectionGroupId>
}
  type response = {
@as("NextToken") nextToken: token,
@as("ResourceArns") resourceArns: option<resourceArnList>
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "ListResourcesInProtectionGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDRTAccess = {
  type t;
  type request = unit
  type response = {
@as("LogBucketList") logBucketList: logBucketList,
@as("RoleArn") roleArn: roleArn
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DescribeDRTAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSubscription = {
  type t;
  type request = {
@as("AutoRenew") autoRenew: autoRenew
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "UpdateSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProtectionGroup = {
  type t;
  type request = {
@as("Members") members: protectionGroupMembers,
@as("ResourceType") resourceType: protectedResourceType,
@as("Pattern") pattern: option<protectionGroupPattern>,
@as("Aggregation") aggregation: option<protectionGroupAggregation>,
@as("ProtectionGroupId") protectionGroupId: option<protectionGroupId>
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "UpdateProtectionGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEmergencyContactSettings = {
  type t;
  type request = {
@as("EmergencyContactList") emergencyContactList: emergencyContactList
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "UpdateEmergencyContactSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<resourceArn>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableProactiveEngagement = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "EnableProactiveEngagementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateHealthCheck = {
  type t;
  type request = {
@as("HealthCheckArn") healthCheckArn: option<healthCheckArn>,
@as("ProtectionId") protectionId: option<protectionId>
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DisassociateHealthCheckCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableProactiveEngagement = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DisableProactiveEngagementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProtectionGroup = {
  type t;
  type request = {
@as("ProtectionGroupId") protectionGroupId: option<protectionGroupId>
}
  type response = {
@as("ProtectionGroup") protectionGroup: option<protectionGroup>
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DescribeProtectionGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProtection = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: resourceArn,
@as("ProtectionId") protectionId: protectionId
}
  type response = {
@as("Protection") protection: protection
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DescribeProtectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEmergencyContactSettings = {
  type t;
  type request = unit
  type response = {
@as("EmergencyContactList") emergencyContactList: emergencyContactList
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DescribeEmergencyContactSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProtectionGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Members") members: protectionGroupMembers,
@as("ResourceType") resourceType: protectedResourceType,
@as("Pattern") pattern: option<protectionGroupPattern>,
@as("Aggregation") aggregation: option<protectionGroupAggregation>,
@as("ProtectionGroupId") protectionGroupId: option<protectionGroupId>
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "CreateProtectionGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProtection = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ResourceArn") resourceArn: option<resourceArn>,
@as("Name") name: option<protectionName>
}
  type response = {
@as("ProtectionId") protectionId: protectionId
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "CreateProtectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateProactiveEngagementDetails = {
  type t;
  type request = {
@as("EmergencyContactList") emergencyContactList: option<emergencyContactList>
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "AssociateProactiveEngagementDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateHealthCheck = {
  type t;
  type request = {
@as("HealthCheckArn") healthCheckArn: option<healthCheckArn>,
@as("ProtectionId") protectionId: option<protectionId>
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "AssociateHealthCheckCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateDRTRole = {
  type t;
  type request = {
@as("RoleArn") roleArn: option<roleArn>
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "AssociateDRTRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateDRTLogBucket = {
  type t;
  type request = {
@as("LogBucket") logBucket: option<logBucket>
}
  type response = unit
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "AssociateDRTLogBucketCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProtections = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("Protections") protections: protections
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "ListProtectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProtectionGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("ProtectionGroups") protectionGroups: option<protectionGroups>
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "ListProtectionGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAttacks = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: token,
@as("EndTime") endTime: timeRange,
@as("StartTime") startTime: timeRange,
@as("ResourceArns") resourceArns: resourceArnFilterList
}
  type response = {
@as("NextToken") nextToken: token,
@as("AttackSummaries") attackSummaries: attackSummaries
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "ListAttacksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAttackStatistics = {
  type t;
  type request = unit
  type response = {
@as("DataItems") dataItems: option<attackStatisticsDataList>,
@as("TimeRange") timeRange: option<timeRange>
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DescribeAttackStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSubscription = {
  type t;
  type request = unit
  type response = {
@as("Subscription") subscription: subscription
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DescribeSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAttack = {
  type t;
  type request = {
@as("AttackId") attackId: option<attackId>
}
  type response = {
@as("Attack") attack: attackDetail
}
  @module("@aws-sdk/client-shield") @new external new_: (Js.Promise.t<request>) => t = "DescribeAttackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
