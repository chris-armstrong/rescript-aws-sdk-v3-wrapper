type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iotdeviceadvisor") @new
external createClient: unit => awsServiceClient = "IotDeviceAdvisorClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type warnings = string
type uuid = string
type token = string
type timestamp_ = Js.Date.t
type testCaseDefinitionName = string
type suiteRunStatus = [
  | @as("ERROR") #ERROR
  | @as("PASS_WITH_WARNINGS") #PASS_WITH_WARNINGS
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("RUNNING") #RUNNING
  | @as("PENDING") #PENDING
  | @as("CANCELED") #CANCELED
  | @as("FAIL") #FAIL
  | @as("PASS") #PASS
]
type suiteRunResultCount = int
type suiteDefinitionVersion = string
type suiteDefinitionName = string
type string256 = string
type string128 = string
type status = [
  | @as("ERROR") #ERROR
  | @as("PASS_WITH_WARNINGS") #PASS_WITH_WARNINGS
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("RUNNING") #RUNNING
  | @as("PENDING") #PENDING
  | @as("CANCELED") #CANCELED
  | @as("FAIL") #FAIL
  | @as("PASS") #PASS
]
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
@ocaml.doc("<p>Provides test case run.</p>")
type testCaseRun = {
  @ocaml.doc("<p>Provides test case run failure result.</p>") failure: option<failure>,
  @ocaml.doc("<p>Provides test case run warnings.</p>") warnings: option<warnings>,
  @ocaml.doc("<p>Provides test case run log Url.</p>") logUrl: option<logUrl>,
  @ocaml.doc("<p>Provides test case run end time.</p>") endTime: option<timestamp_>,
  @ocaml.doc("<p>Provides test case run start time.</p>") startTime: option<timestamp_>,
  @ocaml.doc("<p>Provides test case run status.</p>") status: option<status>,
  @ocaml.doc("<p>Provides test case run definition Name.</p>")
  testCaseDefinitionName: option<testCaseDefinitionName>,
  @ocaml.doc("<p>Provides test case run definition Id.</p>") testCaseDefinitionId: option<uuid>,
  @ocaml.doc("<p>Provides test case run Id.</p>") testCaseRunId: option<uuid>,
}
type tagMap = Js.Dict.t<string256>
type tagKeyList = array<string128>
@ocaml.doc("<p>Information about the suite run.</p>")
type suiteRunInformation = {
  @ocaml.doc("<p>Number of test cases that failed in the suite run.</p>")
  failed: option<suiteRunResultCount>,
  @ocaml.doc("<p>Number of test cases that passed in the suite run.</p>")
  passed: option<suiteRunResultCount>,
  @ocaml.doc("<p>Status of the suite run.</p>") status: option<suiteRunStatus>,
  @ocaml.doc("<p>Date (in Unix epoch time) when the suite run ended.</p>")
  endAt: option<timestamp_>,
  @ocaml.doc("<p>Date (in Unix epoch time) when the suite run was started.</p>")
  startedAt: option<timestamp_>,
  @ocaml.doc("<p>Date (in Unix epoch time) when the suite run was created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>Suite run Id of the suite run.</p>") suiteRunId: option<uuid>,
  @ocaml.doc("<p>Suite definition name of the suite run.</p>")
  suiteDefinitionName: option<suiteDefinitionName>,
  @ocaml.doc("<p>Suite definition version of the suite run.</p>")
  suiteDefinitionVersion: option<suiteDefinitionVersion>,
  @ocaml.doc("<p>Suite definition Id of the suite run.</p>") suiteDefinitionId: option<uuid>,
}
type selectedTestList = array<uuid>
@ocaml.doc("<p>Lists all the devices under test</p>")
type deviceUnderTest = {
  @ocaml.doc("<p>Lists devices certificate arn</p>") certificateArn: option<amazonResourceName>,
  @ocaml.doc("<p>Lists devices thing arn</p>") thingArn: option<amazonResourceName>,
}
@ocaml.doc("<p>Tests under each group result.</p>") type testCaseRuns = array<testCaseRun>
type suiteRunsList = array<suiteRunInformation>
@ocaml.doc("<p>Gets suite run configuration.</p>")
type suiteRunConfiguration = {
  @ocaml.doc("<p>Gets test case list.</p>") selectedTestList: option<selectedTestList>,
  @ocaml.doc("<p>Gets the primary device for suite run.</p>")
  primaryDevice: option<deviceUnderTest>,
}
type deviceUnderTestList = array<deviceUnderTest>
@ocaml.doc("<p>Information about the suite definition.</p>")
type suiteDefinitionInformation = {
  @ocaml.doc("<p>Date (in Unix epoch time) when the test suite was created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>Specifies if the test suite is intended for qualification.</p>")
  intendedForQualification: option<intendedForQualificationBoolean>,
  @ocaml.doc("<p>Specifies the devices under test for the test suite.</p>")
  defaultDevices: option<deviceUnderTestList>,
  @ocaml.doc("<p>Suite name of the test suite.</p>")
  suiteDefinitionName: option<suiteDefinitionName>,
  @ocaml.doc("<p>Suite definition Id of the test suite.</p>") suiteDefinitionId: option<uuid>,
}
@ocaml.doc("<p>Gets Suite Definition Configuration.</p>")
type suiteDefinitionConfiguration = {
  @ocaml.doc("<p>Gets device permission arn.</p>")
  devicePermissionRoleArn: option<amazonResourceName>,
  @ocaml.doc("<p>Gets test suite root group.</p>") rootGroup: option<rootGroup>,
  @ocaml.doc("<p>Gets the tests intended for qualification in a suite.</p>")
  intendedForQualification: option<intendedForQualificationBoolean>,
  @ocaml.doc("<p>Gets the devices configured.</p>") devices: option<deviceUnderTestList>,
  @ocaml.doc("<p>Gets Suite Definition Configuration name.</p>")
  suiteDefinitionName: option<suiteDefinitionName>,
}
@ocaml.doc("<p>Show Group Result.</p>")
type groupResult = {
  @ocaml.doc("<p>Tests under Group Result.</p>") tests: option<testCaseRuns>,
  @ocaml.doc("<p>Group Result Name.</p>") groupName: option<groupName>,
  @ocaml.doc("<p>Group result Id.</p>") groupId: option<uuid>,
}
type suiteDefinitionInformationList = array<suiteDefinitionInformation>
@ocaml.doc("<p>Group Result list.</p>") type groupResultList = array<groupResult>
@ocaml.doc("<p>Show each group result.</p>")
type testResult = {
  @ocaml.doc("<p>Show each group of test results.</p>") groups: option<groupResultList>,
}
@ocaml.doc(
  "<p>AWS IoT Core Device Advisor is a cloud-based, fully managed test capability for validating IoT devices during device software development. Device Advisor provides pre-built tests that you can use to validate IoT devices for reliable and secure connectivity with AWS IoT Core before deploying devices to production. By using Device Advisor, you can confirm that your devices can connect to AWS IoT Core, follow security best practices and, if applicable, receive software updates from IoT Device Management. You can also download signed qualification reports to submit to the AWS Partner Network to get your device qualified for the AWS Partner Device Catalog without the need to send your device in and wait for it to be tested.</p>"
)
module StopSuiteRun = {
  type t
  type request = {
    @ocaml.doc("<p>Suite run Id of the test suite run to be stopped.</p>") suiteRunId: uuid,
    @ocaml.doc("<p>Suite definition Id of the test suite run to be stopped.</p>")
    suiteDefinitionId: uuid,
  }

  @module("@aws-sdk/client-iotdeviceadvisor") @new
  external new: request => t = "StopSuiteRunCommand"
  let make = (~suiteRunId, ~suiteDefinitionId, ()) =>
    new({suiteRunId: suiteRunId, suiteDefinitionId: suiteDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetSuiteRunReport = {
  type t
  type request = {
    @ocaml.doc("<p>Suite run Id of the test suite run.</p>") suiteRunId: uuid,
    @ocaml.doc("<p>Suite definition Id of the test suite.</p>") suiteDefinitionId: uuid,
  }
  type response = {
    @ocaml.doc("<p>Download URL of the qualification report.</p>")
    qualificationReportDownloadUrl: option<qualificationReportDownloadUrl>,
  }
  @module("@aws-sdk/client-iotdeviceadvisor") @new
  external new: request => t = "GetSuiteRunReportCommand"
  let make = (~suiteRunId, ~suiteDefinitionId, ()) =>
    new({suiteRunId: suiteRunId, suiteDefinitionId: suiteDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSuiteDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>Suite definition Id of the test suite to be deleted.</p>")
    suiteDefinitionId: uuid,
  }

  @module("@aws-sdk/client-iotdeviceadvisor") @new
  external new: request => t = "DeleteSuiteDefinitionCommand"
  let make = (~suiteDefinitionId, ()) => new({suiteDefinitionId: suiteDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>List of tag keys to remove from the IoT Device Advisor resource.</p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The resource ARN of an IoT Device Advisor resource.</p>")
    resourceArn: amazonResourceName,
  }

  @module("@aws-sdk/client-iotdeviceadvisor") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be attached to the IoT Device Advisor resource.</p>") tags: tagMap,
    @ocaml.doc("<p>The resource ARN of an IoT Device Advisor resource.</p>")
    resourceArn: amazonResourceName,
  }

  @module("@aws-sdk/client-iotdeviceadvisor") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the IoT Device Advisor resource.</p>")
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The tags attached to the IoT Device Advisor resource.</p>") tags: option<tagMap>,
  }
  @module("@aws-sdk/client-iotdeviceadvisor") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartSuiteRun = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be attached to the suite run.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>Suite run configuration.</p>")
    suiteRunConfiguration: option<suiteRunConfiguration>,
    @ocaml.doc("<p>Suite definition version of the test suite.</p>")
    suiteDefinitionVersion: option<suiteDefinitionVersion>,
    @ocaml.doc("<p>Suite definition Id of the test suite.</p>") suiteDefinitionId: uuid,
  }
  type response = {
    @ocaml.doc("<p>Date (in Unix epoch time) when the suite run was created.</p>")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>Amazon resource name of the started suite run.</p>")
    suiteRunArn: option<amazonResourceName>,
    @ocaml.doc("<p>Suite Run Id of the started suite run.</p>") suiteRunId: option<uuid>,
  }
  @module("@aws-sdk/client-iotdeviceadvisor") @new
  external new: request => t = "StartSuiteRunCommand"
  let make = (
    ~suiteDefinitionId,
    ~tags=?,
    ~suiteRunConfiguration=?,
    ~suiteDefinitionVersion=?,
    (),
  ) =>
    new({
      tags: tags,
      suiteRunConfiguration: suiteRunConfiguration,
      suiteDefinitionVersion: suiteDefinitionVersion,
      suiteDefinitionId: suiteDefinitionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSuiteRuns = {
  type t
  type request = {
    @ocaml.doc("<p>A token to retrieve the next set of results.</p>") nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of results to return at once.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>Must be passed along with suiteDefinitionId. Lists the test suite runs of the specified test suite based on suite definition version.</p>"
    )
    suiteDefinitionVersion: option<suiteDefinitionVersion>,
    @ocaml.doc(
      "<p>Lists the test suite runs of the specified test suite based on suite definition Id.</p>"
    )
    suiteDefinitionId: option<uuid>,
  }
  type response = {
    @ocaml.doc("<p>A token to retrieve the next set of results.</p>") nextToken: option<token>,
    @ocaml.doc(
      "<p>An array of objects that provide summaries of information about the suite runs in the list.</p>"
    )
    suiteRunsList: option<suiteRunsList>,
  }
  @module("@aws-sdk/client-iotdeviceadvisor") @new
  external new: request => t = "ListSuiteRunsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~suiteDefinitionVersion=?, ~suiteDefinitionId=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      suiteDefinitionVersion: suiteDefinitionVersion,
      suiteDefinitionId: suiteDefinitionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSuiteDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>Updates a Device Advisor test suite with suite definition configuration.</p>")
    suiteDefinitionConfiguration: option<suiteDefinitionConfiguration>,
    @ocaml.doc("<p>Suite definition Id of the test suite to be updated.</p>")
    suiteDefinitionId: uuid,
  }
  type response = {
    @ocaml.doc("<p>Timestamp of when the test suite was updated.</p>")
    lastUpdatedAt: option<timestamp_>,
    @ocaml.doc("<p>Timestamp of when the test suite was created.</p>")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>Suite definition version of the updated test suite.</p>")
    suiteDefinitionVersion: option<suiteDefinitionVersion>,
    @ocaml.doc("<p>Suite definition name of the updated test suite.</p>")
    suiteDefinitionName: option<suiteDefinitionName>,
    @ocaml.doc("<p>Amazon Resource name of the updated test suite.</p>")
    suiteDefinitionArn: option<amazonResourceName>,
    @ocaml.doc("<p>Suite definition Id of the updated test suite.</p>")
    suiteDefinitionId: option<uuid>,
  }
  @module("@aws-sdk/client-iotdeviceadvisor") @new
  external new: request => t = "UpdateSuiteDefinitionCommand"
  let make = (~suiteDefinitionId, ~suiteDefinitionConfiguration=?, ()) =>
    new({
      suiteDefinitionConfiguration: suiteDefinitionConfiguration,
      suiteDefinitionId: suiteDefinitionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSuiteDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>Suite definition version of the test suite to get.</p>")
    suiteDefinitionVersion: option<suiteDefinitionVersion>,
    @ocaml.doc("<p>Suite definition Id of the test suite to get.</p>") suiteDefinitionId: uuid,
  }
  type response = {
    @ocaml.doc("<p>Tags attached to the suite definition.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>Date (in Unix epoch time) when the suite definition was last modified.</p>")
    lastModifiedAt: option<timestamp_>,
    @ocaml.doc("<p>Date (in Unix epoch time) when the suite definition was created.</p>")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>Suite configuration of the suite definition.</p>")
    suiteDefinitionConfiguration: option<suiteDefinitionConfiguration>,
    @ocaml.doc("<p>Latest suite definition version of the suite definition.</p>")
    latestVersion: option<suiteDefinitionVersion>,
    @ocaml.doc("<p>Suite definition version of the suite definition.</p>")
    suiteDefinitionVersion: option<suiteDefinitionVersion>,
    @ocaml.doc("<p>The ARN of the suite definition.</p>")
    suiteDefinitionArn: option<amazonResourceName>,
    @ocaml.doc("<p>Suite definition Id of the suite definition.</p>")
    suiteDefinitionId: option<uuid>,
  }
  @module("@aws-sdk/client-iotdeviceadvisor") @new
  external new: request => t = "GetSuiteDefinitionCommand"
  let make = (~suiteDefinitionId, ~suiteDefinitionVersion=?, ()) =>
    new({suiteDefinitionVersion: suiteDefinitionVersion, suiteDefinitionId: suiteDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSuiteDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be attached to the suite definition.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>Creates a Device Advisor test suite with suite definition configuration.</p>")
    suiteDefinitionConfiguration: option<suiteDefinitionConfiguration>,
  }
  type response = {
    @ocaml.doc("<p>Creates a Device Advisor test suite with TimeStamp of when it was created.</p>")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>Creates a Device Advisor test suite with suite definition name.</p>")
    suiteDefinitionName: option<suiteDefinitionName>,
    @ocaml.doc("<p>Creates a Device Advisor test suite with Amazon Resource name.</p>")
    suiteDefinitionArn: option<amazonResourceName>,
    @ocaml.doc("<p>Creates a Device Advisor test suite with suite UUID.</p>")
    suiteDefinitionId: option<uuid>,
  }
  @module("@aws-sdk/client-iotdeviceadvisor") @new
  external new: request => t = "CreateSuiteDefinitionCommand"
  let make = (~tags=?, ~suiteDefinitionConfiguration=?, ()) =>
    new({tags: tags, suiteDefinitionConfiguration: suiteDefinitionConfiguration})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSuiteDefinitions = {
  type t
  type request = {
    @ocaml.doc("<p>A token used to get the next set of results.</p>") nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of results to return at once.</p>")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A token used to get the next set of results.</p>") nextToken: option<token>,
    @ocaml.doc(
      "<p>An array of objects that provide summaries of information about the suite definitions in the list.</p>"
    )
    suiteDefinitionInformationList: option<suiteDefinitionInformationList>,
  }
  @module("@aws-sdk/client-iotdeviceadvisor") @new
  external new: request => t = "ListSuiteDefinitionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSuiteRun = {
  type t
  type request = {
    @ocaml.doc("<p>Suite run Id for the test suite run.</p>") suiteRunId: uuid,
    @ocaml.doc("<p>Suite definition Id for the test suite run.</p>") suiteDefinitionId: uuid,
  }
  type response = {
    @ocaml.doc("<p>The tags attached to the suite run.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>Error reason for any test suite run failure.</p>")
    errorReason: option<errorReason>,
    @ocaml.doc("<p>Status for the test suite run.</p>") status: option<suiteRunStatus>,
    @ocaml.doc("<p>Date (in Unix epoch time) when the test suite run ended.</p>")
    endTime: option<timestamp_>,
    @ocaml.doc("<p>Date (in Unix epoch time) when the test suite run was started.</p>")
    startTime: option<timestamp_>,
    @ocaml.doc("<p>Test results for the test suite run.</p>") testResult: option<testResult>,
    @ocaml.doc("<p>Suite run configuration for the test suite run.</p>")
    suiteRunConfiguration: option<suiteRunConfiguration>,
    @ocaml.doc("<p>The ARN of the suite run.</p>") suiteRunArn: option<amazonResourceName>,
    @ocaml.doc("<p>Suite run Id for the test suite run.</p>") suiteRunId: option<uuid>,
    @ocaml.doc("<p>Suite definition version for the test suite run.</p>")
    suiteDefinitionVersion: option<suiteDefinitionVersion>,
    @ocaml.doc("<p>Suite definition Id for the test suite run.</p>")
    suiteDefinitionId: option<uuid>,
  }
  @module("@aws-sdk/client-iotdeviceadvisor") @new external new: request => t = "GetSuiteRunCommand"
  let make = (~suiteRunId, ~suiteDefinitionId, ()) =>
    new({suiteRunId: suiteRunId, suiteDefinitionId: suiteDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
