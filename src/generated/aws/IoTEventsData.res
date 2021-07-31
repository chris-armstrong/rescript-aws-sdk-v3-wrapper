type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ioteventsdata") @new
external createClient: unit => awsServiceClient = "IoTEventsDataClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type variableValue = string
type variableName = string
type triggerType = [@as("SNOOZE_TIMEOUT") #SNOOZE_TIMEOUT]
type timestamp_ = Js.Date.t
type timerName = string
type thresholdValue = string
type stateName = string
type snoozeDuration = int
type severity = int
type seconds = int
type requestId = string
type payload = NodeJs.Buffer.t
type note = string
type nextToken = string
type messageId = string
type maxResults = int
type keyValue = string
type inputPropertyValue = string
type eventType = [@as("STATE_CHANGE") #STATE_CHANGE]
type errorMessage = string
type errorCode = [
  | @as("ThrottlingException") #ThrottlingException
  | @as("ServiceUnavailableException") #ServiceUnavailableException
  | @as("InternalFailureException") #InternalFailureException
  | @as("InvalidRequestException") #InvalidRequestException
  | @as("ResourceNotFoundException") #ResourceNotFoundException
]
type epochMilliTimestamp = float
type ephemeralInputName = string
type detectorModelVersion = string
type detectorModelName = string
type customerActionName = [
  | @as("RESET") #RESET
  | @as("ACKNOWLEDGE") #ACKNOWLEDGE
  | @as("DISABLE") #DISABLE
  | @as("ENABLE") #ENABLE
  | @as("SNOOZE") #SNOOZE
]
type comparisonOperator = [
  | @as("NOT_EQUAL") #NOT_EQUAL
  | @as("EQUAL") #EQUAL
  | @as("LESS_OR_EQUAL") #LESS_OR_EQUAL
  | @as("LESS") #LESS
  | @as("GREATER_OR_EQUAL") #GREATER_OR_EQUAL
  | @as("GREATER") #GREATER
]
type alarmStateName = [
  | @as("LATCHED") #LATCHED
  | @as("SNOOZE_DISABLED") #SNOOZE_DISABLED
  | @as("ACKNOWLEDGED") #ACKNOWLEDGED
  | @as("ACTIVE") #ACTIVE
  | @as("NORMAL") #NORMAL
  | @as("DISABLED") #DISABLED
]
type alarmModelVersion = string
type alarmModelName = string
type variableDefinition = {
  value: variableValue,
  name: variableName,
}
type variable = {
  value: variableValue,
  name: variableName,
}
type timestampValue = {timeInMillis: option<epochMilliTimestamp>}
type timerDefinition = {
  seconds: seconds,
  name: timerName,
}
type timer = {
  @as("timestamp") timestamp_: timestamp_,
  name: timerName,
}
type stateChangeConfiguration = {triggerType: option<triggerType>}
type snoozeAlarmActionRequest = {
  snoozeDuration: snoozeDuration,
  note: option<note>,
  keyValue: option<keyValue>,
  alarmModelName: alarmModelName,
  requestId: requestId,
}
type snoozeActionConfiguration = {
  note: option<note>,
  snoozeDuration: option<snoozeDuration>,
}
type simpleRuleEvaluation = {
  thresholdValue: option<thresholdValue>,
  operator: option<comparisonOperator>,
  inputPropertyValue: option<inputPropertyValue>,
}
type resetAlarmActionRequest = {
  note: option<note>,
  keyValue: option<keyValue>,
  alarmModelName: alarmModelName,
  requestId: requestId,
}
type resetActionConfiguration = {note: option<note>}
type enableAlarmActionRequest = {
  note: option<note>,
  keyValue: option<keyValue>,
  alarmModelName: alarmModelName,
  requestId: requestId,
}
type enableActionConfiguration = {note: option<note>}
type disableAlarmActionRequest = {
  note: option<note>,
  keyValue: option<keyValue>,
  alarmModelName: alarmModelName,
  requestId: requestId,
}
type disableActionConfiguration = {note: option<note>}
type detectorStateSummary = {stateName: option<stateName>}
type batchUpdateDetectorErrorEntry = {
  errorMessage: option<errorMessage>,
  errorCode: option<errorCode>,
  messageId: option<messageId>,
}
type batchPutMessageErrorEntry = {
  errorMessage: option<errorMessage>,
  errorCode: option<errorCode>,
  messageId: option<messageId>,
}
type batchAlarmActionErrorEntry = {
  errorMessage: option<errorMessage>,
  errorCode: option<errorCode>,
  requestId: option<requestId>,
}
type alarmSummary = {
  lastUpdateTime: option<timestamp_>,
  creationTime: option<timestamp_>,
  stateName: option<alarmStateName>,
  keyValue: option<keyValue>,
  alarmModelVersion: option<alarmModelVersion>,
  alarmModelName: option<alarmModelName>,
}
type acknowledgeAlarmActionRequest = {
  note: option<note>,
  keyValue: option<keyValue>,
  alarmModelName: alarmModelName,
  requestId: requestId,
}
type acknowledgeActionConfiguration = {note: option<note>}
type variables = array<variable>
type variableDefinitions = array<variableDefinition>
type timers = array<timer>
type timerDefinitions = array<timerDefinition>
type systemEvent = {
  stateChangeConfiguration: option<stateChangeConfiguration>,
  eventType: option<eventType>,
}
type snoozeAlarmActionRequests = array<snoozeAlarmActionRequest>
type ruleEvaluation = {simpleRuleEvaluation: option<simpleRuleEvaluation>}
type resetAlarmActionRequests = array<resetAlarmActionRequest>
type message = {
  @as("timestamp") timestamp_: option<timestampValue>,
  payload: payload,
  inputName: ephemeralInputName,
  messageId: messageId,
}
type enableAlarmActionRequests = array<enableAlarmActionRequest>
type disableAlarmActionRequests = array<disableAlarmActionRequest>
type detectorSummary = {
  lastUpdateTime: option<timestamp_>,
  creationTime: option<timestamp_>,
  state: option<detectorStateSummary>,
  detectorModelVersion: option<detectorModelVersion>,
  keyValue: option<keyValue>,
  detectorModelName: option<detectorModelName>,
}
type customerAction = {
  resetActionConfiguration: option<resetActionConfiguration>,
  acknowledgeActionConfiguration: option<acknowledgeActionConfiguration>,
  disableActionConfiguration: option<disableActionConfiguration>,
  enableActionConfiguration: option<enableActionConfiguration>,
  snoozeActionConfiguration: option<snoozeActionConfiguration>,
  actionName: option<customerActionName>,
}
type batchUpdateDetectorErrorEntries = array<batchUpdateDetectorErrorEntry>
type batchPutMessageErrorEntries = array<batchPutMessageErrorEntry>
type batchAlarmActionErrorEntries = array<batchAlarmActionErrorEntry>
type alarmSummaries = array<alarmSummary>
type acknowledgeAlarmActionRequests = array<acknowledgeAlarmActionRequest>
type messages = array<message>
type detectorSummaries = array<detectorSummary>
type detectorStateDefinition = {
  timers: timerDefinitions,
  variables: variableDefinitions,
  stateName: stateName,
}
type detectorState = {
  timers: timers,
  variables: variables,
  stateName: stateName,
}
type alarmState = {
  systemEvent: option<systemEvent>,
  customerAction: option<customerAction>,
  ruleEvaluation: option<ruleEvaluation>,
  stateName: option<alarmStateName>,
}
type updateDetectorRequest = {
  state: detectorStateDefinition,
  keyValue: option<keyValue>,
  detectorModelName: detectorModelName,
  messageId: messageId,
}
type detector = {
  lastUpdateTime: option<timestamp_>,
  creationTime: option<timestamp_>,
  state: option<detectorState>,
  detectorModelVersion: option<detectorModelVersion>,
  keyValue: option<keyValue>,
  detectorModelName: option<detectorModelName>,
}
type alarm = {
  lastUpdateTime: option<timestamp_>,
  creationTime: option<timestamp_>,
  severity: option<severity>,
  alarmState: option<alarmState>,
  keyValue: option<keyValue>,
  alarmModelVersion: option<alarmModelVersion>,
  alarmModelName: option<alarmModelName>,
}
type updateDetectorRequests = array<updateDetectorRequest>

module ListAlarms = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    alarmModelName: alarmModelName,
  }
  type response = {
    nextToken: option<nextToken>,
    alarmSummaries: option<alarmSummaries>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new external new_: request => t = "ListAlarmsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchSnoozeAlarm = {
  type t
  type request = {snoozeActionRequests: snoozeAlarmActionRequests}
  type response = {errorEntries: option<batchAlarmActionErrorEntries>}
  @module("@aws-sdk/client-ioteventsdata") @new
  external new_: request => t = "BatchSnoozeAlarmCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchResetAlarm = {
  type t
  type request = {resetActionRequests: resetAlarmActionRequests}
  type response = {errorEntries: option<batchAlarmActionErrorEntries>}
  @module("@aws-sdk/client-ioteventsdata") @new
  external new_: request => t = "BatchResetAlarmCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchEnableAlarm = {
  type t
  type request = {enableActionRequests: enableAlarmActionRequests}
  type response = {errorEntries: option<batchAlarmActionErrorEntries>}
  @module("@aws-sdk/client-ioteventsdata") @new
  external new_: request => t = "BatchEnableAlarmCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDisableAlarm = {
  type t
  type request = {disableActionRequests: disableAlarmActionRequests}
  type response = {errorEntries: option<batchAlarmActionErrorEntries>}
  @module("@aws-sdk/client-ioteventsdata") @new
  external new_: request => t = "BatchDisableAlarmCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchAcknowledgeAlarm = {
  type t
  type request = {acknowledgeActionRequests: acknowledgeAlarmActionRequests}
  type response = {errorEntries: option<batchAlarmActionErrorEntries>}
  @module("@aws-sdk/client-ioteventsdata") @new
  external new_: request => t = "BatchAcknowledgeAlarmCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDetectors = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    stateName: option<stateName>,
    detectorModelName: detectorModelName,
  }
  type response = {
    nextToken: option<nextToken>,
    detectorSummaries: option<detectorSummaries>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new external new_: request => t = "ListDetectorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchPutMessage = {
  type t
  type request = {messages: messages}
  type response = {
    @as("BatchPutMessageErrorEntries")
    batchPutMessageErrorEntries: option<batchPutMessageErrorEntries>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new
  external new_: request => t = "BatchPutMessageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDetector = {
  type t
  type request = {
    keyValue: option<keyValue>,
    detectorModelName: detectorModelName,
  }
  type response = {detector: option<detector>}
  @module("@aws-sdk/client-ioteventsdata") @new
  external new_: request => t = "DescribeDetectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlarm = {
  type t
  type request = {
    keyValue: option<keyValue>,
    alarmModelName: alarmModelName,
  }
  type response = {alarm: option<alarm>}
  @module("@aws-sdk/client-ioteventsdata") @new external new_: request => t = "DescribeAlarmCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchUpdateDetector = {
  type t
  type request = {detectors: updateDetectorRequests}
  type response = {batchUpdateDetectorErrorEntries: option<batchUpdateDetectorErrorEntries>}
  @module("@aws-sdk/client-ioteventsdata") @new
  external new_: request => t = "BatchUpdateDetectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
