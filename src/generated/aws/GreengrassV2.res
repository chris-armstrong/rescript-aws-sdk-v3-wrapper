type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-greengrass") @new external createClient: unit => awsServiceClient = "GreengrassV2Client";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type validationExceptionReason = [@as("OTHER") #OTHER | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED | @as("CANNOT_PARSE") #CANNOT_PARSE | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION]
type topicString = string
type timestamp_ = Js.Date.t;
type thingGroupARN = string
type targetARN = string
type tagValue = string
type tagKey = string
type string_ = string
type retryAfterSeconds = int
type recipeOutputFormat = [@as("YAML") #YAML | @as("JSON") #JSON]
type recipeBlob = NodeJs.Buffer.t
type reason = string
type publisherString = string
type optionalInteger = int
type optionalBoolean = bool
type nullableString = string
type nonEmptyString = string
type nextTokenString = string
type lifecycleStateDetails = string
type lambdaIsolationMode = [@as("NoContainer") #NoContainer | @as("GreengrassContainer") #GreengrassContainer]
type lambdaInputPayloadEncodingType = [@as("binary") #Binary | @as("json") #Json]
type lambdaFunctionARNWithVersionNumber = string
type lambdaFilesystemPermission = [@as("rw") #Rw | @as("ro") #Ro]
type lambdaExecArg = string
type lambdaEventSourceType = [@as("IOT_CORE") #IOT_CORE | @as("PUB_SUB") #PUB_SUB]
type isRoot = bool
type isLatestForTarget = bool
type ioTJobRolloutIncrementFactor = float
type ioTJobRolloutBaseRatePerMinute = int
type ioTJobNumberOfThings = int
type ioTJobMinimumNumberOfExecutedThings = int
type ioTJobMaxExecutionsPerMin = int
type ioTJobInProgressTimeoutInMinutes = float
type ioTJobId = string
type ioTJobExecutionFailureType = [@as("ALL") #ALL | @as("TIMED_OUT") #TIMED_OUT | @as("REJECTED") #REJECTED | @as("FAILED") #FAILED]
type ioTJobAbortThresholdPercentage = float
type ioTJobAbortAction = [@as("CANCEL") #CANCEL]
type ioTJobARN = string
type installedComponentLifecycleState = [@as("FINISHED") #FINISHED | @as("BROKEN") #BROKEN | @as("ERRORED") #ERRORED | @as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING | @as("INSTALLED") #INSTALLED | @as("NEW") #NEW]
type genericV2ARN = string
type ggcversion = string
type fileSystemPath = string
type effectiveDeploymentExecutionStatus = [@as("REJECTED") #REJECTED | @as("CANCELED") #CANCELED | @as("TIMED_OUT") #TIMED_OUT | @as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("QUEUED") #QUEUED | @as("IN_PROGRESS") #IN_PROGRESS]
type descriptionString = string
type description = string
type deploymentStatus = [@as("INACTIVE") #INACTIVE | @as("FAILED") #FAILED | @as("CANCELED") #CANCELED | @as("COMPLETED") #COMPLETED | @as("ACTIVE") #ACTIVE]
type deploymentName = string
type deploymentID = string
type deploymentHistoryFilter = [@as("LATEST_ONLY") #LATEST_ONLY | @as("ALL") #ALL]
type deploymentFailureHandlingPolicy = [@as("DO_NOTHING") #DO_NOTHING | @as("ROLLBACK") #ROLLBACK]
type deploymentComponentUpdatePolicyAction = [@as("SKIP_NOTIFY_COMPONENTS") #SKIP_NOTIFY_COMPONENTS | @as("NOTIFY_COMPONENTS") #NOTIFY_COMPONENTS]
type defaultMaxResults = int
type coreDeviceThingName = string
type coreDeviceStatus = [@as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type coreDevicePlatformString = string
type coreDeviceArchitectureString = string
type componentVisibilityScope = [@as("PUBLIC") #PUBLIC | @as("PRIVATE") #PRIVATE]
type componentVersionString = string
type componentVersionARN = string
type componentNameString = string
type componentDependencyType = [@as("SOFT") #SOFT | @as("HARD") #HARD]
type componentConfigurationString = string
type componentConfigurationPath = string
type componentARN = string
type cloudComponentState = [@as("DEPRECATED") #DEPRECATED | @as("FAILED") #FAILED | @as("DEPLOYABLE") #DEPLOYABLE | @as("INITIATED") #INITIATED | @as("REQUESTED") #REQUESTED]
type validationExceptionField = {
message: string_,
  name: string_
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type stringMap = Js.Dict.t<nonEmptyString>
type resolvedComponentVersion = {
recipe: option<recipeBlob>,
  componentVersion: option<componentVersionString>,
  componentName: option<componentNameString>,
  arn: option<componentVersionARN>
}
type platformAttributesMap = Js.Dict.t<nonEmptyString>
type lambdaVolumeMount = {
addGroupOwner: option<optionalBoolean>,
  permission: option<lambdaFilesystemPermission>,
  destinationPath: fileSystemPath,
  sourcePath: fileSystemPath
}
type lambdaExecArgsList = array<lambdaExecArg>
type lambdaEventSource = {
@as("type") type_: lambdaEventSourceType,
  topic: topicString
}
type lambdaEnvironmentVariables = Js.Dict.t<string_>
type lambdaDeviceMount = {
addGroupOwner: option<optionalBoolean>,
  permission: option<lambdaFilesystemPermission>,
  path: fileSystemPath
}
type ioTJobTimeoutConfig = {
inProgressTimeoutInMinutes: option<ioTJobInProgressTimeoutInMinutes>
}
type ioTJobRateIncreaseCriteria = {
numberOfSucceededThings: option<ioTJobNumberOfThings>,
  numberOfNotifiedThings: option<ioTJobNumberOfThings>
}
type ioTJobAbortCriteria = {
minNumberOfExecutedThings: ioTJobMinimumNumberOfExecutedThings,
  thresholdPercentage: ioTJobAbortThresholdPercentage,
  action: ioTJobAbortAction,
  failureType: ioTJobExecutionFailureType
}
type installedComponent = {
isRoot: option<isRoot>,
  lifecycleStateDetails: option<lifecycleStateDetails>,
  lifecycleState: option<installedComponentLifecycleState>,
  componentVersion: option<componentVersionString>,
  componentName: option<componentNameString>
}
type effectiveDeployment = {
modifiedTimestamp: timestamp_,
  creationTimestamp: timestamp_,
  reason: option<reason>,
  coreDeviceExecutionStatus: effectiveDeploymentExecutionStatus,
  targetArn: targetARN,
  description: option<description>,
  iotJobArn: option<ioTJobARN>,
  iotJobId: option<ioTJobId>,
  deploymentName: deploymentName,
  deploymentId: deploymentID
}
type deploymentConfigurationValidationPolicy = {
timeoutInSeconds: option<optionalInteger>
}
type deploymentComponentUpdatePolicy = {
action: option<deploymentComponentUpdatePolicyAction>,
  timeoutInSeconds: option<optionalInteger>
}
type deployment = {
isLatestForTarget: option<isLatestForTarget>,
  deploymentStatus: option<deploymentStatus>,
  creationTimestamp: option<timestamp_>,
  deploymentName: option<nonEmptyString>,
  deploymentId: option<nonEmptyString>,
  revisionId: option<nonEmptyString>,
  targetArn: option<targetARN>
}
type coreDevice = {
lastStatusUpdateTimestamp: option<timestamp_>,
  status: option<coreDeviceStatus>,
  coreDeviceThingName: option<coreDeviceThingName>
}
type componentVersionRequirementMap = Js.Dict.t<nonEmptyString>
type componentVersionListItem = {
arn: option<nonEmptyString>,
  componentVersion: option<componentVersionString>,
  componentName: option<componentNameString>
}
type componentRunWith = {
posixUser: option<nonEmptyString>
}
type componentDependencyRequirement = {
dependencyType: option<componentDependencyType>,
  versionRequirement: option<nonEmptyString>
}
type componentConfigurationPathList = array<componentConfigurationPath>
type validationExceptionFieldList = array<validationExceptionField>
type resolvedComponentVersionsList = array<resolvedComponentVersion>
type lambdaVolumeList = array<lambdaVolumeMount>
type lambdaEventSourceList = array<lambdaEventSource>
type lambdaDeviceList = array<lambdaDeviceMount>
type ioTJobExponentialRolloutRate = {
rateIncreaseCriteria: ioTJobRateIncreaseCriteria,
  incrementFactor: ioTJobRolloutIncrementFactor,
  baseRatePerMinute: ioTJobRolloutBaseRatePerMinute
}
type ioTJobAbortCriteriaList = array<ioTJobAbortCriteria>
type installedComponentList = array<installedComponent>
type effectiveDeploymentsList = array<effectiveDeployment>
type deploymentPolicies = {
configurationValidationPolicy: option<deploymentConfigurationValidationPolicy>,
  componentUpdatePolicy: option<deploymentComponentUpdatePolicy>,
  failureHandlingPolicy: option<deploymentFailureHandlingPolicy>
}
type deploymentList = array<deployment>
type coreDevicesList = array<coreDevice>
type componentVersionList = array<componentVersionListItem>
type componentPlatform = {
attributes: option<platformAttributesMap>,
  name: option<nonEmptyString>
}
type componentDependencyMap = Js.Dict.t<componentDependencyRequirement>
type componentConfigurationUpdate = {
reset: option<componentConfigurationPathList>,
  merge: option<componentConfigurationString>
}
type componentCandidate = {
versionRequirements: option<componentVersionRequirementMap>,
  componentVersion: option<componentVersionString>,
  componentName: option<componentNameString>
}
type cloudComponentStatus = {
errors: option<stringMap>,
  message: option<nonEmptyString>,
  componentState: option<cloudComponentState>
}
type lambdaContainerParams = {
devices: option<lambdaDeviceList>,
  volumes: option<lambdaVolumeList>,
  mountROSysfs: option<optionalBoolean>,
  memorySizeInKB: option<optionalInteger>
}
type ioTJobExecutionsRolloutConfig = {
maximumPerMinute: option<ioTJobMaxExecutionsPerMin>,
  exponentialRate: option<ioTJobExponentialRolloutRate>
}
type ioTJobAbortConfig = {
criteriaList: ioTJobAbortCriteriaList
}
type componentPlatformList = array<componentPlatform>
type componentDeploymentSpecification = {
runWith: option<componentRunWith>,
  configurationUpdate: option<componentConfigurationUpdate>,
  componentVersion: option<componentVersionString>
}
type componentCandidateList = array<componentCandidate>
type lambdaLinuxProcessParams = {
containerParams: option<lambdaContainerParams>,
  isolationMode: option<lambdaIsolationMode>
}
type deploymentIoTJobConfiguration = {
timeoutConfig: option<ioTJobTimeoutConfig>,
  abortConfig: option<ioTJobAbortConfig>,
  jobExecutionsRolloutConfig: option<ioTJobExecutionsRolloutConfig>
}
type componentLatestVersion = {
platforms: option<componentPlatformList>,
  publisher: option<nonEmptyString>,
  description: option<nonEmptyString>,
  creationTimestamp: option<timestamp_>,
  componentVersion: option<componentVersionString>,
  arn: option<componentVersionARN>
}
type componentDeploymentSpecifications = Js.Dict.t<componentDeploymentSpecification>
type lambdaExecutionParameters = {
linuxProcessParams: option<lambdaLinuxProcessParams>,
  environmentVariables: option<lambdaEnvironmentVariables>,
  execArgs: option<lambdaExecArgsList>,
  inputPayloadEncodingType: option<lambdaInputPayloadEncodingType>,
  pinned: option<optionalBoolean>,
  statusTimeoutInSeconds: option<optionalInteger>,
  timeoutInSeconds: option<optionalInteger>,
  maxIdleTimeInSeconds: option<optionalInteger>,
  maxInstancesCount: option<optionalInteger>,
  maxQueueSize: option<optionalInteger>,
  eventSources: option<lambdaEventSourceList>
}
type component = {
latestVersion: option<componentLatestVersion>,
  componentName: option<componentNameString>,
  arn: option<componentARN>
}
type lambdaFunctionRecipeSource = {
componentLambdaParameters: option<lambdaExecutionParameters>,
  componentDependencies: option<componentDependencyMap>,
  componentPlatforms: option<componentPlatformList>,
  componentVersion: option<componentVersionString>,
  componentName: option<componentNameString>,
  lambdaArn: lambdaFunctionARNWithVersionNumber
}
type componentList = array<component>

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
  resourceArn: genericV2ARN
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
  resourceArn: genericV2ARN
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: genericV2ARN
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListInstalledComponents = {
  type t;
  type request = {
nextToken: option<nextTokenString>,
  maxResults: option<defaultMaxResults>,
  coreDeviceThingName: coreDeviceThingName
}
  type response = {
nextToken: option<nextTokenString>,
  installedComponents: option<installedComponentList>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "ListInstalledComponentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEffectiveDeployments = {
  type t;
  type request = {
nextToken: option<nextTokenString>,
  maxResults: option<defaultMaxResults>,
  coreDeviceThingName: coreDeviceThingName
}
  type response = {
nextToken: option<nextTokenString>,
  effectiveDeployments: option<effectiveDeploymentsList>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "ListEffectiveDeploymentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDeployments = {
  type t;
  type request = {
nextToken: option<nextTokenString>,
  maxResults: option<defaultMaxResults>,
  historyFilter: option<deploymentHistoryFilter>,
  targetArn: option<targetARN>
}
  type response = {
nextToken: option<nextTokenString>,
  deployments: option<deploymentList>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "ListDeploymentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCoreDevices = {
  type t;
  type request = {
nextToken: option<nextTokenString>,
  maxResults: option<defaultMaxResults>,
  status: option<coreDeviceStatus>,
  thingGroupArn: option<thingGroupARN>
}
  type response = {
nextToken: option<nextTokenString>,
  coreDevices: option<coreDevicesList>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "ListCoreDevicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListComponentVersions = {
  type t;
  type request = {
nextToken: option<nextTokenString>,
  maxResults: option<defaultMaxResults>,
  arn: componentARN
}
  type response = {
nextToken: option<nextTokenString>,
  componentVersions: option<componentVersionList>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "ListComponentVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCoreDevice = {
  type t;
  type request = {
coreDeviceThingName: coreDeviceThingName
}
  type response = {
tags: option<tagMap>,
  lastStatusUpdateTimestamp: option<timestamp_>,
  status: option<coreDeviceStatus>,
  architecture: option<coreDeviceArchitectureString>,
  platform: option<coreDevicePlatformString>,
  coreVersion: option<ggcversion>,
  coreDeviceThingName: option<coreDeviceThingName>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "GetCoreDeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetComponentVersionArtifact = {
  type t;
  type request = {
artifactName: nonEmptyString,
  arn: componentVersionARN
}
  type response = {
preSignedUrl: nonEmptyString
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "GetComponentVersionArtifactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetComponent = {
  type t;
  type request = {
arn: componentVersionARN,
  recipeOutputFormat: option<recipeOutputFormat>
}
  type response = {
tags: option<tagMap>,
  recipe: recipeBlob,
  recipeOutputFormat: recipeOutputFormat
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "GetComponentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCoreDevice = {
  type t;
  type request = {
coreDeviceThingName: coreDeviceThingName
}
  
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "DeleteCoreDeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteComponent = {
  type t;
  type request = {
arn: componentVersionARN
}
  
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "DeleteComponentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CancelDeployment = {
  type t;
  type request = {
deploymentId: nonEmptyString
}
  type response = {
message: option<nonEmptyString>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "CancelDeploymentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ResolveComponentCandidates = {
  type t;
  type request = {
componentCandidates: componentCandidateList,
  platform: componentPlatform
}
  type response = {
resolvedComponentVersions: option<resolvedComponentVersionsList>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "ResolveComponentCandidatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeComponent = {
  type t;
  type request = {
arn: componentVersionARN
}
  type response = {
tags: option<tagMap>,
  platforms: option<componentPlatformList>,
  status: option<cloudComponentStatus>,
  description: option<descriptionString>,
  publisher: option<publisherString>,
  creationTimestamp: option<timestamp_>,
  componentVersion: option<componentVersionString>,
  componentName: option<componentNameString>,
  arn: option<componentVersionARN>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "DescribeComponentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDeployment = {
  type t;
  type request = {
deploymentId: nonEmptyString
}
  type response = {
tags: option<tagMap>,
  isLatestForTarget: option<isLatestForTarget>,
  creationTimestamp: option<timestamp_>,
  iotJobConfiguration: option<deploymentIoTJobConfiguration>,
  deploymentPolicies: option<deploymentPolicies>,
  components: option<componentDeploymentSpecifications>,
  iotJobArn: option<ioTJobARN>,
  iotJobId: option<nullableString>,
  deploymentStatus: option<deploymentStatus>,
  deploymentName: option<nullableString>,
  deploymentId: option<nonEmptyString>,
  revisionId: option<nonEmptyString>,
  targetArn: option<targetARN>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "GetDeploymentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDeployment = {
  type t;
  type request = {
tags: option<tagMap>,
  deploymentPolicies: option<deploymentPolicies>,
  iotJobConfiguration: option<deploymentIoTJobConfiguration>,
  components: option<componentDeploymentSpecifications>,
  deploymentName: option<nonEmptyString>,
  targetArn: targetARN
}
  type response = {
iotJobArn: option<ioTJobARN>,
  iotJobId: option<nonEmptyString>,
  deploymentId: option<nonEmptyString>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "CreateDeploymentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListComponents = {
  type t;
  type request = {
nextToken: option<nextTokenString>,
  maxResults: option<defaultMaxResults>,
  scope: option<componentVisibilityScope>
}
  type response = {
nextToken: option<nextTokenString>,
  components: option<componentList>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "ListComponentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateComponentVersion = {
  type t;
  type request = {
tags: option<tagMap>,
  lambdaFunction: option<lambdaFunctionRecipeSource>,
  inlineRecipe: option<recipeBlob>
}
  type response = {
status: cloudComponentStatus,
  creationTimestamp: timestamp_,
  componentVersion: componentVersionString,
  componentName: componentNameString,
  arn: option<componentVersionARN>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (request) => t = "CreateComponentVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
