type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iot-jobs-data") @new
external createClient: unit => awsServiceClient = "IoTJobsDataPlaneClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type errorMessage = string
type versionNumber = float
type thingName = string
type stepTimeoutInMinutes = float
type startedAt = float
type queuedAt = float
type lastUpdatedAt = float
type jobId = string
type jobExecutionStatus = [
  | @as("CANCELED") #CANCELED
  | @as("REMOVED") #REMOVED
  | @as("REJECTED") #REJECTED
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("QUEUED") #QUEUED
]
type jobDocument = string
type includeJobDocument = bool
type includeExecutionState = bool
type expectedVersion = float
type executionNumber = float
type detailsValue = string
type detailsKey = string
type describeJobExecutionJobId = string
type binaryBlob = NodeJs.Buffer.t
type approximateSecondsBeforeTimedOut = float
type jobExecutionSummary = {
  executionNumber: option<executionNumber>,
  versionNumber: option<versionNumber>,
  lastUpdatedAt: option<lastUpdatedAt>,
  startedAt: option<startedAt>,
  queuedAt: option<queuedAt>,
  jobId: option<jobId>,
}
type detailsMap = Js.Dict.t<detailsValue>
type jobExecutionSummaryList = array<jobExecutionSummary>
type jobExecutionState = {
  versionNumber: option<versionNumber>,
  statusDetails: option<detailsMap>,
  status: option<jobExecutionStatus>,
}
type jobExecution = {
  jobDocument: option<jobDocument>,
  executionNumber: option<executionNumber>,
  versionNumber: option<versionNumber>,
  approximateSecondsBeforeTimedOut: option<approximateSecondsBeforeTimedOut>,
  lastUpdatedAt: option<lastUpdatedAt>,
  startedAt: option<startedAt>,
  queuedAt: option<queuedAt>,
  statusDetails: option<detailsMap>,
  status: option<jobExecutionStatus>,
  thingName: option<thingName>,
  jobId: option<jobId>,
}

module UpdateJobExecution = {
  type t
  type request = {
    executionNumber: option<executionNumber>,
    includeJobDocument: option<includeJobDocument>,
    includeJobExecutionState: option<includeExecutionState>,
    expectedVersion: option<expectedVersion>,
    stepTimeoutInMinutes: option<stepTimeoutInMinutes>,
    statusDetails: option<detailsMap>,
    status: jobExecutionStatus,
    thingName: thingName,
    jobId: jobId,
  }
  type response = {
    jobDocument: option<jobDocument>,
    executionState: option<jobExecutionState>,
  }
  @module("@aws-sdk/client-iot-jobs-data") @new
  external new_: request => t = "UpdateJobExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartNextPendingJobExecution = {
  type t
  type request = {
    stepTimeoutInMinutes: option<stepTimeoutInMinutes>,
    statusDetails: option<detailsMap>,
    thingName: thingName,
  }
  type response = {execution: option<jobExecution>}
  @module("@aws-sdk/client-iot-jobs-data") @new
  external new_: request => t = "StartNextPendingJobExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPendingJobExecutions = {
  type t
  type request = {thingName: thingName}
  type response = {
    queuedJobs: option<jobExecutionSummaryList>,
    inProgressJobs: option<jobExecutionSummaryList>,
  }
  @module("@aws-sdk/client-iot-jobs-data") @new
  external new_: request => t = "GetPendingJobExecutionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobExecution = {
  type t
  type request = {
    executionNumber: option<executionNumber>,
    includeJobDocument: option<includeJobDocument>,
    thingName: thingName,
    jobId: describeJobExecutionJobId,
  }
  type response = {execution: option<jobExecution>}
  @module("@aws-sdk/client-iot-jobs-data") @new
  external new_: request => t = "DescribeJobExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
