type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-braket") @new external createClient: unit => awsServiceClient = "BraketClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type tagsMap = Js.Dict.t<baseString>
type tagKeys = array<baseString>
type string64 = string
type string256 = string
type searchQuantumTasksFilterOperator = [@as("BETWEEN") #BETWEEN | @as("GTE") #GTE | @as("GT") #GT | @as("EQUAL") #EQUAL | @as("LTE") #LTE | @as("LT") #LT]
type quantumTaskStatus = [@as("CANCELLED") #CANCELLED | @as("CANCELLING") #CANCELLING | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("RUNNING") #RUNNING | @as("QUEUED") #QUEUED | @as("CREATED") #CREATED]

type quantumTaskArn = string
type jsonValue = string

type jobArn = string
type deviceType = [@as("SIMULATOR") #SIMULATOR | @as("QPU") #QPU]
type deviceStatus = [@as("RETIRED") #RETIRED | @as("OFFLINE") #OFFLINE | @as("ONLINE") #ONLINE]

type deviceArn = string
type cancellationStatus = [@as("CANCELLED") #CANCELLED | @as("CANCELLING") #CANCELLING]
type string256List = array<string256>
type quantumTaskSummary = {
tags: option<tagsMap>,
  endedAt: option<baseTimestamp>,
  createdAt: baseTimestamp,
  outputS3Directory: baseString,
  outputS3Bucket: baseString,
  shots: baseLong,
  deviceArn: deviceArn,
  status: quantumTaskStatus,
  quantumTaskArn: quantumTaskArn
}
type deviceSummary = {
deviceStatus: deviceStatus,
  deviceType: deviceType,
  providerName: baseString,
  deviceName: baseString,
  deviceArn: deviceArn
}
type searchQuantumTasksFilter = {
operator: searchQuantumTasksFilterOperator,
  values: string256List,
  name: string64
}
type searchDevicesFilter = {
values: string256List,
  name: baseString
}
type quantumTaskSummaryList = array<quantumTaskSummary>
type deviceSummaryList = array<deviceSummary>
type searchQuantumTasksFilterList = array<searchQuantumTasksFilter>
type searchDevicesFilterList = array<searchDevicesFilter>

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeys,
  resourceArn: baseString
}
  type response = unit
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagsMap,
  resourceArn: baseString
}
  type response = unit
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: baseString
}
  type response = {
tags: option<tagsMap>
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetQuantumTask = {
  type t;
  type request = {
quantumTaskArn: quantumTaskArn
}
  type response = {
tags: option<tagsMap>,
  endedAt: option<baseTimestamp>,
  createdAt: baseTimestamp,
  outputS3Directory: baseString,
  outputS3Bucket: baseString,
  shots: baseLong,
  deviceParameters: jsonValue,
  deviceArn: deviceArn,
  failureReason: option<baseString>,
  status: quantumTaskStatus,
  quantumTaskArn: quantumTaskArn
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "GetQuantumTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDevice = {
  type t;
  type request = {
deviceArn: deviceArn
}
  type response = {
deviceCapabilities: jsonValue,
  deviceStatus: deviceStatus,
  deviceType: deviceType,
  providerName: baseString,
  deviceName: baseString,
  deviceArn: deviceArn
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "GetDeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateQuantumTask = {
  type t;
  type request = {
tags: option<tagsMap>,
  action: jsonValue,
  outputS3KeyPrefix: baseString,
  outputS3Bucket: baseString,
  shots: baseLong,
  deviceParameters: option<jsonValue>,
  deviceArn: deviceArn,
  clientToken: string64
}
  type response = {
quantumTaskArn: quantumTaskArn
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "CreateQuantumTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelQuantumTask = {
  type t;
  type request = {
clientToken: string64,
  quantumTaskArn: quantumTaskArn
}
  type response = {
cancellationStatus: cancellationStatus,
  quantumTaskArn: quantumTaskArn
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "CancelQuantumTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchQuantumTasks = {
  type t;
  type request = {
filters: searchQuantumTasksFilterList,
  maxResults: option<baseInteger>,
  nextToken: option<baseString>
}
  type response = {
nextToken: option<baseString>,
  quantumTasks: quantumTaskSummaryList
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "SearchQuantumTasksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchDevices = {
  type t;
  type request = {
filters: searchDevicesFilterList,
  maxResults: option<baseInteger>,
  nextToken: option<baseString>
}
  type response = {
nextToken: option<baseString>,
  devices: deviceSummaryList
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "SearchDevicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
