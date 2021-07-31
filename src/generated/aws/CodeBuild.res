type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type wrapperLong = float;
type wrapperInt = int;
type wrapperBoolean = bool;
type webhookFilterType = [@as("COMMIT_MESSAGE") #COMMIT_MESSAGE | @as("FILE_PATH") #FILE_PATH | @as("ACTOR_ACCOUNT_ID") #ACTOR_ACCOUNT_ID | @as("HEAD_REF") #HEAD_REF | @as("BASE_REF") #BASE_REF | @as("EVENT") #EVENT]
type webhookBuildType = [@as("BUILD_BATCH") #BUILD_BATCH | @as("BUILD") #BUILD]
type valueInput = string
type amazonawsTimestamp = Js.Date.t;
type timeOut = int;
type amazonawsString = string
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
type percentage = float;
type pageSize = int;
type nonNegativeInt = int;
type nonEmptyString = string
type logsConfigStatusType = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type languageType = [@as("PHP") #PHP | @as("BASE") #BASE | @as("DOTNET") #DOTNET | @as("ANDROID") #ANDROID | @as("DOCKER") #DOCKER | @as("GOLANG") #GOLANG | @as("RUBY") #RUBY | @as("NODE_JS") #NODE_JS | @as("PYTHON") #PYTHON | @as("JAVA") #JAVA]
type keyInput = string
type imagePullCredentialsType = [@as("SERVICE_ROLE") #SERVICE_ROLE | @as("CODEBUILD") #CODEBUILD]
type gitCloneDepth = int;
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
type amazonawsBoolean = bool;
type authType = [@as("PERSONAL_ACCESS_TOKEN") #PERSONAL_ACCESS_TOKEN | @as("BASIC_AUTH") #BASIC_AUTH | @as("OAUTH") #OAUTH]
type artifactsType = [@as("NO_ARTIFACTS") #NO_ARTIFACTS | @as("S3") #S3 | @as("CODEPIPELINE") #CODEPIPELINE]
type artifactPackaging = [@as("ZIP") #ZIP | @as("NONE") #NONE]
type artifactNamespace = [@as("BUILD_ID") #BUILD_ID | @as("NONE") #NONE]
type webhookFilter = {
@as("excludeMatchedPattern") excludeMatchedPattern: wrapperBoolean,
@as("pattern") pattern: option<amazonawsString>,
@as("type") type_: option<webhookFilterType>
}
type testCaseFilter = {
@as("keyword") keyword: amazonawsString,
@as("status") status: amazonawsString
}
type testCase = {
@as("expired") expired: amazonawsTimestamp,
@as("message") message: amazonawsString,
@as("durationInNanoSeconds") durationInNanoSeconds: wrapperLong,
@as("status") status: amazonawsString,
@as("name") name: amazonawsString,
@as("prefix") prefix: amazonawsString,
@as("testRawDataPath") testRawDataPath: amazonawsString,
@as("reportArn") reportArn: nonEmptyString
}
type tag = {
@as("value") value: valueInput,
@as("key") key: keyInput
}
type subnets = array<nonEmptyString>
type sourceCredentialsInfo = {
@as("authType") authType: authType,
@as("serverType") serverType: serverType,
@as("arn") arn: nonEmptyString
}
type sourceAuth = {
@as("resource") resource: amazonawsString,
@as("type") type_: option<sourceAuthType>
}
type securityGroupIds = array<nonEmptyString>
type s3ReportExportConfig = {
@as("encryptionDisabled") encryptionDisabled: wrapperBoolean,
@as("encryptionKey") encryptionKey: nonEmptyString,
@as("packaging") packaging: reportPackagingType,
@as("path") path: amazonawsString,
@as("bucketOwner") bucketOwner: amazonawsString,
@as("bucket") bucket: nonEmptyString
}
type s3LogsConfig = {
@as("bucketOwnerAccess") bucketOwnerAccess: bucketOwnerAccess,
@as("encryptionDisabled") encryptionDisabled: wrapperBoolean,
@as("location") location: amazonawsString,
@as("status") status: option<logsConfigStatusType>
}
type resolvedArtifact = {
@as("identifier") identifier: amazonawsString,
@as("location") location: amazonawsString,
@as("type") type_: artifactsType
}
type reportWithRawData = {
@as("data") data: amazonawsString,
@as("reportArn") reportArn: nonEmptyString
}
type reportStatusCounts = Js.Dict.t< wrapperInt>
type reportGroupTrendStats = {
@as("min") min: amazonawsString,
@as("max") max: amazonawsString,
@as("average") average: amazonawsString
}
type reportGroupArns = array<nonEmptyString>
type reportFilter = {
@as("status") status: reportStatusType
}
type reportArns = array<nonEmptyString>
type registryCredential = {
@as("credentialProvider") credentialProvider: option<credentialProviderType>,
@as("credential") credential: option<nonEmptyString>
}
type projectSourceVersion = {
@as("sourceVersion") sourceVersion: option<amazonawsString>,
@as("sourceIdentifier") sourceIdentifier: option<amazonawsString>
}
type projectNames = array<nonEmptyString>
type projectFileSystemLocation = {
@as("mountOptions") mountOptions: amazonawsString,
@as("identifier") identifier: amazonawsString,
@as("mountPoint") mountPoint: amazonawsString,
@as("location") location: amazonawsString,
@as("type") type_: fileSystemType
}
type projectCacheModes = array<cacheMode>
type projectBadge = {
@as("badgeRequestUrl") badgeRequestUrl: amazonawsString,
@as("badgeEnabled") badgeEnabled: amazonawsBoolean
}
type projectArtifacts = {
@as("bucketOwnerAccess") bucketOwnerAccess: bucketOwnerAccess,
@as("artifactIdentifier") artifactIdentifier: amazonawsString,
@as("encryptionDisabled") encryptionDisabled: wrapperBoolean,
@as("overrideArtifactName") overrideArtifactName: wrapperBoolean,
@as("packaging") packaging: artifactPackaging,
@as("name") name: amazonawsString,
@as("namespaceType") namespaceType: artifactNamespace,
@as("path") path: amazonawsString,
@as("location") location: amazonawsString,
@as("type") type_: option<artifactsType>
}
type projectArns = array<nonEmptyString>
type phaseContext = {
@as("message") message: amazonawsString,
@as("statusCode") statusCode: amazonawsString
}
type networkInterface = {
@as("networkInterfaceId") networkInterfaceId: nonEmptyString,
@as("subnetId") subnetId: nonEmptyString
}
type imageVersions = array<amazonawsString>
type identifiers = array<nonEmptyString>
type gitSubmodulesConfig = {
@as("fetchSubmodules") fetchSubmodules: option<wrapperBoolean>
}
type exportedEnvironmentVariable = {
@as("value") value: amazonawsString,
@as("name") name: nonEmptyString
}
type environmentVariable = {
@as("type") type_: environmentVariableType,
@as("value") value: option<amazonawsString>,
@as("name") name: option<nonEmptyString>
}
type debugSession = {
@as("sessionTarget") sessionTarget: nonEmptyString,
@as("sessionEnabled") sessionEnabled: wrapperBoolean
}
type computeTypesAllowed = array<nonEmptyString>
type codeCoverageReportSummary = {
@as("branchesMissed") branchesMissed: nonNegativeInt,
@as("branchesCovered") branchesCovered: nonNegativeInt,
@as("branchCoveragePercentage") branchCoveragePercentage: percentage,
@as("linesMissed") linesMissed: nonNegativeInt,
@as("linesCovered") linesCovered: nonNegativeInt,
@as("lineCoveragePercentage") lineCoveragePercentage: percentage
}
type codeCoverage = {
@as("expired") expired: amazonawsTimestamp,
@as("branchesMissed") branchesMissed: nonNegativeInt,
@as("branchesCovered") branchesCovered: nonNegativeInt,
@as("branchCoveragePercentage") branchCoveragePercentage: percentage,
@as("linesMissed") linesMissed: nonNegativeInt,
@as("linesCovered") linesCovered: nonNegativeInt,
@as("lineCoveragePercentage") lineCoveragePercentage: percentage,
@as("filePath") filePath: nonEmptyString,
@as("reportARN") reportARN: nonEmptyString,
@as("id") id: nonEmptyString
}
type cloudWatchLogsConfig = {
@as("streamName") streamName: amazonawsString,
@as("groupName") groupName: amazonawsString,
@as("status") status: option<logsConfigStatusType>
}
type buildStatusConfig = {
@as("targetUrl") targetUrl: amazonawsString,
@as("context") context: amazonawsString
}
type buildReportArns = array<amazonawsString>
type buildNotDeleted = {
@as("statusCode") statusCode: amazonawsString,
@as("id") id: nonEmptyString
}
type buildIds = array<nonEmptyString>
type buildBatchIds = array<nonEmptyString>
type buildBatchFilter = {
@as("status") status: statusType
}
type buildArtifacts = {
@as("bucketOwnerAccess") bucketOwnerAccess: bucketOwnerAccess,
@as("artifactIdentifier") artifactIdentifier: amazonawsString,
@as("encryptionDisabled") encryptionDisabled: wrapperBoolean,
@as("overrideArtifactName") overrideArtifactName: wrapperBoolean,
@as("md5sum") md5sum: amazonawsString,
@as("sha256sum") sha256sum: amazonawsString,
@as("location") location: amazonawsString
}
type vpcConfig = {
@as("securityGroupIds") securityGroupIds: securityGroupIds,
@as("subnets") subnets: subnets,
@as("vpcId") vpcId: nonEmptyString
}
type testReportSummary = {
@as("durationInNanoSeconds") durationInNanoSeconds: option<wrapperLong>,
@as("statusCounts") statusCounts: option<reportStatusCounts>,
@as("total") total: option<wrapperInt>
}
type testCases = array<testCase>
type tagList = array<tag>
type sourceCredentialsInfos = array<sourceCredentialsInfo>
type resolvedSecondaryArtifacts = array<resolvedArtifact>
type reportGroupTrendRawDataList = array<reportWithRawData>
type reportExportConfig = {
@as("s3Destination") s3Destination: s3ReportExportConfig,
@as("exportConfigType") exportConfigType: reportExportConfigType
}
type projectSource = {
@as("sourceIdentifier") sourceIdentifier: amazonawsString,
@as("insecureSsl") insecureSsl: wrapperBoolean,
@as("buildStatusConfig") buildStatusConfig: buildStatusConfig,
@as("reportBuildStatus") reportBuildStatus: wrapperBoolean,
@as("auth") auth: sourceAuth,
@as("buildspec") buildspec: amazonawsString,
@as("gitSubmodulesConfig") gitSubmodulesConfig: gitSubmodulesConfig,
@as("gitCloneDepth") gitCloneDepth: gitCloneDepth,
@as("location") location: amazonawsString,
@as("type") type_: option<sourceType>
}
type projectSecondarySourceVersions = array<projectSourceVersion>
type projectFileSystemLocations = array<projectFileSystemLocation>
type projectCache = {
@as("modes") modes: projectCacheModes,
@as("location") location: amazonawsString,
@as("type") type_: option<cacheType>
}
type projectArtifactsList = array<projectArtifacts>
type phaseContexts = array<phaseContext>
type logsLocation = {
@as("s3Logs") s3Logs: s3LogsConfig,
@as("cloudWatchLogs") cloudWatchLogs: cloudWatchLogsConfig,
@as("s3LogsArn") s3LogsArn: amazonawsString,
@as("cloudWatchLogsArn") cloudWatchLogsArn: amazonawsString,
@as("s3DeepLink") s3DeepLink: amazonawsString,
@as("deepLink") deepLink: amazonawsString,
@as("streamName") streamName: amazonawsString,
@as("groupName") groupName: amazonawsString
}
type logsConfig = {
@as("s3Logs") s3Logs: s3LogsConfig,
@as("cloudWatchLogs") cloudWatchLogs: cloudWatchLogsConfig
}
type filterGroup = array<webhookFilter>
type exportedEnvironmentVariables = array<exportedEnvironmentVariable>
type environmentVariables = array<environmentVariable>
type environmentImage = {
@as("versions") versions: imageVersions,
@as("description") description: amazonawsString,
@as("name") name: amazonawsString
}
type codeCoverages = array<codeCoverage>
type buildsNotDeleted = array<buildNotDeleted>
type buildArtifactsList = array<buildArtifacts>
type batchRestrictions = {
@as("computeTypesAllowed") computeTypesAllowed: computeTypesAllowed,
@as("maximumBuildsAllowed") maximumBuildsAllowed: wrapperInt
}
type reportGroup = {
@as("status") status: reportGroupStatusType,
@as("tags") tags: tagList,
@as("lastModified") lastModified: amazonawsTimestamp,
@as("created") created: amazonawsTimestamp,
@as("exportConfig") exportConfig: reportExportConfig,
@as("type") type_: reportType,
@as("name") name: reportGroupName,
@as("arn") arn: nonEmptyString
}
type report = {
@as("codeCoverageSummary") codeCoverageSummary: codeCoverageReportSummary,
@as("testSummary") testSummary: testReportSummary,
@as("truncated") truncated: wrapperBoolean,
@as("exportConfig") exportConfig: reportExportConfig,
@as("expired") expired: amazonawsTimestamp,
@as("created") created: amazonawsTimestamp,
@as("status") status: reportStatusType,
@as("executionId") executionId: amazonawsString,
@as("reportGroupArn") reportGroupArn: nonEmptyString,
@as("name") name: amazonawsString,
@as("type") type_: reportType,
@as("arn") arn: nonEmptyString
}
type projectSources = array<projectSource>
type projectEnvironment = {
@as("imagePullCredentialsType") imagePullCredentialsType: imagePullCredentialsType,
@as("registryCredential") registryCredential: registryCredential,
@as("certificate") certificate: amazonawsString,
@as("privilegedMode") privilegedMode: wrapperBoolean,
@as("environmentVariables") environmentVariables: environmentVariables,
@as("computeType") computeType: option<computeType>,
@as("image") image: option<nonEmptyString>,
@as("type") type_: option<environmentType>
}
type projectBuildBatchConfig = {
@as("timeoutInMins") timeoutInMins: wrapperInt,
@as("restrictions") restrictions: batchRestrictions,
@as("combineArtifacts") combineArtifacts: wrapperBoolean,
@as("serviceRole") serviceRole: nonEmptyString
}
type filterGroups = array<filterGroup>
type environmentImages = array<environmentImage>
type buildSummary = {
@as("secondaryArtifacts") secondaryArtifacts: resolvedSecondaryArtifacts,
@as("primaryArtifact") primaryArtifact: resolvedArtifact,
@as("buildStatus") buildStatus: statusType,
@as("requestedOn") requestedOn: amazonawsTimestamp,
@as("arn") arn: amazonawsString
}
type buildPhase = {
@as("contexts") contexts: phaseContexts,
@as("durationInSeconds") durationInSeconds: wrapperLong,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("phaseStatus") phaseStatus: statusType,
@as("phaseType") phaseType: buildPhaseType
}
type buildBatchPhase = {
@as("contexts") contexts: phaseContexts,
@as("durationInSeconds") durationInSeconds: wrapperLong,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("phaseStatus") phaseStatus: statusType,
@as("phaseType") phaseType: buildBatchPhaseType
}
type webhook = {
@as("lastModifiedSecret") lastModifiedSecret: amazonawsTimestamp,
@as("buildType") buildType: webhookBuildType,
@as("filterGroups") filterGroups: filterGroups,
@as("branchFilter") branchFilter: amazonawsString,
@as("secret") secret: nonEmptyString,
@as("payloadUrl") payloadUrl: nonEmptyString,
@as("url") url: nonEmptyString
}
type reports = array<report>
type reportGroups = array<reportGroup>
type environmentLanguage = {
@as("images") images: environmentImages,
@as("language") language: languageType
}
type buildSummaries = array<buildSummary>
type buildPhases = array<buildPhase>
type buildBatchPhases = array<buildBatchPhase>
type project = {
@as("concurrentBuildLimit") concurrentBuildLimit: wrapperInt,
@as("buildBatchConfig") buildBatchConfig: projectBuildBatchConfig,
@as("fileSystemLocations") fileSystemLocations: projectFileSystemLocations,
@as("logsConfig") logsConfig: logsConfig,
@as("badge") badge: projectBadge,
@as("vpcConfig") vpcConfig: vpcConfig,
@as("webhook") webhook: webhook,
@as("lastModified") lastModified: amazonawsTimestamp,
@as("created") created: amazonawsTimestamp,
@as("tags") tags: tagList,
@as("encryptionKey") encryptionKey: nonEmptyString,
@as("queuedTimeoutInMinutes") queuedTimeoutInMinutes: timeOut,
@as("timeoutInMinutes") timeoutInMinutes: timeOut,
@as("serviceRole") serviceRole: nonEmptyString,
@as("environment") environment: projectEnvironment,
@as("cache") cache: projectCache,
@as("secondaryArtifacts") secondaryArtifacts: projectArtifactsList,
@as("artifacts") artifacts: projectArtifacts,
@as("secondarySourceVersions") secondarySourceVersions: projectSecondarySourceVersions,
@as("sourceVersion") sourceVersion: amazonawsString,
@as("secondarySources") secondarySources: projectSources,
@as("source") source: projectSource,
@as("description") description: projectDescription,
@as("arn") arn: amazonawsString,
@as("name") name: projectName
}
type environmentLanguages = array<environmentLanguage>
type buildGroup = {
@as("priorBuildSummaryList") priorBuildSummaryList: buildSummaries,
@as("currentBuildSummary") currentBuildSummary: buildSummary,
@as("ignoreFailure") ignoreFailure: amazonawsBoolean,
@as("dependsOn") dependsOn: identifiers,
@as("identifier") identifier: amazonawsString
}
type build = {
@as("buildBatchArn") buildBatchArn: amazonawsString,
@as("debugSession") debugSession: debugSession,
@as("fileSystemLocations") fileSystemLocations: projectFileSystemLocations,
@as("reportArns") reportArns: buildReportArns,
@as("exportedEnvironmentVariables") exportedEnvironmentVariables: exportedEnvironmentVariables,
@as("encryptionKey") encryptionKey: nonEmptyString,
@as("networkInterface") networkInterface: networkInterface,
@as("vpcConfig") vpcConfig: vpcConfig,
@as("initiator") initiator: amazonawsString,
@as("buildComplete") buildComplete: amazonawsBoolean,
@as("queuedTimeoutInMinutes") queuedTimeoutInMinutes: wrapperInt,
@as("timeoutInMinutes") timeoutInMinutes: wrapperInt,
@as("logs") logs: logsLocation,
@as("serviceRole") serviceRole: nonEmptyString,
@as("environment") environment: projectEnvironment,
@as("cache") cache: projectCache,
@as("secondaryArtifacts") secondaryArtifacts: buildArtifactsList,
@as("artifacts") artifacts: buildArtifacts,
@as("secondarySourceVersions") secondarySourceVersions: projectSecondarySourceVersions,
@as("secondarySources") secondarySources: projectSources,
@as("source") source: projectSource,
@as("phases") phases: buildPhases,
@as("projectName") projectName: nonEmptyString,
@as("resolvedSourceVersion") resolvedSourceVersion: nonEmptyString,
@as("sourceVersion") sourceVersion: nonEmptyString,
@as("buildStatus") buildStatus: statusType,
@as("currentPhase") currentPhase: amazonawsString,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("buildNumber") buildNumber: wrapperLong,
@as("arn") arn: nonEmptyString,
@as("id") id: nonEmptyString
}
type projects = array<project>
type environmentPlatform = {
@as("languages") languages: environmentLanguages,
@as("platform") platform: platformType
}
type builds = array<build>
type buildGroups = array<buildGroup>
type environmentPlatforms = array<environmentPlatform>
type buildBatch = {
@as("debugSessionEnabled") debugSessionEnabled: wrapperBoolean,
@as("buildGroups") buildGroups: buildGroups,
@as("buildBatchConfig") buildBatchConfig: projectBuildBatchConfig,
@as("fileSystemLocations") fileSystemLocations: projectFileSystemLocations,
@as("buildBatchNumber") buildBatchNumber: wrapperLong,
@as("encryptionKey") encryptionKey: nonEmptyString,
@as("vpcConfig") vpcConfig: vpcConfig,
@as("initiator") initiator: amazonawsString,
@as("complete") complete: amazonawsBoolean,
@as("queuedTimeoutInMinutes") queuedTimeoutInMinutes: wrapperInt,
@as("buildTimeoutInMinutes") buildTimeoutInMinutes: wrapperInt,
@as("logConfig") logConfig: logsConfig,
@as("serviceRole") serviceRole: nonEmptyString,
@as("environment") environment: projectEnvironment,
@as("cache") cache: projectCache,
@as("secondaryArtifacts") secondaryArtifacts: buildArtifactsList,
@as("artifacts") artifacts: buildArtifacts,
@as("secondarySourceVersions") secondarySourceVersions: projectSecondarySourceVersions,
@as("secondarySources") secondarySources: projectSources,
@as("source") source: projectSource,
@as("phases") phases: buildBatchPhases,
@as("projectName") projectName: nonEmptyString,
@as("resolvedSourceVersion") resolvedSourceVersion: nonEmptyString,
@as("sourceVersion") sourceVersion: nonEmptyString,
@as("buildBatchStatus") buildBatchStatus: statusType,
@as("currentPhase") currentPhase: amazonawsString,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("arn") arn: nonEmptyString,
@as("id") id: nonEmptyString
}
type buildBatches = array<buildBatch>
type clientType;
@module("@aws-sdk/client-codebuild") @new external createClient: unit => clientType = "CodeBuildClient";
module PutResourcePolicy = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<nonEmptyString>,
@as("policy") policy: option<nonEmptyString>
}
  type response = {
@as("resourceArn") resourceArn: nonEmptyString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "PutResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InvalidateProjectCache = {
  type t;
  type request = {
@as("projectName") projectName: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "InvalidateProjectCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportSourceCredentials = {
  type t;
  type request = {
@as("shouldOverwrite") shouldOverwrite: wrapperBoolean,
@as("authType") authType: option<authType>,
@as("serverType") serverType: option<serverType>,
@as("token") token: option<sensitiveNonEmptyString>,
@as("username") username: nonEmptyString
}
  type response = {
@as("arn") arn: nonEmptyString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ImportSourceCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourcePolicy = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<nonEmptyString>
}
  type response = {
@as("policy") policy: nonEmptyString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "GetResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWebhook = {
  type t;
  type request = {
@as("projectName") projectName: option<projectName>
}
  type response = unit
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteWebhookCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSourceCredentials = {
  type t;
  type request = {
@as("arn") arn: option<nonEmptyString>
}
  type response = {
@as("arn") arn: nonEmptyString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteSourceCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResourcePolicy = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReportGroup = {
  type t;
  type request = {
@as("deleteReports") deleteReports: amazonawsBoolean,
@as("arn") arn: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteReportGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReport = {
  type t;
  type request = {
@as("arn") arn: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
@as("name") name: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSharedReportGroups = {
  type t;
  type request = {
@as("maxResults") maxResults: pageSize,
@as("nextToken") nextToken: amazonawsString,
@as("sortBy") sortBy: sharedResourceSortByType,
@as("sortOrder") sortOrder: sortOrderType
}
  type response = {
@as("reportGroups") reportGroups: reportGroupArns,
@as("nextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListSharedReportGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSharedProjects = {
  type t;
  type request = {
@as("nextToken") nextToken: nonEmptyString,
@as("maxResults") maxResults: pageSize,
@as("sortOrder") sortOrder: sortOrderType,
@as("sortBy") sortBy: sharedResourceSortByType
}
  type response = {
@as("projects") projects: projectArns,
@as("nextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListSharedProjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReportsForReportGroup = {
  type t;
  type request = {
@as("filter") filter: reportFilter,
@as("maxResults") maxResults: pageSize,
@as("sortOrder") sortOrder: sortOrderType,
@as("nextToken") nextToken: amazonawsString,
@as("reportGroupArn") reportGroupArn: option<amazonawsString>
}
  type response = {
@as("reports") reports: reportArns,
@as("nextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListReportsForReportGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReports = {
  type t;
  type request = {
@as("filter") filter: reportFilter,
@as("maxResults") maxResults: pageSize,
@as("nextToken") nextToken: amazonawsString,
@as("sortOrder") sortOrder: sortOrderType
}
  type response = {
@as("reports") reports: reportArns,
@as("nextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListReportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReportGroups = {
  type t;
  type request = {
@as("maxResults") maxResults: pageSize,
@as("nextToken") nextToken: amazonawsString,
@as("sortBy") sortBy: reportGroupSortByType,
@as("sortOrder") sortOrder: sortOrderType
}
  type response = {
@as("reportGroups") reportGroups: reportGroupArns,
@as("nextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListReportGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProjects = {
  type t;
  type request = {
@as("nextToken") nextToken: nonEmptyString,
@as("sortOrder") sortOrder: sortOrderType,
@as("sortBy") sortBy: projectSortByType
}
  type response = {
@as("projects") projects: projectNames,
@as("nextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListProjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBuildsForProject = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("sortOrder") sortOrder: sortOrderType,
@as("projectName") projectName: option<nonEmptyString>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("ids") ids: buildIds
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListBuildsForProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBuilds = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("sortOrder") sortOrder: sortOrderType
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("ids") ids: buildIds
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListBuildsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBuildBatchesForProject = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("sortOrder") sortOrder: sortOrderType,
@as("maxResults") maxResults: pageSize,
@as("filter") filter: buildBatchFilter,
@as("projectName") projectName: nonEmptyString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("ids") ids: buildBatchIds
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListBuildBatchesForProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBuildBatches = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("sortOrder") sortOrder: sortOrderType,
@as("maxResults") maxResults: pageSize,
@as("filter") filter: buildBatchFilter
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("ids") ids: buildBatchIds
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListBuildBatchesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSourceCredentials = {
  type t;
  type request = unit
  type response = {
@as("sourceCredentialsInfos") sourceCredentialsInfos: sourceCredentialsInfos
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListSourceCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetReportGroupTrend = {
  type t;
  type request = {
@as("trendField") trendField: option<reportGroupTrendFieldType>,
@as("numOfReports") numOfReports: pageSize,
@as("reportGroupArn") reportGroupArn: option<nonEmptyString>
}
  type response = {
@as("rawData") rawData: reportGroupTrendRawDataList,
@as("stats") stats: reportGroupTrendStats
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "GetReportGroupTrendCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTestCases = {
  type t;
  type request = {
@as("filter") filter: testCaseFilter,
@as("maxResults") maxResults: pageSize,
@as("nextToken") nextToken: amazonawsString,
@as("reportArn") reportArn: option<amazonawsString>
}
  type response = {
@as("testCases") testCases: testCases,
@as("nextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DescribeTestCasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCodeCoverages = {
  type t;
  type request = {
@as("maxLineCoveragePercentage") maxLineCoveragePercentage: percentage,
@as("minLineCoveragePercentage") minLineCoveragePercentage: percentage,
@as("sortBy") sortBy: reportCodeCoverageSortByType,
@as("sortOrder") sortOrder: sortOrderType,
@as("maxResults") maxResults: pageSize,
@as("nextToken") nextToken: amazonawsString,
@as("reportArn") reportArn: option<nonEmptyString>
}
  type response = {
@as("codeCoverages") codeCoverages: codeCoverages,
@as("nextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DescribeCodeCoveragesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBuildBatch = {
  type t;
  type request = {
@as("id") id: option<nonEmptyString>
}
  type response = {
@as("buildsNotDeleted") buildsNotDeleted: buildsNotDeleted,
@as("buildsDeleted") buildsDeleted: buildIds,
@as("statusCode") statusCode: amazonawsString
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "DeleteBuildBatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteBuilds = {
  type t;
  type request = {
@as("ids") ids: option<buildIds>
}
  type response = {
@as("buildsNotDeleted") buildsNotDeleted: buildsNotDeleted,
@as("buildsDeleted") buildsDeleted: buildIds
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "BatchDeleteBuildsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateReportGroup = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("exportConfig") exportConfig: reportExportConfig,
@as("arn") arn: option<nonEmptyString>
}
  type response = {
@as("reportGroup") reportGroup: reportGroup
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "UpdateReportGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReportGroup = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("exportConfig") exportConfig: option<reportExportConfig>,
@as("type") type_: option<reportType>,
@as("name") name: option<reportGroupName>
}
  type response = {
@as("reportGroup") reportGroup: reportGroup
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "CreateReportGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateWebhook = {
  type t;
  type request = {
@as("buildType") buildType: webhookBuildType,
@as("filterGroups") filterGroups: filterGroups,
@as("rotateSecret") rotateSecret: amazonawsBoolean,
@as("branchFilter") branchFilter: amazonawsString,
@as("projectName") projectName: option<projectName>
}
  type response = {
@as("webhook") webhook: webhook
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "UpdateWebhookCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWebhook = {
  type t;
  type request = {
@as("buildType") buildType: webhookBuildType,
@as("filterGroups") filterGroups: filterGroups,
@as("branchFilter") branchFilter: amazonawsString,
@as("projectName") projectName: option<projectName>
}
  type response = {
@as("webhook") webhook: webhook
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "CreateWebhookCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetReports = {
  type t;
  type request = {
@as("reportArns") reportArns: option<reportArns>
}
  type response = {
@as("reportsNotFound") reportsNotFound: reportArns,
@as("reports") reports: reports
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "BatchGetReportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetReportGroups = {
  type t;
  type request = {
@as("reportGroupArns") reportGroupArns: option<reportGroupArns>
}
  type response = {
@as("reportGroupsNotFound") reportGroupsNotFound: reportGroupArns,
@as("reportGroups") reportGroups: reportGroups
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "BatchGetReportGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProject = {
  type t;
  type request = {
@as("concurrentBuildLimit") concurrentBuildLimit: wrapperInt,
@as("buildBatchConfig") buildBatchConfig: projectBuildBatchConfig,
@as("fileSystemLocations") fileSystemLocations: projectFileSystemLocations,
@as("logsConfig") logsConfig: logsConfig,
@as("badgeEnabled") badgeEnabled: wrapperBoolean,
@as("vpcConfig") vpcConfig: vpcConfig,
@as("tags") tags: tagList,
@as("encryptionKey") encryptionKey: nonEmptyString,
@as("queuedTimeoutInMinutes") queuedTimeoutInMinutes: timeOut,
@as("timeoutInMinutes") timeoutInMinutes: timeOut,
@as("serviceRole") serviceRole: nonEmptyString,
@as("environment") environment: projectEnvironment,
@as("cache") cache: projectCache,
@as("secondaryArtifacts") secondaryArtifacts: projectArtifactsList,
@as("artifacts") artifacts: projectArtifacts,
@as("secondarySourceVersions") secondarySourceVersions: projectSecondarySourceVersions,
@as("sourceVersion") sourceVersion: amazonawsString,
@as("secondarySources") secondarySources: projectSources,
@as("source") source: projectSource,
@as("description") description: projectDescription,
@as("name") name: option<nonEmptyString>
}
  type response = {
@as("project") project: project
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "UpdateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopBuild = {
  type t;
  type request = {
@as("id") id: option<nonEmptyString>
}
  type response = {
@as("build") build: build
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "StopBuildCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartBuild = {
  type t;
  type request = {
@as("debugSessionEnabled") debugSessionEnabled: wrapperBoolean,
@as("imagePullCredentialsTypeOverride") imagePullCredentialsTypeOverride: imagePullCredentialsType,
@as("registryCredentialOverride") registryCredentialOverride: registryCredential,
@as("logsConfigOverride") logsConfigOverride: logsConfig,
@as("idempotencyToken") idempotencyToken: amazonawsString,
@as("encryptionKeyOverride") encryptionKeyOverride: nonEmptyString,
@as("queuedTimeoutInMinutesOverride") queuedTimeoutInMinutesOverride: timeOut,
@as("timeoutInMinutesOverride") timeoutInMinutesOverride: timeOut,
@as("privilegedModeOverride") privilegedModeOverride: wrapperBoolean,
@as("serviceRoleOverride") serviceRoleOverride: nonEmptyString,
@as("cacheOverride") cacheOverride: projectCache,
@as("certificateOverride") certificateOverride: amazonawsString,
@as("computeTypeOverride") computeTypeOverride: computeType,
@as("imageOverride") imageOverride: nonEmptyString,
@as("environmentTypeOverride") environmentTypeOverride: environmentType,
@as("buildStatusConfigOverride") buildStatusConfigOverride: buildStatusConfig,
@as("reportBuildStatusOverride") reportBuildStatusOverride: wrapperBoolean,
@as("insecureSslOverride") insecureSslOverride: wrapperBoolean,
@as("buildspecOverride") buildspecOverride: amazonawsString,
@as("gitSubmodulesConfigOverride") gitSubmodulesConfigOverride: gitSubmodulesConfig,
@as("gitCloneDepthOverride") gitCloneDepthOverride: gitCloneDepth,
@as("sourceAuthOverride") sourceAuthOverride: sourceAuth,
@as("sourceLocationOverride") sourceLocationOverride: amazonawsString,
@as("sourceTypeOverride") sourceTypeOverride: sourceType,
@as("environmentVariablesOverride") environmentVariablesOverride: environmentVariables,
@as("secondaryArtifactsOverride") secondaryArtifactsOverride: projectArtifactsList,
@as("artifactsOverride") artifactsOverride: projectArtifacts,
@as("sourceVersion") sourceVersion: amazonawsString,
@as("secondarySourcesVersionOverride") secondarySourcesVersionOverride: projectSecondarySourceVersions,
@as("secondarySourcesOverride") secondarySourcesOverride: projectSources,
@as("projectName") projectName: option<nonEmptyString>
}
  type response = {
@as("build") build: build
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "StartBuildCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RetryBuild = {
  type t;
  type request = {
@as("idempotencyToken") idempotencyToken: amazonawsString,
@as("id") id: nonEmptyString
}
  type response = {
@as("build") build: build
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "RetryBuildCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
@as("concurrentBuildLimit") concurrentBuildLimit: wrapperInt,
@as("buildBatchConfig") buildBatchConfig: projectBuildBatchConfig,
@as("fileSystemLocations") fileSystemLocations: projectFileSystemLocations,
@as("logsConfig") logsConfig: logsConfig,
@as("badgeEnabled") badgeEnabled: wrapperBoolean,
@as("vpcConfig") vpcConfig: vpcConfig,
@as("tags") tags: tagList,
@as("encryptionKey") encryptionKey: nonEmptyString,
@as("queuedTimeoutInMinutes") queuedTimeoutInMinutes: timeOut,
@as("timeoutInMinutes") timeoutInMinutes: timeOut,
@as("serviceRole") serviceRole: option<nonEmptyString>,
@as("environment") environment: option<projectEnvironment>,
@as("cache") cache: projectCache,
@as("secondaryArtifacts") secondaryArtifacts: projectArtifactsList,
@as("artifacts") artifacts: option<projectArtifacts>,
@as("secondarySourceVersions") secondarySourceVersions: projectSecondarySourceVersions,
@as("sourceVersion") sourceVersion: amazonawsString,
@as("secondarySources") secondarySources: projectSources,
@as("source") source: option<projectSource>,
@as("description") description: projectDescription,
@as("name") name: option<projectName>
}
  type response = {
@as("project") project: project
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "CreateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetProjects = {
  type t;
  type request = {
@as("names") names: option<projectNames>
}
  type response = {
@as("projectsNotFound") projectsNotFound: projectNames,
@as("projects") projects: projects
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "BatchGetProjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetBuilds = {
  type t;
  type request = {
@as("ids") ids: option<buildIds>
}
  type response = {
@as("buildsNotFound") buildsNotFound: buildIds,
@as("builds") builds: builds
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "BatchGetBuildsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopBuildBatch = {
  type t;
  type request = {
@as("id") id: option<nonEmptyString>
}
  type response = {
@as("buildBatch") buildBatch: buildBatch
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "StopBuildBatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartBuildBatch = {
  type t;
  type request = {
@as("debugSessionEnabled") debugSessionEnabled: wrapperBoolean,
@as("buildBatchConfigOverride") buildBatchConfigOverride: projectBuildBatchConfig,
@as("imagePullCredentialsTypeOverride") imagePullCredentialsTypeOverride: imagePullCredentialsType,
@as("registryCredentialOverride") registryCredentialOverride: registryCredential,
@as("logsConfigOverride") logsConfigOverride: logsConfig,
@as("idempotencyToken") idempotencyToken: amazonawsString,
@as("encryptionKeyOverride") encryptionKeyOverride: nonEmptyString,
@as("queuedTimeoutInMinutesOverride") queuedTimeoutInMinutesOverride: timeOut,
@as("buildTimeoutInMinutesOverride") buildTimeoutInMinutesOverride: timeOut,
@as("privilegedModeOverride") privilegedModeOverride: wrapperBoolean,
@as("serviceRoleOverride") serviceRoleOverride: nonEmptyString,
@as("cacheOverride") cacheOverride: projectCache,
@as("certificateOverride") certificateOverride: amazonawsString,
@as("computeTypeOverride") computeTypeOverride: computeType,
@as("imageOverride") imageOverride: nonEmptyString,
@as("environmentTypeOverride") environmentTypeOverride: environmentType,
@as("reportBuildBatchStatusOverride") reportBuildBatchStatusOverride: wrapperBoolean,
@as("insecureSslOverride") insecureSslOverride: wrapperBoolean,
@as("buildspecOverride") buildspecOverride: amazonawsString,
@as("gitSubmodulesConfigOverride") gitSubmodulesConfigOverride: gitSubmodulesConfig,
@as("gitCloneDepthOverride") gitCloneDepthOverride: gitCloneDepth,
@as("sourceAuthOverride") sourceAuthOverride: sourceAuth,
@as("sourceLocationOverride") sourceLocationOverride: amazonawsString,
@as("sourceTypeOverride") sourceTypeOverride: sourceType,
@as("environmentVariablesOverride") environmentVariablesOverride: environmentVariables,
@as("secondaryArtifactsOverride") secondaryArtifactsOverride: projectArtifactsList,
@as("artifactsOverride") artifactsOverride: projectArtifacts,
@as("sourceVersion") sourceVersion: amazonawsString,
@as("secondarySourcesVersionOverride") secondarySourcesVersionOverride: projectSecondarySourceVersions,
@as("secondarySourcesOverride") secondarySourcesOverride: projectSources,
@as("projectName") projectName: option<nonEmptyString>
}
  type response = {
@as("buildBatch") buildBatch: buildBatch
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "StartBuildBatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RetryBuildBatch = {
  type t;
  type request = {
@as("retryType") retryType: retryBuildBatchType,
@as("idempotencyToken") idempotencyToken: amazonawsString,
@as("id") id: nonEmptyString
}
  type response = {
@as("buildBatch") buildBatch: buildBatch
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "RetryBuildBatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCuratedEnvironmentImages = {
  type t;
  type request = unit
  type response = {
@as("platforms") platforms: environmentPlatforms
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "ListCuratedEnvironmentImagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetBuildBatches = {
  type t;
  type request = {
@as("ids") ids: option<buildBatchIds>
}
  type response = {
@as("buildBatchesNotFound") buildBatchesNotFound: buildBatchIds,
@as("buildBatches") buildBatches: buildBatches
}
  @module("@aws-sdk/client-codebuild") @new external new_: (request) => t = "BatchGetBuildBatchesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
