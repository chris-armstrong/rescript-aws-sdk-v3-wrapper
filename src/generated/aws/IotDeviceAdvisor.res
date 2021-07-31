type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type warnings = string
type uUID = string
type token = string
type amazonawsTimestamp = Js.Date.t;
type testCaseDefinitionName = string
type suiteRunStatus = [@as("ERROR") #ERROR | @as("PASS_WITH_WARNINGS") #PASS_WITH_WARNINGS | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("PENDING") #PENDING | @as("CANCELED") #CANCELED | @as("FAIL") #FAIL | @as("PASS") #PASS]
type suiteRunResultCount = int;
type suiteDefinitionVersion = string
type suiteDefinitionName = string
type string256 = string
type string128 = string
type status = [@as("ERROR") #ERROR | @as("PASS_WITH_WARNINGS") #PASS_WITH_WARNINGS | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("PENDING") #PENDING | @as("CANCELED") #CANCELED | @as("FAIL") #FAIL | @as("PASS") #PASS]
type rootGroup = string
type qualificationReportDownloadUrl = string
type message = string
type maxResults = int;
type logUrl = string
type intendedForQualificationBoolean = bool;
type groupName = string
type failure = string
type errorReason = string
type amazonResourceName = string
type testCaseRun = {
@as("failure") failure: failure,
@as("warnings") warnings: warnings,
@as("logUrl") logUrl: logUrl,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("status") status: status,
@as("testCaseDefinitionName") testCaseDefinitionName: testCaseDefinitionName,
@as("testCaseDefinitionId") testCaseDefinitionId: uUID,
@as("testCaseRunId") testCaseRunId: uUID
}
type tagMap = Js.Dict.t< string256>
type tagKeyList = array<string128>
type suiteRunInformation = {
@as("failed") failed: suiteRunResultCount,
@as("passed") passed: suiteRunResultCount,
@as("status") status: suiteRunStatus,
@as("endAt") endAt: amazonawsTimestamp,
@as("startedAt") startedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("suiteRunId") suiteRunId: uUID,
@as("suiteDefinitionName") suiteDefinitionName: suiteDefinitionName,
@as("suiteDefinitionVersion") suiteDefinitionVersion: suiteDefinitionVersion,
@as("suiteDefinitionId") suiteDefinitionId: uUID
}
type selectedTestList = array<uUID>
type deviceUnderTest = {
@as("certificateArn") certificateArn: amazonResourceName,
@as("thingArn") thingArn: amazonResourceName
}
type testCaseRuns = array<testCaseRun>
type suiteRunsList = array<suiteRunInformation>
type suiteRunConfiguration = {
@as("selectedTestList") selectedTestList: selectedTestList,
@as("primaryDevice") primaryDevice: deviceUnderTest
}
type deviceUnderTestList = array<deviceUnderTest>
type suiteDefinitionInformation = {
@as("createdAt") createdAt: amazonawsTimestamp,
@as("intendedForQualification") intendedForQualification: intendedForQualificationBoolean,
@as("defaultDevices") defaultDevices: deviceUnderTestList,
@as("suiteDefinitionName") suiteDefinitionName: suiteDefinitionName,
@as("suiteDefinitionId") suiteDefinitionId: uUID
}
type suiteDefinitionConfiguration = {
@as("devicePermissionRoleArn") devicePermissionRoleArn: amazonResourceName,
@as("rootGroup") rootGroup: rootGroup,
@as("intendedForQualification") intendedForQualification: intendedForQualificationBoolean,
@as("devices") devices: deviceUnderTestList,
@as("suiteDefinitionName") suiteDefinitionName: suiteDefinitionName
}
type groupResult = {
@as("tests") tests: testCaseRuns,
@as("groupName") groupName: groupName,
@as("groupId") groupId: uUID
}
type suiteDefinitionInformationList = array<suiteDefinitionInformation>
type groupResultList = array<groupResult>
type testResult = {
@as("groups") groups: groupResultList
}
type clientType;
@module("@aws-sdk/client-iotdeviceadvisor") @new external createClient: unit => clientType = "IotDeviceAdvisorClient";
module StopSuiteRun = {
  type t;
  type request = {
@as("suiteRunId") suiteRunId: option<uUID>,
@as("suiteDefinitionId") suiteDefinitionId: option<uUID>
}
  type response = unit
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "StopSuiteRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSuiteRunReport = {
  type t;
  type request = {
@as("suiteRunId") suiteRunId: option<uUID>,
@as("suiteDefinitionId") suiteDefinitionId: option<uUID>
}
  type response = {
@as("qualificationReportDownloadUrl") qualificationReportDownloadUrl: qualificationReportDownloadUrl
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "GetSuiteRunReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSuiteDefinition = {
  type t;
  type request = {
@as("suiteDefinitionId") suiteDefinitionId: option<uUID>
}
  type response = unit
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "DeleteSuiteDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartSuiteRun = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("suiteRunConfiguration") suiteRunConfiguration: suiteRunConfiguration,
@as("suiteDefinitionVersion") suiteDefinitionVersion: suiteDefinitionVersion,
@as("suiteDefinitionId") suiteDefinitionId: option<uUID>
}
  type response = {
@as("createdAt") createdAt: amazonawsTimestamp,
@as("suiteRunArn") suiteRunArn: amazonResourceName,
@as("suiteRunId") suiteRunId: uUID
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "StartSuiteRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSuiteRuns = {
  type t;
  type request = {
@as("nextToken") nextToken: token,
@as("maxResults") maxResults: maxResults,
@as("suiteDefinitionVersion") suiteDefinitionVersion: suiteDefinitionVersion,
@as("suiteDefinitionId") suiteDefinitionId: uUID
}
  type response = {
@as("nextToken") nextToken: token,
@as("suiteRunsList") suiteRunsList: suiteRunsList
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "ListSuiteRunsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSuiteDefinition = {
  type t;
  type request = {
@as("suiteDefinitionConfiguration") suiteDefinitionConfiguration: suiteDefinitionConfiguration,
@as("suiteDefinitionId") suiteDefinitionId: option<uUID>
}
  type response = {
@as("lastUpdatedAt") lastUpdatedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("suiteDefinitionVersion") suiteDefinitionVersion: suiteDefinitionVersion,
@as("suiteDefinitionName") suiteDefinitionName: suiteDefinitionName,
@as("suiteDefinitionArn") suiteDefinitionArn: amazonResourceName,
@as("suiteDefinitionId") suiteDefinitionId: uUID
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "UpdateSuiteDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSuiteDefinition = {
  type t;
  type request = {
@as("suiteDefinitionVersion") suiteDefinitionVersion: suiteDefinitionVersion,
@as("suiteDefinitionId") suiteDefinitionId: option<uUID>
}
  type response = {
@as("tags") tags: tagMap,
@as("lastModifiedAt") lastModifiedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("suiteDefinitionConfiguration") suiteDefinitionConfiguration: suiteDefinitionConfiguration,
@as("latestVersion") latestVersion: suiteDefinitionVersion,
@as("suiteDefinitionVersion") suiteDefinitionVersion: suiteDefinitionVersion,
@as("suiteDefinitionArn") suiteDefinitionArn: amazonResourceName,
@as("suiteDefinitionId") suiteDefinitionId: uUID
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "GetSuiteDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSuiteDefinition = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("suiteDefinitionConfiguration") suiteDefinitionConfiguration: suiteDefinitionConfiguration
}
  type response = {
@as("createdAt") createdAt: amazonawsTimestamp,
@as("suiteDefinitionName") suiteDefinitionName: suiteDefinitionName,
@as("suiteDefinitionArn") suiteDefinitionArn: amazonResourceName,
@as("suiteDefinitionId") suiteDefinitionId: uUID
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "CreateSuiteDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSuiteDefinitions = {
  type t;
  type request = {
@as("nextToken") nextToken: token,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: token,
@as("suiteDefinitionInformationList") suiteDefinitionInformationList: suiteDefinitionInformationList
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "ListSuiteDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSuiteRun = {
  type t;
  type request = {
@as("suiteRunId") suiteRunId: option<uUID>,
@as("suiteDefinitionId") suiteDefinitionId: option<uUID>
}
  type response = {
@as("tags") tags: tagMap,
@as("errorReason") errorReason: errorReason,
@as("status") status: suiteRunStatus,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("testResult") testResult: testResult,
@as("suiteRunConfiguration") suiteRunConfiguration: suiteRunConfiguration,
@as("suiteRunArn") suiteRunArn: amazonResourceName,
@as("suiteRunId") suiteRunId: uUID,
@as("suiteDefinitionVersion") suiteDefinitionVersion: suiteDefinitionVersion,
@as("suiteDefinitionId") suiteDefinitionId: uUID
}
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new_: (request) => t = "GetSuiteRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
