type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-gamelift") @new
external createClient: unit => awsServiceClient = "GameLiftClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type zipBlob = NodeJs.Buffer.t
type wholeNumber = int
type weightedCapacity = string
type vpcSubnet = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type stringModel = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type snsArnStringModel = string
type scriptIdOrArn = string
type scriptId = string
type scriptArn = string
type scalingStatusType = [
  | @as("ERROR") #ERROR
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("DELETE_REQUESTED") #DELETE_REQUESTED
  | @as("UPDATING") #UPDATING
  | @as("UPDATE_REQUESTED") #UPDATE_REQUESTED
  | @as("ACTIVE") #ACTIVE
]
type scalingAdjustmentType = [
  | @as("PercentChangeInCapacity") #PercentChangeInCapacity
  | @as("ExactCapacity") #ExactCapacity
  | @as("ChangeInCapacity") #ChangeInCapacity
]
type ruleSetLimit = int
type ruleSetBody = string
type routingStrategyType = [@as("TERMINAL") #TERMINAL | @as("SIMPLE") #SIMPLE]
type queueSnsArnStringModel = string
type queueCustomEventData = string
type protectionPolicy = [@as("FullProtection") #FullProtection | @as("NoProtection") #NoProtection]
type priorityType = [
  | @as("LOCATION") #LOCATION
  | @as("DESTINATION") #DESTINATION
  | @as("COST") #COST
  | @as("LATENCY") #LATENCY
]
type positiveLong = float
type positiveInteger = int
type portNumber = int
type policyType = [@as("TargetBased") #TargetBased | @as("RuleBased") #RuleBased]
type playerSessionStatus = [
  | @as("TIMEDOUT") #TIMEDOUT
  | @as("COMPLETED") #COMPLETED
  | @as("ACTIVE") #ACTIVE
  | @as("RESERVED") #RESERVED
]
type playerSessionId = string
type playerSessionCreationPolicy = [@as("DENY_ALL") #DENY_ALL | @as("ACCEPT_ALL") #ACCEPT_ALL]
type playerData = string
type operatingSystem = [
  | @as("AMAZON_LINUX_2") #AMAZON_LINUX_2
  | @as("AMAZON_LINUX") #AMAZON_LINUX
  | @as("WINDOWS_2012") #WINDOWS_2012
]
type nonZeroAndMaxString = string
type nonNegativeDouble = float
type nonEmptyString = string
type nonBlankString = string
type nonBlankAndLengthConstraintString = string
type metricName = [
  | @as("WaitTime") #WaitTime
  | @as("QueueDepth") #QueueDepth
  | @as("PercentIdleInstances") #PercentIdleInstances
  | @as("PercentAvailableGameSessions") #PercentAvailableGameSessions
  | @as("IdleInstances") #IdleInstances
  | @as("CurrentPlayerSessions") #CurrentPlayerSessions
  | @as("AvailablePlayerSessions") #AvailablePlayerSessions
  | @as("AvailableGameSessions") #AvailableGameSessions
  | @as("ActiveInstances") #ActiveInstances
  | @as("ActiveGameSessions") #ActiveGameSessions
  | @as("ActivatingGameSessions") #ActivatingGameSessions
]
type metricGroup = string
type maxConcurrentGameSessionActivations = int
type matchmakingRuleSetName = string
type matchmakingRuleSetArn = string
type matchmakingRequestTimeoutInteger = int
type matchmakingIdStringModel = string
type matchmakingConfigurationStatus = [
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("SEARCHING") #SEARCHING
  | @as("REQUIRES_ACCEPTANCE") #REQUIRES_ACCEPTANCE
  | @as("QUEUED") #QUEUED
  | @as("PLACING") #PLACING
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("CANCELLED") #CANCELLED
]
type matchmakingConfigurationName = string
type matchmakingConfigurationArn = string
type matchmakingAcceptanceTimeoutInteger = int
type matchmakerData = string
type locationUpdateStatus = [@as("PENDING_UPDATE") #PENDING_UPDATE]
type locationStringModel = string
type launchTemplateVersion = string
type launchTemplateName = string
type launchTemplateId = string
type largeGameSessionData = string
type ipProtocol = [@as("UDP") #UDP | @as("TCP") #TCP]
type ipAddress = string
type integer_ = int
type instanceStatus = [
  | @as("TERMINATING") #TERMINATING
  | @as("ACTIVE") #ACTIVE
  | @as("PENDING") #PENDING
]
type instanceId = string
type idStringModel = string
type iamRoleArn = string
type gameSessionStatusReason = [@as("INTERRUPTED") #INTERRUPTED]
type gameSessionStatus = [
  | @as("ERROR") #ERROR
  | @as("TERMINATING") #TERMINATING
  | @as("TERMINATED") #TERMINATED
  | @as("ACTIVATING") #ACTIVATING
  | @as("ACTIVE") #ACTIVE
]
type gameSessionQueueNameOrArn = string
type gameSessionQueueName = string
type gameSessionQueueArn = string
type gameSessionPlacementState = [
  | @as("FAILED") #FAILED
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("CANCELLED") #CANCELLED
  | @as("FULFILLED") #FULFILLED
  | @as("PENDING") #PENDING
]
type gameSessionData = string
type gameSessionActivationTimeoutSeconds = int
type gameServerUtilizationStatus = [@as("UTILIZED") #UTILIZED | @as("AVAILABLE") #AVAILABLE]
type gameServerProtectionPolicy = [
  | @as("FULL_PROTECTION") #FULL_PROTECTION
  | @as("NO_PROTECTION") #NO_PROTECTION
]
type gameServerInstanceStatus = [
  | @as("SPOT_TERMINATING") #SPOT_TERMINATING
  | @as("DRAINING") #DRAINING
  | @as("ACTIVE") #ACTIVE
]
type gameServerInstanceId = string
type gameServerId = string
type gameServerHealthCheck = [@as("HEALTHY") #HEALTHY]
type gameServerGroupStatus = [
  | @as("ERROR") #ERROR
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("DELETE_SCHEDULED") #DELETE_SCHEDULED
  | @as("ACTIVE") #ACTIVE
  | @as("ACTIVATING") #ACTIVATING
  | @as("NEW") #NEW
]
type gameServerGroupNameOrArn = string
type gameServerGroupName = string
type gameServerGroupInstanceType = [
  | @as("m5a.24xlarge") #M5a_24xlarge
  | @as("m5a.16xlarge") #M5a_16xlarge
  | @as("m5a.12xlarge") #M5a_12xlarge
  | @as("m5a.8xlarge") #M5a_8xlarge
  | @as("m5a.4xlarge") #M5a_4xlarge
  | @as("m5a.2xlarge") #M5a_2xlarge
  | @as("m5a.xlarge") #M5a_Xlarge
  | @as("m5a.large") #M5a_Large
  | @as("m5.24xlarge") #M5_24xlarge
  | @as("m5.16xlarge") #M5_16xlarge
  | @as("m5.12xlarge") #M5_12xlarge
  | @as("m5.8xlarge") #M5_8xlarge
  | @as("m5.4xlarge") #M5_4xlarge
  | @as("m5.2xlarge") #M5_2xlarge
  | @as("m5.xlarge") #M5_Xlarge
  | @as("m5.large") #M5_Large
  | @as("m4.10xlarge") #M4_10xlarge
  | @as("m4.4xlarge") #M4_4xlarge
  | @as("m4.2xlarge") #M4_2xlarge
  | @as("m4.xlarge") #M4_Xlarge
  | @as("m4.large") #M4_Large
  | @as("r5a.24xlarge") #R5a_24xlarge
  | @as("r5a.16xlarge") #R5a_16xlarge
  | @as("r5a.12xlarge") #R5a_12xlarge
  | @as("r5a.8xlarge") #R5a_8xlarge
  | @as("r5a.4xlarge") #R5a_4xlarge
  | @as("r5a.2xlarge") #R5a_2xlarge
  | @as("r5a.xlarge") #R5a_Xlarge
  | @as("r5a.large") #R5a_Large
  | @as("r5.24xlarge") #R5_24xlarge
  | @as("r5.16xlarge") #R5_16xlarge
  | @as("r5.12xlarge") #R5_12xlarge
  | @as("r5.8xlarge") #R5_8xlarge
  | @as("r5.4xlarge") #R5_4xlarge
  | @as("r5.2xlarge") #R5_2xlarge
  | @as("r5.xlarge") #R5_Xlarge
  | @as("r5.large") #R5_Large
  | @as("r4.16xlarge") #R4_16xlarge
  | @as("r4.8xlarge") #R4_8xlarge
  | @as("r4.4xlarge") #R4_4xlarge
  | @as("r4.2xlarge") #R4_2xlarge
  | @as("r4.xlarge") #R4_Xlarge
  | @as("r4.large") #R4_Large
  | @as("c5a.24xlarge") #C5a_24xlarge
  | @as("c5a.16xlarge") #C5a_16xlarge
  | @as("c5a.12xlarge") #C5a_12xlarge
  | @as("c5a.8xlarge") #C5a_8xlarge
  | @as("c5a.4xlarge") #C5a_4xlarge
  | @as("c5a.2xlarge") #C5a_2xlarge
  | @as("c5a.xlarge") #C5a_Xlarge
  | @as("c5a.large") #C5a_Large
  | @as("c5.24xlarge") #C5_24xlarge
  | @as("c5.18xlarge") #C5_18xlarge
  | @as("c5.12xlarge") #C5_12xlarge
  | @as("c5.9xlarge") #C5_9xlarge
  | @as("c5.4xlarge") #C5_4xlarge
  | @as("c5.2xlarge") #C5_2xlarge
  | @as("c5.xlarge") #C5_Xlarge
  | @as("c5.large") #C5_Large
  | @as("c4.8xlarge") #C4_8xlarge
  | @as("c4.4xlarge") #C4_4xlarge
  | @as("c4.2xlarge") #C4_2xlarge
  | @as("c4.xlarge") #C4_Xlarge
  | @as("c4.large") #C4_Large
]
type gameServerGroupDeleteOption = [
  | @as("RETAIN") #RETAIN
  | @as("FORCE_DELETE") #FORCE_DELETE
  | @as("SAFE_DELETE") #SAFE_DELETE
]
type gameServerGroupArn = string
type gameServerGroupAction = [@as("REPLACE_INSTANCE_TYPES") #REPLACE_INSTANCE_TYPES]
type gameServerData = string
type gameServerConnectionInfo = string
type gameServerClaimStatus = [@as("CLAIMED") #CLAIMED]
type gamePropertyValue = string
type gamePropertyKey = string
type freeText = string
type float_ = float
type flexMatchMode = [@as("WITH_QUEUE") #WITH_QUEUE | @as("STANDALONE") #STANDALONE]
type fleetType = [@as("SPOT") #SPOT | @as("ON_DEMAND") #ON_DEMAND]
type fleetStatus = [
  | @as("TERMINATED") #TERMINATED
  | @as("ERROR") #ERROR
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("ACTIVATING") #ACTIVATING
  | @as("BUILDING") #BUILDING
  | @as("VALIDATING") #VALIDATING
  | @as("DOWNLOADING") #DOWNLOADING
  | @as("NEW") #NEW
]
type fleetIdOrArn = string
type fleetId = string
type fleetArn = string
type fleetAction = [@as("AUTO_SCALING") #AUTO_SCALING]
type eventCode = [
  | @as("INSTANCE_INTERRUPTED") #INSTANCE_INTERRUPTED
  | @as("FLEET_VPC_PEERING_DELETED") #FLEET_VPC_PEERING_DELETED
  | @as("FLEET_VPC_PEERING_FAILED") #FLEET_VPC_PEERING_FAILED
  | @as("FLEET_VPC_PEERING_SUCCEEDED") #FLEET_VPC_PEERING_SUCCEEDED
  | @as("FLEET_CREATION_VALIDATING_RUNTIME_CONFIG") #FLEET_CREATION_VALIDATING_RUNTIME_CONFIG
  | @as("FLEET_CREATION_RUNNING_INSTALLER") #FLEET_CREATION_RUNNING_INSTALLER
  | @as("FLEET_CREATION_EXTRACTING_BUILD") #FLEET_CREATION_EXTRACTING_BUILD
  | @as("GAME_SESSION_ACTIVATION_TIMEOUT") #GAME_SESSION_ACTIVATION_TIMEOUT
  | @as("SERVER_PROCESS_PROCESS_EXIT_TIMEOUT") #SERVER_PROCESS_PROCESS_EXIT_TIMEOUT
  | @as("SERVER_PROCESS_FORCE_TERMINATED") #SERVER_PROCESS_FORCE_TERMINATED
  | @as("SERVER_PROCESS_TERMINATED_UNHEALTHY") #SERVER_PROCESS_TERMINATED_UNHEALTHY
  | @as("SERVER_PROCESS_CRASHED") #SERVER_PROCESS_CRASHED
  | @as("SERVER_PROCESS_PROCESS_READY_TIMEOUT") #SERVER_PROCESS_PROCESS_READY_TIMEOUT
  | @as("SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT") #SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT
  | @as("SERVER_PROCESS_INVALID_PATH") #SERVER_PROCESS_INVALID_PATH
  | @as("FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED")
  #FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED
  | @as("FLEET_ACTIVATION_FAILED_NO_INSTANCES") #FLEET_ACTIVATION_FAILED_NO_INSTANCES
  | @as("FLEET_ACTIVATION_FAILED") #FLEET_ACTIVATION_FAILED
  | @as("FLEET_VALIDATION_TIMED_OUT") #FLEET_VALIDATION_TIMED_OUT
  | @as("FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE") #FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE
  | @as("FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND") #FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND
  | @as("FLEET_BINARY_DOWNLOAD_FAILED") #FLEET_BINARY_DOWNLOAD_FAILED
  | @as("FLEET_INITIALIZATION_FAILED") #FLEET_INITIALIZATION_FAILED
  | @as("FLEET_STATE_ERROR") #FLEET_STATE_ERROR
  | @as("FLEET_STATE_ACTIVE") #FLEET_STATE_ACTIVE
  | @as("FLEET_STATE_ACTIVATING") #FLEET_STATE_ACTIVATING
  | @as("FLEET_STATE_BUILDING") #FLEET_STATE_BUILDING
  | @as("FLEET_STATE_VALIDATING") #FLEET_STATE_VALIDATING
  | @as("FLEET_STATE_DOWNLOADING") #FLEET_STATE_DOWNLOADING
  | @as("FLEET_SCALING_EVENT") #FLEET_SCALING_EVENT
  | @as("FLEET_DELETED") #FLEET_DELETED
  | @as("FLEET_CREATED") #FLEET_CREATED
  | @as("GENERIC_EVENT") #GENERIC_EVENT
]
type ec2InstanceType = [
  | @as("m5a.24xlarge") #M5a_24xlarge
  | @as("m5a.16xlarge") #M5a_16xlarge
  | @as("m5a.12xlarge") #M5a_12xlarge
  | @as("m5a.8xlarge") #M5a_8xlarge
  | @as("m5a.4xlarge") #M5a_4xlarge
  | @as("m5a.2xlarge") #M5a_2xlarge
  | @as("m5a.xlarge") #M5a_Xlarge
  | @as("m5a.large") #M5a_Large
  | @as("m5.24xlarge") #M5_24xlarge
  | @as("m5.16xlarge") #M5_16xlarge
  | @as("m5.12xlarge") #M5_12xlarge
  | @as("m5.8xlarge") #M5_8xlarge
  | @as("m5.4xlarge") #M5_4xlarge
  | @as("m5.2xlarge") #M5_2xlarge
  | @as("m5.xlarge") #M5_Xlarge
  | @as("m5.large") #M5_Large
  | @as("m4.10xlarge") #M4_10xlarge
  | @as("m4.4xlarge") #M4_4xlarge
  | @as("m4.2xlarge") #M4_2xlarge
  | @as("m4.xlarge") #M4_Xlarge
  | @as("m4.large") #M4_Large
  | @as("m3.2xlarge") #M3_2xlarge
  | @as("m3.xlarge") #M3_Xlarge
  | @as("m3.large") #M3_Large
  | @as("m3.medium") #M3_Medium
  | @as("r5a.24xlarge") #R5a_24xlarge
  | @as("r5a.16xlarge") #R5a_16xlarge
  | @as("r5a.12xlarge") #R5a_12xlarge
  | @as("r5a.8xlarge") #R5a_8xlarge
  | @as("r5a.4xlarge") #R5a_4xlarge
  | @as("r5a.2xlarge") #R5a_2xlarge
  | @as("r5a.xlarge") #R5a_Xlarge
  | @as("r5a.large") #R5a_Large
  | @as("r5.24xlarge") #R5_24xlarge
  | @as("r5.16xlarge") #R5_16xlarge
  | @as("r5.12xlarge") #R5_12xlarge
  | @as("r5.8xlarge") #R5_8xlarge
  | @as("r5.4xlarge") #R5_4xlarge
  | @as("r5.2xlarge") #R5_2xlarge
  | @as("r5.xlarge") #R5_Xlarge
  | @as("r5.large") #R5_Large
  | @as("r4.16xlarge") #R4_16xlarge
  | @as("r4.8xlarge") #R4_8xlarge
  | @as("r4.4xlarge") #R4_4xlarge
  | @as("r4.2xlarge") #R4_2xlarge
  | @as("r4.xlarge") #R4_Xlarge
  | @as("r4.large") #R4_Large
  | @as("r3.8xlarge") #R3_8xlarge
  | @as("r3.4xlarge") #R3_4xlarge
  | @as("r3.2xlarge") #R3_2xlarge
  | @as("r3.xlarge") #R3_Xlarge
  | @as("r3.large") #R3_Large
  | @as("c5a.24xlarge") #C5a_24xlarge
  | @as("c5a.16xlarge") #C5a_16xlarge
  | @as("c5a.12xlarge") #C5a_12xlarge
  | @as("c5a.8xlarge") #C5a_8xlarge
  | @as("c5a.4xlarge") #C5a_4xlarge
  | @as("c5a.2xlarge") #C5a_2xlarge
  | @as("c5a.xlarge") #C5a_Xlarge
  | @as("c5a.large") #C5a_Large
  | @as("c5.24xlarge") #C5_24xlarge
  | @as("c5.18xlarge") #C5_18xlarge
  | @as("c5.12xlarge") #C5_12xlarge
  | @as("c5.9xlarge") #C5_9xlarge
  | @as("c5.4xlarge") #C5_4xlarge
  | @as("c5.2xlarge") #C5_2xlarge
  | @as("c5.xlarge") #C5_Xlarge
  | @as("c5.large") #C5_Large
  | @as("c4.8xlarge") #C4_8xlarge
  | @as("c4.4xlarge") #C4_4xlarge
  | @as("c4.2xlarge") #C4_2xlarge
  | @as("c4.xlarge") #C4_Xlarge
  | @as("c4.large") #C4_Large
  | @as("c3.8xlarge") #C3_8xlarge
  | @as("c3.4xlarge") #C3_4xlarge
  | @as("c3.2xlarge") #C3_2xlarge
  | @as("c3.xlarge") #C3_Xlarge
  | @as("c3.large") #C3_Large
  | @as("t2.large") #T2_Large
  | @as("t2.medium") #T2_Medium
  | @as("t2.small") #T2_Small
  | @as("t2.micro") #T2_Micro
]
type doubleObject = float
type double = float
type dnsName = string
type customEventData = string
type comparisonOperatorType = [
  | @as("LessThanOrEqualToThreshold") #LessThanOrEqualToThreshold
  | @as("LessThanThreshold") #LessThanThreshold
  | @as("GreaterThanThreshold") #GreaterThanThreshold
  | @as("GreaterThanOrEqualToThreshold") #GreaterThanOrEqualToThreshold
]
type certificateType = [@as("GENERATED") #GENERATED | @as("DISABLED") #DISABLED]
type buildStatus = [@as("FAILED") #FAILED | @as("READY") #READY | @as("INITIALIZED") #INITIALIZED]
type buildIdOrArn = string
type buildId = string
type buildArn = string
type booleanModel = bool
type balancingStrategy = [
  | @as("ON_DEMAND_ONLY") #ON_DEMAND_ONLY
  | @as("SPOT_PREFERRED") #SPOT_PREFERRED
  | @as("SPOT_ONLY") #SPOT_ONLY
]
type backfillMode = [@as("MANUAL") #MANUAL | @as("AUTOMATIC") #AUTOMATIC]
type autoScalingGroupArn = string
type arnStringModel = string
type amazonResourceName = string
type aliasIdOrArn = string
type aliasId = string
type aliasArn = string
type acceptanceType = [@as("REJECT") #REJECT | @as("ACCEPT") #ACCEPT]
type vpcSubnets = array<vpcSubnet>
type vpcPeeringConnectionStatus = {
  @as("Message") message: option<nonZeroAndMaxString>,
  @as("Code") code: option<nonZeroAndMaxString>,
}
type vpcPeeringAuthorization = {
  @as("ExpirationTime") expirationTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("PeerVpcId") peerVpcId: option<nonZeroAndMaxString>,
  @as("PeerVpcAwsAccountId") peerVpcAwsAccountId: option<nonZeroAndMaxString>,
  @as("GameLiftAwsAccountId") gameLiftAwsAccountId: option<nonZeroAndMaxString>,
}
type targetTrackingConfiguration = {@as("TargetValue") targetValue: nonNegativeDouble}
type targetConfiguration = {@as("TargetValue") targetValue: double}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type stringList = array<nonZeroAndMaxString>
type stringDoubleMap = Js.Dict.t<doubleObject>
type serverProcess = {
  @as("ConcurrentExecutions") concurrentExecutions: positiveInteger,
  @as("Parameters") parameters: option<nonZeroAndMaxString>,
  @as("LaunchPath") launchPath: nonZeroAndMaxString,
}
type s3Location = {
  @as("ObjectVersion") objectVersion: option<nonEmptyString>,
  @as("RoleArn") roleArn: option<nonEmptyString>,
  @as("Key") key: option<nonEmptyString>,
  @as("Bucket") bucket: option<nonEmptyString>,
}
type routingStrategy = {
  @as("Message") message: option<freeText>,
  @as("FleetId") fleetId: option<fleetId>,
  @as("Type") type_: option<routingStrategyType>,
}
type resourceCreationLimitPolicy = {
  @as("PolicyPeriodInMinutes") policyPeriodInMinutes: option<wholeNumber>,
  @as("NewGameSessionsPerCreator") newGameSessionsPerCreator: option<wholeNumber>,
}
type queueArnsList = array<arnStringModel>
type priorityTypeList = array<priorityType>
type playerSession = {
  @as("PlayerData") playerData: option<playerData>,
  @as("Port") port: option<portNumber>,
  @as("DnsName") dnsName: option<dnsName>,
  @as("IpAddress") ipAddress: option<ipAddress>,
  @as("Status") status: option<playerSessionStatus>,
  @as("TerminationTime") terminationTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("FleetArn") fleetArn: option<fleetArn>,
  @as("FleetId") fleetId: option<fleetId>,
  @as("GameSessionId") gameSessionId: option<nonZeroAndMaxString>,
  @as("PlayerId") playerId: option<nonZeroAndMaxString>,
  @as("PlayerSessionId") playerSessionId: option<playerSessionId>,
}
type playerLatencyPolicy = {
  @as("PolicyDurationSeconds") policyDurationSeconds: option<wholeNumber>,
  @as("MaximumIndividualPlayerLatencyMilliseconds")
  maximumIndividualPlayerLatencyMilliseconds: option<wholeNumber>,
}
type playerLatency = {
  @as("LatencyInMilliseconds") latencyInMilliseconds: option<float_>,
  @as("RegionIdentifier") regionIdentifier: option<nonZeroAndMaxString>,
  @as("PlayerId") playerId: option<nonZeroAndMaxString>,
}
type playerIdList = array<nonZeroAndMaxString>
type playerDataMap = Js.Dict.t<playerData>
type placedPlayerSession = {
  @as("PlayerSessionId") playerSessionId: option<playerSessionId>,
  @as("PlayerId") playerId: option<nonZeroAndMaxString>,
}
type metricGroupList = array<metricGroup>
type matchmakingRuleSetNameList = array<matchmakingRuleSetName>
type matchmakingRuleSet = {
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("RuleSetBody") ruleSetBody: ruleSetBody,
  @as("RuleSetArn") ruleSetArn: option<matchmakingRuleSetArn>,
  @as("RuleSetName") ruleSetName: option<matchmakingIdStringModel>,
}
type matchmakingIdList = array<matchmakingIdStringModel>
type matchmakingConfigurationNameList = array<matchmakingConfigurationName>
type matchedPlayerSession = {
  @as("PlayerSessionId") playerSessionId: option<playerSessionId>,
  @as("PlayerId") playerId: option<nonZeroAndMaxString>,
}
type locationState = {
  @as("Status") status: option<fleetStatus>,
  @as("Location") location: option<locationStringModel>,
}
type locationList = array<locationStringModel>
type locationConfiguration = {@as("Location") location: option<locationStringModel>}
type launchTemplateSpecification = {
  @as("Version") version: option<launchTemplateVersion>,
  @as("LaunchTemplateName") launchTemplateName: option<launchTemplateName>,
  @as("LaunchTemplateId") launchTemplateId: option<launchTemplateId>,
}
type latencyMap = Js.Dict.t<positiveInteger>
type ipPermission = {
  @as("Protocol") protocol: ipProtocol,
  @as("IpRange") ipRange: nonBlankString,
  @as("ToPort") toPort: portNumber,
  @as("FromPort") fromPort: portNumber,
}
type instanceDefinition = {
  @as("WeightedCapacity") weightedCapacity: option<weightedCapacity>,
  @as("InstanceType") instanceType: gameServerGroupInstanceType,
}
type instanceCredentials = {
  @as("Secret") secret: option<nonEmptyString>,
  @as("UserName") userName: option<nonEmptyString>,
}
type instance = {
  @as("Location") location: option<locationStringModel>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("Status") status: option<instanceStatus>,
  @as("Type") type_: option<ec2InstanceType>,
  @as("OperatingSystem") operatingSystem: option<operatingSystem>,
  @as("DnsName") dnsName: option<dnsName>,
  @as("IpAddress") ipAddress: option<ipAddress>,
  @as("InstanceId") instanceId: option<instanceId>,
  @as("FleetArn") fleetArn: option<fleetArn>,
  @as("FleetId") fleetId: option<fleetId>,
}
type gameSessionQueueNameOrArnList = array<gameSessionQueueNameOrArn>
type gameSessionQueueDestination = {@as("DestinationArn") destinationArn: option<arnStringModel>}
type gameServerInstanceIds = array<gameServerInstanceId>
type gameServerInstance = {
  @as("InstanceStatus") instanceStatus: option<gameServerInstanceStatus>,
  @as("InstanceId") instanceId: option<gameServerInstanceId>,
  @as("GameServerGroupArn") gameServerGroupArn: option<gameServerGroupArn>,
  @as("GameServerGroupName") gameServerGroupName: option<gameServerGroupName>,
}
type gameServerGroupActions = array<gameServerGroupAction>
type gameServer = {
  @as("LastHealthCheckTime") lastHealthCheckTime: option<timestamp_>,
  @as("LastClaimTime") lastClaimTime: option<timestamp_>,
  @as("RegistrationTime") registrationTime: option<timestamp_>,
  @as("UtilizationStatus") utilizationStatus: option<gameServerUtilizationStatus>,
  @as("ClaimStatus") claimStatus: option<gameServerClaimStatus>,
  @as("GameServerData") gameServerData: option<gameServerData>,
  @as("ConnectionInfo") connectionInfo: option<gameServerConnectionInfo>,
  @as("InstanceId") instanceId: option<gameServerInstanceId>,
  @as("GameServerId") gameServerId: option<gameServerId>,
  @as("GameServerGroupArn") gameServerGroupArn: option<gameServerGroupArn>,
  @as("GameServerGroupName") gameServerGroupName: option<gameServerGroupName>,
}
type gameProperty = {
  @as("Value") value: gamePropertyValue,
  @as("Key") key: gamePropertyKey,
}
type fleetUtilization = {
  @as("Location") location: option<locationStringModel>,
  @as("MaximumPlayerSessionCount") maximumPlayerSessionCount: option<wholeNumber>,
  @as("CurrentPlayerSessionCount") currentPlayerSessionCount: option<wholeNumber>,
  @as("ActiveGameSessionCount") activeGameSessionCount: option<wholeNumber>,
  @as("ActiveServerProcessCount") activeServerProcessCount: option<wholeNumber>,
  @as("FleetArn") fleetArn: option<fleetArn>,
  @as("FleetId") fleetId: option<fleetId>,
}
type fleetIdOrArnList = array<fleetIdOrArn>
type fleetIdList = array<fleetId>
type fleetActionList = array<fleetAction>
type event = {
  @as("PreSignedLogUrl") preSignedLogUrl: option<nonZeroAndMaxString>,
  @as("EventTime") eventTime: option<timestamp_>,
  @as("Message") message: option<nonEmptyString>,
  @as("EventCode") eventCode: option<eventCode>,
  @as("ResourceId") resourceId: option<nonZeroAndMaxString>,
  @as("EventId") eventId: option<nonZeroAndMaxString>,
}
type ec2InstanceLimit = {
  @as("Location") location: option<locationStringModel>,
  @as("InstanceLimit") instanceLimit: option<wholeNumber>,
  @as("CurrentInstances") currentInstances: option<wholeNumber>,
  @as("EC2InstanceType") ec2InstanceType: option<ec2InstanceType>,
}
type ec2InstanceCounts = {
  @as("TERMINATING") terminating: option<wholeNumber>,
  @as("IDLE") idle: option<wholeNumber>,
  @as("ACTIVE") active: option<wholeNumber>,
  @as("PENDING") pending: option<wholeNumber>,
  @as("MAXIMUM") maximum: option<wholeNumber>,
  @as("MINIMUM") minimum: option<wholeNumber>,
  @as("DESIRED") desired: option<wholeNumber>,
}
type desiredPlayerSession = {
  @as("PlayerData") playerData: option<playerData>,
  @as("PlayerId") playerId: option<nonZeroAndMaxString>,
}
type certificateConfiguration = {@as("CertificateType") certificateType: certificateType}
type build = {
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("OperatingSystem") operatingSystem: option<operatingSystem>,
  @as("SizeOnDisk") sizeOnDisk: option<positiveLong>,
  @as("Status") status: option<buildStatus>,
  @as("Version") version: option<freeText>,
  @as("Name") name: option<freeText>,
  @as("BuildArn") buildArn: option<buildArn>,
  @as("BuildId") buildId: option<buildId>,
}
type awsCredentials = {
  @as("SessionToken") sessionToken: option<nonEmptyString>,
  @as("SecretAccessKey") secretAccessKey: option<nonEmptyString>,
  @as("AccessKeyId") accessKeyId: option<nonEmptyString>,
}
type vpcPeeringConnection = {
  @as("GameLiftVpcId") gameLiftVpcId: option<nonZeroAndMaxString>,
  @as("PeerVpcId") peerVpcId: option<nonZeroAndMaxString>,
  @as("Status") status: option<vpcPeeringConnectionStatus>,
  @as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<nonZeroAndMaxString>,
  @as("IpV4CidrBlock") ipV4CidrBlock: option<nonZeroAndMaxString>,
  @as("FleetArn") fleetArn: option<fleetArn>,
  @as("FleetId") fleetId: option<fleetId>,
}
type vpcPeeringAuthorizationList = array<vpcPeeringAuthorization>
type tagList_ = array<tag>
type serverProcessList = array<serverProcess>
type script = {
  @as("StorageLocation") storageLocation: option<s3Location>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("SizeOnDisk") sizeOnDisk: option<positiveLong>,
  @as("Version") version: option<nonZeroAndMaxString>,
  @as("Name") name: option<nonZeroAndMaxString>,
  @as("ScriptArn") scriptArn: option<scriptArn>,
  @as("ScriptId") scriptId: option<scriptId>,
}
type scalingPolicy = {
  @as("Location") location: option<locationStringModel>,
  @as("UpdateStatus") updateStatus: option<locationUpdateStatus>,
  @as("TargetConfiguration") targetConfiguration: option<targetConfiguration>,
  @as("PolicyType") policyType: option<policyType>,
  @as("MetricName") metricName: option<metricName>,
  @as("EvaluationPeriods") evaluationPeriods: option<positiveInteger>,
  @as("Threshold") threshold: option<double>,
  @as("ComparisonOperator") comparisonOperator: option<comparisonOperatorType>,
  @as("ScalingAdjustmentType") scalingAdjustmentType: option<scalingAdjustmentType>,
  @as("ScalingAdjustment") scalingAdjustment: option<integer_>,
  @as("Status") status: option<scalingStatusType>,
  @as("Name") name: option<nonZeroAndMaxString>,
  @as("FleetArn") fleetArn: option<fleetArn>,
  @as("FleetId") fleetId: option<fleetId>,
}
type priorityConfiguration = {
  @as("LocationOrder") locationOrder: option<locationList>,
  @as("PriorityOrder") priorityOrder: option<priorityTypeList>,
}
type playerSessionList = array<playerSession>
type playerLatencyPolicyList = array<playerLatencyPolicy>
type playerLatencyList = array<playerLatency>
type placedPlayerSessionList = array<placedPlayerSession>
type matchmakingRuleSetList = array<matchmakingRuleSet>
type matchedPlayerSessionList = array<matchedPlayerSession>
type locationStateList = array<locationState>
type locationConfigurationList = array<locationConfiguration>
type locationAttributes = {
  @as("UpdateStatus") updateStatus: option<locationUpdateStatus>,
  @as("StoppedActions") stoppedActions: option<fleetActionList>,
  @as("LocationState") locationState: option<locationState>,
}
type ipPermissionsList = array<ipPermission>
type instanceList = array<instance>
type instanceDefinitions = array<instanceDefinition>
type instanceAccess = {
  @as("Credentials") credentials: option<instanceCredentials>,
  @as("OperatingSystem") operatingSystem: option<operatingSystem>,
  @as("IpAddress") ipAddress: option<ipAddress>,
  @as("InstanceId") instanceId: option<instanceId>,
  @as("FleetId") fleetId: option<fleetId>,
}
type gameSessionQueueDestinationList = array<gameSessionQueueDestination>
type gameServers = array<gameServer>
type gameServerInstances = array<gameServerInstance>
type gameServerGroupAutoScalingPolicy = {
  @as("TargetTrackingConfiguration") targetTrackingConfiguration: targetTrackingConfiguration,
  @as("EstimatedInstanceWarmup") estimatedInstanceWarmup: option<positiveInteger>,
}
type gamePropertyList = array<gameProperty>
type fleetUtilizationList = array<fleetUtilization>
type fleetCapacity = {
  @as("Location") location: option<locationStringModel>,
  @as("InstanceCounts") instanceCounts: option<ec2InstanceCounts>,
  @as("InstanceType") instanceType: option<ec2InstanceType>,
  @as("FleetArn") fleetArn: option<fleetArn>,
  @as("FleetId") fleetId: option<fleetId>,
}
type fleetAttributes = {
  @as("CertificateConfiguration") certificateConfiguration: option<certificateConfiguration>,
  @as("InstanceRoleArn") instanceRoleArn: option<nonEmptyString>,
  @as("StoppedActions") stoppedActions: option<fleetActionList>,
  @as("MetricGroups") metricGroups: option<metricGroupList>,
  @as("ResourceCreationLimitPolicy")
  resourceCreationLimitPolicy: option<resourceCreationLimitPolicy>,
  @as("OperatingSystem") operatingSystem: option<operatingSystem>,
  @as("NewGameSessionProtectionPolicy") newGameSessionProtectionPolicy: option<protectionPolicy>,
  @as("LogPaths") logPaths: option<stringList>,
  @as("ServerLaunchParameters") serverLaunchParameters: option<nonZeroAndMaxString>,
  @as("ServerLaunchPath") serverLaunchPath: option<nonZeroAndMaxString>,
  @as("ScriptArn") scriptArn: option<scriptArn>,
  @as("ScriptId") scriptId: option<scriptId>,
  @as("BuildArn") buildArn: option<buildArn>,
  @as("BuildId") buildId: option<buildId>,
  @as("Status") status: option<fleetStatus>,
  @as("TerminationTime") terminationTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("Name") name: option<nonZeroAndMaxString>,
  @as("Description") description: option<nonZeroAndMaxString>,
  @as("InstanceType") instanceType: option<ec2InstanceType>,
  @as("FleetType") fleetType: option<fleetType>,
  @as("FleetArn") fleetArn: option<fleetArn>,
  @as("FleetId") fleetId: option<fleetId>,
}
type filterConfiguration = {@as("AllowedLocations") allowedLocations: option<locationList>}
type eventList = array<event>
type ec2InstanceLimitList = array<ec2InstanceLimit>
type desiredPlayerSessionList = array<desiredPlayerSession>
type buildList = array<build>
type attributeValue = {
  @as("SDM") sdm: option<stringDoubleMap>,
  @as("SL") sl: option<stringList>,
  @as("N") n: option<doubleObject>,
  @as("S") s: option<nonZeroAndMaxString>,
}
type alias = {
  @as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("RoutingStrategy") routingStrategy: option<routingStrategy>,
  @as("Description") description: option<freeText>,
  @as("AliasArn") aliasArn: option<aliasArn>,
  @as("Name") name: option<nonBlankAndLengthConstraintString>,
  @as("AliasId") aliasId: option<aliasId>,
}
type vpcPeeringConnectionList = array<vpcPeeringConnection>
type scriptList = array<script>
type scalingPolicyList = array<scalingPolicy>
type runtimeConfiguration = {
  @as("GameSessionActivationTimeoutSeconds")
  gameSessionActivationTimeoutSeconds: option<gameSessionActivationTimeoutSeconds>,
  @as("MaxConcurrentGameSessionActivations")
  maxConcurrentGameSessionActivations: option<maxConcurrentGameSessionActivations>,
  @as("ServerProcesses") serverProcesses: option<serverProcessList>,
}
type playerAttributeMap = Js.Dict.t<attributeValue>
type matchmakingConfiguration = {
  @as("FlexMatchMode") flexMatchMode: option<flexMatchMode>,
  @as("BackfillMode") backfillMode: option<backfillMode>,
  @as("GameSessionData") gameSessionData: option<gameSessionData>,
  @as("GameProperties") gameProperties: option<gamePropertyList>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("CustomEventData") customEventData: option<customEventData>,
  @as("AdditionalPlayerCount") additionalPlayerCount: option<wholeNumber>,
  @as("NotificationTarget") notificationTarget: option<snsArnStringModel>,
  @as("RuleSetArn") ruleSetArn: option<matchmakingRuleSetArn>,
  @as("RuleSetName") ruleSetName: option<matchmakingIdStringModel>,
  @as("AcceptanceRequired") acceptanceRequired: option<booleanModel>,
  @as("AcceptanceTimeoutSeconds")
  acceptanceTimeoutSeconds: option<matchmakingAcceptanceTimeoutInteger>,
  @as("RequestTimeoutSeconds") requestTimeoutSeconds: option<matchmakingRequestTimeoutInteger>,
  @as("GameSessionQueueArns") gameSessionQueueArns: option<queueArnsList>,
  @as("Description") description: option<nonZeroAndMaxString>,
  @as("ConfigurationArn") configurationArn: option<matchmakingConfigurationArn>,
  @as("Name") name: option<matchmakingIdStringModel>,
}
type locationAttributesList = array<locationAttributes>
type gameSessionQueue = {
  @as("NotificationTarget") notificationTarget: option<queueSnsArnStringModel>,
  @as("CustomEventData") customEventData: option<queueCustomEventData>,
  @as("PriorityConfiguration") priorityConfiguration: option<priorityConfiguration>,
  @as("FilterConfiguration") filterConfiguration: option<filterConfiguration>,
  @as("Destinations") destinations: option<gameSessionQueueDestinationList>,
  @as("PlayerLatencyPolicies") playerLatencyPolicies: option<playerLatencyPolicyList>,
  @as("TimeoutInSeconds") timeoutInSeconds: option<wholeNumber>,
  @as("GameSessionQueueArn") gameSessionQueueArn: option<gameSessionQueueArn>,
  @as("Name") name: option<gameSessionQueueName>,
}
type gameSessionPlacement = {
  @as("MatchmakerData") matchmakerData: option<matchmakerData>,
  @as("GameSessionData") gameSessionData: option<largeGameSessionData>,
  @as("PlacedPlayerSessions") placedPlayerSessions: option<placedPlayerSessionList>,
  @as("Port") port: option<portNumber>,
  @as("DnsName") dnsName: option<dnsName>,
  @as("IpAddress") ipAddress: option<ipAddress>,
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: option<timestamp_>,
  @as("PlayerLatencies") playerLatencies: option<playerLatencyList>,
  @as("GameSessionRegion") gameSessionRegion: option<nonZeroAndMaxString>,
  @as("GameSessionArn") gameSessionArn: option<nonZeroAndMaxString>,
  @as("GameSessionId") gameSessionId: option<nonZeroAndMaxString>,
  @as("GameSessionName") gameSessionName: option<nonZeroAndMaxString>,
  @as("MaximumPlayerSessionCount") maximumPlayerSessionCount: option<wholeNumber>,
  @as("GameProperties") gameProperties: option<gamePropertyList>,
  @as("Status") status: option<gameSessionPlacementState>,
  @as("GameSessionQueueName") gameSessionQueueName: option<gameSessionQueueName>,
  @as("PlacementId") placementId: option<idStringModel>,
}
type gameSessionConnectionInfo = {
  @as("MatchedPlayerSessions") matchedPlayerSessions: option<matchedPlayerSessionList>,
  @as("Port") port: option<positiveInteger>,
  @as("DnsName") dnsName: option<dnsName>,
  @as("IpAddress") ipAddress: option<stringModel>,
  @as("GameSessionArn") gameSessionArn: option<arnStringModel>,
}
type gameSession = {
  @as("Location") location: option<locationStringModel>,
  @as("MatchmakerData") matchmakerData: option<matchmakerData>,
  @as("GameSessionData") gameSessionData: option<largeGameSessionData>,
  @as("CreatorId") creatorId: option<nonZeroAndMaxString>,
  @as("PlayerSessionCreationPolicy")
  playerSessionCreationPolicy: option<playerSessionCreationPolicy>,
  @as("Port") port: option<portNumber>,
  @as("DnsName") dnsName: option<dnsName>,
  @as("IpAddress") ipAddress: option<ipAddress>,
  @as("GameProperties") gameProperties: option<gamePropertyList>,
  @as("StatusReason") statusReason: option<gameSessionStatusReason>,
  @as("Status") status: option<gameSessionStatus>,
  @as("MaximumPlayerSessionCount") maximumPlayerSessionCount: option<wholeNumber>,
  @as("CurrentPlayerSessionCount") currentPlayerSessionCount: option<wholeNumber>,
  @as("TerminationTime") terminationTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("FleetArn") fleetArn: option<fleetArn>,
  @as("FleetId") fleetId: option<fleetId>,
  @as("Name") name: option<nonZeroAndMaxString>,
  @as("GameSessionId") gameSessionId: option<nonZeroAndMaxString>,
}
type gameServerGroup = {
  @as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("SuspendedActions") suspendedActions: option<gameServerGroupActions>,
  @as("StatusReason") statusReason: option<nonZeroAndMaxString>,
  @as("Status") status: option<gameServerGroupStatus>,
  @as("AutoScalingGroupArn") autoScalingGroupArn: option<autoScalingGroupArn>,
  @as("GameServerProtectionPolicy") gameServerProtectionPolicy: option<gameServerProtectionPolicy>,
  @as("BalancingStrategy") balancingStrategy: option<balancingStrategy>,
  @as("InstanceDefinitions") instanceDefinitions: option<instanceDefinitions>,
  @as("RoleArn") roleArn: option<iamRoleArn>,
  @as("GameServerGroupArn") gameServerGroupArn: option<gameServerGroupArn>,
  @as("GameServerGroupName") gameServerGroupName: option<gameServerGroupName>,
}
type fleetCapacityList = array<fleetCapacity>
type fleetAttributesList = array<fleetAttributes>
type aliasList = array<alias>
type player = {
  @as("LatencyInMs") latencyInMs: option<latencyMap>,
  @as("Team") team: option<nonZeroAndMaxString>,
  @as("PlayerAttributes") playerAttributes: option<playerAttributeMap>,
  @as("PlayerId") playerId: option<nonZeroAndMaxString>,
}
type matchmakingConfigurationList = array<matchmakingConfiguration>
type gameSessionQueueList = array<gameSessionQueue>
type gameSessionList = array<gameSession>
type gameSessionDetail = {
  @as("ProtectionPolicy") protectionPolicy: option<protectionPolicy>,
  @as("GameSession") gameSession: option<gameSession>,
}
type gameServerGroups = array<gameServerGroup>
type playerList = array<player>
type gameSessionDetailList = array<gameSessionDetail>
type matchmakingTicket = {
  @as("EstimatedWaitTime") estimatedWaitTime: option<wholeNumber>,
  @as("GameSessionConnectionInfo") gameSessionConnectionInfo: option<gameSessionConnectionInfo>,
  @as("Players") players: option<playerList>,
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: option<timestamp_>,
  @as("StatusMessage") statusMessage: option<stringModel>,
  @as("StatusReason") statusReason: option<stringModel>,
  @as("Status") status: option<matchmakingConfigurationStatus>,
  @as("ConfigurationArn") configurationArn: option<matchmakingConfigurationArn>,
  @as("ConfigurationName") configurationName: option<matchmakingIdStringModel>,
  @as("TicketId") ticketId: option<matchmakingIdStringModel>,
}
type matchmakingTicketList = array<matchmakingTicket>

module ValidateMatchmakingRuleSet = {
  type t
  type request = {@as("RuleSetBody") ruleSetBody: ruleSetBody}
  type response = {@as("Valid") valid: option<booleanModel>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "ValidateMatchmakingRuleSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFleetCapacity = {
  type t
  type request = {
    @as("Location") location: option<locationStringModel>,
    @as("MaxSize") maxSize: option<wholeNumber>,
    @as("MinSize") minSize: option<wholeNumber>,
    @as("DesiredInstances") desiredInstances: option<wholeNumber>,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {
    @as("Location") location: option<locationStringModel>,
    @as("FleetArn") fleetArn: option<fleetArn>,
    @as("FleetId") fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UpdateFleetCapacityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopMatchmaking = {
  type t
  type request = {@as("TicketId") ticketId: matchmakingIdStringModel}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "StopMatchmakingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResolveAlias = {
  type t
  type request = {@as("AliasId") aliasId: aliasIdOrArn}
  type response = {
    @as("FleetArn") fleetArn: option<fleetArn>,
    @as("FleetId") fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ResolveAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGameSessionLogUrl = {
  type t
  type request = {@as("GameSessionId") gameSessionId: arnStringModel}
  type response = {@as("PreSignedUrl") preSignedUrl: option<nonZeroAndMaxString>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "GetGameSessionLogUrlCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterGameServer = {
  type t
  type request = {
    @as("GameServerId") gameServerId: gameServerId,
    @as("GameServerGroupName") gameServerGroupName: gameServerGroupNameOrArn,
  }

  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeregisterGameServerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVpcPeeringConnection = {
  type t
  type request = {
    @as("VpcPeeringConnectionId") vpcPeeringConnectionId: nonZeroAndMaxString,
    @as("FleetId") fleetId: fleetId,
  }
  type response = unit
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteVpcPeeringConnectionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVpcPeeringAuthorization = {
  type t
  type request = {
    @as("PeerVpcId") peerVpcId: nonZeroAndMaxString,
    @as("GameLiftAwsAccountId") gameLiftAwsAccountId: nonZeroAndMaxString,
  }
  type response = unit
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteVpcPeeringAuthorizationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteScript = {
  type t
  type request = {@as("ScriptId") scriptId: scriptIdOrArn}

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DeleteScriptCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteScalingPolicy = {
  type t
  type request = {
    @as("FleetId") fleetId: fleetIdOrArn,
    @as("Name") name: nonZeroAndMaxString,
  }

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DeleteScalingPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMatchmakingRuleSet = {
  type t
  type request = {@as("Name") name: matchmakingRuleSetName}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteMatchmakingRuleSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMatchmakingConfiguration = {
  type t
  type request = {@as("Name") name: matchmakingConfigurationName}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteMatchmakingConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGameSessionQueue = {
  type t
  type request = {@as("Name") name: gameSessionQueueNameOrArn}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteGameSessionQueueCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFleet = {
  type t
  type request = {@as("FleetId") fleetId: fleetIdOrArn}

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DeleteFleetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBuild = {
  type t
  type request = {@as("BuildId") buildId: buildIdOrArn}

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DeleteBuildCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAlias = {
  type t
  type request = {@as("AliasId") aliasId: aliasIdOrArn}

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DeleteAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateVpcPeeringConnection = {
  type t
  type request = {
    @as("PeerVpcId") peerVpcId: nonZeroAndMaxString,
    @as("PeerVpcAwsAccountId") peerVpcAwsAccountId: nonZeroAndMaxString,
    @as("FleetId") fleetId: fleetId,
  }
  type response = unit
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateVpcPeeringConnectionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGameServer = {
  type t
  type request = {
    @as("HealthCheck") healthCheck: option<gameServerHealthCheck>,
    @as("UtilizationStatus") utilizationStatus: option<gameServerUtilizationStatus>,
    @as("GameServerData") gameServerData: option<gameServerData>,
    @as("GameServerId") gameServerId: gameServerId,
    @as("GameServerGroupName") gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {@as("GameServer") gameServer: option<gameServer>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UpdateGameServerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFleetAttributes = {
  type t
  type request = {
    @as("MetricGroups") metricGroups: option<metricGroupList>,
    @as("ResourceCreationLimitPolicy")
    resourceCreationLimitPolicy: option<resourceCreationLimitPolicy>,
    @as("NewGameSessionProtectionPolicy") newGameSessionProtectionPolicy: option<protectionPolicy>,
    @as("Description") description: option<nonZeroAndMaxString>,
    @as("Name") name: option<nonZeroAndMaxString>,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {@as("FleetId") fleetId: option<fleetId>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "UpdateFleetAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBuild = {
  type t
  type request = {
    @as("Version") version: option<nonZeroAndMaxString>,
    @as("Name") name: option<nonZeroAndMaxString>,
    @as("BuildId") buildId: buildIdOrArn,
  }
  type response = {@as("Build") build: option<build>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UpdateBuildCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopFleetActions = {
  type t
  type request = {
    @as("Location") location: option<locationStringModel>,
    @as("Actions") actions: fleetActionList,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {
    @as("FleetArn") fleetArn: option<fleetArn>,
    @as("FleetId") fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "StopFleetActionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartFleetActions = {
  type t
  type request = {
    @as("Location") location: option<locationStringModel>,
    @as("Actions") actions: fleetActionList,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {
    @as("FleetArn") fleetArn: option<fleetArn>,
    @as("FleetId") fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "StartFleetActionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RequestUploadCredentials = {
  type t
  type request = {@as("BuildId") buildId: buildIdOrArn}
  type response = {
    @as("StorageLocation") storageLocation: option<s3Location>,
    @as("UploadCredentials") uploadCredentials: option<awsCredentials>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "RequestUploadCredentialsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterGameServer = {
  type t
  type request = {
    @as("GameServerData") gameServerData: option<gameServerData>,
    @as("ConnectionInfo") connectionInfo: option<gameServerConnectionInfo>,
    @as("InstanceId") instanceId: gameServerInstanceId,
    @as("GameServerId") gameServerId: gameServerId,
    @as("GameServerGroupName") gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {@as("GameServer") gameServer: option<gameServer>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "RegisterGameServerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutScalingPolicy = {
  type t
  type request = {
    @as("TargetConfiguration") targetConfiguration: option<targetConfiguration>,
    @as("PolicyType") policyType: option<policyType>,
    @as("MetricName") metricName: metricName,
    @as("EvaluationPeriods") evaluationPeriods: option<positiveInteger>,
    @as("ComparisonOperator") comparisonOperator: option<comparisonOperatorType>,
    @as("Threshold") threshold: option<double>,
    @as("ScalingAdjustmentType") scalingAdjustmentType: option<scalingAdjustmentType>,
    @as("ScalingAdjustment") scalingAdjustment: option<integer_>,
    @as("FleetId") fleetId: fleetIdOrArn,
    @as("Name") name: nonZeroAndMaxString,
  }
  type response = {@as("Name") name: option<nonZeroAndMaxString>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "PutScalingPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFleets = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("ScriptId") scriptId: option<scriptIdOrArn>,
    @as("BuildId") buildId: option<buildIdOrArn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("FleetIds") fleetIds: option<fleetIdList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ListFleetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameServer = {
  type t
  type request = {
    @as("GameServerId") gameServerId: gameServerId,
    @as("GameServerGroupName") gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {@as("GameServer") gameServer: option<gameServer>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeGameServerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetLocationUtilization = {
  type t
  type request = {
    @as("Location") location: locationStringModel,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {@as("FleetUtilization") fleetUtilization: option<fleetUtilization>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetLocationUtilizationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBuild = {
  type t
  type request = {@as("BuildId") buildId: buildIdOrArn}
  type response = {@as("Build") build: option<build>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeBuildCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVpcPeeringAuthorization = {
  type t
  type request = {
    @as("PeerVpcId") peerVpcId: nonZeroAndMaxString,
    @as("GameLiftAwsAccountId") gameLiftAwsAccountId: nonZeroAndMaxString,
  }
  type response = {
    @as("VpcPeeringAuthorization") vpcPeeringAuthorization: option<vpcPeeringAuthorization>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateVpcPeeringAuthorizationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePlayerSession = {
  type t
  type request = {
    @as("PlayerData") playerData: option<playerData>,
    @as("PlayerId") playerId: nonZeroAndMaxString,
    @as("GameSessionId") gameSessionId: arnStringModel,
  }
  type response = {@as("PlayerSession") playerSession: option<playerSession>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "CreatePlayerSessionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ClaimGameServer = {
  type t
  type request = {
    @as("GameServerData") gameServerData: option<gameServerData>,
    @as("GameServerId") gameServerId: option<gameServerId>,
    @as("GameServerGroupName") gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {@as("GameServer") gameServer: option<gameServer>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ClaimGameServerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptMatch = {
  type t
  type request = {
    @as("AcceptanceType") acceptanceType: acceptanceType,
    @as("PlayerIds") playerIds: stringList,
    @as("TicketId") ticketId: matchmakingIdStringModel,
  }
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "AcceptMatchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateScript = {
  type t
  type request = {
    @as("ZipFile") zipFile: option<zipBlob>,
    @as("StorageLocation") storageLocation: option<s3Location>,
    @as("Version") version: option<nonZeroAndMaxString>,
    @as("Name") name: option<nonZeroAndMaxString>,
    @as("ScriptId") scriptId: scriptIdOrArn,
  }
  type response = {@as("Script") script: option<script>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UpdateScriptCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFleetPortSettings = {
  type t
  type request = {
    @as("InboundPermissionRevocations") inboundPermissionRevocations: option<ipPermissionsList>,
    @as("InboundPermissionAuthorizations")
    inboundPermissionAuthorizations: option<ipPermissionsList>,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {@as("FleetId") fleetId: option<fleetId>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "UpdateFleetPortSettingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAlias = {
  type t
  type request = {
    @as("RoutingStrategy") routingStrategy: option<routingStrategy>,
    @as("Description") description: option<nonZeroAndMaxString>,
    @as("Name") name: option<nonBlankAndLengthConstraintString>,
    @as("AliasId") aliasId: aliasIdOrArn,
  }
  type response = {@as("Alias") alias: option<alias>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UpdateAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceARN") resourceARN: amazonResourceName}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGameServers = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("GameServerGroupName") gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("GameServers") gameServers: option<gameServers>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ListGameServersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBuilds = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonEmptyString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("Status") status: option<buildStatus>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonEmptyString>,
    @as("Builds") builds: option<buildList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ListBuildsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstanceAccess = {
  type t
  type request = {
    @as("InstanceId") instanceId: instanceId,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {@as("InstanceAccess") instanceAccess: option<instanceAccess>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "GetInstanceAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcPeeringAuthorizations = {
  type t
  type request = unit
  type response = {
    @as("VpcPeeringAuthorizations") vpcPeeringAuthorizations: option<vpcPeeringAuthorizationList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeVpcPeeringAuthorizationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScript = {
  type t
  type request = {@as("ScriptId") scriptId: scriptIdOrArn}
  type response = {@as("Script") script: option<script>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeScriptCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePlayerSessions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("PlayerSessionStatusFilter") playerSessionStatusFilter: option<nonZeroAndMaxString>,
    @as("PlayerSessionId") playerSessionId: option<playerSessionId>,
    @as("PlayerId") playerId: option<nonZeroAndMaxString>,
    @as("GameSessionId") gameSessionId: option<arnStringModel>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("PlayerSessions") playerSessions: option<playerSessionList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribePlayerSessionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMatchmakingRuleSets = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<ruleSetLimit>,
    @as("Names") names: option<matchmakingRuleSetNameList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("RuleSets") ruleSets: matchmakingRuleSetList,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeMatchmakingRuleSetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstances = {
  type t
  type request = {
    @as("Location") location: option<locationStringModel>,
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("InstanceId") instanceId: option<instanceId>,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Instances") instances: option<instanceList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeInstancesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameServerInstances = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("InstanceIds") instanceIds: option<gameServerInstanceIds>,
    @as("GameServerGroupName") gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("GameServerInstances") gameServerInstances: option<gameServerInstances>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeGameServerInstancesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetUtilization = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("FleetIds") fleetIds: option<fleetIdOrArnList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("FleetUtilization") fleetUtilization: option<fleetUtilizationList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetUtilizationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetPortSettings = {
  type t
  type request = {
    @as("Location") location: option<locationStringModel>,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {
    @as("Location") location: option<locationStringModel>,
    @as("UpdateStatus") updateStatus: option<locationUpdateStatus>,
    @as("InboundPermissions") inboundPermissions: option<ipPermissionsList>,
    @as("FleetArn") fleetArn: option<fleetArn>,
    @as("FleetId") fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetPortSettingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetLocationCapacity = {
  type t
  type request = {
    @as("Location") location: locationStringModel,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {@as("FleetCapacity") fleetCapacity: option<fleetCapacity>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetLocationCapacityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetEvents = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("EndTime") endTime: option<timestamp_>,
    @as("StartTime") startTime: option<timestamp_>,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Events") events: option<eventList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeFleetEventsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEC2InstanceLimits = {
  type t
  type request = {
    @as("Location") location: option<locationStringModel>,
    @as("EC2InstanceType") ec2InstanceType: option<ec2InstanceType>,
  }
  type response = {@as("EC2InstanceLimits") ec2InstanceLimits: option<ec2InstanceLimitList>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeEC2InstanceLimitsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlias = {
  type t
  type request = {@as("AliasId") aliasId: aliasIdOrArn}
  type response = {@as("Alias") alias: option<alias>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFleetLocations = {
  type t
  type request = {
    @as("Locations") locations: locationList,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {
    @as("LocationStates") locationStates: option<locationStateList>,
    @as("FleetArn") fleetArn: option<fleetArn>,
    @as("FleetId") fleetId: option<fleetIdOrArn>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteFleetLocationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateScript = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ZipFile") zipFile: option<zipBlob>,
    @as("StorageLocation") storageLocation: option<s3Location>,
    @as("Version") version: option<nonZeroAndMaxString>,
    @as("Name") name: option<nonZeroAndMaxString>,
  }
  type response = {@as("Script") script: option<script>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "CreateScriptCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePlayerSessions = {
  type t
  type request = {
    @as("PlayerDataMap") playerDataMap: option<playerDataMap>,
    @as("PlayerIds") playerIds: playerIdList,
    @as("GameSessionId") gameSessionId: arnStringModel,
  }
  type response = {@as("PlayerSessions") playerSessions: option<playerSessionList>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreatePlayerSessionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMatchmakingRuleSet = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("RuleSetBody") ruleSetBody: ruleSetBody,
    @as("Name") name: matchmakingIdStringModel,
  }
  type response = {@as("RuleSet") ruleSet: matchmakingRuleSet}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateMatchmakingRuleSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFleetLocations = {
  type t
  type request = {
    @as("Locations") locations: locationConfigurationList,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {
    @as("LocationStates") locationStates: option<locationStateList>,
    @as("FleetArn") fleetArn: option<fleetArn>,
    @as("FleetId") fleetId: option<fleetIdOrArn>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateFleetLocationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBuild = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("OperatingSystem") operatingSystem: option<operatingSystem>,
    @as("StorageLocation") storageLocation: option<s3Location>,
    @as("Version") version: option<nonZeroAndMaxString>,
    @as("Name") name: option<nonZeroAndMaxString>,
  }
  type response = {
    @as("StorageLocation") storageLocation: option<s3Location>,
    @as("UploadCredentials") uploadCredentials: option<awsCredentials>,
    @as("Build") build: option<build>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "CreateBuildCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAlias = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("RoutingStrategy") routingStrategy: routingStrategy,
    @as("Description") description: option<nonZeroAndMaxString>,
    @as("Name") name: nonBlankAndLengthConstraintString,
  }
  type response = {@as("Alias") alias: option<alias>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "CreateAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRuntimeConfiguration = {
  type t
  type request = {
    @as("RuntimeConfiguration") runtimeConfiguration: runtimeConfiguration,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {@as("RuntimeConfiguration") runtimeConfiguration: option<runtimeConfiguration>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "UpdateRuntimeConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMatchmakingConfiguration = {
  type t
  type request = {
    @as("FlexMatchMode") flexMatchMode: option<flexMatchMode>,
    @as("BackfillMode") backfillMode: option<backfillMode>,
    @as("GameSessionData") gameSessionData: option<gameSessionData>,
    @as("GameProperties") gameProperties: option<gamePropertyList>,
    @as("CustomEventData") customEventData: option<customEventData>,
    @as("AdditionalPlayerCount") additionalPlayerCount: option<wholeNumber>,
    @as("NotificationTarget") notificationTarget: option<snsArnStringModel>,
    @as("RuleSetName") ruleSetName: option<matchmakingRuleSetName>,
    @as("AcceptanceRequired") acceptanceRequired: option<booleanModel>,
    @as("AcceptanceTimeoutSeconds")
    acceptanceTimeoutSeconds: option<matchmakingAcceptanceTimeoutInteger>,
    @as("RequestTimeoutSeconds") requestTimeoutSeconds: option<matchmakingRequestTimeoutInteger>,
    @as("GameSessionQueueArns") gameSessionQueueArns: option<queueArnsList>,
    @as("Description") description: option<nonZeroAndMaxString>,
    @as("Name") name: matchmakingConfigurationName,
  }
  type response = {@as("Configuration") configuration: option<matchmakingConfiguration>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "UpdateMatchmakingConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGameSessionQueue = {
  type t
  type request = {
    @as("NotificationTarget") notificationTarget: option<queueSnsArnStringModel>,
    @as("CustomEventData") customEventData: option<queueCustomEventData>,
    @as("PriorityConfiguration") priorityConfiguration: option<priorityConfiguration>,
    @as("FilterConfiguration") filterConfiguration: option<filterConfiguration>,
    @as("Destinations") destinations: option<gameSessionQueueDestinationList>,
    @as("PlayerLatencyPolicies") playerLatencyPolicies: option<playerLatencyPolicyList>,
    @as("TimeoutInSeconds") timeoutInSeconds: option<wholeNumber>,
    @as("Name") name: gameSessionQueueNameOrArn,
  }
  type response = {@as("GameSessionQueue") gameSessionQueue: option<gameSessionQueue>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "UpdateGameSessionQueueCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGameSession = {
  type t
  type request = {
    @as("ProtectionPolicy") protectionPolicy: option<protectionPolicy>,
    @as("PlayerSessionCreationPolicy")
    playerSessionCreationPolicy: option<playerSessionCreationPolicy>,
    @as("Name") name: option<nonZeroAndMaxString>,
    @as("MaximumPlayerSessionCount") maximumPlayerSessionCount: option<wholeNumber>,
    @as("GameSessionId") gameSessionId: arnStringModel,
  }
  type response = {@as("GameSession") gameSession: option<gameSession>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UpdateGameSessionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGameServerGroup = {
  type t
  type request = {
    @as("BalancingStrategy") balancingStrategy: option<balancingStrategy>,
    @as("GameServerProtectionPolicy")
    gameServerProtectionPolicy: option<gameServerProtectionPolicy>,
    @as("InstanceDefinitions") instanceDefinitions: option<instanceDefinitions>,
    @as("RoleArn") roleArn: option<iamRoleArn>,
    @as("GameServerGroupName") gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {@as("GameServerGroup") gameServerGroup: option<gameServerGroup>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "UpdateGameServerGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SuspendGameServerGroup = {
  type t
  type request = {
    @as("SuspendActions") suspendActions: gameServerGroupActions,
    @as("GameServerGroupName") gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {@as("GameServerGroup") gameServerGroup: option<gameServerGroup>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "SuspendGameServerGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopGameSessionPlacement = {
  type t
  type request = {@as("PlacementId") placementId: idStringModel}
  type response = {@as("GameSessionPlacement") gameSessionPlacement: option<gameSessionPlacement>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "StopGameSessionPlacementCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartGameSessionPlacement = {
  type t
  type request = {
    @as("GameSessionData") gameSessionData: option<largeGameSessionData>,
    @as("DesiredPlayerSessions") desiredPlayerSessions: option<desiredPlayerSessionList>,
    @as("PlayerLatencies") playerLatencies: option<playerLatencyList>,
    @as("GameSessionName") gameSessionName: option<nonZeroAndMaxString>,
    @as("MaximumPlayerSessionCount") maximumPlayerSessionCount: wholeNumber,
    @as("GameProperties") gameProperties: option<gamePropertyList>,
    @as("GameSessionQueueName") gameSessionQueueName: gameSessionQueueNameOrArn,
    @as("PlacementId") placementId: idStringModel,
  }
  type response = {@as("GameSessionPlacement") gameSessionPlacement: option<gameSessionPlacement>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "StartGameSessionPlacementCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResumeGameServerGroup = {
  type t
  type request = {
    @as("ResumeActions") resumeActions: gameServerGroupActions,
    @as("GameServerGroupName") gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {@as("GameServerGroup") gameServerGroup: option<gameServerGroup>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "ResumeGameServerGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListScripts = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonEmptyString>,
    @as("Limit") limit: option<positiveInteger>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonEmptyString>,
    @as("Scripts") scripts: option<scriptList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ListScriptsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAliases = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonEmptyString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("Name") name: option<nonEmptyString>,
    @as("RoutingStrategyType") routingStrategyType: option<routingStrategyType>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonEmptyString>,
    @as("Aliases") aliases: option<aliasList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ListAliasesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcPeeringConnections = {
  type t
  type request = {@as("FleetId") fleetId: option<fleetId>}
  type response = {
    @as("VpcPeeringConnections") vpcPeeringConnections: option<vpcPeeringConnectionList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeVpcPeeringConnectionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScalingPolicies = {
  type t
  type request = {
    @as("Location") location: option<locationStringModel>,
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("StatusFilter") statusFilter: option<scalingStatusType>,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("ScalingPolicies") scalingPolicies: option<scalingPolicyList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeScalingPoliciesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRuntimeConfiguration = {
  type t
  type request = {@as("FleetId") fleetId: fleetIdOrArn}
  type response = {@as("RuntimeConfiguration") runtimeConfiguration: option<runtimeConfiguration>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeRuntimeConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameSessionPlacement = {
  type t
  type request = {@as("PlacementId") placementId: idStringModel}
  type response = {@as("GameSessionPlacement") gameSessionPlacement: option<gameSessionPlacement>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeGameSessionPlacementCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameServerGroup = {
  type t
  type request = {@as("GameServerGroupName") gameServerGroupName: gameServerGroupNameOrArn}
  type response = {@as("GameServerGroup") gameServerGroup: option<gameServerGroup>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeGameServerGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetLocationAttributes = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("Locations") locations: option<locationList>,
    @as("FleetId") fleetId: fleetIdOrArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("LocationAttributes") locationAttributes: option<locationAttributesList>,
    @as("FleetArn") fleetArn: option<fleetArn>,
    @as("FleetId") fleetId: option<fleetIdOrArn>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetLocationAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetCapacity = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("FleetIds") fleetIds: option<fleetIdOrArnList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("FleetCapacity") fleetCapacity: option<fleetCapacityList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetCapacityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetAttributes = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("FleetIds") fleetIds: option<fleetIdOrArnList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("FleetAttributes") fleetAttributes: option<fleetAttributesList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGameServerGroup = {
  type t
  type request = {
    @as("DeleteOption") deleteOption: option<gameServerGroupDeleteOption>,
    @as("GameServerGroupName") gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {@as("GameServerGroup") gameServerGroup: option<gameServerGroup>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteGameServerGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMatchmakingConfiguration = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("FlexMatchMode") flexMatchMode: option<flexMatchMode>,
    @as("BackfillMode") backfillMode: option<backfillMode>,
    @as("GameSessionData") gameSessionData: option<gameSessionData>,
    @as("GameProperties") gameProperties: option<gamePropertyList>,
    @as("CustomEventData") customEventData: option<customEventData>,
    @as("AdditionalPlayerCount") additionalPlayerCount: option<wholeNumber>,
    @as("NotificationTarget") notificationTarget: option<snsArnStringModel>,
    @as("RuleSetName") ruleSetName: matchmakingRuleSetName,
    @as("AcceptanceRequired") acceptanceRequired: booleanModel,
    @as("AcceptanceTimeoutSeconds")
    acceptanceTimeoutSeconds: option<matchmakingAcceptanceTimeoutInteger>,
    @as("RequestTimeoutSeconds") requestTimeoutSeconds: matchmakingRequestTimeoutInteger,
    @as("GameSessionQueueArns") gameSessionQueueArns: option<queueArnsList>,
    @as("Description") description: option<nonZeroAndMaxString>,
    @as("Name") name: matchmakingIdStringModel,
  }
  type response = {@as("Configuration") configuration: option<matchmakingConfiguration>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateMatchmakingConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGameSessionQueue = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("NotificationTarget") notificationTarget: option<queueSnsArnStringModel>,
    @as("CustomEventData") customEventData: option<queueCustomEventData>,
    @as("PriorityConfiguration") priorityConfiguration: option<priorityConfiguration>,
    @as("FilterConfiguration") filterConfiguration: option<filterConfiguration>,
    @as("Destinations") destinations: option<gameSessionQueueDestinationList>,
    @as("PlayerLatencyPolicies") playerLatencyPolicies: option<playerLatencyPolicyList>,
    @as("TimeoutInSeconds") timeoutInSeconds: option<wholeNumber>,
    @as("Name") name: gameSessionQueueName,
  }
  type response = {@as("GameSessionQueue") gameSessionQueue: option<gameSessionQueue>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateGameSessionQueueCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGameSession = {
  type t
  type request = {
    @as("Location") location: option<locationStringModel>,
    @as("GameSessionData") gameSessionData: option<largeGameSessionData>,
    @as("IdempotencyToken") idempotencyToken: option<idStringModel>,
    @as("GameSessionId") gameSessionId: option<idStringModel>,
    @as("CreatorId") creatorId: option<nonZeroAndMaxString>,
    @as("GameProperties") gameProperties: option<gamePropertyList>,
    @as("Name") name: option<nonZeroAndMaxString>,
    @as("MaximumPlayerSessionCount") maximumPlayerSessionCount: wholeNumber,
    @as("AliasId") aliasId: option<aliasIdOrArn>,
    @as("FleetId") fleetId: option<fleetIdOrArn>,
  }
  type response = {@as("GameSession") gameSession: option<gameSession>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "CreateGameSessionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGameServerGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("VpcSubnets") vpcSubnets: option<vpcSubnets>,
    @as("GameServerProtectionPolicy")
    gameServerProtectionPolicy: option<gameServerProtectionPolicy>,
    @as("BalancingStrategy") balancingStrategy: option<balancingStrategy>,
    @as("AutoScalingPolicy") autoScalingPolicy: option<gameServerGroupAutoScalingPolicy>,
    @as("InstanceDefinitions") instanceDefinitions: instanceDefinitions,
    @as("LaunchTemplate") launchTemplate: launchTemplateSpecification,
    @as("MaxSize") maxSize: positiveInteger,
    @as("MinSize") minSize: wholeNumber,
    @as("RoleArn") roleArn: iamRoleArn,
    @as("GameServerGroupName") gameServerGroupName: gameServerGroupName,
  }
  type response = {@as("GameServerGroup") gameServerGroup: option<gameServerGroup>}
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateGameServerGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFleet = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Locations") locations: option<locationConfigurationList>,
    @as("CertificateConfiguration") certificateConfiguration: option<certificateConfiguration>,
    @as("InstanceRoleArn") instanceRoleArn: option<nonEmptyString>,
    @as("FleetType") fleetType: option<fleetType>,
    @as("PeerVpcId") peerVpcId: option<nonZeroAndMaxString>,
    @as("PeerVpcAwsAccountId") peerVpcAwsAccountId: option<nonZeroAndMaxString>,
    @as("MetricGroups") metricGroups: option<metricGroupList>,
    @as("ResourceCreationLimitPolicy")
    resourceCreationLimitPolicy: option<resourceCreationLimitPolicy>,
    @as("RuntimeConfiguration") runtimeConfiguration: option<runtimeConfiguration>,
    @as("NewGameSessionProtectionPolicy") newGameSessionProtectionPolicy: option<protectionPolicy>,
    @as("EC2InboundPermissions") ec2InboundPermissions: option<ipPermissionsList>,
    @as("EC2InstanceType") ec2InstanceType: ec2InstanceType,
    @as("LogPaths") logPaths: option<stringList>,
    @as("ServerLaunchParameters") serverLaunchParameters: option<nonZeroAndMaxString>,
    @as("ServerLaunchPath") serverLaunchPath: option<nonZeroAndMaxString>,
    @as("ScriptId") scriptId: option<scriptIdOrArn>,
    @as("BuildId") buildId: option<buildIdOrArn>,
    @as("Description") description: option<nonZeroAndMaxString>,
    @as("Name") name: nonZeroAndMaxString,
  }
  type response = {
    @as("LocationStates") locationStates: option<locationStateList>,
    @as("FleetAttributes") fleetAttributes: option<fleetAttributes>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "CreateFleetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchGameSessions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("SortExpression") sortExpression: option<nonZeroAndMaxString>,
    @as("FilterExpression") filterExpression: option<nonZeroAndMaxString>,
    @as("Location") location: option<locationStringModel>,
    @as("AliasId") aliasId: option<aliasIdOrArn>,
    @as("FleetId") fleetId: option<fleetIdOrArn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("GameSessions") gameSessions: option<gameSessionList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "SearchGameSessionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGameServerGroups = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("GameServerGroups") gameServerGroups: option<gameServerGroups>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "ListGameServerGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMatchmakingConfigurations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("RuleSetName") ruleSetName: option<matchmakingRuleSetName>,
    @as("Names") names: option<matchmakingConfigurationNameList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Configurations") configurations: option<matchmakingConfigurationList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeMatchmakingConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameSessions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("StatusFilter") statusFilter: option<nonZeroAndMaxString>,
    @as("Location") location: option<locationStringModel>,
    @as("AliasId") aliasId: option<aliasIdOrArn>,
    @as("GameSessionId") gameSessionId: option<arnStringModel>,
    @as("FleetId") fleetId: option<fleetIdOrArn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("GameSessions") gameSessions: option<gameSessionList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeGameSessionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameSessionQueues = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("Names") names: option<gameSessionQueueNameOrArnList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("GameSessionQueues") gameSessionQueues: option<gameSessionQueueList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeGameSessionQueuesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameSessionDetails = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("Limit") limit: option<positiveInteger>,
    @as("StatusFilter") statusFilter: option<nonZeroAndMaxString>,
    @as("Location") location: option<locationStringModel>,
    @as("AliasId") aliasId: option<aliasIdOrArn>,
    @as("GameSessionId") gameSessionId: option<arnStringModel>,
    @as("FleetId") fleetId: option<fleetIdOrArn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nonZeroAndMaxString>,
    @as("GameSessionDetails") gameSessionDetails: option<gameSessionDetailList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeGameSessionDetailsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMatchmaking = {
  type t
  type request = {
    @as("Players") players: playerList,
    @as("ConfigurationName") configurationName: matchmakingConfigurationName,
    @as("TicketId") ticketId: option<matchmakingIdStringModel>,
  }
  type response = {@as("MatchmakingTicket") matchmakingTicket: option<matchmakingTicket>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "StartMatchmakingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMatchBackfill = {
  type t
  type request = {
    @as("Players") players: playerList,
    @as("GameSessionArn") gameSessionArn: option<arnStringModel>,
    @as("ConfigurationName") configurationName: matchmakingConfigurationName,
    @as("TicketId") ticketId: option<matchmakingIdStringModel>,
  }
  type response = {@as("MatchmakingTicket") matchmakingTicket: option<matchmakingTicket>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "StartMatchBackfillCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMatchmaking = {
  type t
  type request = {@as("TicketIds") ticketIds: matchmakingIdList}
  type response = {@as("TicketList") ticketList: option<matchmakingTicketList>}
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeMatchmakingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
