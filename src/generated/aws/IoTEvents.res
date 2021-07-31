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
type long = float
type resourceId = string
type resourceArn = string
type errorMessage = string
type variableValue = string
type variableName = string
type useBase64 = bool
type timestamp_ = Js.Date.t;
type timerName = string
type threshold = string
type tagValue = string
type tagKey = string
type statusMessage = string
type stateName = string
type severity = int
type seconds = int
type ssoreferenceId = string
type smssenderId = string
type resourceName = string
type queueUrl = string
type payloadType = [@as("JSON") #JSON | @as("STRING") #STRING]
type notificationAdditionalMessage = string
type nextToken = string
type maxResults = int
type maxAnalysisResults = int
type mqtttopic = string
type loggingLevel = [@as("DEBUG") #DEBUG | @as("INFO") #INFO | @as("ERROR") #ERROR]
type loggingEnabled = bool
type keyValue = string
type inputStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("UPDATING") #UPDATING | @as("CREATING") #CREATING]
type inputProperty = string
type inputName = string
type inputDescription = string
type inputArn = string
type identityStoreId = string
type fromEmail = string
type firehoseSeparator = string
type eventName = string
type evaluationMethod = [@as("SERIAL") #SERIAL | @as("BATCH") #BATCH]
type emailSubject = string
type dynamoTableName = string
type dynamoOperation = string
type dynamoKeyValue = string
type dynamoKeyType = string
type dynamoKeyField = string
type disabledOnInitialization = bool
type detectorModelVersionStatus = [@as("FAILED") #FAILED | @as("PAUSED") #PAUSED | @as("DRAFT") #DRAFT | @as("DEPRECATED") #DEPRECATED | @as("INACTIVE") #INACTIVE | @as("ACTIVATING") #ACTIVATING | @as("ACTIVE") #ACTIVE]
type detectorModelVersion = string
type detectorModelName = string
type detectorModelDescription = string
type detectorModelArn = string
type deliveryStreamName = string
type contentExpression = string
type condition = string
type comparisonOperator = [@as("NOT_EQUAL") #NOTEQUAL | @as("EQUAL") #EQUAL | @as("LESS_OR_EQUAL") #LESSOREQUAL | @as("LESS") #LESS | @as("GREATER_OR_EQUAL") #GREATEROREQUAL | @as("GREATER") #GREATER]
type attributeJsonPath = string
type assetPropertyTimeInSeconds = string
type assetPropertyStringValue = string
type assetPropertyQuality = string
type assetPropertyOffsetInNanos = string
type assetPropertyIntegerValue = string
type assetPropertyId = string
type assetPropertyEntryId = string
type assetPropertyDoubleValue = string
type assetPropertyBooleanValue = string
type assetPropertyAlias = string
type assetModelId = string
type assetId = string
type analysisType = string
type analysisStatus = [@as("FAILED") #FAILED | @as("COMPLETE") #COMPLETE | @as("RUNNING") #RUNNING]
type analysisResultLocationPath = string
type analysisResultLevel = [@as("ERROR") #ERROR | @as("WARNING") #WARNING | @as("INFO") #INFO]
type analysisMessage = string
type analysisId = string
type amazonResourceName = string
type alarmModelVersionStatus = [@as("FAILED") #FAILED | @as("INACTIVE") #INACTIVE | @as("ACTIVATING") #ACTIVATING | @as("ACTIVE") #ACTIVE]
type alarmModelVersion = string
type alarmModelName = string
type alarmModelDescription = string
type alarmModelArn = string
type acknowledgeFlowEnabled = bool
type tagKeys = array<tagKey>
type tag = {
value: tagValue,
key: tagKey
}
type simpleRule = {
threshold: threshold,
comparisonOperator: comparisonOperator,
inputProperty: inputProperty
}
type setVariableAction = {
value: variableValue,
variableName: variableName
}
type setTimerAction = {
durationExpression: option<variableValue>,
seconds: option<seconds>,
timerName: timerName
}
type ssoidentity = {
userId: option<ssoreferenceId>,
identityStoreId: identityStoreId
}
type routedResource = {
arn: option<amazonResourceName>,
name: option<resourceName>
}
type resetTimerAction = {
timerName: timerName
}
type payload = {
@as("type") type_: payloadType,
contentExpression: contentExpression
}
type iotSiteWiseAssetModelPropertyIdentifier = {
propertyId: assetPropertyId,
assetModelId: assetModelId
}
type iotEventsInputIdentifier = {
inputName: inputName
}
type inputSummary = {
status: option<inputStatus>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
inputArn: option<inputArn>,
inputDescription: option<inputDescription>,
inputName: option<inputName>
}
type inputConfiguration = {
status: inputStatus,
lastUpdateTime: timestamp_,
creationTime: timestamp_,
inputArn: inputArn,
inputDescription: option<inputDescription>,
inputName: inputName
}
type initializationConfiguration = {
disabledOnInitialization: disabledOnInitialization
}
type emailContent = {
additionalMessage: option<notificationAdditionalMessage>,
subject: option<emailSubject>
}
type detectorModelVersionSummary = {
evaluationMethod: option<evaluationMethod>,
status: option<detectorModelVersionStatus>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
roleArn: option<amazonResourceName>,
detectorModelArn: option<detectorModelArn>,
detectorModelVersion: option<detectorModelVersion>,
detectorModelName: option<detectorModelName>
}
type detectorModelSummary = {
creationTime: option<timestamp_>,
detectorModelDescription: option<detectorModelDescription>,
detectorModelName: option<detectorModelName>
}
type detectorModelConfiguration = {
evaluationMethod: option<evaluationMethod>,
key: option<attributeJsonPath>,
status: option<detectorModelVersionStatus>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
roleArn: option<amazonResourceName>,
detectorModelArn: option<detectorModelArn>,
detectorModelDescription: option<detectorModelDescription>,
detectorModelVersion: option<detectorModelVersion>,
detectorModelName: option<detectorModelName>
}
type detectorDebugOption = {
keyValue: option<keyValue>,
detectorModelName: detectorModelName
}
type clearTimerAction = {
timerName: timerName
}
type attribute = {
jsonPath: attributeJsonPath
}
type assetPropertyVariant = {
booleanValue: option<assetPropertyBooleanValue>,
doubleValue: option<assetPropertyDoubleValue>,
integerValue: option<assetPropertyIntegerValue>,
stringValue: option<assetPropertyStringValue>
}
type assetPropertyTimestamp = {
offsetInNanos: option<assetPropertyOffsetInNanos>,
timeInSeconds: assetPropertyTimeInSeconds
}
type analysisResultLocation = {
path: option<analysisResultLocationPath>
}
type alarmModelVersionSummary = {
statusMessage: option<statusMessage>,
status: option<alarmModelVersionStatus>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
roleArn: option<amazonResourceName>,
alarmModelVersion: option<alarmModelVersion>,
alarmModelArn: option<alarmModelArn>,
alarmModelName: option<alarmModelName>
}
type alarmModelSummary = {
alarmModelName: option<alarmModelName>,
alarmModelDescription: option<alarmModelDescription>,
creationTime: option<timestamp_>
}
type acknowledgeFlow = {
enabled: acknowledgeFlowEnabled
}
type tags = array<tag>
type sqsAction = {
payload: option<payload>,
useBase64: option<useBase64>,
queueUrl: queueUrl
}
type snstopicPublishAction = {
payload: option<payload>,
targetArn: amazonResourceName
}
type routedResources = array<routedResource>
type recipientDetail = {
ssoIdentity: option<ssoidentity>
}
type lambdaAction = {
payload: option<payload>,
functionArn: amazonResourceName
}
type iotTopicPublishAction = {
payload: option<payload>,
mqttTopic: mqtttopic
}
type iotSiteWiseInputIdentifier = {
iotSiteWiseAssetModelPropertyIdentifier: option<iotSiteWiseAssetModelPropertyIdentifier>
}
type iotEventsAction = {
payload: option<payload>,
inputName: inputName
}
type inputSummaries = array<inputSummary>
type firehoseAction = {
payload: option<payload>,
separator: option<firehoseSeparator>,
deliveryStreamName: deliveryStreamName
}
type dynamoDBv2Action = {
payload: option<payload>,
tableName: dynamoTableName
}
type dynamoDBAction = {
payload: option<payload>,
tableName: dynamoTableName,
payloadField: option<dynamoKeyField>,
operation: option<dynamoOperation>,
rangeKeyValue: option<dynamoKeyValue>,
rangeKeyField: option<dynamoKeyField>,
rangeKeyType: option<dynamoKeyType>,
hashKeyValue: dynamoKeyValue,
hashKeyField: dynamoKeyField,
hashKeyType: option<dynamoKeyType>
}
type detectorModelVersionSummaries = array<detectorModelVersionSummary>
type detectorModelSummaries = array<detectorModelSummary>
type detectorDebugOptions = array<detectorDebugOption>
type attributes = array<attribute>
type assetPropertyValue = {
quality: option<assetPropertyQuality>,
@as("timestamp") timestamp_: option<assetPropertyTimestamp>,
value: option<assetPropertyVariant>
}
type analysisResultLocations = array<analysisResultLocation>
type alarmRule = {
simpleRule: option<simpleRule>
}
type alarmModelVersionSummaries = array<alarmModelVersionSummary>
type alarmModelSummaries = array<alarmModelSummary>
type alarmCapabilities = {
acknowledgeFlow: option<acknowledgeFlow>,
initializationConfiguration: option<initializationConfiguration>
}
type recipientDetails = array<recipientDetail>
type notificationTargetActions = {
lambdaAction: option<lambdaAction>
}
type loggingOptions = {
detectorDebugOptions: option<detectorDebugOptions>,
enabled: loggingEnabled,
level: loggingLevel,
roleArn: amazonResourceName
}
type iotSiteWiseAction = {
propertyValue: option<assetPropertyValue>,
propertyAlias: option<assetPropertyAlias>,
propertyId: option<assetPropertyId>,
assetId: option<assetId>,
entryId: option<assetPropertyEntryId>
}
type inputIdentifier = {
iotSiteWiseInputIdentifier: option<iotSiteWiseInputIdentifier>,
iotEventsInputIdentifier: option<iotEventsInputIdentifier>
}
type inputDefinition = {
attributes: attributes
}
type analysisResult = {
locations: option<analysisResultLocations>,
message: option<analysisMessage>,
level: option<analysisResultLevel>,
@as("type") type_: option<analysisType>
}
type smsconfiguration = {
recipients: recipientDetails,
additionalMessage: option<notificationAdditionalMessage>,
senderId: option<smssenderId>
}
type input = {
inputDefinition: option<inputDefinition>,
inputConfiguration: option<inputConfiguration>
}
type emailRecipients = {
to: option<recipientDetails>
}
type analysisResults = array<analysisResult>
type alarmAction = {
iotSiteWise: option<iotSiteWiseAction>,
dynamoDBv2: option<dynamoDBv2Action>,
dynamoDB: option<dynamoDBAction>,
firehose: option<firehoseAction>,
sqs: option<sqsAction>,
iotEvents: option<iotEventsAction>,
lambda: option<lambdaAction>,
iotTopicPublish: option<iotTopicPublishAction>,
sns: option<snstopicPublishAction>
}
type action = {
iotSiteWise: option<iotSiteWiseAction>,
dynamoDBv2: option<dynamoDBv2Action>,
dynamoDB: option<dynamoDBAction>,
firehose: option<firehoseAction>,
sqs: option<sqsAction>,
iotEvents: option<iotEventsAction>,
lambda: option<lambdaAction>,
resetTimer: option<resetTimerAction>,
clearTimer: option<clearTimerAction>,
setTimer: option<setTimerAction>,
iotTopicPublish: option<iotTopicPublishAction>,
sns: option<snstopicPublishAction>,
setVariable: option<setVariableAction>
}
type smsconfigurations = array<smsconfiguration>
type emailConfiguration = {
recipients: emailRecipients,
content: option<emailContent>,
from: fromEmail
}
type alarmActions = array<alarmAction>
type actions = array<action>
type transitionEvent = {
nextState: stateName,
actions: option<actions>,
condition: condition,
eventName: eventName
}
type event = {
actions: option<actions>,
condition: option<condition>,
eventName: eventName
}
type emailConfigurations = array<emailConfiguration>
type alarmEventActions = {
alarmActions: option<alarmActions>
}
type transitionEvents = array<transitionEvent>
type notificationAction = {
emailConfigurations: option<emailConfigurations>,
smsConfigurations: option<smsconfigurations>,
action: notificationTargetActions
}
type events = array<event>
type onInputLifecycle = {
transitionEvents: option<transitionEvents>,
events: option<events>
}
type onExitLifecycle = {
events: option<events>
}
type onEnterLifecycle = {
events: option<events>
}
type notificationActions = array<notificationAction>
type state = {
onExit: option<onExitLifecycle>,
onEnter: option<onEnterLifecycle>,
onInput: option<onInputLifecycle>,
stateName: stateName
}
type alarmNotification = {
notificationActions: option<notificationActions>
}
type states = array<state>
type detectorModelDefinition = {
initialStateName: stateName,
states: states
}
type detectorModel = {
detectorModelConfiguration: option<detectorModelConfiguration>,
detectorModelDefinition: option<detectorModelDefinition>
}
type awsServiceClient;
@module("@aws-sdk/client-iotevents") @new external createClient: unit => awsServiceClient = "IoTEventsClient";
module DescribeDetectorModelAnalysis = {
  type t;
  type request = {
analysisId: analysisId
}
  type response = {
status: option<analysisStatus>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "DescribeDetectorModelAnalysisCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteInput = {
  type t;
  type request = {
inputName: inputName
}
  type response = unit
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "DeleteInputCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDetectorModel = {
  type t;
  type request = {
detectorModelName: detectorModelName
}
  type response = unit
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "DeleteDetectorModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAlarmModel = {
  type t;
  type request = {
alarmModelName: alarmModelName
}
  type response = unit
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "DeleteAlarmModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeys,
resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tags,
resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: amazonResourceName
}
  type response = {
tags: option<tags>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListInputs = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
inputSummaries: option<inputSummaries>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "ListInputsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDetectorModels = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
detectorModelSummaries: option<detectorModelSummaries>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "ListDetectorModelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDetectorModelVersions = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
detectorModelName: detectorModelName
}
  type response = {
nextToken: option<nextToken>,
detectorModelVersionSummaries: option<detectorModelVersionSummaries>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "ListDetectorModelVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAlarmModels = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
alarmModelSummaries: option<alarmModelSummaries>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "ListAlarmModelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAlarmModelVersions = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
alarmModelName: alarmModelName
}
  type response = {
nextToken: option<nextToken>,
alarmModelVersionSummaries: option<alarmModelVersionSummaries>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "ListAlarmModelVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateInput = {
  type t;
  type request = {
inputDefinition: inputDefinition,
inputDescription: option<inputDescription>,
inputName: inputName
}
  type response = {
inputConfiguration: option<inputConfiguration>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "UpdateInputCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutLoggingOptions = {
  type t;
  type request = {
loggingOptions: loggingOptions
}
  
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "PutLoggingOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListInputRoutings = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<maxResults>,
inputIdentifier: inputIdentifier
}
  type response = {
nextToken: option<nextToken>,
routedResources: option<routedResources>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "ListInputRoutingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLoggingOptions = {
  type t;
  type request = unit
  type response = {
loggingOptions: option<loggingOptions>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "DescribeLoggingOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateInput = {
  type t;
  type request = {
tags: option<tags>,
inputDefinition: inputDefinition,
inputDescription: option<inputDescription>,
inputName: inputName
}
  type response = {
inputConfiguration: option<inputConfiguration>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "CreateInputCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDetectorModelAnalysisResults = {
  type t;
  type request = {
maxResults: option<maxAnalysisResults>,
nextToken: option<nextToken>,
analysisId: analysisId
}
  type response = {
nextToken: option<nextToken>,
analysisResults: option<analysisResults>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "GetDetectorModelAnalysisResultsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeInput = {
  type t;
  type request = {
inputName: inputName
}
  type response = {
input: option<input>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "DescribeInputCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAlarmModel = {
  type t;
  type request = {
alarmCapabilities: option<alarmCapabilities>,
alarmEventActions: option<alarmEventActions>,
alarmNotification: option<alarmNotification>,
alarmRule: alarmRule,
severity: option<severity>,
roleArn: amazonResourceName,
alarmModelDescription: option<alarmModelDescription>,
alarmModelName: alarmModelName
}
  type response = {
status: option<alarmModelVersionStatus>,
lastUpdateTime: option<timestamp_>,
alarmModelVersion: option<alarmModelVersion>,
alarmModelArn: option<alarmModelArn>,
creationTime: option<timestamp_>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "UpdateAlarmModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAlarmModel = {
  type t;
  type request = {
alarmModelVersion: option<alarmModelVersion>,
alarmModelName: alarmModelName
}
  type response = {
alarmCapabilities: option<alarmCapabilities>,
alarmEventActions: option<alarmEventActions>,
alarmNotification: option<alarmNotification>,
alarmRule: option<alarmRule>,
severity: option<severity>,
key: option<attributeJsonPath>,
roleArn: option<amazonResourceName>,
alarmModelDescription: option<alarmModelDescription>,
alarmModelName: option<alarmModelName>,
statusMessage: option<statusMessage>,
status: option<alarmModelVersionStatus>,
lastUpdateTime: option<timestamp_>,
alarmModelVersion: option<alarmModelVersion>,
alarmModelArn: option<alarmModelArn>,
creationTime: option<timestamp_>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "DescribeAlarmModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAlarmModel = {
  type t;
  type request = {
alarmCapabilities: option<alarmCapabilities>,
alarmEventActions: option<alarmEventActions>,
alarmNotification: option<alarmNotification>,
alarmRule: alarmRule,
severity: option<severity>,
key: option<attributeJsonPath>,
tags: option<tags>,
roleArn: amazonResourceName,
alarmModelDescription: option<alarmModelDescription>,
alarmModelName: alarmModelName
}
  type response = {
status: option<alarmModelVersionStatus>,
lastUpdateTime: option<timestamp_>,
alarmModelVersion: option<alarmModelVersion>,
alarmModelArn: option<alarmModelArn>,
creationTime: option<timestamp_>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "CreateAlarmModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDetectorModel = {
  type t;
  type request = {
evaluationMethod: option<evaluationMethod>,
roleArn: amazonResourceName,
detectorModelDescription: option<detectorModelDescription>,
detectorModelDefinition: detectorModelDefinition,
detectorModelName: detectorModelName
}
  type response = {
detectorModelConfiguration: option<detectorModelConfiguration>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "UpdateDetectorModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartDetectorModelAnalysis = {
  type t;
  type request = {
detectorModelDefinition: detectorModelDefinition
}
  type response = {
analysisId: option<analysisId>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "StartDetectorModelAnalysisCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDetectorModel = {
  type t;
  type request = {
evaluationMethod: option<evaluationMethod>,
tags: option<tags>,
roleArn: amazonResourceName,
key: option<attributeJsonPath>,
detectorModelDescription: option<detectorModelDescription>,
detectorModelDefinition: detectorModelDefinition,
detectorModelName: detectorModelName
}
  type response = {
detectorModelConfiguration: option<detectorModelConfiguration>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "CreateDetectorModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDetectorModel = {
  type t;
  type request = {
detectorModelVersion: option<detectorModelVersion>,
detectorModelName: detectorModelName
}
  type response = {
detectorModel: option<detectorModel>
}
  @module("@aws-sdk/client-iotevents") @new external new_: (request) => t = "DescribeDetectorModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
