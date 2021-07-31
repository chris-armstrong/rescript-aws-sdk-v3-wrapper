type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type tagsMap = Js.Dict.t< apiString>
type tagKeys = array<apiString>
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
@as("tags") tags: tagsMap,
@as("endedAt") endedAt: apiTimestamp,
@as("createdAt") createdAt: option<apiTimestamp>,
@as("outputS3Directory") outputS3Directory: option<apiString>,
@as("outputS3Bucket") outputS3Bucket: option<apiString>,
@as("shots") shots: option<apiLong>,
@as("deviceArn") deviceArn: option<deviceArn>,
@as("status") status: option<quantumTaskStatus>,
@as("quantumTaskArn") quantumTaskArn: option<quantumTaskArn>
}
type deviceSummary = {
@as("deviceStatus") deviceStatus: option<deviceStatus>,
@as("deviceType") deviceType: option<deviceType>,
@as("providerName") providerName: option<apiString>,
@as("deviceName") deviceName: option<apiString>,
@as("deviceArn") deviceArn: option<deviceArn>
}
type searchQuantumTasksFilter = {
@as("operator") operator: option<searchQuantumTasksFilterOperator>,
@as("values") values: option<string256List>,
@as("name") name: option<string64>
}
type searchDevicesFilter = {
@as("values") values: option<string256List>,
@as("name") name: option<apiString>
}
type quantumTaskSummaryList = array<quantumTaskSummary>
type deviceSummaryList = array<deviceSummary>
type searchQuantumTasksFilterList = array<searchQuantumTasksFilter>
type searchDevicesFilterList = array<searchDevicesFilter>
type clientType;
@module("@aws-sdk/client-braket") @new external createClient: unit => clientType = "BraketClient";
module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeys>,
@as("resourceArn") resourceArn: option<apiString>
}
  type response = unit
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagsMap>,
@as("resourceArn") resourceArn: option<apiString>
}
  type response = unit
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<apiString>
}
  type response = {
@as("tags") tags: tagsMap
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetQuantumTask = {
  type t;
  type request = {
@as("quantumTaskArn") quantumTaskArn: option<quantumTaskArn>
}
  type response = {
@as("tags") tags: tagsMap,
@as("endedAt") endedAt: apiTimestamp,
@as("createdAt") createdAt: option<apiTimestamp>,
@as("outputS3Directory") outputS3Directory: option<apiString>,
@as("outputS3Bucket") outputS3Bucket: option<apiString>,
@as("shots") shots: option<apiLong>,
@as("deviceParameters") deviceParameters: option<jsonValue>,
@as("deviceArn") deviceArn: option<deviceArn>,
@as("failureReason") failureReason: apiString,
@as("status") status: option<quantumTaskStatus>,
@as("quantumTaskArn") quantumTaskArn: option<quantumTaskArn>
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "GetQuantumTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDevice = {
  type t;
  type request = {
@as("deviceArn") deviceArn: option<deviceArn>
}
  type response = {
@as("deviceCapabilities") deviceCapabilities: option<jsonValue>,
@as("deviceStatus") deviceStatus: option<deviceStatus>,
@as("deviceType") deviceType: option<deviceType>,
@as("providerName") providerName: option<apiString>,
@as("deviceName") deviceName: option<apiString>,
@as("deviceArn") deviceArn: option<deviceArn>
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "GetDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateQuantumTask = {
  type t;
  type request = {
@as("tags") tags: tagsMap,
@as("action") action: option<jsonValue>,
@as("outputS3KeyPrefix") outputS3KeyPrefix: option<apiString>,
@as("outputS3Bucket") outputS3Bucket: option<apiString>,
@as("shots") shots: option<apiLong>,
@as("deviceParameters") deviceParameters: jsonValue,
@as("deviceArn") deviceArn: option<deviceArn>,
@as("clientToken") clientToken: option<string64>
}
  type response = {
@as("quantumTaskArn") quantumTaskArn: option<quantumTaskArn>
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "CreateQuantumTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelQuantumTask = {
  type t;
  type request = {
@as("clientToken") clientToken: option<string64>,
@as("quantumTaskArn") quantumTaskArn: option<quantumTaskArn>
}
  type response = {
@as("cancellationStatus") cancellationStatus: option<cancellationStatus>,
@as("quantumTaskArn") quantumTaskArn: option<quantumTaskArn>
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "CancelQuantumTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchQuantumTasks = {
  type t;
  type request = {
@as("filters") filters: option<searchQuantumTasksFilterList>,
@as("maxResults") maxResults: apiInteger,
@as("nextToken") nextToken: apiString
}
  type response = {
@as("nextToken") nextToken: apiString,
@as("quantumTasks") quantumTasks: option<quantumTaskSummaryList>
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "SearchQuantumTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchDevices = {
  type t;
  type request = {
@as("filters") filters: option<searchDevicesFilterList>,
@as("maxResults") maxResults: apiInteger,
@as("nextToken") nextToken: apiString
}
  type response = {
@as("nextToken") nextToken: apiString,
@as("devices") devices: option<deviceSummaryList>
}
  @module("@aws-sdk/client-braket") @new external new_: (request) => t = "SearchDevicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
