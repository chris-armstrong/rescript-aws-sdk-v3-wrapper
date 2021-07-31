type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-codebuild") @new external createClient: unit => awsServiceClient = "CodeBuildClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type wrapperLong = float
type wrapperInt = int
type wrapperBoolean = bool
type webhookFilterType = [@as("COMMIT_MESSAGE") #COMMIT_MESSAGE | @as("FILE_PATH") #FILE_PATH | @as("ACTOR_ACCOUNT_ID") #ACTOR_ACCOUNT_ID | @as("HEAD_REF") #HEAD_REF | @as("BASE_REF") #BASE_REF | @as("EVENT") #EVENT]
type webhookBuildType = [@as("BUILD_BATCH") #BUILD_BATCH | @as("BUILD") #BUILD]
type valueInput = string
type timestamp_ = Js.Date.t;
type timeOut = int
type string_ = string
type statusType = [@as("STOPPED") #STOPPED | @as("IN_PROGRESS") #IN_PROGRESS | @as("TIMED_OUT") #TIMED_OUT | @as("FAULT") #FAULT | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED]
type sourceType = [@as("NO_SOURCE") #NO_SOURCE | @as("GITHUB_ENTERPRISE") #GITHUB_ENTERPRISE | @as("BITBUCKET") #BITBUCKET | @as("S3") #S3 | @as("GITHUB") #GITHUB | @as("CODEPIPELINE") #CODEPIPELINE | @as("CODECOMMIT") #CODECOMMIT]
type sourceAuthType = [@as("OAUTH") #OAUTH]
type sortOrderType = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sharedResourceSortByType = [@as("MODIFIED_TIME") #MODIFIED_TIME | @as("ARN") #ARN]
type serverType = [@as("GITHUB_ENTERPRISE") #GITHUB_ENTERPRISE | @as("BITBUCKET") #BITBUCKET | @as("GITHUB") #GITHUB]
type sensitiveNonEmptyString = string
type retryBuildBatchType = [@as("RETRY_FAILED_BUILDS") #RETRY_FAILED_BUILDS | @as("RETRY_ALL_BUILDS") #RETRY_ALL_BUILDS]
type reportType = [@as("CODE_COVERAGE") #CODE_COVERAGE | @as("TEST") #TEST]
type reportStatusType = [@as("DELETING") #DELETING | @as("INCOMPLETE") #INCOMPLETE | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("GENERATING") #GENERATING]
type reportPackagingType = [@as("NONE") #NONE | @as("ZIP") #ZIP]
type reportGroupTrendFieldType = [@as("BRANCHES_MISSED") #BRANCHES_MISSED | @as("BRANCHES_COVERED") #BRANCHES_COVERED | @as("BRANCH_COVERAGE") #BRANCH_COVERAGE | @as("LINES_MISSED") #LINES_MISSED | @as("LINES_COVERED") #LINES_COVERED | @as("LINE_COVERAGE") #LINE_COVERAGE | @as("TOTAL") #TOTAL | @as("DURATION") #DURATION | @as("PASS_RATE") #PASS_RATE]
type reportGroupStatusType = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE]
type reportGroupSortByType = [@as("LAST_MODIFIED_TIME") #LAST_MODIFIED_TIME | @as("CREATED_TIME") #CREATED_TIME | @as("NAME") #NAME]
type reportGroupName = string
type reportExportConfigType = [@as("NO_EXPORT") #NO_EXPORT | @as("S3") #S3]
type reportCodeCoverageSortByType = [@as("FILE_PATH") #FILE_PATH | @as("LINE_COVERAGE_PERCENTAGE") #LINE_COVERAGE_PERCENTAGE]
type projectSortByType = [@as("LAST_MODIFIED_TIME") #LAST_MODIFIED_TIME | @as("CREATED_TIME") #CREATED_TIME | @as("NAME") #NAME]
type projectName = string
type projectDescription = string
type platformType = [@as("WINDOWS_SERVER") #WINDOWS_SERVER | @as("UBUNTU") #UBUNTU | @as("AMAZON_LINUX") #AMAZON_LINUX | @as("DEBIAN") #DEBIAN]
type percentage = float
type pageSize = int
type nonNegativeInt = int
type nonEmptyString = string
type logsConfigStatusType = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type languageType = [@as("PHP") #PHP | @as("BASE") #BASE | @as("DOTNET") #DOTNET | @as("ANDROID") #ANDROID | @as("DOCKER") #DOCKER | @as("GOLANG") #GOLANG | @as("RUBY") #RUBY | @as("NODE_JS") #NODE_JS | @as("PYTHON") #PYTHON | @as("JAVA") #JAVA]
type keyInput = string
type imagePullCredentialsType = [@as("SERVICE_ROLE") #SERVICE_ROLE | @as("CODEBUILD") #CODEBUILD]
type gitCloneDepth = int
type fileSystemType = [@as("EFS") #EFS]
type environmentVariableType = [@as("SECRETS_MANAGER") #SECRETS_MANAGER | @as("PARAMETER_STORE") #PARAMETER_STORE | @as("PLAINTEXT") #PLAINTEXT]
type environmentType = [@as("WINDOWS_SERVER_2019_CONTAINER") #WINDOWS_SERVER_2019_CONTAINER | @as("ARM_CONTAINER") #ARM_CONTAINER | @as("LINUX_GPU_CONTAINER") #LINUX_GPU_CONTAINER | @as("LINUX_CONTAINER") #LINUX_CONTAINER | @as("WINDOWS_CONTAINER") #WINDOWS_CONTAINER]
type credentialProviderType = [@as("SECRETS_MANAGER") #SECRETS_MANAGER]
type computeType = [@as("BUILD_GENERAL1_2XLARGE") #BUILD_GENERAL1_2XLARGE | @as("BUILD_GENERAL1_LARGE") #BUILD_GENERAL1_LARGE | @as("BUILD_GENERAL1_MEDIUM") #BUILD_GENERAL1_MEDIUM | @as("BUILD_GENERAL1_SMALL") #BUILD_GENERAL1_SMALL]
type cacheType = [@as("LOCAL") #LOCAL | @as("S3") #S3 | @as("NO_CACHE") #NO_CACHE]
type cacheMode = [@as("LOCAL_CUSTOM_CACHE") #LOCAL_CUSTOM_CACHE | @as("LOCAL_SOURCE_CACHE") #LOCAL_SOURCE_CACHE | @as("LOCAL_DOCKER_LAYER_CACHE") #LOCAL_DOCKER_LAYER_CACHE]
type buildPhaseType = [@as("COMPLETED") #COMPLETED | @as("FINALIZING") #FINALIZING | @as("UPLOAD_ARTIFACTS") #UPLOAD_ARTIFACTS | @as("POST_BUILD") #POST_BUILD | @as("BUILD") #BUILD | @as("PRE_BUILD") #PRE_BUILD | @as("INSTALL") #INSTALL | @as("DOWNLOAD_SOURCE") #DOWNLOAD_SOURCE | @as("PROVISIONING") #PROVISIONING | @as("QUEUED") #QUEUED | @as("SUBMITTED") #SUBMITTED]
type buildBatchPhaseType = [@as("STOPPED") #STOPPED | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("COMBINE_ARTIFACTS") #COMBINE_ARTIFACTS | @as("IN_PROGRESS") #IN_PROGRESS | @as("DOWNLOAD_BATCHSPEC") #DOWNLOAD_BATCHSPEC | @as("SUBMITTED") #SUBMITTED]
type bucketOwnerAccess = [@as("FULL") #FULL | @as("READ_ONLY") #READ_ONLY | @as("NONE") #NONE]
type boolean_ = bool
type authType = [@as("PERSONAL_ACCESS_TOKEN") #PERSONAL_ACCESS_TOKEN | @as("BASIC_AUTH") #BASIC_AUTH | @as("OAUTH") #OAUTH]
type artifactsType = [@as("NO_ARTIFACTS") #NO_ARTIFACTS | @as("S3") #S3 | @as("CODEPIPELINE") #CODEPIPELINE]
type artifactPackaging = [@as("ZIP") #ZIP | @as("NONE") #NONE]
type artifactNamespace = [@as("BUILD_ID") #BUILD_ID | @as("NONE") #NONE]
type webhookFilter = {
excludeMatchedPattern: option<wrapperBoolean>,
  pattern: string_,
  @as("type") type_: webhookFilterType
}
type testCaseFilter = {
keyword: option<string_>,
  status: option<string_>
}
type testCase = {
expired: option<timestamp_>,
  message: option<string_>,
  durationInNanoSeconds: option<wrapperLong>,
  status: option<string_>,
  name: option<string_>,
  prefix: option<string_>,
  testRawDataPath: option<string_>,
  reportArn: option<nonEmptyString>
}
type tag = {
value: option<valueInput>,
  key: option<keyInput>
}
type subnets = array<nonEmptyString>
type sourceCredentialsInfo = {
authType: option<authType>,
  serverType: option<serverType>,
  arn: option<nonEmptyString>
}
type sourceAuth = {
resource: option<string_>,
  @as("type") type_: sourceAuthType
}
type securityGroupIds = array<nonEmptyString>
type s3ReportExportConfig = {
encryptionDisabled: option<wrapperBoolean>,
  encryptionKey: option<nonEmptyString>,
  packaging: option<reportPackagingType>,
  path: option<string_>,
  bucketOwner: option<string_>,
  bucket: option<nonEmptyString>
}
type s3LogsConfig = {
bucketOwnerAccess: option<bucketOwnerAccess>,
  encryptionDisabled: option<wrapperBoolean>,
  location: option<string_>,
  status: logsConfigStatusType
}
type resolvedArtifact = {
identifier: option<string_>,
  location: option<string_>,
  @as("type") type_: option<artifactsType>
}
type reportWithRawData = {
data: option<string_>,
  reportArn: option<nonEmptyString>
}
type reportStatusCounts = Js.Dict.t<wrapperInt>
type reportGroupTrendStats = {
min: option<string_>,
  max: option<string_>,
  average: option<string_>
}
type reportGroupArns = array<nonEmptyString>
type reportFilter = {
status: option<reportStatusType>
}
type reportArns = array<nonEmptyString>
type registryCredential = {
credentialProvider: credentialProviderType,
  credential: nonEmptyString
}
type projectSourceVersion = {
sourceVersion: string_,
  sourceIdentifier: string_
}
type projectNames = array<nonEmptyString>
type projectFileSystemLocation = {
mountOptions: option<string_>,
  identifier: option<string_>,
  mountPoint: option<string_>,
  location: option<string_>,
  @as("type") type_: option<fileSystemType>
}
type projectCacheModes = array<cacheMode>
type projectBadge = {
badgeRequestUrl: option<string_>,
  badgeEnabled: option<boolean_>
}
type projectArtifacts = {
bucketOwnerAccess: option<bucketOwnerAccess>,
  artifactIdentifier: option<string_>,
  encryptionDisabled: option<wrapperBoolean>,
  overrideArtifactName: option<wrapperBoolean>,
  packaging: option<artifactPackaging>,
  name: option<string_>,
  namespaceType: option<artifactNamespace>,
  path: option<string_>,
  location: option<string_>,
  @as("type") type_: artifactsType
}
type projectArns = array<nonEmptyString>
type phaseContext = {
message: option<string_>,
  statusCode: option<string_>
}
type networkInterface = {
networkInterfaceId: option<nonEmptyString>,
  subnetId: option<nonEmptyString>
}
type imageVersions = array<string_>
type identifiers = array<nonEmptyString>
type gitSubmodulesConfig = {
fetchSubmodules: wrapperBoolean
}
type exportedEnvironmentVariable = {
value: option<string_>,
  name: option<nonEmptyString>
}
type environmentVariable = {
@as("type") type_: option<environmentVariableType>,
  value: string_,
  name: nonEmptyString
}
type debugSession = {
sessionTarget: option<nonEmptyString>,
  sessionEnabled: option<wrapperBoolean>
}
type computeTypesAllowed = array<nonEmptyString>
type codeCoverageReportSummary = {
branchesMissed: option<nonNegativeInt>,
  branchesCovered: option<nonNegativeInt>,
  branchCoveragePercentage: option<percentage>,
  linesMissed: option<nonNegativeInt>,
  linesCovered: option<nonNegativeInt>,
  lineCoveragePercentage: option<percentage>
}
type codeCoverage = {
expired: option<timestamp_>,
  branchesMissed: option<nonNegativeInt>,
  branchesCovered: option<nonNegativeInt>,
  branchCoveragePercentage: option<percentage>,
  linesMissed: option<nonNegativeInt>,
  linesCovered: option<nonNegativeInt>,
  lineCoveragePercentage: option<percentage>,
  filePath: option<nonEmptyString>,
  reportARN: option<nonEmptyString>,
  id: option<nonEmptyString>
}
type cloudWatchLogsConfig = {
streamName: option<string_>,
  groupName: option<string_>,
  status: logsConfigStatusType
}
type buildStatusConfig = {
targetUrl: option<string_>,
  context: option<string_>
}
type buildReportArns = array<string_>
type buildNotDeleted = {
statusCode: option<string_>,
  id: option<nonEmptyString>
}
type buildIds = array<nonEmptyString>
type buildBatchIds = array<nonEmptyString>
type buildBatchFilter = {
status: option<statusType>
}
type buildArtifacts = {
bucketOwnerAccess: option<bucketOwnerAccess>,
  artifactIdentifier: option<string_>,
  encryptionDisabled: option<wrapperBoolean>,
  overrideArtifactName: option<wrapperBoolean>,
  md5sum: option<string_>,
  sha256sum: option<string_>,
  location: option<string_>
}
type vpcConfig = {
securityGroupIds: option<securityGroupIds>,
  subnets: option<subnets>,
  vpcId: option<nonEmptyString>
}
type testReportSummary = {
durationInNanoSeconds: wrapperLong,
  statusCounts: reportStatusCounts,
  total: wrapperInt
}
type testCases = array<testCase>
type tagList_ = array<tag>
type sourceCredentialsInfos = array<sourceCredentialsInfo>
type resolvedSecondaryArtifacts = array<resolvedArtifact>
type reportGroupTrendRawDataList = array<reportWithRawData>
type reportExportConfig = {
s3Destination: option<s3ReportExportConfig>,
  exportConfigType: option<reportExportConfigType>
}
type projectSource = {
sourceIdentifier: option<string_>,
  insecureSsl: option<wrapperBoolean>,
  buildStatusConfig: option<buildStatusConfig>,
  reportBuildStatus: option<wrapperBoolean>,
  auth: option<sourceAuth>,
  buildspec: option<string_>,
  gitSubmodulesConfig: option<gitSubmodulesConfig>,
  gitCloneDepth: option<gitCloneDepth>,
  location: option<string_>,
  @as("type") type_: sourceType
}
type projectSecondarySourceVersions = array<projectSourceVersion>
type projectFileSystemLocations = array<projectFileSystemLocation>
type projectCache = {
modes: option<projectCacheModes>,
  location: option<string_>,
  @as("type") type_: cacheType
}
type projectArtifactsList = array<projectArtifacts>
type phaseContexts = array<phaseContext>
type logsLocation = {
s3Logs: option<s3LogsConfig>,
  cloudWatchLogs: option<cloudWatchLogsConfig>,
  s3LogsArn: option<string_>,
  cloudWatchLogsArn: option<string_>,
  s3DeepLink: option<string_>,
  deepLink: option<string_>,
  streamName: option<string_>,
  groupName: option<string_>
}
type logsConfig = {
s3Logs: option<s3LogsConfig>,
  cloudWatchLogs: option<cloudWatchLogsConfig>
}
type filterGroup = array<webhookFilter>
type exportedEnvironmentVariables = array<exportedEnvironmentVariable>
type environmentVariables = array<environmentVariable>
type environmentImage = {
versions: option<imageVersions>,
  description: option<string_>,
  name: option<string_>
}
type codeCoverages = array<codeCoverage>
type buildsNotDeleted = array<buildNotDeleted>
type buildArtifactsList = array<buildArtifacts>
type batchRestrictions = {
computeTypesAllowed: option<computeTypesAllowed>,
  maximumBuildsAllowed: option<wrapperInt>
}
type reportGroup = {
status: option<reportGroupStatusType>,
  tags: option<tagList_>,
  lastModified: option<timestamp_>,
  created: option<timestamp_>,
  exportConfig: option<reportExportConfig>,
  @as("type") type_: option<reportType>,
  name: option<reportGroupName>,
  arn: option<nonEmptyString>
}
type report = {
codeCoverageSummary: option<codeCoverageReportSummary>,
  testSummary: option<testReportSummary>,
  truncated: option<wrapperBoolean>,
  exportConfig: option<reportExportConfig>,
  expired: option<timestamp_>,
  created: option<timestamp_>,
  status: option<reportStatusType>,
  executionId: option<string_>,
  reportGroupArn: option<nonEmptyString>,
  name: option<string_>,
  @as("type") type_: option<reportType>,
  arn: option<nonEmptyString>
}
type projectSources = array<projectSource>
type projectEnvironment = {
imagePullCredentialsType: option<imagePullCredentialsType>,
  registryCredential: option<registryCredential>,
  certificate: option<string_>,
  privilegedMode: option<wrapperBoolean>,
  environmentVariables: option<environmentVariables>,
  computeType: computeType,
  image: nonEmptyString,
  @as("type") type_: environmentType
}
type projectBuildBatchConfig = {
timeoutInMins: option<wrapperInt>,
  restrictions: option<batchRestrictions>,
  combineArtifacts: option<wrapperBoolean>,
  serviceRole: option<nonEmptyString>
}
type filterGroups = array<filterGroup>
type environmentImages = array<environmentImage>
type buildSummary = {
secondaryArtifacts: option<resolvedSecondaryArtifacts>,
  primaryArtifact: option<resolvedArtifact>,
  buildStatus: option<statusType>,
  requestedOn: option<timestamp_>,
  arn: option<string_>
}
type buildPhase = {
contexts: option<phaseContexts>,
  durationInSeconds: option<wrapperLong>,
  endTime: option<timestamp_>,
  startTime: option<timestamp_>,
  phaseStatus: option<statusType>,
  phaseType: option<buildPhaseType>
}
type buildBatchPhase = {
contexts: option<phaseContexts>,
  durationInSeconds: option<wrapperLong>,
  endTime: option<timestamp_>,
  startTime: option<timestamp_>,
  phaseStatus: option<statusType>,
  phaseType: option<buildBatchPhaseType>
}
type webhook = {
lastModifiedSecret: option<timestamp_>,
  buildType: option<webhookBuildType>,
  filterGroups: option<filterGroups>,
  branchFilter: option<string_>,
  secret: option<nonEmptyString>,
  payloadUrl: option<nonEmptyString>,
  url: option<nonEmptyString>
}
type reports = array<report>
type reportGroups = array<reportGroup>
type environmentLanguage = {
images: option<environmentImages>,
  language: option<languageType>
}
type buildSummaries = array<buildSummary>
type buildPhases = array<buildPhase>
type buildBatchPhases = array<buildBatchPhase>
type project = {
concurrentBuildLimit: option<wrapperInt>,
  buildBatchConfig: option<projectBuildBatchConfig>,
  fileSystemLocations: option<projectFileSystemLocations>,
  logsConfig: option<logsConfig>,
  badge: option<projectBadge>,
  vpcConfig: option<vpcConfig>,
  webhook: option<webhook>,
  lastModified: option<timestamp_>,
  created: option<timestamp_>,
  tags: option<tagList_>,
  encryptionKey: option<nonEmptyString>,
  queuedTimeoutInMinutes: option<timeOut>,
  timeoutInMinutes: option<timeOut>,
  serviceRole: option<nonEmptyString>,
  environment: option<projectEnvironment>,
  cache: option<projectCache>,
  secondaryArtifacts: option<projectArtifactsList>,
  artifacts: option<projectArtifacts>,
  secondarySourceVersions: option<projectSecondarySourceVersions>,
  sourceVersion: option<string_>,
  secondarySources: option<projectSources>,
  source: option<projectSource>,
  description: option<projectDescription>,
  arn: option<string_>,
  name: option<projectName>
}
type environmentLanguages = array<environmentLanguage>
type buildGroup = {
priorBuildSummaryList: option<buildSummaries>,
  currentBuildSummary: option<buildSummary>,
  ignoreFailure: option<boolean_>,
  dependsOn: option<identifiers>,
  identifier: option<string_>
}
type build = {
buildBatchArn: option<string_>,
  debugSession: option<debugSession>,
  fileSystemLocations: option<projectFileSystemLocations>,
  reportArns: option<buildReportArns>,
  exportedEnvironmentVariables: option<exportedEnvironmentVariables>,
  encryptionKey: option<nonEmptyString>,
  networkInterface: option<networkInterface>,
  vpcConfig: option<vpcConfig>,
  initiator: option<string_>,
  buildComplete: option<boolean_>,
  queuedTimeoutInMinutes: option<wrapperInt>,
  timeoutInMinutes: option<wrapperInt>,
  logs: option<logsLocation>,
  serviceRole: option<nonEmptyString>,
  environment: option<projectEnvironment>,
  cache: option<projectCache>,
  secondaryArtifacts: option<buildArtifactsList>,
  artifacts: option<buildArtifacts>,
  secondarySourceVersions: option<projectSecondarySourceVersions>,
  secondarySources: option<projectSources>,
  source: option<projectSource>,
  phases: option<buildPhases>,
  projectName: option<nonEmptyString>,
  resolvedSourceVersion: option<nonEmptyString>,
  sourceVersion: option<nonEmptyString>,
  buildStatus: option<statusType>,
  currentPhase: option<string_>,
  endTime: option<timestamp_>,
  startTime: option<timestamp_>,
  buildNumber: option<wrapperLong>,
  arn: option<nonEmptyString>,
  id: option<nonEmptyString>
}
type projects = array<project>
type environmentPlatform = {
languages: option<environmentLanguages>,
  platform: option<platformType>
}
type builds = array<build>
type buildGroups = array<buildGroup>
type environmentPlatforms = array<environmentPlatform>
type buildBatch = {
debugSessionEnabled: option<wrapperBoolean>,
  buildGroups: option<buildGroups>,
  buildBatchConfig: option<projectBuildBatchConfig>,
  fileSystemLocations: option<projectFileSystemLocations>,
  buildBatchNumber: option<wrapperLong>,
  encryptionKey: option<nonEmptyString>,
  vpcConfig: option<vpcConfig>,
  initiator: option<string_>,
  complete: option<boolean_>,
  queuedTimeoutInMinutes: option<wrapperInt>,
  buildTimeoutInMinutes: option<wrapperInt>,
  logConfig: option<logsConfig>,
  serviceRole: option<nonEmptyString>,
  environment: option<projectEnvironment>,
  cache: option<projectCache>,
  secondaryArtifacts: option<buildArtifactsList>,
  artifacts: option<buildArtifacts>,
  secondarySourceVersions: option<projectSecondarySourceVersions>,
  secondarySources: option<projectSources>,
  source: option<projectSource>,
  phases: option<buildBatchPhases>,
  projectName: option<nonEmptyString>,
  resolvedSourceVersion: option<nonEmptyString>,
  sourceVersion: option<nonEmptyString>,
  buildBatchStatus: option<statusType>,
  currentPhase: option<string_>,
  endTime: option<timestamp_>,
  startTime: option<timestamp_>,
  arn: option<nonEmptyString>,
  id: option<nonEmptyString>
}
type buildBatches = array<buildBatch>

module PutResourcePolicy = {
  type t;
  type request = {
resourceArn: nonEmptyString,
  policy: nonEmptyString
}
  type response = {
resourceArn: option<nonEmptyString>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "PutResourcePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InvalidateProjectCache = {
  type t;
  type request = {
projectName: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "InvalidateProjectCacheCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportSourceCredentials = {
  type t;
  type request = {
shouldOverwrite: option<wrapperBoolean>,
  authType: authType,
  serverType: serverType,
  token: sensitiveNonEmptyString,
  username: option<nonEmptyString>
}
  type response = {
arn: option<nonEmptyString>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ImportSourceCredentialsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResourcePolicy = {
  type t;
  type request = {
resourceArn: nonEmptyString
}
  type response = {
policy: option<nonEmptyString>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "GetResourcePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteWebhook = {
  type t;
  type request = {
projectName: projectName
}
  type response = unit
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteWebhookCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSourceCredentials = {
  type t;
  type request = {
arn: nonEmptyString
}
  type response = {
arn: option<nonEmptyString>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteSourceCredentialsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteResourcePolicy = {
  type t;
  type request = {
resourceArn: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteResourcePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteReportGroup = {
  type t;
  type request = {
deleteReports: option<boolean_>,
  arn: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteReportGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteReport = {
  type t;
  type request = {
arn: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteReportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
name: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSharedReportGroups = {
  type t;
  type request = {
maxResults: option<pageSize>,
  nextToken: option<string_>,
  sortBy: option<sharedResourceSortByType>,
  sortOrder: option<sortOrderType>
}
  type response = {
reportGroups: option<reportGroupArns>,
  nextToken: option<string_>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListSharedReportGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSharedProjects = {
  type t;
  type request = {
nextToken: option<nonEmptyString>,
  maxResults: option<pageSize>,
  sortOrder: option<sortOrderType>,
  sortBy: option<sharedResourceSortByType>
}
  type response = {
projects: option<projectArns>,
  nextToken: option<string_>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListSharedProjectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListReportsForReportGroup = {
  type t;
  type request = {
filter: option<reportFilter>,
  maxResults: option<pageSize>,
  sortOrder: option<sortOrderType>,
  nextToken: option<string_>,
  reportGroupArn: string_
}
  type response = {
reports: option<reportArns>,
  nextToken: option<string_>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListReportsForReportGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListReports = {
  type t;
  type request = {
filter: option<reportFilter>,
  maxResults: option<pageSize>,
  nextToken: option<string_>,
  sortOrder: option<sortOrderType>
}
  type response = {
reports: option<reportArns>,
  nextToken: option<string_>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListReportsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListReportGroups = {
  type t;
  type request = {
maxResults: option<pageSize>,
  nextToken: option<string_>,
  sortBy: option<reportGroupSortByType>,
  sortOrder: option<sortOrderType>
}
  type response = {
reportGroups: option<reportGroupArns>,
  nextToken: option<string_>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListReportGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProjects = {
  type t;
  type request = {
nextToken: option<nonEmptyString>,
  sortOrder: option<sortOrderType>,
  sortBy: option<projectSortByType>
}
  type response = {
projects: option<projectNames>,
  nextToken: option<string_>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListProjectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBuildsForProject = {
  type t;
  type request = {
nextToken: option<string_>,
  sortOrder: option<sortOrderType>,
  projectName: nonEmptyString
}
  type response = {
nextToken: option<string_>,
  ids: option<buildIds>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListBuildsForProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBuilds = {
  type t;
  type request = {
nextToken: option<string_>,
  sortOrder: option<sortOrderType>
}
  type response = {
nextToken: option<string_>,
  ids: option<buildIds>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListBuildsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBuildBatchesForProject = {
  type t;
  type request = {
nextToken: option<string_>,
  sortOrder: option<sortOrderType>,
  maxResults: option<pageSize>,
  filter: option<buildBatchFilter>,
  projectName: option<nonEmptyString>
}
  type response = {
nextToken: option<string_>,
  ids: option<buildBatchIds>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListBuildBatchesForProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBuildBatches = {
  type t;
  type request = {
nextToken: option<string_>,
  sortOrder: option<sortOrderType>,
  maxResults: option<pageSize>,
  filter: option<buildBatchFilter>
}
  type response = {
nextToken: option<string_>,
  ids: option<buildBatchIds>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListBuildBatchesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSourceCredentials = {
  type t;
  type request = unit
  type response = {
sourceCredentialsInfos: option<sourceCredentialsInfos>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListSourceCredentialsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetReportGroupTrend = {
  type t;
  type request = {
trendField: reportGroupTrendFieldType,
  numOfReports: option<pageSize>,
  reportGroupArn: nonEmptyString
}
  type response = {
rawData: option<reportGroupTrendRawDataList>,
  stats: option<reportGroupTrendStats>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "GetReportGroupTrendCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTestCases = {
  type t;
  type request = {
filter: option<testCaseFilter>,
  maxResults: option<pageSize>,
  nextToken: option<string_>,
  reportArn: string_
}
  type response = {
testCases: option<testCases>,
  nextToken: option<string_>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DescribeTestCasesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCodeCoverages = {
  type t;
  type request = {
maxLineCoveragePercentage: option<percentage>,
  minLineCoveragePercentage: option<percentage>,
  sortBy: option<reportCodeCoverageSortByType>,
  sortOrder: option<sortOrderType>,
  maxResults: option<pageSize>,
  nextToken: option<string_>,
  reportArn: nonEmptyString
}
  type response = {
codeCoverages: option<codeCoverages>,
  nextToken: option<string_>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DescribeCodeCoveragesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBuildBatch = {
  type t;
  type request = {
id: nonEmptyString
}
  type response = {
buildsNotDeleted: option<buildsNotDeleted>,
  buildsDeleted: option<buildIds>,
  statusCode: option<string_>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteBuildBatchCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteBuilds = {
  type t;
  type request = {
ids: buildIds
}
  type response = {
buildsNotDeleted: option<buildsNotDeleted>,
  buildsDeleted: option<buildIds>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "BatchDeleteBuildsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateReportGroup = {
  type t;
  type request = {
tags: option<tagList_>,
  exportConfig: option<reportExportConfig>,
  arn: nonEmptyString
}
  type response = {
reportGroup: option<reportGroup>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "UpdateReportGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateReportGroup = {
  type t;
  type request = {
tags: option<tagList_>,
  exportConfig: reportExportConfig,
  @as("type") type_: reportType,
  name: reportGroupName
}
  type response = {
reportGroup: option<reportGroup>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "CreateReportGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateWebhook = {
  type t;
  type request = {
buildType: option<webhookBuildType>,
  filterGroups: option<filterGroups>,
  rotateSecret: option<boolean_>,
  branchFilter: option<string_>,
  projectName: projectName
}
  type response = {
webhook: option<webhook>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "UpdateWebhookCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateWebhook = {
  type t;
  type request = {
buildType: option<webhookBuildType>,
  filterGroups: option<filterGroups>,
  branchFilter: option<string_>,
  projectName: projectName
}
  type response = {
webhook: option<webhook>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "CreateWebhookCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchGetReports = {
  type t;
  type request = {
reportArns: reportArns
}
  type response = {
reportsNotFound: option<reportArns>,
  reports: option<reports>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "BatchGetReportsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchGetReportGroups = {
  type t;
  type request = {
reportGroupArns: reportGroupArns
}
  type response = {
reportGroupsNotFound: option<reportGroupArns>,
  reportGroups: option<reportGroups>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "BatchGetReportGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateProject = {
  type t;
  type request = {
concurrentBuildLimit: option<wrapperInt>,
  buildBatchConfig: option<projectBuildBatchConfig>,
  fileSystemLocations: option<projectFileSystemLocations>,
  logsConfig: option<logsConfig>,
  badgeEnabled: option<wrapperBoolean>,
  vpcConfig: option<vpcConfig>,
  tags: option<tagList_>,
  encryptionKey: option<nonEmptyString>,
  queuedTimeoutInMinutes: option<timeOut>,
  timeoutInMinutes: option<timeOut>,
  serviceRole: option<nonEmptyString>,
  environment: option<projectEnvironment>,
  cache: option<projectCache>,
  secondaryArtifacts: option<projectArtifactsList>,
  artifacts: option<projectArtifacts>,
  secondarySourceVersions: option<projectSecondarySourceVersions>,
  sourceVersion: option<string_>,
  secondarySources: option<projectSources>,
  source: option<projectSource>,
  description: option<projectDescription>,
  name: nonEmptyString
}
  type response = {
project: option<project>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "UpdateProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopBuild = {
  type t;
  type request = {
id: nonEmptyString
}
  type response = {
build: option<build>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "StopBuildCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartBuild = {
  type t;
  type request = {
debugSessionEnabled: option<wrapperBoolean>,
  imagePullCredentialsTypeOverride: option<imagePullCredentialsType>,
  registryCredentialOverride: option<registryCredential>,
  logsConfigOverride: option<logsConfig>,
  idempotencyToken: option<string_>,
  encryptionKeyOverride: option<nonEmptyString>,
  queuedTimeoutInMinutesOverride: option<timeOut>,
  timeoutInMinutesOverride: option<timeOut>,
  privilegedModeOverride: option<wrapperBoolean>,
  serviceRoleOverride: option<nonEmptyString>,
  cacheOverride: option<projectCache>,
  certificateOverride: option<string_>,
  computeTypeOverride: option<computeType>,
  imageOverride: option<nonEmptyString>,
  environmentTypeOverride: option<environmentType>,
  buildStatusConfigOverride: option<buildStatusConfig>,
  reportBuildStatusOverride: option<wrapperBoolean>,
  insecureSslOverride: option<wrapperBoolean>,
  buildspecOverride: option<string_>,
  gitSubmodulesConfigOverride: option<gitSubmodulesConfig>,
  gitCloneDepthOverride: option<gitCloneDepth>,
  sourceAuthOverride: option<sourceAuth>,
  sourceLocationOverride: option<string_>,
  sourceTypeOverride: option<sourceType>,
  environmentVariablesOverride: option<environmentVariables>,
  secondaryArtifactsOverride: option<projectArtifactsList>,
  artifactsOverride: option<projectArtifacts>,
  sourceVersion: option<string_>,
  secondarySourcesVersionOverride: option<projectSecondarySourceVersions>,
  secondarySourcesOverride: option<projectSources>,
  projectName: nonEmptyString
}
  type response = {
build: option<build>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "StartBuildCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RetryBuild = {
  type t;
  type request = {
idempotencyToken: option<string_>,
  id: option<nonEmptyString>
}
  type response = {
build: option<build>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "RetryBuildCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
concurrentBuildLimit: option<wrapperInt>,
  buildBatchConfig: option<projectBuildBatchConfig>,
  fileSystemLocations: option<projectFileSystemLocations>,
  logsConfig: option<logsConfig>,
  badgeEnabled: option<wrapperBoolean>,
  vpcConfig: option<vpcConfig>,
  tags: option<tagList_>,
  encryptionKey: option<nonEmptyString>,
  queuedTimeoutInMinutes: option<timeOut>,
  timeoutInMinutes: option<timeOut>,
  serviceRole: nonEmptyString,
  environment: projectEnvironment,
  cache: option<projectCache>,
  secondaryArtifacts: option<projectArtifactsList>,
  artifacts: projectArtifacts,
  secondarySourceVersions: option<projectSecondarySourceVersions>,
  sourceVersion: option<string_>,
  secondarySources: option<projectSources>,
  source: projectSource,
  description: option<projectDescription>,
  name: projectName
}
  type response = {
project: option<project>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "CreateProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchGetProjects = {
  type t;
  type request = {
names: projectNames
}
  type response = {
projectsNotFound: option<projectNames>,
  projects: option<projects>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "BatchGetProjectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchGetBuilds = {
  type t;
  type request = {
ids: buildIds
}
  type response = {
buildsNotFound: option<buildIds>,
  builds: option<builds>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "BatchGetBuildsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopBuildBatch = {
  type t;
  type request = {
id: nonEmptyString
}
  type response = {
buildBatch: option<buildBatch>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "StopBuildBatchCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartBuildBatch = {
  type t;
  type request = {
debugSessionEnabled: option<wrapperBoolean>,
  buildBatchConfigOverride: option<projectBuildBatchConfig>,
  imagePullCredentialsTypeOverride: option<imagePullCredentialsType>,
  registryCredentialOverride: option<registryCredential>,
  logsConfigOverride: option<logsConfig>,
  idempotencyToken: option<string_>,
  encryptionKeyOverride: option<nonEmptyString>,
  queuedTimeoutInMinutesOverride: option<timeOut>,
  buildTimeoutInMinutesOverride: option<timeOut>,
  privilegedModeOverride: option<wrapperBoolean>,
  serviceRoleOverride: option<nonEmptyString>,
  cacheOverride: option<projectCache>,
  certificateOverride: option<string_>,
  computeTypeOverride: option<computeType>,
  imageOverride: option<nonEmptyString>,
  environmentTypeOverride: option<environmentType>,
  reportBuildBatchStatusOverride: option<wrapperBoolean>,
  insecureSslOverride: option<wrapperBoolean>,
  buildspecOverride: option<string_>,
  gitSubmodulesConfigOverride: option<gitSubmodulesConfig>,
  gitCloneDepthOverride: option<gitCloneDepth>,
  sourceAuthOverride: option<sourceAuth>,
  sourceLocationOverride: option<string_>,
  sourceTypeOverride: option<sourceType>,
  environmentVariablesOverride: option<environmentVariables>,
  secondaryArtifactsOverride: option<projectArtifactsList>,
  artifactsOverride: option<projectArtifacts>,
  sourceVersion: option<string_>,
  secondarySourcesVersionOverride: option<projectSecondarySourceVersions>,
  secondarySourcesOverride: option<projectSources>,
  projectName: nonEmptyString
}
  type response = {
buildBatch: option<buildBatch>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "StartBuildBatchCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RetryBuildBatch = {
  type t;
  type request = {
retryType: option<retryBuildBatchType>,
  idempotencyToken: option<string_>,
  id: option<nonEmptyString>
}
  type response = {
buildBatch: option<buildBatch>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "RetryBuildBatchCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCuratedEnvironmentImages = {
  type t;
  type request = unit
  type response = {
platforms: option<environmentPlatforms>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListCuratedEnvironmentImagesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchGetBuildBatches = {
  type t;
  type request = {
ids: buildBatchIds
}
  type response = {
buildBatchesNotFound: option<buildBatchIds>,
  buildBatches: option<buildBatches>
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "BatchGetBuildBatchesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
