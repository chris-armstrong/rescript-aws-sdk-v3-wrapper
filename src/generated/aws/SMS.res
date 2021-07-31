type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-sms") @new external createClient: unit => awsServiceClient = "SMSClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type vmPath = string
type vmName = string
type vmManagerType = [@as("HYPERV-MANAGER") #HYPERV_MANAGER | @as("SCVMM") #SCVMM | @as("VSPHERE") #VSPHERE]
type vmManagerName = string
type vmManagerId = string
type vmId = string
type validationStatusMessage = string
type validationStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS | @as("PENDING") #PENDING | @as("READY_FOR_VALIDATION") #READY_FOR_VALIDATION]
type validationId = string
type vpc = string
type totalServers = int
type totalServerGroups = int
type timestamp_ = Js.Date.t;
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
type serverCatalogStatus = [@as("EXPIRED") #EXPIRED | @as("DELETED") #DELETED | @as("AVAILABLE") #AVAILABLE | @as("IMPORTING") #IMPORTING | @as("NOT_IMPORTED") #NOT_IMPORTED]
type securityGroup = string
type scriptType = [@as("POWERSHELL_SCRIPT") #POWERSHELL_SCRIPT | @as("SHELL_SCRIPT") #SHELL_SCRIPT]
type s3KeyName = string
type s3BucketName = string
type runOnce = bool
type roleName = string
type replicationRunType = [@as("AUTOMATIC") #AUTOMATIC | @as("ON_DEMAND") #ON_DEMAND]
type replicationRunStatusMessage = string
type replicationRunState = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("ACTIVE") #ACTIVE | @as("MISSED") #MISSED | @as("PENDING") #PENDING]
type replicationRunStageProgress = string
type replicationRunStage = string
type replicationRunId = string
type replicationJobTerminated = bool
type replicationJobStatusMessage = string
type replicationJobState = [@as("FAILING") #FAILING | @as("PAUSED_ON_FAILURE") #PAUSED_ON_FAILURE | @as("COMPLETED") #COMPLETED | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("FAILED") #FAILED | @as("ACTIVE") #ACTIVE | @as("PENDING") #PENDING]
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
type connectorCapability = [@as("SMS_OPTIMIZED") #SMS_OPTIMIZED | @as("SNAPSHOT_BATCHING") #SNAPSHOT_BATCHING | @as("HYPERV-MANAGER") #HYPERV_MANAGER | @as("SCVMM") #SCVMM | @as("VSPHERE") #VSPHERE]
type command = string
type clientToken = string
type bucketName = string
type autoLaunch = bool
type associatePublicIpAddress = bool
type appValidationStrategy = [@as("SSM") #SSM]
type appStatusMessage = string
type appStatus = [@as("DELETE_FAILED") #DELETE_FAILED | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type appReplicationStatusMessage = string
type appReplicationStatus = [@as("REPLICATION_STOPPED") #REPLICATION_STOPPED | @as("REPLICATION_STOP_FAILED") #REPLICATION_STOP_FAILED | @as("REPLICATION_STOPPING") #REPLICATION_STOPPING | @as("REPLICATION_FAILED") #REPLICATION_FAILED | @as("DELTA_REPLICATION_FAILED") #DELTA_REPLICATION_FAILED | @as("DELTA_REPLICATED") #DELTA_REPLICATED | @as("DELTA_REPLICATION_IN_PROGRESS") #DELTA_REPLICATION_IN_PROGRESS | @as("PARTIALLY_REPLICATED") #PARTIALLY_REPLICATED | @as("REPLICATED") #REPLICATED | @as("REPLICATION_IN_PROGRESS") #REPLICATION_IN_PROGRESS | @as("REPLICATION_PENDING") #REPLICATION_PENDING | @as("VALIDATION_IN_PROGRESS") #VALIDATION_IN_PROGRESS | @as("READY_FOR_REPLICATION") #READY_FOR_REPLICATION | @as("CONFIGURATION_INVALID") #CONFIGURATION_INVALID | @as("CONFIGURATION_IN_PROGRESS") #CONFIGURATION_IN_PROGRESS | @as("READY_FOR_CONFIGURATION") #READY_FOR_CONFIGURATION]
type appReplicationConfigurationStatus = [@as("CONFIGURED") #CONFIGURED | @as("NOT_CONFIGURED") #NOT_CONFIGURED]
type appName = string
type appLaunchStatusMessage = string
type appLaunchStatus = [@as("TERMINATED") #TERMINATED | @as("TERMINATE_FAILED") #TERMINATE_FAILED | @as("TERMINATE_IN_PROGRESS") #TERMINATE_IN_PROGRESS | @as("LAUNCH_FAILED") #LAUNCH_FAILED | @as("DELTA_LAUNCH_FAILED") #DELTA_LAUNCH_FAILED | @as("DELTA_LAUNCH_IN_PROGRESS") #DELTA_LAUNCH_IN_PROGRESS | @as("PARTIALLY_LAUNCHED") #PARTIALLY_LAUNCHED | @as("LAUNCHED") #LAUNCHED | @as("LAUNCH_IN_PROGRESS") #LAUNCH_IN_PROGRESS | @as("LAUNCH_PENDING") #LAUNCH_PENDING | @as("VALIDATION_IN_PROGRESS") #VALIDATION_IN_PROGRESS | @as("READY_FOR_LAUNCH") #READY_FOR_LAUNCH | @as("CONFIGURATION_INVALID") #CONFIGURATION_INVALID | @as("CONFIGURATION_IN_PROGRESS") #CONFIGURATION_IN_PROGRESS | @as("READY_FOR_CONFIGURATION") #READY_FOR_CONFIGURATION]
type appLaunchConfigurationStatus = [@as("CONFIGURED") #CONFIGURED | @as("NOT_CONFIGURED") #NOT_CONFIGURED]
type appIdWithValidation = string
type appId = string
type appDescription = string
type amiId = string
type vmServerAddress = {
vmId: option<vmId>,
  vmManagerId: option<vmManagerId>
}
type tag = {
value: option<tagValue>,
  key: option<tagKey>
}
type serverReplicationParameters = {
kmsKeyId: option<kmsKeyId>,
  encrypted: option<encrypted>,
  numberOfRecentAmisToKeep: option<numberOfRecentAmisToKeep>,
  licenseType: option<licenseType>,
  runOnce: option<runOnce>,
  frequency: option<frequency>,
  seedTime: option<timestamp_>
}
type s3Location = {
key: option<s3KeyName>,
  bucket: option<s3BucketName>
}
type replicationRunStageDetails = {
stageProgress: option<replicationRunStageProgress>,
  stage: option<replicationRunStage>
}
type notificationContext = {
statusMessage: option<validationStatusMessage>,
  status: option<validationStatus>,
  validationId: option<validationId>
}
type launchDetails = {
stackId: option<stackId>,
  stackName: option<stackName>,
  latestLaunchTime: option<timestamp_>
}
type connectorCapabilityList = array<connectorCapability>
type appIds = array<appId>
type vmServerAddressList = array<vmServerAddress>
type vmServer = {
vmPath: option<vmPath>,
  vmManagerType: option<vmManagerType>,
  vmManagerName: option<vmManagerName>,
  vmName: option<vmName>,
  vmServerAddress: option<vmServerAddress>
}
type userData = {
s3Location: option<s3Location>
}
type tags = array<tag>
type source = {
s3Location: option<s3Location>
}
type ssmoutput = {
s3Location: option<s3Location>
}
type replicationRun = {
kmsKeyId: option<kmsKeyId>,
  encrypted: option<encrypted>,
  description: option<description>,
  completedTime: option<timestamp_>,
  scheduledStartTime: option<timestamp_>,
  amiId: option<amiId>,
  statusMessage: option<replicationRunStatusMessage>,
  stageDetails: option<replicationRunStageDetails>,
  @as("type") type_: option<replicationRunType>,
  state: option<replicationRunState>,
  replicationRunId: option<replicationRunId>
}
type connector = {
associatedOn: option<timestamp_>,
  macAddress: option<macAddress>,
  ipAddress: option<ipAddress>,
  vmManagerId: option<vmManagerId>,
  vmManagerType: option<vmManagerType>,
  vmManagerName: option<vmManagerName>,
  capabilityList: option<connectorCapabilityList>,
  status: option<connectorStatus>,
  version: option<connectorVersion>,
  connectorId: option<connectorId>
}
type appSummary = {
totalServers: option<totalServers>,
  totalServerGroups: option<totalServerGroups>,
  roleName: option<roleName>,
  lastModified: option<timestamp_>,
  creationTime: option<timestamp_>,
  launchDetails: option<launchDetails>,
  launchStatusMessage: option<appLaunchStatusMessage>,
  launchStatus: option<appLaunchStatus>,
  launchConfigurationStatus: option<appLaunchConfigurationStatus>,
  latestReplicationTime: option<timestamp_>,
  replicationStatusMessage: option<appReplicationStatusMessage>,
  replicationStatus: option<appReplicationStatus>,
  replicationConfigurationStatus: option<appReplicationConfigurationStatus>,
  statusMessage: option<appStatusMessage>,
  status: option<appStatus>,
  description: option<appDescription>,
  name: option<appName>,
  importedAppId: option<importedAppId>,
  appId: option<appId>
}
type userDataValidationParameters = {
scriptType: option<scriptType>,
  source: option<source>
}
type server = {
replicationJobTerminated: option<replicationJobTerminated>,
  replicationJobId: option<replicationJobId>,
  vmServer: option<vmServer>,
  serverType: option<serverType>,
  serverId: option<serverId>
}
type ssmvalidationParameters = {
outputS3BucketName: option<bucketName>,
  executionTimeoutSeconds: option<executionTimeoutSeconds>,
  command: option<command>,
  scriptType: option<scriptType>,
  instanceId: option<instanceId>,
  source: option<source>
}
type replicationRunList = array<replicationRun>
type connectorList = array<connector>
type apps = array<appSummary>
type appValidationOutput = {
ssmOutput: option<ssmoutput>
}
type serverValidationOutput = {
server: option<server>
}
type serverValidationConfiguration = {
userDataValidationParameters: option<userDataValidationParameters>,
  serverValidationStrategy: option<serverValidationStrategy>,
  name: option<nonEmptyStringWithMaxLen255>,
  validationId: option<validationId>,
  server: option<server>
}
type serverReplicationConfiguration = {
serverReplicationParameters: option<serverReplicationParameters>,
  server: option<server>
}
type serverList = array<server>
type serverLaunchConfiguration = {
configureScriptType: option<scriptType>,
  configureScript: option<s3Location>,
  iamInstanceProfileName: option<roleName>,
  associatePublicIpAddress: option<associatePublicIpAddress>,
  instanceType: option<instanceType>,
  userData: option<userData>,
  ec2KeyName: option<ec2KeyName>,
  securityGroup: option<securityGroup>,
  subnet: option<subnet>,
  vpc: option<vpc>,
  logicalId: option<logicalId>,
  server: option<server>
}
type replicationJob = {
replicationRunList: option<replicationRunList>,
  kmsKeyId: option<kmsKeyId>,
  encrypted: option<encrypted>,
  numberOfRecentAmisToKeep: option<numberOfRecentAmisToKeep>,
  description: option<description>,
  statusMessage: option<replicationJobStatusMessage>,
  state: option<replicationJobState>,
  latestAmiId: option<amiId>,
  roleName: option<roleName>,
  licenseType: option<licenseType>,
  nextReplicationRunStartTime: option<timestamp_>,
  runOnce: option<runOnce>,
  frequency: option<frequency>,
  seedReplicationTime: option<timestamp_>,
  vmServer: option<vmServer>,
  serverType: option<serverType>,
  serverId: option<serverId>,
  replicationJobId: option<replicationJobId>
}
type appValidationConfiguration = {
ssmValidationParameters: option<ssmvalidationParameters>,
  appValidationStrategy: option<appValidationStrategy>,
  name: option<nonEmptyStringWithMaxLen255>,
  validationId: option<validationId>
}
type validationOutput = {
serverValidationOutput: option<serverValidationOutput>,
  appValidationOutput: option<appValidationOutput>,
  latestValidationTime: option<timestamp_>,
  statusMessage: option<validationStatusMessage>,
  status: option<validationStatus>,
  name: option<nonEmptyStringWithMaxLen255>,
  validationId: option<validationId>
}
type serverValidationConfigurations = array<serverValidationConfiguration>
type serverReplicationConfigurations = array<serverReplicationConfiguration>
type serverLaunchConfigurations = array<serverLaunchConfiguration>
type serverGroup = {
serverList: option<serverList>,
  name: option<serverGroupName>,
  serverGroupId: option<serverGroupId>
}
type replicationJobList = array<replicationJob>
type appValidationConfigurations = array<appValidationConfiguration>
type validationOutputList = array<validationOutput>
type serverGroups = array<serverGroup>
type serverGroupValidationConfiguration = {
serverValidationConfigurations: option<serverValidationConfigurations>,
  serverGroupId: option<serverGroupId>
}
type serverGroupReplicationConfiguration = {
serverReplicationConfigurations: option<serverReplicationConfigurations>,
  serverGroupId: option<serverGroupId>
}
type serverGroupLaunchConfiguration = {
serverLaunchConfigurations: option<serverLaunchConfigurations>,
  launchOrder: option<launchOrder>,
  serverGroupId: option<serverGroupId>
}
type serverGroupValidationConfigurations = array<serverGroupValidationConfiguration>
type serverGroupReplicationConfigurations = array<serverGroupReplicationConfiguration>
type serverGroupLaunchConfigurations = array<serverGroupLaunchConfiguration>

module UpdateReplicationJob = {
  type t;
  type request = {
kmsKeyId: option<kmsKeyId>,
  encrypted: option<encrypted>,
  numberOfRecentAmisToKeep: option<numberOfRecentAmisToKeep>,
  description: option<description>,
  roleName: option<roleName>,
  licenseType: option<licenseType>,
  nextReplicationRunStartTime: option<timestamp_>,
  frequency: option<frequency>,
  replicationJobId: replicationJobId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "UpdateReplicationJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TerminateApp = {
  type t;
  type request = {
appId: option<appId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "TerminateAppCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopAppReplication = {
  type t;
  type request = {
appId: option<appId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "StopAppReplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartOnDemandReplicationRun = {
  type t;
  type request = {
description: option<description>,
  replicationJobId: replicationJobId
}
  type response = {
replicationRunId: option<replicationRunId>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "StartOnDemandReplicationRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartOnDemandAppReplication = {
  type t;
  type request = {
description: option<description>,
  appId: appId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "StartOnDemandAppReplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartAppReplication = {
  type t;
  type request = {
appId: option<appId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "StartAppReplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module LaunchApp = {
  type t;
  type request = {
appId: option<appId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "LaunchAppCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportServerCatalog = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "ImportServerCatalogCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportAppCatalog = {
  type t;
  type request = {
roleName: option<roleName>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "ImportAppCatalogCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateConnector = {
  type t;
  type request = {
connectorId: connectorId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DisassociateConnectorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteServerCatalog = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DeleteServerCatalogCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationJob = {
  type t;
  type request = {
replicationJobId: replicationJobId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DeleteReplicationJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAppValidationConfiguration = {
  type t;
  type request = {
appId: appIdWithValidation
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DeleteAppValidationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAppReplicationConfiguration = {
  type t;
  type request = {
appId: option<appId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DeleteAppReplicationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAppLaunchConfiguration = {
  type t;
  type request = {
appId: option<appId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DeleteAppLaunchConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApp = {
  type t;
  type request = {
forceTerminateApp: option<forceTerminateApp>,
  forceStopAppReplication: option<forceStopAppReplication>,
  appId: option<appId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DeleteAppCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationJob = {
  type t;
  type request = {
kmsKeyId: option<kmsKeyId>,
  encrypted: option<encrypted>,
  numberOfRecentAmisToKeep: option<numberOfRecentAmisToKeep>,
  description: option<description>,
  roleName: option<roleName>,
  licenseType: option<licenseType>,
  runOnce: option<runOnce>,
  frequency: option<frequency>,
  seedReplicationTime: timestamp_,
  serverId: serverId
}
  type response = {
replicationJobId: option<replicationJobId>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "CreateReplicationJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module NotifyAppValidationOutput = {
  type t;
  type request = {
notificationContext: option<notificationContext>,
  appId: appIdWithValidation
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "NotifyAppValidationOutputCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GenerateTemplate = {
  type t;
  type request = {
templateFormat: option<outputFormat>,
  appId: option<appId>
}
  type response = {
s3Location: option<s3Location>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GenerateTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GenerateChangeSet = {
  type t;
  type request = {
changesetFormat: option<outputFormat>,
  appId: option<appId>
}
  type response = {
s3Location: option<s3Location>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GenerateChangeSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListApps = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>,
  appIds: option<appIds>
}
  type response = {
nextToken: option<nextToken>,
  apps: option<apps>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "ListAppsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetConnectors = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
  connectorList: option<connectorList>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetConnectorsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetServers = {
  type t;
  type request = {
vmServerAddressList: option<vmServerAddressList>,
  maxResults: option<maxResults>,
  nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
  serverList: option<serverList>,
  serverCatalogStatus: option<serverCatalogStatus>,
  lastModifiedOn: option<timestamp_>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetServersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetReplicationRuns = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>,
  replicationJobId: replicationJobId
}
  type response = {
nextToken: option<nextToken>,
  replicationRunList: option<replicationRunList>,
  replicationJob: option<replicationJob>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetReplicationRunsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetReplicationJobs = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>,
  replicationJobId: option<replicationJobId>
}
  type response = {
nextToken: option<nextToken>,
  replicationJobList: option<replicationJobList>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetReplicationJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApp = {
  type t;
  type request = {
tags: option<tags>,
  serverGroups: option<serverGroups>,
  roleName: option<roleName>,
  description: option<appDescription>,
  name: option<appName>,
  appId: option<appId>
}
  type response = {
tags: option<tags>,
  serverGroups: option<serverGroups>,
  appSummary: option<appSummary>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "UpdateAppCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAppValidationOutput = {
  type t;
  type request = {
appId: appIdWithValidation
}
  type response = {
validationOutputList: option<validationOutputList>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetAppValidationOutputCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApp = {
  type t;
  type request = {
appId: option<appId>
}
  type response = {
tags: option<tags>,
  serverGroups: option<serverGroups>,
  appSummary: option<appSummary>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetAppCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApp = {
  type t;
  type request = {
tags: option<tags>,
  serverGroups: option<serverGroups>,
  clientToken: option<clientToken>,
  roleName: option<roleName>,
  description: option<appDescription>,
  name: option<appName>
}
  type response = {
tags: option<tags>,
  serverGroups: option<serverGroups>,
  appSummary: option<appSummary>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "CreateAppCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAppValidationConfiguration = {
  type t;
  type request = {
serverGroupValidationConfigurations: option<serverGroupValidationConfigurations>,
  appValidationConfigurations: option<appValidationConfigurations>,
  appId: appIdWithValidation
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "PutAppValidationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAppReplicationConfiguration = {
  type t;
  type request = {
serverGroupReplicationConfigurations: option<serverGroupReplicationConfigurations>,
  appId: option<appId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "PutAppReplicationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAppLaunchConfiguration = {
  type t;
  type request = {
serverGroupLaunchConfigurations: option<serverGroupLaunchConfigurations>,
  autoLaunch: option<autoLaunch>,
  roleName: option<roleName>,
  appId: option<appId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "PutAppLaunchConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAppValidationConfiguration = {
  type t;
  type request = {
appId: appIdWithValidation
}
  type response = {
serverGroupValidationConfigurations: option<serverGroupValidationConfigurations>,
  appValidationConfigurations: option<appValidationConfigurations>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetAppValidationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAppReplicationConfiguration = {
  type t;
  type request = {
appId: option<appId>
}
  type response = {
serverGroupReplicationConfigurations: option<serverGroupReplicationConfigurations>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetAppReplicationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAppLaunchConfiguration = {
  type t;
  type request = {
appId: option<appId>
}
  type response = {
serverGroupLaunchConfigurations: option<serverGroupLaunchConfigurations>,
  autoLaunch: option<autoLaunch>,
  roleName: option<roleName>,
  appId: option<appId>
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetAppLaunchConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
