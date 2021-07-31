type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-mgn") @new external createClient: unit => awsServiceClient = "ApplicationMigrationServiceClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type validationExceptionReason = [@as("other") #Other | @as("fieldValidationFailed") #FieldValidationFailed | @as("cannotParse") #CannotParse | @as("unknownOperation") #UnknownOperation]
type targetInstanceTypeRightSizingMethod = [@as("BASIC") #BASIC | @as("NONE") #NONE]
type tagValue = string
type tagKey = string
type subnetID = string
type strictlyPositiveInteger = int

type sourceServerID = string
type smallBoundedString = string
type securityGroupID = string

type replicationConfigurationTemplateID = string
type replicationConfigurationReplicatedDiskStagingDiskType = [@as("STANDARD") #STANDARD | @as("ST1") #ST1 | @as("SC1") #SC1 | @as("IO1") #IO1 | @as("GP2") #GP2 | @as("AUTO") #AUTO]
type replicationConfigurationEbsEncryption = [@as("CUSTOM") #CUSTOM | @as("DEFAULT") #DEFAULT | @as("NONE") #NONE]
type replicationConfigurationDefaultLargeStagingDiskType = [@as("ST1") #ST1 | @as("GP2") #GP2]
type replicationConfigurationDataPlaneRouting = [@as("PUBLIC_IP") #PUBLIC_IP | @as("PRIVATE_IP") #PRIVATE_IP]
type positiveInteger = float
type paginationToken = string
type lifeCycleState = [@as("DISCONNECTED") #DISCONNECTED | @as("CUTOVER") #CUTOVER | @as("CUTTING_OVER") #CUTTING_OVER | @as("READY_FOR_CUTOVER") #READY_FOR_CUTOVER | @as("TESTING") #TESTING | @as("READY_FOR_TEST") #READY_FOR_TEST | @as("NOT_READY") #NOT_READY | @as("STOPPED") #STOPPED]
type licensing = {
osByol: option<baseBoolean>
}
type launchStatus = [@as("TERMINATED") #TERMINATED | @as("FAILED") #FAILED | @as("LAUNCHED") #LAUNCHED | @as("IN_PROGRESS") #IN_PROGRESS | @as("PENDING") #PENDING]
type launchDisposition = [@as("STARTED") #STARTED | @as("STOPPED") #STOPPED]
type largeBoundedString = string
type jobType = [@as("TERMINATE") #TERMINATE | @as("LAUNCH") #LAUNCH]
type jobStatus = [@as("COMPLETED") #COMPLETED | @as("STARTED") #STARTED | @as("PENDING") #PENDING]

type jobLogEvent = [@as("JOB_END") #JOB_END | @as("JOB_CANCEL") #JOB_CANCEL | @as("LAUNCH_FAILED") #LAUNCH_FAILED | @as("LAUNCH_START") #LAUNCH_START | @as("CONVERSION_FAIL") #CONVERSION_FAIL | @as("CONVERSION_END") #CONVERSION_END | @as("CONVERSION_START") #CONVERSION_START | @as("USING_PREVIOUS_SNAPSHOT") #USING_PREVIOUS_SNAPSHOT | @as("SNAPSHOT_FAIL") #SNAPSHOT_FAIL | @as("SNAPSHOT_END") #SNAPSHOT_END | @as("SNAPSHOT_START") #SNAPSHOT_START | @as("CLEANUP_FAIL") #CLEANUP_FAIL | @as("CLEANUP_END") #CLEANUP_END | @as("CLEANUP_START") #CLEANUP_START | @as("SERVER_SKIPPED") #SERVER_SKIPPED | @as("JOB_START") #JOB_START]
type jobID = string
type initiatedBy = [@as("TERMINATE") #TERMINATE | @as("DIAGNOSTIC") #DIAGNOSTIC | @as("START_CUTOVER") #START_CUTOVER | @as("START_TEST") #START_TEST]
type iso8601DatetimeString = string
type firstBoot = [@as("STOPPED") #STOPPED | @as("UNKNOWN") #UNKNOWN | @as("SUCCEEDED") #SUCCEEDED | @as("WAITING") #WAITING]
type ec2InstanceType = string
type ec2InstanceID = string
type dataReplicationState = [@as("DISCONNECTED") #DISCONNECTED | @as("STALLED") #STALLED | @as("RESCAN") #RESCAN | @as("PAUSED") #PAUSED | @as("CONTINUOUS") #CONTINUOUS | @as("CREATING_SNAPSHOT") #CREATING_SNAPSHOT | @as("BACKLOG") #BACKLOG | @as("INITIAL_SYNC") #INITIAL_SYNC | @as("INITIATING") #INITIATING | @as("STOPPED") #STOPPED]
type dataReplicationInitiationStepStatus = [@as("SKIPPED") #SKIPPED | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS | @as("NOT_STARTED") #NOT_STARTED]
type dataReplicationInitiationStepName = [@as("START_DATA_TRANSFER") #START_DATA_TRANSFER | @as("CONNECT_AGENT_TO_REPLICATION_SERVER") #CONNECT_AGENT_TO_REPLICATION_SERVER | @as("PAIR_REPLICATION_SERVER_WITH_AGENT") #PAIR_REPLICATION_SERVER_WITH_AGENT | @as("ATTACH_STAGING_DISKS") #ATTACH_STAGING_DISKS | @as("CREATE_STAGING_DISKS") #CREATE_STAGING_DISKS | @as("DOWNLOAD_REPLICATION_SOFTWARE") #DOWNLOAD_REPLICATION_SOFTWARE | @as("AUTHENTICATE_WITH_SERVICE") #AUTHENTICATE_WITH_SERVICE | @as("BOOT_REPLICATION_SERVER") #BOOT_REPLICATION_SERVER | @as("LAUNCH_REPLICATION_SERVER") #LAUNCH_REPLICATION_SERVER | @as("CREATE_SECURITY_GROUP") #CREATE_SECURITY_GROUP | @as("WAIT") #WAIT]
type dataReplicationErrorString = [@as("FAILED_TO_START_DATA_TRANSFER") #FAILED_TO_START_DATA_TRANSFER | @as("FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER") #FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER | @as("FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT") #FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT | @as("FAILED_TO_ATTACH_STAGING_DISKS") #FAILED_TO_ATTACH_STAGING_DISKS | @as("FAILED_TO_CREATE_STAGING_DISKS") #FAILED_TO_CREATE_STAGING_DISKS | @as("FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE") #FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE | @as("FAILED_TO_AUTHENTICATE_WITH_SERVICE") #FAILED_TO_AUTHENTICATE_WITH_SERVICE | @as("FAILED_TO_BOOT_REPLICATION_SERVER") #FAILED_TO_BOOT_REPLICATION_SERVER | @as("FAILED_TO_LAUNCH_REPLICATION_SERVER") #FAILED_TO_LAUNCH_REPLICATION_SERVER | @as("FAILED_TO_CREATE_SECURITY_GROUP") #FAILED_TO_CREATE_SECURITY_GROUP | @as("UNSTABLE_NETWORK") #UNSTABLE_NETWORK | @as("NOT_CONVERGING") #NOT_CONVERGING | @as("SNAPSHOTS_FAILURE") #SNAPSHOTS_FAILURE | @as("AGENT_NOT_SEEN") #AGENT_NOT_SEEN]
type changeServerLifeCycleStateSourceServerLifecycleState = [@as("CUTOVER") #CUTOVER | @as("READY_FOR_CUTOVER") #READY_FOR_CUTOVER | @as("READY_FOR_TEST") #READY_FOR_TEST]
type boundedString = string

type accountID = string
type arn = string
type validationExceptionField = {
message: option<largeBoundedString>,
  name: option<largeBoundedString>
}
type terminateTargetInstancesRequestSourceServerIDs = array<sourceServerID>
type tagsMap = Js.Dict.t<tagValue>
type tagKeys = array<tagKey>
type startTestRequestSourceServerIDs = array<sourceServerID>
type startCutoverRequestSourceServerIDs = array<sourceServerID>
type replicationServersSecurityGroupsIDs = array<securityGroupID>
type replicationConfigurationTemplateIDs = array<replicationConfigurationTemplateID>
type replicationConfigurationReplicatedDisk = {
iops: option<positiveInteger>,
  stagingDiskType: option<replicationConfigurationReplicatedDiskStagingDiskType>,
  isBootDisk: option<baseBoolean>,
  deviceName: option<boundedString>
}
type participatingServer = {
launchStatus: option<launchStatus>,
  sourceServerID: option<sourceServerID>
}
type os = {
fullString: option<boundedString>
}
type lifeCycleLastTestReverted = {
apiCallDateTime: option<iso8601DatetimeString>
}
type lifeCycleLastTestInitiated = {
jobID: option<jobID>,
  apiCallDateTime: option<iso8601DatetimeString>
}
type lifeCycleLastTestFinalized = {
apiCallDateTime: option<iso8601DatetimeString>
}
type lifeCycleLastCutoverReverted = {
apiCallDateTime: option<iso8601DatetimeString>
}
type lifeCycleLastCutoverInitiated = {
jobID: option<jobID>,
  apiCallDateTime: option<iso8601DatetimeString>
}
type lifeCycleLastCutoverFinalized = {
apiCallDateTime: option<iso8601DatetimeString>
}
type launchedInstance = {
firstBoot: option<firstBoot>,
  jobID: option<jobID>,
  ec2InstanceID: option<ec2InstanceID>
}
type jobLogEventData = {
rawError: option<largeBoundedString>,
  targetInstanceID: option<ec2InstanceID>,
  conversionServerID: option<ec2InstanceID>,
  sourceServerID: option<sourceServerID>
}
type identificationHints = {
awsInstanceID: option<ec2InstanceID>,
  vmWareUuid: option<boundedString>,
  hostname: option<boundedString>,
  fqdn: option<boundedString>
}
type ipsList = array<boundedString>
type disk = {
bytes: option<positiveInteger>,
  deviceName: option<boundedString>
}
type describeSourceServersRequestFiltersIDs = array<sourceServerID>
type describeJobsRequestFiltersJobIDs = array<jobID>
type dataReplicationInitiationStep = {
status: option<dataReplicationInitiationStepStatus>,
  name: option<dataReplicationInitiationStepName>
}
type dataReplicationInfoReplicatedDisk = {
backloggedStorageBytes: option<positiveInteger>,
  rescannedStorageBytes: option<positiveInteger>,
  replicatedStorageBytes: option<positiveInteger>,
  totalStorageBytes: option<positiveInteger>,
  deviceName: option<boundedString>
}
type dataReplicationError = {
rawError: option<largeBoundedString>,
  error: option<dataReplicationErrorString>
}
type changeServerLifeCycleStateSourceServerLifecycle = {
state: changeServerLifeCycleStateSourceServerLifecycleState
}
type cpu = {
modelName: option<boundedString>,
  cores: option<positiveInteger>
}
type validationExceptionFieldList = array<validationExceptionField>
type replicationConfigurationTemplate = {
tags: option<tagsMap>,
  stagingAreaTags: option<tagsMap>,
  createPublicIP: option<baseBoolean>,
  dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
  bandwidthThrottling: option<positiveInteger>,
  ebsEncryptionKeyArn: option<arn>,
  ebsEncryption: option<replicationConfigurationEbsEncryption>,
  defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
  useDedicatedReplicationServer: option<baseBoolean>,
  replicationServerInstanceType: option<ec2InstanceType>,
  replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
  associateDefaultSecurityGroup: option<baseBoolean>,
  stagingAreaSubnetId: option<subnetID>,
  arn: option<arn>,
  replicationConfigurationTemplateID: replicationConfigurationTemplateID
}
type replicationConfigurationReplicatedDisks = array<replicationConfigurationReplicatedDisk>
type participatingServers = array<participatingServer>
type networkInterface = {
isPrimary: option<baseBoolean>,
  ips: option<ipsList>,
  macAddress: option<boundedString>
}
type lifeCycleLastTest = {
finalized: option<lifeCycleLastTestFinalized>,
  reverted: option<lifeCycleLastTestReverted>,
  initiated: option<lifeCycleLastTestInitiated>
}
type lifeCycleLastCutover = {
finalized: option<lifeCycleLastCutoverFinalized>,
  reverted: option<lifeCycleLastCutoverReverted>,
  initiated: option<lifeCycleLastCutoverInitiated>
}
type jobLog = {
eventData: option<jobLogEventData>,
  event: option<jobLogEvent>,
  logDateTime: option<iso8601DatetimeString>
}
type disks = array<disk>
type describeSourceServersRequestFilters = {
isArchived: option<baseBoolean>,
  sourceServerIDs: option<describeSourceServersRequestFiltersIDs>
}
type describeJobsRequestFilters = {
toDate: option<iso8601DatetimeString>,
  fromDate: option<iso8601DatetimeString>,
  jobIDs: option<describeJobsRequestFiltersJobIDs>
}
type dataReplicationInitiationSteps = array<dataReplicationInitiationStep>
type dataReplicationInfoReplicatedDisks = array<dataReplicationInfoReplicatedDisk>
type cpus = array<cpu>
type replicationConfigurationTemplates = array<replicationConfigurationTemplate>
type networkInterfaces = array<networkInterface>
type lifeCycle = {
state: option<lifeCycleState>,
  lastCutover: option<lifeCycleLastCutover>,
  lastTest: option<lifeCycleLastTest>,
  lastSeenByServiceDateTime: option<iso8601DatetimeString>,
  elapsedReplicationDuration: option<iso8601DatetimeString>,
  firstByteDateTime: option<iso8601DatetimeString>,
  addedToServiceDateTime: option<iso8601DatetimeString>
}
type jobLogs = array<jobLog>
type job = {
tags: option<tagsMap>,
  participatingServers: option<participatingServers>,
  status: option<jobStatus>,
  endDateTime: option<iso8601DatetimeString>,
  creationDateTime: option<iso8601DatetimeString>,
  initiatedBy: option<initiatedBy>,
  @as("type") type_: option<jobType>,
  arn: option<arn>,
  jobID: jobID
}
type dataReplicationInitiation = {
steps: option<dataReplicationInitiationSteps>,
  nextAttemptDateTime: option<iso8601DatetimeString>,
  startDateTime: option<iso8601DatetimeString>
}
type sourceProperties = {
os: option<os>,
  ramBytes: option<positiveInteger>,
  cpus: option<cpus>,
  disks: option<disks>,
  networkInterfaces: option<networkInterfaces>,
  identificationHints: option<identificationHints>,
  recommendedInstanceType: option<ec2InstanceType>,
  lastUpdatedDateTime: option<iso8601DatetimeString>
}
type jobsList = array<job>
type dataReplicationInfo = {
dataReplicationError: option<dataReplicationError>,
  dataReplicationInitiation: option<dataReplicationInitiation>,
  dataReplicationState: option<dataReplicationState>,
  replicatedDisks: option<dataReplicationInfoReplicatedDisks>,
  etaDateTime: option<iso8601DatetimeString>,
  lagDuration: option<iso8601DatetimeString>
}
type sourceServer = {
sourceProperties: option<sourceProperties>,
  lifeCycle: option<lifeCycle>,
  dataReplicationInfo: option<dataReplicationInfo>,
  launchedInstance: option<launchedInstance>,
  tags: option<tagsMap>,
  isArchived: option<baseBoolean>,
  arn: option<arn>,
  sourceServerID: option<sourceServerID>
}

type sourceServersList = array<sourceServer>
module GetLaunchConfiguration = {
  type t;
  type request = {
sourceServerID: sourceServerID
}
  type response = {
licensing: option<licensing>,
  copyTags: option<baseBoolean>,
  copyPrivateIp: option<baseBoolean>,
  targetInstanceTypeRightSizingMethod: option<targetInstanceTypeRightSizingMethod>,
  launchDisposition: option<launchDisposition>,
  ec2LaunchTemplateID: option<boundedString>,
  name: option<smallBoundedString>,
  sourceServerID: option<sourceServerID>
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "GetLaunchConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSourceServer = {
  type t;
  type request = {
sourceServerID: sourceServerID
}
  type response = unit
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DeleteSourceServerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationConfigurationTemplate = {
  type t;
  type request = {
replicationConfigurationTemplateID: replicationConfigurationTemplateID
}
  type response = unit
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DeleteReplicationConfigurationTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteJob = {
  type t;
  type request = {
jobID: jobID
}
  type response = unit
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DeleteJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateReplicationConfigurationTemplate = {
  type t;
  type request = {
stagingAreaTags: option<tagsMap>,
  createPublicIP: option<baseBoolean>,
  dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
  bandwidthThrottling: option<positiveInteger>,
  ebsEncryptionKeyArn: option<arn>,
  ebsEncryption: option<replicationConfigurationEbsEncryption>,
  defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
  useDedicatedReplicationServer: option<baseBoolean>,
  replicationServerInstanceType: option<ec2InstanceType>,
  replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
  associateDefaultSecurityGroup: option<baseBoolean>,
  stagingAreaSubnetId: option<subnetID>,
  arn: option<arn>,
  replicationConfigurationTemplateID: replicationConfigurationTemplateID
}
  type response = replicationConfigurationTemplate
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "UpdateReplicationConfigurationTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateReplicationConfiguration = {
  type t;
  type request = {
stagingAreaTags: option<tagsMap>,
  createPublicIP: option<baseBoolean>,
  dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
  bandwidthThrottling: option<positiveInteger>,
  ebsEncryptionKeyArn: option<arn>,
  ebsEncryption: option<replicationConfigurationEbsEncryption>,
  replicatedDisks: option<replicationConfigurationReplicatedDisks>,
  defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
  useDedicatedReplicationServer: option<baseBoolean>,
  replicationServerInstanceType: option<ec2InstanceType>,
  replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
  associateDefaultSecurityGroup: option<baseBoolean>,
  stagingAreaSubnetId: option<subnetID>,
  name: option<smallBoundedString>,
  sourceServerID: sourceServerID
}
  type response = {
stagingAreaTags: option<tagsMap>,
  createPublicIP: option<baseBoolean>,
  dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
  bandwidthThrottling: option<positiveInteger>,
  ebsEncryptionKeyArn: option<arn>,
  ebsEncryption: option<replicationConfigurationEbsEncryption>,
  replicatedDisks: option<replicationConfigurationReplicatedDisks>,
  defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
  useDedicatedReplicationServer: option<baseBoolean>,
  replicationServerInstanceType: option<ec2InstanceType>,
  replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
  associateDefaultSecurityGroup: option<baseBoolean>,
  stagingAreaSubnetId: option<subnetID>,
  name: option<smallBoundedString>,
  sourceServerID: option<sourceServerID>
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "UpdateReplicationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateLaunchConfiguration = {
  type t;
  type request = {
licensing: option<licensing>,
  copyTags: option<baseBoolean>,
  copyPrivateIp: option<baseBoolean>,
  targetInstanceTypeRightSizingMethod: option<targetInstanceTypeRightSizingMethod>,
  launchDisposition: option<launchDisposition>,
  name: option<smallBoundedString>,
  sourceServerID: sourceServerID
}
  type response = {
licensing: option<licensing>,
  copyTags: option<baseBoolean>,
  copyPrivateIp: option<baseBoolean>,
  targetInstanceTypeRightSizingMethod: option<targetInstanceTypeRightSizingMethod>,
  launchDisposition: option<launchDisposition>,
  ec2LaunchTemplateID: option<boundedString>,
  name: option<smallBoundedString>,
  sourceServerID: option<sourceServerID>
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "UpdateLaunchConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeys,
  resourceArn: arn
}
  
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagsMap,
  resourceArn: arn
}
  
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: arn
}
  type response = {
tags: option<tagsMap>
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InitializeService = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "InitializeServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetReplicationConfiguration = {
  type t;
  type request = {
sourceServerID: sourceServerID
}
  type response = {
stagingAreaTags: option<tagsMap>,
  createPublicIP: option<baseBoolean>,
  dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
  bandwidthThrottling: option<positiveInteger>,
  ebsEncryptionKeyArn: option<arn>,
  ebsEncryption: option<replicationConfigurationEbsEncryption>,
  replicatedDisks: option<replicationConfigurationReplicatedDisks>,
  defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
  useDedicatedReplicationServer: option<baseBoolean>,
  replicationServerInstanceType: option<ec2InstanceType>,
  replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
  associateDefaultSecurityGroup: option<baseBoolean>,
  stagingAreaSubnetId: option<subnetID>,
  name: option<smallBoundedString>,
  sourceServerID: option<sourceServerID>
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "GetReplicationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationConfigurationTemplate = {
  type t;
  type request = {
tags: option<tagsMap>,
  stagingAreaTags: tagsMap,
  createPublicIP: baseBoolean,
  dataPlaneRouting: replicationConfigurationDataPlaneRouting,
  bandwidthThrottling: positiveInteger,
  ebsEncryptionKeyArn: option<arn>,
  ebsEncryption: replicationConfigurationEbsEncryption,
  defaultLargeStagingDiskType: replicationConfigurationDefaultLargeStagingDiskType,
  useDedicatedReplicationServer: baseBoolean,
  replicationServerInstanceType: ec2InstanceType,
  replicationServersSecurityGroupsIDs: replicationServersSecurityGroupsIDs,
  associateDefaultSecurityGroup: baseBoolean,
  stagingAreaSubnetId: subnetID
}
  type response = replicationConfigurationTemplate
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "CreateReplicationConfigurationTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TerminateTargetInstances = {
  type t;
  type request = {
tags: option<tagsMap>,
  sourceServerIDs: terminateTargetInstancesRequestSourceServerIDs
}
  type response = {
job: option<job>
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "TerminateTargetInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartTest = {
  type t;
  type request = {
tags: option<tagsMap>,
  sourceServerIDs: startTestRequestSourceServerIDs
}
  type response = {
job: option<job>
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "StartTestCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartCutover = {
  type t;
  type request = {
tags: option<tagsMap>,
  sourceServerIDs: startCutoverRequestSourceServerIDs
}
  type response = {
job: option<job>
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "StartCutoverCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationConfigurationTemplates = {
  type t;
  type request = {
nextToken: option<paginationToken>,
  maxResults: option<strictlyPositiveInteger>,
  replicationConfigurationTemplateIDs: replicationConfigurationTemplateIDs
}
  type response = {
nextToken: option<paginationToken>,
  items: option<replicationConfigurationTemplates>
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DescribeReplicationConfigurationTemplatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeJobLogItems = {
  type t;
  type request = {
nextToken: option<paginationToken>,
  maxResults: option<strictlyPositiveInteger>,
  jobID: jobID
}
  type response = {
nextToken: option<paginationToken>,
  items: option<jobLogs>
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DescribeJobLogItemsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RetryDataReplication = {
  type t;
  type request = {
sourceServerID: sourceServerID
}
  type response = sourceServer
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "RetryDataReplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module MarkAsArchived = {
  type t;
  type request = {
sourceServerID: sourceServerID
}
  type response = sourceServer
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "MarkAsArchivedCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module FinalizeCutover = {
  type t;
  type request = {
sourceServerID: sourceServerID
}
  type response = sourceServer
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "FinalizeCutoverCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisconnectFromService = {
  type t;
  type request = {
sourceServerID: sourceServerID
}
  type response = sourceServer
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DisconnectFromServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeJobs = {
  type t;
  type request = {
nextToken: option<paginationToken>,
  maxResults: option<strictlyPositiveInteger>,
  filters: describeJobsRequestFilters
}
  type response = {
nextToken: option<paginationToken>,
  items: option<jobsList>
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DescribeJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ChangeServerLifeCycleState = {
  type t;
  type request = {
lifeCycle: changeServerLifeCycleStateSourceServerLifecycle,
  sourceServerID: sourceServerID
}
  type response = sourceServer
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "ChangeServerLifeCycleStateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSourceServers = {
  type t;
  type request = {
nextToken: option<paginationToken>,
  maxResults: option<strictlyPositiveInteger>,
  filters: describeSourceServersRequestFilters
}
  type response = {
nextToken: option<paginationToken>,
  items: option<sourceServersList>
}
  @module("@aws-sdk/client-mgn") @new external new_: (request) => t = "DescribeSourceServersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
