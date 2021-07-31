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
type timestampRange = {
  endDate: option<timestamp_>,
  beginDate: option<timestamp_>,
}
type telemetryMetadata = {
  dataSize: option<long>,
  count: long,
  messageType: messageType,
}
type tag = {
  value: option<tagValue>,
  key: tagKey,
}
type severityList = array<severity>
type securityGroup = {
  groupId: option<text>,
  groupName: option<text>,
}
type scope = {
  value: option<scopeValue>,
  key: option<scopeType>,
}
type rulesPackage = {
  description: option<text>,
  provider: providerName,
  version: version,
  name: rulesPackageName,
  arn: arn,
}
type ruleNameList = array<ruleName>
type resourceGroupTag = {
  value: option<tagValue>,
  key: tagKey,
}
type privateIp = {
  privateIpAddress: option<text>,
  privateDnsName: option<text>,
}
type listReturnedArnList = array<arn>
type listParentArnList = array<arn>
type ipv6Addresses = array<text>
type ipv4AddressList = array<ipv4Address>
type inspectorServiceAttributes = {
  rulesPackageArn: option<arn>,
  assessmentRunArn: option<arn>,
  schemaVersion: numericVersion,
}
type filterRulesPackageArnList = array<arn>
type failedItemDetails = {
  retryable: bool_,
  failureCode: failedItemErrorCode,
}
type eventSubscription = {
  subscribedAt: timestamp_,
  event: inspectorEvent,
}
type durationRange = {
  maxSeconds: option<assessmentRunDuration>,
  minSeconds: option<assessmentRunDuration>,
}
type batchDescribeExclusionsArnList = array<arn>
type batchDescribeArnList = array<arn>
type autoScalingGroupList = array<autoScalingGroup>
type attribute = {
  value: option<attributeValue>,
  key: attributeKey,
}
type assessmentTemplateRulesPackageArnList = array<arn>
type assessmentTargetFilter = {assessmentTargetNamePattern: option<namePattern>}
type assessmentTarget = {
  updatedAt: timestamp_,
  createdAt: timestamp_,
  resourceGroupArn: option<arn>,
  name: assessmentTargetName,
  arn: arn,
}
type assessmentRunStateList = array<assessmentRunState>
type assessmentRunStateChange = {
  state: assessmentRunState,
  stateChangedAt: timestamp_,
}
type assessmentRunNotification = {
  snsPublishStatusCode: option<assessmentRunNotificationSnsStatusCode>,
  snsTopicArn: option<arn>,
  error: bool_,
  message: option<message>,
  event: inspectorEvent,
  date: timestamp_,
}
type assessmentRunInProgressArnList = array<arn>
type assessmentRunFindingCounts = Js.Dict.t<findingCount>
type assessmentRulesPackageArnList = array<arn>
type agentPreview = {
  ipv4Address: option<ipv4Address>,
  kernelVersion: option<kernelVersion>,
  operatingSystem: option<operatingSystem>,
  agentVersion: option<agentVersion>,
  agentHealth: option<agentHealth>,
  autoScalingGroup: option<autoScalingGroup>,
  agentId: agentId,
  hostname: option<hostname>,
}
type agentIdList = array<agentId>
type agentHealthList = array<agentHealth>
type agentHealthCodeList = array<agentHealthCode>
type agentAlreadyRunningAssessment = {
  assessmentRunArn: arn,
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
type assessmentTemplateFilter = {
  rulesPackageArns: option<filterRulesPackageArnList>,
  durationRange: option<durationRange>,
  namePattern: option<namePattern>,
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
  namePattern: option<namePattern>,
}
type agentPreviewList = array<agentPreview>
type agentFilter = {
  agentHealthCodes: agentHealthCodeList,
  agentHealths: agentHealthList,
}
type agentAlreadyRunningAssessmentList = array<agentAlreadyRunningAssessment>
type subscription = {
  eventSubscriptions: eventSubscriptionList,
  topicArn: arn,
  resourceArn: arn,
}
type resourceGroup = {
  createdAt: timestamp_,
  tags: resourceGroupTags,
  arn: arn,
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
  networkInterfaceId: option<text>,
}
type findingFilter = {
  creationTimeRange: option<timestampRange>,
  userAttributes: option<attributeList>,
  attributes: option<attributeList>,
  rulesPackageArns: option<filterRulesPackageArnList>,
  severities: option<severityList>,
  ruleNames: option<ruleNameList>,
  autoScalingGroups: option<autoScalingGroupList>,
  agentIds: option<agentIdList>,
}
type exclusionPreview = {
  attributes: option<attributeList>,
  scopes: scopeList,
  recommendation: text,
  description: text,
  title: text,
}
type exclusion = {
  attributes: option<attributeList>,
  scopes: scopeList,
  recommendation: text,
  description: text,
  title: text,
  arn: arn,
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
  arn: arn,
}
type assessmentRunAgent = {
  telemetryMetadata: telemetryMetadataList,
  autoScalingGroup: option<autoScalingGroup>,
  agentHealthDetails: option<message>,
  agentHealthCode: agentHealthCode,
  agentHealth: agentHealth,
  assessmentRunArn: arn,
  agentId: agentId,
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
  arn: arn,
}
type subscriptionList = array<subscription>
type resourceGroupList = array<resourceGroup>
type networkInterfaces = array<networkInterface>
type exclusionPreviewList = array<exclusionPreview>
type exclusionMap = Js.Dict.t<exclusion>
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
  schemaVersion: numericVersion,
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
  arn: arn,
}
type findingList = array<finding>

module UpdateAssessmentTarget = {
  type t
  type request = {
    resourceGroupArn: option<arn>,
    assessmentTargetName: assessmentTargetName,
    assessmentTargetArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "UpdateAssessmentTargetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UnsubscribeFromEvent = {
  type t
  type request = {
    topicArn: arn,
    event: inspectorEvent,
    resourceArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "UnsubscribeFromEventCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SubscribeToEvent = {
  type t
  type request = {
    topicArn: arn,
    event: inspectorEvent,
    resourceArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new external new: request => t = "SubscribeToEventCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopAssessmentRun = {
  type t
  type request = {
    stopAction: option<stopAction>,
    assessmentRunArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new external new: request => t = "StopAssessmentRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterCrossAccountAccessRole = {
  type t
  type request = {roleArn: arn}

  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "RegisterCrossAccountAccessRoleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeCrossAccountAccessRole = {
  type t

  type response = {
    registeredAt: timestamp_,
    valid: bool_,
    roleArn: arn,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: unit => t = "DescribeCrossAccountAccessRoleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateExclusionsPreview = {
  type t
  type request = {assessmentTemplateArn: arn}
  type response = {previewToken: uuid}
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "CreateExclusionsPreviewCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAssessmentTarget = {
  type t
  type request = {
    resourceGroupArn: option<arn>,
    assessmentTargetName: assessmentTargetName,
  }
  type response = {assessmentTargetArn: arn}
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "CreateAssessmentTargetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRulesPackages = {
  type t
  type request = {
    maxResults: option<listMaxResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    rulesPackageArns: listReturnedArnList,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "ListRulesPackagesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExclusions = {
  type t
  type request = {
    maxResults: option<listMaxResults>,
    nextToken: option<paginationToken>,
    assessmentRunArn: arn,
  }
  type response = {
    nextToken: option<paginationToken>,
    exclusionArns: listReturnedArnList,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "ListExclusionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssessmentTargets = {
  type t
  type request = {
    maxResults: option<listMaxResults>,
    nextToken: option<paginationToken>,
    filter: option<assessmentTargetFilter>,
  }
  type response = {
    nextToken: option<paginationToken>,
    assessmentTargetArns: listReturnedArnList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "ListAssessmentTargetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssessmentReport = {
  type t
  type request = {
    reportType: reportType,
    reportFileFormat: reportFileFormat,
    assessmentRunArn: arn,
  }
  type response = {
    url: option<url>,
    status: reportStatus,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "GetAssessmentReportCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAssessmentTemplate = {
  type t
  type request = {assessmentTemplateArn: arn}

  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DeleteAssessmentTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAssessmentTarget = {
  type t
  type request = {assessmentTargetArn: arn}

  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DeleteAssessmentTargetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAssessmentRun = {
  type t
  type request = {assessmentRunArn: arn}

  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DeleteAssessmentRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartAssessmentRun = {
  type t
  type request = {
    assessmentRunName: option<assessmentRunName>,
    assessmentTemplateArn: arn,
  }
  type response = {assessmentRunArn: arn}
  @module("@aws-sdk/client-inspector") @new external new: request => t = "StartAssessmentRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetTagsForResource = {
  type t
  type request = {
    tags: option<tagList_>,
    resourceArn: arn,
  }

  @module("@aws-sdk/client-inspector") @new external new: request => t = "SetTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveAttributesFromFindings = {
  type t
  type request = {
    attributeKeys: userAttributeKeyList,
    findingArns: addRemoveAttributesFindingArnList,
  }
  type response = {failedItems: failedItems}
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "RemoveAttributesFromFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PreviewAgents = {
  type t
  type request = {
    maxResults: option<previewAgentsMaxResults>,
    nextToken: option<paginationToken>,
    previewAgentsArn: arn,
  }
  type response = {
    nextToken: option<paginationToken>,
    agentPreviews: agentPreviewList,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "PreviewAgentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: arn}
  type response = {tags: tagList_}
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssessmentTemplates = {
  type t
  type request = {
    maxResults: option<listMaxResults>,
    nextToken: option<paginationToken>,
    filter: option<assessmentTemplateFilter>,
    assessmentTargetArns: option<listParentArnList>,
  }
  type response = {
    nextToken: option<paginationToken>,
    assessmentTemplateArns: listReturnedArnList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "ListAssessmentTemplatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssessmentRuns = {
  type t
  type request = {
    maxResults: option<listMaxResults>,
    nextToken: option<paginationToken>,
    filter: option<assessmentRunFilter>,
    assessmentTemplateArns: option<listParentArnList>,
  }
  type response = {
    nextToken: option<paginationToken>,
    assessmentRunArns: listReturnedArnList,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "ListAssessmentRunsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTelemetryMetadata = {
  type t
  type request = {assessmentRunArn: arn}
  type response = {telemetryMetadata: telemetryMetadataList}
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "GetTelemetryMetadataCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRulesPackages = {
  type t
  type request = {
    locale: option<locale>,
    rulesPackageArns: batchDescribeArnList,
  }
  type response = {
    failedItems: failedItems,
    rulesPackages: rulesPackageList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DescribeRulesPackagesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssessmentTargets = {
  type t
  type request = {assessmentTargetArns: batchDescribeArnList}
  type response = {
    failedItems: failedItems,
    assessmentTargets: assessmentTargetList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DescribeAssessmentTargetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResourceGroup = {
  type t
  type request = {resourceGroupTags: resourceGroupTags}
  type response = {resourceGroupArn: arn}
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "CreateResourceGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAssessmentTemplate = {
  type t
  type request = {
    userAttributesForFindings: option<userAttributeList>,
    rulesPackageArns: assessmentTemplateRulesPackageArnList,
    durationInSeconds: assessmentRunDuration,
    assessmentTemplateName: assessmentTemplateName,
    assessmentTargetArn: arn,
  }
  type response = {assessmentTemplateArn: arn}
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "CreateAssessmentTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddAttributesToFindings = {
  type t
  type request = {
    attributes: userAttributeList,
    findingArns: addRemoveAttributesFindingArnList,
  }
  type response = {failedItems: failedItems}
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "AddAttributesToFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFindings = {
  type t
  type request = {
    maxResults: option<listMaxResults>,
    nextToken: option<paginationToken>,
    filter: option<findingFilter>,
    assessmentRunArns: option<listParentArnList>,
  }
  type response = {
    nextToken: option<paginationToken>,
    findingArns: listReturnedArnList,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "ListFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventSubscriptions = {
  type t
  type request = {
    maxResults: option<listEventSubscriptionsMaxResults>,
    nextToken: option<paginationToken>,
    resourceArn: option<arn>,
  }
  type response = {
    nextToken: option<paginationToken>,
    subscriptions: subscriptionList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "ListEventSubscriptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssessmentRunAgents = {
  type t
  type request = {
    maxResults: option<listMaxResults>,
    nextToken: option<paginationToken>,
    filter: option<agentFilter>,
    assessmentRunArn: arn,
  }
  type response = {
    nextToken: option<paginationToken>,
    assessmentRunAgents: assessmentRunAgentList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "ListAssessmentRunAgentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExclusionsPreview = {
  type t
  type request = {
    locale: option<locale>,
    maxResults: option<listMaxResults>,
    nextToken: option<paginationToken>,
    previewToken: uuid,
    assessmentTemplateArn: arn,
  }
  type response = {
    nextToken: option<paginationToken>,
    exclusionPreviews: option<exclusionPreviewList>,
    previewStatus: previewStatus,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "GetExclusionsPreviewCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResourceGroups = {
  type t
  type request = {resourceGroupArns: batchDescribeArnList}
  type response = {
    failedItems: failedItems,
    resourceGroups: resourceGroupList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DescribeResourceGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExclusions = {
  type t
  type request = {
    locale: option<locale>,
    exclusionArns: batchDescribeExclusionsArnList,
  }
  type response = {
    failedItems: failedItems,
    exclusions: exclusionMap,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "DescribeExclusionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssessmentTemplates = {
  type t
  type request = {assessmentTemplateArns: batchDescribeArnList}
  type response = {
    failedItems: failedItems,
    assessmentTemplates: assessmentTemplateList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DescribeAssessmentTemplatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssessmentRuns = {
  type t
  type request = {assessmentRunArns: batchDescribeArnList}
  type response = {
    failedItems: failedItems,
    assessmentRuns: assessmentRunList,
  }
  @module("@aws-sdk/client-inspector") @new
  external new: request => t = "DescribeAssessmentRunsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFindings = {
  type t
  type request = {
    locale: option<locale>,
    findingArns: batchDescribeArnList,
  }
  type response = {
    failedItems: failedItems,
    findings: findingList,
  }
  @module("@aws-sdk/client-inspector") @new external new: request => t = "DescribeFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
