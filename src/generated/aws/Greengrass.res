type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __string = string
type __integer = int;
type __boolean = bool;
type updateTargetsOperatingSystem = [@as("openwrt") #openwrt | @as("amazon_linux") #amazon_linux | @as("raspbian") #raspbian | @as("ubuntu") #ubuntu]
type updateTargetsArchitecture = [@as("aarch64") #aarch64 | @as("x86_64") #x86_64 | @as("armv7l") #armv7l | @as("armv6l") #armv6l]
type updateAgentLogLevel = [@as("FATAL") #FATAL | @as("ERROR") #ERROR | @as("WARN") #WARN | @as("INFO") #INFO | @as("VERBOSE") #VERBOSE | @as("DEBUG") #DEBUG | @as("TRACE") #TRACE | @as("NONE") #NONE]
type telemetry = [@as("Off") #Off | @as("On") #On]
type softwareToUpdate = [@as("ota_agent") #ota_agent | @as("core") #core]
type s3UrlSignerRole = string
type permission = [@as("rw") #rw | @as("ro") #ro]
type loggerType = [@as("AWSCloudWatch") #AWSCloudWatch | @as("FileSystem") #FileSystem]
type loggerLevel = [@as("FATAL") #FATAL | @as("ERROR") #ERROR | @as("WARN") #WARN | @as("INFO") #INFO | @as("DEBUG") #DEBUG]
type loggerComponent = [@as("Lambda") #Lambda | @as("GreengrassSystem") #GreengrassSystem]
type functionIsolationMode = [@as("NoContainer") #NoContainer | @as("GreengrassContainer") #GreengrassContainer]
type encodingType = [@as("json") #json | @as("binary") #binary]
type deploymentType = [@as("ForceResetDeployment") #ForceResetDeployment | @as("ResetDeployment") #ResetDeployment | @as("Redeployment") #Redeployment | @as("NewDeployment") #NewDeployment]
type configurationSyncStatus = [@as("OutOfSync") #OutOfSync | @as("InSync") #InSync]
type bulkDeploymentStatus = [@as("Failed") #Failed | @as("Stopped") #Stopped | @as("Stopping") #Stopping | @as("Completed") #Completed | @as("Running") #Running | @as("Initializing") #Initializing]
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type versionInformation = {
@as("Version") version: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
type updateTargets = array<__string>
type telemetryConfigurationUpdate = {
@as("Telemetry") telemetry: option<telemetry>
}
type telemetryConfiguration = {
@as("Telemetry") telemetry: option<telemetry>,
@as("ConfigurationSyncStatus") configurationSyncStatus: configurationSyncStatus
}
type tags = Js.Dict.t< __string>
type subscription = {
@as("Target") target: option<__string>,
@as("Subject") subject: option<__string>,
@as("Source") source: option<__string>,
@as("Id") id: option<__string>
}
type resourceDownloadOwnerSetting = {
@as("GroupPermission") groupPermission: option<permission>,
@as("GroupOwner") groupOwner: option<__string>
}
type resourceAccessPolicy = {
@as("ResourceId") resourceId: option<__string>,
@as("Permission") permission: permission
}
type logger = {
@as("Type") type_: option<loggerType>,
@as("Space") space: __integer,
@as("Level") level: option<loggerLevel>,
@as("Id") id: option<__string>,
@as("Component") component: option<loggerComponent>
}
type groupVersion = {
@as("SubscriptionDefinitionVersionArn") subscriptionDefinitionVersionArn: __string,
@as("ResourceDefinitionVersionArn") resourceDefinitionVersionArn: __string,
@as("LoggerDefinitionVersionArn") loggerDefinitionVersionArn: __string,
@as("FunctionDefinitionVersionArn") functionDefinitionVersionArn: __string,
@as("DeviceDefinitionVersionArn") deviceDefinitionVersionArn: __string,
@as("CoreDefinitionVersionArn") coreDefinitionVersionArn: __string,
@as("ConnectorDefinitionVersionArn") connectorDefinitionVersionArn: __string
}
type groupOwnerSetting = {
@as("GroupOwner") groupOwner: __string,
@as("AutoAddGroupOwner") autoAddGroupOwner: __boolean
}
type groupInformation = {
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
type groupCertificateAuthorityProperties = {
@as("GroupCertificateAuthorityId") groupCertificateAuthorityId: __string,
@as("GroupCertificateAuthorityArn") groupCertificateAuthorityArn: __string
}
type functionRunAsConfig = {
@as("Uid") uid: __integer,
@as("Gid") gid: __integer
}
type errorDetail = {
@as("DetailedErrorMessage") detailedErrorMessage: __string,
@as("DetailedErrorCode") detailedErrorCode: __string
}
type device = {
@as("ThingArn") thingArn: option<__string>,
@as("SyncShadow") syncShadow: __boolean,
@as("Id") id: option<__string>,
@as("CertificateArn") certificateArn: option<__string>
}
type deployment = {
@as("GroupArn") groupArn: __string,
@as("DeploymentType") deploymentType: deploymentType,
@as("DeploymentId") deploymentId: __string,
@as("DeploymentArn") deploymentArn: __string,
@as("CreatedAt") createdAt: __string
}
type core = {
@as("ThingArn") thingArn: option<__string>,
@as("SyncShadow") syncShadow: __boolean,
@as("Id") id: option<__string>,
@as("CertificateArn") certificateArn: option<__string>
}
type connectivityInfo = {
@as("PortNumber") portNumber: __integer,
@as("Metadata") metadata: __string,
@as("Id") id: __string,
@as("HostAddress") hostAddress: __string
}
type bulkDeploymentMetrics = {
@as("RetryAttempts") retryAttempts: __integer,
@as("RecordsProcessed") recordsProcessed: __integer,
@as("InvalidInputRecords") invalidInputRecords: __integer
}
type bulkDeployment = {
@as("CreatedAt") createdAt: __string,
@as("BulkDeploymentId") bulkDeploymentId: __string,
@as("BulkDeploymentArn") bulkDeploymentArn: __string
}
type __listOfVersionInformation = array<versionInformation>
type __listOfSubscription = array<subscription>
type __listOfResourceAccessPolicy = array<resourceAccessPolicy>
type __listOfLogger = array<logger>
type __listOfGroupInformation = array<groupInformation>
type __listOfGroupCertificateAuthorityProperties = array<groupCertificateAuthorityProperties>
type __listOfDevice = array<device>
type __listOfCore = array<core>
type __listOfConnectivityInfo = array<connectivityInfo>
type secretsManagerSecretResourceData = {
@as("AdditionalStagingLabelsToDownload") additionalStagingLabelsToDownload: __listOf__string,
@as("ARN") aRN: __string
}
type sageMakerMachineLearningModelResourceData = {
@as("SageMakerJobArn") sageMakerJobArn: __string,
@as("OwnerSetting") ownerSetting: resourceDownloadOwnerSetting,
@as("DestinationPath") destinationPath: __string
}
type s3MachineLearningModelResourceData = {
@as("S3Uri") s3Uri: __string,
@as("OwnerSetting") ownerSetting: resourceDownloadOwnerSetting,
@as("DestinationPath") destinationPath: __string
}
type runtimeConfiguration = {
@as("TelemetryConfiguration") telemetryConfiguration: telemetryConfiguration
}
type localVolumeResourceData = {
@as("SourcePath") sourcePath: __string,
@as("GroupOwnerSetting") groupOwnerSetting: groupOwnerSetting,
@as("DestinationPath") destinationPath: __string
}
type localDeviceResourceData = {
@as("SourcePath") sourcePath: __string,
@as("GroupOwnerSetting") groupOwnerSetting: groupOwnerSetting
}
type functionExecutionConfig = {
@as("RunAs") runAs: functionRunAsConfig,
@as("IsolationMode") isolationMode: functionIsolationMode
}
type functionDefaultExecutionConfig = {
@as("RunAs") runAs: functionRunAsConfig,
@as("IsolationMode") isolationMode: functionIsolationMode
}
type errorDetails = array<errorDetail>
type deployments = array<deployment>
type definitionInformation = {
@as("Tags") tags: tags,
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
type connector = {
@as("Parameters") parameters: __mapOf__string,
@as("Id") id: option<__string>,
@as("ConnectorArn") connectorArn: option<__string>
}
type bulkDeployments = array<bulkDeployment>
type __listOfDefinitionInformation = array<definitionInformation>
type __listOfConnector = array<connector>
type subscriptionDefinitionVersion = {
@as("Subscriptions") subscriptions: __listOfSubscription
}
type resourceDataContainer = {
@as("SecretsManagerSecretResourceData") secretsManagerSecretResourceData: secretsManagerSecretResourceData,
@as("SageMakerMachineLearningModelResourceData") sageMakerMachineLearningModelResourceData: sageMakerMachineLearningModelResourceData,
@as("S3MachineLearningModelResourceData") s3MachineLearningModelResourceData: s3MachineLearningModelResourceData,
@as("LocalVolumeResourceData") localVolumeResourceData: localVolumeResourceData,
@as("LocalDeviceResourceData") localDeviceResourceData: localDeviceResourceData
}
type loggerDefinitionVersion = {
@as("Loggers") loggers: __listOfLogger
}
type functionDefaultConfig = {
@as("Execution") execution: functionDefaultExecutionConfig
}
type functionConfigurationEnvironment = {
@as("Variables") variables: __mapOf__string,
@as("ResourceAccessPolicies") resourceAccessPolicies: __listOfResourceAccessPolicy,
@as("Execution") execution: functionExecutionConfig,
@as("AccessSysfs") accessSysfs: __boolean
}
type deviceDefinitionVersion = {
@as("Devices") devices: __listOfDevice
}
type coreDefinitionVersion = {
@as("Cores") cores: __listOfCore
}
type bulkDeploymentResult = {
@as("GroupArn") groupArn: __string,
@as("ErrorMessage") errorMessage: __string,
@as("ErrorDetails") errorDetails: errorDetails,
@as("DeploymentType") deploymentType: deploymentType,
@as("DeploymentStatus") deploymentStatus: __string,
@as("DeploymentId") deploymentId: __string,
@as("DeploymentArn") deploymentArn: __string,
@as("CreatedAt") createdAt: __string
}
type resource = {
@as("ResourceDataContainer") resourceDataContainer: option<resourceDataContainer>,
@as("Name") name: option<__string>,
@as("Id") id: option<__string>
}
type functionConfiguration = {
@as("Timeout") timeout: __integer,
@as("Pinned") pinned: __boolean,
@as("MemorySize") memorySize: __integer,
@as("Executable") executable: __string,
@as("ExecArgs") execArgs: __string,
@as("Environment") environment: functionConfigurationEnvironment,
@as("EncodingType") encodingType: encodingType
}
type connectorDefinitionVersion = {
@as("Connectors") connectors: __listOfConnector
}
type bulkDeploymentResults = array<bulkDeploymentResult>
type __listOfResource = array<resource>
type function = {
@as("Id") id: option<__string>,
@as("FunctionConfiguration") functionConfiguration: functionConfiguration,
@as("FunctionArn") functionArn: __string
}
type __listOfFunction = array<function>
type resourceDefinitionVersion = {
@as("Resources") resources: __listOfResource
}
type functionDefinitionVersion = {
@as("Functions") functions: __listOfFunction,
@as("DefaultConfig") defaultConfig: functionDefaultConfig
}
type clientType;
@module("@aws-sdk/client-greengrass") @new external createClient: unit => clientType = "GreengrassClient";
module UpdateThingRuntimeConfiguration = {
  type t;
  type request = {
@as("ThingName") thingName: option<__string>,
@as("TelemetryConfiguration") telemetryConfiguration: telemetryConfigurationUpdate
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UpdateThingRuntimeConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSubscriptionDefinition = {
  type t;
  type request = {
@as("SubscriptionDefinitionId") subscriptionDefinitionId: option<__string>,
@as("Name") name: __string
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UpdateSubscriptionDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateResourceDefinition = {
  type t;
  type request = {
@as("ResourceDefinitionId") resourceDefinitionId: option<__string>,
@as("Name") name: __string
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UpdateResourceDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLoggerDefinition = {
  type t;
  type request = {
@as("Name") name: __string,
@as("LoggerDefinitionId") loggerDefinitionId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UpdateLoggerDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGroupCertificateConfiguration = {
  type t;
  type request = {
@as("GroupId") groupId: option<__string>,
@as("CertificateExpiryInMilliseconds") certificateExpiryInMilliseconds: __string
}
  type response = {
@as("GroupId") groupId: __string,
@as("CertificateExpiryInMilliseconds") certificateExpiryInMilliseconds: __string,
@as("CertificateAuthorityExpiryInMilliseconds") certificateAuthorityExpiryInMilliseconds: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UpdateGroupCertificateConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGroup = {
  type t;
  type request = {
@as("Name") name: __string,
@as("GroupId") groupId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UpdateGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFunctionDefinition = {
  type t;
  type request = {
@as("Name") name: __string,
@as("FunctionDefinitionId") functionDefinitionId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UpdateFunctionDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDeviceDefinition = {
  type t;
  type request = {
@as("Name") name: __string,
@as("DeviceDefinitionId") deviceDefinitionId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UpdateDeviceDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCoreDefinition = {
  type t;
  type request = {
@as("Name") name: __string,
@as("CoreDefinitionId") coreDefinitionId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UpdateCoreDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConnectorDefinition = {
  type t;
  type request = {
@as("Name") name: __string,
@as("ConnectorDefinitionId") connectorDefinitionId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UpdateConnectorDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConnectivityInfo = {
  type t;
  type request = {
@as("ThingName") thingName: option<__string>,
@as("ConnectivityInfo") connectivityInfo: __listOfConnectivityInfo
}
  type response = {
@as("Version") version: __string,
@as("Message") message: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UpdateConnectivityInfoCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<__listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StopBulkDeployment = {
  type t;
  type request = {
@as("BulkDeploymentId") bulkDeploymentId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "StopBulkDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartBulkDeployment = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("InputFileUri") inputFileUri: option<__string>,
@as("ExecutionRoleArn") executionRoleArn: option<__string>,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("BulkDeploymentId") bulkDeploymentId: __string,
@as("BulkDeploymentArn") bulkDeploymentArn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "StartBulkDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetDeployments = {
  type t;
  type request = {
@as("GroupId") groupId: option<__string>,
@as("Force") force: __boolean,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("DeploymentId") deploymentId: __string,
@as("DeploymentArn") deploymentArn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ResetDeploymentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<__string>
}
  type response = {
@as("tags") tags: tags
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSubscriptionDefinitionVersions = {
  type t;
  type request = {
@as("SubscriptionDefinitionId") subscriptionDefinitionId: option<__string>,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("Versions") versions: __listOfVersionInformation,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListSubscriptionDefinitionVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResourceDefinitionVersions = {
  type t;
  type request = {
@as("ResourceDefinitionId") resourceDefinitionId: option<__string>,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("Versions") versions: __listOfVersionInformation,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListResourceDefinitionVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLoggerDefinitionVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("LoggerDefinitionId") loggerDefinitionId: option<__string>
}
  type response = {
@as("Versions") versions: __listOfVersionInformation,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListLoggerDefinitionVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Groups") groups: __listOfGroupInformation
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroupVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("GroupId") groupId: option<__string>
}
  type response = {
@as("Versions") versions: __listOfVersionInformation,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListGroupVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroupCertificateAuthorities = {
  type t;
  type request = {
@as("GroupId") groupId: option<__string>
}
  type response = {
@as("GroupCertificateAuthorities") groupCertificateAuthorities: __listOfGroupCertificateAuthorityProperties
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListGroupCertificateAuthoritiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFunctionDefinitionVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("FunctionDefinitionId") functionDefinitionId: option<__string>
}
  type response = {
@as("Versions") versions: __listOfVersionInformation,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListFunctionDefinitionVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeviceDefinitionVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("DeviceDefinitionId") deviceDefinitionId: option<__string>
}
  type response = {
@as("Versions") versions: __listOfVersionInformation,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListDeviceDefinitionVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeployments = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("GroupId") groupId: option<__string>
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Deployments") deployments: deployments
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListDeploymentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCoreDefinitionVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("CoreDefinitionId") coreDefinitionId: option<__string>
}
  type response = {
@as("Versions") versions: __listOfVersionInformation,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListCoreDefinitionVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConnectorDefinitionVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("ConnectorDefinitionId") connectorDefinitionId: option<__string>
}
  type response = {
@as("Versions") versions: __listOfVersionInformation,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListConnectorDefinitionVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBulkDeployments = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("BulkDeployments") bulkDeployments: bulkDeployments
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListBulkDeploymentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetThingRuntimeConfiguration = {
  type t;
  type request = {
@as("ThingName") thingName: option<__string>
}
  type response = {
@as("RuntimeConfiguration") runtimeConfiguration: runtimeConfiguration
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetThingRuntimeConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSubscriptionDefinition = {
  type t;
  type request = {
@as("SubscriptionDefinitionId") subscriptionDefinitionId: option<__string>
}
  type response = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetSubscriptionDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServiceRoleForAccount = {
  type t;
  type request = unit
  type response = {
@as("RoleArn") roleArn: __string,
@as("AssociatedAt") associatedAt: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetServiceRoleForAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourceDefinition = {
  type t;
  type request = {
@as("ResourceDefinitionId") resourceDefinitionId: option<__string>
}
  type response = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetResourceDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLoggerDefinition = {
  type t;
  type request = {
@as("LoggerDefinitionId") loggerDefinitionId: option<__string>
}
  type response = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetLoggerDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGroupVersion = {
  type t;
  type request = {
@as("GroupVersionId") groupVersionId: option<__string>,
@as("GroupId") groupId: option<__string>
}
  type response = {
@as("Version") version: __string,
@as("Id") id: __string,
@as("Definition") definition: groupVersion,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetGroupVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGroupCertificateConfiguration = {
  type t;
  type request = {
@as("GroupId") groupId: option<__string>
}
  type response = {
@as("GroupId") groupId: __string,
@as("CertificateExpiryInMilliseconds") certificateExpiryInMilliseconds: __string,
@as("CertificateAuthorityExpiryInMilliseconds") certificateAuthorityExpiryInMilliseconds: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetGroupCertificateConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGroupCertificateAuthority = {
  type t;
  type request = {
@as("GroupId") groupId: option<__string>,
@as("CertificateAuthorityId") certificateAuthorityId: option<__string>
}
  type response = {
@as("PemEncodedCertificate") pemEncodedCertificate: __string,
@as("GroupCertificateAuthorityId") groupCertificateAuthorityId: __string,
@as("GroupCertificateAuthorityArn") groupCertificateAuthorityArn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetGroupCertificateAuthorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGroup = {
  type t;
  type request = {
@as("GroupId") groupId: option<__string>
}
  type response = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFunctionDefinition = {
  type t;
  type request = {
@as("FunctionDefinitionId") functionDefinitionId: option<__string>
}
  type response = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetFunctionDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeviceDefinition = {
  type t;
  type request = {
@as("DeviceDefinitionId") deviceDefinitionId: option<__string>
}
  type response = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetDeviceDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeploymentStatus = {
  type t;
  type request = {
@as("GroupId") groupId: option<__string>,
@as("DeploymentId") deploymentId: option<__string>
}
  type response = {
@as("UpdatedAt") updatedAt: __string,
@as("ErrorMessage") errorMessage: __string,
@as("ErrorDetails") errorDetails: errorDetails,
@as("DeploymentType") deploymentType: deploymentType,
@as("DeploymentStatus") deploymentStatus: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetDeploymentStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCoreDefinition = {
  type t;
  type request = {
@as("CoreDefinitionId") coreDefinitionId: option<__string>
}
  type response = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetCoreDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConnectorDefinition = {
  type t;
  type request = {
@as("ConnectorDefinitionId") connectorDefinitionId: option<__string>
}
  type response = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetConnectorDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConnectivityInfo = {
  type t;
  type request = {
@as("ThingName") thingName: option<__string>
}
  type response = {
@as("Message") message: __string,
@as("ConnectivityInfo") connectivityInfo: __listOfConnectivityInfo
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetConnectivityInfoCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBulkDeploymentStatus = {
  type t;
  type request = {
@as("BulkDeploymentId") bulkDeploymentId: option<__string>
}
  type response = {
@as("tags") tags: tags,
@as("ErrorMessage") errorMessage: __string,
@as("ErrorDetails") errorDetails: errorDetails,
@as("CreatedAt") createdAt: __string,
@as("BulkDeploymentStatus") bulkDeploymentStatus: bulkDeploymentStatus,
@as("BulkDeploymentMetrics") bulkDeploymentMetrics: bulkDeploymentMetrics
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetBulkDeploymentStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAssociatedRole = {
  type t;
  type request = {
@as("GroupId") groupId: option<__string>
}
  type response = {
@as("RoleArn") roleArn: __string,
@as("AssociatedAt") associatedAt: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetAssociatedRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateServiceRoleFromAccount = {
  type t;
  type request = unit
  type response = {
@as("DisassociatedAt") disassociatedAt: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DisassociateServiceRoleFromAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateRoleFromGroup = {
  type t;
  type request = {
@as("GroupId") groupId: option<__string>
}
  type response = {
@as("DisassociatedAt") disassociatedAt: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DisassociateRoleFromGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSubscriptionDefinition = {
  type t;
  type request = {
@as("SubscriptionDefinitionId") subscriptionDefinitionId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DeleteSubscriptionDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResourceDefinition = {
  type t;
  type request = {
@as("ResourceDefinitionId") resourceDefinitionId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DeleteResourceDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLoggerDefinition = {
  type t;
  type request = {
@as("LoggerDefinitionId") loggerDefinitionId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DeleteLoggerDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGroup = {
  type t;
  type request = {
@as("GroupId") groupId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DeleteGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFunctionDefinition = {
  type t;
  type request = {
@as("FunctionDefinitionId") functionDefinitionId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DeleteFunctionDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDeviceDefinition = {
  type t;
  type request = {
@as("DeviceDefinitionId") deviceDefinitionId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DeleteDeviceDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCoreDefinition = {
  type t;
  type request = {
@as("CoreDefinitionId") coreDefinitionId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DeleteCoreDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConnectorDefinition = {
  type t;
  type request = {
@as("ConnectorDefinitionId") connectorDefinitionId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "DeleteConnectorDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSubscriptionDefinitionVersion = {
  type t;
  type request = {
@as("Subscriptions") subscriptions: __listOfSubscription,
@as("SubscriptionDefinitionId") subscriptionDefinitionId: option<__string>,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Version") version: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateSubscriptionDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSoftwareUpdateJob = {
  type t;
  type request = {
@as("UpdateTargetsOperatingSystem") updateTargetsOperatingSystem: option<updateTargetsOperatingSystem>,
@as("UpdateTargetsArchitecture") updateTargetsArchitecture: option<updateTargetsArchitecture>,
@as("UpdateTargets") updateTargets: option<updateTargets>,
@as("UpdateAgentLogLevel") updateAgentLogLevel: updateAgentLogLevel,
@as("SoftwareToUpdate") softwareToUpdate: option<softwareToUpdate>,
@as("S3UrlSignerRole") s3UrlSignerRole: option<s3UrlSignerRole>,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("PlatformSoftwareVersion") platformSoftwareVersion: __string,
@as("IotJobId") iotJobId: __string,
@as("IotJobArn") iotJobArn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateSoftwareUpdateJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLoggerDefinitionVersion = {
  type t;
  type request = {
@as("Loggers") loggers: __listOfLogger,
@as("LoggerDefinitionId") loggerDefinitionId: option<__string>,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Version") version: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateLoggerDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGroupVersion = {
  type t;
  type request = {
@as("SubscriptionDefinitionVersionArn") subscriptionDefinitionVersionArn: __string,
@as("ResourceDefinitionVersionArn") resourceDefinitionVersionArn: __string,
@as("LoggerDefinitionVersionArn") loggerDefinitionVersionArn: __string,
@as("GroupId") groupId: option<__string>,
@as("FunctionDefinitionVersionArn") functionDefinitionVersionArn: __string,
@as("DeviceDefinitionVersionArn") deviceDefinitionVersionArn: __string,
@as("CoreDefinitionVersionArn") coreDefinitionVersionArn: __string,
@as("ConnectorDefinitionVersionArn") connectorDefinitionVersionArn: __string,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Version") version: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateGroupVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGroupCertificateAuthority = {
  type t;
  type request = {
@as("GroupId") groupId: option<__string>,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("GroupCertificateAuthorityArn") groupCertificateAuthorityArn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateGroupCertificateAuthorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGroup = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("Name") name: option<__string>,
@as("InitialVersion") initialVersion: groupVersion,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeviceDefinitionVersion = {
  type t;
  type request = {
@as("Devices") devices: __listOfDevice,
@as("DeviceDefinitionId") deviceDefinitionId: option<__string>,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Version") version: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateDeviceDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeployment = {
  type t;
  type request = {
@as("GroupVersionId") groupVersionId: __string,
@as("GroupId") groupId: option<__string>,
@as("DeploymentType") deploymentType: option<deploymentType>,
@as("DeploymentId") deploymentId: __string,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("DeploymentId") deploymentId: __string,
@as("DeploymentArn") deploymentArn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCoreDefinitionVersion = {
  type t;
  type request = {
@as("Cores") cores: __listOfCore,
@as("CoreDefinitionId") coreDefinitionId: option<__string>,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Version") version: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateCoreDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateServiceRoleToAccount = {
  type t;
  type request = {
@as("RoleArn") roleArn: option<__string>
}
  type response = {
@as("AssociatedAt") associatedAt: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "AssociateServiceRoleToAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateRoleToGroup = {
  type t;
  type request = {
@as("RoleArn") roleArn: option<__string>,
@as("GroupId") groupId: option<__string>
}
  type response = {
@as("AssociatedAt") associatedAt: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "AssociateRoleToGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSubscriptionDefinitions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Definitions") definitions: __listOfDefinitionInformation
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListSubscriptionDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResourceDefinitions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Definitions") definitions: __listOfDefinitionInformation
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListResourceDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLoggerDefinitions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Definitions") definitions: __listOfDefinitionInformation
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListLoggerDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFunctionDefinitions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Definitions") definitions: __listOfDefinitionInformation
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListFunctionDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeviceDefinitions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Definitions") definitions: __listOfDefinitionInformation
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListDeviceDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCoreDefinitions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Definitions") definitions: __listOfDefinitionInformation
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListCoreDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConnectorDefinitions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Definitions") definitions: __listOfDefinitionInformation
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListConnectorDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSubscriptionDefinitionVersion = {
  type t;
  type request = {
@as("SubscriptionDefinitionVersionId") subscriptionDefinitionVersionId: option<__string>,
@as("SubscriptionDefinitionId") subscriptionDefinitionId: option<__string>,
@as("NextToken") nextToken: __string
}
  type response = {
@as("Version") version: __string,
@as("NextToken") nextToken: __string,
@as("Id") id: __string,
@as("Definition") definition: subscriptionDefinitionVersion,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetSubscriptionDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLoggerDefinitionVersion = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("LoggerDefinitionVersionId") loggerDefinitionVersionId: option<__string>,
@as("LoggerDefinitionId") loggerDefinitionId: option<__string>
}
  type response = {
@as("Version") version: __string,
@as("Id") id: __string,
@as("Definition") definition: loggerDefinitionVersion,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetLoggerDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeviceDefinitionVersion = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("DeviceDefinitionVersionId") deviceDefinitionVersionId: option<__string>,
@as("DeviceDefinitionId") deviceDefinitionId: option<__string>
}
  type response = {
@as("Version") version: __string,
@as("NextToken") nextToken: __string,
@as("Id") id: __string,
@as("Definition") definition: deviceDefinitionVersion,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetDeviceDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCoreDefinitionVersion = {
  type t;
  type request = {
@as("CoreDefinitionVersionId") coreDefinitionVersionId: option<__string>,
@as("CoreDefinitionId") coreDefinitionId: option<__string>
}
  type response = {
@as("Version") version: __string,
@as("NextToken") nextToken: __string,
@as("Id") id: __string,
@as("Definition") definition: coreDefinitionVersion,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetCoreDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSubscriptionDefinition = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("InitialVersion") initialVersion: subscriptionDefinitionVersion,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateSubscriptionDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLoggerDefinition = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("InitialVersion") initialVersion: loggerDefinitionVersion,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateLoggerDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeviceDefinition = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("InitialVersion") initialVersion: deviceDefinitionVersion,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateDeviceDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCoreDefinition = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("InitialVersion") initialVersion: coreDefinitionVersion,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateCoreDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConnectorDefinitionVersion = {
  type t;
  type request = {
@as("Connectors") connectors: __listOfConnector,
@as("ConnectorDefinitionId") connectorDefinitionId: option<__string>,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Version") version: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateConnectorDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBulkDeploymentDetailedReports = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("BulkDeploymentId") bulkDeploymentId: option<__string>
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Deployments") deployments: bulkDeploymentResults
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "ListBulkDeploymentDetailedReportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConnectorDefinitionVersion = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("ConnectorDefinitionVersionId") connectorDefinitionVersionId: option<__string>,
@as("ConnectorDefinitionId") connectorDefinitionId: option<__string>
}
  type response = {
@as("Version") version: __string,
@as("NextToken") nextToken: __string,
@as("Id") id: __string,
@as("Definition") definition: connectorDefinitionVersion,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetConnectorDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConnectorDefinition = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("InitialVersion") initialVersion: connectorDefinitionVersion,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateConnectorDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResourceDefinitionVersion = {
  type t;
  type request = {
@as("Resources") resources: __listOfResource,
@as("ResourceDefinitionId") resourceDefinitionId: option<__string>,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Version") version: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateResourceDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourceDefinitionVersion = {
  type t;
  type request = {
@as("ResourceDefinitionVersionId") resourceDefinitionVersionId: option<__string>,
@as("ResourceDefinitionId") resourceDefinitionId: option<__string>
}
  type response = {
@as("Version") version: __string,
@as("Id") id: __string,
@as("Definition") definition: resourceDefinitionVersion,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetResourceDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResourceDefinition = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("InitialVersion") initialVersion: resourceDefinitionVersion,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateResourceDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFunctionDefinitionVersion = {
  type t;
  type request = {
@as("Functions") functions: __listOfFunction,
@as("FunctionDefinitionId") functionDefinitionId: option<__string>,
@as("DefaultConfig") defaultConfig: functionDefaultConfig,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Version") version: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateFunctionDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFunctionDefinitionVersion = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("FunctionDefinitionVersionId") functionDefinitionVersionId: option<__string>,
@as("FunctionDefinitionId") functionDefinitionId: option<__string>
}
  type response = {
@as("Version") version: __string,
@as("NextToken") nextToken: __string,
@as("Id") id: __string,
@as("Definition") definition: functionDefinitionVersion,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "GetFunctionDefinitionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFunctionDefinition = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("Name") name: __string,
@as("InitialVersion") initialVersion: functionDefinitionVersion,
@as("AmznClientToken") amznClientToken: __string
}
  type response = {
@as("Name") name: __string,
@as("LatestVersionArn") latestVersionArn: __string,
@as("LatestVersion") latestVersion: __string,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: __string,
@as("Id") id: __string,
@as("CreationTimestamp") creationTimestamp: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-greengrass") @new external new_: (Js.Promise.t<request>) => t = "CreateFunctionDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
