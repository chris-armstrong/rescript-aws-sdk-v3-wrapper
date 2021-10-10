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
@ocaml.doc("<p>The new value of the variable.</p>")
type variableDefinition = {
  @ocaml.doc("<p>The new value of the variable.</p>") value: variableValue,
  @ocaml.doc("<p>The name of the variable.</p>") name: variableName,
}
@ocaml.doc("<p>The current state of the variable.</p>")
type variable = {
  @ocaml.doc("<p>The current value of the variable.</p>") value: variableValue,
  @ocaml.doc("<p>The name of the variable.</p>") name: variableName,
}
@ocaml.doc("<p>Contains information about a timestamp.</p>")
type timestampValue = {
  @ocaml.doc("<p>The value of the timestamp, in the Unix epoch format.</p>")
  timeInMillis: option<epochMilliTimestamp>,
}
@ocaml.doc("<p>The new setting of a timer.</p>")
type timerDefinition = {
  @ocaml.doc(
    "<p>The new setting of the timer (the number of seconds before the timer elapses).</p>"
  )
  seconds: seconds,
  @ocaml.doc("<p>The name of the timer.</p>") name: timerName,
}
@ocaml.doc("<p>The current state of a timer.</p>")
type timer = {
  @ocaml.doc("<p>The number of seconds which have elapsed on the timer.</p>") @as("timestamp")
  timestamp_: timestamp_,
  @ocaml.doc("<p>The name of the timer.</p>") name: timerName,
}
@ocaml.doc("<p>Contains the configuration information of alarm state changes.</p>")
type stateChangeConfiguration = {
  @ocaml.doc("<p>The trigger type. If the value is <code>SNOOZE_TIMEOUT</code>, the snooze duration ends
      and the alarm automatically changes to the <code>NORMAL</code> state.</p>")
  triggerType: option<triggerType>,
}
@ocaml.doc("<p>Information needed to snooze the alarm.</p>")
type snoozeAlarmActionRequest = {
  @ocaml.doc(
    "<p>The snooze time in seconds. The alarm automatically changes to the <code>NORMAL</code> state after this duration.</p>"
  )
  snoozeDuration: snoozeDuration,
  @ocaml.doc("<p>The note that you can leave when you snooze the alarm.</p>") note: option<note>,
  @ocaml.doc("<p>The value of the key used as a filter to select only the alarms associated with the 
<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>")
  keyValue: option<keyValue>,
  @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: alarmModelName,
  @ocaml.doc("<p>The request ID. Each ID must be unique within each batch.</p>")
  requestId: requestId,
}
@ocaml.doc("<p>Contains the configuration information of a snooze action.</p>")
type snoozeActionConfiguration = {
  @ocaml.doc("<p>The note that you can leave when you snooze the alarm.</p>") note: option<note>,
  @ocaml.doc(
    "<p>The snooze time in seconds. The alarm automatically changes to the <code>NORMAL</code> state after this duration.</p>"
  )
  snoozeDuration: option<snoozeDuration>,
}
@ocaml.doc("<p>Information needed to compare two values with a comparison operator.</p>")
type simpleRuleEvaluation = {
  @ocaml.doc("<p>The threshold value, on the right side of the comparison operator.</p>")
  thresholdValue: option<thresholdValue>,
  @ocaml.doc("<p>The comparison operator.</p>") operator: option<comparisonOperator>,
  @ocaml.doc("<p>The value of the input property, on the left side of the comparison operator.</p>")
  inputPropertyValue: option<inputPropertyValue>,
}
@ocaml.doc("<p>Information needed to reset the alarm.</p>")
type resetAlarmActionRequest = {
  @ocaml.doc("<p>The note that you can leave when you reset the alarm.</p>") note: option<note>,
  @ocaml.doc("<p>The value of the key used as a filter to select only the alarms associated with the 
<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>")
  keyValue: option<keyValue>,
  @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: alarmModelName,
  @ocaml.doc("<p>The request ID. Each ID must be unique within each batch.</p>")
  requestId: requestId,
}
@ocaml.doc("<p>Contains the configuration information of a reset action.</p>")
type resetActionConfiguration = {
  @ocaml.doc("<p>The note that you can leave when you reset the alarm.</p>") note: option<note>,
}
@ocaml.doc("<p>Information needed to enable the alarm.</p>")
type enableAlarmActionRequest = {
  @ocaml.doc("<p>The note that you can leave when you enable the alarm.</p>") note: option<note>,
  @ocaml.doc("<p>The value of the key used as a filter to select only the alarms associated with the 
<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>")
  keyValue: option<keyValue>,
  @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: alarmModelName,
  @ocaml.doc("<p>The request ID. Each ID must be unique within each batch.</p>")
  requestId: requestId,
}
@ocaml.doc("<p>Contains the configuration information of an enable action.</p>")
type enableActionConfiguration = {
  @ocaml.doc("<p>The note that you can leave when you enable the alarm.</p>") note: option<note>,
}
@ocaml.doc("<p>Information used to disable the alarm.</p>")
type disableAlarmActionRequest = {
  @ocaml.doc("<p>The note that you can leave when you disable the alarm.</p>") note: option<note>,
  @ocaml.doc("<p>The value of the key used as a filter to select only the alarms associated with the 
<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>")
  keyValue: option<keyValue>,
  @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: alarmModelName,
  @ocaml.doc("<p>The request ID. Each ID must be unique within each batch.</p>")
  requestId: requestId,
}
@ocaml.doc("<p>Contains the configuration information of a disable action.</p>")
type disableActionConfiguration = {
  @ocaml.doc("<p>The note that you can leave when you disable the alarm.</p>") note: option<note>,
}
@ocaml.doc("<p>Information about the detector state.</p>")
type detectorStateSummary = {
  @ocaml.doc("<p>The name of the state.</p>") stateName: option<stateName>,
}
@ocaml.doc("<p>Information about the error that occurred when attempting to update a detector.</p>")
type batchUpdateDetectorErrorEntry = {
  @ocaml.doc("<p>A message that describes the error.</p>") errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The error code.</p>") errorCode: option<errorCode>,
  @ocaml.doc("<p>The <code>\"messageId\"</code> of the update request that caused the error. (The value of
      the <code>\"messageId\"</code> in the update request <code>\"Detector\"</code> object.)</p>")
  messageId: option<messageId>,
}
@ocaml.doc("<p>Contains information about the errors encountered.</p>")
type batchPutMessageErrorEntry = {
  @ocaml.doc("<p>A message that describes the error.</p>") errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The error code.</p>") errorCode: option<errorCode>,
  @ocaml.doc("<p>The ID of the message that caused the error. (See the value corresponding to the
        <code>\"messageId\"</code> key in the <code>\"message\"</code> object.)</p>")
  messageId: option<messageId>,
}
@ocaml.doc("<p>Contains error messages associated with one of the following requests:</p>
         <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchAcknowledgeAlarm.html\">BatchAcknowledgeAlarm</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchDisableAlarm.html\">BatchDisableAlarm</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchEnableAlarm.html\">BatchEnableAlarm</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchResetAlarm.html\">BatchResetAlarm</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchSnoozeAlarm.html\">BatchSnoozeAlarm</a>
               </p>
            </li>
         </ul>")
type batchAlarmActionErrorEntry = {
  @ocaml.doc("<p>A message that describes the error.</p>") errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The error code.</p>") errorCode: option<errorCode>,
  @ocaml.doc("<p>The request ID. Each ID must be unique within each batch.</p>")
  requestId: option<requestId>,
}
@ocaml.doc("<p>Contains a summary of an alarm.</p>")
type alarmSummary = {
  @ocaml.doc("<p>The time the alarm was last updated, in the Unix epoch format.</p>")
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>The time the alarm was created, in the Unix epoch format.</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The name of the alarm state. The state name can be one of the following values:</p>
         <ul>
            <li>
		             <p>
                  <code>DISABLED</code> - When the alarm is in the <code>DISABLED</code> state, 
		it isn't ready to evaluate data. To enable the alarm, 
		you must change the alarm to the <code>NORMAL</code> state.</p>
	           </li>
            <li>
		             <p>
                  <code>NORMAL</code> - When the alarm is in the <code>NORMAL</code> state, 
		it's ready to evaluate data.</p>
	           </li>
            <li>
		             <p>
                  <code>ACTIVE</code> - If the alarm is in the <code>ACTIVE</code> state, 
		the alarm is invoked.</p>
	           </li>
            <li>
		             <p>
                  <code>ACKNOWLEDGED</code> - When the alarm is in the <code>ACKNOWLEDGED</code> state, 
		the alarm was invoked and you acknowledged the alarm.</p>
	           </li>
            <li>
		             <p>
                  <code>SNOOZE_DISABLED</code> - When the alarm is in the <code>SNOOZE_DISABLED</code> state, 
		the alarm is disabled for a specified period of time. After the snooze time, 
		the alarm automatically changes to the <code>NORMAL</code> state. </p>
	           </li>
            <li>
		             <p>
                  <code>LATCHED</code> - When the alarm is in the <code>LATCHED</code> state, 
		the alarm was invoked. However, the data that the alarm is currently evaluating is within the specified range. 
		To change the alarm to the <code>NORMAL</code> state, you must acknowledge the alarm.</p>
	           </li>
         </ul>")
  stateName: option<alarmStateName>,
  @ocaml.doc("<p>The value of the key used as a filter to select only the alarms associated with the 
<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>")
  keyValue: option<keyValue>,
  @ocaml.doc("<p>The version of the alarm model.</p>") alarmModelVersion: option<alarmModelVersion>,
  @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: option<alarmModelName>,
}
@ocaml.doc("<p>Information needed to acknowledge the alarm.</p>")
type acknowledgeAlarmActionRequest = {
  @ocaml.doc("<p>The note that you can leave when you acknowledge the alarm.</p>")
  note: option<note>,
  @ocaml.doc("<p>The value of the key used as a filter to select only the alarms associated with the 
<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>")
  keyValue: option<keyValue>,
  @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: alarmModelName,
  @ocaml.doc("<p>The request ID. Each ID must be unique within each batch.</p>")
  requestId: requestId,
}
@ocaml.doc("<p>Contains the configuration information of an acknowledge action.</p>")
type acknowledgeActionConfiguration = {
  @ocaml.doc("<p>The note that you can leave when you acknowledge the alarm.</p>")
  note: option<note>,
}
type variables = array<variable>
type variableDefinitions = array<variableDefinition>
type timers = array<timer>
type timerDefinitions = array<timerDefinition>
@ocaml.doc("<p>Contains information about alarm state changes.</p>")
type systemEvent = {
  @ocaml.doc("<p>Contains the configuration information of alarm state changes.</p>")
  stateChangeConfiguration: option<stateChangeConfiguration>,
  @ocaml.doc("<p>The event type. If the value is <code>STATE_CHANGE</code>, the event contains information
      about alarm state changes.</p>")
  eventType: option<eventType>,
}
type snoozeAlarmActionRequests = array<snoozeAlarmActionRequest>
@ocaml.doc("<p>Information needed to evaluate data.</p>")
type ruleEvaluation = {
  @ocaml.doc("<p>Information needed to compare two values with a comparison operator.</p>")
  simpleRuleEvaluation: option<simpleRuleEvaluation>,
}
type resetAlarmActionRequests = array<resetAlarmActionRequest>
@ocaml.doc("<p>Information about a message.</p>")
type message = {
  @ocaml.doc("<p>The timestamp associated with the message.</p>") @as("timestamp")
  timestamp_: option<timestampValue>,
  @ocaml.doc("<p>The payload of the message. This can be a JSON string or a Base-64-encoded string
      representing binary data (in which case you must decode it).</p>")
  payload: payload,
  @ocaml.doc("<p>The name of the input into which the message payload is transformed.</p>")
  inputName: ephemeralInputName,
  @ocaml.doc("<p>The ID to assign to the message. Within each batch sent, each <code>\"messageId\"</code>
      must be unique.</p>")
  messageId: messageId,
}
type enableAlarmActionRequests = array<enableAlarmActionRequest>
type disableAlarmActionRequests = array<disableAlarmActionRequest>
@ocaml.doc("<p>Information about the detector (instance).</p>")
type detectorSummary = {
  @ocaml.doc("<p>The time the detector (instance) was last updated.</p>")
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>The time the detector (instance) was created.</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The current state of the detector (instance).</p>")
  state: option<detectorStateSummary>,
  @ocaml.doc("<p>The version of the detector model that created this detector (instance).</p>")
  detectorModelVersion: option<detectorModelVersion>,
  @ocaml.doc("<p>The value of the key (identifying the device or system) that caused the creation of this
      detector (instance).</p>")
  keyValue: option<keyValue>,
  @ocaml.doc("<p>The name of the detector model that created this detector (instance).</p>")
  detectorModelName: option<detectorModelName>,
}
@ocaml.doc(
  "<p>Contains information about the action that you can take to respond to the alarm.</p>"
)
type customerAction = {
  @ocaml.doc("<p>Contains the configuration information of a reset action.</p>")
  resetActionConfiguration: option<resetActionConfiguration>,
  @ocaml.doc("<p>Contains the configuration information of an acknowledge action.</p>")
  acknowledgeActionConfiguration: option<acknowledgeActionConfiguration>,
  @ocaml.doc("<p>Contains the configuration information of a disable action.</p>")
  disableActionConfiguration: option<disableActionConfiguration>,
  @ocaml.doc("<p>Contains the configuration information of an enable action.</p>")
  enableActionConfiguration: option<enableActionConfiguration>,
  @ocaml.doc("<p>Contains the configuration information of a snooze action.</p>")
  snoozeActionConfiguration: option<snoozeActionConfiguration>,
  @ocaml.doc("<p>The name of the action. The action name can be one of the following values:</p>
         <ul>
            <li>
			            <p>
                  <code>SNOOZE</code> - When you snooze the alarm, the alarm state changes to <code>SNOOZE_DISABLED</code>.</p>
		          </li>
            <li>
			            <p>
                  <code>ENABLE</code> - When you enable the alarm, the alarm state changes to <code>NORMAL</code>.</p>
		          </li>
            <li>
			            <p>
                  <code>DISABLE</code> - When you disable the alarm, the alarm state changes to <code>DISABLED</code>.</p>
		          </li>
            <li>
			            <p>
                  <code>ACKNOWLEDGE</code> - When you acknowledge the alarm, the alarm state changes to <code>ACKNOWLEDGED</code>.</p>
		          </li>
            <li>
			            <p>
                  <code>RESET</code> - When you reset the alarm, the alarm state changes to <code>NORMAL</code>.</p>
		          </li>
         </ul>
         <p>For more information, see the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_AlarmState.html\">AlarmState</a> API.</p>")
  actionName: option<customerActionName>,
}
type batchUpdateDetectorErrorEntries = array<batchUpdateDetectorErrorEntry>
type batchPutMessageErrorEntries = array<batchPutMessageErrorEntry>
type batchAlarmActionErrorEntries = array<batchAlarmActionErrorEntry>
type alarmSummaries = array<alarmSummary>
type acknowledgeAlarmActionRequests = array<acknowledgeAlarmActionRequest>
type messages = array<message>
type detectorSummaries = array<detectorSummary>
@ocaml.doc("<p>The new state, variable values, and timer settings of the detector (instance).</p>")
type detectorStateDefinition = {
  @ocaml.doc("<p>The new values of the detector's timers. Any timer whose value isn't specified is cleared,
      and its timeout event won't occur.</p>")
  timers: timerDefinitions,
  @ocaml.doc("<p>The new values of the detector's variables. Any variable whose value isn't specified is
      cleared.</p>")
  variables: variableDefinitions,
  @ocaml.doc("<p>The name of the new state of the detector (instance).</p>") stateName: stateName,
}
@ocaml.doc("<p>Information about the current state of the detector instance.</p>")
type detectorState = {
  @ocaml.doc("<p>The current state of the detector's timers.</p>") timers: timers,
  @ocaml.doc("<p>The current values of the detector's variables.</p>") variables: variables,
  @ocaml.doc("<p>The name of the state.</p>") stateName: stateName,
}
@ocaml.doc("<p>Contains information about the current state of the alarm.</p>")
type alarmState = {
  @ocaml.doc("<p>Contains information about alarm state changes.</p>")
  systemEvent: option<systemEvent>,
  @ocaml.doc(
    "<p>Contains information about the action that you can take to respond to the alarm.</p>"
  )
  customerAction: option<customerAction>,
  @ocaml.doc("<p>Information needed to evaluate data.</p>") ruleEvaluation: option<ruleEvaluation>,
  @ocaml.doc("<p>The name of the alarm state. The state name can be one of the following values:</p>
         <ul>
            <li>
		             <p>
                  <code>DISABLED</code> - When the alarm is in the <code>DISABLED</code> state, 
		it isn't ready to evaluate data. To enable the alarm, 
		you must change the alarm to the <code>NORMAL</code> state.</p>
	           </li>
            <li>
		             <p>
                  <code>NORMAL</code> - When the alarm is in the <code>NORMAL</code> state, 
		it's ready to evaluate data.</p>
	           </li>
            <li>
		             <p>
                  <code>ACTIVE</code> - If the alarm is in the <code>ACTIVE</code> state, 
		the alarm is invoked.</p>
	           </li>
            <li>
		             <p>
                  <code>ACKNOWLEDGED</code> - When the alarm is in the <code>ACKNOWLEDGED</code> state, 
		the alarm was invoked and you acknowledged the alarm.</p>
	           </li>
            <li>
		             <p>
                  <code>SNOOZE_DISABLED</code> - When the alarm is in the <code>SNOOZE_DISABLED</code> state, 
		the alarm is disabled for a specified period of time. After the snooze time, 
		the alarm automatically changes to the <code>NORMAL</code> state. </p>
	           </li>
            <li>
		             <p>
                  <code>LATCHED</code> - When the alarm is in the <code>LATCHED</code> state, 
		the alarm was invoked. However, the data that the alarm is currently evaluating is within the specified range. 
		To change the alarm to the <code>NORMAL</code> state, you must acknowledge the alarm.</p>
	           </li>
         </ul>")
  stateName: option<alarmStateName>,
}
@ocaml.doc("<p>Information used to update the detector (instance).</p>")
type updateDetectorRequest = {
  @ocaml.doc(
    "<p>The new state, variable values, and timer settings of the detector (instance).</p>"
  )
  state: detectorStateDefinition,
  @ocaml.doc("<p>The value of the input key attribute (identifying the device or system) that caused the
      creation of this detector (instance).</p>")
  keyValue: option<keyValue>,
  @ocaml.doc("<p>The name of the detector model that created the detectors (instances).</p>")
  detectorModelName: detectorModelName,
  @ocaml.doc("<p>The ID to assign to the detector update <code>\"message\"</code>. Each
        <code>\"messageId\"</code> must be unique within each batch sent.</p>")
  messageId: messageId,
}
@ocaml.doc("<p>Information about the detector (instance).</p>")
type detector = {
  @ocaml.doc("<p>The time the detector (instance) was last updated.</p>")
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>The time the detector (instance) was created.</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The current state of the detector (instance).</p>") state: option<detectorState>,
  @ocaml.doc("<p>The version of the detector model that created this detector (instance).</p>")
  detectorModelVersion: option<detectorModelVersion>,
  @ocaml.doc("<p>The value of the key (identifying the device or system) that caused the creation of this
      detector (instance).</p>")
  keyValue: option<keyValue>,
  @ocaml.doc("<p>The name of the detector model that created this detector (instance).</p>")
  detectorModelName: option<detectorModelName>,
}
@ocaml.doc("<p>Contains information about an alarm.</p>")
type alarm = {
  @ocaml.doc("<p>The time the alarm was last updated, in the Unix epoch format.</p>")
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>The time the alarm was created, in the Unix epoch format.</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>A non-negative integer that reflects the severity level of the alarm.</p>")
  severity: option<severity>,
  @ocaml.doc("<p>Contains information about the current state of the alarm.</p>")
  alarmState: option<alarmState>,
  @ocaml.doc("<p>The value of the key used as a filter to select only the alarms associated with the 
<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>")
  keyValue: option<keyValue>,
  @ocaml.doc("<p>The version of the alarm model.</p>") alarmModelVersion: option<alarmModelVersion>,
  @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: option<alarmModelName>,
}
type updateDetectorRequests = array<updateDetectorRequest>
@ocaml.doc("<p>AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and
      triggers actions when such events occur. You can use AWS IoT Events Data API commands to send inputs to
      detectors, list detectors, and view or update a detector's status.</p>
         <p> For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/what-is-iotevents.html\">What is AWS IoT Events?</a> in the
        <i>AWS IoT Events Developer Guide</i>.</p>")
module ListAlarms = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that you can use to return the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: alarmModelName,
  }
  type response = {
    @ocaml.doc("<p>The token that you can use to return the next set of results, 
or <code>null</code> if there are no more results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that summarizes each alarm.</p>") alarmSummaries: option<alarmSummaries>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new external new: request => t = "ListAlarmsCommand"
  let make = (~alarmModelName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, alarmModelName: alarmModelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchSnoozeAlarm = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The list of snooze action requests. You can specify up to 10 requests per operation.</p>"
    )
    snoozeActionRequests: snoozeAlarmActionRequests,
  }
  type response = {
    @ocaml.doc("<p>A list of errors associated with the request, or <code>null</code> if there are no errors. 
Each error entry contains an entry ID that helps you identify the entry that failed.</p>")
    errorEntries: option<batchAlarmActionErrorEntries>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new
  external new: request => t = "BatchSnoozeAlarmCommand"
  let make = (~snoozeActionRequests, ()) => new({snoozeActionRequests: snoozeActionRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchResetAlarm = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The list of reset action requests. You can specify up to 10 requests per operation.</p>"
    )
    resetActionRequests: resetAlarmActionRequests,
  }
  type response = {
    @ocaml.doc("<p>A list of errors associated with the request, or <code>null</code> if there are no errors. 
Each error entry contains an entry ID that helps you identify the entry that failed.</p>")
    errorEntries: option<batchAlarmActionErrorEntries>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new
  external new: request => t = "BatchResetAlarmCommand"
  let make = (~resetActionRequests, ()) => new({resetActionRequests: resetActionRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchEnableAlarm = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The list of enable action requests. You can specify up to 10 requests per operation.</p>"
    )
    enableActionRequests: enableAlarmActionRequests,
  }
  type response = {
    @ocaml.doc("<p>A list of errors associated with the request, or <code>null</code> if there are no errors. 
Each error entry contains an entry ID that helps you identify the entry that failed.</p>")
    errorEntries: option<batchAlarmActionErrorEntries>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new
  external new: request => t = "BatchEnableAlarmCommand"
  let make = (~enableActionRequests, ()) => new({enableActionRequests: enableActionRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDisableAlarm = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The list of disable action requests. You can specify up to 10 requests per operation.</p>"
    )
    disableActionRequests: disableAlarmActionRequests,
  }
  type response = {
    @ocaml.doc("<p>A list of errors associated with the request, or <code>null</code> if there are no errors. 
Each error entry contains an entry ID that helps you identify the entry that failed.</p>")
    errorEntries: option<batchAlarmActionErrorEntries>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new
  external new: request => t = "BatchDisableAlarmCommand"
  let make = (~disableActionRequests, ()) => new({disableActionRequests: disableActionRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchAcknowledgeAlarm = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The list of acknowledge action requests. You can specify up to 10 requests per operation.</p>"
    )
    acknowledgeActionRequests: acknowledgeAlarmActionRequests,
  }
  type response = {
    @ocaml.doc("<p>A list of errors associated with the request, or <code>null</code> if there are no errors. 
Each error entry contains an entry ID that helps you identify the entry that failed.</p>")
    errorEntries: option<batchAlarmActionErrorEntries>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new
  external new: request => t = "BatchAcknowledgeAlarmCommand"
  let make = (~acknowledgeActionRequests, ()) =>
    new({acknowledgeActionRequests: acknowledgeActionRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDetectors = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that you can use to return the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A filter that limits results to those detectors (instances) in the given state.</p>"
    )
    stateName: option<stateName>,
    @ocaml.doc("<p>The name of the detector model whose detectors (instances) are listed.</p>")
    detectorModelName: detectorModelName,
  }
  type response = {
    @ocaml.doc("<p>The token that you can use to return the next set of results, 
or <code>null</code> if there are no more results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of summary information about the detectors (instances).</p>")
    detectorSummaries: option<detectorSummaries>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new external new: request => t = "ListDetectorsCommand"
  let make = (~detectorModelName, ~maxResults=?, ~nextToken=?, ~stateName=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      stateName: stateName,
      detectorModelName: detectorModelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchPutMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The list of messages to send. Each message has the following format: <code>'{ \"messageId\":
        \"string\", \"inputName\": \"string\", \"payload\": \"string\"}'</code>
         </p>")
    messages: messages,
  }
  type response = {
    @ocaml.doc("<p>A list of any errors encountered when sending the messages.</p>")
    @as("BatchPutMessageErrorEntries")
    batchPutMessageErrorEntries: option<batchPutMessageErrorEntries>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new
  external new: request => t = "BatchPutMessageCommand"
  let make = (~messages, ()) => new({messages: messages})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDetector = {
  type t
  type request = {
    @ocaml.doc("<p>A filter used to limit results to detectors (instances) created because of the given key
      ID.</p>")
    keyValue: option<keyValue>,
    @ocaml.doc("<p>The name of the detector model whose detectors (instances) you want information
      about.</p>")
    detectorModelName: detectorModelName,
  }
  type response = {
    @ocaml.doc("<p>Information about the detector (instance).</p>") detector: option<detector>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new
  external new: request => t = "DescribeDetectorCommand"
  let make = (~detectorModelName, ~keyValue=?, ()) =>
    new({keyValue: keyValue, detectorModelName: detectorModelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlarm = {
  type t
  type request = {
    @ocaml.doc("<p>The value of the key used as a filter to select only the alarms associated with the 
<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>")
    keyValue: option<keyValue>,
    @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: alarmModelName,
  }
  type response = {@ocaml.doc("<p>Contains information about an alarm.</p>") alarm: option<alarm>}
  @module("@aws-sdk/client-ioteventsdata") @new external new: request => t = "DescribeAlarmCommand"
  let make = (~alarmModelName, ~keyValue=?, ()) =>
    new({keyValue: keyValue, alarmModelName: alarmModelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchUpdateDetector = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The list of detectors (instances) to update, along with the values to update.</p>"
    )
    detectors: updateDetectorRequests,
  }
  type response = {
    @ocaml.doc("<p>A list of those detector updates that resulted in errors. (If an error is listed here, the
      specific update did not occur.)</p>")
    batchUpdateDetectorErrorEntries: option<batchUpdateDetectorErrorEntries>,
  }
  @module("@aws-sdk/client-ioteventsdata") @new
  external new: request => t = "BatchUpdateDetectorCommand"
  let make = (~detectors, ()) => new({detectors: detectors})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
