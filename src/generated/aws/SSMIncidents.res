type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type url = string
type uUID = string
type timelineEventType = string
type timelineEventSort = [@as("EVENT_TIME") #EVENT_TIME]
type tagValue = string
type tagKey = string
type stringList = array<apiString>
type ssmTargetAccount = [@as("IMPACTED_ACCOUNT") #IMPACTED_ACCOUNT | @as("RESPONSE_PLAN_OWNER_ACCOUNT") #RESPONSE_PLAN_OWNER_ACCOUNT]
type ssmParameterValues = array<apiString>
type ssmContactsArn = string
type sseKmsKey = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type snsArn = string
type serviceCode = [@as("ssm-incidents") #ssm_incidents]
type roleArn = string
type responsePlanName = string
type responsePlanDisplayName = string
type resourceType = [@as("RESOURCE_POLICY") #RESOURCE_POLICY | @as("REPLICATION_SET") #REPLICATION_SET | @as("TIMELINE_EVENT") #TIMELINE_EVENT | @as("INCIDENT_RECORD") #INCIDENT_RECORD | @as("RESPONSE_PLAN") #RESPONSE_PLAN]
type replicationSetStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("CREATING") #CREATING | @as("ACTIVE") #ACTIVE]
type regionStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("CREATING") #CREATING | @as("ACTIVE") #ACTIVE]
type regionName = string
type rawData = string
type policyId = string
type policy = string
type nextToken = string
type metricDefinition = string
type maxResults = int;
type itemType = [@as("OTHER") #OTHER | @as("ATTACHMENT") #ATTACHMENT | @as("PARENT") #PARENT | @as("METRIC") #METRIC | @as("INCIDENT") #INCIDENT | @as("ANALYSIS") #ANALYSIS]
type integerList = array<apiInteger>
type incidentTitle = string
type incidentSummary = string
type incidentSource = string
type incidentRecordStatus = [@as("RESOLVED") #RESOLVED | @as("OPEN") #OPEN]
type impact = int;
type exceptionMessage = string
type eventData = string
type emptyChatChannel = unit
type dedupeString = string
type clientToken = string
type arn = string
type triggerDetails = {
@as("rawData") rawData: rawData,
@as("timestamp") timestamp: option<apiTimestamp>,
@as("triggerArn") triggerArn: arn,
@as("source") source: option<incidentSource>
}
type timelineEvent = {
@as("eventData") eventData: option<eventData>,
@as("eventType") eventType: option<timelineEventType>,
@as("eventUpdatedTime") eventUpdatedTime: option<apiTimestamp>,
@as("eventTime") eventTime: option<apiTimestamp>,
@as("eventId") eventId: option<uUID>,
@as("incidentRecordArn") incidentRecordArn: option<arn>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type ssmParameters = Js.Dict.t< ssmParameterValues>
type responsePlanSummary = {
@as("displayName") displayName: responsePlanDisplayName,
@as("name") name: option<responsePlanName>,
@as("arn") arn: option<arn>
}
type resourcePolicy = {
@as("ramResourceShareRegion") ramResourceShareRegion: option<apiString>,
@as("policyId") policyId: option<policyId>,
@as("policyDocument") policyDocument: option<policy>
}
type replicationSetArnList = array<arn>
type regionMapInputValue = {
@as("sseKmsKeyId") sseKmsKeyId: sseKmsKey
}
type regionInfo = {
@as("statusUpdateDateTime") statusUpdateDateTime: option<apiTimestamp>,
@as("statusMessage") statusMessage: apiString,
@as("status") status: option<regionStatus>,
@as("sseKmsKeyId") sseKmsKeyId: sseKmsKey
}
type notificationTargetItem = SnsTopicArn(arn);
type itemValue = MetricDefinition(metricDefinition) | Url(url) | Arn(arn);
type incidentRecordSource = {
@as("source") source: option<incidentSource>,
@as("resourceArn") resourceArn: arn,
@as("invokedBy") invokedBy: arn,
@as("createdBy") createdBy: option<arn>
}
type eventSummary = {
@as("eventType") eventType: option<timelineEventType>,
@as("eventUpdatedTime") eventUpdatedTime: option<apiTimestamp>,
@as("eventTime") eventTime: option<apiTimestamp>,
@as("eventId") eventId: option<uUID>,
@as("incidentRecordArn") incidentRecordArn: option<arn>
}
type engagementSet = array<ssmContactsArn>
type deleteRegionAction = {
@as("regionName") regionName: option<regionName>
}
type chatbotSnsConfigurationSet = array<snsArn>
type automationExecution = SsmExecutionArn(arn);
type attributeValueList = IntegerValues(integerList) | StringValues(stringList);
type addRegionAction = {
@as("sseKmsKeyId") sseKmsKeyId: sseKmsKey,
@as("regionName") regionName: option<regionName>
}
type updateReplicationSetAction = DeleteRegionAction(deleteRegionAction) | AddRegionAction(addRegionAction);
type ssmAutomation = {
@as("parameters") parameters: ssmParameters,
@as("targetAccount") targetAccount: ssmTargetAccount,
@as("documentVersion") documentVersion: apiString,
@as("documentName") documentName: option<apiString>,
@as("roleArn") roleArn: option<roleArn>
}
type responsePlanSummaryList = array<responsePlanSummary>
type resourcePolicyList = array<resourcePolicy>
type regionMapInput = Js.Dict.t< regionMapInputValue>
type regionInfoMap = Js.Dict.t< regionInfo>
type notificationTargetSet = array<notificationTargetItem>
type itemIdentifier = {
@as("type") type_: option<itemType>,
@as("value") value: option<itemValue>
}
type incidentRecordSummary = {
@as("incidentRecordSource") incidentRecordSource: option<incidentRecordSource>,
@as("resolvedTime") resolvedTime: apiTimestamp,
@as("creationTime") creationTime: option<apiTimestamp>,
@as("impact") impact: option<impact>,
@as("status") status: option<incidentRecordStatus>,
@as("title") title: option<incidentTitle>,
@as("arn") arn: option<arn>
}
type eventSummaryList = array<eventSummary>
type condition = Equals(attributeValueList) | After(apiTimestamp) | Before(apiTimestamp);
type chatChannel = ChatbotSns(chatbotSnsConfigurationSet) | Empty(emptyChatChannel);
type automationExecutionSet = array<automationExecution>
type updateActionList = array<updateReplicationSetAction>
type replicationSet = {
@as("lastModifiedBy") lastModifiedBy: option<arn>,
@as("lastModifiedTime") lastModifiedTime: option<apiTimestamp>,
@as("createdBy") createdBy: option<arn>,
@as("createdTime") createdTime: option<apiTimestamp>,
@as("deletionProtected") deletionProtected: option<apiBoolean>,
@as("status") status: option<replicationSetStatus>,
@as("regionMap") regionMap: option<regionInfoMap>
}
type relatedItem = {
@as("title") title: apiString,
@as("identifier") identifier: option<itemIdentifier>
}
type incidentTemplate = {
@as("notificationTargets") notificationTargets: notificationTargetSet,
@as("dedupeString") dedupeString: dedupeString,
@as("summary") summary: incidentSummary,
@as("impact") impact: option<impact>,
@as("title") title: option<incidentTitle>
}
type incidentRecordSummaryList = array<incidentRecordSummary>
type incidentRecord = {
@as("notificationTargets") notificationTargets: notificationTargetSet,
@as("chatChannel") chatChannel: chatChannel,
@as("dedupeString") dedupeString: option<dedupeString>,
@as("incidentRecordSource") incidentRecordSource: option<incidentRecordSource>,
@as("automationExecutions") automationExecutions: automationExecutionSet,
@as("lastModifiedBy") lastModifiedBy: option<arn>,
@as("lastModifiedTime") lastModifiedTime: option<apiTimestamp>,
@as("resolvedTime") resolvedTime: apiTimestamp,
@as("creationTime") creationTime: option<apiTimestamp>,
@as("impact") impact: option<impact>,
@as("status") status: option<incidentRecordStatus>,
@as("summary") summary: incidentSummary,
@as("title") title: option<incidentTitle>,
@as("arn") arn: option<arn>
}
type filter = {
@as("condition") condition: option<condition>,
@as("key") key: option<apiString>
}
type action = SsmAutomation(ssmAutomation);
type relatedItemsUpdate = ItemToRemove(itemIdentifier) | ItemToAdd(relatedItem);
type relatedItemList = array<relatedItem>
type filterList = array<filter>
type actionsList = array<action>
type clientType;
@module("@aws-sdk/client-ssm-incidents") @new external createClient: unit => clientType = "SSMIncidentsClient";
module UpdateTimelineEvent = {
  type t;
  type request = {
@as("eventData") eventData: eventData,
@as("eventType") eventType: timelineEventType,
@as("eventTime") eventTime: apiTimestamp,
@as("eventId") eventId: option<uUID>,
@as("incidentRecordArn") incidentRecordArn: option<arn>,
@as("clientToken") clientToken: option<clientToken>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UpdateTimelineEventCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDeletionProtection = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("deletionProtected") deletionProtected: option<apiBoolean>,
@as("arn") arn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UpdateDeletionProtectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutResourcePolicy = {
  type t;
  type request = {
@as("policy") policy: option<policy>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = {
@as("policyId") policyId: option<policyId>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "PutResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTimelineEvent = {
  type t;
  type request = {
@as("eventId") eventId: option<uUID>,
@as("incidentRecordArn") incidentRecordArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "DeleteTimelineEventCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResponsePlan = {
  type t;
  type request = {
@as("arn") arn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "DeleteResponsePlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResourcePolicy = {
  type t;
  type request = {
@as("policyId") policyId: option<policyId>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "DeleteResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationSet = {
  type t;
  type request = {
@as("arn") arn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "DeleteReplicationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteIncidentRecord = {
  type t;
  type request = {
@as("arn") arn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "DeleteIncidentRecordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTimelineEvent = {
  type t;
  type request = {
@as("eventData") eventData: option<eventData>,
@as("eventType") eventType: option<timelineEventType>,
@as("eventTime") eventTime: option<apiTimestamp>,
@as("incidentRecordArn") incidentRecordArn: option<arn>,
@as("clientToken") clientToken: option<clientToken>
}
  type response = {
@as("eventId") eventId: option<uUID>,
@as("incidentRecordArn") incidentRecordArn: option<arn>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "CreateTimelineEventCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<apiString>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<apiString>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<apiString>
}
  type response = {
@as("tags") tags: option<tagMap>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReplicationSets = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("replicationSetArns") replicationSetArns: option<replicationSetArnList>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "ListReplicationSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTimelineEvent = {
  type t;
  type request = {
@as("eventId") eventId: option<uUID>,
@as("incidentRecordArn") incidentRecordArn: option<arn>
}
  type response = {
@as("event") event: option<timelineEvent>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "GetTimelineEventCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateIncidentRecord = {
  type t;
  type request = {
@as("notificationTargets") notificationTargets: notificationTargetSet,
@as("chatChannel") chatChannel: chatChannel,
@as("status") status: incidentRecordStatus,
@as("impact") impact: impact,
@as("summary") summary: incidentSummary,
@as("title") title: incidentTitle,
@as("arn") arn: option<arn>,
@as("clientToken") clientToken: clientToken
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UpdateIncidentRecordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResponsePlans = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("responsePlanSummaries") responsePlanSummaries: option<responsePlanSummaryList>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "ListResponsePlansCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourcePolicies = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("resourceArn") resourceArn: option<arn>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("resourcePolicies") resourcePolicies: option<resourcePolicyList>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "GetResourcePoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationSet = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("regions") regions: option<regionMapInput>
}
  type response = {
@as("arn") arn: option<arn>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "CreateReplicationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateReplicationSet = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("actions") actions: option<updateActionList>,
@as("arn") arn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UpdateReplicationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetReplicationSet = {
  type t;
  type request = {
@as("arn") arn: option<arn>
}
  type response = {
@as("replicationSet") replicationSet: option<replicationSet>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "GetReplicationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIncidentRecord = {
  type t;
  type request = {
@as("arn") arn: option<arn>
}
  type response = {
@as("incidentRecord") incidentRecord: option<incidentRecord>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "GetIncidentRecordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateResponsePlan = {
  type t;
  type request = {
@as("actions") actions: actionsList,
@as("engagements") engagements: engagementSet,
@as("chatChannel") chatChannel: chatChannel,
@as("incidentTemplateNotificationTargets") incidentTemplateNotificationTargets: notificationTargetSet,
@as("incidentTemplateDedupeString") incidentTemplateDedupeString: dedupeString,
@as("incidentTemplateSummary") incidentTemplateSummary: incidentSummary,
@as("incidentTemplateImpact") incidentTemplateImpact: impact,
@as("incidentTemplateTitle") incidentTemplateTitle: incidentTitle,
@as("displayName") displayName: responsePlanDisplayName,
@as("arn") arn: option<arn>,
@as("clientToken") clientToken: clientToken
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UpdateResponsePlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRelatedItems = {
  type t;
  type request = {
@as("relatedItemsUpdate") relatedItemsUpdate: option<relatedItemsUpdate>,
@as("incidentRecordArn") incidentRecordArn: option<arn>,
@as("clientToken") clientToken: clientToken
}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "UpdateRelatedItemsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartIncident = {
  type t;
  type request = {
@as("relatedItems") relatedItems: relatedItemList,
@as("triggerDetails") triggerDetails: triggerDetails,
@as("impact") impact: impact,
@as("title") title: incidentTitle,
@as("responsePlanArn") responsePlanArn: option<arn>,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("incidentRecordArn") incidentRecordArn: option<arn>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "StartIncidentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTimelineEvents = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("sortOrder") sortOrder: sortOrder,
@as("sortBy") sortBy: timelineEventSort,
@as("filters") filters: filterList,
@as("incidentRecordArn") incidentRecordArn: option<arn>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("eventSummaries") eventSummaries: option<eventSummaryList>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "ListTimelineEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRelatedItems = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("incidentRecordArn") incidentRecordArn: option<arn>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("relatedItems") relatedItems: option<relatedItemList>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "ListRelatedItemsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIncidentRecords = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("filters") filters: filterList
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("incidentRecordSummaries") incidentRecordSummaries: option<incidentRecordSummaryList>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "ListIncidentRecordsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResponsePlan = {
  type t;
  type request = {
@as("arn") arn: option<arn>
}
  type response = {
@as("actions") actions: actionsList,
@as("engagements") engagements: engagementSet,
@as("chatChannel") chatChannel: chatChannel,
@as("incidentTemplate") incidentTemplate: option<incidentTemplate>,
@as("displayName") displayName: responsePlanDisplayName,
@as("name") name: option<responsePlanName>,
@as("arn") arn: option<arn>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "GetResponsePlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResponsePlan = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("actions") actions: actionsList,
@as("engagements") engagements: engagementSet,
@as("chatChannel") chatChannel: chatChannel,
@as("incidentTemplate") incidentTemplate: option<incidentTemplate>,
@as("displayName") displayName: responsePlanDisplayName,
@as("name") name: option<responsePlanName>,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("arn") arn: option<arn>
}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: (request) => t = "CreateResponsePlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
