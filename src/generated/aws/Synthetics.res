type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type boolean_ = bool
type integer_ = int
type long = float
type vpcId = string
type uuid = string
type token = string
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type subnetId = string
type string_ = string
type securityGroupId = string
type roleArn = string
type nullableBoolean = bool
type maxSize3008 = int
type maxSize1024 = int
type maxSize100 = int
type maxOneYearInSeconds = float
type maxFifteenMinutesInSeconds = int
type maxCanaryResults = int
type functionArn = string
type errorMessage = string
type environmentVariableValue = string
type environmentVariableName = string
type canaryStateReasonCode = [@as("INVALID_PERMISSIONS") #INVALIDPERMISSIONS]
type canaryState = [@as("DELETING") #DELETING | @as("ERROR") #ERROR | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("UPDATING") #UPDATING | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING | @as("READY") #READY | @as("CREATING") #CREATING]
type canaryRunStateReasonCode = [@as("EXECUTION_FAILURE") #EXECUTIONFAILURE | @as("CANARY_FAILURE") #CANARYFAILURE]
type canaryRunState = [@as("FAILED") #FAILED | @as("PASSED") #PASSED | @as("RUNNING") #RUNNING]
type canaryName = string
type canaryArn = string
type blob = NodeJs.Buffer.t
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type subnetIds = array<subnetId>
type securityGroupIds = array<securityGroupId>
type runtimeVersion = {
@as("DeprecationDate") deprecationDate: option<timestamp_>,
@as("ReleaseDate") releaseDate: option<timestamp_>,
@as("Description") description: option<string_>,
@as("VersionName") versionName: option<string_>
}
type environmentVariablesMap = Js.Dict.t< environmentVariableValue>
type canaryTimeline = {
@as("LastStopped") lastStopped: option<timestamp_>,
@as("LastStarted") lastStarted: option<timestamp_>,
@as("LastModified") lastModified: option<timestamp_>,
@as("Created") created: option<timestamp_>
}
type canaryStatus = {
@as("StateReasonCode") stateReasonCode: option<canaryStateReasonCode>,
@as("StateReason") stateReason: option<string_>,
@as("State") state: option<canaryState>
}
type canaryScheduleOutput = {
@as("DurationInSeconds") durationInSeconds: option<maxOneYearInSeconds>,
@as("Expression") expression: option<string_>
}
type canaryScheduleInput = {
@as("DurationInSeconds") durationInSeconds: option<maxOneYearInSeconds>,
@as("Expression") expression: string_
}
type canaryRunTimeline = {
@as("Completed") completed: option<timestamp_>,
@as("Started") started: option<timestamp_>
}
type canaryRunStatus = {
@as("StateReasonCode") stateReasonCode: option<canaryRunStateReasonCode>,
@as("StateReason") stateReason: option<string_>,
@as("State") state: option<canaryRunState>
}
type canaryRunConfigOutput = {
@as("ActiveTracing") activeTracing: option<nullableBoolean>,
@as("MemoryInMB") memoryInMB: option<maxSize3008>,
@as("TimeoutInSeconds") timeoutInSeconds: option<maxFifteenMinutesInSeconds>
}
type canaryCodeOutput = {
@as("Handler") handler: option<string_>,
@as("SourceLocationArn") sourceLocationArn: option<string_>
}
type canaryCodeInput = {
@as("Handler") handler: string_,
@as("ZipFile") zipFile: option<blob>,
@as("S3Version") s3Version: option<string_>,
@as("S3Key") s3Key: option<string_>,
@as("S3Bucket") s3Bucket: option<string_>
}
type vpcConfigOutput = {
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
@as("SubnetIds") subnetIds: option<subnetIds>,
@as("VpcId") vpcId: option<vpcId>
}
type vpcConfigInput = {
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
@as("SubnetIds") subnetIds: option<subnetIds>
}
type runtimeVersionList = array<runtimeVersion>
type canaryRunConfigInput = {
@as("EnvironmentVariables") environmentVariables: option<environmentVariablesMap>,
@as("ActiveTracing") activeTracing: option<nullableBoolean>,
@as("MemoryInMB") memoryInMB: option<maxSize3008>,
@as("TimeoutInSeconds") timeoutInSeconds: option<maxFifteenMinutesInSeconds>
}
type canaryRun = {
@as("ArtifactS3Location") artifactS3Location: option<string_>,
@as("Timeline") timeline: option<canaryRunTimeline>,
@as("Status") status: option<canaryRunStatus>,
@as("Name") name: option<canaryName>,
@as("Id") id: option<uuid>
}
type canaryRuns = array<canaryRun>
type canaryLastRun = {
@as("LastRun") lastRun: option<canaryRun>,
@as("CanaryName") canaryName: option<canaryName>
}
type canary = {
@as("Tags") tags: option<tagMap>,
@as("VpcConfig") vpcConfig: option<vpcConfigOutput>,
@as("RuntimeVersion") runtimeVersion: option<string_>,
@as("EngineArn") engineArn: option<functionArn>,
@as("ArtifactS3Location") artifactS3Location: option<string_>,
@as("Timeline") timeline: option<canaryTimeline>,
@as("Status") status: option<canaryStatus>,
@as("FailureRetentionPeriodInDays") failureRetentionPeriodInDays: option<maxSize1024>,
@as("SuccessRetentionPeriodInDays") successRetentionPeriodInDays: option<maxSize1024>,
@as("RunConfig") runConfig: option<canaryRunConfigOutput>,
@as("Schedule") schedule: option<canaryScheduleOutput>,
@as("ExecutionRoleArn") executionRoleArn: option<roleArn>,
@as("Code") code: option<canaryCodeOutput>,
@as("Name") name: option<canaryName>,
@as("Id") id: option<uuid>
}
type canariesLastRun = array<canaryLastRun>
type canaries = array<canary>
type awsServiceClient;
@module("@aws-sdk/client-synthetics") @new external createClient: unit => awsServiceClient = "SyntheticsClient";
module StopCanary = {
  type t;
  type request = {
@as("Name") name: canaryName
}
  type response = unit
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "StopCanaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartCanary = {
  type t;
  type request = {
@as("Name") name: canaryName
}
  type response = unit
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "StartCanaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCanary = {
  type t;
  type request = {
@as("Name") name: canaryName
}
  type response = unit
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "DeleteCanaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceArn") resourceArn: canaryArn
}
  type response = unit
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("ResourceArn") resourceArn: canaryArn
}
  type response = unit
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: canaryArn
}
  type response = {
@as("Tags") tags: option<tagMap>
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateCanary = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: option<vpcConfigInput>,
@as("FailureRetentionPeriodInDays") failureRetentionPeriodInDays: option<maxSize1024>,
@as("SuccessRetentionPeriodInDays") successRetentionPeriodInDays: option<maxSize1024>,
@as("RunConfig") runConfig: option<canaryRunConfigInput>,
@as("Schedule") schedule: option<canaryScheduleInput>,
@as("RuntimeVersion") runtimeVersion: option<string_>,
@as("ExecutionRoleArn") executionRoleArn: option<roleArn>,
@as("Code") code: option<canaryCodeInput>,
@as("Name") name: canaryName
}
  type response = unit
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "UpdateCanaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRuntimeVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<token>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("RuntimeVersions") runtimeVersions: option<runtimeVersionList>
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "DescribeRuntimeVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCanaryRuns = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<token>,
@as("Name") name: canaryName
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("CanaryRuns") canaryRuns: option<canaryRuns>
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "GetCanaryRunsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCanary = {
  type t;
  type request = {
@as("Name") name: canaryName
}
  type response = {
@as("Canary") canary: option<canary>
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "GetCanaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCanary = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("VpcConfig") vpcConfig: option<vpcConfigInput>,
@as("RuntimeVersion") runtimeVersion: string_,
@as("FailureRetentionPeriodInDays") failureRetentionPeriodInDays: option<maxSize1024>,
@as("SuccessRetentionPeriodInDays") successRetentionPeriodInDays: option<maxSize1024>,
@as("RunConfig") runConfig: option<canaryRunConfigInput>,
@as("Schedule") schedule: canaryScheduleInput,
@as("ExecutionRoleArn") executionRoleArn: roleArn,
@as("ArtifactS3Location") artifactS3Location: string_,
@as("Code") code: canaryCodeInput,
@as("Name") name: canaryName
}
  type response = {
@as("Canary") canary: option<canary>
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "CreateCanaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCanariesLastRun = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<token>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("CanariesLastRun") canariesLastRun: option<canariesLastRun>
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "DescribeCanariesLastRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCanaries = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxCanaryResults>,
@as("NextToken") nextToken: option<token>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("Canaries") canaries: option<canaries>
}
  @module("@aws-sdk/client-synthetics") @new external new_: (request) => t = "DescribeCanariesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
