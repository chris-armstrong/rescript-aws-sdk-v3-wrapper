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
@ocaml.doc("<p>Contains a subset of information about a job execution.</p>")
type jobExecutionSummary = {
  @ocaml.doc("<p>A number that identifies a particular job execution on a particular device.</p>")
  executionNumber: option<executionNumber>,
  @ocaml.doc("<p>The version of the job execution. Job execution versions are incremented each time AWS IoT Jobs receives
         an update from a device.</p>")
  versionNumber: option<versionNumber>,
  @ocaml.doc(
    "<p>The time, in milliseconds since the epoch, when the job execution was last updated.</p>"
  )
  lastUpdatedAt: option<lastUpdatedAt>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the job execution started.</p>")
  startedAt: option<startedAt>,
  @ocaml.doc(
    "<p>The time, in milliseconds since the epoch, when the job execution was enqueued.</p>"
  )
  queuedAt: option<queuedAt>,
  @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
  jobId: option<jobId>,
}
type detailsMap = Js.Dict.t<detailsValue>
type jobExecutionSummaryList = array<jobExecutionSummary>
@ocaml.doc("<p>Contains data about the state of a job execution.</p>")
type jobExecutionState = {
  @ocaml.doc("<p>The version of the job execution. Job execution versions are incremented each time they are updated by a
         device.</p>")
  versionNumber: option<versionNumber>,
  @ocaml.doc(
    "<p>A collection of name/value pairs that describe the status of the job execution.</p>"
  )
  statusDetails: option<detailsMap>,
  @ocaml.doc("<p>The status of the job execution. Can be one of: \"QUEUED\", \"IN_PROGRESS\", \"FAILED\", \"SUCCESS\", \"CANCELED\",
         \"REJECTED\", or \"REMOVED\".</p>")
  status: option<jobExecutionStatus>,
}
@ocaml.doc("<p>Contains data about a job execution.</p>")
type jobExecution = {
  @ocaml.doc("<p>The content of the job document.</p>") jobDocument: option<jobDocument>,
  @ocaml.doc("<p>A number that identifies a particular job execution on a particular device. It can be used later in
         commands that return or update job execution information.</p>")
  executionNumber: option<executionNumber>,
  @ocaml.doc("<p>The version of the job execution. Job execution versions are incremented each time they are updated by a
         device.</p>")
  versionNumber: option<versionNumber>,
  @ocaml.doc("<p>The estimated number of seconds that remain before the job execution status will be
           changed to <code>TIMED_OUT</code>.</p>")
  approximateSecondsBeforeTimedOut: option<approximateSecondsBeforeTimedOut>,
  @ocaml.doc(
    "<p>The time, in milliseconds since the epoch, when the job execution was last updated. </p>"
  )
  lastUpdatedAt: option<lastUpdatedAt>,
  @ocaml.doc(
    "<p>The time, in milliseconds since the epoch, when the job execution was started.</p>"
  )
  startedAt: option<startedAt>,
  @ocaml.doc(
    "<p>The time, in milliseconds since the epoch, when the job execution was enqueued.</p>"
  )
  queuedAt: option<queuedAt>,
  @ocaml.doc(
    "<p>A collection of name/value pairs that describe the status of the job execution.</p>"
  )
  statusDetails: option<detailsMap>,
  @ocaml.doc("<p>The status of the job execution. Can be one of: \"QUEUED\", \"IN_PROGRESS\", \"FAILED\", \"SUCCESS\", \"CANCELED\",
         \"REJECTED\", or \"REMOVED\".</p>")
  status: option<jobExecutionStatus>,
  @ocaml.doc("<p>The name of the thing that is executing the job.</p>")
  thingName: option<thingName>,
  @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
  jobId: option<jobId>,
}
@ocaml.doc("<p>AWS IoT Jobs is a service that allows you to define a set of jobs — remote operations that are sent to
         and executed on one or more devices connected to AWS IoT. For example, you can define a job that instructs a
         set of devices to download and install application or firmware updates, reboot, rotate certificates, or perform
         remote troubleshooting operations.</p>
         <p> To create a job, you make a job document which is a description of the remote operations to be
         performed, and you specify a list of targets that should perform the operations. The targets can be individual
         things, thing groups or both.</p>
         <p> AWS IoT Jobs sends a message to inform the targets that a job is available. The target starts the
         execution of the job by downloading the job document, performing the operations it specifies, and reporting its
         progress to AWS IoT. The Jobs service provides commands to track the progress of a job on a specific target and
         for all the targets of the job</p>")
module UpdateJobExecution = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Optional. A number that identifies a particular job execution on a particular device.</p>"
    )
    executionNumber: option<executionNumber>,
    @ocaml.doc(
      "<p>Optional. When set to true, the response contains the job document. The default is false.</p>"
    )
    includeJobDocument: option<includeJobDocument>,
    @ocaml.doc("<p>Optional. When included and set to true, the response contains the JobExecutionState data. The default is
         false.</p>")
    includeJobExecutionState: option<includeExecutionState>,
    @ocaml.doc("<p>Optional. The expected current version of the job execution. Each time you update the job execution, its
         version is incremented. If the version of the job execution stored in Jobs does not match, the update is
         rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data
         is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain
         the job execution status data.)</p>")
    expectedVersion: option<expectedVersion>,
    @ocaml.doc("<p>Specifies the amount of time this device has to finish execution of this job. If the job 
           execution status is not set to a terminal state before this timer expires, or before the 
           timer is reset (by again calling <code>UpdateJobExecution</code>, setting the status to
           <code>IN_PROGRESS</code> and specifying a new timeout value in this field) the job execution
           status will be automatically set to <code>TIMED_OUT</code>.  Note that setting or resetting 
           this timeout has no effect on that job execution timeout which may have been specified when 
           the job was created (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>")
    stepTimeoutInMinutes: option<stepTimeoutInMinutes>,
    @ocaml.doc("<p> Optional. A collection of name/value pairs that describe the status of the job execution. If not
         specified, the statusDetails are unchanged.</p>")
    statusDetails: option<detailsMap>,
    @ocaml.doc("<p>The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED). This must be specified
         on every update.</p>")
    status: jobExecutionStatus,
    @ocaml.doc("<p>The name of the thing associated with the device.</p>") thingName: thingName,
    @ocaml.doc("<p>The unique identifier assigned to this job when it was created.</p>")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The contents of the Job Documents.</p>") jobDocument: option<jobDocument>,
    @ocaml.doc("<p>A JobExecutionState object.</p>") executionState: option<jobExecutionState>,
  }
  @module("@aws-sdk/client-iot-jobs-data") @new
  external new: request => t = "UpdateJobExecutionCommand"
  let make = (
    ~status,
    ~thingName,
    ~jobId,
    ~executionNumber=?,
    ~includeJobDocument=?,
    ~includeJobExecutionState=?,
    ~expectedVersion=?,
    ~stepTimeoutInMinutes=?,
    ~statusDetails=?,
    (),
  ) =>
    new({
      executionNumber,
      includeJobDocument,
      includeJobExecutionState,
      expectedVersion,
      stepTimeoutInMinutes,
      statusDetails,
      status,
      thingName,
      jobId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartNextPendingJobExecution = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the amount of time this device has to finish execution of this job. If the job 
           execution status is not set to a terminal state before this timer expires, or before the 
           timer is reset (by calling <code>UpdateJobExecution</code>, setting the status to
           <code>IN_PROGRESS</code> and specifying a new timeout value in field <code>stepTimeoutInMinutes</code>) 
           the job execution status will be automatically set to <code>TIMED_OUT</code>.  Note that setting 
           this timeout has no effect on that job execution timeout which may have been specified when 
           the job was created (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>")
    stepTimeoutInMinutes: option<stepTimeoutInMinutes>,
    @ocaml.doc("<p>A collection of name/value pairs that describe the status of the job execution. If not specified, the
         statusDetails are unchanged.</p>")
    statusDetails: option<detailsMap>,
    @ocaml.doc("<p>The name of the thing associated with the device.</p>") thingName: thingName,
  }
  type response = {@ocaml.doc("<p>A JobExecution object.</p>") execution: option<jobExecution>}
  @module("@aws-sdk/client-iot-jobs-data") @new
  external new: request => t = "StartNextPendingJobExecutionCommand"
  let make = (~thingName, ~stepTimeoutInMinutes=?, ~statusDetails=?, ()) =>
    new({stepTimeoutInMinutes, statusDetails, thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPendingJobExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the thing that is executing the job.</p>") thingName: thingName,
  }
  type response = {
    @ocaml.doc("<p>A list of JobExecutionSummary objects with status QUEUED.</p>")
    queuedJobs: option<jobExecutionSummaryList>,
    @ocaml.doc("<p>A list of JobExecutionSummary objects with status IN_PROGRESS.</p>")
    inProgressJobs: option<jobExecutionSummaryList>,
  }
  @module("@aws-sdk/client-iot-jobs-data") @new
  external new: request => t = "GetPendingJobExecutionsCommand"
  let make = (~thingName, ()) => new({thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeJobExecution = {
  type t
  type request = {
    @ocaml.doc("<p>Optional. A number that identifies a particular job execution on a particular device. If not specified,
         the latest job execution is returned.</p>")
    executionNumber: option<executionNumber>,
    @ocaml.doc(
      "<p>Optional. When set to true, the response contains the job document. The default is false.</p>"
    )
    includeJobDocument: option<includeJobDocument>,
    @ocaml.doc("<p>The thing name associated with the device the job execution is running on.</p>")
    thingName: thingName,
    @ocaml.doc("<p>The unique identifier assigned to this job when it was created.</p>")
    jobId: describeJobExecutionJobId,
  }
  type response = {
    @ocaml.doc("<p>Contains data about a job execution.</p>") execution: option<jobExecution>,
  }
  @module("@aws-sdk/client-iot-jobs-data") @new
  external new: request => t = "DescribeJobExecutionCommand"
  let make = (~thingName, ~jobId, ~executionNumber=?, ~includeJobDocument=?, ()) =>
    new({executionNumber, includeJobDocument, thingName, jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
