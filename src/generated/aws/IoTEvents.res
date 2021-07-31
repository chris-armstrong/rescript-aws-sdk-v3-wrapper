type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type resourceId = string
type resourceArn = string
type errorMessage = string
type variableValue = string
type variableName = string
type useBase64 = bool;
type amazonawsTimestamp = Js.Date.t;
type timerName = string
type threshold = string
type tagValue = string
type tagKey = string
type statusMessage = string
type stateName = string
type severity = int;
type seconds = int;
type sSOReferenceId = string
type sMSSenderId = string
type resourceName = string
type queueUrl = string
type payloadType = [@as("JSON") #JSON | @as("STRING") #STRING]
type notificationAdditionalMessage = string
type nextToken = string
type maxResults = int;
type maxAnalysisResults = int;
type mQTTTopic = string
type loggingLevel = [@as("DEBUG") #DEBUG | @as("INFO") #INFO | @as("ERROR") #ERROR]
type loggingEnabled = bool;
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
type disabledOnInitialization = bool;
type detectorModelVersionStatus = [@as("FAILED") #FAILED | @as("PAUSED") #PAUSED | @as("DRAFT") #DRAFT | @as("DEPRECATED") #DEPRECATED | @as("INACTIVE") #INACTIVE | @as("ACTIVATING") #ACTIVATING | @as("ACTIVE") #ACTIVE]
type detectorModelVersion = string
type detectorModelName = string
type detectorModelDescription = string
type detectorModelArn = string
type deliveryStreamName = string
type contentExpression = string
type condition = string
type comparisonOperator = [@as("NOT_EQUAL") #NOT_EQUAL | @as("EQUAL") #EQUAL | @as("LESS_OR_EQUAL") #LESS_OR_EQUAL | @as("LESS") #LESS | @as("GREATER_OR_EQUAL") #GREATER_OR_EQUAL | @as("GREATER") #GREATER]
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
type acknowledgeFlowEnabled = bool;
type tagKeys = array<tagKey>
type tag = {
@as("value") value: option<tagValue>,
@as("key") key: option<tagKey>
}
type simpleRule = {
@as("threshold") threshold: option<threshold>,
@as("comparisonOperator") comparisonOperator: option<comparisonOperator>,
@as("inputProperty") inputProperty: option<inputProperty>
}
type setVariableAction = {
@as("value") value: option<variableValue>,
@as("variableName") variableName: option<variableName>
}
type setTimerAction = {
@as("durationExpression") durationExpression: variableValue,
@as("seconds") seconds: seconds,
@as("timerName") timerName: option<timerName>
}
type sSOIdentity = {
@as("userId") userId: sSOReferenceId,
@as("identityStoreId") identityStoreId: option<identityStoreId>
}
type routedResource = {
@as("arn") arn: amazonResourceName,
@as("name") name: resourceName
}
type resetTimerAction = {
@as("timerName") timerName: option<timerName>
}
type payload = {
@as("type") type_: option<payloadType>,
@as("contentExpression") contentExpression: option<contentExpression>
}
type iotSiteWiseAssetModelPropertyIdentifier = {
@as("propertyId") propertyId: option<assetPropertyId>,
@as("assetModelId") assetModelId: option<assetModelId>
}
type iotEventsInputIdentifier = {
@as("inputName") inputName: option<inputName>
}
type inputSummary = {
@as("status") status: inputStatus,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("inputArn") inputArn: inputArn,
@as("inputDescription") inputDescription: inputDescription,
@as("inputName") inputName: inputName
}
type inputConfiguration = {
@as("status") status: option<inputStatus>,
@as("lastUpdateTime") lastUpdateTime: option<amazonawsTimestamp>,
@as("creationTime") creationTime: option<amazonawsTimestamp>,
@as("inputArn") inputArn: option<inputArn>,
@as("inputDescription") inputDescription: inputDescription,
@as("inputName") inputName: option<inputName>
}
type initializationConfiguration = {
@as("disabledOnInitialization") disabledOnInitialization: option<disabledOnInitialization>
}
type emailContent = {
@as("additionalMessage") additionalMessage: notificationAdditionalMessage,
@as("subject") subject: emailSubject
}
type detectorModelVersionSummary = {
@as("evaluationMethod") evaluationMethod: evaluationMethod,
@as("status") status: detectorModelVersionStatus,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("roleArn") roleArn: amazonResourceName,
@as("detectorModelArn") detectorModelArn: detectorModelArn,
@as("detectorModelVersion") detectorModelVersion: detectorModelVersion,
@as("detectorModelName") detectorModelName: detectorModelName
}
type detectorModelSummary = {
@as("creationTime") creationTime: amazonawsTimestamp,
@as("detectorModelDescription") detectorModelDescription: detectorModelDescription,
@as("detectorModelName") detectorModelName: detectorModelName
}
type detectorModelConfiguration = {
@as("evaluationMethod") evaluationMethod: evaluationMethod,
@as("key") key: attributeJsonPath,
@as("status") status: detectorModelVersionStatus,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("roleArn") roleArn: amazonResourceName,
@as("detectorModelArn") detectorModelArn: detectorModelArn,
@as("detectorModelDescription") detectorModelDescription: detectorModelDescription,
@as("detectorModelVersion") detectorModelVersion: detectorModelVersion,
@as("detectorModelName") detectorModelName: detectorModelName
}
type detectorDebugOption = {
@as("keyValue") keyValue: keyValue,
@as("detectorModelName") detectorModelName: option<detectorModelName>
}
type clearTimerAction = {
@as("timerName") timerName: option<timerName>
}
type attribute = {
@as("jsonPath") jsonPath: option<attributeJsonPath>
}
type assetPropertyVariant = {
@as("booleanValue") booleanValue: assetPropertyBooleanValue,
@as("doubleValue") doubleValue: assetPropertyDoubleValue,
@as("integerValue") integerValue: assetPropertyIntegerValue,
@as("stringValue") stringValue: assetPropertyStringValue
}
type assetPropertyTimestamp = {
@as("offsetInNanos") offsetInNanos: assetPropertyOffsetInNanos,
@as("timeInSeconds") timeInSeconds: option<assetPropertyTimeInSeconds>
}
type analysisResultLocation = {
@as("path") path: analysisResultLocationPath
}
type alarmModelVersionSummary = {
@as("statusMessage") statusMessage: statusMessage,
@as("status") status: alarmModelVersionStatus,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("roleArn") roleArn: amazonResourceName,
@as("alarmModelVersion") alarmModelVersion: alarmModelVersion,
@as("alarmModelArn") alarmModelArn: alarmModelArn,
@as("alarmModelName") alarmModelName: alarmModelName
}
type alarmModelSummary = {
@as("alarmModelName") alarmModelName: alarmModelName,
@as("alarmModelDescription") alarmModelDescription: alarmModelDescription,
@as("creationTime") creationTime: amazonawsTimestamp
}
type acknowledgeFlow = {
@as("enabled") enabled: option<acknowledgeFlowEnabled>
}
type tags = array<tag>
type sqsAction = {
@as("payload") payload: payload,
@as("useBase64") useBase64: useBase64,
@as("queueUrl") queueUrl: option<queueUrl>
}
type sNSTopicPublishAction = {
@as("payload") payload: payload,
@as("targetArn") targetArn: option<amazonResourceName>
}
type routedResources = array<routedResource>
type recipientDetail = {
@as("ssoIdentity") ssoIdentity: sSOIdentity
}
type lambdaAction = {
@as("payload") payload: payload,
@as("functionArn") functionArn: option<amazonResourceName>
}
type iotTopicPublishAction = {
@as("payload") payload: payload,
@as("mqttTopic") mqttTopic: option<mQTTTopic>
}
type iotSiteWiseInputIdentifier = {
@as("iotSiteWiseAssetModelPropertyIdentifier") iotSiteWiseAssetModelPropertyIdentifier: iotSiteWiseAssetModelPropertyIdentifier
}
type iotEventsAction = {
@as("payload") payload: payload,
@as("inputName") inputName: option<inputName>
}
type inputSummaries = array<inputSummary>
type firehoseAction = {
@as("payload") payload: payload,
@as("separator") separator: firehoseSeparator,
@as("deliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
type dynamoDBv2Action = {
@as("payload") payload: payload,
@as("tableName") tableName: option<dynamoTableName>
}
type dynamoDBAction = {
@as("payload") payload: payload,
@as("tableName") tableName: option<dynamoTableName>,
@as("payloadField") payloadField: dynamoKeyField,
@as("operation") operation: dynamoOperation,
@as("rangeKeyValue") rangeKeyValue: dynamoKeyValue,
@as("rangeKeyField") rangeKeyField: dynamoKeyField,
@as("rangeKeyType") rangeKeyType: dynamoKeyType,
@as("hashKeyValue") hashKeyValue: option<dynamoKeyValue>,
@as("hashKeyField") hashKeyField: option<dynamoKeyField>,
@as("hashKeyType") hashKeyType: dynamoKeyType
}
type detectorModelVersionSummaries = array<detectorModelVersionSummary>
type detectorModelSummaries = array<detectorModelSummary>
type detectorDebugOptions = array<detectorDebugOption>
type attributes = array<attribute>
type assetPropertyValue = {
@as("quality") quality: assetPropertyQuality,
@as("timestamp") timestamp: assetPropertyTimestamp,
@as("value") value: assetPropertyVariant
}
type analysisResultLocations = array<analysisResultLocation>
type alarmRule = {
@as("simpleRule") simpleRule: simpleRule
}
type alarmModelVersionSummaries = array<alarmModelVersionSummary>
type alarmModelSummaries = array<alarmModelSummary>
type alarmCapabilities = {
@as("acknowledgeFlow") acknowledgeFlow: acknowledgeFlow,
@as("initializationConfiguration") initializationConfiguration: initializationConfiguration
}
type recipientDetails = array<recipientDetail>
type notificationTargetActions = {
@as("lambdaAction") lambdaAction: lambdaAction
}
type loggingOptions = {
@as("detectorDebugOptions") detectorDebugOptions: detectorDebugOptions,
@as("enabled") enabled: option<loggingEnabled>,
@as("level") level: option<loggingLevel>,
@as("roleArn") roleArn: option<amazonResourceName>
}
type iotSiteWiseAction = {
@as("propertyValue") propertyValue: assetPropertyValue,
@as("propertyAlias") propertyAlias: assetPropertyAlias,
@as("propertyId") propertyId: assetPropertyId,
@as("assetId") assetId: assetId,
@as("entryId") entryId: assetPropertyEntryId
}
type inputIdentifier = {
@as("iotSiteWiseInputIdentifier") iotSiteWiseInputIdentifier: iotSiteWiseInputIdentifier,
@as("iotEventsInputIdentifier") iotEventsInputIdentifier: iotEventsInputIdentifier
}
type inputDefinition = {
@as("attributes") attributes: option<attributes>
}
type analysisResult = {
@as("locations") locations: analysisResultLocations,
@as("message") message: analysisMessage,
@as("level") level: analysisResultLevel,
@as("type") type_: analysisType
}
type sMSConfiguration = {
@as("recipients") recipients: option<recipientDetails>,
@as("additionalMessage") additionalMessage: notificationAdditionalMessage,
@as("senderId") senderId: sMSSenderId
}
type input = {
@as("inputDefinition") inputDefinition: inputDefinition,
@as("inputConfiguration") inputConfiguration: inputConfiguration
}
type emailRecipients = {
@as("to") to: recipientDetails
}
type analysisResults = array<analysisResult>
type alarmAction = {
@as("iotSiteWise") iotSiteWise: iotSiteWiseAction,
@as("dynamoDBv2") dynamoDBv2: dynamoDBv2Action,
@as("dynamoDB") dynamoDB: dynamoDBAction,
@as("firehose") firehose: firehoseAction,
@as("sqs") sqs: sqsAction,
@as("iotEvents") iotEvents: iotEventsAction,
@as("lambda") lambda: lambdaAction,
@as("iotTopicPublish") iotTopicPublish: iotTopicPublishAction,
@as("sns") sns: sNSTopicPublishAction
}
type action = {
@as("iotSiteWise") iotSiteWise: iotSiteWiseAction,
@as("dynamoDBv2") dynamoDBv2: dynamoDBv2Action,
@as("dynamoDB") dynamoDB: dynamoDBAction,
@as("firehose") firehose: firehoseAction,
@as("sqs") sqs: sqsAction,
@as("iotEvents") iotEvents: iotEventsAction,
@as("lambda") lambda: lambdaAction,
@as("resetTimer") resetTimer: resetTimerAction,
@as("clearTimer") clearTimer: clearTimerAction,
@as("setTimer") setTimer: setTimerAction,
@as("iotTopicPublish") iotTopicPublish: iotTopicPublishAction,
@as("sns") sns: sNSTopicPublishAction,
@as("setVariable") setVariable: setVariableAction
}
type sMSConfigurations = array<sMSConfiguration>
type emailConfiguration = {
@as("recipients") recipients: option<emailRecipients>,
@as("content") content: emailContent,
@as("from") from: option<fromEmail>
}
type alarmActions = array<alarmAction>
type actions = array<action>
type transitionEvent = {
@as("nextState") nextState: option<stateName>,
@as("actions") actions: actions,
@as("condition") condition: option<condition>,
@as("eventName") eventName: option<eventName>
}
type event = {
@as("actions") actions: actions,
@as("condition") condition: condition,
@as("eventName") eventName: option<eventName>
}
type emailConfigurations = array<emailConfiguration>
type alarmEventActions = {
@as("alarmActions") alarmActions: alarmActions
}
type transitionEvents = array<transitionEvent>
type notificationAction = {
@as("emailConfigurations") emailConfigurations: emailConfigurations,
@as("smsConfigurations") smsConfigurations: sMSConfigurations,
@as("action") action: option<notificationTargetActions>
}
type events = array<event>
type onInputLifecycle = {
@as("transitionEvents") transitionEvents: transitionEvents,
@as("events") events: events
}
type onExitLifecycle = {
@as("events") events: events
}
type onEnterLifecycle = {
@as("events") events: events
}
type notificationActions = array<notificationAction>
type state = {
@as("onExit") onExit: onExitLifecycle,
@as("onEnter") onEnter: onEnterLifecycle,
@as("onInput") onInput: onInputLifecycle,
@as("stateName") stateName: option<stateName>
}
type alarmNotification = {
@as("notificationActions") notificationActions: notificationActions
}
type states = array<state>
type detectorModelDefinition = {
@as("initialStateName") initialStateName: option<stateName>,
@as("states") states: option<states>
}
type detectorModel = {
@as("detectorModelConfiguration") detectorModelConfiguration: detectorModelConfiguration,
@as("detectorModelDefinition") detectorModelDefinition: detectorModelDefinition
}
type clientType;
@module("@aws-sdk/client-iotevents") @new external createClient: unit => clientType = "IoTEventsClient";
module DescribeDetectorModelAnalysis = {
  type t;
  type request = {
@as("analysisId") analysisId: option<analysisId>
}
  type response = {
@as("status") status: analysisStatus
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "DescribeDetectorModelAnalysisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInput = {
  type t;
  type request = {
@as("inputName") inputName: option<inputName>
}
  type response = unit
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "DeleteInputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDetectorModel = {
  type t;
  type request = {
@as("detectorModelName") detectorModelName: option<detectorModelName>
}
  type response = unit
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "DeleteDetectorModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAlarmModel = {
  type t;
  type request = {
@as("alarmModelName") alarmModelName: option<alarmModelName>
}
  type response = unit
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "DeleteAlarmModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeys>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tags>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("tags") tags: tags
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInputs = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("inputSummaries") inputSummaries: inputSummaries
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "ListInputsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDetectorModels = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("detectorModelSummaries") detectorModelSummaries: detectorModelSummaries
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "ListDetectorModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDetectorModelVersions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("detectorModelName") detectorModelName: option<detectorModelName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("detectorModelVersionSummaries") detectorModelVersionSummaries: detectorModelVersionSummaries
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "ListDetectorModelVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAlarmModels = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("alarmModelSummaries") alarmModelSummaries: alarmModelSummaries
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "ListAlarmModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAlarmModelVersions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("alarmModelName") alarmModelName: option<alarmModelName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("alarmModelVersionSummaries") alarmModelVersionSummaries: alarmModelVersionSummaries
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "ListAlarmModelVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateInput = {
  type t;
  type request = {
@as("inputDefinition") inputDefinition: option<inputDefinition>,
@as("inputDescription") inputDescription: inputDescription,
@as("inputName") inputName: option<inputName>
}
  type response = {
@as("inputConfiguration") inputConfiguration: inputConfiguration
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "UpdateInputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutLoggingOptions = {
  type t;
  type request = {
@as("loggingOptions") loggingOptions: option<loggingOptions>
}
  
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "PutLoggingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListInputRoutings = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("inputIdentifier") inputIdentifier: option<inputIdentifier>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("routedResources") routedResources: routedResources
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "ListInputRoutingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoggingOptions = {
  type t;
  type request = unit
  type response = {
@as("loggingOptions") loggingOptions: loggingOptions
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "DescribeLoggingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInput = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("inputDefinition") inputDefinition: option<inputDefinition>,
@as("inputDescription") inputDescription: inputDescription,
@as("inputName") inputName: option<inputName>
}
  type response = {
@as("inputConfiguration") inputConfiguration: inputConfiguration
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "CreateInputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDetectorModelAnalysisResults = {
  type t;
  type request = {
@as("maxResults") maxResults: maxAnalysisResults,
@as("nextToken") nextToken: nextToken,
@as("analysisId") analysisId: option<analysisId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("analysisResults") analysisResults: analysisResults
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "GetDetectorModelAnalysisResultsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInput = {
  type t;
  type request = {
@as("inputName") inputName: option<inputName>
}
  type response = {
@as("input") input: input
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "DescribeInputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAlarmModel = {
  type t;
  type request = {
@as("alarmCapabilities") alarmCapabilities: alarmCapabilities,
@as("alarmEventActions") alarmEventActions: alarmEventActions,
@as("alarmNotification") alarmNotification: alarmNotification,
@as("alarmRule") alarmRule: option<alarmRule>,
@as("severity") severity: severity,
@as("roleArn") roleArn: option<amazonResourceName>,
@as("alarmModelDescription") alarmModelDescription: alarmModelDescription,
@as("alarmModelName") alarmModelName: option<alarmModelName>
}
  type response = {
@as("status") status: alarmModelVersionStatus,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("alarmModelVersion") alarmModelVersion: alarmModelVersion,
@as("alarmModelArn") alarmModelArn: alarmModelArn,
@as("creationTime") creationTime: amazonawsTimestamp
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "UpdateAlarmModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAlarmModel = {
  type t;
  type request = {
@as("alarmModelVersion") alarmModelVersion: alarmModelVersion,
@as("alarmModelName") alarmModelName: option<alarmModelName>
}
  type response = {
@as("alarmCapabilities") alarmCapabilities: alarmCapabilities,
@as("alarmEventActions") alarmEventActions: alarmEventActions,
@as("alarmNotification") alarmNotification: alarmNotification,
@as("alarmRule") alarmRule: alarmRule,
@as("severity") severity: severity,
@as("key") key: attributeJsonPath,
@as("roleArn") roleArn: amazonResourceName,
@as("alarmModelDescription") alarmModelDescription: alarmModelDescription,
@as("alarmModelName") alarmModelName: alarmModelName,
@as("statusMessage") statusMessage: statusMessage,
@as("status") status: alarmModelVersionStatus,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("alarmModelVersion") alarmModelVersion: alarmModelVersion,
@as("alarmModelArn") alarmModelArn: alarmModelArn,
@as("creationTime") creationTime: amazonawsTimestamp
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "DescribeAlarmModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAlarmModel = {
  type t;
  type request = {
@as("alarmCapabilities") alarmCapabilities: alarmCapabilities,
@as("alarmEventActions") alarmEventActions: alarmEventActions,
@as("alarmNotification") alarmNotification: alarmNotification,
@as("alarmRule") alarmRule: option<alarmRule>,
@as("severity") severity: severity,
@as("key") key: attributeJsonPath,
@as("tags") tags: tags,
@as("roleArn") roleArn: option<amazonResourceName>,
@as("alarmModelDescription") alarmModelDescription: alarmModelDescription,
@as("alarmModelName") alarmModelName: option<alarmModelName>
}
  type response = {
@as("status") status: alarmModelVersionStatus,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("alarmModelVersion") alarmModelVersion: alarmModelVersion,
@as("alarmModelArn") alarmModelArn: alarmModelArn,
@as("creationTime") creationTime: amazonawsTimestamp
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "CreateAlarmModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDetectorModel = {
  type t;
  type request = {
@as("evaluationMethod") evaluationMethod: evaluationMethod,
@as("roleArn") roleArn: option<amazonResourceName>,
@as("detectorModelDescription") detectorModelDescription: detectorModelDescription,
@as("detectorModelDefinition") detectorModelDefinition: option<detectorModelDefinition>,
@as("detectorModelName") detectorModelName: option<detectorModelName>
}
  type response = {
@as("detectorModelConfiguration") detectorModelConfiguration: detectorModelConfiguration
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "UpdateDetectorModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDetectorModelAnalysis = {
  type t;
  type request = {
@as("detectorModelDefinition") detectorModelDefinition: option<detectorModelDefinition>
}
  type response = {
@as("analysisId") analysisId: analysisId
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "StartDetectorModelAnalysisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDetectorModel = {
  type t;
  type request = {
@as("evaluationMethod") evaluationMethod: evaluationMethod,
@as("tags") tags: tags,
@as("roleArn") roleArn: option<amazonResourceName>,
@as("key") key: attributeJsonPath,
@as("detectorModelDescription") detectorModelDescription: detectorModelDescription,
@as("detectorModelDefinition") detectorModelDefinition: option<detectorModelDefinition>,
@as("detectorModelName") detectorModelName: option<detectorModelName>
}
  type response = {
@as("detectorModelConfiguration") detectorModelConfiguration: detectorModelConfiguration
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "CreateDetectorModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDetectorModel = {
  type t;
  type request = {
@as("detectorModelVersion") detectorModelVersion: detectorModelVersion,
@as("detectorModelName") detectorModelName: option<detectorModelName>
}
  type response = {
@as("detectorModel") detectorModel: detectorModel
}
  @module("@aws-sdk/client-iotevents") @new external new_: (Js.Promise.t<request>) => t = "DescribeDetectorModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
