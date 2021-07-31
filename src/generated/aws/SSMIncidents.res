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
type url = string
type uuid = string
type timelineEventType = string
type timelineEventSort = [@as("EVENT_TIME") #EVENTTIME]
type tagValue = string
type tagKey = string
type stringList = array<string_>
type ssmTargetAccount = [@as("IMPACTED_ACCOUNT") #IMPACTEDACCOUNT | @as("RESPONSE_PLAN_OWNER_ACCOUNT") #RESPONSEPLANOWNERACCOUNT]
type ssmParameterValues = array<string_>
type ssmContactsArn = string
type sseKmsKey = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type snsArn = string
type serviceCode = [@as("ssm-incidents") #SsmIncidents]
type roleArn = string
type responsePlanName = string
type responsePlanDisplayName = string
type resourceType = [@as("RESOURCE_POLICY") #RESOURCEPOLICY | @as("REPLICATION_SET") #REPLICATIONSET | @as("TIMELINE_EVENT") #TIMELINEEVENT | @as("INCIDENT_RECORD") #INCIDENTRECORD | @as("RESPONSE_PLAN") #RESPONSEPLAN]
type replicationSetStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("CREATING") #CREATING | @as("ACTIVE") #ACTIVE]
type regionStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("CREATING") #CREATING | @as("ACTIVE") #ACTIVE]
type regionName = string
type rawData = string
type policyId = string
type policy = string
type nextToken = string
type metricDefinition = string
type maxResults = int
type itemType = [@as("OTHER") #OTHER | @as("ATTACHMENT") #ATTACHMENT | @as("PARENT") #PARENT | @as("METRIC") #METRIC | @as("INCIDENT") #INCIDENT | @as("ANALYSIS") #ANALYSIS]
type integerList = array<integer_>
type incidentTitle = string
type incidentSummary = string
type incidentSource = string
type incidentRecordStatus = [@as("RESOLVED") #RESOLVED | @as("OPEN") #OPEN]
type impact = int
type exceptionMessage = string
type eventData = string
type emptyChatChannel = unit
type dedupeString = string
type clientToken = string
type arn = string
type triggerDetails = {
rawData: option<rawData>,
@as("timestamp") timestamp_: timestamp_,
triggerArn: option<arn>,
source: incidentSource
}
type timelineEvent = {
eventData: eventData,
eventType: timelineEventType,
eventUpdatedTime: timestamp_,
eventTime: timestamp_,
eventId: uuid,
incidentRecordArn: arn
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type ssmParameters = Js.Dict.t< ssmParameterValues>
type responsePlanSummary = {
displayName: option<responsePlanDisplayName>,
name: responsePlanName,
arn: arn
}
type resourcePolicy = {
ramResourceShareRegion: string_,
policyId: policyId,
policyDocument: policy
}
type replicationSetArnList = array<arn>
type regionMapInputValue = {
sseKmsKeyId: option<sseKmsKey>
}
type regionInfo = {
statusUpdateDateTime: timestamp_,
statusMessage: option<string_>,
status: regionStatus,
sseKmsKeyId: option<sseKmsKey>
}
type notificationTargetItem = SnsTopicArn(arn);
type itemValue = MetricDefinition(metricDefinition) | Url(url) | Arn(arn);
type incidentRecordSource = {
source: incidentSource,
resourceArn: option<arn>,
invokedBy: option<arn>,
createdBy: arn
}
type eventSummary = {
eventType: timelineEventType,
eventUpdatedTime: timestamp_,
eventTime: timestamp_,
eventId: uuid,
incidentRecordArn: arn
}
type engagementSet = array<ssmContactsArn>
type deleteRegionAction = {
regionName: regionName
}
type chatbotSnsConfigurationSet = array<snsArn>
type automationExecution = SsmExecutionArn(arn);
type attributeValueList = IntegerValues(integerList) | StringValues(stringList);
type addRegionAction = {
sseKmsKeyId: option<sseKmsKey>,
regionName: regionName
}
type updateReplicationSetAction = DeleteRegionAction(deleteRegionAction) | AddRegionAction(addRegionAction);
type ssmAutomation = {
parameters: option<ssmParameters>,
targetAccount: option<ssmTargetAccount>,
documentVersion: option<string_>,
documentName: string_,
roleArn: roleArn
}
type responsePlanSummaryList = array<responsePlanSummary>
type resourcePolicyList = array<resourcePolicy>
type regionMapInput = Js.Dict.t< regionMapInputValue>
type regionInfoMap = Js.Dict.t< regionInfo>
type notificationTargetSet = array<notificationTargetItem>
type itemIdentifier = {
@as("type") type_: itemType,
value: itemValue
}
type incidentRecordSummary = {
incidentRecordSource: incidentRecordSource,
resolvedTime: option<timestamp_>,
creationTime: timestamp_,
impact: impact,
status: incidentRecordStatus,
title: incidentTitle,
arn: arn
}
type eventSummaryList = array<eventSummary>
type condition = Equals(attributeValueList) | After(timestamp_) | Before(timestamp_);
type chatChannel = ChatbotSns(chatbotSnsConfigurationSet) | Empty(emptyChatChannel);
type automationExecutionSet = array<automationExecution>
type updateActionList = array<updateReplicationSetAction>
type replicationSet = {
lastModifiedBy: arn,
lastModifiedTime: timestamp_,
createdBy: arn,
createdTime: timestamp_,
deletionProtected: boolean_,
status: replicationSetStatus,
regionMap: regionInfoMap
}
type relatedItem = {
title: option<string_>,
identifier: itemIdentifier
}
type incidentTemplate = {
notificationTargets: option<notificationTargetSet>,
dedupeString: option<dedupeString>,
summary: option<incidentSummary>,
impact: impact,
title: incidentTitle
}
type incidentRecordSummaryList = array<incidentRecordSummary>
type incidentRecord = {
notificationTargets: option<notificationTargetSet>,
chatChannel: option<chatChannel>,
dedupeString: dedupeString,
incidentRecordSource: incidentRecordSource,
automationExecutions: option<automationExecutionSet>,
lastModifiedBy: arn,
lastModifiedTime: timestamp_,
resolvedTime: option<timestamp_>,
creationTime: timestamp_,
impact: impact,
status: incidentRecordStatus,
summary: option<incidentSummary>,
title: incidentTitle,
arn: arn
}
type filter = {
condition: condition,
key: string_
}
type action = SsmAutomation(ssmAutomation);
type relatedItemsUpdate = ItemToRemove(itemIdentifier) | ItemToAdd(relatedItem);
type relatedItemList = array<relatedItem>
type filterList = array<filter>
type actionsList = array<action>
type awsServiceClient;
@module("@aws-sdk/client-ssm-incidents") @new external createClient: unit => awsServiceClient = "SSMIncidentsClient";
module UpdateTimelineEvent = {
  type t;
  type request = {
eventData: option<eventData>,
eventType: option<timelineEventType>,
eventTime: option<timestamp_>,
eventId: uuid,
incidentRecordArn: arn,
clientToken: clientToken
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UpdateTimelineEventCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDeletionProtection = {
  type t;
  type request = {
clientToken: option<clientToken>,
deletionProtected: boolean_,
arn: arn
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UpdateDeletionProtectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutResourcePolicy = {
  type t;
  type request = {
policy: policy,
resourceArn: arn
}
  type response = {
policyId: policyId
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "PutResourcePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTimelineEvent = {
  type t;
  type request = {
eventId: uuid,
incidentRecordArn: arn
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "DeleteTimelineEventCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteResponsePlan = {
  type t;
  type request = {
arn: arn
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "DeleteResponsePlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteResourcePolicy = {
  type t;
  type request = {
policyId: policyId,
resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "DeleteResourcePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationSet = {
  type t;
  type request = {
arn: arn
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "DeleteReplicationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteIncidentRecord = {
  type t;
  type request = {
arn: arn
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "DeleteIncidentRecordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTimelineEvent = {
  type t;
  type request = {
eventData: eventData,
eventType: timelineEventType,
eventTime: timestamp_,
incidentRecordArn: arn,
clientToken: clientToken
}
  type response = {
eventId: uuid,
incidentRecordArn: arn
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "CreateTimelineEventCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: string_
}
  type response = {
tags: tagMap
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListReplicationSets = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<maxResults>
}
  type response = {
nextToken: option<nextToken>,
replicationSetArns: replicationSetArnList
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "ListReplicationSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTimelineEvent = {
  type t;
  type request = {
eventId: uuid,
incidentRecordArn: arn
}
  type response = {
event: timelineEvent
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "GetTimelineEventCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateIncidentRecord = {
  type t;
  type request = {
notificationTargets: option<notificationTargetSet>,
chatChannel: option<chatChannel>,
status: option<incidentRecordStatus>,
impact: option<impact>,
summary: option<incidentSummary>,
title: option<incidentTitle>,
arn: arn,
clientToken: option<clientToken>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UpdateIncidentRecordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResponsePlans = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<maxResults>
}
  type response = {
nextToken: option<nextToken>,
responsePlanSummaries: responsePlanSummaryList
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "ListResponsePlansCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResourcePolicies = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<maxResults>,
resourceArn: arn
}
  type response = {
nextToken: option<nextToken>,
resourcePolicies: resourcePolicyList
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "GetResourcePoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationSet = {
  type t;
  type request = {
clientToken: option<clientToken>,
regions: regionMapInput
}
  type response = {
arn: arn
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "CreateReplicationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateReplicationSet = {
  type t;
  type request = {
clientToken: option<clientToken>,
actions: updateActionList,
arn: arn
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UpdateReplicationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetReplicationSet = {
  type t;
  type request = {
arn: arn
}
  type response = {
replicationSet: replicationSet
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "GetReplicationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIncidentRecord = {
  type t;
  type request = {
arn: arn
}
  type response = {
incidentRecord: incidentRecord
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "GetIncidentRecordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateResponsePlan = {
  type t;
  type request = {
actions: option<actionsList>,
engagements: option<engagementSet>,
chatChannel: option<chatChannel>,
incidentTemplateNotificationTargets: option<notificationTargetSet>,
incidentTemplateDedupeString: option<dedupeString>,
incidentTemplateSummary: option<incidentSummary>,
incidentTemplateImpact: option<impact>,
incidentTemplateTitle: option<incidentTitle>,
displayName: option<responsePlanDisplayName>,
arn: arn,
clientToken: option<clientToken>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UpdateResponsePlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRelatedItems = {
  type t;
  type request = {
relatedItemsUpdate: relatedItemsUpdate,
incidentRecordArn: arn,
clientToken: option<clientToken>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UpdateRelatedItemsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartIncident = {
  type t;
  type request = {
relatedItems: option<relatedItemList>,
triggerDetails: option<triggerDetails>,
impact: option<impact>,
title: option<incidentTitle>,
responsePlanArn: arn,
clientToken: option<clientToken>
}
  type response = {
incidentRecordArn: arn
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "StartIncidentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTimelineEvents = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<maxResults>,
sortOrder: option<sortOrder>,
sortBy: option<timelineEventSort>,
filters: option<filterList>,
incidentRecordArn: arn
}
  type response = {
nextToken: option<nextToken>,
eventSummaries: eventSummaryList
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "ListTimelineEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRelatedItems = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<maxResults>,
incidentRecordArn: arn
}
  type response = {
nextToken: option<nextToken>,
relatedItems: relatedItemList
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "ListRelatedItemsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIncidentRecords = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<maxResults>,
filters: option<filterList>
}
  type response = {
nextToken: option<nextToken>,
incidentRecordSummaries: incidentRecordSummaryList
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "ListIncidentRecordsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResponsePlan = {
  type t;
  type request = {
arn: arn
}
  type response = {
actions: option<actionsList>,
engagements: option<engagementSet>,
chatChannel: option<chatChannel>,
incidentTemplate: incidentTemplate,
displayName: option<responsePlanDisplayName>,
name: responsePlanName,
arn: arn
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "GetResponsePlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateResponsePlan = {
  type t;
  type request = {
tags: option<tagMap>,
actions: option<actionsList>,
engagements: option<engagementSet>,
chatChannel: option<chatChannel>,
incidentTemplate: incidentTemplate,
displayName: option<responsePlanDisplayName>,
name: responsePlanName,
clientToken: option<clientToken>
}
  type response = {
arn: arn
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "CreateResponsePlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
