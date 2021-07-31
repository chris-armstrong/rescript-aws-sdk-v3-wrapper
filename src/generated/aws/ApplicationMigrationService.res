type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type validationExceptionReason = [@as("other") #other | @as("fieldValidationFailed") #fieldValidationFailed | @as("cannotParse") #cannotParse | @as("unknownOperation") #unknownOperation]
type targetInstanceTypeRightSizingMethod = [@as("BASIC") #BASIC | @as("NONE") #NONE]
type tagValue = string
type tagKey = string
type subnetID = string
type strictlyPositiveInteger = int;

type sourceServerID = string
type smallBoundedString = string
type securityGroupID = string

type replicationConfigurationTemplateID = string
type replicationConfigurationReplicatedDiskStagingDiskType = [@as("STANDARD") #STANDARD | @as("ST1") #ST1 | @as("SC1") #SC1 | @as("IO1") #IO1 | @as("GP2") #GP2 | @as("AUTO") #AUTO]
type replicationConfigurationEbsEncryption = [@as("CUSTOM") #CUSTOM | @as("DEFAULT") #DEFAULT | @as("NONE") #NONE]
type replicationConfigurationDefaultLargeStagingDiskType = [@as("ST1") #ST1 | @as("GP2") #GP2]
type replicationConfigurationDataPlaneRouting = [@as("PUBLIC_IP") #PUBLIC_IP | @as("PRIVATE_IP") #PRIVATE_IP]
type positiveInteger = float;
type paginationToken = string
type lifeCycleState = [@as("DISCONNECTED") #DISCONNECTED | @as("CUTOVER") #CUTOVER | @as("CUTTING_OVER") #CUTTING_OVER | @as("READY_FOR_CUTOVER") #READY_FOR_CUTOVER | @as("TESTING") #TESTING | @as("READY_FOR_TEST") #READY_FOR_TEST | @as("NOT_READY") #NOT_READY | @as("STOPPED") #STOPPED]
type licensing = {
@as("osByol") osByol: apiBoolean
}
type launchStatus = [@as("TERMINATED") #TERMINATED | @as("FAILED") #FAILED | @as("LAUNCHED") #LAUNCHED | @as("IN_PROGRESS") #IN_PROGRESS | @as("PENDING") #PENDING]
type launchDisposition = [@as("STARTED") #STARTED | @as("STOPPED") #STOPPED]
type largeBoundedString = string
type jobType = [@as("TERMINATE") #TERMINATE | @as("LAUNCH") #LAUNCH]
type jobStatus = [@as("COMPLETED") #COMPLETED | @as("STARTED") #STARTED | @as("PENDING") #PENDING]

type jobLogEvent = [@as("JOB_END") #JOB_END | @as("JOB_CANCEL") #JOB_CANCEL | @as("LAUNCH_FAILED") #LAUNCH_FAILED | @as("LAUNCH_START") #LAUNCH_START | @as("CONVERSION_FAIL") #CONVERSION_FAIL | @as("CONVERSION_END") #CONVERSION_END | @as("CONVERSION_START") #CONVERSION_START | @as("USING_PREVIOUS_SNAPSHOT") #USING_PREVIOUS_SNAPSHOT | @as("SNAPSHOT_FAIL") #SNAPSHOT_FAIL | @as("SNAPSHOT_END") #SNAPSHOT_END | @as("SNAPSHOT_START") #SNAPSHOT_START | @as("CLEANUP_FAIL") #CLEANUP_FAIL | @as("CLEANUP_END") #CLEANUP_END | @as("CLEANUP_START") #CLEANUP_START | @as("SERVER_SKIPPED") #SERVER_SKIPPED | @as("JOB_START") #JOB_START]
type jobID = string
type initiatedBy = [@as("TERMINATE") #TERMINATE | @as("DIAGNOSTIC") #DIAGNOSTIC | @as("START_CUTOVER") #START_CUTOVER | @as("START_TEST") #START_TEST]
type iSO8601DatetimeString = string
type firstBoot = [@as("STOPPED") #STOPPED | @as("UNKNOWN") #UNKNOWN | @as("SUCCEEDED") #SUCCEEDED | @as("WAITING") #WAITING]
type eC2InstanceType = string
type eC2InstanceID = string
type dataReplicationState = [@as("DISCONNECTED") #DISCONNECTED | @as("STALLED") #STALLED | @as("RESCAN") #RESCAN | @as("PAUSED") #PAUSED | @as("CONTINUOUS") #CONTINUOUS | @as("CREATING_SNAPSHOT") #CREATING_SNAPSHOT | @as("BACKLOG") #BACKLOG | @as("INITIAL_SYNC") #INITIAL_SYNC | @as("INITIATING") #INITIATING | @as("STOPPED") #STOPPED]
type dataReplicationInitiationStepStatus = [@as("SKIPPED") #SKIPPED | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS | @as("NOT_STARTED") #NOT_STARTED]
type dataReplicationInitiationStepName = [@as("START_DATA_TRANSFER") #START_DATA_TRANSFER | @as("CONNECT_AGENT_TO_REPLICATION_SERVER") #CONNECT_AGENT_TO_REPLICATION_SERVER | @as("PAIR_REPLICATION_SERVER_WITH_AGENT") #PAIR_REPLICATION_SERVER_WITH_AGENT | @as("ATTACH_STAGING_DISKS") #ATTACH_STAGING_DISKS | @as("CREATE_STAGING_DISKS") #CREATE_STAGING_DISKS | @as("DOWNLOAD_REPLICATION_SOFTWARE") #DOWNLOAD_REPLICATION_SOFTWARE | @as("AUTHENTICATE_WITH_SERVICE") #AUTHENTICATE_WITH_SERVICE | @as("BOOT_REPLICATION_SERVER") #BOOT_REPLICATION_SERVER | @as("LAUNCH_REPLICATION_SERVER") #LAUNCH_REPLICATION_SERVER | @as("CREATE_SECURITY_GROUP") #CREATE_SECURITY_GROUP | @as("WAIT") #WAIT]
type dataReplicationErrorString = [@as("FAILED_TO_START_DATA_TRANSFER") #FAILED_TO_START_DATA_TRANSFER | @as("FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER") #FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER | @as("FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT") #FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT | @as("FAILED_TO_ATTACH_STAGING_DISKS") #FAILED_TO_ATTACH_STAGING_DISKS | @as("FAILED_TO_CREATE_STAGING_DISKS") #FAILED_TO_CREATE_STAGING_DISKS | @as("FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE") #FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE | @as("FAILED_TO_AUTHENTICATE_WITH_SERVICE") #FAILED_TO_AUTHENTICATE_WITH_SERVICE | @as("FAILED_TO_BOOT_REPLICATION_SERVER") #FAILED_TO_BOOT_REPLICATION_SERVER | @as("FAILED_TO_LAUNCH_REPLICATION_SERVER") #FAILED_TO_LAUNCH_REPLICATION_SERVER | @as("FAILED_TO_CREATE_SECURITY_GROUP") #FAILED_TO_CREATE_SECURITY_GROUP | @as("UNSTABLE_NETWORK") #UNSTABLE_NETWORK | @as("NOT_CONVERGING") #NOT_CONVERGING | @as("SNAPSHOTS_FAILURE") #SNAPSHOTS_FAILURE | @as("AGENT_NOT_SEEN") #AGENT_NOT_SEEN]
type changeServerLifeCycleStateSourceServerLifecycleState = [@as("CUTOVER") #CUTOVER | @as("READY_FOR_CUTOVER") #READY_FOR_CUTOVER | @as("READY_FOR_TEST") #READY_FOR_TEST]
type boundedString = string

type accountID = string
type aRN = string
type validationExceptionField = {
@as("message") message: largeBoundedString,
@as("name") name: largeBoundedString
}
type terminateTargetInstancesRequestSourceServerIDs = array<sourceServerID>
type tagsMap = Js.Dict.t< tagValue>
type tagKeys = array<tagKey>
type startTestRequestSourceServerIDs = array<sourceServerID>
type startCutoverRequestSourceServerIDs = array<sourceServerID>
type replicationServersSecurityGroupsIDs = array<securityGroupID>
type replicationConfigurationTemplateIDs = array<replicationConfigurationTemplateID>
type replicationConfigurationReplicatedDisk = {
@as("iops") iops: positiveInteger,
@as("stagingDiskType") stagingDiskType: replicationConfigurationReplicatedDiskStagingDiskType,
@as("isBootDisk") isBootDisk: apiBoolean,
@as("deviceName") deviceName: boundedString
}
type participatingServer = {
@as("launchStatus") launchStatus: launchStatus,
@as("sourceServerID") sourceServerID: sourceServerID
}
type oS = {
@as("fullString") fullString: boundedString
}
type lifeCycleLastTestReverted = {
@as("apiCallDateTime") apiCallDateTime: iSO8601DatetimeString
}
type lifeCycleLastTestInitiated = {
@as("jobID") jobID: jobID,
@as("apiCallDateTime") apiCallDateTime: iSO8601DatetimeString
}
type lifeCycleLastTestFinalized = {
@as("apiCallDateTime") apiCallDateTime: iSO8601DatetimeString
}
type lifeCycleLastCutoverReverted = {
@as("apiCallDateTime") apiCallDateTime: iSO8601DatetimeString
}
type lifeCycleLastCutoverInitiated = {
@as("jobID") jobID: jobID,
@as("apiCallDateTime") apiCallDateTime: iSO8601DatetimeString
}
type lifeCycleLastCutoverFinalized = {
@as("apiCallDateTime") apiCallDateTime: iSO8601DatetimeString
}
type launchedInstance = {
@as("firstBoot") firstBoot: firstBoot,
@as("jobID") jobID: jobID,
@as("ec2InstanceID") ec2InstanceID: eC2InstanceID
}
type jobLogEventData = {
@as("rawError") rawError: largeBoundedString,
@as("targetInstanceID") targetInstanceID: eC2InstanceID,
@as("conversionServerID") conversionServerID: eC2InstanceID,
@as("sourceServerID") sourceServerID: sourceServerID
}
type identificationHints = {
@as("awsInstanceID") awsInstanceID: eC2InstanceID,
@as("vmWareUuid") vmWareUuid: boundedString,
@as("hostname") hostname: boundedString,
@as("fqdn") fqdn: boundedString
}
type iPsList = array<boundedString>
type disk = {
@as("bytes") bytes: positiveInteger,
@as("deviceName") deviceName: boundedString
}
type describeSourceServersRequestFiltersIDs = array<sourceServerID>
type describeJobsRequestFiltersJobIDs = array<jobID>
type dataReplicationInitiationStep = {
@as("status") status: dataReplicationInitiationStepStatus,
@as("name") name: dataReplicationInitiationStepName
}
type dataReplicationInfoReplicatedDisk = {
@as("backloggedStorageBytes") backloggedStorageBytes: positiveInteger,
@as("rescannedStorageBytes") rescannedStorageBytes: positiveInteger,
@as("replicatedStorageBytes") replicatedStorageBytes: positiveInteger,
@as("totalStorageBytes") totalStorageBytes: positiveInteger,
@as("deviceName") deviceName: boundedString
}
type dataReplicationError = {
@as("rawError") rawError: largeBoundedString,
@as("error") error: dataReplicationErrorString
}
type changeServerLifeCycleStateSourceServerLifecycle = {
@as("state") state: option<changeServerLifeCycleStateSourceServerLifecycleState>
}
type cPU = {
@as("modelName") modelName: boundedString,
@as("cores") cores: positiveInteger
}
type validationExceptionFieldList = array<validationExceptionField>
type replicationConfigurationTemplate = {
@as("tags") tags: tagsMap,
@as("stagingAreaTags") stagingAreaTags: tagsMap,
@as("createPublicIP") createPublicIP: apiBoolean,
@as("dataPlaneRouting") dataPlaneRouting: replicationConfigurationDataPlaneRouting,
@as("bandwidthThrottling") bandwidthThrottling: positiveInteger,
@as("ebsEncryptionKeyArn") ebsEncryptionKeyArn: aRN,
@as("ebsEncryption") ebsEncryption: replicationConfigurationEbsEncryption,
@as("defaultLargeStagingDiskType") defaultLargeStagingDiskType: replicationConfigurationDefaultLargeStagingDiskType,
@as("useDedicatedReplicationServer") useDedicatedReplicationServer: apiBoolean,
@as("replicationServerInstanceType") replicationServerInstanceType: eC2InstanceType,
@as("replicationServersSecurityGroupsIDs") replicationServersSecurityGroupsIDs: replicationServersSecurityGroupsIDs,
@as("associateDefaultSecurityGroup") associateDefaultSecurityGroup: apiBoolean,
@as("stagingAreaSubnetId") stagingAreaSubnetId: subnetID,
@as("arn") arn: aRN,
@as("replicationConfigurationTemplateID") replicationConfigurationTemplateID: option<replicationConfigurationTemplateID>
}
type replicationConfigurationReplicatedDisks = array<replicationConfigurationReplicatedDisk>
type participatingServers = array<participatingServer>
type networkInterface = {
@as("isPrimary") isPrimary: apiBoolean,
@as("ips") ips: iPsList,
@as("macAddress") macAddress: boundedString
}
type lifeCycleLastTest = {
@as("finalized") finalized: lifeCycleLastTestFinalized,
@as("reverted") reverted: lifeCycleLastTestReverted,
@as("initiated") initiated: lifeCycleLastTestInitiated
}
type lifeCycleLastCutover = {
@as("finalized") finalized: lifeCycleLastCutoverFinalized,
@as("reverted") reverted: lifeCycleLastCutoverReverted,
@as("initiated") initiated: lifeCycleLastCutoverInitiated
}
type jobLog = {
@as("eventData") eventData: jobLogEventData,
@as("event") event: jobLogEvent,
@as("logDateTime") logDateTime: iSO8601DatetimeString
}
type disks = array<disk>
type describeSourceServersRequestFilters = {
@as("isArchived") isArchived: apiBoolean,
@as("sourceServerIDs") sourceServerIDs: describeSourceServersRequestFiltersIDs
}
type describeJobsRequestFilters = {
@as("toDate") toDate: iSO8601DatetimeString,
@as("fromDate") fromDate: iSO8601DatetimeString,
@as("jobIDs") jobIDs: describeJobsRequestFiltersJobIDs
}
type dataReplicationInitiationSteps = array<dataReplicationInitiationStep>
type dataReplicationInfoReplicatedDisks = array<dataReplicationInfoReplicatedDisk>
type cpus = array<cPU>
type replicationConfigurationTemplates = array<replicationConfigurationTemplate>
type networkInterfaces = array<networkInterface>
type lifeCycle = {
@as("state") state: lifeCycleState,
@as("lastCutover") lastCutover: lifeCycleLastCutover,
@as("lastTest") lastTest: lifeCycleLastTest,
@as("lastSeenByServiceDateTime") lastSeenByServiceDateTime: iSO8601DatetimeString,
@as("elapsedReplicationDuration") elapsedReplicationDuration: iSO8601DatetimeString,
@as("firstByteDateTime") firstByteDateTime: iSO8601DatetimeString,
@as("addedToServiceDateTime") addedToServiceDateTime: iSO8601DatetimeString
}
type jobLogs = array<jobLog>
type job = {
@as("tags") tags: tagsMap,
@as("participatingServers") participatingServers: participatingServers,
@as("status") status: jobStatus,
@as("endDateTime") endDateTime: iSO8601DatetimeString,
@as("creationDateTime") creationDateTime: iSO8601DatetimeString,
@as("initiatedBy") initiatedBy: initiatedBy,
@as("type") type_: jobType,
@as("arn") arn: aRN,
@as("jobID") jobID: option<jobID>
}
type dataReplicationInitiation = {
@as("steps") steps: dataReplicationInitiationSteps,
@as("nextAttemptDateTime") nextAttemptDateTime: iSO8601DatetimeString,
@as("startDateTime") startDateTime: iSO8601DatetimeString
}
type sourceProperties = {
@as("os") os: oS,
@as("ramBytes") ramBytes: positiveInteger,
@as("cpus") cpus: cpus,
@as("disks") disks: disks,
@as("networkInterfaces") networkInterfaces: networkInterfaces,
@as("identificationHints") identificationHints: identificationHints,
@as("recommendedInstanceType") recommendedInstanceType: eC2InstanceType,
@as("lastUpdatedDateTime") lastUpdatedDateTime: iSO8601DatetimeString
}
type jobsList = array<job>
type dataReplicationInfo = {
@as("dataReplicationError") dataReplicationError: dataReplicationError,
@as("dataReplicationInitiation") dataReplicationInitiation: dataReplicationInitiation,
@as("dataReplicationState") dataReplicationState: dataReplicationState,
@as("replicatedDisks") replicatedDisks: dataReplicationInfoReplicatedDisks,
@as("etaDateTime") etaDateTime: iSO8601DatetimeString,
@as("lagDuration") lagDuration: iSO8601DatetimeString
}
type sourceServer = {
@as("sourceProperties") sourceProperties: sourceProperties,
@as("lifeCycle") lifeCycle: lifeCycle,
@as("dataReplicationInfo") dataReplicationInfo: dataReplicationInfo,
@as("launchedInstance") launchedInstance: launchedInstance,
@as("tags") tags: tagsMap,
@as("isArchived") isArchived: apiBoolean,
@as("arn") arn: aRN,
@as("sourceServerID") sourceServerID: sourceServerID
}
type clientType;
@module("@aws-sdk/client-mgn") @new external createClient: unit => clientType = "ApplicationMigrationServiceClient";
type sourceServersList = array<sourceServer>
module GetLaunchConfiguration = {
  type t;
  type request = {
@as("sourceServerID") sourceServerID: option<sourceServerID>
}
  type response = {
@as("licensing") licensing: licensing,
@as("copyTags") copyTags: apiBoolean,
@as("copyPrivateIp") copyPrivateIp: apiBoolean,
@as("targetInstanceTypeRightSizingMethod") targetInstanceTypeRightSizingMethod: targetInstanceTypeRightSizingMethod,
@as("launchDisposition") launchDisposition: launchDisposition,
@as("ec2LaunchTemplateID") ec2LaunchTemplateID: boundedString,
@as("name") name: smallBoundedString,
@as("sourceServerID") sourceServerID: sourceServerID
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "GetLaunchConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSourceServer = {
  type t;
  type request = {
@as("sourceServerID") sourceServerID: option<sourceServerID>
}
  type response = unit
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DeleteSourceServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationConfigurationTemplate = {
  type t;
  type request = {
@as("replicationConfigurationTemplateID") replicationConfigurationTemplateID: option<replicationConfigurationTemplateID>
}
  type response = unit
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DeleteReplicationConfigurationTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteJob = {
  type t;
  type request = {
@as("jobID") jobID: option<jobID>
}
  type response = unit
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DeleteJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateReplicationConfigurationTemplate = {
  type t;
  type request = {
@as("stagingAreaTags") stagingAreaTags: tagsMap,
@as("createPublicIP") createPublicIP: apiBoolean,
@as("dataPlaneRouting") dataPlaneRouting: replicationConfigurationDataPlaneRouting,
@as("bandwidthThrottling") bandwidthThrottling: positiveInteger,
@as("ebsEncryptionKeyArn") ebsEncryptionKeyArn: aRN,
@as("ebsEncryption") ebsEncryption: replicationConfigurationEbsEncryption,
@as("defaultLargeStagingDiskType") defaultLargeStagingDiskType: replicationConfigurationDefaultLargeStagingDiskType,
@as("useDedicatedReplicationServer") useDedicatedReplicationServer: apiBoolean,
@as("replicationServerInstanceType") replicationServerInstanceType: eC2InstanceType,
@as("replicationServersSecurityGroupsIDs") replicationServersSecurityGroupsIDs: replicationServersSecurityGroupsIDs,
@as("associateDefaultSecurityGroup") associateDefaultSecurityGroup: apiBoolean,
@as("stagingAreaSubnetId") stagingAreaSubnetId: subnetID,
@as("arn") arn: aRN,
@as("replicationConfigurationTemplateID") replicationConfigurationTemplateID: option<replicationConfigurationTemplateID>
}
  type response = replicationConfigurationTemplate;
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "UpdateReplicationConfigurationTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateReplicationConfiguration = {
  type t;
  type request = {
@as("stagingAreaTags") stagingAreaTags: tagsMap,
@as("createPublicIP") createPublicIP: apiBoolean,
@as("dataPlaneRouting") dataPlaneRouting: replicationConfigurationDataPlaneRouting,
@as("bandwidthThrottling") bandwidthThrottling: positiveInteger,
@as("ebsEncryptionKeyArn") ebsEncryptionKeyArn: aRN,
@as("ebsEncryption") ebsEncryption: replicationConfigurationEbsEncryption,
@as("replicatedDisks") replicatedDisks: replicationConfigurationReplicatedDisks,
@as("defaultLargeStagingDiskType") defaultLargeStagingDiskType: replicationConfigurationDefaultLargeStagingDiskType,
@as("useDedicatedReplicationServer") useDedicatedReplicationServer: apiBoolean,
@as("replicationServerInstanceType") replicationServerInstanceType: eC2InstanceType,
@as("replicationServersSecurityGroupsIDs") replicationServersSecurityGroupsIDs: replicationServersSecurityGroupsIDs,
@as("associateDefaultSecurityGroup") associateDefaultSecurityGroup: apiBoolean,
@as("stagingAreaSubnetId") stagingAreaSubnetId: subnetID,
@as("name") name: smallBoundedString,
@as("sourceServerID") sourceServerID: option<sourceServerID>
}
  type response = {
@as("stagingAreaTags") stagingAreaTags: tagsMap,
@as("createPublicIP") createPublicIP: apiBoolean,
@as("dataPlaneRouting") dataPlaneRouting: replicationConfigurationDataPlaneRouting,
@as("bandwidthThrottling") bandwidthThrottling: positiveInteger,
@as("ebsEncryptionKeyArn") ebsEncryptionKeyArn: aRN,
@as("ebsEncryption") ebsEncryption: replicationConfigurationEbsEncryption,
@as("replicatedDisks") replicatedDisks: replicationConfigurationReplicatedDisks,
@as("defaultLargeStagingDiskType") defaultLargeStagingDiskType: replicationConfigurationDefaultLargeStagingDiskType,
@as("useDedicatedReplicationServer") useDedicatedReplicationServer: apiBoolean,
@as("replicationServerInstanceType") replicationServerInstanceType: eC2InstanceType,
@as("replicationServersSecurityGroupsIDs") replicationServersSecurityGroupsIDs: replicationServersSecurityGroupsIDs,
@as("associateDefaultSecurityGroup") associateDefaultSecurityGroup: apiBoolean,
@as("stagingAreaSubnetId") stagingAreaSubnetId: subnetID,
@as("name") name: smallBoundedString,
@as("sourceServerID") sourceServerID: sourceServerID
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "UpdateReplicationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLaunchConfiguration = {
  type t;
  type request = {
@as("licensing") licensing: licensing,
@as("copyTags") copyTags: apiBoolean,
@as("copyPrivateIp") copyPrivateIp: apiBoolean,
@as("targetInstanceTypeRightSizingMethod") targetInstanceTypeRightSizingMethod: targetInstanceTypeRightSizingMethod,
@as("launchDisposition") launchDisposition: launchDisposition,
@as("name") name: smallBoundedString,
@as("sourceServerID") sourceServerID: option<sourceServerID>
}
  type response = {
@as("licensing") licensing: licensing,
@as("copyTags") copyTags: apiBoolean,
@as("copyPrivateIp") copyPrivateIp: apiBoolean,
@as("targetInstanceTypeRightSizingMethod") targetInstanceTypeRightSizingMethod: targetInstanceTypeRightSizingMethod,
@as("launchDisposition") launchDisposition: launchDisposition,
@as("ec2LaunchTemplateID") ec2LaunchTemplateID: boundedString,
@as("name") name: smallBoundedString,
@as("sourceServerID") sourceServerID: sourceServerID
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "UpdateLaunchConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeys>,
@as("resourceArn") resourceArn: option<aRN>
}
  
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagsMap>,
@as("resourceArn") resourceArn: option<aRN>
}
  
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<aRN>
}
  type response = {
@as("tags") tags: tagsMap
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InitializeService = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "InitializeServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetReplicationConfiguration = {
  type t;
  type request = {
@as("sourceServerID") sourceServerID: option<sourceServerID>
}
  type response = {
@as("stagingAreaTags") stagingAreaTags: tagsMap,
@as("createPublicIP") createPublicIP: apiBoolean,
@as("dataPlaneRouting") dataPlaneRouting: replicationConfigurationDataPlaneRouting,
@as("bandwidthThrottling") bandwidthThrottling: positiveInteger,
@as("ebsEncryptionKeyArn") ebsEncryptionKeyArn: aRN,
@as("ebsEncryption") ebsEncryption: replicationConfigurationEbsEncryption,
@as("replicatedDisks") replicatedDisks: replicationConfigurationReplicatedDisks,
@as("defaultLargeStagingDiskType") defaultLargeStagingDiskType: replicationConfigurationDefaultLargeStagingDiskType,
@as("useDedicatedReplicationServer") useDedicatedReplicationServer: apiBoolean,
@as("replicationServerInstanceType") replicationServerInstanceType: eC2InstanceType,
@as("replicationServersSecurityGroupsIDs") replicationServersSecurityGroupsIDs: replicationServersSecurityGroupsIDs,
@as("associateDefaultSecurityGroup") associateDefaultSecurityGroup: apiBoolean,
@as("stagingAreaSubnetId") stagingAreaSubnetId: subnetID,
@as("name") name: smallBoundedString,
@as("sourceServerID") sourceServerID: sourceServerID
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "GetReplicationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationConfigurationTemplate = {
  type t;
  type request = {
@as("tags") tags: tagsMap,
@as("stagingAreaTags") stagingAreaTags: option<tagsMap>,
@as("createPublicIP") createPublicIP: option<apiBoolean>,
@as("dataPlaneRouting") dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
@as("bandwidthThrottling") bandwidthThrottling: option<positiveInteger>,
@as("ebsEncryptionKeyArn") ebsEncryptionKeyArn: aRN,
@as("ebsEncryption") ebsEncryption: option<replicationConfigurationEbsEncryption>,
@as("defaultLargeStagingDiskType") defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
@as("useDedicatedReplicationServer") useDedicatedReplicationServer: option<apiBoolean>,
@as("replicationServerInstanceType") replicationServerInstanceType: option<eC2InstanceType>,
@as("replicationServersSecurityGroupsIDs") replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
@as("associateDefaultSecurityGroup") associateDefaultSecurityGroup: option<apiBoolean>,
@as("stagingAreaSubnetId") stagingAreaSubnetId: option<subnetID>
}
  type response = replicationConfigurationTemplate;
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "CreateReplicationConfigurationTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TerminateTargetInstances = {
  type t;
  type request = {
@as("tags") tags: tagsMap,
@as("sourceServerIDs") sourceServerIDs: option<terminateTargetInstancesRequestSourceServerIDs>
}
  type response = {
@as("job") job: job
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "TerminateTargetInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartTest = {
  type t;
  type request = {
@as("tags") tags: tagsMap,
@as("sourceServerIDs") sourceServerIDs: option<startTestRequestSourceServerIDs>
}
  type response = {
@as("job") job: job
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "StartTestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartCutover = {
  type t;
  type request = {
@as("tags") tags: tagsMap,
@as("sourceServerIDs") sourceServerIDs: option<startCutoverRequestSourceServerIDs>
}
  type response = {
@as("job") job: job
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "StartCutoverCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationConfigurationTemplates = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: strictlyPositiveInteger,
@as("replicationConfigurationTemplateIDs") replicationConfigurationTemplateIDs: option<replicationConfigurationTemplateIDs>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("items") items: replicationConfigurationTemplates
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DescribeReplicationConfigurationTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJobLogItems = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: strictlyPositiveInteger,
@as("jobID") jobID: option<jobID>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("items") items: jobLogs
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DescribeJobLogItemsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RetryDataReplication = {
  type t;
  type request = {
@as("sourceServerID") sourceServerID: option<sourceServerID>
}
  type response = sourceServer;
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "RetryDataReplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MarkAsArchived = {
  type t;
  type request = {
@as("sourceServerID") sourceServerID: option<sourceServerID>
}
  type response = sourceServer;
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "MarkAsArchivedCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module FinalizeCutover = {
  type t;
  type request = {
@as("sourceServerID") sourceServerID: option<sourceServerID>
}
  type response = sourceServer;
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "FinalizeCutoverCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisconnectFromService = {
  type t;
  type request = {
@as("sourceServerID") sourceServerID: option<sourceServerID>
}
  type response = sourceServer;
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DisconnectFromServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJobs = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: strictlyPositiveInteger,
@as("filters") filters: option<describeJobsRequestFilters>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("items") items: jobsList
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DescribeJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ChangeServerLifeCycleState = {
  type t;
  type request = {
@as("lifeCycle") lifeCycle: option<changeServerLifeCycleStateSourceServerLifecycle>,
@as("sourceServerID") sourceServerID: option<sourceServerID>
}
  type response = sourceServer;
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "ChangeServerLifeCycleStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSourceServers = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: strictlyPositiveInteger,
@as("filters") filters: option<describeSourceServersRequestFilters>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("items") items: sourceServersList
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DescribeSourceServersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
