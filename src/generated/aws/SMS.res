type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vmPath = string
type vmName = string
type vmManagerType = [@as("HYPERV-MANAGER") #HYPERV_MANAGER | @as("SCVMM") #SCVMM | @as("VSPHERE") #VSPHERE]
type vmManagerName = string
type vmManagerId = string
type vmId = string
type validationStatusMessage = string
type validationStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS | @as("PENDING") #PENDING | @as("READY_FOR_VALIDATION") #READY_FOR_VALIDATION]
type validationId = string
type vPC = string
type totalServers = int;
type totalServerGroups = int;
type amazonawsTimestamp = Js.Date.t;
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
type runOnce = bool;
type roleName = string
type replicationRunType = [@as("AUTOMATIC") #AUTOMATIC | @as("ON_DEMAND") #ON_DEMAND]
type replicationRunStatusMessage = string
type replicationRunState = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("ACTIVE") #ACTIVE | @as("MISSED") #MISSED | @as("PENDING") #PENDING]
type replicationRunStageProgress = string
type replicationRunStage = string
type replicationRunId = string
type replicationJobTerminated = bool;
type replicationJobStatusMessage = string
type replicationJobState = [@as("FAILING") #FAILING | @as("PAUSED_ON_FAILURE") #PAUSED_ON_FAILURE | @as("COMPLETED") #COMPLETED | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("FAILED") #FAILED | @as("ACTIVE") #ACTIVE | @as("PENDING") #PENDING]
type replicationJobId = string
type outputFormat = [@as("YAML") #YAML | @as("JSON") #JSON]
type numberOfRecentAmisToKeep = int;
type nonEmptyStringWithMaxLen255 = string
type nextToken = string
type maxResults = int;
type macAddress = string
type logicalId = string
type licenseType = [@as("BYOL") #BYOL | @as("AWS") #AWS]
type launchOrder = int;
type kmsKeyId = string
type ipAddress = string
type instanceType = string
type instanceId = string
type importedAppId = string
type frequency = int;
type forceTerminateApp = bool;
type forceStopAppReplication = bool;
type executionTimeoutSeconds = int;
type errorMessage = string
type encrypted = bool;
type eC2KeyName = string
type description = string
type connectorVersion = string
type connectorStatus = [@as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type connectorId = string
type connectorCapability = [@as("SMS_OPTIMIZED") #SMS_OPTIMIZED | @as("SNAPSHOT_BATCHING") #SNAPSHOT_BATCHING | @as("HYPERV-MANAGER") #HYPERV_MANAGER | @as("SCVMM") #SCVMM | @as("VSPHERE") #VSPHERE]
type command = string
type clientToken = string
type bucketName = string
type autoLaunch = bool;
type associatePublicIpAddress = bool;
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
@as("vmId") vmId: vmId,
@as("vmManagerId") vmManagerId: vmManagerId
}
type tag = {
@as("value") value: tagValue,
@as("key") key: tagKey
}
type serverReplicationParameters = {
@as("kmsKeyId") kmsKeyId: kmsKeyId,
@as("encrypted") encrypted: encrypted,
@as("numberOfRecentAmisToKeep") numberOfRecentAmisToKeep: numberOfRecentAmisToKeep,
@as("licenseType") licenseType: licenseType,
@as("runOnce") runOnce: runOnce,
@as("frequency") frequency: frequency,
@as("seedTime") seedTime: amazonawsTimestamp
}
type s3Location = {
@as("key") key: s3KeyName,
@as("bucket") bucket: s3BucketName
}
type replicationRunStageDetails = {
@as("stageProgress") stageProgress: replicationRunStageProgress,
@as("stage") stage: replicationRunStage
}
type notificationContext = {
@as("statusMessage") statusMessage: validationStatusMessage,
@as("status") status: validationStatus,
@as("validationId") validationId: validationId
}
type launchDetails = {
@as("stackId") stackId: stackId,
@as("stackName") stackName: stackName,
@as("latestLaunchTime") latestLaunchTime: amazonawsTimestamp
}
type connectorCapabilityList = array<connectorCapability>
type appIds = array<appId>
type vmServerAddressList = array<vmServerAddress>
type vmServer = {
@as("vmPath") vmPath: vmPath,
@as("vmManagerType") vmManagerType: vmManagerType,
@as("vmManagerName") vmManagerName: vmManagerName,
@as("vmName") vmName: vmName,
@as("vmServerAddress") vmServerAddress: vmServerAddress
}
type userData = {
@as("s3Location") s3Location: s3Location
}
type tags = array<tag>
type source = {
@as("s3Location") s3Location: s3Location
}
type sSMOutput = {
@as("s3Location") s3Location: s3Location
}
type replicationRun = {
@as("kmsKeyId") kmsKeyId: kmsKeyId,
@as("encrypted") encrypted: encrypted,
@as("description") description: description,
@as("completedTime") completedTime: amazonawsTimestamp,
@as("scheduledStartTime") scheduledStartTime: amazonawsTimestamp,
@as("amiId") amiId: amiId,
@as("statusMessage") statusMessage: replicationRunStatusMessage,
@as("stageDetails") stageDetails: replicationRunStageDetails,
@as("type") type_: replicationRunType,
@as("state") state: replicationRunState,
@as("replicationRunId") replicationRunId: replicationRunId
}
type connector = {
@as("associatedOn") associatedOn: amazonawsTimestamp,
@as("macAddress") macAddress: macAddress,
@as("ipAddress") ipAddress: ipAddress,
@as("vmManagerId") vmManagerId: vmManagerId,
@as("vmManagerType") vmManagerType: vmManagerType,
@as("vmManagerName") vmManagerName: vmManagerName,
@as("capabilityList") capabilityList: connectorCapabilityList,
@as("status") status: connectorStatus,
@as("version") version: connectorVersion,
@as("connectorId") connectorId: connectorId
}
type appSummary = {
@as("totalServers") totalServers: totalServers,
@as("totalServerGroups") totalServerGroups: totalServerGroups,
@as("roleName") roleName: roleName,
@as("lastModified") lastModified: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("launchDetails") launchDetails: launchDetails,
@as("launchStatusMessage") launchStatusMessage: appLaunchStatusMessage,
@as("launchStatus") launchStatus: appLaunchStatus,
@as("launchConfigurationStatus") launchConfigurationStatus: appLaunchConfigurationStatus,
@as("latestReplicationTime") latestReplicationTime: amazonawsTimestamp,
@as("replicationStatusMessage") replicationStatusMessage: appReplicationStatusMessage,
@as("replicationStatus") replicationStatus: appReplicationStatus,
@as("replicationConfigurationStatus") replicationConfigurationStatus: appReplicationConfigurationStatus,
@as("statusMessage") statusMessage: appStatusMessage,
@as("status") status: appStatus,
@as("description") description: appDescription,
@as("name") name: appName,
@as("importedAppId") importedAppId: importedAppId,
@as("appId") appId: appId
}
type userDataValidationParameters = {
@as("scriptType") scriptType: scriptType,
@as("source") source: source
}
type server = {
@as("replicationJobTerminated") replicationJobTerminated: replicationJobTerminated,
@as("replicationJobId") replicationJobId: replicationJobId,
@as("vmServer") vmServer: vmServer,
@as("serverType") serverType: serverType,
@as("serverId") serverId: serverId
}
type sSMValidationParameters = {
@as("outputS3BucketName") outputS3BucketName: bucketName,
@as("executionTimeoutSeconds") executionTimeoutSeconds: executionTimeoutSeconds,
@as("command") command: command,
@as("scriptType") scriptType: scriptType,
@as("instanceId") instanceId: instanceId,
@as("source") source: source
}
type replicationRunList = array<replicationRun>
type connectorList = array<connector>
type apps = array<appSummary>
type appValidationOutput = {
@as("ssmOutput") ssmOutput: sSMOutput
}
type serverValidationOutput = {
@as("server") server: server
}
type serverValidationConfiguration = {
@as("userDataValidationParameters") userDataValidationParameters: userDataValidationParameters,
@as("serverValidationStrategy") serverValidationStrategy: serverValidationStrategy,
@as("name") name: nonEmptyStringWithMaxLen255,
@as("validationId") validationId: validationId,
@as("server") server: server
}
type serverReplicationConfiguration = {
@as("serverReplicationParameters") serverReplicationParameters: serverReplicationParameters,
@as("server") server: server
}
type serverList = array<server>
type serverLaunchConfiguration = {
@as("configureScriptType") configureScriptType: scriptType,
@as("configureScript") configureScript: s3Location,
@as("iamInstanceProfileName") iamInstanceProfileName: roleName,
@as("associatePublicIpAddress") associatePublicIpAddress: associatePublicIpAddress,
@as("instanceType") instanceType: instanceType,
@as("userData") userData: userData,
@as("ec2KeyName") ec2KeyName: eC2KeyName,
@as("securityGroup") securityGroup: securityGroup,
@as("subnet") subnet: subnet,
@as("vpc") vpc: vPC,
@as("logicalId") logicalId: logicalId,
@as("server") server: server
}
type replicationJob = {
@as("replicationRunList") replicationRunList: replicationRunList,
@as("kmsKeyId") kmsKeyId: kmsKeyId,
@as("encrypted") encrypted: encrypted,
@as("numberOfRecentAmisToKeep") numberOfRecentAmisToKeep: numberOfRecentAmisToKeep,
@as("description") description: description,
@as("statusMessage") statusMessage: replicationJobStatusMessage,
@as("state") state: replicationJobState,
@as("latestAmiId") latestAmiId: amiId,
@as("roleName") roleName: roleName,
@as("licenseType") licenseType: licenseType,
@as("nextReplicationRunStartTime") nextReplicationRunStartTime: amazonawsTimestamp,
@as("runOnce") runOnce: runOnce,
@as("frequency") frequency: frequency,
@as("seedReplicationTime") seedReplicationTime: amazonawsTimestamp,
@as("vmServer") vmServer: vmServer,
@as("serverType") serverType: serverType,
@as("serverId") serverId: serverId,
@as("replicationJobId") replicationJobId: replicationJobId
}
type appValidationConfiguration = {
@as("ssmValidationParameters") ssmValidationParameters: sSMValidationParameters,
@as("appValidationStrategy") appValidationStrategy: appValidationStrategy,
@as("name") name: nonEmptyStringWithMaxLen255,
@as("validationId") validationId: validationId
}
type validationOutput = {
@as("serverValidationOutput") serverValidationOutput: serverValidationOutput,
@as("appValidationOutput") appValidationOutput: appValidationOutput,
@as("latestValidationTime") latestValidationTime: amazonawsTimestamp,
@as("statusMessage") statusMessage: validationStatusMessage,
@as("status") status: validationStatus,
@as("name") name: nonEmptyStringWithMaxLen255,
@as("validationId") validationId: validationId
}
type serverValidationConfigurations = array<serverValidationConfiguration>
type serverReplicationConfigurations = array<serverReplicationConfiguration>
type serverLaunchConfigurations = array<serverLaunchConfiguration>
type serverGroup = {
@as("serverList") serverList: serverList,
@as("name") name: serverGroupName,
@as("serverGroupId") serverGroupId: serverGroupId
}
type replicationJobList = array<replicationJob>
type appValidationConfigurations = array<appValidationConfiguration>
type validationOutputList = array<validationOutput>
type serverGroups = array<serverGroup>
type serverGroupValidationConfiguration = {
@as("serverValidationConfigurations") serverValidationConfigurations: serverValidationConfigurations,
@as("serverGroupId") serverGroupId: serverGroupId
}
type serverGroupReplicationConfiguration = {
@as("serverReplicationConfigurations") serverReplicationConfigurations: serverReplicationConfigurations,
@as("serverGroupId") serverGroupId: serverGroupId
}
type serverGroupLaunchConfiguration = {
@as("serverLaunchConfigurations") serverLaunchConfigurations: serverLaunchConfigurations,
@as("launchOrder") launchOrder: launchOrder,
@as("serverGroupId") serverGroupId: serverGroupId
}
type serverGroupValidationConfigurations = array<serverGroupValidationConfiguration>
type serverGroupReplicationConfigurations = array<serverGroupReplicationConfiguration>
type serverGroupLaunchConfigurations = array<serverGroupLaunchConfiguration>
type clientType;
@module("@aws-sdk/client-sms") @new external createClient: unit => clientType = "SMSClient";
module UpdateReplicationJob = {
  type t;
  type request = {
@as("kmsKeyId") kmsKeyId: kmsKeyId,
@as("encrypted") encrypted: encrypted,
@as("numberOfRecentAmisToKeep") numberOfRecentAmisToKeep: numberOfRecentAmisToKeep,
@as("description") description: description,
@as("roleName") roleName: roleName,
@as("licenseType") licenseType: licenseType,
@as("nextReplicationRunStartTime") nextReplicationRunStartTime: amazonawsTimestamp,
@as("frequency") frequency: frequency,
@as("replicationJobId") replicationJobId: option<replicationJobId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "UpdateReplicationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TerminateApp = {
  type t;
  type request = {
@as("appId") appId: appId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "TerminateAppCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopAppReplication = {
  type t;
  type request = {
@as("appId") appId: appId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "StopAppReplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartOnDemandReplicationRun = {
  type t;
  type request = {
@as("description") description: description,
@as("replicationJobId") replicationJobId: option<replicationJobId>
}
  type response = {
@as("replicationRunId") replicationRunId: replicationRunId
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "StartOnDemandReplicationRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartOnDemandAppReplication = {
  type t;
  type request = {
@as("description") description: description,
@as("appId") appId: option<appId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "StartOnDemandAppReplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartAppReplication = {
  type t;
  type request = {
@as("appId") appId: appId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "StartAppReplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module LaunchApp = {
  type t;
  type request = {
@as("appId") appId: appId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "LaunchAppCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportServerCatalog = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "ImportServerCatalogCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportAppCatalog = {
  type t;
  type request = {
@as("roleName") roleName: roleName
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "ImportAppCatalogCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateConnector = {
  type t;
  type request = {
@as("connectorId") connectorId: option<connectorId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DisassociateConnectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteServerCatalog = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DeleteServerCatalogCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationJob = {
  type t;
  type request = {
@as("replicationJobId") replicationJobId: option<replicationJobId>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DeleteReplicationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAppValidationConfiguration = {
  type t;
  type request = {
@as("appId") appId: option<appIdWithValidation>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DeleteAppValidationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAppReplicationConfiguration = {
  type t;
  type request = {
@as("appId") appId: appId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DeleteAppReplicationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAppLaunchConfiguration = {
  type t;
  type request = {
@as("appId") appId: appId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DeleteAppLaunchConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApp = {
  type t;
  type request = {
@as("forceTerminateApp") forceTerminateApp: forceTerminateApp,
@as("forceStopAppReplication") forceStopAppReplication: forceStopAppReplication,
@as("appId") appId: appId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "DeleteAppCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationJob = {
  type t;
  type request = {
@as("kmsKeyId") kmsKeyId: kmsKeyId,
@as("encrypted") encrypted: encrypted,
@as("numberOfRecentAmisToKeep") numberOfRecentAmisToKeep: numberOfRecentAmisToKeep,
@as("description") description: description,
@as("roleName") roleName: roleName,
@as("licenseType") licenseType: licenseType,
@as("runOnce") runOnce: runOnce,
@as("frequency") frequency: frequency,
@as("seedReplicationTime") seedReplicationTime: option<amazonawsTimestamp>,
@as("serverId") serverId: option<serverId>
}
  type response = {
@as("replicationJobId") replicationJobId: replicationJobId
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "CreateReplicationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module NotifyAppValidationOutput = {
  type t;
  type request = {
@as("notificationContext") notificationContext: notificationContext,
@as("appId") appId: option<appIdWithValidation>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "NotifyAppValidationOutputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateTemplate = {
  type t;
  type request = {
@as("templateFormat") templateFormat: outputFormat,
@as("appId") appId: appId
}
  type response = {
@as("s3Location") s3Location: s3Location
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GenerateTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateChangeSet = {
  type t;
  type request = {
@as("changesetFormat") changesetFormat: outputFormat,
@as("appId") appId: appId
}
  type response = {
@as("s3Location") s3Location: s3Location
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GenerateChangeSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApps = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("appIds") appIds: appIds
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("apps") apps: apps
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "ListAppsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConnectors = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("connectorList") connectorList: connectorList
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetConnectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServers = {
  type t;
  type request = {
@as("vmServerAddressList") vmServerAddressList: vmServerAddressList,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("serverList") serverList: serverList,
@as("serverCatalogStatus") serverCatalogStatus: serverCatalogStatus,
@as("lastModifiedOn") lastModifiedOn: amazonawsTimestamp
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetServersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetReplicationRuns = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("replicationJobId") replicationJobId: option<replicationJobId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("replicationRunList") replicationRunList: replicationRunList,
@as("replicationJob") replicationJob: replicationJob
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetReplicationRunsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetReplicationJobs = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("replicationJobId") replicationJobId: replicationJobId
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("replicationJobList") replicationJobList: replicationJobList
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetReplicationJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApp = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("serverGroups") serverGroups: serverGroups,
@as("roleName") roleName: roleName,
@as("description") description: appDescription,
@as("name") name: appName,
@as("appId") appId: appId
}
  type response = {
@as("tags") tags: tags,
@as("serverGroups") serverGroups: serverGroups,
@as("appSummary") appSummary: appSummary
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "UpdateAppCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAppValidationOutput = {
  type t;
  type request = {
@as("appId") appId: option<appIdWithValidation>
}
  type response = {
@as("validationOutputList") validationOutputList: validationOutputList
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetAppValidationOutputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApp = {
  type t;
  type request = {
@as("appId") appId: appId
}
  type response = {
@as("tags") tags: tags,
@as("serverGroups") serverGroups: serverGroups,
@as("appSummary") appSummary: appSummary
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetAppCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApp = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("serverGroups") serverGroups: serverGroups,
@as("clientToken") clientToken: clientToken,
@as("roleName") roleName: roleName,
@as("description") description: appDescription,
@as("name") name: appName
}
  type response = {
@as("tags") tags: tags,
@as("serverGroups") serverGroups: serverGroups,
@as("appSummary") appSummary: appSummary
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "CreateAppCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAppValidationConfiguration = {
  type t;
  type request = {
@as("serverGroupValidationConfigurations") serverGroupValidationConfigurations: serverGroupValidationConfigurations,
@as("appValidationConfigurations") appValidationConfigurations: appValidationConfigurations,
@as("appId") appId: option<appIdWithValidation>
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "PutAppValidationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAppReplicationConfiguration = {
  type t;
  type request = {
@as("serverGroupReplicationConfigurations") serverGroupReplicationConfigurations: serverGroupReplicationConfigurations,
@as("appId") appId: appId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "PutAppReplicationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAppLaunchConfiguration = {
  type t;
  type request = {
@as("serverGroupLaunchConfigurations") serverGroupLaunchConfigurations: serverGroupLaunchConfigurations,
@as("autoLaunch") autoLaunch: autoLaunch,
@as("roleName") roleName: roleName,
@as("appId") appId: appId
}
  type response = unit
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "PutAppLaunchConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAppValidationConfiguration = {
  type t;
  type request = {
@as("appId") appId: option<appIdWithValidation>
}
  type response = {
@as("serverGroupValidationConfigurations") serverGroupValidationConfigurations: serverGroupValidationConfigurations,
@as("appValidationConfigurations") appValidationConfigurations: appValidationConfigurations
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetAppValidationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAppReplicationConfiguration = {
  type t;
  type request = {
@as("appId") appId: appId
}
  type response = {
@as("serverGroupReplicationConfigurations") serverGroupReplicationConfigurations: serverGroupReplicationConfigurations
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetAppReplicationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAppLaunchConfiguration = {
  type t;
  type request = {
@as("appId") appId: appId
}
  type response = {
@as("serverGroupLaunchConfigurations") serverGroupLaunchConfigurations: serverGroupLaunchConfigurations,
@as("autoLaunch") autoLaunch: autoLaunch,
@as("roleName") roleName: roleName,
@as("appId") appId: appId
}
  @module("@aws-sdk/client-sms") @new external new_: (request) => t = "GetAppLaunchConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
