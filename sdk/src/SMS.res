type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-sms") @new external createClient: unit => awsServiceClient = "SMSClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vmPath = string
type vmName = string
type vmManagerType = [
  | @as("HYPERV-MANAGER") #HYPERV_MANAGER
  | @as("SCVMM") #SCVMM
  | @as("VSPHERE") #VSPHERE
]
type vmManagerName = string
type vmManagerId = string
type vmId = string
type validationStatusMessage = string
type validationStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING") #PENDING
  | @as("READY_FOR_VALIDATION") #READY_FOR_VALIDATION
]
type validationId = string
type vpc = string
type totalServers = int
type totalServerGroups = int
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type subnet = string
type stackName = string
type stackId = string
type serverValidationStrategy = [@as("USERDATA") #USERDATA]
type serverType = [@as("VIRTUAL_MACHINE") #VIRTUAL_MACHINE]
type serverId = string
type serverGroupName = string
type serverGroupId = string
type serverCatalogStatus = [
  | @as("EXPIRED") #EXPIRED
  | @as("DELETED") #DELETED
  | @as("AVAILABLE") #AVAILABLE
  | @as("IMPORTING") #IMPORTING
  | @as("NOT_IMPORTED") #NOT_IMPORTED
]
type securityGroup = string
type scriptType = [@as("POWERSHELL_SCRIPT") #POWERSHELL_SCRIPT | @as("SHELL_SCRIPT") #SHELL_SCRIPT]
type s3KeyName = string
type s3BucketName = string
type runOnce = bool
type roleName = string
type replicationRunType = [@as("AUTOMATIC") #AUTOMATIC | @as("ON_DEMAND") #ON_DEMAND]
type replicationRunStatusMessage = string
type replicationRunState = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("COMPLETED") #COMPLETED
  | @as("FAILED") #FAILED
  | @as("ACTIVE") #ACTIVE
  | @as("MISSED") #MISSED
  | @as("PENDING") #PENDING
]
type replicationRunStageProgress = string
type replicationRunStage = string
type replicationRunId = string
type replicationJobTerminated = bool
type replicationJobStatusMessage = string
type replicationJobState = [
  | @as("FAILING") #FAILING
  | @as("PAUSED_ON_FAILURE") #PAUSED_ON_FAILURE
  | @as("COMPLETED") #COMPLETED
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("FAILED") #FAILED
  | @as("ACTIVE") #ACTIVE
  | @as("PENDING") #PENDING
]
type replicationJobId = string
type outputFormat = [@as("YAML") #YAML | @as("JSON") #JSON]
type numberOfRecentAmisToKeep = int
type nonEmptyStringWithMaxLen255 = string
type nextToken = string
type maxResults = int
type macAddress = string
type logicalId = string
type licenseType = [@as("BYOL") #BYOL | @as("AWS") #AWS]
type launchOrder = int
type kmsKeyId = string
type ipAddress = string
type instanceType = string
type instanceId = string
type importedAppId = string
type frequency = int
type forceTerminateApp = bool
type forceStopAppReplication = bool
type executionTimeoutSeconds = int
type errorMessage = string
type encrypted = bool
type ec2KeyName = string
type description = string
type connectorVersion = string
type connectorStatus = [@as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type connectorId = string
type connectorCapability = [
  | @as("SMS_OPTIMIZED") #SMS_OPTIMIZED
  | @as("SNAPSHOT_BATCHING") #SNAPSHOT_BATCHING
  | @as("HYPERV-MANAGER") #HYPERV_MANAGER
  | @as("SCVMM") #SCVMM
  | @as("VSPHERE") #VSPHERE
]
type command = string
type clientToken = string
type bucketName = string
type autoLaunch = bool
type associatePublicIpAddress = bool
type appValidationStrategy = [@as("SSM") #SSM]
type appStatusMessage = string
type appStatus = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type appReplicationStatusMessage = string
type appReplicationStatus = [
  | @as("REPLICATION_STOPPED") #REPLICATION_STOPPED
  | @as("REPLICATION_STOP_FAILED") #REPLICATION_STOP_FAILED
  | @as("REPLICATION_STOPPING") #REPLICATION_STOPPING
  | @as("REPLICATION_FAILED") #REPLICATION_FAILED
  | @as("DELTA_REPLICATION_FAILED") #DELTA_REPLICATION_FAILED
  | @as("DELTA_REPLICATED") #DELTA_REPLICATED
  | @as("DELTA_REPLICATION_IN_PROGRESS") #DELTA_REPLICATION_IN_PROGRESS
  | @as("PARTIALLY_REPLICATED") #PARTIALLY_REPLICATED
  | @as("REPLICATED") #REPLICATED
  | @as("REPLICATION_IN_PROGRESS") #REPLICATION_IN_PROGRESS
  | @as("REPLICATION_PENDING") #REPLICATION_PENDING
  | @as("VALIDATION_IN_PROGRESS") #VALIDATION_IN_PROGRESS
  | @as("READY_FOR_REPLICATION") #READY_FOR_REPLICATION
  | @as("CONFIGURATION_INVALID") #CONFIGURATION_INVALID
  | @as("CONFIGURATION_IN_PROGRESS") #CONFIGURATION_IN_PROGRESS
  | @as("READY_FOR_CONFIGURATION") #READY_FOR_CONFIGURATION
]
type appReplicationConfigurationStatus = [
  | @as("CONFIGURED") #CONFIGURED
  | @as("NOT_CONFIGURED") #NOT_CONFIGURED
]
type appName = string
type appLaunchStatusMessage = string
type appLaunchStatus = [
  | @as("TERMINATED") #TERMINATED
  | @as("TERMINATE_FAILED") #TERMINATE_FAILED
  | @as("TERMINATE_IN_PROGRESS") #TERMINATE_IN_PROGRESS
  | @as("LAUNCH_FAILED") #LAUNCH_FAILED
  | @as("DELTA_LAUNCH_FAILED") #DELTA_LAUNCH_FAILED
  | @as("DELTA_LAUNCH_IN_PROGRESS") #DELTA_LAUNCH_IN_PROGRESS
  | @as("PARTIALLY_LAUNCHED") #PARTIALLY_LAUNCHED
  | @as("LAUNCHED") #LAUNCHED
  | @as("LAUNCH_IN_PROGRESS") #LAUNCH_IN_PROGRESS
  | @as("LAUNCH_PENDING") #LAUNCH_PENDING
  | @as("VALIDATION_IN_PROGRESS") #VALIDATION_IN_PROGRESS
  | @as("READY_FOR_LAUNCH") #READY_FOR_LAUNCH
  | @as("CONFIGURATION_INVALID") #CONFIGURATION_INVALID
  | @as("CONFIGURATION_IN_PROGRESS") #CONFIGURATION_IN_PROGRESS
  | @as("READY_FOR_CONFIGURATION") #READY_FOR_CONFIGURATION
]
type appLaunchConfigurationStatus = [
  | @as("CONFIGURED") #CONFIGURED
  | @as("NOT_CONFIGURED") #NOT_CONFIGURED
]
type appIdWithValidation = string
type appId = string
type appDescription = string
type amiId = string
@ocaml.doc("<p>Represents a VM server location.</p>")
type vmServerAddress = {
  @ocaml.doc("<p>The ID of the VM.</p>") vmId: option<vmId>,
  @ocaml.doc("<p>The ID of the VM manager.</p>") vmManagerId: option<vmManagerId>,
}
@ocaml.doc("<p>Key/value pair that can be assigned to an application.</p>")
type tag = {
  @ocaml.doc("<p>The tag value.</p>") value: option<tagValue>,
  @ocaml.doc("<p>The tag key.</p>") key: option<tagKey>,
}
@ocaml.doc("<p>The replication parameters for replicating a server.</p>")
type serverReplicationParameters = {
  @ocaml.doc("<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. 
            This value can be any of the following:</p>
        <ul>
            <li>
                <p>KMS key ID</p>
            </li>
            <li>
                <p>KMS key alias</p>
            </li>
            <li>
                <p>ARN referring to the KMS key ID</p>
            </li>
            <li>
                <p>ARN referring to the KMS key alias</p>
            </li>
         </ul>
        <p>If encrypted is enabled but a KMS key ID is not specified, the
            customer's default KMS key for Amazon EBS is used.</p>")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>Indicates whether the replication job produces encrypted AMIs.</p>")
  encrypted: option<encrypted>,
  @ocaml.doc(
    "<p>The number of recent AMIs to keep when creating a replication job for this server.</p>"
  )
  numberOfRecentAmisToKeep: option<numberOfRecentAmisToKeep>,
  @ocaml.doc("<p>The license type for creating a replication job for the server.</p>")
  licenseType: option<licenseType>,
  @ocaml.doc("<p>Indicates whether to run the replication job one time.</p>")
  runOnce: option<runOnce>,
  @ocaml.doc("<p>The frequency of creating replication jobs for the server.</p>")
  frequency: option<frequency>,
  @ocaml.doc("<p>The seed time for creating a replication job for the server.</p>")
  seedTime: option<timestamp_>,
}
@ocaml.doc("<p>Location of an Amazon S3 object.</p>")
type s3Location = {
  @ocaml.doc("<p>The Amazon S3 bucket key.</p>") key: option<s3KeyName>,
  @ocaml.doc("<p>The Amazon S3 bucket name.</p>") bucket: option<s3BucketName>,
}
@ocaml.doc("<p>Details of the current stage of a replication run.</p>")
type replicationRunStageDetails = {
  @ocaml.doc("<p>The progress of the current stage of a replication run.</p>")
  stageProgress: option<replicationRunStageProgress>,
  @ocaml.doc("<p>The current stage of a replication run.</p>") stage: option<replicationRunStage>,
}
@ocaml.doc("<p>Contains the status of validating an application.</p>")
type notificationContext = {
  @ocaml.doc("<p>The status message.</p>") statusMessage: option<validationStatusMessage>,
  @ocaml.doc("<p>The status of the validation.</p>") status: option<validationStatus>,
  @ocaml.doc("<p>The ID of the validation.</p>") validationId: option<validationId>,
}
@ocaml.doc("<p>Details about the latest launch of an application.</p>")
type launchDetails = {
  @ocaml.doc("<p>The ID of the latest stack launched for this application.</p>")
  stackId: option<stackId>,
  @ocaml.doc("<p>The name of the latest stack launched for this application.</p>")
  stackName: option<stackName>,
  @ocaml.doc("<p>The latest time that this application was launched successfully.</p>")
  latestLaunchTime: option<timestamp_>,
}
type connectorCapabilityList = array<connectorCapability>
type appIds = array<appId>
type vmServerAddressList = array<vmServerAddress>
@ocaml.doc("<p>Represents a VM server.</p>")
type vmServer = {
  @ocaml.doc("<p>The VM folder path in the vCenter Server virtual machine inventory tree.</p>")
  vmPath: option<vmPath>,
  @ocaml.doc("<p>The type of VM management product.</p>") vmManagerType: option<vmManagerType>,
  @ocaml.doc("<p>The name of the VM manager.</p>") vmManagerName: option<vmManagerName>,
  @ocaml.doc("<p>The name of the VM.</p>") vmName: option<vmName>,
  @ocaml.doc("<p>The VM server location.</p>") vmServerAddress: option<vmServerAddress>,
}
@ocaml.doc("<p>A script that runs on first launch of an Amazon EC2 instance. Used for configuring the
            server during launch.</p>")
type userData = {
  @ocaml.doc("<p>Amazon S3 location of the user-data script.</p>") s3Location: option<s3Location>,
}
type tags = array<tag>
@ocaml.doc("<p>Contains the location of a validation script.</p>")
type source = {s3Location: option<s3Location>}
@ocaml.doc("<p>Contains the location of validation output.</p>")
type ssmoutput = {s3Location: option<s3Location>}
@ocaml.doc("<p>Represents a replication run.</p>")
type replicationRun = {
  @ocaml.doc("<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. 
            This value can be any of the following:</p>
        <ul>
            <li>
                <p>KMS key ID</p>
            </li>
            <li>
                <p>KMS key alias</p>
            </li>
            <li>
                <p>ARN referring to the KMS key ID</p>
            </li>
            <li>
                <p>ARN referring to the KMS key alias</p>
            </li>
         </ul>
        <p> If encrypted is <i>true</i> but a KMS key ID is not specified, the
            customer's default KMS key for Amazon EBS is used. </p>")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>Indicates whether the replication run should produce an encrypted AMI.</p>")
  encrypted: option<encrypted>,
  @ocaml.doc("<p>The description of the replication run.</p>") description: option<description>,
  @ocaml.doc("<p>The completion time of the last replication run.</p>")
  completedTime: option<timestamp_>,
  @ocaml.doc("<p>The start time of the next replication run.</p>")
  scheduledStartTime: option<timestamp_>,
  @ocaml.doc("<p>The ID of the Amazon Machine Image (AMI) from the replication
            run.</p>")
  amiId: option<amiId>,
  @ocaml.doc("<p>The description of the current status of the replication job.</p>")
  statusMessage: option<replicationRunStatusMessage>,
  @ocaml.doc("<p>Details about the current stage of the replication run.</p>")
  stageDetails: option<replicationRunStageDetails>,
  @ocaml.doc("<p>The type of replication run.</p>") @as("type") type_: option<replicationRunType>,
  @ocaml.doc("<p>The state of the replication run.</p>") state: option<replicationRunState>,
  @ocaml.doc("<p>The ID of the replication run.</p>") replicationRunId: option<replicationRunId>,
}
@ocaml.doc("<p>Represents a connector.</p>")
type connector = {
  @ocaml.doc("<p>The time the connector was associated.</p>") associatedOn: option<timestamp_>,
  @ocaml.doc("<p>The MAC address of the connector.</p>") macAddress: option<macAddress>,
  @ocaml.doc("<p>The IP address of the connector.</p>") ipAddress: option<ipAddress>,
  @ocaml.doc("<p>The ID of the VM manager.</p>") vmManagerId: option<vmManagerId>,
  @ocaml.doc("<p>The VM management product.</p>") vmManagerType: option<vmManagerType>,
  @ocaml.doc("<p>The name of the VM manager.</p>") vmManagerName: option<vmManagerName>,
  @ocaml.doc("<p>The capabilities of the connector.</p>")
  capabilityList: option<connectorCapabilityList>,
  @ocaml.doc("<p>The status of the connector.</p>") status: option<connectorStatus>,
  @ocaml.doc("<p>The connector version.</p>") version: option<connectorVersion>,
  @ocaml.doc("<p>The ID of the connector.</p>") connectorId: option<connectorId>,
}
@ocaml.doc("<p>Information about the application.</p>")
type appSummary = {
  @ocaml.doc("<p>The number of servers present in the application.</p>")
  totalServers: option<totalServers>,
  @ocaml.doc("<p>The number of server groups present in the application.</p>")
  totalServerGroups: option<totalServerGroups>,
  @ocaml.doc("<p>The name of the service role in the customer's account used by AWS SMS.</p>")
  roleName: option<roleName>,
  @ocaml.doc("<p>The last modified time of the application.</p>") lastModified: option<timestamp_>,
  @ocaml.doc("<p>The creation time of the application.</p>") creationTime: option<timestamp_>,
  @ocaml.doc("<p>Details about the latest launch of the application.</p>")
  launchDetails: option<launchDetails>,
  @ocaml.doc("<p>A message related to the launch status of the application.</p>")
  launchStatusMessage: option<appLaunchStatusMessage>,
  @ocaml.doc("<p>The launch status of the application.</p>") launchStatus: option<appLaunchStatus>,
  @ocaml.doc("<p>Status of the launch configuration.</p>")
  launchConfigurationStatus: option<appLaunchConfigurationStatus>,
  @ocaml.doc("<p>The timestamp of the application's most recent successful replication.</p>")
  latestReplicationTime: option<timestamp_>,
  @ocaml.doc("<p>A message related to the replication status of the application.</p>")
  replicationStatusMessage: option<appReplicationStatusMessage>,
  @ocaml.doc("<p>The replication status of the application.</p>")
  replicationStatus: option<appReplicationStatus>,
  @ocaml.doc("<p>Status of the replication configuration.</p>")
  replicationConfigurationStatus: option<appReplicationConfigurationStatus>,
  @ocaml.doc("<p>A message related to the status of the application</p>")
  statusMessage: option<appStatusMessage>,
  @ocaml.doc("<p>Status of the application.</p>") status: option<appStatus>,
  @ocaml.doc("<p>The description of the application.</p>") description: option<appDescription>,
  @ocaml.doc("<p>The name of the application.</p>") name: option<appName>,
  @ocaml.doc("<p>The ID of the application.</p>") importedAppId: option<importedAppId>,
  @ocaml.doc("<p>The unique ID of the application.</p>") appId: option<appId>,
}
@ocaml.doc("<p>Contains validation parameters.</p>")
type userDataValidationParameters = {
  @ocaml.doc("<p>The type of validation script.</p>") scriptType: option<scriptType>,
  @ocaml.doc("<p>The location of the validation script.</p>") source: option<source>,
}
@ocaml.doc("<p>Represents a server.</p>")
type server = {
  @ocaml.doc("<p>Indicates whether the replication job is deleted or failed.</p>")
  replicationJobTerminated: option<replicationJobTerminated>,
  @ocaml.doc("<p>The ID of the replication job.</p>") replicationJobId: option<replicationJobId>,
  @ocaml.doc("<p>Information about the VM server.</p>") vmServer: option<vmServer>,
  @ocaml.doc("<p>The type of server.</p>") serverType: option<serverType>,
  @ocaml.doc("<p>The ID of the server.</p>") serverId: option<serverId>,
}
@ocaml.doc("<p>Contains validation parameters.</p>")
type ssmvalidationParameters = {
  @ocaml.doc("<p>The name of the S3 bucket for output.</p>") outputS3BucketName: option<bucketName>,
  @ocaml.doc("<p>The timeout interval, in seconds.</p>")
  executionTimeoutSeconds: option<executionTimeoutSeconds>,
  @ocaml.doc("<p>The command to run the validation script</p>") command: option<command>,
  @ocaml.doc("<p>The type of validation script.</p>") scriptType: option<scriptType>,
  @ocaml.doc(
    "<p>The ID of the instance. The instance must have the following tag: UserForSMSApplicationValidation=true.</p>"
  )
  instanceId: option<instanceId>,
  @ocaml.doc("<p>The location of the validation script.</p>") source: option<source>,
}
type replicationRunList = array<replicationRun>
type connectorList = array<connector>
type apps = array<appSummary>
@ocaml.doc("<p>Output from validating an application.</p>")
type appValidationOutput = {
  @ocaml.doc("<p>Output from using SSM to validate the application.</p>")
  ssmOutput: option<ssmoutput>,
}
@ocaml.doc("<p>Contains output from validating an instance.</p>")
type serverValidationOutput = {server: option<server>}
@ocaml.doc("<p>Configuration for validating an instance.</p>")
type serverValidationConfiguration = {
  @ocaml.doc("<p>The validation parameters.</p>")
  userDataValidationParameters: option<userDataValidationParameters>,
  @ocaml.doc("<p>The validation strategy.</p>")
  serverValidationStrategy: option<serverValidationStrategy>,
  @ocaml.doc("<p>The name of the configuration.</p>") name: option<nonEmptyStringWithMaxLen255>,
  @ocaml.doc("<p>The ID of the validation.</p>") validationId: option<validationId>,
  server: option<server>,
}
@ocaml.doc("<p>Replication configuration of a server.</p>")
type serverReplicationConfiguration = {
  @ocaml.doc("<p>The parameters for replicating the server.</p>")
  serverReplicationParameters: option<serverReplicationParameters>,
  @ocaml.doc("<p>The ID of the server with which this replication configuration is
            associated.</p>")
  server: option<server>,
}
type serverList = array<server>
@ocaml.doc("<p>Launch configuration for a server.</p>")
type serverLaunchConfiguration = {
  @ocaml.doc("<p>The type of configuration script.</p>") configureScriptType: option<scriptType>,
  configureScript: option<s3Location>,
  @ocaml.doc("<p>The name of the IAM instance profile.</p>")
  iamInstanceProfileName: option<roleName>,
  @ocaml.doc(
    "<p>Indicates whether a publicly accessible IP address is created when launching the server.</p>"
  )
  associatePublicIpAddress: option<associatePublicIpAddress>,
  @ocaml.doc("<p>The instance type to use when launching the server.</p>")
  instanceType: option<instanceType>,
  @ocaml.doc("<p>Location of the user-data script to be executed when launching the server.</p>")
  userData: option<userData>,
  @ocaml.doc(
    "<p>The name of the Amazon EC2 SSH key to be used for connecting to the launched server.</p>"
  )
  ec2KeyName: option<ec2KeyName>,
  @ocaml.doc("<p>The ID of the security group that applies to the launched server.</p>")
  securityGroup: option<securityGroup>,
  @ocaml.doc("<p>The ID of the subnet the server should be launched into.</p>")
  subnet: option<subnet>,
  @ocaml.doc("<p>The ID of the VPC into which the server should be launched.</p>") vpc: option<vpc>,
  @ocaml.doc("<p>The logical ID of the server in the AWS CloudFormation template.</p>")
  logicalId: option<logicalId>,
  @ocaml.doc("<p>The ID of the server with which the launch configuration is associated.</p>")
  server: option<server>,
}
@ocaml.doc("<p>Represents a replication job.</p>")
type replicationJob = {
  @ocaml.doc("<p>Information about the replication runs.</p>")
  replicationRunList: option<replicationRunList>,
  @ocaml.doc("<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. 
            This value can be any of the following: </p>
        <ul>
            <li>
                <p>KMS key ID</p>
            </li>
            <li>
                <p>KMS key alias</p>
            </li>
            <li>
                <p>ARN referring to the KMS key ID</p>
            </li>
            <li>
                <p>ARN referring to the KMS key alias</p>
            </li>
         </ul>
        <p>If encrypted is enabled but a KMS key ID is not specified, the
            customer's default KMS key for Amazon EBS is used.</p>")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>Indicates whether the replication job should produce encrypted AMIs.</p>")
  encrypted: option<encrypted>,
  @ocaml.doc("<p>The number of recent AMIs to keep in the customer's account for a replication job. By
            default, the value is set to zero, meaning that all AMIs are kept.</p>")
  numberOfRecentAmisToKeep: option<numberOfRecentAmisToKeep>,
  @ocaml.doc("<p>The description of the replication job.</p>") description: option<description>,
  @ocaml.doc("<p>The description of the current status of the replication job.</p>")
  statusMessage: option<replicationJobStatusMessage>,
  @ocaml.doc("<p>The state of the replication job.</p>") state: option<replicationJobState>,
  @ocaml.doc("<p>The ID of the latest Amazon Machine Image (AMI).</p>") latestAmiId: option<amiId>,
  @ocaml.doc("<p>The name of the IAM role to be used by AWS SMS.</p>") roleName: option<roleName>,
  @ocaml.doc("<p>The license type to be used for the AMI created by a successful replication
            run.</p>")
  licenseType: option<licenseType>,
  @ocaml.doc("<p>The start time of the next replication run.</p>")
  nextReplicationRunStartTime: option<timestamp_>,
  @ocaml.doc("<p>Indicates whether to run the replication job one time.</p>")
  runOnce: option<runOnce>,
  @ocaml.doc("<p>The time between consecutive replication runs, in hours.</p>")
  frequency: option<frequency>,
  @ocaml.doc("<p>The seed replication time.</p>") seedReplicationTime: option<timestamp_>,
  @ocaml.doc("<p>Information about the VM server.</p>") vmServer: option<vmServer>,
  @ocaml.doc("<p>The type of server.</p>") serverType: option<serverType>,
  @ocaml.doc("<p>The ID of the server.</p>") serverId: option<serverId>,
  @ocaml.doc("<p>The ID of the replication job.</p>") replicationJobId: option<replicationJobId>,
}
@ocaml.doc("<p>Configuration for validating an application.</p>")
type appValidationConfiguration = {
  @ocaml.doc("<p>The validation parameters.</p>")
  ssmValidationParameters: option<ssmvalidationParameters>,
  @ocaml.doc("<p>The validation strategy.</p>")
  appValidationStrategy: option<appValidationStrategy>,
  @ocaml.doc("<p>The name of the configuration.</p>") name: option<nonEmptyStringWithMaxLen255>,
  @ocaml.doc("<p>The ID of the validation.</p>") validationId: option<validationId>,
}
@ocaml.doc("<p>Contains validation output.</p>")
type validationOutput = {
  @ocaml.doc("<p>The output from validation an instance.</p>")
  serverValidationOutput: option<serverValidationOutput>,
  @ocaml.doc("<p>The output from validating an application.</p>")
  appValidationOutput: option<appValidationOutput>,
  @ocaml.doc("<p>The latest time that the validation was performed.</p>")
  latestValidationTime: option<timestamp_>,
  @ocaml.doc("<p>The status message.</p>") statusMessage: option<validationStatusMessage>,
  @ocaml.doc("<p>The status of the validation.</p>") status: option<validationStatus>,
  @ocaml.doc("<p>The name of the validation.</p>") name: option<nonEmptyStringWithMaxLen255>,
  @ocaml.doc("<p>The ID of the validation.</p>") validationId: option<validationId>,
}
type serverValidationConfigurations = array<serverValidationConfiguration>
type serverReplicationConfigurations = array<serverReplicationConfiguration>
type serverLaunchConfigurations = array<serverLaunchConfiguration>
@ocaml.doc("<p>Logical grouping of servers.</p>")
type serverGroup = {
  @ocaml.doc("<p>The servers that belong to a server group.</p>") serverList: option<serverList>,
  @ocaml.doc("<p>The name of a server group.</p>") name: option<serverGroupName>,
  @ocaml.doc("<p>The ID of a server group.</p>") serverGroupId: option<serverGroupId>,
}
type replicationJobList = array<replicationJob>
type appValidationConfigurations = array<appValidationConfiguration>
type validationOutputList = array<validationOutput>
type serverGroups = array<serverGroup>
@ocaml.doc("<p>Configuration for validating an instance.</p>")
type serverGroupValidationConfiguration = {
  @ocaml.doc("<p>The validation configuration.</p>")
  serverValidationConfigurations: option<serverValidationConfigurations>,
  @ocaml.doc("<p>The ID of the server group.</p>") serverGroupId: option<serverGroupId>,
}
@ocaml.doc("<p>Replication configuration for a server group.</p>")
type serverGroupReplicationConfiguration = {
  @ocaml.doc("<p>The replication configuration for servers in the server group.</p>")
  serverReplicationConfigurations: option<serverReplicationConfigurations>,
  @ocaml.doc("<p>The ID of the server group with which this replication configuration is
            associated.</p>")
  serverGroupId: option<serverGroupId>,
}
@ocaml.doc("<p>Launch configuration for a server group.</p>")
type serverGroupLaunchConfiguration = {
  @ocaml.doc("<p>The launch configuration for servers in the server group.</p>")
  serverLaunchConfigurations: option<serverLaunchConfigurations>,
  @ocaml.doc("<p>The launch order of servers in the server group.</p>")
  launchOrder: option<launchOrder>,
  @ocaml.doc("<p>The ID of the server group with which the launch configuration is
            associated.</p>")
  serverGroupId: option<serverGroupId>,
}
type serverGroupValidationConfigurations = array<serverGroupValidationConfiguration>
type serverGroupReplicationConfigurations = array<serverGroupReplicationConfiguration>
type serverGroupLaunchConfigurations = array<serverGroupLaunchConfiguration>
@ocaml.doc("<fullname>AWS Server Migration Service</fullname>
        <p>AWS Server Migration Service (AWS SMS) makes it easier and faster for you to migrate your
            on-premises workloads to AWS. To learn more about AWS SMS, see the following 
            resources:</p>
        <ul>
            <li>
                <p>
                  <a href=\"http://aws.amazon.com/server-migration-service/\">AWS Server Migration Service
                    product page</a>
               </p>
            </li>
            <li>
                <p>
                  <a href=\"https://docs.aws.amazon.com/server-migration-service/latest/userguide/\">AWS Server Migration Service User Guide</a>
               </p>
            </li>
         </ul>")
module UpdateReplicationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. 
            This value can be any of the following:</p>
        <ul>
            <li>
                <p>KMS key ID</p>
            </li>
            <li>
                <p>KMS key alias</p>
            </li>
            <li>
                <p>ARN referring to the KMS key ID</p>
            </li>
            <li>
                <p>ARN referring to the KMS key alias</p>
            </li>
         </ul>
        <p>If encrypted is enabled but a KMS key ID is not specified, the
            customer's default KMS key for Amazon EBS is used.</p>")
    kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>When true, the replication job produces encrypted AMIs. For more information,
                <code>KmsKeyId</code>.</p>")
    encrypted: option<encrypted>,
    @ocaml.doc("<p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the
            maximum number is reached and a new AMI is created.</p>")
    numberOfRecentAmisToKeep: option<numberOfRecentAmisToKeep>,
    @ocaml.doc("<p>The description of the replication job.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the IAM role to be used by AWS SMS.</p>") roleName: option<roleName>,
    @ocaml.doc("<p>The license type to be used for the AMI created by a successful replication
            run.</p>")
    licenseType: option<licenseType>,
    @ocaml.doc("<p>The start time of the next replication run.</p>")
    nextReplicationRunStartTime: option<timestamp_>,
    @ocaml.doc("<p>The time between consecutive replication runs, in hours.</p>")
    frequency: option<frequency>,
    @ocaml.doc("<p>The ID of the replication job.</p>") replicationJobId: replicationJobId,
  }

  @module("@aws-sdk/client-sms") @new external new: request => t = "UpdateReplicationJobCommand"
  let make = (
    ~replicationJobId,
    ~kmsKeyId=?,
    ~encrypted=?,
    ~numberOfRecentAmisToKeep=?,
    ~description=?,
    ~roleName=?,
    ~licenseType=?,
    ~nextReplicationRunStartTime=?,
    ~frequency=?,
    (),
  ) =>
    new({
      kmsKeyId: kmsKeyId,
      encrypted: encrypted,
      numberOfRecentAmisToKeep: numberOfRecentAmisToKeep,
      description: description,
      roleName: roleName,
      licenseType: licenseType,
      nextReplicationRunStartTime: nextReplicationRunStartTime,
      frequency: frequency,
      replicationJobId: replicationJobId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TerminateApp = {
  type t
  type request = {@ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>}

  @module("@aws-sdk/client-sms") @new external new: request => t = "TerminateAppCommand"
  let make = (~appId=?, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopAppReplication = {
  type t
  type request = {@ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>}

  @module("@aws-sdk/client-sms") @new external new: request => t = "StopAppReplicationCommand"
  let make = (~appId=?, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartOnDemandReplicationRun = {
  type t
  type request = {
    @ocaml.doc("<p>The description of the replication run.</p>") description: option<description>,
    @ocaml.doc("<p>The ID of the replication job.</p>") replicationJobId: replicationJobId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the replication run.</p>") replicationRunId: option<replicationRunId>,
  }
  @module("@aws-sdk/client-sms") @new
  external new: request => t = "StartOnDemandReplicationRunCommand"
  let make = (~replicationJobId, ~description=?, ()) =>
    new({description: description, replicationJobId: replicationJobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartOnDemandAppReplication = {
  type t
  type request = {
    @ocaml.doc("<p>The description of the replication run.</p>") description: option<description>,
    @ocaml.doc("<p>The ID of the application.</p>") appId: appId,
  }

  @module("@aws-sdk/client-sms") @new
  external new: request => t = "StartOnDemandAppReplicationCommand"
  let make = (~appId, ~description=?, ()) => new({description: description, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartAppReplication = {
  type t
  type request = {@ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>}

  @module("@aws-sdk/client-sms") @new external new: request => t = "StartAppReplicationCommand"
  let make = (~appId=?, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module LaunchApp = {
  type t
  type request = {@ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>}

  @module("@aws-sdk/client-sms") @new external new: request => t = "LaunchAppCommand"
  let make = (~appId=?, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ImportServerCatalog = {
  type t

  @module("@aws-sdk/client-sms") @new external new: unit => t = "ImportServerCatalogCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ImportAppCatalog = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the service role. If you omit this parameter, we create a service-linked role
            for AWS Migration Hub in your account. Otherwise, the role that you provide must have the <a href=\"https://docs.aws.amazon.com/migrationhub/latest/ug/new-customer-setup.html#sms-managed\">policy
            and trust policy</a> described in the <i>AWS Migration Hub User Guide</i>.</p>")
    roleName: option<roleName>,
  }

  @module("@aws-sdk/client-sms") @new external new: request => t = "ImportAppCatalogCommand"
  let make = (~roleName=?, ()) => new({roleName: roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateConnector = {
  type t
  type request = {@ocaml.doc("<p>The ID of the connector.</p>") connectorId: connectorId}

  @module("@aws-sdk/client-sms") @new external new: request => t = "DisassociateConnectorCommand"
  let make = (~connectorId, ()) => new({connectorId: connectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteServerCatalog = {
  type t

  @module("@aws-sdk/client-sms") @new external new: unit => t = "DeleteServerCatalogCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteReplicationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the replication job.</p>") replicationJobId: replicationJobId,
  }

  @module("@aws-sdk/client-sms") @new external new: request => t = "DeleteReplicationJobCommand"
  let make = (~replicationJobId, ()) => new({replicationJobId: replicationJobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAppValidationConfiguration = {
  type t
  type request = {@ocaml.doc("<p>The ID of the application.</p>") appId: appIdWithValidation}

  @module("@aws-sdk/client-sms") @new
  external new: request => t = "DeleteAppValidationConfigurationCommand"
  let make = (~appId, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAppReplicationConfiguration = {
  type t
  type request = {@ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>}

  @module("@aws-sdk/client-sms") @new
  external new: request => t = "DeleteAppReplicationConfigurationCommand"
  let make = (~appId=?, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAppLaunchConfiguration = {
  type t
  type request = {@ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>}

  @module("@aws-sdk/client-sms") @new
  external new: request => t = "DeleteAppLaunchConfigurationCommand"
  let make = (~appId=?, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApp = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to terminate the stack corresponding to the
            application while deleting the application.</p>")
    forceTerminateApp: option<forceTerminateApp>,
    @ocaml.doc("<p>Indicates whether to stop all replication jobs corresponding to the servers
            in the application while deleting the application.</p>")
    forceStopAppReplication: option<forceStopAppReplication>,
    @ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>,
  }

  @module("@aws-sdk/client-sms") @new external new: request => t = "DeleteAppCommand"
  let make = (~forceTerminateApp=?, ~forceStopAppReplication=?, ~appId=?, ()) =>
    new({
      forceTerminateApp: forceTerminateApp,
      forceStopAppReplication: forceStopAppReplication,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateReplicationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. 
            This value can be any of the following:</p>
        <ul>
            <li>
                <p>KMS key ID</p>
            </li>
            <li>
                <p>KMS key alias</p>
            </li>
            <li>
                <p>ARN referring to the KMS key ID</p>
            </li>
            <li>
                <p>ARN referring to the KMS key alias</p>
            </li>
         </ul>
        <p> If encrypted is <i>true</i> but a KMS key ID is not specified, the
            customer's default KMS key for Amazon EBS is used. </p>")
    kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>Indicates whether the replication job produces encrypted AMIs.</p>")
    encrypted: option<encrypted>,
    @ocaml.doc("<p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the
            maximum number is reached and a new AMI is created.</p>")
    numberOfRecentAmisToKeep: option<numberOfRecentAmisToKeep>,
    @ocaml.doc("<p>The description of the replication job.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the IAM role to be used by the AWS SMS.</p>")
    roleName: option<roleName>,
    @ocaml.doc("<p>The license type to be used for the AMI created by a successful replication
            run.</p>")
    licenseType: option<licenseType>,
    @ocaml.doc("<p>Indicates whether to run the replication job one time.</p>")
    runOnce: option<runOnce>,
    @ocaml.doc("<p>The time between consecutive replication runs, in hours.</p>")
    frequency: option<frequency>,
    @ocaml.doc("<p>The seed replication time.</p>") seedReplicationTime: timestamp_,
    @ocaml.doc("<p>The ID of the server.</p>") serverId: serverId,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the replication job.</p>")
    replicationJobId: option<replicationJobId>,
  }
  @module("@aws-sdk/client-sms") @new external new: request => t = "CreateReplicationJobCommand"
  let make = (
    ~seedReplicationTime,
    ~serverId,
    ~kmsKeyId=?,
    ~encrypted=?,
    ~numberOfRecentAmisToKeep=?,
    ~description=?,
    ~roleName=?,
    ~licenseType=?,
    ~runOnce=?,
    ~frequency=?,
    (),
  ) =>
    new({
      kmsKeyId: kmsKeyId,
      encrypted: encrypted,
      numberOfRecentAmisToKeep: numberOfRecentAmisToKeep,
      description: description,
      roleName: roleName,
      licenseType: licenseType,
      runOnce: runOnce,
      frequency: frequency,
      seedReplicationTime: seedReplicationTime,
      serverId: serverId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module NotifyAppValidationOutput = {
  type t
  type request = {
    @ocaml.doc("<p>The notification information.</p>")
    notificationContext: option<notificationContext>,
    @ocaml.doc("<p>The ID of the application.</p>") appId: appIdWithValidation,
  }

  @module("@aws-sdk/client-sms") @new
  external new: request => t = "NotifyAppValidationOutputCommand"
  let make = (~appId, ~notificationContext=?, ()) =>
    new({notificationContext: notificationContext, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GenerateTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The format for generating the AWS CloudFormation template.</p>")
    templateFormat: option<outputFormat>,
    @ocaml.doc("<p>The ID of the application associated with the AWS CloudFormation template.</p>")
    appId: option<appId>,
  }
  type response = {
    @ocaml.doc("<p>The location of the Amazon S3 object.</p>") s3Location: option<s3Location>,
  }
  @module("@aws-sdk/client-sms") @new external new: request => t = "GenerateTemplateCommand"
  let make = (~templateFormat=?, ~appId=?, ()) =>
    new({templateFormat: templateFormat, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateChangeSet = {
  type t
  type request = {
    @ocaml.doc("<p>The format for the change set.</p>") changesetFormat: option<outputFormat>,
    @ocaml.doc("<p>The ID of the application associated with the change set.</p>")
    appId: option<appId>,
  }
  type response = {
    @ocaml.doc("<p>The location of the Amazon S3 object.</p>") s3Location: option<s3Location>,
  }
  @module("@aws-sdk/client-sms") @new external new: request => t = "GenerateChangeSetCommand"
  let make = (~changesetFormat=?, ~appId=?, ()) =>
    new({changesetFormat: changesetFormat, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApps = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call. The default value is 100. To
            retrieve the remaining results, make another call with the returned
                <code>NextToken</code> value. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The unique application IDs.</p>") appIds: option<appIds>,
  }
  type response = {
    @ocaml.doc("<p>The token required to retrieve the next set of results. This value is null when there
            are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The application summaries.</p>") apps: option<apps>,
  }
  @module("@aws-sdk/client-sms") @new external new: request => t = "ListAppsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~appIds=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, appIds: appIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConnectors = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call. The default value is 50.
            To retrieve the remaining results, make another call with the returned
                <code>NextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token required to retrieve the next set of results. This value is null when
            there are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the registered connectors.</p>")
    connectorList: option<connectorList>,
  }
  @module("@aws-sdk/client-sms") @new external new: request => t = "GetConnectorsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetServers = {
  type t
  type request = {
    @ocaml.doc("<p>The server addresses.</p>") vmServerAddressList: option<vmServerAddressList>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. The default value is 50.
            To retrieve the remaining results, make another call with the returned
                <code>NextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token required to retrieve the next set of results. This value is null when
            there are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the servers.</p>") serverList: option<serverList>,
    @ocaml.doc("<p>The status of the server catalog.</p>")
    serverCatalogStatus: option<serverCatalogStatus>,
    @ocaml.doc("<p>The time when the server was last modified.</p>")
    lastModifiedOn: option<timestamp_>,
  }
  @module("@aws-sdk/client-sms") @new external new: request => t = "GetServersCommand"
  let make = (~vmServerAddressList=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({vmServerAddressList: vmServerAddressList, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReplicationRuns = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call. The default value is 50.
            To retrieve the remaining results, make another call with the returned
                <code>NextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the replication job.</p>") replicationJobId: replicationJobId,
  }
  type response = {
    @ocaml.doc("<p>The token required to retrieve the next set of results. This value is null when
            there are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the replication runs.</p>")
    replicationRunList: option<replicationRunList>,
    @ocaml.doc("<p>Information about the replication job.</p>")
    replicationJob: option<replicationJob>,
  }
  @module("@aws-sdk/client-sms") @new external new: request => t = "GetReplicationRunsCommand"
  let make = (~replicationJobId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, replicationJobId: replicationJobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReplicationJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call. The default value is 50.
            To retrieve the remaining results, make another call with the returned
                <code>NextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the replication job.</p>") replicationJobId: option<replicationJobId>,
  }
  type response = {
    @ocaml.doc("<p>The token required to retrieve the next set of results. This value is null when
            there are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the replication jobs.</p>")
    replicationJobList: option<replicationJobList>,
  }
  @module("@aws-sdk/client-sms") @new external new: request => t = "GetReplicationJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~replicationJobId=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, replicationJobId: replicationJobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApp = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to associate with the application.</p>") tags: option<tags>,
    @ocaml.doc("<p>The server groups in the application to update.</p>")
    serverGroups: option<serverGroups>,
    @ocaml.doc("<p>The name of the service role in the customer's account used by AWS SMS.</p>")
    roleName: option<roleName>,
    @ocaml.doc("<p>The new description of the application.</p>")
    description: option<appDescription>,
    @ocaml.doc("<p>The new name of the application.</p>") name: option<appName>,
    @ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with the application.</p>") tags: option<tags>,
    @ocaml.doc("<p>The updated server groups in the application.</p>")
    serverGroups: option<serverGroups>,
    @ocaml.doc("<p>A summary description of the application.</p>") appSummary: option<appSummary>,
  }
  @module("@aws-sdk/client-sms") @new external new: request => t = "UpdateAppCommand"
  let make = (~tags=?, ~serverGroups=?, ~roleName=?, ~description=?, ~name=?, ~appId=?, ()) =>
    new({
      tags: tags,
      serverGroups: serverGroups,
      roleName: roleName,
      description: description,
      name: name,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAppValidationOutput = {
  type t
  type request = {@ocaml.doc("<p>The ID of the application.</p>") appId: appIdWithValidation}
  type response = {
    @ocaml.doc("<p>The validation output.</p>") validationOutputList: option<validationOutputList>,
  }
  @module("@aws-sdk/client-sms") @new external new: request => t = "GetAppValidationOutputCommand"
  let make = (~appId, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApp = {
  type t
  type request = {@ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>}
  type response = {
    @ocaml.doc("<p>The tags associated with the application.</p>") tags: option<tags>,
    @ocaml.doc("<p>The server groups that belong to the application.</p>")
    serverGroups: option<serverGroups>,
    @ocaml.doc("<p>Information about the application.</p>") appSummary: option<appSummary>,
  }
  @module("@aws-sdk/client-sms") @new external new: request => t = "GetAppCommand"
  let make = (~appId=?, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApp = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be associated with the application.</p>") tags: option<tags>,
    @ocaml.doc("<p>The server groups to include in the application.</p>")
    serverGroups: option<serverGroups>,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of
            application creation.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The name of the service role in the customer's account to be used by AWS SMS.</p>"
    )
    roleName: option<roleName>,
    @ocaml.doc("<p>The description of the new application</p>") description: option<appDescription>,
    @ocaml.doc("<p>The name of the new application.</p>") name: option<appName>,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with the application.</p>") tags: option<tags>,
    @ocaml.doc("<p>The server groups included in the application.</p>")
    serverGroups: option<serverGroups>,
    @ocaml.doc("<p>A summary description of the application.</p>") appSummary: option<appSummary>,
  }
  @module("@aws-sdk/client-sms") @new external new: request => t = "CreateAppCommand"
  let make = (~tags=?, ~serverGroups=?, ~clientToken=?, ~roleName=?, ~description=?, ~name=?, ()) =>
    new({
      tags: tags,
      serverGroups: serverGroups,
      clientToken: clientToken,
      roleName: roleName,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAppValidationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration for instance validation.</p>")
    serverGroupValidationConfigurations: option<serverGroupValidationConfigurations>,
    @ocaml.doc("<p>The configuration for application validation.</p>")
    appValidationConfigurations: option<appValidationConfigurations>,
    @ocaml.doc("<p>The ID of the application.</p>") appId: appIdWithValidation,
  }

  @module("@aws-sdk/client-sms") @new
  external new: request => t = "PutAppValidationConfigurationCommand"
  let make = (~appId, ~serverGroupValidationConfigurations=?, ~appValidationConfigurations=?, ()) =>
    new({
      serverGroupValidationConfigurations: serverGroupValidationConfigurations,
      appValidationConfigurations: appValidationConfigurations,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutAppReplicationConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Information about the replication configurations for server groups in the application.</p>"
    )
    serverGroupReplicationConfigurations: option<serverGroupReplicationConfigurations>,
    @ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>,
  }

  @module("@aws-sdk/client-sms") @new
  external new: request => t = "PutAppReplicationConfigurationCommand"
  let make = (~serverGroupReplicationConfigurations=?, ~appId=?, ()) =>
    new({serverGroupReplicationConfigurations: serverGroupReplicationConfigurations, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutAppLaunchConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Information about the launch configurations for server groups in the application.</p>"
    )
    serverGroupLaunchConfigurations: option<serverGroupLaunchConfigurations>,
    @ocaml.doc(
      "<p>Indicates whether the application is configured to launch automatically after replication is complete.</p>"
    )
    autoLaunch: option<autoLaunch>,
    @ocaml.doc("<p>The name of service role in the customer's account that AWS CloudFormation uses to launch the
            application.</p>")
    roleName: option<roleName>,
    @ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>,
  }

  @module("@aws-sdk/client-sms") @new
  external new: request => t = "PutAppLaunchConfigurationCommand"
  let make = (~serverGroupLaunchConfigurations=?, ~autoLaunch=?, ~roleName=?, ~appId=?, ()) =>
    new({
      serverGroupLaunchConfigurations: serverGroupLaunchConfigurations,
      autoLaunch: autoLaunch,
      roleName: roleName,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetAppValidationConfiguration = {
  type t
  type request = {@ocaml.doc("<p>The ID of the application.</p>") appId: appIdWithValidation}
  type response = {
    @ocaml.doc("<p>The configuration for instance validation.</p>")
    serverGroupValidationConfigurations: option<serverGroupValidationConfigurations>,
    @ocaml.doc("<p>The configuration for application validation.</p>")
    appValidationConfigurations: option<appValidationConfigurations>,
  }
  @module("@aws-sdk/client-sms") @new
  external new: request => t = "GetAppValidationConfigurationCommand"
  let make = (~appId, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAppReplicationConfiguration = {
  type t
  type request = {@ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>}
  type response = {
    @ocaml.doc(
      "<p>The replication configurations associated with server groups in this application.</p>"
    )
    serverGroupReplicationConfigurations: option<serverGroupReplicationConfigurations>,
  }
  @module("@aws-sdk/client-sms") @new
  external new: request => t = "GetAppReplicationConfigurationCommand"
  let make = (~appId=?, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAppLaunchConfiguration = {
  type t
  type request = {@ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>}
  type response = {
    @ocaml.doc("<p>The launch configurations for server groups in this application.</p>")
    serverGroupLaunchConfigurations: option<serverGroupLaunchConfigurations>,
    @ocaml.doc(
      "<p>Indicates whether the application is configured to launch automatically after replication is complete.</p>"
    )
    autoLaunch: option<autoLaunch>,
    @ocaml.doc("<p>The name of the service role in the customer's account that AWS CloudFormation uses to launch the
            application.</p>")
    roleName: option<roleName>,
    @ocaml.doc("<p>The ID of the application.</p>") appId: option<appId>,
  }
  @module("@aws-sdk/client-sms") @new
  external new: request => t = "GetAppLaunchConfigurationCommand"
  let make = (~appId=?, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
