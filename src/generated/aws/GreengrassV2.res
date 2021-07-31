type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type validationExceptionReason = [@as("OTHER") #OTHER | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED | @as("CANNOT_PARSE") #CANNOT_PARSE | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION]
type topicString = string
type amazonawsTimestamp = Js.Date.t;
type thingGroupARN = string
type targetARN = string
type tagValue = string
type tagKey = string
type amazonawsString = string
type retryAfterSeconds = int;
type recipeOutputFormat = [@as("YAML") #YAML | @as("JSON") #JSON]
type recipeBlob = NodeJs.Buffer.t;
type reason = string
type publisherString = string
type optionalInteger = int;
type optionalBoolean = bool;
type nullableString = string
type nonEmptyString = string
type nextTokenString = string
type lifecycleStateDetails = string
type lambdaIsolationMode = [@as("NoContainer") #NoContainer | @as("GreengrassContainer") #GreengrassContainer]
type lambdaInputPayloadEncodingType = [@as("binary") #binary | @as("json") #json]
type lambdaFunctionARNWithVersionNumber = string
type lambdaFilesystemPermission = [@as("rw") #rw | @as("ro") #ro]
type lambdaExecArg = string
type lambdaEventSourceType = [@as("IOT_CORE") #IOT_CORE | @as("PUB_SUB") #PUB_SUB]
type isRoot = bool;
type isLatestForTarget = bool;
type ioTJobRolloutIncrementFactor = float;
type ioTJobRolloutBaseRatePerMinute = int;
type ioTJobNumberOfThings = int;
type ioTJobMinimumNumberOfExecutedThings = int;
type ioTJobMaxExecutionsPerMin = int;
type ioTJobInProgressTimeoutInMinutes = float;
type ioTJobId = string
type ioTJobExecutionFailureType = [@as("ALL") #ALL | @as("TIMED_OUT") #TIMED_OUT | @as("REJECTED") #REJECTED | @as("FAILED") #FAILED]
type ioTJobAbortThresholdPercentage = float;
type ioTJobAbortAction = [@as("CANCEL") #CANCEL]
type ioTJobARN = string
type installedComponentLifecycleState = [@as("FINISHED") #FINISHED | @as("BROKEN") #BROKEN | @as("ERRORED") #ERRORED | @as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING | @as("INSTALLED") #INSTALLED | @as("NEW") #NEW]
type genericV2ARN = string
type gGCVersion = string
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
type defaultMaxResults = int;
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
@as("message") message: option<amazonawsString>,
@as("name") name: option<amazonawsString>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type stringMap = Js.Dict.t< nonEmptyString>
type resolvedComponentVersion = {
@as("recipe") recipe: recipeBlob,
@as("componentVersion") componentVersion: componentVersionString,
@as("componentName") componentName: componentNameString,
@as("arn") arn: componentVersionARN
}
type platformAttributesMap = Js.Dict.t< nonEmptyString>
type lambdaVolumeMount = {
@as("addGroupOwner") addGroupOwner: optionalBoolean,
@as("permission") permission: lambdaFilesystemPermission,
@as("destinationPath") destinationPath: option<fileSystemPath>,
@as("sourcePath") sourcePath: option<fileSystemPath>
}
type lambdaExecArgsList = array<lambdaExecArg>
type lambdaEventSource = {
@as("type") type_: option<lambdaEventSourceType>,
@as("topic") topic: option<topicString>
}
type lambdaEnvironmentVariables = Js.Dict.t< amazonawsString>
type lambdaDeviceMount = {
@as("addGroupOwner") addGroupOwner: optionalBoolean,
@as("permission") permission: lambdaFilesystemPermission,
@as("path") path: option<fileSystemPath>
}
type ioTJobTimeoutConfig = {
@as("inProgressTimeoutInMinutes") inProgressTimeoutInMinutes: ioTJobInProgressTimeoutInMinutes
}
type ioTJobRateIncreaseCriteria = {
@as("numberOfSucceededThings") numberOfSucceededThings: ioTJobNumberOfThings,
@as("numberOfNotifiedThings") numberOfNotifiedThings: ioTJobNumberOfThings
}
type ioTJobAbortCriteria = {
@as("minNumberOfExecutedThings") minNumberOfExecutedThings: option<ioTJobMinimumNumberOfExecutedThings>,
@as("thresholdPercentage") thresholdPercentage: option<ioTJobAbortThresholdPercentage>,
@as("action") action: option<ioTJobAbortAction>,
@as("failureType") failureType: option<ioTJobExecutionFailureType>
}
type installedComponent = {
@as("isRoot") isRoot: isRoot,
@as("lifecycleStateDetails") lifecycleStateDetails: lifecycleStateDetails,
@as("lifecycleState") lifecycleState: installedComponentLifecycleState,
@as("componentVersion") componentVersion: componentVersionString,
@as("componentName") componentName: componentNameString
}
type effectiveDeployment = {
@as("modifiedTimestamp") modifiedTimestamp: option<amazonawsTimestamp>,
@as("creationTimestamp") creationTimestamp: option<amazonawsTimestamp>,
@as("reason") reason: reason,
@as("coreDeviceExecutionStatus") coreDeviceExecutionStatus: option<effectiveDeploymentExecutionStatus>,
@as("targetArn") targetArn: option<targetARN>,
@as("description") description: description,
@as("iotJobArn") iotJobArn: ioTJobARN,
@as("iotJobId") iotJobId: ioTJobId,
@as("deploymentName") deploymentName: option<deploymentName>,
@as("deploymentId") deploymentId: option<deploymentID>
}
type deploymentConfigurationValidationPolicy = {
@as("timeoutInSeconds") timeoutInSeconds: optionalInteger
}
type deploymentComponentUpdatePolicy = {
@as("action") action: deploymentComponentUpdatePolicyAction,
@as("timeoutInSeconds") timeoutInSeconds: optionalInteger
}
type deployment = {
@as("isLatestForTarget") isLatestForTarget: isLatestForTarget,
@as("deploymentStatus") deploymentStatus: deploymentStatus,
@as("creationTimestamp") creationTimestamp: amazonawsTimestamp,
@as("deploymentName") deploymentName: nonEmptyString,
@as("deploymentId") deploymentId: nonEmptyString,
@as("revisionId") revisionId: nonEmptyString,
@as("targetArn") targetArn: targetARN
}
type coreDevice = {
@as("lastStatusUpdateTimestamp") lastStatusUpdateTimestamp: amazonawsTimestamp,
@as("status") status: coreDeviceStatus,
@as("coreDeviceThingName") coreDeviceThingName: coreDeviceThingName
}
type componentVersionRequirementMap = Js.Dict.t< nonEmptyString>
type componentVersionListItem = {
@as("arn") arn: nonEmptyString,
@as("componentVersion") componentVersion: componentVersionString,
@as("componentName") componentName: componentNameString
}
type componentRunWith = {
@as("posixUser") posixUser: nonEmptyString
}
type componentDependencyRequirement = {
@as("dependencyType") dependencyType: componentDependencyType,
@as("versionRequirement") versionRequirement: nonEmptyString
}
type componentConfigurationPathList = array<componentConfigurationPath>
type validationExceptionFieldList = array<validationExceptionField>
type resolvedComponentVersionsList = array<resolvedComponentVersion>
type lambdaVolumeList = array<lambdaVolumeMount>
type lambdaEventSourceList = array<lambdaEventSource>
type lambdaDeviceList = array<lambdaDeviceMount>
type ioTJobExponentialRolloutRate = {
@as("rateIncreaseCriteria") rateIncreaseCriteria: option<ioTJobRateIncreaseCriteria>,
@as("incrementFactor") incrementFactor: option<ioTJobRolloutIncrementFactor>,
@as("baseRatePerMinute") baseRatePerMinute: option<ioTJobRolloutBaseRatePerMinute>
}
type ioTJobAbortCriteriaList = array<ioTJobAbortCriteria>
type installedComponentList = array<installedComponent>
type effectiveDeploymentsList = array<effectiveDeployment>
type deploymentPolicies = {
@as("configurationValidationPolicy") configurationValidationPolicy: deploymentConfigurationValidationPolicy,
@as("componentUpdatePolicy") componentUpdatePolicy: deploymentComponentUpdatePolicy,
@as("failureHandlingPolicy") failureHandlingPolicy: deploymentFailureHandlingPolicy
}
type deploymentList = array<deployment>
type coreDevicesList = array<coreDevice>
type componentVersionList = array<componentVersionListItem>
type componentPlatform = {
@as("attributes") attributes: platformAttributesMap,
@as("name") name: nonEmptyString
}
type componentDependencyMap = Js.Dict.t< componentDependencyRequirement>
type componentConfigurationUpdate = {
@as("reset") reset: componentConfigurationPathList,
@as("merge") merge: componentConfigurationString
}
type componentCandidate = {
@as("versionRequirements") versionRequirements: componentVersionRequirementMap,
@as("componentVersion") componentVersion: componentVersionString,
@as("componentName") componentName: componentNameString
}
type cloudComponentStatus = {
@as("errors") errors: stringMap,
@as("message") message: nonEmptyString,
@as("componentState") componentState: cloudComponentState
}
type lambdaContainerParams = {
@as("devices") devices: lambdaDeviceList,
@as("volumes") volumes: lambdaVolumeList,
@as("mountROSysfs") mountROSysfs: optionalBoolean,
@as("memorySizeInKB") memorySizeInKB: optionalInteger
}
type ioTJobExecutionsRolloutConfig = {
@as("maximumPerMinute") maximumPerMinute: ioTJobMaxExecutionsPerMin,
@as("exponentialRate") exponentialRate: ioTJobExponentialRolloutRate
}
type ioTJobAbortConfig = {
@as("criteriaList") criteriaList: option<ioTJobAbortCriteriaList>
}
type componentPlatformList = array<componentPlatform>
type componentDeploymentSpecification = {
@as("runWith") runWith: componentRunWith,
@as("configurationUpdate") configurationUpdate: componentConfigurationUpdate,
@as("componentVersion") componentVersion: componentVersionString
}
type componentCandidateList = array<componentCandidate>
type lambdaLinuxProcessParams = {
@as("containerParams") containerParams: lambdaContainerParams,
@as("isolationMode") isolationMode: lambdaIsolationMode
}
type deploymentIoTJobConfiguration = {
@as("timeoutConfig") timeoutConfig: ioTJobTimeoutConfig,
@as("abortConfig") abortConfig: ioTJobAbortConfig,
@as("jobExecutionsRolloutConfig") jobExecutionsRolloutConfig: ioTJobExecutionsRolloutConfig
}
type componentLatestVersion = {
@as("platforms") platforms: componentPlatformList,
@as("publisher") publisher: nonEmptyString,
@as("description") description: nonEmptyString,
@as("creationTimestamp") creationTimestamp: amazonawsTimestamp,
@as("componentVersion") componentVersion: componentVersionString,
@as("arn") arn: componentVersionARN
}
type componentDeploymentSpecifications = Js.Dict.t< componentDeploymentSpecification>
type lambdaExecutionParameters = {
@as("linuxProcessParams") linuxProcessParams: lambdaLinuxProcessParams,
@as("environmentVariables") environmentVariables: lambdaEnvironmentVariables,
@as("execArgs") execArgs: lambdaExecArgsList,
@as("inputPayloadEncodingType") inputPayloadEncodingType: lambdaInputPayloadEncodingType,
@as("pinned") pinned: optionalBoolean,
@as("statusTimeoutInSeconds") statusTimeoutInSeconds: optionalInteger,
@as("timeoutInSeconds") timeoutInSeconds: optionalInteger,
@as("maxIdleTimeInSeconds") maxIdleTimeInSeconds: optionalInteger,
@as("maxInstancesCount") maxInstancesCount: optionalInteger,
@as("maxQueueSize") maxQueueSize: optionalInteger,
@as("eventSources") eventSources: lambdaEventSourceList
}
type component = {
@as("latestVersion") latestVersion: componentLatestVersion,
@as("componentName") componentName: componentNameString,
@as("arn") arn: componentARN
}
type lambdaFunctionRecipeSource = {
@as("componentLambdaParameters") componentLambdaParameters: lambdaExecutionParameters,
@as("componentDependencies") componentDependencies: componentDependencyMap,
@as("componentPlatforms") componentPlatforms: componentPlatformList,
@as("componentVersion") componentVersion: componentVersionString,
@as("componentName") componentName: componentNameString,
@as("lambdaArn") lambdaArn: option<lambdaFunctionARNWithVersionNumber>
}
type componentList = array<component>
type clientType;
@module("@aws-sdk/client-greengrass") @new external createClient: unit => clientType = "GreengrassV2Client";
module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<genericV2ARN>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<genericV2ARN>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<genericV2ARN>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInstalledComponents = {
  type t;
  type request = {
@as("nextToken") nextToken: nextTokenString,
@as("maxResults") maxResults: defaultMaxResults,
@as("coreDeviceThingName") coreDeviceThingName: option<coreDeviceThingName>
}
  type response = {
@as("nextToken") nextToken: nextTokenString,
@as("installedComponents") installedComponents: installedComponentList
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListInstalledComponentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEffectiveDeployments = {
  type t;
  type request = {
@as("nextToken") nextToken: nextTokenString,
@as("maxResults") maxResults: defaultMaxResults,
@as("coreDeviceThingName") coreDeviceThingName: option<coreDeviceThingName>
}
  type response = {
@as("nextToken") nextToken: nextTokenString,
@as("effectiveDeployments") effectiveDeployments: effectiveDeploymentsList
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListEffectiveDeploymentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeployments = {
  type t;
  type request = {
@as("nextToken") nextToken: nextTokenString,
@as("maxResults") maxResults: defaultMaxResults,
@as("historyFilter") historyFilter: deploymentHistoryFilter,
@as("targetArn") targetArn: targetARN
}
  type response = {
@as("nextToken") nextToken: nextTokenString,
@as("deployments") deployments: deploymentList
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListDeploymentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCoreDevices = {
  type t;
  type request = {
@as("nextToken") nextToken: nextTokenString,
@as("maxResults") maxResults: defaultMaxResults,
@as("status") status: coreDeviceStatus,
@as("thingGroupArn") thingGroupArn: thingGroupARN
}
  type response = {
@as("nextToken") nextToken: nextTokenString,
@as("coreDevices") coreDevices: coreDevicesList
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListCoreDevicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListComponentVersions = {
  type t;
  type request = {
@as("nextToken") nextToken: nextTokenString,
@as("maxResults") maxResults: defaultMaxResults,
@as("arn") arn: option<componentARN>
}
  type response = {
@as("nextToken") nextToken: nextTokenString,
@as("componentVersions") componentVersions: componentVersionList
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListComponentVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCoreDevice = {
  type t;
  type request = {
@as("coreDeviceThingName") coreDeviceThingName: option<coreDeviceThingName>
}
  type response = {
@as("tags") tags: tagMap,
@as("lastStatusUpdateTimestamp") lastStatusUpdateTimestamp: amazonawsTimestamp,
@as("status") status: coreDeviceStatus,
@as("architecture") architecture: coreDeviceArchitectureString,
@as("platform") platform: coreDevicePlatformString,
@as("coreVersion") coreVersion: gGCVersion,
@as("coreDeviceThingName") coreDeviceThingName: coreDeviceThingName
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetCoreDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetComponentVersionArtifact = {
  type t;
  type request = {
@as("artifactName") artifactName: option<nonEmptyString>,
@as("arn") arn: option<componentVersionARN>
}
  type response = {
@as("preSignedUrl") preSignedUrl: option<nonEmptyString>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetComponentVersionArtifactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetComponent = {
  type t;
  type request = {
@as("arn") arn: option<componentVersionARN>,
@as("recipeOutputFormat") recipeOutputFormat: recipeOutputFormat
}
  type response = {
@as("tags") tags: tagMap,
@as("recipe") recipe: option<recipeBlob>,
@as("recipeOutputFormat") recipeOutputFormat: option<recipeOutputFormat>
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCoreDevice = {
  type t;
  type request = {
@as("coreDeviceThingName") coreDeviceThingName: option<coreDeviceThingName>
}
  
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DeleteCoreDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteComponent = {
  type t;
  type request = {
@as("arn") arn: option<componentVersionARN>
}
  
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DeleteComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CancelDeployment = {
  type t;
  type request = {
@as("deploymentId") deploymentId: option<nonEmptyString>
}
  type response = {
@as("message") message: nonEmptyString
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CancelDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResolveComponentCandidates = {
  type t;
  type request = {
@as("componentCandidates") componentCandidates: option<componentCandidateList>,
@as("platform") platform: option<componentPlatform>
}
  type response = {
@as("resolvedComponentVersions") resolvedComponentVersions: resolvedComponentVersionsList
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ResolveComponentCandidatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeComponent = {
  type t;
  type request = {
@as("arn") arn: option<componentVersionARN>
}
  type response = {
@as("tags") tags: tagMap,
@as("platforms") platforms: componentPlatformList,
@as("status") status: cloudComponentStatus,
@as("description") description: descriptionString,
@as("publisher") publisher: publisherString,
@as("creationTimestamp") creationTimestamp: amazonawsTimestamp,
@as("componentVersion") componentVersion: componentVersionString,
@as("componentName") componentName: componentNameString,
@as("arn") arn: componentVersionARN
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DescribeComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeployment = {
  type t;
  type request = {
@as("deploymentId") deploymentId: option<nonEmptyString>
}
  type response = {
@as("tags") tags: tagMap,
@as("isLatestForTarget") isLatestForTarget: isLatestForTarget,
@as("creationTimestamp") creationTimestamp: amazonawsTimestamp,
@as("iotJobConfiguration") iotJobConfiguration: deploymentIoTJobConfiguration,
@as("deploymentPolicies") deploymentPolicies: deploymentPolicies,
@as("components") components: componentDeploymentSpecifications,
@as("iotJobArn") iotJobArn: ioTJobARN,
@as("iotJobId") iotJobId: nullableString,
@as("deploymentStatus") deploymentStatus: deploymentStatus,
@as("deploymentName") deploymentName: nullableString,
@as("deploymentId") deploymentId: nonEmptyString,
@as("revisionId") revisionId: nonEmptyString,
@as("targetArn") targetArn: targetARN
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeployment = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("deploymentPolicies") deploymentPolicies: deploymentPolicies,
@as("iotJobConfiguration") iotJobConfiguration: deploymentIoTJobConfiguration,
@as("components") components: componentDeploymentSpecifications,
@as("deploymentName") deploymentName: nonEmptyString,
@as("targetArn") targetArn: option<targetARN>
}
  type response = {
@as("iotJobArn") iotJobArn: ioTJobARN,
@as("iotJobId") iotJobId: nonEmptyString,
@as("deploymentId") deploymentId: nonEmptyString
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListComponents = {
  type t;
  type request = {
@as("nextToken") nextToken: nextTokenString,
@as("maxResults") maxResults: defaultMaxResults,
@as("scope") scope: componentVisibilityScope
}
  type response = {
@as("nextToken") nextToken: nextTokenString,
@as("components") components: componentList
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListComponentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateComponentVersion = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("lambdaFunction") lambdaFunction: lambdaFunctionRecipeSource,
@as("inlineRecipe") inlineRecipe: recipeBlob
}
  type response = {
@as("status") status: option<cloudComponentStatus>,
@as("creationTimestamp") creationTimestamp: option<amazonawsTimestamp>,
@as("componentVersion") componentVersion: option<componentVersionString>,
@as("componentName") componentName: option<componentNameString>,
@as("arn") arn: componentVersionARN
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateComponentVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
