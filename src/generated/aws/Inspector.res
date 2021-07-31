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
type version = string
type url = string
type uuid = string
type timestamp_ = Js.Date.t;
type text = string
type tagValue = string
type tagKey = string
type stopAction = [@as("SKIP_EVALUATION") #SKIPEVALUATION | @as("START_EVALUATION") #STARTEVALUATION]
type severity = [@as("Undefined") #Undefined | @as("Informational") #Informational | @as("High") #High | @as("Medium") #Medium | @as("Low") #Low]
type serviceName = string
type scopeValue = string
type scopeType = [@as("RULES_PACKAGE_ARN") #RULESPACKAGEARN | @as("INSTANCE_ID") #INSTANCEID]
type rulesPackageName = string
type ruleName = string
type reportType = [@as("FULL") #FULL | @as("FINDING") #FINDING]
type reportStatus = [@as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("WORK_IN_PROGRESS") #WORKINPROGRESS]
type reportFileFormat = [@as("PDF") #PDF | @as("HTML") #HTML]
type providerName = string
type previewStatus = [@as("COMPLETED") #COMPLETED | @as("WORK_IN_PROGRESS") #WORKINPROGRESS]
type previewAgentsMaxResults = int
type paginationToken = string
type operatingSystem = string
type numericVersion = int
type numericSeverity = float
type noSuchEntityErrorCode = [@as("IAM_ROLE_DOES_NOT_EXIST") #IAMROLEDOESNOTEXIST | @as("SNS_TOPIC_DOES_NOT_EXIST") #SNSTOPICDOESNOTEXIST | @as("RULES_PACKAGE_DOES_NOT_EXIST") #RULESPACKAGEDOESNOTEXIST | @as("RESOURCE_GROUP_DOES_NOT_EXIST") #RESOURCEGROUPDOESNOTEXIST | @as("FINDING_DOES_NOT_EXIST") #FINDINGDOESNOTEXIST | @as("ASSESSMENT_RUN_DOES_NOT_EXIST") #ASSESSMENTRUNDOESNOTEXIST | @as("ASSESSMENT_TEMPLATE_DOES_NOT_EXIST") #ASSESSMENTTEMPLATEDOESNOTEXIST | @as("ASSESSMENT_TARGET_DOES_NOT_EXIST") #ASSESSMENTTARGETDOESNOTEXIST]
type namePattern = string
type messageType = string
type message = string
type long = float
type locale = [@as("EN_US") #ENUS]
type listMaxResults = int
type listEventSubscriptionsMaxResults = int
type limitExceededErrorCode = [@as("EVENT_SUBSCRIPTION_LIMIT_EXCEEDED") #EVENTSUBSCRIPTIONLIMITEXCEEDED | @as("RESOURCE_GROUP_LIMIT_EXCEEDED") #RESOURCEGROUPLIMITEXCEEDED | @as("ASSESSMENT_RUN_LIMIT_EXCEEDED") #ASSESSMENTRUNLIMITEXCEEDED | @as("ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED") #ASSESSMENTTEMPLATELIMITEXCEEDED | @as("ASSESSMENT_TARGET_LIMIT_EXCEEDED") #ASSESSMENTTARGETLIMITEXCEEDED]
type kernelVersion = string
type ipv4Address = string
type iocConfidence = int
type invalidInputErrorCode = [@as("INVALID_NUMBER_OF_SEVERITIES") #INVALIDNUMBEROFSEVERITIES | @as("INVALID_NUMBER_OF_RULE_NAMES") #INVALIDNUMBEROFRULENAMES | @as("INVALID_NUMBER_OF_AUTO_SCALING_GROUPS") #INVALIDNUMBEROFAUTOSCALINGGROUPS | @as("INVALID_NUMBER_OF_AGENT_IDS") #INVALIDNUMBEROFAGENTIDS | @as("INVALID_NUMBER_OF_USER_ATTRIBUTES") #INVALIDNUMBEROFUSERATTRIBUTES | @as("INVALID_NUMBER_OF_ATTRIBUTES") #INVALIDNUMBEROFATTRIBUTES | @as("INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS") #INVALIDNUMBEROFRESOURCEGROUPTAGS | @as("INVALID_NUMBER_OF_TAGS") #INVALIDNUMBEROFTAGS | @as("INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES") #INVALIDNUMBEROFASSESSMENTRUNSTATES | @as("INVALID_NUMBER_OF_RULES_PACKAGE_ARNS") #INVALIDNUMBEROFRULESPACKAGEARNS | @as("INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS") #INVALIDNUMBEROFRESOURCEGROUPARNS | @as("INVALID_NUMBER_OF_FINDING_ARNS") #INVALIDNUMBEROFFINDINGARNS | @as("INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS") #INVALIDNUMBEROFASSESSMENTRUNARNS | @as("INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS") #INVALIDNUMBEROFASSESSMENTTEMPLATEARNS | @as("INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS") #INVALIDNUMBEROFASSESSMENTTARGETARNS | @as("ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN") #ASSESSMENTTEMPLATENAMEALREADYTAKEN | @as("ASSESSMENT_TARGET_NAME_ALREADY_TAKEN") #ASSESSMENTTARGETNAMEALREADYTAKEN | @as("INVALID_EVENT") #INVALIDEVENT | @as("INVALID_LOCALE") #INVALIDLOCALE | @as("INVALID_SEVERITY") #INVALIDSEVERITY | @as("INVALID_RULE_NAME") #INVALIDRULENAME | @as("INVALID_AUTO_SCALING_GROUP") #INVALIDAUTOSCALINGGROUP | @as("INVALID_AGENT_ID") #INVALIDAGENTID | @as("INVALID_MAX_RESULTS") #INVALIDMAXRESULTS | @as("INVALID_PAGINATION_TOKEN") #INVALIDPAGINATIONTOKEN | @as("INVALID_USER_ATTRIBUTE_VALUE") #INVALIDUSERATTRIBUTEVALUE | @as("INVALID_USER_ATTRIBUTE_KEY") #INVALIDUSERATTRIBUTEKEY | @as("INVALID_USER_ATTRIBUTE") #INVALIDUSERATTRIBUTE | @as("INVALID_ATTRIBUTE") #INVALIDATTRIBUTE | @as("INVALID_RESOURCE_GROUP_TAG_VALUE") #INVALIDRESOURCEGROUPTAGVALUE | @as("INVALID_RESOURCE_GROUP_TAG_KEY") #INVALIDRESOURCEGROUPTAGKEY | @as("INVALID_TAG_VALUE") #INVALIDTAGVALUE | @as("INVALID_TAG_KEY") #INVALIDTAGKEY | @as("INVALID_TAG") #INVALIDTAG | @as("INVALID_ASSESSMENT_RUN_STATE") #INVALIDASSESSMENTRUNSTATE | @as("INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE") #INVALIDASSESSMENTRUNSTATECHANGETIMERANGE | @as("INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE") #INVALIDASSESSMENTRUNCOMPLETIONTIMERANGE | @as("INVALID_ASSESSMENT_RUN_START_TIME_RANGE") #INVALIDASSESSMENTRUNSTARTTIMERANGE | @as("INVALID_ASSESSMENT_RUN_DURATION_RANGE") #INVALIDASSESSMENTRUNDURATIONRANGE | @as("INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE") #INVALIDASSESSMENTTEMPLATEDURATIONRANGE | @as("INVALID_ASSESSMENT_TEMPLATE_DURATION") #INVALIDASSESSMENTTEMPLATEDURATION | @as("INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN") #INVALIDASSESSMENTTEMPLATENAMEPATTERN | @as("INVALID_ASSESSMENT_TEMPLATE_NAME") #INVALIDASSESSMENTTEMPLATENAME | @as("INVALID_ASSESSMENT_TARGET_NAME_PATTERN") #INVALIDASSESSMENTTARGETNAMEPATTERN | @as("INVALID_ASSESSMENT_TARGET_NAME") #INVALIDASSESSMENTTARGETNAME | @as("INVALID_IAM_ROLE_ARN") #INVALIDIAMROLEARN | @as("INVALID_SNS_TOPIC_ARN") #INVALIDSNSTOPICARN | @as("INVALID_RESOURCE_ARN") #INVALIDRESOURCEARN | @as("INVALID_RULES_PACKAGE_ARN") #INVALIDRULESPACKAGEARN | @as("INVALID_RESOURCE_GROUP_ARN") #INVALIDRESOURCEGROUPARN | @as("INVALID_FINDING_ARN") #INVALIDFINDINGARN | @as("INVALID_ASSESSMENT_RUN_ARN") #INVALIDASSESSMENTRUNARN | @as("INVALID_ASSESSMENT_TEMPLATE_ARN") #INVALIDASSESSMENTTEMPLATEARN | @as("INVALID_ASSESSMENT_TARGET_ARN") #INVALIDASSESSMENTTARGETARN]
type invalidCrossAccountRoleErrorCode = [@as("ROLE_DOES_NOT_HAVE_CORRECT_POLICY") #ROLEDOESNOTHAVECORRECTPOLICY | @as("ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP") #ROLEDOESNOTEXISTORINVALIDTRUSTRELATIONSHIP]
type inspectorEvent = [@as("OTHER") #OTHER | @as("FINDING_REPORTED") #FINDINGREPORTED | @as("ASSESSMENT_RUN_STATE_CHANGED") #ASSESSMENTRUNSTATECHANGED | @as("ASSESSMENT_RUN_COMPLETED") #ASSESSMENTRUNCOMPLETED | @as("ASSESSMENT_RUN_STARTED") #ASSESSMENTRUNSTARTED]
type hostname = string
type findingId = string
type findingCount = int
type failedItemErrorCode = [@as("INTERNAL_ERROR") #INTERNALERROR | @as("LIMIT_EXCEEDED") #LIMITEXCEEDED | @as("ACCESS_DENIED") #ACCESSDENIED | @as("ITEM_DOES_NOT_EXIST") #ITEMDOESNOTEXIST | @as("DUPLICATE_ARN") #DUPLICATEARN | @as("INVALID_ARN") #INVALIDARN]
type errorMessage = string
type bool_ = bool
type autoScalingGroup = string
type attributeValue = string
type attributeKey = string
type assetType = [@as("ec2-instance") #Ec2Instance]
type assessmentTemplateName = string
type assessmentTargetName = string
type assessmentRunState = [@as("CANCELED") #CANCELED | @as("COMPLETED_WITH_ERRORS") #COMPLETEDWITHERRORS | @as("COMPLETED") #COMPLETED | @as("ERROR") #ERROR | @as("FAILED") #FAILED | @as("EVALUATING_RULES") #EVALUATINGRULES | @as("START_EVALUATING_RULES_PENDING") #STARTEVALUATINGRULESPENDING | @as("DATA_COLLECTED") #DATACOLLECTED | @as("STOP_DATA_COLLECTION_PENDING") #STOPDATACOLLECTIONPENDING | @as("COLLECTING_DATA") #COLLECTINGDATA | @as("START_DATA_COLLECTION_IN_PROGRESS") #STARTDATACOLLECTIONINPROGRESS | @as("START_DATA_COLLECTION_PENDING") #STARTDATACOLLECTIONPENDING | @as("CREATED") #CREATED]
type assessmentRunNotificationSnsStatusCode = [@as("INTERNAL_ERROR") #INTERNALERROR | @as("ACCESS_DENIED") #ACCESSDENIED | @as("TOPIC_DOES_NOT_EXIST") #TOPICDOESNOTEXIST | @as("SUCCESS") #SUCCESS]
type assessmentRunName = string
type assessmentRunDuration = int
type arnCount = int
type arn = string
type amiId = string
type agentVersion = string
type agentId = string
type agentHealthCode = [@as("UNKNOWN") #UNKNOWN | @as("THROTTLED") #THROTTLED | @as("UNHEALTHY") #UNHEALTHY | @as("SHUTDOWN") #SHUTDOWN | @as("RUNNING") #RUNNING | @as("IDLE") #IDLE]
type agentHealth = [@as("UNKNOWN") #UNKNOWN | @as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type accessDeniedErrorCode = [@as("ACCESS_DENIED_TO_IAM_ROLE") #ACCESSDENIEDTOIAMROLE | @as("ACCESS_DENIED_TO_SNS_TOPIC") #ACCESSDENIEDTOSNSTOPIC | @as("ACCESS_DENIED_TO_RULES_PACKAGE") #ACCESSDENIEDTORULESPACKAGE | @as("ACCESS_DENIED_TO_RESOURCE_GROUP") #ACCESSDENIEDTORESOURCEGROUP | @as("ACCESS_DENIED_TO_FINDING") #ACCESSDENIEDTOFINDING | @as("ACCESS_DENIED_TO_ASSESSMENT_RUN") #ACCESSDENIEDTOASSESSMENTRUN | @as("ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE") #ACCESSDENIEDTOASSESSMENTTEMPLATE | @as("ACCESS_DENIED_TO_ASSESSMENT_TARGET") #ACCESSDENIEDTOASSESSMENTTARGET]
type userAttributeKeyList = array<attributeKey>
type timestampRange = {
endDate: option<timestamp_>,
beginDate: option<timestamp_>
}
type telemetryMetadata = {
dataSize: option<long>,
count: long,
messageType: messageType
}
type tag = {
value: option<tagValue>,
key: tagKey
}
type severityList = array<severity>
type securityGroup = {
groupId: option<text>,
groupName: option<text>
}
type scope = {
value: option<scopeValue>,
key: option<scopeType>
}
type rulesPackage = {
description: option<text>,
provider: providerName,
version: version,
name: rulesPackageName,
arn: arn
}
type ruleNameList = array<ruleName>
type resourceGroupTag = {
value: option<tagValue>,
key: tagKey
}
type privateIp = {
privateIpAddress: option<text>,
privateDnsName: option<text>
}
type listReturnedArnList = array<arn>
type listParentArnList = array<arn>
type ipv6Addresses = array<text>
type ipv4AddressList = array<ipv4Address>
type inspectorServiceAttributes = {
rulesPackageArn: option<arn>,
assessmentRunArn: option<arn>,
schemaVersion: numericVersion
}
type filterRulesPackageArnList = array<arn>
type failedItemDetails = {
retryable: bool_,
failureCode: failedItemErrorCode
}
type eventSubscription = {
subscribedAt: timestamp_,
event: inspectorEvent
}
type durationRange = {
maxSeconds: option<assessmentRunDuration>,
minSeconds: option<assessmentRunDuration>
}
type batchDescribeExclusionsArnList = array<arn>
type batchDescribeArnList = array<arn>
type autoScalingGroupList = array<autoScalingGroup>
type attribute = {
value: option<attributeValue>,
key: attributeKey
}
type assessmentTemplateRulesPackageArnList = array<arn>
type assessmentTargetFilter = {
assessmentTargetNamePattern: option<namePattern>
}
type assessmentTarget = {
updatedAt: timestamp_,
createdAt: timestamp_,
resourceGroupArn: option<arn>,
name: assessmentTargetName,
arn: arn
}
type assessmentRunStateList = array<assessmentRunState>
type assessmentRunStateChange = {
state: assessmentRunState,
stateChangedAt: timestamp_
}
type assessmentRunNotification = {
snsPublishStatusCode: option<assessmentRunNotificationSnsStatusCode>,
snsTopicArn: option<arn>,
error: bool_,
message: option<message>,
event: inspectorEvent,
date: timestamp_
}
type assessmentRunInProgressArnList = array<arn>
type assessmentRunFindingCounts = Js.Dict.t< findingCount>
type assessmentRulesPackageArnList = array<arn>
type agentPreview = {
ipv4Address: option<ipv4Address>,
kernelVersion: option<kernelVersion>,
operatingSystem: option<operatingSystem>,
agentVersion: option<agentVersion>,
agentHealth: option<agentHealth>,
autoScalingGroup: option<autoScalingGroup>,
agentId: agentId,
hostname: option<hostname>
}
type agentIdList = array<agentId>
type agentHealthList = array<agentHealth>
type agentHealthCodeList = array<agentHealthCode>
type agentAlreadyRunningAssessment = {
assessmentRunArn: arn,
agentId: agentId
}
type addRemoveAttributesFindingArnList = array<arn>
type userAttributeList = array<attribute>
type telemetryMetadataList = array<telemetryMetadata>
type tags = array<tag>
type tagList_ = array<tag>
type securityGroups = array<securityGroup>
type scopeList = array<scope>
type rulesPackageList = array<rulesPackage>
type resourceGroupTags = array<resourceGroupTag>
type privateIpAddresses = array<privateIp>
type failedItems = Js.Dict.t< failedItemDetails>
type eventSubscriptionList = array<eventSubscription>
type attributeList = array<attribute>
type assessmentTemplateFilter = {
rulesPackageArns: option<filterRulesPackageArnList>,
durationRange: option<durationRange>,
namePattern: option<namePattern>
}
type assessmentTargetList = array<assessmentTarget>
type assessmentRunStateChangeList = array<assessmentRunStateChange>
type assessmentRunNotificationList = array<assessmentRunNotification>
type assessmentRunFilter = {
stateChangeTimeRange: option<timestampRange>,
completionTimeRange: option<timestampRange>,
startTimeRange: option<timestampRange>,
rulesPackageArns: option<filterRulesPackageArnList>,
durationRange: option<durationRange>,
states: option<assessmentRunStateList>,
namePattern: option<namePattern>
}
type agentPreviewList = array<agentPreview>
type agentFilter = {
agentHealthCodes: agentHealthCodeList,
agentHealths: agentHealthList
}
type agentAlreadyRunningAssessmentList = array<agentAlreadyRunningAssessment>
type subscription = {
eventSubscriptions: eventSubscriptionList,
topicArn: arn,
resourceArn: arn
}
type resourceGroup = {
createdAt: timestamp_,
tags: resourceGroupTags,
arn: arn
}
type networkInterface = {
securityGroups: option<securityGroups>,
ipv6Addresses: option<ipv6Addresses>,
publicIp: option<text>,
publicDnsName: option<text>,
privateIpAddresses: option<privateIpAddresses>,
privateIpAddress: option<text>,
privateDnsName: option<text>,
vpcId: option<text>,
subnetId: option<text>,
networkInterfaceId: option<text>
}
type findingFilter = {
creationTimeRange: option<timestampRange>,
userAttributes: option<attributeList>,
attributes: option<attributeList>,
rulesPackageArns: option<filterRulesPackageArnList>,
severities: option<severityList>,
ruleNames: option<ruleNameList>,
autoScalingGroups: option<autoScalingGroupList>,
agentIds: option<agentIdList>
}
type exclusionPreview = {
attributes: option<attributeList>,
scopes: scopeList,
recommendation: text,
description: text,
title: text
}
type exclusion = {
attributes: option<attributeList>,
scopes: scopeList,
recommendation: text,
description: text,
title: text,
arn: arn
}
type assessmentTemplate = {
createdAt: timestamp_,
assessmentRunCount: arnCount,
lastAssessmentRunArn: option<arn>,
userAttributesForFindings: userAttributeList,
rulesPackageArns: assessmentTemplateRulesPackageArnList,
durationInSeconds: assessmentRunDuration,
assessmentTargetArn: arn,
name: assessmentTemplateName,
arn: arn
}
type assessmentRunAgent = {
telemetryMetadata: telemetryMetadataList,
autoScalingGroup: option<autoScalingGroup>,
agentHealthDetails: option<message>,
agentHealthCode: agentHealthCode,
agentHealth: agentHealth,
assessmentRunArn: arn,
agentId: agentId
}
type assessmentRun = {
findingCounts: assessmentRunFindingCounts,
notifications: assessmentRunNotificationList,
stateChanges: assessmentRunStateChangeList,
dataCollected: bool_,
stateChangedAt: timestamp_,
completedAt: option<timestamp_>,
startedAt: option<timestamp_>,
createdAt: timestamp_,
userAttributesForFindings: userAttributeList,
rulesPackageArns: assessmentRulesPackageArnList,
durationInSeconds: assessmentRunDuration,
state: assessmentRunState,
assessmentTemplateArn: arn,
name: assessmentRunName,
arn: arn
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
networkInterfaces: option<networkInterfaces>,
tags: option<tags>,
ipv4Addresses: option<ipv4AddressList>,
hostname: option<hostname>,
amiId: option<amiId>,
autoScalingGroup: option<autoScalingGroup>,
agentId: option<agentId>,
schemaVersion: numericVersion
}
type finding = {
updatedAt: timestamp_,
createdAt: timestamp_,
userAttributes: userAttributeList,
attributes: attributeList,
indicatorOfCompromise: option<bool_>,
confidence: option<iocConfidence>,
numericSeverity: option<numericSeverity>,
severity: option<severity>,
recommendation: option<text>,
description: option<text>,
title: option<text>,
id: option<findingId>,
assetAttributes: option<assetAttributes>,
assetType: option<assetType>,
serviceAttributes: option<inspectorServiceAttributes>,
service: option<serviceName>,
schemaVersion: option<numericVersion>,
arn: arn
}
type findingList = array<finding>
type awsServiceClient;
@module("@aws-sdk/client-inspector") @new external createClient: unit => awsServiceClient = "InspectorClient";
module UpdateAssessmentTarget = {
  type t;
  type request = {
resourceGroupArn: option<arn>,
assessmentTargetName: assessmentTargetName,
assessmentTargetArn: arn
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "UpdateAssessmentTargetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UnsubscribeFromEvent = {
  type t;
  type request = {
topicArn: arn,
event: inspectorEvent,
resourceArn: arn
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "UnsubscribeFromEventCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SubscribeToEvent = {
  type t;
  type request = {
topicArn: arn,
event: inspectorEvent,
resourceArn: arn
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "SubscribeToEventCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StopAssessmentRun = {
  type t;
  type request = {
stopAction: option<stopAction>,
assessmentRunArn: arn
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "StopAssessmentRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RegisterCrossAccountAccessRole = {
  type t;
  type request = {
roleArn: arn
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "RegisterCrossAccountAccessRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeCrossAccountAccessRole = {
  type t;
  
  type response = {
registeredAt: timestamp_,
valid: bool_,
roleArn: arn
}
  @module("@aws-sdk/client-inspector") @new external new_: (unit) => t = "DescribeCrossAccountAccessRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateExclusionsPreview = {
  type t;
  type request = {
assessmentTemplateArn: arn
}
  type response = {
previewToken: uuid
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "CreateExclusionsPreviewCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAssessmentTarget = {
  type t;
  type request = {
resourceGroupArn: option<arn>,
assessmentTargetName: assessmentTargetName
}
  type response = {
assessmentTargetArn: arn
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "CreateAssessmentTargetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRulesPackages = {
  type t;
  type request = {
maxResults: option<listMaxResults>,
nextToken: option<paginationToken>
}
  type response = {
nextToken: option<paginationToken>,
rulesPackageArns: listReturnedArnList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListRulesPackagesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListExclusions = {
  type t;
  type request = {
maxResults: option<listMaxResults>,
nextToken: option<paginationToken>,
assessmentRunArn: arn
}
  type response = {
nextToken: option<paginationToken>,
exclusionArns: listReturnedArnList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListExclusionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssessmentTargets = {
  type t;
  type request = {
maxResults: option<listMaxResults>,
nextToken: option<paginationToken>,
filter: option<assessmentTargetFilter>
}
  type response = {
nextToken: option<paginationToken>,
assessmentTargetArns: listReturnedArnList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListAssessmentTargetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAssessmentReport = {
  type t;
  type request = {
reportType: reportType,
reportFileFormat: reportFileFormat,
assessmentRunArn: arn
}
  type response = {
url: option<url>,
status: reportStatus
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "GetAssessmentReportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAssessmentTemplate = {
  type t;
  type request = {
assessmentTemplateArn: arn
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DeleteAssessmentTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteAssessmentTarget = {
  type t;
  type request = {
assessmentTargetArn: arn
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DeleteAssessmentTargetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteAssessmentRun = {
  type t;
  type request = {
assessmentRunArn: arn
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DeleteAssessmentRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StartAssessmentRun = {
  type t;
  type request = {
assessmentRunName: option<assessmentRunName>,
assessmentTemplateArn: arn
}
  type response = {
assessmentRunArn: arn
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "StartAssessmentRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetTagsForResource = {
  type t;
  type request = {
tags: option<tagList_>,
resourceArn: arn
}
  
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "SetTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RemoveAttributesFromFindings = {
  type t;
  type request = {
attributeKeys: userAttributeKeyList,
findingArns: addRemoveAttributesFindingArnList
}
  type response = {
failedItems: failedItems
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "RemoveAttributesFromFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PreviewAgents = {
  type t;
  type request = {
maxResults: option<previewAgentsMaxResults>,
nextToken: option<paginationToken>,
previewAgentsArn: arn
}
  type response = {
nextToken: option<paginationToken>,
agentPreviews: agentPreviewList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "PreviewAgentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: arn
}
  type response = {
tags: tagList_
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssessmentTemplates = {
  type t;
  type request = {
maxResults: option<listMaxResults>,
nextToken: option<paginationToken>,
filter: option<assessmentTemplateFilter>,
assessmentTargetArns: option<listParentArnList>
}
  type response = {
nextToken: option<paginationToken>,
assessmentTemplateArns: listReturnedArnList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListAssessmentTemplatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssessmentRuns = {
  type t;
  type request = {
maxResults: option<listMaxResults>,
nextToken: option<paginationToken>,
filter: option<assessmentRunFilter>,
assessmentTemplateArns: option<listParentArnList>
}
  type response = {
nextToken: option<paginationToken>,
assessmentRunArns: listReturnedArnList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListAssessmentRunsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTelemetryMetadata = {
  type t;
  type request = {
assessmentRunArn: arn
}
  type response = {
telemetryMetadata: telemetryMetadataList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "GetTelemetryMetadataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRulesPackages = {
  type t;
  type request = {
locale: option<locale>,
rulesPackageArns: batchDescribeArnList
}
  type response = {
failedItems: failedItems,
rulesPackages: rulesPackageList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeRulesPackagesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAssessmentTargets = {
  type t;
  type request = {
assessmentTargetArns: batchDescribeArnList
}
  type response = {
failedItems: failedItems,
assessmentTargets: assessmentTargetList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeAssessmentTargetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateResourceGroup = {
  type t;
  type request = {
resourceGroupTags: resourceGroupTags
}
  type response = {
resourceGroupArn: arn
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "CreateResourceGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAssessmentTemplate = {
  type t;
  type request = {
userAttributesForFindings: option<userAttributeList>,
rulesPackageArns: assessmentTemplateRulesPackageArnList,
durationInSeconds: assessmentRunDuration,
assessmentTemplateName: assessmentTemplateName,
assessmentTargetArn: arn
}
  type response = {
assessmentTemplateArn: arn
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "CreateAssessmentTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddAttributesToFindings = {
  type t;
  type request = {
attributes: userAttributeList,
findingArns: addRemoveAttributesFindingArnList
}
  type response = {
failedItems: failedItems
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "AddAttributesToFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFindings = {
  type t;
  type request = {
maxResults: option<listMaxResults>,
nextToken: option<paginationToken>,
filter: option<findingFilter>,
assessmentRunArns: option<listParentArnList>
}
  type response = {
nextToken: option<paginationToken>,
findingArns: listReturnedArnList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEventSubscriptions = {
  type t;
  type request = {
maxResults: option<listEventSubscriptionsMaxResults>,
nextToken: option<paginationToken>,
resourceArn: option<arn>
}
  type response = {
nextToken: option<paginationToken>,
subscriptions: subscriptionList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListEventSubscriptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssessmentRunAgents = {
  type t;
  type request = {
maxResults: option<listMaxResults>,
nextToken: option<paginationToken>,
filter: option<agentFilter>,
assessmentRunArn: arn
}
  type response = {
nextToken: option<paginationToken>,
assessmentRunAgents: assessmentRunAgentList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "ListAssessmentRunAgentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetExclusionsPreview = {
  type t;
  type request = {
locale: option<locale>,
maxResults: option<listMaxResults>,
nextToken: option<paginationToken>,
previewToken: uuid,
assessmentTemplateArn: arn
}
  type response = {
nextToken: option<paginationToken>,
exclusionPreviews: option<exclusionPreviewList>,
previewStatus: previewStatus
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "GetExclusionsPreviewCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeResourceGroups = {
  type t;
  type request = {
resourceGroupArns: batchDescribeArnList
}
  type response = {
failedItems: failedItems,
resourceGroups: resourceGroupList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeResourceGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeExclusions = {
  type t;
  type request = {
locale: option<locale>,
exclusionArns: batchDescribeExclusionsArnList
}
  type response = {
failedItems: failedItems,
exclusions: exclusionMap
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeExclusionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAssessmentTemplates = {
  type t;
  type request = {
assessmentTemplateArns: batchDescribeArnList
}
  type response = {
failedItems: failedItems,
assessmentTemplates: assessmentTemplateList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeAssessmentTemplatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAssessmentRuns = {
  type t;
  type request = {
assessmentRunArns: batchDescribeArnList
}
  type response = {
failedItems: failedItems,
assessmentRuns: assessmentRunList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeAssessmentRunsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeFindings = {
  type t;
  type request = {
locale: option<locale>,
findingArns: batchDescribeArnList
}
  type response = {
failedItems: failedItems,
findings: findingList
}
  @module("@aws-sdk/client-inspector") @new external new_: (request) => t = "DescribeFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
