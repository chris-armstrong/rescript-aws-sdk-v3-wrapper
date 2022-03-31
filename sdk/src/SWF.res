type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-swf") @new external createClient: unit => awsServiceClient = "SWFClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workflowRunIdOptional = string
type workflowRunId = string
type workflowId = string
type workflowExecutionTimeoutType = [@as("START_TO_CLOSE") #START_TO_CLOSE]
type workflowExecutionTerminatedCause = [
  | @as("OPERATOR_INITIATED") #OPERATOR_INITIATED
  | @as("EVENT_LIMIT_EXCEEDED") #EVENT_LIMIT_EXCEEDED
  | @as("CHILD_POLICY_APPLIED") #CHILD_POLICY_APPLIED
]
type workflowExecutionCancelRequestedCause = [@as("CHILD_POLICY_APPLIED") #CHILD_POLICY_APPLIED]
type versionOptional = string
type version = string
type truncated = bool
type timestamp_ = Js.Date.t
type timerId = string
type terminateReason = string
type taskToken = string
type taskPriority = string
type tag = string
type startTimerFailedCause = [
  | @as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED
  | @as("TIMER_CREATION_RATE_EXCEEDED") #TIMER_CREATION_RATE_EXCEEDED
  | @as("OPEN_TIMERS_LIMIT_EXCEEDED") #OPEN_TIMERS_LIMIT_EXCEEDED
  | @as("TIMER_ID_ALREADY_IN_USE") #TIMER_ID_ALREADY_IN_USE
]
type startLambdaFunctionFailedCause = [@as("ASSUME_ROLE_FAILED") #ASSUME_ROLE_FAILED]
type startChildWorkflowExecutionFailedCause = [
  | @as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED
  | @as("DEFAULT_CHILD_POLICY_UNDEFINED") #DEFAULT_CHILD_POLICY_UNDEFINED
  | @as("DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED")
  #DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED
  | @as("DEFAULT_TASK_LIST_UNDEFINED") #DEFAULT_TASK_LIST_UNDEFINED
  | @as("DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED")
  #DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED
  | @as("WORKFLOW_ALREADY_RUNNING") #WORKFLOW_ALREADY_RUNNING
  | @as("CHILD_CREATION_RATE_EXCEEDED") #CHILD_CREATION_RATE_EXCEEDED
  | @as("OPEN_WORKFLOWS_LIMIT_EXCEEDED") #OPEN_WORKFLOWS_LIMIT_EXCEEDED
  | @as("OPEN_CHILDREN_LIMIT_EXCEEDED") #OPEN_CHILDREN_LIMIT_EXCEEDED
  | @as("WORKFLOW_TYPE_DEPRECATED") #WORKFLOW_TYPE_DEPRECATED
  | @as("WORKFLOW_TYPE_DOES_NOT_EXIST") #WORKFLOW_TYPE_DOES_NOT_EXIST
]
type signalName = string
type signalExternalWorkflowExecutionFailedCause = [
  | @as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED
  | @as("SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED")
  #SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED
  | @as("UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION") #UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION
]
type scheduleLambdaFunctionFailedCause = [
  | @as("LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION") #LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION
  | @as("LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED") #LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED
  | @as("OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED") #OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED
  | @as("ID_ALREADY_IN_USE") #ID_ALREADY_IN_USE
]
type scheduleActivityTaskFailedCause = [
  | @as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED
  | @as("DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED") #DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED
  | @as("DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED
  | @as("DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED") #DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED
  | @as("DEFAULT_TASK_LIST_UNDEFINED") #DEFAULT_TASK_LIST_UNDEFINED
  | @as("DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED") #DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED
  | @as("ACTIVITY_CREATION_RATE_EXCEEDED") #ACTIVITY_CREATION_RATE_EXCEEDED
  | @as("OPEN_ACTIVITIES_LIMIT_EXCEEDED") #OPEN_ACTIVITIES_LIMIT_EXCEEDED
  | @as("ACTIVITY_ID_ALREADY_IN_USE") #ACTIVITY_ID_ALREADY_IN_USE
  | @as("ACTIVITY_TYPE_DOES_NOT_EXIST") #ACTIVITY_TYPE_DOES_NOT_EXIST
  | @as("ACTIVITY_TYPE_DEPRECATED") #ACTIVITY_TYPE_DEPRECATED
]
type reverseOrder = bool
type resourceTagValue = string
type resourceTagKey = string
type requestCancelExternalWorkflowExecutionFailedCause = [
  | @as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED
  | @as("REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED")
  #REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED
  | @as("UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION") #UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION
]
type requestCancelActivityTaskFailedCause = [
  | @as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED
  | @as("ACTIVITY_ID_UNKNOWN") #ACTIVITY_ID_UNKNOWN
]
type registrationStatus = [@as("DEPRECATED") #DEPRECATED | @as("REGISTERED") #REGISTERED]
type recordMarkerFailedCause = [@as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED]
type pageToken = string
type pageSize = int
type openDecisionTasksCount = int
type name = string
type markerName = string
type limitedData = string
type lambdaFunctionTimeoutType = [@as("START_TO_CLOSE") #START_TO_CLOSE]
type identity = string
type functionName = string
type functionInput = string
type functionId = string
type failureReason = string
type failWorkflowExecutionFailedCause = [
  | @as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED
  | @as("UNHANDLED_DECISION") #UNHANDLED_DECISION
]
type executionStatus = [@as("CLOSED") #CLOSED | @as("OPEN") #OPEN]
type eventType = [
  | @as("StartLambdaFunctionFailed") #StartLambdaFunctionFailed
  | @as("ScheduleLambdaFunctionFailed") #ScheduleLambdaFunctionFailed
  | @as("LambdaFunctionTimedOut") #LambdaFunctionTimedOut
  | @as("LambdaFunctionFailed") #LambdaFunctionFailed
  | @as("LambdaFunctionCompleted") #LambdaFunctionCompleted
  | @as("LambdaFunctionStarted") #LambdaFunctionStarted
  | @as("LambdaFunctionScheduled") #LambdaFunctionScheduled
  | @as("ExternalWorkflowExecutionCancelRequested") #ExternalWorkflowExecutionCancelRequested
  | @as("RequestCancelExternalWorkflowExecutionFailed")
  #RequestCancelExternalWorkflowExecutionFailed
  | @as("RequestCancelExternalWorkflowExecutionInitiated")
  #RequestCancelExternalWorkflowExecutionInitiated
  | @as("ExternalWorkflowExecutionSignaled") #ExternalWorkflowExecutionSignaled
  | @as("SignalExternalWorkflowExecutionFailed") #SignalExternalWorkflowExecutionFailed
  | @as("SignalExternalWorkflowExecutionInitiated") #SignalExternalWorkflowExecutionInitiated
  | @as("ChildWorkflowExecutionTerminated") #ChildWorkflowExecutionTerminated
  | @as("ChildWorkflowExecutionCanceled") #ChildWorkflowExecutionCanceled
  | @as("ChildWorkflowExecutionTimedOut") #ChildWorkflowExecutionTimedOut
  | @as("ChildWorkflowExecutionFailed") #ChildWorkflowExecutionFailed
  | @as("ChildWorkflowExecutionCompleted") #ChildWorkflowExecutionCompleted
  | @as("ChildWorkflowExecutionStarted") #ChildWorkflowExecutionStarted
  | @as("StartChildWorkflowExecutionFailed") #StartChildWorkflowExecutionFailed
  | @as("StartChildWorkflowExecutionInitiated") #StartChildWorkflowExecutionInitiated
  | @as("CancelTimerFailed") #CancelTimerFailed
  | @as("TimerCanceled") #TimerCanceled
  | @as("TimerFired") #TimerFired
  | @as("StartTimerFailed") #StartTimerFailed
  | @as("TimerStarted") #TimerStarted
  | @as("RecordMarkerFailed") #RecordMarkerFailed
  | @as("MarkerRecorded") #MarkerRecorded
  | @as("WorkflowExecutionSignaled") #WorkflowExecutionSignaled
  | @as("RequestCancelActivityTaskFailed") #RequestCancelActivityTaskFailed
  | @as("ActivityTaskCancelRequested") #ActivityTaskCancelRequested
  | @as("ActivityTaskCanceled") #ActivityTaskCanceled
  | @as("ActivityTaskTimedOut") #ActivityTaskTimedOut
  | @as("ActivityTaskFailed") #ActivityTaskFailed
  | @as("ActivityTaskCompleted") #ActivityTaskCompleted
  | @as("ActivityTaskStarted") #ActivityTaskStarted
  | @as("ScheduleActivityTaskFailed") #ScheduleActivityTaskFailed
  | @as("ActivityTaskScheduled") #ActivityTaskScheduled
  | @as("DecisionTaskTimedOut") #DecisionTaskTimedOut
  | @as("DecisionTaskCompleted") #DecisionTaskCompleted
  | @as("DecisionTaskStarted") #DecisionTaskStarted
  | @as("DecisionTaskScheduled") #DecisionTaskScheduled
  | @as("WorkflowExecutionTerminated") #WorkflowExecutionTerminated
  | @as("ContinueAsNewWorkflowExecutionFailed") #ContinueAsNewWorkflowExecutionFailed
  | @as("WorkflowExecutionContinuedAsNew") #WorkflowExecutionContinuedAsNew
  | @as("CancelWorkflowExecutionFailed") #CancelWorkflowExecutionFailed
  | @as("WorkflowExecutionCanceled") #WorkflowExecutionCanceled
  | @as("WorkflowExecutionTimedOut") #WorkflowExecutionTimedOut
  | @as("FailWorkflowExecutionFailed") #FailWorkflowExecutionFailed
  | @as("WorkflowExecutionFailed") #WorkflowExecutionFailed
  | @as("CompleteWorkflowExecutionFailed") #CompleteWorkflowExecutionFailed
  | @as("WorkflowExecutionCompleted") #WorkflowExecutionCompleted
  | @as("WorkflowExecutionCancelRequested") #WorkflowExecutionCancelRequested
  | @as("WorkflowExecutionStarted") #WorkflowExecutionStarted
]
type eventId = float
type errorMessage = string
type durationInSecondsOptional = string
type durationInSeconds = string
type durationInDays = string
type domainName = string
type description = string
type decisionType = [
  | @as("ScheduleLambdaFunction") #ScheduleLambdaFunction
  | @as("StartChildWorkflowExecution") #StartChildWorkflowExecution
  | @as("RequestCancelExternalWorkflowExecution") #RequestCancelExternalWorkflowExecution
  | @as("SignalExternalWorkflowExecution") #SignalExternalWorkflowExecution
  | @as("CancelTimer") #CancelTimer
  | @as("StartTimer") #StartTimer
  | @as("RecordMarker") #RecordMarker
  | @as("ContinueAsNewWorkflowExecution") #ContinueAsNewWorkflowExecution
  | @as("CancelWorkflowExecution") #CancelWorkflowExecution
  | @as("FailWorkflowExecution") #FailWorkflowExecution
  | @as("CompleteWorkflowExecution") #CompleteWorkflowExecution
  | @as("RequestCancelActivityTask") #RequestCancelActivityTask
  | @as("ScheduleActivityTask") #ScheduleActivityTask
]
type decisionTaskTimeoutType = [@as("START_TO_CLOSE") #START_TO_CLOSE]
type data = string
type count = int
type continueAsNewWorkflowExecutionFailedCause = [
  | @as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED
  | @as("CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED")
  #CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED
  | @as("DEFAULT_CHILD_POLICY_UNDEFINED") #DEFAULT_CHILD_POLICY_UNDEFINED
  | @as("DEFAULT_TASK_LIST_UNDEFINED") #DEFAULT_TASK_LIST_UNDEFINED
  | @as("DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED")
  #DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED
  | @as("DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED")
  #DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED
  | @as("WORKFLOW_TYPE_DOES_NOT_EXIST") #WORKFLOW_TYPE_DOES_NOT_EXIST
  | @as("WORKFLOW_TYPE_DEPRECATED") #WORKFLOW_TYPE_DEPRECATED
  | @as("UNHANDLED_DECISION") #UNHANDLED_DECISION
]
type completeWorkflowExecutionFailedCause = [
  | @as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED
  | @as("UNHANDLED_DECISION") #UNHANDLED_DECISION
]
type closeStatus = [
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("CONTINUED_AS_NEW") #CONTINUED_AS_NEW
  | @as("TERMINATED") #TERMINATED
  | @as("CANCELED") #CANCELED
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
]
type childPolicy = [
  | @as("ABANDON") #ABANDON
  | @as("REQUEST_CANCEL") #REQUEST_CANCEL
  | @as("TERMINATE") #TERMINATE
]
type causeMessage = string
type canceled = bool
type cancelWorkflowExecutionFailedCause = [
  | @as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED
  | @as("UNHANDLED_DECISION") #UNHANDLED_DECISION
]
type cancelTimerFailedCause = [
  | @as("OPERATION_NOT_PERMITTED") #OPERATION_NOT_PERMITTED
  | @as("TIMER_ID_UNKNOWN") #TIMER_ID_UNKNOWN
]
type arn = string
type activityTaskTimeoutType = [
  | @as("HEARTBEAT") #HEARTBEAT
  | @as("SCHEDULE_TO_CLOSE") #SCHEDULE_TO_CLOSE
  | @as("SCHEDULE_TO_START") #SCHEDULE_TO_START
  | @as("START_TO_CLOSE") #START_TO_CLOSE
]
type activityId = string
@ocaml.doc(
  "<p>Used to filter workflow execution query results by type. Each parameter, if specified, defines a rule that must be satisfied by each returned result.</p>"
)
type workflowTypeFilter = {
  @ocaml.doc("<p>Version of the workflow type.</p>") version: option<versionOptional>,
  @ocaml.doc("<p>
         Name of the workflow type.</p>")
  name: name,
}
@ocaml.doc("<p>Represents a workflow type.</p>")
type workflowType = {
  @ocaml.doc("<p>
         The version of the workflow type.</p>
         <note>
            <p>The combination of workflow type name and version must be unique with in a domain.</p>
         </note>")
  version: version,
  @ocaml.doc("<p>
         The name of the workflow type.</p>
         <note>
            <p>The combination of workflow type name and version must be unique with in a domain.</p>
         </note>")
  name: name,
}
@ocaml.doc("<p>Provides the details of the <code>WorkflowExecutionTimedOut</code> event.</p>")
type workflowExecutionTimedOutEventAttributes = {
  @ocaml.doc("<p>The policy used for the child workflow executions of this workflow execution.</p>
         <p>The supported child policies are:</p>
         <ul>
            <li>
               <p>
                  <code>TERMINATE</code> – The child executions are terminated.</p>
            </li>
            <li>
               <p>
                  <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
  execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
  to take appropriate actions when it receives an execution history with this event.</p>
            </li>
            <li>
               <p>
                  <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
            </li>
         </ul>")
  childPolicy: childPolicy,
  @ocaml.doc("<p>The type of timeout that caused this event.</p>")
  timeoutType: workflowExecutionTimeoutType,
}
@ocaml.doc("<p>Provides the details of the <code>WorkflowExecutionTerminated</code> event.</p>")
type workflowExecutionTerminatedEventAttributes = {
  @ocaml.doc(
    "<p>If set, indicates that the workflow execution was automatically terminated, and specifies the cause. This happens if the parent workflow execution times out or is terminated and the child policy is set to terminate child executions.</p>"
  )
  cause: option<workflowExecutionTerminatedCause>,
  @ocaml.doc("<p>The policy used for the child workflow executions of this workflow execution.</p>
         <p>The supported child policies are:</p>
         <ul>
            <li>
               <p>
                  <code>TERMINATE</code> – The child executions are terminated.</p>
            </li>
            <li>
               <p>
                  <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
  execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
  to take appropriate actions when it receives an execution history with this event.</p>
            </li>
            <li>
               <p>
                  <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
            </li>
         </ul>")
  childPolicy: childPolicy,
  @ocaml.doc("<p>The details provided for the termination.</p>") details: option<data>,
  @ocaml.doc("<p>The reason provided for the termination.</p>") reason: option<terminateReason>,
}
@ocaml.doc(
  "<p>Contains the counts of open tasks, child workflow executions and timers for a workflow execution.</p>"
)
type workflowExecutionOpenCounts = {
  @ocaml.doc("<p>The count of Lambda tasks whose status is <code>OPEN</code>.</p>")
  openLambdaFunctions: option<count>,
  @ocaml.doc("<p>The count of child workflow executions whose status is <code>OPEN</code>.</p>")
  openChildWorkflowExecutions: count,
  @ocaml.doc(
    "<p>The count of timers started by this workflow execution that have not fired yet.</p>"
  )
  openTimers: count,
  @ocaml.doc(
    "<p>The count of decision tasks whose status is OPEN. A workflow execution can have at most one open decision task.</p>"
  )
  openDecisionTasks: openDecisionTasksCount,
  @ocaml.doc("<p>The count of activity tasks whose status is <code>OPEN</code>.</p>")
  openActivityTasks: count,
}
@ocaml.doc(
  "<p>Used to filter the workflow executions in visibility APIs by their <code>workflowId</code>.</p>"
)
type workflowExecutionFilter = {
  @ocaml.doc("<p>The workflowId to pass of match the criteria of this filter.</p>")
  workflowId: workflowId,
}
@ocaml.doc("<p>Provides the details of the <code>WorkflowExecutionFailed</code> event.</p>")
type workflowExecutionFailedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>FailWorkflowExecution</code> decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The details of the failure.</p>") details: option<data>,
  @ocaml.doc("<p>The descriptive reason provided for the failure.</p>")
  reason: option<failureReason>,
}
@ocaml.doc("<p>Provides the details of the <code>WorkflowExecutionCompleted</code> event.</p>")
type workflowExecutionCompletedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>CompleteWorkflowExecution</code> decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The result produced by the workflow execution upon successful completion.</p>")
  result: option<data>,
}
@ocaml.doc("<p>Provides the details of the <code>WorkflowExecutionCanceled</code> event.</p>")
type workflowExecutionCanceledEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>CancelWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The details of the cancellation.</p>") details: option<data>,
}
@ocaml.doc("<p>Represents a workflow execution.</p>")
type workflowExecution = {
  @ocaml.doc("<p>A system-generated unique identifier for the workflow execution.</p>")
  runId: workflowRunId,
  @ocaml.doc("<p>The user defined identifier associated with the workflow execution.</p>")
  workflowId: workflowId,
}
@ocaml.doc("<p>Provides the details of the <code>TimerStarted</code> event.</p>")
type timerStartedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>StartTimer</code> decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The duration of time after which the timer fires.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>.</p>")
  startToFireTimeout: durationInSeconds,
  @ocaml.doc(
    "<p>Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>"
  )
  control: option<data>,
  @ocaml.doc("<p>The unique ID of the timer that was started.</p>") timerId: timerId,
}
@ocaml.doc("<p>Provides the details of the <code>TimerFired</code> event.</p>")
type timerFiredEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>TimerStarted</code> event that was recorded when this timer was started.
      This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  startedEventId: eventId,
  @ocaml.doc("<p>The unique ID of the timer that fired.</p>") timerId: timerId,
}
@ocaml.doc("<p>
      Provides the details of the <code>TimerCanceled</code> event.
   </p>")
type timerCanceledEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>CancelTimer</code> decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>TimerStarted</code> event that was recorded when this timer was started.
      This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  startedEventId: eventId,
  @ocaml.doc("<p>The unique ID of the timer that was canceled.</p>") timerId: timerId,
}
@ocaml.doc("<p>Represents a task list.</p>")
type taskList = {@ocaml.doc("<p>The name of the task list.</p>") name: name}
type tagList_ = array<tag>
@ocaml.doc("<p>Used to filter the workflow executions in visibility APIs based on a tag.</p>")
type tagFilter = {
  @ocaml.doc("<p>
         Specifies the tag that must be associated with the execution for it to meet the filter
      criteria.</p>
         <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>")
  tag: tag,
}
@ocaml.doc("<p>Provides the details of the <code>StartTimerFailed</code> event.</p>")
type startTimerFailedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>StartTimer</code> decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
  because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: startTimerFailedCause,
  @ocaml.doc("<p>The timerId provided in the <code>StartTimer</code> decision that failed.</p>")
  timerId: timerId,
}
@ocaml.doc("<p>Provides the details of the <code>StartTimer</code> decision.</p>
         <p>
            <b>Access Control</b>
         </p>
         <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
         <ul>
            <li>
               <p>Use a <code>Resource</code> element with the domain name to limit the action to only
  specified domains.</p>
            </li>
            <li>
               <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
            </li>
            <li>
               <p>You cannot use an IAM policy to constrain this action's parameters.</p>
            </li>
         </ul>
         <p>If the caller doesn't have sufficient permissions to invoke the action, or the
  parameter values fall outside the specified constraints, the action fails. The associated event attribute's
          <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
          <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
type startTimerDecisionAttributes = {
  @ocaml.doc("<p>
         The duration to wait before firing the timer.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>.</p>")
  startToFireTimeout: durationInSeconds,
  @ocaml.doc(
    "<p>The data attached to the event that can be used by the decider in subsequent workflow tasks.</p>"
  )
  control: option<data>,
  @ocaml.doc("<p>
         The unique ID of the timer.</p>
         <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code>
          (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>")
  timerId: timerId,
}
@ocaml.doc("<p>Provides the details of the <code>StartLambdaFunctionFailed</code> event. It isn't set
      for other event types.</p>")
type startLambdaFunctionFailedEventAttributes = {
  @ocaml.doc("<p>A description that can help diagnose the cause of the fault.</p>")
  message: option<causeMessage>,
  @ocaml.doc("<p>The cause of the failure. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision
        failed because the IAM role attached to the execution lacked sufficient permissions. For
        details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html\">Lambda Tasks</a> in the
          <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: option<startLambdaFunctionFailedCause>,
  @ocaml.doc("<p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this
      activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>")
  scheduledEventId: option<eventId>,
}
@ocaml.doc(
  "<p>Provides the details of the <code>SignalExternalWorkflowExecutionInitiated</code> event.</p>"
)
type signalExternalWorkflowExecutionInitiatedEventAttributes = {
  @ocaml.doc(
    "<p>Data attached to the event that can be used by the decider in subsequent decision tasks.</p>"
  )
  control: option<data>,
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>SignalExternalWorkflowExecution</code> decision for this signal. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The input provided to the signal.</p>") input: option<data>,
  @ocaml.doc("<p>The name of the signal.</p>") signalName: signalName,
  @ocaml.doc(
    "<p>The <code>runId</code> of the external workflow execution to send the signal to.</p>"
  )
  runId: option<workflowRunIdOptional>,
  @ocaml.doc("<p>The <code>workflowId</code> of the external workflow execution.</p>")
  workflowId: workflowId,
}
@ocaml.doc(
  "<p>Provides the details of the <code>SignalExternalWorkflowExecutionFailed</code> event.</p>"
)
type signalExternalWorkflowExecutionFailedEventAttributes = {
  @ocaml.doc("<p>The data attached to the event that the decider can use in subsequent workflow tasks.
      This data isn't sent to the workflow execution.</p>")
  control: option<data>,
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>SignalExternalWorkflowExecution</code> decision for this signal. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the
      <code>SignalExternalWorkflowExecution</code> decision to request this signal. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  initiatedEventId: eventId,
  @ocaml.doc("<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
  because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: signalExternalWorkflowExecutionFailedCause,
  @ocaml.doc(
    "<p>The <code>runId</code> of the external workflow execution that the signal was being delivered to.</p>"
  )
  runId: option<workflowRunIdOptional>,
  @ocaml.doc(
    "<p>The <code>workflowId</code> of the external workflow execution that the signal was being delivered to.</p>"
  )
  workflowId: workflowId,
}
@ocaml.doc("<p>Provides the details of the <code>SignalExternalWorkflowExecution</code> decision.</p>
         <p>
            <b>Access Control</b>
         </p>
         <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
         <ul>
            <li>
               <p>Use a <code>Resource</code> element with the domain name to limit the action to only
  specified domains.</p>
            </li>
            <li>
               <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
            </li>
            <li>
               <p>You cannot use an IAM policy to constrain this action's parameters.</p>
            </li>
         </ul>
         <p>If the caller doesn't have sufficient permissions to invoke the action, or the
  parameter values fall outside the specified constraints, the action fails. The associated event attribute's
          <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
          <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
type signalExternalWorkflowExecutionDecisionAttributes = {
  @ocaml.doc(
    "<p>The data attached to the event that can be used by the decider in subsequent decision tasks.</p>"
  )
  control: option<data>,
  @ocaml.doc("<p>
         The input data to be provided with the signal. The target workflow execution uses the signal
      name and input data to process the signal.</p>")
  input: option<data>,
  @ocaml.doc("<p>
         The name of the signal.The target workflow execution uses the signal name and input to
      process the signal.</p>")
  signalName: signalName,
  @ocaml.doc("<p>The <code>runId</code> of the workflow execution to be signaled.</p>")
  runId: option<workflowRunIdOptional>,
  @ocaml.doc("<p>
         The <code>workflowId</code> of the workflow execution to be signaled.</p>")
  workflowId: workflowId,
}
@ocaml.doc("<p>Provides the details of the <code>ScheduleLambdaFunctionFailed</code> event. It isn't
      set for other event types.</p>")
type scheduleLambdaFunctionFailedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>LambdaFunctionCompleted</code> event corresponding to the decision
      that resulted in scheduling this Lambda task. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The cause of the failure. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision
        failed because it lacked sufficient permissions. For details and example IAM policies, see
          <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using
          IAM to Manage Access to Amazon SWF Workflows</a> in the
          <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: scheduleLambdaFunctionFailedCause,
  @ocaml.doc("<p>The name of the Lambda function.</p>") name: functionName,
  @ocaml.doc("<p>The ID provided in the <code>ScheduleLambdaFunction</code> decision that failed.
    </p>")
  id: functionId,
}
@ocaml.doc("<p>Decision attributes specified in <code>scheduleLambdaFunctionDecisionAttributes</code> within the list of
      decisions <code>decisions</code> passed to <a>RespondDecisionTaskCompleted</a>.</p>")
type scheduleLambdaFunctionDecisionAttributes = {
  @ocaml.doc(
    "<p>The timeout value, in seconds, after which the Lambda function is considered to be failed once it has started. This can be any integer from 1-300 (1s-5m). If no value is supplied, than a default value of 300s is assumed.</p>"
  )
  startToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>The optional input data to be supplied to the Lambda function.</p>")
  input: option<functionInput>,
  @ocaml.doc("<p>The data attached to the event that the decider can use in subsequent workflow tasks.
      This data isn't sent to the Lambda task.</p>")
  control: option<data>,
  @ocaml.doc("<p>The name, or ARN, of the Lambda function to schedule.</p>") name: functionName,
  @ocaml.doc("<p>A string that identifies the Lambda function execution in the event history.</p>")
  id: functionId,
}
type resourceTagKeyList = array<resourceTagKey>
@ocaml.doc("<p>Tags are key-value pairs that can be associated with Amazon SWF state machines and
      activities.</p> 
         <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>")
type resourceTag = {
  @ocaml.doc("<p>The value of a tag.</p>") value: option<resourceTagValue>,
  @ocaml.doc("<p>The key of a tag.</p>") key: resourceTagKey,
}
@ocaml.doc(
  "<p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event.</p>"
)
type requestCancelExternalWorkflowExecutionInitiatedEventAttributes = {
  @ocaml.doc(
    "<p>Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>"
  )
  control: option<data>,
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>RequestCancelExternalWorkflowExecution</code> decision for this cancellation request.
      This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The <code>runId</code> of the external workflow execution to be canceled.</p>")
  runId: option<workflowRunIdOptional>,
  @ocaml.doc(
    "<p>The <code>workflowId</code> of the external workflow execution to be canceled.</p>"
  )
  workflowId: workflowId,
}
@ocaml.doc(
  "<p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionFailed</code> event.</p>"
)
type requestCancelExternalWorkflowExecutionFailedEventAttributes = {
  @ocaml.doc("<p>The data attached to the event that the decider can use in subsequent workflow tasks.
      This data isn't sent to the workflow execution.</p>")
  control: option<data>,
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>RequestCancelExternalWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the
      <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this external workflow execution. This
      information can be useful for diagnosing problems by tracing back the chain of events leading up to this
      event.</p>")
  initiatedEventId: eventId,
  @ocaml.doc("<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
  because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: requestCancelExternalWorkflowExecutionFailedCause,
  @ocaml.doc("<p>The <code>runId</code> of the external workflow execution.</p>")
  runId: option<workflowRunIdOptional>,
  @ocaml.doc(
    "<p>The <code>workflowId</code> of the external workflow to which the cancel request was to be delivered.</p>"
  )
  workflowId: workflowId,
}
@ocaml.doc("<p>Provides the details of the <code>RequestCancelExternalWorkflowExecution</code> decision.</p>
         <p>
            <b>Access Control</b>
         </p>
         <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
         <ul>
            <li>
               <p>Use a <code>Resource</code> element with the domain name to limit the action to only
  specified domains.</p>
            </li>
            <li>
               <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
            </li>
            <li>
               <p>You cannot use an IAM policy to constrain this action's parameters.</p>
            </li>
         </ul>
         <p>If the caller doesn't have sufficient permissions to invoke the action, or the
  parameter values fall outside the specified constraints, the action fails. The associated event attribute's
          <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
          <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
type requestCancelExternalWorkflowExecutionDecisionAttributes = {
  @ocaml.doc(
    "<p>The data attached to the event that can be used by the decider in subsequent workflow tasks.</p>"
  )
  control: option<data>,
  @ocaml.doc("<p>The <code>runId</code> of the external workflow execution to cancel.</p>")
  runId: option<workflowRunIdOptional>,
  @ocaml.doc("<p>
         The <code>workflowId</code> of the external workflow execution to cancel.</p>")
  workflowId: workflowId,
}
@ocaml.doc("<p>Provides the details of the <code>RequestCancelActivityTaskFailed</code> event.</p>")
type requestCancelActivityTaskFailedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>RequestCancelActivityTask</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
  because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: requestCancelActivityTaskFailedCause,
  @ocaml.doc(
    "<p>The activityId provided in the <code>RequestCancelActivityTask</code> decision that failed.</p>"
  )
  activityId: activityId,
}
@ocaml.doc("<p>Provides the details of the <code>RequestCancelActivityTask</code> decision.</p>
         <p>
            <b>Access Control</b>
         </p>
         <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
         <ul>
            <li>
               <p>Use a <code>Resource</code> element with the domain name to limit the action to only
  specified domains.</p>
            </li>
            <li>
               <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
            </li>
            <li>
               <p>You cannot use an IAM policy to constrain this action's parameters.</p>
            </li>
         </ul>
         <p>If the caller doesn't have sufficient permissions to invoke the action, or the
  parameter values fall outside the specified constraints, the action fails. The associated event attribute's
          <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
  <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>")
type requestCancelActivityTaskDecisionAttributes = {
  @ocaml.doc("<p>The <code>activityId</code> of the activity task to be canceled.</p>")
  activityId: activityId,
}
@ocaml.doc("<p>Provides the details of the <code>RecordMarkerFailed</code> event.</p>")
type recordMarkerFailedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>RecordMarkerFailed</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
  because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: recordMarkerFailedCause,
  @ocaml.doc("<p>The marker's name.</p>") markerName: markerName,
}
@ocaml.doc("<p>Provides the details of the <code>RecordMarker</code> decision.</p>
         <p>
            <b>Access Control</b>
         </p>
         <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
         <ul>
            <li>
               <p>Use a <code>Resource</code> element with the domain name to limit the action to only
  specified domains.</p>
            </li>
            <li>
               <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
            </li>
            <li>
               <p>You cannot use an IAM policy to constrain this action's parameters.</p>
            </li>
         </ul>
         <p>If the caller doesn't have sufficient permissions to invoke the action, or the
  parameter values fall outside the specified constraints, the action fails. The associated event attribute's
          <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
          <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
type recordMarkerDecisionAttributes = {
  @ocaml.doc("<p>
         The details of the marker.</p>")
  details: option<data>,
  @ocaml.doc("<p>
         The name of the marker.</p>")
  markerName: markerName,
}
@ocaml.doc("<p>Provides the details of the <code>MarkerRecorded</code> event.</p>")
type markerRecordedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>RecordMarker</code> decision that requested this marker. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The details of the marker.</p>") details: option<data>,
  @ocaml.doc("<p>The name of the marker.</p>") markerName: markerName,
}
@ocaml.doc("<p>Provides details of the <code>LambdaFunctionTimedOut</code> event.</p>")
type lambdaFunctionTimedOutEventAttributes = {
  @ocaml.doc("<p>The type of the timeout that caused this event.</p>")
  timeoutType: option<lambdaFunctionTimeoutType>,
  @ocaml.doc("<p>The ID of the <code>ActivityTaskStarted</code> event that was recorded when this
      activity task started. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>")
  startedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this
      activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>")
  scheduledEventId: eventId,
}
@ocaml.doc("<p>Provides the details of the <code>LambdaFunctionStarted</code> event. It isn't set for
      other event types.</p>")
type lambdaFunctionStartedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this
      activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>")
  scheduledEventId: eventId,
}
@ocaml.doc("<p>Provides the details of the <code>LambdaFunctionScheduled</code> event. It isn't set
      for other event types.</p>")
type lambdaFunctionScheduledEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>LambdaFunctionCompleted</code> event corresponding to the decision
      that resulted in scheduling this activity task. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The maximum amount of time a worker can take to process the Lambda task.</p>")
  startToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>The input provided to the Lambda task.</p>") input: option<functionInput>,
  @ocaml.doc("<p>Data attached to the event that the decider can use in subsequent workflow tasks. This
      data isn't sent to the Lambda task.</p>")
  control: option<data>,
  @ocaml.doc("<p>The name of the Lambda function.</p>") name: functionName,
  @ocaml.doc("<p>The unique ID of the Lambda task.</p>") id: functionId,
}
@ocaml.doc("<p>Provides the details of the <code>LambdaFunctionFailed</code> event. It isn't set for
      other event types.</p>")
type lambdaFunctionFailedEventAttributes = {
  @ocaml.doc("<p>The details of the failure.</p>") details: option<data>,
  @ocaml.doc("<p>The reason provided for the failure.</p>") reason: option<failureReason>,
  @ocaml.doc("<p>The ID of the <code>LambdaFunctionStarted</code> event recorded when this activity task
      started. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>")
  startedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this
      activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>")
  scheduledEventId: eventId,
}
@ocaml.doc("<p>Provides the details of the <code>LambdaFunctionCompleted</code> event. It isn't set
      for other event types.</p>")
type lambdaFunctionCompletedEventAttributes = {
  @ocaml.doc("<p>The results of the Lambda task.</p>") result: option<data>,
  @ocaml.doc("<p>The ID of the <code>LambdaFunctionStarted</code> event recorded when this activity task
      started. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>")
  startedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this
      Lambda task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>")
  scheduledEventId: eventId,
}
@ocaml.doc("<p>Provides the details of the <code>FailWorkflowExecutionFailed</code> event.</p>")
type failWorkflowExecutionFailedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>FailWorkflowExecution</code> decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
  because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: failWorkflowExecutionFailedCause,
}
@ocaml.doc("<p>Provides the details of the <code>FailWorkflowExecution</code> decision.</p>
         <p>
            <b>Access Control</b>
         </p>
         <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
         <ul>
            <li>
               <p>Use a <code>Resource</code> element with the domain name to limit the action to only
  specified domains.</p>
            </li>
            <li>
               <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
            </li>
            <li>
               <p>You cannot use an IAM policy to constrain this action's parameters.</p>
            </li>
         </ul>
         <p>If the caller doesn't have sufficient permissions to invoke the action, or the
  parameter values fall outside the specified constraints, the action fails. The associated event attribute's
          <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
  <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>")
type failWorkflowExecutionDecisionAttributes = {
  @ocaml.doc("<p>
         Details of the failure.</p>")
  details: option<data>,
  @ocaml.doc("<p>A descriptive reason for the failure that may help in diagnostics.</p>")
  reason: option<failureReason>,
}
@ocaml.doc("<p>Used to filter the workflow executions in visibility APIs by various time-based rules. Each parameter, if
      specified, defines a rule that must be satisfied by each returned query result. The parameter values are in the <a href=\"https://en.wikipedia.org/wiki/Unix_time\">Unix Time format</a>. For example:
      <code>\"oldestDate\": 1325376070.</code>
         </p>")
type executionTimeFilter = {
  @ocaml.doc("<p>Specifies the latest start or close date and time to return.</p>")
  latestDate: option<timestamp_>,
  @ocaml.doc("<p>Specifies the oldest start or close date and time to return.</p>")
  oldestDate: timestamp_,
}
@ocaml.doc("<p>Contains general information about a domain.</p>")
type domainInfo = {
  @ocaml.doc("<p>The ARN of the domain.</p>") arn: option<arn>,
  @ocaml.doc("<p>The description of the domain provided through <a>RegisterDomain</a>.</p>")
  description: option<description>,
  @ocaml.doc("<p>The status of the domain:</p>
         <ul>
            <li>
               <p>
                  <code>REGISTERED</code> – The domain is properly registered and available. You can use this domain
         for registering types and creating new workflow executions.
      </p>
            </li>
            <li>
               <p>
                  <code>DEPRECATED</code> – The domain was deprecated using <a>DeprecateDomain</a>, but is
         still in use. You should not create new workflow executions in this domain.
      </p>
            </li>
         </ul>")
  status: registrationStatus,
  @ocaml.doc("<p>The name of the domain. This name is unique within the account.</p>")
  name: domainName,
}
@ocaml.doc("<p>Contains the configuration settings of a domain.</p>")
type domainConfiguration = {
  @ocaml.doc("<p>The retention period for workflow executions in this domain.</p>")
  workflowExecutionRetentionPeriodInDays: durationInDays,
}
@ocaml.doc("<p>Provides the details of the <code>DecisionTaskTimedOut</code> event.</p>")
type decisionTaskTimedOutEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskStarted</code> event recorded when this decision task was started. This
      information can be useful for diagnosing problems by tracing back the chain of events leading up to this
      event.</p>")
  startedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled.
      This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  scheduledEventId: eventId,
  @ocaml.doc("<p>The type of timeout that expired before the decision task could be completed.</p>")
  timeoutType: decisionTaskTimeoutType,
}
@ocaml.doc("<p>Provides the details of the <code>DecisionTaskStarted</code> event.</p>")
type decisionTaskStartedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled.
      This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  scheduledEventId: eventId,
  @ocaml.doc(
    "<p>Identity of the decider making the request. This enables diagnostic tracing when problems arise. The form of this identity is user defined.</p>"
  )
  identity: option<identity>,
}
@ocaml.doc("<p>Provides the details of the <code>DecisionTaskCompleted</code> event.</p>")
type decisionTaskCompletedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskStarted</code> event recorded when this decision task was started.
      This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  startedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled.
      This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  scheduledEventId: eventId,
  @ocaml.doc("<p>User defined context for the workflow execution.</p>")
  executionContext: option<data>,
}
@ocaml.doc(
  "<p>Provides the details of the <code>ContinueAsNewWorkflowExecutionFailed</code> event.</p>"
)
type continueAsNewWorkflowExecutionFailedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>ContinueAsNewWorkflowExecution</code> decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
        because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: continueAsNewWorkflowExecutionFailedCause,
}
@ocaml.doc("<p>Provides the details of the <code>CompleteWorkflowExecutionFailed</code> event.</p>")
type completeWorkflowExecutionFailedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>CompleteWorkflowExecution</code> decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
        because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: completeWorkflowExecutionFailedCause,
}
@ocaml.doc("<p>Provides the details of the <code>CompleteWorkflowExecution</code> decision.</p>
         <p>
            <b>Access Control</b>
         </p>
         <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
         <ul>
            <li>
               <p>Use a <code>Resource</code> element with the domain name to limit the action to only
  specified domains.</p>
            </li>
            <li>
               <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
            </li>
            <li>
               <p>You cannot use an IAM policy to constrain this action's parameters.</p>
            </li>
         </ul>
         <p>If the caller doesn't have sufficient permissions to invoke the action, or the
  parameter values fall outside the specified constraints, the action fails. The associated event attribute's
          <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
          <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
type completeWorkflowExecutionDecisionAttributes = {
  @ocaml.doc(
    "<p>The result of the workflow execution. The form of the result is implementation defined.</p>"
  )
  result: option<data>,
}
@ocaml.doc(
  "<p>Used to filter the closed workflow executions in visibility APIs by their close status.</p>"
)
type closeStatusFilter = {
  @ocaml.doc("<p>
         The close status that must match the close status of an execution for it to meet the criteria of
      this filter.</p>")
  status: closeStatus,
}
@ocaml.doc("<p>Provides the details of the <code>CancelWorkflowExecutionFailed</code> event.</p>")
type cancelWorkflowExecutionFailedEventAttributes = {
  @ocaml.doc(
    "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
  )
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
        because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: cancelWorkflowExecutionFailedCause,
}
@ocaml.doc("<p>Provides the details of the <code>CancelWorkflowExecution</code> decision.</p>
         <p>
            <b>Access Control</b>
         </p>
         <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
         <ul>
            <li>
               <p>Use a <code>Resource</code> element with the domain name to limit the action to only
  specified domains.</p>
            </li>
            <li>
               <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
            </li>
            <li>
               <p>You cannot use an IAM policy to constrain this action's parameters.</p>
            </li>
         </ul>
         <p>If the caller doesn't have sufficient permissions to invoke the action, or the
  parameter values fall outside the specified constraints, the action fails. The associated event attribute's
          <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
          <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
type cancelWorkflowExecutionDecisionAttributes = {
  @ocaml.doc("<p>
         Details of the cancellation.</p>")
  details: option<data>,
}
@ocaml.doc("<p>Provides the details of the <code>CancelTimerFailed</code> event.</p>")
type cancelTimerFailedEventAttributes = {
  @ocaml.doc(
    "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelTimer</code> decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
  )
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
        because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: cancelTimerFailedCause,
  @ocaml.doc("<p>The timerId provided in the <code>CancelTimer</code> decision that failed.</p>")
  timerId: timerId,
}
@ocaml.doc("<p>Provides the details of the <code>CancelTimer</code> decision.</p>
         <p>
            <b>Access Control</b>
         </p>
         <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
         <ul>
            <li>
               <p>Use a <code>Resource</code> element with the domain name to limit the action to only
  specified domains.</p>
            </li>
            <li>
               <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
            </li>
            <li>
               <p>You cannot use an IAM policy to constrain this action's parameters.</p>
            </li>
         </ul>
         <p>If the caller doesn't have sufficient permissions to invoke the action, or the
  parameter values fall outside the specified constraints, the action fails. The associated event attribute's
          <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
          <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
type cancelTimerDecisionAttributes = {
  @ocaml.doc("<p>
         The unique ID of the timer to cancel.</p>")
  timerId: timerId,
}
@ocaml.doc("<p>Represents an activity type.</p>")
type activityType = {
  @ocaml.doc("<p>The version of this activity.</p>
         <note>
            <p>The combination of activity type name and version must be unique with in a domain.</p>
         </note>")
  version: version,
  @ocaml.doc("<p>The name of this activity.</p>
         <note>
            <p>The combination of activity type name and version must be unique within a domain.</p>
         </note>")
  name: name,
}
@ocaml.doc("<p>Provides the details of the <code>ActivityTaskTimedOut</code> event.</p>")
type activityTaskTimedOutEventAttributes = {
  @ocaml.doc("<p>Contains the content of the <code>details</code> parameter for the last call made by the activity to
      <code>RecordActivityTaskHeartbeat</code>.</p>")
  details: option<limitedData>,
  @ocaml.doc("<p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This
      information can be useful for diagnosing problems by tracing back the chain of events leading up to this
      event.</p>")
  startedEventId: eventId,
  @ocaml.doc(
    "<p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
  )
  scheduledEventId: eventId,
  @ocaml.doc("<p>The type of the timeout that caused this event.</p>")
  timeoutType: activityTaskTimeoutType,
}
@ocaml.doc("<p>Provides the details of the <code>ActivityTaskStarted</code> event.</p>")
type activityTaskStartedEventAttributes = {
  @ocaml.doc(
    "<p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
  )
  scheduledEventId: eventId,
  @ocaml.doc(
    "<p>Identity of the worker that was assigned this task. This aids diagnostics when problems arise. The form of this identity is user defined.</p>"
  )
  identity: option<identity>,
}
@ocaml.doc("<p>Provides the details of the <code>ActivityTaskFailed</code> event.</p>")
type activityTaskFailedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This
      information can be useful for diagnosing problems by tracing back the chain of events leading up to this
      event.</p>")
  startedEventId: eventId,
  @ocaml.doc(
    "<p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
  )
  scheduledEventId: eventId,
  @ocaml.doc("<p>The details of the failure.</p>") details: option<data>,
  @ocaml.doc("<p>The reason provided for the failure.</p>") reason: option<failureReason>,
}
@ocaml.doc("<p>Provides the details of the <code>ActivityTaskCompleted</code> event.</p>")
type activityTaskCompletedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This
      information can be useful for diagnosing problems by tracing back the chain of events leading up to this
      event.</p>")
  startedEventId: eventId,
  @ocaml.doc(
    "<p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
  )
  scheduledEventId: eventId,
  @ocaml.doc("<p>The results of the activity task.</p>") result: option<data>,
}
@ocaml.doc("<p>Provides the details of the <code>ActivityTaskCanceled</code> event.</p>")
type activityTaskCanceledEventAttributes = {
  @ocaml.doc(
    "<p>If set, contains the ID of the last <code>ActivityTaskCancelRequested</code> event recorded for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
  )
  latestCancelRequestedEventId: option<eventId>,
  @ocaml.doc("<p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This
      information can be useful for diagnosing problems by tracing back the chain of events leading up to this
      event.</p>")
  startedEventId: eventId,
  @ocaml.doc(
    "<p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
  )
  scheduledEventId: eventId,
  @ocaml.doc("<p>Details of the cancellation.</p>") details: option<data>,
}
@ocaml.doc("<p>Provides the details of the <code>ActivityTaskCancelRequested</code> event.</p>")
type activityTaskCancelRequestedEventAttributes = {
  @ocaml.doc("<p>The unique ID of the task.</p>") activityId: activityId,
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>RequestCancelActivityTask</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
}
@ocaml.doc("<p>Contains information about a workflow type.</p>")
type workflowTypeInfo = {
  @ocaml.doc(
    "<p>If the type is in deprecated state, then it is set to the date when the type was deprecated.</p>"
  )
  deprecationDate: option<timestamp_>,
  @ocaml.doc("<p>The date when this type was registered.</p>") creationDate: timestamp_,
  @ocaml.doc("<p>The description of the type registered through <a>RegisterWorkflowType</a>.</p>")
  description: option<description>,
  @ocaml.doc("<p>The current status of the workflow type.</p>") status: registrationStatus,
  @ocaml.doc("<p>The workflow type this information is about.</p>") workflowType: workflowType,
}
@ocaml.doc("<p>The configuration settings of a workflow type.</p>")
type workflowTypeConfiguration = {
  @ocaml.doc("<p>The default IAM role attached to this workflow type.</p>
         <note>
            <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you
        don't specify an IAM role when starting this workflow type, the default Lambda role is
        attached to the execution. For more information, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html\">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the
          <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  defaultLambdaRole: option<arn>,
  @ocaml.doc("<p>
         The default policy to use for the child workflow executions when a workflow execution of this
      type is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired
      timeout. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a>
      action or the <code>StartChildWorkflowExecution</code> 
            <a>Decision</a>.</p>
         <p>The supported child policies are:</p>
         <ul>
            <li>
               <p>
                  <code>TERMINATE</code> – The child executions are terminated.</p>
            </li>
            <li>
               <p>
                  <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
  execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
  to take appropriate actions when it receives an execution history with this event.</p>
            </li>
            <li>
               <p>
                  <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
            </li>
         </ul>")
  defaultChildPolicy: option<childPolicy>,
  @ocaml.doc("<p>
         The default task priority, specified when registering the workflow type, for all decision tasks
      of this workflow type. This default can be overridden when starting a workflow execution using the
      <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> decision.</p>
         <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
  (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
         <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
  defaultTaskPriority: option<taskPriority>,
  @ocaml.doc("<p>
         The default task list, specified when registering the workflow type, for decisions tasks
      scheduled for workflow executions of this type. This default can be overridden when starting a workflow execution
      using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code>
            <a>Decision</a>.</p>")
  defaultTaskList: option<taskList>,
  @ocaml.doc("<p>
         The default maximum duration, specified when registering the workflow type, for executions of
      this workflow type. This default can be overridden when starting a workflow execution using the
      <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> 
            <a>Decision</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  defaultExecutionStartToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>
         The default maximum duration, specified when registering the workflow type, that a decision task
      for executions of this workflow type might take before returning completion or failure. If the task doesn'tdo  close
      in the specified time then the task is automatically timed out and rescheduled. If the decider eventually reports
      a completion or failure, it is ignored. This default can be overridden when starting a workflow execution using
      the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> 
            <a>Decision</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  defaultTaskStartToCloseTimeout: option<durationInSecondsOptional>,
}
@ocaml.doc("<p>Provides details of <code>WorkflowExecutionStarted</code> event.</p>")
type workflowExecutionStartedEventAttributes = {
  @ocaml.doc("<p>The IAM role attached to the workflow execution.</p>") lambdaRole: option<arn>,
  @ocaml.doc("<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
      <code>StartChildWorkflowExecution</code> 
            <a>Decision</a> to start this workflow execution. The source event with
      this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  parentInitiatedEventId: option<eventId>,
  @ocaml.doc(
    "<p>The source workflow execution that started this workflow execution. The member isn't set if the workflow execution was not started by a workflow.</p>"
  )
  parentWorkflowExecution: option<workflowExecution>,
  @ocaml.doc("<p>If this workflow execution was started due to a <code>ContinueAsNewWorkflowExecution</code> decision, then it
      contains the <code>runId</code> of the previous workflow execution that was closed and continued as this
      execution.</p>")
  continuedExecutionRunId: option<workflowRunIdOptional>,
  @ocaml.doc(
    "<p>The list of tags associated with this workflow execution. An execution can have up to 5 tags.</p>"
  )
  @as("tagList")
  tagList_: option<tagList_>,
  @ocaml.doc("<p>The workflow type of this execution.</p>") workflowType: workflowType,
  @ocaml.doc("<p>The priority of the decision tasks in the workflow execution.</p>")
  taskPriority: option<taskPriority>,
  @ocaml.doc(
    "<p>The name of the task list for scheduling the decision tasks for this workflow execution.</p>"
  )
  taskList: taskList,
  @ocaml.doc("<p>The policy to use for the child workflow executions if this workflow execution is terminated, by calling the
      <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p>
         <p>The supported child policies are:</p>
         <ul>
            <li>
               <p>
                  <code>TERMINATE</code> – The child executions are terminated.</p>
            </li>
            <li>
               <p>
                  <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
  execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
  to take appropriate actions when it receives an execution history with this event.</p>
            </li>
            <li>
               <p>
                  <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
            </li>
         </ul>")
  childPolicy: childPolicy,
  @ocaml.doc("<p>The maximum duration of decision tasks for this workflow type.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  taskStartToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>The maximum duration for this workflow execution.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  executionStartToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>The input provided to the workflow execution.</p>") input: option<data>,
}
@ocaml.doc("<p>Provides the details of the <code>WorkflowExecutionSignaled</code> event.</p>")
type workflowExecutionSignaledEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the
      <code>SignalExternalWorkflow</code> decision to signal this workflow execution.The source event with this ID can
      be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event. This field is set only if
      the signal was initiated by another workflow execution.</p>")
  externalInitiatedEventId: option<eventId>,
  @ocaml.doc(
    "<p>The workflow execution that sent the signal. This is set only of the signal was sent by another workflow execution.</p>"
  )
  externalWorkflowExecution: option<workflowExecution>,
  @ocaml.doc(
    "<p>The inputs provided with the signal. The decider can use the signal name and inputs to determine how to process the signal.</p>"
  )
  input: option<data>,
  @ocaml.doc(
    "<p>The name of the signal received. The decider can use the signal name and inputs to determine how to the process the signal.</p>"
  )
  signalName: signalName,
}
@ocaml.doc("<p>Contains information about a workflow execution.</p>")
type workflowExecutionInfo = {
  @ocaml.doc("<p>Set to true if a cancellation is requested for this workflow execution.</p>")
  cancelRequested: option<canceled>,
  @ocaml.doc(
    "<p>The list of tags associated with the workflow execution. Tags can be used to identify and list workflow executions of interest through the visibility APIs. A workflow execution can have a maximum of 5 tags.</p>"
  )
  @as("tagList")
  tagList_: option<tagList_>,
  @ocaml.doc(
    "<p>If this workflow execution is a child of another execution then contains the workflow execution that started this execution.</p>"
  )
  parent: option<workflowExecution>,
  @ocaml.doc("<p>If the execution status is closed then this specifies how the execution was closed:</p>
         <ul>
            <li>
               <p>
                  <code>COMPLETED</code> – the execution was successfully completed.</p>
            </li>
            <li>
               <p>
                  <code>CANCELED</code> – the execution was canceled.Cancellation allows the implementation to gracefully clean
        up before the execution is closed.</p>
            </li>
            <li>
               <p>
                  <code>TERMINATED</code> – the execution was force terminated.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> – the execution failed to complete.</p>
            </li>
            <li>
               <p>
                  <code>TIMED_OUT</code> – the execution did not complete in the alloted time and was automatically timed
        out.</p>
            </li>
            <li>
               <p>
                  <code>CONTINUED_AS_NEW</code> – the execution is logically continued. This means the current execution was
        completed and a new execution was started to carry on the workflow.</p>
            </li>
         </ul>")
  closeStatus: option<closeStatus>,
  @ocaml.doc("<p>The current status of the execution.</p>") executionStatus: executionStatus,
  @ocaml.doc(
    "<p>The time when the workflow execution was closed. Set only if the execution status is CLOSED.</p>"
  )
  closeTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time when the execution was started.</p>") startTimestamp: timestamp_,
  @ocaml.doc("<p>The type of the workflow execution.</p>") workflowType: workflowType,
  @ocaml.doc("<p>The workflow execution this information is about.</p>")
  execution: workflowExecution,
}
@ocaml.doc("<p>Provides the details of the <code>WorkflowExecutionContinuedAsNew</code> event.</p>")
type workflowExecutionContinuedAsNewEventAttributes = {
  @ocaml.doc("<p>The IAM role to attach to the new (continued) workflow execution.</p>")
  lambdaRole: option<arn>,
  @ocaml.doc("<p>The workflow type of this execution.</p>") workflowType: workflowType,
  @ocaml.doc("<p>The list of tags associated with the new workflow execution.</p>") @as("tagList")
  tagList_: option<tagList_>,
  @ocaml.doc("<p>The policy to use for the child workflow executions of the new execution if it is terminated by calling the
      <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p>
         <p>The supported child policies are:</p>
         <ul>
            <li>
               <p>
                  <code>TERMINATE</code> – The child executions are terminated.</p>
            </li>
            <li>
               <p>
                  <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
  execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
  to take appropriate actions when it receives an execution history with this event.</p>
            </li>
            <li>
               <p>
                  <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
            </li>
         </ul>")
  childPolicy: childPolicy,
  @ocaml.doc("<p>The maximum duration of decision tasks for the new workflow execution.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  taskStartToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>The priority of the task to use for the decisions of the new (continued) workflow
      execution.</p>")
  taskPriority: option<taskPriority>,
  @ocaml.doc("<p>The task list to use for the decisions of the new (continued) workflow
      execution.</p>")
  taskList: taskList,
  @ocaml.doc("<p>The total duration allowed for the new workflow execution.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  executionStartToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>The <code>runId</code> of the new workflow execution.</p>")
  newExecutionRunId: workflowRunId,
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>ContinueAsNewWorkflowExecution</code> decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The input provided to the new workflow execution.</p>") input: option<data>,
}
@ocaml.doc(
  "<p>The configuration settings for a workflow execution including timeout values, tasklist etc. These configuration settings are determined from the defaults specified when registering the workflow type and those specified when starting the workflow execution.</p>"
)
type workflowExecutionConfiguration = {
  @ocaml.doc("<p>The IAM role attached to the child workflow execution.</p>")
  lambdaRole: option<arn>,
  @ocaml.doc("<p>The policy to use for the child workflow executions if this workflow execution is terminated, by calling the
      <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p>
         <p>The supported child policies are:</p>
         <ul>
            <li>
               <p>
                  <code>TERMINATE</code> – The child executions are terminated.</p>
            </li>
            <li>
               <p>
                  <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
  execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
  to take appropriate actions when it receives an execution history with this event.</p>
            </li>
            <li>
               <p>
                  <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
            </li>
         </ul>")
  childPolicy: childPolicy,
  @ocaml.doc("<p>The priority assigned to decision tasks for this workflow execution. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
  (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
         <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
  taskPriority: option<taskPriority>,
  @ocaml.doc(
    "<p>The task list used for the decision tasks generated for this workflow execution.</p>"
  )
  taskList: taskList,
  @ocaml.doc("<p>The total duration for this workflow execution.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  executionStartToCloseTimeout: durationInSeconds,
  @ocaml.doc("<p>The maximum duration allowed for decision tasks for this workflow execution.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  taskStartToCloseTimeout: durationInSeconds,
}
@ocaml.doc(
  "<p>Provides the details of the <code>WorkflowExecutionCancelRequested</code> event.</p>"
)
type workflowExecutionCancelRequestedEventAttributes = {
  @ocaml.doc(
    "<p>If set, indicates that the request to cancel the workflow execution was automatically generated, and specifies the cause. This happens if the parent workflow execution times out or is terminated, and the child policy is set to cancel child executions.</p>"
  )
  cause: option<workflowExecutionCancelRequestedCause>,
  @ocaml.doc("<p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the
      <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this workflow execution.The source event
      with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  externalInitiatedEventId: option<eventId>,
  @ocaml.doc("<p>The external workflow execution for which the cancellation was requested.</p>")
  externalWorkflowExecution: option<workflowExecution>,
}
@ocaml.doc(
  "<p>Provides the details of the <code>StartChildWorkflowExecutionInitiated</code> event.</p>"
)
type startChildWorkflowExecutionInitiatedEventAttributes = {
  @ocaml.doc("<p>The IAM role to attach to the child workflow execution.</p>")
  lambdaRole: option<arn>,
  @ocaml.doc("<p>The list of tags to associated with the child workflow execution.</p>")
  @as("tagList")
  tagList_: option<tagList_>,
  @ocaml.doc("<p>The maximum duration allowed for the decision tasks for this workflow execution.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  taskStartToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>The policy to use for the child workflow executions if this execution gets terminated by explicitly calling the
      <a>TerminateWorkflowExecution</a> action or due to an expired timeout.</p>
         <p>The supported child policies are:</p>
         <ul>
            <li>
               <p>
                  <code>TERMINATE</code> – The child executions are terminated.</p>
            </li>
            <li>
               <p>
                  <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
  execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
  to take appropriate actions when it receives an execution history with this event.</p>
            </li>
            <li>
               <p>
                  <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
            </li>
         </ul>")
  childPolicy: childPolicy,
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
      <code>StartChildWorkflowExecution</code> 
            <a>Decision</a> to request this child workflow execution. This
      information can be useful for diagnosing problems by tracing back the cause of events.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>
         The priority assigned for the decision tasks for this workflow execution.
      Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
  (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
         <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
  taskPriority: option<taskPriority>,
  @ocaml.doc(
    "<p>The name of the task list used for the decision tasks of the child workflow execution.</p>"
  )
  taskList: taskList,
  @ocaml.doc("<p>The maximum duration for the child workflow execution. If the workflow execution isn't closed within this duration, it is timed out and force-terminated.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  executionStartToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>The inputs provided to the child workflow execution.</p>") input: option<data>,
  @ocaml.doc(
    "<p>Data attached to the event that can be used by the decider in subsequent decision tasks. This data isn't sent to the activity.</p>"
  )
  control: option<data>,
  @ocaml.doc("<p>The type of the child workflow execution.</p>") workflowType: workflowType,
  @ocaml.doc("<p>The <code>workflowId</code> of the child workflow execution.</p>")
  workflowId: workflowId,
}
@ocaml.doc(
  "<p>Provides the details of the <code>StartChildWorkflowExecutionFailed</code> event.</p>"
)
type startChildWorkflowExecutionFailedEventAttributes = {
  @ocaml.doc("<p>The data attached to the event that the decider can use in subsequent workflow tasks.
      This data isn't sent to the child workflow execution.</p>")
  control: option<data>,
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartChildWorkflowExecution</code> 
            <a>Decision</a> to request this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>When the <code>cause</code> is <code>WORKFLOW_ALREADY_RUNNING</code>, <code>initiatedEventId</code> is the ID of the <code>StartChildWorkflowExecutionInitiated</code>
          event that corresponds to the <code>StartChildWorkflowExecution</code> 
            <a>Decision</a> to start the workflow execution. You can use this information to diagnose
          problems by tracing back the chain of events leading up to this event.</p>
         <p>When the <code>cause</code> isn't <code>WORKFLOW_ALREADY_RUNNING</code>, <code>initiatedEventId</code> is set to <code>0</code> because the 
          <code>StartChildWorkflowExecutionInitiated</code> event doesn't exist.</p>")
  initiatedEventId: eventId,
  @ocaml.doc("<p>The <code>workflowId</code> of the child workflow execution.</p>")
  workflowId: workflowId,
  @ocaml.doc("<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
         <note>
            <p>When <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision fails because it lacks sufficient permissions. 
              For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">
                  Using IAM to Manage Access to Amazon SWF Workflows</a>  in the <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: startChildWorkflowExecutionFailedCause,
  @ocaml.doc("<p>The workflow type provided in the <code>StartChildWorkflowExecution</code> 
            <a>Decision</a> that failed.</p>")
  workflowType: workflowType,
}
@ocaml.doc("<p>Provides the details of the <code>StartChildWorkflowExecution</code> decision.</p>
         <p>
            <b>Access Control</b>
         </p>
         <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
         <ul>
            <li>
               <p>Use a <code>Resource</code> element with the domain name to limit the action to only
  specified domains.</p>
            </li>
            <li>
               <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
            </li>
            <li>
               <p>Constrain the following parameters by using a <code>Condition</code> element with the
             appropriate keys.</p>
              <ul>
                  <li>
                      <p>
                        <code>tagList.member.N</code> – The key is \"swf:tagList.N\" where N is the tag number from 0 to 4,
            inclusive.</p>
                  </li>
                  <li>
                      <p>
                        <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p>
                  </li>
                  <li>
                      <p>
                        <code>workflowType.name</code> – String constraint. The key is <code>swf:workflowType.name</code>.</p>
                  </li>
                  <li>
                      <p>
                        <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p>
                  </li>
               </ul>
            </li>
         </ul>
         <p>If the caller doesn't have sufficient permissions to invoke the action, or the
  parameter values fall outside the specified constraints, the action fails. The associated event attribute's
          <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
          <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
type startChildWorkflowExecutionDecisionAttributes = {
  @ocaml.doc("<p>The IAM role attached to the child workflow execution.</p>")
  lambdaRole: option<arn>,
  @ocaml.doc("<p>The list of tags to associate with the child workflow execution. A maximum of 5 tags can be specified. You can
      list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or
      <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>")
  @as("tagList")
  tagList_: option<tagList_>,
  @ocaml.doc("<p>
         If set, specifies the policy to use for the child workflow executions if the workflow execution
      being started is terminated by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an
      expired timeout. This policy overrides the default child policy specified when registering the workflow type using
      <a>RegisterWorkflowType</a>.</p>
         <p>The supported child policies are:</p>
         <ul>
            <li>
               <p>
                  <code>TERMINATE</code> – The child executions are terminated.</p>
            </li>
            <li>
               <p>
                  <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
  execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
  to take appropriate actions when it receives an execution history with this event.</p>
            </li>
            <li>
               <p>
                  <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
            </li>
         </ul>
         <note>
            <p>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.</p>
         </note>")
  childPolicy: option<childPolicy>,
  @ocaml.doc("<p>Specifies the maximum duration of decision tasks for this workflow execution. This parameter overrides the
      <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using
      <a>RegisterWorkflowType</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
         <note>
            <p>A task start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault is returned.</p>
         </note>")
  taskStartToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>
         A task priority that, if set, specifies the priority for a decision task of this workflow
      execution. This overrides the defaultTaskPriority specified when registering the workflow type.
      Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
  (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
         <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
  taskPriority: option<taskPriority>,
  @ocaml.doc("<p>The name of the task list to be used for decision tasks of the child workflow execution.</p>
         <note>
            <p>A task list for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task list was specified at registration time then a fault is returned.</p>
         </note>
         <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code>
          (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>")
  taskList: option<taskList>,
  @ocaml.doc("<p>The total duration for this workflow execution. This overrides the defaultExecutionStartToCloseTimeout specified when registering the workflow type.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
         <note>
            <p>An execution start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default execution start-to-close timeout was specified at registration time then a fault is returned.</p>
         </note>")
  executionStartToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>The input to be provided to the workflow execution.</p>") input: option<data>,
  @ocaml.doc(
    "<p>The data attached to the event that can be used by the decider in subsequent workflow tasks. This data isn't sent to the child workflow execution.</p>"
  )
  control: option<data>,
  @ocaml.doc("<p>
         The <code>workflowId</code> of the workflow execution.</p>
         <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code>
          (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>")
  workflowId: workflowId,
  @ocaml.doc("<p>
         The type of the workflow execution to be started.</p>")
  workflowType: workflowType,
}
@ocaml.doc("<p>Provides the details of the <code>ScheduleActivityTaskFailed</code> event.</p>")
type scheduleActivityTaskFailedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision that resulted in the
      scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
         <note>
            <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
  because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
  cause: scheduleActivityTaskFailedCause,
  @ocaml.doc(
    "<p>The activityId provided in the <code>ScheduleActivityTask</code> decision that failed.</p>"
  )
  activityId: activityId,
  @ocaml.doc(
    "<p>The activity type provided in the <code>ScheduleActivityTask</code> decision that failed.</p>"
  )
  activityType: activityType,
}
@ocaml.doc("<p>Provides the details of the <code>ScheduleActivityTask</code> decision.</p>
         <p>
            <b>Access Control</b>
         </p>
         <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
         <ul>
            <li>
               <p>Use a <code>Resource</code> element with the domain name to limit the action to only
  specified domains.</p>
            </li>
            <li>
               <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
            </li>
            <li>
              <p>Constrain the following parameters by using a <code>Condition</code> element with the
  appropriate keys.</p>
              <ul>
                  <li>
                     <p>
                        <code>activityType.name</code> – String constraint. The key is <code>swf:activityType.name</code>.</p>
                  </li>
                  <li>
                      <p>
                        <code>activityType.version</code> – String constraint. The key is <code>swf:activityType.version</code>.</p>
                  </li>
                  <li>
                      <p>
                        <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p>
                  </li>
               </ul>
            </li>
         </ul>
         <p>If the caller doesn't have sufficient permissions to invoke the action, or the
  parameter values fall outside the specified constraints, the action fails. The associated event attribute's
          <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
  <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>")
type scheduleActivityTaskDecisionAttributes = {
  @ocaml.doc("<p>If set, specifies the maximum time before which a worker processing a task of this type must report progress by
      calling <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed
      out. If the worker subsequently attempts to record a heartbeat or returns a result, it is ignored. This
      overrides the default heartbeat timeout specified when registering the activity type using
      <a>RegisterActivityType</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  heartbeatTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>If set, specifies the maximum duration a worker may take to process this activity task. This overrides the
      default start-to-close timeout specified when registering the activity type using <a>RegisterActivityType</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
         <note>
            <p>A start-to-close timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default start-to-close timeout was specified at registration time then a fault is returned.</p>
         </note>")
  startToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>
         If set, specifies the maximum duration the activity task can wait to be assigned to a worker.
      This overrides the default schedule-to-start timeout specified when registering the activity type using
      <a>RegisterActivityType</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
         <note>
            <p>A schedule-to-start timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default schedule-to-start timeout was specified at registration time then a fault is returned.</p>
         </note>")
  scheduleToStartTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>
         If set, specifies the priority with which the activity task is to be assigned to a worker. This
      overrides the defaultTaskPriority specified when registering the activity type using <a>RegisterActivityType</a>.
      Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
  (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
         <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a>  in the <i>Amazon SWF Developer Guide</i>.</p>")
  taskPriority: option<taskPriority>,
  @ocaml.doc("<p>If set, specifies the name of the task list in which to schedule the activity task. If not specified, the
      <code>defaultTaskList</code> registered with the activity type is used.</p>
         <note>
            <p>A task list for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default task list was specified at registration time then a fault is returned.</p>
         </note>
         <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code>
          (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>")
  taskList: option<taskList>,
  @ocaml.doc("<p>The maximum duration for this activity task.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
         <note>
            <p>A schedule-to-close timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default schedule-to-close timeout was specified at registration time then a fault is returned.</p>
         </note>")
  scheduleToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>The input provided to the activity task.</p>") input: option<data>,
  @ocaml.doc(
    "<p>Data attached to the event that can be used by the decider in subsequent workflow tasks. This data isn't sent to the activity.</p>"
  )
  control: option<data>,
  @ocaml.doc("<p>
         The <code>activityId</code> of the activity task.</p>
         <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code>
          (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>")
  activityId: activityId,
  @ocaml.doc("<p>
         The type of the activity task to schedule.</p>")
  activityType: activityType,
}
type resourceTagList = array<resourceTag>
@ocaml.doc(
  "<p>Provides the details of the <code>ExternalWorkflowExecutionSignaled</code> event.</p>"
)
type externalWorkflowExecutionSignaledEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the
      <code>SignalExternalWorkflowExecution</code> decision to request this signal. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  initiatedEventId: eventId,
  @ocaml.doc("<p>The external workflow execution that the signal was delivered to.</p>")
  workflowExecution: workflowExecution,
}
@ocaml.doc(
  "<p>Provides the details of the <code>ExternalWorkflowExecutionCancelRequested</code> event.</p>"
)
type externalWorkflowExecutionCancelRequestedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the
      <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this external workflow execution. This
      information can be useful for diagnosing problems by tracing back the chain of events leading up to this
      event.</p>")
  initiatedEventId: eventId,
  @ocaml.doc(
    "<p>The external workflow execution to which the cancellation request was delivered.</p>"
  )
  workflowExecution: workflowExecution,
}
type domainInfoList = array<domainInfo>
@ocaml.doc("<p>Provides details about the <code>DecisionTaskScheduled</code> event.</p>")
type decisionTaskScheduledEventAttributes = {
  @ocaml.doc("<p>The maximum duration for this decision task. The task is considered timed out if it doesn't completed within this duration.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  startToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>
         A task priority that, if set, specifies the priority for this decision task.
      Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
  (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
         <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
  taskPriority: option<taskPriority>,
  @ocaml.doc("<p>The name of the task list in which the decision task was scheduled.</p>")
  taskList: taskList,
}
@ocaml.doc("<p>Provides the details of the <code>ContinueAsNewWorkflowExecution</code> decision.</p>
         <p>
            <b>Access Control</b>
         </p>
         <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
         <ul>
            <li>
               <p>Use a <code>Resource</code> element with the domain name to limit the action to only
  specified domains.</p>
            </li>
            <li>
               <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
            </li>
            <li>
               <p>Constrain the following parameters by using a <code>Condition</code> element with the
              appropriate keys.</p>
              <ul>
                  <li>
                      <p>
                        <code>tag</code> – A tag used to identify the workflow execution</p>
                  </li>
                  <li>
                      <p>
                        <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p>
                  </li>
                  <li>
                      <p>
                        <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p>
                  </li>
               </ul>
            </li>
         </ul>
         <p>If the caller doesn't have sufficient permissions to invoke the action, or the
  parameter values fall outside the specified constraints, the action fails. The associated event attribute's
          <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
          <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
type continueAsNewWorkflowExecutionDecisionAttributes = {
  @ocaml.doc("<p>The IAM role to attach to the new (continued) execution.</p>")
  lambdaRole: option<arn>,
  @ocaml.doc("<p>The version of the workflow to start.</p>") workflowTypeVersion: option<version>,
  @ocaml.doc("<p>The list of tags to associate with the new workflow execution. A maximum of 5 tags can be specified. You can
      list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or
      <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>")
  @as("tagList")
  tagList_: option<tagList_>,
  @ocaml.doc("<p>If set, specifies the policy to use for the child workflow executions of the new execution if it is terminated
      by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This policy
      overrides the default child policy specified when registering the workflow type using
      <a>RegisterWorkflowType</a>.</p>
         <p>The supported child policies are:</p>
         <ul>
            <li>
               <p>
                  <code>TERMINATE</code> – The child executions are terminated.</p>
            </li>
            <li>
               <p>
                  <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
  execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
  to take appropriate actions when it receives an execution history with this event.</p>
            </li>
            <li>
               <p>
                  <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
            </li>
         </ul>
         <note>
            <p>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.</p>
         </note>")
  childPolicy: option<childPolicy>,
  @ocaml.doc("<p>Specifies the maximum duration of decision tasks for the new workflow execution. This parameter overrides the
      <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using
      <a>RegisterWorkflowType</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
         <note>
            <p>A task start-to-close timeout for the new workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault is returned.</p>
         </note>")
  taskStartToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>
         The task priority that, if set, specifies the priority for the decision tasks for this workflow
      execution. This overrides the defaultTaskPriority specified when registering the workflow type.
      Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
  (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
         <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a>  in the <i>Amazon SWF Developer Guide</i>.</p>")
  taskPriority: option<taskPriority>,
  @ocaml.doc("<p>The task list to use for the decisions of the new (continued) workflow
      execution.</p>")
  taskList: option<taskList>,
  @ocaml.doc("<p>If set, specifies the total duration for this workflow execution. This overrides the
      <code>defaultExecutionStartToCloseTimeout</code> specified when registering the workflow type.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
         <note>
            <p>An execution start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this field. If neither this field is set nor a default execution start-to-close timeout was specified at registration time then a fault is returned.</p>
         </note>")
  executionStartToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>The input provided to the new workflow execution.</p>") input: option<data>,
}
@ocaml.doc("<p>Provides the details of the <code>ChildWorkflowExecutionTimedOut</code> event.</p>")
type childWorkflowExecutionTimedOutEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was
      started. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  startedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
      <code>StartChildWorkflowExecution</code> 
            <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  initiatedEventId: eventId,
  @ocaml.doc("<p>The type of the timeout that caused the child workflow execution to time out.</p>")
  timeoutType: workflowExecutionTimeoutType,
  @ocaml.doc("<p>The type of the child workflow execution.</p>") workflowType: workflowType,
  @ocaml.doc("<p>The child workflow execution that timed out.</p>")
  workflowExecution: workflowExecution,
}
@ocaml.doc(
  "<p>Provides the details of the <code>ChildWorkflowExecutionTerminated</code> event.</p>"
)
type childWorkflowExecutionTerminatedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was
      started. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  startedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
      <code>StartChildWorkflowExecution</code> 
            <a>Decision</a> to start this child workflow execution.
      This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  initiatedEventId: eventId,
  @ocaml.doc("<p>The type of the child workflow execution.</p>") workflowType: workflowType,
  @ocaml.doc("<p>The child workflow execution that was terminated.</p>")
  workflowExecution: workflowExecution,
}
@ocaml.doc("<p>Provides the details of the <code>ChildWorkflowExecutionStarted</code> event.</p>")
type childWorkflowExecutionStartedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
      <code>StartChildWorkflowExecution</code> 
            <a>Decision</a> to start this child workflow execution.
      This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  initiatedEventId: eventId,
  @ocaml.doc("<p>The type of the child workflow execution.</p>") workflowType: workflowType,
  @ocaml.doc("<p>The child workflow execution that was started.</p>")
  workflowExecution: workflowExecution,
}
@ocaml.doc("<p>Provides the details of the <code>ChildWorkflowExecutionFailed</code> event.</p>")
type childWorkflowExecutionFailedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was
      started. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  startedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
      <code>StartChildWorkflowExecution</code> 
            <a>Decision</a> to start this child workflow execution.
      This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  initiatedEventId: eventId,
  @ocaml.doc("<p>The details of the failure (if provided).</p>") details: option<data>,
  @ocaml.doc("<p>The reason for the failure (if provided).</p>") reason: option<failureReason>,
  @ocaml.doc("<p>The type of the child workflow execution.</p>") workflowType: workflowType,
  @ocaml.doc("<p>The child workflow execution that failed.</p>")
  workflowExecution: workflowExecution,
}
@ocaml.doc("<p>Provides the details of the <code>ChildWorkflowExecutionCompleted</code> event.</p>")
type childWorkflowExecutionCompletedEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was
      started. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  startedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> 
            <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>")
  initiatedEventId: eventId,
  @ocaml.doc("<p>The result of the child workflow execution.</p>") result: option<data>,
  @ocaml.doc("<p>The type of the child workflow execution.</p>") workflowType: workflowType,
  @ocaml.doc("<p>The child workflow execution that was completed.</p>")
  workflowExecution: workflowExecution,
}
@ocaml.doc("<p>Provide details of the <code>ChildWorkflowExecutionCanceled</code> event.</p>")
type childWorkflowExecutionCanceledEventAttributes = {
  @ocaml.doc("<p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was
      started. This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  startedEventId: eventId,
  @ocaml.doc("<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
      <code>StartChildWorkflowExecution</code> 
            <a>Decision</a> to start this child workflow execution.
      This information can be useful for diagnosing problems by tracing back the chain of
  events leading up to this event.</p>")
  initiatedEventId: eventId,
  @ocaml.doc("<p>Details of the cancellation (if provided).</p>") details: option<data>,
  @ocaml.doc("<p>The type of the child workflow execution.</p>") workflowType: workflowType,
  @ocaml.doc("<p>The child workflow execution that was canceled.</p>")
  workflowExecution: workflowExecution,
}
@ocaml.doc("<p>Detailed information about an activity type.</p>")
type activityTypeInfo = {
  @ocaml.doc("<p>If DEPRECATED, the date and time <a>DeprecateActivityType</a> was called.</p>")
  deprecationDate: option<timestamp_>,
  @ocaml.doc(
    "<p>The date and time this activity type was created through <a>RegisterActivityType</a>.</p>"
  )
  creationDate: timestamp_,
  @ocaml.doc("<p>The description of the activity type provided in <a>RegisterActivityType</a>.</p>")
  description: option<description>,
  @ocaml.doc("<p>The current status of the activity type.</p>") status: registrationStatus,
  @ocaml.doc("<p>The <a>ActivityType</a> type structure representing the activity type.</p>")
  activityType: activityType,
}
@ocaml.doc("<p>Configuration settings registered with the activity type.</p>")
type activityTypeConfiguration = {
  @ocaml.doc("<p>
         The default maximum duration, specified when registering the activity type, for tasks of this activity
      type. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code>
            <a>Decision</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  defaultTaskScheduleToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>
         The default maximum duration, specified when registering the activity type, that a task of an
      activity type can wait before being assigned to a worker. You can override this default when scheduling a task
      through the <code>ScheduleActivityTask</code> 
            <a>Decision</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  defaultTaskScheduleToStartTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>
         The default task priority for tasks of this activity type, specified at registration. If not
      set, then <code>0</code> is used as the default priority. This default can be overridden when scheduling an activity
      task.</p>
         <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
  (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
         <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
  defaultTaskPriority: option<taskPriority>,
  @ocaml.doc("<p>
         The default task list specified for this activity type at registration. This default is used if
      a task list isn't provided when a task is scheduled through the <code>ScheduleActivityTask</code>
            <a>Decision</a>. You can override the default registered task list when scheduling a task through the
      <code>ScheduleActivityTask</code> 
            <a>Decision</a>.</p>")
  defaultTaskList: option<taskList>,
  @ocaml.doc("<p>
         The default maximum time, in seconds, before which a worker processing a task must report
      progress by calling <a>RecordActivityTaskHeartbeat</a>.</p>
         <p>You can specify this value only when <i>registering</i> an activity type. The registered default value can be
      overridden when you schedule a task through the <code>ScheduleActivityTask</code> 
            <a>Decision</a>. If the activity
      worker subsequently attempts to record a heartbeat or returns a result, the activity worker receives an
      <code>UnknownResource</code> fault. In this case, Amazon SWF no longer considers the activity task to be valid;
      the activity worker should clean up the activity task.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  defaultTaskHeartbeatTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>
         The default maximum duration for tasks of an activity type specified when registering the activity
      type. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code>
            <a>Decision</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
  defaultTaskStartToCloseTimeout: option<durationInSecondsOptional>,
}
@ocaml.doc("<p>Provides the details of the <code>ActivityTaskScheduled</code> event.</p>")
type activityTaskScheduledEventAttributes = {
  @ocaml.doc("<p>The maximum time before which the worker processing this task must report progress by calling
      <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed out. If
      the worker subsequently attempts to record a heartbeat or return a result, it is ignored.</p>")
  heartbeatTimeout: option<durationInSecondsOptional>,
  @ocaml.doc(
    "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision that resulted in the scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
  )
  decisionTaskCompletedEventId: eventId,
  @ocaml.doc("<p>
         The priority to assign to the scheduled activity task. If set, this overrides any default
      priority value that was assigned when the activity type was registered.</p>
         <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
  (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
         <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
  taskPriority: option<taskPriority>,
  @ocaml.doc("<p>The task list in which the activity task has been scheduled.</p>")
  taskList: taskList,
  @ocaml.doc("<p>The maximum amount of time a worker may take to process the activity task.</p>")
  startToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc("<p>The maximum amount of time for this activity task.</p>")
  scheduleToCloseTimeout: option<durationInSecondsOptional>,
  @ocaml.doc(
    "<p>The maximum amount of time the activity task can wait to be assigned to a worker.</p>"
  )
  scheduleToStartTimeout: option<durationInSecondsOptional>,
  @ocaml.doc(
    "<p>Data attached to the event that can be used by the decider in subsequent workflow tasks. This data isn't sent to the activity.</p>"
  )
  control: option<data>,
  @ocaml.doc("<p>The input provided to the activity task.</p>") input: option<data>,
  @ocaml.doc("<p>The unique ID of the activity task.</p>") activityId: activityId,
  @ocaml.doc("<p>The type of the activity task.</p>") activityType: activityType,
}
type workflowTypeInfoList = array<workflowTypeInfo>
type workflowExecutionInfoList = array<workflowExecutionInfo>
@ocaml.doc("<p>Event within a workflow execution. A history event can be one of these types:</p>
         <ul>
            <li>
               <p>
                  <code>ActivityTaskCancelRequested</code> – A <code>RequestCancelActivityTask</code> decision was received by the
        system.</p>
            </li>
            <li>
               <p>
                  <code>ActivityTaskCanceled</code> – The activity task was successfully canceled.</p>
            </li>
            <li>
               <p>
                  <code>ActivityTaskCompleted</code> – An activity worker successfully completed an activity task by calling
        <a>RespondActivityTaskCompleted</a>.</p>
            </li>
            <li>
               <p>
                  <code>ActivityTaskFailed</code> – An activity worker failed an activity task by calling
        <a>RespondActivityTaskFailed</a>.</p>
            </li>
            <li>
               <p>
                  <code>ActivityTaskScheduled</code> – An activity task was scheduled for execution.</p>
            </li>
            <li>
               <p>
                  <code>ActivityTaskStarted</code> – The scheduled activity task was dispatched to a worker.</p>
            </li>
            <li>
               <p>
                  <code>ActivityTaskTimedOut</code> – The activity task timed out.</p>
            </li>
            <li>
               <p>
                  <code>CancelTimerFailed</code> – Failed to process CancelTimer decision. This happens when the decision isn't
        configured properly, for example no timer exists with the specified timer Id.</p>
            </li>
            <li>
               <p>
                  <code>CancelWorkflowExecutionFailed</code> – A request to cancel a workflow execution failed.</p>
            </li>
            <li>
               <p>
                  <code>ChildWorkflowExecutionCanceled</code> – A child workflow execution, started by this workflow execution, was
        canceled and closed.</p>
            </li>
            <li>
               <p>
                  <code>ChildWorkflowExecutionCompleted</code> – A child workflow execution, started by this workflow execution,
        completed successfully and was closed.</p>
            </li>
            <li>
               <p>
                  <code>ChildWorkflowExecutionFailed</code> – A child workflow execution,
        started by this workflow execution, failed to complete successfully and was closed.</p>
            </li>
            <li>
               <p>
                  <code>ChildWorkflowExecutionStarted</code> – A child workflow execution was successfully started.</p>
            </li>
            <li>
               <p>
                  <code>ChildWorkflowExecutionTerminated</code> –  A child workflow execution, started by this workflow execution, was
        terminated.</p>
            </li>
            <li>
               <p>
                  <code>ChildWorkflowExecutionTimedOut</code> –  A child workflow execution, started by this workflow execution, timed
        out and was closed.</p>
            </li>
            <li>
               <p>
                  <code>CompleteWorkflowExecutionFailed</code> – The workflow execution failed to complete.</p>
            </li>
            <li>
               <p>
                  <code>ContinueAsNewWorkflowExecutionFailed</code> – The workflow execution failed to complete after being continued
        as a new workflow execution.</p>
            </li>
            <li>
               <p>
                  <code>DecisionTaskCompleted</code> – The decider successfully completed a decision task by calling
        <a>RespondDecisionTaskCompleted</a>.</p>
            </li>
            <li>
               <p>
                  <code>DecisionTaskScheduled</code> – A decision task was scheduled for the workflow execution.</p>
            </li>
            <li>
               <p>
                  <code>DecisionTaskStarted</code> – The decision task was dispatched to a decider.</p>
            </li>
            <li>
               <p>
                  <code>DecisionTaskTimedOut</code> – The decision task timed out.</p>
            </li>
            <li>
               <p>
                  <code>ExternalWorkflowExecutionCancelRequested</code> – Request to cancel an external workflow execution was
        successfully delivered to the target execution.</p>
            </li>
            <li>
               <p>
                  <code>ExternalWorkflowExecutionSignaled</code> – A signal, requested by this workflow execution, was successfully
        delivered to the target external workflow execution.</p>
            </li>
            <li>
               <p>
                  <code>FailWorkflowExecutionFailed</code> – A request to mark a workflow execution as failed, itself failed.</p>
            </li>
            <li>
               <p>
                  <code>MarkerRecorded</code> – A marker was recorded in the workflow history as the result of a
        <code>RecordMarker</code> decision.</p>
            </li>
            <li>
               <p>
                  <code>RecordMarkerFailed</code> – A <code>RecordMarker</code> decision was returned as failed.</p>
            </li>
            <li>
               <p>
                  <code>RequestCancelActivityTaskFailed</code> – Failed to process RequestCancelActivityTask decision. This happens
        when the decision isn't configured properly.</p>
            </li>
            <li>
               <p>
                  <code>RequestCancelExternalWorkflowExecutionFailed</code> – Request to cancel an external workflow execution
        failed.</p>
            </li>
            <li>
               <p>
                  <code>RequestCancelExternalWorkflowExecutionInitiated</code> – A request was made to request the cancellation of an
        external workflow execution.</p>
            </li>
            <li>
               <p>
                  <code>ScheduleActivityTaskFailed</code> – Failed to process ScheduleActivityTask decision. This happens when the
        decision isn't configured properly, for example the activity type specified isn't registered.</p>
            </li>
            <li>
               <p>
                  <code>SignalExternalWorkflowExecutionFailed</code> – The request to signal an external workflow execution
        failed.</p>
            </li>
            <li>
               <p>
                  <code>SignalExternalWorkflowExecutionInitiated</code> – A request to signal an external workflow was made.</p>
            </li>
            <li>
               <p>
                  <code>StartActivityTaskFailed</code> – A scheduled activity task failed to start.</p>
            </li>
            <li>
               <p>
                  <code>StartChildWorkflowExecutionFailed</code> – Failed to process StartChildWorkflowExecution decision. This happens
        when the decision isn't configured properly, for example the workflow type specified isn't registered.</p>
            </li>
            <li>
               <p>
                  <code>StartChildWorkflowExecutionInitiated</code> – A request was made to start a child workflow execution.</p>
            </li>
            <li>
               <p>
                  <code>StartTimerFailed</code> – Failed to process StartTimer decision. This happens when the decision isn't
        configured properly, for example a timer already exists with the specified timer Id.</p>
            </li>
            <li>
               <p>
                  <code>TimerCanceled</code> – A timer, previously started for this workflow execution, was successfully canceled.</p>
            </li>
            <li>
               <p>
                  <code>TimerFired</code> – A timer, previously started for this workflow execution, fired.</p>
            </li>
            <li>
               <p>
                  <code>TimerStarted</code> – A timer was started for the workflow execution due to a <code>StartTimer</code>
        decision.</p>
            </li>
            <li>
               <p>
                  <code>WorkflowExecutionCancelRequested</code> – A request to cancel this workflow execution was made.</p>
            </li>
            <li>
               <p>
                  <code>WorkflowExecutionCanceled</code> – The workflow execution was successfully canceled and closed.</p>
            </li>
            <li>
               <p>
                  <code>WorkflowExecutionCompleted</code> – The workflow execution was closed due to successful completion.</p>
            </li>
            <li>
               <p>
                  <code>WorkflowExecutionContinuedAsNew</code> – The workflow execution was closed and a new execution of the same type
        was created with the same workflowId.</p>
            </li>
            <li>
               <p>
                  <code>WorkflowExecutionFailed</code> – The workflow execution closed due to a failure.</p>
            </li>
            <li>
               <p>
                  <code>WorkflowExecutionSignaled</code> – An external signal was received for the workflow execution.</p>
            </li>
            <li>
               <p>
                  <code>WorkflowExecutionStarted</code> – The workflow execution was started.</p>
            </li>
            <li>
               <p>
                  <code>WorkflowExecutionTerminated</code> – The workflow execution was terminated.</p>
            </li>
            <li>
               <p>
                  <code>WorkflowExecutionTimedOut</code> – The workflow execution was closed because a time out was exceeded.</p>
            </li>
         </ul>")
type historyEvent = {
  @ocaml.doc("<p>Provides the details of the <code>StartLambdaFunctionFailed</code> event. It isn't set
      for other event types.</p>")
  startLambdaFunctionFailedEventAttributes: option<startLambdaFunctionFailedEventAttributes>,
  @ocaml.doc("<p>Provides the details of the <code>ScheduleLambdaFunctionFailed</code> event. It isn't
      set for other event types.</p>")
  scheduleLambdaFunctionFailedEventAttributes: option<scheduleLambdaFunctionFailedEventAttributes>,
  @ocaml.doc("<p>Provides the details of the <code>LambdaFunctionTimedOut</code> event. It isn't set for
      other event types.</p>")
  lambdaFunctionTimedOutEventAttributes: option<lambdaFunctionTimedOutEventAttributes>,
  @ocaml.doc("<p>Provides the details of the <code>LambdaFunctionFailed</code> event. It isn't set for
      other event types.</p>")
  lambdaFunctionFailedEventAttributes: option<lambdaFunctionFailedEventAttributes>,
  @ocaml.doc("<p>Provides the details of the <code>LambdaFunctionCompleted</code> event. It isn't set
      for other event types.</p>")
  lambdaFunctionCompletedEventAttributes: option<lambdaFunctionCompletedEventAttributes>,
  @ocaml.doc("<p>Provides the details of the <code>LambdaFunctionStarted</code> event. It isn't set for
      other event types.</p>")
  lambdaFunctionStartedEventAttributes: option<lambdaFunctionStartedEventAttributes>,
  @ocaml.doc("<p>Provides the details of the <code>LambdaFunctionScheduled</code> event. It isn't set
      for other event types.</p>")
  lambdaFunctionScheduledEventAttributes: option<lambdaFunctionScheduledEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>StartChildWorkflowExecutionFailed</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  startChildWorkflowExecutionFailedEventAttributes: option<
    startChildWorkflowExecutionFailedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>CancelTimerFailed</code> then this member is set and provides detailed information
      about the event. It isn't set for other event types.</p>")
  cancelTimerFailedEventAttributes: option<cancelTimerFailedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>StartTimerFailed</code> then this member is set and provides detailed information
      about the event. It isn't set for other event types.</p>")
  startTimerFailedEventAttributes: option<startTimerFailedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>RequestCancelActivityTaskFailed</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  requestCancelActivityTaskFailedEventAttributes: option<
    requestCancelActivityTaskFailedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>ScheduleActivityTaskFailed</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  scheduleActivityTaskFailedEventAttributes: option<scheduleActivityTaskFailedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>RequestCancelExternalWorkflowExecutionFailed</code> then this member is set and
      provides detailed information about the event. It isn't set for other event types.</p>")
  requestCancelExternalWorkflowExecutionFailedEventAttributes: option<
    requestCancelExternalWorkflowExecutionFailedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>RequestCancelExternalWorkflowExecutionInitiated</code> then this member is set and
      provides detailed information about the event. It isn't set for other event types.</p>")
  requestCancelExternalWorkflowExecutionInitiatedEventAttributes: option<
    requestCancelExternalWorkflowExecutionInitiatedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>ExternalWorkflowExecutionCancelRequested</code> then this member is set and
      provides detailed information about the event. It isn't set for other event types. </p>")
  externalWorkflowExecutionCancelRequestedEventAttributes: option<
    externalWorkflowExecutionCancelRequestedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>SignalExternalWorkflowExecutionFailed</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  signalExternalWorkflowExecutionFailedEventAttributes: option<
    signalExternalWorkflowExecutionFailedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>ExternalWorkflowExecutionSignaled</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  externalWorkflowExecutionSignaledEventAttributes: option<
    externalWorkflowExecutionSignaledEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>SignalExternalWorkflowExecutionInitiated</code> then this member is set and
      provides detailed information about the event. It isn't set for other event types.</p>")
  signalExternalWorkflowExecutionInitiatedEventAttributes: option<
    signalExternalWorkflowExecutionInitiatedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>ChildWorkflowExecutionTerminated</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  childWorkflowExecutionTerminatedEventAttributes: option<
    childWorkflowExecutionTerminatedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>ChildWorkflowExecutionCanceled</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  childWorkflowExecutionCanceledEventAttributes: option<
    childWorkflowExecutionCanceledEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>ChildWorkflowExecutionTimedOut</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  childWorkflowExecutionTimedOutEventAttributes: option<
    childWorkflowExecutionTimedOutEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>ChildWorkflowExecutionFailed</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  childWorkflowExecutionFailedEventAttributes: option<childWorkflowExecutionFailedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>ChildWorkflowExecutionCompleted</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  childWorkflowExecutionCompletedEventAttributes: option<
    childWorkflowExecutionCompletedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>ChildWorkflowExecutionStarted</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  childWorkflowExecutionStartedEventAttributes: option<
    childWorkflowExecutionStartedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>StartChildWorkflowExecutionInitiated</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  startChildWorkflowExecutionInitiatedEventAttributes: option<
    startChildWorkflowExecutionInitiatedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>TimerCanceled</code> then this member is set and provides detailed information
      about the event. It isn't set for other event types.</p>")
  timerCanceledEventAttributes: option<timerCanceledEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>TimerFired</code> then this member is set and provides detailed information about
      the event. It isn't set for other event types.</p>")
  timerFiredEventAttributes: option<timerFiredEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>TimerStarted</code> then this member is set and provides detailed information
      about the event. It isn't set for other event types.</p>")
  timerStartedEventAttributes: option<timerStartedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>DecisionTaskFailed</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  recordMarkerFailedEventAttributes: option<recordMarkerFailedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>MarkerRecorded</code> then this member is set and provides detailed information
      about the event. It isn't set for other event types.</p>")
  markerRecordedEventAttributes: option<markerRecordedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>WorkflowExecutionSignaled</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  workflowExecutionSignaledEventAttributes: option<workflowExecutionSignaledEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>ActivityTaskcancelRequested</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  activityTaskCancelRequestedEventAttributes: option<activityTaskCancelRequestedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>ActivityTaskCanceled</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  activityTaskCanceledEventAttributes: option<activityTaskCanceledEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>ActivityTaskTimedOut</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  activityTaskTimedOutEventAttributes: option<activityTaskTimedOutEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>ActivityTaskFailed</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  activityTaskFailedEventAttributes: option<activityTaskFailedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>ActivityTaskCompleted</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  activityTaskCompletedEventAttributes: option<activityTaskCompletedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>ActivityTaskStarted</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  activityTaskStartedEventAttributes: option<activityTaskStartedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>ActivityTaskScheduled</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  activityTaskScheduledEventAttributes: option<activityTaskScheduledEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>DecisionTaskTimedOut</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  decisionTaskTimedOutEventAttributes: option<decisionTaskTimedOutEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>DecisionTaskCompleted</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  decisionTaskCompletedEventAttributes: option<decisionTaskCompletedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>DecisionTaskStarted</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  decisionTaskStartedEventAttributes: option<decisionTaskStartedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>DecisionTaskScheduled</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  decisionTaskScheduledEventAttributes: option<decisionTaskScheduledEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>WorkflowExecutionCancelRequested</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  workflowExecutionCancelRequestedEventAttributes: option<
    workflowExecutionCancelRequestedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>WorkflowExecutionTerminated</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  workflowExecutionTerminatedEventAttributes: option<workflowExecutionTerminatedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>ContinueAsNewWorkflowExecutionFailed</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  continueAsNewWorkflowExecutionFailedEventAttributes: option<
    continueAsNewWorkflowExecutionFailedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>WorkflowExecutionContinuedAsNew</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  workflowExecutionContinuedAsNewEventAttributes: option<
    workflowExecutionContinuedAsNewEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>CancelWorkflowExecutionFailed</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  cancelWorkflowExecutionFailedEventAttributes: option<
    cancelWorkflowExecutionFailedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>WorkflowExecutionCanceled</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  workflowExecutionCanceledEventAttributes: option<workflowExecutionCanceledEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>WorkflowExecutionTimedOut</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  workflowExecutionTimedOutEventAttributes: option<workflowExecutionTimedOutEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>FailWorkflowExecutionFailed</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  failWorkflowExecutionFailedEventAttributes: option<failWorkflowExecutionFailedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>WorkflowExecutionFailed</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  workflowExecutionFailedEventAttributes: option<workflowExecutionFailedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>CompleteWorkflowExecutionFailed</code> then this member is set and provides
      detailed information about the event. It isn't set for other event types.</p>")
  completeWorkflowExecutionFailedEventAttributes: option<
    completeWorkflowExecutionFailedEventAttributes,
  >,
  @ocaml.doc("<p>If the event is of type <code>WorkflowExecutionCompleted</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  workflowExecutionCompletedEventAttributes: option<workflowExecutionCompletedEventAttributes>,
  @ocaml.doc("<p>If the event is of type <code>WorkflowExecutionStarted</code> then this member is set and provides detailed
      information about the event. It isn't set for other event types.</p>")
  workflowExecutionStartedEventAttributes: option<workflowExecutionStartedEventAttributes>,
  @ocaml.doc(
    "<p>The system generated ID of the event. This ID uniquely identifies the event with in the workflow execution history.</p>"
  )
  eventId: eventId,
  @ocaml.doc("<p>The type of the history event.</p>") eventType: eventType,
  @ocaml.doc("<p>The date and time when the event occurred.</p>") eventTimestamp: timestamp_,
}
@ocaml.doc("<p>Specifies a decision made by the decider. A decision can be one of these types:</p>
         <ul>
            <li>
               <p>
                  <code>CancelTimer</code> – Cancels a previously started timer and records a <code>TimerCanceled</code> event in the
        history.</p>
            </li>
            <li>
               <p>
                  <code>CancelWorkflowExecution</code> – Closes the workflow execution and records a
        <code>WorkflowExecutionCanceled</code> event in the history.</p>
            </li>
            <li>
               <p>
                  <code>CompleteWorkflowExecution</code> – Closes the workflow execution and records a
        <code>WorkflowExecutionCompleted</code> event in the history .</p>
            </li>
            <li>
               <p>
                  <code>ContinueAsNewWorkflowExecution</code> – Closes the workflow execution and starts a new workflow execution of the
        same type using the same workflow ID and a unique run Id. A <code>WorkflowExecutionContinuedAsNew</code> event
        is recorded in the history.</p>
            </li>
            <li>
               <p>
                  <code>FailWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionFailed</code>
        event in the history.</p>
            </li>
            <li>
               <p>
                  <code>RecordMarker</code> – Records a <code>MarkerRecorded</code> event in the history. Markers can be used for adding
        custom information in the history for instance to let deciders know that they don't need to look at the history
        beyond the marker event.</p>
            </li>
            <li>
               <p>
                  <code>RequestCancelActivityTask</code> – Attempts to cancel a previously scheduled activity task. If the activity task
        was scheduled but has not been assigned to a worker, then it is canceled. If the activity task was already
        assigned to a worker, then the worker is informed that cancellation has been requested in the response to
        <a>RecordActivityTaskHeartbeat</a>.</p>
            </li>
            <li>
               <p>
                  <code>RequestCancelExternalWorkflowExecution</code> – Requests that a request be made to cancel the specified external
        workflow execution and records a <code>RequestCancelExternalWorkflowExecutionInitiated</code> event in the
        history.</p>
            </li>
            <li>
               <p>
                  <code>ScheduleActivityTask</code> – Schedules an activity task.</p>
            </li>
            <li>
               <p>
                  <code>SignalExternalWorkflowExecution</code> – Requests a signal to be delivered to the specified external workflow
        execution and records a <code>SignalExternalWorkflowExecutionInitiated</code> event in the history.</p>
            </li>
            <li>
               <p>
                  <code>StartChildWorkflowExecution</code> – Requests that a child workflow execution be started and records a
        <code>StartChildWorkflowExecutionInitiated</code> event in the history. The child workflow execution is a
        separate workflow execution with its own history.</p>
            </li>
            <li>
               <p>
                  <code>StartTimer</code> – Starts a timer for this workflow execution and records a <code>TimerStarted</code> event in
        the history. This timer fires after the specified delay and record a <code>TimerFired</code> event.</p>
            </li>
         </ul>
         <p>
            <b>Access Control</b>
         </p>
         <p>If you grant permission to use <code>RespondDecisionTaskCompleted</code>, you can use IAM policies to express
      permissions for the list of decisions returned by this action as if they were members of the API. Treating
      decisions as a pseudo API maintains a uniform conceptual model and helps keep policies readable. For details and
      example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF
          Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

         <p>
            <b>Decision Failure</b>
         </p>

         <p>Decisions can fail for several reasons</p>

         <ul>
            <li>
               <p>The ordering of decisions should follow a logical flow. Some decisions might not make sense in the current context of the workflow execution and therefore fails.</p>
            </li>
            <li>
               <p>A limit on your account was reached.</p>
            </li>
            <li>
               <p>The decision lacks sufficient permissions.</p>
            </li>
         </ul>

         <p>One of the following events might be added to the history to indicate an error. The event attribute's
          <code>cause</code> parameter indicates the cause. If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
  because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a>
          in the <i>Amazon SWF Developer Guide</i>.</p>

         <ul>
            <li>
               <p>
                  <code>ScheduleActivityTaskFailed</code> – A <code>ScheduleActivityTask</code> decision failed. This could happen if the
        activity type specified in the decision isn't registered, is in a deprecated state, or the decision isn't
        properly configured.</p>
            </li>
            <li>
               <p>
                    <code>RequestCancelActivityTaskFailed</code> – A
                        <code>RequestCancelActivityTask</code> decision failed. This could happen if
                    there is no open activity task with the specified activityId.</p>
            </li>
            <li>
               <p>
                    <code>StartTimerFailed</code> – A <code>StartTimer</code> decision failed. This
                    could happen if there is another open timer with the same timerId.</p>
            </li>
            <li>
               <p>
                    <code>CancelTimerFailed</code> – A <code>CancelTimer</code> decision failed.
                    This could happen if there is no open timer with the specified
                    timerId.</p>
            </li>
            <li>
               <p>
                    <code>StartChildWorkflowExecutionFailed</code> – A
                        <code>StartChildWorkflowExecution</code> decision failed. This could happen
                    if the workflow type specified isn't registered, is deprecated, or the decision
                    isn't properly configured.</p>
            </li>
            <li>
               <p>
                    <code>SignalExternalWorkflowExecutionFailed</code> – A
                        <code>SignalExternalWorkflowExecution</code> decision failed. This could
                    happen if the <code>workflowID</code> specified in the decision was
                    incorrect.</p>
            </li>
            <li>
               <p>
                    <code>RequestCancelExternalWorkflowExecutionFailed</code> – A
                        <code>RequestCancelExternalWorkflowExecution</code> decision failed. This
                    could happen if the <code>workflowID</code> specified in the decision was
                    incorrect.</p>
            </li>
            <li>
               <p>
                    <code>CancelWorkflowExecutionFailed</code> – A
                        <code>CancelWorkflowExecution</code> decision failed. This could happen if
                    there is an unhandled decision task pending in the workflow execution.</p>
            </li>
            <li>
               <p>
                    <code>CompleteWorkflowExecutionFailed</code> – A
                        <code>CompleteWorkflowExecution</code> decision failed. This could happen if
                    there is an unhandled decision task pending in the workflow execution.</p>
            </li>
            <li>
               <p>
                    <code>ContinueAsNewWorkflowExecutionFailed</code> – A
                        <code>ContinueAsNewWorkflowExecution</code> decision failed. This could
                    happen if there is an unhandled decision task pending in the workflow execution
                    or the ContinueAsNewWorkflowExecution decision was not configured
                    correctly.</p>
            </li>
            <li>
               <p>
                    <code>FailWorkflowExecutionFailed</code> – A <code>FailWorkflowExecution</code>
                    decision failed. This could happen if there is an unhandled decision task
                    pending in the workflow execution.</p>
            </li>
         </ul>
         <p>The preceding error events might occur due to an error in the decider logic, which might put the workflow execution in an unstable state The cause field in the event structure for the error event indicates the cause of the error.</p>
         <note>
            <p>A workflow execution may be closed by the decider by returning one of the following decisions when completing
      a decision task: <code>CompleteWorkflowExecution</code>, <code>FailWorkflowExecution</code>,
          <code>CancelWorkflowExecution</code> and <code>ContinueAsNewWorkflowExecution</code>. An <code>UnhandledDecision</code> fault
      is returned if a workflow closing decision is specified and a signal or activity event had been added to the
      history while the decision task was being performed by the decider. Unlike the above situations which are logic
      issues, this fault is always possible because of race conditions in a distributed system. The right action here is
      to call <a>RespondDecisionTaskCompleted</a>  without any decisions. This would result in another decision task
      with these new events included in the history. The decider should handle the new events and may decide to close
      the workflow execution.</p>
         </note>
         <p>
            <b>How to Code a Decision</b>
         </p>
         <p>You code a decision by first setting the decision type field to one of the above decision values, and then set the corresponding attributes field shown below:</p>
         <ul>
            <li>
               <p>
                  <code>
                     <a>ScheduleActivityTaskDecisionAttributes</a>
                    </code>
               </p>
            </li>
            <li>
               <p>
                  <code>
                     <a>RequestCancelActivityTaskDecisionAttributes</a>
                    </code>
               </p>
            </li>
            <li>
               <p>
                  <code>
                     <a>CompleteWorkflowExecutionDecisionAttributes</a>
                  </code>
                </p>
            </li>
            <li>
               <p>
                  <code>
                     <a>FailWorkflowExecutionDecisionAttributes</a>
                  </code>
                </p>
            </li>
            <li>
               <p>
                  <code>
                     <a>CancelWorkflowExecutionDecisionAttributes</a>
                  </code>
                </p>
            </li>
            <li>
               <p>
                  <code>
                     <a>ContinueAsNewWorkflowExecutionDecisionAttributes</a>
                  </code>
                </p>
            </li>
            <li>
               <p>
                  <code>
                     <a>RecordMarkerDecisionAttributes</a>
                  </code>
                </p>
            </li>
            <li>
               <p>
                  <code>
                     <a>StartTimerDecisionAttributes</a>
                  </code>
                </p>
            </li>
            <li>
               <p>
                  <code>
                     <a>CancelTimerDecisionAttributes</a>
                  </code>
                </p>
            </li>
            <li>
               <p>
                  <code>
                     <a>SignalExternalWorkflowExecutionDecisionAttributes</a>
                  </code>
                </p>
            </li>
            <li>
               <p>
                  <code>
                     <a>RequestCancelExternalWorkflowExecutionDecisionAttributes</a>
                  </code>
                </p>
            </li>
            <li>
               <p>
                  <code>
                     <a>StartChildWorkflowExecutionDecisionAttributes</a>
                  </code>
                </p>
            </li>
         </ul>")
type decision = {
  @ocaml.doc("<p>Provides the details of the <code>ScheduleLambdaFunction</code> decision. It isn't set
      for other decision types.</p>")
  scheduleLambdaFunctionDecisionAttributes: option<scheduleLambdaFunctionDecisionAttributes>,
  @ocaml.doc(
    "<p>Provides the details of the <code>StartChildWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
  )
  startChildWorkflowExecutionDecisionAttributes: option<
    startChildWorkflowExecutionDecisionAttributes,
  >,
  @ocaml.doc("<p>Provides the details of the <code>RequestCancelExternalWorkflowExecution</code> decision.
      It isn't set for other decision types.</p>")
  requestCancelExternalWorkflowExecutionDecisionAttributes: option<
    requestCancelExternalWorkflowExecutionDecisionAttributes,
  >,
  @ocaml.doc(
    "<p>Provides the details of the <code>SignalExternalWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
  )
  signalExternalWorkflowExecutionDecisionAttributes: option<
    signalExternalWorkflowExecutionDecisionAttributes,
  >,
  @ocaml.doc(
    "<p>Provides the details of the <code>CancelTimer</code> decision. It isn't set for other decision types.</p>"
  )
  cancelTimerDecisionAttributes: option<cancelTimerDecisionAttributes>,
  @ocaml.doc(
    "<p>Provides the details of the <code>StartTimer</code> decision. It isn't set for other decision types.</p>"
  )
  startTimerDecisionAttributes: option<startTimerDecisionAttributes>,
  @ocaml.doc(
    "<p>Provides the details of the <code>RecordMarker</code> decision. It isn't set for other decision types.</p>"
  )
  recordMarkerDecisionAttributes: option<recordMarkerDecisionAttributes>,
  @ocaml.doc(
    "<p>Provides the details of the <code>ContinueAsNewWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
  )
  continueAsNewWorkflowExecutionDecisionAttributes: option<
    continueAsNewWorkflowExecutionDecisionAttributes,
  >,
  @ocaml.doc(
    "<p>Provides the details of the <code>CancelWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
  )
  cancelWorkflowExecutionDecisionAttributes: option<cancelWorkflowExecutionDecisionAttributes>,
  @ocaml.doc(
    "<p>Provides the details of the <code>FailWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
  )
  failWorkflowExecutionDecisionAttributes: option<failWorkflowExecutionDecisionAttributes>,
  @ocaml.doc(
    "<p>Provides the details of the <code>CompleteWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
  )
  completeWorkflowExecutionDecisionAttributes: option<completeWorkflowExecutionDecisionAttributes>,
  @ocaml.doc(
    "<p>Provides the details of the <code>RequestCancelActivityTask</code> decision. It isn't set for other decision types.</p>"
  )
  requestCancelActivityTaskDecisionAttributes: option<requestCancelActivityTaskDecisionAttributes>,
  @ocaml.doc(
    "<p>Provides the details of the <code>ScheduleActivityTask</code> decision. It isn't set for other decision types.</p>"
  )
  scheduleActivityTaskDecisionAttributes: option<scheduleActivityTaskDecisionAttributes>,
  @ocaml.doc("<p>Specifies the type of the decision.</p>") decisionType: decisionType,
}
type activityTypeInfoList = array<activityTypeInfo>
type historyEventList = array<historyEvent>
type decisionList = array<decision>
@ocaml.doc("<fullname>Amazon Simple Workflow Service</fullname>

         <p>The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build applications that use Amazon's cloud to
      coordinate work across distributed components. In Amazon SWF, a <i>task</i>
      represents a logical unit of work that is performed by a component of your workflow.
      Coordinating tasks in a workflow involves managing intertask dependencies, scheduling, and 
      concurrency in accordance with the logical flow of the application.</p>

         <p>Amazon SWF gives you full control over implementing tasks and coordinating them without
      worrying about underlying complexities such as tracking their progress and maintaining their
      state.</p>

         <p>This documentation serves as reference only. For a broader overview of the Amazon SWF
      programming model, see the <i>
               <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/\">Amazon SWF Developer Guide</a>
            </i>.</p>")
module UndeprecateDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the domain of the deprecated workflow type.</p>") name: domainName,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new external new: request => t = "UndeprecateDomainCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TerminateWorkflowExecution = {
  type t
  type request = {
    @ocaml.doc("<p>If set, specifies the policy to use for the child workflow executions of the workflow
      execution being terminated. This policy overrides the child policy specified for the workflow
      execution at registration time or when starting the execution.</p>
         <p>The supported child policies are:</p>
         <ul>
            <li>
               <p>
                  <code>TERMINATE</code> – The child executions are terminated.</p>
            </li>
            <li>
               <p>
                  <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
          execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its
          history. It is up to the decider to take appropriate actions when it receives an execution
          history with this event.</p>
            </li>
            <li>
               <p>
                  <code>ABANDON</code> – No action is taken. The child executions continue to
          run.</p>
            </li>
         </ul>
         <note>
            <p>A child policy for this workflow execution must be specified either as a default for
        the workflow type or through this parameter. If neither this parameter is set nor a default
        child policy was specified at registration time then a fault is returned.</p>
         </note>")
    childPolicy: option<childPolicy>,
    @ocaml.doc("<p> Details for terminating the workflow execution.</p>") details: option<data>,
    @ocaml.doc("<p> A descriptive reason for terminating the workflow execution.</p>")
    reason: option<terminateReason>,
    @ocaml.doc("<p>The runId of the workflow execution to terminate.</p>")
    runId: option<workflowRunIdOptional>,
    @ocaml.doc("<p>The workflowId of the workflow execution to terminate.</p>")
    workflowId: workflowId,
    @ocaml.doc("<p>The domain of the workflow execution to terminate.</p>") domain: domainName,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "TerminateWorkflowExecutionCommand"
  let make = (~workflowId, ~domain, ~childPolicy=?, ~details=?, ~reason=?, ~runId=?, ()) =>
    new({
      childPolicy: childPolicy,
      details: details,
      reason: reason,
      runId: runId,
      workflowId: workflowId,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SignalWorkflowExecution = {
  type t
  type request = {
    @ocaml.doc("<p>Data to attach to the <code>WorkflowExecutionSignaled</code> event in the target
      workflow execution's history.</p>")
    input: option<data>,
    @ocaml.doc(
      "<p>The name of the signal. This name must be meaningful to the target workflow.</p>"
    )
    signalName: signalName,
    @ocaml.doc("<p>The runId of the workflow execution to signal.</p>")
    runId: option<workflowRunIdOptional>,
    @ocaml.doc("<p>The workflowId of the workflow execution to signal.</p>") workflowId: workflowId,
    @ocaml.doc("<p>The name of the domain containing the workflow execution to signal.</p>")
    domain: domainName,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new external new: request => t = "SignalWorkflowExecutionCommand"
  let make = (~signalName, ~workflowId, ~domain, ~input=?, ~runId=?, ()) =>
    new({
      input: input,
      signalName: signalName,
      runId: runId,
      workflowId: workflowId,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RespondActivityTaskFailed = {
  type t
  type request = {
    @ocaml.doc("<p> Detailed information about the failure.</p>") details: option<data>,
    @ocaml.doc("<p>Description of the error that may assist in diagnostics.</p>")
    reason: option<failureReason>,
    @ocaml.doc("<p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>

         <important>
            <p>
               <code>taskToken</code> is generated by the service and should be treated as an opaque value.
        If the task is passed to another process, its <code>taskToken</code> must also be passed.
        This enables it to provide its progress and respond with results.</p>
         </important>")
    taskToken: taskToken,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "RespondActivityTaskFailedCommand"
  let make = (~taskToken, ~details=?, ~reason=?, ()) =>
    new({details: details, reason: reason, taskToken: taskToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RespondActivityTaskCompleted = {
  type t
  type request = {
    @ocaml.doc("<p>The result of the activity task. It is a free form string that is implementation
      specific.</p>")
    result: option<data>,
    @ocaml.doc("<p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
         <important>
            <p>
               <code>taskToken</code> is generated by the service and should be treated as an opaque value.
        If the task is passed to another process, its <code>taskToken</code> must also be passed.
        This enables it to provide its progress and respond with results.</p>
         </important>")
    taskToken: taskToken,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "RespondActivityTaskCompletedCommand"
  let make = (~taskToken, ~result=?, ()) => new({result: result, taskToken: taskToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RespondActivityTaskCanceled = {
  type t
  type request = {
    @ocaml.doc("<p> Information about the cancellation.</p>") details: option<data>,
    @ocaml.doc("<p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
         <important>
            <p>
               <code>taskToken</code> is generated by the service and should be treated as an opaque value.
        If the task is passed to another process, its <code>taskToken</code> must also be passed.
        This enables it to provide its progress and respond with results.</p>
         </important>")
    taskToken: taskToken,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "RespondActivityTaskCanceledCommand"
  let make = (~taskToken, ~details=?, ()) => new({details: details, taskToken: taskToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RequestCancelWorkflowExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The runId of the workflow execution to cancel.</p>")
    runId: option<workflowRunIdOptional>,
    @ocaml.doc("<p>The workflowId of the workflow execution to cancel.</p>") workflowId: workflowId,
    @ocaml.doc("<p>The name of the domain containing the workflow execution to cancel.</p>")
    domain: domainName,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "RequestCancelWorkflowExecutionCommand"
  let make = (~workflowId, ~domain, ~runId=?, ()) =>
    new({runId: runId, workflowId: workflowId, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RecordActivityTaskHeartbeat = {
  type t
  type request = {
    @ocaml.doc("<p>If specified, contains details about the progress of the task.</p>")
    details: option<limitedData>,
    @ocaml.doc("<p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
         <important>
            <p>
               <code>taskToken</code> is generated by the service and should be treated as an opaque value.
        If the task is passed to another process, its <code>taskToken</code> must also be passed.
        This enables it to provide its progress and respond with results. </p>
         </important>")
    taskToken: taskToken,
  }
  @ocaml.doc("<p>Status information about an activity task.</p>")
  type response = {
    @ocaml.doc("<p>Set to <code>true</code> if cancellation of the task is requested.</p>")
    cancelRequested: canceled,
  }
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "RecordActivityTaskHeartbeatCommand"
  let make = (~taskToken, ~details=?, ()) => new({details: details, taskToken: taskToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeprecateDomain = {
  type t
  type request = {@ocaml.doc("<p>The name of the domain to deprecate.</p>") name: domainName}
  type response = {.}
  @module("@aws-sdk/client-swf") @new external new: request => t = "DeprecateDomainCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags to remove from the Amazon SWF domain.</p>")
    tagKeys: resourceTagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>") resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UndeprecateWorkflowType = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the domain of the deprecated workflow type.</p>")
    workflowType: workflowType,
    @ocaml.doc("<p>The name of the domain of the deprecated workflow type.</p>") domain: domainName,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new external new: request => t = "UndeprecateWorkflowTypeCommand"
  let make = (~workflowType, ~domain, ()) => new({workflowType: workflowType, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UndeprecateActivityType = {
  type t
  type request = {
    @ocaml.doc("<p>The activity type to undeprecate.</p>") activityType: activityType,
    @ocaml.doc("<p>The name of the domain of the deprecated activity type.</p>") domain: domainName,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new external new: request => t = "UndeprecateActivityTypeCommand"
  let make = (~activityType, ~domain, ()) => new({activityType: activityType, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartWorkflowExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The IAM role to attach to this workflow execution.</p>
         <note>
            <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you
        don't attach an IAM role, any attempt to schedule a Lambda task fails. This results in a
          <code>ScheduleLambdaFunctionFailed</code> history event. For more information, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html\">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the
          <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
    lambdaRole: option<arn>,
    @ocaml.doc("<p>If set, specifies the policy to use for the child workflow executions of this workflow
      execution if it is terminated, by calling the <a>TerminateWorkflowExecution</a>
      action explicitly or due to an expired timeout. This policy overrides the default child policy
      specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p>
         <p>The supported child policies are:</p>
         <ul>
            <li>
               <p>
                  <code>TERMINATE</code> – The child executions are terminated.</p>
            </li>
            <li>
               <p>
                  <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
          execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its
          history. It is up to the decider to take appropriate actions when it receives an execution
          history with this event.</p>
            </li>
            <li>
               <p>
                  <code>ABANDON</code> – No action is taken. The child executions continue to
          run.</p>
            </li>
         </ul>
         <note>
            <p>A child policy for this workflow execution must be specified either as a default for
        the workflow type or through this parameter. If neither this parameter is set nor a default
        child policy was specified at registration time then a fault is returned.</p>
         </note>")
    childPolicy: option<childPolicy>,
    @ocaml.doc("<p>Specifies the maximum duration of decision tasks for this workflow execution. This
      parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering
      the workflow type using <a>RegisterWorkflowType</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to
        <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
         <note>
            <p>A task start-to-close timeout for this workflow execution must be specified either as
        a default for the workflow type or through this parameter. If neither this parameter is set
        nor a default task start-to-close timeout was specified at registration time then a fault is
        returned.</p>
         </note>")
    taskStartToCloseTimeout: option<durationInSecondsOptional>,
    @ocaml.doc("<p>The list of tags to associate with the workflow execution. You can specify a maximum of
      5 tags. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and
      specifying a <a>TagFilter</a>.</p>")
    @as("tagList")
    tagList_: option<tagList_>,
    @ocaml.doc("<p>The total duration for this workflow execution. This overrides the
      defaultExecutionStartToCloseTimeout specified when registering the workflow type.</p>

         <p>The duration is specified in seconds; an integer greater than or equal to
        <code>0</code>. Exceeding this limit causes the workflow execution to time out. Unlike some
      of the other timeout parameters in Amazon SWF, you cannot specify a value of \"NONE\" for this
      timeout; there is a one-year max limit on the time that a workflow execution can
      run.</p>

         <note>
            <p>An execution start-to-close timeout must be specified either through this parameter
        or as a default when the workflow type is registered. If neither this parameter nor a
        default execution start-to-close timeout is specified, a fault is returned.</p>
         </note>")
    executionStartToCloseTimeout: option<durationInSecondsOptional>,
    @ocaml.doc("<p>The input for the workflow execution. This is a free form string which should be
      meaningful to the workflow you are starting. This <code>input</code> is made available to the
      new workflow execution in the <code>WorkflowExecutionStarted</code> history event.</p>")
    input: option<data>,
    @ocaml.doc("<p>The task priority to use for this workflow execution. This overrides any default
      priority that was assigned when the workflow type was registered. If not set, then the default
      task priority for the workflow type is used. Valid values are integers that range from Java's
        <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647).
      Higher numbers indicate higher priority.</p>
         <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task
        Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
    taskPriority: option<taskPriority>,
    @ocaml.doc("<p>The task list to use for the decision tasks generated for this workflow execution. This
      overrides the <code>defaultTaskList</code> specified when registering the workflow
      type.</p>
         <note>
            <p>A task list for this workflow execution must be specified either as a default for the
        workflow type or through this parameter. If neither this parameter is set nor a default task
        list was specified at registration time then a fault is returned.</p>
         </note>
    
         <p>The specified string must not start or end with whitespace. It must not contain a
        <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
      control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must
      not <i>be</i> the literal string <code>arn</code>.</p>")
    taskList: option<taskList>,
    @ocaml.doc("<p>The type of the workflow to start.</p>") workflowType: workflowType,
    @ocaml.doc("<p>The user defined identifier associated with the workflow execution. You can use this to
      associate a custom identifier with the workflow execution. You may specify the same identifier
      if a workflow execution is logically a <i>restart</i> of a previous execution.
      You cannot have two open workflow executions with the same <code>workflowId</code> at the same
      time within the same domain.</p>
    
         <p>The specified string must not start or end with whitespace. It must not contain a
        <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
      control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must
      not <i>be</i> the literal string <code>arn</code>.</p>")
    workflowId: workflowId,
    @ocaml.doc("<p>The name of the domain in which the workflow execution is created.</p>")
    domain: domainName,
  }
  @ocaml.doc("<p>Specifies the <code>runId</code> of a workflow execution.</p>")
  type response = {
    @ocaml.doc("<p>The <code>runId</code> of a workflow execution. This ID is generated by the service and
      can be used to uniquely identify the workflow execution within a domain.</p>")
    runId: option<workflowRunId>,
  }
  @module("@aws-sdk/client-swf") @new external new: request => t = "StartWorkflowExecutionCommand"
  let make = (
    ~workflowType,
    ~workflowId,
    ~domain,
    ~lambdaRole=?,
    ~childPolicy=?,
    ~taskStartToCloseTimeout=?,
    ~tagList_=?,
    ~executionStartToCloseTimeout=?,
    ~input=?,
    ~taskPriority=?,
    ~taskList=?,
    (),
  ) =>
    new({
      lambdaRole: lambdaRole,
      childPolicy: childPolicy,
      taskStartToCloseTimeout: taskStartToCloseTimeout,
      tagList_: tagList_,
      executionStartToCloseTimeout: executionStartToCloseTimeout,
      input: input,
      taskPriority: taskPriority,
      taskList: taskList,
      workflowType: workflowType,
      workflowId: workflowId,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterWorkflowType = {
  type t
  type request = {
    @ocaml.doc("<p>The default IAM role attached to this workflow type.</p>
         <note>
            <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you
        don't specify an IAM role when you start this workflow type, the default Lambda role is
        attached to the execution. For more information, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html\">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the
          <i>Amazon SWF Developer Guide</i>.</p>
         </note>")
    defaultLambdaRole: option<arn>,
    @ocaml.doc("<p>If set, specifies the default policy to use for the child workflow executions when a
      workflow execution of this type is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This
      default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code>
            <a>Decision</a>.</p>
         <p>The supported child policies are:</p>
         <ul>
            <li>
               <p>
                  <code>TERMINATE</code> – The child executions are terminated.</p>
            </li>
            <li>
               <p>
                  <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
          execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its
          history. It is up to the decider to take appropriate actions when it receives an execution
          history with this event.</p>
            </li>
            <li>
               <p>
                  <code>ABANDON</code> – No action is taken. The child executions continue to
          run.</p>
            </li>
         </ul>")
    defaultChildPolicy: option<childPolicy>,
    @ocaml.doc("<p>The default task priority to assign to the workflow type. If not assigned, then
        <code>0</code> is used. Valid values are integers that range from Java's
        <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647).
      Higher numbers indicate higher priority.</p>
         <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task
        Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>")
    defaultTaskPriority: option<taskPriority>,
    @ocaml.doc("<p>If set, specifies the default task list to use for scheduling decision tasks for
      executions of this workflow type. This default is used only if a task list isn't provided when
      starting the execution through the <a>StartWorkflowExecution</a> Action or
        <code>StartChildWorkflowExecution</code>
            <a>Decision</a>.</p>")
    defaultTaskList: option<taskList>,
    @ocaml.doc("<p>If set, specifies the default maximum duration for executions of this workflow type.
      You can override this default when starting an execution through the <a>StartWorkflowExecution</a> Action or <code>StartChildWorkflowExecution</code>
            <a>Decision</a>.</p>

         <p>The duration is specified in seconds; an integer greater than or equal to 0. Unlike
      some of the other timeout parameters in Amazon SWF, you cannot specify a value of \"NONE\" for
        <code>defaultExecutionStartToCloseTimeout</code>; there is a one-year max limit on the time
      that a workflow execution can run. Exceeding this limit always causes the workflow execution
      to time out.</p>")
    defaultExecutionStartToCloseTimeout: option<durationInSecondsOptional>,
    @ocaml.doc("<p>If set, specifies the default maximum duration of decision tasks for this workflow
      type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code>
            <a>Decision</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to
        <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
    defaultTaskStartToCloseTimeout: option<durationInSecondsOptional>,
    @ocaml.doc("<p>Textual description of the workflow type.</p>") description: option<description>,
    @ocaml.doc("<p>The version of the workflow type.</p>
         <note>
            <p>The workflow type consists of the name and version, the combination of which must be
        unique within the domain. To get a list of all currently registered workflow types, use the
          <a>ListWorkflowTypes</a> action.</p>
         </note>
    
         <p>The specified string must not start or end with whitespace. It must not contain a
        <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
      control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must
      not <i>be</i> the literal string <code>arn</code>.</p>")
    version: version,
    @ocaml.doc("<p>The name of the workflow type.</p>
    
         <p>The specified string must not start or end with whitespace. It must not contain a
        <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
      control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must
      not <i>be</i> the literal string <code>arn</code>.</p>")
    name: name,
    @ocaml.doc("<p>The name of the domain in which to register the workflow type.</p>")
    domain: domainName,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new external new: request => t = "RegisterWorkflowTypeCommand"
  let make = (
    ~version,
    ~name,
    ~domain,
    ~defaultLambdaRole=?,
    ~defaultChildPolicy=?,
    ~defaultTaskPriority=?,
    ~defaultTaskList=?,
    ~defaultExecutionStartToCloseTimeout=?,
    ~defaultTaskStartToCloseTimeout=?,
    ~description=?,
    (),
  ) =>
    new({
      defaultLambdaRole: defaultLambdaRole,
      defaultChildPolicy: defaultChildPolicy,
      defaultTaskPriority: defaultTaskPriority,
      defaultTaskList: defaultTaskList,
      defaultExecutionStartToCloseTimeout: defaultExecutionStartToCloseTimeout,
      defaultTaskStartToCloseTimeout: defaultTaskStartToCloseTimeout,
      description: description,
      version: version,
      name: name,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterActivityType = {
  type t
  type request = {
    @ocaml.doc("<p>If set, specifies the default maximum duration for a task of this activity type. This
      default can be overridden when scheduling an activity task using the
        <code>ScheduleActivityTask</code>
            <a>Decision</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to
        <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
    defaultTaskScheduleToCloseTimeout: option<durationInSecondsOptional>,
    @ocaml.doc("<p>If set, specifies the default maximum duration that a task of this activity type can
      wait before being assigned to a worker. This default can be overridden when scheduling an
      activity task using the <code>ScheduleActivityTask</code>
            <a>Decision</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to
        <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
    defaultTaskScheduleToStartTimeout: option<durationInSecondsOptional>,
    @ocaml.doc("<p>The default task priority to assign to the activity type. If not assigned, then
        <code>0</code> is used. Valid values are integers that range from Java's
        <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647).
      Higher numbers indicate higher priority.</p>
         <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task
        Priority</a> in the <i>in the
      <i>Amazon SWF Developer Guide</i>.</i>.</p>")
    defaultTaskPriority: option<taskPriority>,
    @ocaml.doc("<p>If set, specifies the default task list to use for scheduling tasks of this activity
      type. This default task list is used if a task list isn't provided when a task is scheduled
      through the <code>ScheduleActivityTask</code>
            <a>Decision</a>.</p>")
    defaultTaskList: option<taskList>,
    @ocaml.doc("<p>If set, specifies the default maximum time before which a worker processing a task of
      this type must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If
      the timeout is exceeded, the activity task is automatically timed out. This default can be
      overridden when scheduling an activity task using the <code>ScheduleActivityTask</code>
            <a>Decision</a>. If the activity worker subsequently attempts to record a heartbeat
      or returns a result, the activity worker receives an <code>UnknownResource</code> fault. In
      this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should
      clean up the activity task.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to
        <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
    defaultTaskHeartbeatTimeout: option<durationInSecondsOptional>,
    @ocaml.doc("<p>If set, specifies the default maximum duration that a worker can take to process tasks
      of this activity type. This default can be overridden when scheduling an activity task using
      the <code>ScheduleActivityTask</code>
            <a>Decision</a>.</p>
         <p>The duration is specified in seconds, an integer greater than or equal to
        <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>")
    defaultTaskStartToCloseTimeout: option<durationInSecondsOptional>,
    @ocaml.doc("<p>A textual description of the activity type.</p>")
    description: option<description>,
    @ocaml.doc("<p>The version of the activity type.</p>
         <note>
            <p>The activity type consists of the name and version, the combination of which must be
        unique within the domain.</p>
         </note>
    
         <p>The specified string must not start or end with whitespace. It must not contain a
        <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
      control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must
      not <i>be</i> the literal string <code>arn</code>.</p>")
    version: version,
    @ocaml.doc("<p>The name of the activity type within the domain.</p>
    
         <p>The specified string must not start or end with whitespace. It must not contain a
        <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
      control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must
      not <i>be</i> the literal string <code>arn</code>.</p>")
    name: name,
    @ocaml.doc("<p>The name of the domain in which this activity is to be registered.</p>")
    domain: domainName,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new external new: request => t = "RegisterActivityTypeCommand"
  let make = (
    ~version,
    ~name,
    ~domain,
    ~defaultTaskScheduleToCloseTimeout=?,
    ~defaultTaskScheduleToStartTimeout=?,
    ~defaultTaskPriority=?,
    ~defaultTaskList=?,
    ~defaultTaskHeartbeatTimeout=?,
    ~defaultTaskStartToCloseTimeout=?,
    ~description=?,
    (),
  ) =>
    new({
      defaultTaskScheduleToCloseTimeout: defaultTaskScheduleToCloseTimeout,
      defaultTaskScheduleToStartTimeout: defaultTaskScheduleToStartTimeout,
      defaultTaskPriority: defaultTaskPriority,
      defaultTaskList: defaultTaskList,
      defaultTaskHeartbeatTimeout: defaultTaskHeartbeatTimeout,
      defaultTaskStartToCloseTimeout: defaultTaskStartToCloseTimeout,
      description: description,
      version: version,
      name: name,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PollForActivityTask = {
  type t
  type request = {
    @ocaml.doc("<p>Identity of the worker making the request, recorded in the
        <code>ActivityTaskStarted</code> event in the workflow history. This enables diagnostic
      tracing when problems arise. The form of this identity is user defined.</p>")
    identity: option<identity>,
    @ocaml.doc("<p>Specifies the task list to poll for activity tasks.</p>
    
         <p>The specified string must not start or end with whitespace. It must not contain a
        <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
      control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must
      not <i>be</i> the literal string <code>arn</code>.</p>")
    taskList: taskList,
    @ocaml.doc("<p>The name of the domain that contains the task lists being polled.</p>")
    domain: domainName,
  }
  @ocaml.doc("<p>Unit of work sent to an activity worker.</p>")
  type response = {
    @ocaml.doc(
      "<p>The inputs provided when the activity task was scheduled. The form of the input is user defined and should be meaningful to the activity implementation.</p>"
    )
    input: option<data>,
    @ocaml.doc("<p>The type of this activity task.</p>") activityType: activityType,
    @ocaml.doc("<p>The workflow execution that started this activity task.</p>")
    workflowExecution: workflowExecution,
    @ocaml.doc(
      "<p>The ID of the <code>ActivityTaskStarted</code> event recorded in the history.</p>"
    )
    startedEventId: eventId,
    @ocaml.doc("<p>The unique ID of the task.</p>") activityId: activityId,
    @ocaml.doc(
      "<p>The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.</p>"
    )
    taskToken: taskToken,
  }
  @module("@aws-sdk/client-swf") @new external new: request => t = "PollForActivityTaskCommand"
  let make = (~taskList, ~domain, ~identity=?, ()) =>
    new({identity: identity, taskList: taskList, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomain = {
  type t
  type request = {@ocaml.doc("<p>The name of the domain to describe.</p>") name: domainName}
  @ocaml.doc("<p>Contains details of a domain.</p>")
  type response = {
    @ocaml.doc("<p>The domain configuration. Currently, this includes only the domain's retention
      period.</p>")
    configuration: domainConfiguration,
    @ocaml.doc("<p>The basic information about a domain, such as its name, status, and
      description.</p>")
    domainInfo: domainInfo,
  }
  @module("@aws-sdk/client-swf") @new external new: request => t = "DescribeDomainCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeprecateWorkflowType = {
  type t
  type request = {
    @ocaml.doc("<p>The workflow type to deprecate.</p>") workflowType: workflowType,
    @ocaml.doc("<p>The name of the domain in which the workflow type is registered.</p>")
    domain: domainName,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new external new: request => t = "DeprecateWorkflowTypeCommand"
  let make = (~workflowType, ~domain, ()) => new({workflowType: workflowType, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeprecateActivityType = {
  type t
  type request = {
    @ocaml.doc("<p>The activity type to deprecate.</p>") activityType: activityType,
    @ocaml.doc("<p>The name of the domain in which the activity type is registered.</p>")
    domain: domainName,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new external new: request => t = "DeprecateActivityTypeCommand"
  let make = (~activityType, ~domain, ()) => new({activityType: activityType, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CountPendingDecisionTasks = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the task list.</p>") taskList: taskList,
    @ocaml.doc("<p>The name of the domain that contains the task list.</p>") domain: domainName,
  }
  @ocaml.doc("<p>Contains the count of tasks in a task list.</p>")
  type response = {
    @ocaml.doc(
      "<p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>"
    )
    truncated: option<truncated>,
    @ocaml.doc("<p>The number of tasks in the task list.</p>") count: count,
  }
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "CountPendingDecisionTasksCommand"
  let make = (~taskList, ~domain, ()) => new({taskList: taskList, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CountPendingActivityTasks = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the task list.</p>") taskList: taskList,
    @ocaml.doc("<p>The name of the domain that contains the task list.</p>") domain: domainName,
  }
  @ocaml.doc("<p>Contains the count of tasks in a task list.</p>")
  type response = {
    @ocaml.doc(
      "<p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>"
    )
    truncated: option<truncated>,
    @ocaml.doc("<p>The number of tasks in the task list.</p>") count: count,
  }
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "CountPendingActivityTasksCommand"
  let make = (~taskList, ~domain, ()) => new({taskList: taskList, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CountOpenWorkflowExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>If specified, only workflow executions matching the <code>WorkflowId</code> in the
      filter are counted.</p>
         <note>
            <p>
               <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
        mutually exclusive. You can specify at most one of these in a request.</p>
         </note>")
    executionFilter: option<workflowExecutionFilter>,
    @ocaml.doc("<p>If specified, only executions that have a tag that matches the filter are
      counted.</p>
         <note>
            <p>
               <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
        mutually exclusive. You can specify at most one of these in a request.</p>
         </note>")
    tagFilter: option<tagFilter>,
    @ocaml.doc("<p>Specifies the type of the workflow executions to be counted.</p>
         <note>
            <p>
               <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
        mutually exclusive. You can specify at most one of these in a request.</p>
         </note>")
    typeFilter: option<workflowTypeFilter>,
    @ocaml.doc("<p>Specifies the start time criteria that workflow executions must meet in order to be
      counted.</p>")
    startTimeFilter: executionTimeFilter,
    @ocaml.doc("<p>The name of the domain containing the workflow executions to count.</p>")
    domain: domainName,
  }
  @ocaml.doc("<p>Contains the count of workflow executions returned from <a>CountOpenWorkflowExecutions</a> or
      <a>CountClosedWorkflowExecutions</a>
         </p>")
  type response = {
    @ocaml.doc(
      "<p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>"
    )
    truncated: option<truncated>,
    @ocaml.doc("<p>The number of workflow executions.</p>") count: count,
  }
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "CountOpenWorkflowExecutionsCommand"
  let make = (~startTimeFilter, ~domain, ~executionFilter=?, ~tagFilter=?, ~typeFilter=?, ()) =>
    new({
      executionFilter: executionFilter,
      tagFilter: tagFilter,
      typeFilter: typeFilter,
      startTimeFilter: startTimeFilter,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CountClosedWorkflowExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>If specified, only workflow executions that match this close status are counted. This
      filter has an affect only if <code>executionStatus</code> is specified as
      <code>CLOSED</code>.</p>
         <note>
            <p>
               <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
          <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
        request.</p>
         </note>")
    closeStatusFilter: option<closeStatusFilter>,
    @ocaml.doc("<p>If specified, only executions that have a tag that matches the filter are
      counted.</p>
         <note>
            <p>
               <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
          <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
        request.</p>
         </note>")
    tagFilter: option<tagFilter>,
    @ocaml.doc("<p>If specified, indicates the type of the workflow executions to be counted.</p>
         <note>
            <p>
               <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
          <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
        request.</p>
         </note>")
    typeFilter: option<workflowTypeFilter>,
    @ocaml.doc("<p>If specified, only workflow executions matching the <code>WorkflowId</code> in the
      filter are counted.</p>
         <note>
            <p>
               <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
          <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
        request.</p>
         </note>")
    executionFilter: option<workflowExecutionFilter>,
    @ocaml.doc("<p>If specified, only workflow executions that meet the close time criteria of the filter
      are counted.</p>
         <note>
            <p>
               <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
        must specify one of these in a request but not both.</p>
         </note>")
    closeTimeFilter: option<executionTimeFilter>,
    @ocaml.doc("<p>If specified, only workflow executions that meet the start time criteria of the filter
      are counted.</p>
         <note>
            <p>
               <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
        must specify one of these in a request but not both.</p>
         </note>")
    startTimeFilter: option<executionTimeFilter>,
    @ocaml.doc("<p>The name of the domain containing the workflow executions to count.</p>")
    domain: domainName,
  }
  @ocaml.doc("<p>Contains the count of workflow executions returned from <a>CountOpenWorkflowExecutions</a> or
      <a>CountClosedWorkflowExecutions</a>
         </p>")
  type response = {
    @ocaml.doc(
      "<p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>"
    )
    truncated: option<truncated>,
    @ocaml.doc("<p>The number of workflow executions.</p>") count: count,
  }
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "CountClosedWorkflowExecutionsCommand"
  let make = (
    ~domain,
    ~closeStatusFilter=?,
    ~tagFilter=?,
    ~typeFilter=?,
    ~executionFilter=?,
    ~closeTimeFilter=?,
    ~startTimeFilter=?,
    (),
  ) =>
    new({
      closeStatusFilter: closeStatusFilter,
      tagFilter: tagFilter,
      typeFilter: typeFilter,
      executionFilter: executionFilter,
      closeTimeFilter: closeTimeFilter,
      startTimeFilter: startTimeFilter,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags to add to a domain. </p> 
         <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>")
    tags: resourceTagList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>") resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterDomain = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to be added when registering a domain.</p> 
         <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>")
    tags: option<resourceTagList>,
    @ocaml.doc("<p>The duration (in days) that records and histories of workflow executions on the domain
      should be kept by the service. After the retention period, the workflow execution isn't
      available in the results of visibility calls.</p>
         <p>If you pass the value <code>NONE</code> or <code>0</code> (zero), then the workflow
      execution history isn't retained. As soon as the workflow execution completes, the execution
      record and its history are deleted.</p>
         <p>The maximum workflow execution retention period is 90 days. For more information about
      Amazon SWF service limits, see: <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html\">Amazon SWF Service Limits</a> in the
        <i>Amazon SWF Developer Guide</i>.</p>")
    workflowExecutionRetentionPeriodInDays: durationInDays,
    @ocaml.doc("<p>A text description of the domain.</p>") description: option<description>,
    @ocaml.doc("<p>Name of the domain to register. The name must be unique in the region that the domain
      is registered in.</p>
    
         <p>The specified string must not start or end with whitespace. It must not contain a
        <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
      control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must
      not <i>be</i> the literal string <code>arn</code>.</p>")
    name: domainName,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new external new: request => t = "RegisterDomainCommand"
  let make = (~workflowExecutionRetentionPeriodInDays, ~name, ~tags=?, ~description=?, ()) =>
    new({
      tags: tags,
      workflowExecutionRetentionPeriodInDays: workflowExecutionRetentionPeriodInDays,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>") resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>An array of tags associated with the domain.</p>") tags: option<resourceTagList>,
  }
  @module("@aws-sdk/client-swf") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomains = {
  type t
  type request = {
    @ocaml.doc("<p>When set to <code>true</code>, returns the results in reverse order. By default, the
      results are returned in ascending alphabetical order by <code>name</code> of the
      domains.</p>")
    reverseOrder: option<reverseOrder>,
    @ocaml.doc("<p>The maximum number of results that are returned per call.
  Use <code>nextPageToken</code> to obtain further pages of results. </p>")
    maximumPageSize: option<pageSize>,
    @ocaml.doc("<p>Specifies the registration status of the domains to list.</p>")
    registrationStatus: registrationStatus,
    @ocaml.doc("<p>If <code>NextPageToken</code> is returned there are more results
      available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
      the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
      after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has 
      exceeded its maximum lifetime</code>\". </p>
      
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned
      in a single call. </p>")
    nextPageToken: option<pageToken>,
  }
  @ocaml.doc("<p>Contains a paginated collection of DomainInfo structures.</p>")
  type response = {
    @ocaml.doc("<p>If a <code>NextPageToken</code> was returned by a previous call, there are more
  results available. To retrieve the next page of results, make the call again using the returned token in
  <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>A list of DomainInfo structures.</p>") domainInfos: domainInfoList,
  }
  @module("@aws-sdk/client-swf") @new external new: request => t = "ListDomainsCommand"
  let make = (~registrationStatus, ~reverseOrder=?, ~maximumPageSize=?, ~nextPageToken=?, ()) =>
    new({
      reverseOrder: reverseOrder,
      maximumPageSize: maximumPageSize,
      registrationStatus: registrationStatus,
      nextPageToken: nextPageToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkflowType = {
  type t
  type request = {
    @ocaml.doc("<p>The workflow type to describe.</p>") workflowType: workflowType,
    @ocaml.doc("<p>The name of the domain in which this workflow type is registered.</p>")
    domain: domainName,
  }
  @ocaml.doc("<p>Contains details about a workflow type.</p>")
  type response = {
    @ocaml.doc("<p>Configuration settings of the workflow type registered through <a>RegisterWorkflowType</a>
         </p>")
    configuration: workflowTypeConfiguration,
    @ocaml.doc("<p>General information about the workflow type.</p>
         <p>The status of the workflow type (returned in the WorkflowTypeInfo structure) can be one of the following.</p>
         <ul>
            <li>
               <p>
                  <code>REGISTERED</code> – The type is registered and available. Workers supporting this type should be running.</p>
            </li>
            <li>
               <p>
                  <code>DEPRECATED</code> – The type was deprecated using <a>DeprecateWorkflowType</a>, but is still in use. You should
        keep workers supporting this type running. You cannot create new workflow executions of this type.</p>
            </li>
         </ul>")
    typeInfo: workflowTypeInfo,
  }
  @module("@aws-sdk/client-swf") @new external new: request => t = "DescribeWorkflowTypeCommand"
  let make = (~workflowType, ~domain, ()) => new({workflowType: workflowType, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkflowExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The workflow execution to describe.</p>") execution: workflowExecution,
    @ocaml.doc("<p>The name of the domain containing the workflow execution.</p>")
    domain: domainName,
  }
  @ocaml.doc("<p>Contains details about a workflow execution.</p>")
  type response = {
    @ocaml.doc("<p>The latest executionContext provided by the decider for this workflow execution. A decider can provide an
      executionContext (a free-form string) when closing a decision task using <a>RespondDecisionTaskCompleted</a>.</p>")
    latestExecutionContext: option<data>,
    @ocaml.doc(
      "<p>The time when the last activity task was scheduled for this workflow execution. You can use this information to determine if the workflow has not made progress for an unusually long period of time and might require a corrective action.</p>"
    )
    latestActivityTaskTimestamp: option<timestamp_>,
    @ocaml.doc(
      "<p>The number of tasks for this workflow execution. This includes open and closed tasks of all types.</p>"
    )
    openCounts: workflowExecutionOpenCounts,
    @ocaml.doc(
      "<p>The configuration settings for this workflow execution including timeout values, tasklist etc.</p>"
    )
    executionConfiguration: workflowExecutionConfiguration,
    @ocaml.doc("<p>Information about the workflow execution.</p>")
    executionInfo: workflowExecutionInfo,
  }
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "DescribeWorkflowExecutionCommand"
  let make = (~execution, ~domain, ()) => new({execution: execution, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeActivityType = {
  type t
  type request = {
    @ocaml.doc("<p>The activity type to get information about. Activity types are identified by the
        <code>name</code> and <code>version</code> that were supplied when the activity was
      registered.</p>")
    activityType: activityType,
    @ocaml.doc("<p>The name of the domain in which the activity type is registered.</p>")
    domain: domainName,
  }
  @ocaml.doc("<p>Detailed information about an activity type.</p>")
  type response = {
    @ocaml.doc("<p>The configuration settings registered with the activity type.</p>")
    configuration: activityTypeConfiguration,
    @ocaml.doc("<p>General information about the activity type.</p>
         <p>The status of activity type (returned in the ActivityTypeInfo structure) can be one of the following.</p>
         <ul>
            <li>
               <p>
                  <code>REGISTERED</code> – The type is registered and available. Workers supporting this
        type should be running.
      </p>
            </li>
            <li>
               <p>
                  <code>DEPRECATED</code> – The type was deprecated using <a>DeprecateActivityType</a>, but is
        still in use. You should keep workers supporting this type running.
        You cannot create new tasks of this type.
      </p>
            </li>
         </ul>")
    typeInfo: activityTypeInfo,
  }
  @module("@aws-sdk/client-swf") @new external new: request => t = "DescribeActivityTypeCommand"
  let make = (~activityType, ~domain, ()) => new({activityType: activityType, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkflowTypes = {
  type t
  type request = {
    @ocaml.doc("<p>When set to <code>true</code>, returns the results in reverse order. By default the
      results are returned in ascending alphabetical order of the <code>name</code> of the workflow
      types.</p>")
    reverseOrder: option<reverseOrder>,
    @ocaml.doc("<p>The maximum number of results that are returned per call.
  Use <code>nextPageToken</code> to obtain further pages of results. </p>")
    maximumPageSize: option<pageSize>,
    @ocaml.doc("<p>If <code>NextPageToken</code> is returned there are more results
      available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
      the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
      after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has 
      exceeded its maximum lifetime</code>\". </p>
      
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned
      in a single call. </p>")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Specifies the registration status of the workflow types to list.</p>")
    registrationStatus: registrationStatus,
    @ocaml.doc("<p>If specified, lists the workflow type with this name.</p>") name: option<name>,
    @ocaml.doc("<p>The name of the domain in which the workflow types have been registered.</p>")
    domain: domainName,
  }
  @ocaml.doc("<p>Contains a paginated list of information structures about workflow types.</p>")
  type response = {
    @ocaml.doc("<p>If a <code>NextPageToken</code> was returned by a previous call, there are more
  results available. To retrieve the next page of results, make the call again using the returned token in
  <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>The list of workflow type information.</p>") typeInfos: workflowTypeInfoList,
  }
  @module("@aws-sdk/client-swf") @new external new: request => t = "ListWorkflowTypesCommand"
  let make = (
    ~registrationStatus,
    ~domain,
    ~reverseOrder=?,
    ~maximumPageSize=?,
    ~nextPageToken=?,
    ~name=?,
    (),
  ) =>
    new({
      reverseOrder: reverseOrder,
      maximumPageSize: maximumPageSize,
      nextPageToken: nextPageToken,
      registrationStatus: registrationStatus,
      name: name,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOpenWorkflowExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>If specified, only workflow executions matching the workflow ID specified in the filter
      are returned.</p>
         <note>
            <p>
               <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
        mutually exclusive. You can specify at most one of these in a request.</p>
         </note>")
    executionFilter: option<workflowExecutionFilter>,
    @ocaml.doc("<p>When set to <code>true</code>, returns the results in reverse order. By default the
      results are returned in descending order of the start time of the executions.</p>")
    reverseOrder: option<reverseOrder>,
    @ocaml.doc("<p>The maximum number of results that are returned per call.
  Use <code>nextPageToken</code> to obtain further pages of results. </p>")
    maximumPageSize: option<pageSize>,
    @ocaml.doc("<p>If <code>NextPageToken</code> is returned there are more results
      available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
      the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
      after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has 
      exceeded its maximum lifetime</code>\". </p>
      
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned
      in a single call. </p>")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>If specified, only executions that have the matching tag are listed.</p>
         <note>
            <p>
               <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
        mutually exclusive. You can specify at most one of these in a request.</p>
         </note>")
    tagFilter: option<tagFilter>,
    @ocaml.doc("<p>If specified, only executions of the type specified in the filter are
      returned.</p>
         <note>
            <p>
               <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
        mutually exclusive. You can specify at most one of these in a request.</p>
         </note>")
    typeFilter: option<workflowTypeFilter>,
    @ocaml.doc("<p>Workflow executions are included in the returned results based on whether their start
      times are within the range specified by this filter.</p>")
    startTimeFilter: executionTimeFilter,
    @ocaml.doc("<p>The name of the domain that contains the workflow executions to list.</p>")
    domain: domainName,
  }
  @ocaml.doc("<p>Contains a paginated list of information about workflow executions.</p>")
  type response = {
    @ocaml.doc("<p>If a <code>NextPageToken</code> was returned by a previous call, there are more
  results available. To retrieve the next page of results, make the call again using the returned token in
  <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>The list of workflow information structures.</p>")
    executionInfos: workflowExecutionInfoList,
  }
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "ListOpenWorkflowExecutionsCommand"
  let make = (
    ~startTimeFilter,
    ~domain,
    ~executionFilter=?,
    ~reverseOrder=?,
    ~maximumPageSize=?,
    ~nextPageToken=?,
    ~tagFilter=?,
    ~typeFilter=?,
    (),
  ) =>
    new({
      executionFilter: executionFilter,
      reverseOrder: reverseOrder,
      maximumPageSize: maximumPageSize,
      nextPageToken: nextPageToken,
      tagFilter: tagFilter,
      typeFilter: typeFilter,
      startTimeFilter: startTimeFilter,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListClosedWorkflowExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>When set to <code>true</code>, returns the results in reverse order. By default the
      results are returned in descending order of the start or the close time of the
      executions.</p>")
    reverseOrder: option<reverseOrder>,
    @ocaml.doc("<p>The maximum number of results that are returned per call.
  Use <code>nextPageToken</code> to obtain further pages of results. </p>")
    maximumPageSize: option<pageSize>,
    @ocaml.doc("<p>If <code>NextPageToken</code> is returned there are more results
      available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
      the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
      after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has 
      exceeded its maximum lifetime</code>\". </p>
      
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned
      in a single call. </p>")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>If specified, only executions that have the matching tag are listed.</p>
         <note>
            <p>
               <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
          <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
        request.</p>
         </note>")
    tagFilter: option<tagFilter>,
    @ocaml.doc("<p>If specified, only executions of the type specified in the filter are
      returned.</p>
         <note>
            <p>
               <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
          <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
        request.</p>
         </note>")
    typeFilter: option<workflowTypeFilter>,
    @ocaml.doc("<p>If specified, only workflow executions that match this <i>close
        status</i> are listed. For example, if TERMINATED is specified, then only TERMINATED
      workflow executions are listed.</p>
         <note>
            <p>
               <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
          <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
        request.</p>
         </note>")
    closeStatusFilter: option<closeStatusFilter>,
    @ocaml.doc("<p>If specified, only workflow executions matching the workflow ID specified in the filter
      are returned.</p>
         <note>
            <p>
               <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
          <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
        request.</p>
         </note>")
    executionFilter: option<workflowExecutionFilter>,
    @ocaml.doc("<p>If specified, the workflow executions are included in the returned results based on
      whether their close times are within the range specified by this filter. Also, if this
      parameter is specified, the returned results are ordered by their close times.</p>
         <note>
            <p>
               <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
        must specify one of these in a request but not both.</p>
         </note>")
    closeTimeFilter: option<executionTimeFilter>,
    @ocaml.doc("<p>If specified, the workflow executions are included in the returned results based on
      whether their start times are within the range specified by this filter. Also, if this
      parameter is specified, the returned results are ordered by their start times.</p>
         <note>
            <p>
               <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
        must specify one of these in a request but not both.</p>
         </note>")
    startTimeFilter: option<executionTimeFilter>,
    @ocaml.doc("<p>The name of the domain that contains the workflow executions to list.</p>")
    domain: domainName,
  }
  @ocaml.doc("<p>Contains a paginated list of information about workflow executions.</p>")
  type response = {
    @ocaml.doc("<p>If a <code>NextPageToken</code> was returned by a previous call, there are more
  results available. To retrieve the next page of results, make the call again using the returned token in
  <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>The list of workflow information structures.</p>")
    executionInfos: workflowExecutionInfoList,
  }
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "ListClosedWorkflowExecutionsCommand"
  let make = (
    ~domain,
    ~reverseOrder=?,
    ~maximumPageSize=?,
    ~nextPageToken=?,
    ~tagFilter=?,
    ~typeFilter=?,
    ~closeStatusFilter=?,
    ~executionFilter=?,
    ~closeTimeFilter=?,
    ~startTimeFilter=?,
    (),
  ) =>
    new({
      reverseOrder: reverseOrder,
      maximumPageSize: maximumPageSize,
      nextPageToken: nextPageToken,
      tagFilter: tagFilter,
      typeFilter: typeFilter,
      closeStatusFilter: closeStatusFilter,
      executionFilter: executionFilter,
      closeTimeFilter: closeTimeFilter,
      startTimeFilter: startTimeFilter,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListActivityTypes = {
  type t
  type request = {
    @ocaml.doc("<p>When set to <code>true</code>, returns the results in reverse order. By default, the
      results are returned in ascending alphabetical order by <code>name</code> of the activity
      types.</p>")
    reverseOrder: option<reverseOrder>,
    @ocaml.doc("<p>The maximum number of results that are returned per call.
  Use <code>nextPageToken</code> to obtain further pages of results. </p>")
    maximumPageSize: option<pageSize>,
    @ocaml.doc("<p>If <code>NextPageToken</code> is returned there are more results
      available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
      the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
      after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has 
      exceeded its maximum lifetime</code>\". </p>
      
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned
      in a single call. </p>")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Specifies the registration status of the activity types to list.</p>")
    registrationStatus: registrationStatus,
    @ocaml.doc("<p>If specified, only lists the activity types that have this name.</p>")
    name: option<name>,
    @ocaml.doc("<p>The name of the domain in which the activity types have been registered.</p>")
    domain: domainName,
  }
  @ocaml.doc("<p>Contains a paginated list of activity type information structures.</p>")
  type response = {
    @ocaml.doc("<p>If a <code>NextPageToken</code> was returned by a previous call, there are more
  results available. To retrieve the next page of results, make the call again using the returned token in
  <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>List of activity type information.</p>") typeInfos: activityTypeInfoList,
  }
  @module("@aws-sdk/client-swf") @new external new: request => t = "ListActivityTypesCommand"
  let make = (
    ~registrationStatus,
    ~domain,
    ~reverseOrder=?,
    ~maximumPageSize=?,
    ~nextPageToken=?,
    ~name=?,
    (),
  ) =>
    new({
      reverseOrder: reverseOrder,
      maximumPageSize: maximumPageSize,
      nextPageToken: nextPageToken,
      registrationStatus: registrationStatus,
      name: name,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RespondDecisionTaskCompleted = {
  type t
  @ocaml.doc("<p>Input data for a TaskCompleted response to a decision task.</p>")
  type request = {
    @ocaml.doc("<p>User defined context to add to workflow execution.</p>")
    executionContext: option<data>,
    @ocaml.doc("<p>The list of decisions (possibly empty) made by the decider while processing this
      decision task. See the docs for the <a>Decision</a> structure for
      details.</p>")
    decisions: option<decisionList>,
    @ocaml.doc("<p>The <code>taskToken</code> from the <a>DecisionTask</a>.</p>
         <important>
            <p>
               <code>taskToken</code> is generated by the service and should be treated as an opaque value.
        If the task is passed to another process, its <code>taskToken</code> must also be passed.
        This enables it to provide its progress and respond with results.</p>
         </important>")
    taskToken: taskToken,
  }
  type response = {.}
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "RespondDecisionTaskCompletedCommand"
  let make = (~taskToken, ~executionContext=?, ~decisions=?, ()) =>
    new({executionContext: executionContext, decisions: decisions, taskToken: taskToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PollForDecisionTask = {
  type t
  type request = {
    @ocaml.doc("<p>When set to <code>true</code>, returns the events in reverse order. By default the
      results are returned in ascending order of the <code>eventTimestamp</code> of the
      events.</p>")
    reverseOrder: option<reverseOrder>,
    @ocaml.doc("<p>The maximum number of results that are returned per call.
  Use <code>nextPageToken</code> to obtain further pages of results. </p>  
         <p>This
      is an upper limit only; the actual number of results returned per call may be fewer than the
      specified maximum.</p>")
    maximumPageSize: option<pageSize>,
    @ocaml.doc("<p>If <code>NextPageToken</code> is returned there are more results
      available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
      the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
      after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has 
      exceeded its maximum lifetime</code>\". </p>
      
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned
      in a single call. </p>
         <note>
            <p>The <code>nextPageToken</code> returned by this action cannot be used with <a>GetWorkflowExecutionHistory</a> to get the next page. You must call <a>PollForDecisionTask</a> again (with the <code>nextPageToken</code>) to retrieve
        the next page of history records. Calling <a>PollForDecisionTask</a> with a
          <code>nextPageToken</code> doesn't return a new decision task.</p>
         </note>")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Identity of the decider making the request, which is recorded in the
      DecisionTaskStarted event in the workflow history. This enables diagnostic tracing when
      problems arise. The form of this identity is user defined.</p>")
    identity: option<identity>,
    @ocaml.doc("<p>Specifies the task list to poll for decision tasks.</p>
    
         <p>The specified string must not start or end with whitespace. It must not contain a
        <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
      control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must
      not <i>be</i> the literal string <code>arn</code>.</p>")
    taskList: taskList,
    @ocaml.doc("<p>The name of the domain containing the task lists to poll.</p>")
    domain: domainName,
  }
  @ocaml.doc(
    "<p>A structure that represents a decision task. Decision tasks are sent to deciders in order for them to make decisions.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>The ID of the DecisionTaskStarted event of the previous decision task of this workflow execution that was processed by the decider. This can be used to determine the events in the history new since the last decision task received by the decider.</p>"
    )
    previousStartedEventId: option<eventId>,
    @ocaml.doc("<p>If a <code>NextPageToken</code> was returned by a previous call, there are more
  results available. To retrieve the next page of results, make the call again using the returned token in
  <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>")
    nextPageToken: option<pageToken>,
    @ocaml.doc(
      "<p>A paginated list of history events of the workflow execution. The decider uses this during the processing of the decision task.</p>"
    )
    events: historyEventList,
    @ocaml.doc(
      "<p>The type of the workflow execution for which this decision task was created.</p>"
    )
    workflowType: workflowType,
    @ocaml.doc("<p>The workflow execution for which this decision task was created.</p>")
    workflowExecution: workflowExecution,
    @ocaml.doc(
      "<p>The ID of the <code>DecisionTaskStarted</code> event recorded in the history.</p>"
    )
    startedEventId: eventId,
    @ocaml.doc(
      "<p>The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.</p>"
    )
    taskToken: taskToken,
  }
  @module("@aws-sdk/client-swf") @new external new: request => t = "PollForDecisionTaskCommand"
  let make = (
    ~taskList,
    ~domain,
    ~reverseOrder=?,
    ~maximumPageSize=?,
    ~nextPageToken=?,
    ~identity=?,
    (),
  ) =>
    new({
      reverseOrder: reverseOrder,
      maximumPageSize: maximumPageSize,
      nextPageToken: nextPageToken,
      identity: identity,
      taskList: taskList,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorkflowExecutionHistory = {
  type t
  type request = {
    @ocaml.doc("<p>When set to <code>true</code>, returns the events in reverse order. By default the
      results are returned in ascending order of the <code>eventTimeStamp</code> of the
      events.</p>")
    reverseOrder: option<reverseOrder>,
    @ocaml.doc("<p>The maximum number of results that are returned per call.
  Use <code>nextPageToken</code> to obtain further pages of results. </p>")
    maximumPageSize: option<pageSize>,
    @ocaml.doc("<p>If <code>NextPageToken</code> is returned there are more results
      available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
      the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
      after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has 
      exceeded its maximum lifetime</code>\". </p>
      
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned
      in a single call. </p>")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Specifies the workflow execution for which to return the history.</p>")
    execution: workflowExecution,
    @ocaml.doc("<p>The name of the domain containing the workflow execution.</p>")
    domain: domainName,
  }
  @ocaml.doc(
    "<p>Paginated representation of a workflow history for a workflow execution. This is the up to date, complete and authoritative record of the events related to all tasks and events in the life of the workflow execution.</p>"
  )
  type response = {
    @ocaml.doc("<p>If a <code>NextPageToken</code> was returned by a previous call, there are more
  results available. To retrieve the next page of results, make the call again using the returned token in
  <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
         <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>The list of history events.</p>") events: historyEventList,
  }
  @module("@aws-sdk/client-swf") @new
  external new: request => t = "GetWorkflowExecutionHistoryCommand"
  let make = (~execution, ~domain, ~reverseOrder=?, ~maximumPageSize=?, ~nextPageToken=?, ()) =>
    new({
      reverseOrder: reverseOrder,
      maximumPageSize: maximumPageSize,
      nextPageToken: nextPageToken,
      execution: execution,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
