type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type version = string
type url = string
type uUID = string
type amazonawsTimestamp = Js.Date.t;
type text = string
type tagValue = string
type tagKey = string
type stopAction = [@as("SKIP_EVALUATION") #SKIP_EVALUATION | @as("START_EVALUATION") #START_EVALUATION]
type severity = [@as("Undefined") #Undefined | @as("Informational") #Informational | @as("High") #High | @as("Medium") #Medium | @as("Low") #Low]
type serviceName = string
type scopeValue = string
type scopeType = [@as("RULES_PACKAGE_ARN") #RULES_PACKAGE_ARN | @as("INSTANCE_ID") #INSTANCE_ID]
type rulesPackageName = string
type ruleName = string
type reportType = [@as("FULL") #FULL | @as("FINDING") #FINDING]
type reportStatus = [@as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("WORK_IN_PROGRESS") #WORK_IN_PROGRESS]
type reportFileFormat = [@as("PDF") #PDF | @as("HTML") #HTML]
type providerName = string
type previewStatus = [@as("COMPLETED") #COMPLETED | @as("WORK_IN_PROGRESS") #WORK_IN_PROGRESS]
type previewAgentsMaxResults = int;
type paginationToken = string
type operatingSystem = string
type numericVersion = int;
type numericSeverity = float;
type noSuchEntityErrorCode = [@as("IAM_ROLE_DOES_NOT_EXIST") #IAM_ROLE_DOES_NOT_EXIST | @as("SNS_TOPIC_DOES_NOT_EXIST") #SNS_TOPIC_DOES_NOT_EXIST | @as("RULES_PACKAGE_DOES_NOT_EXIST") #RULES_PACKAGE_DOES_NOT_EXIST | @as("RESOURCE_GROUP_DOES_NOT_EXIST") #RESOURCE_GROUP_DOES_NOT_EXIST | @as("FINDING_DOES_NOT_EXIST") #FINDING_DOES_NOT_EXIST | @as("ASSESSMENT_RUN_DOES_NOT_EXIST") #ASSESSMENT_RUN_DOES_NOT_EXIST | @as("ASSESSMENT_TEMPLATE_DOES_NOT_EXIST") #ASSESSMENT_TEMPLATE_DOES_NOT_EXIST | @as("ASSESSMENT_TARGET_DOES_NOT_EXIST") #ASSESSMENT_TARGET_DOES_NOT_EXIST]
type namePattern = string
type messageType = string
type message = string
type amazonawsLong = float;
type locale = [@as("EN_US") #EN_US]
type listMaxResults = int;
type listEventSubscriptionsMaxResults = int;
type limitExceededErrorCode = [@as("EVENT_SUBSCRIPTION_LIMIT_EXCEEDED") #EVENT_SUBSCRIPTION_LIMIT_EXCEEDED | @as("RESOURCE_GROUP_LIMIT_EXCEEDED") #RESOURCE_GROUP_LIMIT_EXCEEDED | @as("ASSESSMENT_RUN_LIMIT_EXCEEDED") #ASSESSMENT_RUN_LIMIT_EXCEEDED | @as("ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED") #ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED | @as("ASSESSMENT_TARGET_LIMIT_EXCEEDED") #ASSESSMENT_TARGET_LIMIT_EXCEEDED]
type kernelVersion = string
type ipv4Address = string
type iocConfidence = int;
type invalidInputErrorCode = [@as("INVALID_NUMBER_OF_SEVERITIES") #INVALID_NUMBER_OF_SEVERITIES | @as("INVALID_NUMBER_OF_RULE_NAMES") #INVALID_NUMBER_OF_RULE_NAMES | @as("INVALID_NUMBER_OF_AUTO_SCALING_GROUPS") #INVALID_NUMBER_OF_AUTO_SCALING_GROUPS | @as("INVALID_NUMBER_OF_AGENT_IDS") #INVALID_NUMBER_OF_AGENT_IDS | @as("INVALID_NUMBER_OF_USER_ATTRIBUTES") #INVALID_NUMBER_OF_USER_ATTRIBUTES | @as("INVALID_NUMBER_OF_ATTRIBUTES") #INVALID_NUMBER_OF_ATTRIBUTES | @as("INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS") #INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS | @as("INVALID_NUMBER_OF_TAGS") #INVALID_NUMBER_OF_TAGS | @as("INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES") #INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES | @as("INVALID_NUMBER_OF_RULES_PACKAGE_ARNS") #INVALID_NUMBER_OF_RULES_PACKAGE_ARNS | @as("INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS") #INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS | @as("INVALID_NUMBER_OF_FINDING_ARNS") #INVALID_NUMBER_OF_FINDING_ARNS | @as("INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS") #INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS | @as("INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS") #INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS | @as("INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS") #INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS | @as("ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN") #ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN | @as("ASSESSMENT_TARGET_NAME_ALREADY_TAKEN") #ASSESSMENT_TARGET_NAME_ALREADY_TAKEN | @as("INVALID_EVENT") #INVALID_EVENT | @as("INVALID_LOCALE") #INVALID_LOCALE | @as("INVALID_SEVERITY") #INVALID_SEVERITY | @as("INVALID_RULE_NAME") #INVALID_RULE_NAME | @as("INVALID_AUTO_SCALING_GROUP") #INVALID_AUTO_SCALING_GROUP | @as("INVALID_AGENT_ID") #INVALID_AGENT_ID | @as("INVALID_MAX_RESULTS") #INVALID_MAX_RESULTS | @as("INVALID_PAGINATION_TOKEN") #INVALID_PAGINATION_TOKEN | @as("INVALID_USER_ATTRIBUTE_VALUE") #INVALID_USER_ATTRIBUTE_VALUE | @as("INVALID_USER_ATTRIBUTE_KEY") #INVALID_USER_ATTRIBUTE_KEY | @as("INVALID_USER_ATTRIBUTE") #INVALID_USER_ATTRIBUTE | @as("INVALID_ATTRIBUTE") #INVALID_ATTRIBUTE | @as("INVALID_RESOURCE_GROUP_TAG_VALUE") #INVALID_RESOURCE_GROUP_TAG_VALUE | @as("INVALID_RESOURCE_GROUP_TAG_KEY") #INVALID_RESOURCE_GROUP_TAG_KEY | @as("INVALID_TAG_VALUE") #INVALID_TAG_VALUE | @as("INVALID_TAG_KEY") #INVALID_TAG_KEY | @as("INVALID_TAG") #INVALID_TAG | @as("INVALID_ASSESSMENT_RUN_STATE") #INVALID_ASSESSMENT_RUN_STATE | @as("INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE") #INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE | @as("INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE") #INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE | @as("INVALID_ASSESSMENT_RUN_START_TIME_RANGE") #INVALID_ASSESSMENT_RUN_START_TIME_RANGE | @as("INVALID_ASSESSMENT_RUN_DURATION_RANGE") #INVALID_ASSESSMENT_RUN_DURATION_RANGE | @as("INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE") #INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE | @as("INVALID_ASSESSMENT_TEMPLATE_DURATION") #INVALID_ASSESSMENT_TEMPLATE_DURATION | @as("INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN") #INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN | @as("INVALID_ASSESSMENT_TEMPLATE_NAME") #INVALID_ASSESSMENT_TEMPLATE_NAME | @as("INVALID_ASSESSMENT_TARGET_NAME_PATTERN") #INVALID_ASSESSMENT_TARGET_NAME_PATTERN | @as("INVALID_ASSESSMENT_TARGET_NAME") #INVALID_ASSESSMENT_TARGET_NAME | @as("INVALID_IAM_ROLE_ARN") #INVALID_IAM_ROLE_ARN | @as("INVALID_SNS_TOPIC_ARN") #INVALID_SNS_TOPIC_ARN | @as("INVALID_RESOURCE_ARN") #INVALID_RESOURCE_ARN | @as("INVALID_RULES_PACKAGE_ARN") #INVALID_RULES_PACKAGE_ARN | @as("INVALID_RESOURCE_GROUP_ARN") #INVALID_RESOURCE_GROUP_ARN | @as("INVALID_FINDING_ARN") #INVALID_FINDING_ARN | @as("INVALID_ASSESSMENT_RUN_ARN") #INVALID_ASSESSMENT_RUN_ARN | @as("INVALID_ASSESSMENT_TEMPLATE_ARN") #INVALID_ASSESSMENT_TEMPLATE_ARN | @as("INVALID_ASSESSMENT_TARGET_ARN") #INVALID_ASSESSMENT_TARGET_ARN]
type invalidCrossAccountRoleErrorCode = [@as("ROLE_DOES_NOT_HAVE_CORRECT_POLICY") #ROLE_DOES_NOT_HAVE_CORRECT_POLICY | @as("ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP") #ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP]
type inspectorEvent = [@as("OTHER") #OTHER | @as("FINDING_REPORTED") #FINDING_REPORTED | @as("ASSESSMENT_RUN_STATE_CHANGED") #ASSESSMENT_RUN_STATE_CHANGED | @as("ASSESSMENT_RUN_COMPLETED") #ASSESSMENT_RUN_COMPLETED | @as("ASSESSMENT_RUN_STARTED") #ASSESSMENT_RUN_STARTED]
type hostname = string
type findingId = string
type findingCount = int;
type failedItemErrorCode = [@as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("LIMIT_EXCEEDED") #LIMIT_EXCEEDED | @as("ACCESS_DENIED") #ACCESS_DENIED | @as("ITEM_DOES_NOT_EXIST") #ITEM_DOES_NOT_EXIST | @as("DUPLICATE_ARN") #DUPLICATE_ARN | @as("INVALID_ARN") #INVALID_ARN]
type errorMessage = string
type amazonawsBool = bool;
type autoScalingGroup = string
type attributeValue = string
type attributeKey = string
type assetType = [@as("ec2-instance") #ec2_instance]
type assessmentTemplateName = string
type assessmentTargetName = string
type assessmentRunState = [@as("CANCELED") #CANCELED | @as("COMPLETED_WITH_ERRORS") #COMPLETED_WITH_ERRORS | @as("COMPLETED") #COMPLETED | @as("ERROR") #ERROR | @as("FAILED") #FAILED | @as("EVALUATING_RULES") #EVALUATING_RULES | @as("START_EVALUATING_RULES_PENDING") #START_EVALUATING_RULES_PENDING | @as("DATA_COLLECTED") #DATA_COLLECTED | @as("STOP_DATA_COLLECTION_PENDING") #STOP_DATA_COLLECTION_PENDING | @as("COLLECTING_DATA") #COLLECTING_DATA | @as("START_DATA_COLLECTION_IN_PROGRESS") #START_DATA_COLLECTION_IN_PROGRESS | @as("START_DATA_COLLECTION_PENDING") #START_DATA_COLLECTION_PENDING | @as("CREATED") #CREATED]
type assessmentRunNotificationSnsStatusCode = [@as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("ACCESS_DENIED") #ACCESS_DENIED | @as("TOPIC_DOES_NOT_EXIST") #TOPIC_DOES_NOT_EXIST | @as("SUCCESS") #SUCCESS]
type assessmentRunName = string
type assessmentRunDuration = int;
type arnCount = int;
type arn = string
type amiId = string
type agentVersion = string
type agentId = string
type agentHealthCode = [@as("UNKNOWN") #UNKNOWN | @as("THROTTLED") #THROTTLED | @as("UNHEALTHY") #UNHEALTHY | @as("SHUTDOWN") #SHUTDOWN | @as("RUNNING") #RUNNING | @as("IDLE") #IDLE]
type agentHealth = [@as("UNKNOWN") #UNKNOWN | @as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type accessDeniedErrorCode = [@as("ACCESS_DENIED_TO_IAM_ROLE") #ACCESS_DENIED_TO_IAM_ROLE | @as("ACCESS_DENIED_TO_SNS_TOPIC") #ACCESS_DENIED_TO_SNS_TOPIC | @as("ACCESS_DENIED_TO_RULES_PACKAGE") #ACCESS_DENIED_TO_RULES_PACKAGE | @as("ACCESS_DENIED_TO_RESOURCE_GROUP") #ACCESS_DENIED_TO_RESOURCE_GROUP | @as("ACCESS_DENIED_TO_FINDING") #ACCESS_DENIED_TO_FINDING | @as("ACCESS_DENIED_TO_ASSESSMENT_RUN") #ACCESS_DENIED_TO_ASSESSMENT_RUN | @as("ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE") #ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE | @as("ACCESS_DENIED_TO_ASSESSMENT_TARGET") #ACCESS_DENIED_TO_ASSESSMENT_TARGET]
type userAttributeKeyList = array<attributeKey>
type timestampRange = {
@as("endDate") endDate: amazonawsTimestamp,
@as("beginDate") beginDate: amazonawsTimestamp
}
type telemetryMetadata = {
@as("dataSize") dataSize: amazonawsLong,
@as("count") count: option<amazonawsLong>,
@as("messageType") messageType: option<messageType>
}
type tag = {
@as("value") value: tagValue,
@as("key") key: option<tagKey>
}
type severityList = array<severity>
type securityGroup = {
@as("groupId") groupId: text,
@as("groupName") groupName: text
}
type scope = {
@as("value") value: scopeValue,
@as("key") key: scopeType
}
type rulesPackage = {
@as("description") description: text,
@as("provider") provider: option<providerName>,
@as("version") version: option<version>,
@as("name") name: option<rulesPackageName>,
@as("arn") arn: option<arn>
}
type ruleNameList = array<ruleName>
type resourceGroupTag = {
@as("value") value: tagValue,
@as("key") key: option<tagKey>
}
type privateIp = {
@as("privateIpAddress") privateIpAddress: text,
@as("privateDnsName") privateDnsName: text
}
type listReturnedArnList = array<arn>
type listParentArnList = array<arn>
type ipv6Addresses = array<text>
type ipv4AddressList = array<ipv4Address>
type inspectorServiceAttributes = {
@as("rulesPackageArn") rulesPackageArn: arn,
@as("assessmentRunArn") assessmentRunArn: arn,
@as("schemaVersion") schemaVersion: option<numericVersion>
}
type filterRulesPackageArnList = array<arn>
type failedItemDetails = {
@as("retryable") retryable: option<amazonawsBool>,
@as("failureCode") failureCode: option<failedItemErrorCode>
}
type eventSubscription = {
@as("subscribedAt") subscribedAt: option<amazonawsTimestamp>,
@as("event") event: option<inspectorEvent>
}
type durationRange = {
@as("maxSeconds") maxSeconds: assessmentRunDuration,
@as("minSeconds") minSeconds: assessmentRunDuration
}
type batchDescribeExclusionsArnList = array<arn>
type batchDescribeArnList = array<arn>
type autoScalingGroupList = array<autoScalingGroup>
type attribute = {
@as("value") value: attributeValue,
@as("key") key: option<attributeKey>
}
type assessmentTemplateRulesPackageArnList = array<arn>
type assessmentTargetFilter = {
@as("assessmentTargetNamePattern") assessmentTargetNamePattern: namePattern
}
type assessmentTarget = {
@as("updatedAt") updatedAt: option<amazonawsTimestamp>,
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("resourceGroupArn") resourceGroupArn: arn,
@as("name") name: option<assessmentTargetName>,
@as("arn") arn: option<arn>
}
type assessmentRunStateList = array<assessmentRunState>
type assessmentRunStateChange = {
@as("state") state: option<assessmentRunState>,
@as("stateChangedAt") stateChangedAt: option<amazonawsTimestamp>
}
type assessmentRunNotification = {
@as("snsPublishStatusCode") snsPublishStatusCode: assessmentRunNotificationSnsStatusCode,
@as("snsTopicArn") snsTopicArn: arn,
@as("error") error: option<amazonawsBool>,
@as("message") message: message,
@as("event") event: option<inspectorEvent>,
@as("date") date: option<amazonawsTimestamp>
}
type assessmentRunInProgressArnList = array<arn>
type assessmentRunFindingCounts = Js.Dict.t< findingCount>
type assessmentRulesPackageArnList = array<arn>
type agentPreview = {
@as("ipv4Address") ipv4Address: ipv4Address,
@as("kernelVersion") kernelVersion: kernelVersion,
@as("operatingSystem") operatingSystem: operatingSystem,
@as("agentVersion") agentVersion: agentVersion,
@as("agentHealth") agentHealth: agentHealth,
@as("autoScalingGroup") autoScalingGroup: autoScalingGroup,
@as("agentId") agentId: option<agentId>,
@as("hostname") hostname: hostname
}
type agentIdList = array<agentId>
type agentHealthList = array<agentHealth>
type agentHealthCodeList = array<agentHealthCode>
type agentAlreadyRunningAssessment = {
@as("assessmentRunArn") assessmentRunArn: option<arn>,
@as("agentId") agentId: option<agentId>
}
type addRemoveAttributesFindingArnList = array<arn>
type userAttributeList = array<attribute>
type telemetryMetadataList = array<telemetryMetadata>
type tags = array<tag>
type tagList = array<tag>
type securityGroups = array<securityGroup>
type scopeList = array<scope>
type rulesPackageList = array<rulesPackage>
type resourceGroupTags = array<resourceGroupTag>
type privateIpAddresses = array<privateIp>
type failedItems = Js.Dict.t< failedItemDetails>
type eventSubscriptionList = array<eventSubscription>
type attributeList = array<attribute>
type assessmentTemplateFilter = {
@as("rulesPackageArns") rulesPackageArns: filterRulesPackageArnList,
@as("durationRange") durationRange: durationRange,
@as("namePattern") namePattern: namePattern
}
type assessmentTargetList = array<assessmentTarget>
type assessmentRunStateChangeList = array<assessmentRunStateChange>
type assessmentRunNotificationList = array<assessmentRunNotification>
type assessmentRunFilter = {
@as("stateChangeTimeRange") stateChangeTimeRange: timestampRange,
@as("completionTimeRange") completionTimeRange: timestampRange,
@as("startTimeRange") startTimeRange: timestampRange,
@as("rulesPackageArns") rulesPackageArns: filterRulesPackageArnList,
@as("durationRange") durationRange: durationRange,
@as("states") states: assessmentRunStateList,
@as("namePattern") namePattern: namePattern
}
type agentPreviewList = array<agentPreview>
type agentFilter = {
@as("agentHealthCodes") agentHealthCodes: option<agentHealthCodeList>,
@as("agentHealths") agentHealths: option<agentHealthList>
}
type agentAlreadyRunningAssessmentList = array<agentAlreadyRunningAssessment>
type subscription = {
@as("eventSubscriptions") eventSubscriptions: option<eventSubscriptionList>,
@as("topicArn") topicArn: option<arn>,
@as("resourceArn") resourceArn: option<arn>
}
type resourceGroup = {
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("tags") tags: option<resourceGroupTags>,
@as("arn") arn: option<arn>
}
type networkInterface = {
@as("securityGroups") securityGroups: securityGroups,
@as("ipv6Addresses") ipv6Addresses: ipv6Addresses,
@as("publicIp") publicIp: text,
@as("publicDnsName") publicDnsName: text,
@as("privateIpAddresses") privateIpAddresses: privateIpAddresses,
@as("privateIpAddress") privateIpAddress: text,
@as("privateDnsName") privateDnsName: text,
@as("vpcId") vpcId: text,
@as("subnetId") subnetId: text,
@as("networkInterfaceId") networkInterfaceId: text
}
type findingFilter = {
@as("creationTimeRange") creationTimeRange: timestampRange,
@as("userAttributes") userAttributes: attributeList,
@as("attributes") attributes: attributeList,
@as("rulesPackageArns") rulesPackageArns: filterRulesPackageArnList,
@as("severities") severities: severityList,
@as("ruleNames") ruleNames: ruleNameList,
@as("autoScalingGroups") autoScalingGroups: autoScalingGroupList,
@as("agentIds") agentIds: agentIdList
}
type exclusionPreview = {
@as("attributes") attributes: attributeList,
@as("scopes") scopes: option<scopeList>,
@as("recommendation") recommendation: option<text>,
@as("description") description: option<text>,
@as("title") title: option<text>
}
type exclusion = {
@as("attributes") attributes: attributeList,
@as("scopes") scopes: option<scopeList>,
@as("recommendation") recommendation: option<text>,
@as("description") description: option<text>,
@as("title") title: option<text>,
@as("arn") arn: option<arn>
}
type assessmentTemplate = {
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("assessmentRunCount") assessmentRunCount: option<arnCount>,
@as("lastAssessmentRunArn") lastAssessmentRunArn: arn,
@as("userAttributesForFindings") userAttributesForFindings: option<userAttributeList>,
@as("rulesPackageArns") rulesPackageArns: option<assessmentTemplateRulesPackageArnList>,
@as("durationInSeconds") durationInSeconds: option<assessmentRunDuration>,
@as("assessmentTargetArn") assessmentTargetArn: option<arn>,
@as("name") name: option<assessmentTemplateName>,
@as("arn") arn: option<arn>
}
type assessmentRunAgent = {
@as("telemetryMetadata") telemetryMetadata: option<telemetryMetadataList>,
@as("autoScalingGroup") autoScalingGroup: autoScalingGroup,
@as("agentHealthDetails") agentHealthDetails: message,
@as("agentHealthCode") agentHealthCode: option<agentHealthCode>,
@as("agentHealth") agentHealth: option<agentHealth>,
@as("assessmentRunArn") assessmentRunArn: option<arn>,
@as("agentId") agentId: option<agentId>
}
type assessmentRun = {
@as("findingCounts") findingCounts: option<assessmentRunFindingCounts>,
@as("notifications") notifications: option<assessmentRunNotificationList>,
@as("stateChanges") stateChanges: option<assessmentRunStateChangeList>,
@as("dataCollected") dataCollected: option<amazonawsBool>,
@as("stateChangedAt") stateChangedAt: option<amazonawsTimestamp>,
@as("completedAt") completedAt: amazonawsTimestamp,
@as("startedAt") startedAt: amazonawsTimestamp,
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("userAttributesForFindings") userAttributesForFindings: option<userAttributeList>,
@as("rulesPackageArns") rulesPackageArns: option<assessmentRulesPackageArnList>,
@as("durationInSeconds") durationInSeconds: option<assessmentRunDuration>,
@as("state") state: option<assessmentRunState>,
@as("assessmentTemplateArn") assessmentTemplateArn: option<arn>,
@as("name") name: option<assessmentRunName>,
@as("arn") arn: option<arn>
}
type subscriptionList = array<subscription>
type resourceGroupList = array<resourceGroup>
type networkInterfaces = array<networkInterface>
type exclusionPreviewList = array<exclusionPreview>
type exclusionMap = Js.Dict.t< exclusion>
type assessmentTemplateList = array<assessmentTemplate>
type assessmentRunList = array<assessmentRun>
type assessmentRunAgentList = array<assessmentRunAgent>
type assetAttributes = {
@as("networkInterfaces") networkInterfaces: networkInterfaces,
@as("tags") tags: tags,
@as("ipv4Addresses") ipv4Addresses: ipv4AddressList,
@as("hostname") hostname: hostname,
@as("amiId") amiId: amiId,
@as("autoScalingGroup") autoScalingGroup: autoScalingGroup,
@as("agentId") agentId: agentId,
@as("schemaVersion") schemaVersion: option<numericVersion>
}
type finding = {
@as("updatedAt") updatedAt: option<amazonawsTimestamp>,
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("userAttributes") userAttributes: option<userAttributeList>,
@as("attributes") attributes: option<attributeList>,
@as("indicatorOfCompromise") indicatorOfCompromise: amazonawsBool,
@as("confidence") confidence: iocConfidence,
@as("numericSeverity") numericSeverity: numericSeverity,
@as("severity") severity: severity,
@as("recommendation") recommendation: text,
@as("description") description: text,
@as("title") title: text,
@as("id") id: findingId,
@as("assetAttributes") assetAttributes: assetAttributes,
@as("assetType") assetType: assetType,
@as("serviceAttributes") serviceAttributes: inspectorServiceAttributes,
@as("service") service: serviceName,
@as("schemaVersion") schemaVersion: numericVersion,
@as("arn") arn: option<arn>
}
type findingList = array<finding>
type clientType;
@module("@aws-sdk/client-inspector") @new external createClient: unit => clientType = "InspectorClient";
module UpdateAssessmentTarget = {
  type t;
  type request = {
@as("resourceGroupArn") resourceGroupArn: arn,
@as("assessmentTargetName") assessmentTargetName: option<assessmentTargetName>,
@as("assessmentTargetArn") assessmentTargetArn: option<arn>
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "UpdateAssessmentTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UnsubscribeFromEvent = {
  type t;
  type request = {
@as("topicArn") topicArn: option<arn>,
@as("event") event: option<inspectorEvent>,
@as("resourceArn") resourceArn: option<arn>
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "UnsubscribeFromEventCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SubscribeToEvent = {
  type t;
  type request = {
@as("topicArn") topicArn: option<arn>,
@as("event") event: option<inspectorEvent>,
@as("resourceArn") resourceArn: option<arn>
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "SubscribeToEventCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StopAssessmentRun = {
  type t;
  type request = {
@as("stopAction") stopAction: stopAction,
@as("assessmentRunArn") assessmentRunArn: option<arn>
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "StopAssessmentRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RegisterCrossAccountAccessRole = {
  type t;
  type request = {
@as("roleArn") roleArn: option<arn>
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "RegisterCrossAccountAccessRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeCrossAccountAccessRole = {
  type t;
  
  type response = {
@as("registeredAt") registeredAt: option<amazonawsTimestamp>,
@as("valid") valid: option<amazonawsBool>,
@as("roleArn") roleArn: option<arn>
}
  @module("@aws-sdk/client-inspector") @new external new_: (unit) => t = "DescribeCrossAccountAccessRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateExclusionsPreview = {
  type t;
  type request = {
@as("assessmentTemplateArn") assessmentTemplateArn: option<arn>
}
  type response = {
@as("previewToken") previewToken: option<uUID>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "CreateExclusionsPreviewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAssessmentTarget = {
  type t;
  type request = {
@as("resourceGroupArn") resourceGroupArn: arn,
@as("assessmentTargetName") assessmentTargetName: option<assessmentTargetName>
}
  type response = {
@as("assessmentTargetArn") assessmentTargetArn: option<arn>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "CreateAssessmentTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRulesPackages = {
  type t;
  type request = {
@as("maxResults") maxResults: listMaxResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("rulesPackageArns") rulesPackageArns: option<listReturnedArnList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListRulesPackagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListExclusions = {
  type t;
  type request = {
@as("maxResults") maxResults: listMaxResults,
@as("nextToken") nextToken: paginationToken,
@as("assessmentRunArn") assessmentRunArn: option<arn>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("exclusionArns") exclusionArns: option<listReturnedArnList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListExclusionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssessmentTargets = {
  type t;
  type request = {
@as("maxResults") maxResults: listMaxResults,
@as("nextToken") nextToken: paginationToken,
@as("filter") filter: assessmentTargetFilter
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("assessmentTargetArns") assessmentTargetArns: option<listReturnedArnList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListAssessmentTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAssessmentReport = {
  type t;
  type request = {
@as("reportType") reportType: option<reportType>,
@as("reportFileFormat") reportFileFormat: option<reportFileFormat>,
@as("assessmentRunArn") assessmentRunArn: option<arn>
}
  type response = {
@as("url") url: url,
@as("status") status: option<reportStatus>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "GetAssessmentReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAssessmentTemplate = {
  type t;
  type request = {
@as("assessmentTemplateArn") assessmentTemplateArn: option<arn>
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DeleteAssessmentTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAssessmentTarget = {
  type t;
  type request = {
@as("assessmentTargetArn") assessmentTargetArn: option<arn>
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DeleteAssessmentTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAssessmentRun = {
  type t;
  type request = {
@as("assessmentRunArn") assessmentRunArn: option<arn>
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DeleteAssessmentRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartAssessmentRun = {
  type t;
  type request = {
@as("assessmentRunName") assessmentRunName: assessmentRunName,
@as("assessmentTemplateArn") assessmentTemplateArn: option<arn>
}
  type response = {
@as("assessmentRunArn") assessmentRunArn: option<arn>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "StartAssessmentRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetTagsForResource = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("resourceArn") resourceArn: option<arn>
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "SetTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveAttributesFromFindings = {
  type t;
  type request = {
@as("attributeKeys") attributeKeys: option<userAttributeKeyList>,
@as("findingArns") findingArns: option<addRemoveAttributesFindingArnList>
}
  type response = {
@as("failedItems") failedItems: option<failedItems>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "RemoveAttributesFromFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PreviewAgents = {
  type t;
  type request = {
@as("maxResults") maxResults: previewAgentsMaxResults,
@as("nextToken") nextToken: paginationToken,
@as("previewAgentsArn") previewAgentsArn: option<arn>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("agentPreviews") agentPreviews: option<agentPreviewList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "PreviewAgentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<arn>
}
  type response = {
@as("tags") tags: option<tagList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssessmentTemplates = {
  type t;
  type request = {
@as("maxResults") maxResults: listMaxResults,
@as("nextToken") nextToken: paginationToken,
@as("filter") filter: assessmentTemplateFilter,
@as("assessmentTargetArns") assessmentTargetArns: listParentArnList
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("assessmentTemplateArns") assessmentTemplateArns: option<listReturnedArnList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListAssessmentTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssessmentRuns = {
  type t;
  type request = {
@as("maxResults") maxResults: listMaxResults,
@as("nextToken") nextToken: paginationToken,
@as("filter") filter: assessmentRunFilter,
@as("assessmentTemplateArns") assessmentTemplateArns: listParentArnList
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("assessmentRunArns") assessmentRunArns: option<listReturnedArnList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListAssessmentRunsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTelemetryMetadata = {
  type t;
  type request = {
@as("assessmentRunArn") assessmentRunArn: option<arn>
}
  type response = {
@as("telemetryMetadata") telemetryMetadata: option<telemetryMetadataList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "GetTelemetryMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRulesPackages = {
  type t;
  type request = {
@as("locale") locale: locale,
@as("rulesPackageArns") rulesPackageArns: option<batchDescribeArnList>
}
  type response = {
@as("failedItems") failedItems: option<failedItems>,
@as("rulesPackages") rulesPackages: option<rulesPackageList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeRulesPackagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAssessmentTargets = {
  type t;
  type request = {
@as("assessmentTargetArns") assessmentTargetArns: option<batchDescribeArnList>
}
  type response = {
@as("failedItems") failedItems: option<failedItems>,
@as("assessmentTargets") assessmentTargets: option<assessmentTargetList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeAssessmentTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResourceGroup = {
  type t;
  type request = {
@as("resourceGroupTags") resourceGroupTags: option<resourceGroupTags>
}
  type response = {
@as("resourceGroupArn") resourceGroupArn: option<arn>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "CreateResourceGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAssessmentTemplate = {
  type t;
  type request = {
@as("userAttributesForFindings") userAttributesForFindings: userAttributeList,
@as("rulesPackageArns") rulesPackageArns: option<assessmentTemplateRulesPackageArnList>,
@as("durationInSeconds") durationInSeconds: option<assessmentRunDuration>,
@as("assessmentTemplateName") assessmentTemplateName: option<assessmentTemplateName>,
@as("assessmentTargetArn") assessmentTargetArn: option<arn>
}
  type response = {
@as("assessmentTemplateArn") assessmentTemplateArn: option<arn>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "CreateAssessmentTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddAttributesToFindings = {
  type t;
  type request = {
@as("attributes") attributes: option<userAttributeList>,
@as("findingArns") findingArns: option<addRemoveAttributesFindingArnList>
}
  type response = {
@as("failedItems") failedItems: option<failedItems>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "AddAttributesToFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFindings = {
  type t;
  type request = {
@as("maxResults") maxResults: listMaxResults,
@as("nextToken") nextToken: paginationToken,
@as("filter") filter: findingFilter,
@as("assessmentRunArns") assessmentRunArns: listParentArnList
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("findingArns") findingArns: option<listReturnedArnList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEventSubscriptions = {
  type t;
  type request = {
@as("maxResults") maxResults: listEventSubscriptionsMaxResults,
@as("nextToken") nextToken: paginationToken,
@as("resourceArn") resourceArn: arn
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("subscriptions") subscriptions: option<subscriptionList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListEventSubscriptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssessmentRunAgents = {
  type t;
  type request = {
@as("maxResults") maxResults: listMaxResults,
@as("nextToken") nextToken: paginationToken,
@as("filter") filter: agentFilter,
@as("assessmentRunArn") assessmentRunArn: option<arn>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("assessmentRunAgents") assessmentRunAgents: option<assessmentRunAgentList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListAssessmentRunAgentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetExclusionsPreview = {
  type t;
  type request = {
@as("locale") locale: locale,
@as("maxResults") maxResults: listMaxResults,
@as("nextToken") nextToken: paginationToken,
@as("previewToken") previewToken: option<uUID>,
@as("assessmentTemplateArn") assessmentTemplateArn: option<arn>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("exclusionPreviews") exclusionPreviews: exclusionPreviewList,
@as("previewStatus") previewStatus: option<previewStatus>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "GetExclusionsPreviewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeResourceGroups = {
  type t;
  type request = {
@as("resourceGroupArns") resourceGroupArns: option<batchDescribeArnList>
}
  type response = {
@as("failedItems") failedItems: option<failedItems>,
@as("resourceGroups") resourceGroups: option<resourceGroupList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeResourceGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeExclusions = {
  type t;
  type request = {
@as("locale") locale: locale,
@as("exclusionArns") exclusionArns: option<batchDescribeExclusionsArnList>
}
  type response = {
@as("failedItems") failedItems: option<failedItems>,
@as("exclusions") exclusions: option<exclusionMap>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeExclusionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAssessmentTemplates = {
  type t;
  type request = {
@as("assessmentTemplateArns") assessmentTemplateArns: option<batchDescribeArnList>
}
  type response = {
@as("failedItems") failedItems: option<failedItems>,
@as("assessmentTemplates") assessmentTemplates: option<assessmentTemplateList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeAssessmentTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAssessmentRuns = {
  type t;
  type request = {
@as("assessmentRunArns") assessmentRunArns: option<batchDescribeArnList>
}
  type response = {
@as("failedItems") failedItems: option<failedItems>,
@as("assessmentRuns") assessmentRuns: option<assessmentRunList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeAssessmentRunsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFindings = {
  type t;
  type request = {
@as("locale") locale: locale,
@as("findingArns") findingArns: option<batchDescribeArnList>
}
  type response = {
@as("failedItems") failedItems: option<failedItems>,
@as("findings") findings: option<findingList>
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
