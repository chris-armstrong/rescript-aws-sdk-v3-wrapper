type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type truncated = bool;
type includedDetails = bool;
type unsignedInteger = int;
type traceHeader = string
type amazonawsTimestamp = Js.Date.t;
type timeoutInSeconds = float;
type taskToken = string
type tagValue = string
type tagKey = string
type syncExecutionStatus = [@as("TIMED_OUT") #TIMED_OUT | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED]
type stateMachineType = [@as("EXPRESS") #EXPRESS | @as("STANDARD") #STANDARD]
type stateMachineStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE]
type sensitiveError = string
type sensitiveDataJobInput = string
type sensitiveData = string
type sensitiveCause = string
type reverseOrder = bool;
type pageToken = string
type pageSize = int;
type name = string
type logLevel = [@as("OFF") #OFF | @as("FATAL") #FATAL | @as("ERROR") #ERROR | @as("ALL") #ALL]
type listExecutionsPageToken = string
type includeExecutionDataGetExecutionHistory = bool;
type includeExecutionData = bool;
type identity = string
type historyEventType = [@as("WaitStateExited") #WaitStateExited | @as("WaitStateEntered") #WaitStateEntered | @as("WaitStateAborted") #WaitStateAborted | @as("TaskTimedOut") #TaskTimedOut | @as("TaskSucceeded") #TaskSucceeded | @as("TaskSubmitted") #TaskSubmitted | @as("TaskSubmitFailed") #TaskSubmitFailed | @as("TaskStateExited") #TaskStateExited | @as("TaskStateEntered") #TaskStateEntered | @as("TaskStateAborted") #TaskStateAborted | @as("TaskStartFailed") #TaskStartFailed | @as("TaskStarted") #TaskStarted | @as("TaskScheduled") #TaskScheduled | @as("TaskFailed") #TaskFailed | @as("SucceedStateExited") #SucceedStateExited | @as("SucceedStateEntered") #SucceedStateEntered | @as("PassStateExited") #PassStateExited | @as("PassStateEntered") #PassStateEntered | @as("ParallelStateSucceeded") #ParallelStateSucceeded | @as("ParallelStateStarted") #ParallelStateStarted | @as("ParallelStateFailed") #ParallelStateFailed | @as("ParallelStateExited") #ParallelStateExited | @as("ParallelStateEntered") #ParallelStateEntered | @as("ParallelStateAborted") #ParallelStateAborted | @as("MapStateSucceeded") #MapStateSucceeded | @as("MapStateStarted") #MapStateStarted | @as("MapStateFailed") #MapStateFailed | @as("MapStateExited") #MapStateExited | @as("MapStateEntered") #MapStateEntered | @as("MapStateAborted") #MapStateAborted | @as("MapIterationSucceeded") #MapIterationSucceeded | @as("MapIterationStarted") #MapIterationStarted | @as("MapIterationFailed") #MapIterationFailed | @as("MapIterationAborted") #MapIterationAborted | @as("LambdaFunctionTimedOut") #LambdaFunctionTimedOut | @as("LambdaFunctionSucceeded") #LambdaFunctionSucceeded | @as("LambdaFunctionStartFailed") #LambdaFunctionStartFailed | @as("LambdaFunctionStarted") #LambdaFunctionStarted | @as("LambdaFunctionScheduleFailed") #LambdaFunctionScheduleFailed | @as("LambdaFunctionScheduled") #LambdaFunctionScheduled | @as("LambdaFunctionFailed") #LambdaFunctionFailed | @as("FailStateEntered") #FailStateEntered | @as("ExecutionTimedOut") #ExecutionTimedOut | @as("ExecutionSucceeded") #ExecutionSucceeded | @as("ExecutionStarted") #ExecutionStarted | @as("ExecutionFailed") #ExecutionFailed | @as("ExecutionAborted") #ExecutionAborted | @as("ChoiceStateExited") #ChoiceStateExited | @as("ChoiceStateEntered") #ChoiceStateEntered | @as("ActivityTimedOut") #ActivityTimedOut | @as("ActivitySucceeded") #ActivitySucceeded | @as("ActivityStarted") #ActivityStarted | @as("ActivityScheduleFailed") #ActivityScheduleFailed | @as("ActivityScheduled") #ActivityScheduled | @as("ActivityFailed") #ActivityFailed]
type executionStatus = [@as("ABORTED") #ABORTED | @as("TIMED_OUT") #TIMED_OUT | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("RUNNING") #RUNNING]
type eventId = float;
type errorMessage = string
type enabled = bool;
type definition = string
type connectorParameters = string
type billedMemoryUsed = float;
type billedDuration = float;
type arn = string
type tracingConfiguration = {
@as("enabled") enabled: enabled
}
type taskTimedOutEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError,
@as("resource") resource: option<name>,
@as("resourceType") resourceType: option<name>
}
type taskSubmitFailedEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError,
@as("resource") resource: option<name>,
@as("resourceType") resourceType: option<name>
}
type taskStartedEventDetails = {
@as("resource") resource: option<name>,
@as("resourceType") resourceType: option<name>
}
type taskStartFailedEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError,
@as("resource") resource: option<name>,
@as("resourceType") resourceType: option<name>
}
type taskScheduledEventDetails = {
@as("heartbeatInSeconds") heartbeatInSeconds: timeoutInSeconds,
@as("timeoutInSeconds") timeoutInSeconds: timeoutInSeconds,
@as("parameters") parameters: option<connectorParameters>,
@as("region") region: option<name>,
@as("resource") resource: option<name>,
@as("resourceType") resourceType: option<name>
}
type taskFailedEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError,
@as("resource") resource: option<name>,
@as("resourceType") resourceType: option<name>
}
type tagKeyList = array<tagKey>
type tag = {
@as("value") value: tagValue,
@as("key") key: tagKey
}
type stateMachineListItem = {
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("type") type_: option<stateMachineType>,
@as("name") name: option<name>,
@as("stateMachineArn") stateMachineArn: option<arn>
}
type mapStateStartedEventDetails = {
@as("length") length: unsignedInteger
}
type mapIterationEventDetails = {
@as("index") index: unsignedInteger,
@as("name") name: name
}
type lambdaFunctionTimedOutEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError
}
type lambdaFunctionStartFailedEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError
}
type lambdaFunctionScheduleFailedEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError
}
type lambdaFunctionFailedEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError
}
type historyEventExecutionDataDetails = {
@as("truncated") truncated: truncated
}
type executionTimedOutEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError
}
type executionListItem = {
@as("stopDate") stopDate: amazonawsTimestamp,
@as("startDate") startDate: option<amazonawsTimestamp>,
@as("status") status: option<executionStatus>,
@as("name") name: option<name>,
@as("stateMachineArn") stateMachineArn: option<arn>,
@as("executionArn") executionArn: option<arn>
}
type executionFailedEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError
}
type executionAbortedEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError
}
type cloudWatchLogsLogGroup = {
@as("logGroupArn") logGroupArn: arn
}
type cloudWatchEventsExecutionDataDetails = {
@as("included") included: includedDetails
}
type billingDetails = {
@as("billedDurationInMilliseconds") billedDurationInMilliseconds: billedDuration,
@as("billedMemoryUsedInMB") billedMemoryUsedInMB: billedMemoryUsed
}
type activityTimedOutEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError
}
type activityStartedEventDetails = {
@as("workerName") workerName: identity
}
type activityScheduleFailedEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError
}
type activityListItem = {
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("name") name: option<name>,
@as("activityArn") activityArn: option<arn>
}
type activityFailedEventDetails = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError
}
type taskSucceededEventDetails = {
@as("outputDetails") outputDetails: historyEventExecutionDataDetails,
@as("output") output: sensitiveData,
@as("resource") resource: option<name>,
@as("resourceType") resourceType: option<name>
}
type taskSubmittedEventDetails = {
@as("outputDetails") outputDetails: historyEventExecutionDataDetails,
@as("output") output: sensitiveData,
@as("resource") resource: option<name>,
@as("resourceType") resourceType: option<name>
}
type tagList = array<tag>
type stateMachineList = array<stateMachineListItem>
type stateExitedEventDetails = {
@as("outputDetails") outputDetails: historyEventExecutionDataDetails,
@as("output") output: sensitiveData,
@as("name") name: option<name>
}
type stateEnteredEventDetails = {
@as("inputDetails") inputDetails: historyEventExecutionDataDetails,
@as("input") input: sensitiveData,
@as("name") name: option<name>
}
type logDestination = {
@as("cloudWatchLogsLogGroup") cloudWatchLogsLogGroup: cloudWatchLogsLogGroup
}
type lambdaFunctionSucceededEventDetails = {
@as("outputDetails") outputDetails: historyEventExecutionDataDetails,
@as("output") output: sensitiveData
}
type lambdaFunctionScheduledEventDetails = {
@as("timeoutInSeconds") timeoutInSeconds: timeoutInSeconds,
@as("inputDetails") inputDetails: historyEventExecutionDataDetails,
@as("input") input: sensitiveData,
@as("resource") resource: option<arn>
}
type executionSucceededEventDetails = {
@as("outputDetails") outputDetails: historyEventExecutionDataDetails,
@as("output") output: sensitiveData
}
type executionStartedEventDetails = {
@as("roleArn") roleArn: arn,
@as("inputDetails") inputDetails: historyEventExecutionDataDetails,
@as("input") input: sensitiveData
}
type executionList = array<executionListItem>
type activitySucceededEventDetails = {
@as("outputDetails") outputDetails: historyEventExecutionDataDetails,
@as("output") output: sensitiveData
}
type activityScheduledEventDetails = {
@as("heartbeatInSeconds") heartbeatInSeconds: timeoutInSeconds,
@as("timeoutInSeconds") timeoutInSeconds: timeoutInSeconds,
@as("inputDetails") inputDetails: historyEventExecutionDataDetails,
@as("input") input: sensitiveData,
@as("resource") resource: option<arn>
}
type activityList = array<activityListItem>
type logDestinationList = array<logDestination>
type historyEvent = {
@as("stateExitedEventDetails") stateExitedEventDetails: stateExitedEventDetails,
@as("stateEnteredEventDetails") stateEnteredEventDetails: stateEnteredEventDetails,
@as("lambdaFunctionTimedOutEventDetails") lambdaFunctionTimedOutEventDetails: lambdaFunctionTimedOutEventDetails,
@as("lambdaFunctionSucceededEventDetails") lambdaFunctionSucceededEventDetails: lambdaFunctionSucceededEventDetails,
@as("lambdaFunctionStartFailedEventDetails") lambdaFunctionStartFailedEventDetails: lambdaFunctionStartFailedEventDetails,
@as("lambdaFunctionScheduledEventDetails") lambdaFunctionScheduledEventDetails: lambdaFunctionScheduledEventDetails,
@as("lambdaFunctionScheduleFailedEventDetails") lambdaFunctionScheduleFailedEventDetails: lambdaFunctionScheduleFailedEventDetails,
@as("lambdaFunctionFailedEventDetails") lambdaFunctionFailedEventDetails: lambdaFunctionFailedEventDetails,
@as("mapIterationAbortedEventDetails") mapIterationAbortedEventDetails: mapIterationEventDetails,
@as("mapIterationFailedEventDetails") mapIterationFailedEventDetails: mapIterationEventDetails,
@as("mapIterationSucceededEventDetails") mapIterationSucceededEventDetails: mapIterationEventDetails,
@as("mapIterationStartedEventDetails") mapIterationStartedEventDetails: mapIterationEventDetails,
@as("mapStateStartedEventDetails") mapStateStartedEventDetails: mapStateStartedEventDetails,
@as("executionTimedOutEventDetails") executionTimedOutEventDetails: executionTimedOutEventDetails,
@as("executionAbortedEventDetails") executionAbortedEventDetails: executionAbortedEventDetails,
@as("executionSucceededEventDetails") executionSucceededEventDetails: executionSucceededEventDetails,
@as("executionStartedEventDetails") executionStartedEventDetails: executionStartedEventDetails,
@as("executionFailedEventDetails") executionFailedEventDetails: executionFailedEventDetails,
@as("taskTimedOutEventDetails") taskTimedOutEventDetails: taskTimedOutEventDetails,
@as("taskSucceededEventDetails") taskSucceededEventDetails: taskSucceededEventDetails,
@as("taskSubmittedEventDetails") taskSubmittedEventDetails: taskSubmittedEventDetails,
@as("taskSubmitFailedEventDetails") taskSubmitFailedEventDetails: taskSubmitFailedEventDetails,
@as("taskStartedEventDetails") taskStartedEventDetails: taskStartedEventDetails,
@as("taskStartFailedEventDetails") taskStartFailedEventDetails: taskStartFailedEventDetails,
@as("taskScheduledEventDetails") taskScheduledEventDetails: taskScheduledEventDetails,
@as("taskFailedEventDetails") taskFailedEventDetails: taskFailedEventDetails,
@as("activityTimedOutEventDetails") activityTimedOutEventDetails: activityTimedOutEventDetails,
@as("activitySucceededEventDetails") activitySucceededEventDetails: activitySucceededEventDetails,
@as("activityStartedEventDetails") activityStartedEventDetails: activityStartedEventDetails,
@as("activityScheduledEventDetails") activityScheduledEventDetails: activityScheduledEventDetails,
@as("activityScheduleFailedEventDetails") activityScheduleFailedEventDetails: activityScheduleFailedEventDetails,
@as("activityFailedEventDetails") activityFailedEventDetails: activityFailedEventDetails,
@as("previousEventId") previousEventId: eventId,
@as("id") id: option<eventId>,
@as("type") type_: option<historyEventType>,
@as("timestamp") timestamp: option<amazonawsTimestamp>
}
type loggingConfiguration = {
@as("destinations") destinations: logDestinationList,
@as("includeExecutionData") includeExecutionData: includeExecutionData,
@as("level") level: logLevel
}
type historyEventList = array<historyEvent>
type clientType;
@module("@aws-sdk/client-states") @new external createClient: unit => clientType = "StepFunctionsClient";
module StopExecution = {
  type t;
  type request = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError,
@as("executionArn") executionArn: option<arn>
}
  type response = {
@as("stopDate") stopDate: option<amazonawsTimestamp>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "StopExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartExecution = {
  type t;
  type request = {
@as("traceHeader") traceHeader: traceHeader,
@as("input") input: sensitiveData,
@as("name") name: name,
@as("stateMachineArn") stateMachineArn: option<arn>
}
  type response = {
@as("startDate") startDate: option<amazonawsTimestamp>,
@as("executionArn") executionArn: option<arn>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "StartExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendTaskSuccess = {
  type t;
  type request = {
@as("output") output: option<sensitiveData>,
@as("taskToken") taskToken: option<taskToken>
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "SendTaskSuccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendTaskHeartbeat = {
  type t;
  type request = {
@as("taskToken") taskToken: option<taskToken>
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "SendTaskHeartbeatCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendTaskFailure = {
  type t;
  type request = {
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError,
@as("taskToken") taskToken: option<taskToken>
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "SendTaskFailureCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetActivityTask = {
  type t;
  type request = {
@as("workerName") workerName: name,
@as("activityArn") activityArn: option<arn>
}
  type response = {
@as("input") input: sensitiveDataJobInput,
@as("taskToken") taskToken: taskToken
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "GetActivityTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeActivity = {
  type t;
  type request = {
@as("activityArn") activityArn: option<arn>
}
  type response = {
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("name") name: option<name>,
@as("activityArn") activityArn: option<arn>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "DescribeActivityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStateMachine = {
  type t;
  type request = {
@as("stateMachineArn") stateMachineArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "DeleteStateMachineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteActivity = {
  type t;
  type request = {
@as("activityArn") activityArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "DeleteActivityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartSyncExecution = {
  type t;
  type request = {
@as("traceHeader") traceHeader: traceHeader,
@as("input") input: sensitiveData,
@as("name") name: name,
@as("stateMachineArn") stateMachineArn: option<arn>
}
  type response = {
@as("billingDetails") billingDetails: billingDetails,
@as("traceHeader") traceHeader: traceHeader,
@as("outputDetails") outputDetails: cloudWatchEventsExecutionDataDetails,
@as("output") output: sensitiveData,
@as("inputDetails") inputDetails: cloudWatchEventsExecutionDataDetails,
@as("input") input: sensitiveData,
@as("cause") cause: sensitiveCause,
@as("error") error: sensitiveError,
@as("status") status: option<syncExecutionStatus>,
@as("stopDate") stopDate: option<amazonawsTimestamp>,
@as("startDate") startDate: option<amazonawsTimestamp>,
@as("name") name: name,
@as("stateMachineArn") stateMachineArn: arn,
@as("executionArn") executionArn: option<arn>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "StartSyncExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeExecution = {
  type t;
  type request = {
@as("executionArn") executionArn: option<arn>
}
  type response = {
@as("traceHeader") traceHeader: traceHeader,
@as("outputDetails") outputDetails: cloudWatchEventsExecutionDataDetails,
@as("output") output: sensitiveData,
@as("inputDetails") inputDetails: cloudWatchEventsExecutionDataDetails,
@as("input") input: sensitiveData,
@as("stopDate") stopDate: amazonawsTimestamp,
@as("startDate") startDate: option<amazonawsTimestamp>,
@as("status") status: option<executionStatus>,
@as("name") name: name,
@as("stateMachineArn") stateMachineArn: option<arn>,
@as("executionArn") executionArn: option<arn>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "DescribeExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<arn>
}
  type response = {
@as("tags") tags: tagList
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStateMachines = {
  type t;
  type request = {
@as("nextToken") nextToken: pageToken,
@as("maxResults") maxResults: pageSize
}
  type response = {
@as("nextToken") nextToken: pageToken,
@as("stateMachines") stateMachines: option<stateMachineList>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "ListStateMachinesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListExecutions = {
  type t;
  type request = {
@as("nextToken") nextToken: listExecutionsPageToken,
@as("maxResults") maxResults: pageSize,
@as("statusFilter") statusFilter: executionStatus,
@as("stateMachineArn") stateMachineArn: option<arn>
}
  type response = {
@as("nextToken") nextToken: listExecutionsPageToken,
@as("executions") executions: option<executionList>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "ListExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListActivities = {
  type t;
  type request = {
@as("nextToken") nextToken: pageToken,
@as("maxResults") maxResults: pageSize
}
  type response = {
@as("nextToken") nextToken: pageToken,
@as("activities") activities: option<activityList>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "ListActivitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateActivity = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("name") name: option<name>
}
  type response = {
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("activityArn") activityArn: option<arn>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "CreateActivityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStateMachine = {
  type t;
  type request = {
@as("tracingConfiguration") tracingConfiguration: tracingConfiguration,
@as("loggingConfiguration") loggingConfiguration: loggingConfiguration,
@as("roleArn") roleArn: arn,
@as("definition") definition: definition,
@as("stateMachineArn") stateMachineArn: option<arn>
}
  type response = {
@as("updateDate") updateDate: option<amazonawsTimestamp>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "UpdateStateMachineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetExecutionHistory = {
  type t;
  type request = {
@as("includeExecutionData") includeExecutionData: includeExecutionDataGetExecutionHistory,
@as("nextToken") nextToken: pageToken,
@as("reverseOrder") reverseOrder: reverseOrder,
@as("maxResults") maxResults: pageSize,
@as("executionArn") executionArn: option<arn>
}
  type response = {
@as("nextToken") nextToken: pageToken,
@as("events") events: option<historyEventList>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "GetExecutionHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStateMachineForExecution = {
  type t;
  type request = {
@as("executionArn") executionArn: option<arn>
}
  type response = {
@as("tracingConfiguration") tracingConfiguration: tracingConfiguration,
@as("loggingConfiguration") loggingConfiguration: loggingConfiguration,
@as("updateDate") updateDate: option<amazonawsTimestamp>,
@as("roleArn") roleArn: option<arn>,
@as("definition") definition: option<definition>,
@as("name") name: option<name>,
@as("stateMachineArn") stateMachineArn: option<arn>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "DescribeStateMachineForExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStateMachine = {
  type t;
  type request = {
@as("stateMachineArn") stateMachineArn: option<arn>
}
  type response = {
@as("tracingConfiguration") tracingConfiguration: tracingConfiguration,
@as("loggingConfiguration") loggingConfiguration: loggingConfiguration,
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("type") type_: option<stateMachineType>,
@as("roleArn") roleArn: option<arn>,
@as("definition") definition: option<definition>,
@as("status") status: stateMachineStatus,
@as("name") name: option<name>,
@as("stateMachineArn") stateMachineArn: option<arn>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "DescribeStateMachineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStateMachine = {
  type t;
  type request = {
@as("tracingConfiguration") tracingConfiguration: tracingConfiguration,
@as("tags") tags: tagList,
@as("loggingConfiguration") loggingConfiguration: loggingConfiguration,
@as("type") type_: stateMachineType,
@as("roleArn") roleArn: option<arn>,
@as("definition") definition: option<definition>,
@as("name") name: option<name>
}
  type response = {
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("stateMachineArn") stateMachineArn: option<arn>
}
  @module("@aws-sdk/client-states") @new external new_: (Js.Promise.t<request>) => t = "CreateStateMachineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
