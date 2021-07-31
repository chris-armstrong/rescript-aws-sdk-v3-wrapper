type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type variableValue = string
type variableName = string
type triggerType = [@as("SNOOZE_TIMEOUT") #SNOOZE_TIMEOUT]
type amazonawsTimestamp = Js.Date.t;
type timerName = string
type thresholdValue = string
type stateName = string
type snoozeDuration = int;
type severity = int;
type seconds = int;
type requestId = string
type payload = NodeJs.Buffer.t;
type note = string
type nextToken = string
type messageId = string
type maxResults = int;
type keyValue = string
type inputPropertyValue = string
type eventType = [@as("STATE_CHANGE") #STATE_CHANGE]
type errorMessage = string
type errorCode = [@as("ThrottlingException") #ThrottlingException | @as("ServiceUnavailableException") #ServiceUnavailableException | @as("InternalFailureException") #InternalFailureException | @as("InvalidRequestException") #InvalidRequestException | @as("ResourceNotFoundException") #ResourceNotFoundException]
type epochMilliTimestamp = float;
type ephemeralInputName = string
type detectorModelVersion = string
type detectorModelName = string
type customerActionName = [@as("RESET") #RESET | @as("ACKNOWLEDGE") #ACKNOWLEDGE | @as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE | @as("SNOOZE") #SNOOZE]
type comparisonOperator = [@as("NOT_EQUAL") #NOT_EQUAL | @as("EQUAL") #EQUAL | @as("LESS_OR_EQUAL") #LESS_OR_EQUAL | @as("LESS") #LESS | @as("GREATER_OR_EQUAL") #GREATER_OR_EQUAL | @as("GREATER") #GREATER]
type alarmStateName = [@as("LATCHED") #LATCHED | @as("SNOOZE_DISABLED") #SNOOZE_DISABLED | @as("ACKNOWLEDGED") #ACKNOWLEDGED | @as("ACTIVE") #ACTIVE | @as("NORMAL") #NORMAL | @as("DISABLED") #DISABLED]
type alarmModelVersion = string
type alarmModelName = string
type variableDefinition = {
@as("value") value: option<variableValue>,
@as("name") name: option<variableName>
}
type variable = {
@as("value") value: option<variableValue>,
@as("name") name: option<variableName>
}
type timestampValue = {
@as("timeInMillis") timeInMillis: epochMilliTimestamp
}
type timerDefinition = {
@as("seconds") seconds: option<seconds>,
@as("name") name: option<timerName>
}
type timer = {
@as("timestamp") timestamp: option<amazonawsTimestamp>,
@as("name") name: option<timerName>
}
type stateChangeConfiguration = {
@as("triggerType") triggerType: triggerType
}
type snoozeAlarmActionRequest = {
@as("snoozeDuration") snoozeDuration: option<snoozeDuration>,
@as("note") note: note,
@as("keyValue") keyValue: keyValue,
@as("alarmModelName") alarmModelName: option<alarmModelName>,
@as("requestId") requestId: option<requestId>
}
type snoozeActionConfiguration = {
@as("note") note: note,
@as("snoozeDuration") snoozeDuration: snoozeDuration
}
type simpleRuleEvaluation = {
@as("thresholdValue") thresholdValue: thresholdValue,
@as("operator") operator: comparisonOperator,
@as("inputPropertyValue") inputPropertyValue: inputPropertyValue
}
type resetAlarmActionRequest = {
@as("note") note: note,
@as("keyValue") keyValue: keyValue,
@as("alarmModelName") alarmModelName: option<alarmModelName>,
@as("requestId") requestId: option<requestId>
}
type resetActionConfiguration = {
@as("note") note: note
}
type enableAlarmActionRequest = {
@as("note") note: note,
@as("keyValue") keyValue: keyValue,
@as("alarmModelName") alarmModelName: option<alarmModelName>,
@as("requestId") requestId: option<requestId>
}
type enableActionConfiguration = {
@as("note") note: note
}
type disableAlarmActionRequest = {
@as("note") note: note,
@as("keyValue") keyValue: keyValue,
@as("alarmModelName") alarmModelName: option<alarmModelName>,
@as("requestId") requestId: option<requestId>
}
type disableActionConfiguration = {
@as("note") note: note
}
type detectorStateSummary = {
@as("stateName") stateName: stateName
}
type batchUpdateDetectorErrorEntry = {
@as("errorMessage") errorMessage: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("messageId") messageId: messageId
}
type batchPutMessageErrorEntry = {
@as("errorMessage") errorMessage: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("messageId") messageId: messageId
}
type batchAlarmActionErrorEntry = {
@as("errorMessage") errorMessage: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("requestId") requestId: requestId
}
type alarmSummary = {
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("stateName") stateName: alarmStateName,
@as("keyValue") keyValue: keyValue,
@as("alarmModelVersion") alarmModelVersion: alarmModelVersion,
@as("alarmModelName") alarmModelName: alarmModelName
}
type acknowledgeAlarmActionRequest = {
@as("note") note: note,
@as("keyValue") keyValue: keyValue,
@as("alarmModelName") alarmModelName: option<alarmModelName>,
@as("requestId") requestId: option<requestId>
}
type acknowledgeActionConfiguration = {
@as("note") note: note
}
type variables = array<variable>
type variableDefinitions = array<variableDefinition>
type timers = array<timer>
type timerDefinitions = array<timerDefinition>
type systemEvent = {
@as("stateChangeConfiguration") stateChangeConfiguration: stateChangeConfiguration,
@as("eventType") eventType: eventType
}
type snoozeAlarmActionRequests = array<snoozeAlarmActionRequest>
type ruleEvaluation = {
@as("simpleRuleEvaluation") simpleRuleEvaluation: simpleRuleEvaluation
}
type resetAlarmActionRequests = array<resetAlarmActionRequest>
type message = {
@as("timestamp") timestamp: timestampValue,
@as("payload") payload: option<payload>,
@as("inputName") inputName: option<ephemeralInputName>,
@as("messageId") messageId: option<messageId>
}
type enableAlarmActionRequests = array<enableAlarmActionRequest>
type disableAlarmActionRequests = array<disableAlarmActionRequest>
type detectorSummary = {
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("state") state: detectorStateSummary,
@as("detectorModelVersion") detectorModelVersion: detectorModelVersion,
@as("keyValue") keyValue: keyValue,
@as("detectorModelName") detectorModelName: detectorModelName
}
type customerAction = {
@as("resetActionConfiguration") resetActionConfiguration: resetActionConfiguration,
@as("acknowledgeActionConfiguration") acknowledgeActionConfiguration: acknowledgeActionConfiguration,
@as("disableActionConfiguration") disableActionConfiguration: disableActionConfiguration,
@as("enableActionConfiguration") enableActionConfiguration: enableActionConfiguration,
@as("snoozeActionConfiguration") snoozeActionConfiguration: snoozeActionConfiguration,
@as("actionName") actionName: customerActionName
}
type batchUpdateDetectorErrorEntries = array<batchUpdateDetectorErrorEntry>
type batchPutMessageErrorEntries = array<batchPutMessageErrorEntry>
type batchAlarmActionErrorEntries = array<batchAlarmActionErrorEntry>
type alarmSummaries = array<alarmSummary>
type acknowledgeAlarmActionRequests = array<acknowledgeAlarmActionRequest>
type messages = array<message>
type detectorSummaries = array<detectorSummary>
type detectorStateDefinition = {
@as("timers") timers: option<timerDefinitions>,
@as("variables") variables: option<variableDefinitions>,
@as("stateName") stateName: option<stateName>
}
type detectorState = {
@as("timers") timers: option<timers>,
@as("variables") variables: option<variables>,
@as("stateName") stateName: option<stateName>
}
type alarmState = {
@as("systemEvent") systemEvent: systemEvent,
@as("customerAction") customerAction: customerAction,
@as("ruleEvaluation") ruleEvaluation: ruleEvaluation,
@as("stateName") stateName: alarmStateName
}
type updateDetectorRequest = {
@as("state") state: option<detectorStateDefinition>,
@as("keyValue") keyValue: keyValue,
@as("detectorModelName") detectorModelName: option<detectorModelName>,
@as("messageId") messageId: option<messageId>
}
type detector = {
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("state") state: detectorState,
@as("detectorModelVersion") detectorModelVersion: detectorModelVersion,
@as("keyValue") keyValue: keyValue,
@as("detectorModelName") detectorModelName: detectorModelName
}
type alarm = {
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("severity") severity: severity,
@as("alarmState") alarmState: alarmState,
@as("keyValue") keyValue: keyValue,
@as("alarmModelVersion") alarmModelVersion: alarmModelVersion,
@as("alarmModelName") alarmModelName: alarmModelName
}
type updateDetectorRequests = array<updateDetectorRequest>
type clientType;
@module("@aws-sdk/client-ioteventsdata") @new external createClient: unit => clientType = "IoTEventsDataClient";
module ListAlarms = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("alarmModelName") alarmModelName: option<alarmModelName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("alarmSummaries") alarmSummaries: alarmSummaries
}
  @module("@aws-sdk/client-ioteventsdata") @new external new_: (request) => t = "ListAlarmsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchSnoozeAlarm = {
  type t;
  type request = {
@as("snoozeActionRequests") snoozeActionRequests: option<snoozeAlarmActionRequests>
}
  type response = {
@as("errorEntries") errorEntries: batchAlarmActionErrorEntries
}
  @module("@aws-sdk/client-ioteventsdata") @new external new_: (request) => t = "BatchSnoozeAlarmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchResetAlarm = {
  type t;
  type request = {
@as("resetActionRequests") resetActionRequests: option<resetAlarmActionRequests>
}
  type response = {
@as("errorEntries") errorEntries: batchAlarmActionErrorEntries
}
  @module("@aws-sdk/client-ioteventsdata") @new external new_: (request) => t = "BatchResetAlarmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchEnableAlarm = {
  type t;
  type request = {
@as("enableActionRequests") enableActionRequests: option<enableAlarmActionRequests>
}
  type response = {
@as("errorEntries") errorEntries: batchAlarmActionErrorEntries
}
  @module("@aws-sdk/client-ioteventsdata") @new external new_: (request) => t = "BatchEnableAlarmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDisableAlarm = {
  type t;
  type request = {
@as("disableActionRequests") disableActionRequests: option<disableAlarmActionRequests>
}
  type response = {
@as("errorEntries") errorEntries: batchAlarmActionErrorEntries
}
  @module("@aws-sdk/client-ioteventsdata") @new external new_: (request) => t = "BatchDisableAlarmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchAcknowledgeAlarm = {
  type t;
  type request = {
@as("acknowledgeActionRequests") acknowledgeActionRequests: option<acknowledgeAlarmActionRequests>
}
  type response = {
@as("errorEntries") errorEntries: batchAlarmActionErrorEntries
}
  @module("@aws-sdk/client-ioteventsdata") @new external new_: (request) => t = "BatchAcknowledgeAlarmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDetectors = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("stateName") stateName: stateName,
@as("detectorModelName") detectorModelName: option<detectorModelName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("detectorSummaries") detectorSummaries: detectorSummaries
}
  @module("@aws-sdk/client-ioteventsdata") @new external new_: (request) => t = "ListDetectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchPutMessage = {
  type t;
  type request = {
@as("messages") messages: option<messages>
}
  type response = {
@as("BatchPutMessageErrorEntries") batchPutMessageErrorEntries: batchPutMessageErrorEntries
}
  @module("@aws-sdk/client-ioteventsdata") @new external new_: (request) => t = "BatchPutMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDetector = {
  type t;
  type request = {
@as("keyValue") keyValue: keyValue,
@as("detectorModelName") detectorModelName: option<detectorModelName>
}
  type response = {
@as("detector") detector: detector
}
  @module("@aws-sdk/client-ioteventsdata") @new external new_: (request) => t = "DescribeDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAlarm = {
  type t;
  type request = {
@as("keyValue") keyValue: keyValue,
@as("alarmModelName") alarmModelName: option<alarmModelName>
}
  type response = {
@as("alarm") alarm: alarm
}
  @module("@aws-sdk/client-ioteventsdata") @new external new_: (request) => t = "DescribeAlarmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchUpdateDetector = {
  type t;
  type request = {
@as("detectors") detectors: option<updateDetectorRequests>
}
  type response = {
@as("batchUpdateDetectorErrorEntries") batchUpdateDetectorErrorEntries: batchUpdateDetectorErrorEntries
}
  @module("@aws-sdk/client-ioteventsdata") @new external new_: (request) => t = "BatchUpdateDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
