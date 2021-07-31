type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type errorMessage = string
type worldGenerationJobStatus = [@as("Canceled") #Canceled | @as("Canceling") #Canceling | @as("PartialFailed") #PartialFailed | @as("Failed") #Failed | @as("Completed") #Completed | @as("Running") #Running | @as("Pending") #Pending]
type worldGenerationJobErrorCode = [@as("AllWorldGenerationFailed") #AllWorldGenerationFailed | @as("InvalidInput") #InvalidInput | @as("RequestThrottled") #RequestThrottled | @as("ResourceNotFound") #ResourceNotFound | @as("LimitExceeded") #LimitExceeded | @as("InternalServiceError") #InternalServiceError]
type worldExportJobStatus = [@as("Canceled") #Canceled | @as("Canceling") #Canceling | @as("Failed") #Failed | @as("Completed") #Completed | @as("Running") #Running | @as("Pending") #Pending]
type worldExportJobErrorCode = [@as("AccessDenied") #AccessDenied | @as("InvalidInput") #InvalidInput | @as("RequestThrottled") #RequestThrottled | @as("ResourceNotFound") #ResourceNotFound | @as("LimitExceeded") #LimitExceeded | @as("InternalServiceError") #InternalServiceError]
type versionQualifier = string
type version = string
type uploadBehavior = [@as("UPLOAD_ROLLING_AUTO_REMOVE") #UPLOAD_ROLLING_AUTO_REMOVE | @as("UPLOAD_ON_TERMINATE") #UPLOAD_ON_TERMINATE]
type unrestrictedCommand = string
type templateName = string
type tagValue = string
type tagKey = string
type simulationUnit = int;
type simulationTimeMillis = float;
type simulationSoftwareSuiteVersionType = string
type simulationSoftwareSuiteType = [@as("RosbagPlay") #RosbagPlay | @as("Gazebo") #Gazebo]
type simulationJobStatus = [@as("Canceled") #Canceled | @as("Terminated") #Terminated | @as("Terminating") #Terminating | @as("RunningFailed") #RunningFailed | @as("Failed") #Failed | @as("Completed") #Completed | @as("Restarting") #Restarting | @as("Running") #Running | @as("Preparing") #Preparing | @as("Pending") #Pending]
type simulationJobErrorCode = [@as("UploadContentMismatchError") #UploadContentMismatchError | @as("WrongRegionSimulationApplication") #WrongRegionSimulationApplication | @as("WrongRegionRobotApplication") #WrongRegionRobotApplication | @as("WrongRegionS3Output") #WrongRegionS3Output | @as("WrongRegionS3Bucket") #WrongRegionS3Bucket | @as("InvalidInput") #InvalidInput | @as("BatchCanceled") #BatchCanceled | @as("BatchTimedOut") #BatchTimedOut | @as("RequestThrottled") #RequestThrottled | @as("ResourceNotFound") #ResourceNotFound | @as("SimulationApplicationVersionMismatchedEtag") #SimulationApplicationVersionMismatchedEtag | @as("RobotApplicationVersionMismatchedEtag") #RobotApplicationVersionMismatchedEtag | @as("MismatchedEtag") #MismatchedEtag | @as("LimitExceeded") #LimitExceeded | @as("ThrottlingError") #ThrottlingError | @as("InvalidS3Resource") #InvalidS3Resource | @as("InvalidBundleSimulationApplication") #InvalidBundleSimulationApplication | @as("InvalidBundleRobotApplication") #InvalidBundleRobotApplication | @as("BadPermissionsUserCredentials") #BadPermissionsUserCredentials | @as("ENILimitExceeded") #ENILimitExceeded | @as("SubnetIpLimitExceeded") #SubnetIpLimitExceeded | @as("BadPermissionsCloudwatchLogs") #BadPermissionsCloudwatchLogs | @as("BadPermissionsS3Output") #BadPermissionsS3Output | @as("BadPermissionsS3Object") #BadPermissionsS3Object | @as("BadPermissionsSimulationApplication") #BadPermissionsSimulationApplication | @as("BadPermissionsRobotApplication") #BadPermissionsRobotApplication | @as("SimulationApplicationHealthCheckFailure") #SimulationApplicationHealthCheckFailure | @as("RobotApplicationHealthCheckFailure") #RobotApplicationHealthCheckFailure | @as("SimulationApplicationCrash") #SimulationApplicationCrash | @as("RobotApplicationCrash") #RobotApplicationCrash | @as("InternalServiceError") #InternalServiceError]
type simulationJobBatchStatus = [@as("TimedOut") #TimedOut | @as("TimingOut") #TimingOut | @as("Completing") #Completing | @as("Canceling") #Canceling | @as("Canceled") #Canceled | @as("Completed") #Completed | @as("Failed") #Failed | @as("InProgress") #InProgress | @as("Pending") #Pending]
type simulationJobBatchErrorCode = [@as("InternalServiceError") #InternalServiceError]
type s3Key = string
type s3Etag = string
type s3Bucket = string
type robotStatus = [@as("NoResponse") #NoResponse | @as("InSync") #InSync | @as("Failed") #Failed | @as("Deploying") #Deploying | @as("PendingNewDeployment") #PendingNewDeployment | @as("Registered") #Registered | @as("Available") #Available]
type robotSoftwareSuiteVersionType = [@as("Foxy") #Foxy | @as("Dashing") #Dashing | @as("Melodic") #Melodic | @as("Kinetic") #Kinetic]
type robotSoftwareSuiteType = [@as("ROS2") #ROS2 | @as("ROS") #ROS]
type robotDeploymentStep = [@as("Finished") #Finished | @as("ExecutingPostLaunch") #ExecutingPostLaunch | @as("Launching") #Launching | @as("ExecutingPreLaunch") #ExecutingPreLaunch | @as("ExecutingDownloadCondition") #ExecutingDownloadCondition | @as("DownloadingExtracting") #DownloadingExtracting | @as("Validating") #Validating]
type revisionId = string
type renderingEngineVersionType = string
type renderingEngineType = [@as("OGRE") #OGRE]
type port = int;
type percentage = int;
type percentDone = float;
type path = string
type paginationToken = string
type nonSystemPort = int;
type nonEmptyString = string
type name = string
type maxResults = int;
type maxConcurrency = int;
type lastUpdatedAt = Js.Date.t;
type lastStartedAt = Js.Date.t;
type json = string
type jobDuration = float;
type interiorCountPerFloorplan = int;
type amazonawsInteger = int;
type id = string
type iamRole = string
type genericString = string
type genericInteger = int;
type floorplanCount = int;
type failureBehavior = [@as("Continue") #Continue | @as("Fail") #Fail]
type failedAt = Js.Date.t;
type exitBehavior = [@as("RESTART") #RESTART | @as("FAIL") #FAIL]
type environmentVariableValue = string
type environmentVariableKey = string
type deploymentVersion = string
type deploymentTimeout = float;
type deploymentStatus = [@as("Canceled") #Canceled | @as("Succeeded") #Succeeded | @as("Failed") #Failed | @as("InProgress") #InProgress | @as("Preparing") #Preparing | @as("Pending") #Pending]
type deploymentJobErrorCode = [@as("FleetDeploymentTimeout") #FleetDeploymentTimeout | @as("DeploymentFleetDoesNotExist") #DeploymentFleetDoesNotExist | @as("RobotApplicationDoesNotExist") #RobotApplicationDoesNotExist | @as("InternalServerError") #InternalServerError | @as("BadLambdaAssociated") #BadLambdaAssociated | @as("DownloadConditionFailed") #DownloadConditionFailed | @as("BadPermissionError") #BadPermissionError | @as("PostLaunchFileFailure") #PostLaunchFileFailure | @as("PreLaunchFileFailure") #PreLaunchFileFailure | @as("ExtractingBundleFailure") #ExtractingBundleFailure | @as("LambdaDeleted") #LambdaDeleted | @as("GreengrassGroupVersionDoesNotExist") #GreengrassGroupVersionDoesNotExist | @as("MissingRobotDeploymentResource") #MissingRobotDeploymentResource | @as("MissingRobotApplicationArchitecture") #MissingRobotApplicationArchitecture | @as("MissingRobotArchitecture") #MissingRobotArchitecture | @as("InvalidGreengrassGroup") #InvalidGreengrassGroup | @as("GreengrassDeploymentFailed") #GreengrassDeploymentFailed | @as("RobotAgentConnectionTimeout") #RobotAgentConnectionTimeout | @as("RobotDeploymentNoResponse") #RobotDeploymentNoResponse | @as("RobotDeploymentAborted") #RobotDeploymentAborted | @as("FailureThresholdBreached") #FailureThresholdBreached | @as("EtagMismatch") #EtagMismatch | @as("EnvironmentSetupError") #EnvironmentSetupError | @as("ResourceNotFound") #ResourceNotFound]
type createdAt = Js.Date.t;
type command = string
type clientRequestToken = string
type boxedBoolean = bool;
type amazonawsBoolean = bool;
type batchTimeoutInSeconds = float;
type arn = string
type architecture = [@as("ARMHF") #ARMHF | @as("ARM64") #ARM64 | @as("X86_64") #X86_64]
type worldSummary = {
@as("template") template: arn,
@as("generationJob") generationJob: arn,
@as("createdAt") createdAt: createdAt,
@as("arn") arn: arn
}
type worldFailure = {
@as("failureCount") failureCount: amazonawsInteger,
@as("sampleFailureReason") sampleFailureReason: genericString,
@as("failureCode") failureCode: worldGenerationJobErrorCode
}
type worldCount = {
@as("interiorCountPerFloorplan") interiorCountPerFloorplan: interiorCountPerFloorplan,
@as("floorplanCount") floorplanCount: floorplanCount
}
type worldConfig = {
@as("world") world: arn
}
type uploadConfiguration = {
@as("uploadBehavior") uploadBehavior: option<uploadBehavior>,
@as("path") path: option<path>,
@as("name") name: option<name>
}
type tool = {
@as("exitBehavior") exitBehavior: exitBehavior,
@as("streamOutputToCloudWatch") streamOutputToCloudWatch: boxedBoolean,
@as("command") command: option<unrestrictedCommand>,
@as("name") name: option<name>,
@as("streamUI") streamUI: boxedBoolean
}
type templateSummary = {
@as("name") name: templateName,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("createdAt") createdAt: createdAt,
@as("arn") arn: arn
}
type templateLocation = {
@as("s3Key") s3Key: option<s3Key>,
@as("s3Bucket") s3Bucket: option<s3Bucket>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type subnets = array<nonEmptyString>
type sourceConfig = {
@as("architecture") architecture: architecture,
@as("s3Key") s3Key: s3Key,
@as("s3Bucket") s3Bucket: s3Bucket
}
type source = {
@as("architecture") architecture: architecture,
@as("etag") etag: s3Etag,
@as("s3Key") s3Key: s3Key,
@as("s3Bucket") s3Bucket: s3Bucket
}
type simulationSoftwareSuite = {
@as("version") version: simulationSoftwareSuiteVersionType,
@as("name") name: simulationSoftwareSuiteType
}
type simulationJobBatchSummary = {
@as("createdRequestCount") createdRequestCount: amazonawsInteger,
@as("pendingRequestCount") pendingRequestCount: amazonawsInteger,
@as("failedRequestCount") failedRequestCount: amazonawsInteger,
@as("status") status: simulationJobBatchStatus,
@as("createdAt") createdAt: createdAt,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("arn") arn: arn
}
type simulationApplicationNames = array<name>
type securityGroups = array<nonEmptyString>
type s3Object = {
@as("etag") etag: s3Etag,
@as("key") key: option<s3Key>,
@as("bucket") bucket: option<s3Bucket>
}
type s3Keys = array<s3Key>
type s3KeyOutput = {
@as("etag") etag: s3Etag,
@as("s3Key") s3Key: s3Key
}
type robotSoftwareSuite = {
@as("version") version: robotSoftwareSuiteVersionType,
@as("name") name: robotSoftwareSuiteType
}
type robotApplicationNames = array<name>
type robot = {
@as("lastDeploymentTime") lastDeploymentTime: createdAt,
@as("lastDeploymentJob") lastDeploymentJob: arn,
@as("architecture") architecture: architecture,
@as("createdAt") createdAt: createdAt,
@as("greenGrassGroupId") greenGrassGroupId: id,
@as("status") status: robotStatus,
@as("fleetArn") fleetArn: arn,
@as("name") name: name,
@as("arn") arn: arn
}
type renderingEngine = {
@as("version") version: renderingEngineVersionType,
@as("name") name: renderingEngineType
}
type progressDetail = {
@as("targetResource") targetResource: genericString,
@as("estimatedTimeRemainingSeconds") estimatedTimeRemainingSeconds: genericInteger,
@as("percentDone") percentDone: percentDone,
@as("currentProgress") currentProgress: robotDeploymentStep
}
type portMapping = {
@as("enableOnPublicIp") enableOnPublicIp: amazonawsBoolean,
@as("applicationPort") applicationPort: option<nonSystemPort>,
@as("jobPort") jobPort: option<port>
}
type outputLocation = {
@as("s3Prefix") s3Prefix: s3Key,
@as("s3Bucket") s3Bucket: s3Bucket
}
type networkInterface = {
@as("publicIpAddress") publicIpAddress: genericString,
@as("privateIpAddress") privateIpAddress: genericString,
@as("networkInterfaceId") networkInterfaceId: genericString
}
type loggingConfig = {
@as("recordAllRosTopics") recordAllRosTopics: option<boxedBoolean>
}
type fleet = {
@as("lastDeploymentTime") lastDeploymentTime: createdAt,
@as("lastDeploymentJob") lastDeploymentJob: arn,
@as("lastDeploymentStatus") lastDeploymentStatus: deploymentStatus,
@as("createdAt") createdAt: createdAt,
@as("arn") arn: arn,
@as("name") name: name
}
type filterValues = array<name>
type environmentVariableMap = Js.Dict.t< environmentVariableValue>
type dataSourceNames = array<name>
type computeResponse = {
@as("simulationUnitLimit") simulationUnitLimit: simulationUnit
}
type compute = {
@as("simulationUnitLimit") simulationUnitLimit: simulationUnit
}
type batchPolicy = {
@as("maxConcurrency") maxConcurrency: maxConcurrency,
@as("timeoutInSeconds") timeoutInSeconds: batchTimeoutInSeconds
}
type arns = array<arn>
type worldSummaries = array<worldSummary>
type worldGenerationJobSummary = {
@as("failedWorldCount") failedWorldCount: amazonawsInteger,
@as("succeededWorldCount") succeededWorldCount: amazonawsInteger,
@as("worldCount") worldCount: worldCount,
@as("status") status: worldGenerationJobStatus,
@as("createdAt") createdAt: createdAt,
@as("template") template: arn,
@as("arn") arn: arn
}
type worldFailures = array<worldFailure>
type worldExportJobSummary = {
@as("worlds") worlds: arns,
@as("createdAt") createdAt: createdAt,
@as("status") status: worldExportJobStatus,
@as("arn") arn: arn
}
type worldConfigs = array<worldConfig>
type vPCConfigResponse = {
@as("assignPublicIp") assignPublicIp: amazonawsBoolean,
@as("vpcId") vpcId: genericString,
@as("securityGroups") securityGroups: securityGroups,
@as("subnets") subnets: subnets
}
type vPCConfig = {
@as("assignPublicIp") assignPublicIp: amazonawsBoolean,
@as("securityGroups") securityGroups: securityGroups,
@as("subnets") subnets: option<subnets>
}
type uploadConfigurations = array<uploadConfiguration>
type tools = array<tool>
type templateSummaries = array<templateSummary>
type sources = array<source>
type sourceConfigs = array<sourceConfig>
type simulationJobSummary = {
@as("dataSourceNames") dataSourceNames: dataSourceNames,
@as("robotApplicationNames") robotApplicationNames: robotApplicationNames,
@as("simulationApplicationNames") simulationApplicationNames: simulationApplicationNames,
@as("status") status: simulationJobStatus,
@as("name") name: name,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("arn") arn: arn
}
type simulationJobBatchSummaries = array<simulationJobBatchSummary>
type simulationApplicationSummary = {
@as("simulationSoftwareSuite") simulationSoftwareSuite: simulationSoftwareSuite,
@as("robotSoftwareSuite") robotSoftwareSuite: robotSoftwareSuite,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("version") version: version,
@as("arn") arn: arn,
@as("name") name: name
}
type s3KeyOutputs = array<s3KeyOutput>
type robots = array<robot>
type robotDeployment = {
@as("failureCode") failureCode: deploymentJobErrorCode,
@as("failureReason") failureReason: genericString,
@as("progressDetail") progressDetail: progressDetail,
@as("status") status: robotStatus,
@as("deploymentFinishTime") deploymentFinishTime: createdAt,
@as("deploymentStartTime") deploymentStartTime: createdAt,
@as("arn") arn: arn
}
type robotApplicationSummary = {
@as("robotSoftwareSuite") robotSoftwareSuite: robotSoftwareSuite,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("version") version: version,
@as("arn") arn: arn,
@as("name") name: name
}
type portMappingList = array<portMapping>
type fleets = array<fleet>
type filter = {
@as("values") values: filterValues,
@as("name") name: name
}
type deploymentLaunchConfig = {
@as("environmentVariables") environmentVariables: environmentVariableMap,
@as("postLaunchFile") postLaunchFile: path,
@as("launchFile") launchFile: option<command>,
@as("preLaunchFile") preLaunchFile: path,
@as("packageName") packageName: option<command>
}
type deploymentConfig = {
@as("downloadConditionFile") downloadConditionFile: s3Object,
@as("robotDeploymentTimeoutInSeconds") robotDeploymentTimeoutInSeconds: deploymentTimeout,
@as("failureThresholdPercentage") failureThresholdPercentage: percentage,
@as("concurrentDeploymentPercentage") concurrentDeploymentPercentage: percentage
}
type dataSourceConfig = {
@as("s3Keys") s3Keys: option<s3Keys>,
@as("s3Bucket") s3Bucket: option<s3Bucket>,
@as("name") name: option<name>
}
type worldGenerationJobSummaries = array<worldGenerationJobSummary>
type worldExportJobSummaries = array<worldExportJobSummary>
type simulationJobSummaries = array<simulationJobSummary>
type simulationApplicationSummaries = array<simulationApplicationSummary>
type robotDeploymentSummary = array<robotDeployment>
type robotApplicationSummaries = array<robotApplicationSummary>
type portForwardingConfig = {
@as("portMappings") portMappings: portMappingList
}
type filters = array<filter>
type failureSummary = {
@as("failures") failures: worldFailures,
@as("totalFailureCount") totalFailureCount: amazonawsInteger
}
type deploymentApplicationConfig = {
@as("launchConfig") launchConfig: option<deploymentLaunchConfig>,
@as("applicationVersion") applicationVersion: option<deploymentVersion>,
@as("application") application: option<arn>
}
type dataSourceConfigs = array<dataSourceConfig>
type dataSource = {
@as("s3Keys") s3Keys: s3KeyOutputs,
@as("s3Bucket") s3Bucket: s3Bucket,
@as("name") name: name
}
type launchConfig = {
@as("streamUI") streamUI: amazonawsBoolean,
@as("portForwardingConfig") portForwardingConfig: portForwardingConfig,
@as("environmentVariables") environmentVariables: environmentVariableMap,
@as("launchFile") launchFile: option<command>,
@as("packageName") packageName: option<command>
}
type finishedWorldsSummary = {
@as("failureSummary") failureSummary: failureSummary,
@as("succeededWorlds") succeededWorlds: arns,
@as("finishedCount") finishedCount: amazonawsInteger
}
type deploymentApplicationConfigs = array<deploymentApplicationConfig>
type dataSources = array<dataSource>
type simulationApplicationConfig = {
@as("useDefaultTools") useDefaultTools: boxedBoolean,
@as("tools") tools: tools,
@as("useDefaultUploadConfigurations") useDefaultUploadConfigurations: boxedBoolean,
@as("worldConfigs") worldConfigs: worldConfigs,
@as("uploadConfigurations") uploadConfigurations: uploadConfigurations,
@as("launchConfig") launchConfig: option<launchConfig>,
@as("applicationVersion") applicationVersion: version,
@as("application") application: option<arn>
}
type robotApplicationConfig = {
@as("useDefaultTools") useDefaultTools: boxedBoolean,
@as("tools") tools: tools,
@as("useDefaultUploadConfigurations") useDefaultUploadConfigurations: boxedBoolean,
@as("uploadConfigurations") uploadConfigurations: uploadConfigurations,
@as("launchConfig") launchConfig: option<launchConfig>,
@as("applicationVersion") applicationVersion: version,
@as("application") application: option<arn>
}
type deploymentJob = {
@as("createdAt") createdAt: createdAt,
@as("failureCode") failureCode: deploymentJobErrorCode,
@as("failureReason") failureReason: genericString,
@as("deploymentConfig") deploymentConfig: deploymentConfig,
@as("deploymentApplicationConfigs") deploymentApplicationConfigs: deploymentApplicationConfigs,
@as("status") status: deploymentStatus,
@as("fleet") fleet: arn,
@as("arn") arn: arn
}
type simulationApplicationConfigs = array<simulationApplicationConfig>
type robotApplicationConfigs = array<robotApplicationConfig>
type deploymentJobs = array<deploymentJob>
type simulationJobRequest = {
@as("tags") tags: tagMap,
@as("compute") compute: compute,
@as("vpcConfig") vpcConfig: vPCConfig,
@as("dataSources") dataSources: dataSourceConfigs,
@as("simulationApplications") simulationApplications: simulationApplicationConfigs,
@as("robotApplications") robotApplications: robotApplicationConfigs,
@as("useDefaultApplications") useDefaultApplications: boxedBoolean,
@as("failureBehavior") failureBehavior: failureBehavior,
@as("iamRole") iamRole: iamRole,
@as("maxJobDurationInSeconds") maxJobDurationInSeconds: option<jobDuration>,
@as("loggingConfig") loggingConfig: loggingConfig,
@as("outputLocation") outputLocation: outputLocation
}
type simulationJob = {
@as("compute") compute: computeResponse,
@as("networkInterface") networkInterface: networkInterface,
@as("vpcConfig") vpcConfig: vPCConfigResponse,
@as("tags") tags: tagMap,
@as("dataSources") dataSources: dataSources,
@as("simulationApplications") simulationApplications: simulationApplicationConfigs,
@as("robotApplications") robotApplications: robotApplicationConfigs,
@as("iamRole") iamRole: iamRole,
@as("simulationTimeMillis") simulationTimeMillis: simulationTimeMillis,
@as("maxJobDurationInSeconds") maxJobDurationInSeconds: jobDuration,
@as("loggingConfig") loggingConfig: loggingConfig,
@as("outputLocation") outputLocation: outputLocation,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("failureReason") failureReason: genericString,
@as("failureCode") failureCode: simulationJobErrorCode,
@as("failureBehavior") failureBehavior: failureBehavior,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("lastStartedAt") lastStartedAt: lastStartedAt,
@as("status") status: simulationJobStatus,
@as("name") name: name,
@as("arn") arn: arn
}
type simulationJobs = array<simulationJob>
type failedCreateSimulationJobRequest = {
@as("failedAt") failedAt: failedAt,
@as("failureCode") failureCode: simulationJobErrorCode,
@as("failureReason") failureReason: genericString,
@as("request") request: simulationJobRequest
}
type createSimulationJobRequests = array<simulationJobRequest>
type failedCreateSimulationJobRequests = array<failedCreateSimulationJobRequest>
type clientType;
@module("@aws-sdk/client-robomaker") @new external createClient: unit => clientType = "RoboMakerClient";
module RestartSimulationJob = {
  type t;
  type request = {
@as("job") job: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "RestartSimulationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterRobot = {
  type t;
  type request = {
@as("robot") robot: option<arn>,
@as("fleet") fleet: option<arn>
}
  type response = {
@as("robot") robot: arn,
@as("fleet") fleet: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "RegisterRobotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWorldTemplateBody = {
  type t;
  type request = {
@as("generationJob") generationJob: arn,
@as("template") template: arn
}
  type response = {
@as("templateBody") templateBody: json
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "GetWorldTemplateBodyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterRobot = {
  type t;
  type request = {
@as("robot") robot: option<arn>,
@as("fleet") fleet: option<arn>
}
  type response = {
@as("robot") robot: arn,
@as("fleet") fleet: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DeregisterRobotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWorldTemplate = {
  type t;
  type request = {
@as("template") template: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DeleteWorldTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSimulationApplication = {
  type t;
  type request = {
@as("applicationVersion") applicationVersion: version,
@as("application") application: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DeleteSimulationApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRobotApplication = {
  type t;
  type request = {
@as("applicationVersion") applicationVersion: version,
@as("application") application: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DeleteRobotApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRobot = {
  type t;
  type request = {
@as("robot") robot: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DeleteRobotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFleet = {
  type t;
  type request = {
@as("fleet") fleet: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DeleteFleetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelWorldGenerationJob = {
  type t;
  type request = {
@as("job") job: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CancelWorldGenerationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelWorldExportJob = {
  type t;
  type request = {
@as("job") job: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CancelWorldExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelSimulationJobBatch = {
  type t;
  type request = {
@as("batch") batch: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CancelSimulationJobBatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelSimulationJob = {
  type t;
  type request = {
@as("job") job: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CancelSimulationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelDeploymentJob = {
  type t;
  type request = {
@as("job") job: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CancelDeploymentJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateWorldTemplate = {
  type t;
  type request = {
@as("templateLocation") templateLocation: templateLocation,
@as("templateBody") templateBody: json,
@as("name") name: templateName,
@as("template") template: option<arn>
}
  type response = {
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("createdAt") createdAt: createdAt,
@as("name") name: templateName,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "UpdateWorldTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<arn>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorldTemplate = {
  type t;
  type request = {
@as("template") template: option<arn>
}
  type response = {
@as("tags") tags: tagMap,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("createdAt") createdAt: createdAt,
@as("name") name: templateName,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DescribeWorldTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorldExportJob = {
  type t;
  type request = {
@as("job") job: option<arn>
}
  type response = {
@as("tags") tags: tagMap,
@as("iamRole") iamRole: iamRole,
@as("outputLocation") outputLocation: outputLocation,
@as("worlds") worlds: arns,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("failureReason") failureReason: genericString,
@as("failureCode") failureCode: worldExportJobErrorCode,
@as("createdAt") createdAt: createdAt,
@as("status") status: worldExportJobStatus,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DescribeWorldExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorld = {
  type t;
  type request = {
@as("world") world: option<arn>
}
  type response = {
@as("tags") tags: tagMap,
@as("createdAt") createdAt: createdAt,
@as("template") template: arn,
@as("generationJob") generationJob: arn,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DescribeWorldCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRobot = {
  type t;
  type request = {
@as("robot") robot: option<arn>
}
  type response = {
@as("tags") tags: tagMap,
@as("lastDeploymentTime") lastDeploymentTime: createdAt,
@as("lastDeploymentJob") lastDeploymentJob: arn,
@as("architecture") architecture: architecture,
@as("createdAt") createdAt: createdAt,
@as("greengrassGroupId") greengrassGroupId: id,
@as("status") status: robotStatus,
@as("fleetArn") fleetArn: arn,
@as("name") name: name,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DescribeRobotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWorldTemplate = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("templateLocation") templateLocation: templateLocation,
@as("templateBody") templateBody: json,
@as("name") name: templateName,
@as("clientRequestToken") clientRequestToken: clientRequestToken
}
  type response = {
@as("tags") tags: tagMap,
@as("name") name: templateName,
@as("createdAt") createdAt: createdAt,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CreateWorldTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWorldGenerationJob = {
  type t;
  type request = {
@as("worldTags") worldTags: tagMap,
@as("tags") tags: tagMap,
@as("worldCount") worldCount: option<worldCount>,
@as("template") template: option<arn>,
@as("clientRequestToken") clientRequestToken: clientRequestToken
}
  type response = {
@as("worldTags") worldTags: tagMap,
@as("tags") tags: tagMap,
@as("worldCount") worldCount: worldCount,
@as("template") template: arn,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("failureCode") failureCode: worldGenerationJobErrorCode,
@as("createdAt") createdAt: createdAt,
@as("status") status: worldGenerationJobStatus,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CreateWorldGenerationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWorldExportJob = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("iamRole") iamRole: option<iamRole>,
@as("outputLocation") outputLocation: option<outputLocation>,
@as("worlds") worlds: option<arns>,
@as("clientRequestToken") clientRequestToken: clientRequestToken
}
  type response = {
@as("tags") tags: tagMap,
@as("iamRole") iamRole: iamRole,
@as("outputLocation") outputLocation: outputLocation,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("failureCode") failureCode: worldExportJobErrorCode,
@as("createdAt") createdAt: createdAt,
@as("status") status: worldExportJobStatus,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CreateWorldExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRobot = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("greengrassGroupId") greengrassGroupId: option<id>,
@as("architecture") architecture: option<architecture>,
@as("name") name: option<name>
}
  type response = {
@as("tags") tags: tagMap,
@as("architecture") architecture: architecture,
@as("greengrassGroupId") greengrassGroupId: id,
@as("createdAt") createdAt: createdAt,
@as("name") name: name,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CreateRobotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFleet = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("name") name: option<name>
}
  type response = {
@as("tags") tags: tagMap,
@as("createdAt") createdAt: createdAt,
@as("name") name: name,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CreateFleetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteWorlds = {
  type t;
  type request = {
@as("worlds") worlds: option<arns>
}
  type response = {
@as("unprocessedWorlds") unprocessedWorlds: arns
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "BatchDeleteWorldsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSimulationApplication = {
  type t;
  type request = {
@as("currentRevisionId") currentRevisionId: revisionId,
@as("renderingEngine") renderingEngine: renderingEngine,
@as("robotSoftwareSuite") robotSoftwareSuite: option<robotSoftwareSuite>,
@as("simulationSoftwareSuite") simulationSoftwareSuite: option<simulationSoftwareSuite>,
@as("sources") sources: option<sourceConfigs>,
@as("application") application: option<arn>
}
  type response = {
@as("revisionId") revisionId: revisionId,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("renderingEngine") renderingEngine: renderingEngine,
@as("robotSoftwareSuite") robotSoftwareSuite: robotSoftwareSuite,
@as("simulationSoftwareSuite") simulationSoftwareSuite: simulationSoftwareSuite,
@as("sources") sources: sources,
@as("version") version: version,
@as("name") name: name,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "UpdateSimulationApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRobotApplication = {
  type t;
  type request = {
@as("currentRevisionId") currentRevisionId: revisionId,
@as("robotSoftwareSuite") robotSoftwareSuite: option<robotSoftwareSuite>,
@as("sources") sources: option<sourceConfigs>,
@as("application") application: option<arn>
}
  type response = {
@as("revisionId") revisionId: revisionId,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("robotSoftwareSuite") robotSoftwareSuite: robotSoftwareSuite,
@as("sources") sources: sources,
@as("version") version: version,
@as("name") name: name,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "UpdateRobotApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWorldTemplates = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("templateSummaries") templateSummaries: templateSummaries
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "ListWorldTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSimulationApplication = {
  type t;
  type request = {
@as("applicationVersion") applicationVersion: version,
@as("application") application: option<arn>
}
  type response = {
@as("tags") tags: tagMap,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("revisionId") revisionId: revisionId,
@as("renderingEngine") renderingEngine: renderingEngine,
@as("robotSoftwareSuite") robotSoftwareSuite: robotSoftwareSuite,
@as("simulationSoftwareSuite") simulationSoftwareSuite: simulationSoftwareSuite,
@as("sources") sources: sources,
@as("version") version: version,
@as("name") name: name,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DescribeSimulationApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRobotApplication = {
  type t;
  type request = {
@as("applicationVersion") applicationVersion: version,
@as("application") application: option<arn>
}
  type response = {
@as("tags") tags: tagMap,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("revisionId") revisionId: revisionId,
@as("robotSoftwareSuite") robotSoftwareSuite: robotSoftwareSuite,
@as("sources") sources: sources,
@as("version") version: version,
@as("name") name: name,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DescribeRobotApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleet = {
  type t;
  type request = {
@as("fleet") fleet: option<arn>
}
  type response = {
@as("tags") tags: tagMap,
@as("lastDeploymentTime") lastDeploymentTime: createdAt,
@as("lastDeploymentJob") lastDeploymentJob: arn,
@as("lastDeploymentStatus") lastDeploymentStatus: deploymentStatus,
@as("createdAt") createdAt: createdAt,
@as("robots") robots: robots,
@as("arn") arn: arn,
@as("name") name: name
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DescribeFleetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSimulationApplicationVersion = {
  type t;
  type request = {
@as("currentRevisionId") currentRevisionId: revisionId,
@as("application") application: option<arn>
}
  type response = {
@as("revisionId") revisionId: revisionId,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("renderingEngine") renderingEngine: renderingEngine,
@as("robotSoftwareSuite") robotSoftwareSuite: robotSoftwareSuite,
@as("simulationSoftwareSuite") simulationSoftwareSuite: simulationSoftwareSuite,
@as("sources") sources: sources,
@as("version") version: version,
@as("name") name: name,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CreateSimulationApplicationVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSimulationApplication = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("renderingEngine") renderingEngine: renderingEngine,
@as("robotSoftwareSuite") robotSoftwareSuite: option<robotSoftwareSuite>,
@as("simulationSoftwareSuite") simulationSoftwareSuite: option<simulationSoftwareSuite>,
@as("sources") sources: option<sourceConfigs>,
@as("name") name: option<name>
}
  type response = {
@as("tags") tags: tagMap,
@as("revisionId") revisionId: revisionId,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("renderingEngine") renderingEngine: renderingEngine,
@as("robotSoftwareSuite") robotSoftwareSuite: robotSoftwareSuite,
@as("simulationSoftwareSuite") simulationSoftwareSuite: simulationSoftwareSuite,
@as("sources") sources: sources,
@as("version") version: version,
@as("name") name: name,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CreateSimulationApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRobotApplicationVersion = {
  type t;
  type request = {
@as("currentRevisionId") currentRevisionId: revisionId,
@as("application") application: option<arn>
}
  type response = {
@as("revisionId") revisionId: revisionId,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("robotSoftwareSuite") robotSoftwareSuite: robotSoftwareSuite,
@as("sources") sources: sources,
@as("version") version: version,
@as("name") name: name,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CreateRobotApplicationVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRobotApplication = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("robotSoftwareSuite") robotSoftwareSuite: option<robotSoftwareSuite>,
@as("sources") sources: option<sourceConfigs>,
@as("name") name: option<name>
}
  type response = {
@as("tags") tags: tagMap,
@as("revisionId") revisionId: revisionId,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("robotSoftwareSuite") robotSoftwareSuite: robotSoftwareSuite,
@as("sources") sources: sources,
@as("version") version: version,
@as("name") name: name,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CreateRobotApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWorlds = {
  type t;
  type request = {
@as("filters") filters: filters,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("worldSummaries") worldSummaries: worldSummaries
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "ListWorldsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWorldGenerationJobs = {
  type t;
  type request = {
@as("filters") filters: filters,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("worldGenerationJobSummaries") worldGenerationJobSummaries: option<worldGenerationJobSummaries>
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "ListWorldGenerationJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWorldExportJobs = {
  type t;
  type request = {
@as("filters") filters: filters,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("worldExportJobSummaries") worldExportJobSummaries: option<worldExportJobSummaries>
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "ListWorldExportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSimulationJobs = {
  type t;
  type request = {
@as("filters") filters: filters,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("simulationJobSummaries") simulationJobSummaries: option<simulationJobSummaries>
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "ListSimulationJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSimulationJobBatches = {
  type t;
  type request = {
@as("filters") filters: filters,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("simulationJobBatchSummaries") simulationJobBatchSummaries: simulationJobBatchSummaries
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "ListSimulationJobBatchesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSimulationApplications = {
  type t;
  type request = {
@as("filters") filters: filters,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("versionQualifier") versionQualifier: versionQualifier
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("simulationApplicationSummaries") simulationApplicationSummaries: simulationApplicationSummaries
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "ListSimulationApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRobots = {
  type t;
  type request = {
@as("filters") filters: filters,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("robots") robots: robots
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "ListRobotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRobotApplications = {
  type t;
  type request = {
@as("filters") filters: filters,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("versionQualifier") versionQualifier: versionQualifier
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("robotApplicationSummaries") robotApplicationSummaries: robotApplicationSummaries
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "ListRobotApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFleets = {
  type t;
  type request = {
@as("filters") filters: filters,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("fleetDetails") fleetDetails: fleets
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "ListFleetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SyncDeploymentJob = {
  type t;
  type request = {
@as("fleet") fleet: option<arn>,
@as("clientRequestToken") clientRequestToken: option<clientRequestToken>
}
  type response = {
@as("createdAt") createdAt: createdAt,
@as("failureCode") failureCode: deploymentJobErrorCode,
@as("failureReason") failureReason: genericString,
@as("deploymentApplicationConfigs") deploymentApplicationConfigs: deploymentApplicationConfigs,
@as("deploymentConfig") deploymentConfig: deploymentConfig,
@as("status") status: deploymentStatus,
@as("fleet") fleet: arn,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "SyncDeploymentJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorldGenerationJob = {
  type t;
  type request = {
@as("job") job: option<arn>
}
  type response = {
@as("worldTags") worldTags: tagMap,
@as("tags") tags: tagMap,
@as("finishedWorldsSummary") finishedWorldsSummary: finishedWorldsSummary,
@as("worldCount") worldCount: worldCount,
@as("template") template: arn,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("failureReason") failureReason: genericString,
@as("failureCode") failureCode: worldGenerationJobErrorCode,
@as("createdAt") createdAt: createdAt,
@as("status") status: worldGenerationJobStatus,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DescribeWorldGenerationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDeploymentJob = {
  type t;
  type request = {
@as("job") job: option<arn>
}
  type response = {
@as("tags") tags: tagMap,
@as("robotDeploymentSummary") robotDeploymentSummary: robotDeploymentSummary,
@as("createdAt") createdAt: createdAt,
@as("failureCode") failureCode: deploymentJobErrorCode,
@as("failureReason") failureReason: genericString,
@as("deploymentApplicationConfigs") deploymentApplicationConfigs: deploymentApplicationConfigs,
@as("deploymentConfig") deploymentConfig: deploymentConfig,
@as("status") status: deploymentStatus,
@as("fleet") fleet: arn,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DescribeDeploymentJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeploymentJob = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("deploymentApplicationConfigs") deploymentApplicationConfigs: option<deploymentApplicationConfigs>,
@as("fleet") fleet: option<arn>,
@as("clientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("deploymentConfig") deploymentConfig: deploymentConfig
}
  type response = {
@as("tags") tags: tagMap,
@as("deploymentConfig") deploymentConfig: deploymentConfig,
@as("createdAt") createdAt: createdAt,
@as("failureCode") failureCode: deploymentJobErrorCode,
@as("failureReason") failureReason: genericString,
@as("deploymentApplicationConfigs") deploymentApplicationConfigs: deploymentApplicationConfigs,
@as("status") status: deploymentStatus,
@as("fleet") fleet: arn,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CreateDeploymentJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeploymentJobs = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("filters") filters: filters
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("deploymentJobs") deploymentJobs: deploymentJobs
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "ListDeploymentJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSimulationJob = {
  type t;
  type request = {
@as("job") job: option<arn>
}
  type response = {
@as("compute") compute: computeResponse,
@as("networkInterface") networkInterface: networkInterface,
@as("vpcConfig") vpcConfig: vPCConfigResponse,
@as("tags") tags: tagMap,
@as("dataSources") dataSources: dataSources,
@as("simulationApplications") simulationApplications: simulationApplicationConfigs,
@as("robotApplications") robotApplications: robotApplicationConfigs,
@as("iamRole") iamRole: iamRole,
@as("simulationTimeMillis") simulationTimeMillis: simulationTimeMillis,
@as("maxJobDurationInSeconds") maxJobDurationInSeconds: jobDuration,
@as("loggingConfig") loggingConfig: loggingConfig,
@as("outputLocation") outputLocation: outputLocation,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("failureReason") failureReason: genericString,
@as("failureCode") failureCode: simulationJobErrorCode,
@as("failureBehavior") failureBehavior: failureBehavior,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("lastStartedAt") lastStartedAt: lastStartedAt,
@as("status") status: simulationJobStatus,
@as("name") name: name,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DescribeSimulationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSimulationJob = {
  type t;
  type request = {
@as("compute") compute: compute,
@as("vpcConfig") vpcConfig: vPCConfig,
@as("tags") tags: tagMap,
@as("dataSources") dataSources: dataSourceConfigs,
@as("simulationApplications") simulationApplications: simulationApplicationConfigs,
@as("robotApplications") robotApplications: robotApplicationConfigs,
@as("failureBehavior") failureBehavior: failureBehavior,
@as("iamRole") iamRole: option<iamRole>,
@as("maxJobDurationInSeconds") maxJobDurationInSeconds: option<jobDuration>,
@as("loggingConfig") loggingConfig: loggingConfig,
@as("outputLocation") outputLocation: outputLocation,
@as("clientRequestToken") clientRequestToken: clientRequestToken
}
  type response = {
@as("compute") compute: computeResponse,
@as("vpcConfig") vpcConfig: vPCConfigResponse,
@as("tags") tags: tagMap,
@as("dataSources") dataSources: dataSources,
@as("simulationApplications") simulationApplications: simulationApplicationConfigs,
@as("robotApplications") robotApplications: robotApplicationConfigs,
@as("iamRole") iamRole: iamRole,
@as("simulationTimeMillis") simulationTimeMillis: simulationTimeMillis,
@as("maxJobDurationInSeconds") maxJobDurationInSeconds: jobDuration,
@as("loggingConfig") loggingConfig: loggingConfig,
@as("outputLocation") outputLocation: outputLocation,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("failureCode") failureCode: simulationJobErrorCode,
@as("failureBehavior") failureBehavior: failureBehavior,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("lastStartedAt") lastStartedAt: lastStartedAt,
@as("status") status: simulationJobStatus,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "CreateSimulationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDescribeSimulationJob = {
  type t;
  type request = {
@as("jobs") jobs: option<arns>
}
  type response = {
@as("unprocessedJobs") unprocessedJobs: arns,
@as("jobs") jobs: simulationJobs
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "BatchDescribeSimulationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartSimulationJobBatch = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("createSimulationJobRequests") createSimulationJobRequests: option<createSimulationJobRequests>,
@as("batchPolicy") batchPolicy: batchPolicy,
@as("clientRequestToken") clientRequestToken: clientRequestToken
}
  type response = {
@as("tags") tags: tagMap,
@as("createdRequests") createdRequests: simulationJobSummaries,
@as("pendingRequests") pendingRequests: createSimulationJobRequests,
@as("failedRequests") failedRequests: failedCreateSimulationJobRequests,
@as("failureReason") failureReason: genericString,
@as("failureCode") failureCode: simulationJobBatchErrorCode,
@as("batchPolicy") batchPolicy: batchPolicy,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("createdAt") createdAt: createdAt,
@as("status") status: simulationJobBatchStatus,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "StartSimulationJobBatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSimulationJobBatch = {
  type t;
  type request = {
@as("batch") batch: option<arn>
}
  type response = {
@as("tags") tags: tagMap,
@as("createdRequests") createdRequests: simulationJobSummaries,
@as("pendingRequests") pendingRequests: createSimulationJobRequests,
@as("failedRequests") failedRequests: failedCreateSimulationJobRequests,
@as("failureReason") failureReason: genericString,
@as("failureCode") failureCode: simulationJobBatchErrorCode,
@as("batchPolicy") batchPolicy: batchPolicy,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("createdAt") createdAt: createdAt,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAt,
@as("status") status: simulationJobBatchStatus,
@as("arn") arn: arn
}
  @module("@aws-sdk/client-robomaker") @new external new_: (request) => t = "DescribeSimulationJobBatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
