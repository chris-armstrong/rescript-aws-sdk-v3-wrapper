type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type zipBlob = NodeJs.Buffer.t;
type wholeNumber = int;
type weightedCapacity = string
type vpcSubnet = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type stringModel = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type snsArnStringModel = string
type scriptIdOrArn = string
type scriptId = string
type scriptArn = string
type scalingStatusType = [@as("ERROR") #ERROR | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("DELETE_REQUESTED") #DELETE_REQUESTED | @as("UPDATING") #UPDATING | @as("UPDATE_REQUESTED") #UPDATE_REQUESTED | @as("ACTIVE") #ACTIVE]
type scalingAdjustmentType = [@as("PercentChangeInCapacity") #PercentChangeInCapacity | @as("ExactCapacity") #ExactCapacity | @as("ChangeInCapacity") #ChangeInCapacity]
type ruleSetLimit = int;
type ruleSetBody = string
type routingStrategyType = [@as("TERMINAL") #TERMINAL | @as("SIMPLE") #SIMPLE]
type queueSnsArnStringModel = string
type queueCustomEventData = string
type protectionPolicy = [@as("FullProtection") #FullProtection | @as("NoProtection") #NoProtection]
type priorityType = [@as("LOCATION") #LOCATION | @as("DESTINATION") #DESTINATION | @as("COST") #COST | @as("LATENCY") #LATENCY]
type positiveLong = float;
type positiveInteger = int;
type portNumber = int;
type policyType = [@as("TargetBased") #TargetBased | @as("RuleBased") #RuleBased]
type playerSessionStatus = [@as("TIMEDOUT") #TIMEDOUT | @as("COMPLETED") #COMPLETED | @as("ACTIVE") #ACTIVE | @as("RESERVED") #RESERVED]
type playerSessionId = string
type playerSessionCreationPolicy = [@as("DENY_ALL") #DENY_ALL | @as("ACCEPT_ALL") #ACCEPT_ALL]
type playerData = string
type operatingSystem = [@as("AMAZON_LINUX_2") #AMAZON_LINUX_2 | @as("AMAZON_LINUX") #AMAZON_LINUX | @as("WINDOWS_2012") #WINDOWS_2012]
type nonZeroAndMaxString = string
type nonNegativeDouble = float;
type nonEmptyString = string
type nonBlankString = string
type nonBlankAndLengthConstraintString = string
type metricName = [@as("WaitTime") #WaitTime | @as("QueueDepth") #QueueDepth | @as("PercentIdleInstances") #PercentIdleInstances | @as("PercentAvailableGameSessions") #PercentAvailableGameSessions | @as("IdleInstances") #IdleInstances | @as("CurrentPlayerSessions") #CurrentPlayerSessions | @as("AvailablePlayerSessions") #AvailablePlayerSessions | @as("AvailableGameSessions") #AvailableGameSessions | @as("ActiveInstances") #ActiveInstances | @as("ActiveGameSessions") #ActiveGameSessions | @as("ActivatingGameSessions") #ActivatingGameSessions]
type metricGroup = string
type maxConcurrentGameSessionActivations = int;
type matchmakingRuleSetName = string
type matchmakingRuleSetArn = string
type matchmakingRequestTimeoutInteger = int;
type matchmakingIdStringModel = string
type matchmakingConfigurationStatus = [@as("TIMED_OUT") #TIMED_OUT | @as("SEARCHING") #SEARCHING | @as("REQUIRES_ACCEPTANCE") #REQUIRES_ACCEPTANCE | @as("QUEUED") #QUEUED | @as("PLACING") #PLACING | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("CANCELLED") #CANCELLED]
type matchmakingConfigurationName = string
type matchmakingConfigurationArn = string
type matchmakingAcceptanceTimeoutInteger = int;
type matchmakerData = string
type locationUpdateStatus = [@as("PENDING_UPDATE") #PENDING_UPDATE]
type locationStringModel = string
type launchTemplateVersion = string
type launchTemplateName = string
type launchTemplateId = string
type largeGameSessionData = string
type ipProtocol = [@as("UDP") #UDP | @as("TCP") #TCP]
type ipAddress = string
type amazonawsInteger = int;
type instanceStatus = [@as("TERMINATING") #TERMINATING | @as("ACTIVE") #ACTIVE | @as("PENDING") #PENDING]
type instanceId = string
type idStringModel = string
type iamRoleArn = string
type gameSessionStatusReason = [@as("INTERRUPTED") #INTERRUPTED]
type gameSessionStatus = [@as("ERROR") #ERROR | @as("TERMINATING") #TERMINATING | @as("TERMINATED") #TERMINATED | @as("ACTIVATING") #ACTIVATING | @as("ACTIVE") #ACTIVE]
type gameSessionQueueNameOrArn = string
type gameSessionQueueName = string
type gameSessionQueueArn = string
type gameSessionPlacementState = [@as("FAILED") #FAILED | @as("TIMED_OUT") #TIMED_OUT | @as("CANCELLED") #CANCELLED | @as("FULFILLED") #FULFILLED | @as("PENDING") #PENDING]
type gameSessionData = string
type gameSessionActivationTimeoutSeconds = int;
type gameServerUtilizationStatus = [@as("UTILIZED") #UTILIZED | @as("AVAILABLE") #AVAILABLE]
type gameServerProtectionPolicy = [@as("FULL_PROTECTION") #FULL_PROTECTION | @as("NO_PROTECTION") #NO_PROTECTION]
type gameServerInstanceStatus = [@as("SPOT_TERMINATING") #SPOT_TERMINATING | @as("DRAINING") #DRAINING | @as("ACTIVE") #ACTIVE]
type gameServerInstanceId = string
type gameServerId = string
type gameServerHealthCheck = [@as("HEALTHY") #HEALTHY]
type gameServerGroupStatus = [@as("ERROR") #ERROR | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("DELETE_SCHEDULED") #DELETE_SCHEDULED | @as("ACTIVE") #ACTIVE | @as("ACTIVATING") #ACTIVATING | @as("NEW") #NEW]
type gameServerGroupNameOrArn = string
type gameServerGroupName = string
type gameServerGroupInstanceType = [@as("m5a.24xlarge") #m5a_24xlarge | @as("m5a.16xlarge") #m5a_16xlarge | @as("m5a.12xlarge") #m5a_12xlarge | @as("m5a.8xlarge") #m5a_8xlarge | @as("m5a.4xlarge") #m5a_4xlarge | @as("m5a.2xlarge") #m5a_2xlarge | @as("m5a.xlarge") #m5a_xlarge | @as("m5a.large") #m5a_large | @as("m5.24xlarge") #m5_24xlarge | @as("m5.16xlarge") #m5_16xlarge | @as("m5.12xlarge") #m5_12xlarge | @as("m5.8xlarge") #m5_8xlarge | @as("m5.4xlarge") #m5_4xlarge | @as("m5.2xlarge") #m5_2xlarge | @as("m5.xlarge") #m5_xlarge | @as("m5.large") #m5_large | @as("m4.10xlarge") #m4_10xlarge | @as("m4.4xlarge") #m4_4xlarge | @as("m4.2xlarge") #m4_2xlarge | @as("m4.xlarge") #m4_xlarge | @as("m4.large") #m4_large | @as("r5a.24xlarge") #r5a_24xlarge | @as("r5a.16xlarge") #r5a_16xlarge | @as("r5a.12xlarge") #r5a_12xlarge | @as("r5a.8xlarge") #r5a_8xlarge | @as("r5a.4xlarge") #r5a_4xlarge | @as("r5a.2xlarge") #r5a_2xlarge | @as("r5a.xlarge") #r5a_xlarge | @as("r5a.large") #r5a_large | @as("r5.24xlarge") #r5_24xlarge | @as("r5.16xlarge") #r5_16xlarge | @as("r5.12xlarge") #r5_12xlarge | @as("r5.8xlarge") #r5_8xlarge | @as("r5.4xlarge") #r5_4xlarge | @as("r5.2xlarge") #r5_2xlarge | @as("r5.xlarge") #r5_xlarge | @as("r5.large") #r5_large | @as("r4.16xlarge") #r4_16xlarge | @as("r4.8xlarge") #r4_8xlarge | @as("r4.4xlarge") #r4_4xlarge | @as("r4.2xlarge") #r4_2xlarge | @as("r4.xlarge") #r4_xlarge | @as("r4.large") #r4_large | @as("c5a.24xlarge") #c5a_24xlarge | @as("c5a.16xlarge") #c5a_16xlarge | @as("c5a.12xlarge") #c5a_12xlarge | @as("c5a.8xlarge") #c5a_8xlarge | @as("c5a.4xlarge") #c5a_4xlarge | @as("c5a.2xlarge") #c5a_2xlarge | @as("c5a.xlarge") #c5a_xlarge | @as("c5a.large") #c5a_large | @as("c5.24xlarge") #c5_24xlarge | @as("c5.18xlarge") #c5_18xlarge | @as("c5.12xlarge") #c5_12xlarge | @as("c5.9xlarge") #c5_9xlarge | @as("c5.4xlarge") #c5_4xlarge | @as("c5.2xlarge") #c5_2xlarge | @as("c5.xlarge") #c5_xlarge | @as("c5.large") #c5_large | @as("c4.8xlarge") #c4_8xlarge | @as("c4.4xlarge") #c4_4xlarge | @as("c4.2xlarge") #c4_2xlarge | @as("c4.xlarge") #c4_xlarge | @as("c4.large") #c4_large]
type gameServerGroupDeleteOption = [@as("RETAIN") #RETAIN | @as("FORCE_DELETE") #FORCE_DELETE | @as("SAFE_DELETE") #SAFE_DELETE]
type gameServerGroupArn = string
type gameServerGroupAction = [@as("REPLACE_INSTANCE_TYPES") #REPLACE_INSTANCE_TYPES]
type gameServerData = string
type gameServerConnectionInfo = string
type gameServerClaimStatus = [@as("CLAIMED") #CLAIMED]
type gamePropertyValue = string
type gamePropertyKey = string
type freeText = string
type amazonawsFloat = float;
type flexMatchMode = [@as("WITH_QUEUE") #WITH_QUEUE | @as("STANDALONE") #STANDALONE]
type fleetType = [@as("SPOT") #SPOT | @as("ON_DEMAND") #ON_DEMAND]
type fleetStatus = [@as("TERMINATED") #TERMINATED | @as("ERROR") #ERROR | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("ACTIVATING") #ACTIVATING | @as("BUILDING") #BUILDING | @as("VALIDATING") #VALIDATING | @as("DOWNLOADING") #DOWNLOADING | @as("NEW") #NEW]
type fleetIdOrArn = string
type fleetId = string
type fleetArn = string
type fleetAction = [@as("AUTO_SCALING") #AUTO_SCALING]
type eventCode = [@as("INSTANCE_INTERRUPTED") #INSTANCE_INTERRUPTED | @as("FLEET_VPC_PEERING_DELETED") #FLEET_VPC_PEERING_DELETED | @as("FLEET_VPC_PEERING_FAILED") #FLEET_VPC_PEERING_FAILED | @as("FLEET_VPC_PEERING_SUCCEEDED") #FLEET_VPC_PEERING_SUCCEEDED | @as("FLEET_CREATION_VALIDATING_RUNTIME_CONFIG") #FLEET_CREATION_VALIDATING_RUNTIME_CONFIG | @as("FLEET_CREATION_RUNNING_INSTALLER") #FLEET_CREATION_RUNNING_INSTALLER | @as("FLEET_CREATION_EXTRACTING_BUILD") #FLEET_CREATION_EXTRACTING_BUILD | @as("GAME_SESSION_ACTIVATION_TIMEOUT") #GAME_SESSION_ACTIVATION_TIMEOUT | @as("SERVER_PROCESS_PROCESS_EXIT_TIMEOUT") #SERVER_PROCESS_PROCESS_EXIT_TIMEOUT | @as("SERVER_PROCESS_FORCE_TERMINATED") #SERVER_PROCESS_FORCE_TERMINATED | @as("SERVER_PROCESS_TERMINATED_UNHEALTHY") #SERVER_PROCESS_TERMINATED_UNHEALTHY | @as("SERVER_PROCESS_CRASHED") #SERVER_PROCESS_CRASHED | @as("SERVER_PROCESS_PROCESS_READY_TIMEOUT") #SERVER_PROCESS_PROCESS_READY_TIMEOUT | @as("SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT") #SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT | @as("SERVER_PROCESS_INVALID_PATH") #SERVER_PROCESS_INVALID_PATH | @as("FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED") #FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED | @as("FLEET_ACTIVATION_FAILED_NO_INSTANCES") #FLEET_ACTIVATION_FAILED_NO_INSTANCES | @as("FLEET_ACTIVATION_FAILED") #FLEET_ACTIVATION_FAILED | @as("FLEET_VALIDATION_TIMED_OUT") #FLEET_VALIDATION_TIMED_OUT | @as("FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE") #FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE | @as("FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND") #FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND | @as("FLEET_BINARY_DOWNLOAD_FAILED") #FLEET_BINARY_DOWNLOAD_FAILED | @as("FLEET_INITIALIZATION_FAILED") #FLEET_INITIALIZATION_FAILED | @as("FLEET_STATE_ERROR") #FLEET_STATE_ERROR | @as("FLEET_STATE_ACTIVE") #FLEET_STATE_ACTIVE | @as("FLEET_STATE_ACTIVATING") #FLEET_STATE_ACTIVATING | @as("FLEET_STATE_BUILDING") #FLEET_STATE_BUILDING | @as("FLEET_STATE_VALIDATING") #FLEET_STATE_VALIDATING | @as("FLEET_STATE_DOWNLOADING") #FLEET_STATE_DOWNLOADING | @as("FLEET_SCALING_EVENT") #FLEET_SCALING_EVENT | @as("FLEET_DELETED") #FLEET_DELETED | @as("FLEET_CREATED") #FLEET_CREATED | @as("GENERIC_EVENT") #GENERIC_EVENT]
type eC2InstanceType = [@as("m5a.24xlarge") #m5a_24xlarge | @as("m5a.16xlarge") #m5a_16xlarge | @as("m5a.12xlarge") #m5a_12xlarge | @as("m5a.8xlarge") #m5a_8xlarge | @as("m5a.4xlarge") #m5a_4xlarge | @as("m5a.2xlarge") #m5a_2xlarge | @as("m5a.xlarge") #m5a_xlarge | @as("m5a.large") #m5a_large | @as("m5.24xlarge") #m5_24xlarge | @as("m5.16xlarge") #m5_16xlarge | @as("m5.12xlarge") #m5_12xlarge | @as("m5.8xlarge") #m5_8xlarge | @as("m5.4xlarge") #m5_4xlarge | @as("m5.2xlarge") #m5_2xlarge | @as("m5.xlarge") #m5_xlarge | @as("m5.large") #m5_large | @as("m4.10xlarge") #m4_10xlarge | @as("m4.4xlarge") #m4_4xlarge | @as("m4.2xlarge") #m4_2xlarge | @as("m4.xlarge") #m4_xlarge | @as("m4.large") #m4_large | @as("m3.2xlarge") #m3_2xlarge | @as("m3.xlarge") #m3_xlarge | @as("m3.large") #m3_large | @as("m3.medium") #m3_medium | @as("r5a.24xlarge") #r5a_24xlarge | @as("r5a.16xlarge") #r5a_16xlarge | @as("r5a.12xlarge") #r5a_12xlarge | @as("r5a.8xlarge") #r5a_8xlarge | @as("r5a.4xlarge") #r5a_4xlarge | @as("r5a.2xlarge") #r5a_2xlarge | @as("r5a.xlarge") #r5a_xlarge | @as("r5a.large") #r5a_large | @as("r5.24xlarge") #r5_24xlarge | @as("r5.16xlarge") #r5_16xlarge | @as("r5.12xlarge") #r5_12xlarge | @as("r5.8xlarge") #r5_8xlarge | @as("r5.4xlarge") #r5_4xlarge | @as("r5.2xlarge") #r5_2xlarge | @as("r5.xlarge") #r5_xlarge | @as("r5.large") #r5_large | @as("r4.16xlarge") #r4_16xlarge | @as("r4.8xlarge") #r4_8xlarge | @as("r4.4xlarge") #r4_4xlarge | @as("r4.2xlarge") #r4_2xlarge | @as("r4.xlarge") #r4_xlarge | @as("r4.large") #r4_large | @as("r3.8xlarge") #r3_8xlarge | @as("r3.4xlarge") #r3_4xlarge | @as("r3.2xlarge") #r3_2xlarge | @as("r3.xlarge") #r3_xlarge | @as("r3.large") #r3_large | @as("c5a.24xlarge") #c5a_24xlarge | @as("c5a.16xlarge") #c5a_16xlarge | @as("c5a.12xlarge") #c5a_12xlarge | @as("c5a.8xlarge") #c5a_8xlarge | @as("c5a.4xlarge") #c5a_4xlarge | @as("c5a.2xlarge") #c5a_2xlarge | @as("c5a.xlarge") #c5a_xlarge | @as("c5a.large") #c5a_large | @as("c5.24xlarge") #c5_24xlarge | @as("c5.18xlarge") #c5_18xlarge | @as("c5.12xlarge") #c5_12xlarge | @as("c5.9xlarge") #c5_9xlarge | @as("c5.4xlarge") #c5_4xlarge | @as("c5.2xlarge") #c5_2xlarge | @as("c5.xlarge") #c5_xlarge | @as("c5.large") #c5_large | @as("c4.8xlarge") #c4_8xlarge | @as("c4.4xlarge") #c4_4xlarge | @as("c4.2xlarge") #c4_2xlarge | @as("c4.xlarge") #c4_xlarge | @as("c4.large") #c4_large | @as("c3.8xlarge") #c3_8xlarge | @as("c3.4xlarge") #c3_4xlarge | @as("c3.2xlarge") #c3_2xlarge | @as("c3.xlarge") #c3_xlarge | @as("c3.large") #c3_large | @as("t2.large") #t2_large | @as("t2.medium") #t2_medium | @as("t2.small") #t2_small | @as("t2.micro") #t2_micro]
type doubleObject = float;
type amazonawsDouble = float;
type dnsName = string
type customEventData = string
type comparisonOperatorType = [@as("LessThanOrEqualToThreshold") #LessThanOrEqualToThreshold | @as("LessThanThreshold") #LessThanThreshold | @as("GreaterThanThreshold") #GreaterThanThreshold | @as("GreaterThanOrEqualToThreshold") #GreaterThanOrEqualToThreshold]
type certificateType = [@as("GENERATED") #GENERATED | @as("DISABLED") #DISABLED]
type buildStatus = [@as("FAILED") #FAILED | @as("READY") #READY | @as("INITIALIZED") #INITIALIZED]
type buildIdOrArn = string
type buildId = string
type buildArn = string
type booleanModel = bool;
type balancingStrategy = [@as("ON_DEMAND_ONLY") #ON_DEMAND_ONLY | @as("SPOT_PREFERRED") #SPOT_PREFERRED | @as("SPOT_ONLY") #SPOT_ONLY]
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
@as("Message") message: nonZeroAndMaxString,
@as("Code") code: nonZeroAndMaxString
}
type vpcPeeringAuthorization = {
@as("ExpirationTime") expirationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("PeerVpcId") peerVpcId: nonZeroAndMaxString,
@as("PeerVpcAwsAccountId") peerVpcAwsAccountId: nonZeroAndMaxString,
@as("GameLiftAwsAccountId") gameLiftAwsAccountId: nonZeroAndMaxString
}
type targetTrackingConfiguration = {
@as("TargetValue") targetValue: option<nonNegativeDouble>
}
type targetConfiguration = {
@as("TargetValue") targetValue: option<amazonawsDouble>
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type stringList = array<nonZeroAndMaxString>
type stringDoubleMap = Js.Dict.t< doubleObject>
type serverProcess = {
@as("ConcurrentExecutions") concurrentExecutions: option<positiveInteger>,
@as("Parameters") parameters: nonZeroAndMaxString,
@as("LaunchPath") launchPath: option<nonZeroAndMaxString>
}
type s3Location = {
@as("ObjectVersion") objectVersion: nonEmptyString,
@as("RoleArn") roleArn: nonEmptyString,
@as("Key") key: nonEmptyString,
@as("Bucket") bucket: nonEmptyString
}
type routingStrategy = {
@as("Message") message: freeText,
@as("FleetId") fleetId: fleetId,
@as("Type") type_: routingStrategyType
}
type resourceCreationLimitPolicy = {
@as("PolicyPeriodInMinutes") policyPeriodInMinutes: wholeNumber,
@as("NewGameSessionsPerCreator") newGameSessionsPerCreator: wholeNumber
}
type queueArnsList = array<arnStringModel>
type priorityTypeList = array<priorityType>
type playerSession = {
@as("PlayerData") playerData: playerData,
@as("Port") port: portNumber,
@as("DnsName") dnsName: dnsName,
@as("IpAddress") ipAddress: ipAddress,
@as("Status") status: playerSessionStatus,
@as("TerminationTime") terminationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId,
@as("GameSessionId") gameSessionId: nonZeroAndMaxString,
@as("PlayerId") playerId: nonZeroAndMaxString,
@as("PlayerSessionId") playerSessionId: playerSessionId
}
type playerLatencyPolicy = {
@as("PolicyDurationSeconds") policyDurationSeconds: wholeNumber,
@as("MaximumIndividualPlayerLatencyMilliseconds") maximumIndividualPlayerLatencyMilliseconds: wholeNumber
}
type playerLatency = {
@as("LatencyInMilliseconds") latencyInMilliseconds: amazonawsFloat,
@as("RegionIdentifier") regionIdentifier: nonZeroAndMaxString,
@as("PlayerId") playerId: nonZeroAndMaxString
}
type playerIdList = array<nonZeroAndMaxString>
type playerDataMap = Js.Dict.t< playerData>
type placedPlayerSession = {
@as("PlayerSessionId") playerSessionId: playerSessionId,
@as("PlayerId") playerId: nonZeroAndMaxString
}
type metricGroupList = array<metricGroup>
type matchmakingRuleSetNameList = array<matchmakingRuleSetName>
type matchmakingRuleSet = {
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("RuleSetBody") ruleSetBody: option<ruleSetBody>,
@as("RuleSetArn") ruleSetArn: matchmakingRuleSetArn,
@as("RuleSetName") ruleSetName: matchmakingIdStringModel
}
type matchmakingIdList = array<matchmakingIdStringModel>
type matchmakingConfigurationNameList = array<matchmakingConfigurationName>
type matchedPlayerSession = {
@as("PlayerSessionId") playerSessionId: playerSessionId,
@as("PlayerId") playerId: nonZeroAndMaxString
}
type locationState = {
@as("Status") status: fleetStatus,
@as("Location") location: locationStringModel
}
type locationList = array<locationStringModel>
type locationConfiguration = {
@as("Location") location: locationStringModel
}
type launchTemplateSpecification = {
@as("Version") version: launchTemplateVersion,
@as("LaunchTemplateName") launchTemplateName: launchTemplateName,
@as("LaunchTemplateId") launchTemplateId: launchTemplateId
}
type latencyMap = Js.Dict.t< positiveInteger>
type ipPermission = {
@as("Protocol") protocol: option<ipProtocol>,
@as("IpRange") ipRange: option<nonBlankString>,
@as("ToPort") toPort: option<portNumber>,
@as("FromPort") fromPort: option<portNumber>
}
type instanceDefinition = {
@as("WeightedCapacity") weightedCapacity: weightedCapacity,
@as("InstanceType") instanceType: option<gameServerGroupInstanceType>
}
type instanceCredentials = {
@as("Secret") secret: nonEmptyString,
@as("UserName") userName: nonEmptyString
}
type instance = {
@as("Location") location: locationStringModel,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Status") status: instanceStatus,
@as("Type") type_: eC2InstanceType,
@as("OperatingSystem") operatingSystem: operatingSystem,
@as("DnsName") dnsName: dnsName,
@as("IpAddress") ipAddress: ipAddress,
@as("InstanceId") instanceId: instanceId,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId
}
type gameSessionQueueNameOrArnList = array<gameSessionQueueNameOrArn>
type gameSessionQueueDestination = {
@as("DestinationArn") destinationArn: arnStringModel
}
type gameServerInstanceIds = array<gameServerInstanceId>
type gameServerInstance = {
@as("InstanceStatus") instanceStatus: gameServerInstanceStatus,
@as("InstanceId") instanceId: gameServerInstanceId,
@as("GameServerGroupArn") gameServerGroupArn: gameServerGroupArn,
@as("GameServerGroupName") gameServerGroupName: gameServerGroupName
}
type gameServerGroupActions = array<gameServerGroupAction>
type gameServer = {
@as("LastHealthCheckTime") lastHealthCheckTime: amazonawsTimestamp,
@as("LastClaimTime") lastClaimTime: amazonawsTimestamp,
@as("RegistrationTime") registrationTime: amazonawsTimestamp,
@as("UtilizationStatus") utilizationStatus: gameServerUtilizationStatus,
@as("ClaimStatus") claimStatus: gameServerClaimStatus,
@as("GameServerData") gameServerData: gameServerData,
@as("ConnectionInfo") connectionInfo: gameServerConnectionInfo,
@as("InstanceId") instanceId: gameServerInstanceId,
@as("GameServerId") gameServerId: gameServerId,
@as("GameServerGroupArn") gameServerGroupArn: gameServerGroupArn,
@as("GameServerGroupName") gameServerGroupName: gameServerGroupName
}
type gameProperty = {
@as("Value") value: option<gamePropertyValue>,
@as("Key") key: option<gamePropertyKey>
}
type fleetUtilization = {
@as("Location") location: locationStringModel,
@as("MaximumPlayerSessionCount") maximumPlayerSessionCount: wholeNumber,
@as("CurrentPlayerSessionCount") currentPlayerSessionCount: wholeNumber,
@as("ActiveGameSessionCount") activeGameSessionCount: wholeNumber,
@as("ActiveServerProcessCount") activeServerProcessCount: wholeNumber,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId
}
type fleetIdOrArnList = array<fleetIdOrArn>
type fleetIdList = array<fleetId>
type fleetActionList = array<fleetAction>
type event = {
@as("PreSignedLogUrl") preSignedLogUrl: nonZeroAndMaxString,
@as("EventTime") eventTime: amazonawsTimestamp,
@as("Message") message: nonEmptyString,
@as("EventCode") eventCode: eventCode,
@as("ResourceId") resourceId: nonZeroAndMaxString,
@as("EventId") eventId: nonZeroAndMaxString
}
type eC2InstanceLimit = {
@as("Location") location: locationStringModel,
@as("InstanceLimit") instanceLimit: wholeNumber,
@as("CurrentInstances") currentInstances: wholeNumber,
@as("EC2InstanceType") eC2InstanceType: eC2InstanceType
}
type eC2InstanceCounts = {
@as("TERMINATING") tERMINATING: wholeNumber,
@as("IDLE") iDLE: wholeNumber,
@as("ACTIVE") aCTIVE: wholeNumber,
@as("PENDING") pENDING: wholeNumber,
@as("MAXIMUM") mAXIMUM: wholeNumber,
@as("MINIMUM") mINIMUM: wholeNumber,
@as("DESIRED") dESIRED: wholeNumber
}
type desiredPlayerSession = {
@as("PlayerData") playerData: playerData,
@as("PlayerId") playerId: nonZeroAndMaxString
}
type certificateConfiguration = {
@as("CertificateType") certificateType: option<certificateType>
}
type build = {
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("OperatingSystem") operatingSystem: operatingSystem,
@as("SizeOnDisk") sizeOnDisk: positiveLong,
@as("Status") status: buildStatus,
@as("Version") version: freeText,
@as("Name") name: freeText,
@as("BuildArn") buildArn: buildArn,
@as("BuildId") buildId: buildId
}
type awsCredentials = {
@as("SessionToken") sessionToken: nonEmptyString,
@as("SecretAccessKey") secretAccessKey: nonEmptyString,
@as("AccessKeyId") accessKeyId: nonEmptyString
}
type vpcPeeringConnection = {
@as("GameLiftVpcId") gameLiftVpcId: nonZeroAndMaxString,
@as("PeerVpcId") peerVpcId: nonZeroAndMaxString,
@as("Status") status: vpcPeeringConnectionStatus,
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: nonZeroAndMaxString,
@as("IpV4CidrBlock") ipV4CidrBlock: nonZeroAndMaxString,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId
}
type vpcPeeringAuthorizationList = array<vpcPeeringAuthorization>
type tagList = array<tag>
type serverProcessList = array<serverProcess>
type script = {
@as("StorageLocation") storageLocation: s3Location,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("SizeOnDisk") sizeOnDisk: positiveLong,
@as("Version") version: nonZeroAndMaxString,
@as("Name") name: nonZeroAndMaxString,
@as("ScriptArn") scriptArn: scriptArn,
@as("ScriptId") scriptId: scriptId
}
type scalingPolicy = {
@as("Location") location: locationStringModel,
@as("UpdateStatus") updateStatus: locationUpdateStatus,
@as("TargetConfiguration") targetConfiguration: targetConfiguration,
@as("PolicyType") policyType: policyType,
@as("MetricName") metricName: metricName,
@as("EvaluationPeriods") evaluationPeriods: positiveInteger,
@as("Threshold") threshold: amazonawsDouble,
@as("ComparisonOperator") comparisonOperator: comparisonOperatorType,
@as("ScalingAdjustmentType") scalingAdjustmentType: scalingAdjustmentType,
@as("ScalingAdjustment") scalingAdjustment: amazonawsInteger,
@as("Status") status: scalingStatusType,
@as("Name") name: nonZeroAndMaxString,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId
}
type priorityConfiguration = {
@as("LocationOrder") locationOrder: locationList,
@as("PriorityOrder") priorityOrder: priorityTypeList
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
@as("UpdateStatus") updateStatus: locationUpdateStatus,
@as("StoppedActions") stoppedActions: fleetActionList,
@as("LocationState") locationState: locationState
}
type ipPermissionsList = array<ipPermission>
type instanceList = array<instance>
type instanceDefinitions = array<instanceDefinition>
type instanceAccess = {
@as("Credentials") credentials: instanceCredentials,
@as("OperatingSystem") operatingSystem: operatingSystem,
@as("IpAddress") ipAddress: ipAddress,
@as("InstanceId") instanceId: instanceId,
@as("FleetId") fleetId: fleetId
}
type gameSessionQueueDestinationList = array<gameSessionQueueDestination>
type gameServers = array<gameServer>
type gameServerInstances = array<gameServerInstance>
type gameServerGroupAutoScalingPolicy = {
@as("TargetTrackingConfiguration") targetTrackingConfiguration: option<targetTrackingConfiguration>,
@as("EstimatedInstanceWarmup") estimatedInstanceWarmup: positiveInteger
}
type gamePropertyList = array<gameProperty>
type fleetUtilizationList = array<fleetUtilization>
type fleetCapacity = {
@as("Location") location: locationStringModel,
@as("InstanceCounts") instanceCounts: eC2InstanceCounts,
@as("InstanceType") instanceType: eC2InstanceType,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId
}
type fleetAttributes = {
@as("CertificateConfiguration") certificateConfiguration: certificateConfiguration,
@as("InstanceRoleArn") instanceRoleArn: nonEmptyString,
@as("StoppedActions") stoppedActions: fleetActionList,
@as("MetricGroups") metricGroups: metricGroupList,
@as("ResourceCreationLimitPolicy") resourceCreationLimitPolicy: resourceCreationLimitPolicy,
@as("OperatingSystem") operatingSystem: operatingSystem,
@as("NewGameSessionProtectionPolicy") newGameSessionProtectionPolicy: protectionPolicy,
@as("LogPaths") logPaths: stringList,
@as("ServerLaunchParameters") serverLaunchParameters: nonZeroAndMaxString,
@as("ServerLaunchPath") serverLaunchPath: nonZeroAndMaxString,
@as("ScriptArn") scriptArn: scriptArn,
@as("ScriptId") scriptId: scriptId,
@as("BuildArn") buildArn: buildArn,
@as("BuildId") buildId: buildId,
@as("Status") status: fleetStatus,
@as("TerminationTime") terminationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Name") name: nonZeroAndMaxString,
@as("Description") description: nonZeroAndMaxString,
@as("InstanceType") instanceType: eC2InstanceType,
@as("FleetType") fleetType: fleetType,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId
}
type filterConfiguration = {
@as("AllowedLocations") allowedLocations: locationList
}
type eventList = array<event>
type eC2InstanceLimitList = array<eC2InstanceLimit>
type desiredPlayerSessionList = array<desiredPlayerSession>
type buildList = array<build>
type attributeValue = {
@as("SDM") sDM: stringDoubleMap,
@as("SL") sL: stringList,
@as("N") n: doubleObject,
@as("S") s: nonZeroAndMaxString
}
type alias = {
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("RoutingStrategy") routingStrategy: routingStrategy,
@as("Description") description: freeText,
@as("AliasArn") aliasArn: aliasArn,
@as("Name") name: nonBlankAndLengthConstraintString,
@as("AliasId") aliasId: aliasId
}
type vpcPeeringConnectionList = array<vpcPeeringConnection>
type scriptList = array<script>
type scalingPolicyList = array<scalingPolicy>
type runtimeConfiguration = {
@as("GameSessionActivationTimeoutSeconds") gameSessionActivationTimeoutSeconds: gameSessionActivationTimeoutSeconds,
@as("MaxConcurrentGameSessionActivations") maxConcurrentGameSessionActivations: maxConcurrentGameSessionActivations,
@as("ServerProcesses") serverProcesses: serverProcessList
}
type playerAttributeMap = Js.Dict.t< attributeValue>
type matchmakingConfiguration = {
@as("FlexMatchMode") flexMatchMode: flexMatchMode,
@as("BackfillMode") backfillMode: backfillMode,
@as("GameSessionData") gameSessionData: gameSessionData,
@as("GameProperties") gameProperties: gamePropertyList,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("CustomEventData") customEventData: customEventData,
@as("AdditionalPlayerCount") additionalPlayerCount: wholeNumber,
@as("NotificationTarget") notificationTarget: snsArnStringModel,
@as("RuleSetArn") ruleSetArn: matchmakingRuleSetArn,
@as("RuleSetName") ruleSetName: matchmakingIdStringModel,
@as("AcceptanceRequired") acceptanceRequired: booleanModel,
@as("AcceptanceTimeoutSeconds") acceptanceTimeoutSeconds: matchmakingAcceptanceTimeoutInteger,
@as("RequestTimeoutSeconds") requestTimeoutSeconds: matchmakingRequestTimeoutInteger,
@as("GameSessionQueueArns") gameSessionQueueArns: queueArnsList,
@as("Description") description: nonZeroAndMaxString,
@as("ConfigurationArn") configurationArn: matchmakingConfigurationArn,
@as("Name") name: matchmakingIdStringModel
}
type locationAttributesList = array<locationAttributes>
type gameSessionQueue = {
@as("NotificationTarget") notificationTarget: queueSnsArnStringModel,
@as("CustomEventData") customEventData: queueCustomEventData,
@as("PriorityConfiguration") priorityConfiguration: priorityConfiguration,
@as("FilterConfiguration") filterConfiguration: filterConfiguration,
@as("Destinations") destinations: gameSessionQueueDestinationList,
@as("PlayerLatencyPolicies") playerLatencyPolicies: playerLatencyPolicyList,
@as("TimeoutInSeconds") timeoutInSeconds: wholeNumber,
@as("GameSessionQueueArn") gameSessionQueueArn: gameSessionQueueArn,
@as("Name") name: gameSessionQueueName
}
type gameSessionPlacement = {
@as("MatchmakerData") matchmakerData: matchmakerData,
@as("GameSessionData") gameSessionData: largeGameSessionData,
@as("PlacedPlayerSessions") placedPlayerSessions: placedPlayerSessionList,
@as("Port") port: portNumber,
@as("DnsName") dnsName: dnsName,
@as("IpAddress") ipAddress: ipAddress,
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp,
@as("PlayerLatencies") playerLatencies: playerLatencyList,
@as("GameSessionRegion") gameSessionRegion: nonZeroAndMaxString,
@as("GameSessionArn") gameSessionArn: nonZeroAndMaxString,
@as("GameSessionId") gameSessionId: nonZeroAndMaxString,
@as("GameSessionName") gameSessionName: nonZeroAndMaxString,
@as("MaximumPlayerSessionCount") maximumPlayerSessionCount: wholeNumber,
@as("GameProperties") gameProperties: gamePropertyList,
@as("Status") status: gameSessionPlacementState,
@as("GameSessionQueueName") gameSessionQueueName: gameSessionQueueName,
@as("PlacementId") placementId: idStringModel
}
type gameSessionConnectionInfo = {
@as("MatchedPlayerSessions") matchedPlayerSessions: matchedPlayerSessionList,
@as("Port") port: positiveInteger,
@as("DnsName") dnsName: dnsName,
@as("IpAddress") ipAddress: stringModel,
@as("GameSessionArn") gameSessionArn: arnStringModel
}
type gameSession = {
@as("Location") location: locationStringModel,
@as("MatchmakerData") matchmakerData: matchmakerData,
@as("GameSessionData") gameSessionData: largeGameSessionData,
@as("CreatorId") creatorId: nonZeroAndMaxString,
@as("PlayerSessionCreationPolicy") playerSessionCreationPolicy: playerSessionCreationPolicy,
@as("Port") port: portNumber,
@as("DnsName") dnsName: dnsName,
@as("IpAddress") ipAddress: ipAddress,
@as("GameProperties") gameProperties: gamePropertyList,
@as("StatusReason") statusReason: gameSessionStatusReason,
@as("Status") status: gameSessionStatus,
@as("MaximumPlayerSessionCount") maximumPlayerSessionCount: wholeNumber,
@as("CurrentPlayerSessionCount") currentPlayerSessionCount: wholeNumber,
@as("TerminationTime") terminationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId,
@as("Name") name: nonZeroAndMaxString,
@as("GameSessionId") gameSessionId: nonZeroAndMaxString
}
type gameServerGroup = {
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("SuspendedActions") suspendedActions: gameServerGroupActions,
@as("StatusReason") statusReason: nonZeroAndMaxString,
@as("Status") status: gameServerGroupStatus,
@as("AutoScalingGroupArn") autoScalingGroupArn: autoScalingGroupArn,
@as("GameServerProtectionPolicy") gameServerProtectionPolicy: gameServerProtectionPolicy,
@as("BalancingStrategy") balancingStrategy: balancingStrategy,
@as("InstanceDefinitions") instanceDefinitions: instanceDefinitions,
@as("RoleArn") roleArn: iamRoleArn,
@as("GameServerGroupArn") gameServerGroupArn: gameServerGroupArn,
@as("GameServerGroupName") gameServerGroupName: gameServerGroupName
}
type fleetCapacityList = array<fleetCapacity>
type fleetAttributesList = array<fleetAttributes>
type aliasList = array<alias>
type player = {
@as("LatencyInMs") latencyInMs: latencyMap,
@as("Team") team: nonZeroAndMaxString,
@as("PlayerAttributes") playerAttributes: playerAttributeMap,
@as("PlayerId") playerId: nonZeroAndMaxString
}
type matchmakingConfigurationList = array<matchmakingConfiguration>
type gameSessionQueueList = array<gameSessionQueue>
type gameSessionList = array<gameSession>
type gameSessionDetail = {
@as("ProtectionPolicy") protectionPolicy: protectionPolicy,
@as("GameSession") gameSession: gameSession
}
type gameServerGroups = array<gameServerGroup>
type playerList = array<player>
type gameSessionDetailList = array<gameSessionDetail>
type matchmakingTicket = {
@as("EstimatedWaitTime") estimatedWaitTime: wholeNumber,
@as("GameSessionConnectionInfo") gameSessionConnectionInfo: gameSessionConnectionInfo,
@as("Players") players: playerList,
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp,
@as("StatusMessage") statusMessage: stringModel,
@as("StatusReason") statusReason: stringModel,
@as("Status") status: matchmakingConfigurationStatus,
@as("ConfigurationArn") configurationArn: matchmakingConfigurationArn,
@as("ConfigurationName") configurationName: matchmakingIdStringModel,
@as("TicketId") ticketId: matchmakingIdStringModel
}
type matchmakingTicketList = array<matchmakingTicket>
type clientType;
@module("@aws-sdk/client-gamelift") @new external createClient: unit => clientType = "GameLiftClient";
module ValidateMatchmakingRuleSet = {
  type t;
  type request = {
@as("RuleSetBody") ruleSetBody: option<ruleSetBody>
}
  type response = {
@as("Valid") valid: booleanModel
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "ValidateMatchmakingRuleSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFleetCapacity = {
  type t;
  type request = {
@as("Location") location: locationStringModel,
@as("MaxSize") maxSize: wholeNumber,
@as("MinSize") minSize: wholeNumber,
@as("DesiredInstances") desiredInstances: wholeNumber,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("Location") location: locationStringModel,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UpdateFleetCapacityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopMatchmaking = {
  type t;
  type request = {
@as("TicketId") ticketId: option<matchmakingIdStringModel>
}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "StopMatchmakingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResolveAlias = {
  type t;
  type request = {
@as("AliasId") aliasId: option<aliasIdOrArn>
}
  type response = {
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "ResolveAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGameSessionLogUrl = {
  type t;
  type request = {
@as("GameSessionId") gameSessionId: option<arnStringModel>
}
  type response = {
@as("PreSignedUrl") preSignedUrl: nonZeroAndMaxString
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "GetGameSessionLogUrlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterGameServer = {
  type t;
  type request = {
@as("GameServerId") gameServerId: option<gameServerId>,
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupNameOrArn>
}
  
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeregisterGameServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVpcPeeringConnection = {
  type t;
  type request = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<nonZeroAndMaxString>,
@as("FleetId") fleetId: option<fleetId>
}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeleteVpcPeeringConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVpcPeeringAuthorization = {
  type t;
  type request = {
@as("PeerVpcId") peerVpcId: option<nonZeroAndMaxString>,
@as("GameLiftAwsAccountId") gameLiftAwsAccountId: option<nonZeroAndMaxString>
}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeleteVpcPeeringAuthorizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteScript = {
  type t;
  type request = {
@as("ScriptId") scriptId: option<scriptIdOrArn>
}
  
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeleteScriptCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteScalingPolicy = {
  type t;
  type request = {
@as("FleetId") fleetId: option<fleetIdOrArn>,
@as("Name") name: option<nonZeroAndMaxString>
}
  
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeleteScalingPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteMatchmakingRuleSet = {
  type t;
  type request = {
@as("Name") name: option<matchmakingRuleSetName>
}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeleteMatchmakingRuleSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMatchmakingConfiguration = {
  type t;
  type request = {
@as("Name") name: option<matchmakingConfigurationName>
}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeleteMatchmakingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGameSessionQueue = {
  type t;
  type request = {
@as("Name") name: option<gameSessionQueueNameOrArn>
}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeleteGameSessionQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFleet = {
  type t;
  type request = {
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeleteFleetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBuild = {
  type t;
  type request = {
@as("BuildId") buildId: option<buildIdOrArn>
}
  
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeleteBuildCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAlias = {
  type t;
  type request = {
@as("AliasId") aliasId: option<aliasIdOrArn>
}
  
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeleteAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateVpcPeeringConnection = {
  type t;
  type request = {
@as("PeerVpcId") peerVpcId: option<nonZeroAndMaxString>,
@as("PeerVpcAwsAccountId") peerVpcAwsAccountId: option<nonZeroAndMaxString>,
@as("FleetId") fleetId: option<fleetId>
}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreateVpcPeeringConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGameServer = {
  type t;
  type request = {
@as("HealthCheck") healthCheck: gameServerHealthCheck,
@as("UtilizationStatus") utilizationStatus: gameServerUtilizationStatus,
@as("GameServerData") gameServerData: gameServerData,
@as("GameServerId") gameServerId: option<gameServerId>,
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupNameOrArn>
}
  type response = {
@as("GameServer") gameServer: gameServer
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UpdateGameServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFleetAttributes = {
  type t;
  type request = {
@as("MetricGroups") metricGroups: metricGroupList,
@as("ResourceCreationLimitPolicy") resourceCreationLimitPolicy: resourceCreationLimitPolicy,
@as("NewGameSessionProtectionPolicy") newGameSessionProtectionPolicy: protectionPolicy,
@as("Description") description: nonZeroAndMaxString,
@as("Name") name: nonZeroAndMaxString,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("FleetId") fleetId: fleetId
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UpdateFleetAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBuild = {
  type t;
  type request = {
@as("Version") version: nonZeroAndMaxString,
@as("Name") name: nonZeroAndMaxString,
@as("BuildId") buildId: option<buildIdOrArn>
}
  type response = {
@as("Build") build: build
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UpdateBuildCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopFleetActions = {
  type t;
  type request = {
@as("Location") location: locationStringModel,
@as("Actions") actions: option<fleetActionList>,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "StopFleetActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartFleetActions = {
  type t;
  type request = {
@as("Location") location: locationStringModel,
@as("Actions") actions: option<fleetActionList>,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "StartFleetActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RequestUploadCredentials = {
  type t;
  type request = {
@as("BuildId") buildId: option<buildIdOrArn>
}
  type response = {
@as("StorageLocation") storageLocation: s3Location,
@as("UploadCredentials") uploadCredentials: awsCredentials
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "RequestUploadCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterGameServer = {
  type t;
  type request = {
@as("GameServerData") gameServerData: gameServerData,
@as("ConnectionInfo") connectionInfo: gameServerConnectionInfo,
@as("InstanceId") instanceId: option<gameServerInstanceId>,
@as("GameServerId") gameServerId: option<gameServerId>,
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupNameOrArn>
}
  type response = {
@as("GameServer") gameServer: gameServer
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "RegisterGameServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutScalingPolicy = {
  type t;
  type request = {
@as("TargetConfiguration") targetConfiguration: targetConfiguration,
@as("PolicyType") policyType: policyType,
@as("MetricName") metricName: option<metricName>,
@as("EvaluationPeriods") evaluationPeriods: positiveInteger,
@as("ComparisonOperator") comparisonOperator: comparisonOperatorType,
@as("Threshold") threshold: amazonawsDouble,
@as("ScalingAdjustmentType") scalingAdjustmentType: scalingAdjustmentType,
@as("ScalingAdjustment") scalingAdjustment: amazonawsInteger,
@as("FleetId") fleetId: option<fleetIdOrArn>,
@as("Name") name: option<nonZeroAndMaxString>
}
  type response = {
@as("Name") name: nonZeroAndMaxString
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "PutScalingPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFleets = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("ScriptId") scriptId: scriptIdOrArn,
@as("BuildId") buildId: buildIdOrArn
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("FleetIds") fleetIds: fleetIdList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "ListFleetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGameServer = {
  type t;
  type request = {
@as("GameServerId") gameServerId: option<gameServerId>,
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupNameOrArn>
}
  type response = {
@as("GameServer") gameServer: gameServer
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeGameServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleetLocationUtilization = {
  type t;
  type request = {
@as("Location") location: option<locationStringModel>,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("FleetUtilization") fleetUtilization: fleetUtilization
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeFleetLocationUtilizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBuild = {
  type t;
  type request = {
@as("BuildId") buildId: option<buildIdOrArn>
}
  type response = {
@as("Build") build: build
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeBuildCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVpcPeeringAuthorization = {
  type t;
  type request = {
@as("PeerVpcId") peerVpcId: option<nonZeroAndMaxString>,
@as("GameLiftAwsAccountId") gameLiftAwsAccountId: option<nonZeroAndMaxString>
}
  type response = {
@as("VpcPeeringAuthorization") vpcPeeringAuthorization: vpcPeeringAuthorization
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreateVpcPeeringAuthorizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePlayerSession = {
  type t;
  type request = {
@as("PlayerData") playerData: playerData,
@as("PlayerId") playerId: option<nonZeroAndMaxString>,
@as("GameSessionId") gameSessionId: option<arnStringModel>
}
  type response = {
@as("PlayerSession") playerSession: playerSession
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreatePlayerSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ClaimGameServer = {
  type t;
  type request = {
@as("GameServerData") gameServerData: gameServerData,
@as("GameServerId") gameServerId: gameServerId,
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupNameOrArn>
}
  type response = {
@as("GameServer") gameServer: gameServer
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "ClaimGameServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptMatch = {
  type t;
  type request = {
@as("AcceptanceType") acceptanceType: option<acceptanceType>,
@as("PlayerIds") playerIds: option<stringList>,
@as("TicketId") ticketId: option<matchmakingIdStringModel>
}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "AcceptMatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateScript = {
  type t;
  type request = {
@as("ZipFile") zipFile: zipBlob,
@as("StorageLocation") storageLocation: s3Location,
@as("Version") version: nonZeroAndMaxString,
@as("Name") name: nonZeroAndMaxString,
@as("ScriptId") scriptId: option<scriptIdOrArn>
}
  type response = {
@as("Script") script: script
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UpdateScriptCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFleetPortSettings = {
  type t;
  type request = {
@as("InboundPermissionRevocations") inboundPermissionRevocations: ipPermissionsList,
@as("InboundPermissionAuthorizations") inboundPermissionAuthorizations: ipPermissionsList,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("FleetId") fleetId: fleetId
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UpdateFleetPortSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAlias = {
  type t;
  type request = {
@as("RoutingStrategy") routingStrategy: routingStrategy,
@as("Description") description: nonZeroAndMaxString,
@as("Name") name: nonBlankAndLengthConstraintString,
@as("AliasId") aliasId: option<aliasIdOrArn>
}
  type response = {
@as("Alias") alias: alias
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UpdateAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGameServers = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("SortOrder") sortOrder: sortOrder,
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupNameOrArn>
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("GameServers") gameServers: gameServers
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "ListGameServersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBuilds = {
  type t;
  type request = {
@as("NextToken") nextToken: nonEmptyString,
@as("Limit") limit: positiveInteger,
@as("Status") status: buildStatus
}
  type response = {
@as("NextToken") nextToken: nonEmptyString,
@as("Builds") builds: buildList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "ListBuildsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstanceAccess = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("InstanceAccess") instanceAccess: instanceAccess
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "GetInstanceAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcPeeringAuthorizations = {
  type t;
  type request = unit
  type response = {
@as("VpcPeeringAuthorizations") vpcPeeringAuthorizations: vpcPeeringAuthorizationList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeVpcPeeringAuthorizationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScript = {
  type t;
  type request = {
@as("ScriptId") scriptId: option<scriptIdOrArn>
}
  type response = {
@as("Script") script: script
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeScriptCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePlayerSessions = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("PlayerSessionStatusFilter") playerSessionStatusFilter: nonZeroAndMaxString,
@as("PlayerSessionId") playerSessionId: playerSessionId,
@as("PlayerId") playerId: nonZeroAndMaxString,
@as("GameSessionId") gameSessionId: arnStringModel
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("PlayerSessions") playerSessions: playerSessionList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribePlayerSessionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMatchmakingRuleSets = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: ruleSetLimit,
@as("Names") names: matchmakingRuleSetNameList
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("RuleSets") ruleSets: option<matchmakingRuleSetList>
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeMatchmakingRuleSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstances = {
  type t;
  type request = {
@as("Location") location: locationStringModel,
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("InstanceId") instanceId: instanceId,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Instances") instances: instanceList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGameServerInstances = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("InstanceIds") instanceIds: gameServerInstanceIds,
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupNameOrArn>
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("GameServerInstances") gameServerInstances: gameServerInstances
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeGameServerInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleetUtilization = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("FleetIds") fleetIds: fleetIdOrArnList
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("FleetUtilization") fleetUtilization: fleetUtilizationList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeFleetUtilizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleetPortSettings = {
  type t;
  type request = {
@as("Location") location: locationStringModel,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("Location") location: locationStringModel,
@as("UpdateStatus") updateStatus: locationUpdateStatus,
@as("InboundPermissions") inboundPermissions: ipPermissionsList,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetId
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeFleetPortSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleetLocationCapacity = {
  type t;
  type request = {
@as("Location") location: option<locationStringModel>,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("FleetCapacity") fleetCapacity: fleetCapacity
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeFleetLocationCapacityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleetEvents = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Events") events: eventList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeFleetEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEC2InstanceLimits = {
  type t;
  type request = {
@as("Location") location: locationStringModel,
@as("EC2InstanceType") eC2InstanceType: eC2InstanceType
}
  type response = {
@as("EC2InstanceLimits") eC2InstanceLimits: eC2InstanceLimitList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeEC2InstanceLimitsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAlias = {
  type t;
  type request = {
@as("AliasId") aliasId: option<aliasIdOrArn>
}
  type response = {
@as("Alias") alias: alias
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFleetLocations = {
  type t;
  type request = {
@as("Locations") locations: option<locationList>,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("LocationStates") locationStates: locationStateList,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetIdOrArn
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeleteFleetLocationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateScript = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ZipFile") zipFile: zipBlob,
@as("StorageLocation") storageLocation: s3Location,
@as("Version") version: nonZeroAndMaxString,
@as("Name") name: nonZeroAndMaxString
}
  type response = {
@as("Script") script: script
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreateScriptCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePlayerSessions = {
  type t;
  type request = {
@as("PlayerDataMap") playerDataMap: playerDataMap,
@as("PlayerIds") playerIds: option<playerIdList>,
@as("GameSessionId") gameSessionId: option<arnStringModel>
}
  type response = {
@as("PlayerSessions") playerSessions: playerSessionList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreatePlayerSessionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMatchmakingRuleSet = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("RuleSetBody") ruleSetBody: option<ruleSetBody>,
@as("Name") name: option<matchmakingIdStringModel>
}
  type response = {
@as("RuleSet") ruleSet: option<matchmakingRuleSet>
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreateMatchmakingRuleSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFleetLocations = {
  type t;
  type request = {
@as("Locations") locations: option<locationConfigurationList>,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("LocationStates") locationStates: locationStateList,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetIdOrArn
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreateFleetLocationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBuild = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("OperatingSystem") operatingSystem: operatingSystem,
@as("StorageLocation") storageLocation: s3Location,
@as("Version") version: nonZeroAndMaxString,
@as("Name") name: nonZeroAndMaxString
}
  type response = {
@as("StorageLocation") storageLocation: s3Location,
@as("UploadCredentials") uploadCredentials: awsCredentials,
@as("Build") build: build
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreateBuildCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAlias = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("RoutingStrategy") routingStrategy: option<routingStrategy>,
@as("Description") description: nonZeroAndMaxString,
@as("Name") name: option<nonBlankAndLengthConstraintString>
}
  type response = {
@as("Alias") alias: alias
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreateAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRuntimeConfiguration = {
  type t;
  type request = {
@as("RuntimeConfiguration") runtimeConfiguration: option<runtimeConfiguration>,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("RuntimeConfiguration") runtimeConfiguration: runtimeConfiguration
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UpdateRuntimeConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMatchmakingConfiguration = {
  type t;
  type request = {
@as("FlexMatchMode") flexMatchMode: flexMatchMode,
@as("BackfillMode") backfillMode: backfillMode,
@as("GameSessionData") gameSessionData: gameSessionData,
@as("GameProperties") gameProperties: gamePropertyList,
@as("CustomEventData") customEventData: customEventData,
@as("AdditionalPlayerCount") additionalPlayerCount: wholeNumber,
@as("NotificationTarget") notificationTarget: snsArnStringModel,
@as("RuleSetName") ruleSetName: matchmakingRuleSetName,
@as("AcceptanceRequired") acceptanceRequired: booleanModel,
@as("AcceptanceTimeoutSeconds") acceptanceTimeoutSeconds: matchmakingAcceptanceTimeoutInteger,
@as("RequestTimeoutSeconds") requestTimeoutSeconds: matchmakingRequestTimeoutInteger,
@as("GameSessionQueueArns") gameSessionQueueArns: queueArnsList,
@as("Description") description: nonZeroAndMaxString,
@as("Name") name: option<matchmakingConfigurationName>
}
  type response = {
@as("Configuration") configuration: matchmakingConfiguration
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UpdateMatchmakingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGameSessionQueue = {
  type t;
  type request = {
@as("NotificationTarget") notificationTarget: queueSnsArnStringModel,
@as("CustomEventData") customEventData: queueCustomEventData,
@as("PriorityConfiguration") priorityConfiguration: priorityConfiguration,
@as("FilterConfiguration") filterConfiguration: filterConfiguration,
@as("Destinations") destinations: gameSessionQueueDestinationList,
@as("PlayerLatencyPolicies") playerLatencyPolicies: playerLatencyPolicyList,
@as("TimeoutInSeconds") timeoutInSeconds: wholeNumber,
@as("Name") name: option<gameSessionQueueNameOrArn>
}
  type response = {
@as("GameSessionQueue") gameSessionQueue: gameSessionQueue
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UpdateGameSessionQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGameSession = {
  type t;
  type request = {
@as("ProtectionPolicy") protectionPolicy: protectionPolicy,
@as("PlayerSessionCreationPolicy") playerSessionCreationPolicy: playerSessionCreationPolicy,
@as("Name") name: nonZeroAndMaxString,
@as("MaximumPlayerSessionCount") maximumPlayerSessionCount: wholeNumber,
@as("GameSessionId") gameSessionId: option<arnStringModel>
}
  type response = {
@as("GameSession") gameSession: gameSession
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UpdateGameSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGameServerGroup = {
  type t;
  type request = {
@as("BalancingStrategy") balancingStrategy: balancingStrategy,
@as("GameServerProtectionPolicy") gameServerProtectionPolicy: gameServerProtectionPolicy,
@as("InstanceDefinitions") instanceDefinitions: instanceDefinitions,
@as("RoleArn") roleArn: iamRoleArn,
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupNameOrArn>
}
  type response = {
@as("GameServerGroup") gameServerGroup: gameServerGroup
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "UpdateGameServerGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SuspendGameServerGroup = {
  type t;
  type request = {
@as("SuspendActions") suspendActions: option<gameServerGroupActions>,
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupNameOrArn>
}
  type response = {
@as("GameServerGroup") gameServerGroup: gameServerGroup
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "SuspendGameServerGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopGameSessionPlacement = {
  type t;
  type request = {
@as("PlacementId") placementId: option<idStringModel>
}
  type response = {
@as("GameSessionPlacement") gameSessionPlacement: gameSessionPlacement
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "StopGameSessionPlacementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartGameSessionPlacement = {
  type t;
  type request = {
@as("GameSessionData") gameSessionData: largeGameSessionData,
@as("DesiredPlayerSessions") desiredPlayerSessions: desiredPlayerSessionList,
@as("PlayerLatencies") playerLatencies: playerLatencyList,
@as("GameSessionName") gameSessionName: nonZeroAndMaxString,
@as("MaximumPlayerSessionCount") maximumPlayerSessionCount: option<wholeNumber>,
@as("GameProperties") gameProperties: gamePropertyList,
@as("GameSessionQueueName") gameSessionQueueName: option<gameSessionQueueNameOrArn>,
@as("PlacementId") placementId: option<idStringModel>
}
  type response = {
@as("GameSessionPlacement") gameSessionPlacement: gameSessionPlacement
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "StartGameSessionPlacementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResumeGameServerGroup = {
  type t;
  type request = {
@as("ResumeActions") resumeActions: option<gameServerGroupActions>,
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupNameOrArn>
}
  type response = {
@as("GameServerGroup") gameServerGroup: gameServerGroup
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "ResumeGameServerGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListScripts = {
  type t;
  type request = {
@as("NextToken") nextToken: nonEmptyString,
@as("Limit") limit: positiveInteger
}
  type response = {
@as("NextToken") nextToken: nonEmptyString,
@as("Scripts") scripts: scriptList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "ListScriptsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAliases = {
  type t;
  type request = {
@as("NextToken") nextToken: nonEmptyString,
@as("Limit") limit: positiveInteger,
@as("Name") name: nonEmptyString,
@as("RoutingStrategyType") routingStrategyType: routingStrategyType
}
  type response = {
@as("NextToken") nextToken: nonEmptyString,
@as("Aliases") aliases: aliasList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "ListAliasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcPeeringConnections = {
  type t;
  type request = {
@as("FleetId") fleetId: fleetId
}
  type response = {
@as("VpcPeeringConnections") vpcPeeringConnections: vpcPeeringConnectionList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeVpcPeeringConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingPolicies = {
  type t;
  type request = {
@as("Location") location: locationStringModel,
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("StatusFilter") statusFilter: scalingStatusType,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("ScalingPolicies") scalingPolicies: scalingPolicyList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeScalingPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRuntimeConfiguration = {
  type t;
  type request = {
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("RuntimeConfiguration") runtimeConfiguration: runtimeConfiguration
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeRuntimeConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGameSessionPlacement = {
  type t;
  type request = {
@as("PlacementId") placementId: option<idStringModel>
}
  type response = {
@as("GameSessionPlacement") gameSessionPlacement: gameSessionPlacement
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeGameSessionPlacementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGameServerGroup = {
  type t;
  type request = {
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupNameOrArn>
}
  type response = {
@as("GameServerGroup") gameServerGroup: gameServerGroup
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeGameServerGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleetLocationAttributes = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("Locations") locations: locationList,
@as("FleetId") fleetId: option<fleetIdOrArn>
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("LocationAttributes") locationAttributes: locationAttributesList,
@as("FleetArn") fleetArn: fleetArn,
@as("FleetId") fleetId: fleetIdOrArn
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeFleetLocationAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleetCapacity = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("FleetIds") fleetIds: fleetIdOrArnList
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("FleetCapacity") fleetCapacity: fleetCapacityList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeFleetCapacityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleetAttributes = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("FleetIds") fleetIds: fleetIdOrArnList
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("FleetAttributes") fleetAttributes: fleetAttributesList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeFleetAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGameServerGroup = {
  type t;
  type request = {
@as("DeleteOption") deleteOption: gameServerGroupDeleteOption,
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupNameOrArn>
}
  type response = {
@as("GameServerGroup") gameServerGroup: gameServerGroup
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DeleteGameServerGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMatchmakingConfiguration = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("FlexMatchMode") flexMatchMode: flexMatchMode,
@as("BackfillMode") backfillMode: backfillMode,
@as("GameSessionData") gameSessionData: gameSessionData,
@as("GameProperties") gameProperties: gamePropertyList,
@as("CustomEventData") customEventData: customEventData,
@as("AdditionalPlayerCount") additionalPlayerCount: wholeNumber,
@as("NotificationTarget") notificationTarget: snsArnStringModel,
@as("RuleSetName") ruleSetName: option<matchmakingRuleSetName>,
@as("AcceptanceRequired") acceptanceRequired: option<booleanModel>,
@as("AcceptanceTimeoutSeconds") acceptanceTimeoutSeconds: matchmakingAcceptanceTimeoutInteger,
@as("RequestTimeoutSeconds") requestTimeoutSeconds: option<matchmakingRequestTimeoutInteger>,
@as("GameSessionQueueArns") gameSessionQueueArns: queueArnsList,
@as("Description") description: nonZeroAndMaxString,
@as("Name") name: option<matchmakingIdStringModel>
}
  type response = {
@as("Configuration") configuration: matchmakingConfiguration
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreateMatchmakingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGameSessionQueue = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("NotificationTarget") notificationTarget: queueSnsArnStringModel,
@as("CustomEventData") customEventData: queueCustomEventData,
@as("PriorityConfiguration") priorityConfiguration: priorityConfiguration,
@as("FilterConfiguration") filterConfiguration: filterConfiguration,
@as("Destinations") destinations: gameSessionQueueDestinationList,
@as("PlayerLatencyPolicies") playerLatencyPolicies: playerLatencyPolicyList,
@as("TimeoutInSeconds") timeoutInSeconds: wholeNumber,
@as("Name") name: option<gameSessionQueueName>
}
  type response = {
@as("GameSessionQueue") gameSessionQueue: gameSessionQueue
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreateGameSessionQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGameSession = {
  type t;
  type request = {
@as("Location") location: locationStringModel,
@as("GameSessionData") gameSessionData: largeGameSessionData,
@as("IdempotencyToken") idempotencyToken: idStringModel,
@as("GameSessionId") gameSessionId: idStringModel,
@as("CreatorId") creatorId: nonZeroAndMaxString,
@as("GameProperties") gameProperties: gamePropertyList,
@as("Name") name: nonZeroAndMaxString,
@as("MaximumPlayerSessionCount") maximumPlayerSessionCount: option<wholeNumber>,
@as("AliasId") aliasId: aliasIdOrArn,
@as("FleetId") fleetId: fleetIdOrArn
}
  type response = {
@as("GameSession") gameSession: gameSession
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreateGameSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGameServerGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("VpcSubnets") vpcSubnets: vpcSubnets,
@as("GameServerProtectionPolicy") gameServerProtectionPolicy: gameServerProtectionPolicy,
@as("BalancingStrategy") balancingStrategy: balancingStrategy,
@as("AutoScalingPolicy") autoScalingPolicy: gameServerGroupAutoScalingPolicy,
@as("InstanceDefinitions") instanceDefinitions: option<instanceDefinitions>,
@as("LaunchTemplate") launchTemplate: option<launchTemplateSpecification>,
@as("MaxSize") maxSize: option<positiveInteger>,
@as("MinSize") minSize: option<wholeNumber>,
@as("RoleArn") roleArn: option<iamRoleArn>,
@as("GameServerGroupName") gameServerGroupName: option<gameServerGroupName>
}
  type response = {
@as("GameServerGroup") gameServerGroup: gameServerGroup
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreateGameServerGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFleet = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Locations") locations: locationConfigurationList,
@as("CertificateConfiguration") certificateConfiguration: certificateConfiguration,
@as("InstanceRoleArn") instanceRoleArn: nonEmptyString,
@as("FleetType") fleetType: fleetType,
@as("PeerVpcId") peerVpcId: nonZeroAndMaxString,
@as("PeerVpcAwsAccountId") peerVpcAwsAccountId: nonZeroAndMaxString,
@as("MetricGroups") metricGroups: metricGroupList,
@as("ResourceCreationLimitPolicy") resourceCreationLimitPolicy: resourceCreationLimitPolicy,
@as("RuntimeConfiguration") runtimeConfiguration: runtimeConfiguration,
@as("NewGameSessionProtectionPolicy") newGameSessionProtectionPolicy: protectionPolicy,
@as("EC2InboundPermissions") eC2InboundPermissions: ipPermissionsList,
@as("EC2InstanceType") eC2InstanceType: option<eC2InstanceType>,
@as("LogPaths") logPaths: stringList,
@as("ServerLaunchParameters") serverLaunchParameters: nonZeroAndMaxString,
@as("ServerLaunchPath") serverLaunchPath: nonZeroAndMaxString,
@as("ScriptId") scriptId: scriptIdOrArn,
@as("BuildId") buildId: buildIdOrArn,
@as("Description") description: nonZeroAndMaxString,
@as("Name") name: option<nonZeroAndMaxString>
}
  type response = {
@as("LocationStates") locationStates: locationStateList,
@as("FleetAttributes") fleetAttributes: fleetAttributes
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "CreateFleetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchGameSessions = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("SortExpression") sortExpression: nonZeroAndMaxString,
@as("FilterExpression") filterExpression: nonZeroAndMaxString,
@as("Location") location: locationStringModel,
@as("AliasId") aliasId: aliasIdOrArn,
@as("FleetId") fleetId: fleetIdOrArn
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("GameSessions") gameSessions: gameSessionList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "SearchGameSessionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGameServerGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("GameServerGroups") gameServerGroups: gameServerGroups
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "ListGameServerGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMatchmakingConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("RuleSetName") ruleSetName: matchmakingRuleSetName,
@as("Names") names: matchmakingConfigurationNameList
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Configurations") configurations: matchmakingConfigurationList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeMatchmakingConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGameSessions = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("StatusFilter") statusFilter: nonZeroAndMaxString,
@as("Location") location: locationStringModel,
@as("AliasId") aliasId: aliasIdOrArn,
@as("GameSessionId") gameSessionId: arnStringModel,
@as("FleetId") fleetId: fleetIdOrArn
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("GameSessions") gameSessions: gameSessionList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeGameSessionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGameSessionQueues = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("Names") names: gameSessionQueueNameOrArnList
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("GameSessionQueues") gameSessionQueues: gameSessionQueueList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeGameSessionQueuesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGameSessionDetails = {
  type t;
  type request = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("Limit") limit: positiveInteger,
@as("StatusFilter") statusFilter: nonZeroAndMaxString,
@as("Location") location: locationStringModel,
@as("AliasId") aliasId: aliasIdOrArn,
@as("GameSessionId") gameSessionId: arnStringModel,
@as("FleetId") fleetId: fleetIdOrArn
}
  type response = {
@as("NextToken") nextToken: nonZeroAndMaxString,
@as("GameSessionDetails") gameSessionDetails: gameSessionDetailList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeGameSessionDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartMatchmaking = {
  type t;
  type request = {
@as("Players") players: option<playerList>,
@as("ConfigurationName") configurationName: option<matchmakingConfigurationName>,
@as("TicketId") ticketId: matchmakingIdStringModel
}
  type response = {
@as("MatchmakingTicket") matchmakingTicket: matchmakingTicket
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "StartMatchmakingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartMatchBackfill = {
  type t;
  type request = {
@as("Players") players: option<playerList>,
@as("GameSessionArn") gameSessionArn: arnStringModel,
@as("ConfigurationName") configurationName: option<matchmakingConfigurationName>,
@as("TicketId") ticketId: matchmakingIdStringModel
}
  type response = {
@as("MatchmakingTicket") matchmakingTicket: matchmakingTicket
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "StartMatchBackfillCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMatchmaking = {
  type t;
  type request = {
@as("TicketIds") ticketIds: option<matchmakingIdList>
}
  type response = {
@as("TicketList") ticketList: matchmakingTicketList
}
  @module("@aws-sdk/client-gamelift") @new external new_: (request) => t = "DescribeMatchmakingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
