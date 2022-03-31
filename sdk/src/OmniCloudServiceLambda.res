type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-panorama") @new
external createClient: unit => awsServiceClient = "OmniCloudServiceLambdaClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type version = string
type validationExceptionReason = [
  | @as("OTHER") #OTHER
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
  | @as("CANNOT_PARSE") #CANNOT_PARSE
  | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION
]
type updateProgress = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("DOWNLOADING") #DOWNLOADING
  | @as("REBOOTING") #REBOOTING
  | @as("VERIFYING") #VERIFYING
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING") #PENDING
]
type updateCreatedTime = Js.Date.t
type token = string
type timeStamp = Js.Date.t
type templateValue = string
type templateType = [@as("RTSP_CAMERA_STREAM") #RTSP_CAMERA_STREAM]
type templateKey = string
type tagValue = string
type tagKey = string
type string_ = string
type statusFilter = [
  | @as("PROCESSING_REMOVAL") #PROCESSING_REMOVAL
  | @as("PROCESSING_DEPLOYMENT") #PROCESSING_DEPLOYMENT
  | @as("REMOVAL_FAILED") #REMOVAL_FAILED
  | @as("REMOVAL_SUCCEEDED") #REMOVAL_SUCCEEDED
  | @as("DEPLOYMENT_ERROR") #DEPLOYMENT_ERROR
  | @as("DEPLOYMENT_SUCCEEDED") #DEPLOYMENT_SUCCEEDED
]
type runtimeRoleArn = string
type retryAfterSeconds = int
type resourceArn = string
type region = string
type principalArn = string
type portType = [
  | @as("MEDIA") #MEDIA
  | @as("FLOAT32") #FLOAT32
  | @as("INT32") #INT32
  | @as("STRING") #STRING
  | @as("BOOLEAN") #BOOLEAN
]
type portName = string
type portDefaultValue = string
type packageVersionStatusDescription = string
type packageVersionStatus = [
  | @as("DELETING") #DELETING
  | @as("FAILED") #FAILED
  | @as("REGISTER_COMPLETED") #REGISTER_COMPLETED
  | @as("REGISTER_PENDING") #REGISTER_PENDING
]
type packageOwnerAccount = string
type packageImportJobType = [
  | @as("MARKETPLACE_NODE_PACKAGE_VERSION") #MARKETPLACE_NODE_PACKAGE_VERSION
  | @as("NODE_PACKAGE_VERSION") #NODE_PACKAGE_VERSION
]
type packageImportJobStatusMessage = string
type packageImportJobStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("PENDING") #PENDING
]
type objectKey = string
type object_ = string
type ntpServerName = string
type nodePackageVersion = string
type nodePackagePatchVersion = string
type nodePackageName = string
type nodePackageId = string
type nodePackageArn = string
type nodeName = string
type nodeInstanceStatus = [
  | @as("NOT_AVAILABLE") #NOT_AVAILABLE
  | @as("ERROR") #ERROR
  | @as("RUNNING") #RUNNING
]
type nodeInstanceId = string
type nodeId = string
type nodeFromTemplateJobStatusMessage = string
type nodeFromTemplateJobStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("PENDING") #PENDING
]
type nodeCategory = [
  | @as("MEDIA_SINK") #MEDIA_SINK
  | @as("MEDIA_SOURCE") #MEDIA_SOURCE
  | @as("ML_MODEL") #ML_MODEL
  | @as("BUSINESS_LOGIC") #BUSINESS_LOGIC
]
type nodeAssetName = string
type nextToken = string
type networkConnectionStatus = [
  | @as("CONNECTING") #CONNECTING
  | @as("NOT_CONNECTED") #NOT_CONNECTED
  | @as("CONNECTED") #CONNECTED
]
type maxSize25 = int
type maxConnections = int
type mask = string
type markLatestPatch = bool
type manifestPayloadData = string
type manifestOverridesPayloadData = string
type leaseExpirationTime = Js.Date.t
type latestSoftware = string
type latestAlternateSoftware = string
type lastUpdatedTime = Js.Date.t
type jobType = [@as("OTA") #OTA]
type jobResourceType = [@as("PACKAGE") #PACKAGE]
type jobId = string
type ipAddressOrServerName = string
type ipAddress = string
type iotThingName = string
type imageVersion = string
type hwAddress = string
type dns = string
type deviceType = [
  | @as("PANORAMA_APPLIANCE") #PANORAMA_APPLIANCE
  | @as("PANORAMA_APPLIANCE_DEVELOPER_KIT") #PANORAMA_APPLIANCE_DEVELOPER_KIT
]
type deviceStatus = [
  | @as("DELETING") #DELETING
  | @as("ERROR") #ERROR
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("PENDING") #PENDING
  | @as("AWAITING_PROVISIONING") #AWAITING_PROVISIONING
]
type deviceSerialNumber = string
type deviceName = string
type deviceId = string
type deviceConnectionStatus = [
  | @as("ERROR") #ERROR
  | @as("NOT_AVAILABLE") #NOT_AVAILABLE
  | @as("AWAITING_CREDENTIALS") #AWAITING_CREDENTIALS
  | @as("OFFLINE") #OFFLINE
  | @as("ONLINE") #ONLINE
]
type deviceArn = string
type description = string
type defaultRuntimeContextDevice = string
type defaultGateway = string
type currentSoftware = string
type createdTime = Js.Date.t
type connectionType = [@as("DHCP") #DHCP | @as("STATIC_IP") #STATIC_IP]
type clientToken = string
type certificates = NodeJs.Buffer.t
type bucketName = string
type bucket = string
type boolean_ = bool
type applicationInstanceStatusDescription = string
type applicationInstanceStatus = [
  | @as("REMOVAL_SUCCEEDED") #REMOVAL_SUCCEEDED
  | @as("REMOVAL_FAILED") #REMOVAL_FAILED
  | @as("REMOVAL_IN_PROGRESS") #REMOVAL_IN_PROGRESS
  | @as("REMOVAL_REQUESTED") #REMOVAL_REQUESTED
  | @as("REMOVAL_PENDING") #REMOVAL_PENDING
  | @as("DEPLOYMENT_SUCCEEDED") #DEPLOYMENT_SUCCEEDED
  | @as("DEPLOYMENT_ERROR") #DEPLOYMENT_ERROR
  | @as("DEPLOYMENT_IN_PROGRESS") #DEPLOYMENT_IN_PROGRESS
  | @as("DEPLOYMENT_REQUESTED") #DEPLOYMENT_REQUESTED
  | @as("DEPLOYMENT_PENDING") #DEPLOYMENT_PENDING
]
type applicationInstanceName = string
type applicationInstanceId = string
type applicationInstanceHealthStatus = [
  | @as("NOT_AVAILABLE") #NOT_AVAILABLE
  | @as("ERROR") #ERROR
  | @as("RUNNING") #RUNNING
]
type applicationInstanceArn = string
@ocaml.doc("<p>A validation exception field.</p>")
type validationExceptionField = {
  @ocaml.doc("<p>The field's message.</p>") @as("Message") message: string_,
  @ocaml.doc("<p>The field's name.</p>") @as("Name") name: string_,
}
@ocaml.doc("<p>A validation exception error argument.</p>")
type validationExceptionErrorArgument = {
  @ocaml.doc("<p>The argument's value.</p>") @as("Value") value: string_,
  @ocaml.doc("<p>The argument's name.</p>") @as("Name") name: string_,
}
type templateParametersMap = Js.Dict.t<templateValue>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A storage location.</p>")
type storageLocation = {
  @ocaml.doc("<p>The location's manifest prefix.</p>") @as("ManifestPrefixLocation")
  manifestPrefixLocation: object_,
  @ocaml.doc("<p>The location's binary prefix.</p>") @as("BinaryPrefixLocation")
  binaryPrefixLocation: object_,
  @ocaml.doc("<p>The location's generated prefix.</p>") @as("GeneratedPrefixLocation")
  generatedPrefixLocation: object_,
  @ocaml.doc("<p>The location's repo prefix.</p>") @as("RepoPrefixLocation")
  repoPrefixLocation: object_,
  @ocaml.doc("<p>The location's bucket.</p>") @as("Bucket") bucket: bucket,
}
@ocaml.doc("<p>A location in Amazon S3.</p>")
type s3Location = {
  @ocaml.doc("<p>An object key.</p>") @as("ObjectKey") objectKey: objectKey,
  @ocaml.doc("<p>A bucket name.</p>") @as("BucketName") bucketName: bucketName,
  @ocaml.doc("<p>The bucket's Region.</p>") @as("Region") region: option<region>,
}
type principalArnsList = array<principalArn>
@ocaml.doc("<p>A package version output configuration.</p>")
type packageVersionOutputConfig = {
  @ocaml.doc("<p>Indicates that the version is recommended for all users.</p>") @as("MarkLatest")
  markLatest: option<markLatestPatch>,
  @ocaml.doc("<p>The output's package version.</p>") @as("PackageVersion")
  packageVersion: nodePackageVersion,
  @ocaml.doc("<p>The output's package name.</p>") @as("PackageName") packageName: nodePackageName,
}
@ocaml.doc("<p>A package object.</p>")
type packageObject = {
  @ocaml.doc("<p>The object's patch version.</p>") @as("PatchVersion")
  patchVersion: nodePackagePatchVersion,
  @ocaml.doc("<p>The object's package version.</p>") @as("PackageVersion")
  packageVersion: nodePackageVersion,
  @ocaml.doc("<p>The object's name.</p>") @as("Name") name: nodePackageName,
}
@ocaml.doc("<p>A job to import a package version.</p>")
type packageImportJob = {
  @ocaml.doc("<p>When the job was updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<lastUpdatedTime>,
  @ocaml.doc("<p>When the job was created.</p>") @as("CreatedTime")
  createdTime: option<createdTime>,
  @ocaml.doc("<p>The job's status message.</p>") @as("StatusMessage")
  statusMessage: option<packageImportJobStatusMessage>,
  @ocaml.doc("<p>The job's status.</p>") @as("Status") status: option<packageImportJobStatus>,
  @ocaml.doc("<p>The job's type.</p>") @as("JobType") jobType: option<packageImportJobType>,
  @ocaml.doc("<p>The job's ID.</p>") @as("JobId") jobId: option<jobId>,
}
@ocaml.doc("<p>The location of an output object in Amazon S3.</p>")
type outPutS3Location = {
  @ocaml.doc("<p>The object's key.</p>") @as("ObjectKey") objectKey: objectKey,
  @ocaml.doc("<p>The object's bucket.</p>") @as("BucketName") bucketName: bucketName,
}
@ocaml.doc("<p>An over-the-air update (OTA) job configuration.</p>")
type otajobConfig = {
  @ocaml.doc("<p>The target version of the device software.</p>") @as("ImageVersion")
  imageVersion: imageVersion,
}
@ocaml.doc("<p>Details about an NTP server connection.</p>")
type ntpStatus = {
  @ocaml.doc("<p>The domain name of the server.</p>") @as("NtpServerName")
  ntpServerName: option<ntpServerName>,
  @ocaml.doc("<p>The IP address of the server.</p>") @as("IpAddress") ipAddress: option<ipAddress>,
  @ocaml.doc("<p>The connection's status.</p>") @as("ConnectionStatus")
  connectionStatus: option<networkConnectionStatus>,
}
type ntpServerList = array<ipAddressOrServerName>
@ocaml.doc("<p>A node output port.</p>")
type nodeOutputPort = {
  @ocaml.doc("<p>The output port's type.</p>") @as("Type") type_: option<portType>,
  @ocaml.doc("<p>The output port's description.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The output port's name.</p>") @as("Name") name: option<portName>,
}
@ocaml.doc("<p>A node instance.</p>")
type nodeInstance = {
  @ocaml.doc("<p>The instance's current status.</p>") @as("CurrentStatus")
  currentStatus: nodeInstanceStatus,
  @ocaml.doc("<p>The instance's name.</p>") @as("NodeName") nodeName: option<nodeName>,
  @ocaml.doc("<p>The instance's package patch version.</p>") @as("PackagePatchVersion")
  packagePatchVersion: option<nodePackagePatchVersion>,
  @ocaml.doc("<p>The instance's package version.</p>") @as("PackageVersion")
  packageVersion: option<nodePackageVersion>,
  @ocaml.doc("<p>The instance's package name.</p>") @as("PackageName")
  packageName: option<nodePackageName>,
  @ocaml.doc("<p>The node's ID.</p>") @as("NodeId") nodeId: option<nodeId>,
  @ocaml.doc("<p>The instance's ID.</p>") @as("NodeInstanceId") nodeInstanceId: nodeInstanceId,
}
@ocaml.doc("<p>A node input port.</p>")
type nodeInputPort = {
  @ocaml.doc("<p>The input port's max connections.</p>") @as("MaxConnections")
  maxConnections: option<maxConnections>,
  @ocaml.doc("<p>The input port's default value.</p>") @as("DefaultValue")
  defaultValue: option<portDefaultValue>,
  @ocaml.doc("<p>The input port's type.</p>") @as("Type") type_: option<portType>,
  @ocaml.doc("<p>The input port's description.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The input port's name.</p>") @as("Name") name: option<portName>,
}
@ocaml.doc("<p>A job to create a camera stream node.</p>")
type nodeFromTemplateJob = {
  @ocaml.doc("<p>The node's name.</p>") @as("NodeName") nodeName: option<nodeName>,
  @ocaml.doc("<p>When the job was created.</p>") @as("CreatedTime")
  createdTime: option<createdTime>,
  @ocaml.doc("<p>The job's status message.</p>") @as("StatusMessage")
  statusMessage: option<nodeFromTemplateJobStatusMessage>,
  @ocaml.doc("<p>The job's status.</p>") @as("Status") status: option<nodeFromTemplateJobStatus>,
  @ocaml.doc("<p>The job's template type.</p>") @as("TemplateType")
  templateType: option<templateType>,
  @ocaml.doc("<p>The job's ID.</p>") @as("JobId") jobId: option<jobId>,
}
@ocaml.doc("<p>An application node that represents a camera stream, a model, code, or output.</p>")
type node = {
  @ocaml.doc("<p>When the node was created.</p>") @as("CreatedTime") createdTime: timeStamp,
  @ocaml.doc("<p>The node's description.</p>") @as("Description") description: option<description>,
  @ocaml.doc("<p>The node's patch version.</p>") @as("PatchVersion")
  patchVersion: nodePackagePatchVersion,
  @ocaml.doc("<p>The node's package version.</p>") @as("PackageVersion")
  packageVersion: nodePackageVersion,
  @ocaml.doc("<p>The node's ARN.</p>") @as("PackageArn") packageArn: option<nodePackageArn>,
  @ocaml.doc("<p>The node's package ID.</p>") @as("PackageId") packageId: nodePackageId,
  @ocaml.doc("<p>The node's package name.</p>") @as("PackageName") packageName: nodePackageName,
  @ocaml.doc("<p>The account ID of the node's owner.</p>") @as("OwnerAccount")
  ownerAccount: option<packageOwnerAccount>,
  @ocaml.doc("<p>The node's category.</p>") @as("Category") category: nodeCategory,
  @ocaml.doc("<p>The node's name.</p>") @as("Name") name: nodeName,
  @ocaml.doc("<p>The node's ID.</p>") @as("NodeId") nodeId: nodeId,
}
@ocaml.doc("<p>A application verion's manifest file. This is a JSON document that has a 
        single key (<code>PayloadData</code>) where the value is an escaped string
        representation of the application manifest (<code>graph.json</code>). This
        file is located in the <code>graphs</code> folder in your application source.</p>")
type manifestPayload = {
  @ocaml.doc("<p>The application manifest.</p>") @as("PayloadData")
  payloadData: option<manifestPayloadData>,
}
module ManifestPayload = {
  type t = PayloadData(manifestPayloadData)
  exception ManifestPayloadUnspecified
  let classify = value =>
    switch value {
    | {payloadData: Some(x)} => PayloadData(x)
    | _ => raise(ManifestPayloadUnspecified)
    }

  let make = value =>
    switch value {
    | PayloadData(x) => {payloadData: Some(x)}
    }
}
@ocaml.doc("<p>Parameter overrides for an application instance. This is a JSON document that has a 
        single key (<code>PayloadData</code>) where the value is an escaped string
        representation of the overrides document.</p>")
type manifestOverridesPayload = {
  @ocaml.doc("<p>The overrides document.</p>") @as("PayloadData")
  payloadData: option<manifestOverridesPayloadData>,
}
module ManifestOverridesPayload = {
  type t = PayloadData(manifestOverridesPayloadData)
  exception ManifestOverridesPayloadUnspecified
  let classify = value =>
    switch value {
    | {payloadData: Some(x)} => PayloadData(x)
    | _ => raise(ManifestOverridesPayloadUnspecified)
    }

  let make = value =>
    switch value {
    | PayloadData(x) => {payloadData: Some(x)}
    }
}
@ocaml.doc("<p>A job for a device.</p>")
type job = {
  @ocaml.doc("<p>The target device's ID.</p>") @as("DeviceId") deviceId: option<deviceId>,
  @ocaml.doc("<p>The job's ID.</p>") @as("JobId") jobId: option<jobId>,
}
@ocaml.doc("<p>A device's Ethernet status.</p>")
type ethernetStatus = {
  @ocaml.doc("<p>The device's physical address.</p>") @as("HwAddress") hwAddress: option<hwAddress>,
  @ocaml.doc("<p>The device's connection status.</p>") @as("ConnectionStatus")
  connectionStatus: option<networkConnectionStatus>,
  @ocaml.doc("<p>The device's IP address.</p>") @as("IpAddress") ipAddress: option<ipAddress>,
}
type dnsList = array<dns>
@ocaml.doc("<p>A job that runs on a device.</p>")
type deviceJob = {
  @ocaml.doc("<p>When the job was created.</p>") @as("CreatedTime")
  createdTime: option<createdTime>,
  @ocaml.doc("<p>The job's ID.</p>") @as("JobId") jobId: option<jobId>,
  @ocaml.doc("<p>The ID of the target device.</p>") @as("DeviceId") deviceId: option<deviceId>,
  @ocaml.doc("<p>The name of the target device</p>") @as("DeviceName")
  deviceName: option<deviceName>,
}
type deviceIdList = array<deviceId>
@ocaml.doc("<p>A device.</p>")
type device = {
  @ocaml.doc("<p>The device's lease expiration time.</p>") @as("LeaseExpirationTime")
  leaseExpirationTime: option<leaseExpirationTime>,
  @ocaml.doc("<p>When the device was updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<lastUpdatedTime>,
  @ocaml.doc("<p>The device's provisioning status.</p>") @as("ProvisioningStatus")
  provisioningStatus: option<deviceStatus>,
  @ocaml.doc("<p>When the device was created.</p>") @as("CreatedTime")
  createdTime: option<createdTime>,
  @ocaml.doc("<p>The device's name.</p>") @as("Name") name: option<deviceName>,
  @ocaml.doc("<p>The device's ID.</p>") @as("DeviceId") deviceId: option<deviceId>,
}
@ocaml.doc("<p>A conflict exception error argument.</p>")
type conflictExceptionErrorArgument = {
  @ocaml.doc("<p>The error argument's value.</p>") @as("Value") value: string_,
  @ocaml.doc("<p>The error argument's name.</p>") @as("Name") name: string_,
}
@ocaml.doc("<p>Details about a beta appliance software update.</p>")
type alternateSoftwareMetadata = {
  @ocaml.doc("<p>The appliance software version.</p>") @as("Version") version: option<version>,
}
type validationExceptionFieldList = array<validationExceptionField>
type validationExceptionErrorArgumentList = array<validationExceptionErrorArgument>
@ocaml.doc("<p>A static IP configuration.</p>")
type staticIpConnectionInfo = {
  @ocaml.doc("<p>The connection's default gateway.</p>") @as("DefaultGateway")
  defaultGateway: defaultGateway,
  @ocaml.doc("<p>The connection's DNS address.</p>") @as("Dns") dns: dnsList,
  @ocaml.doc("<p>The connection's DNS mask.</p>") @as("Mask") mask: mask,
  @ocaml.doc("<p>The connection's IP address.</p>") @as("IpAddress") ipAddress: ipAddress,
}
@ocaml.doc("<p>A package version input configuration.</p>")
type packageVersionInputConfig = {
  @ocaml.doc("<p>A location in Amazon S3.</p>") @as("S3Location") s3Location: s3Location,
}
type packageObjects = array<packageObject>
@ocaml.doc("<p>A package summary.</p>")
type packageListItem = {
  @ocaml.doc("<p>The package's tags.</p>") @as("Tags") tags: option<tagMap>,
  @ocaml.doc("<p>When the package was created.</p>") @as("CreatedTime")
  createdTime: option<timeStamp>,
  @ocaml.doc("<p>The package's ARN.</p>") @as("Arn") arn: option<nodePackageArn>,
  @ocaml.doc("<p>The package's name.</p>") @as("PackageName") packageName: option<nodePackageName>,
  @ocaml.doc("<p>The package's ID.</p>") @as("PackageId") packageId: option<nodePackageId>,
}
@ocaml.doc("<p>An output configuration for a package import job.</p>")
type packageImportJobOutputConfig = {
  @ocaml.doc("<p>The package version's output configuration.</p>") @as("PackageVersionOutputConfig")
  packageVersionOutputConfig: option<packageVersionOutputConfig>,
}
@ocaml.doc("<p>Results of a package import job.</p>")
type packageImportJobOutput = {
  @ocaml.doc("<p>The package's output location.</p>") @as("OutputS3Location")
  outputS3Location: outPutS3Location,
  @ocaml.doc("<p>The package's patch version.</p>") @as("PatchVersion")
  patchVersion: nodePackagePatchVersion,
  @ocaml.doc("<p>The package's version.</p>") @as("PackageVersion")
  packageVersion: nodePackageVersion,
  @ocaml.doc("<p>The package's ID.</p>") @as("PackageId") packageId: nodePackageId,
}
type packageImportJobList = array<packageImportJob>
type outputPortList = array<nodeOutputPort>
@ocaml.doc("<p>Network time protocol (NTP) server settings. Use this option to connect to local NTP
            servers instead of <code>pool.ntp.org</code>.</p>")
type ntpPayload = {
  @ocaml.doc("<p>NTP servers to use, in order of preference.</p>") @as("NtpServers")
  ntpServers: ntpServerList,
}
type nodesList = array<node>
type nodeInstances = array<nodeInstance>
type nodeFromTemplateJobList = array<nodeFromTemplateJob>
@ocaml.doc("<p>The network status of a device.</p>")
type networkStatus = {
  @ocaml.doc("<p>When the network status changed.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<lastUpdatedTime>,
  @ocaml.doc("<p>Details about a network time protocol (NTP) server connection.</p>")
  @as("NtpStatus")
  ntpStatus: option<ntpStatus>,
  @ocaml.doc("<p>The status of Ethernet port 1.</p>") @as("Ethernet1Status")
  ethernet1Status: option<ethernetStatus>,
  @ocaml.doc("<p>The status of Ethernet port 0.</p>") @as("Ethernet0Status")
  ethernet0Status: option<ethernetStatus>,
}
@ocaml.doc("<p>Tags for a job.</p>")
type jobResourceTags = {
  @ocaml.doc("<p>The job's tags.</p>") @as("Tags") tags: tagMap,
  @ocaml.doc("<p>The job's type.</p>") @as("ResourceType") resourceType: jobResourceType,
}
type jobList = array<job>
type inputPortList = array<nodeInputPort>
type deviceList = array<device>
type deviceJobList = array<deviceJob>
@ocaml.doc("<p>A job's configuration.</p>")
type deviceJobConfig = {
  @ocaml.doc("<p>A configuration for an over-the-air (OTA) upgrade. Required for OTA jobs.</p>")
  @as("OTAJobConfig")
  otajobConfig: option<otajobConfig>,
}
type conflictExceptionErrorArgumentList = array<conflictExceptionErrorArgument>
@ocaml.doc("<p>An application instance on a device.</p>")
type applicationInstance = {
  @ocaml.doc("<p>The application instance's tags.</p>") @as("Tags") tags: option<tagMap>,
  @ocaml.doc("<p>The application instance's ARN.</p>") @as("Arn")
  arn: option<applicationInstanceArn>,
  @ocaml.doc("<p>When the application instance was created.</p>") @as("CreatedTime")
  createdTime: option<timeStamp>,
  @ocaml.doc("<p>The application instance's status description.</p>") @as("StatusDescription")
  statusDescription: option<applicationInstanceStatusDescription>,
  @ocaml.doc("<p>The application instance's health status.</p>") @as("HealthStatus")
  healthStatus: option<applicationInstanceHealthStatus>,
  @ocaml.doc("<p>The application instance's status.</p>") @as("Status")
  status: option<applicationInstanceStatus>,
  @ocaml.doc("<p>The application instance's description.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The device's name.</p>") @as("DefaultRuntimeContextDeviceName")
  defaultRuntimeContextDeviceName: option<deviceName>,
  @ocaml.doc("<p>The device's ID.</p>") @as("DefaultRuntimeContextDevice")
  defaultRuntimeContextDevice: option<defaultRuntimeContextDevice>,
  @ocaml.doc("<p>The application instance's ID.</p>") @as("ApplicationInstanceId")
  applicationInstanceId: option<applicationInstanceId>,
  @ocaml.doc("<p>The application instance's name.</p>") @as("Name")
  name: option<applicationInstanceName>,
}
type alternateSoftwares = array<alternateSoftwareMetadata>
type packageList = array<packageListItem>
@ocaml.doc("<p>A configuration for a package import job.</p>")
type packageImportJobInputConfig = {
  @ocaml.doc("<p>The package version's input configuration.</p>") @as("PackageVersionInputConfig")
  packageVersionInputConfig: option<packageVersionInputConfig>,
}
@ocaml.doc("<p>A node interface.</p>")
type nodeInterface = {
  @ocaml.doc("<p>The node interface's outputs.</p>") @as("Outputs") outputs: outputPortList,
  @ocaml.doc("<p>The node interface's inputs.</p>") @as("Inputs") inputs: inputPortList,
}
type jobTagsList = array<jobResourceTags>
@ocaml.doc("<p>A device's network configuration.</p>")
type ethernetPayload = {
  @ocaml.doc("<p>Network configuration for a static IP connection.</p>")
  @as("StaticIpConnectionInfo")
  staticIpConnectionInfo: option<staticIpConnectionInfo>,
  @ocaml.doc("<p>How the device gets an IP address.</p>") @as("ConnectionType")
  connectionType: connectionType,
}
type applicationInstances = array<applicationInstance>
@ocaml.doc("<p>The network configuration for a device.</p>")
type networkPayload = {
  @ocaml.doc("<p>Network time protocol (NTP) server settings.</p>") @as("Ntp")
  ntp: option<ntpPayload>,
  @ocaml.doc("<p>Settings for Ethernet port 1.</p>") @as("Ethernet1")
  ethernet1: option<ethernetPayload>,
  @ocaml.doc("<p>Settings for Ethernet port 0.</p>") @as("Ethernet0")
  ethernet0: option<ethernetPayload>,
}
@ocaml.doc("<fullname>AWS Panorama</fullname>
         <p>
            <b>Overview</b>
         </p>
         <p>This is the <i>AWS Panorama API Reference</i>. For an introduction to the service, see 
           <a href=\"https://docs.aws.amazon.com/panorama/latest/dev/panorama-welcome.html\">What is AWS Panorama?</a> 
           in the <i>AWS Panorama Developer Guide</i>.</p>")
module UpdateDeviceMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>A description for the device.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The device's ID.</p>") @as("DeviceId") deviceId: deviceId,
  }
  type response = {@ocaml.doc("<p>The device's ID.</p>") @as("DeviceId") deviceId: option<deviceId>}
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "UpdateDeviceMetadataCommand"
  let make = (~deviceId, ~description=?, ()) => new({description: description, deviceId: deviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Tag keys to remove.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The resource's ARN.</p>") @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-panorama") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Tags for the resource.</p>") @as("Tags") tags: tagMap,
    @ocaml.doc("<p>The resource's ARN.</p>") @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-panorama") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveApplicationInstance = {
  type t
  type request = {
    @ocaml.doc("<p>An application instance ID.</p>") @as("ApplicationInstanceId")
    applicationInstanceId: applicationInstanceId,
  }
  type response = {.}
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "RemoveApplicationInstanceCommand"
  let make = (~applicationInstanceId, ()) => new({applicationInstanceId: applicationInstanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterPackageVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Whether to mark the new version as the latest version.</p>") @as("MarkLatest")
    markLatest: option<markLatestPatch>,
    @ocaml.doc("<p>A patch version.</p>") @as("PatchVersion") patchVersion: nodePackagePatchVersion,
    @ocaml.doc("<p>A package version.</p>") @as("PackageVersion")
    packageVersion: nodePackageVersion,
    @ocaml.doc("<p>A package ID.</p>") @as("PackageId") packageId: nodePackageId,
    @ocaml.doc("<p>An owner account.</p>") @as("OwnerAccount")
    ownerAccount: option<packageOwnerAccount>,
  }
  type response = {.}
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "RegisterPackageVersionCommand"
  let make = (~patchVersion, ~packageVersion, ~packageId, ~markLatest=?, ~ownerAccount=?, ()) =>
    new({
      markLatest: markLatest,
      patchVersion: patchVersion,
      packageVersion: packageVersion,
      packageId: packageId,
      ownerAccount: ownerAccount,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The resource's ARN.</p>") @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = {@ocaml.doc("<p>A list of tags.</p>") @as("Tags") tags: option<tagMap>}
  @module("@aws-sdk/client-panorama") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPackageImportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of package import jobs to return in one page of results.</p>")
    @as("MaxResults")
    maxResults: option<maxSize25>,
    @ocaml.doc(
      "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of package import jobs.</p>") @as("PackageImportJobs")
    packageImportJobs: packageImportJobList,
  }
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "ListPackageImportJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNodes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of nodes to return in one page of results.</p>")
    @as("MaxResults")
    maxResults: option<maxSize25>,
    @ocaml.doc(
      "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>Search for nodes by patch version.</p>") @as("PatchVersion")
    patchVersion: option<nodePackagePatchVersion>,
    @ocaml.doc("<p>Search for nodes by version.</p>") @as("PackageVersion")
    packageVersion: option<nodePackageVersion>,
    @ocaml.doc("<p>Search for nodes by name.</p>") @as("PackageName")
    packageName: option<nodePackageName>,
    @ocaml.doc("<p>Search for nodes by the account ID of the nodes' owner.</p>") @as("OwnerAccount")
    ownerAccount: option<packageOwnerAccount>,
    @ocaml.doc("<p>Search for nodes by category.</p>") @as("Category")
    category: option<nodeCategory>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of nodes.</p>") @as("Nodes") nodes: option<nodesList>,
  }
  @module("@aws-sdk/client-panorama") @new external new: request => t = "ListNodesCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~patchVersion=?,
    ~packageVersion=?,
    ~packageName=?,
    ~ownerAccount=?,
    ~category=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      patchVersion: patchVersion,
      packageVersion: packageVersion,
      packageName: packageName,
      ownerAccount: ownerAccount,
      category: category,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNodeFromTemplateJobs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of node from template jobs to return in one page of results.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxSize25>,
    @ocaml.doc(
      "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of jobs.</p>") @as("NodeFromTemplateJobs")
    nodeFromTemplateJobs: nodeFromTemplateJobList,
  }
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "ListNodeFromTemplateJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDevicesJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of device jobs to return in one page of results.</p>")
    @as("MaxResults")
    maxResults: option<maxSize25>,
    @ocaml.doc(
      "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Filter results by the job's target device ID.</p>") @as("DeviceId")
    deviceId: option<deviceId>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of jobs.</p>") @as("DeviceJobs") deviceJobs: option<deviceJobList>,
  }
  @module("@aws-sdk/client-panorama") @new external new: request => t = "ListDevicesJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~deviceId=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, deviceId: deviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDevices = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of devices to return in one page of results.</p>")
    @as("MaxResults")
    maxResults: option<maxSize25>,
    @ocaml.doc(
      "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of devices.</p>") @as("Devices") devices: deviceList,
  }
  @module("@aws-sdk/client-panorama") @new external new: request => t = "ListDevicesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplicationInstanceNodeInstances = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of node instances to return in one page of results.</p>")
    @as("MaxResults")
    maxResults: option<maxSize25>,
    @ocaml.doc("<p>The node instances' application instance ID.</p>") @as("ApplicationInstanceId")
    applicationInstanceId: applicationInstanceId,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of node instances.</p>") @as("NodeInstances")
    nodeInstances: option<nodeInstances>,
  }
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "ListApplicationInstanceNodeInstancesCommand"
  let make = (~applicationInstanceId, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      applicationInstanceId: applicationInstanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplicationInstanceDependencies = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of application instance dependencies to return in one page of results.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxSize25>,
    @ocaml.doc("<p>The application instance's ID.</p>") @as("ApplicationInstanceId")
    applicationInstanceId: applicationInstanceId,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of package objects.</p>") @as("PackageObjects")
    packageObjects: option<packageObjects>,
  }
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "ListApplicationInstanceDependenciesCommand"
  let make = (~applicationInstanceId, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      applicationInstanceId: applicationInstanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePackageVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version's patch version.</p>") @as("PatchVersion")
    patchVersion: option<nodePackagePatchVersion>,
    @ocaml.doc("<p>The version's version.</p>") @as("PackageVersion")
    packageVersion: nodePackageVersion,
    @ocaml.doc("<p>The version's ID.</p>") @as("PackageId") packageId: nodePackageId,
    @ocaml.doc("<p>The version's owner account.</p>") @as("OwnerAccount")
    ownerAccount: option<packageOwnerAccount>,
  }
  type response = {
    @ocaml.doc("<p>The version's registered time.</p>") @as("RegisteredTime")
    registeredTime: option<timeStamp>,
    @ocaml.doc("<p>The version's status description.</p>") @as("StatusDescription")
    statusDescription: option<packageVersionStatusDescription>,
    @ocaml.doc("<p>The version's status.</p>") @as("Status") status: packageVersionStatus,
    @ocaml.doc("<p>Whether the version is the latest available.</p>") @as("IsLatestPatch")
    isLatestPatch: boolean_,
    @ocaml.doc("<p>The version's patch version.</p>") @as("PatchVersion")
    patchVersion: nodePackagePatchVersion,
    @ocaml.doc("<p>The version's version.</p>") @as("PackageVersion")
    packageVersion: nodePackageVersion,
    @ocaml.doc("<p>The version's name.</p>") @as("PackageName") packageName: nodePackageName,
    @ocaml.doc("<p>The ARN of the package.</p>") @as("PackageArn")
    packageArn: option<nodePackageArn>,
    @ocaml.doc("<p>The version's ID.</p>") @as("PackageId") packageId: nodePackageId,
    @ocaml.doc("<p>The account ID of the version's owner.</p>") @as("OwnerAccount")
    ownerAccount: option<packageOwnerAccount>,
  }
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "DescribePackageVersionCommand"
  let make = (~packageVersion, ~packageId, ~patchVersion=?, ~ownerAccount=?, ()) =>
    new({
      patchVersion: patchVersion,
      packageVersion: packageVersion,
      packageId: packageId,
      ownerAccount: ownerAccount,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePackage = {
  type t
  type request = {@ocaml.doc("<p>The package's ID.</p>") @as("PackageId") packageId: nodePackageId}
  type response = {
    @ocaml.doc("<p>The package's tags.</p>") @as("Tags") tags: tagMap,
    @ocaml.doc("<p>When the package was created.</p>") @as("CreatedTime") createdTime: timeStamp,
    @ocaml.doc("<p>ARNs of accounts that have write access to the package.</p>")
    @as("WriteAccessPrincipalArns")
    writeAccessPrincipalArns: option<principalArnsList>,
    @ocaml.doc("<p>ARNs of accounts that have read access to the package.</p>")
    @as("ReadAccessPrincipalArns")
    readAccessPrincipalArns: option<principalArnsList>,
    @ocaml.doc("<p>The package's storage location.</p>") @as("StorageLocation")
    storageLocation: storageLocation,
    @ocaml.doc("<p>The package's ARN.</p>") @as("Arn") arn: nodePackageArn,
    @ocaml.doc("<p>The package's name.</p>") @as("PackageName") packageName: nodePackageName,
    @ocaml.doc("<p>The package's ID.</p>") @as("PackageId") packageId: nodePackageId,
  }
  @module("@aws-sdk/client-panorama") @new external new: request => t = "DescribePackageCommand"
  let make = (~packageId, ()) => new({packageId: packageId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDeviceJob = {
  type t
  type request = {@ocaml.doc("<p>The job's ID.</p>") @as("JobId") jobId: jobId}
  type response = {
    @ocaml.doc("<p>When the job was created.</p>") @as("CreatedTime")
    createdTime: option<updateCreatedTime>,
    @ocaml.doc("<p>The job's status.</p>") @as("Status") status: option<updateProgress>,
    @ocaml.doc("<p>For an OTA job, the target version of the device software.</p>")
    @as("ImageVersion")
    imageVersion: option<imageVersion>,
    @ocaml.doc("<p>The device's type.</p>") @as("DeviceType") deviceType: option<deviceType>,
    @ocaml.doc("<p>The device's name.</p>") @as("DeviceName") deviceName: option<deviceName>,
    @ocaml.doc("<p>The device's ARN.</p>") @as("DeviceArn") deviceArn: option<deviceArn>,
    @ocaml.doc("<p>The device's ID.</p>") @as("DeviceId") deviceId: option<deviceId>,
    @ocaml.doc("<p>The job's ID.</p>") @as("JobId") jobId: option<jobId>,
  }
  @module("@aws-sdk/client-panorama") @new external new: request => t = "DescribeDeviceJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApplicationInstanceDetails = {
  type t
  type request = {
    @ocaml.doc("<p>The application instance's ID.</p>") @as("ApplicationInstanceId")
    applicationInstanceId: applicationInstanceId,
  }
  type response = {
    @ocaml.doc("<p>The application instance's ID.</p>") @as("ApplicationInstanceId")
    applicationInstanceId: option<applicationInstanceId>,
    @ocaml.doc("<p>When the application instance was created.</p>") @as("CreatedTime")
    createdTime: option<timeStamp>,
    @ocaml.doc("<p>The ID of the application instance that this instance replaced.</p>")
    @as("ApplicationInstanceIdToReplace")
    applicationInstanceIdToReplace: option<applicationInstanceId>,
    @ocaml.doc("<p>Parameter overrides for the configuration manifest.</p>")
    @as("ManifestOverridesPayload")
    manifestOverridesPayload: option<manifestOverridesPayload>,
    @ocaml.doc("<p>The application instance's configuration manifest.</p>") @as("ManifestPayload")
    manifestPayload: option<manifestPayload>,
    @ocaml.doc("<p>The application instance's default runtime context device.</p>")
    @as("DefaultRuntimeContextDevice")
    defaultRuntimeContextDevice: option<defaultRuntimeContextDevice>,
    @ocaml.doc("<p>The application instance's description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The application instance's name.</p>") @as("Name")
    name: option<applicationInstanceName>,
  }
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "DescribeApplicationInstanceDetailsCommand"
  let make = (~applicationInstanceId, ()) => new({applicationInstanceId: applicationInstanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApplicationInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The application instance's ID.</p>") @as("ApplicationInstanceId")
    applicationInstanceId: applicationInstanceId,
  }
  type response = {
    @ocaml.doc("<p>The application instance's tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The application instance's ARN.</p>") @as("Arn")
    arn: option<applicationInstanceArn>,
    @ocaml.doc("<p>The application instance's ID.</p>") @as("ApplicationInstanceId")
    applicationInstanceId: option<applicationInstanceId>,
    @ocaml.doc("<p>The application instance was updated.</p>") @as("LastUpdatedTime")
    lastUpdatedTime: option<timeStamp>,
    @ocaml.doc("<p>When the application instance was created.</p>") @as("CreatedTime")
    createdTime: option<timeStamp>,
    @ocaml.doc("<p>The application instance's status description.</p>") @as("StatusDescription")
    statusDescription: option<applicationInstanceStatusDescription>,
    @ocaml.doc("<p>The application instance's health status.</p>") @as("HealthStatus")
    healthStatus: option<applicationInstanceHealthStatus>,
    @ocaml.doc("<p>The application instance's status.</p>") @as("Status")
    status: option<applicationInstanceStatus>,
    @ocaml.doc("<p>The application instance's runtime role ARN.</p>") @as("RuntimeRoleArn")
    runtimeRoleArn: option<runtimeRoleArn>,
    @ocaml.doc("<p>The ID of the application instance that this instance replaced.</p>")
    @as("ApplicationInstanceIdToReplace")
    applicationInstanceIdToReplace: option<applicationInstanceId>,
    @ocaml.doc("<p>The device's bane.</p>") @as("DefaultRuntimeContextDeviceName")
    defaultRuntimeContextDeviceName: option<deviceName>,
    @ocaml.doc("<p>The device's ID.</p>") @as("DefaultRuntimeContextDevice")
    defaultRuntimeContextDevice: option<defaultRuntimeContextDevice>,
    @ocaml.doc("<p>The application instance's description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The application instance's name.</p>") @as("Name")
    name: option<applicationInstanceName>,
  }
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "DescribeApplicationInstanceCommand"
  let make = (~applicationInstanceId, ()) => new({applicationInstanceId: applicationInstanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterPackageVersion = {
  type t
  type request = {
    @ocaml.doc("<p>If the version was marked latest, the new version to maker as latest.</p>")
    @as("UpdatedLatestPatchVersion")
    updatedLatestPatchVersion: option<nodePackagePatchVersion>,
    @ocaml.doc("<p>A patch version.</p>") @as("PatchVersion") patchVersion: nodePackagePatchVersion,
    @ocaml.doc("<p>A package version.</p>") @as("PackageVersion")
    packageVersion: nodePackageVersion,
    @ocaml.doc("<p>A package ID.</p>") @as("PackageId") packageId: nodePackageId,
    @ocaml.doc("<p>An owner account.</p>") @as("OwnerAccount")
    ownerAccount: option<packageOwnerAccount>,
  }
  type response = {.}
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "DeregisterPackageVersionCommand"
  let make = (
    ~patchVersion,
    ~packageVersion,
    ~packageId,
    ~updatedLatestPatchVersion=?,
    ~ownerAccount=?,
    (),
  ) =>
    new({
      updatedLatestPatchVersion: updatedLatestPatchVersion,
      patchVersion: patchVersion,
      packageVersion: packageVersion,
      packageId: packageId,
      ownerAccount: ownerAccount,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePackage = {
  type t
  type request = {
    @ocaml.doc("<p>Delete the package even if it has artifacts stored in its access point.
           Deletes the package's artifacts from Amazon S3.</p>")
    @as("ForceDelete")
    forceDelete: option<boolean_>,
    @ocaml.doc("<p>The package's ID.</p>") @as("PackageId") packageId: nodePackageId,
  }
  type response = {.}
  @module("@aws-sdk/client-panorama") @new external new: request => t = "DeletePackageCommand"
  let make = (~packageId, ~forceDelete=?, ()) =>
    new({forceDelete: forceDelete, packageId: packageId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDevice = {
  type t
  type request = {@ocaml.doc("<p>The device's ID.</p>") @as("DeviceId") deviceId: deviceId}
  type response = {@ocaml.doc("<p>The device's ID.</p>") @as("DeviceId") deviceId: option<deviceId>}
  @module("@aws-sdk/client-panorama") @new external new: request => t = "DeleteDeviceCommand"
  let make = (~deviceId, ()) => new({deviceId: deviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePackage = {
  type t
  type request = {
    @ocaml.doc("<p>Tags for the package.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>A name for the package.</p>") @as("PackageName") packageName: nodePackageName,
  }
  type response = {
    @ocaml.doc("<p>The package's storage location.</p>") @as("StorageLocation")
    storageLocation: storageLocation,
    @ocaml.doc("<p>The package's ARN.</p>") @as("Arn") arn: option<nodePackageArn>,
    @ocaml.doc("<p>The package's ID.</p>") @as("PackageId") packageId: option<nodePackageId>,
  }
  @module("@aws-sdk/client-panorama") @new external new: request => t = "CreatePackageCommand"
  let make = (~packageName, ~tags=?, ()) => new({tags: tags, packageName: packageName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJobForDevices = {
  type t
  type request = {
    @ocaml.doc("<p>The type of job to run.</p>") @as("JobType") jobType: jobType,
    @ocaml.doc("<p>Configuration settings for the job.</p>") @as("DeviceJobConfig")
    deviceJobConfig: deviceJobConfig,
    @ocaml.doc("<p>IDs of target devices.</p>") @as("DeviceIds") deviceIds: deviceIdList,
  }
  type response = {@ocaml.doc("<p>A list of jobs.</p>") @as("Jobs") jobs: jobList}
  @module("@aws-sdk/client-panorama") @new external new: request => t = "CreateJobForDevicesCommand"
  let make = (~jobType, ~deviceJobConfig, ~deviceIds, ()) =>
    new({jobType: jobType, deviceJobConfig: deviceJobConfig, deviceIds: deviceIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplicationInstance = {
  type t
  type request = {
    @ocaml.doc("<p>Tags for the application instance.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>A device's ID.</p>") @as("DefaultRuntimeContextDevice")
    defaultRuntimeContextDevice: defaultRuntimeContextDevice,
    @ocaml.doc("<p>The ARN of a runtime role for the application instance.</p>")
    @as("RuntimeRoleArn")
    runtimeRoleArn: option<runtimeRoleArn>,
    @ocaml.doc("<p>The ID of an application instance to replace with the new instance.</p>")
    @as("ApplicationInstanceIdToReplace")
    applicationInstanceIdToReplace: option<applicationInstanceId>,
    @ocaml.doc("<p>Setting overrides for the application manifest.</p>")
    @as("ManifestOverridesPayload")
    manifestOverridesPayload: option<manifestOverridesPayload>,
    @ocaml.doc("<p>The application's manifest document.</p>") @as("ManifestPayload")
    manifestPayload: manifestPayload,
    @ocaml.doc("<p>A description for the application instance.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A name for the application instance.</p>") @as("Name")
    name: option<applicationInstanceName>,
  }
  type response = {
    @ocaml.doc("<p>The application instance's ID.</p>") @as("ApplicationInstanceId")
    applicationInstanceId: applicationInstanceId,
  }
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "CreateApplicationInstanceCommand"
  let make = (
    ~defaultRuntimeContextDevice,
    ~manifestPayload,
    ~tags=?,
    ~runtimeRoleArn=?,
    ~applicationInstanceIdToReplace=?,
    ~manifestOverridesPayload=?,
    ~description=?,
    ~name=?,
    (),
  ) =>
    new({
      tags: tags,
      defaultRuntimeContextDevice: defaultRuntimeContextDevice,
      runtimeRoleArn: runtimeRoleArn,
      applicationInstanceIdToReplace: applicationInstanceIdToReplace,
      manifestOverridesPayload: manifestOverridesPayload,
      manifestPayload: manifestPayload,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPackages = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of packages to return in one page of results.</p>")
    @as("MaxResults")
    maxResults: option<maxSize25>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of packages.</p>") @as("Packages") packages: option<packageList>,
  }
  @module("@aws-sdk/client-panorama") @new external new: request => t = "ListPackagesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplicationInstances = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of application instances to return in one page of results.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxSize25>,
    @ocaml.doc("<p>Only include instances with a specific status.</p>") @as("StatusFilter")
    statusFilter: option<statusFilter>,
    @ocaml.doc("<p>The application instances' device ID.</p>") @as("DeviceId")
    deviceId: option<deviceId>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of application instances.</p>") @as("ApplicationInstances")
    applicationInstances: option<applicationInstances>,
  }
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "ListApplicationInstancesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~statusFilter=?, ~deviceId=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      statusFilter: statusFilter,
      deviceId: deviceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePackageImportJob = {
  type t
  type request = {@ocaml.doc("<p>The job's ID.</p>") @as("JobId") jobId: jobId}
  type response = {
    @ocaml.doc("<p>The job's tags.</p>") @as("JobTags") jobTags: option<jobTagsList>,
    @ocaml.doc("<p>The job's status message.</p>") @as("StatusMessage")
    statusMessage: packageImportJobStatusMessage,
    @ocaml.doc("<p>The job's status.</p>") @as("Status") status: packageImportJobStatus,
    @ocaml.doc("<p>When the job was updated.</p>") @as("LastUpdatedTime")
    lastUpdatedTime: lastUpdatedTime,
    @ocaml.doc("<p>When the job was created.</p>") @as("CreatedTime") createdTime: createdTime,
    @ocaml.doc("<p>The job's output.</p>") @as("Output") output: packageImportJobOutput,
    @ocaml.doc("<p>The job's output config.</p>") @as("OutputConfig")
    outputConfig: packageImportJobOutputConfig,
    @ocaml.doc("<p>The job's input config.</p>") @as("InputConfig")
    inputConfig: packageImportJobInputConfig,
    @ocaml.doc("<p>The job's type.</p>") @as("JobType") jobType: packageImportJobType,
    @ocaml.doc("<p>The job's client token.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The job's ID.</p>") @as("JobId") jobId: jobId,
  }
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "DescribePackageImportJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNodeFromTemplateJob = {
  type t
  type request = {@ocaml.doc("<p>The job's ID.</p>") @as("JobId") jobId: jobId}
  type response = {
    @ocaml.doc("<p>The job's tags.</p>") @as("JobTags") jobTags: option<jobTagsList>,
    @ocaml.doc("<p>The job's template parameters.</p>") @as("TemplateParameters")
    templateParameters: templateParametersMap,
    @ocaml.doc("<p>The job's template type.</p>") @as("TemplateType") templateType: templateType,
    @ocaml.doc("<p>The node's description.</p>") @as("NodeDescription")
    nodeDescription: option<description>,
    @ocaml.doc("<p>The node's name.</p>") @as("NodeName") nodeName: nodeName,
    @ocaml.doc("<p>The job's output package version.</p>") @as("OutputPackageVersion")
    outputPackageVersion: nodePackageVersion,
    @ocaml.doc("<p>The job's output package name.</p>") @as("OutputPackageName")
    outputPackageName: nodePackageName,
    @ocaml.doc("<p>When the job was updated.</p>") @as("LastUpdatedTime")
    lastUpdatedTime: lastUpdatedTime,
    @ocaml.doc("<p>When the job was created.</p>") @as("CreatedTime") createdTime: createdTime,
    @ocaml.doc("<p>The job's status message.</p>") @as("StatusMessage")
    statusMessage: nodeFromTemplateJobStatusMessage,
    @ocaml.doc("<p>The job's status.</p>") @as("Status") status: nodeFromTemplateJobStatus,
    @ocaml.doc("<p>The job's ID.</p>") @as("JobId") jobId: jobId,
  }
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "DescribeNodeFromTemplateJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNode = {
  type t
  type request = {
    @ocaml.doc("<p>The account ID of the node's owner.</p>") @as("OwnerAccount")
    ownerAccount: option<packageOwnerAccount>,
    @ocaml.doc("<p>The node's ID.</p>") @as("NodeId") nodeId: nodeId,
  }
  type response = {
    @ocaml.doc("<p>When the node was updated.</p>") @as("LastUpdatedTime")
    lastUpdatedTime: timeStamp,
    @ocaml.doc("<p>When the node was created.</p>") @as("CreatedTime") createdTime: timeStamp,
    @ocaml.doc("<p>The node's description.</p>") @as("Description") description: description,
    @ocaml.doc("<p>The node's asset name.</p>") @as("AssetName") assetName: option<nodeAssetName>,
    @ocaml.doc("<p>The node's interface.</p>") @as("NodeInterface") nodeInterface: nodeInterface,
    @ocaml.doc("<p>The node's patch version.</p>") @as("PatchVersion")
    patchVersion: nodePackagePatchVersion,
    @ocaml.doc("<p>The node's package version.</p>") @as("PackageVersion")
    packageVersion: nodePackageVersion,
    @ocaml.doc("<p>The node's ARN.</p>") @as("PackageArn") packageArn: option<nodePackageArn>,
    @ocaml.doc("<p>The node's package ID.</p>") @as("PackageId") packageId: nodePackageId,
    @ocaml.doc("<p>The node's package name.</p>") @as("PackageName") packageName: nodePackageName,
    @ocaml.doc("<p>The account ID of the node's owner.</p>") @as("OwnerAccount")
    ownerAccount: packageOwnerAccount,
    @ocaml.doc("<p>The node's category.</p>") @as("Category") category: nodeCategory,
    @ocaml.doc("<p>The node's name.</p>") @as("Name") name: nodeName,
    @ocaml.doc("<p>The node's ID.</p>") @as("NodeId") nodeId: nodeId,
  }
  @module("@aws-sdk/client-panorama") @new external new: request => t = "DescribeNodeCommand"
  let make = (~nodeId, ~ownerAccount=?, ()) => new({ownerAccount: ownerAccount, nodeId: nodeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePackageImportJob = {
  type t
  type request = {
    @ocaml.doc("<p>Tags for the package import job.</p>") @as("JobTags")
    jobTags: option<jobTagsList>,
    @ocaml.doc("<p>A client token for the package import job.</p>") @as("ClientToken")
    clientToken: clientToken,
    @ocaml.doc("<p>An output config for the package import job.</p>") @as("OutputConfig")
    outputConfig: packageImportJobOutputConfig,
    @ocaml.doc("<p>An input config for the package import job.</p>") @as("InputConfig")
    inputConfig: packageImportJobInputConfig,
    @ocaml.doc("<p>A job type for the package import job.</p>") @as("JobType")
    jobType: packageImportJobType,
  }
  type response = {@ocaml.doc("<p>The job's ID.</p>") @as("JobId") jobId: jobId}
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "CreatePackageImportJobCommand"
  let make = (~clientToken, ~outputConfig, ~inputConfig, ~jobType, ~jobTags=?, ()) =>
    new({
      jobTags: jobTags,
      clientToken: clientToken,
      outputConfig: outputConfig,
      inputConfig: inputConfig,
      jobType: jobType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNodeFromTemplateJob = {
  type t
  type request = {
    @ocaml.doc("<p>Tags for the job.</p>") @as("JobTags") jobTags: option<jobTagsList>,
    @ocaml.doc("<p>Template parameters for the node.</p>") @as("TemplateParameters")
    templateParameters: templateParametersMap,
    @ocaml.doc("<p>A description for the node.</p>") @as("NodeDescription")
    nodeDescription: option<description>,
    @ocaml.doc("<p>A name for the node.</p>") @as("NodeName") nodeName: nodeName,
    @ocaml.doc("<p>An output package version for the node.</p>") @as("OutputPackageVersion")
    outputPackageVersion: nodePackageVersion,
    @ocaml.doc("<p>An output package name for the node.</p>") @as("OutputPackageName")
    outputPackageName: nodePackageName,
    @ocaml.doc("<p>The type of node.</p>") @as("TemplateType") templateType: templateType,
  }
  type response = {@ocaml.doc("<p>The job's ID.</p>") @as("JobId") jobId: jobId}
  @module("@aws-sdk/client-panorama") @new
  external new: request => t = "CreateNodeFromTemplateJobCommand"
  let make = (
    ~templateParameters,
    ~nodeName,
    ~outputPackageVersion,
    ~outputPackageName,
    ~templateType,
    ~jobTags=?,
    ~nodeDescription=?,
    (),
  ) =>
    new({
      jobTags: jobTags,
      templateParameters: templateParameters,
      nodeDescription: nodeDescription,
      nodeName: nodeName,
      outputPackageVersion: outputPackageVersion,
      outputPackageName: outputPackageName,
      templateType: templateType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ProvisionDevice = {
  type t
  type request = {
    @ocaml.doc("<p>A networking configuration for the device.</p>") @as("NetworkingConfiguration")
    networkingConfiguration: option<networkPayload>,
    @ocaml.doc("<p>Tags for the device.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>A description for the device.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A name for the device.</p>") @as("Name") name: deviceName,
  }
  type response = {
    @ocaml.doc("<p>The device's IoT thing name.</p>") @as("IotThingName")
    iotThingName: option<iotThingName>,
    @ocaml.doc("<p>The device's configuration bundle.</p>") @as("Certificates")
    certificates: option<certificates>,
    @ocaml.doc("<p>The device's status.</p>") @as("Status") status: deviceStatus,
    @ocaml.doc("<p>The device's ARN.</p>") @as("Arn") arn: deviceArn,
    @ocaml.doc("<p>The device's ID.</p>") @as("DeviceId") deviceId: option<deviceId>,
  }
  @module("@aws-sdk/client-panorama") @new external new: request => t = "ProvisionDeviceCommand"
  let make = (~name, ~networkingConfiguration=?, ~tags=?, ~description=?, ()) =>
    new({
      networkingConfiguration: networkingConfiguration,
      tags: tags,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDevice = {
  type t
  type request = {@ocaml.doc("<p>The device's ID.</p>") @as("DeviceId") deviceId: deviceId}
  type response = {
    @ocaml.doc("<p>The most recent beta software release.</p>") @as("LatestAlternateSoftware")
    latestAlternateSoftware: option<latestAlternateSoftware>,
    @ocaml.doc("<p>Beta software releases available for the device.</p>") @as("AlternateSoftwares")
    alternateSoftwares: option<alternateSoftwares>,
    @ocaml.doc("<p>The device's lease expiration time.</p>") @as("LeaseExpirationTime")
    leaseExpirationTime: option<leaseExpirationTime>,
    @ocaml.doc("<p>The device's networking status.</p>") @as("CurrentNetworkingStatus")
    currentNetworkingStatus: option<networkStatus>,
    @ocaml.doc("<p>The device's networking configuration.</p>") @as("NetworkingConfiguration")
    networkingConfiguration: option<networkPayload>,
    @ocaml.doc("<p>The device's tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The device's serial number.</p>") @as("SerialNumber")
    serialNumber: option<deviceSerialNumber>,
    @ocaml.doc("<p>The device's current software version.</p>") @as("CurrentSoftware")
    currentSoftware: option<currentSoftware>,
    @ocaml.doc("<p>The latest software version available for the device.</p>") @as("LatestSoftware")
    latestSoftware: option<latestSoftware>,
    @ocaml.doc("<p>The device's provisioning status.</p>") @as("ProvisioningStatus")
    provisioningStatus: option<deviceStatus>,
    @ocaml.doc("<p>When the device was created.</p>") @as("CreatedTime")
    createdTime: option<createdTime>,
    @ocaml.doc("<p>The device's connection status.</p>") @as("DeviceConnectionStatus")
    deviceConnectionStatus: option<deviceConnectionStatus>,
    @ocaml.doc("<p>The device's type.</p>") @as("Type") type_: option<deviceType>,
    @ocaml.doc("<p>The device's description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The device's ARN.</p>") @as("Arn") arn: option<deviceArn>,
    @ocaml.doc("<p>The device's name.</p>") @as("Name") name: option<deviceName>,
    @ocaml.doc("<p>The device's ID.</p>") @as("DeviceId") deviceId: option<deviceId>,
  }
  @module("@aws-sdk/client-panorama") @new external new: request => t = "DescribeDeviceCommand"
  let make = (~deviceId, ()) => new({deviceId: deviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
