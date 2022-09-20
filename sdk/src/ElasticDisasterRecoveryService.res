type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-drs") @new
external createClient: unit => awsServiceClient = "ElasticDisasterRecoveryServiceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type ebsSnapshot = string
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
  | @as("GP3") #GP3
  | @as("GP2") #GP2
  | @as("AUTO") #AUTO
]
type replicationConfigurationEbsEncryption = [@as("CUSTOM") #CUSTOM | @as("DEFAULT") #DEFAULT]
type replicationConfigurationDefaultLargeStagingDiskType = [
  | @as("ST1") #ST1
  | @as("GP3") #GP3
  | @as("GP2") #GP2
]
type replicationConfigurationDataPlaneRouting = [
  | @as("PUBLIC_IP") #PUBLIC_IP
  | @as("PRIVATE_IP") #PRIVATE_IP
]
type recoverySnapshotsOrder = [@as("DESC") #DESC | @as("ASC") #ASC]
type recoverySnapshotID = string

type recoveryInstanceID = string
type recoveryInstanceDataReplicationState = [
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
type recoveryInstanceDataReplicationInitiationStepStatus = [
  | @as("SKIPPED") #SKIPPED
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("NOT_STARTED") #NOT_STARTED
]
type recoveryInstanceDataReplicationInitiationStepName = [
  | @as("ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION")
  #ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION
  | @as("PAIR_AGENT_WITH_REPLICATION_SOFTWARE") #PAIR_AGENT_WITH_REPLICATION_SOFTWARE
  | @as("CONFIGURE_REPLICATION_SOFTWARE") #CONFIGURE_REPLICATION_SOFTWARE
  | @as("DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT")
  #DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT
  | @as("ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION") #ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION
  | @as("COMPLETE_VOLUME_MAPPING") #COMPLETE_VOLUME_MAPPING
  | @as("LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE") #LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE
]
type positiveInteger = float
type paginationToken = string
type pitpolicyRuleUnits = [@as("DAY") #DAY | @as("HOUR") #HOUR | @as("MINUTE") #MINUTE]
@ocaml.doc("<p>Configuration of a machine's license.</p>")
type licensing = {
  @ocaml.doc("<p>Whether to enable \"Bring your own license\" or not.</p>")
  osByol: option<baseBoolean>,
}
type launchStatus = [
  | @as("TERMINATED") #TERMINATED
  | @as("FAILED") #FAILED
  | @as("LAUNCHED") #LAUNCHED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING") #PENDING
]
type launchDisposition = [@as("STARTED") #STARTED | @as("STOPPED") #STOPPED]
type lastLaunchType = [@as("DRILL") #DRILL | @as("RECOVERY") #RECOVERY]
type lastLaunchResult = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("PENDING") #PENDING
  | @as("NOT_STARTED") #NOT_STARTED
]
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
  | @as("USING_PREVIOUS_SNAPSHOT_FAILED") #USING_PREVIOUS_SNAPSHOT_FAILED
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
  | @as("TERMINATE_RECOVERY_INSTANCES") #TERMINATE_RECOVERY_INSTANCES
  | @as("DIAGNOSTIC") #DIAGNOSTIC
  | @as("FAILBACK") #FAILBACK
  | @as("START_DRILL") #START_DRILL
  | @as("START_RECOVERY") #START_RECOVERY
]
type iso8601DatetimeString = string
type failbackState = [
  | @as("FAILBACK_ERROR") #FAILBACK_ERROR
  | @as("FAILBACK_COMPLETED") #FAILBACK_COMPLETED
  | @as("FAILBACK_READY_FOR_LAUNCH") #FAILBACK_READY_FOR_LAUNCH
  | @as("FAILBACK_IN_PROGRESS") #FAILBACK_IN_PROGRESS
  | @as("FAILBACK_NOT_STARTED") #FAILBACK_NOT_STARTED
]
type failbackReplicationError = [
  | @as("FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION")
  #FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION
  | @as("FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE")
  #FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE
  | @as("FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE") #FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE
  | @as("FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT")
  #FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT
  | @as("FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION")
  #FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION
  | @as("UNSTABLE_NETWORK") #UNSTABLE_NETWORK
  | @as("NOT_CONVERGING") #NOT_CONVERGING
  | @as("FAILBACK_CLIENT_NOT_SEEN") #FAILBACK_CLIENT_NOT_SEEN
  | @as("AGENT_NOT_SEEN") #AGENT_NOT_SEEN
]
type ebsVolumeID = string
type ec2InstanceType = string
type ec2InstanceState = [
  | @as("NOT_FOUND") #NOT_FOUND
  | @as("TERMINATED") #TERMINATED
  | @as("SHUTTING-DOWN") #SHUTTING_DOWN
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("RUNNING") #RUNNING
  | @as("PENDING") #PENDING
]
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
type boundedString = string

type accountID = string
type arn = string
@ocaml.doc("<p>Validate exception field.</p>")
type validationExceptionField = {
  @ocaml.doc("<p>Validate exception field message.</p>") message: option<largeBoundedString>,
  @ocaml.doc("<p>Validate exception field name.</p>") name: option<largeBoundedString>,
}
type tagsMap = Js.Dict.t<tagValue>
type tagKeys = array<tagKey>
@ocaml.doc("<p>An object representing the Source Server to recover.</p>")
type startRecoveryRequestSourceServer = {
  @ocaml.doc(
    "<p>The ID of a Recovery Snapshot we want to recover from. Omit this field to launch from the latest data by taking an on-demand snapshot.</p>"
  )
  recoverySnapshotID: option<recoverySnapshotID>,
  @ocaml.doc("<p>The ID of the Source Server you want to recover.</p>")
  sourceServerID: sourceServerID,
}
type startFailbackRequestRecoveryInstanceIDs = array<recoveryInstanceID>
type sourceServerIDs = array<sourceServerID>
type replicationServersSecurityGroupsIDs = array<securityGroupID>
type replicationConfigurationTemplateIDs = array<replicationConfigurationTemplateID>
@ocaml.doc("<p>The configuration of a disk of the Source Server to be replicated.</p>")
type replicationConfigurationReplicatedDisk = {
  @ocaml.doc(
    "<p>The throughput to use for the EBS volume in MiB/s. This parameter is valid only for gp3 volumes.</p>"
  )
  throughput: option<positiveInteger>,
  @ocaml.doc("<p>The requested number of I/O operations per second (IOPS).</p>")
  iops: option<positiveInteger>,
  @ocaml.doc("<p>The Staging Disk EBS volume type to be used during replication.</p>")
  stagingDiskType: option<replicationConfigurationReplicatedDiskStagingDiskType>,
  @ocaml.doc("<p>Whether to boot from this disk or not.</p>") isBootDisk: option<baseBoolean>,
  @ocaml.doc("<p>The name of the device.</p>") deviceName: option<boundedString>,
}
type recoveryInstancesForTerminationRequest = array<recoveryInstanceID>
type recoveryInstanceIDs = array<recoveryInstanceID>
@ocaml.doc("<p>An object representing failback related information of the Recovery Instance.</p>")
type recoveryInstanceFailback = {
  @ocaml.doc("<p>The amount of time that the Recovery Instance has been replicating for.</p>")
  elapsedReplicationDuration: option<iso8601DatetimeString>,
  @ocaml.doc(
    "<p>The date and time of the first byte that was replicated from the Recovery Instance.</p>"
  )
  firstByteDateTime: option<iso8601DatetimeString>,
  @ocaml.doc(
    "<p>Whether we are failing back to the original Source Server for this Recovery Instance.</p>"
  )
  failbackToOriginalServer: option<baseBoolean>,
  @ocaml.doc("<p>The date and time that the failback client was last seen by the service.</p>")
  failbackClientLastSeenByServiceDateTime: option<iso8601DatetimeString>,
  @ocaml.doc(
    "<p>The date and time the agent on the Recovery Instance was last seen by the service.</p>"
  )
  agentLastSeenByServiceDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>The state of the failback process that this Recovery Instance is in.</p>")
  state: option<failbackState>,
  @ocaml.doc("<p>The date and time that the failback initiation started.</p>")
  failbackInitiationTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>The Job ID of the last failback log for this Recovery Instance.</p>")
  failbackJobID: option<jobID>,
  @ocaml.doc("<p>The ID of the failback client that this Recovery Instance is associated with.</p>")
  failbackClientID: option<boundedString>,
}
@ocaml.doc("<p>An object representing a block storage device on the Recovery Instance.</p>")
type recoveryInstanceDisk = {
  @ocaml.doc("<p>The EBS Volume ID of this disk.</p>") ebsVolumeID: option<ebsVolumeID>,
  @ocaml.doc("<p>The amount of storage on the disk in bytes.</p>") bytes: option<positiveInteger>,
  @ocaml.doc(
    "<p>The internal device name of this disk. This is the name that is visible on the machine itself and not from the EC2 console.</p>"
  )
  internalDeviceName: option<boundedString>,
}
@ocaml.doc("<p>Data replication initiation step.</p>")
type recoveryInstanceDataReplicationInitiationStep = {
  @ocaml.doc("<p>The status of the step.</p>")
  status: option<recoveryInstanceDataReplicationInitiationStepStatus>,
  @ocaml.doc("<p>The name of the step.</p>")
  name: option<recoveryInstanceDataReplicationInitiationStepName>,
}
@ocaml.doc("<p>A disk that should be replicated.</p>")
type recoveryInstanceDataReplicationInfoReplicatedDisk = {
  @ocaml.doc("<p>The size of the replication backlog in bytes.</p>")
  backloggedStorageBytes: option<positiveInteger>,
  @ocaml.doc("<p>The amount of data to be rescanned in bytes.</p>")
  rescannedStorageBytes: option<positiveInteger>,
  @ocaml.doc("<p>The amount of data replicated so far in bytes.</p>")
  replicatedStorageBytes: option<positiveInteger>,
  @ocaml.doc("<p>The total amount of data to be replicated in bytes.</p>")
  totalStorageBytes: option<positiveInteger>,
  @ocaml.doc("<p>The name of the device.</p>") deviceName: option<boundedString>,
}
@ocaml.doc("<p>Error in data replication.</p>")
type recoveryInstanceDataReplicationError = {
  @ocaml.doc("<p>Error in data replication.</p>") rawError: option<largeBoundedString>,
  @ocaml.doc("<p>Error in data replication.</p>") error: option<failbackReplicationError>,
}
@ocaml.doc("<p>Represents a server participating in an asynchronous Job.</p>")
type participatingServer = {
  @ocaml.doc("<p>The launch status of a participating server.</p>")
  launchStatus: option<launchStatus>,
  @ocaml.doc("<p>The Recovery Instance ID of a participating server.</p>")
  recoveryInstanceID: option<recoveryInstanceID>,
  @ocaml.doc("<p>The Source Server ID of a participating server.</p>")
  sourceServerID: option<sourceServerID>,
}
@ocaml.doc(
  "<p>A rule in the Point in Time (PIT) policy representing when to take snapshots and how long to retain them for.</p>"
)
type pitpolicyRule = {
  @ocaml.doc("<p>Whether this rule is enabled or not.</p>") enabled: option<baseBoolean>,
  @ocaml.doc("<p>The duration to retain a snapshot for, in the chosen units.</p>")
  retentionDuration: strictlyPositiveInteger,
  @ocaml.doc("<p>How often, in the chosen units, a snapshot should be taken.</p>")
  interval: strictlyPositiveInteger,
  @ocaml.doc("<p>The units used to measure the interval and retentionDuration.</p>")
  units: pitpolicyRuleUnits,
  @ocaml.doc("<p>The ID of the rule.</p>") ruleID: option<positiveInteger>,
}
@ocaml.doc("<p>Operating System.</p>")
type os = {
  @ocaml.doc("<p>The long name of the Operating System.</p>") fullString: option<boundedString>,
}
@ocaml.doc(
  "<p>An object containing information regarding the initiation of the last launch of a Source Server.</p>"
)
type lifeCycleLastLaunchInitiated = {
  @ocaml.doc("<p>The Job type that was used to last launch the Source Server.</p>") @as("type")
  type_: option<lastLaunchType>,
  @ocaml.doc("<p>The ID of the Job that was used to last launch the Source Server.</p>")
  jobID: option<jobID>,
  @ocaml.doc("<p>The date and time the last Source Server launch was initiated.</p>")
  apiCallDateTime: option<iso8601DatetimeString>,
}
@ocaml.doc("<p>Metadata associated with a Job log.</p>")
type jobLogEventData = {
  @ocaml.doc("<p>A string representing a job error.</p>") rawError: option<largeBoundedString>,
  @ocaml.doc("<p>The ID of a Recovery Instance.</p>") targetInstanceID: option<ec2InstanceID>,
  @ocaml.doc("<p>The ID of a conversion server.</p>") conversionServerID: option<ec2InstanceID>,
  @ocaml.doc("<p>The ID of a Source Server.</p>") sourceServerID: option<sourceServerID>,
}
@ocaml.doc("<p>Hints used to uniquely identify a machine.</p>")
type identificationHints = {
  @ocaml.doc("<p>AWS Instance ID identification hint.</p>") awsInstanceID: option<ec2InstanceID>,
  @ocaml.doc("<p>vCenter VM path identification hint.</p>") vmWareUuid: option<boundedString>,
  @ocaml.doc("<p>Hostname identification hint.</p>") hostname: option<boundedString>,
  @ocaml.doc("<p>Fully Qualified Domain Name identification hint.</p>") fqdn: option<boundedString>,
}
type ipsList = array<boundedString>
type ebsSnapshotsList = array<ebsSnapshot>
@ocaml.doc("<p>An object representing a data storage device on a server.</p>")
type disk = {
  @ocaml.doc("<p>The amount of storage on the disk in bytes.</p>") bytes: option<positiveInteger>,
  @ocaml.doc("<p>The disk or device name.</p>") deviceName: option<boundedString>,
}
type describeSourceServersRequestFiltersIDs = array<sourceServerID>
@ocaml.doc("<p>A set of filters by which to return Recovery Snapshots.</p>")
type describeRecoverySnapshotsRequestFilters = {
  @ocaml.doc("<p>The end date in a date range query.</p>")
  toDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>The start date in a date range query.</p>")
  fromDateTime: option<iso8601DatetimeString>,
}
type describeJobsRequestFiltersJobIDs = array<jobID>
@ocaml.doc("<p>Data replication initiation step.</p>")
type dataReplicationInitiationStep = {
  @ocaml.doc("<p>The status of the step.</p>") status: option<dataReplicationInitiationStepStatus>,
  @ocaml.doc("<p>The name of the step.</p>") name: option<dataReplicationInitiationStepName>,
}
@ocaml.doc("<p>A disk that should be replicated.</p>")
type dataReplicationInfoReplicatedDisk = {
  @ocaml.doc("<p>The size of the replication backlog in bytes.</p>")
  backloggedStorageBytes: option<positiveInteger>,
  @ocaml.doc("<p>The amount of data to be rescanned in bytes.</p>")
  rescannedStorageBytes: option<positiveInteger>,
  @ocaml.doc("<p>The amount of data replicated so far in bytes.</p>")
  replicatedStorageBytes: option<positiveInteger>,
  @ocaml.doc("<p>The total amount of data to be replicated in bytes.</p>")
  totalStorageBytes: option<positiveInteger>,
  @ocaml.doc("<p>The name of the device.</p>") deviceName: option<boundedString>,
}
@ocaml.doc("<p>Error in data replication.</p>")
type dataReplicationError = {
  @ocaml.doc("<p>Error in data replication.</p>") rawError: option<largeBoundedString>,
  @ocaml.doc("<p>Error in data replication.</p>") error: option<dataReplicationErrorString>,
}
@ocaml.doc("<p>Information about a server's CPU.</p>")
type cpu = {
  @ocaml.doc("<p>The model name of the CPU.</p>") modelName: option<boundedString>,
  @ocaml.doc("<p>The number of CPU cores.</p>") cores: option<positiveInteger>,
}
type validationExceptionFieldList = array<validationExceptionField>
type startRecoveryRequestSourceServers = array<startRecoveryRequestSourceServer>
type replicationConfigurationReplicatedDisks = array<replicationConfigurationReplicatedDisk>
@ocaml.doc("<p>A snapshot of a Source Server used during recovery.</p>")
type recoverySnapshot = {
  @ocaml.doc("<p>A list of EBS snapshots.</p>") ebsSnapshots: option<ebsSnapshotsList>,
  @ocaml.doc("<p>The actual timestamp that the snapshot was taken.</p>") @as("timestamp")
  timestamp_: option<iso8601DatetimeString>,
  @ocaml.doc("<p>The timestamp of when we expect the snapshot to be taken.</p>")
  expectedTimestamp: iso8601DatetimeString,
  @ocaml.doc("<p>The ID of the Source Server that the snapshot was taken for.</p>")
  sourceServerID: sourceServerID,
  @ocaml.doc("<p>The ID of the Recovery Snapshot.</p>") snapshotID: recoverySnapshotID,
}
type recoveryInstanceDisks = array<recoveryInstanceDisk>
type recoveryInstanceDataReplicationInitiationSteps = array<
  recoveryInstanceDataReplicationInitiationStep,
>
type recoveryInstanceDataReplicationInfoReplicatedDisks = array<
  recoveryInstanceDataReplicationInfoReplicatedDisk,
>
type participatingServers = array<participatingServer>
type pitpolicy = array<pitpolicyRule>
@ocaml.doc("<p>Network interface.</p>")
type networkInterface = {
  @ocaml.doc("<p>Whether this is the primary network interface.</p>")
  isPrimary: option<baseBoolean>,
  @ocaml.doc("<p>Network interface IPs.</p>") ips: option<ipsList>,
  @ocaml.doc("<p>The MAC address of the network interface.</p>") macAddress: option<boundedString>,
}
@ocaml.doc("<p>An object containing information regarding the last launch of a Source Server.</p>")
type lifeCycleLastLaunch = {
  @ocaml.doc(
    "<p>An object containing information regarding the initiation of the last launch of a Source Server.</p>"
  )
  initiated: option<lifeCycleLastLaunchInitiated>,
}
@ocaml.doc("<p>A log outputted by a Job.</p>")
type jobLog = {
  @ocaml.doc("<p>Metadata associated with a Job log.</p>") eventData: option<jobLogEventData>,
  @ocaml.doc("<p>The event represents the type of a log.</p>") event: option<jobLogEvent>,
  @ocaml.doc("<p>The date and time the log was taken.</p>")
  logDateTime: option<iso8601DatetimeString>,
}
type disks = array<disk>
@ocaml.doc("<p>A set of filters by which to return Source Servers.</p>")
type describeSourceServersRequestFilters = {
  @ocaml.doc(
    "<p>An ID that describes the hardware of the Source Server. This is either an EC2 instance id, a VMware uuid or a mac address.</p>"
  )
  hardwareId: option<boundedString>,
  @ocaml.doc(
    "<p>An array of Source Servers IDs that should be returned. An empty array means all Source Servers.</p>"
  )
  sourceServerIDs: option<describeSourceServersRequestFiltersIDs>,
}
@ocaml.doc("<p>A set of filters by which to return Recovery Instances.</p>")
type describeRecoveryInstancesRequestFilters = {
  @ocaml.doc(
    "<p>An array of Source Server IDs for which associated Recovery Instances should be returned.</p>"
  )
  sourceServerIDs: option<sourceServerIDs>,
  @ocaml.doc(
    "<p>An array of Recovery Instance IDs that should be returned. An empty array means all Recovery Instances.</p>"
  )
  recoveryInstanceIDs: option<recoveryInstanceIDs>,
}
@ocaml.doc("<p>A set of filters by which to return Jobs.</p>")
type describeJobsRequestFilters = {
  @ocaml.doc("<p>The end date in a date range query.</p>") toDate: option<iso8601DatetimeString>,
  @ocaml.doc("<p>The start date in a date range query.</p>")
  fromDate: option<iso8601DatetimeString>,
  @ocaml.doc("<p>An array of Job IDs that should be returned. An empty array means all jobs.</p>")
  jobIDs: option<describeJobsRequestFiltersJobIDs>,
}
type dataReplicationInitiationSteps = array<dataReplicationInitiationStep>
type dataReplicationInfoReplicatedDisks = array<dataReplicationInfoReplicatedDisk>
type cpus = array<cpu>
type replicationConfigurationTemplate = {
  @ocaml.doc("<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>")
  pitPolicy: option<pitpolicy>,
  @ocaml.doc(
    "<p>A set of tags to be associated with the Replication Configuration Template resource.</p>"
  )
  tags: option<tagsMap>,
  @ocaml.doc(
    "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"
  )
  stagingAreaTags: option<tagsMap>,
  @ocaml.doc("<p>Whether to create a Public IP for the Recovery Instance by default.</p>")
  createPublicIP: option<baseBoolean>,
  @ocaml.doc("<p>The data plane routing mechanism that will be used for replication.</p>")
  dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
  @ocaml.doc(
    "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"
  )
  bandwidthThrottling: option<positiveInteger>,
  @ocaml.doc("<p>The ARN of the EBS encryption key to be used during replication.</p>")
  ebsEncryptionKeyArn: option<arn>,
  @ocaml.doc("<p>The type of EBS encryption to be used during replication.</p>")
  ebsEncryption: option<replicationConfigurationEbsEncryption>,
  @ocaml.doc("<p>The Staging Disk EBS volume type to be used during replication.</p>")
  defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
  @ocaml.doc(
    "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"
  )
  useDedicatedReplicationServer: option<baseBoolean>,
  @ocaml.doc("<p>The instance type to be used for the replication server.</p>")
  replicationServerInstanceType: option<ec2InstanceType>,
  @ocaml.doc("<p>The security group IDs that will be used by the replication server.</p>")
  replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
  @ocaml.doc(
    "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>"
  )
  associateDefaultSecurityGroup: option<baseBoolean>,
  @ocaml.doc("<p>The subnet to be used by the replication staging area.</p>")
  stagingAreaSubnetId: option<subnetID>,
  @ocaml.doc("<p>The Replication Configuration Template ARN.</p>") arn: option<arn>,
  @ocaml.doc("<p>The Replication Configuration Template ID.</p>")
  replicationConfigurationTemplateID: replicationConfigurationTemplateID,
}
type recoverySnapshotsList = array<recoverySnapshot>
@ocaml.doc("<p>Data replication initiation.</p>")
type recoveryInstanceDataReplicationInitiation = {
  @ocaml.doc("<p>The steps of the current attempt to initiate data replication.</p>")
  steps: option<recoveryInstanceDataReplicationInitiationSteps>,
  @ocaml.doc("<p>The date and time of the current attempt to initiate data replication.</p>")
  startDateTime: option<iso8601DatetimeString>,
}
type networkInterfaces = array<networkInterface>
@ocaml.doc("<p>An object representing the Source Server Lifecycle.</p>")
type lifeCycle = {
  @ocaml.doc(
    "<p>An object containing information regarding the last launch of the Source Server.</p>"
  )
  lastLaunch: option<lifeCycleLastLaunch>,
  @ocaml.doc("<p>The date and time this Source Server was last seen by the service.</p>")
  lastSeenByServiceDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>The amount of time that the Source Server has been replicating for.</p>")
  elapsedReplicationDuration: option<iso8601DatetimeString>,
  @ocaml.doc(
    "<p>The date and time of the first byte that was replicated from the Source Server.</p>"
  )
  firstByteDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>The date and time of when the Source Server was added to the service.</p>")
  addedToServiceDateTime: option<iso8601DatetimeString>,
}
type jobLogs = array<jobLog>
@ocaml.doc("<p>A job is an asynchronous workflow.</p>")
type job = {
  @ocaml.doc("<p>A list of tags associated with the Job.</p>") tags: option<tagsMap>,
  @ocaml.doc("<p>A list of servers that the Job is acting upon.</p>")
  participatingServers: option<participatingServers>,
  @ocaml.doc("<p>The status of the Job.</p>") status: option<jobStatus>,
  @ocaml.doc("<p>The date and time of when the Job ended.</p>")
  endDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>The date and time of when the Job was created.</p>")
  creationDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>A string representing who initiated the Job.</p>")
  initiatedBy: option<initiatedBy>,
  @ocaml.doc("<p>The type of the Job.</p>") @as("type") type_: option<jobType>,
  @ocaml.doc("<p>The ARN of a Job.</p>") arn: option<arn>,
  @ocaml.doc("<p>The ID of the Job.</p>") jobID: jobID,
}
@ocaml.doc("<p>Data replication initiation.</p>")
type dataReplicationInitiation = {
  @ocaml.doc("<p>The steps of the current attempt to initiate data replication.</p>")
  steps: option<dataReplicationInitiationSteps>,
  @ocaml.doc("<p>The date and time of the next attempt to initiate data replication.</p>")
  nextAttemptDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>The date and time of the current attempt to initiate data replication.</p>")
  startDateTime: option<iso8601DatetimeString>,
}
@ocaml.doc("<p>Properties of the Source Server machine.</p>")
type sourceProperties = {
  @ocaml.doc("<p>Operating system.</p>") os: option<os>,
  @ocaml.doc("<p>The amount of RAM in bytes.</p>") ramBytes: option<positiveInteger>,
  @ocaml.doc("<p>An array of CPUs.</p>") cpus: option<cpus>,
  @ocaml.doc("<p>An array of disks.</p>") disks: option<disks>,
  @ocaml.doc("<p>An array of network interfaces.</p>") networkInterfaces: option<networkInterfaces>,
  @ocaml.doc("<p>Hints used to uniquely identify a machine.</p>")
  identificationHints: option<identificationHints>,
  @ocaml.doc(
    "<p>The recommended EC2 instance type that will be used when recovering the Source Server.</p>"
  )
  recommendedInstanceType: option<ec2InstanceType>,
  @ocaml.doc("<p>The date and time the Source Properties were last updated on.</p>")
  lastUpdatedDateTime: option<iso8601DatetimeString>,
}
type replicationConfigurationTemplates = array<replicationConfigurationTemplate>
@ocaml.doc("<p>Properties of the Recovery Instance machine.</p>")
type recoveryInstanceProperties = {
  @ocaml.doc("<p>Operating system.</p>") os: option<os>,
  @ocaml.doc("<p>The amount of RAM in bytes.</p>") ramBytes: option<positiveInteger>,
  @ocaml.doc("<p>An array of CPUs.</p>") cpus: option<cpus>,
  @ocaml.doc("<p>An array of disks.</p>") disks: option<recoveryInstanceDisks>,
  @ocaml.doc("<p>An array of network interfaces.</p>") networkInterfaces: option<networkInterfaces>,
  @ocaml.doc("<p>Hints used to uniquely identify a machine.</p>")
  identificationHints: option<identificationHints>,
  @ocaml.doc("<p>The date and time the Recovery Instance properties were last updated on.</p>")
  lastUpdatedDateTime: option<iso8601DatetimeString>,
}
@ocaml.doc("<p>Information about Data Replication</p>")
type recoveryInstanceDataReplicationInfo = {
  @ocaml.doc("<p>Information about Data Replication</p>")
  dataReplicationError: option<recoveryInstanceDataReplicationError>,
  @ocaml.doc("<p>Information about whether the data replication has been initiated.</p>")
  dataReplicationInitiation: option<recoveryInstanceDataReplicationInitiation>,
  @ocaml.doc("<p>The state of the data replication.</p>")
  dataReplicationState: option<recoveryInstanceDataReplicationState>,
  @ocaml.doc("<p>The disks that should be replicated.</p>")
  replicatedDisks: option<recoveryInstanceDataReplicationInfoReplicatedDisks>,
  @ocaml.doc("<p>An estimate of when the data replication will be completed.</p>")
  etaDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>Data replication lag duration.</p>") lagDuration: option<iso8601DatetimeString>,
}
type jobsList = array<job>
@ocaml.doc("<p>Information about Data Replication</p>")
type dataReplicationInfo = {
  @ocaml.doc("<p>Error in data replication.</p>")
  dataReplicationError: option<dataReplicationError>,
  @ocaml.doc("<p>Information about whether the data replication has been initiated.</p>")
  dataReplicationInitiation: option<dataReplicationInitiation>,
  @ocaml.doc("<p>The state of the data replication.</p>")
  dataReplicationState: option<dataReplicationState>,
  @ocaml.doc("<p>The disks that should be replicated.</p>")
  replicatedDisks: option<dataReplicationInfoReplicatedDisks>,
  @ocaml.doc("<p>An estimate of when the data replication will be completed.</p>")
  etaDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>Data replication lag duration.</p>") lagDuration: option<iso8601DatetimeString>,
}
type sourceServer = {
  @ocaml.doc("<p>The source properties of the Source Server.</p>")
  sourceProperties: option<sourceProperties>,
  @ocaml.doc("<p>The lifecycle information of this Source Server.</p>")
  lifeCycle: option<lifeCycle>,
  @ocaml.doc("<p>The Data Replication Info of the Source Server.</p>")
  dataReplicationInfo: option<dataReplicationInfo>,
  @ocaml.doc("<p>The status of the last recovery launch of this Source Server.</p>")
  lastLaunchResult: option<lastLaunchResult>,
  @ocaml.doc("<p>The ID of the Recovery Instance associated with this Source Server.</p>")
  recoveryInstanceId: option<recoveryInstanceID>,
  @ocaml.doc("<p>The tags associated with the Source Server.</p>") tags: option<tagsMap>,
  @ocaml.doc("<p>The ARN of the Source Server.</p>") arn: option<arn>,
  @ocaml.doc("<p>The ID of the Source Server.</p>") sourceServerID: option<sourceServerID>,
}
@ocaml.doc("<p>A Recovery Instance is a replica of a Source Server running on EC2.</p>")
type recoveryInstance = {
  @ocaml.doc(
    "<p>Whether this Recovery Instance was created for a drill or for an actual Recovery event.</p>"
  )
  isDrill: option<baseBoolean>,
  @ocaml.doc(
    "<p>The date and time of the Point in Time (PIT) snapshot that this Recovery Instance was launched from.</p>"
  )
  pointInTimeSnapshotDateTime: option<iso8601DatetimeString>,
  @ocaml.doc("<p>Properties of the Recovery Instance machine.</p>")
  recoveryInstanceProperties: option<recoveryInstanceProperties>,
  @ocaml.doc("<p>The Data Replication Info of the Recovery Instance.</p>")
  dataReplicationInfo: option<recoveryInstanceDataReplicationInfo>,
  @ocaml.doc("<p>An object representing failback related information of the Recovery Instance.</p>")
  failback: option<recoveryInstanceFailback>,
  @ocaml.doc("<p>An array of tags that are associated with the Recovery Instance.</p>")
  tags: option<tagsMap>,
  @ocaml.doc("<p>The ARN of the Recovery Instance.</p>") arn: option<arn>,
  @ocaml.doc("<p>The Source Server ID that this Recovery Instance is associated with.</p>")
  sourceServerID: option<sourceServerID>,
  @ocaml.doc("<p>The ID of the Recovery Instance.</p>")
  recoveryInstanceID: option<recoveryInstanceID>,
  @ocaml.doc("<p>The ID of the Job that created the Recovery Instance.</p>") jobID: option<jobID>,
  @ocaml.doc("<p>The state of the EC2 instance for this Recovery Instance.</p>")
  ec2InstanceState: option<ec2InstanceState>,
  @ocaml.doc("<p>The EC2 instance ID of the Recovery Instance.</p>")
  ec2InstanceID: option<ec2InstanceID>,
}
@ocaml.doc("<p>AWS Elastic Disaster Recovery Service.</p>")
type sourceServersList = array<sourceServer>
type describeRecoveryInstancesItems = array<recoveryInstance>
module UpdateFailbackReplicationConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Whether to use Private IP for the failback replication of the Recovery Instance.</p>"
    )
    usePrivateIP: option<baseBoolean>,
    @ocaml.doc(
      "<p>Configure bandwidth throttling for the outbound data transfer rate of the Recovery Instance in Mbps.</p>"
    )
    bandwidthThrottling: option<positiveInteger>,
    @ocaml.doc("<p>The name of the Failback Replication Configuration.</p>")
    name: option<boundedString>,
    @ocaml.doc("<p>The ID of the Recovery Instance.</p>") recoveryInstanceID: recoveryInstanceID,
  }
  type response = {.}
  @module("@aws-sdk/client-drs") @new
  external new: request => t = "UpdateFailbackReplicationConfigurationCommand"
  let make = (~recoveryInstanceID, ~usePrivateIP=?, ~bandwidthThrottling=?, ~name=?, ()) =>
    new({
      usePrivateIP: usePrivateIP,
      bandwidthThrottling: bandwidthThrottling,
      name: name,
      recoveryInstanceID: recoveryInstanceID,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopFailback = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Recovery Instance we want to stop failback for.</p>")
    recoveryInstanceID: recoveryInstanceID,
  }
  type response = {.}
  @module("@aws-sdk/client-drs") @new external new: request => t = "StopFailbackCommand"
  let make = (~recoveryInstanceID, ()) => new({recoveryInstanceID: recoveryInstanceID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetLaunchConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the Source Server that we want to retrieve a Launch Configuration for.</p>"
    )
    sourceServerID: sourceServerID,
  }
  type response = {
    @ocaml.doc("<p>The licensing configuration to be used for this launch configuration.</p>")
    licensing: option<licensing>,
    @ocaml.doc(
      "<p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>"
    )
    copyTags: option<baseBoolean>,
    @ocaml.doc(
      "<p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>"
    )
    copyPrivateIp: option<baseBoolean>,
    @ocaml.doc(
      "<p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>"
    )
    targetInstanceTypeRightSizingMethod: option<targetInstanceTypeRightSizingMethod>,
    @ocaml.doc("<p>The state of the Recovery Instance in EC2 after the recovery operation.</p>")
    launchDisposition: option<launchDisposition>,
    @ocaml.doc("<p>The EC2 launch template ID of this launch configuration.</p>")
    ec2LaunchTemplateID: option<boundedString>,
    @ocaml.doc("<p>The name of the launch configuration.</p>") name: option<smallBoundedString>,
    @ocaml.doc("<p>The ID of the Source Server for this launch configuration.</p>")
    sourceServerID: option<sourceServerID>,
  }
  @module("@aws-sdk/client-drs") @new external new: request => t = "GetLaunchConfigurationCommand"
  let make = (~sourceServerID, ()) => new({sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFailbackReplicationConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the Recovery Instance whose failback replication configuration should be returned.</p>"
    )
    recoveryInstanceID: recoveryInstanceID,
  }
  type response = {
    @ocaml.doc(
      "<p>Whether to use Private IP for the failback replication of the Recovery Instance.</p>"
    )
    usePrivateIP: option<baseBoolean>,
    @ocaml.doc(
      "<p>Configure bandwidth throttling for the outbound data transfer rate of the Recovery Instance in Mbps.</p>"
    )
    bandwidthThrottling: option<positiveInteger>,
    @ocaml.doc("<p>The name of the Failback Replication Configuration.</p>")
    name: option<boundedString>,
    @ocaml.doc("<p>The ID of the Recovery Instance.</p>") recoveryInstanceID: recoveryInstanceID,
  }
  @module("@aws-sdk/client-drs") @new
  external new: request => t = "GetFailbackReplicationConfigurationCommand"
  let make = (~recoveryInstanceID, ()) => new({recoveryInstanceID: recoveryInstanceID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisconnectRecoveryInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Recovery Instance to disconnect.</p>")
    recoveryInstanceID: recoveryInstanceID,
  }
  type response = {.}
  @module("@aws-sdk/client-drs") @new
  external new: request => t = "DisconnectRecoveryInstanceCommand"
  let make = (~recoveryInstanceID, ()) => new({recoveryInstanceID: recoveryInstanceID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSourceServer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Source Server to be deleted.</p>") sourceServerID: sourceServerID,
  }
  type response = {.}
  @module("@aws-sdk/client-drs") @new external new: request => t = "DeleteSourceServerCommand"
  let make = (~sourceServerID, ()) => new({sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteReplicationConfigurationTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Replication Configuration Template to be deleted.</p>")
    replicationConfigurationTemplateID: replicationConfigurationTemplateID,
  }
  type response = {.}
  @module("@aws-sdk/client-drs") @new
  external new: request => t = "DeleteReplicationConfigurationTemplateCommand"
  let make = (~replicationConfigurationTemplateID, ()) =>
    new({replicationConfigurationTemplateID: replicationConfigurationTemplateID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRecoveryInstance = {
  type t
  type request = {
    @ocaml.doc("<p>RThe ID of the Recovery Instance to be deleted.</p>")
    recoveryInstanceID: recoveryInstanceID,
  }
  type response = {.}
  @module("@aws-sdk/client-drs") @new external new: request => t = "DeleteRecoveryInstanceCommand"
  let make = (~recoveryInstanceID, ()) => new({recoveryInstanceID: recoveryInstanceID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteJob = {
  type t
  type request = {@ocaml.doc("<p>The ID of the Job to be deleted.</p>") jobID: jobID}
  type response = {.}
  @module("@aws-sdk/client-drs") @new external new: request => t = "DeleteJobCommand"
  let make = (~jobID, ()) => new({jobID: jobID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateReplicationConfigurationTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>"
    )
    pitPolicy: option<pitpolicy>,
    @ocaml.doc(
      "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"
    )
    stagingAreaTags: option<tagsMap>,
    @ocaml.doc("<p>Whether to create a Public IP for the Recovery Instance by default.</p>")
    createPublicIP: option<baseBoolean>,
    @ocaml.doc("<p>The data plane routing mechanism that will be used for replication.</p>")
    dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
    @ocaml.doc(
      "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"
    )
    bandwidthThrottling: option<positiveInteger>,
    @ocaml.doc("<p>The ARN of the EBS encryption key to be used during replication.</p>")
    ebsEncryptionKeyArn: option<arn>,
    @ocaml.doc("<p>The type of EBS encryption to be used during replication.</p>")
    ebsEncryption: option<replicationConfigurationEbsEncryption>,
    @ocaml.doc("<p>The Staging Disk EBS volume type to be used during replication.</p>")
    defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
    @ocaml.doc(
      "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"
    )
    useDedicatedReplicationServer: option<baseBoolean>,
    @ocaml.doc("<p>The instance type to be used for the replication server.</p>")
    replicationServerInstanceType: option<ec2InstanceType>,
    @ocaml.doc("<p>The security group IDs that will be used by the replication server.</p>")
    replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
    @ocaml.doc(
      "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>"
    )
    associateDefaultSecurityGroup: option<baseBoolean>,
    @ocaml.doc("<p>The subnet to be used by the replication staging area.</p>")
    stagingAreaSubnetId: option<subnetID>,
    @ocaml.doc("<p>The Replication Configuration Template ARN.</p>") arn: option<arn>,
    @ocaml.doc("<p>The Replication Configuration Template ID.</p>")
    replicationConfigurationTemplateID: replicationConfigurationTemplateID,
  }
  type response = replicationConfigurationTemplate
  @module("@aws-sdk/client-drs") @new
  external new: request => t = "UpdateReplicationConfigurationTemplateCommand"
  let make = (
    ~replicationConfigurationTemplateID,
    ~pitPolicy=?,
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
      pitPolicy: pitPolicy,
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
    @ocaml.doc(
      "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>"
    )
    pitPolicy: option<pitpolicy>,
    @ocaml.doc(
      "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"
    )
    stagingAreaTags: option<tagsMap>,
    @ocaml.doc("<p>Whether to create a Public IP for the Recovery Instance by default.</p>")
    createPublicIP: option<baseBoolean>,
    @ocaml.doc("<p>The data plane routing mechanism that will be used for replication.</p>")
    dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
    @ocaml.doc(
      "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"
    )
    bandwidthThrottling: option<positiveInteger>,
    @ocaml.doc("<p>The ARN of the EBS encryption key to be used during replication.</p>")
    ebsEncryptionKeyArn: option<arn>,
    @ocaml.doc("<p>The type of EBS encryption to be used during replication.</p>")
    ebsEncryption: option<replicationConfigurationEbsEncryption>,
    @ocaml.doc("<p>The configuration of the disks of the Source Server to be replicated.</p>")
    replicatedDisks: option<replicationConfigurationReplicatedDisks>,
    @ocaml.doc("<p>The Staging Disk EBS volume type to be used during replication.</p>")
    defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
    @ocaml.doc(
      "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"
    )
    useDedicatedReplicationServer: option<baseBoolean>,
    @ocaml.doc("<p>The instance type to be used for the replication server.</p>")
    replicationServerInstanceType: option<ec2InstanceType>,
    @ocaml.doc("<p>The security group IDs that will be used by the replication server.</p>")
    replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
    @ocaml.doc(
      "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>"
    )
    associateDefaultSecurityGroup: option<baseBoolean>,
    @ocaml.doc("<p>The subnet to be used by the replication staging area.</p>")
    stagingAreaSubnetId: option<subnetID>,
    @ocaml.doc("<p>The name of the Replication Configuration.</p>")
    name: option<smallBoundedString>,
    @ocaml.doc("<p>The ID of the Source Server for this Replication Configuration.</p>")
    sourceServerID: sourceServerID,
  }
  type response = {
    @ocaml.doc(
      "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>"
    )
    pitPolicy: option<pitpolicy>,
    @ocaml.doc(
      "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"
    )
    stagingAreaTags: option<tagsMap>,
    @ocaml.doc("<p>Whether to create a Public IP for the Recovery Instance by default.</p>")
    createPublicIP: option<baseBoolean>,
    @ocaml.doc("<p>The data plane routing mechanism that will be used for replication.</p>")
    dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
    @ocaml.doc(
      "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"
    )
    bandwidthThrottling: option<positiveInteger>,
    @ocaml.doc("<p>The ARN of the EBS encryption key to be used during replication.</p>")
    ebsEncryptionKeyArn: option<arn>,
    @ocaml.doc("<p>The type of EBS encryption to be used during replication.</p>")
    ebsEncryption: option<replicationConfigurationEbsEncryption>,
    @ocaml.doc("<p>The configuration of the disks of the Source Server to be replicated.</p>")
    replicatedDisks: option<replicationConfigurationReplicatedDisks>,
    @ocaml.doc("<p>The Staging Disk EBS volume type to be used during replication.</p>")
    defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
    @ocaml.doc(
      "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"
    )
    useDedicatedReplicationServer: option<baseBoolean>,
    @ocaml.doc("<p>The instance type to be used for the replication server.</p>")
    replicationServerInstanceType: option<ec2InstanceType>,
    @ocaml.doc("<p>The security group IDs that will be used by the replication server.</p>")
    replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
    @ocaml.doc(
      "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>"
    )
    associateDefaultSecurityGroup: option<baseBoolean>,
    @ocaml.doc("<p>The subnet to be used by the replication staging area.</p>")
    stagingAreaSubnetId: option<subnetID>,
    @ocaml.doc("<p>The name of the Replication Configuration.</p>")
    name: option<smallBoundedString>,
    @ocaml.doc("<p>The ID of the Source Server for this Replication Configuration.</p>")
    sourceServerID: option<sourceServerID>,
  }
  @module("@aws-sdk/client-drs") @new
  external new: request => t = "UpdateReplicationConfigurationCommand"
  let make = (
    ~sourceServerID,
    ~pitPolicy=?,
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
      pitPolicy: pitPolicy,
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
    @ocaml.doc("<p>The licensing configuration to be used for this launch configuration.</p>")
    licensing: option<licensing>,
    @ocaml.doc(
      "<p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>"
    )
    copyTags: option<baseBoolean>,
    @ocaml.doc(
      "<p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>"
    )
    copyPrivateIp: option<baseBoolean>,
    @ocaml.doc(
      "<p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>"
    )
    targetInstanceTypeRightSizingMethod: option<targetInstanceTypeRightSizingMethod>,
    @ocaml.doc("<p>The state of the Recovery Instance in EC2 after the recovery operation.</p>")
    launchDisposition: option<launchDisposition>,
    @ocaml.doc("<p>The name of the launch configuration.</p>") name: option<smallBoundedString>,
    @ocaml.doc(
      "<p>The ID of the Source Server that we want to retrieve a Launch Configuration for.</p>"
    )
    sourceServerID: sourceServerID,
  }
  type response = {
    @ocaml.doc("<p>The licensing configuration to be used for this launch configuration.</p>")
    licensing: option<licensing>,
    @ocaml.doc(
      "<p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>"
    )
    copyTags: option<baseBoolean>,
    @ocaml.doc(
      "<p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>"
    )
    copyPrivateIp: option<baseBoolean>,
    @ocaml.doc(
      "<p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>"
    )
    targetInstanceTypeRightSizingMethod: option<targetInstanceTypeRightSizingMethod>,
    @ocaml.doc("<p>The state of the Recovery Instance in EC2 after the recovery operation.</p>")
    launchDisposition: option<launchDisposition>,
    @ocaml.doc("<p>The EC2 launch template ID of this launch configuration.</p>")
    ec2LaunchTemplateID: option<boundedString>,
    @ocaml.doc("<p>The name of the launch configuration.</p>") name: option<smallBoundedString>,
    @ocaml.doc("<p>The ID of the Source Server for this launch configuration.</p>")
    sourceServerID: option<sourceServerID>,
  }
  @module("@aws-sdk/client-drs") @new
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
    @ocaml.doc("<p>Array of tags to be removed.</p>") tagKeys: tagKeys,
    @ocaml.doc("<p>ARN of the resource for which tags are to be removed.</p>") resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-drs") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Array of tags to be added or updated.</p>") tags: tagsMap,
    @ocaml.doc("<p>ARN of the resource for which tags are to be added or updated.</p>")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-drs") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource whose tags should be returned.</p>") resourceArn: arn,
  }
  type response = {@ocaml.doc("<p>The tags of the requested resource.</p>") tags: option<tagsMap>}
  @module("@aws-sdk/client-drs") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InitializeService = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-drs") @new external new: request => t = "InitializeServiceCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetReplicationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Source Serve for this Replication Configuration.r</p>")
    sourceServerID: sourceServerID,
  }
  type response = {
    @ocaml.doc(
      "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>"
    )
    pitPolicy: option<pitpolicy>,
    @ocaml.doc(
      "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"
    )
    stagingAreaTags: option<tagsMap>,
    @ocaml.doc("<p>Whether to create a Public IP for the Recovery Instance by default.</p>")
    createPublicIP: option<baseBoolean>,
    @ocaml.doc("<p>The data plane routing mechanism that will be used for replication.</p>")
    dataPlaneRouting: option<replicationConfigurationDataPlaneRouting>,
    @ocaml.doc(
      "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"
    )
    bandwidthThrottling: option<positiveInteger>,
    @ocaml.doc("<p>The ARN of the EBS encryption key to be used during replication.</p>")
    ebsEncryptionKeyArn: option<arn>,
    @ocaml.doc("<p>The type of EBS encryption to be used during replication.</p>")
    ebsEncryption: option<replicationConfigurationEbsEncryption>,
    @ocaml.doc("<p>The configuration of the disks of the Source Server to be replicated.</p>")
    replicatedDisks: option<replicationConfigurationReplicatedDisks>,
    @ocaml.doc("<p>The Staging Disk EBS volume type to be used during replication.</p>")
    defaultLargeStagingDiskType: option<replicationConfigurationDefaultLargeStagingDiskType>,
    @ocaml.doc(
      "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"
    )
    useDedicatedReplicationServer: option<baseBoolean>,
    @ocaml.doc("<p>The instance type to be used for the replication server.</p>")
    replicationServerInstanceType: option<ec2InstanceType>,
    @ocaml.doc("<p>The security group IDs that will be used by the replication server.</p>")
    replicationServersSecurityGroupsIDs: option<replicationServersSecurityGroupsIDs>,
    @ocaml.doc(
      "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>"
    )
    associateDefaultSecurityGroup: option<baseBoolean>,
    @ocaml.doc("<p>The subnet to be used by the replication staging area.</p>")
    stagingAreaSubnetId: option<subnetID>,
    @ocaml.doc("<p>The name of the Replication Configuration.</p>")
    name: option<smallBoundedString>,
    @ocaml.doc("<p>The ID of the Source Server for this Replication Configuration.</p>")
    sourceServerID: option<sourceServerID>,
  }
  @module("@aws-sdk/client-drs") @new
  external new: request => t = "GetReplicationConfigurationCommand"
  let make = (~sourceServerID, ()) => new({sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReplicationConfigurationTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A set of tags to be associated with the Replication Configuration Template resource.</p>"
    )
    tags: option<tagsMap>,
    @ocaml.doc(
      "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>"
    )
    pitPolicy: pitpolicy,
    @ocaml.doc(
      "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"
    )
    stagingAreaTags: tagsMap,
    @ocaml.doc("<p>Whether to create a Public IP for the Recovery Instance by default.</p>")
    createPublicIP: baseBoolean,
    @ocaml.doc("<p>The data plane routing mechanism that will be used for replication.</p>")
    dataPlaneRouting: replicationConfigurationDataPlaneRouting,
    @ocaml.doc(
      "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"
    )
    bandwidthThrottling: positiveInteger,
    @ocaml.doc("<p>The ARN of the EBS encryption key to be used during replication.</p>")
    ebsEncryptionKeyArn: option<arn>,
    @ocaml.doc("<p>The type of EBS encryption to be used during replication.</p>")
    ebsEncryption: replicationConfigurationEbsEncryption,
    @ocaml.doc("<p>The Staging Disk EBS volume type to be used during replication.</p>")
    defaultLargeStagingDiskType: replicationConfigurationDefaultLargeStagingDiskType,
    @ocaml.doc(
      "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"
    )
    useDedicatedReplicationServer: baseBoolean,
    @ocaml.doc("<p>The instance type to be used for the replication server.</p>")
    replicationServerInstanceType: ec2InstanceType,
    @ocaml.doc("<p>The security group IDs that will be used by the replication server.</p>")
    replicationServersSecurityGroupsIDs: replicationServersSecurityGroupsIDs,
    @ocaml.doc(
      "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>"
    )
    associateDefaultSecurityGroup: baseBoolean,
    @ocaml.doc("<p>The subnet to be used by the replication staging area.</p>")
    stagingAreaSubnetId: subnetID,
  }
  type response = replicationConfigurationTemplate
  @module("@aws-sdk/client-drs") @new
  external new: request => t = "CreateReplicationConfigurationTemplateCommand"
  let make = (
    ~pitPolicy,
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
      pitPolicy: pitPolicy,
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

module TerminateRecoveryInstances = {
  type t
  type request = {
    @ocaml.doc("<p>The IDs of the Recovery Instances that should be terminated.</p>")
    recoveryInstanceIDs: recoveryInstancesForTerminationRequest,
  }
  type response = {
    @ocaml.doc("<p>The Job for terminating the Recovery Instances.</p>") job: option<job>,
  }
  @module("@aws-sdk/client-drs") @new
  external new: request => t = "TerminateRecoveryInstancesCommand"
  let make = (~recoveryInstanceIDs, ()) => new({recoveryInstanceIDs: recoveryInstanceIDs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartRecovery = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be associated with the Recovery Job.</p>") tags: option<tagsMap>,
    @ocaml.doc("<p>Whether this Source Server Recovery operation is a drill or not.</p>")
    isDrill: option<baseBoolean>,
    @ocaml.doc("<p>The Source Servers that we want to start a Recovery Job for.</p>")
    sourceServers: startRecoveryRequestSourceServers,
  }
  type response = {@ocaml.doc("<p>The Recovery Job.</p>") job: option<job>}
  @module("@aws-sdk/client-drs") @new external new: request => t = "StartRecoveryCommand"
  let make = (~sourceServers, ~tags=?, ~isDrill=?, ()) =>
    new({tags: tags, isDrill: isDrill, sourceServers: sourceServers})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartFailbackLaunch = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be associated with the failback launch Job.</p>")
    tags: option<tagsMap>,
    @ocaml.doc("<p>The IDs of the Recovery Instance whose failback launch we want to request.</p>")
    recoveryInstanceIDs: startFailbackRequestRecoveryInstanceIDs,
  }
  type response = {@ocaml.doc("<p>The failback launch Job.</p>") job: option<job>}
  @module("@aws-sdk/client-drs") @new external new: request => t = "StartFailbackLaunchCommand"
  let make = (~recoveryInstanceIDs, ~tags=?, ()) =>
    new({tags: tags, recoveryInstanceIDs: recoveryInstanceIDs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRecoverySnapshots = {
  type t
  type request = {
    @ocaml.doc("<p>The token of the next Recovery Snapshot to retrieve.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Maximum number of Recovery Snapshots to retrieve.</p>")
    maxResults: option<strictlyPositiveInteger>,
    @ocaml.doc("<p>The sorted ordering by which to return Recovery Snapshots.</p>")
    order: option<recoverySnapshotsOrder>,
    @ocaml.doc("<p>A set of filters by which to return Recovery Snapshots.</p>")
    filters: option<describeRecoverySnapshotsRequestFilters>,
    @ocaml.doc("<p>Filter Recovery Snapshots by Source Server ID.</p>")
    sourceServerID: sourceServerID,
  }
  type response = {
    @ocaml.doc("<p>The token of the next Recovery Snapshot to retrieve.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of Recovery Snapshots.</p>") items: option<recoverySnapshotsList>,
  }
  @module("@aws-sdk/client-drs") @new
  external new: request => t = "DescribeRecoverySnapshotsCommand"
  let make = (~sourceServerID, ~nextToken=?, ~maxResults=?, ~order=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      order: order,
      filters: filters,
      sourceServerID: sourceServerID,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobLogItems = {
  type t
  type request = {
    @ocaml.doc("<p>The token of the next Job log items to retrieve.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Maximum number of Job log items to retrieve.</p>")
    maxResults: option<strictlyPositiveInteger>,
    @ocaml.doc("<p>The ID of the Job for which Job log items will be retrieved.</p>") jobID: jobID,
  }
  type response = {
    @ocaml.doc("<p>The token of the next Job log items to retrieve.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of Job log items.</p>") items: option<jobLogs>,
  }
  @module("@aws-sdk/client-drs") @new external new: request => t = "DescribeJobLogItemsCommand"
  let make = (~jobID, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, jobID: jobID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RetryDataReplication = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Source Server whose data replication should be retried.</p>")
    sourceServerID: sourceServerID,
  }
  type response = sourceServer
  @module("@aws-sdk/client-drs") @new external new: request => t = "RetryDataReplicationCommand"
  let make = (~sourceServerID, ()) => new({sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisconnectSourceServer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Source Server to disconnect.</p>") sourceServerID: sourceServerID,
  }
  type response = sourceServer
  @module("@aws-sdk/client-drs") @new external new: request => t = "DisconnectSourceServerCommand"
  let make = (~sourceServerID, ()) => new({sourceServerID: sourceServerID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplicationConfigurationTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>The token of the next Replication Configuration Template to retrieve.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Maximum number of Replication Configuration Templates to retrieve.</p>")
    maxResults: option<strictlyPositiveInteger>,
    @ocaml.doc(
      "<p>The IDs of the Replication Configuration Templates to retrieve. An empty list means all Replication Configuration Templates.</p>"
    )
    replicationConfigurationTemplateIDs: replicationConfigurationTemplateIDs,
  }
  type response = {
    @ocaml.doc("<p>The token of the next Replication Configuration Template to retrieve.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of Replication Configuration Templates.</p>")
    items: option<replicationConfigurationTemplates>,
  }
  @module("@aws-sdk/client-drs") @new
  external new: request => t = "DescribeReplicationConfigurationTemplatesCommand"
  let make = (~replicationConfigurationTemplateIDs, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      replicationConfigurationTemplateIDs: replicationConfigurationTemplateIDs,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The token of the next Job to retrieve.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>Maximum number of Jobs to retrieve.</p>")
    maxResults: option<strictlyPositiveInteger>,
    @ocaml.doc("<p>A set of filters by which to return Jobs.</p>")
    filters: describeJobsRequestFilters,
  }
  type response = {
    @ocaml.doc("<p>The token of the next Job to retrieve.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of Jobs.</p>") items: option<jobsList>,
  }
  @module("@aws-sdk/client-drs") @new external new: request => t = "DescribeJobsCommand"
  let make = (~filters, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSourceServers = {
  type t
  type request = {
    @ocaml.doc("<p>The token of the next Source Server to retrieve.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Maximum number of Source Servers to retrieve.</p>")
    maxResults: option<strictlyPositiveInteger>,
    @ocaml.doc("<p>A set of filters by which to return Source Servers.</p>")
    filters: describeSourceServersRequestFilters,
  }
  type response = {
    @ocaml.doc("<p>The token of the next Source Server to retrieve.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of Source Servers.</p>") items: option<sourceServersList>,
  }
  @module("@aws-sdk/client-drs") @new external new: request => t = "DescribeSourceServersCommand"
  let make = (~filters, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRecoveryInstances = {
  type t
  type request = {
    @ocaml.doc("<p>The token of the next Recovery Instance to retrieve.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Maximum number of Recovery Instances to retrieve.</p>")
    maxResults: option<strictlyPositiveInteger>,
    @ocaml.doc("<p>A set of filters by which to return Recovery Instances.</p>")
    filters: describeRecoveryInstancesRequestFilters,
  }
  type response = {
    @ocaml.doc("<p>An array of Recovery Instances.</p>")
    items: option<describeRecoveryInstancesItems>,
    @ocaml.doc("<p>The token of the next Recovery Instance to retrieve.</p>")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-drs") @new
  external new: request => t = "DescribeRecoveryInstancesCommand"
  let make = (~filters, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
