type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mgn") @new
external createClient: unit => awsServiceClient = "ApplicationMigrationServiceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type validationExceptionReason = [
  | @as("other") #Other
  | @as("fieldValidationFailed") #FieldValidationFailed
  | @as("cannotParse") #CannotParse
  | @as("unknownOperation") #UnknownOperation
]
type targetInstanceTypeRightSizingMethod = [@as("BASIC") #BASIC | @as("NONE") #NONE]
type tagValue = string
type tagKey = string
type subnetID = string
type strictlyPositiveInteger = int

type sourceServerID = string
type smallBoundedString = string
type securityGroupID = string

type replicationConfigurationTemplateID = string
type replicationConfigurationReplicatedDiskStagingDiskType = [
  | @as("STANDARD") #STANDARD
  | @as("ST1") #ST1
  | @as("SC1") #SC1
  | @as("IO1") #IO1
  | @as("GP2") #GP2
  | @as("AUTO") #AUTO
]
type replicationConfigurationEbsEncryption = [
  | @as("CUSTOM") #CUSTOM
  | @as("DEFAULT") #DEFAULT
  | @as("NONE") #NONE
]
type replicationConfigurationDefaultLargeStagingDiskType = [@as("ST1") #ST1 | @as("GP2") #GP2]
type replicationConfigurationDataPlaneRouting = [
  | @as("PUBLIC_IP") #PUBLIC_IP
  | @as("PRIVATE_IP") #PRIVATE_IP
]
type positiveInteger = float
type paginationToken = string
type lifeCycleState = [
  | @as("DISCONNECTED") #DISCONNECTED
  | @as("CUTOVER") #CUTOVER
  | @as("CUTTING_OVER") #CUTTING_OVER
  | @as("READY_FOR_CUTOVER") #READY_FOR_CUTOVER
  | @as("TESTING") #TESTING
  | @as("READY_FOR_TEST") #READY_FOR_TEST
  | @as("NOT_READY") #NOT_READY
  | @as("STOPPED") #STOPPED
]
@ocaml.doc("<p>Configure Licensing.</p>")
type licensing = {@ocaml.doc("<p>Configure BYOL OS licensing.</p>") osByol: option<baseBoolean>}
type launchStatus = [
  | @as("TERMINATED") #TERMINATED
  | @as("FAILED") #FAILED
  | @as("LAUNCHED") #LAUNCHED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING") #PENDING
]
type launchDisposition = [@as("STARTED") #STARTED | @as("STOPPED") #STOPPED]
type largeBoundedString = string
type jobType = [@as("TERMINATE") #TERMINATE | @as("LAUNCH") #LAUNCH]
type jobStatus = [@as("COMPLETED") #COMPLETED | @as("STARTED") #STARTED | @as("PENDING") #PENDING]

type jobLogEvent = [
  | @as("JOB_END") #JOB_END
  | @as("JOB_CANCEL") #JOB_CANCEL
  | @as("LAUNCH_FAILED") #LAUNCH_FAILED
  | @as("LAUNCH_START") #LAUNCH_START
  | @as("CONVERSION_FAIL") #CONVERSION_FAIL
  | @as("CONVERSION_END") #CONVERSION_END
  | @as("CONVERSION_START") #CONVERSION_START
  | @as("USING_PREVIOUS_SNAPSHOT") #USING_PREVIOUS_SNAPSHOT
  | @as("SNAPSHOT_FAIL") #SNAPSHOT_FAIL
  | @as("SNAPSHOT_END") #SNAPSHOT_END
  | @as("SNAPSHOT_START") #SNAPSHOT_START
  | @as("CLEANUP_FAIL") #CLEANUP_FAIL
  | @as("CLEANUP_END") #CLEANUP_END
  | @as("CLEANUP_START") #CLEANUP_START
  | @as("SERVER_SKIPPED") #SERVER_SKIPPED
  | @as("JOB_START") #JOB_START
]
type jobID = string
type initiatedBy = [
  | @as("TERMINATE") #TERMINATE
  | @as("DIAGNOSTIC") #DIAGNOSTIC
  | @as("START_CUTOVER") #START_CUTOVER
  | @as("START_TEST") #START_TEST
]
type iso8601DatetimeString = string
type firstBoot = [
  | @as("STOPPED") #STOPPED
  | @as("UNKNOWN") #UNKNOWN
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("WAITING") #WAITING
]
type ec2InstanceType = string
type ec2InstanceID = string
type dataReplicationState = [
  | @as("DISCONNECTED") #DISCONNECTED
  | @as("STALLED") #STALLED
  | @as("RESCAN") #RESCAN
  | @as("PAUSED") #PAUSED
  | @as("CONTINUOUS") #CONTINUOUS
  | @as("CREATING_SNAPSHOT") #CREATING_SNAPSHOT
  | @as("BACKLOG") #BACKLOG
  | @as("INITIAL_SYNC") #INITIAL_SYNC
  | @as("INITIATING") #INITIATING
  | @as("STOPPED") #STOPPED
]
type dataReplicationInitiationStepStatus = [
  | @as("SKIPPED") #SKIPPED
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("NOT_STARTED") #NOT_STARTED
]
type dataReplicationInitiationStepName = [
  | @as("START_DATA_TRANSFER") #START_DATA_TRANSFER
  | @as("CONNECT_AGENT_TO_REPLICATION_SERVER") #CONNECT_AGENT_TO_REPLICATION_SERVER
  | @as("PAIR_REPLICATION_SERVER_WITH_AGENT") #PAIR_REPLICATION_SERVER_WITH_AGENT
  | @as("ATTACH_STAGING_DISKS") #ATTACH_STAGING_DISKS
  | @as("CREATE_STAGING_DISKS") #CREATE_STAGING_DISKS
  | @as("DOWNLOAD_REPLICATION_SOFTWARE") #DOWNLOAD_REPLICATION_SOFTWARE
  | @as("AUTHENTICATE_WITH_SERVICE") #AUTHENTICATE_WITH_SERVICE
  | @as("BOOT_REPLICATION_SERVER") #BOOT_REPLICATION_SERVER
  | @as("LAUNCH_REPLICATION_SERVER") #LAUNCH_REPLICATION_SERVER
  | @as("CREATE_SECURITY_GROUP") #CREATE_SECURITY_GROUP
  | @as("WAIT") #WAIT
]
type dataReplicationErrorString = [
  | @as("FAILED_TO_START_DATA_TRANSFER") #FAILED_TO_START_DATA_TRANSFER
  | @as("FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER")
  #FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER
  | @as("FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT")
  #FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT
  | @as("FAILED_TO_ATTACH_STAGING_DISKS") #FAILED_TO_ATTACH_STAGING_DISKS
  | @as("FAILED_TO_CREATE_STAGING_DISKS") #FAILED_TO_CREATE_STAGING_DISKS
  | @as("FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE") #FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE
  | @as("FAILED_TO_AUTHENTICATE_WITH_SERVICE") #FAILED_TO_AUTHENTICATE_WITH_SERVICE
  | @as("FAILED_TO_BOOT_REPLICATION_SERVER") #FAILED_TO_BOOT_REPLICATION_SERVER
  | @as("FAILED_TO_LAUNCH_REPLICATION_SERVER") #FAILED_TO_LAUNCH_REPLICATION_SERVER
  | @as("FAILED_TO_CREATE_SECURITY_GROUP") #FAILED_TO_CREATE_SECURITY_GROUP
  | @as("UNSTABLE_NETWORK") #UNSTABLE_NETWORK
  | @as("NOT_CONVERGING") #NOT_CONVERGING
  | @as("SNAPSHOTS_FAILURE") #SNAPSHOTS_FAILURE
  | @as("AGENT_NOT_SEEN") #AGENT_NOT_SEEN
]
type changeServerLifeCycleStateSourceServerLifecycleState = [
  | @as("CUTOVER") #CUTOVER
  | @as("READY_FOR_CUTOVER") #READY_FOR_CUTOVER
  | @as("READY_FOR_TEST") #READY_FOR_TEST
]
type boundedString = string

type accountID = string
type arn = string
@ocaml.doc("<p>Validate exception field.</p>")
type validationExceptionField = {
  @ocaml.doc("<p>Validate exception field message.</p>") message: option<largeBoundedString>,
  @ocaml.doc("<p>Validate exception field name.</p>") name: option<largeBoundedString>,
}
type terminateTargetInstancesRequestSourceServerIDs = array<sourceServerID>
type tagsMap = Js.Dict.t<tagValue>
type tagKeys = array<tagKey>
type startTestRequestSourceServerIDs = array<sourceServerID>
type startCutoverRequestSourceServerIDs = array<sourceServerID>
type replicationServersSecurityGroupsIDs = array<securityGroupID>
type replicationConfigurationTemplateIDs = array<replicationConfigurationTemplateID>
@ocaml.doc("<p>Replication Configuration replicated disk.</p>")
type replicationConfigurationReplicatedDisk = {
  @ocaml.doc("<p>Replication Configuration replicated disk IOPs.</p>")
  iops: option<positiveInteger>,
  @ocaml.doc("<p>Replication Configuration replicated disk staging disk type.</p>")
  stagingDiskType: option<replicationConfigurationReplicatedDiskStagingDiskType>,
  @ocaml.doc("<p>Replication Configuration replicated disk boot disk.</p>")
  isBootDisk: option<baseBoolean>,
  @ocaml.doc("<p>Replication Configuration replicated disk device name.</p>")
  deviceName: option<boundedString>,
}
@ocaml.doc("<p>Server participating in Job.</p>")
type participatingServer = {
  @ocaml.doc("<p>Participating server launch status.</p>") launchStatus: option<launchStatus>,
  @ocaml.doc("<p>Participating server Source Server ID.</p>")
  sourceServerID: option<sourceServerID>,
}
@ocaml.doc("<p>Operating System.</p>")
type os = {@ocaml.doc("<p>OS full string.</p>") fullString: option<boundedString>}
@ocaml.doc("<p>Lifecycle last Test reverted.</p>")
type lifeCycleLastTestReverted = {
  @ocaml.doc("<p>Lifecycle last Test reverted API call date and time.</p>")
  apiCallDateTime: option<iso8601DatetimeString>,
}
@ocaml.doc("<p>Lifecycle last Test initiated.</p>")
type lifeCycleLastTestInitiated = {
  @ocaml.doc("<p>Lifecycle last Test initiated Job ID.</p>") jobID: option<jobID>,
  @ocaml.doc("<p>Lifecycle last Test initiated API call date and time.</p>")
  apiCallDateTime: option<iso8601DatetimeString>,
}
@ocaml.doc("<p>Lifecycle last Test finlized.</p>")
type lifeCycleLastTestFinalized = {
  @ocaml.doc("<p>Lifecycle Test failed API call date and time.</p>")
  apiCallDateTime: option<iso8601DatetimeString>,
}
@ocaml.doc("<p>Lifecycle last Cutover reverted.</p>")
type lifeCycleLastCutoverReverted = {
  @ocaml.doc("<p>Lifecycle last Cutover reverted API call date time.</p>")
  apiCallDateTime: option<iso8601DatetimeString>,
}
@ocaml.doc("<p>Lifecycle last Cutover initiated.</p>")
type lifeCycleLastCutoverInitiated = {
  @ocaml.doc("<p>Lifecycle last Cutover initiated by Job ID.</p>") jobID: option<jobID>,
  @ocaml.doc("<p/>") apiCallDateTime: option<iso8601DatetimeString>,
}
@ocaml.doc("<p>Lifecycle Cutover finalized</p>")
type lifeCycleLastCutoverFinalized = {
  @ocaml.doc("<p>Lifecycle Cutover finalized date and time.</p>")
  apiCallDateTime: option<iso8601DatetimeString>,
}
@ocaml.doc("<p>Configure launced instance.</p>")
type launchedInstance = {
  @ocaml.doc("<p>Configure launced instance first boot.</p>") firstBoot: option<firstBoot>,
  @ocaml.doc("<p>Configure launced instance Job ID.</p>") jobID: option<jobID>,
  @ocaml.doc("<p>Configure launced instance EC2 ID.</p>") ec2InstanceID: option<ec2InstanceID>,
}
@ocaml.doc("<p>Job log data</p>")
type jobLogEventData = {
  @ocaml.doc("<p>Job error.</p>") rawError: option<largeBoundedString>,
  @ocaml.doc("<p>Job Event Target instance ID.</p>") targetInstanceID: option<ec2InstanceID>,
  @ocaml.doc("<p>Job Event conversion Server ID.</p>") conversionServerID: option<ec2InstanceID>,
  @ocaml.doc("<p>Job Event Source Server ID.</p>") sourceServerID: option<sourceServerID>,
}
@ocaml.doc("<p>Identification hints.</p>")
type identificationHints = {
  @ocaml.doc("<p>AWS Instance ID identification hint.</p>") awsInstanceID: option<ec2InstanceID>,
  @ocaml.doc("<p>vmWare UUID identification hint.</p>") vmWareUuid: option<boundedString>,
  @ocaml.doc("<p>Hostname identification hint.</p>") hostname: option<boundedString>,
  @ocaml.doc("<p>FQDN address identification hint.</p>") fqdn: option<boundedString>,
}
type ipsList = array<boundedString>
@ocaml.doc("<p>The disk identifier.</p>")
type disk = {
  @ocaml.doc("<p>The amount of storage on the disk in bytes.</p>") bytes: option<positiveInteger>,
  @ocaml.doc("<p>The disk or device name.</p>") deviceName: option<boundedString>,
}
type describeSourceServersRequestFiltersIDs = array<sourceServerID>
type describeJobsRequestFiltersJobIDs = array<jobID>
@ocaml.doc("<p>Data replication intiation step.</p>")
type dataReplicationInitiationStep = {
  @ocaml.doc("<p>Request to query data initiation status.</p>")
  status: option<dataReplicationInitiationStepStatus>,
  @ocaml.doc("<p>Request to query data initiation step name.</p>")
  name: option<dataReplicationInitiationStepName>,
}
@ocaml.doc("<p>Request to query disks replicated.</p>")
type dataReplicationInfoReplicatedDisk = {
  @ocaml.doc("<p>Request to query data replication backlog size in bytes.</p>")
  backloggedStorageBytes: option<positiveInteger>,
  @ocaml.doc("<p>Request to query amount of data rescanned in bytes.</p>")
  rescannedStorageBytes: option<positiveInteger>,
  @ocaml.doc("<p>Request to query amount of data replicated in bytes.</p>")
  replicatedStorageBytes: option<positiveInteger>,
  @ocaml.doc("<p>Request to query total amount of data replicated in bytes.</p>")
  totalStorageBytes: option<positiveInteger>,
  @ocaml.doc("<p>Request to query device name.</p>") deviceName: option<boundedString>,
}
@ocaml.doc("<p>Error in data replication.</p>")
type dataReplicationError = {
  @ocaml.doc("<p>Error in data replication.</p>") rawError: option<largeBoundedString>,
  @ocaml.doc("<p>Error in data replication.</p>") error: option<dataReplicationErrorString>,
}
@ocaml.doc("<p>The request to change the source server migration lifecycle state.</p>")
type changeServerLifeCycleStateSourceServerLifecycle = {
  @ocaml.doc("<p>The request to change the source server migration lifecycle state.</p>")
  state: changeServerLifeCycleStateSourceServerLifecycleState,
}
@ocaml.doc("<p>Source server CPU information.</p>")
type cpu = {
  @ocaml.doc("<p>The source server's CPU model name.</p>") modelName: option<boundedString>,
  @ocaml.doc("<p>The number of CPU cores on the source server.</p>") cores: option<positiveInteger>,
}
type validationExceptionFieldList = array<validationExceptionField>
type replicationConfigurationTemplate = {
  @ocaml.doc("<p>Replication Configuration template Tags.</p>") tags: option<tagsMap>,
  @ocaml.doc("<p>Replication Configuration template Staging Area Tags.</p>")
  stagingAreaTags: option<tagsMap>,
  @ocaml.doc("<p>Replication Configuration template create Public IP.</p>")
  createPublicIP: option<baseBoolean>,
  @ocaml.doc("<p>Replication Configuration template data plane routing.</p>")
  dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
  @ocaml.doc("<p>Replication Configuration template bandwidth throtting.</p>")
  bandwidthThrottling: option<positiveInteger>,
  @ocaml.doc("<p>Replication Configuration template EBS encryption key ARN.</p>")
  ebsEncryptionKeyArn: option<arn>,
  @ocaml.doc("<p>Replication Configuration template EBS encryption.</p>")
  ebsEncryption: option<replicationConfigurationEbsEncryption>,
  @ocaml.doc("<p>Replication Configuration template use dedault large Staging Disk type.</p>")
  defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
  @ocaml.doc("<p>Replication Configuration template use Dedicated Replication Server.</p>")
  useDedicatedReplicationServer: option<baseBoolean>,
  @ocaml.doc("<p>Replication Configuration template server instance type.</p>")
  replicationServerInstanceType: option<ec2InstanceType>,
  @ocaml.doc("<p>Replication Configuration template server Security Groups IDs.</p>")
  replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
  @ocaml.doc(
    "<p>Replication Configuration template associate default Application Migration Service Security group.</p>"
  )
  associateDefaultSecurityGroup: option<baseBoolean>,
  @ocaml.doc("<p>Replication Configuration template Staging Area subnet ID.</p>")
  stagingAreaSubnetId: option<subnetID>,
  @ocaml.doc("<p>Replication Configuration template ARN.</p>") arn: option<arn>,
  @ocaml.doc("<p>Replication Configuration template template ID.</p>")
  replicationConfigurationTemplateID: replicationConfigurationTemplateID,
}
type replicationConfigurationReplicatedDisks = array<replicationConfigurationReplicatedDisk>
type participatingServers = array<participatingServer>
@ocaml.doc("<p>Network interface.</p>")
type networkInterface = {
  @ocaml.doc("<p>Network interface primary IP.</p>") isPrimary: option<baseBoolean>,
  @ocaml.doc("<p>Network interface IPs.</p>") ips: option<ipsList>,
  @ocaml.doc("<p>Network interface Mac address.</p>") macAddress: option<boundedString>,
}
@ocaml.doc("<p>Lifecycle last Test.</p>")
type lifeCycleLastTest = {
  @ocaml.doc("<p>Lifecycle last Test finlized.</p>") finalized: option<lifeCycleLastTestFinalized>,
  @ocaml.doc("<p>Lifecycle last Test reverted.</p>") reverted: option<lifeCycleLastTestReverted>,
  @ocaml.doc("<p>Lifecycle last Test initiated.</p>") initiated: option<lifeCycleLastTestInitiated>,
}
@ocaml.doc("<p>Lifecycle last Cutover .</p>")
type lifeCycleLastCutover = {
  @ocaml.doc("<p>Lifecycle Cutover finalized date and time.</p>")
  finalized: option<lifeCycleLastCutoverFinalized>,
  @ocaml.doc("<p>Lifecycle last Cutover reverted.</p>")
  reverted: option<lifeCycleLastCutoverReverted>,
  @ocaml.doc("<p>Lifecycle last Cutover initiated.</p>")
  initiated: option<lifeCycleLastCutoverInitiated>,
}
@ocaml.doc("<p>Job log.</p>")
type jobLog = {
  @ocaml.doc("<p>Job event data</p>") eventData: option<jobLogEventData>,
  @ocaml.doc("<p>Job log event.</p>") event: option<jobLogEvent>,
  @ocaml.doc("<p>Job log event date and time.</p>") logDateTime: option<iso8601DatetimeString>,
}
type disks = array<disk>
@ocaml.doc("<p>Request to filter Source Servers list.</p>")
type describeSourceServersRequestFilters = {
  @ocaml.doc("<p>Request to filter Source Servers list by archived.</p>")
  isArchived: option<baseBoolean>,
  @ocaml.doc("<p>Request to filter Source Servers list by Source Server ID.</p>")
  sourceServerIDs: option<describeSourceServersRequestFiltersIDs>,
}
@ocaml.doc("<p>Request to describe Job log filters.</p>")
type describeJobsRequestFilters = {
  @ocaml.doc("<p>Request to describe Job log by last date.</p>")
  toDate: option<iso8601DatetimeString>,
  @ocaml.doc("<p>Request to describe Job log filters by date.</p>")
  fromDate: option<iso8601DatetimeString>,
  @ocaml.doc("<p>Request to describe Job log filters by job ID.</p>")
  jobIDs: option<describeJobsRequestFiltersJobIDs>,
}
type dataReplicationInitiationSteps = array<dataReplicationInitiationStep>
type dataReplicationInfoReplicatedDisks = array<dataReplicationInfoReplicatedDisk>
type cpus = array<cpu>
type replicationConfigurationTemplates = array<replicationConfigurationTemplate>
type networkInterfaces = array<networkInterface>
@ocaml.doc("<p>Lifecycle.</p>")
type lifeCycle = {
  @ocaml.doc("<p>Lifecycle state.</p>") state: option<lifeCycleState>,
  @ocaml.doc("<p>Lifecycle last Cutover.</p>") lastCutover: option<lifeCycleLastCutover>,
  @ocaml.doc("<p>Lifecycle last Test.</p>") lastTest: option<lifeCycleLastTest>,
  @ocaml.doc("<p>Lifecycle last seen date and time.</p>")
  lastSeenByServiceDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>Lifecycle elapsed time and duration.</p>")
  elapsedReplicationDuration: option<iso8601DatetimeString>,
  @ocaml.doc("<p>Lifecycle replication initiation date and time.</p>")
  firstByteDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>Lifecycle added to service data and time.</p>")
  addedToServiceDateTime: option<iso8601DatetimeString>,
}
type jobLogs = array<jobLog>
@ocaml.doc("<p>Job.</p>")
type job = {
  @ocaml.doc("<p>Tags associated with spcific Job.</p>") tags: option<tagsMap>,
  @ocaml.doc("<p>Servers participating in a specific Job.</p>")
  participatingServers: option<participatingServers>,
  @ocaml.doc("<p>Job status.</p>") status: option<jobStatus>,
  @ocaml.doc("<p>Job end time.</p>") endDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>Job creation time.</p>") creationDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>Job initiated by field.</p>") initiatedBy: option<initiatedBy>,
  @ocaml.doc("<p>Job type.</p>") @as("type") type_: option<jobType>,
  @ocaml.doc("<p>the ARN of the specific Job.</p>") arn: option<arn>,
  @ocaml.doc("<p>Job ID.</p>") jobID: jobID,
}
@ocaml.doc("<p>Data replication initiation.</p>")
type dataReplicationInitiation = {
  @ocaml.doc("<p>Request to query data initiation steps.</p>")
  steps: option<dataReplicationInitiationSteps>,
  @ocaml.doc("<p>Request to query next data initiation date and time.</p>")
  nextAttemptDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>Request to query data initiation start date and time.</p>")
  startDateTime: option<iso8601DatetimeString>,
}
@ocaml.doc("<p>Source server properties.</p>")
type sourceProperties = {
  @ocaml.doc("<p>Source server OS.</p>") os: option<os>,
  @ocaml.doc("<p>Source server RAM in bytes.</p>") ramBytes: option<positiveInteger>,
  @ocaml.doc("<p>Source Server CPUs.</p>") cpus: option<cpus>,
  @ocaml.doc("<p>Source Server disks.</p>") disks: option<disks>,
  @ocaml.doc("<p>Source server network interfaces.</p>")
  networkInterfaces: option<networkInterfaces>,
  @ocaml.doc("<p>Source server identification hints.</p>")
  identificationHints: option<identificationHints>,
  @ocaml.doc("<p>Source server recommended instance type.</p>")
  recommendedInstanceType: option<ec2InstanceType>,
  @ocaml.doc("<p>Source server last update date and time.</p>")
  lastUpdatedDateTime: option<iso8601DatetimeString>,
}
type jobsList = array<job>
@ocaml.doc("<p>Request data replication info.</p>")
type dataReplicationInfo = {
  @ocaml.doc("<p>Error in obtaining data replication info.</p>")
  dataReplicationError: option<dataReplicationError>,
  @ocaml.doc("<p>Request to query whether data replication has been initiated.</p>")
  dataReplicationInitiation: option<dataReplicationInitiation>,
  @ocaml.doc("<p>Request to query the data replication state.</p>")
  dataReplicationState: option<dataReplicationState>,
  @ocaml.doc("<p>Request to query disks replicated.</p>")
  replicatedDisks: option<dataReplicationInfoReplicatedDisks>,
  @ocaml.doc("<p>Request to query the time when data replication will be complete.</p>")
  etaDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>Request to query data replication lag durating.</p>")
  lagDuration: option<iso8601DatetimeString>,
}
type sourceServer = {
  @ocaml.doc("<p>Source server properties.</p>") sourceProperties: option<sourceProperties>,
  @ocaml.doc("<p>Source server lifecycle state.</p>") lifeCycle: option<lifeCycle>,
  @ocaml.doc("<p>Source server data replication info.</p>")
  dataReplicationInfo: option<dataReplicationInfo>,
  @ocaml.doc("<p>Source server launched instance.</p>") launchedInstance: option<launchedInstance>,
  @ocaml.doc("<p>Source server Tags.</p>") tags: option<tagsMap>,
  @ocaml.doc("<p>Source server archived status.</p>") isArchived: option<baseBoolean>,
  @ocaml.doc("<p>Source server ARN.</p>") arn: option<arn>,
  @ocaml.doc("<p>Source server ID.</p>") sourceServerID: option<sourceServerID>,
}
@ocaml.doc("<p>The Application Migration Service service.</p>")
type sourceServersList = array<sourceServer>
module GetLaunchConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Request to get Launch Configuration information by Source Server ID.</p>")
    sourceServerID: sourceServerID,
  }
  type response = {
    @ocaml.doc("<p>Configure launch configuration OS licensing.</p>") licensing: option<licensing>,
    @ocaml.doc("<p>Copy Tags during Launch Configuration.</p>") copyTags: option<baseBoolean>,
    @ocaml.doc("<p>Copy Private IP during Launch Configuration.</p>")
    copyPrivateIp: option<baseBoolean>,
    @ocaml.doc("<p>Configure launch configuration Target instance type right sizing method.</p>")
    targetInstanceTypeRightSizingMethod: option<targetInstanceTypeRightSizingMethod>,
    @ocaml.doc("<p>Configure launch dispostion for launch configuration.</p>")
    launchDisposition: option<launchDisposition>,
    @ocaml.doc("<p>Configure EC2 lauch configuration template ID.</p>")
    ec2LaunchTemplateID: option<boundedString>,
    @ocaml.doc("<p>Configure launch configuration name.</p>") name: option<smallBoundedString>,
    @ocaml.doc("<p>Configure launch configuration Source Server ID.</p>")
    sourceServerID: option<sourceServerID>,
  }
  @module("@aws-sdk/client-mgn") @new external new: request => t = "GetLaunchConfigurationCommand"
  let make = (~sourceServerID, ()) => new({sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSourceServer = {
  type t
  type request = {
    @ocaml.doc("<p>Request to delete Source Server from service by Server ID.</p>")
    sourceServerID: sourceServerID,
  }

  @module("@aws-sdk/client-mgn") @new external new: request => t = "DeleteSourceServerCommand"
  let make = (~sourceServerID, ()) => new({sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteReplicationConfigurationTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Request to delete Replication Configuration Template from service by Replication Configuration Template ID.</p>"
    )
    replicationConfigurationTemplateID: replicationConfigurationTemplateID,
  }

  @module("@aws-sdk/client-mgn") @new
  external new: request => t = "DeleteReplicationConfigurationTemplateCommand"
  let make = (~replicationConfigurationTemplateID, ()) =>
    new({replicationConfigurationTemplateID: replicationConfigurationTemplateID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteJob = {
  type t
  type request = {@ocaml.doc("<p>Request to delete Job from service by Job ID.</p>") jobID: jobID}

  @module("@aws-sdk/client-mgn") @new external new: request => t = "DeleteJobCommand"
  let make = (~jobID, ()) => new({jobID: jobID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateReplicationConfigurationTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>Update replication configuration template Staging Area Tags request.</p>")
    stagingAreaTags: option<tagsMap>,
    @ocaml.doc("<p>Update replication configuration template create Public IP request.</p>")
    createPublicIP: option<baseBoolean>,
    @ocaml.doc("<p>Update replication configuration template data plane routing request.</p>")
    dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
    @ocaml.doc("<p>Update replication configuration template bandwidth throttling request.</p>")
    bandwidthThrottling: option<positiveInteger>,
    @ocaml.doc("<p>Update replication configuration template EBS encryption key ARN request.</p>")
    ebsEncryptionKeyArn: option<arn>,
    @ocaml.doc("<p>Update replication configuration template EBS encryption request.</p>")
    ebsEncryption: option<replicationConfigurationEbsEncryption>,
    @ocaml.doc(
      "<p>Update replication configuration template use default large Staging Disk type request.</p>"
    )
    defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
    @ocaml.doc(
      "<p>Update replication configuration template use dedicated Replication Server request.</p>"
    )
    useDedicatedReplicationServer: option<baseBoolean>,
    @ocaml.doc(
      "<p>Update replication configuration template Replication Server instance type request.</p>"
    )
    replicationServerInstanceType: option<ec2InstanceType>,
    @ocaml.doc(
      "<p>Update replication configuration template Replication Server Security groups IDs request.</p>"
    )
    replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
    @ocaml.doc(
      "<p>Update replication configuration template associate default Application Migration Service Security group request.</p>"
    )
    associateDefaultSecurityGroup: option<baseBoolean>,
    @ocaml.doc("<p>Update replication configuration template Staging Area subnet ID request.</p>")
    stagingAreaSubnetId: option<subnetID>,
    @ocaml.doc("<p>Update replication configuration template ARN request.</p>") arn: option<arn>,
    @ocaml.doc("<p>Update replication configuration template template ID request.</p>")
    replicationConfigurationTemplateID: replicationConfigurationTemplateID,
  }
  type response = replicationConfigurationTemplate
  @module("@aws-sdk/client-mgn") @new
  external new: request => t = "UpdateReplicationConfigurationTemplateCommand"
  let make = (
    ~replicationConfigurationTemplateID,
    ~stagingAreaTags=?,
    ~createPublicIP=?,
    ~dataPlaneRouting=?,
    ~bandwidthThrottling=?,
    ~ebsEncryptionKeyArn=?,
    ~ebsEncryption=?,
    ~defaultLargeStagingDiskType=?,
    ~useDedicatedReplicationServer=?,
    ~replicationServerInstanceType=?,
    ~replicationServersSecurityGroupsIDs=?,
    ~associateDefaultSecurityGroup=?,
    ~stagingAreaSubnetId=?,
    ~arn=?,
    (),
  ) =>
    new({
      stagingAreaTags: stagingAreaTags,
      createPublicIP: createPublicIP,
      dataPlaneRouting: dataPlaneRouting,
      bandwidthThrottling: bandwidthThrottling,
      ebsEncryptionKeyArn: ebsEncryptionKeyArn,
      ebsEncryption: ebsEncryption,
      defaultLargeStagingDiskType: defaultLargeStagingDiskType,
      useDedicatedReplicationServer: useDedicatedReplicationServer,
      replicationServerInstanceType: replicationServerInstanceType,
      replicationServersSecurityGroupsIDs: replicationServersSecurityGroupsIDs,
      associateDefaultSecurityGroup: associateDefaultSecurityGroup,
      stagingAreaSubnetId: stagingAreaSubnetId,
      arn: arn,
      replicationConfigurationTemplateID: replicationConfigurationTemplateID,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateReplicationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Update replication configuration Staging Area Tags request.</p>")
    stagingAreaTags: option<tagsMap>,
    @ocaml.doc("<p>Update replication configuration create Public IP request.</p>")
    createPublicIP: option<baseBoolean>,
    @ocaml.doc("<p>Update replication configuration data plane routing request.</p>")
    dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
    @ocaml.doc("<p>Update replication configuration bandwidth throttling request.</p>")
    bandwidthThrottling: option<positiveInteger>,
    @ocaml.doc("<p>Update replication configuration EBS encryption key ARN request.</p>")
    ebsEncryptionKeyArn: option<arn>,
    @ocaml.doc("<p>Update replication configuration EBS encryption request.</p>")
    ebsEncryption: option<replicationConfigurationEbsEncryption>,
    @ocaml.doc("<p>Update replication configuration replicated disks request.</p>")
    replicatedDisks: option<replicationConfigurationReplicatedDisks>,
    @ocaml.doc(
      "<p>Update replication configuration use default large Staging Disk type request.</p>"
    )
    defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
    @ocaml.doc("<p>Update replication configuration use dedicated Replication Server request.</p>")
    useDedicatedReplicationServer: option<baseBoolean>,
    @ocaml.doc("<p>Update replication configuration Replication Server instance type request.</p>")
    replicationServerInstanceType: option<ec2InstanceType>,
    @ocaml.doc(
      "<p>Update replication configuration Replication Server Security Groups IDs request.</p>"
    )
    replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
    @ocaml.doc(
      "<p>Update replication configuration associate default Application Migration Service Security group request.</p>"
    )
    associateDefaultSecurityGroup: option<baseBoolean>,
    @ocaml.doc("<p>Update replication configuration Staging Area subnet request.</p>")
    stagingAreaSubnetId: option<subnetID>,
    @ocaml.doc("<p>Update replication configuration name request.</p>")
    name: option<smallBoundedString>,
    @ocaml.doc("<p>Update replication configuration Source Server ID request.</p>")
    sourceServerID: sourceServerID,
  }
  type response = {
    @ocaml.doc("<p>Replication Configuration Staging Area tags.</p>")
    stagingAreaTags: option<tagsMap>,
    @ocaml.doc("<p>Replication Configuration create Public IP.</p>")
    createPublicIP: option<baseBoolean>,
    @ocaml.doc("<p>Replication Configuration data plane routing.</p>")
    dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
    @ocaml.doc("<p>Replication Configuration set bandwidth throttling.</p>")
    bandwidthThrottling: option<positiveInteger>,
    @ocaml.doc("<p>Replication Configuration EBS encryption key ARN.</p>")
    ebsEncryptionKeyArn: option<arn>,
    @ocaml.doc("<p>Replication Configuration EBS encryption.</p>")
    ebsEncryption: option<replicationConfigurationEbsEncryption>,
    @ocaml.doc("<p>Replication Configuration replicated disks.</p>")
    replicatedDisks: option<replicationConfigurationReplicatedDisks>,
    @ocaml.doc("<p>Replication Configuration use default large Staging Disks.</p>")
    defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
    @ocaml.doc("<p>Replication Configuration use Dedicated Replication Server.</p>")
    useDedicatedReplicationServer: option<baseBoolean>,
    @ocaml.doc("<p>Replication Configuration Replication Server instance type.</p>")
    replicationServerInstanceType: option<ec2InstanceType>,
    @ocaml.doc("<p>Replication Configuration Replication Server Security Group IDs.</p>")
    replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
    @ocaml.doc(
      "<p>Replication Configuration associate default Application Migration Service Security Group.</p>"
    )
    associateDefaultSecurityGroup: option<baseBoolean>,
    @ocaml.doc("<p>Replication Configuration Staging Area subnet ID.</p>")
    stagingAreaSubnetId: option<subnetID>,
    @ocaml.doc("<p>Replication Configuration name.</p>") name: option<smallBoundedString>,
    @ocaml.doc("<p>Replication Configuration Source Server ID.</p>")
    sourceServerID: option<sourceServerID>,
  }
  @module("@aws-sdk/client-mgn") @new
  external new: request => t = "UpdateReplicationConfigurationCommand"
  let make = (
    ~sourceServerID,
    ~stagingAreaTags=?,
    ~createPublicIP=?,
    ~dataPlaneRouting=?,
    ~bandwidthThrottling=?,
    ~ebsEncryptionKeyArn=?,
    ~ebsEncryption=?,
    ~replicatedDisks=?,
    ~defaultLargeStagingDiskType=?,
    ~useDedicatedReplicationServer=?,
    ~replicationServerInstanceType=?,
    ~replicationServersSecurityGroupsIDs=?,
    ~associateDefaultSecurityGroup=?,
    ~stagingAreaSubnetId=?,
    ~name=?,
    (),
  ) =>
    new({
      stagingAreaTags: stagingAreaTags,
      createPublicIP: createPublicIP,
      dataPlaneRouting: dataPlaneRouting,
      bandwidthThrottling: bandwidthThrottling,
      ebsEncryptionKeyArn: ebsEncryptionKeyArn,
      ebsEncryption: ebsEncryption,
      replicatedDisks: replicatedDisks,
      defaultLargeStagingDiskType: defaultLargeStagingDiskType,
      useDedicatedReplicationServer: useDedicatedReplicationServer,
      replicationServerInstanceType: replicationServerInstanceType,
      replicationServersSecurityGroupsIDs: replicationServersSecurityGroupsIDs,
      associateDefaultSecurityGroup: associateDefaultSecurityGroup,
      stagingAreaSubnetId: stagingAreaSubnetId,
      name: name,
      sourceServerID: sourceServerID,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLaunchConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Update Launch configuration licensing request.</p>")
    licensing: option<licensing>,
    @ocaml.doc("<p>Update Launch configuration copy Tags request.</p>")
    copyTags: option<baseBoolean>,
    @ocaml.doc("<p>Update Launch configuration copy Private IP request.</p>")
    copyPrivateIp: option<baseBoolean>,
    @ocaml.doc("<p>Update Launch configuration Target instance right sizing request.</p>")
    targetInstanceTypeRightSizingMethod: option<targetInstanceTypeRightSizingMethod>,
    @ocaml.doc("<p>Update Launch configuration launch disposition request.</p>")
    launchDisposition: option<launchDisposition>,
    @ocaml.doc("<p>Update Launch configuration name request.</p>") name: option<smallBoundedString>,
    @ocaml.doc("<p>Update Launch configuration by Source Server ID request.</p>")
    sourceServerID: sourceServerID,
  }
  type response = {
    @ocaml.doc("<p>Configure launch configuration OS licensing.</p>") licensing: option<licensing>,
    @ocaml.doc("<p>Copy Tags during Launch Configuration.</p>") copyTags: option<baseBoolean>,
    @ocaml.doc("<p>Copy Private IP during Launch Configuration.</p>")
    copyPrivateIp: option<baseBoolean>,
    @ocaml.doc("<p>Configure launch configuration Target instance type right sizing method.</p>")
    targetInstanceTypeRightSizingMethod: option<targetInstanceTypeRightSizingMethod>,
    @ocaml.doc("<p>Configure launch dispostion for launch configuration.</p>")
    launchDisposition: option<launchDisposition>,
    @ocaml.doc("<p>Configure EC2 lauch configuration template ID.</p>")
    ec2LaunchTemplateID: option<boundedString>,
    @ocaml.doc("<p>Configure launch configuration name.</p>") name: option<smallBoundedString>,
    @ocaml.doc("<p>Configure launch configuration Source Server ID.</p>")
    sourceServerID: option<sourceServerID>,
  }
  @module("@aws-sdk/client-mgn") @new
  external new: request => t = "UpdateLaunchConfigurationCommand"
  let make = (
    ~sourceServerID,
    ~licensing=?,
    ~copyTags=?,
    ~copyPrivateIp=?,
    ~targetInstanceTypeRightSizingMethod=?,
    ~launchDisposition=?,
    ~name=?,
    (),
  ) =>
    new({
      licensing: licensing,
      copyTags: copyTags,
      copyPrivateIp: copyPrivateIp,
      targetInstanceTypeRightSizingMethod: targetInstanceTypeRightSizingMethod,
      launchDisposition: launchDisposition,
      name: name,
      sourceServerID: sourceServerID,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Untag resource by Keys.</p>") tagKeys: tagKeys,
    @ocaml.doc("<p>Untag resource by ARN.</p>") resourceArn: arn,
  }

  @module("@aws-sdk/client-mgn") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Tag resource by Tags.</p>") tags: tagsMap,
    @ocaml.doc("<p>Tag resource by ARN.</p>") resourceArn: arn,
  }

  @module("@aws-sdk/client-mgn") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@ocaml.doc("<p>List tags for resource request by ARN.</p>") resourceArn: arn}
  type response = {@ocaml.doc("<p>List tags for resource response.</p>") tags: option<tagsMap>}
  @module("@aws-sdk/client-mgn") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InitializeService = {
  type t

  @module("@aws-sdk/client-mgn") @new external new: unit => t = "InitializeServiceCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetReplicationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Request to get Replication Configuaration by Source Server ID.</p>")
    sourceServerID: sourceServerID,
  }
  type response = {
    @ocaml.doc("<p>Replication Configuration Staging Area tags.</p>")
    stagingAreaTags: option<tagsMap>,
    @ocaml.doc("<p>Replication Configuration create Public IP.</p>")
    createPublicIP: option<baseBoolean>,
    @ocaml.doc("<p>Replication Configuration data plane routing.</p>")
    dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
    @ocaml.doc("<p>Replication Configuration set bandwidth throttling.</p>")
    bandwidthThrottling: option<positiveInteger>,
    @ocaml.doc("<p>Replication Configuration EBS encryption key ARN.</p>")
    ebsEncryptionKeyArn: option<arn>,
    @ocaml.doc("<p>Replication Configuration EBS encryption.</p>")
    ebsEncryption: option<replicationConfigurationEbsEncryption>,
    @ocaml.doc("<p>Replication Configuration replicated disks.</p>")
    replicatedDisks: option<replicationConfigurationReplicatedDisks>,
    @ocaml.doc("<p>Replication Configuration use default large Staging Disks.</p>")
    defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
    @ocaml.doc("<p>Replication Configuration use Dedicated Replication Server.</p>")
    useDedicatedReplicationServer: option<baseBoolean>,
    @ocaml.doc("<p>Replication Configuration Replication Server instance type.</p>")
    replicationServerInstanceType: option<ec2InstanceType>,
    @ocaml.doc("<p>Replication Configuration Replication Server Security Group IDs.</p>")
    replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
    @ocaml.doc(
      "<p>Replication Configuration associate default Application Migration Service Security Group.</p>"
    )
    associateDefaultSecurityGroup: option<baseBoolean>,
    @ocaml.doc("<p>Replication Configuration Staging Area subnet ID.</p>")
    stagingAreaSubnetId: option<subnetID>,
    @ocaml.doc("<p>Replication Configuration name.</p>") name: option<smallBoundedString>,
    @ocaml.doc("<p>Replication Configuration Source Server ID.</p>")
    sourceServerID: option<sourceServerID>,
  }
  @module("@aws-sdk/client-mgn") @new
  external new: request => t = "GetReplicationConfigurationCommand"
  let make = (~sourceServerID, ()) => new({sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReplicationConfigurationTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>Request to configure tags during Replication Settings template creation.</p>")
    tags: option<tagsMap>,
    @ocaml.doc(
      "<p>Request to configure Staiging Area tags during Replication Settings template creation.</p>"
    )
    stagingAreaTags: tagsMap,
    @ocaml.doc("<p>Request to create Public IP during Replication Settings template creation.</p>")
    createPublicIP: baseBoolean,
    @ocaml.doc(
      "<p>Request to configure  data plane routing during Replication Settings template creation.</p>"
    )
    dataPlaneRouting: replicationConfigurationDataPlaneRouting,
    @ocaml.doc(
      "<p>Request to configure bandwidth throttling during Replication Settings template creation.</p>"
    )
    bandwidthThrottling: positiveInteger,
    @ocaml.doc(
      "<p>Request to configure an EBS enryption key during Replication Settings template creation.</p>"
    )
    ebsEncryptionKeyArn: option<arn>,
    @ocaml.doc(
      "<p>Request to configure EBS enryption during Replication Settings template creation.</p>"
    )
    ebsEncryption: replicationConfigurationEbsEncryption,
    @ocaml.doc(
      "<p>Request to configure the Staging Disk EBS volume type to \"gp2\" during Replication Settings template creation.</p>"
    )
    defaultLargeStagingDiskType: replicationConfigurationDefaultLargeStagingDiskType,
    @ocaml.doc(
      "<p>Request to use Dedicated Replication Servers during Replication Settings template creation.</p>"
    )
    useDedicatedReplicationServer: baseBoolean,
    @ocaml.doc(
      "<p>Request to configure the Replication Server instance type during Replication Settings template creation.</p>"
    )
    replicationServerInstanceType: ec2InstanceType,
    @ocaml.doc(
      "<p>Request to configure the Replication Server Secuirity group ID during Replication Settings template creation.</p>"
    )
    replicationServersSecurityGroupsIDs: replicationServersSecurityGroupsIDs,
    @ocaml.doc(
      "<p>Request to associate the default Application Migration Service Security group with the Replication Settings template.</p>"
    )
    associateDefaultSecurityGroup: baseBoolean,
    @ocaml.doc(
      "<p>Request to configure the Staging Area subnet ID during Replication Settings template creation.</p>"
    )
    stagingAreaSubnetId: subnetID,
  }
  type response = replicationConfigurationTemplate
  @module("@aws-sdk/client-mgn") @new
  external new: request => t = "CreateReplicationConfigurationTemplateCommand"
  let make = (
    ~stagingAreaTags,
    ~createPublicIP,
    ~dataPlaneRouting,
    ~bandwidthThrottling,
    ~ebsEncryption,
    ~defaultLargeStagingDiskType,
    ~useDedicatedReplicationServer,
    ~replicationServerInstanceType,
    ~replicationServersSecurityGroupsIDs,
    ~associateDefaultSecurityGroup,
    ~stagingAreaSubnetId,
    ~tags=?,
    ~ebsEncryptionKeyArn=?,
    (),
  ) =>
    new({
      tags: tags,
      stagingAreaTags: stagingAreaTags,
      createPublicIP: createPublicIP,
      dataPlaneRouting: dataPlaneRouting,
      bandwidthThrottling: bandwidthThrottling,
      ebsEncryptionKeyArn: ebsEncryptionKeyArn,
      ebsEncryption: ebsEncryption,
      defaultLargeStagingDiskType: defaultLargeStagingDiskType,
      useDedicatedReplicationServer: useDedicatedReplicationServer,
      replicationServerInstanceType: replicationServerInstanceType,
      replicationServersSecurityGroupsIDs: replicationServersSecurityGroupsIDs,
      associateDefaultSecurityGroup: associateDefaultSecurityGroup,
      stagingAreaSubnetId: stagingAreaSubnetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TerminateTargetInstances = {
  type t
  type request = {
    @ocaml.doc("<p>Terminate Target instance by Tags.</p>") tags: option<tagsMap>,
    @ocaml.doc("<p>Terminate Target instance by Source Server IDs.</p>")
    sourceServerIDs: terminateTargetInstancesRequestSourceServerIDs,
  }
  type response = {@ocaml.doc("<p>Terminate Target instance Job response.</p>") job: option<job>}
  @module("@aws-sdk/client-mgn") @new external new: request => t = "TerminateTargetInstancesCommand"
  let make = (~sourceServerIDs, ~tags=?, ()) => new({tags: tags, sourceServerIDs: sourceServerIDs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartTest = {
  type t
  type request = {
    @ocaml.doc("<p>Start Test by Tags.</p>") tags: option<tagsMap>,
    @ocaml.doc("<p>Start Test for Source Server IDs.</p>")
    sourceServerIDs: startTestRequestSourceServerIDs,
  }
  type response = {@ocaml.doc("<p>Start Test Job response.</p>") job: option<job>}
  @module("@aws-sdk/client-mgn") @new external new: request => t = "StartTestCommand"
  let make = (~sourceServerIDs, ~tags=?, ()) => new({tags: tags, sourceServerIDs: sourceServerIDs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartCutover = {
  type t
  type request = {
    @ocaml.doc("<p>Start Cutover by Tags.</p>") tags: option<tagsMap>,
    @ocaml.doc("<p>Start Cutover by Source Server IDs.</p>")
    sourceServerIDs: startCutoverRequestSourceServerIDs,
  }
  type response = {@ocaml.doc("<p>Start Cutover Job response.</p>") job: option<job>}
  @module("@aws-sdk/client-mgn") @new external new: request => t = "StartCutoverCommand"
  let make = (~sourceServerIDs, ~tags=?, ()) => new({tags: tags, sourceServerIDs: sourceServerIDs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplicationConfigurationTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>Request to describe Replication Configuration template by next token.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Request to describe Replication Configuration template by max results.</p>")
    maxResults: option<strictlyPositiveInteger>,
    @ocaml.doc("<p>Request to describe Replication Configuration template by template IDs.</p>")
    replicationConfigurationTemplateIDs: replicationConfigurationTemplateIDs,
  }
  type response = {
    @ocaml.doc("<p>Request to describe Replication Configuration template by next token.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Request to describe Replication Configuration template by items.</p>")
    items: option<replicationConfigurationTemplates>,
  }
  @module("@aws-sdk/client-mgn") @new
  external new: request => t = "DescribeReplicationConfigurationTemplatesCommand"
  let make = (~replicationConfigurationTemplateIDs, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      replicationConfigurationTemplateIDs: replicationConfigurationTemplateIDs,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobLogItems = {
  type t
  type request = {
    @ocaml.doc("<p>Request to describe Job log next token.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>Request to describe Job log item maximum results.</p>")
    maxResults: option<strictlyPositiveInteger>,
    @ocaml.doc("<p>Request to describe Job log job ID.</p>") jobID: jobID,
  }
  type response = {
    @ocaml.doc("<p>Request to describe Job log response next token.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Request to describe Job log response items.</p>") items: option<jobLogs>,
  }
  @module("@aws-sdk/client-mgn") @new external new: request => t = "DescribeJobLogItemsCommand"
  let make = (~jobID, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, jobID: jobID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RetryDataReplication = {
  type t
  type request = {
    @ocaml.doc("<p>Retry data replication for Source Server ID.</p>")
    sourceServerID: sourceServerID,
  }
  type response = sourceServer
  @module("@aws-sdk/client-mgn") @new external new: request => t = "RetryDataReplicationCommand"
  let make = (~sourceServerID, ()) => new({sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module MarkAsArchived = {
  type t
  type request = {
    @ocaml.doc("<p>Mark as archived by Source Server ID.</p>") sourceServerID: sourceServerID,
  }
  type response = sourceServer
  @module("@aws-sdk/client-mgn") @new external new: request => t = "MarkAsArchivedCommand"
  let make = (~sourceServerID, ()) => new({sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module FinalizeCutover = {
  type t
  type request = {
    @ocaml.doc("<p>Request to finalize Cutover by Soure Server ID.</p>")
    sourceServerID: sourceServerID,
  }
  type response = sourceServer
  @module("@aws-sdk/client-mgn") @new external new: request => t = "FinalizeCutoverCommand"
  let make = (~sourceServerID, ()) => new({sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisconnectFromService = {
  type t
  type request = {
    @ocaml.doc("<p>Request to disconnect Source Server from service by Server ID.</p>")
    sourceServerID: sourceServerID,
  }
  type response = sourceServer
  @module("@aws-sdk/client-mgn") @new external new: request => t = "DisconnectFromServiceCommand"
  let make = (~sourceServerID, ()) => new({sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobs = {
  type t
  type request = {
    @ocaml.doc("<p>Request to describe Job logby next token.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Request to describe Job log by max results.</p>")
    maxResults: option<strictlyPositiveInteger>,
    @ocaml.doc("<p>Request to describe Job log filters.</p>") filters: describeJobsRequestFilters,
  }
  type response = {
    @ocaml.doc("<p>Request to describe Job response by next token.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Request to describe Job log items.</p>") items: option<jobsList>,
  }
  @module("@aws-sdk/client-mgn") @new external new: request => t = "DescribeJobsCommand"
  let make = (~filters, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ChangeServerLifeCycleState = {
  type t
  type request = {
    @ocaml.doc("<p>The request to change the source server migration lifecycle state.</p>")
    lifeCycle: changeServerLifeCycleStateSourceServerLifecycle,
    @ocaml.doc(
      "<p>The request to change the source server migration lifecycle state by source server ID.</p>"
    )
    sourceServerID: sourceServerID,
  }
  type response = sourceServer
  @module("@aws-sdk/client-mgn") @new
  external new: request => t = "ChangeServerLifeCycleStateCommand"
  let make = (~lifeCycle, ~sourceServerID, ()) =>
    new({lifeCycle: lifeCycle, sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSourceServers = {
  type t
  type request = {
    @ocaml.doc("<p>Request to filter Source Servers list by next token.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Request to filter Source Servers list by maximum results.</p>")
    maxResults: option<strictlyPositiveInteger>,
    @ocaml.doc("<p>Request to filter Source Servers list.</p>")
    filters: describeSourceServersRequestFilters,
  }
  type response = {
    @ocaml.doc("<p>Request to filter Source Servers next token.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Request to filter Source Servers list by item.</p>")
    items: option<sourceServersList>,
  }
  @module("@aws-sdk/client-mgn") @new external new: request => t = "DescribeSourceServersCommand"
  let make = (~filters, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
