type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type errorMessage = string
type versionNumber = float;
type thingName = string
type stepTimeoutInMinutes = float;
type startedAt = float;
type queuedAt = float;
type lastUpdatedAt = float;
type jobId = string
type jobExecutionStatus = [@as("CANCELED") #CANCELED | @as("REMOVED") #REMOVED | @as("REJECTED") #REJECTED | @as("TIMED_OUT") #TIMED_OUT | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS | @as("QUEUED") #QUEUED]
type jobDocument = string
type includeJobDocument = bool;
type includeExecutionState = bool;
type expectedVersion = float;
type executionNumber = float;
type detailsValue = string
type detailsKey = string
type describeJobExecutionJobId = string
type binaryBlob = NodeJs.Buffer.t;
type approximateSecondsBeforeTimedOut = float;
type jobExecutionSummary = {
@as("executionNumber") executionNumber: executionNumber,
@as("versionNumber") versionNumber: versionNumber,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("startedAt") startedAt: startedAt,
@as("queuedAt") queuedAt: queuedAt,
@as("jobId") jobId: jobId
}
type detailsMap = Js.Dict.t< detailsValue>
type jobExecutionSummaryList = array<jobExecutionSummary>
type jobExecutionState = {
@as("versionNumber") versionNumber: versionNumber,
@as("statusDetails") statusDetails: detailsMap,
@as("status") status: jobExecutionStatus
}
type jobExecution = {
@as("jobDocument") jobDocument: jobDocument,
@as("executionNumber") executionNumber: executionNumber,
@as("versionNumber") versionNumber: versionNumber,
@as("approximateSecondsBeforeTimedOut") approximateSecondsBeforeTimedOut: approximateSecondsBeforeTimedOut,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("startedAt") startedAt: startedAt,
@as("queuedAt") queuedAt: queuedAt,
@as("statusDetails") statusDetails: detailsMap,
@as("status") status: jobExecutionStatus,
@as("thingName") thingName: thingName,
@as("jobId") jobId: jobId
}
type clientType;
@module("@aws-sdk/client-iot-jobs-data") @new external createClient: unit => clientType = "IoTJobsDataPlaneClient";
module UpdateJobExecution = {
  type t;
  type request = {
@as("executionNumber") executionNumber: executionNumber,
@as("includeJobDocument") includeJobDocument: includeJobDocument,
@as("includeJobExecutionState") includeJobExecutionState: includeExecutionState,
@as("expectedVersion") expectedVersion: expectedVersion,
@as("stepTimeoutInMinutes") stepTimeoutInMinutes: stepTimeoutInMinutes,
@as("statusDetails") statusDetails: detailsMap,
@as("status") status: option<jobExecutionStatus>,
@as("thingName") thingName: option<thingName>,
@as("jobId") jobId: option<jobId>
}
  type response = {
@as("jobDocument") jobDocument: jobDocument,
@as("executionState") executionState: jobExecutionState
}
  @module("@aws-sdk/client-iot-jobs-data") @new external new_: (request) => t = "UpdateJobExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartNextPendingJobExecution = {
  type t;
  type request = {
@as("stepTimeoutInMinutes") stepTimeoutInMinutes: stepTimeoutInMinutes,
@as("statusDetails") statusDetails: detailsMap,
@as("thingName") thingName: option<thingName>
}
  type response = {
@as("execution") execution: jobExecution
}
  @module("@aws-sdk/client-iot-jobs-data") @new external new_: (request) => t = "StartNextPendingJobExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPendingJobExecutions = {
  type t;
  type request = {
@as("thingName") thingName: option<thingName>
}
  type response = {
@as("queuedJobs") queuedJobs: jobExecutionSummaryList,
@as("inProgressJobs") inProgressJobs: jobExecutionSummaryList
}
  @module("@aws-sdk/client-iot-jobs-data") @new external new_: (request) => t = "GetPendingJobExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJobExecution = {
  type t;
  type request = {
@as("executionNumber") executionNumber: executionNumber,
@as("includeJobDocument") includeJobDocument: includeJobDocument,
@as("thingName") thingName: option<thingName>,
@as("jobId") jobId: option<describeJobExecutionJobId>
}
  type response = {
@as("execution") execution: jobExecution
}
  @module("@aws-sdk/client-iot-jobs-data") @new external new_: (request) => t = "DescribeJobExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
