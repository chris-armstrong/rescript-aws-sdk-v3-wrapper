type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-states") @new
external createClient: unit => awsServiceClient = "StepFunctionsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type truncated = bool
type includedDetails = bool
type unsignedInteger = int
type traceHeader = string
type timestamp_ = Js.Date.t
type timeoutInSeconds = float
type taskToken = string
type tagValue = string
type tagKey = string
type syncExecutionStatus = [
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
]
type stateMachineType = [@as("EXPRESS") #EXPRESS | @as("STANDARD") #STANDARD]
type stateMachineStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE]
type sensitiveError = string
type sensitiveDataJobInput = string
type sensitiveData = string
type sensitiveCause = string
type reverseOrder = bool
type pageToken = string
type pageSize = int
type name = string
type logLevel = [@as("OFF") #OFF | @as("FATAL") #FATAL | @as("ERROR") #ERROR | @as("ALL") #ALL]
type listExecutionsPageToken = string
type includeExecutionDataGetExecutionHistory = bool
type includeExecutionData = bool
type identity = string
type historyEventType = [
  | @as("WaitStateExited") #WaitStateExited
  | @as("WaitStateEntered") #WaitStateEntered
  | @as("WaitStateAborted") #WaitStateAborted
  | @as("TaskTimedOut") #TaskTimedOut
  | @as("TaskSucceeded") #TaskSucceeded
  | @as("TaskSubmitted") #TaskSubmitted
  | @as("TaskSubmitFailed") #TaskSubmitFailed
  | @as("TaskStateExited") #TaskStateExited
  | @as("TaskStateEntered") #TaskStateEntered
  | @as("TaskStateAborted") #TaskStateAborted
  | @as("TaskStartFailed") #TaskStartFailed
  | @as("TaskStarted") #TaskStarted
  | @as("TaskScheduled") #TaskScheduled
  | @as("TaskFailed") #TaskFailed
  | @as("SucceedStateExited") #SucceedStateExited
  | @as("SucceedStateEntered") #SucceedStateEntered
  | @as("PassStateExited") #PassStateExited
  | @as("PassStateEntered") #PassStateEntered
  | @as("ParallelStateSucceeded") #ParallelStateSucceeded
  | @as("ParallelStateStarted") #ParallelStateStarted
  | @as("ParallelStateFailed") #ParallelStateFailed
  | @as("ParallelStateExited") #ParallelStateExited
  | @as("ParallelStateEntered") #ParallelStateEntered
  | @as("ParallelStateAborted") #ParallelStateAborted
  | @as("MapStateSucceeded") #MapStateSucceeded
  | @as("MapStateStarted") #MapStateStarted
  | @as("MapStateFailed") #MapStateFailed
  | @as("MapStateExited") #MapStateExited
  | @as("MapStateEntered") #MapStateEntered
  | @as("MapStateAborted") #MapStateAborted
  | @as("MapIterationSucceeded") #MapIterationSucceeded
  | @as("MapIterationStarted") #MapIterationStarted
  | @as("MapIterationFailed") #MapIterationFailed
  | @as("MapIterationAborted") #MapIterationAborted
  | @as("LambdaFunctionTimedOut") #LambdaFunctionTimedOut
  | @as("LambdaFunctionSucceeded") #LambdaFunctionSucceeded
  | @as("LambdaFunctionStartFailed") #LambdaFunctionStartFailed
  | @as("LambdaFunctionStarted") #LambdaFunctionStarted
  | @as("LambdaFunctionScheduleFailed") #LambdaFunctionScheduleFailed
  | @as("LambdaFunctionScheduled") #LambdaFunctionScheduled
  | @as("LambdaFunctionFailed") #LambdaFunctionFailed
  | @as("FailStateEntered") #FailStateEntered
  | @as("ExecutionTimedOut") #ExecutionTimedOut
  | @as("ExecutionSucceeded") #ExecutionSucceeded
  | @as("ExecutionStarted") #ExecutionStarted
  | @as("ExecutionFailed") #ExecutionFailed
  | @as("ExecutionAborted") #ExecutionAborted
  | @as("ChoiceStateExited") #ChoiceStateExited
  | @as("ChoiceStateEntered") #ChoiceStateEntered
  | @as("ActivityTimedOut") #ActivityTimedOut
  | @as("ActivitySucceeded") #ActivitySucceeded
  | @as("ActivityStarted") #ActivityStarted
  | @as("ActivityScheduleFailed") #ActivityScheduleFailed
  | @as("ActivityScheduled") #ActivityScheduled
  | @as("ActivityFailed") #ActivityFailed
]
type executionStatus = [
  | @as("ABORTED") #ABORTED
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("RUNNING") #RUNNING
]
type eventId = float
type errorMessage = string
type enabled = bool
type definition = string
type connectorParameters = string
type billedMemoryUsed = float
type billedDuration = float
type arn = string
@ocaml.doc("<p>Selects whether or not the state machine's AWS X-Ray tracing is enabled. Default is <code>false</code>
         </p>")
type tracingConfiguration = {
  @ocaml.doc("<p>When set to <code>true</code>, AWS X-Ray tracing is enabled.</p>")
  enabled: option<enabled>,
}
@ocaml.doc("<p>Contains details about a resource timeout that occurred during an execution.</p>")
type taskTimedOutEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
  @ocaml.doc("<p>The service name of the resource in a task state.</p>") resource: name,
  @ocaml.doc("<p>The action of the resource called by a task state.</p>") resourceType: name,
}
@ocaml.doc("<p>Contains details about a task that failed to submit during an execution.</p>")
type taskSubmitFailedEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
  @ocaml.doc("<p>The service name of the resource in a task state.</p>") resource: name,
  @ocaml.doc("<p>The action of the resource called by a task state.</p>") resourceType: name,
}
@ocaml.doc("<p>Contains details about the start of a task during an execution.</p>")
type taskStartedEventDetails = {
  @ocaml.doc("<p>The service name of the resource in a task state.</p>") resource: name,
  @ocaml.doc("<p>The action of the resource called by a task state.</p>") resourceType: name,
}
@ocaml.doc("<p>Contains details about a task that failed to start during an execution.</p>")
type taskStartFailedEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
  @ocaml.doc("<p>The service name of the resource in a task state.</p>") resource: name,
  @ocaml.doc("<p>The action of the resource called by a task state.</p>") resourceType: name,
}
@ocaml.doc("<p>Contains details about a task scheduled during an execution.</p>")
type taskScheduledEventDetails = {
  @ocaml.doc("<p>The maximum allowed duration between two heartbeats for the task.</p>")
  heartbeatInSeconds: option<timeoutInSeconds>,
  @ocaml.doc("<p>The maximum allowed duration of the task.</p>")
  timeoutInSeconds: option<timeoutInSeconds>,
  @ocaml.doc("<p>The JSON data passed to the resource referenced in a task state.
      Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>")
  parameters: connectorParameters,
  @ocaml.doc("<p>The region of the scheduled task</p>") region: name,
  @ocaml.doc("<p>The service name of the resource in a task state.</p>") resource: name,
  @ocaml.doc("<p>The action of the resource called by a task state.</p>") resourceType: name,
}
@ocaml.doc("<p>Contains details about a task failure event.</p>")
type taskFailedEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
  @ocaml.doc("<p>The service name of the resource in a task state.</p>") resource: name,
  @ocaml.doc("<p>The action of the resource called by a task state.</p>") resourceType: name,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Tags are key-value pairs that can be associated with Step Functions state machines and
      activities.</p> 
         <p>An array of key-value pairs. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html\">Using
      Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
        Guide</i>, and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html\">Controlling Access Using IAM
          Tags</a>.</p> 
         <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>")
type tag = {
  @ocaml.doc("<p>The value of a tag.</p>") value: option<tagValue>,
  @ocaml.doc("<p>The key of a tag.</p>") key: option<tagKey>,
}
@ocaml.doc("<p>Contains details about the state machine.</p>")
type stateMachineListItem = {
  @ocaml.doc("<p>The date the state machine is created.</p>") creationDate: timestamp_,
  @ocaml.doc("<p></p>") @as("type") type_: stateMachineType,
  @ocaml.doc("<p>The name of the state machine.</p> 
         <p>A name must <i>not</i> contain:</p>
         <ul>
            <li>
               <p>white space</p>
            </li>
            <li>
               <p>brackets <code>< > { } [ ]</code>
               </p>
            </li>
            <li>
               <p>wildcard characters <code>? *</code>
               </p>
            </li>
            <li>
               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>
               </p>
            </li>
            <li>
               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
            </li>
         </ul>
         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>")
  name: name,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the state machine.</p>")
  stateMachineArn: arn,
}
@ocaml.doc("<p>Details about a Map state that was started.</p>")
type mapStateStartedEventDetails = {
  @ocaml.doc("<p>The size of the array for Map state iterations.</p>")
  length: option<unsignedInteger>,
}
@ocaml.doc("<p>Contains details about an iteration of a Map state.</p>")
type mapIterationEventDetails = {
  @ocaml.doc("<p>The index of the array belonging to the Map state iteration.</p>")
  index: option<unsignedInteger>,
  @ocaml.doc("<p>The name of the iteration’s parent Map state.</p>") name: option<name>,
}
@ocaml.doc(
  "<p>Contains details about a lambda function timeout that occurred during an execution.</p>"
)
type lambdaFunctionTimedOutEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the timeout.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
}
@ocaml.doc(
  "<p>Contains details about a lambda function that failed to start during an execution.</p>"
)
type lambdaFunctionStartFailedEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
}
@ocaml.doc("<p>Contains details about a failed lambda function schedule event that occurred during an
      execution.</p>")
type lambdaFunctionScheduleFailedEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
}
@ocaml.doc("<p>Contains details about a lambda function that failed during an execution.</p>")
type lambdaFunctionFailedEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
}
@ocaml.doc("<p>Provides details about input or output in an execution history event.</p>")
type historyEventExecutionDataDetails = {
  @ocaml.doc("<p>Indicates whether input or output was truncated in the response. Always
      <code>false</code> for API calls.</p>")
  truncated: option<truncated>,
}
@ocaml.doc(
  "<p>Contains details about the execution timeout that occurred during the execution.</p>"
)
type executionTimedOutEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the timeout.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
}
@ocaml.doc("<p>Contains details about an execution.</p>")
type executionListItem = {
  @ocaml.doc("<p>If the execution already ended, the date the execution stopped.</p>")
  stopDate: option<timestamp_>,
  @ocaml.doc("<p>The date the execution started.</p>") startDate: timestamp_,
  @ocaml.doc("<p>The current status of the execution.</p>") status: executionStatus,
  @ocaml.doc("<p>The name of the execution.</p> 
         <p>A name must <i>not</i> contain:</p>
         <ul>
            <li>
               <p>white space</p>
            </li>
            <li>
               <p>brackets <code>< > { } [ ]</code>
               </p>
            </li>
            <li>
               <p>wildcard characters <code>? *</code>
               </p>
            </li>
            <li>
               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>
               </p>
            </li>
            <li>
               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
            </li>
         </ul>
         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>")
  name: name,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the executed state machine.</p>")
  stateMachineArn: arn,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the execution.</p>")
  executionArn: arn,
}
@ocaml.doc("<p>Contains details about an execution failure event.</p>")
type executionFailedEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
}
@ocaml.doc("<p>Contains details about an abort of an execution.</p>")
type executionAbortedEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
}
@ocaml.doc("<p></p>")
type cloudWatchLogsLogGroup = {
  @ocaml.doc("<p>The ARN of the the CloudWatch log group to which you want your logs emitted to. The ARN
      must end with <code>:*</code>
         </p>")
  logGroupArn: option<arn>,
}
@ocaml.doc("<p>Provides details about execution input or output.</p>")
type cloudWatchEventsExecutionDataDetails = {
  @ocaml.doc("<p>Indicates whether input or output was included in the response. Always <code>true</code>
      for API calls. </p>")
  included: option<includedDetails>,
}
@ocaml.doc("<p>An object that describes workflow billing details.</p>")
type billingDetails = {
  @ocaml.doc("<p>Billed duration of your workflow, in milliseconds.</p>")
  billedDurationInMilliseconds: option<billedDuration>,
  @ocaml.doc("<p>Billed memory consumption of your workflow, in MB.</p>")
  billedMemoryUsedInMB: option<billedMemoryUsed>,
}
@ocaml.doc("<p>Contains details about an activity timeout that occurred during an execution.</p>")
type activityTimedOutEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the timeout.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
}
@ocaml.doc("<p>Contains details about the start of an activity during an execution.</p>")
type activityStartedEventDetails = {
  @ocaml.doc("<p>The name of the worker that the task is assigned to. These names are provided by the
      workers when calling <a>GetActivityTask</a>.</p>")
  workerName: option<identity>,
}
@ocaml.doc("<p>Contains details about an activity schedule failure that occurred during an
      execution.</p>")
type activityScheduleFailedEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
}
@ocaml.doc("<p>Contains details about an activity.</p>")
type activityListItem = {
  @ocaml.doc("<p>The date the activity is created.</p>") creationDate: timestamp_,
  @ocaml.doc("<p>The name of the activity.</p> 
         <p>A name must <i>not</i> contain:</p>
         <ul>
            <li>
               <p>white space</p>
            </li>
            <li>
               <p>brackets <code>< > { } [ ]</code>
               </p>
            </li>
            <li>
               <p>wildcard characters <code>? *</code>
               </p>
            </li>
            <li>
               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>
               </p>
            </li>
            <li>
               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
            </li>
         </ul>
         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>")
  name: name,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the activity.</p>")
  activityArn: arn,
}
@ocaml.doc("<p>Contains details about an activity that failed during an execution.</p>")
type activityFailedEventDetails = {
  @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
  cause: option<sensitiveCause>,
  @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
}
@ocaml.doc("<p>Contains details about the successful completion of a task state.</p>")
type taskSucceededEventDetails = {
  @ocaml.doc("<p>Contains details about the output of an execution history event.</p>")
  outputDetails: option<historyEventExecutionDataDetails>,
  @ocaml.doc("<p>The full JSON response from a resource when a task has succeeded. This response becomes
      the output of the related task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>")
  output: option<sensitiveData>,
  @ocaml.doc("<p>The service name of the resource in a task state.</p>") resource: name,
  @ocaml.doc("<p>The action of the resource called by a task state.</p>") resourceType: name,
}
@ocaml.doc("<p>Contains details about a task submitted to a resource .</p>")
type taskSubmittedEventDetails = {
  @ocaml.doc("<p>Contains details about the output of an execution history event.</p>")
  outputDetails: option<historyEventExecutionDataDetails>,
  @ocaml.doc(
    "<p>The response from a resource when a task has started. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
  )
  output: option<sensitiveData>,
  @ocaml.doc("<p>The service name of the resource in a task state.</p>") resource: name,
  @ocaml.doc("<p>The action of the resource called by a task state.</p>") resourceType: name,
}
type tagList_ = array<tag>
type stateMachineList = array<stateMachineListItem>
@ocaml.doc("<p>Contains details about an exit from a state during an execution.</p>")
type stateExitedEventDetails = {
  @ocaml.doc("<p>Contains details about the output of an execution history event.</p>")
  outputDetails: option<historyEventExecutionDataDetails>,
  @ocaml.doc(
    "<p>The JSON output data of the state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
  )
  output: option<sensitiveData>,
  @ocaml.doc("<p>The name of the state.</p>
         <p>A name must <i>not</i> contain:</p>
         <ul>
            <li>
               <p>white space</p>
            </li>
            <li>
               <p>brackets <code>< > { } [ ]</code>
               </p>
            </li>
            <li>
               <p>wildcard characters <code>? *</code>
               </p>
            </li>
            <li>
               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>
               </p>
            </li>
            <li>
               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
            </li>
         </ul>
         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>")
  name: name,
}
@ocaml.doc("<p>Contains details about a state entered during an execution.</p>")
type stateEnteredEventDetails = {
  @ocaml.doc("<p>Contains details about the input for an execution history event.</p>")
  inputDetails: option<historyEventExecutionDataDetails>,
  @ocaml.doc(
    "<p>The string that contains the JSON input data for the state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
  )
  input: option<sensitiveData>,
  @ocaml.doc("<p>The name of the state.</p>") name: name,
}
@ocaml.doc("<p></p>")
type logDestination = {
  @ocaml.doc(
    "<p>An object describing a CloudWatch log group. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html\">AWS::Logs::LogGroup</a> in the AWS CloudFormation User Guide.</p>"
  )
  cloudWatchLogsLogGroup: option<cloudWatchLogsLogGroup>,
}
@ocaml.doc("<p>Contains details about a lambda function that successfully terminated during an
      execution.</p>")
type lambdaFunctionSucceededEventDetails = {
  @ocaml.doc("<p>Contains details about the output of an execution history event.</p>")
  outputDetails: option<historyEventExecutionDataDetails>,
  @ocaml.doc(
    "<p>The JSON data output by the lambda function. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
  )
  output: option<sensitiveData>,
}
@ocaml.doc("<p>Contains details about a lambda function scheduled during an execution.</p>")
type lambdaFunctionScheduledEventDetails = {
  @ocaml.doc("<p>The maximum allowed duration of the lambda function.</p>")
  timeoutInSeconds: option<timeoutInSeconds>,
  @ocaml.doc("<p>Contains details about input for an execution history event.</p>")
  inputDetails: option<historyEventExecutionDataDetails>,
  @ocaml.doc(
    "<p>The JSON data input to the lambda function. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
  )
  input: option<sensitiveData>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the scheduled lambda function.</p>")
  resource: arn,
}
@ocaml.doc("<p>Contains details about the successful termination of the execution.</p>")
type executionSucceededEventDetails = {
  @ocaml.doc("<p>Contains details about the output of an execution history event.</p>")
  outputDetails: option<historyEventExecutionDataDetails>,
  @ocaml.doc(
    "<p>The JSON data output by the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
  )
  output: option<sensitiveData>,
}
@ocaml.doc("<p>Contains details about the start of the execution.</p>")
type executionStartedEventDetails = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the IAM role used for executing AWS Lambda tasks.</p>"
  )
  roleArn: option<arn>,
  @ocaml.doc("<p>Contains details about the input for an execution history event.</p>")
  inputDetails: option<historyEventExecutionDataDetails>,
  @ocaml.doc(
    "<p>The JSON data input to the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
  )
  input: option<sensitiveData>,
}
type executionList = array<executionListItem>
@ocaml.doc("<p>Contains details about an activity that successfully terminated during an
      execution.</p>")
type activitySucceededEventDetails = {
  @ocaml.doc("<p>Contains details about the output of an execution history event.</p>")
  outputDetails: option<historyEventExecutionDataDetails>,
  @ocaml.doc(
    "<p>The JSON data output by the activity task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
  )
  output: option<sensitiveData>,
}
@ocaml.doc("<p>Contains details about an activity scheduled during an execution.</p>")
type activityScheduledEventDetails = {
  @ocaml.doc("<p>The maximum allowed duration between two heartbeats for the activity task.</p>")
  heartbeatInSeconds: option<timeoutInSeconds>,
  @ocaml.doc("<p>The maximum allowed duration of the activity task.</p>")
  timeoutInSeconds: option<timeoutInSeconds>,
  @ocaml.doc("<p>Contains details about the input for an execution history event.</p>")
  inputDetails: option<historyEventExecutionDataDetails>,
  @ocaml.doc(
    "<p>The JSON data input to the activity task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
  )
  input: option<sensitiveData>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the scheduled activity.</p>") resource: arn,
}
type activityList = array<activityListItem>
type logDestinationList = array<logDestination>
@ocaml.doc("<p>Contains details about the events of an execution.</p>")
type historyEvent = {
  stateExitedEventDetails: option<stateExitedEventDetails>,
  stateEnteredEventDetails: option<stateEnteredEventDetails>,
  lambdaFunctionTimedOutEventDetails: option<lambdaFunctionTimedOutEventDetails>,
  @ocaml.doc("<p>Contains details about a lambda function that terminated successfully during an
      execution.</p>")
  lambdaFunctionSucceededEventDetails: option<lambdaFunctionSucceededEventDetails>,
  @ocaml.doc(
    "<p>Contains details about a lambda function that failed to start during an execution.</p>"
  )
  lambdaFunctionStartFailedEventDetails: option<lambdaFunctionStartFailedEventDetails>,
  lambdaFunctionScheduledEventDetails: option<lambdaFunctionScheduledEventDetails>,
  lambdaFunctionScheduleFailedEventDetails: option<lambdaFunctionScheduleFailedEventDetails>,
  lambdaFunctionFailedEventDetails: option<lambdaFunctionFailedEventDetails>,
  @ocaml.doc("<p>Contains details about an iteration of a Map state that was aborted.</p>")
  mapIterationAbortedEventDetails: option<mapIterationEventDetails>,
  @ocaml.doc("<p>Contains details about an iteration of a Map state that failed.</p>")
  mapIterationFailedEventDetails: option<mapIterationEventDetails>,
  @ocaml.doc("<p>Contains details about an iteration of a Map state that succeeded.</p>")
  mapIterationSucceededEventDetails: option<mapIterationEventDetails>,
  @ocaml.doc("<p>Contains details about an iteration of a Map state that was started.</p>")
  mapIterationStartedEventDetails: option<mapIterationEventDetails>,
  @ocaml.doc("<p>Contains details about Map state that was started.</p>")
  mapStateStartedEventDetails: option<mapStateStartedEventDetails>,
  executionTimedOutEventDetails: option<executionTimedOutEventDetails>,
  executionAbortedEventDetails: option<executionAbortedEventDetails>,
  executionSucceededEventDetails: option<executionSucceededEventDetails>,
  executionStartedEventDetails: option<executionStartedEventDetails>,
  executionFailedEventDetails: option<executionFailedEventDetails>,
  @ocaml.doc("<p>Contains details about a task that timed out.</p>")
  taskTimedOutEventDetails: option<taskTimedOutEventDetails>,
  @ocaml.doc("<p>Contains details about a task that succeeded.</p>")
  taskSucceededEventDetails: option<taskSucceededEventDetails>,
  @ocaml.doc("<p>Contains details about a submitted task.</p>")
  taskSubmittedEventDetails: option<taskSubmittedEventDetails>,
  @ocaml.doc("<p>Contains details about a task that where the submit failed.</p>")
  taskSubmitFailedEventDetails: option<taskSubmitFailedEventDetails>,
  @ocaml.doc("<p>Contains details about a task that was started.</p>")
  taskStartedEventDetails: option<taskStartedEventDetails>,
  @ocaml.doc("<p>Contains details about a task that failed to start.</p>")
  taskStartFailedEventDetails: option<taskStartFailedEventDetails>,
  @ocaml.doc("<p>Contains details about a task that was scheduled.</p>")
  taskScheduledEventDetails: option<taskScheduledEventDetails>,
  @ocaml.doc("<p>Contains details about the failure of a task.</p>")
  taskFailedEventDetails: option<taskFailedEventDetails>,
  activityTimedOutEventDetails: option<activityTimedOutEventDetails>,
  activitySucceededEventDetails: option<activitySucceededEventDetails>,
  activityStartedEventDetails: option<activityStartedEventDetails>,
  activityScheduledEventDetails: option<activityScheduledEventDetails>,
  @ocaml.doc(
    "<p>Contains details about an activity schedule event that failed during an execution.</p>"
  )
  activityScheduleFailedEventDetails: option<activityScheduleFailedEventDetails>,
  activityFailedEventDetails: option<activityFailedEventDetails>,
  @ocaml.doc("<p>The id of the previous event.</p>") previousEventId: option<eventId>,
  @ocaml.doc("<p>The id of the event. Events are numbered sequentially, starting at one.</p>")
  id: eventId,
  @ocaml.doc("<p>The type of the event.</p>") @as("type") type_: historyEventType,
  @ocaml.doc("<p>The date and time the event occurred.</p>") @as("timestamp")
  timestamp_: timestamp_,
}
@ocaml.doc("<p>The <code>LoggingConfiguration</code> data type is used to set CloudWatch Logs
      options.</p>")
type loggingConfiguration = {
  @ocaml.doc("<p>An array of objects that describes where your execution history events will be logged.
      Limited to size 1. Required, if your log level is not set to <code>OFF</code>.</p>")
  destinations: option<logDestinationList>,
  @ocaml.doc("<p>Determines whether execution data is included in your log. When set to <code>false</code>,
      data is excluded.</p>")
  includeExecutionData: option<includeExecutionData>,
  @ocaml.doc("<p>Defines which category of execution history events are logged.</p>")
  level: option<logLevel>,
}
@ocaml.doc("<p>Contains details about the events that occurred during an execution.</p>")
type historyEventList = array<historyEvent>
@ocaml.doc("<fullname>AWS Step Functions</fullname>
         <p>AWS Step Functions is a service that lets you coordinate the components of distributed applications
      and microservices using visual workflows.</p>
         <p>You can use Step Functions to build applications from individual components, each of which performs
      a discrete function, or <i>task</i>, allowing you to scale and change
      applications quickly. Step Functions provides a console that helps visualize the components of your
      application as a series of steps. Step Functions automatically triggers and tracks each step, and
      retries steps when there are errors, so your application executes predictably and in the right
      order every time. Step Functions logs the state of each step, so you can quickly diagnose and debug any
      issues.</p>
         <p>Step Functions manages operations and underlying infrastructure to ensure your application is
      available at any scale. You can run tasks on AWS, your own servers, or any system that has
      access to AWS. You can access and use Step Functions using the console, the AWS SDKs, or an HTTP API.
      For more information about Step Functions, see the <i>
               <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html\">AWS Step Functions Developer Guide</a>
            </i>.</p>")
module StopExecution = {
  type t
  type request = {
    @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
    cause: option<sensitiveCause>,
    @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the execution to stop.</p>") executionArn: arn,
  }
  type response = {@ocaml.doc("<p>The date the execution is stopped.</p>") stopDate: timestamp_}
  @module("@aws-sdk/client-states") @new external new: request => t = "StopExecutionCommand"
  let make = (~executionArn, ~cause=?, ~error=?, ()) =>
    new({cause: cause, error: error, executionArn: executionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartExecution = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Passes the AWS X-Ray trace header. The trace header can also be passed in the request payload.</p>"
    )
    traceHeader: option<traceHeader>,
    @ocaml.doc("<p>The string that contains the JSON input data for the execution, for example:</p>
         <p>
            <code>\"input\": \"{\\\"first_name\\\" : \\\"test\\\"}\"</code>
         </p>
         <note>
            <p>If you don't include any JSON input data, you still must include the two braces, for
        example: <code>\"input\": \"{}\"</code>
            </p>
         </note>
         <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>")
    input: option<sensitiveData>,
    @ocaml.doc("<p>The name of the execution. This name must be unique for your AWS account, region, and state machine for 90 days. For more information,
    see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions\">
    Limits Related to State Machine Executions</a> in the <i>AWS Step Functions Developer Guide</i>.</p> 
         <p>A name must <i>not</i> contain:</p>
         <ul>
            <li>
               <p>white space</p>
            </li>
            <li>
               <p>brackets <code>< > { } [ ]</code>
               </p>
            </li>
            <li>
               <p>wildcard characters <code>? *</code>
               </p>
            </li>
            <li>
               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>
               </p>
            </li>
            <li>
               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
            </li>
         </ul>
         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>")
    name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the state machine to execute.</p>")
    stateMachineArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The date the execution is started.</p>") startDate: timestamp_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the execution.</p>")
    executionArn: arn,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "StartExecutionCommand"
  let make = (~stateMachineArn, ~traceHeader=?, ~input=?, ~name=?, ()) =>
    new({traceHeader: traceHeader, input: input, name: name, stateMachineArn: stateMachineArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendTaskSuccess = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The JSON output of the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
    )
    output: sensitiveData,
    @ocaml.doc("<p>The token that represents this task. Task tokens are generated by Step Functions when
      tasks are assigned to a worker, or in the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html\">context object</a> when a
      workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>")
    taskToken: taskToken,
  }
  type response = {.}
  @module("@aws-sdk/client-states") @new external new: request => t = "SendTaskSuccessCommand"
  let make = (~output, ~taskToken, ()) => new({output: output, taskToken: taskToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SendTaskHeartbeat = {
  type t
  type request = {
    @ocaml.doc("<p>The token that represents this task. Task tokens are generated by Step Functions when
      tasks are assigned to a worker, or in the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html\">context object</a> when a
      workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>")
    taskToken: taskToken,
  }
  type response = {.}
  @module("@aws-sdk/client-states") @new external new: request => t = "SendTaskHeartbeatCommand"
  let make = (~taskToken, ()) => new({taskToken: taskToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SendTaskFailure = {
  type t
  type request = {
    @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
    cause: option<sensitiveCause>,
    @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
    @ocaml.doc("<p>The token that represents this task. Task tokens are generated by Step Functions when
      tasks are assigned to a worker, or in the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html\">context object</a> when a
      workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>")
    taskToken: taskToken,
  }
  type response = {.}
  @module("@aws-sdk/client-states") @new external new: request => t = "SendTaskFailureCommand"
  let make = (~taskToken, ~cause=?, ~error=?, ()) =>
    new({cause: cause, error: error, taskToken: taskToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetActivityTask = {
  type t
  type request = {
    @ocaml.doc("<p>You can provide an arbitrary name in order to identify the worker that the task is
      assigned to. This name is used when it is logged in the execution history.</p>")
    workerName: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task
      using <a>CreateActivity</a>.)</p>")
    activityArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The string that contains the JSON input data for the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
    )
    input: option<sensitiveDataJobInput>,
    @ocaml.doc("<p>A token that identifies the scheduled task. This token must be copied and included in
      subsequent calls to <a>SendTaskHeartbeat</a>, <a>SendTaskSuccess</a> or
        <a>SendTaskFailure</a> in order to report the progress or completion of the
      task.</p>")
    taskToken: option<taskToken>,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "GetActivityTaskCommand"
  let make = (~activityArn, ~workerName=?, ()) =>
    new({workerName: workerName, activityArn: activityArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeActivity = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the activity to describe.</p>")
    activityArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The date the activity is created.</p>") creationDate: timestamp_,
    @ocaml.doc("<p>The name of the activity.</p> 
         <p>A name must <i>not</i> contain:</p>
         <ul>
            <li>
               <p>white space</p>
            </li>
            <li>
               <p>brackets <code>< > { } [ ]</code>
               </p>
            </li>
            <li>
               <p>wildcard characters <code>? *</code>
               </p>
            </li>
            <li>
               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>
               </p>
            </li>
            <li>
               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
            </li>
         </ul>
         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>")
    name: name,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the activity.</p>")
    activityArn: arn,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "DescribeActivityCommand"
  let make = (~activityArn, ()) => new({activityArn: activityArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStateMachine = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the state machine to delete.</p>")
    stateMachineArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-states") @new external new: request => t = "DeleteStateMachineCommand"
  let make = (~stateMachineArn, ()) => new({stateMachineArn: stateMachineArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteActivity = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the activity to delete.</p>") activityArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-states") @new external new: request => t = "DeleteActivityCommand"
  let make = (~activityArn, ()) => new({activityArn: activityArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags to remove from the resource.</p>") tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>"
    )
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-states") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartSyncExecution = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Passes the AWS X-Ray trace header. The trace header can also be passed in the request payload.</p>"
    )
    traceHeader: option<traceHeader>,
    @ocaml.doc("<p>The string that contains the JSON input data for the execution, for example:</p>
         <p>
            <code>\"input\": \"{\\\"first_name\\\" : \\\"test\\\"}\"</code>
         </p>
         <note>
            <p>If you don't include any JSON input data, you still must include the two braces, for
         example: <code>\"input\": \"{}\"</code>
            </p>
         </note>
         <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>")
    input: option<sensitiveData>,
    @ocaml.doc("<p>The name of the execution.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the state machine to execute.</p>")
    stateMachineArn: arn,
  }
  type response = {
    @ocaml.doc("<p>An object that describes workflow billing details, including billed duration
      and memory use.</p>")
    billingDetails: option<billingDetails>,
    @ocaml.doc("<p>The AWS X-Ray trace header that was passed to the execution.</p>")
    traceHeader: option<traceHeader>,
    outputDetails: option<cloudWatchEventsExecutionDataDetails>,
    @ocaml.doc("<p>The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
         <note>
            <p>This field is set only if the execution succeeds. If the execution fails, this field is
         null.</p>
         </note>")
    output: option<sensitiveData>,
    inputDetails: option<cloudWatchEventsExecutionDataDetails>,
    @ocaml.doc(
      "<p>The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
    )
    input: option<sensitiveData>,
    @ocaml.doc("<p>A more detailed explanation of the cause of the failure.</p>")
    cause: option<sensitiveCause>,
    @ocaml.doc("<p>The error code of the failure.</p>") error: option<sensitiveError>,
    @ocaml.doc("<p>The current status of the execution.</p>") status: syncExecutionStatus,
    @ocaml.doc("<p>If the execution has already ended, the date the execution stopped.</p>")
    stopDate: timestamp_,
    @ocaml.doc("<p>The date the execution is started.</p>") startDate: timestamp_,
    @ocaml.doc("<p>The name of the execution.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the state machine.</p>")
    stateMachineArn: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the execution.</p>")
    executionArn: arn,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "StartSyncExecutionCommand"
  let make = (~stateMachineArn, ~traceHeader=?, ~input=?, ~name=?, ()) =>
    new({traceHeader: traceHeader, input: input, name: name, stateMachineArn: stateMachineArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the execution to describe.</p>")
    executionArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The AWS X-Ray trace header that was passed to the execution.</p>")
    traceHeader: option<traceHeader>,
    outputDetails: option<cloudWatchEventsExecutionDataDetails>,
    @ocaml.doc("<p>The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
         <note>
            <p>This field is set only if the execution succeeds. If the execution fails, this field is
        null.</p>
         </note>")
    output: option<sensitiveData>,
    inputDetails: option<cloudWatchEventsExecutionDataDetails>,
    @ocaml.doc(
      "<p>The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
    )
    input: option<sensitiveData>,
    @ocaml.doc("<p>If the execution has already ended, the date the execution stopped.</p>")
    stopDate: option<timestamp_>,
    @ocaml.doc("<p>The date the execution is started.</p>") startDate: timestamp_,
    @ocaml.doc("<p>The current status of the execution.</p>") status: executionStatus,
    @ocaml.doc("<p>The name of the execution.</p> 
         <p>A name must <i>not</i> contain:</p>
         <ul>
            <li>
               <p>white space</p>
            </li>
            <li>
               <p>brackets <code>< > { } [ ]</code>
               </p>
            </li>
            <li>
               <p>wildcard characters <code>? *</code>
               </p>
            </li>
            <li>
               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>
               </p>
            </li>
            <li>
               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
            </li>
         </ul>
         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>")
    name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the executed stated machine.</p>")
    stateMachineArn: arn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the execution.</p>")
    executionArn: arn,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "DescribeExecutionCommand"
  let make = (~executionArn, ()) => new({executionArn: executionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags to add to a resource.</p> 
         <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>")
    tags: tagList_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>"
    )
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-states") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>"
    )
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>An array of tags associated with the resource.</p>") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStateMachines = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>")
    nextToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p> 
         <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>")
    maxResults: option<pageSize>,
  }
  type response = {
    @ocaml.doc("<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>")
    nextToken: option<pageToken>,
    stateMachines: stateMachineList,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "ListStateMachinesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>")
    nextToken: option<listExecutionsPageToken>,
    @ocaml.doc("<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p> 
         <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>If specified, only list the executions whose current execution status matches the given
      filter.</p>")
    statusFilter: option<executionStatus>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the state machine whose executions is listed.</p>"
    )
    stateMachineArn: arn,
  }
  type response = {
    @ocaml.doc("<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>")
    nextToken: option<listExecutionsPageToken>,
    @ocaml.doc("<p>The list of matching executions.</p>") executions: executionList,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "ListExecutionsCommand"
  let make = (~stateMachineArn, ~nextToken=?, ~maxResults=?, ~statusFilter=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      statusFilter: statusFilter,
      stateMachineArn: stateMachineArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListActivities = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>")
    nextToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p> 
         <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>")
    maxResults: option<pageSize>,
  }
  type response = {
    @ocaml.doc("<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>")
    nextToken: option<pageToken>,
    @ocaml.doc("<p>The list of activities.</p>") activities: activityList,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "ListActivitiesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateActivity = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags to add to a resource.</p> 
         <p>An array of key-value pairs. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html\">Using
      Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
        Guide</i>, and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html\">Controlling Access Using IAM
          Tags</a>.</p> 
         <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The name of the activity to create. This name must be unique for your AWS account and region for 90 days. For more information,
    see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions\">
    Limits Related to State Machine Executions</a> in the <i>AWS Step Functions Developer Guide</i>.</p> 
         <p>A name must <i>not</i> contain:</p>
         <ul>
            <li>
               <p>white space</p>
            </li>
            <li>
               <p>brackets <code>< > { } [ ]</code>
               </p>
            </li>
            <li>
               <p>wildcard characters <code>? *</code>
               </p>
            </li>
            <li>
               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>
               </p>
            </li>
            <li>
               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
            </li>
         </ul>
         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>")
    name: name,
  }
  type response = {
    @ocaml.doc("<p>The date the activity is created.</p>") creationDate: timestamp_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the created activity.</p>")
    activityArn: arn,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "CreateActivityCommand"
  let make = (~name, ~tags=?, ()) => new({tags: tags, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStateMachine = {
  type t
  type request = {
    @ocaml.doc("<p>Selects whether AWS X-Ray tracing is enabled.</p>")
    tracingConfiguration: option<tracingConfiguration>,
    @ocaml.doc("<p>The <code>LoggingConfiguration</code> data type is used to set CloudWatch Logs
      options.</p>")
    loggingConfiguration: option<loggingConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role of the state machine.</p>")
    roleArn: option<arn>,
    @ocaml.doc(
      "<p>The Amazon States Language definition of the state machine. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a>.</p>"
    )
    definition: option<definition>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the state machine.</p>") stateMachineArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The date and time the state machine was updated.</p>") updateDate: timestamp_,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "UpdateStateMachineCommand"
  let make = (
    ~stateMachineArn,
    ~tracingConfiguration=?,
    ~loggingConfiguration=?,
    ~roleArn=?,
    ~definition=?,
    (),
  ) =>
    new({
      tracingConfiguration: tracingConfiguration,
      loggingConfiguration: loggingConfiguration,
      roleArn: roleArn,
      definition: definition,
      stateMachineArn: stateMachineArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExecutionHistory = {
  type t
  type request = {
    @ocaml.doc("<p>You can select whether execution data (input or output of a history event) is returned.
      The default is <code>true</code>.</p>")
    includeExecutionData: option<includeExecutionDataGetExecutionHistory>,
    @ocaml.doc("<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>")
    nextToken: option<pageToken>,
    @ocaml.doc("<p>Lists events in descending order of their <code>timeStamp</code>.</p>")
    reverseOrder: option<reverseOrder>,
    @ocaml.doc("<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p> 
         <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the execution.</p>") executionArn: arn,
  }
  type response = {
    @ocaml.doc("<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>")
    nextToken: option<pageToken>,
    @ocaml.doc("<p>The list of events that occurred in the execution.</p>")
    events: historyEventList,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "GetExecutionHistoryCommand"
  let make = (
    ~executionArn,
    ~includeExecutionData=?,
    ~nextToken=?,
    ~reverseOrder=?,
    ~maxResults=?,
    (),
  ) =>
    new({
      includeExecutionData: includeExecutionData,
      nextToken: nextToken,
      reverseOrder: reverseOrder,
      maxResults: maxResults,
      executionArn: executionArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStateMachineForExecution = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the execution you want state machine information for.</p>"
    )
    executionArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Selects whether AWS X-Ray tracing is enabled.</p>")
    tracingConfiguration: option<tracingConfiguration>,
    loggingConfiguration: option<loggingConfiguration>,
    @ocaml.doc("<p>The date and time the state machine associated with an execution was updated. For a newly
      created state machine, this is the creation date.</p>")
    updateDate: timestamp_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the IAM role of the State Machine for the execution. </p>"
    )
    roleArn: arn,
    @ocaml.doc(
      "<p>The Amazon States Language definition of the state machine. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a>.</p>"
    )
    definition: definition,
    @ocaml.doc("<p>The name of the state machine associated with the execution.</p>") name: name,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the state machine associated with the execution.</p>"
    )
    stateMachineArn: arn,
  }
  @module("@aws-sdk/client-states") @new
  external new: request => t = "DescribeStateMachineForExecutionCommand"
  let make = (~executionArn, ()) => new({executionArn: executionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStateMachine = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the state machine to describe.</p>")
    stateMachineArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Selects whether AWS X-Ray tracing is enabled.</p>")
    tracingConfiguration: option<tracingConfiguration>,
    loggingConfiguration: option<loggingConfiguration>,
    @ocaml.doc("<p>The date the state machine is created.</p>") creationDate: timestamp_,
    @ocaml.doc("<p>The <code>type</code> of the state machine (<code>STANDARD</code> or
      <code>EXPRESS</code>).</p>")
    @as("type")
    type_: stateMachineType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role used when creating this state machine. (The IAM role
      maintains security by granting Step Functions access to AWS resources.)</p>")
    roleArn: arn,
    @ocaml.doc(
      "<p>The Amazon States Language definition of the state machine. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a>.</p>"
    )
    definition: definition,
    @ocaml.doc("<p>The current status of the state machine.</p>")
    status: option<stateMachineStatus>,
    @ocaml.doc("<p>The name of the state machine.</p> 
         <p>A name must <i>not</i> contain:</p>
         <ul>
            <li>
               <p>white space</p>
            </li>
            <li>
               <p>brackets <code>< > { } [ ]</code>
               </p>
            </li>
            <li>
               <p>wildcard characters <code>? *</code>
               </p>
            </li>
            <li>
               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>
               </p>
            </li>
            <li>
               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
            </li>
         </ul>
         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>")
    name: name,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the state machine.</p>")
    stateMachineArn: arn,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "DescribeStateMachineCommand"
  let make = (~stateMachineArn, ()) => new({stateMachineArn: stateMachineArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStateMachine = {
  type t
  type request = {
    @ocaml.doc("<p>Selects whether AWS X-Ray tracing is enabled.</p>")
    tracingConfiguration: option<tracingConfiguration>,
    @ocaml.doc("<p>Tags to be added when creating a state machine.</p> 
         <p>An array of key-value pairs. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html\">Using
      Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
        Guide</i>, and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html\">Controlling Access Using IAM
          Tags</a>.</p> 
         <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>Defines what execution history events are logged and where they are logged.</p>
         <note>
            <p>By default, the <code>level</code> is set to <code>OFF</code>. For more information see
          <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html\">Log
          Levels</a> in the AWS Step Functions User Guide.</p>
         </note>")
    loggingConfiguration: option<loggingConfiguration>,
    @ocaml.doc("<p>Determines whether a Standard or Express state machine is created. The default is
        <code>STANDARD</code>. You cannot update the <code>type</code> of a state machine once it
      has been created.</p>")
    @as("type")
    type_: option<stateMachineType>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the IAM role to use for this state machine.</p>"
    )
    roleArn: arn,
    @ocaml.doc(
      "<p>The Amazon States Language definition of the state machine. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a>.</p>"
    )
    definition: definition,
    @ocaml.doc("<p>The name of the state machine. </p> 
         <p>A name must <i>not</i> contain:</p>
         <ul>
            <li>
               <p>white space</p>
            </li>
            <li>
               <p>brackets <code>< > { } [ ]</code>
               </p>
            </li>
            <li>
               <p>wildcard characters <code>? *</code>
               </p>
            </li>
            <li>
               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>
               </p>
            </li>
            <li>
               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
            </li>
         </ul>
         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>")
    name: name,
  }
  type response = {
    @ocaml.doc("<p>The date the state machine is created.</p>") creationDate: timestamp_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the created state machine.</p>")
    stateMachineArn: arn,
  }
  @module("@aws-sdk/client-states") @new external new: request => t = "CreateStateMachineCommand"
  let make = (
    ~roleArn,
    ~definition,
    ~name,
    ~tracingConfiguration=?,
    ~tags=?,
    ~loggingConfiguration=?,
    ~type_=?,
    (),
  ) =>
    new({
      tracingConfiguration: tracingConfiguration,
      tags: tags,
      loggingConfiguration: loggingConfiguration,
      type_: type_,
      roleArn: roleArn,
      definition: definition,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
