type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-robomaker") @new
external createClient: unit => awsServiceClient = "RoboMakerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type errorMessage = string
type worldGenerationJobStatus = [
  | @as("Canceled") #Canceled
  | @as("Canceling") #Canceling
  | @as("PartialFailed") #PartialFailed
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("Running") #Running
  | @as("Pending") #Pending
]
type worldGenerationJobErrorCode = [
  | @as("AllWorldGenerationFailed") #AllWorldGenerationFailed
  | @as("InvalidInput") #InvalidInput
  | @as("RequestThrottled") #RequestThrottled
  | @as("ResourceNotFound") #ResourceNotFound
  | @as("LimitExceeded") #LimitExceeded
  | @as("InternalServiceError") #InternalServiceError
]
type worldExportJobStatus = [
  | @as("Canceled") #Canceled
  | @as("Canceling") #Canceling
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("Running") #Running
  | @as("Pending") #Pending
]
type worldExportJobErrorCode = [
  | @as("AccessDenied") #AccessDenied
  | @as("InvalidInput") #InvalidInput
  | @as("RequestThrottled") #RequestThrottled
  | @as("ResourceNotFound") #ResourceNotFound
  | @as("LimitExceeded") #LimitExceeded
  | @as("InternalServiceError") #InternalServiceError
]
type versionQualifier = string
type version = string
type uploadBehavior = [
  | @as("UPLOAD_ROLLING_AUTO_REMOVE") #UPLOAD_ROLLING_AUTO_REMOVE
  | @as("UPLOAD_ON_TERMINATE") #UPLOAD_ON_TERMINATE
]
type unrestrictedCommand = string
type templateName = string
type tagValue = string
type tagKey = string
type simulationUnit = int
type simulationTimeMillis = float
type simulationSoftwareSuiteVersionType = string
type simulationSoftwareSuiteType = [@as("RosbagPlay") #RosbagPlay | @as("Gazebo") #Gazebo]
type simulationJobStatus = [
  | @as("Canceled") #Canceled
  | @as("Terminated") #Terminated
  | @as("Terminating") #Terminating
  | @as("RunningFailed") #RunningFailed
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("Restarting") #Restarting
  | @as("Running") #Running
  | @as("Preparing") #Preparing
  | @as("Pending") #Pending
]
type simulationJobErrorCode = [
  | @as("UploadContentMismatchError") #UploadContentMismatchError
  | @as("WrongRegionSimulationApplication") #WrongRegionSimulationApplication
  | @as("WrongRegionRobotApplication") #WrongRegionRobotApplication
  | @as("WrongRegionS3Output") #WrongRegionS3Output
  | @as("WrongRegionS3Bucket") #WrongRegionS3Bucket
  | @as("InvalidInput") #InvalidInput
  | @as("BatchCanceled") #BatchCanceled
  | @as("BatchTimedOut") #BatchTimedOut
  | @as("RequestThrottled") #RequestThrottled
  | @as("ResourceNotFound") #ResourceNotFound
  | @as("SimulationApplicationVersionMismatchedEtag") #SimulationApplicationVersionMismatchedEtag
  | @as("RobotApplicationVersionMismatchedEtag") #RobotApplicationVersionMismatchedEtag
  | @as("MismatchedEtag") #MismatchedEtag
  | @as("LimitExceeded") #LimitExceeded
  | @as("ThrottlingError") #ThrottlingError
  | @as("InvalidS3Resource") #InvalidS3Resource
  | @as("InvalidBundleSimulationApplication") #InvalidBundleSimulationApplication
  | @as("InvalidBundleRobotApplication") #InvalidBundleRobotApplication
  | @as("BadPermissionsUserCredentials") #BadPermissionsUserCredentials
  | @as("ENILimitExceeded") #ENILimitExceeded
  | @as("SubnetIpLimitExceeded") #SubnetIpLimitExceeded
  | @as("BadPermissionsCloudwatchLogs") #BadPermissionsCloudwatchLogs
  | @as("BadPermissionsS3Output") #BadPermissionsS3Output
  | @as("BadPermissionsS3Object") #BadPermissionsS3Object
  | @as("BadPermissionsSimulationApplication") #BadPermissionsSimulationApplication
  | @as("BadPermissionsRobotApplication") #BadPermissionsRobotApplication
  | @as("SimulationApplicationHealthCheckFailure") #SimulationApplicationHealthCheckFailure
  | @as("RobotApplicationHealthCheckFailure") #RobotApplicationHealthCheckFailure
  | @as("SimulationApplicationCrash") #SimulationApplicationCrash
  | @as("RobotApplicationCrash") #RobotApplicationCrash
  | @as("InternalServiceError") #InternalServiceError
]
type simulationJobBatchStatus = [
  | @as("TimedOut") #TimedOut
  | @as("TimingOut") #TimingOut
  | @as("Completing") #Completing
  | @as("Canceling") #Canceling
  | @as("Canceled") #Canceled
  | @as("Completed") #Completed
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type simulationJobBatchErrorCode = [@as("InternalServiceError") #InternalServiceError]
type s3Key = string
type s3Etag = string
type s3Bucket = string
type robotStatus = [
  | @as("NoResponse") #NoResponse
  | @as("InSync") #InSync
  | @as("Failed") #Failed
  | @as("Deploying") #Deploying
  | @as("PendingNewDeployment") #PendingNewDeployment
  | @as("Registered") #Registered
  | @as("Available") #Available
]
type robotSoftwareSuiteVersionType = [
  | @as("Foxy") #Foxy
  | @as("Dashing") #Dashing
  | @as("Melodic") #Melodic
  | @as("Kinetic") #Kinetic
]
type robotSoftwareSuiteType = [@as("ROS2") #ROS2 | @as("ROS") #ROS]
type robotDeploymentStep = [
  | @as("Finished") #Finished
  | @as("ExecutingPostLaunch") #ExecutingPostLaunch
  | @as("Launching") #Launching
  | @as("ExecutingPreLaunch") #ExecutingPreLaunch
  | @as("ExecutingDownloadCondition") #ExecutingDownloadCondition
  | @as("DownloadingExtracting") #DownloadingExtracting
  | @as("Validating") #Validating
]
type revisionId = string
type renderingEngineVersionType = string
type renderingEngineType = [@as("OGRE") #OGRE]
type port = int
type percentage = int
type percentDone = float
type path = string
type paginationToken = string
type nonSystemPort = int
type nonEmptyString = string
type name = string
type maxResults = int
type maxConcurrency = int
type lastUpdatedAt = Js.Date.t
type lastStartedAt = Js.Date.t
type json = string
type jobDuration = float
type interiorCountPerFloorplan = int
type integer_ = int
type id = string
type iamRole = string
type genericString = string
type genericInteger = int
type floorplanCount = int
type failureBehavior = [@as("Continue") #Continue | @as("Fail") #Fail]
type failedAt = Js.Date.t
type exitBehavior = [@as("RESTART") #RESTART | @as("FAIL") #FAIL]
type environmentVariableValue = string
type environmentVariableKey = string
type deploymentVersion = string
type deploymentTimeout = float
type deploymentStatus = [
  | @as("Canceled") #Canceled
  | @as("Succeeded") #Succeeded
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Preparing") #Preparing
  | @as("Pending") #Pending
]
type deploymentJobErrorCode = [
  | @as("FleetDeploymentTimeout") #FleetDeploymentTimeout
  | @as("DeploymentFleetDoesNotExist") #DeploymentFleetDoesNotExist
  | @as("RobotApplicationDoesNotExist") #RobotApplicationDoesNotExist
  | @as("InternalServerError") #InternalServerError
  | @as("BadLambdaAssociated") #BadLambdaAssociated
  | @as("DownloadConditionFailed") #DownloadConditionFailed
  | @as("BadPermissionError") #BadPermissionError
  | @as("PostLaunchFileFailure") #PostLaunchFileFailure
  | @as("PreLaunchFileFailure") #PreLaunchFileFailure
  | @as("ExtractingBundleFailure") #ExtractingBundleFailure
  | @as("LambdaDeleted") #LambdaDeleted
  | @as("GreengrassGroupVersionDoesNotExist") #GreengrassGroupVersionDoesNotExist
  | @as("MissingRobotDeploymentResource") #MissingRobotDeploymentResource
  | @as("MissingRobotApplicationArchitecture") #MissingRobotApplicationArchitecture
  | @as("MissingRobotArchitecture") #MissingRobotArchitecture
  | @as("InvalidGreengrassGroup") #InvalidGreengrassGroup
  | @as("GreengrassDeploymentFailed") #GreengrassDeploymentFailed
  | @as("RobotAgentConnectionTimeout") #RobotAgentConnectionTimeout
  | @as("RobotDeploymentNoResponse") #RobotDeploymentNoResponse
  | @as("RobotDeploymentAborted") #RobotDeploymentAborted
  | @as("FailureThresholdBreached") #FailureThresholdBreached
  | @as("EtagMismatch") #EtagMismatch
  | @as("EnvironmentSetupError") #EnvironmentSetupError
  | @as("ResourceNotFound") #ResourceNotFound
]
type createdAt = Js.Date.t
type command = string
type clientRequestToken = string
type boxedBoolean = bool
type boolean_ = bool
type batchTimeoutInSeconds = float
type arn = string
type architecture = [@as("ARMHF") #ARMHF | @as("ARM64") #ARM64 | @as("X86_64") #X86_64]
type worldSummary = {
  template: option<arn>,
  generationJob: option<arn>,
  createdAt: option<createdAt>,
  arn: option<arn>,
}
type worldFailure = {
  failureCount: option<integer_>,
  sampleFailureReason: option<genericString>,
  failureCode: option<worldGenerationJobErrorCode>,
}
type worldCount = {
  interiorCountPerFloorplan: option<interiorCountPerFloorplan>,
  floorplanCount: option<floorplanCount>,
}
type worldConfig = {world: option<arn>}
type uploadConfiguration = {
  uploadBehavior: uploadBehavior,
  path: path,
  name: name,
}
type tool = {
  exitBehavior: option<exitBehavior>,
  streamOutputToCloudWatch: option<boxedBoolean>,
  command: unrestrictedCommand,
  name: name,
  streamUI: option<boxedBoolean>,
}
type templateSummary = {
  name: option<templateName>,
  lastUpdatedAt: option<lastUpdatedAt>,
  createdAt: option<createdAt>,
  arn: option<arn>,
}
type templateLocation = {
  s3Key: s3Key,
  s3Bucket: s3Bucket,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type subnets = array<nonEmptyString>
type sourceConfig = {
  architecture: option<architecture>,
  s3Key: option<s3Key>,
  s3Bucket: option<s3Bucket>,
}
type source = {
  architecture: option<architecture>,
  etag: option<s3Etag>,
  s3Key: option<s3Key>,
  s3Bucket: option<s3Bucket>,
}
type simulationSoftwareSuite = {
  version: option<simulationSoftwareSuiteVersionType>,
  name: option<simulationSoftwareSuiteType>,
}
type simulationJobBatchSummary = {
  createdRequestCount: option<integer_>,
  pendingRequestCount: option<integer_>,
  failedRequestCount: option<integer_>,
  status: option<simulationJobBatchStatus>,
  createdAt: option<createdAt>,
  lastUpdatedAt: option<lastUpdatedAt>,
  arn: option<arn>,
}
type simulationApplicationNames = array<name>
type securityGroups = array<nonEmptyString>
type s3Object = {
  etag: option<s3Etag>,
  key: s3Key,
  bucket: s3Bucket,
}
type s3Keys = array<s3Key>
type s3KeyOutput = {
  etag: option<s3Etag>,
  s3Key: option<s3Key>,
}
type robotSoftwareSuite = {
  version: option<robotSoftwareSuiteVersionType>,
  name: option<robotSoftwareSuiteType>,
}
type robotApplicationNames = array<name>
type robot = {
  lastDeploymentTime: option<createdAt>,
  lastDeploymentJob: option<arn>,
  architecture: option<architecture>,
  createdAt: option<createdAt>,
  greenGrassGroupId: option<id>,
  status: option<robotStatus>,
  fleetArn: option<arn>,
  name: option<name>,
  arn: option<arn>,
}
type renderingEngine = {
  version: option<renderingEngineVersionType>,
  name: option<renderingEngineType>,
}
type progressDetail = {
  targetResource: option<genericString>,
  estimatedTimeRemainingSeconds: option<genericInteger>,
  percentDone: option<percentDone>,
  currentProgress: option<robotDeploymentStep>,
}
type portMapping = {
  enableOnPublicIp: option<boolean_>,
  applicationPort: nonSystemPort,
  jobPort: port,
}
type outputLocation = {
  s3Prefix: option<s3Key>,
  s3Bucket: option<s3Bucket>,
}
type networkInterface = {
  publicIpAddress: option<genericString>,
  privateIpAddress: option<genericString>,
  networkInterfaceId: option<genericString>,
}
type loggingConfig = {recordAllRosTopics: boxedBoolean}
type fleet = {
  lastDeploymentTime: option<createdAt>,
  lastDeploymentJob: option<arn>,
  lastDeploymentStatus: option<deploymentStatus>,
  createdAt: option<createdAt>,
  arn: option<arn>,
  name: option<name>,
}
type filterValues = array<name>
type environmentVariableMap = Js.Dict.t<environmentVariableValue>
type dataSourceNames = array<name>
type computeResponse = {simulationUnitLimit: option<simulationUnit>}
type compute = {simulationUnitLimit: option<simulationUnit>}
type batchPolicy = {
  maxConcurrency: option<maxConcurrency>,
  timeoutInSeconds: option<batchTimeoutInSeconds>,
}
type arns = array<arn>
type worldSummaries = array<worldSummary>
type worldGenerationJobSummary = {
  failedWorldCount: option<integer_>,
  succeededWorldCount: option<integer_>,
  worldCount: option<worldCount>,
  status: option<worldGenerationJobStatus>,
  createdAt: option<createdAt>,
  template: option<arn>,
  arn: option<arn>,
}
type worldFailures = array<worldFailure>
type worldExportJobSummary = {
  worlds: option<arns>,
  createdAt: option<createdAt>,
  status: option<worldExportJobStatus>,
  arn: option<arn>,
}
type worldConfigs = array<worldConfig>
type vpcconfigResponse = {
  assignPublicIp: option<boolean_>,
  vpcId: option<genericString>,
  securityGroups: option<securityGroups>,
  subnets: option<subnets>,
}
type vpcconfig = {
  assignPublicIp: option<boolean_>,
  securityGroups: option<securityGroups>,
  subnets: subnets,
}
type uploadConfigurations = array<uploadConfiguration>
type tools = array<tool>
type templateSummaries = array<templateSummary>
type sources = array<source>
type sourceConfigs = array<sourceConfig>
type simulationJobSummary = {
  dataSourceNames: option<dataSourceNames>,
  robotApplicationNames: option<robotApplicationNames>,
  simulationApplicationNames: option<simulationApplicationNames>,
  status: option<simulationJobStatus>,
  name: option<name>,
  lastUpdatedAt: option<lastUpdatedAt>,
  arn: option<arn>,
}
type simulationJobBatchSummaries = array<simulationJobBatchSummary>
type simulationApplicationSummary = {
  simulationSoftwareSuite: option<simulationSoftwareSuite>,
  robotSoftwareSuite: option<robotSoftwareSuite>,
  lastUpdatedAt: option<lastUpdatedAt>,
  version: option<version>,
  arn: option<arn>,
  name: option<name>,
}
type s3KeyOutputs = array<s3KeyOutput>
type robots = array<robot>
type robotDeployment = {
  failureCode: option<deploymentJobErrorCode>,
  failureReason: option<genericString>,
  progressDetail: option<progressDetail>,
  status: option<robotStatus>,
  deploymentFinishTime: option<createdAt>,
  deploymentStartTime: option<createdAt>,
  arn: option<arn>,
}
type robotApplicationSummary = {
  robotSoftwareSuite: option<robotSoftwareSuite>,
  lastUpdatedAt: option<lastUpdatedAt>,
  version: option<version>,
  arn: option<arn>,
  name: option<name>,
}
type portMappingList = array<portMapping>
type fleets = array<fleet>
type filter = {
  values: option<filterValues>,
  name: option<name>,
}
type deploymentLaunchConfig = {
  environmentVariables: option<environmentVariableMap>,
  postLaunchFile: option<path>,
  launchFile: command,
  preLaunchFile: option<path>,
  packageName: command,
}
type deploymentConfig = {
  downloadConditionFile: option<s3Object>,
  robotDeploymentTimeoutInSeconds: option<deploymentTimeout>,
  failureThresholdPercentage: option<percentage>,
  concurrentDeploymentPercentage: option<percentage>,
}
type dataSourceConfig = {
  s3Keys: s3Keys,
  s3Bucket: s3Bucket,
  name: name,
}
type worldGenerationJobSummaries = array<worldGenerationJobSummary>
type worldExportJobSummaries = array<worldExportJobSummary>
type simulationJobSummaries = array<simulationJobSummary>
type simulationApplicationSummaries = array<simulationApplicationSummary>
type robotDeploymentSummary = array<robotDeployment>
type robotApplicationSummaries = array<robotApplicationSummary>
type portForwardingConfig = {portMappings: option<portMappingList>}
type filters = array<filter>
type failureSummary = {
  failures: option<worldFailures>,
  totalFailureCount: option<integer_>,
}
type deploymentApplicationConfig = {
  launchConfig: deploymentLaunchConfig,
  applicationVersion: deploymentVersion,
  application: arn,
}
type dataSourceConfigs = array<dataSourceConfig>
type dataSource = {
  s3Keys: option<s3KeyOutputs>,
  s3Bucket: option<s3Bucket>,
  name: option<name>,
}
type launchConfig = {
  streamUI: option<boolean_>,
  portForwardingConfig: option<portForwardingConfig>,
  environmentVariables: option<environmentVariableMap>,
  launchFile: command,
  packageName: command,
}
type finishedWorldsSummary = {
  failureSummary: option<failureSummary>,
  succeededWorlds: option<arns>,
  finishedCount: option<integer_>,
}
type deploymentApplicationConfigs = array<deploymentApplicationConfig>
type dataSources = array<dataSource>
type simulationApplicationConfig = {
  useDefaultTools: option<boxedBoolean>,
  tools: option<tools>,
  useDefaultUploadConfigurations: option<boxedBoolean>,
  worldConfigs: option<worldConfigs>,
  uploadConfigurations: option<uploadConfigurations>,
  launchConfig: launchConfig,
  applicationVersion: option<version>,
  application: arn,
}
type robotApplicationConfig = {
  useDefaultTools: option<boxedBoolean>,
  tools: option<tools>,
  useDefaultUploadConfigurations: option<boxedBoolean>,
  uploadConfigurations: option<uploadConfigurations>,
  launchConfig: launchConfig,
  applicationVersion: option<version>,
  application: arn,
}
type deploymentJob = {
  createdAt: option<createdAt>,
  failureCode: option<deploymentJobErrorCode>,
  failureReason: option<genericString>,
  deploymentConfig: option<deploymentConfig>,
  deploymentApplicationConfigs: option<deploymentApplicationConfigs>,
  status: option<deploymentStatus>,
  fleet: option<arn>,
  arn: option<arn>,
}
type simulationApplicationConfigs = array<simulationApplicationConfig>
type robotApplicationConfigs = array<robotApplicationConfig>
type deploymentJobs = array<deploymentJob>
type simulationJobRequest = {
  tags: option<tagMap>,
  compute: option<compute>,
  vpcConfig: option<vpcconfig>,
  dataSources: option<dataSourceConfigs>,
  simulationApplications: option<simulationApplicationConfigs>,
  robotApplications: option<robotApplicationConfigs>,
  useDefaultApplications: option<boxedBoolean>,
  failureBehavior: option<failureBehavior>,
  iamRole: option<iamRole>,
  maxJobDurationInSeconds: jobDuration,
  loggingConfig: option<loggingConfig>,
  outputLocation: option<outputLocation>,
}
type simulationJob = {
  compute: option<computeResponse>,
  networkInterface: option<networkInterface>,
  vpcConfig: option<vpcconfigResponse>,
  tags: option<tagMap>,
  dataSources: option<dataSources>,
  simulationApplications: option<simulationApplicationConfigs>,
  robotApplications: option<robotApplicationConfigs>,
  iamRole: option<iamRole>,
  simulationTimeMillis: option<simulationTimeMillis>,
  maxJobDurationInSeconds: option<jobDuration>,
  loggingConfig: option<loggingConfig>,
  outputLocation: option<outputLocation>,
  clientRequestToken: option<clientRequestToken>,
  failureReason: option<genericString>,
  failureCode: option<simulationJobErrorCode>,
  failureBehavior: option<failureBehavior>,
  lastUpdatedAt: option<lastUpdatedAt>,
  lastStartedAt: option<lastStartedAt>,
  status: option<simulationJobStatus>,
  name: option<name>,
  arn: option<arn>,
}
type simulationJobs = array<simulationJob>
type failedCreateSimulationJobRequest = {
  failedAt: option<failedAt>,
  failureCode: option<simulationJobErrorCode>,
  failureReason: option<genericString>,
  request: option<simulationJobRequest>,
}
type createSimulationJobRequests = array<simulationJobRequest>
type failedCreateSimulationJobRequests = array<failedCreateSimulationJobRequest>

module RestartSimulationJob = {
  type t
  type request = {job: arn}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "RestartSimulationJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterRobot = {
  type t
  type request = {
    robot: arn,
    fleet: arn,
  }
  type response = {
    robot: option<arn>,
    fleet: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "RegisterRobotCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorldTemplateBody = {
  type t
  type request = {
    generationJob: option<arn>,
    template: option<arn>,
  }
  type response = {templateBody: option<json>}
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "GetWorldTemplateBodyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterRobot = {
  type t
  type request = {
    robot: arn,
    fleet: arn,
  }
  type response = {
    robot: option<arn>,
    fleet: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "DeregisterRobotCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWorldTemplate = {
  type t
  type request = {template: arn}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DeleteWorldTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSimulationApplication = {
  type t
  type request = {
    applicationVersion: option<version>,
    application: arn,
  }
  type response = unit
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DeleteSimulationApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRobotApplication = {
  type t
  type request = {
    applicationVersion: option<version>,
    application: arn,
  }
  type response = unit
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DeleteRobotApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRobot = {
  type t
  type request = {robot: arn}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "DeleteRobotCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFleet = {
  type t
  type request = {fleet: arn}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "DeleteFleetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelWorldGenerationJob = {
  type t
  type request = {job: arn}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CancelWorldGenerationJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelWorldExportJob = {
  type t
  type request = {job: arn}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CancelWorldExportJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelSimulationJobBatch = {
  type t
  type request = {batch: arn}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CancelSimulationJobBatchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelSimulationJob = {
  type t
  type request = {job: arn}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CancelSimulationJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelDeploymentJob = {
  type t
  type request = {job: arn}
  type response = unit
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CancelDeploymentJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWorldTemplate = {
  type t
  type request = {
    templateLocation: option<templateLocation>,
    templateBody: option<json>,
    name: option<templateName>,
    template: arn,
  }
  type response = {
    lastUpdatedAt: option<lastUpdatedAt>,
    createdAt: option<createdAt>,
    name: option<templateName>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "UpdateWorldTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagMap,
    resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: arn}
  type response = {tags: option<tagMap>}
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorldTemplate = {
  type t
  type request = {template: arn}
  type response = {
    tags: option<tagMap>,
    lastUpdatedAt: option<lastUpdatedAt>,
    createdAt: option<createdAt>,
    name: option<templateName>,
    clientRequestToken: option<clientRequestToken>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeWorldTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorldExportJob = {
  type t
  type request = {job: arn}
  type response = {
    tags: option<tagMap>,
    iamRole: option<iamRole>,
    outputLocation: option<outputLocation>,
    worlds: option<arns>,
    clientRequestToken: option<clientRequestToken>,
    failureReason: option<genericString>,
    failureCode: option<worldExportJobErrorCode>,
    createdAt: option<createdAt>,
    status: option<worldExportJobStatus>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeWorldExportJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorld = {
  type t
  type request = {world: arn}
  type response = {
    tags: option<tagMap>,
    createdAt: option<createdAt>,
    template: option<arn>,
    generationJob: option<arn>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "DescribeWorldCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRobot = {
  type t
  type request = {robot: arn}
  type response = {
    tags: option<tagMap>,
    lastDeploymentTime: option<createdAt>,
    lastDeploymentJob: option<arn>,
    architecture: option<architecture>,
    createdAt: option<createdAt>,
    greengrassGroupId: option<id>,
    status: option<robotStatus>,
    fleetArn: option<arn>,
    name: option<name>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "DescribeRobotCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorldTemplate = {
  type t
  type request = {
    tags: option<tagMap>,
    templateLocation: option<templateLocation>,
    templateBody: option<json>,
    name: option<templateName>,
    clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    tags: option<tagMap>,
    name: option<templateName>,
    createdAt: option<createdAt>,
    clientRequestToken: option<clientRequestToken>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateWorldTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorldGenerationJob = {
  type t
  type request = {
    worldTags: option<tagMap>,
    tags: option<tagMap>,
    worldCount: worldCount,
    template: arn,
    clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    worldTags: option<tagMap>,
    tags: option<tagMap>,
    worldCount: option<worldCount>,
    template: option<arn>,
    clientRequestToken: option<clientRequestToken>,
    failureCode: option<worldGenerationJobErrorCode>,
    createdAt: option<createdAt>,
    status: option<worldGenerationJobStatus>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateWorldGenerationJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorldExportJob = {
  type t
  type request = {
    tags: option<tagMap>,
    iamRole: iamRole,
    outputLocation: outputLocation,
    worlds: arns,
    clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    tags: option<tagMap>,
    iamRole: option<iamRole>,
    outputLocation: option<outputLocation>,
    clientRequestToken: option<clientRequestToken>,
    failureCode: option<worldExportJobErrorCode>,
    createdAt: option<createdAt>,
    status: option<worldExportJobStatus>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateWorldExportJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRobot = {
  type t
  type request = {
    tags: option<tagMap>,
    greengrassGroupId: id,
    architecture: architecture,
    name: name,
  }
  type response = {
    tags: option<tagMap>,
    architecture: option<architecture>,
    greengrassGroupId: option<id>,
    createdAt: option<createdAt>,
    name: option<name>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "CreateRobotCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFleet = {
  type t
  type request = {
    tags: option<tagMap>,
    name: name,
  }
  type response = {
    tags: option<tagMap>,
    createdAt: option<createdAt>,
    name: option<name>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "CreateFleetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteWorlds = {
  type t
  type request = {worlds: arns}
  type response = {unprocessedWorlds: option<arns>}
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "BatchDeleteWorldsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSimulationApplication = {
  type t
  type request = {
    currentRevisionId: option<revisionId>,
    renderingEngine: option<renderingEngine>,
    robotSoftwareSuite: robotSoftwareSuite,
    simulationSoftwareSuite: simulationSoftwareSuite,
    sources: sourceConfigs,
    application: arn,
  }
  type response = {
    revisionId: option<revisionId>,
    lastUpdatedAt: option<lastUpdatedAt>,
    renderingEngine: option<renderingEngine>,
    robotSoftwareSuite: option<robotSoftwareSuite>,
    simulationSoftwareSuite: option<simulationSoftwareSuite>,
    sources: option<sources>,
    version: option<version>,
    name: option<name>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "UpdateSimulationApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRobotApplication = {
  type t
  type request = {
    currentRevisionId: option<revisionId>,
    robotSoftwareSuite: robotSoftwareSuite,
    sources: sourceConfigs,
    application: arn,
  }
  type response = {
    revisionId: option<revisionId>,
    lastUpdatedAt: option<lastUpdatedAt>,
    robotSoftwareSuite: option<robotSoftwareSuite>,
    sources: option<sources>,
    version: option<version>,
    name: option<name>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "UpdateRobotApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorldTemplates = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    templateSummaries: option<templateSummaries>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "ListWorldTemplatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSimulationApplication = {
  type t
  type request = {
    applicationVersion: option<version>,
    application: arn,
  }
  type response = {
    tags: option<tagMap>,
    lastUpdatedAt: option<lastUpdatedAt>,
    revisionId: option<revisionId>,
    renderingEngine: option<renderingEngine>,
    robotSoftwareSuite: option<robotSoftwareSuite>,
    simulationSoftwareSuite: option<simulationSoftwareSuite>,
    sources: option<sources>,
    version: option<version>,
    name: option<name>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeSimulationApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRobotApplication = {
  type t
  type request = {
    applicationVersion: option<version>,
    application: arn,
  }
  type response = {
    tags: option<tagMap>,
    lastUpdatedAt: option<lastUpdatedAt>,
    revisionId: option<revisionId>,
    robotSoftwareSuite: option<robotSoftwareSuite>,
    sources: option<sources>,
    version: option<version>,
    name: option<name>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeRobotApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleet = {
  type t
  type request = {fleet: arn}
  type response = {
    tags: option<tagMap>,
    lastDeploymentTime: option<createdAt>,
    lastDeploymentJob: option<arn>,
    lastDeploymentStatus: option<deploymentStatus>,
    createdAt: option<createdAt>,
    robots: option<robots>,
    arn: option<arn>,
    name: option<name>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "DescribeFleetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSimulationApplicationVersion = {
  type t
  type request = {
    currentRevisionId: option<revisionId>,
    application: arn,
  }
  type response = {
    revisionId: option<revisionId>,
    lastUpdatedAt: option<lastUpdatedAt>,
    renderingEngine: option<renderingEngine>,
    robotSoftwareSuite: option<robotSoftwareSuite>,
    simulationSoftwareSuite: option<simulationSoftwareSuite>,
    sources: option<sources>,
    version: option<version>,
    name: option<name>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateSimulationApplicationVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSimulationApplication = {
  type t
  type request = {
    tags: option<tagMap>,
    renderingEngine: option<renderingEngine>,
    robotSoftwareSuite: robotSoftwareSuite,
    simulationSoftwareSuite: simulationSoftwareSuite,
    sources: sourceConfigs,
    name: name,
  }
  type response = {
    tags: option<tagMap>,
    revisionId: option<revisionId>,
    lastUpdatedAt: option<lastUpdatedAt>,
    renderingEngine: option<renderingEngine>,
    robotSoftwareSuite: option<robotSoftwareSuite>,
    simulationSoftwareSuite: option<simulationSoftwareSuite>,
    sources: option<sources>,
    version: option<version>,
    name: option<name>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateSimulationApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRobotApplicationVersion = {
  type t
  type request = {
    currentRevisionId: option<revisionId>,
    application: arn,
  }
  type response = {
    revisionId: option<revisionId>,
    lastUpdatedAt: option<lastUpdatedAt>,
    robotSoftwareSuite: option<robotSoftwareSuite>,
    sources: option<sources>,
    version: option<version>,
    name: option<name>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateRobotApplicationVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRobotApplication = {
  type t
  type request = {
    tags: option<tagMap>,
    robotSoftwareSuite: robotSoftwareSuite,
    sources: sourceConfigs,
    name: name,
  }
  type response = {
    tags: option<tagMap>,
    revisionId: option<revisionId>,
    lastUpdatedAt: option<lastUpdatedAt>,
    robotSoftwareSuite: option<robotSoftwareSuite>,
    sources: option<sources>,
    version: option<version>,
    name: option<name>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateRobotApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorlds = {
  type t
  type request = {
    filters: option<filters>,
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    worldSummaries: option<worldSummaries>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "ListWorldsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorldGenerationJobs = {
  type t
  type request = {
    filters: option<filters>,
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    worldGenerationJobSummaries: worldGenerationJobSummaries,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "ListWorldGenerationJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorldExportJobs = {
  type t
  type request = {
    filters: option<filters>,
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    worldExportJobSummaries: worldExportJobSummaries,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "ListWorldExportJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSimulationJobs = {
  type t
  type request = {
    filters: option<filters>,
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    simulationJobSummaries: simulationJobSummaries,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "ListSimulationJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSimulationJobBatches = {
  type t
  type request = {
    filters: option<filters>,
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    simulationJobBatchSummaries: option<simulationJobBatchSummaries>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "ListSimulationJobBatchesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSimulationApplications = {
  type t
  type request = {
    filters: option<filters>,
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
    versionQualifier: option<versionQualifier>,
  }
  type response = {
    nextToken: option<paginationToken>,
    simulationApplicationSummaries: option<simulationApplicationSummaries>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "ListSimulationApplicationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRobots = {
  type t
  type request = {
    filters: option<filters>,
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    robots: option<robots>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "ListRobotsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRobotApplications = {
  type t
  type request = {
    filters: option<filters>,
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
    versionQualifier: option<versionQualifier>,
  }
  type response = {
    nextToken: option<paginationToken>,
    robotApplicationSummaries: option<robotApplicationSummaries>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "ListRobotApplicationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFleets = {
  type t
  type request = {
    filters: option<filters>,
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    fleetDetails: option<fleets>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "ListFleetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SyncDeploymentJob = {
  type t
  type request = {
    fleet: arn,
    clientRequestToken: clientRequestToken,
  }
  type response = {
    createdAt: option<createdAt>,
    failureCode: option<deploymentJobErrorCode>,
    failureReason: option<genericString>,
    deploymentApplicationConfigs: option<deploymentApplicationConfigs>,
    deploymentConfig: option<deploymentConfig>,
    status: option<deploymentStatus>,
    fleet: option<arn>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "SyncDeploymentJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorldGenerationJob = {
  type t
  type request = {job: arn}
  type response = {
    worldTags: option<tagMap>,
    tags: option<tagMap>,
    finishedWorldsSummary: option<finishedWorldsSummary>,
    worldCount: option<worldCount>,
    template: option<arn>,
    clientRequestToken: option<clientRequestToken>,
    failureReason: option<genericString>,
    failureCode: option<worldGenerationJobErrorCode>,
    createdAt: option<createdAt>,
    status: option<worldGenerationJobStatus>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeWorldGenerationJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDeploymentJob = {
  type t
  type request = {job: arn}
  type response = {
    tags: option<tagMap>,
    robotDeploymentSummary: option<robotDeploymentSummary>,
    createdAt: option<createdAt>,
    failureCode: option<deploymentJobErrorCode>,
    failureReason: option<genericString>,
    deploymentApplicationConfigs: option<deploymentApplicationConfigs>,
    deploymentConfig: option<deploymentConfig>,
    status: option<deploymentStatus>,
    fleet: option<arn>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeDeploymentJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeploymentJob = {
  type t
  type request = {
    tags: option<tagMap>,
    deploymentApplicationConfigs: deploymentApplicationConfigs,
    fleet: arn,
    clientRequestToken: clientRequestToken,
    deploymentConfig: option<deploymentConfig>,
  }
  type response = {
    tags: option<tagMap>,
    deploymentConfig: option<deploymentConfig>,
    createdAt: option<createdAt>,
    failureCode: option<deploymentJobErrorCode>,
    failureReason: option<genericString>,
    deploymentApplicationConfigs: option<deploymentApplicationConfigs>,
    status: option<deploymentStatus>,
    fleet: option<arn>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateDeploymentJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeploymentJobs = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
    filters: option<filters>,
  }
  type response = {
    nextToken: option<paginationToken>,
    deploymentJobs: option<deploymentJobs>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "ListDeploymentJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSimulationJob = {
  type t
  type request = {job: arn}
  type response = {
    compute: option<computeResponse>,
    networkInterface: option<networkInterface>,
    vpcConfig: option<vpcconfigResponse>,
    tags: option<tagMap>,
    dataSources: option<dataSources>,
    simulationApplications: option<simulationApplicationConfigs>,
    robotApplications: option<robotApplicationConfigs>,
    iamRole: option<iamRole>,
    simulationTimeMillis: option<simulationTimeMillis>,
    maxJobDurationInSeconds: option<jobDuration>,
    loggingConfig: option<loggingConfig>,
    outputLocation: option<outputLocation>,
    clientRequestToken: option<clientRequestToken>,
    failureReason: option<genericString>,
    failureCode: option<simulationJobErrorCode>,
    failureBehavior: option<failureBehavior>,
    lastUpdatedAt: option<lastUpdatedAt>,
    lastStartedAt: option<lastStartedAt>,
    status: option<simulationJobStatus>,
    name: option<name>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeSimulationJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSimulationJob = {
  type t
  type request = {
    compute: option<compute>,
    vpcConfig: option<vpcconfig>,
    tags: option<tagMap>,
    dataSources: option<dataSourceConfigs>,
    simulationApplications: option<simulationApplicationConfigs>,
    robotApplications: option<robotApplicationConfigs>,
    failureBehavior: option<failureBehavior>,
    iamRole: iamRole,
    maxJobDurationInSeconds: jobDuration,
    loggingConfig: option<loggingConfig>,
    outputLocation: option<outputLocation>,
    clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    compute: option<computeResponse>,
    vpcConfig: option<vpcconfigResponse>,
    tags: option<tagMap>,
    dataSources: option<dataSources>,
    simulationApplications: option<simulationApplicationConfigs>,
    robotApplications: option<robotApplicationConfigs>,
    iamRole: option<iamRole>,
    simulationTimeMillis: option<simulationTimeMillis>,
    maxJobDurationInSeconds: option<jobDuration>,
    loggingConfig: option<loggingConfig>,
    outputLocation: option<outputLocation>,
    clientRequestToken: option<clientRequestToken>,
    failureCode: option<simulationJobErrorCode>,
    failureBehavior: option<failureBehavior>,
    lastUpdatedAt: option<lastUpdatedAt>,
    lastStartedAt: option<lastStartedAt>,
    status: option<simulationJobStatus>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateSimulationJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDescribeSimulationJob = {
  type t
  type request = {jobs: arns}
  type response = {
    unprocessedJobs: option<arns>,
    jobs: option<simulationJobs>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "BatchDescribeSimulationJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartSimulationJobBatch = {
  type t
  type request = {
    tags: option<tagMap>,
    createSimulationJobRequests: createSimulationJobRequests,
    batchPolicy: option<batchPolicy>,
    clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    tags: option<tagMap>,
    createdRequests: option<simulationJobSummaries>,
    pendingRequests: option<createSimulationJobRequests>,
    failedRequests: option<failedCreateSimulationJobRequests>,
    failureReason: option<genericString>,
    failureCode: option<simulationJobBatchErrorCode>,
    batchPolicy: option<batchPolicy>,
    clientRequestToken: option<clientRequestToken>,
    createdAt: option<createdAt>,
    status: option<simulationJobBatchStatus>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "StartSimulationJobBatchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSimulationJobBatch = {
  type t
  type request = {batch: arn}
  type response = {
    tags: option<tagMap>,
    createdRequests: option<simulationJobSummaries>,
    pendingRequests: option<createSimulationJobRequests>,
    failedRequests: option<failedCreateSimulationJobRequests>,
    failureReason: option<genericString>,
    failureCode: option<simulationJobBatchErrorCode>,
    batchPolicy: option<batchPolicy>,
    clientRequestToken: option<clientRequestToken>,
    createdAt: option<createdAt>,
    lastUpdatedAt: option<lastUpdatedAt>,
    status: option<simulationJobBatchStatus>,
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeSimulationJobBatchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
