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
type warnings = string
type uuid = string
type token = string
type timestamp_ = Js.Date.t;
type testCaseDefinitionName = string
type suiteRunStatus = [@as("ERROR") #ERROR | @as("PASS_WITH_WARNINGS") #PASSWITHWARNINGS | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("PENDING") #PENDING | @as("CANCELED") #CANCELED | @as("FAIL") #FAIL | @as("PASS") #PASS]
type suiteRunResultCount = int
type suiteDefinitionVersion = string
type suiteDefinitionName = string
type string256 = string
type string128 = string
type status = [@as("ERROR") #ERROR | @as("PASS_WITH_WARNINGS") #PASSWITHWARNINGS | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("PENDING") #PENDING | @as("CANCELED") #CANCELED | @as("FAIL") #FAIL | @as("PASS") #PASS]
type rootGroup = string
type qualificationReportDownloadUrl = string
type message = string
type maxResults = int
type logUrl = string
type intendedForQualificationBoolean = bool
type groupName = string
type failure = string
type errorReason = string
type amazonResourceName = string
type testCaseRun = {
failure: option<failure>,
warnings: option<warnings>,
logUrl: option<logUrl>,
endTime: option<timestamp_>,
startTime: option<timestamp_>,
status: option<status>,
testCaseDefinitionName: option<testCaseDefinitionName>,
testCaseDefinitionId: option<uuid>,
testCaseRunId: option<uuid>
}
type tagMap = Js.Dict.t< string256>
type tagKeyList = array<string128>
type suiteRunInformation = {
failed: option<suiteRunResultCount>,
passed: option<suiteRunResultCount>,
status: option<suiteRunStatus>,
endAt: option<timestamp_>,
startedAt: option<timestamp_>,
createdAt: option<timestamp_>,
suiteRunId: option<uuid>,
suiteDefinitionName: option<suiteDefinitionName>,
suiteDefinitionVersion: option<suiteDefinitionVersion>,
suiteDefinitionId: option<uuid>
}
type selectedTestList = array<uuid>
type deviceUnderTest = {
certificateArn: option<amazonResourceName>,
thingArn: option<amazonResourceName>
}
type testCaseRuns = array<testCaseRun>
type suiteRunsList = array<suiteRunInformation>
type suiteRunConfiguration = {
selectedTestList: option<selectedTestList>,
primaryDevice: option<deviceUnderTest>
}
type deviceUnderTestList = array<deviceUnderTest>
type suiteDefinitionInformation = {
createdAt: option<timestamp_>,
intendedForQualification: option<intendedForQualificationBoolean>,
defaultDevices: option<deviceUnderTestList>,
suiteDefinitionName: option<suiteDefinitionName>,
suiteDefinitionId: option<uuid>
}
type suiteDefinitionConfiguration = {
devicePermissionRoleArn: option<amazonResourceName>,
rootGroup: option<rootGroup>,
intendedForQualification: option<intendedForQualificationBoolean>,
devices: option<deviceUnderTestList>,
suiteDefinitionName: option<suiteDefinitionName>
}
type groupResult = {
tests: option<testCaseRuns>,
groupName: option<groupName>,
groupId: option<uuid>
}
type suiteDefinitionInformationList = array<suiteDefinitionInformation>
type groupResultList = array<groupResult>
type testResult = {
groups: option<groupResultList>
}
type awsServiceClient;
@module("@aws-sdk/client-iotdeviceadvisor") @new external createClient: unit => awsServiceClient = "IotDeviceAdvisorClient";
module StopSuiteRun = {
  type t;
  type request = {
suiteRunId: uuid,
suiteDefinitionId: uuid
}
  type response = unit
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "StopSuiteRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSuiteRunReport = {
  type t;
  type request = {
suiteRunId: uuid,
suiteDefinitionId: uuid
}
  type response = {
qualificationReportDownloadUrl: option<qualificationReportDownloadUrl>
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "GetSuiteRunReportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSuiteDefinition = {
  type t;
  type request = {
suiteDefinitionId: uuid
}
  type response = unit
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "DeleteSuiteDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: amazonResourceName
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartSuiteRun = {
  type t;
  type request = {
tags: option<tagMap>,
suiteRunConfiguration: option<suiteRunConfiguration>,
suiteDefinitionVersion: option<suiteDefinitionVersion>,
suiteDefinitionId: uuid
}
  type response = {
createdAt: option<timestamp_>,
suiteRunArn: option<amazonResourceName>,
suiteRunId: option<uuid>
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "StartSuiteRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSuiteRuns = {
  type t;
  type request = {
nextToken: option<token>,
maxResults: option<maxResults>,
suiteDefinitionVersion: option<suiteDefinitionVersion>,
suiteDefinitionId: option<uuid>
}
  type response = {
nextToken: option<token>,
suiteRunsList: option<suiteRunsList>
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "ListSuiteRunsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSuiteDefinition = {
  type t;
  type request = {
suiteDefinitionConfiguration: option<suiteDefinitionConfiguration>,
suiteDefinitionId: uuid
}
  type response = {
lastUpdatedAt: option<timestamp_>,
createdAt: option<timestamp_>,
suiteDefinitionVersion: option<suiteDefinitionVersion>,
suiteDefinitionName: option<suiteDefinitionName>,
suiteDefinitionArn: option<amazonResourceName>,
suiteDefinitionId: option<uuid>
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "UpdateSuiteDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSuiteDefinition = {
  type t;
  type request = {
suiteDefinitionVersion: option<suiteDefinitionVersion>,
suiteDefinitionId: uuid
}
  type response = {
tags: option<tagMap>,
lastModifiedAt: option<timestamp_>,
createdAt: option<timestamp_>,
suiteDefinitionConfiguration: option<suiteDefinitionConfiguration>,
latestVersion: option<suiteDefinitionVersion>,
suiteDefinitionVersion: option<suiteDefinitionVersion>,
suiteDefinitionArn: option<amazonResourceName>,
suiteDefinitionId: option<uuid>
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "GetSuiteDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSuiteDefinition = {
  type t;
  type request = {
tags: option<tagMap>,
suiteDefinitionConfiguration: option<suiteDefinitionConfiguration>
}
  type response = {
createdAt: option<timestamp_>,
suiteDefinitionName: option<suiteDefinitionName>,
suiteDefinitionArn: option<amazonResourceName>,
suiteDefinitionId: option<uuid>
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "CreateSuiteDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSuiteDefinitions = {
  type t;
  type request = {
nextToken: option<token>,
maxResults: option<maxResults>
}
  type response = {
nextToken: option<token>,
suiteDefinitionInformationList: option<suiteDefinitionInformationList>
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "ListSuiteDefinitionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSuiteRun = {
  type t;
  type request = {
suiteRunId: uuid,
suiteDefinitionId: uuid
}
  type response = {
tags: option<tagMap>,
errorReason: option<errorReason>,
status: option<suiteRunStatus>,
endTime: option<timestamp_>,
startTime: option<timestamp_>,
testResult: option<testResult>,
suiteRunConfiguration: option<suiteRunConfiguration>,
suiteRunArn: option<amazonResourceName>,
suiteRunId: option<uuid>,
suiteDefinitionVersion: option<suiteDefinitionVersion>,
suiteDefinitionId: option<uuid>
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "GetSuiteRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
