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
type tagsMap = Js.Dict.t<baseString>
type tagKeys = array<baseString>
type string64 = string
type string256 = string
type searchQuantumTasksFilterOperator = [
  | @as("BETWEEN") #BETWEEN
  | @as("GTE") #GTE
  | @as("GT") #GT
  | @as("EQUAL") #EQUAL
  | @as("LTE") #LTE
  | @as("LT") #LT
]
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

type jobArn = string
type deviceType = [@as("SIMULATOR") #SIMULATOR | @as("QPU") #QPU]
type deviceStatus = [@as("RETIRED") #RETIRED | @as("OFFLINE") #OFFLINE | @as("ONLINE") #ONLINE]

type deviceArn = string
type cancellationStatus = [@as("CANCELLED") #CANCELLED | @as("CANCELLING") #CANCELLING]
type string256List = array<string256>
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
@ocaml.doc("<p>Includes information about the device.</p>")
type deviceSummary = {
  @ocaml.doc("<p>The status of the device.</p>") deviceStatus: deviceStatus,
  @ocaml.doc("<p>The type of the device.</p>") deviceType: deviceType,
  @ocaml.doc("<p>The provider of the device.</p>") providerName: baseString,
  @ocaml.doc("<p>The name of the device.</p>") deviceName: baseString,
  @ocaml.doc("<p>The ARN of the device.</p>") deviceArn: deviceArn,
}
@ocaml.doc("<p>A filter to use to search for tasks.</p>")
type searchQuantumTasksFilter = {
  @ocaml.doc("<p>An operator to use in the filter.</p>") operator: searchQuantumTasksFilterOperator,
  @ocaml.doc("<p>The values to use for the filter.</p>") values: string256List,
  @ocaml.doc("<p>The name of the device used for the task.</p>") name: string64,
}
@ocaml.doc("<p>The filter to use for searching devices.</p>")
type searchDevicesFilter = {
  @ocaml.doc("<p>The values to use to filter results.</p>") values: string256List,
  @ocaml.doc("<p>The name to use to filter results.</p>") name: baseString,
}
type quantumTaskSummaryList = array<quantumTaskSummary>
type deviceSummaryList = array<deviceSummary>
type searchQuantumTasksFilterList = array<searchQuantumTasksFilter>
type searchDevicesFilterList = array<searchDevicesFilter>
@ocaml.doc(
  "<p>The Amazon Braket API Reference provides information about the operations and structures supported in Amazon Braket.</p>"
)
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
    ~tags=?,
    ~deviceParameters=?,
    (),
  ) =>
    new({
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
