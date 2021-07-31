type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-greengrass") @new
external createClient: unit => awsServiceClient = "GreengrassClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __string = string
type __integer = int
type __boolean = bool
type updateTargetsOperatingSystem = [
  | @as("openwrt") #Openwrt
  | @as("amazon_linux") #Amazon_Linux
  | @as("raspbian") #Raspbian
  | @as("ubuntu") #Ubuntu
]
type updateTargetsArchitecture = [
  | @as("aarch64") #Aarch64
  | @as("x86_64") #X86_64
  | @as("armv7l") #Armv7l
  | @as("armv6l") #Armv6l
]
type updateAgentLogLevel = [
  | @as("FATAL") #FATAL
  | @as("ERROR") #ERROR
  | @as("WARN") #WARN
  | @as("INFO") #INFO
  | @as("VERBOSE") #VERBOSE
  | @as("DEBUG") #DEBUG
  | @as("TRACE") #TRACE
  | @as("NONE") #NONE
]
type telemetry = [@as("Off") #Off | @as("On") #On]
type softwareToUpdate = [@as("ota_agent") #Ota_Agent | @as("core") #Core]
type s3UrlSignerRole = string
type permission = [@as("rw") #Rw | @as("ro") #Ro]
type loggerType = [@as("AWSCloudWatch") #AWSCloudWatch | @as("FileSystem") #FileSystem]
type loggerLevel = [
  | @as("FATAL") #FATAL
  | @as("ERROR") #ERROR
  | @as("WARN") #WARN
  | @as("INFO") #INFO
  | @as("DEBUG") #DEBUG
]
type loggerComponent = [@as("Lambda") #Lambda | @as("GreengrassSystem") #GreengrassSystem]
type functionIsolationMode = [
  | @as("NoContainer") #NoContainer
  | @as("GreengrassContainer") #GreengrassContainer
]
type encodingType = [@as("json") #Json | @as("binary") #Binary]
type deploymentType = [
  | @as("ForceResetDeployment") #ForceResetDeployment
  | @as("ResetDeployment") #ResetDeployment
  | @as("Redeployment") #Redeployment
  | @as("NewDeployment") #NewDeployment
]
type configurationSyncStatus = [@as("OutOfSync") #OutOfSync | @as("InSync") #InSync]
type bulkDeploymentStatus = [
  | @as("Failed") #Failed
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Completed") #Completed
  | @as("Running") #Running
  | @as("Initializing") #Initializing
]
type __mapOf__string = Js.Dict.t<__string>
type __listOf__string = array<__string>
type versionInformation = {
  @as("Version") version: option<__string>,
  @as("Id") id: option<__string>,
  @as("CreationTimestamp") creationTimestamp: option<__string>,
  @as("Arn") arn: option<__string>,
}
type updateTargets = array<__string>
type telemetryConfigurationUpdate = {@as("Telemetry") telemetry: telemetry}
type telemetryConfiguration = {
  @as("Telemetry") telemetry: telemetry,
  @as("ConfigurationSyncStatus") configurationSyncStatus: option<configurationSyncStatus>,
}
type tags = Js.Dict.t<__string>
type subscription = {
  @as("Target") target: __string,
  @as("Subject") subject: __string,
  @as("Source") source: __string,
  @as("Id") id: __string,
}
type resourceDownloadOwnerSetting = {
  @as("GroupPermission") groupPermission: permission,
  @as("GroupOwner") groupOwner: __string,
}
type resourceAccessPolicy = {
  @as("ResourceId") resourceId: __string,
  @as("Permission") permission: option<permission>,
}
type logger = {
  @as("Type") type_: loggerType,
  @as("Space") space: option<__integer>,
  @as("Level") level: loggerLevel,
  @as("Id") id: __string,
  @as("Component") component: loggerComponent,
}
type groupVersion = {
  @as("SubscriptionDefinitionVersionArn") subscriptionDefinitionVersionArn: option<__string>,
  @as("ResourceDefinitionVersionArn") resourceDefinitionVersionArn: option<__string>,
  @as("LoggerDefinitionVersionArn") loggerDefinitionVersionArn: option<__string>,
  @as("FunctionDefinitionVersionArn") functionDefinitionVersionArn: option<__string>,
  @as("DeviceDefinitionVersionArn") deviceDefinitionVersionArn: option<__string>,
  @as("CoreDefinitionVersionArn") coreDefinitionVersionArn: option<__string>,
  @as("ConnectorDefinitionVersionArn") connectorDefinitionVersionArn: option<__string>,
}
type groupOwnerSetting = {
  @as("GroupOwner") groupOwner: option<__string>,
  @as("AutoAddGroupOwner") autoAddGroupOwner: option<__boolean>,
}
type groupInformation = {
  @as("Name") name: option<__string>,
  @as("LatestVersionArn") latestVersionArn: option<__string>,
  @as("LatestVersion") latestVersion: option<__string>,
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
  @as("Id") id: option<__string>,
  @as("CreationTimestamp") creationTimestamp: option<__string>,
  @as("Arn") arn: option<__string>,
}
type groupCertificateAuthorityProperties = {
  @as("GroupCertificateAuthorityId") groupCertificateAuthorityId: option<__string>,
  @as("GroupCertificateAuthorityArn") groupCertificateAuthorityArn: option<__string>,
}
type functionRunAsConfig = {
  @as("Uid") uid: option<__integer>,
  @as("Gid") gid: option<__integer>,
}
type errorDetail = {
  @as("DetailedErrorMessage") detailedErrorMessage: option<__string>,
  @as("DetailedErrorCode") detailedErrorCode: option<__string>,
}
type device = {
  @as("ThingArn") thingArn: __string,
  @as("SyncShadow") syncShadow: option<__boolean>,
  @as("Id") id: __string,
  @as("CertificateArn") certificateArn: __string,
}
type deployment = {
  @as("GroupArn") groupArn: option<__string>,
  @as("DeploymentType") deploymentType: option<deploymentType>,
  @as("DeploymentId") deploymentId: option<__string>,
  @as("DeploymentArn") deploymentArn: option<__string>,
  @as("CreatedAt") createdAt: option<__string>,
}
type core = {
  @as("ThingArn") thingArn: __string,
  @as("SyncShadow") syncShadow: option<__boolean>,
  @as("Id") id: __string,
  @as("CertificateArn") certificateArn: __string,
}
type connectivityInfo = {
  @as("PortNumber") portNumber: option<__integer>,
  @as("Metadata") metadata: option<__string>,
  @as("Id") id: option<__string>,
  @as("HostAddress") hostAddress: option<__string>,
}
type bulkDeploymentMetrics = {
  @as("RetryAttempts") retryAttempts: option<__integer>,
  @as("RecordsProcessed") recordsProcessed: option<__integer>,
  @as("InvalidInputRecords") invalidInputRecords: option<__integer>,
}
type bulkDeployment = {
  @as("CreatedAt") createdAt: option<__string>,
  @as("BulkDeploymentId") bulkDeploymentId: option<__string>,
  @as("BulkDeploymentArn") bulkDeploymentArn: option<__string>,
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
  @as("AdditionalStagingLabelsToDownload")
  additionalStagingLabelsToDownload: option<__listOf__string>,
  @as("ARN") arn: option<__string>,
}
type sageMakerMachineLearningModelResourceData = {
  @as("SageMakerJobArn") sageMakerJobArn: option<__string>,
  @as("OwnerSetting") ownerSetting: option<resourceDownloadOwnerSetting>,
  @as("DestinationPath") destinationPath: option<__string>,
}
type s3MachineLearningModelResourceData = {
  @as("S3Uri") s3Uri: option<__string>,
  @as("OwnerSetting") ownerSetting: option<resourceDownloadOwnerSetting>,
  @as("DestinationPath") destinationPath: option<__string>,
}
type runtimeConfiguration = {
  @as("TelemetryConfiguration") telemetryConfiguration: option<telemetryConfiguration>,
}
type localVolumeResourceData = {
  @as("SourcePath") sourcePath: option<__string>,
  @as("GroupOwnerSetting") groupOwnerSetting: option<groupOwnerSetting>,
  @as("DestinationPath") destinationPath: option<__string>,
}
type localDeviceResourceData = {
  @as("SourcePath") sourcePath: option<__string>,
  @as("GroupOwnerSetting") groupOwnerSetting: option<groupOwnerSetting>,
}
type functionExecutionConfig = {
  @as("RunAs") runAs: option<functionRunAsConfig>,
  @as("IsolationMode") isolationMode: option<functionIsolationMode>,
}
type functionDefaultExecutionConfig = {
  @as("RunAs") runAs: option<functionRunAsConfig>,
  @as("IsolationMode") isolationMode: option<functionIsolationMode>,
}
type errorDetails = array<errorDetail>
type deployments = array<deployment>
type definitionInformation = {
  @as("Tags") tags: option<tags>,
  @as("Name") name: option<__string>,
  @as("LatestVersionArn") latestVersionArn: option<__string>,
  @as("LatestVersion") latestVersion: option<__string>,
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
  @as("Id") id: option<__string>,
  @as("CreationTimestamp") creationTimestamp: option<__string>,
  @as("Arn") arn: option<__string>,
}
type connector = {
  @as("Parameters") parameters: option<__mapOf__string>,
  @as("Id") id: __string,
  @as("ConnectorArn") connectorArn: __string,
}
type bulkDeployments = array<bulkDeployment>
type __listOfDefinitionInformation = array<definitionInformation>
type __listOfConnector = array<connector>
type subscriptionDefinitionVersion = {
  @as("Subscriptions") subscriptions: option<__listOfSubscription>,
}
type resourceDataContainer = {
  @as("SecretsManagerSecretResourceData")
  secretsManagerSecretResourceData: option<secretsManagerSecretResourceData>,
  @as("SageMakerMachineLearningModelResourceData")
  sageMakerMachineLearningModelResourceData: option<sageMakerMachineLearningModelResourceData>,
  @as("S3MachineLearningModelResourceData")
  s3MachineLearningModelResourceData: option<s3MachineLearningModelResourceData>,
  @as("LocalVolumeResourceData") localVolumeResourceData: option<localVolumeResourceData>,
  @as("LocalDeviceResourceData") localDeviceResourceData: option<localDeviceResourceData>,
}
type loggerDefinitionVersion = {@as("Loggers") loggers: option<__listOfLogger>}
type functionDefaultConfig = {@as("Execution") execution: option<functionDefaultExecutionConfig>}
type functionConfigurationEnvironment = {
  @as("Variables") variables: option<__mapOf__string>,
  @as("ResourceAccessPolicies") resourceAccessPolicies: option<__listOfResourceAccessPolicy>,
  @as("Execution") execution: option<functionExecutionConfig>,
  @as("AccessSysfs") accessSysfs: option<__boolean>,
}
type deviceDefinitionVersion = {@as("Devices") devices: option<__listOfDevice>}
type coreDefinitionVersion = {@as("Cores") cores: option<__listOfCore>}
type bulkDeploymentResult = {
  @as("GroupArn") groupArn: option<__string>,
  @as("ErrorMessage") errorMessage: option<__string>,
  @as("ErrorDetails") errorDetails: option<errorDetails>,
  @as("DeploymentType") deploymentType: option<deploymentType>,
  @as("DeploymentStatus") deploymentStatus: option<__string>,
  @as("DeploymentId") deploymentId: option<__string>,
  @as("DeploymentArn") deploymentArn: option<__string>,
  @as("CreatedAt") createdAt: option<__string>,
}
type resource = {
  @as("ResourceDataContainer") resourceDataContainer: resourceDataContainer,
  @as("Name") name: __string,
  @as("Id") id: __string,
}
type functionConfiguration = {
  @as("Timeout") timeout: option<__integer>,
  @as("Pinned") pinned: option<__boolean>,
  @as("MemorySize") memorySize: option<__integer>,
  @as("Executable") executable: option<__string>,
  @as("ExecArgs") execArgs: option<__string>,
  @as("Environment") environment: option<functionConfigurationEnvironment>,
  @as("EncodingType") encodingType: option<encodingType>,
}
type connectorDefinitionVersion = {@as("Connectors") connectors: option<__listOfConnector>}
type bulkDeploymentResults = array<bulkDeploymentResult>
type __listOfResource = array<resource>
type function = {
  @as("Id") id: __string,
  @as("FunctionConfiguration") functionConfiguration: option<functionConfiguration>,
  @as("FunctionArn") functionArn: option<__string>,
}
type __listOfFunction = array<function>
type resourceDefinitionVersion = {@as("Resources") resources: option<__listOfResource>}
type functionDefinitionVersion = {
  @as("Functions") functions: option<__listOfFunction>,
  @as("DefaultConfig") defaultConfig: option<functionDefaultConfig>,
}

module UpdateThingRuntimeConfiguration = {
  type t
  type request = {
    @as("ThingName") thingName: __string,
    @as("TelemetryConfiguration") telemetryConfiguration: option<telemetryConfigurationUpdate>,
  }
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateThingRuntimeConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSubscriptionDefinition = {
  type t
  type request = {
    @as("SubscriptionDefinitionId") subscriptionDefinitionId: __string,
    @as("Name") name: option<__string>,
  }
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateSubscriptionDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResourceDefinition = {
  type t
  type request = {
    @as("ResourceDefinitionId") resourceDefinitionId: __string,
    @as("Name") name: option<__string>,
  }
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateResourceDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLoggerDefinition = {
  type t
  type request = {
    @as("Name") name: option<__string>,
    @as("LoggerDefinitionId") loggerDefinitionId: __string,
  }
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateLoggerDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGroupCertificateConfiguration = {
  type t
  type request = {
    @as("GroupId") groupId: __string,
    @as("CertificateExpiryInMilliseconds") certificateExpiryInMilliseconds: option<__string>,
  }
  type response = {
    @as("GroupId") groupId: option<__string>,
    @as("CertificateExpiryInMilliseconds") certificateExpiryInMilliseconds: option<__string>,
    @as("CertificateAuthorityExpiryInMilliseconds")
    certificateAuthorityExpiryInMilliseconds: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateGroupCertificateConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGroup = {
  type t
  type request = {
    @as("Name") name: option<__string>,
    @as("GroupId") groupId: __string,
  }
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "UpdateGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFunctionDefinition = {
  type t
  type request = {
    @as("Name") name: option<__string>,
    @as("FunctionDefinitionId") functionDefinitionId: __string,
  }
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateFunctionDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDeviceDefinition = {
  type t
  type request = {
    @as("Name") name: option<__string>,
    @as("DeviceDefinitionId") deviceDefinitionId: __string,
  }
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateDeviceDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCoreDefinition = {
  type t
  type request = {
    @as("Name") name: option<__string>,
    @as("CoreDefinitionId") coreDefinitionId: __string,
  }
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateCoreDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConnectorDefinition = {
  type t
  type request = {
    @as("Name") name: option<__string>,
    @as("ConnectorDefinitionId") connectorDefinitionId: __string,
  }
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateConnectorDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConnectivityInfo = {
  type t
  type request = {
    @as("ThingName") thingName: __string,
    @as("ConnectivityInfo") connectivityInfo: option<__listOfConnectivityInfo>,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("Message") message: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateConnectivityInfoCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: __listOf__string,
    @as("ResourceArn") resourceArn: __string,
  }

  @module("@aws-sdk/client-greengrass") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: option<tags>,
    @as("ResourceArn") resourceArn: __string,
  }

  @module("@aws-sdk/client-greengrass") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopBulkDeployment = {
  type t
  type request = {@as("BulkDeploymentId") bulkDeploymentId: __string}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "StopBulkDeploymentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartBulkDeployment = {
  type t
  type request = {
    tags: option<tags>,
    @as("InputFileUri") inputFileUri: __string,
    @as("ExecutionRoleArn") executionRoleArn: __string,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("BulkDeploymentId") bulkDeploymentId: option<__string>,
    @as("BulkDeploymentArn") bulkDeploymentArn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "StartBulkDeploymentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetDeployments = {
  type t
  type request = {
    @as("GroupId") groupId: __string,
    @as("Force") force: option<__boolean>,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("DeploymentId") deploymentId: option<__string>,
    @as("DeploymentArn") deploymentArn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "ResetDeploymentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: __string}
  type response = {tags: option<tags>}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSubscriptionDefinitionVersions = {
  type t
  type request = {
    @as("SubscriptionDefinitionId") subscriptionDefinitionId: __string,
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
  }
  type response = {
    @as("Versions") versions: option<__listOfVersionInformation>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListSubscriptionDefinitionVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceDefinitionVersions = {
  type t
  type request = {
    @as("ResourceDefinitionId") resourceDefinitionId: __string,
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
  }
  type response = {
    @as("Versions") versions: option<__listOfVersionInformation>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListResourceDefinitionVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLoggerDefinitionVersions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
    @as("LoggerDefinitionId") loggerDefinitionId: __string,
  }
  type response = {
    @as("Versions") versions: option<__listOfVersionInformation>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListLoggerDefinitionVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroups = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Groups") groups: option<__listOfGroupInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "ListGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroupVersions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
    @as("GroupId") groupId: __string,
  }
  type response = {
    @as("Versions") versions: option<__listOfVersionInformation>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "ListGroupVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroupCertificateAuthorities = {
  type t
  type request = {@as("GroupId") groupId: __string}
  type response = {
    @as("GroupCertificateAuthorities")
    groupCertificateAuthorities: option<__listOfGroupCertificateAuthorityProperties>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListGroupCertificateAuthoritiesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFunctionDefinitionVersions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
    @as("FunctionDefinitionId") functionDefinitionId: __string,
  }
  type response = {
    @as("Versions") versions: option<__listOfVersionInformation>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListFunctionDefinitionVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeviceDefinitionVersions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
    @as("DeviceDefinitionId") deviceDefinitionId: __string,
  }
  type response = {
    @as("Versions") versions: option<__listOfVersionInformation>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListDeviceDefinitionVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeployments = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
    @as("GroupId") groupId: __string,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Deployments") deployments: option<deployments>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "ListDeploymentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCoreDefinitionVersions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
    @as("CoreDefinitionId") coreDefinitionId: __string,
  }
  type response = {
    @as("Versions") versions: option<__listOfVersionInformation>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListCoreDefinitionVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConnectorDefinitionVersions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
    @as("ConnectorDefinitionId") connectorDefinitionId: __string,
  }
  type response = {
    @as("Versions") versions: option<__listOfVersionInformation>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListConnectorDefinitionVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBulkDeployments = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("BulkDeployments") bulkDeployments: option<bulkDeployments>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListBulkDeploymentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetThingRuntimeConfiguration = {
  type t
  type request = {@as("ThingName") thingName: __string}
  type response = {@as("RuntimeConfiguration") runtimeConfiguration: option<runtimeConfiguration>}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetThingRuntimeConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSubscriptionDefinition = {
  type t
  type request = {@as("SubscriptionDefinitionId") subscriptionDefinitionId: __string}
  type response = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetSubscriptionDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetServiceRoleForAccount = {
  type t
  type request = unit
  type response = {
    @as("RoleArn") roleArn: option<__string>,
    @as("AssociatedAt") associatedAt: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetServiceRoleForAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceDefinition = {
  type t
  type request = {@as("ResourceDefinitionId") resourceDefinitionId: __string}
  type response = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetResourceDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLoggerDefinition = {
  type t
  type request = {@as("LoggerDefinitionId") loggerDefinitionId: __string}
  type response = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetLoggerDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGroupVersion = {
  type t
  type request = {
    @as("GroupVersionId") groupVersionId: __string,
    @as("GroupId") groupId: __string,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("Id") id: option<__string>,
    @as("Definition") definition: option<groupVersion>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "GetGroupVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGroupCertificateConfiguration = {
  type t
  type request = {@as("GroupId") groupId: __string}
  type response = {
    @as("GroupId") groupId: option<__string>,
    @as("CertificateExpiryInMilliseconds") certificateExpiryInMilliseconds: option<__string>,
    @as("CertificateAuthorityExpiryInMilliseconds")
    certificateAuthorityExpiryInMilliseconds: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetGroupCertificateConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGroupCertificateAuthority = {
  type t
  type request = {
    @as("GroupId") groupId: __string,
    @as("CertificateAuthorityId") certificateAuthorityId: __string,
  }
  type response = {
    @as("PemEncodedCertificate") pemEncodedCertificate: option<__string>,
    @as("GroupCertificateAuthorityId") groupCertificateAuthorityId: option<__string>,
    @as("GroupCertificateAuthorityArn") groupCertificateAuthorityArn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetGroupCertificateAuthorityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGroup = {
  type t
  type request = {@as("GroupId") groupId: __string}
  type response = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "GetGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunctionDefinition = {
  type t
  type request = {@as("FunctionDefinitionId") functionDefinitionId: __string}
  type response = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetFunctionDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeviceDefinition = {
  type t
  type request = {@as("DeviceDefinitionId") deviceDefinitionId: __string}
  type response = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetDeviceDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeploymentStatus = {
  type t
  type request = {
    @as("GroupId") groupId: __string,
    @as("DeploymentId") deploymentId: __string,
  }
  type response = {
    @as("UpdatedAt") updatedAt: option<__string>,
    @as("ErrorMessage") errorMessage: option<__string>,
    @as("ErrorDetails") errorDetails: option<errorDetails>,
    @as("DeploymentType") deploymentType: option<deploymentType>,
    @as("DeploymentStatus") deploymentStatus: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetDeploymentStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCoreDefinition = {
  type t
  type request = {@as("CoreDefinitionId") coreDefinitionId: __string}
  type response = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "GetCoreDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConnectorDefinition = {
  type t
  type request = {@as("ConnectorDefinitionId") connectorDefinitionId: __string}
  type response = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetConnectorDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConnectivityInfo = {
  type t
  type request = {@as("ThingName") thingName: __string}
  type response = {
    @as("Message") message: option<__string>,
    @as("ConnectivityInfo") connectivityInfo: option<__listOfConnectivityInfo>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetConnectivityInfoCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBulkDeploymentStatus = {
  type t
  type request = {@as("BulkDeploymentId") bulkDeploymentId: __string}
  type response = {
    tags: option<tags>,
    @as("ErrorMessage") errorMessage: option<__string>,
    @as("ErrorDetails") errorDetails: option<errorDetails>,
    @as("CreatedAt") createdAt: option<__string>,
    @as("BulkDeploymentStatus") bulkDeploymentStatus: option<bulkDeploymentStatus>,
    @as("BulkDeploymentMetrics") bulkDeploymentMetrics: option<bulkDeploymentMetrics>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetBulkDeploymentStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssociatedRole = {
  type t
  type request = {@as("GroupId") groupId: __string}
  type response = {
    @as("RoleArn") roleArn: option<__string>,
    @as("AssociatedAt") associatedAt: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "GetAssociatedRoleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateServiceRoleFromAccount = {
  type t
  type request = unit
  type response = {@as("DisassociatedAt") disassociatedAt: option<__string>}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DisassociateServiceRoleFromAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateRoleFromGroup = {
  type t
  type request = {@as("GroupId") groupId: __string}
  type response = {@as("DisassociatedAt") disassociatedAt: option<__string>}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DisassociateRoleFromGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSubscriptionDefinition = {
  type t
  type request = {@as("SubscriptionDefinitionId") subscriptionDefinitionId: __string}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteSubscriptionDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourceDefinition = {
  type t
  type request = {@as("ResourceDefinitionId") resourceDefinitionId: __string}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteResourceDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLoggerDefinition = {
  type t
  type request = {@as("LoggerDefinitionId") loggerDefinitionId: __string}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteLoggerDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGroup = {
  type t
  type request = {@as("GroupId") groupId: __string}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "DeleteGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFunctionDefinition = {
  type t
  type request = {@as("FunctionDefinitionId") functionDefinitionId: __string}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteFunctionDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDeviceDefinition = {
  type t
  type request = {@as("DeviceDefinitionId") deviceDefinitionId: __string}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteDeviceDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCoreDefinition = {
  type t
  type request = {@as("CoreDefinitionId") coreDefinitionId: __string}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteCoreDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteConnectorDefinition = {
  type t
  type request = {@as("ConnectorDefinitionId") connectorDefinitionId: __string}
  type response = unit
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteConnectorDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSubscriptionDefinitionVersion = {
  type t
  type request = {
    @as("Subscriptions") subscriptions: option<__listOfSubscription>,
    @as("SubscriptionDefinitionId") subscriptionDefinitionId: __string,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateSubscriptionDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSoftwareUpdateJob = {
  type t
  type request = {
    @as("UpdateTargetsOperatingSystem") updateTargetsOperatingSystem: updateTargetsOperatingSystem,
    @as("UpdateTargetsArchitecture") updateTargetsArchitecture: updateTargetsArchitecture,
    @as("UpdateTargets") updateTargets: updateTargets,
    @as("UpdateAgentLogLevel") updateAgentLogLevel: option<updateAgentLogLevel>,
    @as("SoftwareToUpdate") softwareToUpdate: softwareToUpdate,
    @as("S3UrlSignerRole") s3UrlSignerRole: s3UrlSignerRole,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("PlatformSoftwareVersion") platformSoftwareVersion: option<__string>,
    @as("IotJobId") iotJobId: option<__string>,
    @as("IotJobArn") iotJobArn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateSoftwareUpdateJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLoggerDefinitionVersion = {
  type t
  type request = {
    @as("Loggers") loggers: option<__listOfLogger>,
    @as("LoggerDefinitionId") loggerDefinitionId: __string,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateLoggerDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGroupVersion = {
  type t
  type request = {
    @as("SubscriptionDefinitionVersionArn") subscriptionDefinitionVersionArn: option<__string>,
    @as("ResourceDefinitionVersionArn") resourceDefinitionVersionArn: option<__string>,
    @as("LoggerDefinitionVersionArn") loggerDefinitionVersionArn: option<__string>,
    @as("GroupId") groupId: __string,
    @as("FunctionDefinitionVersionArn") functionDefinitionVersionArn: option<__string>,
    @as("DeviceDefinitionVersionArn") deviceDefinitionVersionArn: option<__string>,
    @as("CoreDefinitionVersionArn") coreDefinitionVersionArn: option<__string>,
    @as("ConnectorDefinitionVersionArn") connectorDefinitionVersionArn: option<__string>,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateGroupVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGroupCertificateAuthority = {
  type t
  type request = {
    @as("GroupId") groupId: __string,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("GroupCertificateAuthorityArn") groupCertificateAuthorityArn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateGroupCertificateAuthorityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGroup = {
  type t
  type request = {
    tags: option<tags>,
    @as("Name") name: __string,
    @as("InitialVersion") initialVersion: option<groupVersion>,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "CreateGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeviceDefinitionVersion = {
  type t
  type request = {
    @as("Devices") devices: option<__listOfDevice>,
    @as("DeviceDefinitionId") deviceDefinitionId: __string,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateDeviceDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeployment = {
  type t
  type request = {
    @as("GroupVersionId") groupVersionId: option<__string>,
    @as("GroupId") groupId: __string,
    @as("DeploymentType") deploymentType: deploymentType,
    @as("DeploymentId") deploymentId: option<__string>,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("DeploymentId") deploymentId: option<__string>,
    @as("DeploymentArn") deploymentArn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "CreateDeploymentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCoreDefinitionVersion = {
  type t
  type request = {
    @as("Cores") cores: option<__listOfCore>,
    @as("CoreDefinitionId") coreDefinitionId: __string,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateCoreDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateServiceRoleToAccount = {
  type t
  type request = {@as("RoleArn") roleArn: __string}
  type response = {@as("AssociatedAt") associatedAt: option<__string>}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "AssociateServiceRoleToAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateRoleToGroup = {
  type t
  type request = {
    @as("RoleArn") roleArn: __string,
    @as("GroupId") groupId: __string,
  }
  type response = {@as("AssociatedAt") associatedAt: option<__string>}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "AssociateRoleToGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSubscriptionDefinitions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Definitions") definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListSubscriptionDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceDefinitions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Definitions") definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListResourceDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLoggerDefinitions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Definitions") definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListLoggerDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFunctionDefinitions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Definitions") definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListFunctionDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeviceDefinitions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Definitions") definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListDeviceDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCoreDefinitions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Definitions") definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListCoreDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConnectorDefinitions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Definitions") definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListConnectorDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSubscriptionDefinitionVersion = {
  type t
  type request = {
    @as("SubscriptionDefinitionVersionId") subscriptionDefinitionVersionId: __string,
    @as("SubscriptionDefinitionId") subscriptionDefinitionId: __string,
    @as("NextToken") nextToken: option<__string>,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @as("Id") id: option<__string>,
    @as("Definition") definition: option<subscriptionDefinitionVersion>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetSubscriptionDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLoggerDefinitionVersion = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("LoggerDefinitionVersionId") loggerDefinitionVersionId: __string,
    @as("LoggerDefinitionId") loggerDefinitionId: __string,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("Id") id: option<__string>,
    @as("Definition") definition: option<loggerDefinitionVersion>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetLoggerDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeviceDefinitionVersion = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("DeviceDefinitionVersionId") deviceDefinitionVersionId: __string,
    @as("DeviceDefinitionId") deviceDefinitionId: __string,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @as("Id") id: option<__string>,
    @as("Definition") definition: option<deviceDefinitionVersion>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetDeviceDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCoreDefinitionVersion = {
  type t
  type request = {
    @as("CoreDefinitionVersionId") coreDefinitionVersionId: __string,
    @as("CoreDefinitionId") coreDefinitionId: __string,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @as("Id") id: option<__string>,
    @as("Definition") definition: option<coreDefinitionVersion>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetCoreDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSubscriptionDefinition = {
  type t
  type request = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("InitialVersion") initialVersion: option<subscriptionDefinitionVersion>,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateSubscriptionDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLoggerDefinition = {
  type t
  type request = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("InitialVersion") initialVersion: option<loggerDefinitionVersion>,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateLoggerDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeviceDefinition = {
  type t
  type request = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("InitialVersion") initialVersion: option<deviceDefinitionVersion>,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateDeviceDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCoreDefinition = {
  type t
  type request = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("InitialVersion") initialVersion: option<coreDefinitionVersion>,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateCoreDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConnectorDefinitionVersion = {
  type t
  type request = {
    @as("Connectors") connectors: option<__listOfConnector>,
    @as("ConnectorDefinitionId") connectorDefinitionId: __string,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateConnectorDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBulkDeploymentDetailedReports = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__string>,
    @as("BulkDeploymentId") bulkDeploymentId: __string,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Deployments") deployments: option<bulkDeploymentResults>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListBulkDeploymentDetailedReportsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConnectorDefinitionVersion = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("ConnectorDefinitionVersionId") connectorDefinitionVersionId: __string,
    @as("ConnectorDefinitionId") connectorDefinitionId: __string,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @as("Id") id: option<__string>,
    @as("Definition") definition: option<connectorDefinitionVersion>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetConnectorDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConnectorDefinition = {
  type t
  type request = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("InitialVersion") initialVersion: option<connectorDefinitionVersion>,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateConnectorDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResourceDefinitionVersion = {
  type t
  type request = {
    @as("Resources") resources: option<__listOfResource>,
    @as("ResourceDefinitionId") resourceDefinitionId: __string,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateResourceDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceDefinitionVersion = {
  type t
  type request = {
    @as("ResourceDefinitionVersionId") resourceDefinitionVersionId: __string,
    @as("ResourceDefinitionId") resourceDefinitionId: __string,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("Id") id: option<__string>,
    @as("Definition") definition: option<resourceDefinitionVersion>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetResourceDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResourceDefinition = {
  type t
  type request = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("InitialVersion") initialVersion: option<resourceDefinitionVersion>,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateResourceDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFunctionDefinitionVersion = {
  type t
  type request = {
    @as("Functions") functions: option<__listOfFunction>,
    @as("FunctionDefinitionId") functionDefinitionId: __string,
    @as("DefaultConfig") defaultConfig: option<functionDefaultConfig>,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateFunctionDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunctionDefinitionVersion = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("FunctionDefinitionVersionId") functionDefinitionVersionId: __string,
    @as("FunctionDefinitionId") functionDefinitionId: __string,
  }
  type response = {
    @as("Version") version: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @as("Id") id: option<__string>,
    @as("Definition") definition: option<functionDefinitionVersion>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetFunctionDefinitionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFunctionDefinition = {
  type t
  type request = {
    tags: option<tags>,
    @as("Name") name: option<__string>,
    @as("InitialVersion") initialVersion: option<functionDefinitionVersion>,
    @as("AmznClientToken") amznClientToken: option<__string>,
  }
  type response = {
    @as("Name") name: option<__string>,
    @as("LatestVersionArn") latestVersionArn: option<__string>,
    @as("LatestVersion") latestVersion: option<__string>,
    @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<__string>,
    @as("Id") id: option<__string>,
    @as("CreationTimestamp") creationTimestamp: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateFunctionDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
