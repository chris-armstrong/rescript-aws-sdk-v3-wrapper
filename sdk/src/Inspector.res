type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-inspector") @new
external createClient: unit => awsServiceClient = "InspectorClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type version = string
type url = string
type uuid = string
type timestamp_ = Js.Date.t
type text = string
type tagValue = string
type tagKey = string
type stopAction = [
  | @as("SKIP_EVALUATION") #SKIP_EVALUATION
  | @as("START_EVALUATION") #START_EVALUATION
]
type severity = [
  | @as("Undefined") #Undefined
  | @as("Informational") #Informational
  | @as("High") #High
  | @as("Medium") #Medium
  | @as("Low") #Low
]
type serviceName = string
type scopeValue = string
type scopeType = [@as("RULES_PACKAGE_ARN") #RULES_PACKAGE_ARN | @as("INSTANCE_ID") #INSTANCE_ID]
type rulesPackageName = string
type ruleName = string
type reportType = [@as("FULL") #FULL | @as("FINDING") #FINDING]
type reportStatus = [
  | @as("COMPLETED") #COMPLETED
  | @as("FAILED") #FAILED
  | @as("WORK_IN_PROGRESS") #WORK_IN_PROGRESS
]
type reportFileFormat = [@as("PDF") #PDF | @as("HTML") #HTML]
type providerName = string
type previewStatus = [@as("COMPLETED") #COMPLETED | @as("WORK_IN_PROGRESS") #WORK_IN_PROGRESS]
type previewAgentsMaxResults = int
type paginationToken = string
type operatingSystem = string
type numericVersion = int
type numericSeverity = float
type noSuchEntityErrorCode = [
  | @as("IAM_ROLE_DOES_NOT_EXIST") #IAM_ROLE_DOES_NOT_EXIST
  | @as("SNS_TOPIC_DOES_NOT_EXIST") #SNS_TOPIC_DOES_NOT_EXIST
  | @as("RULES_PACKAGE_DOES_NOT_EXIST") #RULES_PACKAGE_DOES_NOT_EXIST
  | @as("RESOURCE_GROUP_DOES_NOT_EXIST") #RESOURCE_GROUP_DOES_NOT_EXIST
  | @as("FINDING_DOES_NOT_EXIST") #FINDING_DOES_NOT_EXIST
  | @as("ASSESSMENT_RUN_DOES_NOT_EXIST") #ASSESSMENT_RUN_DOES_NOT_EXIST
  | @as("ASSESSMENT_TEMPLATE_DOES_NOT_EXIST") #ASSESSMENT_TEMPLATE_DOES_NOT_EXIST
  | @as("ASSESSMENT_TARGET_DOES_NOT_EXIST") #ASSESSMENT_TARGET_DOES_NOT_EXIST
]
type namePattern = string
type messageType = string
type message = string
type long = float
type locale = [@as("EN_US") #EN_US]
type listMaxResults = int
type listEventSubscriptionsMaxResults = int
type limitExceededErrorCode = [
  | @as("EVENT_SUBSCRIPTION_LIMIT_EXCEEDED") #EVENT_SUBSCRIPTION_LIMIT_EXCEEDED
  | @as("RESOURCE_GROUP_LIMIT_EXCEEDED") #RESOURCE_GROUP_LIMIT_EXCEEDED
  | @as("ASSESSMENT_RUN_LIMIT_EXCEEDED") #ASSESSMENT_RUN_LIMIT_EXCEEDED
  | @as("ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED") #ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED
  | @as("ASSESSMENT_TARGET_LIMIT_EXCEEDED") #ASSESSMENT_TARGET_LIMIT_EXCEEDED
]
type kernelVersion = string
type ipv4Address = string
type iocConfidence = int
type invalidInputErrorCode = [
  | @as("INVALID_NUMBER_OF_SEVERITIES") #INVALID_NUMBER_OF_SEVERITIES
  | @as("INVALID_NUMBER_OF_RULE_NAMES") #INVALID_NUMBER_OF_RULE_NAMES
  | @as("INVALID_NUMBER_OF_AUTO_SCALING_GROUPS") #INVALID_NUMBER_OF_AUTO_SCALING_GROUPS
  | @as("INVALID_NUMBER_OF_AGENT_IDS") #INVALID_NUMBER_OF_AGENT_IDS
  | @as("INVALID_NUMBER_OF_USER_ATTRIBUTES") #INVALID_NUMBER_OF_USER_ATTRIBUTES
  | @as("INVALID_NUMBER_OF_ATTRIBUTES") #INVALID_NUMBER_OF_ATTRIBUTES
  | @as("INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS") #INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS
  | @as("INVALID_NUMBER_OF_TAGS") #INVALID_NUMBER_OF_TAGS
  | @as("INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES") #INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES
  | @as("INVALID_NUMBER_OF_RULES_PACKAGE_ARNS") #INVALID_NUMBER_OF_RULES_PACKAGE_ARNS
  | @as("INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS") #INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS
  | @as("INVALID_NUMBER_OF_FINDING_ARNS") #INVALID_NUMBER_OF_FINDING_ARNS
  | @as("INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS") #INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS
  | @as("INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS") #INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS
  | @as("INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS") #INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS
  | @as("ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN") #ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN
  | @as("ASSESSMENT_TARGET_NAME_ALREADY_TAKEN") #ASSESSMENT_TARGET_NAME_ALREADY_TAKEN
  | @as("INVALID_EVENT") #INVALID_EVENT
  | @as("INVALID_LOCALE") #INVALID_LOCALE
  | @as("INVALID_SEVERITY") #INVALID_SEVERITY
  | @as("INVALID_RULE_NAME") #INVALID_RULE_NAME
  | @as("INVALID_AUTO_SCALING_GROUP") #INVALID_AUTO_SCALING_GROUP
  | @as("INVALID_AGENT_ID") #INVALID_AGENT_ID
  | @as("INVALID_MAX_RESULTS") #INVALID_MAX_RESULTS
  | @as("INVALID_PAGINATION_TOKEN") #INVALID_PAGINATION_TOKEN
  | @as("INVALID_USER_ATTRIBUTE_VALUE") #INVALID_USER_ATTRIBUTE_VALUE
  | @as("INVALID_USER_ATTRIBUTE_KEY") #INVALID_USER_ATTRIBUTE_KEY
  | @as("INVALID_USER_ATTRIBUTE") #INVALID_USER_ATTRIBUTE
  | @as("INVALID_ATTRIBUTE") #INVALID_ATTRIBUTE
  | @as("INVALID_RESOURCE_GROUP_TAG_VALUE") #INVALID_RESOURCE_GROUP_TAG_VALUE
  | @as("INVALID_RESOURCE_GROUP_TAG_KEY") #INVALID_RESOURCE_GROUP_TAG_KEY
  | @as("INVALID_TAG_VALUE") #INVALID_TAG_VALUE
  | @as("INVALID_TAG_KEY") #INVALID_TAG_KEY
  | @as("INVALID_TAG") #INVALID_TAG
  | @as("INVALID_ASSESSMENT_RUN_STATE") #INVALID_ASSESSMENT_RUN_STATE
  | @as("INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE")
  #INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE
  | @as("INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE")
  #INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE
  | @as("INVALID_ASSESSMENT_RUN_START_TIME_RANGE") #INVALID_ASSESSMENT_RUN_START_TIME_RANGE
  | @as("INVALID_ASSESSMENT_RUN_DURATION_RANGE") #INVALID_ASSESSMENT_RUN_DURATION_RANGE
  | @as("INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE") #INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE
  | @as("INVALID_ASSESSMENT_TEMPLATE_DURATION") #INVALID_ASSESSMENT_TEMPLATE_DURATION
  | @as("INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN") #INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN
  | @as("INVALID_ASSESSMENT_TEMPLATE_NAME") #INVALID_ASSESSMENT_TEMPLATE_NAME
  | @as("INVALID_ASSESSMENT_TARGET_NAME_PATTERN") #INVALID_ASSESSMENT_TARGET_NAME_PATTERN
  | @as("INVALID_ASSESSMENT_TARGET_NAME") #INVALID_ASSESSMENT_TARGET_NAME
  | @as("INVALID_IAM_ROLE_ARN") #INVALID_IAM_ROLE_ARN
  | @as("INVALID_SNS_TOPIC_ARN") #INVALID_SNS_TOPIC_ARN
  | @as("INVALID_RESOURCE_ARN") #INVALID_RESOURCE_ARN
  | @as("INVALID_RULES_PACKAGE_ARN") #INVALID_RULES_PACKAGE_ARN
  | @as("INVALID_RESOURCE_GROUP_ARN") #INVALID_RESOURCE_GROUP_ARN
  | @as("INVALID_FINDING_ARN") #INVALID_FINDING_ARN
  | @as("INVALID_ASSESSMENT_RUN_ARN") #INVALID_ASSESSMENT_RUN_ARN
  | @as("INVALID_ASSESSMENT_TEMPLATE_ARN") #INVALID_ASSESSMENT_TEMPLATE_ARN
  | @as("INVALID_ASSESSMENT_TARGET_ARN") #INVALID_ASSESSMENT_TARGET_ARN
]
type invalidCrossAccountRoleErrorCode = [
  | @as("ROLE_DOES_NOT_HAVE_CORRECT_POLICY") #ROLE_DOES_NOT_HAVE_CORRECT_POLICY
  | @as("ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP")
  #ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP
]
type inspectorEvent = [
  | @as("OTHER") #OTHER
  | @as("FINDING_REPORTED") #FINDING_REPORTED
  | @as("ASSESSMENT_RUN_STATE_CHANGED") #ASSESSMENT_RUN_STATE_CHANGED
  | @as("ASSESSMENT_RUN_COMPLETED") #ASSESSMENT_RUN_COMPLETED
  | @as("ASSESSMENT_RUN_STARTED") #ASSESSMENT_RUN_STARTED
]
type hostname = string
type findingId = string
type findingCount = int
type failedItemErrorCode = [
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("LIMIT_EXCEEDED") #LIMIT_EXCEEDED
  | @as("ACCESS_DENIED") #ACCESS_DENIED
  | @as("ITEM_DOES_NOT_EXIST") #ITEM_DOES_NOT_EXIST
  | @as("DUPLICATE_ARN") #DUPLICATE_ARN
  | @as("INVALID_ARN") #INVALID_ARN
]
type errorMessage = string
type bool_ = bool
type autoScalingGroup = string
type attributeValue = string
type attributeKey = string
type assetType = [@as("ec2-instance") #Ec2_Instance]
type assessmentTemplateName = string
type assessmentTargetName = string
type assessmentRunState = [
  | @as("CANCELED") #CANCELED
  | @as("COMPLETED_WITH_ERRORS") #COMPLETED_WITH_ERRORS
  | @as("COMPLETED") #COMPLETED
  | @as("ERROR") #ERROR
  | @as("FAILED") #FAILED
  | @as("EVALUATING_RULES") #EVALUATING_RULES
  | @as("START_EVALUATING_RULES_PENDING") #START_EVALUATING_RULES_PENDING
  | @as("DATA_COLLECTED") #DATA_COLLECTED
  | @as("STOP_DATA_COLLECTION_PENDING") #STOP_DATA_COLLECTION_PENDING
  | @as("COLLECTING_DATA") #COLLECTING_DATA
  | @as("START_DATA_COLLECTION_IN_PROGRESS") #START_DATA_COLLECTION_IN_PROGRESS
  | @as("START_DATA_COLLECTION_PENDING") #START_DATA_COLLECTION_PENDING
  | @as("CREATED") #CREATED
]
type assessmentRunNotificationSnsStatusCode = [
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("ACCESS_DENIED") #ACCESS_DENIED
  | @as("TOPIC_DOES_NOT_EXIST") #TOPIC_DOES_NOT_EXIST
  | @as("SUCCESS") #SUCCESS
]
type assessmentRunName = string
type assessmentRunDuration = int
type arnCount = int
type arn = string
type amiId = string
type agentVersion = string
type agentId = string
type agentHealthCode = [
  | @as("UNKNOWN") #UNKNOWN
  | @as("THROTTLED") #THROTTLED
  | @as("UNHEALTHY") #UNHEALTHY
  | @as("SHUTDOWN") #SHUTDOWN
  | @as("RUNNING") #RUNNING
  | @as("IDLE") #IDLE
]
type agentHealth = [@as("UNKNOWN") #UNKNOWN | @as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type accessDeniedErrorCode = [
  | @as("ACCESS_DENIED_TO_IAM_ROLE") #ACCESS_DENIED_TO_IAM_ROLE
  | @as("ACCESS_DENIED_TO_SNS_TOPIC") #ACCESS_DENIED_TO_SNS_TOPIC
  | @as("ACCESS_DENIED_TO_RULES_PACKAGE") #ACCESS_DENIED_TO_RULES_PACKAGE
  | @as("ACCESS_DENIED_TO_RESOURCE_GROUP") #ACCESS_DENIED_TO_RESOURCE_GROUP
  | @as("ACCESS_DENIED_TO_FINDING") #ACCESS_DENIED_TO_FINDING
  | @as("ACCESS_DENIED_TO_ASSESSMENT_RUN") #ACCESS_DENIED_TO_ASSESSMENT_RUN
  | @as("ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE") #ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE
  | @as("ACCESS_DENIED_TO_ASSESSMENT_TARGET") #ACCESS_DENIED_TO_ASSESSMENT_TARGET
]
type userAttributeKeyList = array<attributeKey>
@ocaml.doc("<p>This data type is used in the <a>AssessmentRunFilter</a> data
         type.</p>")
type timestampRange = {
  @ocaml.doc("<p>The maximum value of the timestamp range.</p>") endDate: option<timestamp_>,
  @ocaml.doc("<p>The minimum value of the timestamp range.</p>") beginDate: option<timestamp_>,
}
@ocaml.doc("<p>The metadata about the Amazon Inspector application data metrics collected by the
         agent. This data type is used as the response element in the <a>GetTelemetryMetadata</a> action.</p>")
type telemetryMetadata = {
  @ocaml.doc("<p>The data size of messages that the agent sends to the Amazon Inspector
         service.</p>")
  dataSize: option<long>,
  @ocaml.doc("<p>The count of messages that the agent sends to the Amazon Inspector service.</p>")
  count: long,
  @ocaml.doc("<p>A specific type of behavioral data that is collected by the agent.</p>")
  messageType: messageType,
}
@ocaml.doc(
  "<p>A key and value pair. This data type is used as a request parameter in the <a>SetTagsForResource</a> action and a response element in the <a>ListTagsForResource</a> action.</p>"
)
type tag = {
  @ocaml.doc("<p>A value assigned to a tag key.</p>") value: option<tagValue>,
  @ocaml.doc("<p>A tag key.</p>") key: tagKey,
}
type severityList = array<severity>
@ocaml.doc("<p>Contains information about a security group associated with a network interface. This
         data type is used as one of the elements of the <a>NetworkInterface</a> data
         type.</p>")
type securityGroup = {
  @ocaml.doc("<p>The ID of the security group.</p>") groupId: option<text>,
  @ocaml.doc("<p>The name of the security group.</p>") groupName: option<text>,
}
@ocaml.doc("<p>This data type contains key-value pairs that identify various Amazon
         resources.</p>")
type scope = {
  @ocaml.doc("<p>The resource identifier for the specified scope type.</p>")
  value: option<scopeValue>,
  @ocaml.doc("<p>The type of the scope.</p>") key: option<scopeType>,
}
@ocaml.doc("<p>Contains information about an Amazon Inspector rules package. This data type is used
         as the response element in the <a>DescribeRulesPackages</a> action.</p>")
type rulesPackage = {
  @ocaml.doc("<p>The description of the rules package.</p>") description: option<text>,
  @ocaml.doc("<p>The provider of the rules package.</p>") provider: providerName,
  @ocaml.doc("<p>The version ID of the rules package.</p>") version: version,
  @ocaml.doc("<p>The name of the rules package.</p>") name: rulesPackageName,
  @ocaml.doc("<p>The ARN of the rules package.</p>") arn: arn,
}
type ruleNameList = array<ruleName>
@ocaml.doc("<p>This data type is used as one of the elements of the <a>ResourceGroup</a>
         data type.</p>")
type resourceGroupTag = {
  @ocaml.doc("<p>The value assigned to a tag key.</p>") value: option<tagValue>,
  @ocaml.doc("<p>A tag key.</p>") key: tagKey,
}
@ocaml.doc("<p>Contains information about a private IP address associated with a network interface. This
         data type is used as a response element in the <a>DescribeFindings</a>
         action.</p>")
type privateIp = {
  @ocaml.doc("<p>The full IP address of the network inteface.</p>") privateIpAddress: option<text>,
  @ocaml.doc("<p>The DNS name of the private IP address.</p>") privateDnsName: option<text>,
}
type listReturnedArnList = array<arn>
type listParentArnList = array<arn>
type ipv6Addresses = array<text>
type ipv4AddressList = array<ipv4Address>
@ocaml.doc("<p>This data type is used in the <a>Finding</a> data type.</p>")
type inspectorServiceAttributes = {
  @ocaml.doc("<p>The ARN of the rules package that is used to generate the finding.</p>")
  rulesPackageArn: option<arn>,
  @ocaml.doc("<p>The ARN of the assessment run during which the finding is generated.</p>")
  assessmentRunArn: option<arn>,
  @ocaml.doc("<p>The schema version of this data type.</p>") schemaVersion: numericVersion,
}
type filterRulesPackageArnList = array<arn>
@ocaml.doc("<p>Includes details about the failed items.</p>")
type failedItemDetails = {
  @ocaml.doc("<p>Indicates whether you can immediately retry a request for this item for a specified
         resource.</p>")
  retryable: bool_,
  @ocaml.doc("<p>The status code of a failed item.</p>") failureCode: failedItemErrorCode,
}
@ocaml.doc("<p>This data type is used in the <a>Subscription</a> data type.</p>")
type eventSubscription = {
  @ocaml.doc("<p>The time at which <a>SubscribeToEvent</a> is called.</p>")
  subscribedAt: timestamp_,
  @ocaml.doc("<p>The event for which Amazon Simple Notification Service (SNS) notifications are
         sent.</p>")
  event: inspectorEvent,
}
@ocaml.doc("<p>This data type is used in the <a>AssessmentTemplateFilter</a> data
         type.</p>")
type durationRange = {
  @ocaml.doc("<p>The maximum value of the duration range. Must be less than or equal to 604800 seconds
         (1 week).</p>")
  maxSeconds: option<assessmentRunDuration>,
  @ocaml.doc("<p>The minimum value of the duration range. Must be greater than zero.</p>")
  minSeconds: option<assessmentRunDuration>,
}
type batchDescribeExclusionsArnList = array<arn>
type batchDescribeArnList = array<arn>
type autoScalingGroupList = array<autoScalingGroup>
@ocaml.doc("<p>This data type is used as a request parameter in the <a>AddAttributesToFindings</a> and <a>CreateAssessmentTemplate</a>
         actions.</p>")
type attribute = {
  @ocaml.doc("<p>The value assigned to the attribute key.</p>") value: option<attributeValue>,
  @ocaml.doc("<p>The attribute key.</p>") key: attributeKey,
}
type assessmentTemplateRulesPackageArnList = array<arn>
@ocaml.doc("<p>Used as the request parameter in the <a>ListAssessmentTargets</a>
         action.</p>")
type assessmentTargetFilter = {
  @ocaml.doc("<p>For a record to match a filter, an explicit value or a string that contains a
         wildcard that is specified for this data type property must match the value of the
            <b>assessmentTargetName</b> property of the <a>AssessmentTarget</a> data type.</p>")
  assessmentTargetNamePattern: option<namePattern>,
}
@ocaml.doc("<p>Contains information about an Amazon Inspector application. This data type is used as
         the response element in the <a>DescribeAssessmentTargets</a> action.</p>")
type assessmentTarget = {
  @ocaml.doc("<p>The time at which <a>UpdateAssessmentTarget</a> is called.</p>")
  updatedAt: timestamp_,
  @ocaml.doc("<p>The time at which the assessment target is created.</p>") createdAt: timestamp_,
  @ocaml.doc("<p>The ARN that specifies the resource group that is associated with the assessment
         target.</p>")
  resourceGroupArn: option<arn>,
  @ocaml.doc("<p>The name of the Amazon Inspector assessment target.</p>")
  name: assessmentTargetName,
  @ocaml.doc("<p>The ARN that specifies the Amazon Inspector assessment target.</p>") arn: arn,
}
type assessmentRunStateList = array<assessmentRunState>
@ocaml.doc("<p>Used as one of the elements of the <a>AssessmentRun</a> data
         type.</p>")
type assessmentRunStateChange = {
  @ocaml.doc("<p>The assessment run state.</p>") state: assessmentRunState,
  @ocaml.doc("<p>The last time the assessment run state changed.</p>") stateChangedAt: timestamp_,
}
@ocaml.doc("<p>Used as one of the elements of the <a>AssessmentRun</a> data
         type.</p>")
type assessmentRunNotification = {
  @ocaml.doc("<p>The status code of the SNS notification.</p>")
  snsPublishStatusCode: option<assessmentRunNotificationSnsStatusCode>,
  @ocaml.doc("<p>The SNS topic to which the SNS notification is sent.</p>")
  snsTopicArn: option<arn>,
  @ocaml.doc("<p>The Boolean value that specifies whether the notification represents an
         error.</p>")
  error: bool_,
  @ocaml.doc("<p>The message included in the notification.</p>") message: option<message>,
  @ocaml.doc("<p>The event for which a notification is sent.</p>") event: inspectorEvent,
  @ocaml.doc("<p>The date of the notification.</p>") date: timestamp_,
}
type assessmentRunInProgressArnList = array<arn>
type assessmentRunFindingCounts = Js.Dict.t<findingCount>
type assessmentRulesPackageArnList = array<arn>
@ocaml.doc("<p>Used as a response element in the <a>PreviewAgents</a> action.</p>")
type agentPreview = {
  @ocaml.doc("<p>The IP address of the EC2 instance on which the Amazon Inspector Agent is
         installed.</p>")
  ipv4Address: option<ipv4Address>,
  @ocaml.doc("<p>The kernel version of the operating system running on the EC2 instance on which the
         Amazon Inspector Agent is installed.</p>")
  kernelVersion: option<kernelVersion>,
  @ocaml.doc("<p>The operating system running on the EC2 instance on which the Amazon Inspector Agent
         is installed.</p>")
  operatingSystem: option<operatingSystem>,
  @ocaml.doc("<p>The version of the Amazon Inspector Agent.</p>")
  agentVersion: option<agentVersion>,
  @ocaml.doc("<p>The health status of the Amazon Inspector Agent.</p>")
  agentHealth: option<agentHealth>,
  @ocaml.doc("<p>The Auto Scaling group for the EC2 instance where the agent is installed.</p>")
  autoScalingGroup: option<autoScalingGroup>,
  @ocaml.doc("<p>The ID of the EC2 instance where the agent is installed.</p>") agentId: agentId,
  @ocaml.doc("<p>The hostname of the EC2 instance on which the Amazon Inspector Agent is
         installed.</p>")
  hostname: option<hostname>,
}
type agentIdList = array<agentId>
type agentHealthList = array<agentHealth>
type agentHealthCodeList = array<agentHealthCode>
@ocaml.doc("<p>Used in the exception error that is thrown if you start an assessment run for an
         assessment target that includes an EC2 instance that is already participating in another
         started assessment run.</p>")
type agentAlreadyRunningAssessment = {
  @ocaml.doc("<p>The ARN of the assessment run that has already been started.</p>")
  assessmentRunArn: arn,
  @ocaml.doc("<p>ID of the agent that is running on an EC2 instance that is already participating in
         another started assessment run.</p>")
  agentId: agentId,
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
type failedItems = Js.Dict.t<failedItemDetails>
type eventSubscriptionList = array<eventSubscription>
type attributeList = array<attribute>
@ocaml.doc("<p>Used as the request parameter in the <a>ListAssessmentTemplates</a>
         action.</p>")
type assessmentTemplateFilter = {
  @ocaml.doc("<p>For a record to match a filter, the values that are specified for this data type
         property must be contained in the list of values of the <b>rulesPackageArns</b> property of the <a>AssessmentTemplate</a> data
         type.</p>")
  rulesPackageArns: option<filterRulesPackageArnList>,
  @ocaml.doc("<p>For a record to match a filter, the value specified for this data type property must
         inclusively match any value between the specified minimum and maximum values of the
            <b>durationInSeconds</b> property of the <a>AssessmentTemplate</a> data type.</p>")
  durationRange: option<durationRange>,
  @ocaml.doc("<p>For a record to match a filter, an explicit value or a string that contains a
         wildcard that is specified for this data type property must match the value of the
            <b>assessmentTemplateName</b> property of the <a>AssessmentTemplate</a> data type.</p>")
  namePattern: option<namePattern>,
}
type assessmentTargetList = array<assessmentTarget>
type assessmentRunStateChangeList = array<assessmentRunStateChange>
type assessmentRunNotificationList = array<assessmentRunNotification>
@ocaml.doc("<p>Used as the request parameter in the <a>ListAssessmentRuns</a>
         action.</p>")
type assessmentRunFilter = {
  @ocaml.doc("<p>For a record to match a filter, the value that is specified for this data type
         property must match the <b>stateChangedAt</b> property of the
            <a>AssessmentRun</a> data type.</p>")
  stateChangeTimeRange: option<timestampRange>,
  @ocaml.doc("<p>For a record to match a filter, the value that is specified for this data type
         property must inclusively match any value between the specified minimum and maximum values
         of the <b>completedAt</b> property of the <a>AssessmentRun</a> data type.</p>")
  completionTimeRange: option<timestampRange>,
  @ocaml.doc("<p>For a record to match a filter, the value that is specified for this data type
         property must inclusively match any value between the specified minimum and maximum values
         of the <b>startTime</b> property of the <a>AssessmentRun</a> data type.</p>")
  startTimeRange: option<timestampRange>,
  @ocaml.doc("<p>For a record to match a filter, the value that is specified for this data type
         property must be contained in the list of values of the <b>rulesPackages</b> property of the <a>AssessmentRun</a> data
         type.</p>")
  rulesPackageArns: option<filterRulesPackageArnList>,
  @ocaml.doc("<p>For a record to match a filter, the value that is specified for this data type
         property must inclusively match any value between the specified minimum and maximum values
         of the <b>durationInSeconds</b> property of the <a>AssessmentRun</a> data type.</p>")
  durationRange: option<durationRange>,
  @ocaml.doc("<p>For a record to match a filter, one of the values specified for this data type
         property must be the exact match of the value of the <b>assessmentRunState</b> property of the <a>AssessmentRun</a> data
         type.</p>")
  states: option<assessmentRunStateList>,
  @ocaml.doc("<p>For a record to match a filter, an explicit value or a string containing a wildcard
         that is specified for this data type property must match the value of the <b>assessmentRunName</b> property of the <a>AssessmentRun</a>
         data type.</p>")
  namePattern: option<namePattern>,
}
type agentPreviewList = array<agentPreview>
@ocaml.doc("<p>Contains information about an Amazon Inspector agent. This data type is used as a
         request parameter in the <a>ListAssessmentRunAgents</a> action.</p>")
type agentFilter = {
  @ocaml.doc(
    "<p>The detailed health state of the agent. Values can be set to <b>IDLE</b>, <b>RUNNING</b>, <b>SHUTDOWN</b>, <b>UNHEALTHY</b>, <b>THROTTLED</b>, and <b>UNKNOWN</b>. </p>"
  )
  agentHealthCodes: agentHealthCodeList,
  @ocaml.doc(
    "<p>The current health state of the agent. Values can be set to <b>HEALTHY</b> or <b>UNHEALTHY</b>.</p>"
  )
  agentHealths: agentHealthList,
}
type agentAlreadyRunningAssessmentList = array<agentAlreadyRunningAssessment>
@ocaml.doc(
  "<p>This data type is used as a response element in the <a>ListEventSubscriptions</a> action.</p>"
)
type subscription = {
  @ocaml.doc("<p>The list of existing event subscriptions.</p>")
  eventSubscriptions: eventSubscriptionList,
  @ocaml.doc("<p>The ARN of the Amazon Simple Notification Service (SNS) topic to which the SNS
         notifications are sent.</p>")
  topicArn: arn,
  @ocaml.doc("<p>The ARN of the assessment template that is used during the event for which the SNS
         notification is sent.</p>")
  resourceArn: arn,
}
@ocaml.doc("<p>Contains information about a resource group. The resource group defines a set of tags
         that, when queried, identify the AWS resources that make up the assessment target. This
         data type is used as the response element in the <a>DescribeResourceGroups</a>
         action.</p>")
type resourceGroup = {
  @ocaml.doc("<p>The time at which resource group is created.</p>") createdAt: timestamp_,
  @ocaml.doc("<p>The tags (key and value pairs) of the resource group. This data type property is used
         in the <a>CreateResourceGroup</a> action.</p>")
  tags: resourceGroupTags,
  @ocaml.doc("<p>The ARN of the resource group.</p>") arn: arn,
}
@ocaml.doc("<p>Contains information about the network interfaces interacting with an EC2 instance.
         This data type is used as one of the elements of the <a>AssetAttributes</a> data
         type.</p>")
type networkInterface = {
  @ocaml.doc("<p>A list of the security groups associated with the network interface. Includes the
         groupId and groupName.</p>")
  securityGroups: option<securityGroups>,
  @ocaml.doc("<p>The IP addresses associated with the network interface.</p>")
  ipv6Addresses: option<ipv6Addresses>,
  @ocaml.doc("<p>The public IP address from which the network interface is reachable.</p>")
  publicIp: option<text>,
  @ocaml.doc("<p>The name of a public DNS associated with the network interface.</p>")
  publicDnsName: option<text>,
  @ocaml.doc("<p>A list of the private IP addresses associated with the network interface. Includes
         the privateDnsName and privateIpAddress.</p>")
  privateIpAddresses: option<privateIpAddresses>,
  @ocaml.doc("<p>The private IP address associated with the network interface.</p>")
  privateIpAddress: option<text>,
  @ocaml.doc("<p>The name of a private DNS associated with the network interface.</p>")
  privateDnsName: option<text>,
  @ocaml.doc("<p>The ID of a VPC associated with the network interface.</p>") vpcId: option<text>,
  @ocaml.doc("<p>The ID of a subnet associated with the network interface.</p>")
  subnetId: option<text>,
  @ocaml.doc("<p>The ID of the network interface.</p>") networkInterfaceId: option<text>,
}
@ocaml.doc("<p>This data type is used as a request parameter in the <a>ListFindings</a>
         action.</p>")
type findingFilter = {
  @ocaml.doc("<p>The time range during which the finding is generated.</p>")
  creationTimeRange: option<timestampRange>,
  @ocaml.doc("<p>For a record to match a filter, the value that is specified for this data type
         property must be contained in the list of values of the <b>userAttributes</b> property of the <a>Finding</a> data
         type.</p>")
  userAttributes: option<attributeList>,
  @ocaml.doc("<p>For a record to match a filter, the list of values that are specified for this data
         type property must be contained in the list of values of the <b>attributes</b> property of the <a>Finding</a> data type.</p>")
  attributes: option<attributeList>,
  @ocaml.doc("<p>For a record to match a filter, one of the values that is specified for this data
         type property must be the exact match of the value of the <b>rulesPackageArn</b> property of the <a>Finding</a> data
         type.</p>")
  rulesPackageArns: option<filterRulesPackageArnList>,
  @ocaml.doc("<p>For a record to match a filter, one of the values that is specified for this data
         type property must be the exact match of the value of the <b>severity</b> property of the <a>Finding</a> data type.</p>")
  severities: option<severityList>,
  @ocaml.doc("<p>For a record to match a filter, one of the values that is specified for this data
         type property must be the exact match of the value of the <b>ruleName</b> property of the <a>Finding</a> data type.</p>")
  ruleNames: option<ruleNameList>,
  @ocaml.doc("<p>For a record to match a filter, one of the values that is specified for this data
         type property must be the exact match of the value of the <b>autoScalingGroup</b> property of the <a>Finding</a> data
         type.</p>")
  autoScalingGroups: option<autoScalingGroupList>,
  @ocaml.doc("<p>For a record to match a filter, one of the values that is specified for this data
         type property must be the exact match of the value of the <b>agentId</b> property of the <a>Finding</a> data type.</p>")
  agentIds: option<agentIdList>,
}
@ocaml.doc("<p>Contains information about what is excluded from an assessment run given the current
         state of the assessment template.</p>")
type exclusionPreview = {
  @ocaml.doc("<p>The system-defined attributes for the exclusion preview.</p>")
  attributes: option<attributeList>,
  @ocaml.doc("<p>The AWS resources for which the exclusion preview pertains.</p>")
  scopes: scopeList,
  @ocaml.doc("<p>The recommendation for the exclusion preview.</p>") recommendation: text,
  @ocaml.doc("<p>The description of the exclusion preview.</p>") description: text,
  @ocaml.doc("<p>The name of the exclusion preview.</p>") title: text,
}
@ocaml.doc("<p>Contains information about what was excluded from an assessment run.</p>")
type exclusion = {
  @ocaml.doc("<p>The system-defined attributes for the exclusion.</p>")
  attributes: option<attributeList>,
  @ocaml.doc("<p>The AWS resources for which the exclusion pertains.</p>") scopes: scopeList,
  @ocaml.doc("<p>The recommendation for the exclusion.</p>") recommendation: text,
  @ocaml.doc("<p>The description of the exclusion.</p>") description: text,
  @ocaml.doc("<p>The name of the exclusion.</p>") title: text,
  @ocaml.doc("<p>The ARN that specifies the exclusion.</p>") arn: arn,
}
@ocaml.doc("<p>Contains information about an Amazon Inspector assessment template. This data type is
         used as the response element in the <a>DescribeAssessmentTemplates</a>
         action.</p>")
type assessmentTemplate = {
  @ocaml.doc("<p>The time at which the assessment template is created.</p>") createdAt: timestamp_,
  @ocaml.doc("<p>The number of existing assessment runs associated with this assessment template. This
         value can be zero or a positive integer.</p>")
  assessmentRunCount: arnCount,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the most recent assessment run associated with this
         assessment template. This value exists only when the value of assessmentRunCount is
         greaterpa than zero.</p>")
  lastAssessmentRunArn: option<arn>,
  @ocaml.doc("<p>The user-defined attributes that are assigned to every generated finding from the
         assessment run that uses this assessment template.</p>")
  userAttributesForFindings: userAttributeList,
  @ocaml.doc("<p>The rules packages that are specified for this assessment template.</p>")
  rulesPackageArns: assessmentTemplateRulesPackageArnList,
  @ocaml.doc("<p>The duration in seconds specified for this assessment template. The default value is
         3600 seconds (one hour). The maximum value is 86400 seconds (one day).</p>")
  durationInSeconds: assessmentRunDuration,
  @ocaml.doc("<p>The ARN of the assessment target that corresponds to this assessment
         template.</p>")
  assessmentTargetArn: arn,
  @ocaml.doc("<p>The name of the assessment template.</p>") name: assessmentTemplateName,
  @ocaml.doc("<p>The ARN of the assessment template.</p>") arn: arn,
}
@ocaml.doc("<p>Contains information about an Amazon Inspector agent. This data type is used as a
         response element in the <a>ListAssessmentRunAgents</a> action.</p>")
type assessmentRunAgent = {
  @ocaml.doc("<p>The Amazon Inspector application data metrics that are collected by the
         agent.</p>")
  telemetryMetadata: telemetryMetadataList,
  @ocaml.doc("<p>The Auto Scaling group of the EC2 instance that is specified by the agent
         ID.</p>")
  autoScalingGroup: option<autoScalingGroup>,
  @ocaml.doc("<p>The description for the agent health code.</p>")
  agentHealthDetails: option<message>,
  @ocaml.doc("<p>The detailed health state of the agent.</p>") agentHealthCode: agentHealthCode,
  @ocaml.doc("<p>The current health state of the agent.</p>") agentHealth: agentHealth,
  @ocaml.doc("<p>The ARN of the assessment run that is associated with the agent.</p>")
  assessmentRunArn: arn,
  @ocaml.doc("<p>The AWS account of the EC2 instance where the agent is installed.</p>")
  agentId: agentId,
}
@ocaml.doc("<p>A snapshot of an Amazon Inspector assessment run that contains the findings of the
         assessment run .</p>
         <p>Used as the response element in the <a>DescribeAssessmentRuns</a>
         action.</p>")
type assessmentRun = {
  @ocaml.doc("<p>Provides a total count of generated findings per severity.</p>")
  findingCounts: assessmentRunFindingCounts,
  @ocaml.doc("<p>A list of notifications for the event subscriptions. A notification about a
         particular generated finding is added to this list only once.</p>")
  notifications: assessmentRunNotificationList,
  @ocaml.doc("<p>A list of the assessment run state changes.</p>")
  stateChanges: assessmentRunStateChangeList,
  @ocaml.doc("<p>A Boolean value (true or false) that specifies whether the process of collecting data
         from the agents is completed.</p>")
  dataCollected: bool_,
  @ocaml.doc("<p>The last time when the assessment run's state changed.</p>")
  stateChangedAt: timestamp_,
  @ocaml.doc("<p>The assessment run completion time that corresponds to the rules packages evaluation
         completion time or failure.</p>")
  completedAt: option<timestamp_>,
  @ocaml.doc("<p>The time when <a>StartAssessmentRun</a> was called.</p>")
  startedAt: option<timestamp_>,
  @ocaml.doc("<p>The time when <a>StartAssessmentRun</a> was called.</p>") createdAt: timestamp_,
  @ocaml.doc("<p>The user-defined attributes that are assigned to every generated finding.</p>")
  userAttributesForFindings: userAttributeList,
  @ocaml.doc("<p>The rules packages selected for the assessment run.</p>")
  rulesPackageArns: assessmentRulesPackageArnList,
  @ocaml.doc("<p>The duration of the assessment run.</p>") durationInSeconds: assessmentRunDuration,
  @ocaml.doc("<p>The state of the assessment run.</p>") state: assessmentRunState,
  @ocaml.doc("<p>The ARN of the assessment template that is associated with the assessment
         run.</p>")
  assessmentTemplateArn: arn,
  @ocaml.doc("<p>The auto-generated name for the assessment run.</p>") name: assessmentRunName,
  @ocaml.doc("<p>The ARN of the assessment run.</p>") arn: arn,
}
type subscriptionList = array<subscription>
type resourceGroupList = array<resourceGroup>
type networkInterfaces = array<networkInterface>
type exclusionPreviewList = array<exclusionPreview>
type exclusionMap = Js.Dict.t<exclusion>
type assessmentTemplateList = array<assessmentTemplate>
type assessmentRunList = array<assessmentRun>
type assessmentRunAgentList = array<assessmentRunAgent>
@ocaml.doc("<p>A collection of attributes of the host from which the finding is generated.</p>")
type assetAttributes = {
  @ocaml.doc("<p>An array of the network interfaces interacting with the EC2 instance where the
         finding is generated.</p>")
  networkInterfaces: option<networkInterfaces>,
  @ocaml.doc("<p>The tags related to the EC2 instance where the finding is generated.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>The list of IP v4 addresses of the EC2 instance where the finding is
         generated.</p>")
  ipv4Addresses: option<ipv4AddressList>,
  @ocaml.doc("<p>The hostname of the EC2 instance where the finding is generated.</p>")
  hostname: option<hostname>,
  @ocaml.doc("<p>The ID of the Amazon Machine Image (AMI) that is installed on the EC2 instance where
         the finding is generated.</p>")
  amiId: option<amiId>,
  @ocaml.doc("<p>The Auto Scaling group of the EC2 instance where the finding is generated.</p>")
  autoScalingGroup: option<autoScalingGroup>,
  @ocaml.doc("<p>The ID of the agent that is installed on the EC2 instance where the finding is
         generated.</p>")
  agentId: option<agentId>,
  @ocaml.doc("<p>The schema version of this data type.</p>") schemaVersion: numericVersion,
}
@ocaml.doc("<p>Contains information about an Amazon Inspector finding. This data type is used as the
         response element in the <a>DescribeFindings</a> action.</p>")
type finding = {
  @ocaml.doc("<p>The time when <a>AddAttributesToFindings</a> is called.</p>")
  updatedAt: timestamp_,
  @ocaml.doc("<p>The time when the finding was generated.</p>") createdAt: timestamp_,
  @ocaml.doc("<p>The user-defined attributes that are assigned to the finding.</p>")
  userAttributes: userAttributeList,
  @ocaml.doc("<p>The system-defined attributes for the finding.</p>") attributes: attributeList,
  @ocaml.doc("<p>This data element is currently not used.</p>")
  indicatorOfCompromise: option<bool_>,
  @ocaml.doc("<p>This data element is currently not used.</p>") confidence: option<iocConfidence>,
  @ocaml.doc("<p>The numeric value of the finding severity.</p>")
  numericSeverity: option<numericSeverity>,
  @ocaml.doc("<p>The finding severity. Values can be set to High, Medium, Low, and
         Informational.</p>")
  severity: option<severity>,
  @ocaml.doc("<p>The recommendation for the finding.</p>") recommendation: option<text>,
  @ocaml.doc("<p>The description of the finding.</p>") description: option<text>,
  @ocaml.doc("<p>The name of the finding.</p>") title: option<text>,
  @ocaml.doc("<p>The ID of the finding.</p>") id: option<findingId>,
  @ocaml.doc("<p>A collection of attributes of the host from which the finding is generated.</p>")
  assetAttributes: option<assetAttributes>,
  @ocaml.doc("<p>The type of the host from which the finding is generated.</p>")
  assetType: option<assetType>,
  @ocaml.doc("<p>This data type is used in the <a>Finding</a> data type.</p>")
  serviceAttributes: option<inspectorServiceAttributes>,
  @ocaml.doc("<p>The data element is set to \"Inspector\".</p>") service: option<serviceName>,
  @ocaml.doc("<p>The schema version of this data type.</p>") schemaVersion: option<numericVersion>,
  @ocaml.doc("<p>The ARN that specifies the finding.</p>") arn: arn,
}
type findingList = array<finding>
@ocaml.doc("<fullname>Amazon Inspector</fullname>
         <p>Amazon Inspector enables you to analyze the behavior of your AWS resources and to
         identify potential security issues. For more information, see <a href=\"https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html\"> Amazon Inspector User
            Guide</a>.</p>")
module UpdateAssessmentTarget = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource group that is used to specify the new resource group to
         associate with the assessment target.</p>")
    resourceGroupArn: option<arn>,
    @ocaml.doc("<p>The name of the assessment target that you want to update.</p>")
    assessmentTargetName: assessmentTargetName,
    @ocaml.doc("<p>The ARN of the assessment target that you want to update.</p>")
    assessmentTargetArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "UpdateAssessmentTargetCommand"
  let make = (~assessmentTargetName, ~assessmentTargetArn, ~resourceGroupArn=?, ()) =>
    new({
      resourceGroupArn: resourceGroupArn,
      assessmentTargetName: assessmentTargetName,
      assessmentTargetArn: assessmentTargetArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UnsubscribeFromEvent = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the SNS topic to which SNS notifications are sent.</p>")
    topicArn: arn,
    @ocaml.doc("<p>The event for which you want to stop receiving SNS notifications.</p>")
    event: inspectorEvent,
    @ocaml.doc("<p>The ARN of the assessment template that is used during the event for which you want
         to stop receiving SNS notifications.</p>")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "UnsubscribeFromEventCommand"
  let make = (~topicArn, ~event, ~resourceArn, ()) =>
    new({topicArn: topicArn, event: event, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SubscribeToEvent = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the SNS topic to which the SNS notifications are sent.</p>")
    topicArn: arn,
    @ocaml.doc("<p>The event for which you want to receive SNS notifications.</p>")
    event: inspectorEvent,
    @ocaml.doc("<p>The ARN of the assessment template that is used during the event for which you want
         to receive SNS notifications.</p>")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new external new: request => t = "SubscribeToEventCommand"
  let make = (~topicArn, ~event, ~resourceArn, ()) =>
    new({topicArn: topicArn, event: event, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopAssessmentRun = {
  type t
  type request = {
    @ocaml.doc("<p>An input option that can be set to either START_EVALUATION or SKIP_EVALUATION.
         START_EVALUATION (the default value), stops the AWS agent from collecting data and begins
         the results evaluation and the findings generation process. SKIP_EVALUATION cancels the
         assessment run immediately, after which no findings are generated.</p>")
    stopAction: option<stopAction>,
    @ocaml.doc("<p>The ARN of the assessment run that you want to stop.</p>") assessmentRunArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new external new: request => t = "StopAssessmentRunCommand"
  let make = (~assessmentRunArn, ~stopAction=?, ()) =>
    new({stopAction: stopAction, assessmentRunArn: assessmentRunArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterCrossAccountAccessRole = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the IAM role that grants Amazon Inspector access to AWS Services needed to
         perform security assessments. </p>")
    roleArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "RegisterCrossAccountAccessRoleCommand"
  let make = (~roleArn, ()) => new({roleArn: roleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeCrossAccountAccessRole = {
  type t

  type response = {
    @ocaml.doc("<p>The date when the cross-account access role was registered.</p>")
    registeredAt: timestamp_,
    @ocaml.doc("<p>A Boolean value that specifies whether the IAM role has the necessary policies
         attached to enable Amazon Inspector to access your AWS account.</p>")
    valid: bool_,
    @ocaml.doc("<p>The ARN that specifies the IAM role that Amazon Inspector uses to access your AWS
         account.</p>")
    roleArn: arn,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: unit => t = "DescribeCrossAccountAccessRoleCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateExclusionsPreview = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN that specifies the assessment template for which you want to create an
         exclusions preview.</p>")
    assessmentTemplateArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Specifies the unique identifier of the requested exclusions preview. You can use the
         unique identifier to retrieve the exclusions preview when running the GetExclusionsPreview
         API.</p>")
    previewToken: uuid,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "CreateExclusionsPreviewCommand"
  let make = (~assessmentTemplateArn, ()) => new({assessmentTemplateArn: assessmentTemplateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAssessmentTarget = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN that specifies the resource group that is used to create the assessment
         target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account
         and region are included in the assessment target.</p>")
    resourceGroupArn: option<arn>,
    @ocaml.doc("<p>The user-defined name that identifies the assessment target that you want to create.
         The name must be unique within the AWS account.</p>")
    assessmentTargetName: assessmentTargetName,
  }
  type response = {
    @ocaml.doc("<p>The ARN that specifies the assessment target that is created.</p>")
    assessmentTargetArn: arn,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "CreateAssessmentTargetCommand"
  let make = (~assessmentTargetName, ~resourceGroupArn=?, ()) =>
    new({resourceGroupArn: resourceGroupArn, assessmentTargetName: assessmentTargetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRulesPackages = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items you want in the
         response. The default value is 10. The maximum value is 500.</p>")
    maxResults: option<listMaxResults>,
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter
         to null on your first call to the <b>ListRulesPackages</b>
         action. Subsequent calls to the action fill <b>nextToken</b> in
         the request with the value of <b>NextToken</b> from the previous
         response to continue listing data.</p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p> When a response is generated, if there is more data to be listed, this parameter is
         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
         data to be listed, this parameter is set to null.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of ARNs that specifies the rules packages returned by the action.</p>")
    rulesPackageArns: listReturnedArnList,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "ListRulesPackagesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExclusions = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items you want in the
         response. The default value is 100. The maximum value is 500.</p>")
    maxResults: option<listMaxResults>,
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter
         to null on your first call to the ListExclusionsRequest action. Subsequent calls to the
         action fill nextToken in the request with the value of nextToken from the previous response
         to continue listing data.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ARN of the assessment run that generated the exclusions that you want to
         list.</p>")
    assessmentRunArn: arn,
  }
  type response = {
    @ocaml.doc("<p>When a response is generated, if there is more data to be listed, this parameters is
         present in the response and contains the value to use for the nextToken parameter in a
         subsequent pagination request. If there is no more data to be listed, this parameter is set
         to null.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of exclusions' ARNs returned by the action.</p>")
    exclusionArns: listReturnedArnList,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "ListExclusionsCommand"
  let make = (~assessmentRunArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, assessmentRunArn: assessmentRunArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssessmentTargets = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items you want in the
         response. The default value is 10. The maximum value is 500.</p>")
    maxResults: option<listMaxResults>,
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter
         to null on your first call to the <b>ListAssessmentTargets</b>
         action. Subsequent calls to the action fill <b>nextToken</b> in
         the request with the value of <b>NextToken</b> from the previous
         response to continue listing data.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>You can use this parameter to specify a subset of data to be included in the action's
         response.</p>
         <p>For a record to match a filter, all specified filter attributes must match. When
         multiple values are specified for a filter attribute, any of the values can
         match.</p>")
    filter: option<assessmentTargetFilter>,
  }
  type response = {
    @ocaml.doc("<p> When a response is generated, if there is more data to be listed, this parameter is
         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
         data to be listed, this parameter is set to null.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of ARNs that specifies the assessment targets that are returned by the
         action.</p>")
    assessmentTargetArns: listReturnedArnList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "ListAssessmentTargetsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssessmentReport = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the type of the assessment report that you want to generate. There are two
         types of assessment reports: a finding report and a full report. For more information, see
            <a href=\"https://docs.aws.amazon.com/inspector/latest/userguide/inspector_reports.html\">Assessment Reports</a>. </p>")
    reportType: reportType,
    @ocaml.doc("<p>Specifies the file format (html or pdf) of the assessment report that you want to
         generate.</p>")
    reportFileFormat: reportFileFormat,
    @ocaml.doc("<p>The ARN that specifies the assessment run for which you want to generate a
         report.</p>")
    assessmentRunArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Specifies the URL where you can find the generated assessment report. This parameter
         is only returned if the report is successfully generated.</p>")
    url: option<url>,
    @ocaml.doc("<p>Specifies the status of the request to generate an assessment report. </p>")
    status: reportStatus,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "GetAssessmentReportCommand"
  let make = (~reportType, ~reportFileFormat, ~assessmentRunArn, ()) =>
    new({
      reportType: reportType,
      reportFileFormat: reportFileFormat,
      assessmentRunArn: assessmentRunArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAssessmentTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN that specifies the assessment template that you want to delete.</p>")
    assessmentTemplateArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DeleteAssessmentTemplateCommand"
  let make = (~assessmentTemplateArn, ()) => new({assessmentTemplateArn: assessmentTemplateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAssessmentTarget = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN that specifies the assessment target that you want to delete.</p>")
    assessmentTargetArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DeleteAssessmentTargetCommand"
  let make = (~assessmentTargetArn, ()) => new({assessmentTargetArn: assessmentTargetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAssessmentRun = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN that specifies the assessment run that you want to delete.</p>")
    assessmentRunArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DeleteAssessmentRunCommand"
  let make = (~assessmentRunArn, ()) => new({assessmentRunArn: assessmentRunArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartAssessmentRun = {
  type t
  type request = {
    @ocaml.doc("<p>You can specify the name for the assessment run. The name must be unique for the
         assessment template whose ARN is used to start the assessment run.</p>")
    assessmentRunName: option<assessmentRunName>,
    @ocaml.doc("<p>The ARN of the assessment template of the assessment run that you want to
         start.</p>")
    assessmentTemplateArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the assessment run that has been started.</p>") assessmentRunArn: arn,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "StartAssessmentRunCommand"
  let make = (~assessmentTemplateArn, ~assessmentRunName=?, ()) =>
    new({assessmentRunName: assessmentRunName, assessmentTemplateArn: assessmentTemplateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs that you want to set to the assessment
         template.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ARN of the assessment template that you want to set tags to.</p>")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new external new: request => t = "SetTagsForResourceCommand"
  let make = (~resourceArn, ~tags=?, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveAttributesFromFindings = {
  type t
  type request = {
    @ocaml.doc("<p>The array of attribute keys that you want to remove from specified
         findings.</p>")
    attributeKeys: userAttributeKeyList,
    @ocaml.doc("<p>The ARNs that specify the findings that you want to remove attributes from.</p>")
    findingArns: addRemoveAttributesFindingArnList,
  }
  type response = {
    @ocaml.doc("<p>Attributes details that cannot be described. An error code is provided for each
         failed item.</p>")
    failedItems: failedItems,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "RemoveAttributesFromFindingsCommand"
  let make = (~attributeKeys, ~findingArns, ()) =>
    new({attributeKeys: attributeKeys, findingArns: findingArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PreviewAgents = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items you want in the
         response. The default value is 10. The maximum value is 500.</p>")
    maxResults: option<previewAgentsMaxResults>,
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter
         to null on your first call to the <b>PreviewAgents</b> action.
         Subsequent calls to the action fill <b>nextToken</b> in the
         request with the value of <b>NextToken</b> from the previous
         response to continue listing data.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ARN of the assessment target whose agents you want to preview.</p>")
    previewAgentsArn: arn,
  }
  type response = {
    @ocaml.doc("<p> When a response is generated, if there is more data to be listed, this parameter is
         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
         data to be listed, this parameter is set to null.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The resulting list of agents.</p>") agentPreviews: agentPreviewList,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "PreviewAgentsCommand"
  let make = (~previewAgentsArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, previewAgentsArn: previewAgentsArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN that specifies the assessment template whose tags you want to list.</p>")
    resourceArn: arn,
  }
  type response = {@ocaml.doc("<p>A collection of key and value pairs.</p>") tags: tagList_}
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssessmentTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items you want in the
         response. The default value is 10. The maximum value is 500.</p>")
    maxResults: option<listMaxResults>,
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter
         to null on your first call to the <b>ListAssessmentTemplates</b>
         action. Subsequent calls to the action fill <b>nextToken</b> in
         the request with the value of <b>NextToken</b> from the previous
         response to continue listing data.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>You can use this parameter to specify a subset of data to be included in the action's
         response.</p>
         <p>For a record to match a filter, all specified filter attributes must match. When
         multiple values are specified for a filter attribute, any of the values can
         match.</p>")
    filter: option<assessmentTemplateFilter>,
    @ocaml.doc("<p>A list of ARNs that specifies the assessment targets whose assessment templates you
         want to list.</p>")
    assessmentTargetArns: option<listParentArnList>,
  }
  type response = {
    @ocaml.doc("<p> When a response is generated, if there is more data to be listed, this parameter is
         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
         data to be listed, this parameter is set to null.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of ARNs that specifies the assessment templates returned by the
         action.</p>")
    assessmentTemplateArns: listReturnedArnList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "ListAssessmentTemplatesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ~assessmentTargetArns=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      filter: filter,
      assessmentTargetArns: assessmentTargetArns,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssessmentRuns = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items that you want in
         the response. The default value is 10. The maximum value is 500.</p>")
    maxResults: option<listMaxResults>,
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter
         to null on your first call to the <b>ListAssessmentRuns</b>
         action. Subsequent calls to the action fill <b>nextToken</b> in
         the request with the value of <b>NextToken</b> from the previous
         response to continue listing data.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>You can use this parameter to specify a subset of data to be included in the action's
         response.</p>
         <p>For a record to match a filter, all specified filter attributes must match. When
         multiple values are specified for a filter attribute, any of the values can
         match.</p>")
    filter: option<assessmentRunFilter>,
    @ocaml.doc("<p>The ARNs that specify the assessment templates whose assessment runs you want to
         list.</p>")
    assessmentTemplateArns: option<listParentArnList>,
  }
  type response = {
    @ocaml.doc("<p> When a response is generated, if there is more data to be listed, this parameter is
         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
         data to be listed, this parameter is set to null.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of ARNs that specifies the assessment runs that are returned by the
         action.</p>")
    assessmentRunArns: listReturnedArnList,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "ListAssessmentRunsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ~assessmentTemplateArns=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      filter: filter,
      assessmentTemplateArns: assessmentTemplateArns,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTelemetryMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN that specifies the assessment run that has the telemetry data that you want
         to obtain.</p>")
    assessmentRunArn: arn,
  }
  type response = {@ocaml.doc("<p>Telemetry details.</p>") telemetryMetadata: telemetryMetadataList}
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "GetTelemetryMetadataCommand"
  let make = (~assessmentRunArn, ()) => new({assessmentRunArn: assessmentRunArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRulesPackages = {
  type t
  type request = {
    @ocaml.doc("<p>The locale that you want to translate a rules package description into.</p>")
    locale: option<locale>,
    @ocaml.doc("<p>The ARN that specifies the rules package that you want to describe.</p>")
    rulesPackageArns: batchDescribeArnList,
  }
  type response = {
    @ocaml.doc("<p>Rules package details that cannot be described. An error code is provided for each
         failed item.</p>")
    failedItems: failedItems,
    @ocaml.doc("<p>Information about the rules package.</p>") rulesPackages: rulesPackageList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DescribeRulesPackagesCommand"
  let make = (~rulesPackageArns, ~locale=?, ()) =>
    new({locale: locale, rulesPackageArns: rulesPackageArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssessmentTargets = {
  type t
  type request = {
    @ocaml.doc("<p>The ARNs that specifies the assessment targets that you want to describe.</p>")
    assessmentTargetArns: batchDescribeArnList,
  }
  type response = {
    @ocaml.doc("<p>Assessment target details that cannot be described. An error code is provided for
         each failed item.</p>")
    failedItems: failedItems,
    @ocaml.doc("<p>Information about the assessment targets.</p>")
    assessmentTargets: assessmentTargetList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DescribeAssessmentTargetsCommand"
  let make = (~assessmentTargetArns, ()) => new({assessmentTargetArns: assessmentTargetArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResourceGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of keys and an array of possible values,
         '[{\"key\":\"key1\",\"values\":[\"Value1\",\"Value2\"]},{\"key\":\"Key2\",\"values\":[\"Value3\"]}]'.</p>
         <p>For example,'[{\"key\":\"Name\",\"values\":[\"TestEC2Instance\"]}]'.</p>")
    resourceGroupTags: resourceGroupTags,
  }
  type response = {
    @ocaml.doc("<p>The ARN that specifies the resource group that is created.</p>")
    resourceGroupArn: arn,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "CreateResourceGroupCommand"
  let make = (~resourceGroupTags, ()) => new({resourceGroupTags: resourceGroupTags})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAssessmentTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The user-defined attributes that are assigned to every finding that is generated by
         the assessment run that uses this assessment template. An attribute is a key and value pair
         (an <a>Attribute</a> object). Within an assessment template, each key must be
         unique.</p>")
    userAttributesForFindings: option<userAttributeList>,
    @ocaml.doc("<p>The ARNs that specify the rules packages that you want to attach to the assessment
         template.</p>")
    rulesPackageArns: assessmentTemplateRulesPackageArnList,
    @ocaml.doc("<p>The duration of the assessment run in seconds.</p>")
    durationInSeconds: assessmentRunDuration,
    @ocaml.doc("<p>The user-defined name that identifies the assessment template that you want to
         create. You can create several assessment templates for an assessment target. The names of
         the assessment templates that correspond to a particular assessment target must be
         unique.</p>")
    assessmentTemplateName: assessmentTemplateName,
    @ocaml.doc("<p>The ARN that specifies the assessment target for which you want to create the
         assessment template.</p>")
    assessmentTargetArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN that specifies the assessment template that is created.</p>")
    assessmentTemplateArn: arn,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "CreateAssessmentTemplateCommand"
  let make = (
    ~rulesPackageArns,
    ~durationInSeconds,
    ~assessmentTemplateName,
    ~assessmentTargetArn,
    ~userAttributesForFindings=?,
    (),
  ) =>
    new({
      userAttributesForFindings: userAttributesForFindings,
      rulesPackageArns: rulesPackageArns,
      durationInSeconds: durationInSeconds,
      assessmentTemplateName: assessmentTemplateName,
      assessmentTargetArn: assessmentTargetArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddAttributesToFindings = {
  type t
  type request = {
    @ocaml.doc("<p>The array of attributes that you want to assign to specified findings.</p>")
    attributes: userAttributeList,
    @ocaml.doc("<p>The ARNs that specify the findings that you want to assign attributes to.</p>")
    findingArns: addRemoveAttributesFindingArnList,
  }
  type response = {
    @ocaml.doc("<p>Attribute details that cannot be described. An error code is provided for each failed
         item.</p>")
    failedItems: failedItems,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "AddAttributesToFindingsCommand"
  let make = (~attributes, ~findingArns, ()) =>
    new({attributes: attributes, findingArns: findingArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFindings = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items you want in the
         response. The default value is 10. The maximum value is 500.</p>")
    maxResults: option<listMaxResults>,
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter
         to null on your first call to the <b>ListFindings</b> action.
         Subsequent calls to the action fill <b>nextToken</b> in the
         request with the value of <b>NextToken</b> from the previous
         response to continue listing data.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>You can use this parameter to specify a subset of data to be included in the action's
         response.</p>
         <p>For a record to match a filter, all specified filter attributes must match. When
         multiple values are specified for a filter attribute, any of the values can
         match.</p>")
    filter: option<findingFilter>,
    @ocaml.doc("<p>The ARNs of the assessment runs that generate the findings that you want to
         list.</p>")
    assessmentRunArns: option<listParentArnList>,
  }
  type response = {
    @ocaml.doc("<p> When a response is generated, if there is more data to be listed, this parameter is
         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
         data to be listed, this parameter is set to null.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of ARNs that specifies the findings returned by the action.</p>")
    findingArns: listReturnedArnList,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "ListFindingsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ~assessmentRunArns=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      filter: filter,
      assessmentRunArns: assessmentRunArns,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventSubscriptions = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items you want in the
         response. The default value is 10. The maximum value is 500.</p>")
    maxResults: option<listEventSubscriptionsMaxResults>,
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter
         to null on your first call to the <b>ListEventSubscriptions</b>
         action. Subsequent calls to the action fill <b>nextToken</b> in
         the request with the value of <b>NextToken</b> from the previous
         response to continue listing data.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ARN of the assessment template for which you want to list the existing event
         subscriptions.</p>")
    resourceArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p> When a response is generated, if there is more data to be listed, this parameter is
         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
         data to be listed, this parameter is set to null.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Details of the returned event subscriptions.</p>")
    subscriptions: subscriptionList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "ListEventSubscriptionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~resourceArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssessmentRunAgents = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items that you want in
         the response. The default value is 10. The maximum value is 500.</p>")
    maxResults: option<listMaxResults>,
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter
         to null on your first call to the <b>ListAssessmentRunAgents</b>
         action. Subsequent calls to the action fill <b>nextToken</b> in
         the request with the value of <b>NextToken</b> from the previous
         response to continue listing data.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>You can use this parameter to specify a subset of data to be included in the action's
         response.</p>
         <p>For a record to match a filter, all specified filter attributes must match. When
         multiple values are specified for a filter attribute, any of the values can
         match.</p>")
    filter: option<agentFilter>,
    @ocaml.doc("<p>The ARN that specifies the assessment run whose agents you want to list.</p>")
    assessmentRunArn: arn,
  }
  type response = {
    @ocaml.doc("<p> When a response is generated, if there is more data to be listed, this parameter is
         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more
         data to be listed, this parameter is set to null.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of ARNs that specifies the agents returned by the action.</p>")
    assessmentRunAgents: assessmentRunAgentList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "ListAssessmentRunAgentsCommand"
  let make = (~assessmentRunArn, ~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      filter: filter,
      assessmentRunArn: assessmentRunArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExclusionsPreview = {
  type t
  type request = {
    @ocaml.doc("<p>The locale into which you want to translate the exclusion's title, description, and
         recommendation.</p>")
    locale: option<locale>,
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items you want in the
         response. The default value is 100. The maximum value is 500.</p>")
    maxResults: option<listMaxResults>,
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter
         to null on your first call to the GetExclusionsPreviewRequest action. Subsequent calls to
         the action fill nextToken in the request with the value of nextToken from the previous
         response to continue listing data.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The unique identifier associated of the exclusions preview.</p>")
    previewToken: uuid,
    @ocaml.doc("<p>The ARN that specifies the assessment template for which the exclusions preview was
         requested.</p>")
    assessmentTemplateArn: arn,
  }
  type response = {
    @ocaml.doc("<p>When a response is generated, if there is more data to be listed, this parameters is
         present in the response and contains the value to use for the nextToken parameter in a
         subsequent pagination request. If there is no more data to be listed, this parameter is set
         to null.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the exclusions included in the preview.</p>")
    exclusionPreviews: option<exclusionPreviewList>,
    @ocaml.doc("<p>Specifies the status of the request to generate an exclusions preview.</p>")
    previewStatus: previewStatus,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "GetExclusionsPreviewCommand"
  let make = (~previewToken, ~assessmentTemplateArn, ~locale=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      locale: locale,
      maxResults: maxResults,
      nextToken: nextToken,
      previewToken: previewToken,
      assessmentTemplateArn: assessmentTemplateArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResourceGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN that specifies the resource group that you want to describe.</p>")
    resourceGroupArns: batchDescribeArnList,
  }
  type response = {
    @ocaml.doc("<p>Resource group details that cannot be described. An error code is provided for each
         failed item.</p>")
    failedItems: failedItems,
    @ocaml.doc("<p>Information about a resource group.</p>") resourceGroups: resourceGroupList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DescribeResourceGroupsCommand"
  let make = (~resourceGroupArns, ()) => new({resourceGroupArns: resourceGroupArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExclusions = {
  type t
  type request = {
    @ocaml.doc("<p>The locale into which you want to translate the exclusion's title, description, and
         recommendation.</p>")
    locale: option<locale>,
    @ocaml.doc("<p>The list of ARNs that specify the exclusions that you want to describe.</p>")
    exclusionArns: batchDescribeExclusionsArnList,
  }
  type response = {
    @ocaml.doc("<p>Exclusion details that cannot be described. An error code is provided for each failed
         item.</p>")
    failedItems: failedItems,
    @ocaml.doc("<p>Information about the exclusions.</p>") exclusions: exclusionMap,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "DescribeExclusionsCommand"
  let make = (~exclusionArns, ~locale=?, ()) => new({locale: locale, exclusionArns: exclusionArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssessmentTemplates = {
  type t
  type request = {assessmentTemplateArns: batchDescribeArnList}
  type response = {
    @ocaml.doc("<p>Assessment template details that cannot be described. An error code is provided for
         each failed item.</p>")
    failedItems: failedItems,
    @ocaml.doc("<p>Information about the assessment templates.</p>")
    assessmentTemplates: assessmentTemplateList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DescribeAssessmentTemplatesCommand"
  let make = (~assessmentTemplateArns, ()) => new({assessmentTemplateArns: assessmentTemplateArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssessmentRuns = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN that specifies the assessment run that you want to describe.</p>")
    assessmentRunArns: batchDescribeArnList,
  }
  type response = {
    @ocaml.doc("<p>Assessment run details that cannot be described. An error code is provided for each
         failed item.</p>")
    failedItems: failedItems,
    @ocaml.doc("<p>Information about the assessment run.</p>") assessmentRuns: assessmentRunList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DescribeAssessmentRunsCommand"
  let make = (~assessmentRunArns, ()) => new({assessmentRunArns: assessmentRunArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFindings = {
  type t
  type request = {
    @ocaml.doc("<p>The locale into which you want to translate a finding description, recommendation,
         and the short description that identifies the finding.</p>")
    locale: option<locale>,
    @ocaml.doc("<p>The ARN that specifies the finding that you want to describe.</p>")
    findingArns: batchDescribeArnList,
  }
  type response = {
    @ocaml.doc("<p>Finding details that cannot be described. An error code is provided for each failed
         item.</p>")
    failedItems: failedItems,
    @ocaml.doc("<p>Information about the finding.</p>") findings: findingList,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "DescribeFindingsCommand"
  let make = (~findingArns, ~locale=?, ()) => new({locale: locale, findingArns: findingArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
