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
type workflowRunIdOptional = string
type workflowRunId = string
type workflowId = string
type workflowExecutionTimeoutType = [@as("START_TO_CLOSE") #STARTTOCLOSE]
type workflowExecutionTerminatedCause = [@as("OPERATOR_INITIATED") #OPERATORINITIATED | @as("EVENT_LIMIT_EXCEEDED") #EVENTLIMITEXCEEDED | @as("CHILD_POLICY_APPLIED") #CHILDPOLICYAPPLIED]
type workflowExecutionCancelRequestedCause = [@as("CHILD_POLICY_APPLIED") #CHILDPOLICYAPPLIED]
type versionOptional = string
type version = string
type truncated = bool
type timestamp_ = Js.Date.t;
type timerId = string
type terminateReason = string
type taskToken = string
type taskPriority = string
type tag = string
type startTimerFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATIONNOTPERMITTED | @as("TIMER_CREATION_RATE_EXCEEDED") #TIMERCREATIONRATEEXCEEDED | @as("OPEN_TIMERS_LIMIT_EXCEEDED") #OPENTIMERSLIMITEXCEEDED | @as("TIMER_ID_ALREADY_IN_USE") #TIMERIDALREADYINUSE]
type startLambdaFunctionFailedCause = [@as("ASSUME_ROLE_FAILED") #ASSUMEROLEFAILED]
type startChildWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATIONNOTPERMITTED | @as("DEFAULT_CHILD_POLICY_UNDEFINED") #DEFAULTCHILDPOLICYUNDEFINED | @as("DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULTTASKSTARTTOCLOSETIMEOUTUNDEFINED | @as("DEFAULT_TASK_LIST_UNDEFINED") #DEFAULTTASKLISTUNDEFINED | @as("DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULTEXECUTIONSTARTTOCLOSETIMEOUTUNDEFINED | @as("WORKFLOW_ALREADY_RUNNING") #WORKFLOWALREADYRUNNING | @as("CHILD_CREATION_RATE_EXCEEDED") #CHILDCREATIONRATEEXCEEDED | @as("OPEN_WORKFLOWS_LIMIT_EXCEEDED") #OPENWORKFLOWSLIMITEXCEEDED | @as("OPEN_CHILDREN_LIMIT_EXCEEDED") #OPENCHILDRENLIMITEXCEEDED | @as("WORKFLOW_TYPE_DEPRECATED") #WORKFLOWTYPEDEPRECATED | @as("WORKFLOW_TYPE_DOES_NOT_EXIST") #WORKFLOWTYPEDOESNOTEXIST]
type signalName = string
type signalExternalWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATIONNOTPERMITTED | @as("SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED") #SIGNALEXTERNALWORKFLOWEXECUTIONRATEEXCEEDED | @as("UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION") #UNKNOWNEXTERNALWORKFLOWEXECUTION]
type scheduleLambdaFunctionFailedCause = [@as("LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION") #LAMBDASERVICENOTAVAILABLEINREGION | @as("LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED") #LAMBDAFUNCTIONCREATIONRATEEXCEEDED | @as("OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED") #OPENLAMBDAFUNCTIONSLIMITEXCEEDED | @as("ID_ALREADY_IN_USE") #IDALREADYINUSE]
type scheduleActivityTaskFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATIONNOTPERMITTED | @as("DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED") #DEFAULTHEARTBEATTIMEOUTUNDEFINED | @as("DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULTSTARTTOCLOSETIMEOUTUNDEFINED | @as("DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED") #DEFAULTSCHEDULETOSTARTTIMEOUTUNDEFINED | @as("DEFAULT_TASK_LIST_UNDEFINED") #DEFAULTTASKLISTUNDEFINED | @as("DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULTSCHEDULETOCLOSETIMEOUTUNDEFINED | @as("ACTIVITY_CREATION_RATE_EXCEEDED") #ACTIVITYCREATIONRATEEXCEEDED | @as("OPEN_ACTIVITIES_LIMIT_EXCEEDED") #OPENACTIVITIESLIMITEXCEEDED | @as("ACTIVITY_ID_ALREADY_IN_USE") #ACTIVITYIDALREADYINUSE | @as("ACTIVITY_TYPE_DOES_NOT_EXIST") #ACTIVITYTYPEDOESNOTEXIST | @as("ACTIVITY_TYPE_DEPRECATED") #ACTIVITYTYPEDEPRECATED]
type reverseOrder = bool
type resourceTagValue = string
type resourceTagKey = string
type requestCancelExternalWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATIONNOTPERMITTED | @as("REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED") #REQUESTCANCELEXTERNALWORKFLOWEXECUTIONRATEEXCEEDED | @as("UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION") #UNKNOWNEXTERNALWORKFLOWEXECUTION]
type requestCancelActivityTaskFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATIONNOTPERMITTED | @as("ACTIVITY_ID_UNKNOWN") #ACTIVITYIDUNKNOWN]
type registrationStatus = [@as("DEPRECATED") #DEPRECATED | @as("REGISTERED") #REGISTERED]
type recordMarkerFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATIONNOTPERMITTED]
type pageToken = string
type pageSize = int
type openDecisionTasksCount = int
type name = string
type markerName = string
type limitedData = string
type lambdaFunctionTimeoutType = [@as("START_TO_CLOSE") #STARTTOCLOSE]
type identity = string
type functionName = string
type functionInput = string
type functionId = string
type failureReason = string
type failWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATIONNOTPERMITTED | @as("UNHANDLED_DECISION") #UNHANDLEDDECISION]
type executionStatus = [@as("CLOSED") #CLOSED | @as("OPEN") #OPEN]
type eventType = [@as("StartLambdaFunctionFailed") #StartLambdaFunctionFailed | @as("ScheduleLambdaFunctionFailed") #ScheduleLambdaFunctionFailed | @as("LambdaFunctionTimedOut") #LambdaFunctionTimedOut | @as("LambdaFunctionFailed") #LambdaFunctionFailed | @as("LambdaFunctionCompleted") #LambdaFunctionCompleted | @as("LambdaFunctionStarted") #LambdaFunctionStarted | @as("LambdaFunctionScheduled") #LambdaFunctionScheduled | @as("ExternalWorkflowExecutionCancelRequested") #ExternalWorkflowExecutionCancelRequested | @as("RequestCancelExternalWorkflowExecutionFailed") #RequestCancelExternalWorkflowExecutionFailed | @as("RequestCancelExternalWorkflowExecutionInitiated") #RequestCancelExternalWorkflowExecutionInitiated | @as("ExternalWorkflowExecutionSignaled") #ExternalWorkflowExecutionSignaled | @as("SignalExternalWorkflowExecutionFailed") #SignalExternalWorkflowExecutionFailed | @as("SignalExternalWorkflowExecutionInitiated") #SignalExternalWorkflowExecutionInitiated | @as("ChildWorkflowExecutionTerminated") #ChildWorkflowExecutionTerminated | @as("ChildWorkflowExecutionCanceled") #ChildWorkflowExecutionCanceled | @as("ChildWorkflowExecutionTimedOut") #ChildWorkflowExecutionTimedOut | @as("ChildWorkflowExecutionFailed") #ChildWorkflowExecutionFailed | @as("ChildWorkflowExecutionCompleted") #ChildWorkflowExecutionCompleted | @as("ChildWorkflowExecutionStarted") #ChildWorkflowExecutionStarted | @as("StartChildWorkflowExecutionFailed") #StartChildWorkflowExecutionFailed | @as("StartChildWorkflowExecutionInitiated") #StartChildWorkflowExecutionInitiated | @as("CancelTimerFailed") #CancelTimerFailed | @as("TimerCanceled") #TimerCanceled | @as("TimerFired") #TimerFired | @as("StartTimerFailed") #StartTimerFailed | @as("TimerStarted") #TimerStarted | @as("RecordMarkerFailed") #RecordMarkerFailed | @as("MarkerRecorded") #MarkerRecorded | @as("WorkflowExecutionSignaled") #WorkflowExecutionSignaled | @as("RequestCancelActivityTaskFailed") #RequestCancelActivityTaskFailed | @as("ActivityTaskCancelRequested") #ActivityTaskCancelRequested | @as("ActivityTaskCanceled") #ActivityTaskCanceled | @as("ActivityTaskTimedOut") #ActivityTaskTimedOut | @as("ActivityTaskFailed") #ActivityTaskFailed | @as("ActivityTaskCompleted") #ActivityTaskCompleted | @as("ActivityTaskStarted") #ActivityTaskStarted | @as("ScheduleActivityTaskFailed") #ScheduleActivityTaskFailed | @as("ActivityTaskScheduled") #ActivityTaskScheduled | @as("DecisionTaskTimedOut") #DecisionTaskTimedOut | @as("DecisionTaskCompleted") #DecisionTaskCompleted | @as("DecisionTaskStarted") #DecisionTaskStarted | @as("DecisionTaskScheduled") #DecisionTaskScheduled | @as("WorkflowExecutionTerminated") #WorkflowExecutionTerminated | @as("ContinueAsNewWorkflowExecutionFailed") #ContinueAsNewWorkflowExecutionFailed | @as("WorkflowExecutionContinuedAsNew") #WorkflowExecutionContinuedAsNew | @as("CancelWorkflowExecutionFailed") #CancelWorkflowExecutionFailed | @as("WorkflowExecutionCanceled") #WorkflowExecutionCanceled | @as("WorkflowExecutionTimedOut") #WorkflowExecutionTimedOut | @as("FailWorkflowExecutionFailed") #FailWorkflowExecutionFailed | @as("WorkflowExecutionFailed") #WorkflowExecutionFailed | @as("CompleteWorkflowExecutionFailed") #CompleteWorkflowExecutionFailed | @as("WorkflowExecutionCompleted") #WorkflowExecutionCompleted | @as("WorkflowExecutionCancelRequested") #WorkflowExecutionCancelRequested | @as("WorkflowExecutionStarted") #WorkflowExecutionStarted]
type eventId = float
type errorMessage = string
type durationInSecondsOptional = string
type durationInSeconds = string
type durationInDays = string
type domainName = string
type description = string
type decisionType = [@as("ScheduleLambdaFunction") #ScheduleLambdaFunction | @as("StartChildWorkflowExecution") #StartChildWorkflowExecution | @as("RequestCancelExternalWorkflowExecution") #RequestCancelExternalWorkflowExecution | @as("SignalExternalWorkflowExecution") #SignalExternalWorkflowExecution | @as("CancelTimer") #CancelTimer | @as("StartTimer") #StartTimer | @as("RecordMarker") #RecordMarker | @as("ContinueAsNewWorkflowExecution") #ContinueAsNewWorkflowExecution | @as("CancelWorkflowExecution") #CancelWorkflowExecution | @as("FailWorkflowExecution") #FailWorkflowExecution | @as("CompleteWorkflowExecution") #CompleteWorkflowExecution | @as("RequestCancelActivityTask") #RequestCancelActivityTask | @as("ScheduleActivityTask") #ScheduleActivityTask]
type decisionTaskTimeoutType = [@as("START_TO_CLOSE") #STARTTOCLOSE]
type data = string
type count = int
type continueAsNewWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATIONNOTPERMITTED | @as("CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED") #CONTINUEASNEWWORKFLOWEXECUTIONRATEEXCEEDED | @as("DEFAULT_CHILD_POLICY_UNDEFINED") #DEFAULTCHILDPOLICYUNDEFINED | @as("DEFAULT_TASK_LIST_UNDEFINED") #DEFAULTTASKLISTUNDEFINED | @as("DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULTTASKSTARTTOCLOSETIMEOUTUNDEFINED | @as("DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULTEXECUTIONSTARTTOCLOSETIMEOUTUNDEFINED | @as("WORKFLOW_TYPE_DOES_NOT_EXIST") #WORKFLOWTYPEDOESNOTEXIST | @as("WORKFLOW_TYPE_DEPRECATED") #WORKFLOWTYPEDEPRECATED | @as("UNHANDLED_DECISION") #UNHANDLEDDECISION]
type completeWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATIONNOTPERMITTED | @as("UNHANDLED_DECISION") #UNHANDLEDDECISION]
type closeStatus = [@as("TIMED_OUT") #TIMEDOUT | @as("CONTINUED_AS_NEW") #CONTINUEDASNEW | @as("TERMINATED") #TERMINATED | @as("CANCELED") #CANCELED | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED]
type childPolicy = [@as("ABANDON") #ABANDON | @as("REQUEST_CANCEL") #REQUESTCANCEL | @as("TERMINATE") #TERMINATE]
type causeMessage = string
type canceled = bool
type cancelWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATIONNOTPERMITTED | @as("UNHANDLED_DECISION") #UNHANDLEDDECISION]
type cancelTimerFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATIONNOTPERMITTED | @as("TIMER_ID_UNKNOWN") #TIMERIDUNKNOWN]
type arn = string
type activityTaskTimeoutType = [@as("HEARTBEAT") #HEARTBEAT | @as("SCHEDULE_TO_CLOSE") #SCHEDULETOCLOSE | @as("SCHEDULE_TO_START") #SCHEDULETOSTART | @as("START_TO_CLOSE") #STARTTOCLOSE]
type activityId = string
type workflowTypeFilter = {
version: option<versionOptional>,
name: name
}
type workflowType = {
version: version,
name: name
}
type workflowExecutionTimedOutEventAttributes = {
childPolicy: childPolicy,
timeoutType: workflowExecutionTimeoutType
}
type workflowExecutionTerminatedEventAttributes = {
cause: option<workflowExecutionTerminatedCause>,
childPolicy: childPolicy,
details: option<data>,
reason: option<terminateReason>
}
type workflowExecutionOpenCounts = {
openLambdaFunctions: option<count>,
openChildWorkflowExecutions: count,
openTimers: count,
openDecisionTasks: openDecisionTasksCount,
openActivityTasks: count
}
type workflowExecutionFilter = {
workflowId: workflowId
}
type workflowExecutionFailedEventAttributes = {
decisionTaskCompletedEventId: eventId,
details: option<data>,
reason: option<failureReason>
}
type workflowExecutionCompletedEventAttributes = {
decisionTaskCompletedEventId: eventId,
result: option<data>
}
type workflowExecutionCanceledEventAttributes = {
decisionTaskCompletedEventId: eventId,
details: option<data>
}
type workflowExecution = {
runId: workflowRunId,
workflowId: workflowId
}
type timerStartedEventAttributes = {
decisionTaskCompletedEventId: eventId,
startToFireTimeout: durationInSeconds,
control: option<data>,
timerId: timerId
}
type timerFiredEventAttributes = {
startedEventId: eventId,
timerId: timerId
}
type timerCanceledEventAttributes = {
decisionTaskCompletedEventId: eventId,
startedEventId: eventId,
timerId: timerId
}
type taskList = {
name: name
}
type tagList_ = array<tag>
type tagFilter = {
tag: tag
}
type startTimerFailedEventAttributes = {
decisionTaskCompletedEventId: eventId,
cause: startTimerFailedCause,
timerId: timerId
}
type startTimerDecisionAttributes = {
startToFireTimeout: durationInSeconds,
control: option<data>,
timerId: timerId
}
type startLambdaFunctionFailedEventAttributes = {
message: option<causeMessage>,
cause: option<startLambdaFunctionFailedCause>,
scheduledEventId: option<eventId>
}
type signalExternalWorkflowExecutionInitiatedEventAttributes = {
control: option<data>,
decisionTaskCompletedEventId: eventId,
input: option<data>,
signalName: signalName,
runId: option<workflowRunIdOptional>,
workflowId: workflowId
}
type signalExternalWorkflowExecutionFailedEventAttributes = {
control: option<data>,
decisionTaskCompletedEventId: eventId,
initiatedEventId: eventId,
cause: signalExternalWorkflowExecutionFailedCause,
runId: option<workflowRunIdOptional>,
workflowId: workflowId
}
type signalExternalWorkflowExecutionDecisionAttributes = {
control: option<data>,
input: option<data>,
signalName: signalName,
runId: option<workflowRunIdOptional>,
workflowId: workflowId
}
type scheduleLambdaFunctionFailedEventAttributes = {
decisionTaskCompletedEventId: eventId,
cause: scheduleLambdaFunctionFailedCause,
name: functionName,
id: functionId
}
type scheduleLambdaFunctionDecisionAttributes = {
startToCloseTimeout: option<durationInSecondsOptional>,
input: option<functionInput>,
control: option<data>,
name: functionName,
id: functionId
}
type resourceTagKeyList = array<resourceTagKey>
type resourceTag = {
value: option<resourceTagValue>,
key: resourceTagKey
}
type requestCancelExternalWorkflowExecutionInitiatedEventAttributes = {
control: option<data>,
decisionTaskCompletedEventId: eventId,
runId: option<workflowRunIdOptional>,
workflowId: workflowId
}
type requestCancelExternalWorkflowExecutionFailedEventAttributes = {
control: option<data>,
decisionTaskCompletedEventId: eventId,
initiatedEventId: eventId,
cause: requestCancelExternalWorkflowExecutionFailedCause,
runId: option<workflowRunIdOptional>,
workflowId: workflowId
}
type requestCancelExternalWorkflowExecutionDecisionAttributes = {
control: option<data>,
runId: option<workflowRunIdOptional>,
workflowId: workflowId
}
type requestCancelActivityTaskFailedEventAttributes = {
decisionTaskCompletedEventId: eventId,
cause: requestCancelActivityTaskFailedCause,
activityId: activityId
}
type requestCancelActivityTaskDecisionAttributes = {
activityId: activityId
}
type recordMarkerFailedEventAttributes = {
decisionTaskCompletedEventId: eventId,
cause: recordMarkerFailedCause,
markerName: markerName
}
type recordMarkerDecisionAttributes = {
details: option<data>,
markerName: markerName
}
type markerRecordedEventAttributes = {
decisionTaskCompletedEventId: eventId,
details: option<data>,
markerName: markerName
}
type lambdaFunctionTimedOutEventAttributes = {
timeoutType: option<lambdaFunctionTimeoutType>,
startedEventId: eventId,
scheduledEventId: eventId
}
type lambdaFunctionStartedEventAttributes = {
scheduledEventId: eventId
}
type lambdaFunctionScheduledEventAttributes = {
decisionTaskCompletedEventId: eventId,
startToCloseTimeout: option<durationInSecondsOptional>,
input: option<functionInput>,
control: option<data>,
name: functionName,
id: functionId
}
type lambdaFunctionFailedEventAttributes = {
details: option<data>,
reason: option<failureReason>,
startedEventId: eventId,
scheduledEventId: eventId
}
type lambdaFunctionCompletedEventAttributes = {
result: option<data>,
startedEventId: eventId,
scheduledEventId: eventId
}
type failWorkflowExecutionFailedEventAttributes = {
decisionTaskCompletedEventId: eventId,
cause: failWorkflowExecutionFailedCause
}
type failWorkflowExecutionDecisionAttributes = {
details: option<data>,
reason: option<failureReason>
}
type executionTimeFilter = {
latestDate: option<timestamp_>,
oldestDate: timestamp_
}
type domainInfo = {
arn: option<arn>,
description: option<description>,
status: registrationStatus,
name: domainName
}
type domainConfiguration = {
workflowExecutionRetentionPeriodInDays: durationInDays
}
type decisionTaskTimedOutEventAttributes = {
startedEventId: eventId,
scheduledEventId: eventId,
timeoutType: decisionTaskTimeoutType
}
type decisionTaskStartedEventAttributes = {
scheduledEventId: eventId,
identity: option<identity>
}
type decisionTaskCompletedEventAttributes = {
startedEventId: eventId,
scheduledEventId: eventId,
executionContext: option<data>
}
type continueAsNewWorkflowExecutionFailedEventAttributes = {
decisionTaskCompletedEventId: eventId,
cause: continueAsNewWorkflowExecutionFailedCause
}
type completeWorkflowExecutionFailedEventAttributes = {
decisionTaskCompletedEventId: eventId,
cause: completeWorkflowExecutionFailedCause
}
type completeWorkflowExecutionDecisionAttributes = {
result: option<data>
}
type closeStatusFilter = {
status: closeStatus
}
type cancelWorkflowExecutionFailedEventAttributes = {
decisionTaskCompletedEventId: eventId,
cause: cancelWorkflowExecutionFailedCause
}
type cancelWorkflowExecutionDecisionAttributes = {
details: option<data>
}
type cancelTimerFailedEventAttributes = {
decisionTaskCompletedEventId: eventId,
cause: cancelTimerFailedCause,
timerId: timerId
}
type cancelTimerDecisionAttributes = {
timerId: timerId
}
type activityType = {
version: version,
name: name
}
type activityTaskTimedOutEventAttributes = {
details: option<limitedData>,
startedEventId: eventId,
scheduledEventId: eventId,
timeoutType: activityTaskTimeoutType
}
type activityTaskStartedEventAttributes = {
scheduledEventId: eventId,
identity: option<identity>
}
type activityTaskFailedEventAttributes = {
startedEventId: eventId,
scheduledEventId: eventId,
details: option<data>,
reason: option<failureReason>
}
type activityTaskCompletedEventAttributes = {
startedEventId: eventId,
scheduledEventId: eventId,
result: option<data>
}
type activityTaskCanceledEventAttributes = {
latestCancelRequestedEventId: option<eventId>,
startedEventId: eventId,
scheduledEventId: eventId,
details: option<data>
}
type activityTaskCancelRequestedEventAttributes = {
activityId: activityId,
decisionTaskCompletedEventId: eventId
}
type workflowTypeInfo = {
deprecationDate: option<timestamp_>,
creationDate: timestamp_,
description: option<description>,
status: registrationStatus,
workflowType: workflowType
}
type workflowTypeConfiguration = {
defaultLambdaRole: option<arn>,
defaultChildPolicy: option<childPolicy>,
defaultTaskPriority: option<taskPriority>,
defaultTaskList: option<taskList>,
defaultExecutionStartToCloseTimeout: option<durationInSecondsOptional>,
defaultTaskStartToCloseTimeout: option<durationInSecondsOptional>
}
type workflowExecutionStartedEventAttributes = {
lambdaRole: option<arn>,
parentInitiatedEventId: option<eventId>,
parentWorkflowExecution: option<workflowExecution>,
continuedExecutionRunId: option<workflowRunIdOptional>,
@as("tagList") tagList_: option<tagList_>,
workflowType: workflowType,
taskPriority: option<taskPriority>,
taskList: taskList,
childPolicy: childPolicy,
taskStartToCloseTimeout: option<durationInSecondsOptional>,
executionStartToCloseTimeout: option<durationInSecondsOptional>,
input: option<data>
}
type workflowExecutionSignaledEventAttributes = {
externalInitiatedEventId: option<eventId>,
externalWorkflowExecution: option<workflowExecution>,
input: option<data>,
signalName: signalName
}
type workflowExecutionInfo = {
cancelRequested: option<canceled>,
@as("tagList") tagList_: option<tagList_>,
parent: option<workflowExecution>,
closeStatus: option<closeStatus>,
executionStatus: executionStatus,
closeTimestamp: option<timestamp_>,
startTimestamp: timestamp_,
workflowType: workflowType,
execution: workflowExecution
}
type workflowExecutionContinuedAsNewEventAttributes = {
lambdaRole: option<arn>,
workflowType: workflowType,
@as("tagList") tagList_: option<tagList_>,
childPolicy: childPolicy,
taskStartToCloseTimeout: option<durationInSecondsOptional>,
taskPriority: option<taskPriority>,
taskList: taskList,
executionStartToCloseTimeout: option<durationInSecondsOptional>,
newExecutionRunId: workflowRunId,
decisionTaskCompletedEventId: eventId,
input: option<data>
}
type workflowExecutionConfiguration = {
lambdaRole: option<arn>,
childPolicy: childPolicy,
taskPriority: option<taskPriority>,
taskList: taskList,
executionStartToCloseTimeout: durationInSeconds,
taskStartToCloseTimeout: durationInSeconds
}
type workflowExecutionCancelRequestedEventAttributes = {
cause: option<workflowExecutionCancelRequestedCause>,
externalInitiatedEventId: option<eventId>,
externalWorkflowExecution: option<workflowExecution>
}
type startChildWorkflowExecutionInitiatedEventAttributes = {
lambdaRole: option<arn>,
@as("tagList") tagList_: option<tagList_>,
taskStartToCloseTimeout: option<durationInSecondsOptional>,
childPolicy: childPolicy,
decisionTaskCompletedEventId: eventId,
taskPriority: option<taskPriority>,
taskList: taskList,
executionStartToCloseTimeout: option<durationInSecondsOptional>,
input: option<data>,
control: option<data>,
workflowType: workflowType,
workflowId: workflowId
}
type startChildWorkflowExecutionFailedEventAttributes = {
control: option<data>,
decisionTaskCompletedEventId: eventId,
initiatedEventId: eventId,
workflowId: workflowId,
cause: startChildWorkflowExecutionFailedCause,
workflowType: workflowType
}
type startChildWorkflowExecutionDecisionAttributes = {
lambdaRole: option<arn>,
@as("tagList") tagList_: option<tagList_>,
childPolicy: option<childPolicy>,
taskStartToCloseTimeout: option<durationInSecondsOptional>,
taskPriority: option<taskPriority>,
taskList: option<taskList>,
executionStartToCloseTimeout: option<durationInSecondsOptional>,
input: option<data>,
control: option<data>,
workflowId: workflowId,
workflowType: workflowType
}
type scheduleActivityTaskFailedEventAttributes = {
decisionTaskCompletedEventId: eventId,
cause: scheduleActivityTaskFailedCause,
activityId: activityId,
activityType: activityType
}
type scheduleActivityTaskDecisionAttributes = {
heartbeatTimeout: option<durationInSecondsOptional>,
startToCloseTimeout: option<durationInSecondsOptional>,
scheduleToStartTimeout: option<durationInSecondsOptional>,
taskPriority: option<taskPriority>,
taskList: option<taskList>,
scheduleToCloseTimeout: option<durationInSecondsOptional>,
input: option<data>,
control: option<data>,
activityId: activityId,
activityType: activityType
}
type resourceTagList = array<resourceTag>
type externalWorkflowExecutionSignaledEventAttributes = {
initiatedEventId: eventId,
workflowExecution: workflowExecution
}
type externalWorkflowExecutionCancelRequestedEventAttributes = {
initiatedEventId: eventId,
workflowExecution: workflowExecution
}
type domainInfoList = array<domainInfo>
type decisionTaskScheduledEventAttributes = {
startToCloseTimeout: option<durationInSecondsOptional>,
taskPriority: option<taskPriority>,
taskList: taskList
}
type continueAsNewWorkflowExecutionDecisionAttributes = {
lambdaRole: option<arn>,
workflowTypeVersion: option<version>,
@as("tagList") tagList_: option<tagList_>,
childPolicy: option<childPolicy>,
taskStartToCloseTimeout: option<durationInSecondsOptional>,
taskPriority: option<taskPriority>,
taskList: option<taskList>,
executionStartToCloseTimeout: option<durationInSecondsOptional>,
input: option<data>
}
type childWorkflowExecutionTimedOutEventAttributes = {
startedEventId: eventId,
initiatedEventId: eventId,
timeoutType: workflowExecutionTimeoutType,
workflowType: workflowType,
workflowExecution: workflowExecution
}
type childWorkflowExecutionTerminatedEventAttributes = {
startedEventId: eventId,
initiatedEventId: eventId,
workflowType: workflowType,
workflowExecution: workflowExecution
}
type childWorkflowExecutionStartedEventAttributes = {
initiatedEventId: eventId,
workflowType: workflowType,
workflowExecution: workflowExecution
}
type childWorkflowExecutionFailedEventAttributes = {
startedEventId: eventId,
initiatedEventId: eventId,
details: option<data>,
reason: option<failureReason>,
workflowType: workflowType,
workflowExecution: workflowExecution
}
type childWorkflowExecutionCompletedEventAttributes = {
startedEventId: eventId,
initiatedEventId: eventId,
result: option<data>,
workflowType: workflowType,
workflowExecution: workflowExecution
}
type childWorkflowExecutionCanceledEventAttributes = {
startedEventId: eventId,
initiatedEventId: eventId,
details: option<data>,
workflowType: workflowType,
workflowExecution: workflowExecution
}
type activityTypeInfo = {
deprecationDate: option<timestamp_>,
creationDate: timestamp_,
description: option<description>,
status: registrationStatus,
activityType: activityType
}
type activityTypeConfiguration = {
defaultTaskScheduleToCloseTimeout: option<durationInSecondsOptional>,
defaultTaskScheduleToStartTimeout: option<durationInSecondsOptional>,
defaultTaskPriority: option<taskPriority>,
defaultTaskList: option<taskList>,
defaultTaskHeartbeatTimeout: option<durationInSecondsOptional>,
defaultTaskStartToCloseTimeout: option<durationInSecondsOptional>
}
type activityTaskScheduledEventAttributes = {
heartbeatTimeout: option<durationInSecondsOptional>,
decisionTaskCompletedEventId: eventId,
taskPriority: option<taskPriority>,
taskList: taskList,
startToCloseTimeout: option<durationInSecondsOptional>,
scheduleToCloseTimeout: option<durationInSecondsOptional>,
scheduleToStartTimeout: option<durationInSecondsOptional>,
control: option<data>,
input: option<data>,
activityId: activityId,
activityType: activityType
}
type workflowTypeInfoList = array<workflowTypeInfo>
type workflowExecutionInfoList = array<workflowExecutionInfo>
type historyEvent = {
startLambdaFunctionFailedEventAttributes: option<startLambdaFunctionFailedEventAttributes>,
scheduleLambdaFunctionFailedEventAttributes: option<scheduleLambdaFunctionFailedEventAttributes>,
lambdaFunctionTimedOutEventAttributes: option<lambdaFunctionTimedOutEventAttributes>,
lambdaFunctionFailedEventAttributes: option<lambdaFunctionFailedEventAttributes>,
lambdaFunctionCompletedEventAttributes: option<lambdaFunctionCompletedEventAttributes>,
lambdaFunctionStartedEventAttributes: option<lambdaFunctionStartedEventAttributes>,
lambdaFunctionScheduledEventAttributes: option<lambdaFunctionScheduledEventAttributes>,
startChildWorkflowExecutionFailedEventAttributes: option<startChildWorkflowExecutionFailedEventAttributes>,
cancelTimerFailedEventAttributes: option<cancelTimerFailedEventAttributes>,
startTimerFailedEventAttributes: option<startTimerFailedEventAttributes>,
requestCancelActivityTaskFailedEventAttributes: option<requestCancelActivityTaskFailedEventAttributes>,
scheduleActivityTaskFailedEventAttributes: option<scheduleActivityTaskFailedEventAttributes>,
requestCancelExternalWorkflowExecutionFailedEventAttributes: option<requestCancelExternalWorkflowExecutionFailedEventAttributes>,
requestCancelExternalWorkflowExecutionInitiatedEventAttributes: option<requestCancelExternalWorkflowExecutionInitiatedEventAttributes>,
externalWorkflowExecutionCancelRequestedEventAttributes: option<externalWorkflowExecutionCancelRequestedEventAttributes>,
signalExternalWorkflowExecutionFailedEventAttributes: option<signalExternalWorkflowExecutionFailedEventAttributes>,
externalWorkflowExecutionSignaledEventAttributes: option<externalWorkflowExecutionSignaledEventAttributes>,
signalExternalWorkflowExecutionInitiatedEventAttributes: option<signalExternalWorkflowExecutionInitiatedEventAttributes>,
childWorkflowExecutionTerminatedEventAttributes: option<childWorkflowExecutionTerminatedEventAttributes>,
childWorkflowExecutionCanceledEventAttributes: option<childWorkflowExecutionCanceledEventAttributes>,
childWorkflowExecutionTimedOutEventAttributes: option<childWorkflowExecutionTimedOutEventAttributes>,
childWorkflowExecutionFailedEventAttributes: option<childWorkflowExecutionFailedEventAttributes>,
childWorkflowExecutionCompletedEventAttributes: option<childWorkflowExecutionCompletedEventAttributes>,
childWorkflowExecutionStartedEventAttributes: option<childWorkflowExecutionStartedEventAttributes>,
startChildWorkflowExecutionInitiatedEventAttributes: option<startChildWorkflowExecutionInitiatedEventAttributes>,
timerCanceledEventAttributes: option<timerCanceledEventAttributes>,
timerFiredEventAttributes: option<timerFiredEventAttributes>,
timerStartedEventAttributes: option<timerStartedEventAttributes>,
recordMarkerFailedEventAttributes: option<recordMarkerFailedEventAttributes>,
markerRecordedEventAttributes: option<markerRecordedEventAttributes>,
workflowExecutionSignaledEventAttributes: option<workflowExecutionSignaledEventAttributes>,
activityTaskCancelRequestedEventAttributes: option<activityTaskCancelRequestedEventAttributes>,
activityTaskCanceledEventAttributes: option<activityTaskCanceledEventAttributes>,
activityTaskTimedOutEventAttributes: option<activityTaskTimedOutEventAttributes>,
activityTaskFailedEventAttributes: option<activityTaskFailedEventAttributes>,
activityTaskCompletedEventAttributes: option<activityTaskCompletedEventAttributes>,
activityTaskStartedEventAttributes: option<activityTaskStartedEventAttributes>,
activityTaskScheduledEventAttributes: option<activityTaskScheduledEventAttributes>,
decisionTaskTimedOutEventAttributes: option<decisionTaskTimedOutEventAttributes>,
decisionTaskCompletedEventAttributes: option<decisionTaskCompletedEventAttributes>,
decisionTaskStartedEventAttributes: option<decisionTaskStartedEventAttributes>,
decisionTaskScheduledEventAttributes: option<decisionTaskScheduledEventAttributes>,
workflowExecutionCancelRequestedEventAttributes: option<workflowExecutionCancelRequestedEventAttributes>,
workflowExecutionTerminatedEventAttributes: option<workflowExecutionTerminatedEventAttributes>,
continueAsNewWorkflowExecutionFailedEventAttributes: option<continueAsNewWorkflowExecutionFailedEventAttributes>,
workflowExecutionContinuedAsNewEventAttributes: option<workflowExecutionContinuedAsNewEventAttributes>,
cancelWorkflowExecutionFailedEventAttributes: option<cancelWorkflowExecutionFailedEventAttributes>,
workflowExecutionCanceledEventAttributes: option<workflowExecutionCanceledEventAttributes>,
workflowExecutionTimedOutEventAttributes: option<workflowExecutionTimedOutEventAttributes>,
failWorkflowExecutionFailedEventAttributes: option<failWorkflowExecutionFailedEventAttributes>,
workflowExecutionFailedEventAttributes: option<workflowExecutionFailedEventAttributes>,
completeWorkflowExecutionFailedEventAttributes: option<completeWorkflowExecutionFailedEventAttributes>,
workflowExecutionCompletedEventAttributes: option<workflowExecutionCompletedEventAttributes>,
workflowExecutionStartedEventAttributes: option<workflowExecutionStartedEventAttributes>,
eventId: eventId,
eventType: eventType,
eventTimestamp: timestamp_
}
type decision = {
scheduleLambdaFunctionDecisionAttributes: option<scheduleLambdaFunctionDecisionAttributes>,
startChildWorkflowExecutionDecisionAttributes: option<startChildWorkflowExecutionDecisionAttributes>,
requestCancelExternalWorkflowExecutionDecisionAttributes: option<requestCancelExternalWorkflowExecutionDecisionAttributes>,
signalExternalWorkflowExecutionDecisionAttributes: option<signalExternalWorkflowExecutionDecisionAttributes>,
cancelTimerDecisionAttributes: option<cancelTimerDecisionAttributes>,
startTimerDecisionAttributes: option<startTimerDecisionAttributes>,
recordMarkerDecisionAttributes: option<recordMarkerDecisionAttributes>,
continueAsNewWorkflowExecutionDecisionAttributes: option<continueAsNewWorkflowExecutionDecisionAttributes>,
cancelWorkflowExecutionDecisionAttributes: option<cancelWorkflowExecutionDecisionAttributes>,
failWorkflowExecutionDecisionAttributes: option<failWorkflowExecutionDecisionAttributes>,
completeWorkflowExecutionDecisionAttributes: option<completeWorkflowExecutionDecisionAttributes>,
requestCancelActivityTaskDecisionAttributes: option<requestCancelActivityTaskDecisionAttributes>,
scheduleActivityTaskDecisionAttributes: option<scheduleActivityTaskDecisionAttributes>,
decisionType: decisionType
}
type activityTypeInfoList = array<activityTypeInfo>
type historyEventList = array<historyEvent>
type decisionList = array<decision>
type awsServiceClient;
@module("@aws-sdk/client-swf") @new external createClient: unit => awsServiceClient = "SWFClient";
module UndeprecateDomain = {
  type t;
  type request = {
name: domainName
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "UndeprecateDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TerminateWorkflowExecution = {
  type t;
  type request = {
childPolicy: option<childPolicy>,
details: option<data>,
reason: option<terminateReason>,
runId: option<workflowRunIdOptional>,
workflowId: workflowId,
domain: domainName
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "TerminateWorkflowExecutionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SignalWorkflowExecution = {
  type t;
  type request = {
input: option<data>,
signalName: signalName,
runId: option<workflowRunIdOptional>,
workflowId: workflowId,
domain: domainName
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "SignalWorkflowExecutionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RespondActivityTaskFailed = {
  type t;
  type request = {
details: option<data>,
reason: option<failureReason>,
taskToken: taskToken
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RespondActivityTaskFailedCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RespondActivityTaskCompleted = {
  type t;
  type request = {
result: option<data>,
taskToken: taskToken
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RespondActivityTaskCompletedCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RespondActivityTaskCanceled = {
  type t;
  type request = {
details: option<data>,
taskToken: taskToken
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RespondActivityTaskCanceledCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RequestCancelWorkflowExecution = {
  type t;
  type request = {
runId: option<workflowRunIdOptional>,
workflowId: workflowId,
domain: domainName
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RequestCancelWorkflowExecutionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RecordActivityTaskHeartbeat = {
  type t;
  type request = {
details: option<limitedData>,
taskToken: taskToken
}
  type response = {
cancelRequested: canceled
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RecordActivityTaskHeartbeatCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeprecateDomain = {
  type t;
  type request = {
name: domainName
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DeprecateDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: resourceTagKeyList,
resourceArn: arn
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UndeprecateWorkflowType = {
  type t;
  type request = {
workflowType: workflowType,
domain: domainName
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "UndeprecateWorkflowTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UndeprecateActivityType = {
  type t;
  type request = {
activityType: activityType,
domain: domainName
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "UndeprecateActivityTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StartWorkflowExecution = {
  type t;
  type request = {
lambdaRole: option<arn>,
childPolicy: option<childPolicy>,
taskStartToCloseTimeout: option<durationInSecondsOptional>,
@as("tagList") tagList_: option<tagList_>,
executionStartToCloseTimeout: option<durationInSecondsOptional>,
input: option<data>,
taskPriority: option<taskPriority>,
taskList: option<taskList>,
workflowType: workflowType,
workflowId: workflowId,
domain: domainName
}
  type response = {
runId: option<workflowRunId>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "StartWorkflowExecutionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterWorkflowType = {
  type t;
  type request = {
defaultLambdaRole: option<arn>,
defaultChildPolicy: option<childPolicy>,
defaultTaskPriority: option<taskPriority>,
defaultTaskList: option<taskList>,
defaultExecutionStartToCloseTimeout: option<durationInSecondsOptional>,
defaultTaskStartToCloseTimeout: option<durationInSecondsOptional>,
description: option<description>,
version: version,
name: name,
domain: domainName
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RegisterWorkflowTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RegisterActivityType = {
  type t;
  type request = {
defaultTaskScheduleToCloseTimeout: option<durationInSecondsOptional>,
defaultTaskScheduleToStartTimeout: option<durationInSecondsOptional>,
defaultTaskPriority: option<taskPriority>,
defaultTaskList: option<taskList>,
defaultTaskHeartbeatTimeout: option<durationInSecondsOptional>,
defaultTaskStartToCloseTimeout: option<durationInSecondsOptional>,
description: option<description>,
version: version,
name: name,
domain: domainName
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RegisterActivityTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PollForActivityTask = {
  type t;
  type request = {
identity: option<identity>,
taskList: taskList,
domain: domainName
}
  type response = {
input: option<data>,
activityType: activityType,
workflowExecution: workflowExecution,
startedEventId: eventId,
activityId: activityId,
taskToken: taskToken
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "PollForActivityTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDomain = {
  type t;
  type request = {
name: domainName
}
  type response = {
configuration: domainConfiguration,
domainInfo: domainInfo
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DescribeDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeprecateWorkflowType = {
  type t;
  type request = {
workflowType: workflowType,
domain: domainName
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DeprecateWorkflowTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeprecateActivityType = {
  type t;
  type request = {
activityType: activityType,
domain: domainName
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DeprecateActivityTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CountPendingDecisionTasks = {
  type t;
  type request = {
taskList: taskList,
domain: domainName
}
  type response = {
truncated: option<truncated>,
count: count
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "CountPendingDecisionTasksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CountPendingActivityTasks = {
  type t;
  type request = {
taskList: taskList,
domain: domainName
}
  type response = {
truncated: option<truncated>,
count: count
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "CountPendingActivityTasksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CountOpenWorkflowExecutions = {
  type t;
  type request = {
executionFilter: option<workflowExecutionFilter>,
tagFilter: option<tagFilter>,
typeFilter: option<workflowTypeFilter>,
startTimeFilter: executionTimeFilter,
domain: domainName
}
  type response = {
truncated: option<truncated>,
count: count
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "CountOpenWorkflowExecutionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CountClosedWorkflowExecutions = {
  type t;
  type request = {
closeStatusFilter: option<closeStatusFilter>,
tagFilter: option<tagFilter>,
typeFilter: option<workflowTypeFilter>,
executionFilter: option<workflowExecutionFilter>,
closeTimeFilter: option<executionTimeFilter>,
startTimeFilter: option<executionTimeFilter>,
domain: domainName
}
  type response = {
truncated: option<truncated>,
count: count
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "CountClosedWorkflowExecutionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: resourceTagList,
resourceArn: arn
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RegisterDomain = {
  type t;
  type request = {
tags: option<resourceTagList>,
workflowExecutionRetentionPeriodInDays: durationInDays,
description: option<description>,
name: domainName
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RegisterDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: arn
}
  type response = {
tags: option<resourceTagList>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDomains = {
  type t;
  type request = {
reverseOrder: option<reverseOrder>,
maximumPageSize: option<pageSize>,
registrationStatus: registrationStatus,
nextPageToken: option<pageToken>
}
  type response = {
nextPageToken: option<pageToken>,
domainInfos: domainInfoList
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "ListDomainsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkflowType = {
  type t;
  type request = {
workflowType: workflowType,
domain: domainName
}
  type response = {
configuration: workflowTypeConfiguration,
typeInfo: workflowTypeInfo
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DescribeWorkflowTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkflowExecution = {
  type t;
  type request = {
execution: workflowExecution,
domain: domainName
}
  type response = {
latestExecutionContext: option<data>,
latestActivityTaskTimestamp: option<timestamp_>,
openCounts: workflowExecutionOpenCounts,
executionConfiguration: workflowExecutionConfiguration,
executionInfo: workflowExecutionInfo
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DescribeWorkflowExecutionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeActivityType = {
  type t;
  type request = {
activityType: activityType,
domain: domainName
}
  type response = {
configuration: activityTypeConfiguration,
typeInfo: activityTypeInfo
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DescribeActivityTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListWorkflowTypes = {
  type t;
  type request = {
reverseOrder: option<reverseOrder>,
maximumPageSize: option<pageSize>,
nextPageToken: option<pageToken>,
registrationStatus: registrationStatus,
name: option<name>,
domain: domainName
}
  type response = {
nextPageToken: option<pageToken>,
typeInfos: workflowTypeInfoList
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "ListWorkflowTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOpenWorkflowExecutions = {
  type t;
  type request = {
executionFilter: option<workflowExecutionFilter>,
reverseOrder: option<reverseOrder>,
maximumPageSize: option<pageSize>,
nextPageToken: option<pageToken>,
tagFilter: option<tagFilter>,
typeFilter: option<workflowTypeFilter>,
startTimeFilter: executionTimeFilter,
domain: domainName
}
  type response = {
nextPageToken: option<pageToken>,
executionInfos: workflowExecutionInfoList
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "ListOpenWorkflowExecutionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListClosedWorkflowExecutions = {
  type t;
  type request = {
reverseOrder: option<reverseOrder>,
maximumPageSize: option<pageSize>,
nextPageToken: option<pageToken>,
tagFilter: option<tagFilter>,
typeFilter: option<workflowTypeFilter>,
closeStatusFilter: option<closeStatusFilter>,
executionFilter: option<workflowExecutionFilter>,
closeTimeFilter: option<executionTimeFilter>,
startTimeFilter: option<executionTimeFilter>,
domain: domainName
}
  type response = {
nextPageToken: option<pageToken>,
executionInfos: workflowExecutionInfoList
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "ListClosedWorkflowExecutionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListActivityTypes = {
  type t;
  type request = {
reverseOrder: option<reverseOrder>,
maximumPageSize: option<pageSize>,
nextPageToken: option<pageToken>,
registrationStatus: registrationStatus,
name: option<name>,
domain: domainName
}
  type response = {
nextPageToken: option<pageToken>,
typeInfos: activityTypeInfoList
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "ListActivityTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RespondDecisionTaskCompleted = {
  type t;
  type request = {
executionContext: option<data>,
decisions: option<decisionList>,
taskToken: taskToken
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RespondDecisionTaskCompletedCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PollForDecisionTask = {
  type t;
  type request = {
reverseOrder: option<reverseOrder>,
maximumPageSize: option<pageSize>,
nextPageToken: option<pageToken>,
identity: option<identity>,
taskList: taskList,
domain: domainName
}
  type response = {
previousStartedEventId: option<eventId>,
nextPageToken: option<pageToken>,
events: historyEventList,
workflowType: workflowType,
workflowExecution: workflowExecution,
startedEventId: eventId,
taskToken: taskToken
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "PollForDecisionTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetWorkflowExecutionHistory = {
  type t;
  type request = {
reverseOrder: option<reverseOrder>,
maximumPageSize: option<pageSize>,
nextPageToken: option<pageToken>,
execution: workflowExecution,
domain: domainName
}
  type response = {
nextPageToken: option<pageToken>,
events: historyEventList
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "GetWorkflowExecutionHistoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
