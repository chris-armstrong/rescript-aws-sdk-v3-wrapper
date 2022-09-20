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
@ocaml.doc("The operating system of the cores which are the targets of an update.")
type updateTargetsOperatingSystem = [
  | @as("openwrt") #Openwrt
  | @as("amazon_linux") #Amazon_Linux
  | @as("raspbian") #Raspbian
  | @as("ubuntu") #Ubuntu
]
@ocaml.doc("The architecture of the cores which are the targets of an update.")
type updateTargetsArchitecture = [
  | @as("aarch64") #Aarch64
  | @as("x86_64") #X86_64
  | @as("armv7l") #Armv7l
  | @as("armv6l") #Armv6l
]
@ocaml.doc(
  "The minimum level of log statements that should be logged by the OTA Agent during an update."
)
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
@ocaml.doc("The piece of software on the Greengrass core that will be updated.")
type softwareToUpdate = [@as("ota_agent") #Ota_Agent | @as("core") #Core]
@ocaml.doc(
  "The IAM Role that Greengrass will use to create pre-signed URLs pointing towards the update artifact."
)
type s3UrlSignerRole = string
@ocaml.doc("The type of permission a function has to access a resource.")
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
@ocaml.doc(
  "Specifies whether the Lambda function runs in a Greengrass container (default) or without containerization. Unless your scenario requires that you run without containerization, we recommend that you run in a Greengrass container. Omit this value to run the Lambda function with the default containerization for the group."
)
type functionIsolationMode = [
  | @as("NoContainer") #NoContainer
  | @as("GreengrassContainer") #GreengrassContainer
]
type encodingType = [@as("json") #Json | @as("binary") #Binary]
@ocaml.doc(
  "The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid."
)
type deploymentType = [
  | @as("ForceResetDeployment") #ForceResetDeployment
  | @as("ResetDeployment") #ResetDeployment
  | @as("Redeployment") #Redeployment
  | @as("NewDeployment") #NewDeployment
]
type configurationSyncStatus = [@as("OutOfSync") #OutOfSync | @as("InSync") #InSync]
@ocaml.doc("The current status of the bulk deployment.")
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
@ocaml.doc("Information about a version.")
type versionInformation = {
  @ocaml.doc("The ID of the version.") @as("Version") version: option<__string>,
  @ocaml.doc("The ID of the parent definition that the version is associated with.") @as("Id")
  id: option<__string>,
  @ocaml.doc("The time, in milliseconds since the epoch, when the version was created.")
  @as("CreationTimestamp")
  creationTimestamp: option<__string>,
  @ocaml.doc("The ARN of the version.") @as("Arn") arn: option<__string>,
}
@ocaml.doc(
  "The ARNs of the targets (IoT things or IoT thing groups) that this update will be applied to."
)
type updateTargets = array<__string>
@ocaml.doc("Configuration settings for running telemetry.")
type telemetryConfigurationUpdate = {
  @ocaml.doc("Configure telemetry to be on or off.") @as("Telemetry") telemetry: telemetry,
}
@ocaml.doc("Configuration settings for running telemetry.")
type telemetryConfiguration = {
  @ocaml.doc("Configure telemetry to be on or off.") @as("Telemetry") telemetry: telemetry,
  @ocaml.doc(
    "Synchronization status of the device reported configuration with the desired configuration."
  )
  @as("ConfigurationSyncStatus")
  configurationSyncStatus: option<configurationSyncStatus>,
}
@ocaml.doc("The key-value pair for the resource tag.") type tags = Js.Dict.t<__string>
@ocaml.doc("Information about a subscription.")
type subscription = {
  @ocaml.doc(
    "Where the message is sent to. Can be a thing ARN, a Lambda function ARN, a connector ARN, 'cloud' (which represents the AWS IoT cloud), or 'GGShadowService'."
  )
  @as("Target")
  target: __string,
  @ocaml.doc("The MQTT topic used to route the message.") @as("Subject") subject: __string,
  @ocaml.doc(
    "The source of the subscription. Can be a thing ARN, a Lambda function ARN, a connector ARN, 'cloud' (which represents the AWS IoT cloud), or 'GGShadowService'."
  )
  @as("Source")
  source: __string,
  @ocaml.doc(
    "A descriptive or arbitrary ID for the subscription. This value must be unique within the subscription definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''."
  )
  @as("Id")
  id: __string,
}
@ocaml.doc("The owner setting for downloaded machine learning resources.")
type resourceDownloadOwnerSetting = {
  @ocaml.doc(
    "The permissions that the group owner has to the resource. Valid values are ''rw'' (read/write) or ''ro'' (read-only)."
  )
  @as("GroupPermission")
  groupPermission: permission,
  @ocaml.doc(
    "The group owner of the resource. This is the name of an existing Linux OS group on the system or a GID. The group's permissions are added to the Lambda process."
  )
  @as("GroupOwner")
  groupOwner: __string,
}
@ocaml.doc("A policy used by the function to access a resource.")
type resourceAccessPolicy = {
  @ocaml.doc(
    "The ID of the resource. (This ID is assigned to the resource when you create the resource definiton.)"
  )
  @as("ResourceId")
  resourceId: __string,
  @ocaml.doc(
    "The permissions that the Lambda function has to the resource. Can be one of ''rw'' (read/write) or ''ro'' (read-only)."
  )
  @as("Permission")
  permission: option<permission>,
}
@ocaml.doc("Information about a logger")
type logger = {
  @ocaml.doc("The type of log output which will be used.") @as("Type") type_: loggerType,
  @ocaml.doc(
    "The amount of file space, in KB, to use if the local file system is used for logging purposes."
  )
  @as("Space")
  space: option<__integer>,
  @ocaml.doc("The level of the logs.") @as("Level") level: loggerLevel,
  @ocaml.doc(
    "A descriptive or arbitrary ID for the logger. This value must be unique within the logger definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''."
  )
  @as("Id")
  id: __string,
  @ocaml.doc("The component that will be subject to logging.") @as("Component")
  component: loggerComponent,
}
@ocaml.doc("Information about a group version.")
type groupVersion = {
  @ocaml.doc("The ARN of the subscription definition version for this group.")
  @as("SubscriptionDefinitionVersionArn")
  subscriptionDefinitionVersionArn: option<__string>,
  @ocaml.doc("The ARN of the resource definition version for this group.")
  @as("ResourceDefinitionVersionArn")
  resourceDefinitionVersionArn: option<__string>,
  @ocaml.doc("The ARN of the logger definition version for this group.")
  @as("LoggerDefinitionVersionArn")
  loggerDefinitionVersionArn: option<__string>,
  @ocaml.doc("The ARN of the function definition version for this group.")
  @as("FunctionDefinitionVersionArn")
  functionDefinitionVersionArn: option<__string>,
  @ocaml.doc("The ARN of the device definition version for this group.")
  @as("DeviceDefinitionVersionArn")
  deviceDefinitionVersionArn: option<__string>,
  @ocaml.doc("The ARN of the core definition version for this group.")
  @as("CoreDefinitionVersionArn")
  coreDefinitionVersionArn: option<__string>,
  @ocaml.doc("The ARN of the connector definition version for this group.")
  @as("ConnectorDefinitionVersionArn")
  connectorDefinitionVersionArn: option<__string>,
}
@ocaml.doc("Group owner related settings for local resources.")
type groupOwnerSetting = {
  @ocaml.doc(
    "The name of the Linux OS group whose privileges will be added to the Lambda process. This field is optional."
  )
  @as("GroupOwner")
  groupOwner: option<__string>,
  @ocaml.doc(
    "If true, AWS IoT Greengrass automatically adds the specified Linux OS group owner of the resource to the Lambda process privileges. Thus the Lambda process will have the file access permissions of the added Linux group."
  )
  @as("AutoAddGroupOwner")
  autoAddGroupOwner: option<__boolean>,
}
@ocaml.doc("Information about a group.")
type groupInformation = {
  @ocaml.doc("The name of the group.") @as("Name") name: option<__string>,
  @ocaml.doc("The ARN of the latest version associated with the group.") @as("LatestVersionArn")
  latestVersionArn: option<__string>,
  @ocaml.doc("The ID of the latest version associated with the group.") @as("LatestVersion")
  latestVersion: option<__string>,
  @ocaml.doc("The time, in milliseconds since the epoch, when the group was last updated.")
  @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<__string>,
  @ocaml.doc("The ID of the group.") @as("Id") id: option<__string>,
  @ocaml.doc("The time, in milliseconds since the epoch, when the group was created.")
  @as("CreationTimestamp")
  creationTimestamp: option<__string>,
  @ocaml.doc("The ARN of the group.") @as("Arn") arn: option<__string>,
}
@ocaml.doc("Information about a certificate authority for a group.")
type groupCertificateAuthorityProperties = {
  @ocaml.doc("The ID of the certificate authority for the group.")
  @as("GroupCertificateAuthorityId")
  groupCertificateAuthorityId: option<__string>,
  @ocaml.doc("The ARN of the certificate authority for the group.")
  @as("GroupCertificateAuthorityArn")
  groupCertificateAuthorityArn: option<__string>,
}
@ocaml.doc(
  "Specifies the user and group whose permissions are used when running the Lambda function. You can specify one or both values to override the default values. We recommend that you avoid running as root unless absolutely necessary to minimize the risk of unintended changes or malicious attacks. To run as root, you must set ''IsolationMode'' to ''NoContainer'' and update config.json in ''greengrass-root/config'' to set ''allowFunctionsToRunAsRoot'' to ''yes''."
)
type functionRunAsConfig = {
  @ocaml.doc("The user ID whose permissions are used to run a Lambda function.") @as("Uid")
  uid: option<__integer>,
  @ocaml.doc("The group ID whose permissions are used to run a Lambda function.") @as("Gid")
  gid: option<__integer>,
}
@ocaml.doc("Details about the error.")
type errorDetail = {
  @ocaml.doc("A detailed error message.") @as("DetailedErrorMessage")
  detailedErrorMessage: option<__string>,
  @ocaml.doc("A detailed error code.") @as("DetailedErrorCode") detailedErrorCode: option<__string>,
}
@ocaml.doc("Information about a device.")
type device = {
  @ocaml.doc("The thing ARN of the device.") @as("ThingArn") thingArn: __string,
  @ocaml.doc("If true, the device's local shadow will be automatically synced with the cloud.")
  @as("SyncShadow")
  syncShadow: option<__boolean>,
  @ocaml.doc(
    "A descriptive or arbitrary ID for the device. This value must be unique within the device definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''."
  )
  @as("Id")
  id: __string,
  @ocaml.doc("The ARN of the certificate associated with the device.") @as("CertificateArn")
  certificateArn: __string,
}
@ocaml.doc("Information about a deployment.")
type deployment = {
  @ocaml.doc("The ARN of the group for this deployment.") @as("GroupArn")
  groupArn: option<__string>,
  @ocaml.doc("The type of the deployment.") @as("DeploymentType")
  deploymentType: option<deploymentType>,
  @ocaml.doc("The ID of the deployment.") @as("DeploymentId") deploymentId: option<__string>,
  @ocaml.doc("The ARN of the deployment.") @as("DeploymentArn") deploymentArn: option<__string>,
  @ocaml.doc("The time, in milliseconds since the epoch, when the deployment was created.")
  @as("CreatedAt")
  createdAt: option<__string>,
}
@ocaml.doc("Information about a core.")
type core = {
  @ocaml.doc("The ARN of the thing which is the core.") @as("ThingArn") thingArn: __string,
  @ocaml.doc("If true, the core's local shadow is automatically synced with the cloud.")
  @as("SyncShadow")
  syncShadow: option<__boolean>,
  @ocaml.doc(
    "A descriptive or arbitrary ID for the core. This value must be unique within the core definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''."
  )
  @as("Id")
  id: __string,
  @ocaml.doc("The ARN of the certificate associated with the core.") @as("CertificateArn")
  certificateArn: __string,
}
@ocaml.doc("Information about a Greengrass core's connectivity.")
type connectivityInfo = {
  @ocaml.doc("The port of the Greengrass core. Usually 8883.") @as("PortNumber")
  portNumber: option<__integer>,
  @ocaml.doc("Metadata for this endpoint.") @as("Metadata") metadata: option<__string>,
  @ocaml.doc("The ID of the connectivity information.") @as("Id") id: option<__string>,
  @ocaml.doc("The endpoint for the Greengrass core. Can be an IP address or DNS.")
  @as("HostAddress")
  hostAddress: option<__string>,
}
@ocaml.doc("Relevant metrics on input records processed during bulk deployment.")
type bulkDeploymentMetrics = {
  @ocaml.doc(
    "The total number of deployment attempts that returned a retryable error. For example, a retry is triggered if the attempt to deploy a group returns a throttling error. ''StartBulkDeployment'' retries a group deployment up to five times."
  )
  @as("RetryAttempts")
  retryAttempts: option<__integer>,
  @ocaml.doc(
    "The total number of group records from the input file that have been processed so far, or attempted."
  )
  @as("RecordsProcessed")
  recordsProcessed: option<__integer>,
  @ocaml.doc(
    "The total number of records that returned a non-retryable error. For example, this can occur if a group record from the input file uses an invalid format or specifies a nonexistent group version, or if the execution role doesn't grant permission to deploy a group or group version."
  )
  @as("InvalidInputRecords")
  invalidInputRecords: option<__integer>,
}
@ocaml.doc(
  "Information about a bulk deployment. You cannot start a new bulk deployment while another one is still running or in a non-terminal state."
)
type bulkDeployment = {
  @ocaml.doc("The time, in ISO format, when the deployment was created.") @as("CreatedAt")
  createdAt: option<__string>,
  @ocaml.doc("The ID of the bulk deployment.") @as("BulkDeploymentId")
  bulkDeploymentId: option<__string>,
  @ocaml.doc("The ARN of the bulk deployment.") @as("BulkDeploymentArn")
  bulkDeploymentArn: option<__string>,
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
@ocaml.doc(
  "Attributes that define a secret resource, which references a secret from AWS Secrets Manager. AWS IoT Greengrass stores a local, encrypted copy of the secret on the Greengrass core, where it can be securely accessed by connectors and Lambda functions."
)
type secretsManagerSecretResourceData = {
  @ocaml.doc(
    "Optional. The staging labels whose values you want to make available on the core, in addition to ''AWSCURRENT''."
  )
  @as("AdditionalStagingLabelsToDownload")
  additionalStagingLabelsToDownload: option<__listOf__string>,
  @ocaml.doc(
    "The ARN of the Secrets Manager secret to make available on the core. The value of the secret's latest version (represented by the ''AWSCURRENT'' staging label) is included by default."
  )
  @as("ARN")
  arn: option<__string>,
}
@ocaml.doc("Attributes that define an Amazon SageMaker machine learning resource.")
type sageMakerMachineLearningModelResourceData = {
  @ocaml.doc("The ARN of the Amazon SageMaker training job that represents the source model.")
  @as("SageMakerJobArn")
  sageMakerJobArn: option<__string>,
  @as("OwnerSetting") ownerSetting: option<resourceDownloadOwnerSetting>,
  @ocaml.doc("The absolute local path of the resource inside the Lambda environment.")
  @as("DestinationPath")
  destinationPath: option<__string>,
}
@ocaml.doc("Attributes that define an Amazon S3 machine learning resource.")
type s3MachineLearningModelResourceData = {
  @ocaml.doc(
    "The URI of the source model in an S3 bucket. The model package must be in tar.gz or .zip format."
  )
  @as("S3Uri")
  s3Uri: option<__string>,
  @as("OwnerSetting") ownerSetting: option<resourceDownloadOwnerSetting>,
  @ocaml.doc("The absolute local path of the resource inside the Lambda environment.")
  @as("DestinationPath")
  destinationPath: option<__string>,
}
@ocaml.doc("Runtime configuration for a thing.")
type runtimeConfiguration = {
  @ocaml.doc("Configuration for telemetry service.") @as("TelemetryConfiguration")
  telemetryConfiguration: option<telemetryConfiguration>,
}
@ocaml.doc("Attributes that define a local volume resource.")
type localVolumeResourceData = {
  @ocaml.doc(
    "The local absolute path of the volume resource on the host. The source path for a volume resource type cannot start with ''/sys''."
  )
  @as("SourcePath")
  sourcePath: option<__string>,
  @ocaml.doc(
    "Allows you to configure additional group privileges for the Lambda process. This field is optional."
  )
  @as("GroupOwnerSetting")
  groupOwnerSetting: option<groupOwnerSetting>,
  @ocaml.doc("The absolute local path of the resource inside the Lambda environment.")
  @as("DestinationPath")
  destinationPath: option<__string>,
}
@ocaml.doc("Attributes that define a local device resource.")
type localDeviceResourceData = {
  @ocaml.doc(
    "The local absolute path of the device resource. The source path for a device resource can refer only to a character device or block device under ''/dev''."
  )
  @as("SourcePath")
  sourcePath: option<__string>,
  @ocaml.doc("Group/owner related settings for local resources.") @as("GroupOwnerSetting")
  groupOwnerSetting: option<groupOwnerSetting>,
}
@ocaml.doc("Configuration information that specifies how a Lambda function runs.")
type functionExecutionConfig = {
  @as("RunAs") runAs: option<functionRunAsConfig>,
  @as("IsolationMode") isolationMode: option<functionIsolationMode>,
}
@ocaml.doc("Configuration information that specifies how a Lambda function runs.")
type functionDefaultExecutionConfig = {
  @as("RunAs") runAs: option<functionRunAsConfig>,
  @as("IsolationMode") isolationMode: option<functionIsolationMode>,
}
@ocaml.doc("A list of error details.") type errorDetails = array<errorDetail>
type deployments = array<deployment>
@ocaml.doc("Information about a definition.")
type definitionInformation = {
  @ocaml.doc("Tag(s) attached to the resource arn.") @as("Tags") tags: option<tags>,
  @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
  @ocaml.doc("The ARN of the latest version associated with the definition.")
  @as("LatestVersionArn")
  latestVersionArn: option<__string>,
  @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
  latestVersion: option<__string>,
  @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
  @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<__string>,
  @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
  @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
  @as("CreationTimestamp")
  creationTimestamp: option<__string>,
  @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
}
@ocaml.doc(
  "Information about a connector. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services."
)
type connector = {
  @ocaml.doc("The parameters or configuration that the connector uses.") @as("Parameters")
  parameters: option<__mapOf__string>,
  @ocaml.doc(
    "A descriptive or arbitrary ID for the connector. This value must be unique within the connector definition version. Max length is 128 characters with pattern [a-zA-Z0-9:_-]+."
  )
  @as("Id")
  id: __string,
  @ocaml.doc("The ARN of the connector.") @as("ConnectorArn") connectorArn: __string,
}
type bulkDeployments = array<bulkDeployment>
type __listOfDefinitionInformation = array<definitionInformation>
type __listOfConnector = array<connector>
@ocaml.doc("Information about a subscription definition version.")
type subscriptionDefinitionVersion = {
  @ocaml.doc("A list of subscriptions.") @as("Subscriptions")
  subscriptions: option<__listOfSubscription>,
}
@ocaml.doc(
  "A container for resource data. The container takes only one of the following supported resource data types: ''LocalDeviceResourceData'', ''LocalVolumeResourceData'', ''SageMakerMachineLearningModelResourceData'', ''S3MachineLearningModelResourceData'', ''SecretsManagerSecretResourceData''."
)
type resourceDataContainer = {
  @ocaml.doc(
    "Attributes that define a secret resource, which references a secret from AWS Secrets Manager."
  )
  @as("SecretsManagerSecretResourceData")
  secretsManagerSecretResourceData: option<secretsManagerSecretResourceData>,
  @ocaml.doc("Attributes that define an Amazon SageMaker machine learning resource.")
  @as("SageMakerMachineLearningModelResourceData")
  sageMakerMachineLearningModelResourceData: option<sageMakerMachineLearningModelResourceData>,
  @ocaml.doc("Attributes that define an Amazon S3 machine learning resource.")
  @as("S3MachineLearningModelResourceData")
  s3MachineLearningModelResourceData: option<s3MachineLearningModelResourceData>,
  @ocaml.doc("Attributes that define the local volume resource.") @as("LocalVolumeResourceData")
  localVolumeResourceData: option<localVolumeResourceData>,
  @ocaml.doc("Attributes that define the local device resource.") @as("LocalDeviceResourceData")
  localDeviceResourceData: option<localDeviceResourceData>,
}
@ocaml.doc("Information about a logger definition version.")
type loggerDefinitionVersion = {
  @ocaml.doc("A list of loggers.") @as("Loggers") loggers: option<__listOfLogger>,
}
@ocaml.doc(
  "The default configuration that applies to all Lambda functions in the group. Individual Lambda functions can override these settings."
)
type functionDefaultConfig = {@as("Execution") execution: option<functionDefaultExecutionConfig>}
@ocaml.doc("The environment configuration of the function.")
type functionConfigurationEnvironment = {
  @ocaml.doc("Environment variables for the Lambda function's configuration.") @as("Variables")
  variables: option<__mapOf__string>,
  @ocaml.doc(
    "A list of the resources, with their permissions, to which the Lambda function will be granted access. A Lambda function can have at most 10 resources. ResourceAccessPolicies apply only when you run the Lambda function in a Greengrass container."
  )
  @as("ResourceAccessPolicies")
  resourceAccessPolicies: option<__listOfResourceAccessPolicy>,
  @ocaml.doc("Configuration related to executing the Lambda function") @as("Execution")
  execution: option<functionExecutionConfig>,
  @ocaml.doc(
    "If true, the Lambda function is allowed to access the host's /sys folder. Use this when the Lambda function needs to read device information from /sys. This setting applies only when you run the Lambda function in a Greengrass container."
  )
  @as("AccessSysfs")
  accessSysfs: option<__boolean>,
}
@ocaml.doc("Information about a device definition version.")
type deviceDefinitionVersion = {
  @ocaml.doc("A list of devices in the definition version.") @as("Devices")
  devices: option<__listOfDevice>,
}
@ocaml.doc("Information about a core definition version.")
type coreDefinitionVersion = {
  @ocaml.doc("A list of cores in the core definition version.") @as("Cores")
  cores: option<__listOfCore>,
}
@ocaml.doc("Information about an individual group deployment in a bulk deployment operation.")
type bulkDeploymentResult = {
  @ocaml.doc("The ARN of the Greengrass group.") @as("GroupArn") groupArn: option<__string>,
  @ocaml.doc("The error message for a failed deployment") @as("ErrorMessage")
  errorMessage: option<__string>,
  @ocaml.doc("Details about the error.") @as("ErrorDetails") errorDetails: option<errorDetails>,
  @ocaml.doc("The type of the deployment.") @as("DeploymentType")
  deploymentType: option<deploymentType>,
  @ocaml.doc(
    "The current status of the group deployment: ''InProgress'', ''Building'', ''Success'', or ''Failure''."
  )
  @as("DeploymentStatus")
  deploymentStatus: option<__string>,
  @ocaml.doc("The ID of the group deployment.") @as("DeploymentId") deploymentId: option<__string>,
  @ocaml.doc("The ARN of the group deployment.") @as("DeploymentArn")
  deploymentArn: option<__string>,
  @ocaml.doc("The time, in ISO format, when the deployment was created.") @as("CreatedAt")
  createdAt: option<__string>,
}
@ocaml.doc("Information about a resource.")
type resource = {
  @ocaml.doc("A container of data for all resource types.") @as("ResourceDataContainer")
  resourceDataContainer: resourceDataContainer,
  @ocaml.doc(
    "The descriptive resource name, which is displayed on the AWS IoT Greengrass console. Max length 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group."
  )
  @as("Name")
  name: __string,
  @ocaml.doc(
    "The resource ID, used to refer to a resource in the Lambda function configuration. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group."
  )
  @as("Id")
  id: __string,
}
@ocaml.doc("The configuration of the Lambda function.")
type functionConfiguration = {
  @ocaml.doc(
    "The allowed function execution time, after which Lambda should terminate the function. This timeout still applies to pinned Lambda functions for each request."
  )
  @as("Timeout")
  timeout: option<__integer>,
  @ocaml.doc(
    "True if the function is pinned. Pinned means the function is long-lived and starts when the core starts."
  )
  @as("Pinned")
  pinned: option<__boolean>,
  @ocaml.doc(
    "The memory size, in KB, which the function requires. This setting is not applicable and should be cleared when you run the Lambda function without containerization."
  )
  @as("MemorySize")
  memorySize: option<__integer>,
  @ocaml.doc("The name of the function executable.") @as("Executable") executable: option<__string>,
  @ocaml.doc("The execution arguments.") @as("ExecArgs") execArgs: option<__string>,
  @ocaml.doc("The environment configuration of the function.") @as("Environment")
  environment: option<functionConfigurationEnvironment>,
  @ocaml.doc(
    "The expected encoding type of the input payload for the function. The default is ''json''."
  )
  @as("EncodingType")
  encodingType: option<encodingType>,
}
@ocaml.doc(
  "Information about the connector definition version, which is a container for connectors."
)
type connectorDefinitionVersion = {
  @ocaml.doc(
    "A list of references to connectors in this version, with their corresponding configuration settings."
  )
  @as("Connectors")
  connectors: option<__listOfConnector>,
}
type bulkDeploymentResults = array<bulkDeploymentResult>
type __listOfResource = array<resource>
@ocaml.doc("Information about a Lambda function.")
type function = {
  @ocaml.doc(
    "A descriptive or arbitrary ID for the function. This value must be unique within the function definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''."
  )
  @as("Id")
  id: __string,
  @ocaml.doc("The configuration of the Lambda function.") @as("FunctionConfiguration")
  functionConfiguration: option<functionConfiguration>,
  @ocaml.doc("The ARN of the Lambda function.") @as("FunctionArn") functionArn: option<__string>,
}
type __listOfFunction = array<function>
@ocaml.doc("Information about a resource definition version.")
type resourceDefinitionVersion = {
  @ocaml.doc("A list of resources.") @as("Resources") resources: option<__listOfResource>,
}
@ocaml.doc("Information about a function definition version.")
type functionDefinitionVersion = {
  @ocaml.doc("A list of Lambda functions in this function definition version.") @as("Functions")
  functions: option<__listOfFunction>,
  @ocaml.doc(
    "The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings."
  )
  @as("DefaultConfig")
  defaultConfig: option<functionDefaultConfig>,
}
@ocaml.doc(
  "AWS IoT Greengrass seamlessly extends AWS onto physical devices so they can act locally on the data they generate, while still using the cloud for management, analytics, and durable storage. AWS IoT Greengrass ensures your devices can respond quickly to local events and operate with intermittent connectivity. AWS IoT Greengrass minimizes the cost of transmitting data to the cloud by allowing you to author AWS Lambda functions that execute locally."
)
module UpdateThingRuntimeConfiguration = {
  type t
  type request = {
    @ocaml.doc("The thing name.") @as("ThingName") thingName: __string,
    @ocaml.doc("Configuration for telemetry service.") @as("TelemetryConfiguration")
    telemetryConfiguration: option<telemetryConfigurationUpdate>,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateThingRuntimeConfigurationCommand"
  let make = (~thingName, ~telemetryConfiguration=?, ()) => new({thingName, telemetryConfiguration})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateSubscriptionDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the subscription definition.") @as("SubscriptionDefinitionId")
    subscriptionDefinitionId: __string,
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateSubscriptionDefinitionCommand"
  let make = (~subscriptionDefinitionId, ~name=?, ()) => new({subscriptionDefinitionId, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateResourceDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the resource definition.") @as("ResourceDefinitionId")
    resourceDefinitionId: __string,
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateResourceDefinitionCommand"
  let make = (~resourceDefinitionId, ~name=?, ()) => new({resourceDefinitionId, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateLoggerDefinition = {
  type t
  type request = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ID of the logger definition.") @as("LoggerDefinitionId")
    loggerDefinitionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateLoggerDefinitionCommand"
  let make = (~loggerDefinitionId, ~name=?, ()) => new({name, loggerDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateGroupCertificateConfiguration = {
  type t
  type request = {
    @ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string,
    @ocaml.doc("The amount of time remaining before the certificate expires, in milliseconds.")
    @as("CertificateExpiryInMilliseconds")
    certificateExpiryInMilliseconds: option<__string>,
  }
  type response = {
    @ocaml.doc("The ID of the group certificate configuration.") @as("GroupId")
    groupId: option<__string>,
    @ocaml.doc("The amount of time remaining before the certificate expires, in milliseconds.")
    @as("CertificateExpiryInMilliseconds")
    certificateExpiryInMilliseconds: option<__string>,
    @ocaml.doc(
      "The amount of time remaining before the certificate authority expires, in milliseconds."
    )
    @as("CertificateAuthorityExpiryInMilliseconds")
    certificateAuthorityExpiryInMilliseconds: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateGroupCertificateConfigurationCommand"
  let make = (~groupId, ~certificateExpiryInMilliseconds=?, ()) =>
    new({groupId, certificateExpiryInMilliseconds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateGroup = {
  type t
  type request = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "UpdateGroupCommand"
  let make = (~groupId, ~name=?, ()) => new({name, groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateFunctionDefinition = {
  type t
  type request = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ID of the Lambda function definition.") @as("FunctionDefinitionId")
    functionDefinitionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateFunctionDefinitionCommand"
  let make = (~functionDefinitionId, ~name=?, ()) => new({name, functionDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateDeviceDefinition = {
  type t
  type request = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ID of the device definition.") @as("DeviceDefinitionId")
    deviceDefinitionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateDeviceDefinitionCommand"
  let make = (~deviceDefinitionId, ~name=?, ()) => new({name, deviceDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateCoreDefinition = {
  type t
  type request = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ID of the core definition.") @as("CoreDefinitionId") coreDefinitionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateCoreDefinitionCommand"
  let make = (~coreDefinitionId, ~name=?, ()) => new({name, coreDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateConnectorDefinition = {
  type t
  type request = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ID of the connector definition.") @as("ConnectorDefinitionId")
    connectorDefinitionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateConnectorDefinitionCommand"
  let make = (~connectorDefinitionId, ~name=?, ()) => new({name, connectorDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateConnectivityInfo = {
  type t
  @ocaml.doc("Connectivity information.")
  type request = {
    @ocaml.doc("The thing name.") @as("ThingName") thingName: __string,
    @ocaml.doc("A list of connectivity info.") @as("ConnectivityInfo")
    connectivityInfo: option<__listOfConnectivityInfo>,
  }
  type response = {
    @ocaml.doc("The new version of the connectivity info.") @as("Version")
    version: option<__string>,
    @ocaml.doc("A message about the connectivity info update request.") @as("Message")
    message: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateConnectivityInfoCommand"
  let make = (~thingName, ~connectivityInfo=?, ()) => new({thingName, connectivityInfo})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("An array of tag keys to delete") @as("TagKeys") tagKeys: __listOf__string,
    @ocaml.doc("The Amazon Resource Name (ARN) of the resource.") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  @ocaml.doc("A map of the key-value pairs for the resource tag.")
  type request = {
    tags: option<tags>,
    @ocaml.doc("The Amazon Resource Name (ARN) of the resource.") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "TagResourceCommand"
  let make = (~resourceArn, ~tags=?, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StopBulkDeployment = {
  type t
  type request = {
    @ocaml.doc("The ID of the bulk deployment.") @as("BulkDeploymentId") bulkDeploymentId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "StopBulkDeploymentCommand"
  let make = (~bulkDeploymentId, ()) => new({bulkDeploymentId: bulkDeploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartBulkDeployment = {
  type t
  type request = {
    @ocaml.doc("Tag(s) to add to the new resource.") tags: option<tags>,
    @ocaml.doc(
      "The URI of the input file contained in the S3 bucket. The execution role must have ''getObject'' permissions on this bucket to access the input file. The input file is a JSON-serialized, line delimited file with UTF-8 encoding that provides a list of group and version IDs and the deployment type. This file must be less than 100 MB. Currently, AWS IoT Greengrass supports only ''NewDeployment'' deployment types."
    )
    @as("InputFileUri")
    inputFileUri: __string,
    @ocaml.doc(
      "The ARN of the execution role to associate with the bulk deployment operation. This IAM role must allow the ''greengrass:CreateDeployment'' action for all group versions that are listed in the input file. This IAM role must have access to the S3 bucket containing the input file."
    )
    @as("ExecutionRoleArn")
    executionRoleArn: __string,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The ID of the bulk deployment.") @as("BulkDeploymentId")
    bulkDeploymentId: option<__string>,
    @ocaml.doc("The ARN of the bulk deployment.") @as("BulkDeploymentArn")
    bulkDeploymentArn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "StartBulkDeploymentCommand"
  let make = (~inputFileUri, ~executionRoleArn, ~tags=?, ~amznClientToken=?, ()) =>
    new({tags, inputFileUri, executionRoleArn, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ResetDeployments = {
  type t
  @ocaml.doc("Information needed to reset deployments.")
  type request = {
    @ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string,
    @ocaml.doc("If true, performs a best-effort only core reset.") @as("Force")
    force: option<__boolean>,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The ID of the deployment.") @as("DeploymentId") deploymentId: option<__string>,
    @ocaml.doc("The ARN of the deployment.") @as("DeploymentArn") deploymentArn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "ResetDeploymentsCommand"
  let make = (~groupId, ~force=?, ~amznClientToken=?, ()) => new({groupId, force, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("The Amazon Resource Name (ARN) of the resource.") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {tags: option<tags>}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSubscriptionDefinitionVersions = {
  type t
  type request = {
    @ocaml.doc("The ID of the subscription definition.") @as("SubscriptionDefinitionId")
    subscriptionDefinitionId: __string,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc("Information about a version.") @as("Versions")
    versions: option<__listOfVersionInformation>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListSubscriptionDefinitionVersionsCommand"
  let make = (~subscriptionDefinitionId, ~nextToken=?, ~maxResults=?, ()) =>
    new({subscriptionDefinitionId, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResourceDefinitionVersions = {
  type t
  type request = {
    @ocaml.doc("The ID of the resource definition.") @as("ResourceDefinitionId")
    resourceDefinitionId: __string,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc("Information about a version.") @as("Versions")
    versions: option<__listOfVersionInformation>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListResourceDefinitionVersionsCommand"
  let make = (~resourceDefinitionId, ~nextToken=?, ~maxResults=?, ()) =>
    new({resourceDefinitionId, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListLoggerDefinitionVersions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("The ID of the logger definition.") @as("LoggerDefinitionId")
    loggerDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("Information about a version.") @as("Versions")
    versions: option<__listOfVersionInformation>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListLoggerDefinitionVersionsCommand"
  let make = (~loggerDefinitionId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, loggerDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListGroups = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Information about a group.") @as("Groups") groups: option<__listOfGroupInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "ListGroupsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListGroupVersions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string,
  }
  type response = {
    @ocaml.doc("Information about a version.") @as("Versions")
    versions: option<__listOfVersionInformation>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "ListGroupVersionsCommand"
  let make = (~groupId, ~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults, groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListGroupCertificateAuthorities = {
  type t
  type request = {@ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string}
  type response = {
    @ocaml.doc("A list of certificate authorities associated with the group.")
    @as("GroupCertificateAuthorities")
    groupCertificateAuthorities: option<__listOfGroupCertificateAuthorityProperties>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListGroupCertificateAuthoritiesCommand"
  let make = (~groupId, ()) => new({groupId: groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFunctionDefinitionVersions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("The ID of the Lambda function definition.") @as("FunctionDefinitionId")
    functionDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("Information about a version.") @as("Versions")
    versions: option<__listOfVersionInformation>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListFunctionDefinitionVersionsCommand"
  let make = (~functionDefinitionId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, functionDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDeviceDefinitionVersions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("The ID of the device definition.") @as("DeviceDefinitionId")
    deviceDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("Information about a version.") @as("Versions")
    versions: option<__listOfVersionInformation>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListDeviceDefinitionVersionsCommand"
  let make = (~deviceDefinitionId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, deviceDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDeployments = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string,
  }
  type response = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("A list of deployments for the requested groups.") @as("Deployments")
    deployments: option<deployments>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "ListDeploymentsCommand"
  let make = (~groupId, ~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults, groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListCoreDefinitionVersions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("The ID of the core definition.") @as("CoreDefinitionId") coreDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("Information about a version.") @as("Versions")
    versions: option<__listOfVersionInformation>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListCoreDefinitionVersionsCommand"
  let make = (~coreDefinitionId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, coreDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListConnectorDefinitionVersions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("The ID of the connector definition.") @as("ConnectorDefinitionId")
    connectorDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("Information about a version.") @as("Versions")
    versions: option<__listOfVersionInformation>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListConnectorDefinitionVersionsCommand"
  let make = (~connectorDefinitionId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, connectorDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListBulkDeployments = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("A list of bulk deployments.") @as("BulkDeployments")
    bulkDeployments: option<bulkDeployments>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListBulkDeploymentsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetThingRuntimeConfiguration = {
  type t
  type request = {@ocaml.doc("The thing name.") @as("ThingName") thingName: __string}
  type response = {
    @ocaml.doc("Runtime configuration for a thing.") @as("RuntimeConfiguration")
    runtimeConfiguration: option<runtimeConfiguration>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetThingRuntimeConfigurationCommand"
  let make = (~thingName, ()) => new({thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSubscriptionDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the subscription definition.") @as("SubscriptionDefinitionId")
    subscriptionDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("Tag(s) attached to the resource arn.") tags: option<tags>,
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetSubscriptionDefinitionCommand"
  let make = (~subscriptionDefinitionId, ()) =>
    new({subscriptionDefinitionId: subscriptionDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetServiceRoleForAccount = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("The ARN of the role which is associated with the account.") @as("RoleArn")
    roleArn: option<__string>,
    @ocaml.doc("The time when the service role was associated with the account.")
    @as("AssociatedAt")
    associatedAt: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetServiceRoleForAccountCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResourceDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the resource definition.") @as("ResourceDefinitionId")
    resourceDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("Tag(s) attached to the resource arn.") tags: option<tags>,
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetResourceDefinitionCommand"
  let make = (~resourceDefinitionId, ()) => new({resourceDefinitionId: resourceDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetLoggerDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the logger definition.") @as("LoggerDefinitionId")
    loggerDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("Tag(s) attached to the resource arn.") tags: option<tags>,
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetLoggerDefinitionCommand"
  let make = (~loggerDefinitionId, ()) => new({loggerDefinitionId: loggerDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetGroupVersion = {
  type t
  type request = {
    @ocaml.doc(
      "The ID of the group version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListGroupVersions'' requests. If the version is the last one that was associated with a group, the value also maps to the ''LatestVersion'' property of the corresponding ''GroupInformation'' object."
    )
    @as("GroupVersionId")
    groupVersionId: __string,
    @ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string,
  }
  type response = {
    @ocaml.doc("The ID of the group version.") @as("Version") version: option<__string>,
    @ocaml.doc("The ID of the group that the version is associated with.") @as("Id")
    id: option<__string>,
    @ocaml.doc("Information about the group version definition.") @as("Definition")
    definition: option<groupVersion>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the group version was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the group version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "GetGroupVersionCommand"
  let make = (~groupVersionId, ~groupId, ()) => new({groupVersionId, groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetGroupCertificateConfiguration = {
  type t
  type request = {@ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string}
  type response = {
    @ocaml.doc("The ID of the group certificate configuration.") @as("GroupId")
    groupId: option<__string>,
    @ocaml.doc("The amount of time remaining before the certificate expires, in milliseconds.")
    @as("CertificateExpiryInMilliseconds")
    certificateExpiryInMilliseconds: option<__string>,
    @ocaml.doc(
      "The amount of time remaining before the certificate authority expires, in milliseconds."
    )
    @as("CertificateAuthorityExpiryInMilliseconds")
    certificateAuthorityExpiryInMilliseconds: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetGroupCertificateConfigurationCommand"
  let make = (~groupId, ()) => new({groupId: groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetGroupCertificateAuthority = {
  type t
  type request = {
    @ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string,
    @ocaml.doc("The ID of the certificate authority.") @as("CertificateAuthorityId")
    certificateAuthorityId: __string,
  }
  type response = {
    @ocaml.doc("The PEM encoded certificate for the group.") @as("PemEncodedCertificate")
    pemEncodedCertificate: option<__string>,
    @ocaml.doc("The ID of the certificate authority for the group.")
    @as("GroupCertificateAuthorityId")
    groupCertificateAuthorityId: option<__string>,
    @ocaml.doc("The ARN of the certificate authority for the group.")
    @as("GroupCertificateAuthorityArn")
    groupCertificateAuthorityArn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetGroupCertificateAuthorityCommand"
  let make = (~groupId, ~certificateAuthorityId, ()) => new({groupId, certificateAuthorityId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetGroup = {
  type t
  type request = {@ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string}
  type response = {
    @ocaml.doc("Tag(s) attached to the resource arn.") tags: option<tags>,
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "GetGroupCommand"
  let make = (~groupId, ()) => new({groupId: groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFunctionDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the Lambda function definition.") @as("FunctionDefinitionId")
    functionDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("Tag(s) attached to the resource arn.") tags: option<tags>,
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetFunctionDefinitionCommand"
  let make = (~functionDefinitionId, ()) => new({functionDefinitionId: functionDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDeviceDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the device definition.") @as("DeviceDefinitionId")
    deviceDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("Tag(s) attached to the resource arn.") tags: option<tags>,
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetDeviceDefinitionCommand"
  let make = (~deviceDefinitionId, ()) => new({deviceDefinitionId: deviceDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDeploymentStatus = {
  type t
  type request = {
    @ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string,
    @ocaml.doc("The ID of the deployment.") @as("DeploymentId") deploymentId: __string,
  }
  type response = {
    @ocaml.doc("The time, in milliseconds since the epoch, when the deployment status was updated.")
    @as("UpdatedAt")
    updatedAt: option<__string>,
    @ocaml.doc("Error message") @as("ErrorMessage") errorMessage: option<__string>,
    @ocaml.doc("Error details") @as("ErrorDetails") errorDetails: option<errorDetails>,
    @ocaml.doc("The type of the deployment.") @as("DeploymentType")
    deploymentType: option<deploymentType>,
    @ocaml.doc(
      "The status of the deployment: ''InProgress'', ''Building'', ''Success'', or ''Failure''."
    )
    @as("DeploymentStatus")
    deploymentStatus: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetDeploymentStatusCommand"
  let make = (~groupId, ~deploymentId, ()) => new({groupId, deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCoreDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the core definition.") @as("CoreDefinitionId") coreDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("Tag(s) attached to the resource arn.") tags: option<tags>,
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "GetCoreDefinitionCommand"
  let make = (~coreDefinitionId, ()) => new({coreDefinitionId: coreDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetConnectorDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the connector definition.") @as("ConnectorDefinitionId")
    connectorDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("Tag(s) attached to the resource arn.") tags: option<tags>,
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetConnectorDefinitionCommand"
  let make = (~connectorDefinitionId, ()) => new({connectorDefinitionId: connectorDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetConnectivityInfo = {
  type t
  type request = {@ocaml.doc("The thing name.") @as("ThingName") thingName: __string}
  type response = {
    @ocaml.doc("A message about the connectivity info request.") @as("Message")
    message: option<__string>,
    @ocaml.doc("Connectivity info list.") @as("ConnectivityInfo")
    connectivityInfo: option<__listOfConnectivityInfo>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetConnectivityInfoCommand"
  let make = (~thingName, ()) => new({thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBulkDeploymentStatus = {
  type t
  type request = {
    @ocaml.doc("The ID of the bulk deployment.") @as("BulkDeploymentId") bulkDeploymentId: __string,
  }
  type response = {
    @ocaml.doc("Tag(s) attached to the resource arn.") tags: option<tags>,
    @ocaml.doc("Error message") @as("ErrorMessage") errorMessage: option<__string>,
    @ocaml.doc("Error details") @as("ErrorDetails") errorDetails: option<errorDetails>,
    @ocaml.doc("The time, in ISO format, when the deployment was created.") @as("CreatedAt")
    createdAt: option<__string>,
    @ocaml.doc("The status of the bulk deployment.") @as("BulkDeploymentStatus")
    bulkDeploymentStatus: option<bulkDeploymentStatus>,
    @ocaml.doc("Relevant metrics on input records processed during bulk deployment.")
    @as("BulkDeploymentMetrics")
    bulkDeploymentMetrics: option<bulkDeploymentMetrics>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetBulkDeploymentStatusCommand"
  let make = (~bulkDeploymentId, ()) => new({bulkDeploymentId: bulkDeploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAssociatedRole = {
  type t
  type request = {@ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string}
  type response = {
    @ocaml.doc("The ARN of the role that is associated with the group.") @as("RoleArn")
    roleArn: option<__string>,
    @ocaml.doc("The time when the role was associated with the group.") @as("AssociatedAt")
    associatedAt: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "GetAssociatedRoleCommand"
  let make = (~groupId, ()) => new({groupId: groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateServiceRoleFromAccount = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("The time when the service role was disassociated from the account.")
    @as("DisassociatedAt")
    disassociatedAt: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DisassociateServiceRoleFromAccountCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateRoleFromGroup = {
  type t
  type request = {@ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string}
  type response = {
    @ocaml.doc(
      "The time, in milliseconds since the epoch, when the role was disassociated from the group."
    )
    @as("DisassociatedAt")
    disassociatedAt: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DisassociateRoleFromGroupCommand"
  let make = (~groupId, ()) => new({groupId: groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteSubscriptionDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the subscription definition.") @as("SubscriptionDefinitionId")
    subscriptionDefinitionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteSubscriptionDefinitionCommand"
  let make = (~subscriptionDefinitionId, ()) =>
    new({subscriptionDefinitionId: subscriptionDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteResourceDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the resource definition.") @as("ResourceDefinitionId")
    resourceDefinitionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteResourceDefinitionCommand"
  let make = (~resourceDefinitionId, ()) => new({resourceDefinitionId: resourceDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteLoggerDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the logger definition.") @as("LoggerDefinitionId")
    loggerDefinitionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteLoggerDefinitionCommand"
  let make = (~loggerDefinitionId, ()) => new({loggerDefinitionId: loggerDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteGroup = {
  type t
  type request = {@ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string}
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "DeleteGroupCommand"
  let make = (~groupId, ()) => new({groupId: groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteFunctionDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the Lambda function definition.") @as("FunctionDefinitionId")
    functionDefinitionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteFunctionDefinitionCommand"
  let make = (~functionDefinitionId, ()) => new({functionDefinitionId: functionDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteDeviceDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the device definition.") @as("DeviceDefinitionId")
    deviceDefinitionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteDeviceDefinitionCommand"
  let make = (~deviceDefinitionId, ()) => new({deviceDefinitionId: deviceDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteCoreDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the core definition.") @as("CoreDefinitionId") coreDefinitionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteCoreDefinitionCommand"
  let make = (~coreDefinitionId, ()) => new({coreDefinitionId: coreDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteConnectorDefinition = {
  type t
  type request = {
    @ocaml.doc("The ID of the connector definition.") @as("ConnectorDefinitionId")
    connectorDefinitionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DeleteConnectorDefinitionCommand"
  let make = (~connectorDefinitionId, ()) => new({connectorDefinitionId: connectorDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateSubscriptionDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc("A list of subscriptions.") @as("Subscriptions")
    subscriptions: option<__listOfSubscription>,
    @ocaml.doc("The ID of the subscription definition.") @as("SubscriptionDefinitionId")
    subscriptionDefinitionId: __string,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The ID of the version.") @as("Version") version: option<__string>,
    @ocaml.doc("The ID of the parent definition that the version is associated with.") @as("Id")
    id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the version was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateSubscriptionDefinitionVersionCommand"
  let make = (~subscriptionDefinitionId, ~subscriptions=?, ~amznClientToken=?, ()) =>
    new({subscriptions, subscriptionDefinitionId, amznClientToken})
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
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The software version installed on the device or devices after the update.")
    @as("PlatformSoftwareVersion")
    platformSoftwareVersion: option<__string>,
    @ocaml.doc("The IoT Job Id corresponding to this update.") @as("IotJobId")
    iotJobId: option<__string>,
    @ocaml.doc("The IoT Job ARN corresponding to this update.") @as("IotJobArn")
    iotJobArn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateSoftwareUpdateJobCommand"
  let make = (
    ~updateTargetsOperatingSystem,
    ~updateTargetsArchitecture,
    ~updateTargets,
    ~softwareToUpdate,
    ~s3UrlSignerRole,
    ~updateAgentLogLevel=?,
    ~amznClientToken=?,
    (),
  ) =>
    new({
      updateTargetsOperatingSystem,
      updateTargetsArchitecture,
      updateTargets,
      updateAgentLogLevel,
      softwareToUpdate,
      s3UrlSignerRole,
      amznClientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateLoggerDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc("A list of loggers.") @as("Loggers") loggers: option<__listOfLogger>,
    @ocaml.doc("The ID of the logger definition.") @as("LoggerDefinitionId")
    loggerDefinitionId: __string,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The ID of the version.") @as("Version") version: option<__string>,
    @ocaml.doc("The ID of the parent definition that the version is associated with.") @as("Id")
    id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the version was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateLoggerDefinitionVersionCommand"
  let make = (~loggerDefinitionId, ~loggers=?, ~amznClientToken=?, ()) =>
    new({loggers, loggerDefinitionId, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateGroupVersion = {
  type t
  type request = {
    @ocaml.doc("The ARN of the subscription definition version for this group.")
    @as("SubscriptionDefinitionVersionArn")
    subscriptionDefinitionVersionArn: option<__string>,
    @ocaml.doc("The ARN of the resource definition version for this group.")
    @as("ResourceDefinitionVersionArn")
    resourceDefinitionVersionArn: option<__string>,
    @ocaml.doc("The ARN of the logger definition version for this group.")
    @as("LoggerDefinitionVersionArn")
    loggerDefinitionVersionArn: option<__string>,
    @ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string,
    @ocaml.doc("The ARN of the function definition version for this group.")
    @as("FunctionDefinitionVersionArn")
    functionDefinitionVersionArn: option<__string>,
    @ocaml.doc("The ARN of the device definition version for this group.")
    @as("DeviceDefinitionVersionArn")
    deviceDefinitionVersionArn: option<__string>,
    @ocaml.doc("The ARN of the core definition version for this group.")
    @as("CoreDefinitionVersionArn")
    coreDefinitionVersionArn: option<__string>,
    @ocaml.doc("The ARN of the connector definition version for this group.")
    @as("ConnectorDefinitionVersionArn")
    connectorDefinitionVersionArn: option<__string>,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The ID of the version.") @as("Version") version: option<__string>,
    @ocaml.doc("The ID of the parent definition that the version is associated with.") @as("Id")
    id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the version was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateGroupVersionCommand"
  let make = (
    ~groupId,
    ~subscriptionDefinitionVersionArn=?,
    ~resourceDefinitionVersionArn=?,
    ~loggerDefinitionVersionArn=?,
    ~functionDefinitionVersionArn=?,
    ~deviceDefinitionVersionArn=?,
    ~coreDefinitionVersionArn=?,
    ~connectorDefinitionVersionArn=?,
    ~amznClientToken=?,
    (),
  ) =>
    new({
      subscriptionDefinitionVersionArn,
      resourceDefinitionVersionArn,
      loggerDefinitionVersionArn,
      groupId,
      functionDefinitionVersionArn,
      deviceDefinitionVersionArn,
      coreDefinitionVersionArn,
      connectorDefinitionVersionArn,
      amznClientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateGroupCertificateAuthority = {
  type t
  type request = {
    @ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The ARN of the group certificate authority.") @as("GroupCertificateAuthorityArn")
    groupCertificateAuthorityArn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateGroupCertificateAuthorityCommand"
  let make = (~groupId, ~amznClientToken=?, ()) => new({groupId, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateGroup = {
  type t
  type request = {
    @ocaml.doc("Tag(s) to add to the new resource.") tags: option<tags>,
    @ocaml.doc("The name of the group.") @as("Name") name: __string,
    @ocaml.doc("Information about the initial version of the group.") @as("InitialVersion")
    initialVersion: option<groupVersion>,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "CreateGroupCommand"
  let make = (~name, ~tags=?, ~initialVersion=?, ~amznClientToken=?, ()) =>
    new({tags, name, initialVersion, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDeviceDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc("A list of devices in the definition version.") @as("Devices")
    devices: option<__listOfDevice>,
    @ocaml.doc("The ID of the device definition.") @as("DeviceDefinitionId")
    deviceDefinitionId: __string,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The ID of the version.") @as("Version") version: option<__string>,
    @ocaml.doc("The ID of the parent definition that the version is associated with.") @as("Id")
    id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the version was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateDeviceDefinitionVersionCommand"
  let make = (~deviceDefinitionId, ~devices=?, ~amznClientToken=?, ()) =>
    new({devices, deviceDefinitionId, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDeployment = {
  type t
  type request = {
    @ocaml.doc("The ID of the group version to be deployed.") @as("GroupVersionId")
    groupVersionId: option<__string>,
    @ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string,
    @ocaml.doc(
      "The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid."
    )
    @as("DeploymentType")
    deploymentType: deploymentType,
    @ocaml.doc("The ID of the deployment if you wish to redeploy a previous deployment.")
    @as("DeploymentId")
    deploymentId: option<__string>,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The ID of the deployment.") @as("DeploymentId") deploymentId: option<__string>,
    @ocaml.doc("The ARN of the deployment.") @as("DeploymentArn") deploymentArn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "CreateDeploymentCommand"
  let make = (
    ~groupId,
    ~deploymentType,
    ~groupVersionId=?,
    ~deploymentId=?,
    ~amznClientToken=?,
    (),
  ) => new({groupVersionId, groupId, deploymentType, deploymentId, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateCoreDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc("A list of cores in the core definition version.") @as("Cores")
    cores: option<__listOfCore>,
    @ocaml.doc("The ID of the core definition.") @as("CoreDefinitionId") coreDefinitionId: __string,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The ID of the version.") @as("Version") version: option<__string>,
    @ocaml.doc("The ID of the parent definition that the version is associated with.") @as("Id")
    id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the version was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateCoreDefinitionVersionCommand"
  let make = (~coreDefinitionId, ~cores=?, ~amznClientToken=?, ()) =>
    new({cores, coreDefinitionId, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateServiceRoleToAccount = {
  type t
  type request = {
    @ocaml.doc("The ARN of the service role you wish to associate with your account.")
    @as("RoleArn")
    roleArn: __string,
  }
  type response = {
    @ocaml.doc("The time when the service role was associated with the account.")
    @as("AssociatedAt")
    associatedAt: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "AssociateServiceRoleToAccountCommand"
  let make = (~roleArn, ()) => new({roleArn: roleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateRoleToGroup = {
  type t
  type request = {
    @ocaml.doc(
      "The ARN of the role you wish to associate with this group. The existence of the role is not validated."
    )
    @as("RoleArn")
    roleArn: __string,
    @ocaml.doc("The ID of the Greengrass group.") @as("GroupId") groupId: __string,
  }
  type response = {
    @ocaml.doc(
      "The time, in milliseconds since the epoch, when the role ARN was associated with the group."
    )
    @as("AssociatedAt")
    associatedAt: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "AssociateRoleToGroupCommand"
  let make = (~roleArn, ~groupId, ()) => new({roleArn, groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSubscriptionDefinitions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Information about a definition.") @as("Definitions")
    definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListSubscriptionDefinitionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResourceDefinitions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Information about a definition.") @as("Definitions")
    definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListResourceDefinitionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListLoggerDefinitions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Information about a definition.") @as("Definitions")
    definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListLoggerDefinitionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFunctionDefinitions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Information about a definition.") @as("Definitions")
    definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListFunctionDefinitionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDeviceDefinitions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Information about a definition.") @as("Definitions")
    definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListDeviceDefinitionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListCoreDefinitions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Information about a definition.") @as("Definitions")
    definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListCoreDefinitionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListConnectorDefinitions = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Information about a definition.") @as("Definitions")
    definitions: option<__listOfDefinitionInformation>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListConnectorDefinitionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSubscriptionDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc(
      "The ID of the subscription definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListSubscriptionDefinitionVersions'' requests. If the version is the last one that was associated with a subscription definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
    )
    @as("SubscriptionDefinitionVersionId")
    subscriptionDefinitionVersionId: __string,
    @ocaml.doc("The ID of the subscription definition.") @as("SubscriptionDefinitionId")
    subscriptionDefinitionId: __string,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The version of the subscription definition version.") @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The ID of the subscription definition version.") @as("Id") id: option<__string>,
    @ocaml.doc("Information about the subscription definition version.") @as("Definition")
    definition: option<subscriptionDefinitionVersion>,
    @ocaml.doc(
      "The time, in milliseconds since the epoch, when the subscription definition version was created."
    )
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the subscription definition version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetSubscriptionDefinitionVersionCommand"
  let make = (~subscriptionDefinitionVersionId, ~subscriptionDefinitionId, ~nextToken=?, ()) =>
    new({subscriptionDefinitionVersionId, subscriptionDefinitionId, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetLoggerDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The ID of the logger definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListLoggerDefinitionVersions'' requests. If the version is the last one that was associated with a logger definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
    )
    @as("LoggerDefinitionVersionId")
    loggerDefinitionVersionId: __string,
    @ocaml.doc("The ID of the logger definition.") @as("LoggerDefinitionId")
    loggerDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("The version of the logger definition version.") @as("Version")
    version: option<__string>,
    @ocaml.doc("The ID of the logger definition version.") @as("Id") id: option<__string>,
    @ocaml.doc("Information about the logger definition version.") @as("Definition")
    definition: option<loggerDefinitionVersion>,
    @ocaml.doc(
      "The time, in milliseconds since the epoch, when the logger definition version was created."
    )
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the logger definition version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetLoggerDefinitionVersionCommand"
  let make = (~loggerDefinitionVersionId, ~loggerDefinitionId, ~nextToken=?, ()) =>
    new({nextToken, loggerDefinitionVersionId, loggerDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDeviceDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The ID of the device definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListDeviceDefinitionVersions'' requests. If the version is the last one that was associated with a device definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
    )
    @as("DeviceDefinitionVersionId")
    deviceDefinitionVersionId: __string,
    @ocaml.doc("The ID of the device definition.") @as("DeviceDefinitionId")
    deviceDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("The version of the device definition version.") @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The ID of the device definition version.") @as("Id") id: option<__string>,
    @ocaml.doc("Information about the device definition version.") @as("Definition")
    definition: option<deviceDefinitionVersion>,
    @ocaml.doc(
      "The time, in milliseconds since the epoch, when the device definition version was created."
    )
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the device definition version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetDeviceDefinitionVersionCommand"
  let make = (~deviceDefinitionVersionId, ~deviceDefinitionId, ~nextToken=?, ()) =>
    new({nextToken, deviceDefinitionVersionId, deviceDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCoreDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc(
      "The ID of the core definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListCoreDefinitionVersions'' requests. If the version is the last one that was associated with a core definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
    )
    @as("CoreDefinitionVersionId")
    coreDefinitionVersionId: __string,
    @ocaml.doc("The ID of the core definition.") @as("CoreDefinitionId") coreDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("The version of the core definition version.") @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The ID of the core definition version.") @as("Id") id: option<__string>,
    @ocaml.doc("Information about the core definition version.") @as("Definition")
    definition: option<coreDefinitionVersion>,
    @ocaml.doc(
      "The time, in milliseconds since the epoch, when the core definition version was created."
    )
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the core definition version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetCoreDefinitionVersionCommand"
  let make = (~coreDefinitionVersionId, ~coreDefinitionId, ()) =>
    new({coreDefinitionVersionId, coreDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSubscriptionDefinition = {
  type t
  type request = {
    @ocaml.doc("Tag(s) to add to the new resource.") tags: option<tags>,
    @ocaml.doc("The name of the subscription definition.") @as("Name") name: option<__string>,
    @ocaml.doc("Information about the initial version of the subscription definition.")
    @as("InitialVersion")
    initialVersion: option<subscriptionDefinitionVersion>,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateSubscriptionDefinitionCommand"
  let make = (~tags=?, ~name=?, ~initialVersion=?, ~amznClientToken=?, ()) =>
    new({tags, name, initialVersion, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateLoggerDefinition = {
  type t
  type request = {
    @ocaml.doc("Tag(s) to add to the new resource.") tags: option<tags>,
    @ocaml.doc("The name of the logger definition.") @as("Name") name: option<__string>,
    @ocaml.doc("Information about the initial version of the logger definition.")
    @as("InitialVersion")
    initialVersion: option<loggerDefinitionVersion>,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateLoggerDefinitionCommand"
  let make = (~tags=?, ~name=?, ~initialVersion=?, ~amznClientToken=?, ()) =>
    new({tags, name, initialVersion, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDeviceDefinition = {
  type t
  type request = {
    @ocaml.doc("Tag(s) to add to the new resource.") tags: option<tags>,
    @ocaml.doc("The name of the device definition.") @as("Name") name: option<__string>,
    @ocaml.doc("Information about the initial version of the device definition.")
    @as("InitialVersion")
    initialVersion: option<deviceDefinitionVersion>,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateDeviceDefinitionCommand"
  let make = (~tags=?, ~name=?, ~initialVersion=?, ~amznClientToken=?, ()) =>
    new({tags, name, initialVersion, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateCoreDefinition = {
  type t
  @ocaml.doc("Information needed to create a core definition.")
  type request = {
    @ocaml.doc("Tag(s) to add to the new resource.") tags: option<tags>,
    @ocaml.doc("The name of the core definition.") @as("Name") name: option<__string>,
    @ocaml.doc("Information about the initial version of the core definition.")
    @as("InitialVersion")
    initialVersion: option<coreDefinitionVersion>,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateCoreDefinitionCommand"
  let make = (~tags=?, ~name=?, ~initialVersion=?, ~amznClientToken=?, ()) =>
    new({tags, name, initialVersion, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateConnectorDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc(
      "A list of references to connectors in this version, with their corresponding configuration settings."
    )
    @as("Connectors")
    connectors: option<__listOfConnector>,
    @ocaml.doc("The ID of the connector definition.") @as("ConnectorDefinitionId")
    connectorDefinitionId: __string,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The ID of the version.") @as("Version") version: option<__string>,
    @ocaml.doc("The ID of the parent definition that the version is associated with.") @as("Id")
    id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the version was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateConnectorDefinitionVersionCommand"
  let make = (~connectorDefinitionId, ~connectors=?, ~amznClientToken=?, ()) =>
    new({connectors, connectorDefinitionId, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListBulkDeploymentDetailedReports = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of results to be returned per request.") @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("The ID of the bulk deployment.") @as("BulkDeploymentId") bulkDeploymentId: __string,
  }
  type response = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("A list of the individual group deployments in the bulk deployment operation.")
    @as("Deployments")
    deployments: option<bulkDeploymentResults>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListBulkDeploymentDetailedReportsCommand"
  let make = (~bulkDeploymentId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, bulkDeploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetConnectorDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The ID of the connector definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListConnectorDefinitionVersions'' requests. If the version is the last one that was associated with a connector definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
    )
    @as("ConnectorDefinitionVersionId")
    connectorDefinitionVersionId: __string,
    @ocaml.doc("The ID of the connector definition.") @as("ConnectorDefinitionId")
    connectorDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("The version of the connector definition version.") @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The ID of the connector definition version.") @as("Id") id: option<__string>,
    @ocaml.doc("Information about the connector definition version.") @as("Definition")
    definition: option<connectorDefinitionVersion>,
    @ocaml.doc(
      "The time, in milliseconds since the epoch, when the connector definition version was created."
    )
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the connector definition version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetConnectorDefinitionVersionCommand"
  let make = (~connectorDefinitionVersionId, ~connectorDefinitionId, ~nextToken=?, ()) =>
    new({nextToken, connectorDefinitionVersionId, connectorDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateConnectorDefinition = {
  type t
  type request = {
    @ocaml.doc("Tag(s) to add to the new resource.") tags: option<tags>,
    @ocaml.doc("The name of the connector definition.") @as("Name") name: option<__string>,
    @ocaml.doc("Information about the initial version of the connector definition.")
    @as("InitialVersion")
    initialVersion: option<connectorDefinitionVersion>,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateConnectorDefinitionCommand"
  let make = (~tags=?, ~name=?, ~initialVersion=?, ~amznClientToken=?, ()) =>
    new({tags, name, initialVersion, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateResourceDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc("A list of resources.") @as("Resources") resources: option<__listOfResource>,
    @ocaml.doc("The ID of the resource definition.") @as("ResourceDefinitionId")
    resourceDefinitionId: __string,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The ID of the version.") @as("Version") version: option<__string>,
    @ocaml.doc("The ID of the parent definition that the version is associated with.") @as("Id")
    id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the version was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateResourceDefinitionVersionCommand"
  let make = (~resourceDefinitionId, ~resources=?, ~amznClientToken=?, ()) =>
    new({resources, resourceDefinitionId, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResourceDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc(
      "The ID of the resource definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListResourceDefinitionVersions'' requests. If the version is the last one that was associated with a resource definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
    )
    @as("ResourceDefinitionVersionId")
    resourceDefinitionVersionId: __string,
    @ocaml.doc("The ID of the resource definition.") @as("ResourceDefinitionId")
    resourceDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("The version of the resource definition version.") @as("Version")
    version: option<__string>,
    @ocaml.doc("The ID of the resource definition version.") @as("Id") id: option<__string>,
    @ocaml.doc("Information about the definition.") @as("Definition")
    definition: option<resourceDefinitionVersion>,
    @ocaml.doc(
      "The time, in milliseconds since the epoch, when the resource definition version was created."
    )
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("Arn of the resource definition version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetResourceDefinitionVersionCommand"
  let make = (~resourceDefinitionVersionId, ~resourceDefinitionId, ()) =>
    new({resourceDefinitionVersionId, resourceDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateResourceDefinition = {
  type t
  type request = {
    @ocaml.doc("Tag(s) to add to the new resource.") tags: option<tags>,
    @ocaml.doc("The name of the resource definition.") @as("Name") name: option<__string>,
    @ocaml.doc("Information about the initial version of the resource definition.")
    @as("InitialVersion")
    initialVersion: option<resourceDefinitionVersion>,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateResourceDefinitionCommand"
  let make = (~tags=?, ~name=?, ~initialVersion=?, ~amznClientToken=?, ()) =>
    new({tags, name, initialVersion, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateFunctionDefinitionVersion = {
  type t
  @ocaml.doc("Information needed to create a function definition version.")
  type request = {
    @ocaml.doc("A list of Lambda functions in this function definition version.") @as("Functions")
    functions: option<__listOfFunction>,
    @ocaml.doc("The ID of the Lambda function definition.") @as("FunctionDefinitionId")
    functionDefinitionId: __string,
    @ocaml.doc(
      "The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings."
    )
    @as("DefaultConfig")
    defaultConfig: option<functionDefaultConfig>,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The ID of the version.") @as("Version") version: option<__string>,
    @ocaml.doc("The ID of the parent definition that the version is associated with.") @as("Id")
    id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the version was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateFunctionDefinitionVersionCommand"
  let make = (~functionDefinitionId, ~functions=?, ~defaultConfig=?, ~amznClientToken=?, ()) =>
    new({functions, functionDefinitionId, defaultConfig, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFunctionDefinitionVersion = {
  type t
  type request = {
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The ID of the function definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListFunctionDefinitionVersions'' requests. If the version is the last one that was associated with a function definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
    )
    @as("FunctionDefinitionVersionId")
    functionDefinitionVersionId: __string,
    @ocaml.doc("The ID of the Lambda function definition.") @as("FunctionDefinitionId")
    functionDefinitionId: __string,
  }
  type response = {
    @ocaml.doc("The version of the function definition version.") @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "The token for the next set of results, or ''null'' if there are no additional results."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The ID of the function definition version.") @as("Id") id: option<__string>,
    @ocaml.doc("Information on the definition.") @as("Definition")
    definition: option<functionDefinitionVersion>,
    @ocaml.doc(
      "The time, in milliseconds since the epoch, when the function definition version was created."
    )
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the function definition version.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetFunctionDefinitionVersionCommand"
  let make = (~functionDefinitionVersionId, ~functionDefinitionId, ~nextToken=?, ()) =>
    new({nextToken, functionDefinitionVersionId, functionDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateFunctionDefinition = {
  type t
  type request = {
    @ocaml.doc("Tag(s) to add to the new resource.") tags: option<tags>,
    @ocaml.doc("The name of the function definition.") @as("Name") name: option<__string>,
    @ocaml.doc("Information about the initial version of the function definition.")
    @as("InitialVersion")
    initialVersion: option<functionDefinitionVersion>,
    @ocaml.doc("A client token used to correlate requests and responses.") @as("AmznClientToken")
    amznClientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("The name of the definition.") @as("Name") name: option<__string>,
    @ocaml.doc("The ARN of the latest version associated with the definition.")
    @as("LatestVersionArn")
    latestVersionArn: option<__string>,
    @ocaml.doc("The ID of the latest version associated with the definition.") @as("LatestVersion")
    latestVersion: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was last updated.")
    @as("LastUpdatedTimestamp")
    lastUpdatedTimestamp: option<__string>,
    @ocaml.doc("The ID of the definition.") @as("Id") id: option<__string>,
    @ocaml.doc("The time, in milliseconds since the epoch, when the definition was created.")
    @as("CreationTimestamp")
    creationTimestamp: option<__string>,
    @ocaml.doc("The ARN of the definition.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateFunctionDefinitionCommand"
  let make = (~tags=?, ~name=?, ~initialVersion=?, ~amznClientToken=?, ()) =>
    new({tags, name, initialVersion, amznClientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
