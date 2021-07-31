type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type workflowRunIdOptional = string
type workflowRunId = string
type workflowId = string
type workflowExecutionTimeoutType = [@as("START_TO_CLOSE") #START_TO_CLOSE]
type workflowExecutionTerminatedCause = [@as("OPERATOR_INITIATED") #OPERATOR_INITIATED | @as("EVENT_LIMIT_EXCEEDED") #EVENT_LIMIT_EXCEEDED | @as("CHILD_POLICY_APPLIED") #CHILD_POLICY_APPLIED]
type workflowExecutionCancelRequestedCause = [@as("CHILD_POLICY_APPLIED") #CHILD_POLICY_APPLIED]
type versionOptional = string
type version = string
type truncated = bool;
type amazonawsTimestamp = Js.Date.t;
type timerId = string
type terminateReason = string
type taskToken = string
type taskPriority = string
type tag = string
type startTimerFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED | @as("TIMER_CREATION_RATE_EXCEEDED") #TIMER_CREATION_RATE_EXCEEDED | @as("OPEN_TIMERS_LIMIT_EXCEEDED") #OPEN_TIMERS_LIMIT_EXCEEDED | @as("TIMER_ID_ALREADY_IN_USE") #TIMER_ID_ALREADY_IN_USE]
type startLambdaFunctionFailedCause = [@as("ASSUME_ROLE_FAILED") #ASSUME_ROLE_FAILED]
type startChildWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED | @as("DEFAULT_CHILD_POLICY_UNDEFINED") #DEFAULT_CHILD_POLICY_UNDEFINED | @as("DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED | @as("DEFAULT_TASK_LIST_UNDEFINED") #DEFAULT_TASK_LIST_UNDEFINED | @as("DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED | @as("WORKFLOW_ALREADY_RUNNING") #WORKFLOW_ALREADY_RUNNING | @as("CHILD_CREATION_RATE_EXCEEDED") #CHILD_CREATION_RATE_EXCEEDED | @as("OPEN_WORKFLOWS_LIMIT_EXCEEDED") #OPEN_WORKFLOWS_LIMIT_EXCEEDED | @as("OPEN_CHILDREN_LIMIT_EXCEEDED") #OPEN_CHILDREN_LIMIT_EXCEEDED | @as("WORKFLOW_TYPE_DEPRECATED") #WORKFLOW_TYPE_DEPRECATED | @as("WORKFLOW_TYPE_DOES_NOT_EXIST") #WORKFLOW_TYPE_DOES_NOT_EXIST]
type signalName = string
type signalExternalWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED | @as("SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED") #SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED | @as("UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION") #UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION]
type scheduleLambdaFunctionFailedCause = [@as("LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION") #LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION | @as("LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED") #LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED | @as("OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED") #OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED | @as("ID_ALREADY_IN_USE") #ID_ALREADY_IN_USE]
type scheduleActivityTaskFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED | @as("DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED") #DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED | @as("DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED | @as("DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED") #DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED | @as("DEFAULT_TASK_LIST_UNDEFINED") #DEFAULT_TASK_LIST_UNDEFINED | @as("DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED | @as("ACTIVITY_CREATION_RATE_EXCEEDED") #ACTIVITY_CREATION_RATE_EXCEEDED | @as("OPEN_ACTIVITIES_LIMIT_EXCEEDED") #OPEN_ACTIVITIES_LIMIT_EXCEEDED | @as("ACTIVITY_ID_ALREADY_IN_USE") #ACTIVITY_ID_ALREADY_IN_USE | @as("ACTIVITY_TYPE_DOES_NOT_EXIST") #ACTIVITY_TYPE_DOES_NOT_EXIST | @as("ACTIVITY_TYPE_DEPRECATED") #ACTIVITY_TYPE_DEPRECATED]
type reverseOrder = bool;
type resourceTagValue = string
type resourceTagKey = string
type requestCancelExternalWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED | @as("REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED") #REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED | @as("UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION") #UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION]
type requestCancelActivityTaskFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED | @as("ACTIVITY_ID_UNKNOWN") #ACTIVITY_ID_UNKNOWN]
type registrationStatus = [@as("DEPRECATED") #DEPRECATED | @as("REGISTERED") #REGISTERED]
type recordMarkerFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED]
type pageToken = string
type pageSize = int;
type openDecisionTasksCount = int;
type name = string
type markerName = string
type limitedData = string
type lambdaFunctionTimeoutType = [@as("START_TO_CLOSE") #START_TO_CLOSE]
type identity = string
type functionName = string
type functionInput = string
type functionId = string
type failureReason = string
type failWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED | @as("UNHANDLED_DECISION") #UNHANDLED_DECISION]
type executionStatus = [@as("CLOSED") #CLOSED | @as("OPEN") #OPEN]
type eventType = [@as("StartLambdaFunctionFailed") #StartLambdaFunctionFailed | @as("ScheduleLambdaFunctionFailed") #ScheduleLambdaFunctionFailed | @as("LambdaFunctionTimedOut") #LambdaFunctionTimedOut | @as("LambdaFunctionFailed") #LambdaFunctionFailed | @as("LambdaFunctionCompleted") #LambdaFunctionCompleted | @as("LambdaFunctionStarted") #LambdaFunctionStarted | @as("LambdaFunctionScheduled") #LambdaFunctionScheduled | @as("ExternalWorkflowExecutionCancelRequested") #ExternalWorkflowExecutionCancelRequested | @as("RequestCancelExternalWorkflowExecutionFailed") #RequestCancelExternalWorkflowExecutionFailed | @as("RequestCancelExternalWorkflowExecutionInitiated") #RequestCancelExternalWorkflowExecutionInitiated | @as("ExternalWorkflowExecutionSignaled") #ExternalWorkflowExecutionSignaled | @as("SignalExternalWorkflowExecutionFailed") #SignalExternalWorkflowExecutionFailed | @as("SignalExternalWorkflowExecutionInitiated") #SignalExternalWorkflowExecutionInitiated | @as("ChildWorkflowExecutionTerminated") #ChildWorkflowExecutionTerminated | @as("ChildWorkflowExecutionCanceled") #ChildWorkflowExecutionCanceled | @as("ChildWorkflowExecutionTimedOut") #ChildWorkflowExecutionTimedOut | @as("ChildWorkflowExecutionFailed") #ChildWorkflowExecutionFailed | @as("ChildWorkflowExecutionCompleted") #ChildWorkflowExecutionCompleted | @as("ChildWorkflowExecutionStarted") #ChildWorkflowExecutionStarted | @as("StartChildWorkflowExecutionFailed") #StartChildWorkflowExecutionFailed | @as("StartChildWorkflowExecutionInitiated") #StartChildWorkflowExecutionInitiated | @as("CancelTimerFailed") #CancelTimerFailed | @as("TimerCanceled") #TimerCanceled | @as("TimerFired") #TimerFired | @as("StartTimerFailed") #StartTimerFailed | @as("TimerStarted") #TimerStarted | @as("RecordMarkerFailed") #RecordMarkerFailed | @as("MarkerRecorded") #MarkerRecorded | @as("WorkflowExecutionSignaled") #WorkflowExecutionSignaled | @as("RequestCancelActivityTaskFailed") #RequestCancelActivityTaskFailed | @as("ActivityTaskCancelRequested") #ActivityTaskCancelRequested | @as("ActivityTaskCanceled") #ActivityTaskCanceled | @as("ActivityTaskTimedOut") #ActivityTaskTimedOut | @as("ActivityTaskFailed") #ActivityTaskFailed | @as("ActivityTaskCompleted") #ActivityTaskCompleted | @as("ActivityTaskStarted") #ActivityTaskStarted | @as("ScheduleActivityTaskFailed") #ScheduleActivityTaskFailed | @as("ActivityTaskScheduled") #ActivityTaskScheduled | @as("DecisionTaskTimedOut") #DecisionTaskTimedOut | @as("DecisionTaskCompleted") #DecisionTaskCompleted | @as("DecisionTaskStarted") #DecisionTaskStarted | @as("DecisionTaskScheduled") #DecisionTaskScheduled | @as("WorkflowExecutionTerminated") #WorkflowExecutionTerminated | @as("ContinueAsNewWorkflowExecutionFailed") #ContinueAsNewWorkflowExecutionFailed | @as("WorkflowExecutionContinuedAsNew") #WorkflowExecutionContinuedAsNew | @as("CancelWorkflowExecutionFailed") #CancelWorkflowExecutionFailed | @as("WorkflowExecutionCanceled") #WorkflowExecutionCanceled | @as("WorkflowExecutionTimedOut") #WorkflowExecutionTimedOut | @as("FailWorkflowExecutionFailed") #FailWorkflowExecutionFailed | @as("WorkflowExecutionFailed") #WorkflowExecutionFailed | @as("CompleteWorkflowExecutionFailed") #CompleteWorkflowExecutionFailed | @as("WorkflowExecutionCompleted") #WorkflowExecutionCompleted | @as("WorkflowExecutionCancelRequested") #WorkflowExecutionCancelRequested | @as("WorkflowExecutionStarted") #WorkflowExecutionStarted]
type eventId = float;
type errorMessage = string
type durationInSecondsOptional = string
type durationInSeconds = string
type durationInDays = string
type domainName = string
type description = string
type decisionType = [@as("ScheduleLambdaFunction") #ScheduleLambdaFunction | @as("StartChildWorkflowExecution") #StartChildWorkflowExecution | @as("RequestCancelExternalWorkflowExecution") #RequestCancelExternalWorkflowExecution | @as("SignalExternalWorkflowExecution") #SignalExternalWorkflowExecution | @as("CancelTimer") #CancelTimer | @as("StartTimer") #StartTimer | @as("RecordMarker") #RecordMarker | @as("ContinueAsNewWorkflowExecution") #ContinueAsNewWorkflowExecution | @as("CancelWorkflowExecution") #CancelWorkflowExecution | @as("FailWorkflowExecution") #FailWorkflowExecution | @as("CompleteWorkflowExecution") #CompleteWorkflowExecution | @as("RequestCancelActivityTask") #RequestCancelActivityTask | @as("ScheduleActivityTask") #ScheduleActivityTask]
type decisionTaskTimeoutType = [@as("START_TO_CLOSE") #START_TO_CLOSE]
type data = string
type count = int;
type continueAsNewWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED | @as("CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED") #CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED | @as("DEFAULT_CHILD_POLICY_UNDEFINED") #DEFAULT_CHILD_POLICY_UNDEFINED | @as("DEFAULT_TASK_LIST_UNDEFINED") #DEFAULT_TASK_LIST_UNDEFINED | @as("DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED | @as("DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED | @as("WORKFLOW_TYPE_DOES_NOT_EXIST") #WORKFLOW_TYPE_DOES_NOT_EXIST | @as("WORKFLOW_TYPE_DEPRECATED") #WORKFLOW_TYPE_DEPRECATED | @as("UNHANDLED_DECISION") #UNHANDLED_DECISION]
type completeWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED | @as("UNHANDLED_DECISION") #UNHANDLED_DECISION]
type closeStatus = [@as("TIMED_OUT") #TIMED_OUT | @as("CONTINUED_AS_NEW") #CONTINUED_AS_NEW | @as("TERMINATED") #TERMINATED | @as("CANCELED") #CANCELED | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED]
type childPolicy = [@as("ABANDON") #ABANDON | @as("REQUEST_CANCEL") #REQUEST_CANCEL | @as("TERMINATE") #TERMINATE]
type causeMessage = string
type canceled = bool;
type cancelWorkflowExecutionFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED | @as("UNHANDLED_DECISION") #UNHANDLED_DECISION]
type cancelTimerFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED | @as("TIMER_ID_UNKNOWN") #TIMER_ID_UNKNOWN]
type arn = string
type activityTaskTimeoutType = [@as("HEARTBEAT") #HEARTBEAT | @as("SCHEDULE_TO_CLOSE") #SCHEDULE_TO_CLOSE | @as("SCHEDULE_TO_START") #SCHEDULE_TO_START | @as("START_TO_CLOSE") #START_TO_CLOSE]
type activityId = string
type workflowTypeFilter = {
@as("version") version: versionOptional,
@as("name") name: option<name>
}
type workflowType = {
@as("version") version: option<version>,
@as("name") name: option<name>
}
type workflowExecutionTimedOutEventAttributes = {
@as("childPolicy") childPolicy: option<childPolicy>,
@as("timeoutType") timeoutType: option<workflowExecutionTimeoutType>
}
type workflowExecutionTerminatedEventAttributes = {
@as("cause") cause: workflowExecutionTerminatedCause,
@as("childPolicy") childPolicy: option<childPolicy>,
@as("details") details: data,
@as("reason") reason: terminateReason
}
type workflowExecutionOpenCounts = {
@as("openLambdaFunctions") openLambdaFunctions: count,
@as("openChildWorkflowExecutions") openChildWorkflowExecutions: option<count>,
@as("openTimers") openTimers: option<count>,
@as("openDecisionTasks") openDecisionTasks: option<openDecisionTasksCount>,
@as("openActivityTasks") openActivityTasks: option<count>
}
type workflowExecutionFilter = {
@as("workflowId") workflowId: option<workflowId>
}
type workflowExecutionFailedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("details") details: data,
@as("reason") reason: failureReason
}
type workflowExecutionCompletedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("result") result: data
}
type workflowExecutionCanceledEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("details") details: data
}
type workflowExecution = {
@as("runId") runId: option<workflowRunId>,
@as("workflowId") workflowId: option<workflowId>
}
type timerStartedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("startToFireTimeout") startToFireTimeout: option<durationInSeconds>,
@as("control") control: data,
@as("timerId") timerId: option<timerId>
}
type timerFiredEventAttributes = {
@as("startedEventId") startedEventId: option<eventId>,
@as("timerId") timerId: option<timerId>
}
type timerCanceledEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("startedEventId") startedEventId: option<eventId>,
@as("timerId") timerId: option<timerId>
}
type taskList = {
@as("name") name: option<name>
}
type tagList = array<tag>
type tagFilter = {
@as("tag") tag: option<tag>
}
type startTimerFailedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("cause") cause: option<startTimerFailedCause>,
@as("timerId") timerId: option<timerId>
}
type startTimerDecisionAttributes = {
@as("startToFireTimeout") startToFireTimeout: option<durationInSeconds>,
@as("control") control: data,
@as("timerId") timerId: option<timerId>
}
type startLambdaFunctionFailedEventAttributes = {
@as("message") message: causeMessage,
@as("cause") cause: startLambdaFunctionFailedCause,
@as("scheduledEventId") scheduledEventId: eventId
}
type signalExternalWorkflowExecutionInitiatedEventAttributes = {
@as("control") control: data,
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("input") input: data,
@as("signalName") signalName: option<signalName>,
@as("runId") runId: workflowRunIdOptional,
@as("workflowId") workflowId: option<workflowId>
}
type signalExternalWorkflowExecutionFailedEventAttributes = {
@as("control") control: data,
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("initiatedEventId") initiatedEventId: option<eventId>,
@as("cause") cause: option<signalExternalWorkflowExecutionFailedCause>,
@as("runId") runId: workflowRunIdOptional,
@as("workflowId") workflowId: option<workflowId>
}
type signalExternalWorkflowExecutionDecisionAttributes = {
@as("control") control: data,
@as("input") input: data,
@as("signalName") signalName: option<signalName>,
@as("runId") runId: workflowRunIdOptional,
@as("workflowId") workflowId: option<workflowId>
}
type scheduleLambdaFunctionFailedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("cause") cause: option<scheduleLambdaFunctionFailedCause>,
@as("name") name: option<functionName>,
@as("id") id: option<functionId>
}
type scheduleLambdaFunctionDecisionAttributes = {
@as("startToCloseTimeout") startToCloseTimeout: durationInSecondsOptional,
@as("input") input: functionInput,
@as("control") control: data,
@as("name") name: option<functionName>,
@as("id") id: option<functionId>
}
type resourceTagKeyList = array<resourceTagKey>
type resourceTag = {
@as("value") value: resourceTagValue,
@as("key") key: option<resourceTagKey>
}
type requestCancelExternalWorkflowExecutionInitiatedEventAttributes = {
@as("control") control: data,
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("runId") runId: workflowRunIdOptional,
@as("workflowId") workflowId: option<workflowId>
}
type requestCancelExternalWorkflowExecutionFailedEventAttributes = {
@as("control") control: data,
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("initiatedEventId") initiatedEventId: option<eventId>,
@as("cause") cause: option<requestCancelExternalWorkflowExecutionFailedCause>,
@as("runId") runId: workflowRunIdOptional,
@as("workflowId") workflowId: option<workflowId>
}
type requestCancelExternalWorkflowExecutionDecisionAttributes = {
@as("control") control: data,
@as("runId") runId: workflowRunIdOptional,
@as("workflowId") workflowId: option<workflowId>
}
type requestCancelActivityTaskFailedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("cause") cause: option<requestCancelActivityTaskFailedCause>,
@as("activityId") activityId: option<activityId>
}
type requestCancelActivityTaskDecisionAttributes = {
@as("activityId") activityId: option<activityId>
}
type recordMarkerFailedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("cause") cause: option<recordMarkerFailedCause>,
@as("markerName") markerName: option<markerName>
}
type recordMarkerDecisionAttributes = {
@as("details") details: data,
@as("markerName") markerName: option<markerName>
}
type markerRecordedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("details") details: data,
@as("markerName") markerName: option<markerName>
}
type lambdaFunctionTimedOutEventAttributes = {
@as("timeoutType") timeoutType: lambdaFunctionTimeoutType,
@as("startedEventId") startedEventId: option<eventId>,
@as("scheduledEventId") scheduledEventId: option<eventId>
}
type lambdaFunctionStartedEventAttributes = {
@as("scheduledEventId") scheduledEventId: option<eventId>
}
type lambdaFunctionScheduledEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("startToCloseTimeout") startToCloseTimeout: durationInSecondsOptional,
@as("input") input: functionInput,
@as("control") control: data,
@as("name") name: option<functionName>,
@as("id") id: option<functionId>
}
type lambdaFunctionFailedEventAttributes = {
@as("details") details: data,
@as("reason") reason: failureReason,
@as("startedEventId") startedEventId: option<eventId>,
@as("scheduledEventId") scheduledEventId: option<eventId>
}
type lambdaFunctionCompletedEventAttributes = {
@as("result") result: data,
@as("startedEventId") startedEventId: option<eventId>,
@as("scheduledEventId") scheduledEventId: option<eventId>
}
type failWorkflowExecutionFailedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("cause") cause: option<failWorkflowExecutionFailedCause>
}
type failWorkflowExecutionDecisionAttributes = {
@as("details") details: data,
@as("reason") reason: failureReason
}
type executionTimeFilter = {
@as("latestDate") latestDate: amazonawsTimestamp,
@as("oldestDate") oldestDate: option<amazonawsTimestamp>
}
type domainInfo = {
@as("arn") arn: arn,
@as("description") description: description,
@as("status") status: option<registrationStatus>,
@as("name") name: option<domainName>
}
type domainConfiguration = {
@as("workflowExecutionRetentionPeriodInDays") workflowExecutionRetentionPeriodInDays: option<durationInDays>
}
type decisionTaskTimedOutEventAttributes = {
@as("startedEventId") startedEventId: option<eventId>,
@as("scheduledEventId") scheduledEventId: option<eventId>,
@as("timeoutType") timeoutType: option<decisionTaskTimeoutType>
}
type decisionTaskStartedEventAttributes = {
@as("scheduledEventId") scheduledEventId: option<eventId>,
@as("identity") identity: identity
}
type decisionTaskCompletedEventAttributes = {
@as("startedEventId") startedEventId: option<eventId>,
@as("scheduledEventId") scheduledEventId: option<eventId>,
@as("executionContext") executionContext: data
}
type continueAsNewWorkflowExecutionFailedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("cause") cause: option<continueAsNewWorkflowExecutionFailedCause>
}
type completeWorkflowExecutionFailedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("cause") cause: option<completeWorkflowExecutionFailedCause>
}
type completeWorkflowExecutionDecisionAttributes = {
@as("result") result: data
}
type closeStatusFilter = {
@as("status") status: option<closeStatus>
}
type cancelWorkflowExecutionFailedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("cause") cause: option<cancelWorkflowExecutionFailedCause>
}
type cancelWorkflowExecutionDecisionAttributes = {
@as("details") details: data
}
type cancelTimerFailedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("cause") cause: option<cancelTimerFailedCause>,
@as("timerId") timerId: option<timerId>
}
type cancelTimerDecisionAttributes = {
@as("timerId") timerId: option<timerId>
}
type activityType = {
@as("version") version: option<version>,
@as("name") name: option<name>
}
type activityTaskTimedOutEventAttributes = {
@as("details") details: limitedData,
@as("startedEventId") startedEventId: option<eventId>,
@as("scheduledEventId") scheduledEventId: option<eventId>,
@as("timeoutType") timeoutType: option<activityTaskTimeoutType>
}
type activityTaskStartedEventAttributes = {
@as("scheduledEventId") scheduledEventId: option<eventId>,
@as("identity") identity: identity
}
type activityTaskFailedEventAttributes = {
@as("startedEventId") startedEventId: option<eventId>,
@as("scheduledEventId") scheduledEventId: option<eventId>,
@as("details") details: data,
@as("reason") reason: failureReason
}
type activityTaskCompletedEventAttributes = {
@as("startedEventId") startedEventId: option<eventId>,
@as("scheduledEventId") scheduledEventId: option<eventId>,
@as("result") result: data
}
type activityTaskCanceledEventAttributes = {
@as("latestCancelRequestedEventId") latestCancelRequestedEventId: eventId,
@as("startedEventId") startedEventId: option<eventId>,
@as("scheduledEventId") scheduledEventId: option<eventId>,
@as("details") details: data
}
type activityTaskCancelRequestedEventAttributes = {
@as("activityId") activityId: option<activityId>,
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>
}
type workflowTypeInfo = {
@as("deprecationDate") deprecationDate: amazonawsTimestamp,
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("description") description: description,
@as("status") status: option<registrationStatus>,
@as("workflowType") workflowType: option<workflowType>
}
type workflowTypeConfiguration = {
@as("defaultLambdaRole") defaultLambdaRole: arn,
@as("defaultChildPolicy") defaultChildPolicy: childPolicy,
@as("defaultTaskPriority") defaultTaskPriority: taskPriority,
@as("defaultTaskList") defaultTaskList: taskList,
@as("defaultExecutionStartToCloseTimeout") defaultExecutionStartToCloseTimeout: durationInSecondsOptional,
@as("defaultTaskStartToCloseTimeout") defaultTaskStartToCloseTimeout: durationInSecondsOptional
}
type workflowExecutionStartedEventAttributes = {
@as("lambdaRole") lambdaRole: arn,
@as("parentInitiatedEventId") parentInitiatedEventId: eventId,
@as("parentWorkflowExecution") parentWorkflowExecution: workflowExecution,
@as("continuedExecutionRunId") continuedExecutionRunId: workflowRunIdOptional,
@as("tagList") tagList: tagList,
@as("workflowType") workflowType: option<workflowType>,
@as("taskPriority") taskPriority: taskPriority,
@as("taskList") taskList: option<taskList>,
@as("childPolicy") childPolicy: option<childPolicy>,
@as("taskStartToCloseTimeout") taskStartToCloseTimeout: durationInSecondsOptional,
@as("executionStartToCloseTimeout") executionStartToCloseTimeout: durationInSecondsOptional,
@as("input") input: data
}
type workflowExecutionSignaledEventAttributes = {
@as("externalInitiatedEventId") externalInitiatedEventId: eventId,
@as("externalWorkflowExecution") externalWorkflowExecution: workflowExecution,
@as("input") input: data,
@as("signalName") signalName: option<signalName>
}
type workflowExecutionInfo = {
@as("cancelRequested") cancelRequested: canceled,
@as("tagList") tagList: tagList,
@as("parent") parent: workflowExecution,
@as("closeStatus") closeStatus: closeStatus,
@as("executionStatus") executionStatus: option<executionStatus>,
@as("closeTimestamp") closeTimestamp: amazonawsTimestamp,
@as("startTimestamp") startTimestamp: option<amazonawsTimestamp>,
@as("workflowType") workflowType: option<workflowType>,
@as("execution") execution: option<workflowExecution>
}
type workflowExecutionContinuedAsNewEventAttributes = {
@as("lambdaRole") lambdaRole: arn,
@as("workflowType") workflowType: option<workflowType>,
@as("tagList") tagList: tagList,
@as("childPolicy") childPolicy: option<childPolicy>,
@as("taskStartToCloseTimeout") taskStartToCloseTimeout: durationInSecondsOptional,
@as("taskPriority") taskPriority: taskPriority,
@as("taskList") taskList: option<taskList>,
@as("executionStartToCloseTimeout") executionStartToCloseTimeout: durationInSecondsOptional,
@as("newExecutionRunId") newExecutionRunId: option<workflowRunId>,
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("input") input: data
}
type workflowExecutionConfiguration = {
@as("lambdaRole") lambdaRole: arn,
@as("childPolicy") childPolicy: option<childPolicy>,
@as("taskPriority") taskPriority: taskPriority,
@as("taskList") taskList: option<taskList>,
@as("executionStartToCloseTimeout") executionStartToCloseTimeout: option<durationInSeconds>,
@as("taskStartToCloseTimeout") taskStartToCloseTimeout: option<durationInSeconds>
}
type workflowExecutionCancelRequestedEventAttributes = {
@as("cause") cause: workflowExecutionCancelRequestedCause,
@as("externalInitiatedEventId") externalInitiatedEventId: eventId,
@as("externalWorkflowExecution") externalWorkflowExecution: workflowExecution
}
type startChildWorkflowExecutionInitiatedEventAttributes = {
@as("lambdaRole") lambdaRole: arn,
@as("tagList") tagList: tagList,
@as("taskStartToCloseTimeout") taskStartToCloseTimeout: durationInSecondsOptional,
@as("childPolicy") childPolicy: option<childPolicy>,
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("taskPriority") taskPriority: taskPriority,
@as("taskList") taskList: option<taskList>,
@as("executionStartToCloseTimeout") executionStartToCloseTimeout: durationInSecondsOptional,
@as("input") input: data,
@as("control") control: data,
@as("workflowType") workflowType: option<workflowType>,
@as("workflowId") workflowId: option<workflowId>
}
type startChildWorkflowExecutionFailedEventAttributes = {
@as("control") control: data,
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("initiatedEventId") initiatedEventId: option<eventId>,
@as("workflowId") workflowId: option<workflowId>,
@as("cause") cause: option<startChildWorkflowExecutionFailedCause>,
@as("workflowType") workflowType: option<workflowType>
}
type startChildWorkflowExecutionDecisionAttributes = {
@as("lambdaRole") lambdaRole: arn,
@as("tagList") tagList: tagList,
@as("childPolicy") childPolicy: childPolicy,
@as("taskStartToCloseTimeout") taskStartToCloseTimeout: durationInSecondsOptional,
@as("taskPriority") taskPriority: taskPriority,
@as("taskList") taskList: taskList,
@as("executionStartToCloseTimeout") executionStartToCloseTimeout: durationInSecondsOptional,
@as("input") input: data,
@as("control") control: data,
@as("workflowId") workflowId: option<workflowId>,
@as("workflowType") workflowType: option<workflowType>
}
type scheduleActivityTaskFailedEventAttributes = {
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("cause") cause: option<scheduleActivityTaskFailedCause>,
@as("activityId") activityId: option<activityId>,
@as("activityType") activityType: option<activityType>
}
type scheduleActivityTaskDecisionAttributes = {
@as("heartbeatTimeout") heartbeatTimeout: durationInSecondsOptional,
@as("startToCloseTimeout") startToCloseTimeout: durationInSecondsOptional,
@as("scheduleToStartTimeout") scheduleToStartTimeout: durationInSecondsOptional,
@as("taskPriority") taskPriority: taskPriority,
@as("taskList") taskList: taskList,
@as("scheduleToCloseTimeout") scheduleToCloseTimeout: durationInSecondsOptional,
@as("input") input: data,
@as("control") control: data,
@as("activityId") activityId: option<activityId>,
@as("activityType") activityType: option<activityType>
}
type resourceTagList = array<resourceTag>
type externalWorkflowExecutionSignaledEventAttributes = {
@as("initiatedEventId") initiatedEventId: option<eventId>,
@as("workflowExecution") workflowExecution: option<workflowExecution>
}
type externalWorkflowExecutionCancelRequestedEventAttributes = {
@as("initiatedEventId") initiatedEventId: option<eventId>,
@as("workflowExecution") workflowExecution: option<workflowExecution>
}
type domainInfoList = array<domainInfo>
type decisionTaskScheduledEventAttributes = {
@as("startToCloseTimeout") startToCloseTimeout: durationInSecondsOptional,
@as("taskPriority") taskPriority: taskPriority,
@as("taskList") taskList: option<taskList>
}
type continueAsNewWorkflowExecutionDecisionAttributes = {
@as("lambdaRole") lambdaRole: arn,
@as("workflowTypeVersion") workflowTypeVersion: version,
@as("tagList") tagList: tagList,
@as("childPolicy") childPolicy: childPolicy,
@as("taskStartToCloseTimeout") taskStartToCloseTimeout: durationInSecondsOptional,
@as("taskPriority") taskPriority: taskPriority,
@as("taskList") taskList: taskList,
@as("executionStartToCloseTimeout") executionStartToCloseTimeout: durationInSecondsOptional,
@as("input") input: data
}
type childWorkflowExecutionTimedOutEventAttributes = {
@as("startedEventId") startedEventId: option<eventId>,
@as("initiatedEventId") initiatedEventId: option<eventId>,
@as("timeoutType") timeoutType: option<workflowExecutionTimeoutType>,
@as("workflowType") workflowType: option<workflowType>,
@as("workflowExecution") workflowExecution: option<workflowExecution>
}
type childWorkflowExecutionTerminatedEventAttributes = {
@as("startedEventId") startedEventId: option<eventId>,
@as("initiatedEventId") initiatedEventId: option<eventId>,
@as("workflowType") workflowType: option<workflowType>,
@as("workflowExecution") workflowExecution: option<workflowExecution>
}
type childWorkflowExecutionStartedEventAttributes = {
@as("initiatedEventId") initiatedEventId: option<eventId>,
@as("workflowType") workflowType: option<workflowType>,
@as("workflowExecution") workflowExecution: option<workflowExecution>
}
type childWorkflowExecutionFailedEventAttributes = {
@as("startedEventId") startedEventId: option<eventId>,
@as("initiatedEventId") initiatedEventId: option<eventId>,
@as("details") details: data,
@as("reason") reason: failureReason,
@as("workflowType") workflowType: option<workflowType>,
@as("workflowExecution") workflowExecution: option<workflowExecution>
}
type childWorkflowExecutionCompletedEventAttributes = {
@as("startedEventId") startedEventId: option<eventId>,
@as("initiatedEventId") initiatedEventId: option<eventId>,
@as("result") result: data,
@as("workflowType") workflowType: option<workflowType>,
@as("workflowExecution") workflowExecution: option<workflowExecution>
}
type childWorkflowExecutionCanceledEventAttributes = {
@as("startedEventId") startedEventId: option<eventId>,
@as("initiatedEventId") initiatedEventId: option<eventId>,
@as("details") details: data,
@as("workflowType") workflowType: option<workflowType>,
@as("workflowExecution") workflowExecution: option<workflowExecution>
}
type activityTypeInfo = {
@as("deprecationDate") deprecationDate: amazonawsTimestamp,
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("description") description: description,
@as("status") status: option<registrationStatus>,
@as("activityType") activityType: option<activityType>
}
type activityTypeConfiguration = {
@as("defaultTaskScheduleToCloseTimeout") defaultTaskScheduleToCloseTimeout: durationInSecondsOptional,
@as("defaultTaskScheduleToStartTimeout") defaultTaskScheduleToStartTimeout: durationInSecondsOptional,
@as("defaultTaskPriority") defaultTaskPriority: taskPriority,
@as("defaultTaskList") defaultTaskList: taskList,
@as("defaultTaskHeartbeatTimeout") defaultTaskHeartbeatTimeout: durationInSecondsOptional,
@as("defaultTaskStartToCloseTimeout") defaultTaskStartToCloseTimeout: durationInSecondsOptional
}
type activityTaskScheduledEventAttributes = {
@as("heartbeatTimeout") heartbeatTimeout: durationInSecondsOptional,
@as("decisionTaskCompletedEventId") decisionTaskCompletedEventId: option<eventId>,
@as("taskPriority") taskPriority: taskPriority,
@as("taskList") taskList: option<taskList>,
@as("startToCloseTimeout") startToCloseTimeout: durationInSecondsOptional,
@as("scheduleToCloseTimeout") scheduleToCloseTimeout: durationInSecondsOptional,
@as("scheduleToStartTimeout") scheduleToStartTimeout: durationInSecondsOptional,
@as("control") control: data,
@as("input") input: data,
@as("activityId") activityId: option<activityId>,
@as("activityType") activityType: option<activityType>
}
type workflowTypeInfoList = array<workflowTypeInfo>
type workflowExecutionInfoList = array<workflowExecutionInfo>
type historyEvent = {
@as("startLambdaFunctionFailedEventAttributes") startLambdaFunctionFailedEventAttributes: startLambdaFunctionFailedEventAttributes,
@as("scheduleLambdaFunctionFailedEventAttributes") scheduleLambdaFunctionFailedEventAttributes: scheduleLambdaFunctionFailedEventAttributes,
@as("lambdaFunctionTimedOutEventAttributes") lambdaFunctionTimedOutEventAttributes: lambdaFunctionTimedOutEventAttributes,
@as("lambdaFunctionFailedEventAttributes") lambdaFunctionFailedEventAttributes: lambdaFunctionFailedEventAttributes,
@as("lambdaFunctionCompletedEventAttributes") lambdaFunctionCompletedEventAttributes: lambdaFunctionCompletedEventAttributes,
@as("lambdaFunctionStartedEventAttributes") lambdaFunctionStartedEventAttributes: lambdaFunctionStartedEventAttributes,
@as("lambdaFunctionScheduledEventAttributes") lambdaFunctionScheduledEventAttributes: lambdaFunctionScheduledEventAttributes,
@as("startChildWorkflowExecutionFailedEventAttributes") startChildWorkflowExecutionFailedEventAttributes: startChildWorkflowExecutionFailedEventAttributes,
@as("cancelTimerFailedEventAttributes") cancelTimerFailedEventAttributes: cancelTimerFailedEventAttributes,
@as("startTimerFailedEventAttributes") startTimerFailedEventAttributes: startTimerFailedEventAttributes,
@as("requestCancelActivityTaskFailedEventAttributes") requestCancelActivityTaskFailedEventAttributes: requestCancelActivityTaskFailedEventAttributes,
@as("scheduleActivityTaskFailedEventAttributes") scheduleActivityTaskFailedEventAttributes: scheduleActivityTaskFailedEventAttributes,
@as("requestCancelExternalWorkflowExecutionFailedEventAttributes") requestCancelExternalWorkflowExecutionFailedEventAttributes: requestCancelExternalWorkflowExecutionFailedEventAttributes,
@as("requestCancelExternalWorkflowExecutionInitiatedEventAttributes") requestCancelExternalWorkflowExecutionInitiatedEventAttributes: requestCancelExternalWorkflowExecutionInitiatedEventAttributes,
@as("externalWorkflowExecutionCancelRequestedEventAttributes") externalWorkflowExecutionCancelRequestedEventAttributes: externalWorkflowExecutionCancelRequestedEventAttributes,
@as("signalExternalWorkflowExecutionFailedEventAttributes") signalExternalWorkflowExecutionFailedEventAttributes: signalExternalWorkflowExecutionFailedEventAttributes,
@as("externalWorkflowExecutionSignaledEventAttributes") externalWorkflowExecutionSignaledEventAttributes: externalWorkflowExecutionSignaledEventAttributes,
@as("signalExternalWorkflowExecutionInitiatedEventAttributes") signalExternalWorkflowExecutionInitiatedEventAttributes: signalExternalWorkflowExecutionInitiatedEventAttributes,
@as("childWorkflowExecutionTerminatedEventAttributes") childWorkflowExecutionTerminatedEventAttributes: childWorkflowExecutionTerminatedEventAttributes,
@as("childWorkflowExecutionCanceledEventAttributes") childWorkflowExecutionCanceledEventAttributes: childWorkflowExecutionCanceledEventAttributes,
@as("childWorkflowExecutionTimedOutEventAttributes") childWorkflowExecutionTimedOutEventAttributes: childWorkflowExecutionTimedOutEventAttributes,
@as("childWorkflowExecutionFailedEventAttributes") childWorkflowExecutionFailedEventAttributes: childWorkflowExecutionFailedEventAttributes,
@as("childWorkflowExecutionCompletedEventAttributes") childWorkflowExecutionCompletedEventAttributes: childWorkflowExecutionCompletedEventAttributes,
@as("childWorkflowExecutionStartedEventAttributes") childWorkflowExecutionStartedEventAttributes: childWorkflowExecutionStartedEventAttributes,
@as("startChildWorkflowExecutionInitiatedEventAttributes") startChildWorkflowExecutionInitiatedEventAttributes: startChildWorkflowExecutionInitiatedEventAttributes,
@as("timerCanceledEventAttributes") timerCanceledEventAttributes: timerCanceledEventAttributes,
@as("timerFiredEventAttributes") timerFiredEventAttributes: timerFiredEventAttributes,
@as("timerStartedEventAttributes") timerStartedEventAttributes: timerStartedEventAttributes,
@as("recordMarkerFailedEventAttributes") recordMarkerFailedEventAttributes: recordMarkerFailedEventAttributes,
@as("markerRecordedEventAttributes") markerRecordedEventAttributes: markerRecordedEventAttributes,
@as("workflowExecutionSignaledEventAttributes") workflowExecutionSignaledEventAttributes: workflowExecutionSignaledEventAttributes,
@as("activityTaskCancelRequestedEventAttributes") activityTaskCancelRequestedEventAttributes: activityTaskCancelRequestedEventAttributes,
@as("activityTaskCanceledEventAttributes") activityTaskCanceledEventAttributes: activityTaskCanceledEventAttributes,
@as("activityTaskTimedOutEventAttributes") activityTaskTimedOutEventAttributes: activityTaskTimedOutEventAttributes,
@as("activityTaskFailedEventAttributes") activityTaskFailedEventAttributes: activityTaskFailedEventAttributes,
@as("activityTaskCompletedEventAttributes") activityTaskCompletedEventAttributes: activityTaskCompletedEventAttributes,
@as("activityTaskStartedEventAttributes") activityTaskStartedEventAttributes: activityTaskStartedEventAttributes,
@as("activityTaskScheduledEventAttributes") activityTaskScheduledEventAttributes: activityTaskScheduledEventAttributes,
@as("decisionTaskTimedOutEventAttributes") decisionTaskTimedOutEventAttributes: decisionTaskTimedOutEventAttributes,
@as("decisionTaskCompletedEventAttributes") decisionTaskCompletedEventAttributes: decisionTaskCompletedEventAttributes,
@as("decisionTaskStartedEventAttributes") decisionTaskStartedEventAttributes: decisionTaskStartedEventAttributes,
@as("decisionTaskScheduledEventAttributes") decisionTaskScheduledEventAttributes: decisionTaskScheduledEventAttributes,
@as("workflowExecutionCancelRequestedEventAttributes") workflowExecutionCancelRequestedEventAttributes: workflowExecutionCancelRequestedEventAttributes,
@as("workflowExecutionTerminatedEventAttributes") workflowExecutionTerminatedEventAttributes: workflowExecutionTerminatedEventAttributes,
@as("continueAsNewWorkflowExecutionFailedEventAttributes") continueAsNewWorkflowExecutionFailedEventAttributes: continueAsNewWorkflowExecutionFailedEventAttributes,
@as("workflowExecutionContinuedAsNewEventAttributes") workflowExecutionContinuedAsNewEventAttributes: workflowExecutionContinuedAsNewEventAttributes,
@as("cancelWorkflowExecutionFailedEventAttributes") cancelWorkflowExecutionFailedEventAttributes: cancelWorkflowExecutionFailedEventAttributes,
@as("workflowExecutionCanceledEventAttributes") workflowExecutionCanceledEventAttributes: workflowExecutionCanceledEventAttributes,
@as("workflowExecutionTimedOutEventAttributes") workflowExecutionTimedOutEventAttributes: workflowExecutionTimedOutEventAttributes,
@as("failWorkflowExecutionFailedEventAttributes") failWorkflowExecutionFailedEventAttributes: failWorkflowExecutionFailedEventAttributes,
@as("workflowExecutionFailedEventAttributes") workflowExecutionFailedEventAttributes: workflowExecutionFailedEventAttributes,
@as("completeWorkflowExecutionFailedEventAttributes") completeWorkflowExecutionFailedEventAttributes: completeWorkflowExecutionFailedEventAttributes,
@as("workflowExecutionCompletedEventAttributes") workflowExecutionCompletedEventAttributes: workflowExecutionCompletedEventAttributes,
@as("workflowExecutionStartedEventAttributes") workflowExecutionStartedEventAttributes: workflowExecutionStartedEventAttributes,
@as("eventId") eventId: option<eventId>,
@as("eventType") eventType: option<eventType>,
@as("eventTimestamp") eventTimestamp: option<amazonawsTimestamp>
}
type decision = {
@as("scheduleLambdaFunctionDecisionAttributes") scheduleLambdaFunctionDecisionAttributes: scheduleLambdaFunctionDecisionAttributes,
@as("startChildWorkflowExecutionDecisionAttributes") startChildWorkflowExecutionDecisionAttributes: startChildWorkflowExecutionDecisionAttributes,
@as("requestCancelExternalWorkflowExecutionDecisionAttributes") requestCancelExternalWorkflowExecutionDecisionAttributes: requestCancelExternalWorkflowExecutionDecisionAttributes,
@as("signalExternalWorkflowExecutionDecisionAttributes") signalExternalWorkflowExecutionDecisionAttributes: signalExternalWorkflowExecutionDecisionAttributes,
@as("cancelTimerDecisionAttributes") cancelTimerDecisionAttributes: cancelTimerDecisionAttributes,
@as("startTimerDecisionAttributes") startTimerDecisionAttributes: startTimerDecisionAttributes,
@as("recordMarkerDecisionAttributes") recordMarkerDecisionAttributes: recordMarkerDecisionAttributes,
@as("continueAsNewWorkflowExecutionDecisionAttributes") continueAsNewWorkflowExecutionDecisionAttributes: continueAsNewWorkflowExecutionDecisionAttributes,
@as("cancelWorkflowExecutionDecisionAttributes") cancelWorkflowExecutionDecisionAttributes: cancelWorkflowExecutionDecisionAttributes,
@as("failWorkflowExecutionDecisionAttributes") failWorkflowExecutionDecisionAttributes: failWorkflowExecutionDecisionAttributes,
@as("completeWorkflowExecutionDecisionAttributes") completeWorkflowExecutionDecisionAttributes: completeWorkflowExecutionDecisionAttributes,
@as("requestCancelActivityTaskDecisionAttributes") requestCancelActivityTaskDecisionAttributes: requestCancelActivityTaskDecisionAttributes,
@as("scheduleActivityTaskDecisionAttributes") scheduleActivityTaskDecisionAttributes: scheduleActivityTaskDecisionAttributes,
@as("decisionType") decisionType: option<decisionType>
}
type activityTypeInfoList = array<activityTypeInfo>
type historyEventList = array<historyEvent>
type decisionList = array<decision>
type clientType;
@module("@aws-sdk/client-swf") @new external createClient: unit => clientType = "SWFClient";
module UndeprecateDomain = {
  type t;
  type request = {
@as("name") name: option<domainName>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "UndeprecateDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TerminateWorkflowExecution = {
  type t;
  type request = {
@as("childPolicy") childPolicy: childPolicy,
@as("details") details: data,
@as("reason") reason: terminateReason,
@as("runId") runId: workflowRunIdOptional,
@as("workflowId") workflowId: option<workflowId>,
@as("domain") domain: option<domainName>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "TerminateWorkflowExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SignalWorkflowExecution = {
  type t;
  type request = {
@as("input") input: data,
@as("signalName") signalName: option<signalName>,
@as("runId") runId: workflowRunIdOptional,
@as("workflowId") workflowId: option<workflowId>,
@as("domain") domain: option<domainName>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "SignalWorkflowExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RespondActivityTaskFailed = {
  type t;
  type request = {
@as("details") details: data,
@as("reason") reason: failureReason,
@as("taskToken") taskToken: option<taskToken>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RespondActivityTaskFailedCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RespondActivityTaskCompleted = {
  type t;
  type request = {
@as("result") result: data,
@as("taskToken") taskToken: option<taskToken>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RespondActivityTaskCompletedCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RespondActivityTaskCanceled = {
  type t;
  type request = {
@as("details") details: data,
@as("taskToken") taskToken: option<taskToken>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RespondActivityTaskCanceledCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RequestCancelWorkflowExecution = {
  type t;
  type request = {
@as("runId") runId: workflowRunIdOptional,
@as("workflowId") workflowId: option<workflowId>,
@as("domain") domain: option<domainName>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RequestCancelWorkflowExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RecordActivityTaskHeartbeat = {
  type t;
  type request = {
@as("details") details: limitedData,
@as("taskToken") taskToken: option<taskToken>
}
  type response = {
@as("cancelRequested") cancelRequested: option<canceled>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RecordActivityTaskHeartbeatCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeprecateDomain = {
  type t;
  type request = {
@as("name") name: option<domainName>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DeprecateDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<resourceTagKeyList>,
@as("resourceArn") resourceArn: option<arn>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UndeprecateWorkflowType = {
  type t;
  type request = {
@as("workflowType") workflowType: option<workflowType>,
@as("domain") domain: option<domainName>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "UndeprecateWorkflowTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UndeprecateActivityType = {
  type t;
  type request = {
@as("activityType") activityType: option<activityType>,
@as("domain") domain: option<domainName>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "UndeprecateActivityTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartWorkflowExecution = {
  type t;
  type request = {
@as("lambdaRole") lambdaRole: arn,
@as("childPolicy") childPolicy: childPolicy,
@as("taskStartToCloseTimeout") taskStartToCloseTimeout: durationInSecondsOptional,
@as("tagList") tagList: tagList,
@as("executionStartToCloseTimeout") executionStartToCloseTimeout: durationInSecondsOptional,
@as("input") input: data,
@as("taskPriority") taskPriority: taskPriority,
@as("taskList") taskList: taskList,
@as("workflowType") workflowType: option<workflowType>,
@as("workflowId") workflowId: option<workflowId>,
@as("domain") domain: option<domainName>
}
  type response = {
@as("runId") runId: workflowRunId
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "StartWorkflowExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterWorkflowType = {
  type t;
  type request = {
@as("defaultLambdaRole") defaultLambdaRole: arn,
@as("defaultChildPolicy") defaultChildPolicy: childPolicy,
@as("defaultTaskPriority") defaultTaskPriority: taskPriority,
@as("defaultTaskList") defaultTaskList: taskList,
@as("defaultExecutionStartToCloseTimeout") defaultExecutionStartToCloseTimeout: durationInSecondsOptional,
@as("defaultTaskStartToCloseTimeout") defaultTaskStartToCloseTimeout: durationInSecondsOptional,
@as("description") description: description,
@as("version") version: option<version>,
@as("name") name: option<name>,
@as("domain") domain: option<domainName>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RegisterWorkflowTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RegisterActivityType = {
  type t;
  type request = {
@as("defaultTaskScheduleToCloseTimeout") defaultTaskScheduleToCloseTimeout: durationInSecondsOptional,
@as("defaultTaskScheduleToStartTimeout") defaultTaskScheduleToStartTimeout: durationInSecondsOptional,
@as("defaultTaskPriority") defaultTaskPriority: taskPriority,
@as("defaultTaskList") defaultTaskList: taskList,
@as("defaultTaskHeartbeatTimeout") defaultTaskHeartbeatTimeout: durationInSecondsOptional,
@as("defaultTaskStartToCloseTimeout") defaultTaskStartToCloseTimeout: durationInSecondsOptional,
@as("description") description: description,
@as("version") version: option<version>,
@as("name") name: option<name>,
@as("domain") domain: option<domainName>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RegisterActivityTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PollForActivityTask = {
  type t;
  type request = {
@as("identity") identity: identity,
@as("taskList") taskList: option<taskList>,
@as("domain") domain: option<domainName>
}
  type response = {
@as("input") input: data,
@as("activityType") activityType: option<activityType>,
@as("workflowExecution") workflowExecution: option<workflowExecution>,
@as("startedEventId") startedEventId: option<eventId>,
@as("activityId") activityId: option<activityId>,
@as("taskToken") taskToken: option<taskToken>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "PollForActivityTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDomain = {
  type t;
  type request = {
@as("name") name: option<domainName>
}
  type response = {
@as("configuration") configuration: option<domainConfiguration>,
@as("domainInfo") domainInfo: option<domainInfo>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DescribeDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeprecateWorkflowType = {
  type t;
  type request = {
@as("workflowType") workflowType: option<workflowType>,
@as("domain") domain: option<domainName>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DeprecateWorkflowTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeprecateActivityType = {
  type t;
  type request = {
@as("activityType") activityType: option<activityType>,
@as("domain") domain: option<domainName>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DeprecateActivityTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CountPendingDecisionTasks = {
  type t;
  type request = {
@as("taskList") taskList: option<taskList>,
@as("domain") domain: option<domainName>
}
  type response = {
@as("truncated") truncated: truncated,
@as("count") count: option<count>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "CountPendingDecisionTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CountPendingActivityTasks = {
  type t;
  type request = {
@as("taskList") taskList: option<taskList>,
@as("domain") domain: option<domainName>
}
  type response = {
@as("truncated") truncated: truncated,
@as("count") count: option<count>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "CountPendingActivityTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CountOpenWorkflowExecutions = {
  type t;
  type request = {
@as("executionFilter") executionFilter: workflowExecutionFilter,
@as("tagFilter") tagFilter: tagFilter,
@as("typeFilter") typeFilter: workflowTypeFilter,
@as("startTimeFilter") startTimeFilter: option<executionTimeFilter>,
@as("domain") domain: option<domainName>
}
  type response = {
@as("truncated") truncated: truncated,
@as("count") count: option<count>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "CountOpenWorkflowExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CountClosedWorkflowExecutions = {
  type t;
  type request = {
@as("closeStatusFilter") closeStatusFilter: closeStatusFilter,
@as("tagFilter") tagFilter: tagFilter,
@as("typeFilter") typeFilter: workflowTypeFilter,
@as("executionFilter") executionFilter: workflowExecutionFilter,
@as("closeTimeFilter") closeTimeFilter: executionTimeFilter,
@as("startTimeFilter") startTimeFilter: executionTimeFilter,
@as("domain") domain: option<domainName>
}
  type response = {
@as("truncated") truncated: truncated,
@as("count") count: option<count>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "CountClosedWorkflowExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<resourceTagList>,
@as("resourceArn") resourceArn: option<arn>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RegisterDomain = {
  type t;
  type request = {
@as("tags") tags: resourceTagList,
@as("workflowExecutionRetentionPeriodInDays") workflowExecutionRetentionPeriodInDays: option<durationInDays>,
@as("description") description: description,
@as("name") name: option<domainName>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RegisterDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<arn>
}
  type response = {
@as("tags") tags: resourceTagList
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDomains = {
  type t;
  type request = {
@as("reverseOrder") reverseOrder: reverseOrder,
@as("maximumPageSize") maximumPageSize: pageSize,
@as("registrationStatus") registrationStatus: option<registrationStatus>,
@as("nextPageToken") nextPageToken: pageToken
}
  type response = {
@as("nextPageToken") nextPageToken: pageToken,
@as("domainInfos") domainInfos: option<domainInfoList>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "ListDomainsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkflowType = {
  type t;
  type request = {
@as("workflowType") workflowType: option<workflowType>,
@as("domain") domain: option<domainName>
}
  type response = {
@as("configuration") configuration: option<workflowTypeConfiguration>,
@as("typeInfo") typeInfo: option<workflowTypeInfo>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DescribeWorkflowTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkflowExecution = {
  type t;
  type request = {
@as("execution") execution: option<workflowExecution>,
@as("domain") domain: option<domainName>
}
  type response = {
@as("latestExecutionContext") latestExecutionContext: data,
@as("latestActivityTaskTimestamp") latestActivityTaskTimestamp: amazonawsTimestamp,
@as("openCounts") openCounts: option<workflowExecutionOpenCounts>,
@as("executionConfiguration") executionConfiguration: option<workflowExecutionConfiguration>,
@as("executionInfo") executionInfo: option<workflowExecutionInfo>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DescribeWorkflowExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeActivityType = {
  type t;
  type request = {
@as("activityType") activityType: option<activityType>,
@as("domain") domain: option<domainName>
}
  type response = {
@as("configuration") configuration: option<activityTypeConfiguration>,
@as("typeInfo") typeInfo: option<activityTypeInfo>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "DescribeActivityTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWorkflowTypes = {
  type t;
  type request = {
@as("reverseOrder") reverseOrder: reverseOrder,
@as("maximumPageSize") maximumPageSize: pageSize,
@as("nextPageToken") nextPageToken: pageToken,
@as("registrationStatus") registrationStatus: option<registrationStatus>,
@as("name") name: name,
@as("domain") domain: option<domainName>
}
  type response = {
@as("nextPageToken") nextPageToken: pageToken,
@as("typeInfos") typeInfos: option<workflowTypeInfoList>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "ListWorkflowTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOpenWorkflowExecutions = {
  type t;
  type request = {
@as("executionFilter") executionFilter: workflowExecutionFilter,
@as("reverseOrder") reverseOrder: reverseOrder,
@as("maximumPageSize") maximumPageSize: pageSize,
@as("nextPageToken") nextPageToken: pageToken,
@as("tagFilter") tagFilter: tagFilter,
@as("typeFilter") typeFilter: workflowTypeFilter,
@as("startTimeFilter") startTimeFilter: option<executionTimeFilter>,
@as("domain") domain: option<domainName>
}
  type response = {
@as("nextPageToken") nextPageToken: pageToken,
@as("executionInfos") executionInfos: option<workflowExecutionInfoList>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "ListOpenWorkflowExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListClosedWorkflowExecutions = {
  type t;
  type request = {
@as("reverseOrder") reverseOrder: reverseOrder,
@as("maximumPageSize") maximumPageSize: pageSize,
@as("nextPageToken") nextPageToken: pageToken,
@as("tagFilter") tagFilter: tagFilter,
@as("typeFilter") typeFilter: workflowTypeFilter,
@as("closeStatusFilter") closeStatusFilter: closeStatusFilter,
@as("executionFilter") executionFilter: workflowExecutionFilter,
@as("closeTimeFilter") closeTimeFilter: executionTimeFilter,
@as("startTimeFilter") startTimeFilter: executionTimeFilter,
@as("domain") domain: option<domainName>
}
  type response = {
@as("nextPageToken") nextPageToken: pageToken,
@as("executionInfos") executionInfos: option<workflowExecutionInfoList>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "ListClosedWorkflowExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListActivityTypes = {
  type t;
  type request = {
@as("reverseOrder") reverseOrder: reverseOrder,
@as("maximumPageSize") maximumPageSize: pageSize,
@as("nextPageToken") nextPageToken: pageToken,
@as("registrationStatus") registrationStatus: option<registrationStatus>,
@as("name") name: name,
@as("domain") domain: option<domainName>
}
  type response = {
@as("nextPageToken") nextPageToken: pageToken,
@as("typeInfos") typeInfos: option<activityTypeInfoList>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "ListActivityTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RespondDecisionTaskCompleted = {
  type t;
  type request = {
@as("executionContext") executionContext: data,
@as("decisions") decisions: decisionList,
@as("taskToken") taskToken: option<taskToken>
}
  
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "RespondDecisionTaskCompletedCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PollForDecisionTask = {
  type t;
  type request = {
@as("reverseOrder") reverseOrder: reverseOrder,
@as("maximumPageSize") maximumPageSize: pageSize,
@as("nextPageToken") nextPageToken: pageToken,
@as("identity") identity: identity,
@as("taskList") taskList: option<taskList>,
@as("domain") domain: option<domainName>
}
  type response = {
@as("previousStartedEventId") previousStartedEventId: eventId,
@as("nextPageToken") nextPageToken: pageToken,
@as("events") events: option<historyEventList>,
@as("workflowType") workflowType: option<workflowType>,
@as("workflowExecution") workflowExecution: option<workflowExecution>,
@as("startedEventId") startedEventId: option<eventId>,
@as("taskToken") taskToken: option<taskToken>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "PollForDecisionTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWorkflowExecutionHistory = {
  type t;
  type request = {
@as("reverseOrder") reverseOrder: reverseOrder,
@as("maximumPageSize") maximumPageSize: pageSize,
@as("nextPageToken") nextPageToken: pageToken,
@as("execution") execution: option<workflowExecution>,
@as("domain") domain: option<domainName>
}
  type response = {
@as("nextPageToken") nextPageToken: pageToken,
@as("events") events: option<historyEventList>
}
  @module("@aws-sdk/client-swf") @new external new_: (request) => t = "GetWorkflowExecutionHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
