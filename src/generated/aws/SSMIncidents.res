type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ssm-incidents") @new
external createClient: unit => awsServiceClient = "SSMIncidentsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type url = string
type uuid = string
type timelineEventType = string
type timelineEventSort = [@as("EVENT_TIME") #EVENT_TIME]
type tagValue = string
type tagKey = string
type stringList = array<baseString>
type ssmTargetAccount = [
  | @as("IMPACTED_ACCOUNT") #IMPACTED_ACCOUNT
  | @as("RESPONSE_PLAN_OWNER_ACCOUNT") #RESPONSE_PLAN_OWNER_ACCOUNT
]
type ssmParameterValues = array<baseString>
type ssmContactsArn = string
type sseKmsKey = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type snsArn = string
type serviceCode = [@as("ssm-incidents") #Ssm_Incidents]
type roleArn = string
type responsePlanName = string
type responsePlanDisplayName = string
type resourceType = [
  | @as("RESOURCE_POLICY") #RESOURCE_POLICY
  | @as("REPLICATION_SET") #REPLICATION_SET
  | @as("TIMELINE_EVENT") #TIMELINE_EVENT
  | @as("INCIDENT_RECORD") #INCIDENT_RECORD
  | @as("RESPONSE_PLAN") #RESPONSE_PLAN
]
type replicationSetStatus = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
  | @as("ACTIVE") #ACTIVE
]
type regionStatus = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
  | @as("ACTIVE") #ACTIVE
]
type regionName = string
type rawData = string
type policyId = string
type policy = string
type nextToken = string
type metricDefinition = string
type maxResults = int
type itemType = [
  | @as("OTHER") #OTHER
  | @as("ATTACHMENT") #ATTACHMENT
  | @as("PARENT") #PARENT
  | @as("METRIC") #METRIC
  | @as("INCIDENT") #INCIDENT
  | @as("ANALYSIS") #ANALYSIS
]
type integerList = array<baseInteger>
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
  @as("timestamp") timestamp_: baseTimestamp,
  triggerArn: option<arn>,
  source: incidentSource,
}
type timelineEvent = {
  eventData: eventData,
  eventType: timelineEventType,
  eventUpdatedTime: baseTimestamp,
  eventTime: baseTimestamp,
  eventId: uuid,
  incidentRecordArn: arn,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type ssmParameters = Js.Dict.t<ssmParameterValues>
type responsePlanSummary = {
  displayName: option<responsePlanDisplayName>,
  name: responsePlanName,
  arn: arn,
}
type resourcePolicy = {
  ramResourceShareRegion: baseString,
  policyId: policyId,
  policyDocument: policy,
}
type replicationSetArnList = array<arn>
type regionMapInputValue = {sseKmsKeyId: option<sseKmsKey>}
type regionInfo = {
  statusUpdateDateTime: baseTimestamp,
  statusMessage: option<baseString>,
  status: regionStatus,
  sseKmsKeyId: option<sseKmsKey>,
}
type notificationTargetItem = {snsTopicArn: option<arn>}
type itemValue = {
  metricDefinition: option<metricDefinition>,
  url: option<url>,
  arn: option<arn>,
}
type incidentRecordSource = {
  source: incidentSource,
  resourceArn: option<arn>,
  invokedBy: option<arn>,
  createdBy: arn,
}
type eventSummary = {
  eventType: timelineEventType,
  eventUpdatedTime: baseTimestamp,
  eventTime: baseTimestamp,
  eventId: uuid,
  incidentRecordArn: arn,
}
type engagementSet = array<ssmContactsArn>
type deleteRegionAction = {regionName: regionName}
type chatbotSnsConfigurationSet = array<snsArn>
type automationExecution = {ssmExecutionArn: option<arn>}
type attributeValueList = {
  integerValues: option<integerList>,
  stringValues: option<stringList>,
}
type addRegionAction = {
  sseKmsKeyId: option<sseKmsKey>,
  regionName: regionName,
}
type updateReplicationSetAction = {
  deleteRegionAction: option<deleteRegionAction>,
  addRegionAction: option<addRegionAction>,
}
type ssmAutomation = {
  parameters: option<ssmParameters>,
  targetAccount: option<ssmTargetAccount>,
  documentVersion: option<baseString>,
  documentName: baseString,
  roleArn: roleArn,
}
type responsePlanSummaryList = array<responsePlanSummary>
type resourcePolicyList = array<resourcePolicy>
type regionMapInput = Js.Dict.t<regionMapInputValue>
type regionInfoMap = Js.Dict.t<regionInfo>
type notificationTargetSet = array<notificationTargetItem>
type itemIdentifier = {
  @as("type") type_: itemType,
  value: itemValue,
}
type incidentRecordSummary = {
  incidentRecordSource: incidentRecordSource,
  resolvedTime: option<baseTimestamp>,
  creationTime: baseTimestamp,
  impact: impact,
  status: incidentRecordStatus,
  title: incidentTitle,
  arn: arn,
}
type eventSummaryList = array<eventSummary>
type condition = {
  equals: option<attributeValueList>,
  after: option<baseTimestamp>,
  before: option<baseTimestamp>,
}
type chatChannel = {
  chatbotSns: option<chatbotSnsConfigurationSet>,
  empty: option<emptyChatChannel>,
}
type automationExecutionSet = array<automationExecution>
type updateActionList = array<updateReplicationSetAction>
type replicationSet = {
  lastModifiedBy: arn,
  lastModifiedTime: baseTimestamp,
  createdBy: arn,
  createdTime: baseTimestamp,
  deletionProtected: baseBoolean,
  status: replicationSetStatus,
  regionMap: regionInfoMap,
}
type relatedItem = {
  title: option<baseString>,
  identifier: itemIdentifier,
}
type incidentTemplate = {
  notificationTargets: option<notificationTargetSet>,
  dedupeString: option<dedupeString>,
  summary: option<incidentSummary>,
  impact: impact,
  title: incidentTitle,
}
type incidentRecordSummaryList = array<incidentRecordSummary>
type incidentRecord = {
  notificationTargets: option<notificationTargetSet>,
  chatChannel: option<chatChannel>,
  dedupeString: dedupeString,
  incidentRecordSource: incidentRecordSource,
  automationExecutions: option<automationExecutionSet>,
  lastModifiedBy: arn,
  lastModifiedTime: baseTimestamp,
  resolvedTime: option<baseTimestamp>,
  creationTime: baseTimestamp,
  impact: impact,
  status: incidentRecordStatus,
  summary: option<incidentSummary>,
  title: incidentTitle,
  arn: arn,
}
type filter = {
  condition: condition,
  key: baseString,
}
type action = {ssmAutomation: option<ssmAutomation>}
type relatedItemsUpdate = {
  itemToRemove: option<itemIdentifier>,
  itemToAdd: option<relatedItem>,
}
type relatedItemList = array<relatedItem>
type filterList = array<filter>
type actionsList = array<action>

module UpdateTimelineEvent = {
  type t
  type request = {
    eventData: option<eventData>,
    eventType: option<timelineEventType>,
    eventTime: option<baseTimestamp>,
    eventId: uuid,
    incidentRecordArn: arn,
    clientToken: clientToken,
  }
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "UpdateTimelineEventCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDeletionProtection = {
  type t
  type request = {
    clientToken: option<clientToken>,
    deletionProtected: baseBoolean,
    arn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "UpdateDeletionProtectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutResourcePolicy = {
  type t
  type request = {
    policy: policy,
    resourceArn: arn,
  }
  type response = {policyId: policyId}
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "PutResourcePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTimelineEvent = {
  type t
  type request = {
    eventId: uuid,
    incidentRecordArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "DeleteTimelineEventCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResponsePlan = {
  type t
  type request = {arn: arn}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "DeleteResponsePlanCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {
    policyId: policyId,
    resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "DeleteResourcePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteReplicationSet = {
  type t
  type request = {arn: arn}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "DeleteReplicationSetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteIncidentRecord = {
  type t
  type request = {arn: arn}
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "DeleteIncidentRecordCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTimelineEvent = {
  type t
  type request = {
    eventData: eventData,
    eventType: timelineEventType,
    eventTime: baseTimestamp,
    incidentRecordArn: arn,
    clientToken: clientToken,
  }
  type response = {
    eventId: uuid,
    incidentRecordArn: arn,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "CreateTimelineEventCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: baseString,
  }
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagMap,
    resourceArn: baseString,
  }
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: baseString}
  type response = {tags: tagMap}
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReplicationSets = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    replicationSetArns: replicationSetArnList,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "ListReplicationSetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTimelineEvent = {
  type t
  type request = {
    eventId: uuid,
    incidentRecordArn: arn,
  }
  type response = {event: timelineEvent}
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "GetTimelineEventCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIncidentRecord = {
  type t
  type request = {
    notificationTargets: option<notificationTargetSet>,
    chatChannel: option<chatChannel>,
    status: option<incidentRecordStatus>,
    impact: option<impact>,
    summary: option<incidentSummary>,
    title: option<incidentTitle>,
    arn: arn,
    clientToken: option<clientToken>,
  }
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "UpdateIncidentRecordCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResponsePlans = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    responsePlanSummaries: responsePlanSummaryList,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "ListResponsePlansCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourcePolicies = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    resourceArn: arn,
  }
  type response = {
    nextToken: option<nextToken>,
    resourcePolicies: resourcePolicyList,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "GetResourcePoliciesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReplicationSet = {
  type t
  type request = {
    clientToken: option<clientToken>,
    regions: regionMapInput,
  }
  type response = {arn: arn}
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "CreateReplicationSetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateReplicationSet = {
  type t
  type request = {
    clientToken: option<clientToken>,
    actions: updateActionList,
    arn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "UpdateReplicationSetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReplicationSet = {
  type t
  type request = {arn: arn}
  type response = {replicationSet: replicationSet}
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "GetReplicationSetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIncidentRecord = {
  type t
  type request = {arn: arn}
  type response = {incidentRecord: incidentRecord}
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "GetIncidentRecordCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResponsePlan = {
  type t
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
    clientToken: option<clientToken>,
  }
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "UpdateResponsePlanCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRelatedItems = {
  type t
  type request = {
    relatedItemsUpdate: relatedItemsUpdate,
    incidentRecordArn: arn,
    clientToken: option<clientToken>,
  }
  type response = unit
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "UpdateRelatedItemsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartIncident = {
  type t
  type request = {
    relatedItems: option<relatedItemList>,
    triggerDetails: option<triggerDetails>,
    impact: option<impact>,
    title: option<incidentTitle>,
    responsePlanArn: arn,
    clientToken: option<clientToken>,
  }
  type response = {incidentRecordArn: arn}
  @module("@aws-sdk/client-ssm-incidents") @new external new_: request => t = "StartIncidentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTimelineEvents = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    sortOrder: option<sortOrder>,
    sortBy: option<timelineEventSort>,
    filters: option<filterList>,
    incidentRecordArn: arn,
  }
  type response = {
    nextToken: option<nextToken>,
    eventSummaries: eventSummaryList,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "ListTimelineEventsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRelatedItems = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    incidentRecordArn: arn,
  }
  type response = {
    nextToken: option<nextToken>,
    relatedItems: relatedItemList,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "ListRelatedItemsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIncidentRecords = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    filters: option<filterList>,
  }
  type response = {
    nextToken: option<nextToken>,
    incidentRecordSummaries: incidentRecordSummaryList,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "ListIncidentRecordsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResponsePlan = {
  type t
  type request = {arn: arn}
  type response = {
    actions: option<actionsList>,
    engagements: option<engagementSet>,
    chatChannel: option<chatChannel>,
    incidentTemplate: incidentTemplate,
    displayName: option<responsePlanDisplayName>,
    name: responsePlanName,
    arn: arn,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "GetResponsePlanCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResponsePlan = {
  type t
  type request = {
    tags: option<tagMap>,
    actions: option<actionsList>,
    engagements: option<engagementSet>,
    chatChannel: option<chatChannel>,
    incidentTemplate: incidentTemplate,
    displayName: option<responsePlanDisplayName>,
    name: responsePlanName,
    clientToken: option<clientToken>,
  }
  type response = {arn: arn}
  @module("@aws-sdk/client-ssm-incidents") @new
  external new_: request => t = "CreateResponsePlanCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
