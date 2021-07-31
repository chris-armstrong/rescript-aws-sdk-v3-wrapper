type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-elasticmapreduce") @new
external createClient: unit => awsServiceClient = "EMRClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type xmlStringMaxLen256 = string
type xmlString = string
type wholeNumber = int
type unit_ = [
  | @as("COUNT_PER_SECOND") #COUNT_PER_SECOND
  | @as("TERA_BITS_PER_SECOND") #TERA_BITS_PER_SECOND
  | @as("GIGA_BITS_PER_SECOND") #GIGA_BITS_PER_SECOND
  | @as("MEGA_BITS_PER_SECOND") #MEGA_BITS_PER_SECOND
  | @as("KILO_BITS_PER_SECOND") #KILO_BITS_PER_SECOND
  | @as("BITS_PER_SECOND") #BITS_PER_SECOND
  | @as("TERA_BYTES_PER_SECOND") #TERA_BYTES_PER_SECOND
  | @as("GIGA_BYTES_PER_SECOND") #GIGA_BYTES_PER_SECOND
  | @as("MEGA_BYTES_PER_SECOND") #MEGA_BYTES_PER_SECOND
  | @as("KILO_BYTES_PER_SECOND") #KILO_BYTES_PER_SECOND
  | @as("BYTES_PER_SECOND") #BYTES_PER_SECOND
  | @as("COUNT") #COUNT
  | @as("PERCENT") #PERCENT
  | @as("TERA_BITS") #TERA_BITS
  | @as("GIGA_BITS") #GIGA_BITS
  | @as("MEGA_BITS") #MEGA_BITS
  | @as("KILO_BITS") #KILO_BITS
  | @as("BITS") #BITS
  | @as("TERA_BYTES") #TERA_BYTES
  | @as("GIGA_BYTES") #GIGA_BYTES
  | @as("MEGA_BYTES") #MEGA_BYTES
  | @as("KILO_BYTES") #KILO_BYTES
  | @as("BYTES") #BYTES
  | @as("MILLI_SECONDS") #MILLI_SECONDS
  | @as("MICRO_SECONDS") #MICRO_SECONDS
  | @as("SECONDS") #SECONDS
  | @as("NONE") #NONE
]
type string_ = string
type stepStateChangeReasonCode = [@as("NONE") #NONE]
type stepState = [
  | @as("INTERRUPTED") #INTERRUPTED
  | @as("FAILED") #FAILED
  | @as("CANCELLED") #CANCELLED
  | @as("COMPLETED") #COMPLETED
  | @as("RUNNING") #RUNNING
  | @as("CANCEL_PENDING") #CANCEL_PENDING
  | @as("PENDING") #PENDING
]
type stepId = string
type stepExecutionState = [
  | @as("INTERRUPTED") #INTERRUPTED
  | @as("FAILED") #FAILED
  | @as("CANCELLED") #CANCELLED
  | @as("COMPLETED") #COMPLETED
  | @as("CONTINUE") #CONTINUE
  | @as("RUNNING") #RUNNING
  | @as("PENDING") #PENDING
]
type stepCancellationOption = [
  | @as("TERMINATE_PROCESS") #TERMINATE_PROCESS
  | @as("SEND_INTERRUPT") #SEND_INTERRUPT
]
type statistic = [
  | @as("MAXIMUM") #MAXIMUM
  | @as("MINIMUM") #MINIMUM
  | @as("SUM") #SUM
  | @as("AVERAGE") #AVERAGE
  | @as("SAMPLE_COUNT") #SAMPLE_COUNT
]
type spotProvisioningTimeoutAction = [
  | @as("TERMINATE_CLUSTER") #TERMINATE_CLUSTER
  | @as("SWITCH_TO_ON_DEMAND") #SWITCH_TO_ON_DEMAND
]
type spotProvisioningAllocationStrategy = [@as("capacity-optimized") #Capacity_Optimized]
type scaleDownBehavior = [
  | @as("TERMINATE_AT_TASK_COMPLETION") #TERMINATE_AT_TASK_COMPLETION
  | @as("TERMINATE_AT_INSTANCE_HOUR") #TERMINATE_AT_INSTANCE_HOUR
]
type resourceId = string
type repoUpgradeOnBoot = [@as("NONE") #NONE | @as("SECURITY") #SECURITY]
type port = int
type placementGroupStrategy = [
  | @as("NONE") #NONE
  | @as("CLUSTER") #CLUSTER
  | @as("PARTITION") #PARTITION
  | @as("SPREAD") #SPREAD
]
type optionalArnType = string
type onDemandProvisioningAllocationStrategy = [@as("lowest-price") #Lowest_Price]
type onDemandCapacityReservationUsageStrategy = [
  | @as("use-capacity-reservations-first") #Use_Capacity_Reservations_First
]
type onDemandCapacityReservationPreference = [@as("none") #None | @as("open") #Open]
type notebookExecutionStatus = [
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("STOP_PENDING") #STOP_PENDING
  | @as("FAILED") #FAILED
  | @as("FAILING") #FAILING
  | @as("FINISHED") #FINISHED
  | @as("FINISHING") #FINISHING
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
  | @as("START_PENDING") #START_PENDING
]
type nonNegativeDouble = float
type marketType = [@as("SPOT") #SPOT | @as("ON_DEMAND") #ON_DEMAND]
type marker = string
type long = float
type jobFlowExecutionState = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("TERMINATED") #TERMINATED
  | @as("SHUTTING_DOWN") #SHUTTING_DOWN
  | @as("WAITING") #WAITING
  | @as("RUNNING") #RUNNING
  | @as("BOOTSTRAPPING") #BOOTSTRAPPING
  | @as("STARTING") #STARTING
]
type integer_ = int
type instanceType = string
type instanceStateChangeReasonCode = [
  | @as("CLUSTER_TERMINATED") #CLUSTER_TERMINATED
  | @as("BOOTSTRAP_FAILURE") #BOOTSTRAP_FAILURE
  | @as("INSTANCE_FAILURE") #INSTANCE_FAILURE
  | @as("VALIDATION_ERROR") #VALIDATION_ERROR
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
]
type instanceState = [
  | @as("TERMINATED") #TERMINATED
  | @as("RUNNING") #RUNNING
  | @as("BOOTSTRAPPING") #BOOTSTRAPPING
  | @as("PROVISIONING") #PROVISIONING
  | @as("AWAITING_FULFILLMENT") #AWAITING_FULFILLMENT
]
type instanceRoleType = [@as("TASK") #TASK | @as("CORE") #CORE | @as("MASTER") #MASTER]
type instanceId = string
type instanceGroupType = [@as("TASK") #TASK | @as("CORE") #CORE | @as("MASTER") #MASTER]
type instanceGroupStateChangeReasonCode = [
  | @as("CLUSTER_TERMINATED") #CLUSTER_TERMINATED
  | @as("INSTANCE_FAILURE") #INSTANCE_FAILURE
  | @as("VALIDATION_ERROR") #VALIDATION_ERROR
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
]
type instanceGroupState = [
  | @as("ENDED") #ENDED
  | @as("SHUTTING_DOWN") #SHUTTING_DOWN
  | @as("ARRESTED") #ARRESTED
  | @as("TERMINATED") #TERMINATED
  | @as("TERMINATING") #TERMINATING
  | @as("SUSPENDED") #SUSPENDED
  | @as("RESIZING") #RESIZING
  | @as("RECONFIGURING") #RECONFIGURING
  | @as("RUNNING") #RUNNING
  | @as("BOOTSTRAPPING") #BOOTSTRAPPING
  | @as("PROVISIONING") #PROVISIONING
]
type instanceGroupId = string
type instanceFleetType = [@as("TASK") #TASK | @as("CORE") #CORE | @as("MASTER") #MASTER]
type instanceFleetStateChangeReasonCode = [
  | @as("CLUSTER_TERMINATED") #CLUSTER_TERMINATED
  | @as("INSTANCE_FAILURE") #INSTANCE_FAILURE
  | @as("VALIDATION_ERROR") #VALIDATION_ERROR
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
]
type instanceFleetState = [
  | @as("TERMINATED") #TERMINATED
  | @as("TERMINATING") #TERMINATING
  | @as("SUSPENDED") #SUSPENDED
  | @as("RESIZING") #RESIZING
  | @as("RUNNING") #RUNNING
  | @as("BOOTSTRAPPING") #BOOTSTRAPPING
  | @as("PROVISIONING") #PROVISIONING
]
type instanceFleetId = string
type instanceCollectionType = [
  | @as("INSTANCE_GROUP") #INSTANCE_GROUP
  | @as("INSTANCE_FLEET") #INSTANCE_FLEET
]
type identityType = [@as("GROUP") #GROUP | @as("USER") #USER]
type executionEngineType = [@as("EMR") #EMR]
type errorMessage = string
type errorCode = string
type date = Js.Date.t
type computeLimitsUnitType = [
  | @as("VCPU") #VCPU
  | @as("Instances") #Instances
  | @as("InstanceFleetUnits") #InstanceFleetUnits
]
type comparisonOperator = [
  | @as("LESS_THAN_OR_EQUAL") #LESS_THAN_OR_EQUAL
  | @as("LESS_THAN") #LESS_THAN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("GREATER_THAN_OR_EQUAL") #GREATER_THAN_OR_EQUAL
]
type clusterStateChangeReasonCode = [
  | @as("ALL_STEPS_COMPLETED") #ALL_STEPS_COMPLETED
  | @as("STEP_FAILURE") #STEP_FAILURE
  | @as("USER_REQUEST") #USER_REQUEST
  | @as("BOOTSTRAP_FAILURE") #BOOTSTRAP_FAILURE
  | @as("INSTANCE_FLEET_TIMEOUT") #INSTANCE_FLEET_TIMEOUT
  | @as("INSTANCE_FAILURE") #INSTANCE_FAILURE
  | @as("VALIDATION_ERROR") #VALIDATION_ERROR
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
]
type clusterState = [
  | @as("TERMINATED_WITH_ERRORS") #TERMINATED_WITH_ERRORS
  | @as("TERMINATED") #TERMINATED
  | @as("TERMINATING") #TERMINATING
  | @as("WAITING") #WAITING
  | @as("RUNNING") #RUNNING
  | @as("BOOTSTRAPPING") #BOOTSTRAPPING
  | @as("STARTING") #STARTING
]
type clusterId = string
type cancelStepsRequestStatus = [@as("FAILED") #FAILED | @as("SUBMITTED") #SUBMITTED]
type booleanObject = bool
type boolean_ = bool
type autoScalingPolicyStateChangeReasonCode = [
  | @as("CLEANUP_FAILURE") #CLEANUP_FAILURE
  | @as("PROVISION_FAILURE") #PROVISION_FAILURE
  | @as("USER_REQUEST") #USER_REQUEST
]
type autoScalingPolicyState = [
  | @as("FAILED") #FAILED
  | @as("DETACHED") #DETACHED
  | @as("DETACHING") #DETACHING
  | @as("ATTACHED") #ATTACHED
  | @as("ATTACHING") #ATTACHING
  | @as("PENDING") #PENDING
]
type authMode = [@as("IAM") #IAM | @as("SSO") #SSO]
type arnType = string
type adjustmentType = [
  | @as("EXACT_CAPACITY") #EXACT_CAPACITY
  | @as("PERCENT_CHANGE_IN_CAPACITY") #PERCENT_CHANGE_IN_CAPACITY
  | @as("CHANGE_IN_CAPACITY") #CHANGE_IN_CAPACITY
]
type actionOnFailure = [
  | @as("CONTINUE") #CONTINUE
  | @as("CANCEL_AND_WAIT") #CANCEL_AND_WAIT
  | @as("TERMINATE_CLUSTER") #TERMINATE_CLUSTER
  | @as("TERMINATE_JOB_FLOW") #TERMINATE_JOB_FLOW
]
type xmlStringMaxLen256List = array<xmlStringMaxLen256>
type xmlStringList = array<xmlString>
type volumeSpecification = {
  @as("SizeInGB") sizeInGB: integer_,
  @as("Iops") iops: option<integer_>,
  @as("VolumeType") volumeType: string_,
}
type tag = {
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>,
}
type supportedProductsList = array<xmlStringMaxLen256>
type subnetIdList = array<string_>
type studioSummary = {
  @as("CreationTime") creationTime: option<date>,
  @as("Url") url: option<xmlStringMaxLen256>,
  @as("Description") description: option<xmlStringMaxLen256>,
  @as("VpcId") vpcId: option<xmlStringMaxLen256>,
  @as("Name") name: option<xmlStringMaxLen256>,
  @as("StudioId") studioId: option<xmlStringMaxLen256>,
}
type stringMap = Js.Dict.t<string_>
type stringList = array<string_>
type stepTimeline = {
  @as("EndDateTime") endDateTime: option<date>,
  @as("StartDateTime") startDateTime: option<date>,
  @as("CreationDateTime") creationDateTime: option<date>,
}
type stepStateList = array<stepState>
type stepStateChangeReason = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<stepStateChangeReasonCode>,
}
type stepIdsList = array<xmlStringMaxLen256>
type stepExecutionStatusDetail = {
  @as("LastStateChangeReason") lastStateChangeReason: option<xmlString>,
  @as("EndDateTime") endDateTime: option<date>,
  @as("StartDateTime") startDateTime: option<date>,
  @as("CreationDateTime") creationDateTime: date,
  @as("State") state: stepExecutionState,
}
type spotProvisioningSpecification = {
  @as("AllocationStrategy") allocationStrategy: option<spotProvisioningAllocationStrategy>,
  @as("BlockDurationMinutes") blockDurationMinutes: option<wholeNumber>,
  @as("TimeoutAction") timeoutAction: spotProvisioningTimeoutAction,
  @as("TimeoutDurationMinutes") timeoutDurationMinutes: wholeNumber,
}
type simpleScalingPolicyConfiguration = {
  @as("CoolDown") coolDown: option<integer_>,
  @as("ScalingAdjustment") scalingAdjustment: integer_,
  @as("AdjustmentType") adjustmentType: option<adjustmentType>,
}
type sessionMappingSummary = {
  @as("CreationTime") creationTime: option<date>,
  @as("SessionPolicyArn") sessionPolicyArn: option<xmlStringMaxLen256>,
  @as("IdentityType") identityType: option<identityType>,
  @as("IdentityName") identityName: option<xmlStringMaxLen256>,
  @as("IdentityId") identityId: option<xmlStringMaxLen256>,
  @as("StudioId") studioId: option<xmlStringMaxLen256>,
}
type sessionMappingDetail = {
  @as("LastModifiedTime") lastModifiedTime: option<date>,
  @as("CreationTime") creationTime: option<date>,
  @as("SessionPolicyArn") sessionPolicyArn: option<xmlStringMaxLen256>,
  @as("IdentityType") identityType: option<identityType>,
  @as("IdentityName") identityName: option<xmlStringMaxLen256>,
  @as("IdentityId") identityId: option<xmlStringMaxLen256>,
  @as("StudioId") studioId: option<xmlStringMaxLen256>,
}
type securityGroupsList = array<xmlStringMaxLen256>
type securityConfigurationSummary = {
  @as("CreationDateTime") creationDateTime: option<date>,
  @as("Name") name: option<xmlString>,
}
type scalingConstraints = {
  @as("MaxCapacity") maxCapacity: integer_,
  @as("MinCapacity") minCapacity: integer_,
}
type portRange = {
  @as("MaxRange") maxRange: option<port>,
  @as("MinRange") minRange: port,
}
type placementGroupConfig = {
  @as("PlacementStrategy") placementStrategy: option<placementGroupStrategy>,
  @as("InstanceRole") instanceRole: instanceRoleType,
}
type onDemandCapacityReservationOptions = {
  @as("CapacityReservationResourceGroupArn")
  capacityReservationResourceGroupArn: option<xmlStringMaxLen256>,
  @as("CapacityReservationPreference")
  capacityReservationPreference: option<onDemandCapacityReservationPreference>,
  @as("UsageStrategy") usageStrategy: option<onDemandCapacityReservationUsageStrategy>,
}
type notebookExecutionSummary = {
  @as("EndTime") endTime: option<date>,
  @as("StartTime") startTime: option<date>,
  @as("Status") status: option<notebookExecutionStatus>,
  @as("NotebookExecutionName") notebookExecutionName: option<xmlStringMaxLen256>,
  @as("EditorId") editorId: option<xmlStringMaxLen256>,
  @as("NotebookExecutionId") notebookExecutionId: option<xmlStringMaxLen256>,
}
type metricDimension = {
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>,
}
type keyValue = {
  @as("Value") value: option<xmlString>,
  @as("Key") key: option<xmlString>,
}
type kerberosAttributes = {
  @as("ADDomainJoinPassword") addomainJoinPassword: option<xmlStringMaxLen256>,
  @as("ADDomainJoinUser") addomainJoinUser: option<xmlStringMaxLen256>,
  @as("CrossRealmTrustPrincipalPassword")
  crossRealmTrustPrincipalPassword: option<xmlStringMaxLen256>,
  @as("KdcAdminPassword") kdcAdminPassword: xmlStringMaxLen256,
  @as("Realm") realm: xmlStringMaxLen256,
}
type jobFlowExecutionStatusDetail = {
  @as("LastStateChangeReason") lastStateChangeReason: option<xmlString>,
  @as("EndDateTime") endDateTime: option<date>,
  @as("ReadyDateTime") readyDateTime: option<date>,
  @as("StartDateTime") startDateTime: option<date>,
  @as("CreationDateTime") creationDateTime: date,
  @as("State") state: jobFlowExecutionState,
}
type jobFlowExecutionStateList = array<jobFlowExecutionState>
type instanceTimeline = {
  @as("EndDateTime") endDateTime: option<date>,
  @as("ReadyDateTime") readyDateTime: option<date>,
  @as("CreationDateTime") creationDateTime: option<date>,
}
type instanceStateList = array<instanceState>
type instanceStateChangeReason = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<instanceStateChangeReasonCode>,
}
type instanceGroupTypeList = array<instanceGroupType>
type instanceGroupTimeline = {
  @as("EndDateTime") endDateTime: option<date>,
  @as("ReadyDateTime") readyDateTime: option<date>,
  @as("CreationDateTime") creationDateTime: option<date>,
}
type instanceGroupStateChangeReason = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<instanceGroupStateChangeReasonCode>,
}
type instanceGroupIdsList = array<xmlStringMaxLen256>
type instanceGroupDetail = {
  @as("EndDateTime") endDateTime: option<date>,
  @as("ReadyDateTime") readyDateTime: option<date>,
  @as("StartDateTime") startDateTime: option<date>,
  @as("CreationDateTime") creationDateTime: date,
  @as("LastStateChangeReason") lastStateChangeReason: option<xmlString>,
  @as("State") state: instanceGroupState,
  @as("InstanceRunningCount") instanceRunningCount: integer_,
  @as("InstanceRequestCount") instanceRequestCount: integer_,
  @as("InstanceType") instanceType: instanceType,
  @as("BidPrice") bidPrice: option<xmlStringMaxLen256>,
  @as("InstanceRole") instanceRole: instanceRoleType,
  @as("Market") market: marketType,
  @as("Name") name: option<xmlStringMaxLen256>,
  @as("InstanceGroupId") instanceGroupId: option<xmlStringMaxLen256>,
}
type instanceFleetTimeline = {
  @as("EndDateTime") endDateTime: option<date>,
  @as("ReadyDateTime") readyDateTime: option<date>,
  @as("CreationDateTime") creationDateTime: option<date>,
}
type instanceFleetStateChangeReason = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<instanceFleetStateChangeReasonCode>,
}
type instanceFleetModifyConfig = {
  @as("TargetSpotCapacity") targetSpotCapacity: option<wholeNumber>,
  @as("TargetOnDemandCapacity") targetOnDemandCapacity: option<wholeNumber>,
  @as("InstanceFleetId") instanceFleetId: instanceFleetId,
}
type failureDetails = {
  @as("LogFile") logFile: option<string_>,
  @as("Message") message: option<string_>,
  @as("Reason") reason: option<string_>,
}
type executionEngineConfig = {
  @as("MasterInstanceSecurityGroupId") masterInstanceSecurityGroupId: option<xmlStringMaxLen256>,
  @as("Type") type_: option<executionEngineType>,
  @as("Id") id: xmlStringMaxLen256,
}
type ebsVolume = {
  @as("VolumeId") volumeId: option<string_>,
  @as("Device") device: option<string_>,
}
type ec2InstanceIdsToTerminateList = array<instanceId>
type ec2InstanceIdsList = array<instanceId>
type computeLimits = {
  @as("MaximumCoreCapacityUnits") maximumCoreCapacityUnits: option<integer_>,
  @as("MaximumOnDemandCapacityUnits") maximumOnDemandCapacityUnits: option<integer_>,
  @as("MaximumCapacityUnits") maximumCapacityUnits: integer_,
  @as("MinimumCapacityUnits") minimumCapacityUnits: integer_,
  @as("UnitType") unitType: computeLimitsUnitType,
}
type clusterTimeline = {
  @as("EndDateTime") endDateTime: option<date>,
  @as("ReadyDateTime") readyDateTime: option<date>,
  @as("CreationDateTime") creationDateTime: option<date>,
}
type clusterStateList = array<clusterState>
type clusterStateChangeReason = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<clusterStateChangeReasonCode>,
}
type cancelStepsInfo = {
  @as("Reason") reason: option<string_>,
  @as("Status") status: option<cancelStepsRequestStatus>,
  @as("StepId") stepId: option<stepId>,
}
type blockPublicAccessConfigurationMetadata = {
  @as("CreatedByArn") createdByArn: arnType,
  @as("CreationDateTime") creationDateTime: date,
}
type autoScalingPolicyStateChangeReason = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<autoScalingPolicyStateChangeReasonCode>,
}
type tagList_ = array<tag>
type supportedProductConfig = {
  @as("Args") args: option<xmlStringList>,
  @as("Name") name: option<xmlStringMaxLen256>,
}
type studioSummaryList = array<studioSummary>
type stepStatus = {
  @as("Timeline") timeline: option<stepTimeline>,
  @as("FailureDetails") failureDetails: option<failureDetails>,
  @as("StateChangeReason") stateChangeReason: option<stepStateChangeReason>,
  @as("State") state: option<stepState>,
}
type sessionMappingSummaryList = array<sessionMappingSummary>
type securityConfigurationList = array<securityConfigurationSummary>
type scriptBootstrapActionConfig = {
  @as("Args") args: option<xmlStringList>,
  @as("Path") path: xmlString,
}
type scalingAction = {
  @as("SimpleScalingPolicyConfiguration")
  simpleScalingPolicyConfiguration: simpleScalingPolicyConfiguration,
  @as("Market") market: option<marketType>,
}
type portRanges = array<portRange>
type placementType = {
  @as("AvailabilityZones") availabilityZones: option<xmlStringMaxLen256List>,
  @as("AvailabilityZone") availabilityZone: option<xmlString>,
}
type placementGroupConfigList = array<placementGroupConfig>
type onDemandProvisioningSpecification = {
  @as("CapacityReservationOptions")
  capacityReservationOptions: option<onDemandCapacityReservationOptions>,
  @as("AllocationStrategy") allocationStrategy: onDemandProvisioningAllocationStrategy,
}
type notebookExecutionSummaryList = array<notebookExecutionSummary>
type metricDimensionList = array<metricDimension>
type managedScalingPolicy = {@as("ComputeLimits") computeLimits: option<computeLimits>}
type keyValueList = array<keyValue>
type instanceStatus = {
  @as("Timeline") timeline: option<instanceTimeline>,
  @as("StateChangeReason") stateChangeReason: option<instanceStateChangeReason>,
  @as("State") state: option<instanceState>,
}
type instanceResizePolicy = {
  @as("InstanceTerminationTimeout") instanceTerminationTimeout: option<integer_>,
  @as("InstancesToProtect") instancesToProtect: option<ec2InstanceIdsList>,
  @as("InstancesToTerminate") instancesToTerminate: option<ec2InstanceIdsList>,
}
type instanceGroupStatus = {
  @as("Timeline") timeline: option<instanceGroupTimeline>,
  @as("StateChangeReason") stateChangeReason: option<instanceGroupStateChangeReason>,
  @as("State") state: option<instanceGroupState>,
}
type instanceGroupDetailList = array<instanceGroupDetail>
type instanceFleetStatus = {
  @as("Timeline") timeline: option<instanceFleetTimeline>,
  @as("StateChangeReason") stateChangeReason: option<instanceFleetStateChangeReason>,
  @as("State") state: option<instanceFleetState>,
}
type hadoopStepConfig = {
  @as("Args") args: option<stringList>,
  @as("MainClass") mainClass: option<string_>,
  @as("Properties") properties: option<stringMap>,
  @as("Jar") jar: option<string_>,
}
type ec2InstanceAttributes = {
  @as("AdditionalSlaveSecurityGroups") additionalSlaveSecurityGroups: option<stringList>,
  @as("AdditionalMasterSecurityGroups") additionalMasterSecurityGroups: option<stringList>,
  @as("ServiceAccessSecurityGroup") serviceAccessSecurityGroup: option<string_>,
  @as("EmrManagedSlaveSecurityGroup") emrManagedSlaveSecurityGroup: option<string_>,
  @as("EmrManagedMasterSecurityGroup") emrManagedMasterSecurityGroup: option<string_>,
  @as("IamInstanceProfile") iamInstanceProfile: option<string_>,
  @as("RequestedEc2AvailabilityZones")
  requestedEc2AvailabilityZones: option<xmlStringMaxLen256List>,
  @as("Ec2AvailabilityZone") ec2AvailabilityZone: option<string_>,
  @as("RequestedEc2SubnetIds") requestedEc2SubnetIds: option<xmlStringMaxLen256List>,
  @as("Ec2SubnetId") ec2SubnetId: option<string_>,
  @as("Ec2KeyName") ec2KeyName: option<string_>,
}
type ebsVolumeList = array<ebsVolume>
type ebsBlockDeviceConfig = {
  @as("VolumesPerInstance") volumesPerInstance: option<integer_>,
  @as("VolumeSpecification") volumeSpecification: volumeSpecification,
}
type ebsBlockDevice = {
  @as("Device") device: option<string_>,
  @as("VolumeSpecification") volumeSpecification: option<volumeSpecification>,
}
type command = {
  @as("Args") args: option<stringList>,
  @as("ScriptPath") scriptPath: option<string_>,
  @as("Name") name: option<string_>,
}
type clusterStatus = {
  @as("Timeline") timeline: option<clusterTimeline>,
  @as("StateChangeReason") stateChangeReason: option<clusterStateChangeReason>,
  @as("State") state: option<clusterState>,
}
type cancelStepsInfoList = array<cancelStepsInfo>
type autoScalingPolicyStatus = {
  @as("StateChangeReason") stateChangeReason: option<autoScalingPolicyStateChangeReason>,
  @as("State") state: option<autoScalingPolicyState>,
}
type application = {
  @as("AdditionalInfo") additionalInfo: option<stringMap>,
  @as("Args") args: option<stringList>,
  @as("Version") version: option<string_>,
  @as("Name") name: option<string_>,
}
type studio = {
  @as("Tags") tags: option<tagList_>,
  @as("DefaultS3Location") defaultS3Location: option<xmlString>,
  @as("CreationTime") creationTime: option<date>,
  @as("Url") url: option<xmlString>,
  @as("EngineSecurityGroupId") engineSecurityGroupId: option<xmlStringMaxLen256>,
  @as("WorkspaceSecurityGroupId") workspaceSecurityGroupId: option<xmlStringMaxLen256>,
  @as("UserRole") userRole: option<xmlString>,
  @as("ServiceRole") serviceRole: option<xmlString>,
  @as("SubnetIds") subnetIds: option<subnetIdList>,
  @as("VpcId") vpcId: option<xmlStringMaxLen256>,
  @as("AuthMode") authMode: option<authMode>,
  @as("Description") description: option<xmlStringMaxLen256>,
  @as("Name") name: option<xmlStringMaxLen256>,
  @as("StudioArn") studioArn: option<xmlStringMaxLen256>,
  @as("StudioId") studioId: option<xmlStringMaxLen256>,
}
type stepSummary = {
  @as("Status") status: option<stepStatus>,
  @as("ActionOnFailure") actionOnFailure: option<actionOnFailure>,
  @as("Config") config: option<hadoopStepConfig>,
  @as("Name") name: option<string_>,
  @as("Id") id: option<stepId>,
}
type step = {
  @as("Status") status: option<stepStatus>,
  @as("ActionOnFailure") actionOnFailure: option<actionOnFailure>,
  @as("Config") config: option<hadoopStepConfig>,
  @as("Name") name: option<string_>,
  @as("Id") id: option<stepId>,
}
type shrinkPolicy = {
  @as("InstanceResizePolicy") instanceResizePolicy: option<instanceResizePolicy>,
  @as("DecommissionTimeout") decommissionTimeout: option<integer_>,
}
type notebookExecution = {
  @as("Tags") tags: option<tagList_>,
  @as("NotebookInstanceSecurityGroupId")
  notebookInstanceSecurityGroupId: option<xmlStringMaxLen256>,
  @as("LastStateChangeReason") lastStateChangeReason: option<xmlString>,
  @as("OutputNotebookURI") outputNotebookURI: option<xmlString>,
  @as("Arn") arn: option<xmlStringMaxLen256>,
  @as("EndTime") endTime: option<date>,
  @as("StartTime") startTime: option<date>,
  @as("Status") status: option<notebookExecutionStatus>,
  @as("NotebookParams") notebookParams: option<xmlString>,
  @as("NotebookExecutionName") notebookExecutionName: option<xmlStringMaxLen256>,
  @as("ExecutionEngine") executionEngine: option<executionEngineConfig>,
  @as("EditorId") editorId: option<xmlStringMaxLen256>,
  @as("NotebookExecutionId") notebookExecutionId: option<xmlStringMaxLen256>,
}
type newSupportedProductsList = array<supportedProductConfig>
type jobFlowInstancesDetail = {
  @as("HadoopVersion") hadoopVersion: option<xmlStringMaxLen256>,
  @as("TerminationProtected") terminationProtected: option<boolean_>,
  @as("KeepJobFlowAliveWhenNoSteps") keepJobFlowAliveWhenNoSteps: option<boolean_>,
  @as("Placement") placement: option<placementType>,
  @as("Ec2SubnetId") ec2SubnetId: option<xmlStringMaxLen256>,
  @as("Ec2KeyName") ec2KeyName: option<xmlStringMaxLen256>,
  @as("NormalizedInstanceHours") normalizedInstanceHours: option<integer_>,
  @as("InstanceGroups") instanceGroups: option<instanceGroupDetailList>,
  @as("InstanceCount") instanceCount: integer_,
  @as("SlaveInstanceType") slaveInstanceType: instanceType,
  @as("MasterInstanceId") masterInstanceId: option<xmlString>,
  @as("MasterPublicDnsName") masterPublicDnsName: option<xmlString>,
  @as("MasterInstanceType") masterInstanceType: instanceType,
}
type instanceFleetProvisioningSpecifications = {
  @as("OnDemandSpecification") onDemandSpecification: option<onDemandProvisioningSpecification>,
  @as("SpotSpecification") spotSpecification: option<spotProvisioningSpecification>,
}
type instance = {
  @as("EbsVolumes") ebsVolumes: option<ebsVolumeList>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("Market") market: option<marketType>,
  @as("InstanceFleetId") instanceFleetId: option<instanceFleetId>,
  @as("InstanceGroupId") instanceGroupId: option<string_>,
  @as("Status") status: option<instanceStatus>,
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("PrivateDnsName") privateDnsName: option<string_>,
  @as("PublicIpAddress") publicIpAddress: option<string_>,
  @as("PublicDnsName") publicDnsName: option<string_>,
  @as("Ec2InstanceId") ec2InstanceId: option<instanceId>,
  @as("Id") id: option<instanceId>,
}
type hadoopJarStepConfig = {
  @as("Args") args: option<xmlStringList>,
  @as("MainClass") mainClass: option<xmlString>,
  @as("Jar") jar: xmlString,
  @as("Properties") properties: option<keyValueList>,
}
type ebsBlockDeviceList = array<ebsBlockDevice>
type ebsBlockDeviceConfigList = array<ebsBlockDeviceConfig>
type commandList = array<command>
type clusterSummary = {
  @as("OutpostArn") outpostArn: option<optionalArnType>,
  @as("ClusterArn") clusterArn: option<arnType>,
  @as("NormalizedInstanceHours") normalizedInstanceHours: option<integer_>,
  @as("Status") status: option<clusterStatus>,
  @as("Name") name: option<string_>,
  @as("Id") id: option<clusterId>,
}
type cloudWatchAlarmDefinition = {
  @as("Dimensions") dimensions: option<metricDimensionList>,
  @as("Unit") unit_: option<unit_>,
  @as("Threshold") threshold: nonNegativeDouble,
  @as("Statistic") statistic: option<statistic>,
  @as("Period") period: integer_,
  @as("Namespace") namespace: option<string_>,
  @as("MetricName") metricName: string_,
  @as("EvaluationPeriods") evaluationPeriods: option<integer_>,
  @as("ComparisonOperator") comparisonOperator: comparisonOperator,
}
type bootstrapActionConfig = {
  @as("ScriptBootstrapAction") scriptBootstrapAction: scriptBootstrapActionConfig,
  @as("Name") name: xmlStringMaxLen256,
}
type applicationList = array<application>
type stepSummaryList = array<stepSummary>
type stepConfig = {
  @as("HadoopJarStep") hadoopJarStep: hadoopJarStepConfig,
  @as("ActionOnFailure") actionOnFailure: option<actionOnFailure>,
  @as("Name") name: xmlStringMaxLen256,
}
type scalingTrigger = {
  @as("CloudWatchAlarmDefinition") cloudWatchAlarmDefinition: cloudWatchAlarmDefinition,
}
type instanceList = array<instance>
type ebsConfiguration = {
  @as("EbsOptimized") ebsOptimized: option<booleanObject>,
  @as("EbsBlockDeviceConfigs") ebsBlockDeviceConfigs: option<ebsBlockDeviceConfigList>,
}
type clusterSummaryList = array<clusterSummary>
type bootstrapActionDetail = {
  @as("BootstrapActionConfig") bootstrapActionConfig: option<bootstrapActionConfig>,
}
type bootstrapActionConfigList = array<bootstrapActionConfig>
type stepDetail = {
  @as("ExecutionStatusDetail") executionStatusDetail: stepExecutionStatusDetail,
  @as("StepConfig") stepConfig: stepConfig,
}
type stepConfigList = array<stepConfig>
type scalingRule = {
  @as("Trigger") trigger: scalingTrigger,
  @as("Action") action: scalingAction,
  @as("Description") description: option<string_>,
  @as("Name") name: string_,
}
type bootstrapActionDetailList = array<bootstrapActionDetail>
type stepDetailList = array<stepDetail>
type scalingRuleList = array<scalingRule>
type jobFlowDetail = {
  @as("ScaleDownBehavior") scaleDownBehavior: option<scaleDownBehavior>,
  @as("AutoScalingRole") autoScalingRole: option<xmlString>,
  @as("ServiceRole") serviceRole: option<xmlString>,
  @as("JobFlowRole") jobFlowRole: option<xmlString>,
  @as("VisibleToAllUsers") visibleToAllUsers: option<boolean_>,
  @as("SupportedProducts") supportedProducts: option<supportedProductsList>,
  @as("BootstrapActions") bootstrapActions: option<bootstrapActionDetailList>,
  @as("Steps") steps: option<stepDetailList>,
  @as("Instances") instances: jobFlowInstancesDetail,
  @as("ExecutionStatusDetail") executionStatusDetail: jobFlowExecutionStatusDetail,
  @as("AmiVersion") amiVersion: option<xmlStringMaxLen256>,
  @as("LogEncryptionKmsKeyId") logEncryptionKmsKeyId: option<xmlString>,
  @as("LogUri") logUri: option<xmlString>,
  @as("Name") name: xmlStringMaxLen256,
  @as("JobFlowId") jobFlowId: xmlStringMaxLen256,
}
type autoScalingPolicyDescription = {
  @as("Rules") rules: option<scalingRuleList>,
  @as("Constraints") constraints: option<scalingConstraints>,
  @as("Status") status: option<autoScalingPolicyStatus>,
}
type autoScalingPolicy = {
  @as("Rules") rules: scalingRuleList,
  @as("Constraints") constraints: scalingConstraints,
}
type jobFlowDetailList = array<jobFlowDetail>
type rec configurationList = array<configuration>
and configuration = {
  @as("Properties") properties: option<stringMap>,
  @as("Configurations") configurations: option<configurationList>,
  @as("Classification") classification: option<string_>,
}
type instanceTypeSpecification = {
  @as("EbsOptimized") ebsOptimized: option<booleanObject>,
  @as("EbsBlockDevices") ebsBlockDevices: option<ebsBlockDeviceList>,
  @as("Configurations") configurations: option<configurationList>,
  @as("BidPriceAsPercentageOfOnDemandPrice")
  bidPriceAsPercentageOfOnDemandPrice: option<nonNegativeDouble>,
  @as("BidPrice") bidPrice: option<xmlStringMaxLen256>,
  @as("WeightedCapacity") weightedCapacity: option<wholeNumber>,
  @as("InstanceType") instanceType: option<instanceType>,
}
type instanceTypeConfig = {
  @as("Configurations") configurations: option<configurationList>,
  @as("EbsConfiguration") ebsConfiguration: option<ebsConfiguration>,
  @as("BidPriceAsPercentageOfOnDemandPrice")
  bidPriceAsPercentageOfOnDemandPrice: option<nonNegativeDouble>,
  @as("BidPrice") bidPrice: option<xmlStringMaxLen256>,
  @as("WeightedCapacity") weightedCapacity: option<wholeNumber>,
  @as("InstanceType") instanceType: instanceType,
}
type instanceGroupModifyConfig = {
  @as("Configurations") configurations: option<configurationList>,
  @as("ShrinkPolicy") shrinkPolicy: option<shrinkPolicy>,
  @as("EC2InstanceIdsToTerminate") ec2InstanceIdsToTerminate: option<ec2InstanceIdsToTerminateList>,
  @as("InstanceCount") instanceCount: option<integer_>,
  @as("InstanceGroupId") instanceGroupId: xmlStringMaxLen256,
}
type instanceGroupConfig = {
  @as("AutoScalingPolicy") autoScalingPolicy: option<autoScalingPolicy>,
  @as("EbsConfiguration") ebsConfiguration: option<ebsConfiguration>,
  @as("Configurations") configurations: option<configurationList>,
  @as("InstanceCount") instanceCount: integer_,
  @as("InstanceType") instanceType: instanceType,
  @as("BidPrice") bidPrice: option<xmlStringMaxLen256>,
  @as("InstanceRole") instanceRole: instanceRoleType,
  @as("Market") market: option<marketType>,
  @as("Name") name: option<xmlStringMaxLen256>,
}
type instanceGroup = {
  @as("AutoScalingPolicy") autoScalingPolicy: option<autoScalingPolicyDescription>,
  @as("ShrinkPolicy") shrinkPolicy: option<shrinkPolicy>,
  @as("EbsOptimized") ebsOptimized: option<booleanObject>,
  @as("EbsBlockDevices") ebsBlockDevices: option<ebsBlockDeviceList>,
  @as("LastSuccessfullyAppliedConfigurationsVersion")
  lastSuccessfullyAppliedConfigurationsVersion: option<long>,
  @as("LastSuccessfullyAppliedConfigurations")
  lastSuccessfullyAppliedConfigurations: option<configurationList>,
  @as("ConfigurationsVersion") configurationsVersion: option<long>,
  @as("Configurations") configurations: option<configurationList>,
  @as("Status") status: option<instanceGroupStatus>,
  @as("RunningInstanceCount") runningInstanceCount: option<integer_>,
  @as("RequestedInstanceCount") requestedInstanceCount: option<integer_>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("BidPrice") bidPrice: option<string_>,
  @as("InstanceGroupType") instanceGroupType: option<instanceGroupType>,
  @as("Market") market: option<marketType>,
  @as("Name") name: option<string_>,
  @as("Id") id: option<instanceGroupId>,
}
type cluster = {
  @as("PlacementGroups") placementGroups: option<placementGroupConfigList>,
  @as("StepConcurrencyLevel") stepConcurrencyLevel: option<integer_>,
  @as("OutpostArn") outpostArn: option<optionalArnType>,
  @as("ClusterArn") clusterArn: option<arnType>,
  @as("KerberosAttributes") kerberosAttributes: option<kerberosAttributes>,
  @as("RepoUpgradeOnBoot") repoUpgradeOnBoot: option<repoUpgradeOnBoot>,
  @as("EbsRootVolumeSize") ebsRootVolumeSize: option<integer_>,
  @as("CustomAmiId") customAmiId: option<xmlStringMaxLen256>,
  @as("ScaleDownBehavior") scaleDownBehavior: option<scaleDownBehavior>,
  @as("AutoScalingRole") autoScalingRole: option<xmlString>,
  @as("SecurityConfiguration") securityConfiguration: option<xmlString>,
  @as("Configurations") configurations: option<configurationList>,
  @as("MasterPublicDnsName") masterPublicDnsName: option<string_>,
  @as("NormalizedInstanceHours") normalizedInstanceHours: option<integer_>,
  @as("ServiceRole") serviceRole: option<string_>,
  @as("Tags") tags: option<tagList_>,
  @as("Applications") applications: option<applicationList>,
  @as("VisibleToAllUsers") visibleToAllUsers: option<boolean_>,
  @as("TerminationProtected") terminationProtected: option<boolean_>,
  @as("AutoTerminate") autoTerminate: option<boolean_>,
  @as("ReleaseLabel") releaseLabel: option<string_>,
  @as("RunningAmiVersion") runningAmiVersion: option<string_>,
  @as("RequestedAmiVersion") requestedAmiVersion: option<string_>,
  @as("LogEncryptionKmsKeyId") logEncryptionKmsKeyId: option<string_>,
  @as("LogUri") logUri: option<string_>,
  @as("InstanceCollectionType") instanceCollectionType: option<instanceCollectionType>,
  @as("Ec2InstanceAttributes") ec2InstanceAttributes: option<ec2InstanceAttributes>,
  @as("Status") status: option<clusterStatus>,
  @as("Name") name: option<string_>,
  @as("Id") id: option<clusterId>,
}
type blockPublicAccessConfiguration = {
  @as("Properties") properties: option<stringMap>,
  @as("Configurations") configurations: option<configurationList>,
  @as("Classification") classification: option<string_>,
  @as("PermittedPublicSecurityGroupRuleRanges")
  permittedPublicSecurityGroupRuleRanges: option<portRanges>,
  @as("BlockPublicSecurityGroupRules") blockPublicSecurityGroupRules: boolean_,
}
type instanceTypeSpecificationList = array<instanceTypeSpecification>
type instanceTypeConfigList = array<instanceTypeConfig>
type instanceGroupModifyConfigList = array<instanceGroupModifyConfig>
type instanceGroupList = array<instanceGroup>
type instanceGroupConfigList = array<instanceGroupConfig>
type instanceFleetConfig = {
  @as("LaunchSpecifications") launchSpecifications: option<instanceFleetProvisioningSpecifications>,
  @as("InstanceTypeConfigs") instanceTypeConfigs: option<instanceTypeConfigList>,
  @as("TargetSpotCapacity") targetSpotCapacity: option<wholeNumber>,
  @as("TargetOnDemandCapacity") targetOnDemandCapacity: option<wholeNumber>,
  @as("InstanceFleetType") instanceFleetType: instanceFleetType,
  @as("Name") name: option<xmlStringMaxLen256>,
}
type instanceFleet = {
  @as("LaunchSpecifications") launchSpecifications: option<instanceFleetProvisioningSpecifications>,
  @as("InstanceTypeSpecifications")
  instanceTypeSpecifications: option<instanceTypeSpecificationList>,
  @as("ProvisionedSpotCapacity") provisionedSpotCapacity: option<wholeNumber>,
  @as("ProvisionedOnDemandCapacity") provisionedOnDemandCapacity: option<wholeNumber>,
  @as("TargetSpotCapacity") targetSpotCapacity: option<wholeNumber>,
  @as("TargetOnDemandCapacity") targetOnDemandCapacity: option<wholeNumber>,
  @as("InstanceFleetType") instanceFleetType: option<instanceFleetType>,
  @as("Status") status: option<instanceFleetStatus>,
  @as("Name") name: option<xmlStringMaxLen256>,
  @as("Id") id: option<instanceFleetId>,
}
type instanceFleetList = array<instanceFleet>
type instanceFleetConfigList = array<instanceFleetConfig>
type jobFlowInstancesConfig = {
  @as("AdditionalSlaveSecurityGroups") additionalSlaveSecurityGroups: option<securityGroupsList>,
  @as("AdditionalMasterSecurityGroups") additionalMasterSecurityGroups: option<securityGroupsList>,
  @as("ServiceAccessSecurityGroup") serviceAccessSecurityGroup: option<xmlStringMaxLen256>,
  @as("EmrManagedSlaveSecurityGroup") emrManagedSlaveSecurityGroup: option<xmlStringMaxLen256>,
  @as("EmrManagedMasterSecurityGroup") emrManagedMasterSecurityGroup: option<xmlStringMaxLen256>,
  @as("Ec2SubnetIds") ec2SubnetIds: option<xmlStringMaxLen256List>,
  @as("Ec2SubnetId") ec2SubnetId: option<xmlStringMaxLen256>,
  @as("HadoopVersion") hadoopVersion: option<xmlStringMaxLen256>,
  @as("TerminationProtected") terminationProtected: option<boolean_>,
  @as("KeepJobFlowAliveWhenNoSteps") keepJobFlowAliveWhenNoSteps: option<boolean_>,
  @as("Placement") placement: option<placementType>,
  @as("Ec2KeyName") ec2KeyName: option<xmlStringMaxLen256>,
  @as("InstanceFleets") instanceFleets: option<instanceFleetConfigList>,
  @as("InstanceGroups") instanceGroups: option<instanceGroupConfigList>,
  @as("InstanceCount") instanceCount: option<integer_>,
  @as("SlaveInstanceType") slaveInstanceType: option<instanceType>,
  @as("MasterInstanceType") masterInstanceType: option<instanceType>,
}

module UpdateStudioSessionMapping = {
  type t
  type request = {
    @as("SessionPolicyArn") sessionPolicyArn: xmlStringMaxLen256,
    @as("IdentityType") identityType: identityType,
    @as("IdentityName") identityName: option<xmlStringMaxLen256>,
    @as("IdentityId") identityId: option<xmlStringMaxLen256>,
    @as("StudioId") studioId: xmlStringMaxLen256,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "UpdateStudioSessionMappingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopNotebookExecution = {
  type t
  type request = {@as("NotebookExecutionId") notebookExecutionId: xmlStringMaxLen256}

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "StopNotebookExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveManagedScalingPolicy = {
  type t
  type request = {@as("ClusterId") clusterId: clusterId}
  type response = unit
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "RemoveManagedScalingPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveAutoScalingPolicy = {
  type t
  type request = {
    @as("InstanceGroupId") instanceGroupId: instanceGroupId,
    @as("ClusterId") clusterId: clusterId,
  }
  type response = unit
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "RemoveAutoScalingPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyCluster = {
  type t
  type request = {
    @as("StepConcurrencyLevel") stepConcurrencyLevel: option<integer_>,
    @as("ClusterId") clusterId: string_,
  }
  type response = {@as("StepConcurrencyLevel") stepConcurrencyLevel: option<integer_>}
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "ModifyClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSecurityConfiguration = {
  type t
  type request = {@as("Name") name: xmlString}
  type response = {
    @as("CreationDateTime") creationDateTime: option<date>,
    @as("SecurityConfiguration") securityConfiguration: option<string_>,
    @as("Name") name: option<xmlString>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "DescribeSecurityConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStudioSessionMapping = {
  type t
  type request = {
    @as("IdentityType") identityType: identityType,
    @as("IdentityName") identityName: option<xmlStringMaxLen256>,
    @as("IdentityId") identityId: option<xmlStringMaxLen256>,
    @as("StudioId") studioId: xmlStringMaxLen256,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "DeleteStudioSessionMappingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteStudio = {
  type t
  type request = {@as("StudioId") studioId: xmlStringMaxLen256}

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "DeleteStudioCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSecurityConfiguration = {
  type t
  type request = {@as("Name") name: xmlString}
  type response = unit
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "DeleteSecurityConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStudioSessionMapping = {
  type t
  type request = {
    @as("SessionPolicyArn") sessionPolicyArn: xmlStringMaxLen256,
    @as("IdentityType") identityType: identityType,
    @as("IdentityName") identityName: option<xmlStringMaxLen256>,
    @as("IdentityId") identityId: option<xmlStringMaxLen256>,
    @as("StudioId") studioId: xmlStringMaxLen256,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "CreateStudioSessionMappingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateSecurityConfiguration = {
  type t
  type request = {
    @as("SecurityConfiguration") securityConfiguration: string_,
    @as("Name") name: xmlString,
  }
  type response = {
    @as("CreationDateTime") creationDateTime: date,
    @as("Name") name: xmlString,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "CreateSecurityConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStudio = {
  type t
  type request = {
    @as("DefaultS3Location") defaultS3Location: option<xmlString>,
    @as("SubnetIds") subnetIds: option<subnetIdList>,
    @as("Description") description: option<xmlStringMaxLen256>,
    @as("Name") name: option<xmlStringMaxLen256>,
    @as("StudioId") studioId: xmlStringMaxLen256,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "UpdateStudioCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TerminateJobFlows = {
  type t
  type request = {@as("JobFlowIds") jobFlowIds: xmlStringList}

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "TerminateJobFlowsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetVisibleToAllUsers = {
  type t
  type request = {
    @as("VisibleToAllUsers") visibleToAllUsers: boolean_,
    @as("JobFlowIds") jobFlowIds: xmlStringList,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "SetVisibleToAllUsersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetTerminationProtection = {
  type t
  type request = {
    @as("TerminationProtected") terminationProtected: boolean_,
    @as("JobFlowIds") jobFlowIds: xmlStringList,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "SetTerminationProtectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveTags = {
  type t
  type request = {
    @as("TagKeys") tagKeys: stringList,
    @as("ResourceId") resourceId: resourceId,
  }
  type response = unit
  @module("@aws-sdk/client-elasticmapreduce") @new external new_: request => t = "RemoveTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyInstanceFleet = {
  type t
  type request = {
    @as("InstanceFleet") instanceFleet: instanceFleetModifyConfig,
    @as("ClusterId") clusterId: clusterId,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "ModifyInstanceFleetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetStudioSessionMapping = {
  type t
  type request = {
    @as("IdentityType") identityType: identityType,
    @as("IdentityName") identityName: option<xmlStringMaxLen256>,
    @as("IdentityId") identityId: option<xmlStringMaxLen256>,
    @as("StudioId") studioId: xmlStringMaxLen256,
  }
  type response = {@as("SessionMapping") sessionMapping: option<sessionMappingDetail>}
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "GetStudioSessionMappingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartNotebookExecution = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("NotebookInstanceSecurityGroupId")
    notebookInstanceSecurityGroupId: option<xmlStringMaxLen256>,
    @as("ServiceRole") serviceRole: xmlString,
    @as("ExecutionEngine") executionEngine: executionEngineConfig,
    @as("NotebookParams") notebookParams: option<xmlString>,
    @as("NotebookExecutionName") notebookExecutionName: option<xmlStringMaxLen256>,
    @as("RelativePath") relativePath: xmlString,
    @as("EditorId") editorId: xmlStringMaxLen256,
  }
  type response = {@as("NotebookExecutionId") notebookExecutionId: option<xmlStringMaxLen256>}
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "StartNotebookExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutManagedScalingPolicy = {
  type t
  type request = {
    @as("ManagedScalingPolicy") managedScalingPolicy: managedScalingPolicy,
    @as("ClusterId") clusterId: clusterId,
  }
  type response = unit
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "PutManagedScalingPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStudios = {
  type t
  type request = {@as("Marker") marker: option<marker>}
  type response = {
    @as("Marker") marker: option<marker>,
    @as("Studios") studios: option<studioSummaryList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "ListStudiosCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStudioSessionMappings = {
  type t
  type request = {
    @as("Marker") marker: option<marker>,
    @as("IdentityType") identityType: option<identityType>,
    @as("StudioId") studioId: option<xmlStringMaxLen256>,
  }
  type response = {
    @as("Marker") marker: option<marker>,
    @as("SessionMappings") sessionMappings: option<sessionMappingSummaryList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "ListStudioSessionMappingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSecurityConfigurations = {
  type t
  type request = {@as("Marker") marker: option<marker>}
  type response = {
    @as("Marker") marker: option<marker>,
    @as("SecurityConfigurations") securityConfigurations: option<securityConfigurationList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "ListSecurityConfigurationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNotebookExecutions = {
  type t
  type request = {
    @as("Marker") marker: option<marker>,
    @as("To") to: option<date>,
    @as("From") from: option<date>,
    @as("Status") status: option<notebookExecutionStatus>,
    @as("EditorId") editorId: option<xmlStringMaxLen256>,
  }
  type response = {
    @as("Marker") marker: option<marker>,
    @as("NotebookExecutions") notebookExecutions: option<notebookExecutionSummaryList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "ListNotebookExecutionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetManagedScalingPolicy = {
  type t
  type request = {@as("ClusterId") clusterId: clusterId}
  type response = {@as("ManagedScalingPolicy") managedScalingPolicy: option<managedScalingPolicy>}
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "GetManagedScalingPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStudio = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("DefaultS3Location") defaultS3Location: xmlString,
    @as("EngineSecurityGroupId") engineSecurityGroupId: xmlStringMaxLen256,
    @as("WorkspaceSecurityGroupId") workspaceSecurityGroupId: xmlStringMaxLen256,
    @as("UserRole") userRole: xmlString,
    @as("ServiceRole") serviceRole: xmlString,
    @as("SubnetIds") subnetIds: subnetIdList,
    @as("VpcId") vpcId: xmlStringMaxLen256,
    @as("AuthMode") authMode: authMode,
    @as("Description") description: option<xmlStringMaxLen256>,
    @as("Name") name: xmlStringMaxLen256,
  }
  type response = {
    @as("Url") url: option<xmlString>,
    @as("StudioId") studioId: option<xmlStringMaxLen256>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "CreateStudioCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelSteps = {
  type t
  type request = {
    @as("StepCancellationOption") stepCancellationOption: option<stepCancellationOption>,
    @as("StepIds") stepIds: stepIdsList,
    @as("ClusterId") clusterId: xmlStringMaxLen256,
  }
  type response = {@as("CancelStepsInfoList") cancelStepsInfoList: option<cancelStepsInfoList>}
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "CancelStepsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTags = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceId") resourceId: resourceId,
  }
  type response = unit
  @module("@aws-sdk/client-elasticmapreduce") @new external new_: request => t = "AddTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBootstrapActions = {
  type t
  type request = {
    @as("Marker") marker: option<marker>,
    @as("ClusterId") clusterId: clusterId,
  }
  type response = {
    @as("Marker") marker: option<marker>,
    @as("BootstrapActions") bootstrapActions: option<commandList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "ListBootstrapActionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStudio = {
  type t
  type request = {@as("StudioId") studioId: xmlStringMaxLen256}
  type response = {@as("Studio") studio: option<studio>}
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "DescribeStudioCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStep = {
  type t
  type request = {
    @as("StepId") stepId: stepId,
    @as("ClusterId") clusterId: clusterId,
  }
  type response = {@as("Step") step: option<step>}
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "DescribeStepCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNotebookExecution = {
  type t
  type request = {@as("NotebookExecutionId") notebookExecutionId: xmlStringMaxLen256}
  type response = {@as("NotebookExecution") notebookExecution: option<notebookExecution>}
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "DescribeNotebookExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSteps = {
  type t
  type request = {
    @as("Marker") marker: option<marker>,
    @as("StepIds") stepIds: option<xmlStringList>,
    @as("StepStates") stepStates: option<stepStateList>,
    @as("ClusterId") clusterId: clusterId,
  }
  type response = {
    @as("Marker") marker: option<marker>,
    @as("Steps") steps: option<stepSummaryList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new external new_: request => t = "ListStepsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInstances = {
  type t
  type request = {
    @as("Marker") marker: option<marker>,
    @as("InstanceStates") instanceStates: option<instanceStateList>,
    @as("InstanceFleetType") instanceFleetType: option<instanceFleetType>,
    @as("InstanceFleetId") instanceFleetId: option<instanceFleetId>,
    @as("InstanceGroupTypes") instanceGroupTypes: option<instanceGroupTypeList>,
    @as("InstanceGroupId") instanceGroupId: option<instanceGroupId>,
    @as("ClusterId") clusterId: clusterId,
  }
  type response = {
    @as("Marker") marker: option<marker>,
    @as("Instances") instances: option<instanceList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "ListInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListClusters = {
  type t
  type request = {
    @as("Marker") marker: option<marker>,
    @as("ClusterStates") clusterStates: option<clusterStateList>,
    @as("CreatedBefore") createdBefore: option<date>,
    @as("CreatedAfter") createdAfter: option<date>,
  }
  type response = {
    @as("Marker") marker: option<marker>,
    @as("Clusters") clusters: option<clusterSummaryList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "ListClustersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddJobFlowSteps = {
  type t
  type request = {
    @as("Steps") steps: stepConfigList,
    @as("JobFlowId") jobFlowId: xmlStringMaxLen256,
  }
  type response = {@as("StepIds") stepIds: option<stepIdsList>}
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "AddJobFlowStepsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAutoScalingPolicy = {
  type t
  type request = {
    @as("AutoScalingPolicy") autoScalingPolicy: autoScalingPolicy,
    @as("InstanceGroupId") instanceGroupId: instanceGroupId,
    @as("ClusterId") clusterId: clusterId,
  }
  type response = {
    @as("ClusterArn") clusterArn: option<arnType>,
    @as("AutoScalingPolicy") autoScalingPolicy: option<autoScalingPolicyDescription>,
    @as("InstanceGroupId") instanceGroupId: option<instanceGroupId>,
    @as("ClusterId") clusterId: option<clusterId>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "PutAutoScalingPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobFlows = {
  type t
  type request = {
    @as("JobFlowStates") jobFlowStates: option<jobFlowExecutionStateList>,
    @as("JobFlowIds") jobFlowIds: option<xmlStringList>,
    @as("CreatedBefore") createdBefore: option<date>,
    @as("CreatedAfter") createdAfter: option<date>,
  }
  type response = {@as("JobFlows") jobFlows: option<jobFlowDetailList>}
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "DescribeJobFlowsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBlockPublicAccessConfiguration = {
  type t
  type request = {
    @as("BlockPublicAccessConfiguration")
    blockPublicAccessConfiguration: blockPublicAccessConfiguration,
  }
  type response = unit
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "PutBlockPublicAccessConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBlockPublicAccessConfiguration = {
  type t
  type request = unit
  type response = {
    @as("BlockPublicAccessConfigurationMetadata")
    blockPublicAccessConfigurationMetadata: blockPublicAccessConfigurationMetadata,
    @as("BlockPublicAccessConfiguration")
    blockPublicAccessConfiguration: blockPublicAccessConfiguration,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "GetBlockPublicAccessConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCluster = {
  type t
  type request = {@as("ClusterId") clusterId: clusterId}
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "DescribeClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyInstanceGroups = {
  type t
  type request = {
    @as("InstanceGroups") instanceGroups: option<instanceGroupModifyConfigList>,
    @as("ClusterId") clusterId: option<clusterId>,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "ModifyInstanceGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListInstanceGroups = {
  type t
  type request = {
    @as("Marker") marker: option<marker>,
    @as("ClusterId") clusterId: clusterId,
  }
  type response = {
    @as("Marker") marker: option<marker>,
    @as("InstanceGroups") instanceGroups: option<instanceGroupList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "ListInstanceGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddInstanceGroups = {
  type t
  type request = {
    @as("JobFlowId") jobFlowId: xmlStringMaxLen256,
    @as("InstanceGroups") instanceGroups: instanceGroupConfigList,
  }
  type response = {
    @as("ClusterArn") clusterArn: option<arnType>,
    @as("InstanceGroupIds") instanceGroupIds: option<instanceGroupIdsList>,
    @as("JobFlowId") jobFlowId: option<xmlStringMaxLen256>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "AddInstanceGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddInstanceFleet = {
  type t
  type request = {
    @as("InstanceFleet") instanceFleet: instanceFleetConfig,
    @as("ClusterId") clusterId: xmlStringMaxLen256,
  }
  type response = {
    @as("ClusterArn") clusterArn: option<arnType>,
    @as("InstanceFleetId") instanceFleetId: option<instanceFleetId>,
    @as("ClusterId") clusterId: option<xmlStringMaxLen256>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "AddInstanceFleetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInstanceFleets = {
  type t
  type request = {
    @as("Marker") marker: option<marker>,
    @as("ClusterId") clusterId: clusterId,
  }
  type response = {
    @as("Marker") marker: option<marker>,
    @as("InstanceFleets") instanceFleets: option<instanceFleetList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new_: request => t = "ListInstanceFleetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RunJobFlow = {
  type t
  type request = {
    @as("PlacementGroupConfigs") placementGroupConfigs: option<placementGroupConfigList>,
    @as("ManagedScalingPolicy") managedScalingPolicy: option<managedScalingPolicy>,
    @as("StepConcurrencyLevel") stepConcurrencyLevel: option<integer_>,
    @as("KerberosAttributes") kerberosAttributes: option<kerberosAttributes>,
    @as("RepoUpgradeOnBoot") repoUpgradeOnBoot: option<repoUpgradeOnBoot>,
    @as("EbsRootVolumeSize") ebsRootVolumeSize: option<integer_>,
    @as("CustomAmiId") customAmiId: option<xmlStringMaxLen256>,
    @as("ScaleDownBehavior") scaleDownBehavior: option<scaleDownBehavior>,
    @as("AutoScalingRole") autoScalingRole: option<xmlString>,
    @as("SecurityConfiguration") securityConfiguration: option<xmlString>,
    @as("Tags") tags: option<tagList_>,
    @as("ServiceRole") serviceRole: option<xmlString>,
    @as("JobFlowRole") jobFlowRole: option<xmlString>,
    @as("VisibleToAllUsers") visibleToAllUsers: option<boolean_>,
    @as("Configurations") configurations: option<configurationList>,
    @as("Applications") applications: option<applicationList>,
    @as("NewSupportedProducts") newSupportedProducts: option<newSupportedProductsList>,
    @as("SupportedProducts") supportedProducts: option<supportedProductsList>,
    @as("BootstrapActions") bootstrapActions: option<bootstrapActionConfigList>,
    @as("Steps") steps: option<stepConfigList>,
    @as("Instances") instances: jobFlowInstancesConfig,
    @as("ReleaseLabel") releaseLabel: option<xmlStringMaxLen256>,
    @as("AmiVersion") amiVersion: option<xmlStringMaxLen256>,
    @as("AdditionalInfo") additionalInfo: option<xmlString>,
    @as("LogEncryptionKmsKeyId") logEncryptionKmsKeyId: option<xmlString>,
    @as("LogUri") logUri: option<xmlString>,
    @as("Name") name: xmlStringMaxLen256,
  }
  type response = {
    @as("ClusterArn") clusterArn: option<arnType>,
    @as("JobFlowId") jobFlowId: option<xmlStringMaxLen256>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new external new_: request => t = "RunJobFlowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
