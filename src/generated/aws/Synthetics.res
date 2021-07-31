type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vpcId = string
type uUID = string
type token = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type subnetId = string
type amazonawsString = string
type securityGroupId = string
type roleArn = string
type nullableBoolean = bool;
type maxSize3008 = int;
type maxSize1024 = int;
type maxSize100 = int;
type maxOneYearInSeconds = float;
type maxFifteenMinutesInSeconds = int;
type maxCanaryResults = int;
type functionArn = string
type errorMessage = string
type environmentVariableValue = string
type environmentVariableName = string
type canaryStateReasonCode = [@as("INVALID_PERMISSIONS") #INVALID_PERMISSIONS]
type canaryState = [@as("DELETING") #DELETING | @as("ERROR") #ERROR | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("UPDATING") #UPDATING | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING | @as("READY") #READY | @as("CREATING") #CREATING]
type canaryRunStateReasonCode = [@as("EXECUTION_FAILURE") #EXECUTION_FAILURE | @as("CANARY_FAILURE") #CANARY_FAILURE]
type canaryRunState = [@as("FAILED") #FAILED | @as("PASSED") #PASSED | @as("RUNNING") #RUNNING]
type canaryName = string
type canaryArn = string
type blob = NodeJs.Buffer.t;
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type subnetIds = array<subnetId>
type securityGroupIds = array<securityGroupId>
type runtimeVersion = {
@as("DeprecationDate") deprecationDate: amazonawsTimestamp,
@as("ReleaseDate") releaseDate: amazonawsTimestamp,
@as("Description") description: amazonawsString,
@as("VersionName") versionName: amazonawsString
}
type environmentVariablesMap = Js.Dict.t< environmentVariableValue>
type canaryTimeline = {
@as("LastStopped") lastStopped: amazonawsTimestamp,
@as("LastStarted") lastStarted: amazonawsTimestamp,
@as("LastModified") lastModified: amazonawsTimestamp,
@as("Created") created: amazonawsTimestamp
}
type canaryStatus = {
@as("StateReasonCode") stateReasonCode: canaryStateReasonCode,
@as("StateReason") stateReason: amazonawsString,
@as("State") state: canaryState
}
type canaryScheduleOutput = {
@as("DurationInSeconds") durationInSeconds: maxOneYearInSeconds,
@as("Expression") expression: amazonawsString
}
type canaryScheduleInput = {
@as("DurationInSeconds") durationInSeconds: maxOneYearInSeconds,
@as("Expression") expression: option<amazonawsString>
}
type canaryRunTimeline = {
@as("Completed") completed: amazonawsTimestamp,
@as("Started") started: amazonawsTimestamp
}
type canaryRunStatus = {
@as("StateReasonCode") stateReasonCode: canaryRunStateReasonCode,
@as("StateReason") stateReason: amazonawsString,
@as("State") state: canaryRunState
}
type canaryRunConfigOutput = {
@as("ActiveTracing") activeTracing: nullableBoolean,
@as("MemoryInMB") memoryInMB: maxSize3008,
@as("TimeoutInSeconds") timeoutInSeconds: maxFifteenMinutesInSeconds
}
type canaryCodeOutput = {
@as("Handler") handler: amazonawsString,
@as("SourceLocationArn") sourceLocationArn: amazonawsString
}
type canaryCodeInput = {
@as("Handler") handler: option<amazonawsString>,
@as("ZipFile") zipFile: blob,
@as("S3Version") s3Version: amazonawsString,
@as("S3Key") s3Key: amazonawsString,
@as("S3Bucket") s3Bucket: amazonawsString
}
type vpcConfigOutput = {
@as("SecurityGroupIds") securityGroupIds: securityGroupIds,
@as("SubnetIds") subnetIds: subnetIds,
@as("VpcId") vpcId: vpcId
}
type vpcConfigInput = {
@as("SecurityGroupIds") securityGroupIds: securityGroupIds,
@as("SubnetIds") subnetIds: subnetIds
}
type runtimeVersionList = array<runtimeVersion>
type canaryRunConfigInput = {
@as("EnvironmentVariables") environmentVariables: environmentVariablesMap,
@as("ActiveTracing") activeTracing: nullableBoolean,
@as("MemoryInMB") memoryInMB: maxSize3008,
@as("TimeoutInSeconds") timeoutInSeconds: maxFifteenMinutesInSeconds
}
type canaryRun = {
@as("ArtifactS3Location") artifactS3Location: amazonawsString,
@as("Timeline") timeline: canaryRunTimeline,
@as("Status") status: canaryRunStatus,
@as("Name") name: canaryName,
@as("Id") id: uUID
}
type canaryRuns = array<canaryRun>
type canaryLastRun = {
@as("LastRun") lastRun: canaryRun,
@as("CanaryName") canaryName: canaryName
}
type canary = {
@as("Tags") tags: tagMap,
@as("VpcConfig") vpcConfig: vpcConfigOutput,
@as("RuntimeVersion") runtimeVersion: amazonawsString,
@as("EngineArn") engineArn: functionArn,
@as("ArtifactS3Location") artifactS3Location: amazonawsString,
@as("Timeline") timeline: canaryTimeline,
@as("Status") status: canaryStatus,
@as("FailureRetentionPeriodInDays") failureRetentionPeriodInDays: maxSize1024,
@as("SuccessRetentionPeriodInDays") successRetentionPeriodInDays: maxSize1024,
@as("RunConfig") runConfig: canaryRunConfigOutput,
@as("Schedule") schedule: canaryScheduleOutput,
@as("ExecutionRoleArn") executionRoleArn: roleArn,
@as("Code") code: canaryCodeOutput,
@as("Name") name: canaryName,
@as("Id") id: uUID
}
type canariesLastRun = array<canaryLastRun>
type canaries = array<canary>
type clientType;
@module("@aws-sdk/client-synthetics") @new external createClient: unit => clientType = "SyntheticsClient";
module StopCanary = {
  type t;
  type request = {
@as("Name") name: option<canaryName>
}
  type response = unit
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "StopCanaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartCanary = {
  type t;
  type request = {
@as("Name") name: option<canaryName>
}
  type response = unit
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "StartCanaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCanary = {
  type t;
  type request = {
@as("Name") name: option<canaryName>
}
  type response = unit
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "DeleteCanaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<canaryArn>
}
  type response = unit
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ResourceArn") resourceArn: option<canaryArn>
}
  type response = unit
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<canaryArn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCanary = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: vpcConfigInput,
@as("FailureRetentionPeriodInDays") failureRetentionPeriodInDays: maxSize1024,
@as("SuccessRetentionPeriodInDays") successRetentionPeriodInDays: maxSize1024,
@as("RunConfig") runConfig: canaryRunConfigInput,
@as("Schedule") schedule: canaryScheduleInput,
@as("RuntimeVersion") runtimeVersion: amazonawsString,
@as("ExecutionRoleArn") executionRoleArn: roleArn,
@as("Code") code: canaryCodeInput,
@as("Name") name: option<canaryName>
}
  type response = unit
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "UpdateCanaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRuntimeVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("RuntimeVersions") runtimeVersions: runtimeVersionList
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "DescribeRuntimeVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCanaryRuns = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: token,
@as("Name") name: option<canaryName>
}
  type response = {
@as("NextToken") nextToken: token,
@as("CanaryRuns") canaryRuns: canaryRuns
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "GetCanaryRunsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCanary = {
  type t;
  type request = {
@as("Name") name: option<canaryName>
}
  type response = {
@as("Canary") canary: canary
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "GetCanaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCanary = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("VpcConfig") vpcConfig: vpcConfigInput,
@as("RuntimeVersion") runtimeVersion: option<amazonawsString>,
@as("FailureRetentionPeriodInDays") failureRetentionPeriodInDays: maxSize1024,
@as("SuccessRetentionPeriodInDays") successRetentionPeriodInDays: maxSize1024,
@as("RunConfig") runConfig: canaryRunConfigInput,
@as("Schedule") schedule: option<canaryScheduleInput>,
@as("ExecutionRoleArn") executionRoleArn: option<roleArn>,
@as("ArtifactS3Location") artifactS3Location: option<amazonawsString>,
@as("Code") code: option<canaryCodeInput>,
@as("Name") name: option<canaryName>
}
  type response = {
@as("Canary") canary: canary
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "CreateCanaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCanariesLastRun = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("CanariesLastRun") canariesLastRun: canariesLastRun
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "DescribeCanariesLastRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCanaries = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxCanaryResults,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("Canaries") canaries: canaries
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "DescribeCanariesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
