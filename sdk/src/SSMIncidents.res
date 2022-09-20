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
@ocaml.doc("<p>Used to remove the chat channel from an incident record or response plan.</p>")
type emptyChatChannel = unit
type dedupeString = string
type clientToken = string
type arn = string
@ocaml.doc("<p>Details about what caused the incident to be created in Incident Manager.</p>")
type triggerDetails = {
  @ocaml.doc("<p>Raw data passed from either EventBridge, CloudWatch, or Incident Manager when an
         incident is created.</p>")
  rawData: option<rawData>,
  @ocaml.doc("<p>The time that the incident was detected.</p>") @as("timestamp")
  timestamp_: baseTimestamp,
  @ocaml.doc("<p>The ARN of the source that detected the incident.</p>") triggerArn: option<arn>,
  @ocaml.doc("<p>Identifies the service that sourced the event. All events sourced from within AWS begin
         with \"aws.\" Customer-generated events can have any value here, as long as it doesn't begin
         with \"aws.\" We recommend the use of Java package-name style reverse domain-name strings. </p>")
  source: incidentSource,
}
@ocaml.doc("<p>A significant event that happened during the incident. </p>")
type timelineEvent = {
  @ocaml.doc("<p>A short description of the event.</p>") eventData: eventData,
  @ocaml.doc("<p>The type of event that occurred. Currently Incident Manager supports only the <code>Custom
            Event</code> type.</p>")
  eventType: timelineEventType,
  @ocaml.doc("<p>The time that the timeline event was last updated.</p>")
  eventUpdatedTime: baseTimestamp,
  @ocaml.doc("<p>The time that the event occurred.</p>") eventTime: baseTimestamp,
  @ocaml.doc("<p>The ID of the timeline event.</p>") eventId: uuid,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the incident that the event occurred during.</p>"
  )
  incidentRecordArn: arn,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type ssmParameters = Js.Dict.t<ssmParameterValues>
@ocaml.doc("<p>Details of the response plan that are used when creating an incident.</p>")
type responsePlanSummary = {
  @ocaml.doc("<p>The human readable name of the response plan. This can include spaces.</p>")
  displayName: option<responsePlanDisplayName>,
  @ocaml.doc("<p>The name of the response plan. This can't include spaces.</p>")
  name: responsePlanName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the response plan.</p>") arn: arn,
}
@ocaml.doc(
  "<p>The resource policy that allows Incident Manager to perform actions on resources on your behalf.</p>"
)
type resourcePolicy = {
  @ocaml.doc("<p>The Region that policy allows resources to be used in.</p>")
  ramResourceShareRegion: baseString,
  @ocaml.doc("<p>The ID of the resource policy.</p>") policyId: policyId,
  @ocaml.doc("<p>The JSON blob that describes the policy.</p>") policyDocument: policy,
}
type replicationSetArnList = array<arn>
@ocaml.doc("<p>The mapping between a Region and the key that's used to encrypt the data.</p>")
type regionMapInputValue = {
  @ocaml.doc("<p>The KMS key used to encrypt the data in your replication set.</p>")
  sseKmsKeyId: option<sseKmsKey>,
}
@ocaml.doc("<p>Information about a Region in your replication set.</p>")
type regionInfo = {
  @ocaml.doc("<p>The most recent date and time that the Region's status was updated.</p>")
  statusUpdateDateTime: baseTimestamp,
  @ocaml.doc("<p>Information displayed about the status of the Region.</p>")
  statusMessage: option<baseString>,
  @ocaml.doc("<p>The status of the Region in the replication set.</p>") status: regionStatus,
  @ocaml.doc("<p>The ID of the KMS key used to encrypt the data in this Region.</p>")
  sseKmsKeyId: option<sseKmsKey>,
}
@ocaml.doc("<p>The SNS topic that's used by
         AWS
         Chatbot to notify the incidents chat channel.</p>")
type notificationTargetItem = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SNS topic.</p>") snsTopicArn: option<arn>,
}
module NotificationTargetItem = {
  type t = SnsTopicArn(arn)
  exception NotificationTargetItemUnspecified
  let classify = value =>
    switch value {
    | {snsTopicArn: Some(x)} => SnsTopicArn(x)
    | _ => raise(NotificationTargetItemUnspecified)
    }

  let make = value =>
    switch value {
    | SnsTopicArn(x) => {snsTopicArn: Some(x)}
    }
}
@ocaml.doc("<p>Describes a related item.</p>")
type itemValue = {
  @ocaml.doc("<p>The metric definition, if the related item is a metric in CloudWatch.</p>")
  metricDefinition: option<metricDefinition>,
  @ocaml.doc("<p>The URL, if the related item is a non-AWS resource.</p>") url: option<url>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the related item, if the related item is an Amazon
         resource.</p>")
  arn: option<arn>,
}
module ItemValue = {
  type t = MetricDefinition(metricDefinition) | Url(url) | Arn(arn)
  exception ItemValueUnspecified
  let classify = value =>
    switch value {
    | {metricDefinition: Some(x)} => MetricDefinition(x)
    | {url: Some(x)} => Url(x)
    | {arn: Some(x)} => Arn(x)
    | _ => raise(ItemValueUnspecified)
    }

  let make = value =>
    switch value {
    | MetricDefinition(x) => {metricDefinition: Some(x), url: None, arn: None}
    | Url(x) => {url: Some(x), metricDefinition: None, arn: None}
    | Arn(x) => {arn: Some(x), metricDefinition: None, url: None}
    }
}
@ocaml.doc("<p>Details about how the incident record was created and when.</p>")
type incidentRecordSource = {
  @ocaml.doc("<p>The service that started the incident. This can be manually created from Incident Manager,
         automatically created using an
         AWS
         CloudWatch alarm, or
         Amazon
         EventBridge event.</p>")
  source: incidentSource,
  @ocaml.doc("<p>The resource that caused the incident to be created.</p>")
  resourceArn: option<arn>,
  @ocaml.doc("<p>The principal the assumed the role specified of the <code>createdBy</code>.</p>")
  invokedBy: option<arn>,
  @ocaml.doc("<p>The principal that started the incident.</p>") createdBy: arn,
}
@ocaml.doc("<p>Details about a timeline event during an incident.</p>")
type eventSummary = {
  @ocaml.doc("<p>The type of event. The timeline event must be <code>Custom Event</code>.</p>")
  eventType: timelineEventType,
  @ocaml.doc("<p>The time that the timeline event was last updated.</p>")
  eventUpdatedTime: baseTimestamp,
  @ocaml.doc("<p>The time that the event occurred.</p>") eventTime: baseTimestamp,
  @ocaml.doc("<p>The timeline event ID.</p>") eventId: uuid,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the incident that the event happened during.</p>"
  )
  incidentRecordArn: arn,
}
type engagementSet = array<ssmContactsArn>
@ocaml.doc("<p>Defines the information about the Region you're deleting from your replication
         set.</p>")
type deleteRegionAction = {
  @ocaml.doc("<p>The name of the Region you're deleting from the replication set.</p>")
  regionName: regionName,
}
type chatbotSnsConfigurationSet = array<snsArn>
@ocaml.doc("<p>The Systems Manager automation document
         process
         to start as the runbook at the beginning of the incident.</p>")
type automationExecution = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the automation process.</p>")
  ssmExecutionArn: option<arn>,
}
module AutomationExecution = {
  type t = SsmExecutionArn(arn)
  exception AutomationExecutionUnspecified
  let classify = value =>
    switch value {
    | {ssmExecutionArn: Some(x)} => SsmExecutionArn(x)
    | _ => raise(AutomationExecutionUnspecified)
    }

  let make = value =>
    switch value {
    | SsmExecutionArn(x) => {ssmExecutionArn: Some(x)}
    }
}
@ocaml.doc("<p>Use the AttributeValueList to filter by string or integer values.</p>")
type attributeValueList = {
  @ocaml.doc("<p>The list of integer values that the filter matches.</p>")
  integerValues: option<integerList>,
  @ocaml.doc("<p>The list of string values that the filter matches.</p>")
  stringValues: option<stringList>,
}
module AttributeValueList = {
  type t = IntegerValues(integerList) | StringValues(stringList)
  exception AttributeValueListUnspecified
  let classify = value =>
    switch value {
    | {integerValues: Some(x)} => IntegerValues(x)
    | {stringValues: Some(x)} => StringValues(x)
    | _ => raise(AttributeValueListUnspecified)
    }

  let make = value =>
    switch value {
    | IntegerValues(x) => {integerValues: Some(x), stringValues: None}
    | StringValues(x) => {stringValues: Some(x), integerValues: None}
    }
}
@ocaml.doc("<p>Defines the Region and KMS key to add to the replication set. </p>")
type addRegionAction = {
  @ocaml.doc("<p>The KMS key ID to use to encrypt your replication set.</p>")
  sseKmsKeyId: option<sseKmsKey>,
  @ocaml.doc("<p>The Region name to add to the replication set.</p>") regionName: regionName,
}
@ocaml.doc("<p>Details used when updating the replication set.</p>")
type updateReplicationSetAction = {
  @ocaml.doc("<p>Details about the Region that you're deleting to the replication set.</p>")
  deleteRegionAction: option<deleteRegionAction>,
  @ocaml.doc("<p>Details about the Region that you're adding to the replication set.</p>")
  addRegionAction: option<addRegionAction>,
}
module UpdateReplicationSetAction = {
  type t = DeleteRegionAction(deleteRegionAction) | AddRegionAction(addRegionAction)
  exception UpdateReplicationSetActionUnspecified
  let classify = value =>
    switch value {
    | {deleteRegionAction: Some(x)} => DeleteRegionAction(x)
    | {addRegionAction: Some(x)} => AddRegionAction(x)
    | _ => raise(UpdateReplicationSetActionUnspecified)
    }

  let make = value =>
    switch value {
    | DeleteRegionAction(x) => {deleteRegionAction: Some(x), addRegionAction: None}
    | AddRegionAction(x) => {addRegionAction: Some(x), deleteRegionAction: None}
    }
}
@ocaml.doc(
  "<p>Details about the Systems Manager automation document that will be used as a runbook during an incident.</p>"
)
type ssmAutomation = {
  @ocaml.doc("<p>The key-value pair parameters to use when running the automation document.</p>")
  parameters: option<ssmParameters>,
  @ocaml.doc(
    "<p>The account that the automation document will be run in. This can be in either the management account or an application account.</p>"
  )
  targetAccount: option<ssmTargetAccount>,
  @ocaml.doc("<p>The automation document's version to use when running.</p>")
  documentVersion: option<baseString>,
  @ocaml.doc("<p>The automation document's name.</p>") documentName: baseString,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the role that the automation document will assume when running commands.</p>"
  )
  roleArn: roleArn,
}
type responsePlanSummaryList = array<responsePlanSummary>
type resourcePolicyList = array<resourcePolicy>
type regionMapInput = Js.Dict.t<regionMapInputValue>
type regionInfoMap = Js.Dict.t<regionInfo>
type notificationTargetSet = array<notificationTargetItem>
@ocaml.doc("<p>Details and type of a related item.</p>")
type itemIdentifier = {
  @ocaml.doc("<p>The type of related item. Incident Manager supports the following types:</p>
         <ul>
            <li>
               <p>
                  <code>ANALYSIS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>INCIDENT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>METRIC</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PARENT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ATTACHMENT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>OTHER</code>
               </p>
            </li>
         </ul>")
  @as("type")
  type_: itemType,
  @ocaml.doc("<p>Details about the related item.</p>") value: itemValue,
}
@ocaml.doc("<p>Details describing an incident record.</p>")
type incidentRecordSummary = {
  @ocaml.doc("<p>What caused Incident Manager to create the incident.</p>")
  incidentRecordSource: incidentRecordSource,
  @ocaml.doc("<p>The time the incident was resolved.</p>") resolvedTime: option<baseTimestamp>,
  @ocaml.doc("<p>The time the incident was created.</p>") creationTime: baseTimestamp,
  @ocaml.doc("<p>Defines the impact to customers and applications.</p>") impact: impact,
  @ocaml.doc("<p>The current status of the incident.</p>") status: incidentRecordStatus,
  @ocaml.doc("<p>The title of the incident. This value is either provided by the response plan or
         overwritten on creation.</p>")
  title: incidentTitle,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the incident.</p>") arn: arn,
}
type eventSummaryList = array<eventSummary>
@ocaml.doc("<p>A conditional statement with which to compare a value, after a timestamp, before a
         timestamp, or equal to a string or integer. If multiple conditions are specified, the
         conditionals become an <code>AND</code>ed statement. If multiple values are specified for a
         conditional, the values are <code>OR</code>d.</p>")
type condition = {
  @ocaml.doc("<p>The value is equal to the provided string or integer. </p>")
  equals: option<attributeValueList>,
  @ocaml.doc("<p>After the specified timestamp.</p>") after: option<baseTimestamp>,
  @ocaml.doc("<p>Before the specified timestamp</p>") before: option<baseTimestamp>,
}
module Condition = {
  type t = Equals(attributeValueList) | After(baseTimestamp) | Before(baseTimestamp)
  exception ConditionUnspecified
  let classify = value =>
    switch value {
    | {equals: Some(x)} => Equals(x)
    | {after: Some(x)} => After(x)
    | {before: Some(x)} => Before(x)
    | _ => raise(ConditionUnspecified)
    }

  let make = value =>
    switch value {
    | Equals(x) => {equals: Some(x), after: None, before: None}
    | After(x) => {after: Some(x), equals: None, before: None}
    | Before(x) => {before: Some(x), equals: None, after: None}
    }
}
@ocaml.doc("<p>The AWS Chatbot chat channel used for collaboration during an incident.</p>")
type chatChannel = {
  @ocaml.doc("<p>The SNS targets that AWS Chatbot uses to notify the chat channel of updates to an
         incident. You can also make updates to the incident through the chat channel
         by
         using the SNS topics. </p>")
  chatbotSns: option<chatbotSnsConfigurationSet>,
  @ocaml.doc("<p>Used to remove the chat channel from an incident record or response plan.</p>")
  empty: option<emptyChatChannel>,
}
module ChatChannel = {
  type t = ChatbotSns(chatbotSnsConfigurationSet) | Empty(emptyChatChannel)
  exception ChatChannelUnspecified
  let classify = value =>
    switch value {
    | {chatbotSns: Some(x)} => ChatbotSns(x)
    | {empty: Some(x)} => Empty(x)
    | _ => raise(ChatChannelUnspecified)
    }

  let make = value =>
    switch value {
    | ChatbotSns(x) => {chatbotSns: Some(x), empty: None}
    | Empty(x) => {empty: Some(x), chatbotSns: None}
    }
}
type automationExecutionSet = array<automationExecution>
type updateActionList = array<updateReplicationSetAction>
@ocaml.doc("<p>The set of Regions that your Incident Manager data will be replicated to and the KMS key used
         to encrypt the data. </p>")
type replicationSet = {
  @ocaml.doc("<p>Who last modified the replication set.</p>") lastModifiedBy: arn,
  @ocaml.doc("<p>When the replication set was last updated.</p>") lastModifiedTime: baseTimestamp,
  @ocaml.doc("<p>Details about who created the replication set.</p>") createdBy: arn,
  @ocaml.doc("<p>When the replication set was created.</p>") createdTime: baseTimestamp,
  @ocaml.doc("<p>Determines if the replication set deletion protection is enabled or not. If deletion
         protection is enabled, you can't delete the last Region in the replication set. </p>")
  deletionProtected: baseBoolean,
  @ocaml.doc("<p>The status of the replication set. If the replication set is still pending, you can't
         use Incident Manager functionality.</p>")
  status: replicationSetStatus,
  @ocaml.doc("<p>The map between each Region in your replication set and the KMS key that is used to
         encrypt the data in that Region.</p>")
  regionMap: regionInfoMap,
}
@ocaml.doc("<p>Resources that responders use to triage and mitigate the incident.</p>")
type relatedItem = {
  @ocaml.doc("<p>The title of the related item.</p>") title: option<baseString>,
  @ocaml.doc("<p>Details about the related item.</p>") identifier: itemIdentifier,
}
@ocaml.doc(
  "<p>Basic details used in creating a response plan. The response plan is then used to create an incident record.</p>"
)
type incidentTemplate = {
  @ocaml.doc("<p>The SNS targets that AWS Chatbot uses to notify the chat channel of updates to an
         incident. You can also make updates to the incident through the chat channel using the SNS
         topics. </p>")
  notificationTargets: option<notificationTargetSet>,
  @ocaml.doc(
    "<p>Used to stop Incident Manager from creating multiple incident records for the same incident. </p>"
  )
  dedupeString: option<dedupeString>,
  @ocaml.doc("<p>The summary of the incident. The summary is a brief synopsis of what occurred, what's
         currently happening, and context.</p>")
  summary: option<incidentSummary>,
  @ocaml.doc("<p>The impact of the incident on your customers and applications. </p>")
  impact: impact,
  @ocaml.doc("<p>The title of the incident. </p>") title: incidentTitle,
}
type incidentRecordSummaryList = array<incidentRecordSummary>
@ocaml.doc("<p>The record of the incident that's created when an incident occurs.</p>")
type incidentRecord = {
  @ocaml.doc("<p>The SNS targets that
         AWS Chatbot uses
         to notify the chat channels and perform actions on the incident record.</p>")
  notificationTargets: option<notificationTargetSet>,
  @ocaml.doc("<p>The chat channel used for collaboration during an incident.</p>")
  chatChannel: option<chatChannel>,
  @ocaml.doc(
    "<p>The string Incident Manager uses to prevent duplicate incidents from being created by the same incident.</p>"
  )
  dedupeString: dedupeString,
  @ocaml.doc("<p>Details about the action that started the incident.</p>")
  incidentRecordSource: incidentRecordSource,
  @ocaml.doc(
    "<p>The runbook, or automation document, that's run at the beginning of the incident.</p>"
  )
  automationExecutions: option<automationExecutionSet>,
  @ocaml.doc("<p>Who modified the incident most recently.</p>") lastModifiedBy: arn,
  @ocaml.doc("<p>The time at which the incident was most recently modified.</p>")
  lastModifiedTime: baseTimestamp,
  @ocaml.doc(
    "<p>The time at which the incident was resolved. This appears as a timeline event.</p>"
  )
  resolvedTime: option<baseTimestamp>,
  @ocaml.doc("<p>The time that Incident Manager created the incident record.</p>")
  creationTime: baseTimestamp,
  @ocaml.doc("<p>The impact of the incident on customers and applications.</p>") impact: impact,
  @ocaml.doc("<p>The current status of the incident.</p>") status: incidentRecordStatus,
  @ocaml.doc(
    "<p>The summary of the incident. The summary is a brief synopsis of what occurred, what is currently happening, and context.</p>"
  )
  summary: option<incidentSummary>,
  @ocaml.doc("<p>The title of the incident.</p>") title: incidentTitle,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the incident record.</p>") arn: arn,
}
@ocaml.doc("<p>Filter the selection by using a condition.</p>")
type filter = {
  @ocaml.doc(
    "<p>The condition accepts before or after a specified time, equal to a string, or equal to an integer.</p>"
  )
  condition: condition,
  @ocaml.doc("<p>The key that you're filtering on.</p>") key: baseString,
}
@ocaml.doc("<p>The action that starts at the beginning of an incident. The response plan defines the
         action.</p>")
type action = {
  @ocaml.doc("<p>The Systems Manager automation document to start as the runbook at the beginning of the
         incident.</p>")
  ssmAutomation: option<ssmAutomation>,
}
module Action = {
  type t = SsmAutomation(ssmAutomation)
  exception ActionUnspecified
  let classify = value =>
    switch value {
    | {ssmAutomation: Some(x)} => SsmAutomation(x)
    | _ => raise(ActionUnspecified)
    }

  let make = value =>
    switch value {
    | SsmAutomation(x) => {ssmAutomation: Some(x)}
    }
}
@ocaml.doc("<p>Details about the related item you're adding.</p>")
type relatedItemsUpdate = {
  @ocaml.doc("<p>Details about the related item you're deleting.</p>")
  itemToRemove: option<itemIdentifier>,
  @ocaml.doc("<p>Details about the related item you're adding.</p>") itemToAdd: option<relatedItem>,
}
module RelatedItemsUpdate = {
  type t = ItemToRemove(itemIdentifier) | ItemToAdd(relatedItem)
  exception RelatedItemsUpdateUnspecified
  let classify = value =>
    switch value {
    | {itemToRemove: Some(x)} => ItemToRemove(x)
    | {itemToAdd: Some(x)} => ItemToAdd(x)
    | _ => raise(RelatedItemsUpdateUnspecified)
    }

  let make = value =>
    switch value {
    | ItemToRemove(x) => {itemToRemove: Some(x), itemToAdd: None}
    | ItemToAdd(x) => {itemToAdd: Some(x), itemToRemove: None}
    }
}
type relatedItemList = array<relatedItem>
type filterList = array<filter>
type actionsList = array<action>
@ocaml.doc("<p>AWS Systems Manager Incident Manager is an incident management console designed to help
      users mitigate and recover from incidents affecting their AWS-hosted applications. An incident
      is any unplanned interruption or reduction in quality of services. </p>
         <p>Incident Manager increases incident resolution by notifying responders of impact,
      highlighting relevant troubleshooting data, and providing collaboration tools to get services
      back up and running. To achieve the primary goal of reducing the time-to-resolution of
      critical incidents, Incident Manager automates response plans and enables responder team
      escalation. </p>")
module UpdateTimelineEvent = {
  type t
  type request = {
    @ocaml.doc("<p>A short description of the event.</p>") eventData: option<eventData>,
    @ocaml.doc(
      "<p>The type of the event. You can update events of type <code>Custom Event</code>.</p>"
    )
    eventType: option<timelineEventType>,
    @ocaml.doc("<p>The time that the event occurred.</p>") eventTime: option<baseTimestamp>,
    @ocaml.doc(
      "<p>The ID of the event you are updating. You can find this by using <code>ListTimelineEvents</code>.</p>"
    )
    eventId: uuid,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the incident that the timeline event is part
            of.</p>")
    incidentRecordArn: arn,
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    clientToken: clientToken,
  }

  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "UpdateTimelineEventCommand"
  let make = (
    ~eventId,
    ~incidentRecordArn,
    ~clientToken,
    ~eventData=?,
    ~eventType=?,
    ~eventTime=?,
    (),
  ) =>
    new({
      eventData,
      eventType,
      eventTime,
      eventId,
      incidentRecordArn,
      clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDeletionProtection = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>Details if deletion protection is enabled or disabled in your account.</p>")
    deletionProtected: baseBoolean,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication set you're updating.</p>")
    arn: arn,
  }

  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "UpdateDeletionProtectionCommand"
  let make = (~deletionProtected, ~arn, ~clientToken=?, ()) =>
    new({clientToken, deletionProtected, arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Details of the resource policy.</p>") policy: policy,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the response plan you're adding the resource policy
            to.</p>")
    resourceArn: arn,
  }
  type response = {@ocaml.doc("<p>The ID of the resource policy.</p>") policyId: policyId}
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "PutResourcePolicyCommand"
  let make = (~policy, ~resourceArn, ()) => new({policy, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTimelineEvent = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the event you are updating. You can find this by using <code>ListTimelineEvents</code>.</p>"
    )
    eventId: uuid,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the incident that the event is part of.</p>")
    incidentRecordArn: arn,
  }

  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "DeleteTimelineEventCommand"
  let make = (~eventId, ~incidentRecordArn, ()) => new({eventId, incidentRecordArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResponsePlan = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the response plan.</p>") arn: arn,
  }

  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "DeleteResponsePlanCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource policy you're deleting.</p>") policyId: policyId,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource you're deleting the policy from.</p>"
    )
    resourceArn: arn,
  }

  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "DeleteResourcePolicyCommand"
  let make = (~policyId, ~resourceArn, ()) => new({policyId, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteReplicationSet = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication set you're deleting.</p>")
    arn: arn,
  }

  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "DeleteReplicationSetCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIncidentRecord = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the incident record you are deleting.</p>")
    arn: arn,
  }

  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "DeleteIncidentRecordCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateTimelineEvent = {
  type t
  type request = {
    @ocaml.doc("<p>A short description of the event.</p>") eventData: eventData,
    @ocaml.doc("<p>The type of the event. You can create timeline events of type <code>Custom
                Event</code>.</p>")
    eventType: timelineEventType,
    @ocaml.doc("<p>The time that the event occurred.</p>") eventTime: baseTimestamp,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the incident record you are adding the event
            to.</p>")
    incidentRecordArn: arn,
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    clientToken: clientToken,
  }
  type response = {
    @ocaml.doc("<p>The ID of the event for easy reference later. </p>") eventId: uuid,
    @ocaml.doc("<p>The ARN of the incident record that you added the event to.</p>")
    incidentRecordArn: arn,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "CreateTimelineEventCommand"
  let make = (~eventData, ~eventType, ~eventTime, ~incidentRecordArn, ~clientToken, ()) =>
    new({
      eventData,
      eventType,
      eventTime,
      incidentRecordArn,
      clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the tag you're removing from the response plan.</p>")
    tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the response plan you're removing a tag from.</p>"
    )
    resourceArn: baseString,
  }

  @module("@aws-sdk/client-ssm-incidents") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you are adding to the response plan.</p>") tags: tagMap,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the response plan you're adding the tags to.</p>"
    )
    resourceArn: baseString,
  }

  @module("@aws-sdk/client-ssm-incidents") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the response plan.</p>")
    resourceArn: baseString,
  }
  type response = {@ocaml.doc("<p>A list of tags for the response plan.</p>") tags: tagMap}
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReplicationSets = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results per page. </p>") maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the list replication set.</p>")
    replicationSetArns: replicationSetArnList,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "ListReplicationSetsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTimelineEvent = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the event. You can get an event's ID when you create it or by using <code>ListTimelineEvents</code>.</p>"
    )
    eventId: uuid,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the incident that the timeline event is part of.</p>"
    )
    incidentRecordArn: arn,
  }
  type response = {@ocaml.doc("<p>Details about the timeline event.</p>") event: timelineEvent}
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "GetTimelineEventCommand"
  let make = (~eventId, ~incidentRecordArn, ()) => new({eventId, incidentRecordArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIncidentRecord = {
  type t
  type request = {
    @ocaml.doc("<p>The SNS targets that AWS Chatbot uses to notify the chat channel of updates to an
            incident. You can also make updates to the incident through the chat channel using the
            SNS topics. </p>
        <p>Using multiple SNS topics creates redundancy in the case that a Region is down during
            the incident.</p>")
    notificationTargets: option<notificationTargetSet>,
    @ocaml.doc("<p>The AWS Chatbot chat channel for responders to collaborate in.</p>")
    chatChannel: option<chatChannel>,
    @ocaml.doc(
      "<p>The status of the incident. An incident can be <code>Open</code> or <code>Resolved</code>.</p>"
    )
    status: option<incidentRecordStatus>,
    @ocaml.doc("<p>Defines the impact to customers and applications. Providing an impact overwrites the
            impact provided by the response plan.</p>
        <p class=\"title\">
            <b>Possible impacts:</b>
         </p>
         <ul>
            <li>
                <p>
                  <code>1</code> - Critical impact, this typically relates to full application
                    failure that impacts many to all customers. </p>
            </li>
            <li>
                <p>
                  <code>2</code> - High impact, partial application failure with impact to many
                    customers.</p>
            </li>
            <li>
                <p>
                  <code>3</code> -  Medium impact, the application is providing reduced service
                    to customers.</p>
            </li>
            <li>
                <p>
                  <code>4</code> -  Low impact, customer might aren't impacted by the problem
                    yet.</p>
            </li>
            <li>
                <p>
                  <code>5</code> - No impact, customers aren't currently impacted but urgent
                    action is needed to avoid impact.</p>
            </li>
         </ul>")
    impact: option<impact>,
    @ocaml.doc("<p>The summary describes what has happened during the incident.</p>")
    summary: option<incidentSummary>,
    @ocaml.doc("<p>The title of the incident is a brief and easily recognizable.</p>")
    title: option<incidentTitle>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the incident record you are updating.</p>")
    arn: arn,
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    clientToken: option<clientToken>,
  }

  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "UpdateIncidentRecordCommand"
  let make = (
    ~arn,
    ~notificationTargets=?,
    ~chatChannel=?,
    ~status=?,
    ~impact=?,
    ~summary=?,
    ~title=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      notificationTargets,
      chatChannel,
      status,
      impact,
      summary,
      title,
      arn,
      clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListResponsePlans = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of response plans per page.</p>")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Details of each response plan.</p>")
    responsePlanSummaries: responsePlanSummaryList,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "ListResponsePlansCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourcePolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of resource policies to display per page of results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the response plan with the attached resource policy. </p>"
    )
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Details about the resource policy attached to the response plan.</p>")
    resourcePolicies: resourcePolicyList,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "GetResourcePoliciesCommand"
  let make = (~resourceArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReplicationSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The Regions that Incident Manager replicates your data to. You can have up to three Regions
            in your replication set.</p>")
    regions: regionMapInput,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication set. </p>") arn: arn,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "CreateReplicationSetCommand"
  let make = (~regions, ~clientToken=?, ()) => new({clientToken, regions})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateReplicationSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>An action to add or delete a Region.</p>") actions: updateActionList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication set you're updating.</p>")
    arn: arn,
  }

  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "UpdateReplicationSetCommand"
  let make = (~actions, ~arn, ~clientToken=?, ()) => new({clientToken, actions, arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetReplicationSet = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication set you want to retrieve.</p>")
    arn: arn,
  }
  type response = {
    @ocaml.doc("<p>Details of the replication set.</p>") replicationSet: replicationSet,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "GetReplicationSetCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIncidentRecord = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the incident record.</p>") arn: arn,
  }
  type response = {
    @ocaml.doc("<p>Details structure of the incident record.</p>") incidentRecord: incidentRecord,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "GetIncidentRecordCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResponsePlan = {
  type t
  type request = {
    @ocaml.doc("<p>The actions that this response plan takes at the beginning of an incident.</p>")
    actions: option<actionsList>,
    @ocaml.doc(
      "<p>The contacts and escalation plans that Incident Manager engages at the start of the incident.</p>"
    )
    engagements: option<engagementSet>,
    @ocaml.doc("<p>The
            AWS
            Chatbot chat channel used for collaboration during an
            incident.</p>")
    chatChannel: option<chatChannel>,
    @ocaml.doc("<p>The SNS targets that
            AWS
            Chatbot uses to notify the chat channels and perform actions on the
            incident record.</p>")
    incidentTemplateNotificationTargets: option<notificationTargetSet>,
    @ocaml.doc("<p>Used to create only one incident record for an incident.</p>")
    incidentTemplateDedupeString: option<dedupeString>,
    @ocaml.doc("<p>A brief summary of the incident. This typically contains what has happened, what's
            currently happening, and next steps.</p>")
    incidentTemplateSummary: option<incidentSummary>,
    @ocaml.doc("<p>Defines the impact to the customers. Providing an impact overwrites the impact
            provided by a response plan.</p>
        <p class=\"title\">
            <b>Possible impacts:</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>5</code> - Severe impact</p>
            </li>
            <li>
               <p>
                  <code>4</code> - High impact</p>
            </li>
            <li>
               <p>
                  <code>3</code> - Medium impact</p>
            </li>
            <li>
               <p>
                  <code>2</code> - Low impact</p>
            </li>
            <li>
               <p>
                  <code>1</code> - No impact</p>
            </li>
         </ul>")
    incidentTemplateImpact: option<impact>,
    @ocaml.doc("<p>The short format name of the incident. Can't contain spaces.</p>")
    incidentTemplateTitle: option<incidentTitle>,
    @ocaml.doc("<p>The long format name of the response plan. Can't contain spaces.</p>")
    displayName: option<responsePlanDisplayName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the response plan.</p>") arn: arn,
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    clientToken: option<clientToken>,
  }

  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "UpdateResponsePlanCommand"
  let make = (
    ~arn,
    ~actions=?,
    ~engagements=?,
    ~chatChannel=?,
    ~incidentTemplateNotificationTargets=?,
    ~incidentTemplateDedupeString=?,
    ~incidentTemplateSummary=?,
    ~incidentTemplateImpact=?,
    ~incidentTemplateTitle=?,
    ~displayName=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      actions,
      engagements,
      chatChannel,
      incidentTemplateNotificationTargets,
      incidentTemplateDedupeString,
      incidentTemplateSummary,
      incidentTemplateImpact,
      incidentTemplateTitle,
      displayName,
      arn,
      clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRelatedItems = {
  type t
  type request = {
    @ocaml.doc("<p>Details about the item you are adding or deleting.</p>")
    relatedItemsUpdate: relatedItemsUpdate,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the incident record you are updating related items
            in.</p>")
    incidentRecordArn: arn,
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    clientToken: option<clientToken>,
  }

  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "UpdateRelatedItemsCommand"
  let make = (~relatedItemsUpdate, ~incidentRecordArn, ~clientToken=?, ()) =>
    new({
      relatedItemsUpdate,
      incidentRecordArn,
      clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartIncident = {
  type t
  type request = {
    @ocaml.doc("<p>Add related items to the incident for other responders to use. Related items are AWS
            resources, external links, or files uploaded to an S3 bucket. </p>")
    relatedItems: option<relatedItemList>,
    @ocaml.doc("<p>Details of what created the incident record in Incident Manager.</p>")
    triggerDetails: option<triggerDetails>,
    @ocaml.doc("<p>Defines the impact to the customers. Providing an impact overwrites the impact
            provided by a response plan.</p>
        <p class=\"title\">
            <b>Possible impacts:</b>
         </p>
         <ul>
            <li>
                <p>
                  <code>1</code> - Critical impact, this typically relates to full application
                    failure that impacts many to all customers. </p>
            </li>
            <li>
                <p>
                  <code>2</code> - High impact, partial application failure with impact to many
                    customers.</p>
            </li>
            <li>
                <p>
                  <code>3</code> -  Medium impact, the application is providing reduced service
                    to customers.</p>
            </li>
            <li>
                <p>
                  <code>4</code> -  Low impact, customer might aren't impacted by the problem
                    yet.</p>
            </li>
            <li>
                <p>
                  <code>5</code> - No impact, customers aren't currently impacted but urgent
                    action is needed to avoid impact.</p>
            </li>
         </ul>")
    impact: option<impact>,
    @ocaml.doc("<p>Provide a title for the incident. Providing a title overwrites the title provided by
            the response plan. </p>")
    title: option<incidentTitle>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the response plan that pre-defines summary, chat
            channels, SNS topics, runbooks, title, and impact of the incident. </p>")
    responsePlanArn: arn,
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the newly created incident record.</p>") incidentRecordArn: arn,
  }
  @module("@aws-sdk/client-ssm-incidents") @new external new: request => t = "StartIncidentCommand"
  let make = (
    ~responsePlanArn,
    ~relatedItems=?,
    ~triggerDetails=?,
    ~impact=?,
    ~title=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      relatedItems,
      triggerDetails,
      impact,
      title,
      responsePlanArn,
      clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTimelineEvents = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results per page.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>Sorts the order of timeline events by the value specified in the <code>sortBy</code>
            field.</p>")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>Sort by the specified key value pair.</p>") sortBy: option<timelineEventSort>,
    @ocaml.doc("<p>Filters the timeline events based on the provided conditional values. You can filter
            timeline events using the following keys:</p>
        <ul>
            <li>
                <p>
                  <code>eventTime</code>
               </p>
            </li>
            <li>
                <p>
                  <code>eventType</code>
               </p>
            </li>
         </ul>")
    filters: option<filterList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the incident that the event is part of.</p>")
    incidentRecordArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Details about each event that occurred during the incident.</p>")
    eventSummaries: eventSummaryList,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "ListTimelineEventsCommand"
  let make = (
    ~incidentRecordArn,
    ~nextToken=?,
    ~maxResults=?,
    ~sortOrder=?,
    ~sortBy=?,
    ~filters=?,
    (),
  ) =>
    new({
      nextToken,
      maxResults,
      sortOrder,
      sortBy,
      filters,
      incidentRecordArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRelatedItems = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of related items per page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the incident record that you are listing related items for.</p>"
    )
    incidentRecordArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Details about each related item.</p>") relatedItems: relatedItemList,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "ListRelatedItemsCommand"
  let make = (~incidentRecordArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, incidentRecordArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIncidentRecords = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results per page.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>Filter the list of incident records you are searching through. You can filter on the
            following keys:</p>
        <ul>
            <li>
                <p>
                  <code>creationTime</code>
               </p>
            </li>
            <li>
                <p>
                  <code>impact</code>
               </p>
            </li>
            <li>
                <p>
                  <code>status</code>
               </p>
            </li>
            <li>
                <p>
                  <code>createdBy</code>
               </p>
            </li>
         </ul>")
    filters: option<filterList>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The details of each listed incident record.</p>")
    incidentRecordSummaries: incidentRecordSummaryList,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "ListIncidentRecordsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) => new({nextToken, maxResults, filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResponsePlan = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the response plan.</p>") arn: arn,
  }
  type response = {
    @ocaml.doc("<p>The actions that this response plan takes at the beginning of the incident.</p>")
    actions: option<actionsList>,
    @ocaml.doc("<p>The contacts and escalation plans that the response plan engages during an
            incident.</p>")
    engagements: option<engagementSet>,
    @ocaml.doc("<p>The
            AWS
            Chatbot chat channel used for collaboration during an
            incident.</p>")
    chatChannel: option<chatChannel>,
    @ocaml.doc("<p>Details used to create the incident when using this response plan.</p>")
    incidentTemplate: incidentTemplate,
    @ocaml.doc("<p>The long format name of the response plan. Can contain spaces.</p>")
    displayName: option<responsePlanDisplayName>,
    @ocaml.doc("<p>The short format name of the response plan. Can't contain spaces.</p>")
    name: responsePlanName,
    @ocaml.doc("<p>The ARN of the response plan.</p>") arn: arn,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "GetResponsePlanCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResponsePlan = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you are adding to the response plan.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The actions that the response plan starts at the beginning of an incident.</p>")
    actions: option<actionsList>,
    @ocaml.doc("<p>The contacts and escalation plans that the response plan engages during an
            incident.</p>")
    engagements: option<engagementSet>,
    @ocaml.doc("<p>The
            AWS Chatbot
            chat channel used for collaboration during an incident.</p>")
    chatChannel: option<chatChannel>,
    @ocaml.doc("<p>Details used to create an incident when using this response plan.</p>")
    incidentTemplate: incidentTemplate,
    @ocaml.doc("<p>The long format of the response plan name. This field can contain spaces.</p>")
    displayName: option<responsePlanDisplayName>,
    @ocaml.doc("<p>The short format name of the response plan. Can't include spaces.</p>")
    name: responsePlanName,
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the response plan.</p>") arn: arn,
  }
  @module("@aws-sdk/client-ssm-incidents") @new
  external new: request => t = "CreateResponsePlanCommand"
  let make = (
    ~incidentTemplate,
    ~name,
    ~tags=?,
    ~actions=?,
    ~engagements=?,
    ~chatChannel=?,
    ~displayName=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      tags,
      actions,
      engagements,
      chatChannel,
      incidentTemplate,
      displayName,
      name,
      clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
