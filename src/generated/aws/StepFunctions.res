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
type truncated = bool
type includedDetails = bool
type unsignedInteger = int
type traceHeader = string
type timestamp_ = Js.Date.t;
type timeoutInSeconds = float
type taskToken = string
type tagValue = string
type tagKey = string
type syncExecutionStatus = [@as("TIMED_OUT") #TIMEDOUT | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED]
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
type historyEventType = [@as("WaitStateExited") #WaitStateExited | @as("WaitStateEntered") #WaitStateEntered | @as("WaitStateAborted") #WaitStateAborted | @as("TaskTimedOut") #TaskTimedOut | @as("TaskSucceeded") #TaskSucceeded | @as("TaskSubmitted") #TaskSubmitted | @as("TaskSubmitFailed") #TaskSubmitFailed | @as("TaskStateExited") #TaskStateExited | @as("TaskStateEntered") #TaskStateEntered | @as("TaskStateAborted") #TaskStateAborted | @as("TaskStartFailed") #TaskStartFailed | @as("TaskStarted") #TaskStarted | @as("TaskScheduled") #TaskScheduled | @as("TaskFailed") #TaskFailed | @as("SucceedStateExited") #SucceedStateExited | @as("SucceedStateEntered") #SucceedStateEntered | @as("PassStateExited") #PassStateExited | @as("PassStateEntered") #PassStateEntered | @as("ParallelStateSucceeded") #ParallelStateSucceeded | @as("ParallelStateStarted") #ParallelStateStarted | @as("ParallelStateFailed") #ParallelStateFailed | @as("ParallelStateExited") #ParallelStateExited | @as("ParallelStateEntered") #ParallelStateEntered | @as("ParallelStateAborted") #ParallelStateAborted | @as("MapStateSucceeded") #MapStateSucceeded | @as("MapStateStarted") #MapStateStarted | @as("MapStateFailed") #MapStateFailed | @as("MapStateExited") #MapStateExited | @as("MapStateEntered") #MapStateEntered | @as("MapStateAborted") #MapStateAborted | @as("MapIterationSucceeded") #MapIterationSucceeded | @as("MapIterationStarted") #MapIterationStarted | @as("MapIterationFailed") #MapIterationFailed | @as("MapIterationAborted") #MapIterationAborted | @as("LambdaFunctionTimedOut") #LambdaFunctionTimedOut | @as("LambdaFunctionSucceeded") #LambdaFunctionSucceeded | @as("LambdaFunctionStartFailed") #LambdaFunctionStartFailed | @as("LambdaFunctionStarted") #LambdaFunctionStarted | @as("LambdaFunctionScheduleFailed") #LambdaFunctionScheduleFailed | @as("LambdaFunctionScheduled") #LambdaFunctionScheduled | @as("LambdaFunctionFailed") #LambdaFunctionFailed | @as("FailStateEntered") #FailStateEntered | @as("ExecutionTimedOut") #ExecutionTimedOut | @as("ExecutionSucceeded") #ExecutionSucceeded | @as("ExecutionStarted") #ExecutionStarted | @as("ExecutionFailed") #ExecutionFailed | @as("ExecutionAborted") #ExecutionAborted | @as("ChoiceStateExited") #ChoiceStateExited | @as("ChoiceStateEntered") #ChoiceStateEntered | @as("ActivityTimedOut") #ActivityTimedOut | @as("ActivitySucceeded") #ActivitySucceeded | @as("ActivityStarted") #ActivityStarted | @as("ActivityScheduleFailed") #ActivityScheduleFailed | @as("ActivityScheduled") #ActivityScheduled | @as("ActivityFailed") #ActivityFailed]
type executionStatus = [@as("ABORTED") #ABORTED | @as("TIMED_OUT") #TIMEDOUT | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("RUNNING") #RUNNING]
type eventId = float
type errorMessage = string
type enabled = bool
type definition = string
type connectorParameters = string
type billedMemoryUsed = float
type billedDuration = float
type arn = string
type tracingConfiguration = {
enabled: option<enabled>
}
type taskTimedOutEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>,
resource: name,
resourceType: name
}
type taskSubmitFailedEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>,
resource: name,
resourceType: name
}
type taskStartedEventDetails = {
resource: name,
resourceType: name
}
type taskStartFailedEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>,
resource: name,
resourceType: name
}
type taskScheduledEventDetails = {
heartbeatInSeconds: option<timeoutInSeconds>,
timeoutInSeconds: option<timeoutInSeconds>,
parameters: connectorParameters,
region: name,
resource: name,
resourceType: name
}
type taskFailedEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>,
resource: name,
resourceType: name
}
type tagKeyList = array<tagKey>
type tag = {
value: option<tagValue>,
key: option<tagKey>
}
type stateMachineListItem = {
creationDate: timestamp_,
@as("type") type_: stateMachineType,
name: name,
stateMachineArn: arn
}
type mapStateStartedEventDetails = {
length: option<unsignedInteger>
}
type mapIterationEventDetails = {
index: option<unsignedInteger>,
name: option<name>
}
type lambdaFunctionTimedOutEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>
}
type lambdaFunctionStartFailedEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>
}
type lambdaFunctionScheduleFailedEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>
}
type lambdaFunctionFailedEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>
}
type historyEventExecutionDataDetails = {
truncated: option<truncated>
}
type executionTimedOutEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>
}
type executionListItem = {
stopDate: option<timestamp_>,
startDate: timestamp_,
status: executionStatus,
name: name,
stateMachineArn: arn,
executionArn: arn
}
type executionFailedEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>
}
type executionAbortedEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>
}
type cloudWatchLogsLogGroup = {
logGroupArn: option<arn>
}
type cloudWatchEventsExecutionDataDetails = {
included: option<includedDetails>
}
type billingDetails = {
billedDurationInMilliseconds: option<billedDuration>,
billedMemoryUsedInMB: option<billedMemoryUsed>
}
type activityTimedOutEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>
}
type activityStartedEventDetails = {
workerName: option<identity>
}
type activityScheduleFailedEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>
}
type activityListItem = {
creationDate: timestamp_,
name: name,
activityArn: arn
}
type activityFailedEventDetails = {
cause: option<sensitiveCause>,
error: option<sensitiveError>
}
type taskSucceededEventDetails = {
outputDetails: option<historyEventExecutionDataDetails>,
output: option<sensitiveData>,
resource: name,
resourceType: name
}
type taskSubmittedEventDetails = {
outputDetails: option<historyEventExecutionDataDetails>,
output: option<sensitiveData>,
resource: name,
resourceType: name
}
type tagList_ = array<tag>
type stateMachineList = array<stateMachineListItem>
type stateExitedEventDetails = {
outputDetails: option<historyEventExecutionDataDetails>,
output: option<sensitiveData>,
name: name
}
type stateEnteredEventDetails = {
inputDetails: option<historyEventExecutionDataDetails>,
input: option<sensitiveData>,
name: name
}
type logDestination = {
cloudWatchLogsLogGroup: option<cloudWatchLogsLogGroup>
}
type lambdaFunctionSucceededEventDetails = {
outputDetails: option<historyEventExecutionDataDetails>,
output: option<sensitiveData>
}
type lambdaFunctionScheduledEventDetails = {
timeoutInSeconds: option<timeoutInSeconds>,
inputDetails: option<historyEventExecutionDataDetails>,
input: option<sensitiveData>,
resource: arn
}
type executionSucceededEventDetails = {
outputDetails: option<historyEventExecutionDataDetails>,
output: option<sensitiveData>
}
type executionStartedEventDetails = {
roleArn: option<arn>,
inputDetails: option<historyEventExecutionDataDetails>,
input: option<sensitiveData>
}
type executionList = array<executionListItem>
type activitySucceededEventDetails = {
outputDetails: option<historyEventExecutionDataDetails>,
output: option<sensitiveData>
}
type activityScheduledEventDetails = {
heartbeatInSeconds: option<timeoutInSeconds>,
timeoutInSeconds: option<timeoutInSeconds>,
inputDetails: option<historyEventExecutionDataDetails>,
input: option<sensitiveData>,
resource: arn
}
type activityList = array<activityListItem>
type logDestinationList = array<logDestination>
type historyEvent = {
stateExitedEventDetails: option<stateExitedEventDetails>,
stateEnteredEventDetails: option<stateEnteredEventDetails>,
lambdaFunctionTimedOutEventDetails: option<lambdaFunctionTimedOutEventDetails>,
lambdaFunctionSucceededEventDetails: option<lambdaFunctionSucceededEventDetails>,
lambdaFunctionStartFailedEventDetails: option<lambdaFunctionStartFailedEventDetails>,
lambdaFunctionScheduledEventDetails: option<lambdaFunctionScheduledEventDetails>,
lambdaFunctionScheduleFailedEventDetails: option<lambdaFunctionScheduleFailedEventDetails>,
lambdaFunctionFailedEventDetails: option<lambdaFunctionFailedEventDetails>,
mapIterationAbortedEventDetails: option<mapIterationEventDetails>,
mapIterationFailedEventDetails: option<mapIterationEventDetails>,
mapIterationSucceededEventDetails: option<mapIterationEventDetails>,
mapIterationStartedEventDetails: option<mapIterationEventDetails>,
mapStateStartedEventDetails: option<mapStateStartedEventDetails>,
executionTimedOutEventDetails: option<executionTimedOutEventDetails>,
executionAbortedEventDetails: option<executionAbortedEventDetails>,
executionSucceededEventDetails: option<executionSucceededEventDetails>,
executionStartedEventDetails: option<executionStartedEventDetails>,
executionFailedEventDetails: option<executionFailedEventDetails>,
taskTimedOutEventDetails: option<taskTimedOutEventDetails>,
taskSucceededEventDetails: option<taskSucceededEventDetails>,
taskSubmittedEventDetails: option<taskSubmittedEventDetails>,
taskSubmitFailedEventDetails: option<taskSubmitFailedEventDetails>,
taskStartedEventDetails: option<taskStartedEventDetails>,
taskStartFailedEventDetails: option<taskStartFailedEventDetails>,
taskScheduledEventDetails: option<taskScheduledEventDetails>,
taskFailedEventDetails: option<taskFailedEventDetails>,
activityTimedOutEventDetails: option<activityTimedOutEventDetails>,
activitySucceededEventDetails: option<activitySucceededEventDetails>,
activityStartedEventDetails: option<activityStartedEventDetails>,
activityScheduledEventDetails: option<activityScheduledEventDetails>,
activityScheduleFailedEventDetails: option<activityScheduleFailedEventDetails>,
activityFailedEventDetails: option<activityFailedEventDetails>,
previousEventId: option<eventId>,
id: eventId,
@as("type") type_: historyEventType,
@as("timestamp") timestamp_: timestamp_
}
type loggingConfiguration = {
destinations: option<logDestinationList>,
includeExecutionData: option<includeExecutionData>,
level: option<logLevel>
}
type historyEventList = array<historyEvent>
type awsServiceClient;
@module("@aws-sdk/client-states") @new external createClient: unit => awsServiceClient = "StepFunctionsClient";
module StopExecution = {
  type t;
  type request = {
cause: option<sensitiveCause>,
error: option<sensitiveError>,
executionArn: arn
}
  type response = {
stopDate: timestamp_
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "StopExecutionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartExecution = {
  type t;
  type request = {
traceHeader: option<traceHeader>,
input: option<sensitiveData>,
name: option<name>,
stateMachineArn: arn
}
  type response = {
startDate: timestamp_,
executionArn: arn
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "StartExecutionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendTaskSuccess = {
  type t;
  type request = {
output: sensitiveData,
taskToken: taskToken
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "SendTaskSuccessCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendTaskHeartbeat = {
  type t;
  type request = {
taskToken: taskToken
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "SendTaskHeartbeatCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendTaskFailure = {
  type t;
  type request = {
cause: option<sensitiveCause>,
error: option<sensitiveError>,
taskToken: taskToken
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "SendTaskFailureCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetActivityTask = {
  type t;
  type request = {
workerName: option<name>,
activityArn: arn
}
  type response = {
input: option<sensitiveDataJobInput>,
taskToken: option<taskToken>
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "GetActivityTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeActivity = {
  type t;
  type request = {
activityArn: arn
}
  type response = {
creationDate: timestamp_,
name: name,
activityArn: arn
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "DescribeActivityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStateMachine = {
  type t;
  type request = {
stateMachineArn: arn
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "DeleteStateMachineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteActivity = {
  type t;
  type request = {
activityArn: arn
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "DeleteActivityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartSyncExecution = {
  type t;
  type request = {
traceHeader: option<traceHeader>,
input: option<sensitiveData>,
name: option<name>,
stateMachineArn: arn
}
  type response = {
billingDetails: option<billingDetails>,
traceHeader: option<traceHeader>,
outputDetails: option<cloudWatchEventsExecutionDataDetails>,
output: option<sensitiveData>,
inputDetails: option<cloudWatchEventsExecutionDataDetails>,
input: option<sensitiveData>,
cause: option<sensitiveCause>,
error: option<sensitiveError>,
status: syncExecutionStatus,
stopDate: timestamp_,
startDate: timestamp_,
name: option<name>,
stateMachineArn: option<arn>,
executionArn: arn
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "StartSyncExecutionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeExecution = {
  type t;
  type request = {
executionArn: arn
}
  type response = {
traceHeader: option<traceHeader>,
outputDetails: option<cloudWatchEventsExecutionDataDetails>,
output: option<sensitiveData>,
inputDetails: option<cloudWatchEventsExecutionDataDetails>,
input: option<sensitiveData>,
stopDate: option<timestamp_>,
startDate: timestamp_,
status: executionStatus,
name: option<name>,
stateMachineArn: arn,
executionArn: arn
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "DescribeExecutionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagList_,
resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: arn
}
  type response = {
tags: option<tagList_>
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStateMachines = {
  type t;
  type request = {
nextToken: option<pageToken>,
maxResults: option<pageSize>
}
  type response = {
nextToken: option<pageToken>,
stateMachines: stateMachineList
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "ListStateMachinesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListExecutions = {
  type t;
  type request = {
nextToken: option<listExecutionsPageToken>,
maxResults: option<pageSize>,
statusFilter: option<executionStatus>,
stateMachineArn: arn
}
  type response = {
nextToken: option<listExecutionsPageToken>,
executions: executionList
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "ListExecutionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListActivities = {
  type t;
  type request = {
nextToken: option<pageToken>,
maxResults: option<pageSize>
}
  type response = {
nextToken: option<pageToken>,
activities: activityList
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "ListActivitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateActivity = {
  type t;
  type request = {
tags: option<tagList_>,
name: name
}
  type response = {
creationDate: timestamp_,
activityArn: arn
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "CreateActivityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateStateMachine = {
  type t;
  type request = {
tracingConfiguration: option<tracingConfiguration>,
loggingConfiguration: option<loggingConfiguration>,
roleArn: option<arn>,
definition: option<definition>,
stateMachineArn: arn
}
  type response = {
updateDate: timestamp_
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "UpdateStateMachineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetExecutionHistory = {
  type t;
  type request = {
includeExecutionData: option<includeExecutionDataGetExecutionHistory>,
nextToken: option<pageToken>,
reverseOrder: option<reverseOrder>,
maxResults: option<pageSize>,
executionArn: arn
}
  type response = {
nextToken: option<pageToken>,
events: historyEventList
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "GetExecutionHistoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStateMachineForExecution = {
  type t;
  type request = {
executionArn: arn
}
  type response = {
tracingConfiguration: option<tracingConfiguration>,
loggingConfiguration: option<loggingConfiguration>,
updateDate: timestamp_,
roleArn: arn,
definition: definition,
name: name,
stateMachineArn: arn
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "DescribeStateMachineForExecutionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStateMachine = {
  type t;
  type request = {
stateMachineArn: arn
}
  type response = {
tracingConfiguration: option<tracingConfiguration>,
loggingConfiguration: option<loggingConfiguration>,
creationDate: timestamp_,
@as("type") type_: stateMachineType,
roleArn: arn,
definition: definition,
status: option<stateMachineStatus>,
name: name,
stateMachineArn: arn
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "DescribeStateMachineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStateMachine = {
  type t;
  type request = {
tracingConfiguration: option<tracingConfiguration>,
tags: option<tagList_>,
loggingConfiguration: option<loggingConfiguration>,
@as("type") type_: option<stateMachineType>,
roleArn: arn,
definition: definition,
name: name
}
  type response = {
creationDate: timestamp_,
stateMachineArn: arn
}
  @module("@aws-sdk/client-states") @new external new_: (request) => t = "CreateStateMachineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
