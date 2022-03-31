type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-braket") @new
external createClient: unit => awsServiceClient = "BraketClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type uri = string
type tagsMap = Js.Dict.t<baseString>
type tagKeys = array<baseString>
type string64 = string
type string4096 = string
type string256 = string
type string2048 = string
type string1024 = string
type searchQuantumTasksFilterOperator = [
  | @as("BETWEEN") #BETWEEN
  | @as("GTE") #GTE
  | @as("GT") #GT
  | @as("EQUAL") #EQUAL
  | @as("LTE") #LTE
  | @as("LT") #LT
]
type searchJobsFilterOperator = [
  | @as("CONTAINS") #CONTAINS
  | @as("BETWEEN") #BETWEEN
  | @as("GTE") #GTE
  | @as("GT") #GT
  | @as("EQUAL") #EQUAL
  | @as("LTE") #LTE
  | @as("LT") #LT
]
type s3Path = string
type roleArn = string
type quantumTaskStatus = [
  | @as("CANCELLED") #CANCELLED
  | @as("CANCELLING") #CANCELLING
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("RUNNING") #RUNNING
  | @as("QUEUED") #QUEUED
  | @as("CREATED") #CREATED
]

type quantumTaskArn = string
type jsonValue = string
type jobToken = string
@ocaml.doc("<p>Specifies limits for how long an Amazon Braket job can run. </p>")
type jobStoppingCondition = {
  @ocaml.doc("<p>The maximum length of time, in seconds, that an Amazon Braket job can run.</p>")
  maxRuntimeInSeconds: option<baseInteger>,
}

type jobPrimaryStatus = [
  | @as("CANCELLED") #CANCELLED
  | @as("CANCELLING") #CANCELLING
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("RUNNING") #RUNNING
  | @as("QUEUED") #QUEUED
]
type jobEventType = [
  | @as("CANCELLED") #CANCELLED
  | @as("MAX_RUNTIME_EXCEEDED") #MAX_RUNTIME_EXCEEDED
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("UPLOADING_RESULTS") #UPLOADING_RESULTS
  | @as("DEPRIORITIZED_DUE_TO_INACTIVITY") #DEPRIORITIZED_DUE_TO_INACTIVITY
  | @as("RUNNING") #RUNNING
  | @as("DOWNLOADING_DATA") #DOWNLOADING_DATA
  | @as("STARTING_INSTANCE") #STARTING_INSTANCE
  | @as("QUEUED_FOR_EXECUTION") #QUEUED_FOR_EXECUTION
  | @as("WAITING_FOR_PRIORITY") #WAITING_FOR_PRIORITY
]
type jobArn = string
type instanceType = [
  | @as("ml.c5n.18xlarge") #Ml_C5n_18xlarge
  | @as("ml.c5n.9xlarge") #Ml_C5n_9xlarge
  | @as("ml.c5n.4xlarge") #Ml_C5n_4xlarge
  | @as("ml.c5n.2xlarge") #Ml_C5n_2xlarge
  | @as("ml.c5n.xlarge") #Ml_C5n_Xlarge
  | @as("ml.c5.18xlarge") #Ml_C5_18xlarge
  | @as("ml.c5.9xlarge") #Ml_C5_9xlarge
  | @as("ml.c5.4xlarge") #Ml_C5_4xlarge
  | @as("ml.c5.2xlarge") #Ml_C5_2xlarge
  | @as("ml.c5.xlarge") #Ml_C5_Xlarge
  | @as("ml.p4d.24xlarge") #Ml_P4d_24xlarge
  | @as("ml.p3dn.24xlarge") #Ml_P3dn_24xlarge
  | @as("ml.p3.16xlarge") #Ml_P3_16xlarge
  | @as("ml.p3.8xlarge") #Ml_P3_8xlarge
  | @as("ml.p3.2xlarge") #Ml_P3_2xlarge
  | @as("ml.p2.16xlarge") #Ml_P2_16xlarge
  | @as("ml.p2.8xlarge") #Ml_P2_8xlarge
  | @as("ml.p2.xlarge") #Ml_P2_Xlarge
  | @as("ml.c4.8xlarge") #Ml_C4_8xlarge
  | @as("ml.c4.4xlarge") #Ml_C4_4xlarge
  | @as("ml.c4.2xlarge") #Ml_C4_2xlarge
  | @as("ml.c4.xlarge") #Ml_C4_Xlarge
  | @as("ml.m5.24xlarge") #Ml_M5_24xlarge
  | @as("ml.m5.12xlarge") #Ml_M5_12xlarge
  | @as("ml.m5.4xlarge") #Ml_M5_4xlarge
  | @as("ml.m5.2xlarge") #Ml_M5_2xlarge
  | @as("ml.m5.xlarge") #Ml_M5_Xlarge
  | @as("ml.m5.large") #Ml_M5_Large
  | @as("ml.g4dn.16xlarge") #Ml_G4dn_16xlarge
  | @as("ml.g4dn.12xlarge") #Ml_G4dn_12xlarge
  | @as("ml.g4dn.8xlarge") #Ml_G4dn_8xlarge
  | @as("ml.g4dn.4xlarge") #Ml_G4dn_4xlarge
  | @as("ml.g4dn.2xlarge") #Ml_G4dn_2xlarge
  | @as("ml.g4dn.xlarge") #Ml_G4dn_Xlarge
  | @as("ml.m4.16xlarge") #Ml_M4_16xlarge
  | @as("ml.m4.10xlarge") #Ml_M4_10xlarge
  | @as("ml.m4.4xlarge") #Ml_M4_4xlarge
  | @as("ml.m4.2xlarge") #Ml_M4_2xlarge
  | @as("ml.m4.xlarge") #Ml_M4_Xlarge
]
type deviceType = [@as("SIMULATOR") #SIMULATOR | @as("QPU") #QPU]
type deviceStatus = [@as("RETIRED") #RETIRED | @as("OFFLINE") #OFFLINE | @as("ONLINE") #ONLINE]

type deviceArn = string
type compressionType = [@as("GZIP") #GZIP | @as("NONE") #NONE]
type cancellationStatus = [@as("CANCELLED") #CANCELLED | @as("CANCELLING") #CANCELLING]
type string256List = array<string256>
@ocaml.doc(
  "<p>Contains information about the Python scripts used for entry and by an Amazon Braket job.</p>"
)
type scriptModeConfig = {
  @ocaml.doc("<p>The type of compression used by the Python scripts for an Amazon Braket job.</p>")
  compressionType: option<compressionType>,
  @ocaml.doc("<p>The URI that specifies the S3 path to the Python script module that contains the
         training script used by an Amazon Braket job.</p>")
  s3Uri: s3Path,
  @ocaml.doc("<p>The path to the Python script that serves as the entry point for an Amazon Braket
         job.</p>")
  entryPoint: baseString,
}
@ocaml.doc("<p>Information about the data stored in Amazon S3 used by the Amazon Braket job.</p>")
type s3DataSource = {
  @ocaml.doc("<p>Depending on the value specified for the <code>S3DataType</code>, identifies either a
         key name prefix or a manifest that locates the S3 data source.</p>")
  s3Uri: s3Path,
}
@ocaml.doc("<p>Includes information about a quantum task.</p>")
type quantumTaskSummary = {
  @ocaml.doc("<p>Displays the key, value pairs of tags associated with this quantum task.</p>")
  tags: option<tagsMap>,
  @ocaml.doc("<p>The time at which the task finished.</p>") endedAt: option<baseTimestamp>,
  @ocaml.doc("<p>The time at which the task was created.</p>") createdAt: baseTimestamp,
  @ocaml.doc("<p>The folder in the S3 bucket where the task result file is stored.</p>")
  outputS3Directory: baseString,
  @ocaml.doc("<p>The S3 bucket where the task result file is stored..</p>")
  outputS3Bucket: baseString,
  @ocaml.doc("<p>The shots used for the task.</p>") shots: baseLong,
  @ocaml.doc("<p>The ARN of the device the task ran on.</p>") deviceArn: deviceArn,
  @ocaml.doc("<p>The status of the task.</p>") status: quantumTaskStatus,
  @ocaml.doc("<p>The ARN of the task.</p>") quantumTaskArn: quantumTaskArn,
}
@ocaml.doc("<p>Provides summary information about an Amazon Braket job.</p>")
type jobSummary = {
  @ocaml.doc(
    "<p>A tag object that consists of a key and an optional value, used to manage metadata for Amazon Braket resources.</p>"
  )
  tags: option<tagsMap>,
  @ocaml.doc("<p>The date and time that the Amazon Braket job ended.</p>")
  endedAt: option<baseTimestamp>,
  @ocaml.doc("<p>The date and time that the Amazon Braket job was started.</p>")
  startedAt: option<baseTimestamp>,
  @ocaml.doc("<p>The date and time that the Amazon Braket job was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc(
    "<p>Provides summary information about the primary device used by an Amazon Braket job.</p>"
  )
  device: string256,
  @ocaml.doc("<p>The name of the Amazon Braket job.</p>") jobName: baseString,
  @ocaml.doc("<p>The ARN of the Amazon Braket job.</p>") jobArn: jobArn,
  @ocaml.doc("<p>The status of the Amazon Braket job.</p>") status: jobPrimaryStatus,
}
@ocaml.doc("<p>Specifies the path to the S3 location where you want to store job artifacts and the
         encryption key used to store them.</p>")
type jobOutputDataConfig = {
  @ocaml.doc("<p>Identifies the S3 path where you want Amazon Braket to store the job training artifacts. For
         example, <code>s3://bucket-name/key-name-prefix</code>.</p>")
  s3Path: s3Path,
  @ocaml.doc("<p>The AWS Key Management Service (AWS KMS) key that Amazon Braket uses to encrypt the
         job training artifacts at rest using Amazon S3 server-side encryption.</p>")
  kmsKeyId: option<string2048>,
}
@ocaml.doc(
  "<p>Details about the type and time events occurred related to the Amazon Braket job.</p>"
)
type jobEventDetails = {
  @ocaml.doc(
    "<p>A message describing the event that occurred related to the Amazon Braket job.</p>"
  )
  message: option<baseString>,
  @ocaml.doc("<p>TThe type of event that occurred related to the Amazon Braket job.</p>")
  timeOfEvent: option<baseTimestamp>,
  @ocaml.doc("<p>The type of event that occurred related to the Amazon Braket job.</p>")
  eventType: option<jobEventType>,
}
@ocaml.doc("<p>Contains information about the output locations for job checkpoint data.</p>")
type jobCheckpointConfig = {
  @ocaml.doc(
    "<p>Identifies the S3 path where you want Amazon Braket to store checkpoints. For example, <code>s3://bucket-name/key-name-prefix</code>.</p>"
  )
  s3Uri: s3Path,
  @ocaml.doc(
    "<p>(Optional) The local directory where checkpoints are written. The default directory is <code>/opt/braket/checkpoints/</code>.</p>"
  )
  localPath: option<string4096>,
}
@ocaml.doc("<p>Configures the resource instances to use while running the Amazon Braket hybrid job on Amazon
         Braket.</p>")
type instanceConfig = {
  @ocaml.doc("<p>The size of the storage volume, in GB, that user wants to provision.</p>")
  volumeSizeInGb: baseInteger,
  @ocaml.doc(
    "<p>Configures the type resource instances to use while running an Amazon Braket hybrid job.</p>"
  )
  instanceType: instanceType,
}
type hyperParameters = Js.Dict.t<baseString>
@ocaml.doc("<p>Includes information about the device.</p>")
type deviceSummary = {
  @ocaml.doc("<p>The status of the device.</p>") deviceStatus: deviceStatus,
  @ocaml.doc("<p>The type of the device.</p>") deviceType: deviceType,
  @ocaml.doc("<p>The provider of the device.</p>") providerName: baseString,
  @ocaml.doc("<p>The name of the device.</p>") deviceName: baseString,
  @ocaml.doc("<p>The ARN of the device.</p>") deviceArn: deviceArn,
}
@ocaml.doc(
  "<p>Configures the quantum processing units (QPUs) or simulator used to create and run an Amazon Braket job.</p>"
)
type deviceConfig = {
  @ocaml.doc(
    "<p>The primary quantum processing unit (QPU) or simulator used to create and run an Amazon Braket job.</p>"
  )
  device: string256,
}
@ocaml.doc("<p>The container image used to create an Amazon Braket job.</p>")
type containerImage = {@ocaml.doc("<p>The URI locating the container image.</p>") uri: uri}
@ocaml.doc("<p>A filter to use to search for tasks.</p>")
type searchQuantumTasksFilter = {
  @ocaml.doc("<p>An operator to use in the filter.</p>") operator: searchQuantumTasksFilterOperator,
  @ocaml.doc("<p>The values to use for the filter.</p>") values: string256List,
  @ocaml.doc("<p>The name of the device used for the task.</p>") name: string64,
}
@ocaml.doc("<p>A filter used to search for Amazon Braket jobs.</p>")
type searchJobsFilter = {
  @ocaml.doc("<p>An operator to use for the jobs filter.</p>") operator: searchJobsFilterOperator,
  @ocaml.doc("<p>The values to use for the jobs filter.</p>") values: string256List,
  @ocaml.doc("<p>The name to use for the jobs filter.</p>") name: string64,
}
@ocaml.doc("<p>The filter to use for searching devices.</p>")
type searchDevicesFilter = {
  @ocaml.doc("<p>The values to use to filter results.</p>") values: string256List,
  @ocaml.doc("<p>The name to use to filter results.</p>") name: baseString,
}
type quantumTaskSummaryList = array<quantumTaskSummary>
type jobSummaryList = array<jobSummary>
type jobEvents = array<jobEventDetails>
type deviceSummaryList = array<deviceSummary>
@ocaml.doc("<p>Information about the source of the data used by the Amazon Braket job.</p>")
type dataSource = {
  @ocaml.doc("<p>Information about the data stored in Amazon S3 used by the Amazon Braket job.</p>")
  s3DataSource: s3DataSource,
}
@ocaml.doc("<p>Defines the Amazon Braket job to be created. Specifies the container image the job uses and the paths to
         the Python scripts used for entry and training.</p>")
type algorithmSpecification = {
  @ocaml.doc("<p>The container image used to create an Amazon Braket job.</p>")
  containerImage: option<containerImage>,
  @ocaml.doc("<p>Configures the paths to the Python scripts used for entry and training.</p>")
  scriptModeConfig: option<scriptModeConfig>,
}
type searchQuantumTasksFilterList = array<searchQuantumTasksFilter>
type searchJobsFilterList = array<searchJobsFilter>
type searchDevicesFilterList = array<searchDevicesFilter>
@ocaml.doc("<p>A list of parameters that specify the input channels, type of input data, and where it
         is located.</p>")
type inputFileConfig = {
  @ocaml.doc("<p>The location of the channel data.</p>") dataSource: dataSource,
  @ocaml.doc("<p>The MIME type of the data.</p>") contentType: option<string256>,
  @ocaml.doc("<p>A named input source that an Amazon Braket job can consume.</p>")
  channelName: string64,
}
@ocaml.doc(
  "<p>The Amazon Braket API Reference provides information about the operations and structures supported in Amazon Braket.</p>"
)
type inputConfigList = array<inputFileConfig>
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Specify the keys for the tags to remove from the resource.</p>")
    tagKeys: tagKeys,
    @ocaml.doc(
      "<p>Specify the <code>resourceArn</code> for the resource from which to remove the tags.</p>"
    )
    resourceArn: baseString,
  }
  type response = {.}
  @module("@aws-sdk/client-braket") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Specify the tags to add to the resource.</p>") tags: tagsMap,
    @ocaml.doc(
      "<p>Specify the <code>resourceArn</code> of the resource to which a tag will be added.</p>"
    )
    resourceArn: baseString,
  }
  type response = {.}
  @module("@aws-sdk/client-braket") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify the <code>resourceArn</code> for the resource whose tags to display.</p>"
    )
    resourceArn: baseString,
  }
  type response = {
    @ocaml.doc("<p>Displays the key, value pairs of tags associated with this resource.</p>")
    tags: option<tagsMap>,
  }
  @module("@aws-sdk/client-braket") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQuantumTask = {
  type t
  type request = {
    @ocaml.doc("<p>the ARN of the task to retrieve.</p>") quantumTaskArn: quantumTaskArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the Amazon Braket job associated with the quantum task.</p>")
    jobArn: option<jobArn>,
    @ocaml.doc("<p>The tags that belong to this task.</p>") tags: option<tagsMap>,
    @ocaml.doc("<p>The time at which the task ended.</p>") endedAt: option<baseTimestamp>,
    @ocaml.doc("<p>The time at which the task was created.</p>") createdAt: baseTimestamp,
    @ocaml.doc("<p>The folder in the S3 bucket where task results are stored.</p>")
    outputS3Directory: baseString,
    @ocaml.doc("<p>The S3 bucket where task results are stored.</p>") outputS3Bucket: baseString,
    @ocaml.doc("<p>The number of shots used in the task.</p>") shots: baseLong,
    @ocaml.doc("<p>The parameters for the device on which the task ran.</p>")
    deviceParameters: jsonValue,
    @ocaml.doc("<p>The ARN of the device the task was run on.</p>") deviceArn: deviceArn,
    @ocaml.doc("<p>The reason that a task failed.</p>") failureReason: option<baseString>,
    @ocaml.doc("<p>The status of the task.</p>") status: quantumTaskStatus,
    @ocaml.doc("<p>The ARN of the task.</p>") quantumTaskArn: quantumTaskArn,
  }
  @module("@aws-sdk/client-braket") @new external new: request => t = "GetQuantumTaskCommand"
  let make = (~quantumTaskArn, ()) => new({quantumTaskArn: quantumTaskArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevice = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the device to retrieve.</p>") deviceArn: deviceArn}
  type response = {
    @ocaml.doc("<p>Details about the capabilities of the device.</p>")
    deviceCapabilities: jsonValue,
    @ocaml.doc("<p>The status of the device.</p>") deviceStatus: deviceStatus,
    @ocaml.doc("<p>The type of the device.</p>") deviceType: deviceType,
    @ocaml.doc("<p>The name of the partner company for the device.</p>") providerName: baseString,
    @ocaml.doc("<p>The name of the device.</p>") deviceName: baseString,
    @ocaml.doc("<p>The ARN of the device.</p>") deviceArn: deviceArn,
  }
  @module("@aws-sdk/client-braket") @new external new: request => t = "GetDeviceCommand"
  let make = (~deviceArn, ()) => new({deviceArn: deviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateQuantumTask = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for an Amazon Braket job that associates it with the quantum task.</p>"
    )
    jobToken: option<jobToken>,
    @ocaml.doc("<p>Tags to be added to the quantum task you're creating.</p>")
    tags: option<tagsMap>,
    @ocaml.doc("<p>The action associated with the task.</p>") action: jsonValue,
    @ocaml.doc("<p>The key prefix for the location in the S3 bucket to store task results in.</p>")
    outputS3KeyPrefix: baseString,
    @ocaml.doc("<p>The S3 bucket to store task result files in.</p>") outputS3Bucket: baseString,
    @ocaml.doc("<p>The number of shots to use for the task.</p>") shots: baseLong,
    @ocaml.doc("<p>The parameters for the device to run the task on.</p>")
    deviceParameters: option<jsonValue>,
    @ocaml.doc("<p>The ARN of the device to run the task on.</p>") deviceArn: deviceArn,
    @ocaml.doc("<p>The client token associated with the request.</p>") clientToken: string64,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the task created by the request.</p>") quantumTaskArn: quantumTaskArn,
  }
  @module("@aws-sdk/client-braket") @new external new: request => t = "CreateQuantumTaskCommand"
  let make = (
    ~action,
    ~outputS3KeyPrefix,
    ~outputS3Bucket,
    ~shots,
    ~deviceArn,
    ~clientToken,
    ~jobToken=?,
    ~tags=?,
    ~deviceParameters=?,
    (),
  ) =>
    new({
      jobToken: jobToken,
      tags: tags,
      action: action,
      outputS3KeyPrefix: outputS3KeyPrefix,
      outputS3Bucket: outputS3Bucket,
      shots: shots,
      deviceParameters: deviceParameters,
      deviceArn: deviceArn,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelQuantumTask = {
  type t
  type request = {
    @ocaml.doc("<p>The client token associated with the request.</p>") clientToken: string64,
    @ocaml.doc("<p>The ARN of the task to cancel.</p>") quantumTaskArn: quantumTaskArn,
  }
  type response = {
    @ocaml.doc("<p>The status of the cancellation request.</p>")
    cancellationStatus: cancellationStatus,
    @ocaml.doc("<p>The ARN of the task.</p>") quantumTaskArn: quantumTaskArn,
  }
  @module("@aws-sdk/client-braket") @new external new: request => t = "CancelQuantumTaskCommand"
  let make = (~clientToken, ~quantumTaskArn, ()) =>
    new({clientToken: clientToken, quantumTaskArn: quantumTaskArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelJob = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the Amazon Braket job to cancel.</p>") jobArn: jobArn}
  type response = {
    @ocaml.doc("<p>The status of the job cancellation request.</p>")
    cancellationStatus: cancellationStatus,
    @ocaml.doc("<p>The ARN of the Amazon Braket job.</p>") jobArn: jobArn,
  }
  @module("@aws-sdk/client-braket") @new external new: request => t = "CancelJobCommand"
  let make = (~jobArn, ()) => new({jobArn: jobArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchQuantumTasks = {
  type t
  type request = {
    @ocaml.doc("<p>Array of <code>SearchQuantumTasksFilter</code> objects.</p>")
    filters: searchQuantumTasksFilterList,
    @ocaml.doc("<p>Maximum number of results to return in the response.</p>")
    maxResults: option<baseInteger>,
    @ocaml.doc(
      "<p>A token used for pagination of results returned in the response. Use the token returned from the previous request continue results where the previous request ended.</p>"
    )
    nextToken: option<baseString>,
  }
  type response = {
    @ocaml.doc(
      "<p>A token used for pagination of results, or null if there are no additional results. Use the token value in a subsequent request to continue results where the previous request ended.</p>"
    )
    nextToken: option<baseString>,
    @ocaml.doc(
      "<p>An array of <code>QuantumTaskSummary</code> objects for tasks that match the specified filters.</p>"
    )
    quantumTasks: quantumTaskSummaryList,
  }
  @module("@aws-sdk/client-braket") @new external new: request => t = "SearchQuantumTasksCommand"
  let make = (~filters, ~maxResults=?, ~nextToken=?, ()) =>
    new({filters: filters, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The filter values to use when searching for a job.</p>")
    filters: searchJobsFilterList,
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<baseInteger>,
    @ocaml.doc("<p>A token used for pagination of results returned in the response. Use the token returned
         from the previous request to continue results where the previous request ended.</p>")
    nextToken: option<baseString>,
  }
  type response = {
    @ocaml.doc("<p>A token used for pagination of results, or <code>null</code> if there are no additional results. Use
         the token value in a subsequent request to continue results where the previous request
         ended.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>An array of <code>JobSummary</code> objects for devices that match the specified filter
         values.</p>")
    jobs: jobSummaryList,
  }
  @module("@aws-sdk/client-braket") @new external new: request => t = "SearchJobsCommand"
  let make = (~filters, ~maxResults=?, ~nextToken=?, ()) =>
    new({filters: filters, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchDevices = {
  type t
  type request = {
    @ocaml.doc("<p>The filter values to use to search for a device.</p>")
    filters: searchDevicesFilterList,
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<baseInteger>,
    @ocaml.doc(
      "<p>A token used for pagination of results returned in the response. Use the token returned from the previous request continue results where the previous request ended.</p>"
    )
    nextToken: option<baseString>,
  }
  type response = {
    @ocaml.doc(
      "<p>A token used for pagination of results, or null if there are no additional results. Use the token value in a subsequent request to continue results where the previous request ended.</p>"
    )
    nextToken: option<baseString>,
    @ocaml.doc(
      "<p>An array of <code>DeviceSummary</code> objects for devices that match the specified filter values.</p>"
    )
    devices: deviceSummaryList,
  }
  @module("@aws-sdk/client-braket") @new external new: request => t = "SearchDevicesCommand"
  let make = (~filters, ~maxResults=?, ~nextToken=?, ()) =>
    new({filters: filters, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJob = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the job to retrieve.</p>") jobArn: jobArn}
  type response = {
    @ocaml.doc(
      "<p>A tag object that consists of a key and an optional value, used to manage metadata for Amazon Braket resources.</p>"
    )
    tags: option<tagsMap>,
    @ocaml.doc(
      "<p>Details about the type and time events occurred related to the Amazon Braket job.</p>"
    )
    events: option<jobEvents>,
    @ocaml.doc(
      "<p>The quantum processing unit (QPU) or simulator used to run the Amazon Braket job.</p>"
    )
    deviceConfig: option<deviceConfig>,
    @ocaml.doc("<p>The billable time the Amazon Braket job used to complete.</p>")
    billableDuration: option<baseInteger>,
    @ocaml.doc("<p>The date and time that the Amazon Braket job ended.</p>")
    endedAt: option<baseTimestamp>,
    @ocaml.doc("<p>The date and time that the Amazon Braket job was started.</p>")
    startedAt: option<baseTimestamp>,
    @ocaml.doc("<p>The date and time that the Amazon Braket job was created.</p>")
    createdAt: baseTimestamp,
    @ocaml.doc("<p>The resource instances to use while running the hybrid job on Amazon
         Braket.</p>")
    instanceConfig: instanceConfig,
    @ocaml.doc("<p>Definition of the Amazon Braket job created. Specifies the container image the job uses, information about
         the Python scripts used for entry and training, and the user-defined metrics used to
         evaluation the job.</p>")
    algorithmSpecification: algorithmSpecification,
    @ocaml.doc("<p>Information about the output locations for job checkpoint data.</p>")
    checkpointConfig: option<jobCheckpointConfig>,
    @ocaml.doc("<p>The user-defined criteria that specifies when to stop a job running.</p>")
    stoppingCondition: option<jobStoppingCondition>,
    @ocaml.doc("<p>The path to the S3 location where job artifacts are stored and the encryption
         key used to store them there.</p>")
    outputDataConfig: jobOutputDataConfig,
    @ocaml.doc("<p>A list of parameters that specify the name and type of input data and where it is
         located.</p>")
    inputDataConfig: option<inputConfigList>,
    @ocaml.doc("<p>Algorithm-specific parameters used by an Amazon Braket job that influence the quality of
         the traiing job. The values are set with a string of JSON key:value pairs, where the key is the
         name of the hyperparameter and the value is the value of th hyperparameter.</p>")
    hyperParameters: option<hyperParameters>,
    @ocaml.doc("<p>The name of the Amazon Braket job.</p>") jobName: baseString,
    @ocaml.doc("<p>A description of the reason why an Amazon Braket job failed, if it failed.</p>")
    failureReason: option<string1024>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can assume to perform
         tasks on behalf of a user. It can access user resources, run an Amazon Braket job container
         on behalf of user, and output resources to the s3 buckets of a user.</p>")
    roleArn: roleArn,
    @ocaml.doc("<p>The ARN of the Amazon Braket job.</p>") jobArn: jobArn,
    @ocaml.doc("<p>The status of the Amazon Braket job.</p>") status: jobPrimaryStatus,
  }
  @module("@aws-sdk/client-braket") @new external new: request => t = "GetJobCommand"
  let make = (~jobArn, ()) => new({jobArn: jobArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJob = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A tag object that consists of a key and an optional value, used to manage metadata for Amazon Braket resources.</p>"
    )
    tags: option<tagsMap>,
    @ocaml.doc(
      "<p>The quantum processing unit (QPU) or simulator used to create an Amazon Braket job.</p>"
    )
    deviceConfig: deviceConfig,
    @ocaml.doc("<p>Algorithm-specific parameters used by an Amazon Braket job that influence the quality of
         the training job. The values are set with a string of JSON key:value pairs, where the key is the
         name of the hyperparameter and the value is the value of th hyperparameter.</p>")
    hyperParameters: option<hyperParameters>,
    @ocaml.doc("<p>Configuration of the resource instances to use while running the hybrid job on Amazon
         Braket.</p>")
    instanceConfig: instanceConfig,
    @ocaml.doc("<p> The user-defined criteria that specifies when a job stops running.</p>")
    stoppingCondition: option<jobStoppingCondition>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can assume to perform
         tasks on behalf of a user. It can access user resources, run an Amazon Braket job container
         on behalf of user, and output resources to the users' s3 buckets.</p>")
    roleArn: roleArn,
    @ocaml.doc("<p>The name of the Amazon Braket job.</p>") jobName: baseString,
    @ocaml.doc("<p>Information about the output locations for job checkpoint data.</p>")
    checkpointConfig: option<jobCheckpointConfig>,
    @ocaml.doc("<p>The path to the S3 location where you want to store job artifacts and the
         encryption key used to store them.</p>")
    outputDataConfig: jobOutputDataConfig,
    @ocaml.doc("<p>A list of parameters that specify the name and type of input data and where it is
         located.</p>")
    inputDataConfig: option<inputConfigList>,
    @ocaml.doc("<p>Definition of the Amazon Braket job to be created. Specifies the container image the job uses and information
         about the Python scripts used for entry and training.</p>")
    algorithmSpecification: algorithmSpecification,
    @ocaml.doc("<p>A unique token that guarantees that the call to this API is idempotent.</p>")
    clientToken: string64,
  }
  type response = {@ocaml.doc("<p>The ARN of the Amazon Braket job created.</p>") jobArn: jobArn}
  @module("@aws-sdk/client-braket") @new external new: request => t = "CreateJobCommand"
  let make = (
    ~deviceConfig,
    ~instanceConfig,
    ~roleArn,
    ~jobName,
    ~outputDataConfig,
    ~algorithmSpecification,
    ~clientToken,
    ~tags=?,
    ~hyperParameters=?,
    ~stoppingCondition=?,
    ~checkpointConfig=?,
    ~inputDataConfig=?,
    (),
  ) =>
    new({
      tags: tags,
      deviceConfig: deviceConfig,
      hyperParameters: hyperParameters,
      instanceConfig: instanceConfig,
      stoppingCondition: stoppingCondition,
      roleArn: roleArn,
      jobName: jobName,
      checkpointConfig: checkpointConfig,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
      algorithmSpecification: algorithmSpecification,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
