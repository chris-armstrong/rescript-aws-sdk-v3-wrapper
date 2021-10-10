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
@ocaml.doc("Data type used for Matchmaking RuleSet ARN.") type matchmakingRuleSetArn = string
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
@ocaml.doc("Data type used for Matchmaking Configuration ARN.")
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
@ocaml.doc("<p>Represents status information for a VPC peering connection. Status is associated
            with a <a>VpcPeeringConnection</a> object. Status codes and messages are
            provided from EC2 (see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpcPeeringConnectionStateReason.html\">VpcPeeringConnectionStateReason</a>). Connection status information is also
            communicated as a fleet <a>Event</a>.</p>")
type vpcPeeringConnectionStatus = {
  @ocaml.doc("<p>Additional messaging associated with the connection status. </p>") @as("Message")
  message: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>Code indicating the status of a VPC peering connection.</p>") @as("Code")
  code: option<nonZeroAndMaxString>,
}
@ocaml.doc("<p>Represents an authorization for a VPC peering connection between the VPC for an
            Amazon GameLift fleet and another VPC on an account you have access to. This authorization
            must exist and be valid for the peering connection to be established. Authorizations are
            valid for 24 hours after they are issued.</p>
        <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>CreateVpcPeeringAuthorization</a> | 
                    <a>DescribeVpcPeeringAuthorizations</a> | 
                    <a>DeleteVpcPeeringAuthorization</a> | 
                    <a>CreateVpcPeeringConnection</a> | 
                    <a>DescribeVpcPeeringConnections</a> | 
                    <a>DeleteVpcPeeringConnection</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a>
         </p>")
type vpcPeeringAuthorization = {
  @ocaml.doc("<p>Time stamp indicating when this authorization expires (24 hours after issuance).
            Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>")
  @as("ExpirationTime")
  expirationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>Time stamp indicating when this authorization was issued. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
            VPC must be in the same Region as your fleet. To look up a VPC ID, use the 
            <a href=\"https://console.aws.amazon.com/vpc/\">VPC Dashboard</a> in the AWS Management Console. 
            Learn more about VPC peering in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with GameLift Fleets</a>.</p>")
  @as("PeerVpcId")
  peerVpcId: option<nonZeroAndMaxString>,
  @ocaml.doc("<p></p>") @as("PeerVpcAwsAccountId") peerVpcAwsAccountId: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>A unique identifier for the AWS account that you use to manage your GameLift fleet. 
            You can find your Account ID in the AWS Management Console under account settings.</p>")
  @as("GameLiftAwsAccountId")
  gameLiftAwsAccountId: option<nonZeroAndMaxString>,
}
@ocaml.doc("<p>
            <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
         </p>
        <p>Settings for a target-based scaling policy as part of a <a>GameServerGroupAutoScalingPolicy</a>. 
            These settings are used to
            create a target-based policy that tracks the GameLift FleetIQ metric
                <code>\"PercentUtilizedGameServers\"</code> and specifies a target value for the
            metric. As player usage changes, the policy triggers to adjust the game server group
            capacity so that the metric returns to the target value. </p>")
type targetTrackingConfiguration = {
  @ocaml.doc("<p>Desired value to use with a game server group target-based scaling policy.  </p>")
  @as("TargetValue")
  targetValue: nonNegativeDouble,
}
@ocaml.doc("<p>Settings for a target-based scaling policy (see <a>ScalingPolicy</a>. A
        target-based policy tracks a particular fleet metric specifies a target value for the
        metric. As player usage changes, the policy triggers Amazon GameLift to adjust capacity so
        that the metric returns to the target value. The target configuration specifies settings
        as needed for the target based policy, including the target value. </p>
         <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>DescribeFleetCapacity</a> | 
                    <a>UpdateFleetCapacity</a> | 
                    <a>DescribeEC2InstanceLimits</a> | 
                    <a>PutScalingPolicy</a> | 
                    <a>DescribeScalingPolicies</a> | 
                    <a>DeleteScalingPolicy</a> | 
                    <a>StopFleetActions</a> | 
                    <a>StartFleetActions</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a>
         </p>")
type targetConfiguration = {
  @ocaml.doc("<p>Desired value to use with a target-based scaling policy. The value must be relevant
        for whatever metric the scaling policy is using. For example, in a policy using the
        metric PercentAvailableGameSessions, the target value should be the preferred size of
        the fleet's buffer (the percent of capacity that should be idle and ready for new game
        sessions).</p>")
  @as("TargetValue")
  targetValue: double,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>
            A label that can be assigned to a GameLift resource.
        </p>
        <p>
            <b>Learn more</b>
         </p>
        <p>
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS Resources</a> in the
            <i>AWS General Reference</i>
         </p>
        <p>
            <a href=\"http://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">
            AWS Tagging Strategies</a>
         </p>
        <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>TagResource</a> | 
                    <a>UntagResource</a> | 
                    <a>ListTagsForResource</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a>
         </p>")
type tag = {
  @ocaml.doc("<p>
            The value for a developer-defined key:value pair for tagging an AWS resource.
        </p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>
            The key for a developer-defined key:value pair for tagging an AWS resource.
        </p>")
  @as("Key")
  key: tagKey,
}
type stringList = array<nonZeroAndMaxString>
type stringDoubleMap = Js.Dict.t<doubleObject>
@ocaml.doc("<p>A set of instructions for launching server processes on each instance in a fleet.
            Server processes run either an executable in a custom game build or a Realtime Servers script.
            Server process configurations are part of a fleet's <a>RuntimeConfiguration</a>.</p>")
type serverProcess = {
  @ocaml.doc("<p>The number of server processes using this configuration that run concurrently on each
            instance.</p>")
  @as("ConcurrentExecutions")
  concurrentExecutions: positiveInteger,
  @ocaml.doc("<p>An optional list of parameters to pass to the server executable or Realtime script on
            launch.</p>")
  @as("Parameters")
  parameters: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>The location of a game build executable or the Realtime script file that contains the
                <code>Init()</code> function. Game builds and Realtime scripts are installed on
            instances at the root: </p>
        <ul>
            <li>
               <p>Windows (custom game builds only): <code>C:\\game</code>. Example:
                        \"<code>C:\\game\\MyGame\\server.exe</code>\" </p>
            </li>
            <li>
               <p>Linux: <code>/local/game</code>. Examples: \"<code>/local/game/MyGame/server.exe</code>\" or
                        \"<code>/local/game/MyRealtimeScript.js</code>\"</p>
            </li>
         </ul>")
  @as("LaunchPath")
  launchPath: nonZeroAndMaxString,
}
@ocaml.doc("<p>The location in Amazon S3 where build or script files are stored for access by Amazon GameLift. This
            location is specified in <a>CreateBuild</a>, <a>CreateScript</a>,
            and <a>UpdateScript</a> requests. </p>")
type s3Location = {
  @ocaml.doc("<p>The version of the file, if object versioning is turned on for the bucket. Amazon GameLift uses
            this information when retrieving files from an S3 bucket that you own. Use this
            parameter to specify a specific version of the file. If not set, the latest version of
            the file is retrieved. </p>")
  @as("ObjectVersion")
  objectVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) for an IAM role that
            allows Amazon GameLift to access the S3 bucket.</p>")
  @as("RoleArn")
  roleArn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the zip file that contains the build files or script files. </p>")
  @as("Key")
  key: option<nonEmptyString>,
  @ocaml.doc("<p>An Amazon S3 bucket identifier. This is the name of the S3 bucket.</p>
        <note>
            <p>GameLift currently does not support uploading from Amazon S3 buckets with names that contain a dot (.).</p>
         </note>")
  @as("Bucket")
  bucket: option<nonEmptyString>,
}
@ocaml.doc("<p>The routing configuration for a fleet alias.</p>
        <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>CreateAlias</a> | 
                    <a>ListAliases</a> | 
                    <a>DescribeAlias</a> | 
                    <a>UpdateAlias</a> | 
                    <a>DeleteAlias</a> | 
                    <a>ResolveAlias</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a>
         </p>")
type routingStrategy = {
  @ocaml.doc("<p>The message text to be used with a terminal routing strategy.</p>") @as("Message")
  message: option<freeText>,
  @ocaml.doc(
    "<p>A unique identifier for the fleet that the alias points to. This value is the fleet ID, not the fleet ARN.</p>"
  )
  @as("FleetId")
  fleetId: option<fleetId>,
  @ocaml.doc("<p>The type of routing strategy for the alias.</p>
        <p>Possible routing types include the following:</p>
        <ul>
            <li>
                <p>
                    <b>SIMPLE</b> - The alias resolves to one specific
                    fleet. Use this type when routing to active fleets.</p>
            </li>
            <li>
                <p>
                    <b>TERMINAL</b> - The alias does not resolve to a
                    fleet but instead can be used to display a message to the user. A terminal alias
                    throws a TerminalRoutingStrategyException with the <a>RoutingStrategy</a> message embedded.</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<routingStrategyType>,
}
@ocaml.doc("<p>A policy that puts limits on the number of game sessions that a player can create
            within a specified span of time. With this policy, you can control players' ability to
            consume available resources.</p>
        <p>The policy is evaluated when a player tries to create a new game session. On receiving
            a <code>CreateGameSession</code> request, GameLift checks that the player (identified by
                <code>CreatorId</code>) has created fewer than game session limit in the specified
            time period.</p>
        <p>The resource creation limit policy is included in <a>FleetAttributes</a>.</p>")
type resourceCreationLimitPolicy = {
  @ocaml.doc("<p>The time span used in evaluating the resource creation limit policy. </p>")
  @as("PolicyPeriodInMinutes")
  policyPeriodInMinutes: option<wholeNumber>,
  @ocaml.doc("<p>The maximum number of game sessions that an individual can create during the policy
            period. </p>")
  @as("NewGameSessionsPerCreator")
  newGameSessionsPerCreator: option<wholeNumber>,
}
type queueArnsList = array<arnStringModel>
type priorityTypeList = array<priorityType>
@ocaml.doc("<p>Represents a player session. Player sessions are created either for a specific game
            session, or as part of a game session placement or matchmaking request. A player session
            can represents a reserved player slot in a game session (when status is
                <code>RESERVED</code>) or actual player activity in a game session (when status is
                <code>ACTIVE</code>). A player session object, including player data, is
            automatically passed to a game session when the player connects to the game session and
            is validated. After the game session ends, player sessions information is retained for
            30 days and then removed.</p>
         <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>CreatePlayerSession</a> |
                    <a>CreatePlayerSessions</a> |
                    <a>DescribePlayerSessions</a> |
                    <a>StartGameSessionPlacement</a> | 
                    <a>DescribeGameSessionPlacement</a> |
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a>
         </p>")
type playerSession = {
  @ocaml.doc(
    "<p>Developer-defined information related to a player. GameLift does not use this data, so it can be formatted as needed for use in the game. </p>"
  )
  @as("PlayerData")
  playerData: option<playerData>,
  @ocaml.doc("<p>Port number for the game session. To connect to a Amazon GameLift server process, an app
        needs both the IP address and port number.</p>")
  @as("Port")
  port: option<portNumber>,
  @ocaml.doc("<p>The DNS identifier assigned to the instance that is running the game session. Values have
            the following format:</p> 
         <ul>
            <li>
               <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
            </li>
            <li>
               <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
            <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses\">Amazon EC2 Instance IP Addressing</a>.)</p>
            </li>
         </ul> 
            <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>")
  @as("DnsName")
  dnsName: option<dnsName>,
  @ocaml.doc(
    "<p>The IP address of the game session. To connect to a GameLift game server, an app needs both the IP address and port number.</p>"
  )
  @as("IpAddress")
  ipAddress: option<ipAddress>,
  @ocaml.doc("<p>Current status of the player session.</p>
         <p>Possible player session statuses include the following:</p>
         <ul>
            <li>
               <p>
                  <b>RESERVED</b> -- The player session request has been
                received, but the player has not yet connected to the server process and/or been
                validated. </p>
            </li>
            <li>
               <p>
                  <b>ACTIVE</b> -- The player has been validated by the
                server process and is currently connected.</p>
            </li>
            <li>
               <p>
                  <b>COMPLETED</b> -- The player connection has been
                dropped.</p>
            </li>
            <li>
               <p>
                  <b>TIMEDOUT</b> -- A player session request was
                received, but the player did not connect and/or was not validated within the
                timeout limit (60 seconds).</p>
            </li>
         </ul>")
  @as("Status")
  status: option<playerSessionStatus>,
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("TerminationTime")
  terminationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>
            The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) associated with the GameLift fleet that the player's game session is running on. 
        </p>")
  @as("FleetArn")
  fleetArn: option<fleetArn>,
  @ocaml.doc(
    "<p>A unique identifier for the fleet that the player's game session is running on.</p>"
  )
  @as("FleetId")
  fleetId: option<fleetId>,
  @ocaml.doc(
    "<p>A unique identifier for the game session that the player session is connected to.</p>"
  )
  @as("GameSessionId")
  gameSessionId: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>A unique identifier for a player that is associated with this player session.</p>")
  @as("PlayerId")
  playerId: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>A unique identifier for a player session.</p>") @as("PlayerSessionId")
  playerSessionId: option<playerSessionId>,
}
@ocaml.doc("<p>Sets a latency cap for individual players when placing a game session. With a latency
            policy in force, a game session cannot be placed in a fleet location where a player
            reports latency higher than the cap. Latency policies are used only with placement
            request that provide player latency information. Player latency policies can be stacked
            to gradually relax latency requirements over time. </p>
        <p>Latency policies are part of a <a>GameSessionQueue</a>.</p>")
type playerLatencyPolicy = {
  @ocaml.doc("<p>The length of time, in seconds, that the policy is enforced while placing a new
            game session. A null value for this property means that the policy is enforced until the
            queue times out.</p>")
  @as("PolicyDurationSeconds")
  policyDurationSeconds: option<wholeNumber>,
  @ocaml.doc("<p>The maximum latency value that is allowed for any player, in milliseconds. All
            policies must have a value set for this property.</p>")
  @as("MaximumIndividualPlayerLatencyMilliseconds")
  maximumIndividualPlayerLatencyMilliseconds: option<wholeNumber>,
}
@ocaml.doc("<p>Regional latency information for a player, used when requesting a new game session
        with <a>StartGameSessionPlacement</a>. This value indicates the amount of
        time lag that exists when the player is connected to a fleet in the specified Region.
        The relative difference between a player's latency values for multiple Regions are used
        to determine which fleets are best suited to place a new game session for the player.
    </p>")
type playerLatency = {
  @ocaml.doc("<p>Amount of time that represents the time lag experienced by the player when
        connected to the specified Region.</p>")
  @as("LatencyInMilliseconds")
  latencyInMilliseconds: option<float_>,
  @ocaml.doc("<p>Name of the Region that is associated with the latency value.</p>")
  @as("RegionIdentifier")
  regionIdentifier: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>A unique identifier for a player associated with the latency data.</p>")
  @as("PlayerId")
  playerId: option<nonZeroAndMaxString>,
}
type playerIdList = array<nonZeroAndMaxString>
type playerDataMap = Js.Dict.t<playerData>
@ocaml.doc("<p>Information about a player session that was created as part of a <a>StartGameSessionPlacement</a> request. This object contains only the player
        ID and player session ID. To retrieve full details on a player session, call <a>DescribePlayerSessions</a> with the player session ID.</p>
         <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>CreatePlayerSession</a> | 
                    <a>CreatePlayerSessions</a> | 
                    <a>DescribePlayerSessions</a> | 
                    <a>StartGameSessionPlacement</a> | 
                    <a>DescribeGameSessionPlacement</a> | 
                    <a>StopGameSessionPlacement</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a>
         </p>")
type placedPlayerSession = {
  @ocaml.doc("<p>A unique identifier for a player session.</p>") @as("PlayerSessionId")
  playerSessionId: option<playerSessionId>,
  @ocaml.doc("<p>A unique identifier for a player that is associated with this player session.</p>")
  @as("PlayerId")
  playerId: option<nonZeroAndMaxString>,
}
type metricGroupList = array<metricGroup>
type matchmakingRuleSetNameList = array<matchmakingRuleSetName>
@ocaml.doc("<p>Set of rule statements, used with FlexMatch, that determine how to build your player
            matches. Each rule set describes a type of group to be created and defines the
            parameters for acceptable player matches. Rule sets are used in <a>MatchmakingConfiguration</a> objects.</p>
        <p>A rule set may define the following elements for a match. For detailed information
            and examples showing how to construct a rule set, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html\">Build a FlexMatch rule
                set</a>. </p>
        <ul>
            <li>
                <p>Teams -- Required. A rule set must define one or multiple teams for the
                    match and set minimum and maximum team sizes. For example, a rule set might
                    describe a 4x4 match that requires all eight slots to be filled. </p>
            </li>
            <li>
                <p>Player attributes -- Optional. These attributes specify a set of player
                    characteristics to evaluate when looking for a match. Matchmaking requests that
                    use a rule set with player attributes must provide the corresponding attribute
                    values. For example, an attribute might specify a player's skill or
                    level.</p>
            </li>
            <li>
                <p>Rules -- Optional. Rules define how to evaluate potential players for a
                    match based on player attributes. A rule might specify minimum requirements for
                    individual players, teams, or entire matches. For example, a rule might require
                    each player to meet a certain skill level, each team to have at least one player
                    in a certain role, or the match to have a minimum average skill level. or may
                    describe an entire group--such as all teams must be evenly matched or have at
                    least one player in a certain role. </p>
            </li>
            <li>
                <p>Expansions -- Optional. Expansions allow you to relax the rules after a
                    period of time when no acceptable matches are found. This feature lets you
                    balance getting players into games in a reasonable amount of time instead of
                    making them wait indefinitely for the best possible match. For example, you
                    might use an expansion to increase the maximum skill variance between players
                    after 30 seconds.</p>
            </li>
         </ul>")
type matchmakingRuleSet = {
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>A collection of matchmaking rules, formatted as a JSON string. Comments are not
            allowed in JSON, but most elements support a description field.</p>")
  @as("RuleSetBody")
  ruleSetBody: ruleSetBody,
  @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift matchmaking rule set resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::matchmakingruleset/<ruleset name></code>.  In a GameLift rule set ARN, the resource ID matches the
                <i>RuleSetName</i> value.</p>")
  @as("RuleSetArn")
  ruleSetArn: option<matchmakingRuleSetArn>,
  @ocaml.doc("<p>A unique identifier for the matchmaking rule set</p>") @as("RuleSetName")
  ruleSetName: option<matchmakingIdStringModel>,
}
type matchmakingIdList = array<matchmakingIdStringModel>
type matchmakingConfigurationNameList = array<matchmakingConfigurationName>
@ocaml.doc("<p>Represents a new player session that is created as a result of a successful FlexMatch
            match. A successful match automatically creates new player sessions for every player ID
            in the original matchmaking request. </p>
        <p>When players connect to the match's game session, they must include both player ID
            and player session ID in order to claim their assigned player slot.</p>")
type matchedPlayerSession = {
  @ocaml.doc("<p>A unique identifier for a player session</p>") @as("PlayerSessionId")
  playerSessionId: option<playerSessionId>,
  @ocaml.doc("<p>A unique identifier for a player </p>") @as("PlayerId")
  playerId: option<nonZeroAndMaxString>,
}
@ocaml.doc("<p>A fleet location and its life-cycle state. A location state object might
            be used to describe a fleet's remote location or home Region.
            Life-cycle state tracks the progress of launching the first instance in a new 
            location and preparing it for game hosting, and then removing all instances and
            deleting the location from the fleet.</p>
        <p>
            <b>Related actions</b>
         </p>
        <p>
            <a>CreateFleet</a> | 
            <a>CreateFleetLocations</a> |
            <a>DeleteFleetLocations</a>
        </p>")
type locationState = {
  @ocaml.doc("<p>The life-cycle status of a fleet location. </p>") @as("Status")
  status: option<fleetStatus>,
  @ocaml.doc(
    "<p>The fleet location, expressed as an AWS Region code such as <code>us-west-2</code>. </p>"
  )
  @as("Location")
  location: option<locationStringModel>,
}
type locationList = array<locationStringModel>
@ocaml.doc("<p>A remote location where a multi-location fleet can deploy EC2 instances for game
            hosting. </p>
        <p>
            <b>Related actions</b>
         </p>
        <p>
            <a>CreateFleet</a>
         </p>")
type locationConfiguration = {
  @ocaml.doc("<p>An AWS Region code, such as <code>us-west-2</code>. </p>") @as("Location")
  location: option<locationStringModel>,
}
@ocaml.doc("<p>
            <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
         </p>
        <p>An EC2 launch template that contains configuration settings and game server code to
            be deployed to all instances in a game server group. The launch template is specified
            when creating a new game server group with <a>CreateGameServerGroup</a>. </p>")
type launchTemplateSpecification = {
  @ocaml.doc("<p>The version of the EC2 launch template to use. If no version is specified, the
            default version will be used. With Amazon EC2, you can specify a default version for a
            launch template. If none is set, the default is the first version created.</p>")
  @as("Version")
  version: option<launchTemplateVersion>,
  @ocaml.doc("<p>A readable identifier for an existing EC2 launch template. </p>")
  @as("LaunchTemplateName")
  launchTemplateName: option<launchTemplateName>,
  @ocaml.doc("<p>A unique identifier for an existing EC2 launch template.</p>")
  @as("LaunchTemplateId")
  launchTemplateId: option<launchTemplateId>,
}
type latencyMap = Js.Dict.t<positiveInteger>
@ocaml.doc("<p>A range of IP addresses and port settings that allow inbound traffic to connect to
            server processes on an instance in a fleet. New game sessions are assigned an IP
            address/port number combination, which must fall into the fleet's allowed ranges. Fleets
            with custom game builds must have permissions explicitly set. For Realtime Servers fleets, GameLift
            automatically opens two port ranges, one for TCP messaging and one for UDP.</p>
        <p>
            <b>Related actions</b>
         </p>
        <p>
            <a>DescribeFleetPortSettings</a>
         </p>")
type ipPermission = {
  @ocaml.doc("<p>The network communication protocol used by the fleet.</p>") @as("Protocol")
  protocol: ipProtocol,
  @ocaml.doc("<p>A range of allowed IP addresses. This value must be expressed in CIDR notation.
            Example: \"<code>000.000.000.000/[subnet mask]</code>\" or optionally the shortened
            version \"<code>0.0.0.0/[subnet mask]</code>\".</p>")
  @as("IpRange")
  ipRange: nonBlankString,
  @ocaml.doc("<p>An ending value for a range of allowed port numbers. Port numbers are end-inclusive.
            This value must be higher than <code>FromPort</code>.</p>")
  @as("ToPort")
  toPort: portNumber,
  @ocaml.doc("<p>A starting value for a range of allowed port numbers.</p>") @as("FromPort")
  fromPort: portNumber,
}
@ocaml.doc("<p>
            <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
         </p>
        <p>An allowed instance type for a <a>GameServerGroup</a>. All game server groups must have at least two
            instance types defined for it. GameLift FleetIQ periodically evaluates each defined instance type
            for viability. It then updates the Auto Scaling group with the list of viable instance
            types.</p>")
type instanceDefinition = {
  @ocaml.doc("<p>Instance weighting that indicates how much this instance type contributes to the total
            capacity of a game server group. Instance weights are used by GameLift FleetIQ to calculate the
            instance type's cost per unit hour and better identify the most cost-effective options.
            For detailed information on weighting instance capacity, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html\">Instance
                Weighting</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
            Default value is \"1\".</p>")
  @as("WeightedCapacity")
  weightedCapacity: option<weightedCapacity>,
  @ocaml.doc("<p>An EC2 instance type designation.</p>") @as("InstanceType")
  instanceType: gameServerGroupInstanceType,
}
@ocaml.doc("<p>Set of credentials required to remotely access a fleet instance. Access credentials
        are requested by calling <a>GetInstanceAccess</a> and returned in an <a>InstanceAccess</a> object.</p>")
type instanceCredentials = {
  @ocaml.doc("<p>Secret string. For Windows instances, the secret is a password for use with Windows
        Remote Desktop. For Linux instances, it is a private key (which must be saved as a
        <code>.pem</code> file) for use with SSH.</p>")
  @as("Secret")
  secret: option<nonEmptyString>,
  @ocaml.doc("<p>User login string.</p>") @as("UserName") userName: option<nonEmptyString>,
}
@ocaml.doc("<p>Represents an EC2 instance of virtual computing resources that hosts one or more game
            servers. In GameLift, a fleet can contain zero or more instances.</p>
        <p>
            <b>Related actions</b>
         </p>
        <p>
            <a>DescribeInstances</a>
         </p>")
type instance = {
  @ocaml.doc("<p>The fleet location of the instance, expressed as an AWS Region
            code, such as <code>us-west-2</code>. </p>")
  @as("Location")
  location: option<locationStringModel>,
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>Current status of the instance. Possible statuses include the following:</p>
         <ul>
            <li>
               <p>
                  <b>PENDING</b> -- The instance is in the process of
                being created and launching server processes as defined in the fleet's run-time
                configuration. </p>
            </li>
            <li>
               <p>
                  <b>ACTIVE</b> -- The instance has been successfully
                created and at least one server process has successfully launched and reported
                back to GameLift that it is ready to host a game session. The instance is now
                considered ready to host game sessions. </p>
            </li>
            <li>
               <p>
                  <b>TERMINATING</b> -- The instance is in the process
                of shutting down. This may happen to reduce capacity during a scaling down event
                or to recycle resources in the event of a problem.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<instanceStatus>,
  @ocaml.doc("<p>EC2 instance type that defines the computing resources of this instance.
    </p>")
  @as("Type")
  type_: option<ec2InstanceType>,
  @ocaml.doc("<p>Operating system that is running on this instance. </p>") @as("OperatingSystem")
  operatingSystem: option<operatingSystem>,
  @ocaml.doc("<p>The DNS identifier assigned to the instance that is running the game session. Values have
            the following format:</p> 
         <ul>
            <li>
               <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
            </li>
            <li>
               <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
            <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses\">Amazon EC2 Instance IP Addressing</a>.)</p>
            </li>
         </ul> 
            <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>")
  @as("DnsName")
  dnsName: option<dnsName>,
  @ocaml.doc("<p>IP address that is assigned to the instance.</p>") @as("IpAddress")
  ipAddress: option<ipAddress>,
  @ocaml.doc("<p>A unique identifier for the instance.</p>") @as("InstanceId")
  instanceId: option<instanceId>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>"
  )
  @as("FleetArn")
  fleetArn: option<fleetArn>,
  @ocaml.doc("<p>A unique identifier for the fleet that the instance is in.</p>") @as("FleetId")
  fleetId: option<fleetId>,
}
type gameSessionQueueNameOrArnList = array<gameSessionQueueNameOrArn>
@ocaml.doc("<p>A fleet or alias designated in a game session queue. Queues fulfill requests for new
            game sessions by placing a new game session on any of the queue's destinations. </p>
        <p>Destinations are part of a <a>GameSessionQueue</a>.</p>")
type gameSessionQueueDestination = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that is assigned to fleet or fleet alias. ARNs, which
            include a fleet ID or alias ID and a Region name, provide a unique identifier across all
            Regions. </p>")
  @as("DestinationArn")
  destinationArn: option<arnStringModel>,
}
type gameServerInstanceIds = array<gameServerInstanceId>
@ocaml.doc("<p>
            <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
         </p>
            <p> Additional properties, including status, that describe an EC2 instance in a game
            server group. Instance configurations are set with game server group properties (see
                <code>DescribeGameServerGroup</code> and with the EC2 launch template that was used
            when creating the game server group. </p>
            <p>Retrieve game server instances for a game server group by calling
                <code>DescribeGameServerInstances</code>. </p>
            <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>CreateGameServerGroup</a> | 
                    <a>ListGameServerGroups</a> | 
                    <a>DescribeGameServerGroup</a> | 
                    <a>UpdateGameServerGroup</a> | 
                    <a>DeleteGameServerGroup</a> | 
                    <a>ResumeGameServerGroup</a> | 
                    <a>SuspendGameServerGroup</a> | 
                    <a>DescribeGameServerInstances</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html\">All APIs by task</a>
         </p>")
type gameServerInstance = {
  @ocaml.doc("<p>
                Current status of the game server instance. 
            </p>
            <ul>
            <li>
                    <p>
                        <b>ACTIVE</b> -- The instance is viable for hosting 
                        game servers. </p>
                </li>
            <li>
                    <p>
                    <b>DRAINING</b> -- The instance is not viable for
                    hosting game servers. Existing game servers are in the process of ending, and
                    new game servers are not started on this instance unless no other resources are
                    available. When the instance is put in DRAINING, a new instance is started up to 
                    replace it. Once the instance has no UTILIZED game servers, it will be terminated 
                    in favor of the new instance.</p>
                </li>
            <li>
                    <p>
                    <b>SPOT_TERMINATING</b> -- The instance is in the
                    process of shutting down due to a Spot instance interruption. No new game
                    servers are started on this instance.</p>
                </li>
         </ul>")
  @as("InstanceStatus")
  instanceStatus: option<gameServerInstanceStatus>,
  @ocaml.doc("<p>The unique identifier for the instance where the game server is running. This ID is
            available in the instance metadata. EC2 instance IDs 
            use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>")
  @as("InstanceId")
  instanceId: option<gameServerInstanceId>,
  @ocaml.doc("<p>A generated unique identifier for the game server group that includes the game
            server instance. </p>")
  @as("GameServerGroupArn")
  gameServerGroupArn: option<gameServerGroupArn>,
  @ocaml.doc("<p>A developer-defined identifier for the game server group that includes the game
            server instance. The name is unique for each Region in each AWS account.</p>")
  @as("GameServerGroupName")
  gameServerGroupName: option<gameServerGroupName>,
}
type gameServerGroupActions = array<gameServerGroupAction>
@ocaml.doc("<p>
            <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
         </p>
        <p>Properties describing a game server that is running on an instance in a <a>GameServerGroup</a>. </p>
         <p>A game server is created by a successful call to <code>RegisterGameServer</code> and
            deleted by calling <code>DeregisterGameServer</code>. A game server is claimed to host a
            game session by calling <code>ClaimGameServer</code>. </p>
        <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>RegisterGameServer</a> | 
                    <a>ListGameServers</a> | 
                    <a>ClaimGameServer</a> | 
                    <a>DescribeGameServer</a> | 
                    <a>UpdateGameServer</a> | 
                    <a>DeregisterGameServer</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html\">All APIs by task</a>
         </p>")
type gameServer = {
  @ocaml.doc("<p>Timestamp that indicates the last time the game server was updated with health status
            using an <a>UpdateGameServer</a> request. The format is a number expressed in
            Unix time as milliseconds (for example <code>\"1469498468.057\"</code>). After game server
            registration, this property is only changed when a game server update specifies a health
            check value.</p>")
  @as("LastHealthCheckTime")
  lastHealthCheckTime: option<timestamp_>,
  @ocaml.doc("<p>Timestamp that indicates the last time the game server was claimed with a <a>ClaimGameServer</a> request. The format is a number expressed in Unix time
            as milliseconds (for example <code>\"1469498468.057\"</code>). This value is used to
            calculate when a claimed game server's status should revert to null.</p>")
  @as("LastClaimTime")
  lastClaimTime: option<timestamp_>,
  @ocaml.doc("<p>Timestamp that indicates when the game server was created with a <a>RegisterGameServer</a> request. The format is a number expressed in Unix
            time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>")
  @as("RegistrationTime")
  registrationTime: option<timestamp_>,
  @ocaml.doc("<p>Indicates whether the game server is currently available for new games or is busy. Possible statuses include:</p>
        <ul>
            <li>
               <p>
                  <code>AVAILABLE</code> - The game server is available to be claimed. A game server that has
                    been claimed remains in this status until it reports game hosting activity. </p>
            </li>
            <li>
               <p>
                  <code>UTILIZED</code> - The game server is currently hosting a game session with players. </p>
            </li>
         </ul>")
  @as("UtilizationStatus")
  utilizationStatus: option<gameServerUtilizationStatus>,
  @ocaml.doc("<p>Indicates when an available game server has been reserved for gameplay but has not yet
            started hosting a game. Once it is claimed, the game server remains in
                <code>CLAIMED</code> status for a maximum of one minute. During this time, game
            clients connect to the game server to start the game and trigger the game server to
            update its utilization status. After one minute, the game server claim status reverts to
            null.</p>")
  @as("ClaimStatus")
  claimStatus: option<gameServerClaimStatus>,
  @ocaml.doc("<p>A set of custom game server properties, formatted as a single string value. This data 
            is passed to a game client or service when it requests information on game servers using
                <a>ListGameServers</a> or <a>ClaimGameServer</a>.</p>")
  @as("GameServerData")
  gameServerData: option<gameServerData>,
  @ocaml.doc(
    "<p>The port and IP address that must be used to establish a client connection to the game server.</p>"
  )
  @as("ConnectionInfo")
  connectionInfo: option<gameServerConnectionInfo>,
  @ocaml.doc("<p>The unique identifier for the instance where the game server is running. This ID is
            available in the instance metadata. EC2 instance IDs 
            use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>")
  @as("InstanceId")
  instanceId: option<gameServerInstanceId>,
  @ocaml.doc("<p>A custom string that uniquely identifies the game server. Game server IDs are
            developer-defined and are unique across all game server groups in an AWS
            account.</p>")
  @as("GameServerId")
  gameServerId: option<gameServerId>,
  @ocaml.doc(
    "<p>The ARN identifier for the game server group where the game server is located.</p>"
  )
  @as("GameServerGroupArn")
  gameServerGroupArn: option<gameServerGroupArn>,
  @ocaml.doc("<p>A unique identifier for the game server group where the game server is running. 
            Use either the <a>GameServerGroup</a> name or ARN value.</p>")
  @as("GameServerGroupName")
  gameServerGroupName: option<gameServerGroupName>,
}
@ocaml.doc("<p>Set of key-value pairs that contain information about a game session. When included in
            a game session request, these properties communicate details to be used when setting up
            the new game session. For example, a game property might specify a game mode, level, or
            map. Game properties are passed to the game server process when initiating a new game
            session. For more information, see the <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-create\"> GameLift Developer Guide</a>.</p>")
type gameProperty = {
  @ocaml.doc("<p>The game property value.</p>") @as("Value") value: gamePropertyValue,
  @ocaml.doc("<p>The game property identifier.</p>") @as("Key") key: gamePropertyKey,
}
@ocaml.doc("<p>Current resource utilization statistics in a specified fleet or location. The location
            value might refer to a fleet's remote location or its home Region.</p>
        <p>
            <b>Related actions</b>
         </p>
        <p>
            <a>DescribeFleetUtilization</a> | <a>DescribeFleetLocationUtilization</a>
         </p>")
type fleetUtilization = {
  @ocaml.doc("<p>The fleet location for the fleet utilization information, expressed as an AWS Region
            code, such as <code>us-west-2</code>. </p>")
  @as("Location")
  location: option<locationStringModel>,
  @ocaml.doc("<p>The maximum number of players allowed across all game sessions that are currently
            being hosted across all instances in the fleet location.</p>")
  @as("MaximumPlayerSessionCount")
  maximumPlayerSessionCount: option<wholeNumber>,
  @ocaml.doc("<p>The number of active player sessions that are currently being hosted across all
            instances in the fleet location.</p>")
  @as("CurrentPlayerSessionCount")
  currentPlayerSessionCount: option<wholeNumber>,
  @ocaml.doc("<p>The number of active game sessions that are currently being hosted across all
            instances in the fleet location.</p>")
  @as("ActiveGameSessionCount")
  activeGameSessionCount: option<wholeNumber>,
  @ocaml.doc("<p>The number of server processes in <code>ACTIVE</code> status that are currently
            running across all instances in the fleet location. </p>")
  @as("ActiveServerProcessCount")
  activeServerProcessCount: option<wholeNumber>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>"
  )
  @as("FleetArn")
  fleetArn: option<fleetArn>,
  @ocaml.doc("<p>A unique identifier for the fleet associated with the location.</p>")
  @as("FleetId")
  fleetId: option<fleetId>,
}
type fleetIdOrArnList = array<fleetIdOrArn>
type fleetIdList = array<fleetId>
type fleetActionList = array<fleetAction>
@ocaml.doc("<p>Log entry describing an event that involves GameLift resources (such as a fleet). In
            addition to tracking activity, event codes and messages can provide additional
            information for troubleshooting and debugging problems.</p>
        <p>
            <b>Related actions</b>
         </p>
        <p>
            <a>DescribeFleetEvents</a>
         </p>")
type event = {
  @ocaml.doc("<p>Location of stored logs with additional detail that is related to the event. This
            is useful for debugging issues. The URL is valid for 15 minutes. You can also access
            fleet creation logs through the GameLift console.</p>")
  @as("PreSignedLogUrl")
  preSignedLogUrl: option<nonZeroAndMaxString>,
  @ocaml.doc(
    "<p>Time stamp indicating when this event occurred. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("EventTime")
  eventTime: option<timestamp_>,
  @ocaml.doc("<p>Additional information related to the event.</p>") @as("Message")
  message: option<nonEmptyString>,
  @ocaml.doc("<p>The type of event being logged. </p>
        <p>
            <b>Fleet creation events (ordered by fleet creation activity):</b>
         </p>
        <ul>
            <li>
                <p>FLEET_CREATED -- A fleet resource was successfully created with a status of
                        <code>NEW</code>. Event messaging includes the fleet ID.</p>
            </li>
            <li>
                <p>FLEET_STATE_DOWNLOADING -- Fleet status changed from <code>NEW</code> to
                        <code>DOWNLOADING</code>. The compressed build has started downloading to a
                    fleet instance for installation.</p>
            </li>
            <li>
                <p> FLEET_BINARY_DOWNLOAD_FAILED -- The build failed to download to the fleet
                    instance.</p>
            </li>
            <li>
                <p>FLEET_CREATION_EXTRACTING_BUILD – The game server build was successfully
                    downloaded to an instance, and the build files are now being extracted from the
                    uploaded build and saved to an instance. Failure at this stage prevents a fleet
                    from moving to <code>ACTIVE</code> status. Logs for this stage display a list of
                    the files that are extracted and saved on the instance. Access the logs by using
                    the URL in <i>PreSignedLogUrl</i>.</p>
            </li>
            <li>
                <p>FLEET_CREATION_RUNNING_INSTALLER – The game server build files were
                    successfully extracted, and the GameLift is now running the build's install
                    script (if one is included). Failure in this stage prevents a fleet from moving
                    to <code>ACTIVE</code> status. Logs for this stage list the installation steps
                    and whether or not the install completed successfully. Access the logs by using
                    the URL in <i>PreSignedLogUrl</i>. </p>
            </li>
            <li>
                <p>FLEET_CREATION_VALIDATING_RUNTIME_CONFIG -- The build process was successful,
                    and the GameLift is now verifying that the game server launch paths, which are
                    specified in the fleet's runtime configuration, exist. If any listed launch path
                    exists, GameLift tries to launch a game server process and waits for the process
                    to report ready. Failures in this stage prevent a fleet from moving to
                        <code>ACTIVE</code> status. Logs for this stage list the launch paths in the
                    runtime configuration and indicate whether each is found. Access the logs by
                    using the URL in <i>PreSignedLogUrl</i>.
                    
                </p>
            </li>
            <li>
                <p>FLEET_STATE_VALIDATING -- Fleet status changed from
                        <code>DOWNLOADING</code> to <code>VALIDATING</code>.</p>
            </li>
            <li>
                <p> FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND -- Validation of the runtime
                    configuration failed because the executable specified in a launch path does not
                    exist on the instance.</p>
            </li>
            <li>
                <p>FLEET_STATE_BUILDING -- Fleet status changed from <code>VALIDATING</code>
                    to <code>BUILDING</code>.</p>
            </li>
            <li>
                <p>FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE -- Validation of the runtime
                    configuration failed because the executable specified in a launch path failed to
                    run on the fleet instance.</p>
            </li>
            <li>
                <p>FLEET_STATE_ACTIVATING -- Fleet status changed from <code>BUILDING</code>
                    to <code>ACTIVATING</code>. </p>
            </li>
            <li>
                <p> FLEET_ACTIVATION_FAILED - The fleet failed to successfully complete one of
                    the steps in the fleet activation process. This event code indicates that the
                    game build was successfully downloaded to a fleet instance, built, and
                    validated, but was not able to start a server process. Learn more at 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation\"> Debug Fleet
                        Creation Issues</a>
               </p>
            </li>
            <li>
                <p>FLEET_STATE_ACTIVE -- The fleet's status changed from
                        <code>ACTIVATING</code> to <code>ACTIVE</code>. The fleet is now ready to
                    host game sessions.</p>
            </li>
         </ul>
        <p>
            <b>VPC peering events:</b>
         </p>
        <ul>
            <li>
                <p>FLEET_VPC_PEERING_SUCCEEDED -- A VPC peering connection has been
                    established between the VPC for an GameLift fleet and a VPC in your AWS
                    account.</p>
            </li>
            <li>
                <p>FLEET_VPC_PEERING_FAILED -- A requested VPC peering connection has failed.
                    Event details and status information (see <a>DescribeVpcPeeringConnections</a>) provide additional detail. A
                    common reason for peering failure is that the two VPCs have overlapping CIDR
                    blocks of IPv4 addresses. To resolve this, change the CIDR block for the VPC in
                    your AWS account. For more information on VPC peering failures, see <a href=\"https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html\">https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html</a>
               </p>
            </li>
            <li>
                <p>FLEET_VPC_PEERING_DELETED -- A VPC peering connection has been successfully
                    deleted.</p>
            </li>
         </ul>
        <p>
            <b>Spot instance events:</b>
         </p>
        <ul>
            <li>
                <p> INSTANCE_INTERRUPTED -- A spot instance was interrupted by EC2 with a
                    two-minute notification.</p>
            </li>
         </ul>
        <p>
            <b>Other fleet events:</b>
         </p>
        <ul>
            <li>
                <p>FLEET_SCALING_EVENT -- A change was made to the fleet's capacity settings
                    (desired instances, minimum/maximum scaling limits). Event messaging includes
                    the new capacity settings.</p>
            </li>
            <li>
                <p>FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED -- A change was made to
                    the fleet's game session protection policy setting. Event messaging includes
                    both the old and new policy setting. </p>
            </li>
            <li>
                <p>FLEET_DELETED -- A request to delete a fleet was initiated.</p>
            </li>
            <li>
                <p> GENERIC_EVENT -- An unspecified event has occurred.</p>
            </li>
         </ul>")
  @as("EventCode")
  eventCode: option<eventCode>,
  @ocaml.doc("<p>A unique identifier for an event resource, such as a fleet ID.</p>")
  @as("ResourceId")
  resourceId: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>A unique identifier for a fleet event.</p>") @as("EventId")
  eventId: option<nonZeroAndMaxString>,
}
@ocaml.doc("<p>The GameLift service limits for an EC2 instance type and current utilization. GameLift
            allows AWS accounts a maximum number of instances, per instance type, per AWS Region or
            location, for use with GameLift. You can request an limit increase for your account by
            using the <b>Service limits</b> page in the GameLift
            console.</p>
        <p>
            <b>Related actions</b>
         </p>
        <p>
            <a>DescribeEC2InstanceLimits</a>
         </p>")
type ec2InstanceLimit = {
  @ocaml.doc("<p>An AWS Region code, such as <code>us-west-2</code>. </p>") @as("Location")
  location: option<locationStringModel>,
  @ocaml.doc("<p>The number of instances that is allowed for the specified instance type and
            location.</p>")
  @as("InstanceLimit")
  instanceLimit: option<wholeNumber>,
  @ocaml.doc("<p>The number of instances for the specified type and location that are currently being
            used by the AWS account. </p>")
  @as("CurrentInstances")
  currentInstances: option<wholeNumber>,
  @ocaml.doc("<p>The name of an EC2 instance type. See <a href=\"http://aws.amazon.com/ec2/instance-types/\">Amazon EC2 Instance Types</a> for detailed
            descriptions. </p>")
  @as("EC2InstanceType")
  ec2InstanceType: option<ec2InstanceType>,
}
@ocaml.doc("<p>Resource capacity settings. Fleet capacity is measured in EC2 instances. Pending and
            terminating counts are non-zero when the fleet capacity is adjusting to a scaling event
            or if access to resources is temporarily affected.</p>
        <p>EC2 instance counts are part of <a>FleetCapacity</a>.</p>")
type ec2InstanceCounts = {
  @ocaml.doc(
    "<p>Number of instances that are no longer active but haven't yet been terminated.</p>"
  )
  @as("TERMINATING")
  terminating: option<wholeNumber>,
  @ocaml.doc("<p>Number of active instances that are not currently hosting a game session.</p>")
  @as("IDLE")
  idle: option<wholeNumber>,
  @ocaml.doc("<p>Actual number of instances that are ready to host game sessions.</p>")
  @as("ACTIVE")
  active: option<wholeNumber>,
  @ocaml.doc("<p>Number of instances that are starting but not yet active.</p>") @as("PENDING")
  pending: option<wholeNumber>,
  @ocaml.doc("<p>The maximum instance count value allowed.</p>") @as("MAXIMUM")
  maximum: option<wholeNumber>,
  @ocaml.doc("<p>The minimum instance count value allowed.</p>") @as("MINIMUM")
  minimum: option<wholeNumber>,
  @ocaml.doc("<p>Ideal number of active instances. GameLift will always try to maintain the desired
            number of instances. Capacity is scaled up or down by changing the desired instances. </p>")
  @as("DESIRED")
  desired: option<wholeNumber>,
}
@ocaml.doc("<p>Player information for use when creating player sessions using a game session
        placement request with <a>StartGameSessionPlacement</a>.</p>")
type desiredPlayerSession = {
  @ocaml.doc(
    "<p>Developer-defined information related to a player. GameLift does not use this data, so it can be formatted as needed for use in the game.</p>"
  )
  @as("PlayerData")
  playerData: option<playerData>,
  @ocaml.doc("<p>A unique identifier for a player to associate with the player session.</p>")
  @as("PlayerId")
  playerId: option<nonZeroAndMaxString>,
}
@ocaml.doc("<p>Determines whether a TLS/SSL certificate is generated for a fleet. This feature must be
            enabled when creating the fleet. All instances in a fleet share the same
            certificate. The certificate can be retrieved by calling the
                <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html\">GameLift Server
                SDK</a> operation <code>GetInstanceCertificate</code>. </p>
        <p>A fleet's certificate configuration is part of <a>FleetAttributes</a>.</p>")
type certificateConfiguration = {
  @ocaml.doc("<p>Indicates whether a TLS/SSL certificate is generated for a fleet. </p>
        <p>Valid values include: </p>
        <ul>
            <li>
                <p>
                  <b>GENERATED</b> - Generate a TLS/SSL certificate
                    for this fleet.</p>
            </li>
            <li>
                <p>
                  <b>DISABLED</b> - (default) Do not generate a
                    TLS/SSL certificate for this fleet. </p>
            </li>
         </ul>
        <p> </p>")
  @as("CertificateType")
  certificateType: certificateType,
}
@ocaml.doc("<p>Properties describing a custom game build.</p>
        <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>CreateBuild</a> | 
                    <a>ListBuilds</a> | 
                    <a>DescribeBuild</a> | 
                    <a>UpdateBuild</a> | 
                    <a>DeleteBuild</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a>
         </p>")
type build = {
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>Operating system that the game server binaries are built to run on. This value
            determines the type of fleet resources that you can use for this build.</p>")
  @as("OperatingSystem")
  operatingSystem: option<operatingSystem>,
  @ocaml.doc("<p>File size of the uploaded game build, expressed in bytes. When the build status is
                <code>INITIALIZED</code>, this value is 0.</p>")
  @as("SizeOnDisk")
  sizeOnDisk: option<positiveLong>,
  @ocaml.doc("<p>Current status of the build.</p>
        <p>Possible build statuses include the following:</p>
        <ul>
            <li>
                <p>
                    <b>INITIALIZED</b> -- A new build has been defined,
                    but no files have been uploaded. You cannot create fleets for builds that are in
                    this status. When a build is successfully created, the build status is set to
                    this value. </p>
            </li>
            <li>
                <p>
                    <b>READY</b> -- The game build has been successfully
                    uploaded. You can now create new fleets for this build.</p>
            </li>
            <li>
                <p>
                    <b>FAILED</b> -- The game build upload failed. You
                    cannot create new fleets for this build. </p>
            </li>
         </ul>")
  @as("Status")
  status: option<buildStatus>,
  @ocaml.doc(
    "<p>Version information that is associated with a build or script. Version strings do not need to be unique. This value can be set using <a>CreateBuild</a> or <a>UpdateBuild</a>.</p>"
  )
  @as("Version")
  version: option<freeText>,
  @ocaml.doc(
    "<p>A descriptive label that is associated with a build. Build names do not need to be unique. It can be set using <a>CreateBuild</a> or <a>UpdateBuild</a>.</p>"
  )
  @as("Name")
  name: option<freeText>,
  @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift build resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::build/build-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. In a GameLift build ARN, the resource ID matches the
                <i>BuildId</i> value.</p>")
  @as("BuildArn")
  buildArn: option<buildArn>,
  @ocaml.doc("<p>A unique identifier for the build.</p>") @as("BuildId") buildId: option<buildId>,
}
@ocaml.doc("<p>Temporary access credentials used for uploading game build files to Amazon GameLift. They
            are valid for a limited time. If they expire before you upload your game build, get a
            new set by calling <a>RequestUploadCredentials</a>.</p>")
type awsCredentials = {
  @ocaml.doc("<p>Token used to associate a specific build ID with the files uploaded using these
            credentials.</p>")
  @as("SessionToken")
  sessionToken: option<nonEmptyString>,
  @ocaml.doc("<p>Temporary secret key allowing access to the Amazon GameLift S3 account.</p>")
  @as("SecretAccessKey")
  secretAccessKey: option<nonEmptyString>,
  @ocaml.doc("<p>Temporary key allowing access to the Amazon GameLift S3 account.</p>")
  @as("AccessKeyId")
  accessKeyId: option<nonEmptyString>,
}
@ocaml.doc("<p>Represents a peering connection between a VPC on one of your AWS accounts and the
            VPC for your Amazon GameLift fleets. This record may be for an active peering connection or a
            pending connection that has not yet been established.</p>
        <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>CreateVpcPeeringAuthorization</a> | 
                    <a>DescribeVpcPeeringAuthorizations</a> | 
                    <a>DeleteVpcPeeringAuthorization</a> | 
                    <a>CreateVpcPeeringConnection</a> | 
                    <a>DescribeVpcPeeringConnections</a> | 
                    <a>DeleteVpcPeeringConnection</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a>
         </p>")
type vpcPeeringConnection = {
  @ocaml.doc("<p>A unique identifier for the VPC that contains the Amazon GameLift fleet for this
            connection. This VPC is managed by Amazon GameLift and does not appear in your AWS account.
        </p>")
  @as("GameLiftVpcId")
  gameLiftVpcId: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
            VPC must be in the same Region as your fleet. To look up a VPC ID, use the 
            <a href=\"https://console.aws.amazon.com/vpc/\">VPC Dashboard</a> in the AWS Management Console. 
            Learn more about VPC peering in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with GameLift Fleets</a>.</p>")
  @as("PeerVpcId")
  peerVpcId: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>The status information about the connection. Status indicates if a
            connection is pending, successful, or failed.</p>")
  @as("Status")
  status: option<vpcPeeringConnectionStatus>,
  @ocaml.doc("<p>A unique identifier that is automatically assigned to the connection record. This ID
            is referenced in VPC peering connection events, and is used when deleting a connection
            with <a>DeleteVpcPeeringConnection</a>. </p>")
  @as("VpcPeeringConnectionId")
  vpcPeeringConnectionId: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>CIDR block of IPv4 addresses assigned to the VPC peering connection for the
            GameLift VPC. The peered VPC also has an IPv4 CIDR block associated with it; these
            blocks cannot overlap or the peering connection cannot be created. </p>")
  @as("IpV4CidrBlock")
  ipV4CidrBlock: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>
            The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) associated with the GameLift fleet resource for this connection.
        </p>")
  @as("FleetArn")
  fleetArn: option<fleetArn>,
  @ocaml.doc(
    "<p>A unique identifier for the fleet. This ID determines the ID of the Amazon GameLift VPC for your fleet.</p>"
  )
  @as("FleetId")
  fleetId: option<fleetId>,
}
type vpcPeeringAuthorizationList = array<vpcPeeringAuthorization>
type tagList_ = array<tag>
type serverProcessList = array<serverProcess>
@ocaml.doc("<p>Properties describing a Realtime script.</p>
        <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>CreateScript</a> | 
                    <a>ListScripts</a> | 
                    <a>DescribeScript</a> | 
                    <a>UpdateScript</a> | 
                    <a>DeleteScript</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a>
         </p>")
type script = {
  @as("StorageLocation") storageLocation: option<s3Location>,
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The file size of the uploaded Realtime script, expressed in bytes. When files are
            uploaded from an S3 location, this value remains at \"0\".</p>")
  @as("SizeOnDisk")
  sizeOnDisk: option<positiveLong>,
  @ocaml.doc(
    "<p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>"
  )
  @as("Version")
  version: option<nonZeroAndMaxString>,
  @ocaml.doc(
    "<p>A descriptive label that is associated with a script. Script names do not need to be unique.</p>"
  )
  @as("Name")
  name: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift script resource and uniquely identifies it. ARNs are unique across all Regions.  In a GameLift script ARN, the resource ID matches the
                <i>ScriptId</i> value.</p>")
  @as("ScriptArn")
  scriptArn: option<scriptArn>,
  @ocaml.doc("<p>A unique identifier for the Realtime script</p>") @as("ScriptId")
  scriptId: option<scriptId>,
}
@ocaml.doc("<p>Rule that controls how a fleet is scaled. Scaling policies are uniquely identified
        by the combination of name and fleet ID.</p>
         <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>DescribeFleetCapacity</a> | 
                    <a>UpdateFleetCapacity</a> | 
                    <a>DescribeEC2InstanceLimits</a> | 
                    <a>PutScalingPolicy</a> | 
                    <a>DescribeScalingPolicies</a> | 
                    <a>DeleteScalingPolicy</a> | 
                    <a>StopFleetActions</a> | 
                    <a>StartFleetActions</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a>
         </p>")
type scalingPolicy = {
  @ocaml.doc("<p>
            
        </p>")
  @as("Location")
  location: option<locationStringModel>,
  @ocaml.doc("<p>The current status of the fleet's scaling policies in a requested fleet location. The
                status <code>PENDING_UPDATE</code> indicates that an update was requested for the fleet 
                but has not yet been completed for the location.</p>")
  @as("UpdateStatus")
  updateStatus: option<locationUpdateStatus>,
  @ocaml.doc("<p>An object that contains settings for a target-based scaling policy.</p>")
  @as("TargetConfiguration")
  targetConfiguration: option<targetConfiguration>,
  @ocaml.doc("<p>The type of scaling policy to create. For a target-based policy, set the parameter
                <i>MetricName</i> to 'PercentAvailableGameSessions' and specify a
                <i>TargetConfiguration</i>. For a rule-based policy set the following
            parameters: <i>MetricName</i>, <i>ComparisonOperator</i>,
                <i>Threshold</i>, <i>EvaluationPeriods</i>,
                <i>ScalingAdjustmentType</i>, and
                <i>ScalingAdjustment</i>.</p>")
  @as("PolicyType")
  policyType: option<policyType>,
  @ocaml.doc("<p>Name of the Amazon GameLift-defined metric that is used to trigger a scaling adjustment. For
            detailed descriptions of fleet metrics, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html\">Monitor Amazon GameLift
                with Amazon CloudWatch</a>. </p>
        <ul>
            <li>
                <p>
                  <b>ActivatingGameSessions</b> -- Game sessions in
                    the process of being created.</p>
            </li>
            <li>
                <p>
                  <b>ActiveGameSessions</b> -- Game sessions that
                    are currently running.</p>
            </li>
            <li>
                <p>
                  <b>ActiveInstances</b> -- Fleet instances that
                    are currently running at least one game session.</p>
            </li>
            <li>
                <p>
                  <b>AvailableGameSessions</b> -- Additional game
                    sessions that fleet could host simultaneously, given current capacity.</p>
            </li>
            <li>
                <p>
                  <b>AvailablePlayerSessions</b> -- Empty player
                    slots in currently active game sessions. This includes game sessions that are
                    not currently accepting players. Reserved player slots are not
                    included.</p>
            </li>
            <li>
                <p>
                  <b>CurrentPlayerSessions</b> -- Player slots in
                    active game sessions that are being used by a player or are reserved for a
                    player. </p>
            </li>
            <li>
                <p>
                  <b>IdleInstances</b> -- Active instances that are
                    currently hosting zero game sessions. </p>
            </li>
            <li>
                <p>
                  <b>PercentAvailableGameSessions</b> -- Unused
                    percentage of the total number of game sessions that a fleet could host
                    simultaneously, given current capacity. Use this metric for a target-based
                    scaling policy.</p>
            </li>
            <li>
                <p>
                  <b>PercentIdleInstances</b> -- Percentage of the
                    total number of active instances that are hosting zero game sessions.</p>
            </li>
            <li>
                <p>
                  <b>QueueDepth</b> -- Pending game session
                    placement requests, in any queue, where the current fleet is the top-priority
                    destination.</p>
            </li>
            <li>
                <p>
                  <b>WaitTime</b> -- Current wait time for pending
                    game session placement requests, in any queue, where the current fleet is the
                    top-priority destination. </p>
            </li>
         </ul>")
  @as("MetricName")
  metricName: option<metricName>,
  @ocaml.doc("<p>Length of time (in minutes) the metric must be at or beyond the threshold before a
        scaling event is triggered.</p>")
  @as("EvaluationPeriods")
  evaluationPeriods: option<positiveInteger>,
  @ocaml.doc("<p>Metric value used to trigger a scaling event.</p>") @as("Threshold")
  threshold: option<double>,
  @ocaml.doc("<p>Comparison operator to use when measuring a metric against the threshold
        value.</p>")
  @as("ComparisonOperator")
  comparisonOperator: option<comparisonOperatorType>,
  @ocaml.doc("<p>The type of adjustment to make to a fleet's instance count (see <a>FleetCapacity</a>):</p>
         <ul>
            <li>
               <p>
                  <b>ChangeInCapacity</b> -- add (or subtract) the
                scaling adjustment value from the current instance count. Positive values scale
                up while negative values scale down.</p>
            </li>
            <li>
               <p>
                  <b>ExactCapacity</b> -- set the instance count to the
                scaling adjustment value.</p>
            </li>
            <li>
               <p>
                  <b>PercentChangeInCapacity</b> -- increase or reduce
                the current instance count by the scaling adjustment, read as a percentage.
                Positive values scale up while negative values scale down.</p>
            </li>
         </ul>")
  @as("ScalingAdjustmentType")
  scalingAdjustmentType: option<scalingAdjustmentType>,
  @ocaml.doc("<p>Amount of adjustment to make, based on the scaling adjustment type.</p>")
  @as("ScalingAdjustment")
  scalingAdjustment: option<integer_>,
  @ocaml.doc("<p>Current status of the scaling policy. The scaling policy can be in force only when
        in an <code>ACTIVE</code> status. Scaling policies can be suspended for individual
        fleets (see <a>StopFleetActions</a>; if suspended for a fleet, the policy
        status does not change. View a fleet's stopped actions by calling <a>DescribeFleetCapacity</a>.</p>
         <ul>
            <li>
               <p>
                  <b>ACTIVE</b> -- The scaling policy can be used for
                auto-scaling a fleet.</p>
            </li>
            <li>
               <p>
                  <b>UPDATE_REQUESTED</b> -- A request to update the
                scaling policy has been received.</p>
            </li>
            <li>
               <p>
                  <b>UPDATING</b> -- A change is being made to the
                scaling policy.</p>
            </li>
            <li>
               <p>
                  <b>DELETE_REQUESTED</b> -- A request to delete the
                scaling policy has been received.</p>
            </li>
            <li>
               <p>
                  <b>DELETING</b> -- The scaling policy is being
                deleted.</p>
            </li>
            <li>
               <p>
                  <b>DELETED</b> -- The scaling policy has been
                deleted.</p>
            </li>
            <li>
               <p>
                  <b>ERROR</b> -- An error occurred in creating the
                policy. It should be removed and recreated.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<scalingStatusType>,
  @ocaml.doc(
    "<p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique.</p>"
  )
  @as("Name")
  name: option<nonZeroAndMaxString>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>"
  )
  @as("FleetArn")
  fleetArn: option<fleetArn>,
  @ocaml.doc(
    "<p>A unique identifier for the fleet that is associated with this scaling policy.</p>"
  )
  @as("FleetId")
  fleetId: option<fleetId>,
}
@ocaml.doc("<p>Custom prioritization settings for use by a game session queue when placing new game
            sessions with available game servers. When defined, this configuration replaces the
            default FleetIQ prioritization process, which is as follows:</p>
        <ul>
            <li>
                <p>If player latency data is included in a game session request, destinations and
                    locations are prioritized first based on lowest average latency (1), then on
                    lowest hosting cost (2), then on destination list order (3), and finally on
                    location (alphabetical) (4). This approach ensures that the queue's top priority
                    is to place game sessions where average player latency is lowest, and--if
                    latency is the same--where the hosting cost is less, etc.</p>
            </li>
            <li>
                <p>If player latency data is not included, destinations and locations are
                    prioritized first on destination list order (1), and then on location
                    (alphabetical) (2). This approach ensures that the queue's top priority is to
                    place game sessions on the first destination fleet listed. If that fleet has
                    multiple locations, the game session is placed on the first location (when
                    listed alphabetically).</p>
            </li>
         </ul>
        <p>Changing the priority order will affect how game sessions are placed.</p>
        <p>Priority configurations are part of a <a>GameSessionQueue</a>.</p>")
type priorityConfiguration = {
  @ocaml.doc("<p>The prioritization order to use for fleet locations, when the
                <code>PriorityOrder</code> property includes <code>LOCATION</code>. Locations are
            identified by AWS Region codes such as <code>us-west-2</code>. Each location can only be
            listed once. </p>")
  @as("LocationOrder")
  locationOrder: option<locationList>,
  @ocaml.doc("<p>The recommended sequence to use when prioritizing where to place new game sessions.
            Each type can only be listed once.</p>
        <ul>
            <li>
                <p>
                  <code>LATENCY</code> -- FleetIQ prioritizes locations where the average player
                    latency (provided in each game session request) is lowest. </p>
            </li>
            <li>
                <p>
                  <code>COST</code> -- FleetIQ prioritizes destinations with the lowest current
                    hosting costs. Cost is evaluated based on the location, instance type, and fleet
                    type (Spot or On-Demand) for each destination in the queue.</p>
            </li>
            <li>
                <p>
                  <code>DESTINATION</code> -- FleetIQ prioritizes based on the order that
                    destinations are listed in the queue configuration.</p>
            </li>
            <li>
                <p>
                  <code>LOCATION</code> -- FleetIQ prioritizes based on the provided order of
                    locations, as defined in <code>LocationOrder</code>. </p>
            </li>
         </ul>")
  @as("PriorityOrder")
  priorityOrder: option<priorityTypeList>,
}
type playerSessionList = array<playerSession>
type playerLatencyPolicyList = array<playerLatencyPolicy>
type playerLatencyList = array<playerLatency>
type placedPlayerSessionList = array<placedPlayerSession>
type matchmakingRuleSetList = array<matchmakingRuleSet>
type matchedPlayerSessionList = array<matchedPlayerSession>
type locationStateList = array<locationState>
type locationConfigurationList = array<locationConfiguration>
@ocaml.doc("<p>Represents a location in a multi-location fleet.</p>
        <p>
            <b>Related actions</b>
         </p>
        <p>
            <a>DescribeFleetLocationAttributes</a> 
        </p>")
type locationAttributes = {
  @ocaml.doc("<p>The status of fleet activity updates to the location. The status
            <code>PENDING_UPDATE</code> indicates that <a>StopFleetActions</a> or <a>StartFleetActions</a>
            has been requested but the update has not yet been completed for the location.</p>")
  @as("UpdateStatus")
  updateStatus: option<locationUpdateStatus>,
  @ocaml.doc("<p>A list of fleet actions that have been suspended in the fleet location.</p>")
  @as("StoppedActions")
  stoppedActions: option<fleetActionList>,
  @ocaml.doc("<p>A fleet location and its current life-cycle state.</p>") @as("LocationState")
  locationState: option<locationState>,
}
type ipPermissionsList = array<ipPermission>
type instanceList = array<instance>
type instanceDefinitions = array<instanceDefinition>
@ocaml.doc("<p>Information required to remotely connect to a fleet instance. Access is requested
        by calling <a>GetInstanceAccess</a>. </p>")
type instanceAccess = {
  @ocaml.doc("<p>Credentials required to access the instance.</p>") @as("Credentials")
  credentials: option<instanceCredentials>,
  @ocaml.doc("<p>Operating system that is running on the instance.</p>") @as("OperatingSystem")
  operatingSystem: option<operatingSystem>,
  @ocaml.doc("<p>IP address that is assigned to the instance.</p>") @as("IpAddress")
  ipAddress: option<ipAddress>,
  @ocaml.doc("<p>A unique identifier for the instance being accessed.</p>") @as("InstanceId")
  instanceId: option<instanceId>,
  @ocaml.doc("<p>A unique identifier for the fleet containing the instance being accessed.</p>")
  @as("FleetId")
  fleetId: option<fleetId>,
}
type gameSessionQueueDestinationList = array<gameSessionQueueDestination>
type gameServers = array<gameServer>
type gameServerInstances = array<gameServerInstance>
@ocaml.doc("<p>
            <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
         </p>
        <p>Configuration settings for intelligent automatic scaling that uses target tracking.
            These settings are used to add an Auto Scaling policy when creating the corresponding
            Auto Scaling group with <a>CreateGameServerGroup</a>. After the Auto Scaling
            group is created, all updates to Auto Scaling policies, including changing this policy
            and adding or removing other policies, is done directly on the Auto Scaling group. </p>")
type gameServerGroupAutoScalingPolicy = {
  @ocaml.doc("<p>Settings for a target-based scaling policy applied to Auto Scaling group. These
            settings are used to create a target-based policy that tracks the GameLift FleetIQ metric
                <code>\"PercentUtilizedGameServers\"</code> and specifies a target value for the
            metric. As player usage changes, the policy triggers to adjust the game server group
            capacity so that the metric returns to the target value. </p>")
  @as("TargetTrackingConfiguration")
  targetTrackingConfiguration: targetTrackingConfiguration,
  @ocaml.doc("<p>Length of time, in seconds, it takes for a new instance to start new game server
            processes and register with GameLift FleetIQ. Specifying a warm-up time can be useful, particularly
            with game servers that take a long time to start up, because it avoids prematurely
            starting new instances. </p>")
  @as("EstimatedInstanceWarmup")
  estimatedInstanceWarmup: option<positiveInteger>,
}
type gamePropertyList = array<gameProperty>
type fleetUtilizationList = array<fleetUtilization>
@ocaml.doc("<p>Current resource capacity settings in a specified fleet or location. The location
            value might refer to a fleet's remote location or its home Region. </p>
        <p>
            <b>Related actions</b>
         </p>
        <p>
            <a>DescribeFleetCapacity</a> | 
            <a>DescribeFleetLocationCapacity</a> | 
            <a>UpdateFleetCapacity</a>
        </p>")
type fleetCapacity = {
  @ocaml.doc("<p>The fleet location for the instance count information, expressed as an AWS Region
            code, such as <code>us-west-2</code>. </p>")
  @as("Location")
  location: option<locationStringModel>,
  @ocaml.doc("<p>The current instance count and capacity settings for the fleet location. </p>")
  @as("InstanceCounts")
  instanceCounts: option<ec2InstanceCounts>,
  @ocaml.doc("<p>The EC2 instance type that is used for all instances in a fleet. The instance type
            determines the computing resources in use, including CPU, memory, storage, and
            networking capacity. See <a href=\"http://aws.amazon.com/ec2/instance-types/\">Amazon EC2
                Instance Types</a> for detailed descriptions.</p>")
  @as("InstanceType")
  instanceType: option<ec2InstanceType>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>"
  )
  @as("FleetArn")
  fleetArn: option<fleetArn>,
  @ocaml.doc("<p>A unique identifier for the fleet associated with the location.</p>")
  @as("FleetId")
  fleetId: option<fleetId>,
}
@ocaml.doc("<p>Describes a GameLift fleet of game hosting resources.</p>
        <p>
            <b>Related actions</b>
         </p>
        <p>
            <a>CreateFleet</a> | <a>DescribeFleetAttributes</a>
         </p>")
type fleetAttributes = {
  @ocaml.doc("<p>Indicates whether a TLS/SSL certificate was generated for the fleet. </p>")
  @as("CertificateConfiguration")
  certificateConfiguration: option<certificateConfiguration>,
  @ocaml.doc("<p>A unique identifier for an AWS IAM role that manages access to your AWS services. 
        With an instance role ARN set, any application that runs on an instance in this fleet can assume the role, 
        including install scripts, server processes, and daemons (background processes). Create a role or look up a role's 
        ARN by using the <a href=\"https://console.aws.amazon.com/iam/\">IAM dashboard</a> in the AWS Management Console.
        Learn more about using on-box credentials for your game servers at 
        <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html\">
        Access external resources from a game server</a>.</p>")
  @as("InstanceRoleArn")
  instanceRoleArn: option<nonEmptyString>,
  @ocaml.doc(
    "<p>A list of fleet activity that has been suspended using <a>StopFleetActions</a>. This includes fleet auto-scaling.</p>"
  )
  @as("StoppedActions")
  stoppedActions: option<fleetActionList>,
  @ocaml.doc("<p>Name of a metric group that metrics for this fleet are added to. In Amazon CloudWatch,
            you can view aggregated metrics for fleets that are in a metric group. A fleet can be
            included in only one metric group at a time.</p>")
  @as("MetricGroups")
  metricGroups: option<metricGroupList>,
  @ocaml.doc("<p>The fleet policy that limits the number of game sessions an individual player can
            create over a span of time.</p>")
  @as("ResourceCreationLimitPolicy")
  resourceCreationLimitPolicy: option<resourceCreationLimitPolicy>,
  @ocaml.doc("<p>The operating system of the fleet's computing resources. A fleet's operating system is
            determined by the OS of the build or script that is deployed on this fleet.</p>")
  @as("OperatingSystem")
  operatingSystem: option<operatingSystem>,
  @ocaml.doc("<p>The type of game session protection to set on all new instances that are started in
            the fleet.</p>
        <ul>
            <li>
                <p>
                    <b>NoProtection</b> -- The game session can be
                    terminated during a scale-down event.</p>
            </li>
            <li>
                <p>
                    <b>FullProtection</b> -- If the game session is in an
                        <code>ACTIVE</code> status, it cannot be terminated during a scale-down
                    event.</p>
            </li>
         </ul>")
  @as("NewGameSessionProtectionPolicy")
  newGameSessionProtectionPolicy: option<protectionPolicy>,
  @ocaml.doc("<p>
            <b>This parameter is no longer used.</b> Game session log
            paths are now defined using the GameLift server API <code>ProcessReady()</code>
            <code>logParameters</code>. See more information in the <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process\">Server API Reference</a>. </p>")
  @as("LogPaths")
  logPaths: option<stringList>,
  @ocaml.doc("<p>
            <b>This parameter is no longer used.</b> Server launch
            parameters are now defined  using the fleet's <a>RuntimeConfiguration</a>
            parameter. Requests that use this parameter instead continue to be valid.</p>")
  @as("ServerLaunchParameters")
  serverLaunchParameters: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>
            <b>This parameter is no longer used.</b> Server launch paths
            are now defined  using the fleet's <a>RuntimeConfiguration</a> parameter.
            Requests that use this parameter instead continue to be valid.</p>")
  @as("ServerLaunchPath")
  serverLaunchPath: option<nonZeroAndMaxString>,
  @ocaml.doc("<p> The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) associated with the GameLift script resource that is deployed on instances
            in this fleet. In a GameLift script ARN, the resource ID matches the
                <code>ScriptId</code> value.</p>")
  @as("ScriptArn")
  scriptArn: option<scriptArn>,
  @ocaml.doc(
    "<p>A unique identifier for the Realtime script resource that is deployed on instances in this fleet.</p>"
  )
  @as("ScriptId")
  scriptId: option<scriptId>,
  @ocaml.doc("<p> The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) associated with the GameLift build resource that is deployed on instances in
            this fleet. In a GameLift build ARN, the resource ID matches the <code>BuildId</code>
            value.</p>")
  @as("BuildArn")
  buildArn: option<buildArn>,
  @ocaml.doc(
    "<p>A unique identifier for the build resource that is deployed on instances in this fleet.</p>"
  )
  @as("BuildId")
  buildId: option<buildId>,
  @ocaml.doc("<p>Current status of the fleet. Possible fleet statuses include the following:</p>
        <ul>
            <li>
                <p>
                    <b>NEW</b> -- A new fleet has been defined and desired
                    instances is set to 1. </p>
            </li>
            <li>
                <p>
                    <b>DOWNLOADING/VALIDATING/BUILDING/ACTIVATING</b> --
                    GameLift is setting up the new fleet, creating new instances with the game build
                    or Realtime script and starting server processes.</p>
            </li>
            <li>
                <p>
                    <b>ACTIVE</b> -- Hosts can now accept game
                    sessions.</p>
            </li>
            <li>
                <p>
                    <b>ERROR</b> -- An error occurred when downloading,
                    validating, building, or activating the fleet.</p>
            </li>
            <li>
                <p>
                    <b>DELETING</b> -- Hosts are responding to a delete
                    fleet request.</p>
            </li>
            <li>
                <p>
                    <b>TERMINATED</b> -- The fleet no longer
                    exists.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<fleetStatus>,
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("TerminationTime")
  terminationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>"
  )
  @as("Name")
  name: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>A human-readable description of the fleet.</p>") @as("Description")
  description: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>The EC2 instance type that determines the computing resources of each instance in
            the fleet. Instance type defines the CPU, memory, storage, and networking capacity. See
                <a href=\"http://aws.amazon.com/ec2/instance-types/\">Amazon EC2 Instance Types</a>
            for detailed descriptions.</p>")
  @as("InstanceType")
  instanceType: option<ec2InstanceType>,
  @ocaml.doc("<p>The kind of instances, On-Demand or Spot, that this fleet uses.</p>")
  @as("FleetType")
  fleetType: option<fleetType>,
  @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. In a GameLift fleet ARN, the resource ID matches the <code>FleetId</code>
            value.</p>")
  @as("FleetArn")
  fleetArn: option<fleetArn>,
  @ocaml.doc("<p>A unique identifier for the fleet.</p>") @as("FleetId") fleetId: option<fleetId>,
}
@ocaml.doc("<p>A list of fleet locations where a game session queue can place new game sessions. You
            can use a filter to temporarily turn off placements for specific locations. For queues
            that have multi-location fleets, you can use a filter configuration allow placement with
            some, but not all of these locations.</p>
        <p>Filter configurations are part of a <a>GameSessionQueue</a>.</p>")
type filterConfiguration = {
  @ocaml.doc("<p> A list of locations to allow game session placement in, in the form of AWS Region
            codes such as <code>us-west-2</code>. </p>")
  @as("AllowedLocations")
  allowedLocations: option<locationList>,
}
type eventList = array<event>
type ec2InstanceLimitList = array<ec2InstanceLimit>
type desiredPlayerSessionList = array<desiredPlayerSession>
type buildList = array<build>
@ocaml.doc("<p>Values for use in <a>Player</a> attribute key-value pairs. This object lets
            you specify an attribute value using any of the valid data types: string, number, string
            array, or data map. Each <code>AttributeValue</code> object can use only one of the
            available properties.</p>")
type attributeValue = {
  @ocaml.doc("<p>For a map of up to 10 data type:value pairs. Maximum length for each string value
            is 100 characters. </p>")
  @as("SDM")
  sdm: option<stringDoubleMap>,
  @ocaml.doc("<p>For a list of up to 10 strings. Maximum length for each string is 100 characters.
            Duplicate values are not recognized; all occurrences of the repeated value after the
            first of a repeated value are ignored.</p>")
  @as("SL")
  sl: option<stringList>,
  @ocaml.doc("<p>For number values, expressed as double.</p>") @as("N") n: option<doubleObject>,
  @ocaml.doc("<p>For single string values. Maximum string length is 100 characters.</p>") @as("S")
  s: option<nonZeroAndMaxString>,
}
@ocaml.doc("<p>Properties that describe an alias resource.</p>
        <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>CreateAlias</a> | 
                    <a>ListAliases</a> | 
                    <a>DescribeAlias</a> | 
                    <a>UpdateAlias</a> | 
                    <a>DeleteAlias</a> | 
                    <a>ResolveAlias</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a>
         </p>")
type alias = {
  @ocaml.doc(
    "<p>The time that this data object was last modified. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The routing configuration, including routing type and fleet target, for the alias. </p>"
  )
  @as("RoutingStrategy")
  routingStrategy: option<routingStrategy>,
  @ocaml.doc("<p>A human-readable description of an alias.</p>") @as("Description")
  description: option<freeText>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift alias resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::alias/alias-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. In a GameLift alias ARN, the resource ID matches the alias ID value.</p>"
  )
  @as("AliasArn")
  aliasArn: option<aliasArn>,
  @ocaml.doc(
    "<p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>"
  )
  @as("Name")
  name: option<nonBlankAndLengthConstraintString>,
  @ocaml.doc("<p>A unique identifier for the alias. Alias IDs are unique within a Region.</p>")
  @as("AliasId")
  aliasId: option<aliasId>,
}
type vpcPeeringConnectionList = array<vpcPeeringConnection>
type scriptList = array<script>
type scalingPolicyList = array<scalingPolicy>
@ocaml.doc("<p>A collection of server process configurations that describe the set of processes to
            run on each instance in a fleet. Server processes run either an executable in a custom
            game build or a Realtime Servers script. GameLift launches the configured processes, manages their
            life cycle, and replaces them as needed. Each instance checks regularly for an updated
            runtime configuration. </p>
        <p>A GameLift instance is limited to 50 processes running concurrently. To calculate the
            total number of processes in a runtime configuration, add the values of the
                <code>ConcurrentExecutions</code> parameter for each <a>ServerProcess</a>. Learn more about <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html\"> Running Multiple
                Processes on a Fleet</a>.</p>        
        <p>
            <b>Related actions</b>
         </p>
        <p>
            <a>DescribeRuntimeConfiguration</a> | <a>UpdateRuntimeConfiguration</a>
         </p>")
type runtimeConfiguration = {
  @ocaml.doc("<p>The maximum amount of time (in seconds) allowed to launch a new game session and have
            it report ready to host players. During this time, the game session is in status
                <code>ACTIVATING</code>. If the game session does not become active before the
            timeout, it is ended and the game session status is changed to
            <code>TERMINATED</code>.</p>")
  @as("GameSessionActivationTimeoutSeconds")
  gameSessionActivationTimeoutSeconds: option<gameSessionActivationTimeoutSeconds>,
  @ocaml.doc("<p>The number of game sessions in status <code>ACTIVATING</code> to allow on an instance.
            This setting limits the instance resources that can be used for new game activations at
            any one time.</p>")
  @as("MaxConcurrentGameSessionActivations")
  maxConcurrentGameSessionActivations: option<maxConcurrentGameSessionActivations>,
  @ocaml.doc("<p>A collection of server process configurations that identify what server processes to
            run on each instance in a fleet.</p>")
  @as("ServerProcesses")
  serverProcesses: option<serverProcessList>,
}
type playerAttributeMap = Js.Dict.t<attributeValue>
@ocaml.doc("<p>Guidelines for use with FlexMatch to match players into games. All matchmaking
            requests must specify a matchmaking configuration.</p>")
type matchmakingConfiguration = {
  @ocaml.doc("<p>Indicates whether this matchmaking configuration is being used with GameLift hosting or
            as a standalone matchmaking solution. </p>
        <ul>
            <li>
               <p>
                  <b>STANDALONE</b> - FlexMatch forms matches and returns
                match information, including players and team assignments, in a 
                <a href=\"https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded\">
                    MatchmakingSucceeded</a> event.</p>
            </li>
            <li>
               <p>
                  <b>WITH_QUEUE</b> - FlexMatch forms matches and uses the specified GameLift queue to
                start a game session for the match. </p>
            </li>
         </ul>")
  @as("FlexMatchMode")
  flexMatchMode: option<flexMatchMode>,
  @ocaml.doc("<p>The method used to backfill game sessions created with this matchmaking configuration.
            MANUAL indicates that the game makes backfill requests or does not use the match
            backfill feature. AUTOMATIC indicates that GameLift creates <a>StartMatchBackfill</a> requests whenever a game session has one or more open
            slots. Learn more about manual and automatic backfill in <a href=\"https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html\">Backfill existing games
                with FlexMatch</a>. Automatic backfill is not available when
            <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>")
  @as("BackfillMode")
  backfillMode: option<backfillMode>,
  @ocaml.doc("<p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object
            that is created for a successful match. This parameter is not used when
            <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>")
  @as("GameSessionData")
  gameSessionData: option<gameSessionData>,
  @ocaml.doc("<p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). This information is added to the new <a>GameSession</a>
            object that is created for a successful match. This parameter is not used when
            <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>")
  @as("GameProperties")
  gameProperties: option<gamePropertyList>,
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>Information to attach to all events related to the matchmaking configuration. </p>"
  )
  @as("CustomEventData")
  customEventData: option<customEventData>,
  @ocaml.doc("<p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies 
            a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used when <code>FlexMatchMode</code> is set to
            <code>STANDALONE</code>.</p>")
  @as("AdditionalPlayerCount")
  additionalPlayerCount: option<wholeNumber>,
  @ocaml.doc("<p>An SNS topic ARN that is set up to receive matchmaking notifications.</p>")
  @as("NotificationTarget")
  notificationTarget: option<snsArnStringModel>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) associated with the GameLift matchmaking rule set resource that this configuration uses.</p>"
  )
  @as("RuleSetArn")
  ruleSetArn: option<matchmakingRuleSetArn>,
  @ocaml.doc("<p>A unique identifier for the matchmaking rule set to use with this configuration. A matchmaking configuration can only use
            rule sets that are defined in the same Region.</p>")
  @as("RuleSetName")
  ruleSetName: option<matchmakingIdStringModel>,
  @ocaml.doc("<p>A flag that indicates whether a match that was created with this configuration must be
            accepted by the matched players. To require acceptance, set to TRUE. When this option is
            enabled, matchmaking tickets use the status <code>REQUIRES_ACCEPTANCE</code> to indicate
            when a completed potential match is waiting for player acceptance.</p>")
  @as("AcceptanceRequired")
  acceptanceRequired: option<booleanModel>,
  @ocaml.doc("<p>The length of time (in seconds) to wait for players to accept a proposed match, if
            acceptance is required. If any player rejects the match or fails to accept before the
            timeout, the ticket continues to look for an acceptable match.</p>")
  @as("AcceptanceTimeoutSeconds")
  acceptanceTimeoutSeconds: option<matchmakingAcceptanceTimeoutInteger>,
  @ocaml.doc("<p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
            before timing out. Requests that fail due to timing out can be resubmitted as
            needed.</p>")
  @as("RequestTimeoutSeconds")
  requestTimeoutSeconds: option<matchmakingRequestTimeoutInteger>,
  @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
            GameLift-hosted game sessions for matches that are created with this matchmaking
            configuration. This property is not set when <code>FlexMatchMode</code> is set to
            <code>STANDALONE</code>.</p>")
  @as("GameSessionQueueArns")
  gameSessionQueueArns: option<queueArnsList>,
  @ocaml.doc("<p>A descriptive label that is associated with matchmaking configuration.</p>")
  @as("Description")
  description: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift matchmaking configuration resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::matchmakingconfiguration/<matchmaking configuration name></code>. In a GameLift configuration ARN, the resource ID matches the
                <i>Name</i> value.</p>")
  @as("ConfigurationArn")
  configurationArn: option<matchmakingConfigurationArn>,
  @ocaml.doc("<p>A unique identifier for the matchmaking configuration. This name is used to identify the configuration associated with a
            matchmaking request or ticket.</p>")
  @as("Name")
  name: option<matchmakingIdStringModel>,
}
type locationAttributesList = array<locationAttributes>
@ocaml.doc("<p>Configuration for a game session placement mechanism that processes requests for new
            game sessions. A queue can be used on its own or as part of a matchmaking
            solution.</p>
        <p>
            <b>Related actions</b>
         </p>
        <p>
            <a>CreateGameSessionQueue</a> | <a>DescribeGameSessionQueues</a> | <a>UpdateGameSessionQueue</a>
         </p>")
type gameSessionQueue = {
  @ocaml.doc("<p>An SNS topic ARN that is set up to receive game session placement notifications. See <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html\">
            Setting up notifications for game session placement</a>.</p>")
  @as("NotificationTarget")
  notificationTarget: option<queueSnsArnStringModel>,
  @ocaml.doc("<p>
            Information that is added to all events that are related to this game session queue.
        </p>")
  @as("CustomEventData")
  customEventData: option<queueCustomEventData>,
  @ocaml.doc("<p>Custom settings to use when prioritizing destinations and locations for game session placements. This 
            configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly 
            named will be automatically applied at the end of the prioritization process. </p>")
  @as("PriorityConfiguration")
  priorityConfiguration: option<priorityConfiguration>,
  @ocaml.doc("<p>A list of locations where a queue is allowed to place new game sessions. Locations 
            are specified in the form of AWS Region codes, such as <code>us-west-2</code>. If this parameter is 
            not set, game sessions can be placed in any queue location. </p>")
  @as("FilterConfiguration")
  filterConfiguration: option<filterConfiguration>,
  @ocaml.doc("<p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue. 
    Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference.</p>")
  @as("Destinations")
  destinations: option<gameSessionQueueDestinationList>,
  @ocaml.doc("<p>A set of policies that act as a sliding cap on player latency. FleetIQ works to
            deliver low latency for most players in a game session. These policies ensure that no
            individual player can be placed into a game with unreasonably high latency. Use multiple
            policies to gradually relax latency requirements a step at a time. Multiple policies are applied based on their
            maximum allowed latency, starting with the lowest value. </p>")
  @as("PlayerLatencyPolicies")
  playerLatencyPolicies: option<playerLatencyPolicyList>,
  @ocaml.doc(
    "<p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>"
  )
  @as("TimeoutInSeconds")
  timeoutInSeconds: option<wholeNumber>,
  @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>.   In a GameLift game session queue ARN, the resource ID matches the
                <i>Name</i> value.</p>")
  @as("GameSessionQueueArn")
  gameSessionQueueArn: option<gameSessionQueueArn>,
  @ocaml.doc(
    "<p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>"
  )
  @as("Name")
  name: option<gameSessionQueueName>,
}
@ocaml.doc("<p>Object that describes a <a>StartGameSessionPlacement</a> request. This
        object includes the full details of the original request plus the current status and
        start/end time stamps.</p>
         <p>Game session placement-related operations include:</p>
         <ul>
            <li>
               <p>
                  <a>StartGameSessionPlacement</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribeGameSessionPlacement</a>
               </p>
            </li>
            <li>
               <p>
                  <a>StopGameSessionPlacement</a>
               </p>
            </li>
         </ul>")
type gameSessionPlacement = {
  @ocaml.doc("<p>Information on the matchmaking process for this game. Data is in JSON syntax,
        formatted as a string. It identifies the matchmaking configuration used to create the
        match, and contains data on all players assigned to the match, including player
        attributes and team assignments. For more details on matchmaker data, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data\">Match
            Data</a>.</p>")
  @as("MatchmakerData")
  matchmakerData: option<matchmakerData>,
  @ocaml.doc("<p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>).</p>")
  @as("GameSessionData")
  gameSessionData: option<largeGameSessionData>,
  @ocaml.doc("<p>A collection of information on player sessions created in response to the game
        session placement request. These player sessions are created only once a new game
        session is successfully placed (placement status is <code>FULFILLED</code>). This
        information includes the player ID (as provided in the placement request) and the
        corresponding player session ID. Retrieve full player sessions by calling <a>DescribePlayerSessions</a> with the player session ID.</p>")
  @as("PlacedPlayerSessions")
  placedPlayerSessions: option<placedPlayerSessionList>,
  @ocaml.doc("<p>The port number for the game session. To connect to a GameLift game server, an app needs both the IP address and port number. This value is set once the new game session is placed (placement status is
        <code>FULFILLED</code>).</p>")
  @as("Port")
  port: option<portNumber>,
  @ocaml.doc("<p>The DNS identifier assigned to the instance that is running the game session. Values have
            the following format:</p> 
         <ul>
            <li>
               <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
            </li>
            <li>
               <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
            <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses\">Amazon EC2 Instance IP Addressing</a>.)</p>
            </li>
         </ul> 
            <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>")
  @as("DnsName")
  dnsName: option<dnsName>,
  @ocaml.doc("<p>The IP address of the game session. To connect to a GameLift game server, an app needs both the IP address and port number. This value is set once the new game session is placed (placement status is
        <code>FULFILLED</code>). </p>")
  @as("IpAddress")
  ipAddress: option<ipAddress>,
  @ocaml.doc("<p>Time stamp indicating when this request was completed, canceled, or timed
        out.</p>")
  @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc(
    "<p>Time stamp indicating when this request was placed in the queue. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("StartTime")
  startTime: option<timestamp_>,
  @ocaml.doc(
    "<p>A set of values, expressed in milliseconds, that indicates the amount of latency that a player experiences when connected to AWS Regions.</p>"
  )
  @as("PlayerLatencies")
  playerLatencies: option<playerLatencyList>,
  @ocaml.doc("<p>Name of the Region where the game session created by this placement request is
        running. This value is set once the new game session is placed (placement status is
        <code>FULFILLED</code>).</p>")
  @as("GameSessionRegion")
  gameSessionRegion: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>Identifier for the game session created by this placement request. This value is
        set once the new game session is placed (placement status is <code>FULFILLED</code>).
        This identifier is unique across all Regions. You can use this value as a
        <code>GameSessionId</code> value as needed.</p>")
  @as("GameSessionArn")
  gameSessionArn: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>A unique identifier for the game session. This value is set once the new game session is placed (placement status is
        <code>FULFILLED</code>).</p>")
  @as("GameSessionId")
  gameSessionId: option<nonZeroAndMaxString>,
  @ocaml.doc(
    "<p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>"
  )
  @as("GameSessionName")
  gameSessionName: option<nonZeroAndMaxString>,
  @ocaml.doc(
    "<p>The maximum number of players that can be connected simultaneously to the game session.</p>"
  )
  @as("MaximumPlayerSessionCount")
  maximumPlayerSessionCount: option<wholeNumber>,
  @ocaml.doc("<p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>).</p>")
  @as("GameProperties")
  gameProperties: option<gamePropertyList>,
  @ocaml.doc("<p>Current status of the game session placement request.</p>
         <ul>
            <li>
               <p>
                  <b>PENDING</b> -- The placement request is currently
                in the queue waiting to be processed.</p>
            </li>
            <li>
               <p>
                  <b>FULFILLED</b> -- A new game session and player
                sessions (if requested) have been successfully created. Values for
                <i>GameSessionArn</i> and
                <i>GameSessionRegion</i> are available. </p>
            </li>
            <li>
               <p>
                  <b>CANCELLED</b> -- The placement request was canceled
                with a call to <a>StopGameSessionPlacement</a>.</p>
            </li>
            <li>
               <p>
                  <b>TIMED_OUT</b> -- A new game session was not
                successfully created before the time limit expired. You can resubmit the
                placement request as needed.</p>
            </li>
            <li>
               <p>
                  <b>FAILED</b> -- GameLift is not able to complete the 
            process of placing the game session. Common reasons are the 
            game session terminated before the placement process was completed, or an unexpected
            internal error.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<gameSessionPlacementState>,
  @ocaml.doc(
    "<p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>"
  )
  @as("GameSessionQueueName")
  gameSessionQueueName: option<gameSessionQueueName>,
  @ocaml.doc("<p>A unique identifier for a game session placement.</p>") @as("PlacementId")
  placementId: option<idStringModel>,
}
@ocaml.doc("<p>Connection information for a new game session that is created in response to a <a>StartMatchmaking</a> request. Once a match is made, the FlexMatch engine
            creates a new game session for it. This information, including the game session endpoint
            and player sessions for each player in the original matchmaking request, is added to the
            <a>MatchmakingTicket</a>, which can be retrieved by calling <a>DescribeMatchmaking</a>.</p>")
type gameSessionConnectionInfo = {
  @ocaml.doc("<p>A collection of player session IDs, one for each player ID that was included in the
            original matchmaking request. </p>")
  @as("MatchedPlayerSessions")
  matchedPlayerSessions: option<matchedPlayerSessionList>,
  @ocaml.doc(
    "<p>The port number for the game session. To connect to a GameLift game server, an app needs both the IP address and port number.</p>"
  )
  @as("Port")
  port: option<positiveInteger>,
  @ocaml.doc("<p>The DNS identifier assigned to the instance that is running the game session. Values have
            the following format:</p> 
         <ul>
            <li>
               <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
            </li>
            <li>
               <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
            <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses\">Amazon EC2 Instance IP Addressing</a>.)</p>
            </li>
         </ul> 
            <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>")
  @as("DnsName")
  dnsName: option<dnsName>,
  @ocaml.doc(
    "<p>The IP address of the game session. To connect to a GameLift game server, an app needs both the IP address and port number.</p>"
  )
  @as("IpAddress")
  ipAddress: option<stringModel>,
  @ocaml.doc("<p>A unique identifier for the game session. Use the game session ID.</p>")
  @as("GameSessionArn")
  gameSessionArn: option<arnStringModel>,
}
@ocaml.doc("<p>Properties describing a game session.</p>
        <p>A game session in ACTIVE status can host players. When a game session ends, its
            status is set to <code>TERMINATED</code>. </p>
        <p>Once the session ends, the game session object is retained for 30 days. This means
            you can reuse idempotency token values after this time. Game session logs are retained
            for 14 days.</p>
        <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>CreateGameSession</a> | 
                    <a>DescribeGameSessions</a> | 
                    <a>DescribeGameSessionDetails</a> | 
                    <a>SearchGameSessions</a> | 
                    <a>UpdateGameSession</a> | 
                    <a>GetGameSessionLogUrl</a> | 
                    <a>StartGameSessionPlacement</a> | 
                    <a>DescribeGameSessionPlacement</a> | 
                    <a>StopGameSessionPlacement</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a>
         </p>")
type gameSession = {
  @ocaml.doc("<p>The fleet location where the game session is running. This value might specify the
            fleet's home Region or a remote location. Location is expressed as an AWS Region code
            such as <code>us-west-2</code>. </p>")
  @as("Location")
  location: option<locationStringModel>,
  @ocaml.doc("<p>Information about the matchmaking process that was used to create the game session.
            It is in JSON syntax, formatted as a string. In addition the matchmaking configuration
            used, it contains data on all players assigned to the match, including player attributes
            and team assignments. For more details on matchmaker data, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data\">Match
                Data</a>. Matchmaker data is useful when requesting match backfills, and is
            updated whenever new players are added during a successful backfill (see <a>StartMatchBackfill</a>). </p>")
  @as("MatchmakerData")
  matchmakerData: option<matchmakerData>,
  @ocaml.doc("<p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session.</p>")
  @as("GameSessionData")
  gameSessionData: option<largeGameSessionData>,
  @ocaml.doc("<p>A unique identifier for a player. This ID is used to enforce a resource protection policy (if one
            exists), that limits the number of game sessions a player can create.</p>")
  @as("CreatorId")
  creatorId: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>Indicates whether or not the game session is accepting new players.</p>")
  @as("PlayerSessionCreationPolicy")
  playerSessionCreationPolicy: option<playerSessionCreationPolicy>,
  @ocaml.doc(
    "<p>The port number for the game session. To connect to a GameLift game server, an app needs both the IP address and port number.</p>"
  )
  @as("Port")
  port: option<portNumber>,
  @ocaml.doc("<p>The DNS identifier assigned to the instance that is running the game session. Values have
            the following format:</p> 
         <ul>
            <li>
               <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
            </li>
            <li>
               <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
            <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses\">Amazon EC2 Instance IP Addressing</a>.)</p>
            </li>
         </ul> 
            <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>")
  @as("DnsName")
  dnsName: option<dnsName>,
  @ocaml.doc(
    "<p>The IP address of the game session. To connect to a GameLift game server, an app needs both the IP address and port number.</p>"
  )
  @as("IpAddress")
  ipAddress: option<ipAddress>,
  @ocaml.doc("<p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session. You can search for active game sessions based on this custom data
            with <a>SearchGameSessions</a>.</p>")
  @as("GameProperties")
  gameProperties: option<gamePropertyList>,
  @ocaml.doc("<p>Provides additional information about game session status. <code>INTERRUPTED</code>
            indicates that the game session was hosted on a spot instance that was reclaimed,
            causing the active game session to be terminated.</p>")
  @as("StatusReason")
  statusReason: option<gameSessionStatusReason>,
  @ocaml.doc("<p>Current status of the game session. A game session must have an <code>ACTIVE</code>
            status to have player sessions.</p>")
  @as("Status")
  status: option<gameSessionStatus>,
  @ocaml.doc(
    "<p>The maximum number of players that can be connected simultaneously to the game session.</p>"
  )
  @as("MaximumPlayerSessionCount")
  maximumPlayerSessionCount: option<wholeNumber>,
  @ocaml.doc("<p>Number of players currently in the game session.</p>")
  @as("CurrentPlayerSessionCount")
  currentPlayerSessionCount: option<wholeNumber>,
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("TerminationTime")
  terminationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>
            The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) associated with the GameLift fleet that this game session is running on. 
        </p>")
  @as("FleetArn")
  fleetArn: option<fleetArn>,
  @ocaml.doc("<p>A unique identifier for the fleet that the game session is running on.</p>")
  @as("FleetId")
  fleetId: option<fleetId>,
  @ocaml.doc(
    "<p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>"
  )
  @as("Name")
  name: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>A unique identifier for the game session. A game session ARN has the following format: 
    <code>arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string or idempotency token></code>.</p>")
  @as("GameSessionId")
  gameSessionId: option<nonZeroAndMaxString>,
}
@ocaml.doc("<p>
            <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
         </p>
        <p>Properties that describe a game server group resource. A game server group manages
            certain properties related to a corresponding EC2 Auto Scaling group. </p>
        <p>A game server group is created by a successful call to
                <code>CreateGameServerGroup</code> and deleted by calling
                <code>DeleteGameServerGroup</code>. Game server group activity can be temporarily
            suspended and resumed by calling <code>SuspendGameServerGroup</code> and
                <code>ResumeGameServerGroup</code>, respectively. </p>
         <p>
            <b>Related actions</b>
         </p>
                    <p>
            <a>CreateGameServerGroup</a> | 
                    <a>ListGameServerGroups</a> | 
                    <a>DescribeGameServerGroup</a> | 
                    <a>UpdateGameServerGroup</a> | 
                    <a>DeleteGameServerGroup</a> | 
                    <a>ResumeGameServerGroup</a> | 
                    <a>SuspendGameServerGroup</a> | 
                    <a>DescribeGameServerInstances</a> | 
                    <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html\">All APIs by task</a>
         </p>")
type gameServerGroup = {
  @ocaml.doc("<p>A timestamp that indicates when this game server group was last updated.</p>")
  @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc(
    "<p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>A list of activities that are currently suspended for this game server group.
        If this property is empty, all activities are occurring.</p>")
  @as("SuspendedActions")
  suspendedActions: option<gameServerGroupActions>,
  @ocaml.doc("<p>Additional information about the current game server group status. This information
            might provide additional insight on groups that are in <code>ERROR</code> status.</p>")
  @as("StatusReason")
  statusReason: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>The current status of the game server group. Possible statuses include:</p>
        <ul>
            <li>
                <p>
                    <code>NEW</code> - GameLift FleetIQ has validated the <code>CreateGameServerGroup()</code>
                    request. </p>
            </li>
            <li>
                <p>
                  <code>ACTIVATING</code> - GameLift FleetIQ is setting up a game server group, which
                    includes creating an Auto Scaling group in your AWS account. </p>
            </li>
            <li>
                <p>
                  <code>ACTIVE</code> - The game server group has been successfully created. </p>
            </li>
            <li>
                <p>
                  <code>DELETE_SCHEDULED</code> - A request to delete the game server group has
                    been received. </p>
            </li>
            <li>
                <p>
                  <code>DELETING</code> - GameLift FleetIQ has received a valid
                        <code>DeleteGameServerGroup()</code> request and is processing it. GameLift FleetIQ
                    must first complete and release hosts before it deletes the Auto Scaling group
                    and the game server group. </p>
            </li>
            <li>
                <p>
                  <code>DELETED</code> - The game server group has been successfully deleted. </p>
            </li>
            <li>
               <p>
                  <code>ERROR</code> - The asynchronous processes of activating or deleting a game server group
                    has failed, resulting in an error state.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<gameServerGroupStatus>,
  @ocaml.doc("<p>A generated unique ID for the EC2 Auto Scaling group that is associated with this
            game server group.</p>")
  @as("AutoScalingGroupArn")
  autoScalingGroupArn: option<autoScalingGroupArn>,
  @ocaml.doc("<p>A flag that indicates whether instances in the game server group are protected 
            from early termination. Unprotected instances that have active game servers running might 
            be terminated during a scale-down event, causing players to be dropped from the game. 
            Protected instances cannot be terminated while there are active game servers running except 
            in the event of a forced game server group deletion (see ). An exception to this is with Spot 
            Instances, which can be terminated by AWS regardless of protection status. </p>")
  @as("GameServerProtectionPolicy")
  gameServerProtectionPolicy: option<gameServerProtectionPolicy>,
  @ocaml.doc("<p>Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances in the
            game server group. Method options include the following:</p>
        <ul>
            <li>
               <p>
                  <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot
                    Instances are unavailable or not viable for game hosting, the game server group
                    provides no hosting capacity until Spot Instances can again be used. Until then,
                    no new instances are started, and the existing nonviable Spot Instances are
                    terminated (after current gameplay ends) and are not replaced.</p>
            </li>
            <li>
                <p>
                  <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in
                    the game server group. If Spot Instances are unavailable, the game server group
                    continues to provide hosting capacity by falling back to On-Demand Instances.
                    Existing nonviable Spot Instances are terminated (after current gameplay ends)
                    and are replaced with new On-Demand Instances.</p>
            </li>
            <li>
                <p>
                  <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game
                    server group. No Spot Instances are used, even when available, while this
                    balancing strategy is in force.</p>
            </li>
         </ul>")
  @as("BalancingStrategy")
  balancingStrategy: option<balancingStrategy>,
  @ocaml.doc("<p>The set of EC2 instance types that GameLift FleetIQ can use when balancing and automatically
            scaling instances in the corresponding Auto Scaling group. </p>")
  @as("InstanceDefinitions")
  instanceDefinitions: option<instanceDefinitions>,
  @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) for an IAM role that
            allows Amazon GameLift to access your EC2 Auto Scaling groups.</p>")
  @as("RoleArn")
  roleArn: option<iamRoleArn>,
  @ocaml.doc("<p>A generated unique ID for the game server group.</p>") @as("GameServerGroupArn")
  gameServerGroupArn: option<gameServerGroupArn>,
  @ocaml.doc("<p>A developer-defined identifier for the game server group. The name is unique for each
            Region in each AWS account.</p>")
  @as("GameServerGroupName")
  gameServerGroupName: option<gameServerGroupName>,
}
type fleetCapacityList = array<fleetCapacity>
type fleetAttributesList = array<fleetAttributes>
type aliasList = array<alias>
@ocaml.doc("<p>Represents a player in matchmaking. When starting a matchmaking request, a player
            has a player ID, attributes, and may have latency data. Team information is added after
            a match has been successfully completed.</p>")
type player = {
  @ocaml.doc("<p>A set of values, expressed in milliseconds, that indicates the amount of latency that a player experiences when connected to AWS Regions. If this property is present, FlexMatch considers placing the match only
            in Regions for which latency is reported. </p>
        <p>If a matchmaker has a rule that evaluates player latency, players must report
            latency in order to be matched. If no latency is reported in this scenario, FlexMatch
            assumes that no Regions are available to the player and the ticket is not matchable.
        </p>")
  @as("LatencyInMs")
  latencyInMs: option<latencyMap>,
  @ocaml.doc("<p>Name of the team that the player is assigned to in a match. Team names are defined
            in a matchmaking rule set.</p>")
  @as("Team")
  team: option<nonZeroAndMaxString>,
  @ocaml.doc("<p>A collection of key:value pairs containing player information for use in matchmaking.
            Player attribute keys must match the <i>playerAttributes</i> used in a
            matchmaking rule set. Example: <code>\"PlayerAttributes\": {\"skill\": {\"N\": \"23\"},
                \"gameMode\": {\"S\": \"deathmatch\"}}</code>.</p>")
  @as("PlayerAttributes")
  playerAttributes: option<playerAttributeMap>,
  @ocaml.doc("<p>A unique identifier for a player</p>") @as("PlayerId")
  playerId: option<nonZeroAndMaxString>,
}
type matchmakingConfigurationList = array<matchmakingConfiguration>
type gameSessionQueueList = array<gameSessionQueue>
type gameSessionList = array<gameSession>
@ocaml.doc("<p>A game session's properties plus the protection policy currently in
            force.</p>")
type gameSessionDetail = {
  @ocaml.doc("<p>Current status of protection for the game session.</p>
        <ul>
            <li>
                <p>
                    <b>NoProtection</b> -- The game session can be
                    terminated during a scale-down event.</p>
            </li>
            <li>
                <p>
                    <b>FullProtection</b> -- If the game session is in an
                    <code>ACTIVE</code> status, it cannot be terminated during a scale-down
                    event.</p>
            </li>
         </ul>")
  @as("ProtectionPolicy")
  protectionPolicy: option<protectionPolicy>,
  @ocaml.doc("<p>Object that describes a game session.</p>") @as("GameSession")
  gameSession: option<gameSession>,
}
type gameServerGroups = array<gameServerGroup>
type playerList = array<player>
type gameSessionDetailList = array<gameSessionDetail>
@ocaml.doc("<p>Ticket generated to track the progress of a matchmaking request. Each ticket is
            uniquely identified by a ticket ID, supplied by the requester, when creating a
            matchmaking request with <a>StartMatchmaking</a>. Tickets can be retrieved by
            calling <a>DescribeMatchmaking</a> with the ticket ID.</p>")
type matchmakingTicket = {
  @ocaml.doc("<p>Average amount of time (in seconds) that players are currently waiting for a match.
            If there is not enough recent data, this property may be empty.</p>")
  @as("EstimatedWaitTime")
  estimatedWaitTime: option<wholeNumber>,
  @ocaml.doc("<p>Identifier and connection information of the game session created for the match. This
            information is added to the ticket only after the matchmaking request has been
            successfully completed. This parameter is not set when FlexMatch is being used without
            GameLift hosting.</p>")
  @as("GameSessionConnectionInfo")
  gameSessionConnectionInfo: option<gameSessionConnectionInfo>,
  @ocaml.doc("<p>A set of <code>Player</code> objects, each representing a player to find matches
            for. Players are identified by a unique player ID and may include latency data for use
            during matchmaking. If the ticket is in status <code>COMPLETED</code>, the
            <code>Player</code> objects include the team the players were assigned to in the
            resulting match.</p>")
  @as("Players")
  players: option<playerList>,
  @ocaml.doc("<p>Time stamp indicating when this matchmaking request stopped being processed due to
            success, failure, or cancellation. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>")
  @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc(
    "<p>Time stamp indicating when this matchmaking request was received. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
  )
  @as("StartTime")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>Additional information about the current status.</p>") @as("StatusMessage")
  statusMessage: option<stringModel>,
  @ocaml.doc("<p>Code to explain the current status. For example, a status reason may indicate when
            a ticket has returned to <code>SEARCHING</code> status after a proposed match fails to
            receive player acceptances.</p>")
  @as("StatusReason")
  statusReason: option<stringModel>,
  @ocaml.doc("<p>Current status of the matchmaking request.</p>
        <ul>
            <li>
                <p>
                    <b>QUEUED</b> -- The matchmaking request has been
                    received and is currently waiting to be processed.</p>
            </li>
            <li>
                <p>
                    <b>SEARCHING</b> -- The matchmaking request is
                    currently being processed. </p>
            </li>
            <li>
                <p>
                    <b>REQUIRES_ACCEPTANCE</b> -- A match has been
                    proposed and the players must accept the match (see <a>AcceptMatch</a>). This status is used only with requests that use a matchmaking configuration
                    with a player acceptance requirement.</p>
            </li>
            <li>
                <p>
                    <b>PLACING</b> -- The FlexMatch engine has matched
                    players and is in the process of placing a new game session for the
                    match.</p>
            </li>
            <li>
                <p>
                    <b>COMPLETED</b> -- Players have been matched and a
                    game session is ready to host the players. A ticket in this state contains the
                    necessary connection information for players.</p>
            </li>
            <li>
                <p>
                    <b>FAILED</b> -- The matchmaking request was not
                    completed.</p>
            </li>
            <li>
                <p>
                    <b>CANCELLED</b> -- The matchmaking request was
                    canceled. This may be the result of a call to <a>StopMatchmaking</a>
                    or a proposed match that one or more players failed to accept.</p>
            </li>
            <li>
                <p>
                    <b>TIMED_OUT</b> -- The matchmaking request was not
                    successful within the duration specified in the matchmaking configuration.
                </p>
            </li>
         </ul>
        <note>
            <p>Matchmaking requests that fail to successfully complete (statuses FAILED,
                CANCELLED, TIMED_OUT) can be resubmitted as new requests with new ticket
                IDs.</p>
        </note>")
  @as("Status")
  status: option<matchmakingConfigurationStatus>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) associated with the GameLift matchmaking configuration resource that is used with this ticket.</p>"
  )
  @as("ConfigurationArn")
  configurationArn: option<matchmakingConfigurationArn>,
  @ocaml.doc("<p>Name of the <a>MatchmakingConfiguration</a> that is used with this
            ticket. Matchmaking configurations determine how players are grouped into a match and
            how a new game session is created for the match.</p>")
  @as("ConfigurationName")
  configurationName: option<matchmakingIdStringModel>,
  @ocaml.doc("<p>A unique identifier for a matchmaking ticket.</p>") @as("TicketId")
  ticketId: option<matchmakingIdStringModel>,
}
type matchmakingTicketList = array<matchmakingTicket>
@ocaml.doc("<fullname>Amazon GameLift Service</fullname>
        <p>GameLift provides solutions for hosting session-based multiplayer game servers in the
            cloud, including tools for deploying, operating, and scaling game servers. Built on AWS
            global computing infrastructure, GameLift helps you deliver high-performance,
            high-reliability, low-cost game servers while dynamically scaling your resource usage to
            meet player demand. </p>
        <p>
            <b>About GameLift solutions</b>
         </p>
        <p>Get more information on these GameLift solutions in the <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/\">GameLift Developer Guide</a>.</p>        
        <ul>
            <li>
               <p>GameLift managed hosting -- GameLift offers a fully managed service to set up and maintain
                    computing machines for hosting, manage game session and player session life
                    cycle, and handle security, storage, and performance tracking. You can use
                    automatic scaling tools to balance player demand and hosting costs, configure
                    your game session management to minimize player latency, and add FlexMatch for
                    matchmaking.</p>
            </li>
            <li>
               <p>Managed hosting with Realtime Servers -- With GameLift Realtime Servers, you can quickly configure and set up
                    ready-to-go game servers for your game. Realtime Servers provides a game server framework
                    with core GameLift infrastructure already built in. Then use the full range of
                    GameLift managed hosting features, including FlexMatch, for your game.</p>
            </li>
            <li>
               <p>GameLift FleetIQ -- Use GameLift FleetIQ as a standalone service while hosting your games using EC2 instances and
                    Auto Scaling groups. GameLift FleetIQ provides optimizations for game hosting, including
                    boosting the viability of low-cost Spot Instances gaming. For a complete
                    solution, pair the GameLift FleetIQ and FlexMatch standalone services.</p>
            </li>
            <li>
                <p>GameLift FlexMatch -- Add matchmaking to your game hosting solution. FlexMatch is a
                    customizable matchmaking service for multiplayer games. Use FlexMatch as
                    integrated with GameLift managed hosting or incorporate FlexMatch as a standalone
                    service into your own hosting solution.</p>
            </li>
         </ul>
        <p>
            <b>About this API Reference</b>
         </p>
        <p>This reference guide describes the low-level service API for Amazon GameLift. With each topic
            in this guide, you can find links to language-specific SDK guides and the AWS CLI
            reference. Useful links:</p>
        <ul>
            <li>
                <p>
                  <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html\">GameLift API
                    operations listed by tasks</a>
               </p>
            </li>
            <li>
                <p>
                  <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-components.html\"> GameLift tools
                    and resources</a>
               </p>
            </li>
         </ul>")
module ValidateMatchmakingRuleSet = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A collection of matchmaking rules to validate, formatted as a JSON string.</p>")
    @as("RuleSetBody")
    ruleSetBody: ruleSetBody,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>A response indicating whether the rule set is valid.</p>") @as("Valid")
    valid: option<booleanModel>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "ValidateMatchmakingRuleSetCommand"
  let make = (~ruleSetBody, ()) => new({ruleSetBody: ruleSetBody})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFleetCapacity = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of a remote location to update fleet capacity settings for, in the form of an
            AWS Region code such as <code>us-west-2</code>.</p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc("<p>The maximum number of instances that are allowed in the specified fleet location. If
            this parameter is not set, the default is 1.</p>")
    @as("MaxSize")
    maxSize: option<wholeNumber>,
    @ocaml.doc("<p>The minimum number of instances that are allowed in the specified fleet location. If
            this parameter is not set, the default is 0.</p>")
    @as("MinSize")
    minSize: option<wholeNumber>,
    @ocaml.doc("<p>The number of EC2 instances you want to maintain in the specified fleet location.
            This value must fall between the minimum and maximum size limits.</p>")
    @as("DesiredInstances")
    desiredInstances: option<wholeNumber>,
    @ocaml.doc("<p>A unique identifier for the fleet to update capacity settings for. You can use either the fleet ID or ARN
            value.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The remote location being updated, expressed as an AWS Region code, 
            such as <code>us-west-2</code>.</p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. </p>"
    )
    @as("FleetArn")
    fleetArn: option<fleetArn>,
    @ocaml.doc("<p>A unique identifier for the fleet that was updated.</p>") @as("FleetId")
    fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UpdateFleetCapacityCommand"
  let make = (~fleetId, ~location=?, ~maxSize=?, ~minSize=?, ~desiredInstances=?, ()) =>
    new({
      location: location,
      maxSize: maxSize,
      minSize: minSize,
      desiredInstances: desiredInstances,
      fleetId: fleetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopMatchmaking = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for a matchmaking ticket.</p>") @as("TicketId")
    ticketId: matchmakingIdStringModel,
  }

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "StopMatchmakingCommand"
  let make = (~ticketId, ()) => new({ticketId: ticketId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResolveAlias = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>The unique identifier of the alias that you want to retrieve a fleet ID for. You can
            use either the alias ID or ARN value.</p>")
    @as("AliasId")
    aliasId: aliasIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>
           The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) associated with the GameLift fleet resource that this alias points to. 
        </p>")
    @as("FleetArn")
    fleetArn: option<fleetArn>,
    @ocaml.doc("<p>The fleet identifier that the alias is pointing to.</p>") @as("FleetId")
    fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ResolveAliasCommand"
  let make = (~aliasId, ()) => new({aliasId: aliasId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGameSessionLogUrl = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for the game session to get logs for. </p>")
    @as("GameSessionId")
    gameSessionId: arnStringModel,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Location of the requested game session logs, available for download. This URL is
            valid for 15 minutes, after which S3 will reject any download request using this URL.
            You can request a new URL any time within the 14-day period that the logs are
            retained.</p>")
    @as("PreSignedUrl")
    preSignedUrl: option<nonZeroAndMaxString>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "GetGameSessionLogUrlCommand"
  let make = (~gameSessionId, ()) => new({gameSessionId: gameSessionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterGameServer = {
  type t
  type request = {
    @ocaml.doc("<p>A custom string that uniquely identifies the game server to deregister.</p>")
    @as("GameServerId")
    gameServerId: gameServerId,
    @ocaml.doc("<p>A unique identifier for the game server group where the game server is running. 
            Use either the <a>GameServerGroup</a> name or ARN value.</p>")
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupNameOrArn,
  }

  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeregisterGameServerCommand"
  let make = (~gameServerId, ~gameServerGroupName, ()) =>
    new({gameServerId: gameServerId, gameServerGroupName: gameServerGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVpcPeeringConnection = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for a VPC peering connection. This value is included in the <a>VpcPeeringConnection</a> object, which can be retrieved by calling <a>DescribeVpcPeeringConnections</a>.</p>"
    )
    @as("VpcPeeringConnectionId")
    vpcPeeringConnectionId: nonZeroAndMaxString,
    @ocaml.doc("<p>A unique identifier for the fleet. This fleet specified must match the fleet referenced in the VPC peering
            connection record. You can use either the fleet ID or ARN value.</p>")
    @as("FleetId")
    fleetId: fleetId,
  }

  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteVpcPeeringConnectionCommand"
  let make = (~vpcPeeringConnectionId, ~fleetId, ()) =>
    new({vpcPeeringConnectionId: vpcPeeringConnectionId, fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVpcPeeringAuthorization = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
            VPC must be in the same Region as your fleet. To look up a VPC ID, use the 
            <a href=\"https://console.aws.amazon.com/vpc/\">VPC Dashboard</a> in the AWS Management Console. 
            Learn more about VPC peering in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with GameLift Fleets</a>.</p>")
    @as("PeerVpcId")
    peerVpcId: nonZeroAndMaxString,
    @ocaml.doc("<p>A unique identifier for the AWS account that you use to manage your GameLift fleet. 
            You can find your Account ID in the AWS Management Console under account settings.</p>")
    @as("GameLiftAwsAccountId")
    gameLiftAwsAccountId: nonZeroAndMaxString,
  }

  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteVpcPeeringAuthorizationCommand"
  let make = (~peerVpcId, ~gameLiftAwsAccountId, ()) =>
    new({peerVpcId: peerVpcId, gameLiftAwsAccountId: gameLiftAwsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteScript = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for the Realtime script to delete. You can use either the script ID or ARN value.</p>"
    )
    @as("ScriptId")
    scriptId: scriptIdOrArn,
  }

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DeleteScriptCommand"
  let make = (~scriptId, ()) => new({scriptId: scriptId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteScalingPolicy = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for the fleet to be deleted. You can use either the fleet ID or ARN value.</p>"
    )
    @as("FleetId")
    fleetId: fleetIdOrArn,
    @ocaml.doc(
      "<p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique.</p>"
    )
    @as("Name")
    name: nonZeroAndMaxString,
  }

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DeleteScalingPolicyCommand"
  let make = (~fleetId, ~name, ()) => new({fleetId: fleetId, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMatchmakingRuleSet = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for the matchmaking rule set to be deleted. (Note: The rule set name is different from the optional \"name\"
            field in the rule set body.)  You can use either the rule set name or ARN value.</p>")
    @as("Name")
    name: matchmakingRuleSetName,
  }

  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteMatchmakingRuleSetCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMatchmakingConfiguration = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for the matchmaking configuration.  You can use either the configuration name or ARN value.</p>"
    )
    @as("Name")
    name: matchmakingConfigurationName,
  }

  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteMatchmakingConfigurationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteGameSessionQueue = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation. </p>")
  type request = {
    @ocaml.doc(
      "<p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. </p>"
    )
    @as("Name")
    name: gameSessionQueueNameOrArn,
  }

  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteGameSessionQueueCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFleet = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for the fleet to be deleted. You can use either the fleet ID or ARN value.</p>"
    )
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DeleteFleetCommand"
  let make = (~fleetId, ()) => new({fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBuild = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for the build to delete. You can use either the build ID or ARN value. </p>"
    )
    @as("BuildId")
    buildId: buildIdOrArn,
  }

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DeleteBuildCommand"
  let make = (~buildId, ()) => new({buildId: buildId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAlias = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier of the alias that you want to delete. You can use either the alias
            ID or ARN value.</p>")
    @as("AliasId")
    aliasId: aliasIdOrArn,
  }

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DeleteAliasCommand"
  let make = (~aliasId, ()) => new({aliasId: aliasId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateVpcPeeringConnection = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
            VPC must be in the same Region as your fleet. To look up a VPC ID, use the 
            <a href=\"https://console.aws.amazon.com/vpc/\">VPC Dashboard</a> in the AWS Management Console. 
            Learn more about VPC peering in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with GameLift Fleets</a>.</p>")
    @as("PeerVpcId")
    peerVpcId: nonZeroAndMaxString,
    @ocaml.doc("<p>A unique identifier for the AWS account with the VPC that you want to peer your
            Amazon GameLift fleet with. You can find your Account ID in the AWS Management Console under account
            settings.</p>")
    @as("PeerVpcAwsAccountId")
    peerVpcAwsAccountId: nonZeroAndMaxString,
    @ocaml.doc("<p>A unique identifier for the fleet. You can use either the fleet ID or ARN value. This tells Amazon GameLift which GameLift
            VPC to peer with. </p>")
    @as("FleetId")
    fleetId: fleetId,
  }

  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateVpcPeeringConnectionCommand"
  let make = (~peerVpcId, ~peerVpcAwsAccountId, ~fleetId, ()) =>
    new({peerVpcId: peerVpcId, peerVpcAwsAccountId: peerVpcAwsAccountId, fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateGameServer = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates health status of the game server. A request that includes this parameter
            updates the game server's <i>LastHealthCheckTime</i> timestamp. </p>")
    @as("HealthCheck")
    healthCheck: option<gameServerHealthCheck>,
    @ocaml.doc("<p>Indicates whether the game server is available or is currently hosting
            gameplay.</p>")
    @as("UtilizationStatus")
    utilizationStatus: option<gameServerUtilizationStatus>,
    @ocaml.doc("<p>A set of custom game server properties, formatted as a single string value. This data 
            is passed to a game client or service when it requests information on game servers using
                <a>ListGameServers</a> or <a>ClaimGameServer</a>. </p>")
    @as("GameServerData")
    gameServerData: option<gameServerData>,
    @ocaml.doc("<p>A custom string that uniquely identifies the game server to update.</p>")
    @as("GameServerId")
    gameServerId: gameServerId,
    @ocaml.doc("<p>A unique identifier for the game server group where the game server is running. 
            Use either the <a>GameServerGroup</a> name or ARN value.</p>")
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @ocaml.doc("<p>Object that describes the newly updated game server.</p>") @as("GameServer")
    gameServer: option<gameServer>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UpdateGameServerCommand"
  let make = (
    ~gameServerId,
    ~gameServerGroupName,
    ~healthCheck=?,
    ~utilizationStatus=?,
    ~gameServerData=?,
    (),
  ) =>
    new({
      healthCheck: healthCheck,
      utilizationStatus: utilizationStatus,
      gameServerData: gameServerData,
      gameServerId: gameServerId,
      gameServerGroupName: gameServerGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFleetAttributes = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of a metric group to add this fleet to. Use a metric group in Amazon
            CloudWatch to aggregate the metrics from multiple fleets. Provide an existing metric
            group name, or create a new metric group by providing a new name. A fleet can only be in
            one metric group at a time.</p>")
    @as("MetricGroups")
    metricGroups: option<metricGroupList>,
    @ocaml.doc("<p>Policy settings that limit the number of game sessions an individual player can create
            over a span of time. </p>")
    @as("ResourceCreationLimitPolicy")
    resourceCreationLimitPolicy: option<resourceCreationLimitPolicy>,
    @ocaml.doc("<p>The game session protection policy to apply to all new instances created in this
            fleet. Instances that already exist are not affected. You can set protection for
            individual instances using <a>UpdateGameSession</a>.</p>
        <ul>
            <li>
                <p>
                    <b>NoProtection</b> -- The game session can be
                    terminated during a scale-down event.</p>
            </li>
            <li>
                <p>
                    <b>FullProtection</b> -- If the game session is in an
                    <code>ACTIVE</code> status, it cannot be terminated during a scale-down
                    event.</p>
            </li>
         </ul>")
    @as("NewGameSessionProtectionPolicy")
    newGameSessionProtectionPolicy: option<protectionPolicy>,
    @ocaml.doc("<p>A human-readable description of a fleet.</p>") @as("Description")
    description: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>"
    )
    @as("Name")
    name: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A unique identifier for the fleet to update attribute metadata for. You can use either the fleet ID or ARN
            value.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>A unique identifier for the fleet that was updated.</p>") @as("FleetId")
    fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "UpdateFleetAttributesCommand"
  let make = (
    ~fleetId,
    ~metricGroups=?,
    ~resourceCreationLimitPolicy=?,
    ~newGameSessionProtectionPolicy=?,
    ~description=?,
    ~name=?,
    (),
  ) =>
    new({
      metricGroups: metricGroups,
      resourceCreationLimitPolicy: resourceCreationLimitPolicy,
      newGameSessionProtectionPolicy: newGameSessionProtectionPolicy,
      description: description,
      name: name,
      fleetId: fleetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBuild = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>"
    )
    @as("Version")
    version: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>A descriptive label that is associated with a build. Build names do not need to be unique. </p>"
    )
    @as("Name")
    name: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>A unique identifier for the build to update. You can use either the build ID or ARN value.  </p>"
    )
    @as("BuildId")
    buildId: buildIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The updated build resource.</p>") @as("Build") build: option<build>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UpdateBuildCommand"
  let make = (~buildId, ~version=?, ~name=?, ()) =>
    new({version: version, name: name, buildId: buildId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of one or more tag keys to remove from the specified GameLift resource. An
            AWS resource can have only one tag with a specific tag key, so specifying the tag key
            identifies which tag to remove. </p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to and
            uniquely identifies the GameLift resource that you want to remove tags from. GameLift
            resource ARNs are included in the data object for the resource, which can be retrieved
            by calling a List or Describe operation for the resource type. </p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopFleetActions = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>The fleet location to stop fleet actions for. Specify a location in the form of an AWS Region code, such as
            <code>us-west-2</code>.</p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc("<p>List of actions to suspend on the fleet. </p>") @as("Actions")
    actions: fleetActionList,
    @ocaml.doc(
      "<p>A unique identifier for the fleet to stop actions on.  You can use either the fleet ID or ARN value.</p>"
    )
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>"
    )
    @as("FleetArn")
    fleetArn: option<fleetArn>,
    @ocaml.doc("<p>A unique identifier for the fleet to stop actions on.</p>") @as("FleetId")
    fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "StopFleetActionsCommand"
  let make = (~actions, ~fleetId, ~location=?, ()) =>
    new({location: location, actions: actions, fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartFleetActions = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>The fleet location to restart fleet actions for. Specify a location in the form of
            an AWS Region code, such as <code>us-west-2</code>.</p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc("<p>List of actions to restart on the fleet.</p>") @as("Actions")
    actions: fleetActionList,
    @ocaml.doc(
      "<p>A unique identifier for the fleet to restart actions on.  You can use either the fleet ID or ARN value.</p>"
    )
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>"
    )
    @as("FleetArn")
    fleetArn: option<fleetArn>,
    @ocaml.doc("<p>A unique identifier for the fleet to restart actions on.</p>") @as("FleetId")
    fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "StartFleetActionsCommand"
  let make = (~actions, ~fleetId, ~location=?, ()) =>
    new({location: location, actions: actions, fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RequestUploadCredentials = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for the build to get credentials for. You can use either the build ID or ARN value. </p>"
    )
    @as("BuildId")
    buildId: buildIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Amazon S3 path and key, identifying where the game build files are
            stored.</p>")
    @as("StorageLocation")
    storageLocation: option<s3Location>,
    @ocaml.doc("<p>AWS credentials required when uploading a game build to the storage location.
            These credentials have a limited lifespan and are valid only for the build they were
            issued for.</p>")
    @as("UploadCredentials")
    uploadCredentials: option<awsCredentials>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "RequestUploadCredentialsCommand"
  let make = (~buildId, ()) => new({buildId: buildId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterGameServer = {
  type t
  type request = {
    @ocaml.doc("<p>A set of custom game server properties, formatted as a single string value. This data 
            is passed to a game client or service when it requests information on game servers using
                <a>ListGameServers</a> or <a>ClaimGameServer</a>. </p>")
    @as("GameServerData")
    gameServerData: option<gameServerData>,
    @ocaml.doc("<p>Information that is needed to make inbound client connections to the game server. This
            might include the IP address and port, DNS name, and other information.</p>")
    @as("ConnectionInfo")
    connectionInfo: option<gameServerConnectionInfo>,
    @ocaml.doc("<p>The unique identifier for the instance where the game server is running. This ID is
            available in the instance metadata. EC2 instance IDs 
            use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>")
    @as("InstanceId")
    instanceId: gameServerInstanceId,
    @ocaml.doc("<p>A custom string that uniquely identifies the game server to register.  
            Game server IDs are developer-defined and must be unique across all game server groups in your AWS account.</p>")
    @as("GameServerId")
    gameServerId: gameServerId,
    @ocaml.doc("<p>A unique identifier for the game server group where the game server is running. 
            Use either the <a>GameServerGroup</a> name or ARN value.</p>")
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @ocaml.doc("<p>Object that describes the newly registered game server.</p>") @as("GameServer")
    gameServer: option<gameServer>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "RegisterGameServerCommand"
  let make = (
    ~instanceId,
    ~gameServerId,
    ~gameServerGroupName,
    ~gameServerData=?,
    ~connectionInfo=?,
    (),
  ) =>
    new({
      gameServerData: gameServerData,
      connectionInfo: connectionInfo,
      instanceId: instanceId,
      gameServerId: gameServerId,
      gameServerGroupName: gameServerGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutScalingPolicy = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>An object that contains settings for a target-based scaling policy.</p>")
    @as("TargetConfiguration")
    targetConfiguration: option<targetConfiguration>,
    @ocaml.doc("<p>The type of scaling policy to create. For a target-based policy, set the parameter
                <i>MetricName</i> to 'PercentAvailableGameSessions' and specify a
                <i>TargetConfiguration</i>. For a rule-based policy set the following
            parameters: <i>MetricName</i>, <i>ComparisonOperator</i>,
                <i>Threshold</i>, <i>EvaluationPeriods</i>,
                <i>ScalingAdjustmentType</i>, and
                <i>ScalingAdjustment</i>.</p>")
    @as("PolicyType")
    policyType: option<policyType>,
    @ocaml.doc("<p>Name of the Amazon GameLift-defined metric that is used to trigger a scaling adjustment. For
            detailed descriptions of fleet metrics, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html\">Monitor Amazon GameLift
                with Amazon CloudWatch</a>. </p>
        <ul>
            <li>
                <p>
                  <b>ActivatingGameSessions</b> -- Game sessions in
                    the process of being created.</p>
            </li>
            <li>
                <p>
                  <b>ActiveGameSessions</b> -- Game sessions that
                    are currently running.</p>
            </li>
            <li>
                <p>
                  <b>ActiveInstances</b> -- Fleet instances that
                    are currently running at least one game session.</p>
            </li>
            <li>
                <p>
                  <b>AvailableGameSessions</b> -- Additional game
                    sessions that fleet could host simultaneously, given current capacity.</p>
            </li>
            <li>
                <p>
                  <b>AvailablePlayerSessions</b> -- Empty player
                    slots in currently active game sessions. This includes game sessions that are
                    not currently accepting players. Reserved player slots are not
                    included.</p>
            </li>
            <li>
                <p>
                  <b>CurrentPlayerSessions</b> -- Player slots in
                    active game sessions that are being used by a player or are reserved for a
                    player. </p>
            </li>
            <li>
                <p>
                  <b>IdleInstances</b> -- Active instances that are
                    currently hosting zero game sessions. </p>
            </li>
            <li>
                <p>
                  <b>PercentAvailableGameSessions</b> -- Unused
                    percentage of the total number of game sessions that a fleet could host
                    simultaneously, given current capacity. Use this metric for a target-based
                    scaling policy.</p>
            </li>
            <li>
                <p>
                  <b>PercentIdleInstances</b> -- Percentage of the
                    total number of active instances that are hosting zero game sessions.</p>
            </li>
            <li>
                <p>
                  <b>QueueDepth</b> -- Pending game session
                    placement requests, in any queue, where the current fleet is the top-priority
                    destination.</p>
            </li>
            <li>
                <p>
                  <b>WaitTime</b> -- Current wait time for pending
                    game session placement requests, in any queue, where the current fleet is the
                    top-priority destination. </p>
            </li>
         </ul>")
    @as("MetricName")
    metricName: metricName,
    @ocaml.doc("<p>Length of time (in minutes) the metric must be at or beyond the threshold before a
            scaling event is triggered.</p>")
    @as("EvaluationPeriods")
    evaluationPeriods: option<positiveInteger>,
    @ocaml.doc("<p>Comparison operator to use when measuring the metric against the threshold
            value.</p>")
    @as("ComparisonOperator")
    comparisonOperator: option<comparisonOperatorType>,
    @ocaml.doc("<p>Metric value used to trigger a scaling event.</p>") @as("Threshold")
    threshold: option<double>,
    @ocaml.doc("<p>The type of adjustment to make to a fleet's instance count (see <a>FleetCapacity</a>):</p>
        <ul>
            <li>
                <p>
                    <b>ChangeInCapacity</b> -- add (or subtract) the
                    scaling adjustment value from the current instance count. Positive values scale
                    up while negative values scale down.</p>
            </li>
            <li>
                <p>
                    <b>ExactCapacity</b> -- set the instance count to the
                    scaling adjustment value.</p>
            </li>
            <li>
                <p>
                    <b>PercentChangeInCapacity</b> -- increase or reduce
                    the current instance count by the scaling adjustment, read as a percentage.
                    Positive values scale up while negative values scale down; for example, a value
                    of \"-10\" scales the fleet down by 10%.</p>
            </li>
         </ul>")
    @as("ScalingAdjustmentType")
    scalingAdjustmentType: option<scalingAdjustmentType>,
    @ocaml.doc("<p>Amount of adjustment to make, based on the scaling adjustment type.</p>")
    @as("ScalingAdjustment")
    scalingAdjustment: option<integer_>,
    @ocaml.doc("<p>A unique identifier for the fleet to apply this policy to. You can use either the fleet ID or ARN value. The fleet
            cannot be in any of the following statuses: ERROR or DELETING.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
    @ocaml.doc(
      "<p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique. A fleet can have only one scaling policy with the same name.</p>"
    )
    @as("Name")
    name: nonZeroAndMaxString,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique.</p>"
    )
    @as("Name")
    name: option<nonZeroAndMaxString>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "PutScalingPolicyCommand"
  let make = (
    ~metricName,
    ~fleetId,
    ~name,
    ~targetConfiguration=?,
    ~policyType=?,
    ~evaluationPeriods=?,
    ~comparisonOperator=?,
    ~threshold=?,
    ~scalingAdjustmentType=?,
    ~scalingAdjustment=?,
    (),
  ) =>
    new({
      targetConfiguration: targetConfiguration,
      policyType: policyType,
      metricName: metricName,
      evaluationPeriods: evaluationPeriods,
      comparisonOperator: comparisonOperator,
      threshold: threshold,
      scalingAdjustmentType: scalingAdjustmentType,
      scalingAdjustment: scalingAdjustment,
      fleetId: fleetId,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFleets = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>A unique identifier for the Realtime script to request fleets for. Use this parameter to return only fleets using a
            specified script. Use either the script ID or ARN value.</p>")
    @as("ScriptId")
    scriptId: option<scriptIdOrArn>,
    @ocaml.doc("<p>A unique identifier for the build to request fleets for. Use this parameter to return only fleets using a
            specified build. Use either the build ID or ARN value.</p>")
    @as("BuildId")
    buildId: option<buildIdOrArn>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A set of fleet IDs that match the list request. 
            You can retrieve additional information about all 
            returned fleets by passing this result set to a <a>DescribeFleetAttributes</a>, <a>DescribeFleetCapacity</a>, or
                <a>DescribeFleetUtilization</a> call.</p>")
    @as("FleetIds")
    fleetIds: option<fleetIdList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ListFleetsCommand"
  let make = (~nextToken=?, ~limit=?, ~scriptId=?, ~buildId=?, ()) =>
    new({nextToken: nextToken, limit: limit, scriptId: scriptId, buildId: buildId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameServer = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A custom string that uniquely identifies the game server information to be retrieved.</p>"
    )
    @as("GameServerId")
    gameServerId: gameServerId,
    @ocaml.doc("<p>A unique identifier for the game server group where the game server is running. 
            Use either the <a>GameServerGroup</a> name or ARN value.</p>")
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @ocaml.doc("<p>Object that describes the requested game server.</p>") @as("GameServer")
    gameServer: option<gameServer>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeGameServerCommand"
  let make = (~gameServerId, ~gameServerGroupName, ()) =>
    new({gameServerId: gameServerId, gameServerGroupName: gameServerGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetLocationUtilization = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>The fleet location to retrieve utilization information for. Specify a location in the form of an AWS Region code, such as
                <code>us-west-2</code>.</p>")
    @as("Location")
    location: locationStringModel,
    @ocaml.doc("<p>A unique identifier for the fleet to request location utilization for.
            You can use either the fleet ID or ARN value.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Utilization information for the requested fleet location. Utilization objects are
            returned only for fleets and locations that currently exist.</p>")
    @as("FleetUtilization")
    fleetUtilization: option<fleetUtilization>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetLocationUtilizationCommand"
  let make = (~location, ~fleetId, ()) => new({location: location, fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBuild = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for the build to retrieve properties for. You can use either the build ID or ARN value. </p>"
    )
    @as("BuildId")
    buildId: buildIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Set of properties describing the requested build.</p>") @as("Build")
    build: option<build>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeBuildCommand"
  let make = (~buildId, ()) => new({buildId: buildId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVpcPeeringAuthorization = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
            VPC must be in the same Region as your fleet. To look up a VPC ID, use the 
            <a href=\"https://console.aws.amazon.com/vpc/\">VPC Dashboard</a> in the AWS Management Console. 
            Learn more about VPC peering in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with GameLift Fleets</a>.</p>")
    @as("PeerVpcId")
    peerVpcId: nonZeroAndMaxString,
    @ocaml.doc("<p>A unique identifier for the AWS account that you use to manage your GameLift fleet. 
            You can find your Account ID in the AWS Management Console under account settings.</p>")
    @as("GameLiftAwsAccountId")
    gameLiftAwsAccountId: nonZeroAndMaxString,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Details on the requested VPC peering authorization, including expiration.</p>")
    @as("VpcPeeringAuthorization")
    vpcPeeringAuthorization: option<vpcPeeringAuthorization>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateVpcPeeringAuthorizationCommand"
  let make = (~peerVpcId, ~gameLiftAwsAccountId, ()) =>
    new({peerVpcId: peerVpcId, gameLiftAwsAccountId: gameLiftAwsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePlayerSession = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>Developer-defined information related to a player. GameLift does not use this data, so it can be formatted as needed for use in the game.</p>"
    )
    @as("PlayerData")
    playerData: option<playerData>,
    @ocaml.doc("<p>A unique identifier for a player. Player IDs are developer-defined.</p>")
    @as("PlayerId")
    playerId: nonZeroAndMaxString,
    @ocaml.doc("<p>A unique identifier for the game session to add a player to.</p>")
    @as("GameSessionId")
    gameSessionId: arnStringModel,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Object that describes the newly created player session record.</p>")
    @as("PlayerSession")
    playerSession: option<playerSession>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "CreatePlayerSessionCommand"
  let make = (~playerId, ~gameSessionId, ~playerData=?, ()) =>
    new({playerData: playerData, playerId: playerId, gameSessionId: gameSessionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ClaimGameServer = {
  type t
  type request = {
    @ocaml.doc("<p>A set of custom game server properties, formatted as a single string value. This data 
            is passed to a game client or service when it requests information on game servers using
                <a>ListGameServers</a> or <a>ClaimGameServer</a>. </p>")
    @as("GameServerData")
    gameServerData: option<gameServerData>,
    @ocaml.doc("<p>A custom string that uniquely identifies the game server to claim. If this parameter
            is left empty, GameLift FleetIQ searches for an available game server in the specified game
            server group.</p>")
    @as("GameServerId")
    gameServerId: option<gameServerId>,
    @ocaml.doc("<p>A unique identifier for the game server group where the game server is running. 
            Use either the <a>GameServerGroup</a> name or ARN value. If you are not specifying a game server to claim, this value identifies
            where you want GameLift FleetIQ to look for an available game server to claim. </p>")
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @ocaml.doc("<p>Object that describes the newly claimed game server.</p>") @as("GameServer")
    gameServer: option<gameServer>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ClaimGameServerCommand"
  let make = (~gameServerGroupName, ~gameServerData=?, ~gameServerId=?, ()) =>
    new({
      gameServerData: gameServerData,
      gameServerId: gameServerId,
      gameServerGroupName: gameServerGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptMatch = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>Player response to the proposed match.</p>") @as("AcceptanceType")
    acceptanceType: acceptanceType,
    @ocaml.doc("<p>A unique identifier for a player delivering the response. This parameter can include one or multiple
            player IDs.</p>")
    @as("PlayerIds")
    playerIds: stringList,
    @ocaml.doc("<p>A unique identifier for a matchmaking ticket. The ticket must be in status <code>REQUIRES_ACCEPTANCE</code>; otherwise this
            request will fail.</p>")
    @as("TicketId")
    ticketId: matchmakingIdStringModel,
  }

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "AcceptMatchCommand"
  let make = (~acceptanceType, ~playerIds, ~ticketId, ()) =>
    new({acceptanceType: acceptanceType, playerIds: playerIds, ticketId: ticketId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateScript = {
  type t
  type request = {
    @ocaml.doc("<p>A data object containing your Realtime scripts and dependencies as a zip file. The zip
            file can have one or multiple files. Maximum size of a zip file is 5 MB.</p>
        <p>When using the AWS CLI tool to create a script, this parameter is set to the zip file
            name. It must be prepended with the string \"fileb://\" to indicate that the file data is
            a binary object. For example: <code>--zip-file
            fileb://myRealtimeScript.zip</code>.</p>")
    @as("ZipFile")
    zipFile: option<zipBlob>,
    @ocaml.doc("<p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is
            stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the
            \"key\"), and a role ARN that allows Amazon GameLift to access the Amazon S3 storage location. The S3
            bucket must be in the same Region where you want to create a new script. By default,
            Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning
            turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier
            version. </p>")
    @as("StorageLocation")
    storageLocation: option<s3Location>,
    @ocaml.doc(
      "<p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>"
    )
    @as("Version")
    version: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>A descriptive label that is associated with a script. Script names do not need to be unique.</p>"
    )
    @as("Name")
    name: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>A unique identifier for the Realtime script to update. You can use either the script ID or ARN value.</p>"
    )
    @as("ScriptId")
    scriptId: scriptIdOrArn,
  }
  type response = {
    @ocaml.doc("<p>The newly created script record with a unique script ID. The new script's storage
            location reflects an Amazon S3 location: (1) If the script was uploaded from an S3 bucket
            under your account, the storage location reflects the information that was provided in
            the <i>CreateScript</i> request; (2) If the script file was uploaded from
            a local zip file, the storage location reflects an S3 location controls by the Amazon GameLift
            service.</p>")
    @as("Script")
    script: option<script>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UpdateScriptCommand"
  let make = (~scriptId, ~zipFile=?, ~storageLocation=?, ~version=?, ~name=?, ()) =>
    new({
      zipFile: zipFile,
      storageLocation: storageLocation,
      version: version,
      name: name,
      scriptId: scriptId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFleetPortSettings = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A collection of port settings to be removed from the fleet resource.</p>")
    @as("InboundPermissionRevocations")
    inboundPermissionRevocations: option<ipPermissionsList>,
    @ocaml.doc("<p>A collection of port settings to be added to the fleet resource.</p>")
    @as("InboundPermissionAuthorizations")
    inboundPermissionAuthorizations: option<ipPermissionsList>,
    @ocaml.doc("<p>A unique identifier for the fleet to update port settings for. You can use either the fleet ID or ARN
            value.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>A unique identifier for the fleet that was updated.</p>") @as("FleetId")
    fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "UpdateFleetPortSettingsCommand"
  let make = (~fleetId, ~inboundPermissionRevocations=?, ~inboundPermissionAuthorizations=?, ()) =>
    new({
      inboundPermissionRevocations: inboundPermissionRevocations,
      inboundPermissionAuthorizations: inboundPermissionAuthorizations,
      fleetId: fleetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAlias = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>The routing configuration, including routing type and fleet target, for the
            alias.</p>")
    @as("RoutingStrategy")
    routingStrategy: option<routingStrategy>,
    @ocaml.doc("<p>A human-readable description of the alias.</p>") @as("Description")
    description: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>"
    )
    @as("Name")
    name: option<nonBlankAndLengthConstraintString>,
    @ocaml.doc("<p>A unique identifier for the alias that you want to update. You can use either the
            alias ID or ARN value.</p>")
    @as("AliasId")
    aliasId: aliasIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The updated alias resource.</p>") @as("Alias") alias: option<alias>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UpdateAliasCommand"
  let make = (~aliasId, ~routingStrategy=?, ~description=?, ~name=?, ()) =>
    new({routingStrategy: routingStrategy, description: description, name: name, aliasId: aliasId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of one or more tags to assign to the specified GameLift resource. 
            Tags are developer-defined and structured as key-value pairs. 
            The maximum tag limit may be lower than stated. See <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> 
            for actual tagging limits.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>
            The Amazon Resource Name 
            (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>)
            that is assigned to and uniquely identifies the GameLift resource that you want to assign
            tags to. GameLift resource ARNs are included in the data object for the resource, which 
            can be retrieved by calling a List or Describe operation for the resource type. </p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-gamelift") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>
            The Amazon Resource Name 
            (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>)
            that is assigned to and uniquely identifies the GameLift resource that you want to retrieve
            tags for. GameLift resource ARNs are included in the data object for the resource, which 
            can be retrieved by calling a List or Describe operation for the resource type. </p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>
            The collection of tags that have been assigned to the specified resource.
        </p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGameServers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>Indicates how to sort the returned data based on game server registration timestamp.
            Use <code>ASCENDING</code> to retrieve oldest game servers first, or use
                <code>DESCENDING</code> to retrieve newest game servers first. If this parameter is
            left empty, game servers are returned in no particular order.</p>")
    @as("SortOrder")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>An identifier for the game server group to retrieve a list of game servers from. 
            Use either the <a>GameServerGroup</a> name or ARN value.</p>")
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of game server objects that match the request.</p>")
    @as("GameServers")
    gameServers: option<gameServers>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ListGameServersCommand"
  let make = (~gameServerGroupName, ~nextToken=?, ~limit=?, ~sortOrder=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      sortOrder: sortOrder,
      gameServerGroupName: gameServerGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBuilds = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>Build status to filter results by. To retrieve all builds, leave this parameter
            empty.</p>
        <p>Possible build statuses include the following:</p>
        <ul>
            <li>
                <p>
                    <b>INITIALIZED</b> -- A new build has been defined,
                    but no files have been uploaded. You cannot create fleets for builds that are in
                    this status. When a build is successfully created, the build status is set to
                    this value. </p>
            </li>
            <li>
                <p>
                    <b>READY</b> -- The game build has been successfully
                    uploaded. You can now create new fleets for this build.</p>
            </li>
            <li>
                <p>
                    <b>FAILED</b> -- The game build upload failed. You
                    cannot create new fleets for this build. </p>
            </li>
         </ul>")
    @as("Status")
    status: option<buildStatus>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonEmptyString>,
    @ocaml.doc("<p>A collection of build resources that match the request.</p>") @as("Builds")
    builds: option<buildList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ListBuildsCommand"
  let make = (~nextToken=?, ~limit=?, ~status=?, ()) =>
    new({nextToken: nextToken, limit: limit, status: status})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstanceAccess = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for the instance you want to get access to. You can access an instance in any
            status.</p>")
    @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>A unique identifier for the fleet that contains the instance you want access to. You can use either the fleet ID
            or ARN value. The fleet can be in any of the following statuses:
            <code>ACTIVATING</code>, <code>ACTIVE</code>, or <code>ERROR</code>. Fleets with an
                <code>ERROR</code> status may be accessible for a short time before they are
            deleted.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The connection information for a fleet instance, including IP
            address and access credentials.</p>")
    @as("InstanceAccess")
    instanceAccess: option<instanceAccess>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "GetInstanceAccessCommand"
  let make = (~instanceId, ~fleetId, ()) => new({instanceId: instanceId, fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcPeeringAuthorizations = {
  type t

  type response = {
    @ocaml.doc("<p>A collection of objects that describe all valid VPC peering operations for the
            current AWS account.</p>")
    @as("VpcPeeringAuthorizations")
    vpcPeeringAuthorizations: option<vpcPeeringAuthorizationList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: unit => t = "DescribeVpcPeeringAuthorizationsCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScript = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the Realtime script to retrieve properties for. You can use either the script ID or ARN
            value.</p>")
    @as("ScriptId")
    scriptId: scriptIdOrArn,
  }
  type response = {
    @ocaml.doc("<p>A set of properties describing the requested script.</p>") @as("Script")
    script: option<script>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeScriptCommand"
  let make = (~scriptId, ()) => new({scriptId: scriptId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePlayerSessions = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>Player session status to filter results on.</p>
         <p>Possible player session statuses include the following:</p>
         <ul>
            <li>
               <p>
                  <b>RESERVED</b> -- The player session request has been
                received, but the player has not yet connected to the server process and/or been
                validated. </p>
            </li>
            <li>
               <p>
                  <b>ACTIVE</b> -- The player has been validated by the
                server process and is currently connected.</p>
            </li>
            <li>
               <p>
                  <b>COMPLETED</b> -- The player connection has been
                dropped.</p>
            </li>
            <li>
               <p>
                  <b>TIMEDOUT</b> -- A player session request was
                received, but the player did not connect and/or was not validated within the
                timeout limit (60 seconds).</p>
            </li>
         </ul>")
    @as("PlayerSessionStatusFilter")
    playerSessionStatusFilter: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A unique identifier for a player session to retrieve.</p>")
    @as("PlayerSessionId")
    playerSessionId: option<playerSessionId>,
    @ocaml.doc("<p>A unique identifier for a player to retrieve player sessions for.</p>")
    @as("PlayerId")
    playerId: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A unique identifier for the game session to retrieve player sessions for.</p>")
    @as("GameSessionId")
    gameSessionId: option<arnStringModel>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of objects containing properties for each player session that matches
        the request.</p>")
    @as("PlayerSessions")
    playerSessions: option<playerSessionList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribePlayerSessionsCommand"
  let make = (
    ~nextToken=?,
    ~limit=?,
    ~playerSessionStatusFilter=?,
    ~playerSessionId=?,
    ~playerId=?,
    ~gameSessionId=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      limit: limit,
      playerSessionStatusFilter: playerSessionStatusFilter,
      playerSessionId: playerSessionId,
      playerId: playerId,
      gameSessionId: gameSessionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMatchmakingRuleSets = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
    )
    @as("Limit")
    limit: option<ruleSetLimit>,
    @ocaml.doc("<p>A list of one or more matchmaking rule set names to retrieve details for. (Note: The
            rule set name is different from the optional \"name\" field in the rule set body.) You can
            use either the rule set name or ARN value. </p>")
    @as("Names")
    names: option<matchmakingRuleSetNameList>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of requested matchmaking rule set objects. </p>") @as("RuleSets")
    ruleSets: matchmakingRuleSetList,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeMatchmakingRuleSetsCommand"
  let make = (~nextToken=?, ~limit=?, ~names=?, ()) =>
    new({nextToken: nextToken, limit: limit, names: names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstances = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of a location to retrieve instance information for, in the form of an AWS
            Region code such as <code>us-west-2</code>. </p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>A unique identifier for an instance to retrieve. Specify an instance ID or leave
            blank to retrieve all instances in the fleet.</p>")
    @as("InstanceId")
    instanceId: option<instanceId>,
    @ocaml.doc("<p>A unique identifier for the fleet to retrieve instance information for.  You can use either the fleet ID or ARN
            value.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of objects containing properties for each instance returned.</p>")
    @as("Instances")
    instances: option<instanceList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeInstancesCommand"
  let make = (~fleetId, ~location=?, ~nextToken=?, ~limit=?, ~instanceId=?, ()) =>
    new({
      location: location,
      nextToken: nextToken,
      limit: limit,
      instanceId: instanceId,
      fleetId: fleetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameServerInstances = {
  type t
  type request = {
    @ocaml.doc("<p>
            A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
        </p>")
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>
            The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.
        </p>")
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>The EC2 instance IDs that you want to retrieve status on. EC2 instance IDs use a
            17-character format, for example: <code>i-1234567890abcdef0</code>. To retrieve all
            instances in the game server group, leave this parameter empty. </p>")
    @as("InstanceIds")
    instanceIds: option<gameServerInstanceIds>,
    @ocaml.doc(
      "<p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
    )
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @ocaml.doc("<p>
            A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
        </p>")
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>
            The collection of requested game server instances. 
        </p>")
    @as("GameServerInstances")
    gameServerInstances: option<gameServerInstances>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeGameServerInstancesCommand"
  let make = (~gameServerGroupName, ~nextToken=?, ~limit=?, ~instanceIds=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      instanceIds: instanceIds,
      gameServerGroupName: gameServerGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetUtilization = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
            IDs.</p>")
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
            IDs.</p>")
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>A unique identifier for the fleet(s) to retrieve utilization data for. You can use either the fleet ID or ARN
            value. To retrieve attributes for all current fleets, do not include this parameter. </p>")
    @as("FleetIds")
    fleetIds: option<fleetIdOrArnList>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of objects containing utilization information for each requested fleet
            ID. Utilization objects are returned only for fleets that currently exist.</p>")
    @as("FleetUtilization")
    fleetUtilization: option<fleetUtilizationList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetUtilizationCommand"
  let make = (~nextToken=?, ~limit=?, ~fleetIds=?, ()) =>
    new({nextToken: nextToken, limit: limit, fleetIds: fleetIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetPortSettings = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A remote location to check for status of port setting updates. Use the AWS Region code
            format, such as <code>us-west-2</code>.</p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc("<p>A unique identifier for the fleet to retrieve port settings for. You can use either the fleet ID or ARN
            value.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The requested fleet location, expressed as an AWS Region code, 
            such as <code>us-west-2</code>. </p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc("<p>The current status of updates to the fleet's port settings in the requested fleet
            location. A status of <code>PENDING_UPDATE</code> indicates that an update was requested
            for the fleet but has not yet been completed for the location.</p>")
    @as("UpdateStatus")
    updateStatus: option<locationUpdateStatus>,
    @ocaml.doc("<p>The port settings for the requested fleet ID.</p>") @as("InboundPermissions")
    inboundPermissions: option<ipPermissionsList>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>"
    )
    @as("FleetArn")
    fleetArn: option<fleetArn>,
    @ocaml.doc("<p>A unique identifier for the fleet that was requested. </p>") @as("FleetId")
    fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetPortSettingsCommand"
  let make = (~fleetId, ~location=?, ()) => new({location: location, fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetLocationCapacity = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>The fleet location to retrieve capacity information for. Specify a location in the form of an AWS Region code, such as
                <code>us-west-2</code>.</p>")
    @as("Location")
    location: locationStringModel,
    @ocaml.doc("<p>A unique identifier for the fleet to request location capacity for.
            You can use either the fleet ID or ARN value.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Resource capacity information for the requested fleet location. Capacity objects are
            returned only for fleets and locations that currently exist.</p>")
    @as("FleetCapacity")
    fleetCapacity: option<fleetCapacity>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetLocationCapacityCommand"
  let make = (~location, ~fleetId, ()) => new({location: location, fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetEvents = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>The most recent date to retrieve event logs for. If no end time is specified, this
            call returns entries from the specified start time up to the present. Format is a number
            expressed in Unix time as milliseconds (ex: \"1469498468.057\").</p>")
    @as("EndTime")
    endTime: option<timestamp_>,
    @ocaml.doc("<p>The earliest date to retrieve event logs for. If no start time is specified, this call
            returns entries starting from when the fleet was created to the specified end time.
            Format is a number expressed in Unix time as milliseconds (ex: \"1469498468.057\").</p>")
    @as("StartTime")
    startTime: option<timestamp_>,
    @ocaml.doc(
      "<p>A unique identifier for the fleet to get event logs for.  You can use either the fleet ID or ARN value.</p>"
    )
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of objects containing event log entries for the specified
            fleet.</p>")
    @as("Events")
    events: option<eventList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeFleetEventsCommand"
  let make = (~fleetId, ~nextToken=?, ~limit=?, ~endTime=?, ~startTime=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      endTime: endTime,
      startTime: startTime,
      fleetId: fleetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEC2InstanceLimits = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of a remote location to request instance limits for, in the form of an AWS
            Region code such as <code>us-west-2</code>.</p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc("<p>Name of an EC2 instance type that is supported in GameLift. A fleet instance type
            determines the computing resources of each instance in the fleet, including CPU, memory,
            storage, and networking capacity. Do not specify a value for this parameter to retrieve
            limits for all instance types.</p>")
    @as("EC2InstanceType")
    ec2InstanceType: option<ec2InstanceType>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The maximum number of instances for the specified instance
            type.</p>")
    @as("EC2InstanceLimits")
    ec2InstanceLimits: option<ec2InstanceLimitList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeEC2InstanceLimitsCommand"
  let make = (~location=?, ~ec2InstanceType=?, ()) =>
    new({location: location, ec2InstanceType: ec2InstanceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlias = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>The unique identifier for the fleet alias that you want to retrieve. You can use
            either the alias ID or ARN value. </p>")
    @as("AliasId")
    aliasId: aliasIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The requested alias resource.</p>") @as("Alias") alias: option<alias>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeAliasCommand"
  let make = (~aliasId, ()) => new({aliasId: aliasId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFleetLocations = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>The list of fleet locations to delete. Specify locations in the form of an AWS Region code, such as
                <code>us-west-2</code>.</p>")
    @as("Locations")
    locations: locationList,
    @ocaml.doc("<p>A unique identifier for the fleet to delete locations for.
            You can use either the fleet ID or ARN value.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The remote locations that are being deleted, with each location status set to
                <code>DELETING</code>.</p>")
    @as("LocationStates")
    locationStates: option<locationStateList>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>"
    )
    @as("FleetArn")
    fleetArn: option<fleetArn>,
    @ocaml.doc(
      "<p>A unique identifier for the fleet that location attributes are being deleted for.</p>"
    )
    @as("FleetId")
    fleetId: option<fleetIdOrArn>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteFleetLocationsCommand"
  let make = (~locations, ~fleetId, ()) => new({locations: locations, fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateScript = {
  type t
  type request = {
    @ocaml.doc("<p>A list of labels to assign to the new script resource. Tags are developer-defined 
            key-value pairs. Tagging
            AWS resources are useful for resource management, access management and cost allocation.
            For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the
            <i>AWS General Reference</i>. Once the resource is created, you can
            use <a>TagResource</a>, <a>UntagResource</a>, and 
            <a>ListTagsForResource</a> to add, remove, and view tags. The
            maximum tag limit may be lower than stated. See the AWS General Reference for actual 
            tagging limits.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A data object containing your Realtime scripts and dependencies as a zip file. The zip
            file can have one or multiple files. Maximum size of a zip file is 5 MB.</p>
        <p>When using the AWS CLI tool to create a script, this parameter is set to the zip file name. It must be prepended with the 
            string \"fileb://\" to indicate that the file data is a binary object. For example: <code>--zip-file fileb://myRealtimeScript.zip</code>.</p>")
    @as("ZipFile")
    zipFile: option<zipBlob>,
    @ocaml.doc("<p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is
            stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the
            \"key\"), and a role ARN that allows Amazon GameLift to access the Amazon S3 storage location. The S3
            bucket must be in the same Region where you want to create a new script. By default,
            Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning
            turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier
            version. </p>")
    @as("StorageLocation")
    storageLocation: option<s3Location>,
    @ocaml.doc("<p>Version information that is associated with a build or script. Version strings do not need to be unique. You can use <a>UpdateScript</a> to change this value later.
        </p>")
    @as("Version")
    version: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A descriptive label that is associated with a script. Script names do not need to be unique. You can use <a>UpdateScript</a> to change this value later.
        </p>")
    @as("Name")
    name: option<nonZeroAndMaxString>,
  }
  type response = {
    @ocaml.doc("<p>The newly created script record with a unique script ID and ARN. The new script's
            storage location reflects an Amazon S3 location: (1) If the script was uploaded from an S3
            bucket under your account, the storage location reflects the information that was
            provided in the <i>CreateScript</i> request; (2) If the script file was
            uploaded from a local zip file, the storage location reflects an S3 location controls by
            the Amazon GameLift service.</p>")
    @as("Script")
    script: option<script>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "CreateScriptCommand"
  let make = (~tags=?, ~zipFile=?, ~storageLocation=?, ~version=?, ~name=?, ()) =>
    new({
      tags: tags,
      zipFile: zipFile,
      storageLocation: storageLocation,
      version: version,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePlayerSessions = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>Map of string pairs, each specifying a player ID and a set of developer-defined
            information related to the player. Amazon GameLift does not use this data, so it can be formatted
            as needed for use in the game. Any player data strings for player IDs that are not
            included in the <code>PlayerIds</code> parameter are ignored. </p>")
    @as("PlayerDataMap")
    playerDataMap: option<playerDataMap>,
    @ocaml.doc("<p>List of unique identifiers for the players to be added.</p>") @as("PlayerIds")
    playerIds: playerIdList,
    @ocaml.doc("<p>A unique identifier for the game session to add players to.</p>")
    @as("GameSessionId")
    gameSessionId: arnStringModel,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>A collection of player session objects created for the added players.</p>")
    @as("PlayerSessions")
    playerSessions: option<playerSessionList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreatePlayerSessionsCommand"
  let make = (~playerIds, ~gameSessionId, ~playerDataMap=?, ()) =>
    new({playerDataMap: playerDataMap, playerIds: playerIds, gameSessionId: gameSessionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMatchmakingRuleSet = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A list of labels to assign to the new matchmaking rule set resource. Tags are developer-defined 
            key-value pairs. Tagging
            AWS resources are useful for resource management, access management and cost allocation.
            For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the
            <i>AWS General Reference</i>. Once the resource is created, you can
            use <a>TagResource</a>, <a>UntagResource</a>, and 
            <a>ListTagsForResource</a> to add, remove, and view tags. The
            maximum tag limit may be lower than stated. See the AWS General Reference for actual 
            tagging limits.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A collection of matchmaking rules, formatted as a JSON string. Comments are not
            allowed in JSON, but most elements support a description field.</p>")
    @as("RuleSetBody")
    ruleSetBody: ruleSetBody,
    @ocaml.doc("<p>A unique identifier for the matchmaking rule set. A matchmaking configuration identifies the rule set it uses by this name
            value. Note that the rule set name is different from the optional <code>name</code>
            field in the rule set body.</p>")
    @as("Name")
    name: matchmakingIdStringModel,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The newly created matchmaking rule set.</p>") @as("RuleSet")
    ruleSet: matchmakingRuleSet,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateMatchmakingRuleSetCommand"
  let make = (~ruleSetBody, ~name, ~tags=?, ()) =>
    new({tags: tags, ruleSetBody: ruleSetBody, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFleetLocations = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A list of locations to deploy additional instances to and manage as part of the fleet.
            You can add any GameLift-supported AWS Region as a remote location, in the form of an AWS
            Region code such as <code>us-west-2</code>. </p>")
    @as("Locations")
    locations: locationConfigurationList,
    @ocaml.doc(
      "<p>A unique identifier for the fleet to add locations to. You can use either the fleet ID or ARN value.</p>"
    )
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation. </p>")
  type response = {
    @ocaml.doc("<p>The remote locations that are being added to the fleet, and the life-cycle status of each location. 
            For new locations, the status is set to <code>NEW</code>.
            During location creation, GameLift updates each location's status as instances 
            are deployed there and prepared for game hosting.
        This list does not include the fleet home Region or any remote locations that were already 
        added to the fleet.</p>")
    @as("LocationStates")
    locationStates: option<locationStateList>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. </p>"
    )
    @as("FleetArn")
    fleetArn: option<fleetArn>,
    @ocaml.doc("<p>A unique identifier for the fleet that was updated with new locations.</p>")
    @as("FleetId")
    fleetId: option<fleetIdOrArn>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateFleetLocationsCommand"
  let make = (~locations, ~fleetId, ()) => new({locations: locations, fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBuild = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A list of labels to assign to the new build resource. Tags are developer-defined 
            key-value pairs. Tagging
            AWS resources are useful for resource management, access management and cost allocation.
            For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the
            <i>AWS General Reference</i>. Once the resource is created, you can
            use <a>TagResource</a>, <a>UntagResource</a>, and 
            <a>ListTagsForResource</a> to add, remove, and view tags. The
            maximum tag limit may be lower than stated. See the AWS General Reference for actual 
            tagging limits.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The operating system that the game server binaries are built to run on. This value
            determines the type of fleet resources that you can use for this build. If your game
            build contains multiple executables, they all must run on the same operating system. If
            an operating system is not specified when creating a build, Amazon GameLift uses the
            default value (WINDOWS_2012). This value cannot be changed later.</p>")
    @as("OperatingSystem")
    operatingSystem: option<operatingSystem>,
    @ocaml.doc("<p>Information indicating where your game build files are stored. Use this parameter only
            when creating a build with files stored in an Amazon S3 bucket that you own. The storage
            location must specify an Amazon S3 bucket name and key. The location must also specify a role
            ARN that you set up to allow Amazon GameLift to access your Amazon S3 bucket. The S3 bucket and your
            new build must be in the same Region.</p>")
    @as("StorageLocation")
    storageLocation: option<s3Location>,
    @ocaml.doc("<p>Version information that is associated with a build or script. Version strings do not need to be unique. You can use <a>UpdateBuild</a> to change this value later.
        </p>")
    @as("Version")
    version: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A descriptive label that is associated with a build. Build names do not need to be unique. You can use <a>UpdateBuild</a> to change this value later.
        </p>")
    @as("Name")
    name: option<nonZeroAndMaxString>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Amazon S3 location for your game build file, including bucket name and
            key.</p>")
    @as("StorageLocation")
    storageLocation: option<s3Location>,
    @ocaml.doc("<p>This element is returned only when the operation is called without a storage
            location. It contains credentials to use when you are uploading a build file to an Amazon S3
            bucket that is owned by Amazon GameLift. Credentials have a limited life span. To refresh these
            credentials, call <a>RequestUploadCredentials</a>. </p>")
    @as("UploadCredentials")
    uploadCredentials: option<awsCredentials>,
    @ocaml.doc("<p>The newly created build resource, including a unique build IDs and status. </p>")
    @as("Build")
    build: option<build>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "CreateBuildCommand"
  let make = (~tags=?, ~operatingSystem=?, ~storageLocation=?, ~version=?, ~name=?, ()) =>
    new({
      tags: tags,
      operatingSystem: operatingSystem,
      storageLocation: storageLocation,
      version: version,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAlias = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A list of labels to assign to the new alias resource. Tags are developer-defined 
            key-value pairs. Tagging
            AWS resources are useful for resource management, access management and cost allocation.
            For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the
                <i>AWS General Reference</i>. Once the resource is created, you can
            use <a>TagResource</a>, <a>UntagResource</a>, and 
            <a>ListTagsForResource</a> to add, remove, and view tags. The
            maximum tag limit may be lower than stated. See the AWS General Reference for actual 
            tagging limits.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>The routing configuration, including routing type and fleet target, for the alias. </p>"
    )
    @as("RoutingStrategy")
    routingStrategy: routingStrategy,
    @ocaml.doc("<p>A human-readable description of the alias.</p>") @as("Description")
    description: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>"
    )
    @as("Name")
    name: nonBlankAndLengthConstraintString,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The newly created alias resource.</p>") @as("Alias") alias: option<alias>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "CreateAliasCommand"
  let make = (~routingStrategy, ~name, ~tags=?, ~description=?, ()) =>
    new({tags: tags, routingStrategy: routingStrategy, description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRuntimeConfiguration = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>Instructions for launching server processes on each instance in the fleet. Server
            processes run either a custom game build executable or a Realtime Servers script. The runtime
            configuration lists the types of server processes to run on an instance, how to launch
            them, and the number of processes to run concurrently.</p>")
    @as("RuntimeConfiguration")
    runtimeConfiguration: runtimeConfiguration,
    @ocaml.doc("<p>A unique identifier for the fleet to update runtime configuration for. You can use either the fleet ID or ARN
            value.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The runtime configuration currently in use by all instances in the fleet. If the
            update was successful, all property changes are shown. </p>")
    @as("RuntimeConfiguration")
    runtimeConfiguration: option<runtimeConfiguration>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "UpdateRuntimeConfigurationCommand"
  let make = (~runtimeConfiguration, ~fleetId, ()) =>
    new({runtimeConfiguration: runtimeConfiguration, fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMatchmakingConfiguration = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>Indicates whether this matchmaking configuration is being used with GameLift hosting or
            as a standalone matchmaking solution. </p>
        <ul>
            <li>
               <p>
                  <b>STANDALONE</b> - FlexMatch forms matches and returns
                match information, including players and team assignments, in a 
                <a href=\"https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded\">
                    MatchmakingSucceeded</a> event.</p>
            </li>
            <li>
               <p>
                  <b>WITH_QUEUE</b> - FlexMatch forms matches and uses the specified GameLift queue to
                start a game session for the match. </p>
            </li>
         </ul>")
    @as("FlexMatchMode")
    flexMatchMode: option<flexMatchMode>,
    @ocaml.doc("<p>The method that is used to backfill game sessions created with this matchmaking
            configuration. Specify MANUAL when your game manages backfill requests manually or does
            not use the match backfill feature. Specify AUTOMATIC to have GameLift create a <a>StartMatchBackfill</a> request whenever a game session has one or more open
            slots. Learn more about manual and automatic backfill in <a href=\"https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html\">Backfill Existing Games
                with FlexMatch</a>. Automatic backfill is not available when
            <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>")
    @as("BackfillMode")
    backfillMode: option<backfillMode>,
    @ocaml.doc("<p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object
            that is created for a successful match.  This parameter is not used if
            <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>")
    @as("GameSessionData")
    gameSessionData: option<gameSessionData>,
    @ocaml.doc("<p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). This information is added to the new <a>GameSession</a>
            object that is created for a successful match.  This parameter is not used if
            <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>")
    @as("GameProperties")
    gameProperties: option<gamePropertyList>,
    @ocaml.doc("<p>Information to add to all events related to the matchmaking configuration. </p>")
    @as("CustomEventData")
    customEventData: option<customEventData>,
    @ocaml.doc("<p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies 
            a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used if <code>FlexMatchMode</code> is set to
            <code>STANDALONE</code>.</p>")
    @as("AdditionalPlayerCount")
    additionalPlayerCount: option<wholeNumber>,
    @ocaml.doc("<p>An SNS topic ARN that is set up to receive matchmaking notifications. See <a href=\"https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html\">
                Setting up notifications for matchmaking</a> for more information.</p>")
    @as("NotificationTarget")
    notificationTarget: option<snsArnStringModel>,
    @ocaml.doc("<p>A unique identifier for the matchmaking rule set to use with this configuration. You can use either the rule set name or ARN
            value. A matchmaking configuration can only use rule sets that are defined in the same
            Region.</p>")
    @as("RuleSetName")
    ruleSetName: option<matchmakingRuleSetName>,
    @ocaml.doc("<p>A flag that indicates whether a match that was created with this configuration must be
            accepted by the matched players. To require acceptance, set to TRUE. With this option
            enabled, matchmaking tickets use the status <code>REQUIRES_ACCEPTANCE</code> to indicate
            when a completed potential match is waiting for player acceptance. </p>")
    @as("AcceptanceRequired")
    acceptanceRequired: option<booleanModel>,
    @ocaml.doc("<p>The length of time (in seconds) to wait for players to accept a proposed match, if
            acceptance is required.</p>")
    @as("AcceptanceTimeoutSeconds")
    acceptanceTimeoutSeconds: option<matchmakingAcceptanceTimeoutInteger>,
    @ocaml.doc("<p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
            before timing out. Requests that fail due to timing out can be resubmitted as
            needed.</p>")
    @as("RequestTimeoutSeconds")
    requestTimeoutSeconds: option<matchmakingRequestTimeoutInteger>,
    @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
            GameLift-hosted game sessions for matches that are created with this matchmaking
            configuration. If <code>FlexMatchMode</code> is set to <code>STANDALONE</code>, do not
            set this parameter.</p>")
    @as("GameSessionQueueArns")
    gameSessionQueueArns: option<queueArnsList>,
    @ocaml.doc("<p>A descriptive label that is associated with matchmaking configuration.</p>")
    @as("Description")
    description: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>A unique identifier for the matchmaking configuration to update. You can use either the configuration name or ARN value. </p>"
    )
    @as("Name")
    name: matchmakingConfigurationName,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The updated matchmaking configuration.</p>") @as("Configuration")
    configuration: option<matchmakingConfiguration>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "UpdateMatchmakingConfigurationCommand"
  let make = (
    ~name,
    ~flexMatchMode=?,
    ~backfillMode=?,
    ~gameSessionData=?,
    ~gameProperties=?,
    ~customEventData=?,
    ~additionalPlayerCount=?,
    ~notificationTarget=?,
    ~ruleSetName=?,
    ~acceptanceRequired=?,
    ~acceptanceTimeoutSeconds=?,
    ~requestTimeoutSeconds=?,
    ~gameSessionQueueArns=?,
    ~description=?,
    (),
  ) =>
    new({
      flexMatchMode: flexMatchMode,
      backfillMode: backfillMode,
      gameSessionData: gameSessionData,
      gameProperties: gameProperties,
      customEventData: customEventData,
      additionalPlayerCount: additionalPlayerCount,
      notificationTarget: notificationTarget,
      ruleSetName: ruleSetName,
      acceptanceRequired: acceptanceRequired,
      acceptanceTimeoutSeconds: acceptanceTimeoutSeconds,
      requestTimeoutSeconds: requestTimeoutSeconds,
      gameSessionQueueArns: gameSessionQueueArns,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGameSessionQueue = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>An SNS topic ARN that is set up to receive game session placement notifications. See <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html\">
            Setting up notifications for game session placement</a>.</p>")
    @as("NotificationTarget")
    notificationTarget: option<queueSnsArnStringModel>,
    @ocaml.doc("<p>
            Information to be added to all events that are related to this game session queue.
        </p>")
    @as("CustomEventData")
    customEventData: option<queueCustomEventData>,
    @ocaml.doc("<p>Custom settings to use when prioritizing destinations and locations for game session placements. This 
            configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly 
            named will be automatically applied at the end of the prioritization process. To remove an existing priority configuration, pass in an empty set.</p>")
    @as("PriorityConfiguration")
    priorityConfiguration: option<priorityConfiguration>,
    @ocaml.doc("<p>A list of locations where a queue is allowed to place new game sessions. Locations 
            are specified in the form of AWS Region codes, such as <code>us-west-2</code>. If this parameter is 
            not set, game sessions can be placed in any queue location. To remove an existing filter configuration, pass in an empty set.</p>")
    @as("FilterConfiguration")
    filterConfiguration: option<filterConfiguration>,
    @ocaml.doc("<p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue. 
    Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference. When updating this list, provide a complete list of destinations.</p>")
    @as("Destinations")
    destinations: option<gameSessionQueueDestinationList>,
    @ocaml.doc("<p>A set of policies that act as a sliding cap on player latency. FleetIQ works to
            deliver low latency for most players in a game session. These policies ensure that no
            individual player can be placed into a game with unreasonably high latency. Use multiple
            policies to gradually relax latency requirements a step at a time. Multiple policies are applied based on their
            maximum allowed latency, starting with the lowest value. When updating policies, provide a complete collection of
            policies.</p>")
    @as("PlayerLatencyPolicies")
    playerLatencyPolicies: option<playerLatencyPolicyList>,
    @ocaml.doc(
      "<p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>"
    )
    @as("TimeoutInSeconds")
    timeoutInSeconds: option<wholeNumber>,
    @ocaml.doc(
      "<p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. </p>"
    )
    @as("Name")
    name: gameSessionQueueNameOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>An object that describes the newly updated game session queue.</p>")
    @as("GameSessionQueue")
    gameSessionQueue: option<gameSessionQueue>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "UpdateGameSessionQueueCommand"
  let make = (
    ~name,
    ~notificationTarget=?,
    ~customEventData=?,
    ~priorityConfiguration=?,
    ~filterConfiguration=?,
    ~destinations=?,
    ~playerLatencyPolicies=?,
    ~timeoutInSeconds=?,
    (),
  ) =>
    new({
      notificationTarget: notificationTarget,
      customEventData: customEventData,
      priorityConfiguration: priorityConfiguration,
      filterConfiguration: filterConfiguration,
      destinations: destinations,
      playerLatencyPolicies: playerLatencyPolicies,
      timeoutInSeconds: timeoutInSeconds,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGameSession = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>Game session protection policy to apply to this game session only.</p>
        <ul>
            <li>
                <p>
                    <b>NoProtection</b> -- The game session can be
                    terminated during a scale-down event.</p>
            </li>
            <li>
                <p>
                    <b>FullProtection</b> -- If the game session is in an
                    <code>ACTIVE</code> status, it cannot be terminated during a scale-down
                    event.</p>
            </li>
         </ul>")
    @as("ProtectionPolicy")
    protectionPolicy: option<protectionPolicy>,
    @ocaml.doc("<p>A policy that determines whether the game session is accepting new players.</p>")
    @as("PlayerSessionCreationPolicy")
    playerSessionCreationPolicy: option<playerSessionCreationPolicy>,
    @ocaml.doc(
      "<p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>"
    )
    @as("Name")
    name: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of players that can be connected simultaneously to the game session.</p>"
    )
    @as("MaximumPlayerSessionCount")
    maximumPlayerSessionCount: option<wholeNumber>,
    @ocaml.doc("<p>A unique identifier for the game session to update. </p>") @as("GameSessionId")
    gameSessionId: arnStringModel,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The updated game session properties.</p>") @as("GameSession")
    gameSession: option<gameSession>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "UpdateGameSessionCommand"
  let make = (
    ~gameSessionId,
    ~protectionPolicy=?,
    ~playerSessionCreationPolicy=?,
    ~name=?,
    ~maximumPlayerSessionCount=?,
    (),
  ) =>
    new({
      protectionPolicy: protectionPolicy,
      playerSessionCreationPolicy: playerSessionCreationPolicy,
      name: name,
      maximumPlayerSessionCount: maximumPlayerSessionCount,
      gameSessionId: gameSessionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGameServerGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances in the
            game server group. Method options include the following:</p>
        <ul>
            <li>
               <p>
                  <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot
                    Instances are unavailable or not viable for game hosting, the game server group
                    provides no hosting capacity until Spot Instances can again be used. Until then,
                    no new instances are started, and the existing nonviable Spot Instances are
                    terminated (after current gameplay ends) and are not replaced.</p>
            </li>
            <li>
                <p>
                  <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in
                    the game server group. If Spot Instances are unavailable, the game server group
                    continues to provide hosting capacity by falling back to On-Demand Instances.
                    Existing nonviable Spot Instances are terminated (after current gameplay ends)
                    and are replaced with new On-Demand Instances.</p>
            </li>
            <li>
                <p>
                  <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game
                    server group. No Spot Instances are used, even when available, while this
                    balancing strategy is in force.</p>
            </li>
         </ul>")
    @as("BalancingStrategy")
    balancingStrategy: option<balancingStrategy>,
    @ocaml.doc("<p>A flag that indicates whether instances in the game server group are protected 
            from early termination. Unprotected instances that have active game servers running might 
            be terminated during a scale-down event, causing players to be dropped from the game. 
            Protected instances cannot be terminated while there are active game servers running except 
            in the event of a forced game server group deletion (see ). An exception to this is with Spot 
            Instances, which can be terminated by AWS regardless of protection status. This property is set to <code>NO_PROTECTION</code> by default.</p>")
    @as("GameServerProtectionPolicy")
    gameServerProtectionPolicy: option<gameServerProtectionPolicy>,
    @ocaml.doc("<p>An updated list of EC2 instance types to use in the Auto Scaling group. The instance
            definitions must specify at least two different instance types that are supported by
            GameLift FleetIQ. This updated list replaces the entire current list of instance definitions for
            the game server group. For more information on instance types, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">EC2 Instance
                Types</a> in the <i>Amazon EC2 User Guide</i>. You can optionally
            specify capacity weighting for each instance type. If no weight value is specified for
            an instance type, it is set to the default value \"1\". For more information about
            capacity weighting, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html\"> Instance Weighting for
                Amazon EC2 Auto Scaling</a> in the Amazon EC2 Auto Scaling User Guide.</p>")
    @as("InstanceDefinitions")
    instanceDefinitions: option<instanceDefinitions>,
    @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) for an IAM role that
            allows Amazon GameLift to access your EC2 Auto Scaling groups.</p>")
    @as("RoleArn")
    roleArn: option<iamRoleArn>,
    @ocaml.doc(
      "<p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
    )
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @ocaml.doc(
      "<p>An object that describes the game server group resource with updated properties. </p>"
    )
    @as("GameServerGroup")
    gameServerGroup: option<gameServerGroup>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "UpdateGameServerGroupCommand"
  let make = (
    ~gameServerGroupName,
    ~balancingStrategy=?,
    ~gameServerProtectionPolicy=?,
    ~instanceDefinitions=?,
    ~roleArn=?,
    (),
  ) =>
    new({
      balancingStrategy: balancingStrategy,
      gameServerProtectionPolicy: gameServerProtectionPolicy,
      instanceDefinitions: instanceDefinitions,
      roleArn: roleArn,
      gameServerGroupName: gameServerGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SuspendGameServerGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The activity to suspend for this game server group.</p>") @as("SuspendActions")
    suspendActions: gameServerGroupActions,
    @ocaml.doc(
      "<p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
    )
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the game server group resource, with the
                <code>SuspendedActions</code> property updated to reflect the suspended
            activity.</p>")
    @as("GameServerGroup")
    gameServerGroup: option<gameServerGroup>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "SuspendGameServerGroupCommand"
  let make = (~suspendActions, ~gameServerGroupName, ()) =>
    new({suspendActions: suspendActions, gameServerGroupName: gameServerGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopGameSessionPlacement = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for a game session placement to cancel.</p>")
    @as("PlacementId")
    placementId: idStringModel,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Object that describes the canceled game session placement, with
        <code>CANCELLED</code> status and an end time stamp. </p>")
    @as("GameSessionPlacement")
    gameSessionPlacement: option<gameSessionPlacement>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "StopGameSessionPlacementCommand"
  let make = (~placementId, ()) => new({placementId: placementId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartGameSessionPlacement = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>).</p>")
    @as("GameSessionData")
    gameSessionData: option<largeGameSessionData>,
    @ocaml.doc("<p>Set of information on each player to create a player session for.</p>")
    @as("DesiredPlayerSessions")
    desiredPlayerSessions: option<desiredPlayerSessionList>,
    @ocaml.doc("<p>A set of values, expressed in milliseconds, that indicates the amount of latency that a player experiences when connected to AWS Regions. This information is used to try to place the new game session where
        it can offer the best possible gameplay experience for the players. </p>")
    @as("PlayerLatencies")
    playerLatencies: option<playerLatencyList>,
    @ocaml.doc(
      "<p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>"
    )
    @as("GameSessionName")
    gameSessionName: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of players that can be connected simultaneously to the game session.</p>"
    )
    @as("MaximumPlayerSessionCount")
    maximumPlayerSessionCount: wholeNumber,
    @ocaml.doc("<p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>).</p>")
    @as("GameProperties")
    gameProperties: option<gamePropertyList>,
    @ocaml.doc("<p>Name of the queue to use to place the new game session. You can use either the queue name
            or ARN value. </p>")
    @as("GameSessionQueueName")
    gameSessionQueueName: gameSessionQueueNameOrArn,
    @ocaml.doc("<p>A unique identifier to assign to the new game session placement. This value is
        developer-defined. The value must be unique across all Regions and cannot be reused
        unless you are resubmitting a canceled or timed-out placement request.</p>")
    @as("PlacementId")
    placementId: idStringModel,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Object that describes the newly created game session placement. This object
        includes all the information provided in the request, as well as start/end time stamps
        and placement status. </p>")
    @as("GameSessionPlacement")
    gameSessionPlacement: option<gameSessionPlacement>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "StartGameSessionPlacementCommand"
  let make = (
    ~maximumPlayerSessionCount,
    ~gameSessionQueueName,
    ~placementId,
    ~gameSessionData=?,
    ~desiredPlayerSessions=?,
    ~playerLatencies=?,
    ~gameSessionName=?,
    ~gameProperties=?,
    (),
  ) =>
    new({
      gameSessionData: gameSessionData,
      desiredPlayerSessions: desiredPlayerSessions,
      playerLatencies: playerLatencies,
      gameSessionName: gameSessionName,
      maximumPlayerSessionCount: maximumPlayerSessionCount,
      gameProperties: gameProperties,
      gameSessionQueueName: gameSessionQueueName,
      placementId: placementId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResumeGameServerGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The activity to resume for this game server group.</p>") @as("ResumeActions")
    resumeActions: gameServerGroupActions,
    @ocaml.doc(
      "<p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
    )
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the game server group resource, with the
                <code>SuspendedActions</code> property updated to reflect the resumed
            activity.</p>")
    @as("GameServerGroup")
    gameServerGroup: option<gameServerGroup>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "ResumeGameServerGroupCommand"
  let make = (~resumeActions, ~gameServerGroupName, ()) =>
    new({resumeActions: resumeActions, gameServerGroupName: gameServerGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListScripts = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
  }
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonEmptyString>,
    @ocaml.doc("<p>A set of properties describing the requested script.</p>") @as("Scripts")
    scripts: option<scriptList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ListScriptsCommand"
  let make = (~nextToken=?, ~limit=?, ()) => new({nextToken: nextToken, limit: limit})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAliases = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc(
      "<p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>"
    )
    @as("Name")
    name: option<nonEmptyString>,
    @ocaml.doc("<p>The routing type to filter results on. Use this parameter to retrieve only aliases
            with a certain routing type. To retrieve all aliases, leave this parameter empty.</p>
        <p>Possible routing types include the following:</p>
        <ul>
            <li>
                <p>
                    <b>SIMPLE</b> -- The alias resolves to one specific
                    fleet. Use this type when routing to active fleets.</p>
            </li>
            <li>
                <p>
                    <b>TERMINAL</b> -- The alias does not resolve to a
                    fleet but instead can be used to display a message to the user. A terminal alias
                    throws a TerminalRoutingStrategyException with the <a>RoutingStrategy</a> message embedded.</p>
            </li>
         </ul>")
    @as("RoutingStrategyType")
    routingStrategyType: option<routingStrategyType>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonEmptyString>,
    @ocaml.doc("<p>A collection of alias resources that match the request parameters.</p>")
    @as("Aliases")
    aliases: option<aliasList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "ListAliasesCommand"
  let make = (~nextToken=?, ~limit=?, ~name=?, ~routingStrategyType=?, ()) =>
    new({nextToken: nextToken, limit: limit, name: name, routingStrategyType: routingStrategyType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcPeeringConnections = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for the fleet. You can use either the fleet ID or ARN value.</p>"
    )
    @as("FleetId")
    fleetId: option<fleetId>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>A collection of VPC peering connection records that match the request.</p>")
    @as("VpcPeeringConnections")
    vpcPeeringConnections: option<vpcPeeringConnectionList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeVpcPeeringConnectionsCommand"
  let make = (~fleetId=?, ()) => new({fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScalingPolicies = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>
            CONTENT TODO
        </p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>Scaling policy status to filter results on. A scaling policy is only in force when
            in an <code>ACTIVE</code> status.</p>
        <ul>
            <li>
                <p>
                    <b>ACTIVE</b> -- The scaling policy is currently in
                    force.</p>
            </li>
            <li>
                <p>
                    <b>UPDATEREQUESTED</b> -- A request to update the
                    scaling policy has been received.</p>
            </li>
            <li>
                <p>
                    <b>UPDATING</b> -- A change is being made to the
                    scaling policy.</p>
            </li>
            <li>
                <p>
                    <b>DELETEREQUESTED</b> -- A request to delete the
                    scaling policy has been received.</p>
            </li>
            <li>
                <p>
                    <b>DELETING</b> -- The scaling policy is being
                    deleted.</p>
            </li>
            <li>
                <p>
                    <b>DELETED</b> -- The scaling policy has been
                    deleted.</p>
            </li>
            <li>
                <p>
                    <b>ERROR</b> -- An error occurred in creating the
                    policy. It should be removed and recreated.</p>
            </li>
         </ul>")
    @as("StatusFilter")
    statusFilter: option<scalingStatusType>,
    @ocaml.doc("<p>A unique identifier for the fleet to retrieve scaling policies for. You can use either the fleet ID or ARN
            value.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of objects containing the scaling policies matching the
            request.</p>")
    @as("ScalingPolicies")
    scalingPolicies: option<scalingPolicyList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeScalingPoliciesCommand"
  let make = (~fleetId, ~location=?, ~nextToken=?, ~limit=?, ~statusFilter=?, ()) =>
    new({
      location: location,
      nextToken: nextToken,
      limit: limit,
      statusFilter: statusFilter,
      fleetId: fleetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRuntimeConfiguration = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for the fleet to get the runtime configuration for. You can use either the fleet ID or ARN
            value.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Instructions that describe how server processes should be launched and maintained on
            each instance in the fleet.</p>")
    @as("RuntimeConfiguration")
    runtimeConfiguration: option<runtimeConfiguration>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeRuntimeConfigurationCommand"
  let make = (~fleetId, ()) => new({fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameSessionPlacement = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for a game session placement to retrieve.</p>")
    @as("PlacementId")
    placementId: idStringModel,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Object that describes the requested game session placement.</p>")
    @as("GameSessionPlacement")
    gameSessionPlacement: option<gameSessionPlacement>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeGameSessionPlacementCommand"
  let make = (~placementId, ()) => new({placementId: placementId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameServerGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
    )
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @ocaml.doc(
      "<p>An object with the property settings for the requested game server group resource. </p>"
    )
    @as("GameServerGroup")
    gameServerGroup: option<gameServerGroup>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeGameServerGroupCommand"
  let make = (~gameServerGroupName, ()) => new({gameServerGroupName: gameServerGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetLocationAttributes = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This limit is not currently enforced. </p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>A list of fleet locations to retrieve information for. Specify locations in the form of an AWS Region code, such as
                <code>us-west-2</code>.</p>")
    @as("Locations")
    locations: option<locationList>,
    @ocaml.doc("<p>A unique identifier for the fleet to retrieve remote locations for. You can use either the fleet ID or ARN
            value.</p>")
    @as("FleetId")
    fleetId: fleetIdOrArn,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation. </p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p> Location-specific information on the requested fleet's remote locations. </p>")
    @as("LocationAttributes")
    locationAttributes: option<locationAttributesList>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. </p>"
    )
    @as("FleetArn")
    fleetArn: option<fleetArn>,
    @ocaml.doc(
      "<p>A unique identifier for the fleet that location attributes were requested for.</p>"
    )
    @as("FleetId")
    fleetId: option<fleetIdOrArn>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetLocationAttributesCommand"
  let make = (~fleetId, ~nextToken=?, ~limit=?, ~locations=?, ()) =>
    new({nextToken: nextToken, limit: limit, locations: locations, fleetId: fleetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetCapacity = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
            IDs.</p>")
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
            IDs.</p>")
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>A unique identifier for the fleet(s) to retrieve capacity information for. You can use either the fleet ID or ARN
            value. Leave this parameter empty to retrieve capacity information for all
            fleets.</p>")
    @as("FleetIds")
    fleetIds: option<fleetIdOrArnList>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of objects that contains capacity information for each requested fleet
            ID. Capacity objects are returned only for fleets that currently exist.</p>")
    @as("FleetCapacity")
    fleetCapacity: option<fleetCapacityList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetCapacityCommand"
  let make = (~nextToken=?, ~limit=?, ~fleetIds=?, ()) =>
    new({nextToken: nextToken, limit: limit, fleetIds: fleetIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetAttributes = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
            IDs.</p>")
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
            IDs.</p>")
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>A list of unique fleet identifiers to retrieve attributes for. You can use either the
            fleet ID or ARN value. To retrieve attributes for all current fleets, do not include
            this parameter. </p>")
    @as("FleetIds")
    fleetIds: option<fleetIdOrArnList>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of objects containing attribute metadata for each requested fleet ID.
            Attribute objects are returned only for fleets that currently exist.</p>")
    @as("FleetAttributes")
    fleetAttributes: option<fleetAttributesList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeFleetAttributesCommand"
  let make = (~nextToken=?, ~limit=?, ~fleetIds=?, ()) =>
    new({nextToken: nextToken, limit: limit, fleetIds: fleetIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGameServerGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The type of delete to perform. Options include the following:</p>
        <ul>
            <li>
                <p>
                  <code>SAFE_DELETE</code> – (default) Terminates the game server group and
                    EC2 Auto Scaling group only when it has no game servers that are in
                        <code>UTILIZED</code> status.</p>
            </li>
            <li>
                <p>
                  <code>FORCE_DELETE</code> – Terminates the game server group, including all
                    active game servers regardless of their utilization status, and the EC2 Auto
                    Scaling group. </p>
            </li>
            <li>
                <p>
                  <code>RETAIN</code> – Does a safe delete of the game server group but retains
                    the EC2 Auto Scaling group as is.</p>
            </li>
         </ul>")
    @as("DeleteOption")
    deleteOption: option<gameServerGroupDeleteOption>,
    @ocaml.doc(
      "<p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
    )
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupNameOrArn,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the deleted game server group resource, with status updated
            to <code>DELETE_SCHEDULED</code>. </p>")
    @as("GameServerGroup")
    gameServerGroup: option<gameServerGroup>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DeleteGameServerGroupCommand"
  let make = (~gameServerGroupName, ~deleteOption=?, ()) =>
    new({deleteOption: deleteOption, gameServerGroupName: gameServerGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMatchmakingConfiguration = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A list of labels to assign to the new matchmaking configuration resource. Tags are developer-defined 
            key-value pairs. Tagging
            AWS resources are useful for resource management, access management and cost allocation.
            For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the
            <i>AWS General Reference</i>. Once the resource is created, you can
            use <a>TagResource</a>, <a>UntagResource</a>, and 
            <a>ListTagsForResource</a> to add, remove, and view tags. The
            maximum tag limit may be lower than stated. See the AWS General Reference for actual 
            tagging limits.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Indicates whether this matchmaking configuration is being used with GameLift hosting or
            as a standalone matchmaking solution. </p>
        <ul>
            <li>
               <p>
                  <b>STANDALONE</b> - FlexMatch forms matches and returns
                match information, including players and team assignments, in a 
                <a href=\"https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded\">
                    MatchmakingSucceeded</a> event.</p>
            </li>
            <li>
               <p>
                  <b>WITH_QUEUE</b> - FlexMatch forms matches and uses the specified GameLift queue to
                start a game session for the match. </p>
            </li>
         </ul>")
    @as("FlexMatchMode")
    flexMatchMode: option<flexMatchMode>,
    @ocaml.doc("<p>The method used to backfill game sessions that are created with this matchmaking
            configuration. Specify <code>MANUAL</code> when your game manages backfill requests
            manually or does not use the match backfill feature. Specify <code>AUTOMATIC</code> to
            have GameLift create a <a>StartMatchBackfill</a> request whenever a game
            session has one or more open slots. Learn more about manual and automatic backfill in
            <a href=\"https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html\"> Backfill Existing Games with FlexMatch</a>. Automatic backfill is not
            available when <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>")
    @as("BackfillMode")
    backfillMode: option<backfillMode>,
    @ocaml.doc("<p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object
            that is created for a successful match. This parameter is not used if
            <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>")
    @as("GameSessionData")
    gameSessionData: option<gameSessionData>,
    @ocaml.doc("<p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). This information is added to the new <a>GameSession</a>
            object that is created for a successful match. This parameter is not used if
            <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>")
    @as("GameProperties")
    gameProperties: option<gamePropertyList>,
    @ocaml.doc("<p>Information to be added to all events related to this matchmaking configuration.
        </p>")
    @as("CustomEventData")
    customEventData: option<customEventData>,
    @ocaml.doc("<p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies 
            a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used if <code>FlexMatchMode</code> is set to
            <code>STANDALONE</code>.</p>")
    @as("AdditionalPlayerCount")
    additionalPlayerCount: option<wholeNumber>,
    @ocaml.doc("<p>An SNS topic ARN that is set up to receive matchmaking notifications. See <a href=\"https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html\">
            Setting up notifications for matchmaking</a> for more information.</p>")
    @as("NotificationTarget")
    notificationTarget: option<snsArnStringModel>,
    @ocaml.doc("<p>A unique identifier for the matchmaking rule set to use with this configuration. You can use either the rule set name or ARN
            value. A matchmaking configuration can only use rule sets that are defined in the same
            Region.</p>")
    @as("RuleSetName")
    ruleSetName: matchmakingRuleSetName,
    @ocaml.doc("<p>A flag that determines whether a match that was created with this configuration must
            be accepted by the matched players. To require acceptance, set to <code>TRUE</code>.
            With this option enabled, matchmaking tickets use the status
            <code>REQUIRES_ACCEPTANCE</code> to indicate when a completed potential match is
            waiting for player acceptance. </p>")
    @as("AcceptanceRequired")
    acceptanceRequired: booleanModel,
    @ocaml.doc("<p>The length of time (in seconds) to wait for players to accept a proposed match, if
            acceptance is required. </p>")
    @as("AcceptanceTimeoutSeconds")
    acceptanceTimeoutSeconds: option<matchmakingAcceptanceTimeoutInteger>,
    @ocaml.doc("<p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
            before timing out. Requests that fail due to timing out can be resubmitted as
            needed.</p>")
    @as("RequestTimeoutSeconds")
    requestTimeoutSeconds: matchmakingRequestTimeoutInteger,
    @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
            GameLift-hosted game sessions for matches that are created with this matchmaking
            configuration. If <code>FlexMatchMode</code> is set to <code>STANDALONE</code>, do not
            set this parameter.  </p>")
    @as("GameSessionQueueArns")
    gameSessionQueueArns: option<queueArnsList>,
    @ocaml.doc("<p>A human-readable description of the matchmaking configuration. </p>")
    @as("Description")
    description: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A unique identifier for the matchmaking configuration. This name is used to identify the configuration associated with a
            matchmaking request or ticket.</p>")
    @as("Name")
    name: matchmakingIdStringModel,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Object that describes the newly created matchmaking configuration.</p>")
    @as("Configuration")
    configuration: option<matchmakingConfiguration>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateMatchmakingConfigurationCommand"
  let make = (
    ~ruleSetName,
    ~acceptanceRequired,
    ~requestTimeoutSeconds,
    ~name,
    ~tags=?,
    ~flexMatchMode=?,
    ~backfillMode=?,
    ~gameSessionData=?,
    ~gameProperties=?,
    ~customEventData=?,
    ~additionalPlayerCount=?,
    ~notificationTarget=?,
    ~acceptanceTimeoutSeconds=?,
    ~gameSessionQueueArns=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      flexMatchMode: flexMatchMode,
      backfillMode: backfillMode,
      gameSessionData: gameSessionData,
      gameProperties: gameProperties,
      customEventData: customEventData,
      additionalPlayerCount: additionalPlayerCount,
      notificationTarget: notificationTarget,
      ruleSetName: ruleSetName,
      acceptanceRequired: acceptanceRequired,
      acceptanceTimeoutSeconds: acceptanceTimeoutSeconds,
      requestTimeoutSeconds: requestTimeoutSeconds,
      gameSessionQueueArns: gameSessionQueueArns,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGameSessionQueue = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A list of labels to assign to the new game session queue resource. Tags are developer-defined 
            key-value pairs. Tagging
            AWS resources are useful for resource management, access management and cost allocation.
            For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the
            <i>AWS General Reference</i>. Once the resource is created, you can
            use <a>TagResource</a>, <a>UntagResource</a>, and 
            <a>ListTagsForResource</a> to add, remove, and view tags. The
            maximum tag limit may be lower than stated. See the AWS General Reference for actual 
            tagging limits.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>An SNS topic ARN that is set up to receive game session placement notifications. See <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html\">
            Setting up notifications for game session placement</a>.</p>")
    @as("NotificationTarget")
    notificationTarget: option<queueSnsArnStringModel>,
    @ocaml.doc("<p>
            Information to be added to all events that are related to this game session queue.
        </p>")
    @as("CustomEventData")
    customEventData: option<queueCustomEventData>,
    @ocaml.doc("<p>Custom settings to use when prioritizing destinations and locations for game session placements. This 
            configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly 
            named will be automatically applied at the end of the prioritization process. </p>")
    @as("PriorityConfiguration")
    priorityConfiguration: option<priorityConfiguration>,
    @ocaml.doc("<p>A list of locations where a queue is allowed to place new game sessions. Locations 
            are specified in the form of AWS Region codes, such as <code>us-west-2</code>. If this parameter is 
            not set, game sessions can be placed in any queue location. </p>")
    @as("FilterConfiguration")
    filterConfiguration: option<filterConfiguration>,
    @ocaml.doc("<p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue. 
    Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference.</p>")
    @as("Destinations")
    destinations: option<gameSessionQueueDestinationList>,
    @ocaml.doc("<p>A set of policies that act as a sliding cap on player latency. FleetIQ works to
            deliver low latency for most players in a game session. These policies ensure that no
            individual player can be placed into a game with unreasonably high latency. Use multiple
            policies to gradually relax latency requirements a step at a time. Multiple policies are applied based on their
            maximum allowed latency, starting with the lowest value.</p>")
    @as("PlayerLatencyPolicies")
    playerLatencyPolicies: option<playerLatencyPolicyList>,
    @ocaml.doc(
      "<p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>"
    )
    @as("TimeoutInSeconds")
    timeoutInSeconds: option<wholeNumber>,
    @ocaml.doc(
      "<p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>"
    )
    @as("Name")
    name: gameSessionQueueName,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>An object that describes the newly created game session queue.</p>")
    @as("GameSessionQueue")
    gameSessionQueue: option<gameSessionQueue>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateGameSessionQueueCommand"
  let make = (
    ~name,
    ~tags=?,
    ~notificationTarget=?,
    ~customEventData=?,
    ~priorityConfiguration=?,
    ~filterConfiguration=?,
    ~destinations=?,
    ~playerLatencyPolicies=?,
    ~timeoutInSeconds=?,
    (),
  ) =>
    new({
      tags: tags,
      notificationTarget: notificationTarget,
      customEventData: customEventData,
      priorityConfiguration: priorityConfiguration,
      filterConfiguration: filterConfiguration,
      destinations: destinations,
      playerLatencyPolicies: playerLatencyPolicies,
      timeoutInSeconds: timeoutInSeconds,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGameSession = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A fleet's remote location to place the new game session in. If this parameter is not
            set, the new game session is placed in the fleet's home Region. Specify a remote
            location with an AWS Region code such as <code>us-west-2</code>.  </p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc("<p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session.</p>")
    @as("GameSessionData")
    gameSessionData: option<largeGameSessionData>,
    @ocaml.doc("<p>Custom string that uniquely identifies the new game session request.  This is useful
            for ensuring that game session requests with the same idempotency token are processed
            only once. Subsequent requests with the same string return the original
                <code>GameSession</code> object, with an updated status. Maximum token length is 48
            characters. If provided, this string is included in the new game session's ID.
            A game session ARN has the following format: 
    <code>arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string or idempotency token></code>. Idempotency tokens remain in use for 30 days after a game session has ended;
            game session objects are retained for this time period and then deleted.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<idStringModel>,
    @ocaml.doc("<p>
            <i>This parameter is no longer preferred. Please use
                    <code>IdempotencyToken</code> instead.</i> Custom string that uniquely
            identifies a request for a new game session. Maximum token length is 48 characters. If
            provided, this string is included in the new game session's ID.</p>")
    @as("GameSessionId")
    gameSessionId: option<idStringModel>,
    @ocaml.doc("<p>A unique identifier for a player or entity creating the game session. This parameter is required when
            requesting a new game session on a fleet with a resource creation limit policy. This
            type of policy limits the number of concurrent active game sessions that one player can
            create within a certain time span. GameLift uses the CreatorId to evaluate the new
            request against the policy.</p>")
    @as("CreatorId")
    creatorId: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the 
    <a>GameSession</a> object with a request to start a new game session.</p>")
    @as("GameProperties")
    gameProperties: option<gamePropertyList>,
    @ocaml.doc(
      "<p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>"
    )
    @as("Name")
    name: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of players that can be connected simultaneously to the game session.</p>"
    )
    @as("MaximumPlayerSessionCount")
    maximumPlayerSessionCount: wholeNumber,
    @ocaml.doc("<p>A unique identifier for the alias associated with the fleet to create a game session in. You can use either the
            alias ID or ARN value. Each request must reference either a fleet ID or alias ID, but
            not both.</p>")
    @as("AliasId")
    aliasId: option<aliasIdOrArn>,
    @ocaml.doc("<p>A unique identifier for the fleet to create a game session in. You can use either the fleet ID or ARN value. Each
            request must reference either a fleet ID or alias ID, but not both.</p>")
    @as("FleetId")
    fleetId: option<fleetIdOrArn>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Object that describes the newly created game session record.</p>")
    @as("GameSession")
    gameSession: option<gameSession>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "CreateGameSessionCommand"
  let make = (
    ~maximumPlayerSessionCount,
    ~location=?,
    ~gameSessionData=?,
    ~idempotencyToken=?,
    ~gameSessionId=?,
    ~creatorId=?,
    ~gameProperties=?,
    ~name=?,
    ~aliasId=?,
    ~fleetId=?,
    (),
  ) =>
    new({
      location: location,
      gameSessionData: gameSessionData,
      idempotencyToken: idempotencyToken,
      gameSessionId: gameSessionId,
      creatorId: creatorId,
      gameProperties: gameProperties,
      name: name,
      maximumPlayerSessionCount: maximumPlayerSessionCount,
      aliasId: aliasId,
      fleetId: fleetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGameServerGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A list of labels to assign to the new game server group resource. Tags are
            developer-defined key-value pairs. Tagging AWS resources is useful for resource
            management, access management, and cost allocation. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS
                Resources</a> in the <i>AWS General Reference</i>. Once the
            resource is created, you can use <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove,
            and view tags, respectively. The maximum tag limit may be lower than stated. See the
            AWS General Reference for actual tagging limits.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A list of virtual private cloud (VPC) subnets to use with instances in the game server
            group. By default, all GameLift FleetIQ-supported Availability Zones are used. You can use this
            parameter to specify VPCs that you've set up. This property cannot be updated after the
            game server group is created, and the corresponding Auto Scaling group will always use
            the property value that is set with this request, even if the Auto Scaling group is
            updated directly.</p>")
    @as("VpcSubnets")
    vpcSubnets: option<vpcSubnets>,
    @ocaml.doc("<p>A flag that indicates whether instances in the game server group are protected 
            from early termination. Unprotected instances that have active game servers running might 
            be terminated during a scale-down event, causing players to be dropped from the game. 
            Protected instances cannot be terminated while there are active game servers running except 
            in the event of a forced game server group deletion (see ). An exception to this is with Spot 
            Instances, which can be terminated by AWS regardless of protection status. This property is set to <code>NO_PROTECTION</code> by default.</p>")
    @as("GameServerProtectionPolicy")
    gameServerProtectionPolicy: option<gameServerProtectionPolicy>,
    @ocaml.doc("<p>Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances in the
            game server group. Method options include the following:</p>
        <ul>
            <li>
               <p>
                  <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot
                    Instances are unavailable or not viable for game hosting, the game server group
                    provides no hosting capacity until Spot Instances can again be used. Until then,
                    no new instances are started, and the existing nonviable Spot Instances are
                    terminated (after current gameplay ends) and are not replaced.</p>
            </li>
            <li>
                <p>
                  <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in
                    the game server group. If Spot Instances are unavailable, the game server group
                    continues to provide hosting capacity by falling back to On-Demand Instances.
                    Existing nonviable Spot Instances are terminated (after current gameplay ends)
                    and are replaced with new On-Demand Instances.</p>
            </li>
            <li>
                <p>
                  <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game
                    server group. No Spot Instances are used, even when available, while this
                    balancing strategy is in force.</p>
            </li>
         </ul>")
    @as("BalancingStrategy")
    balancingStrategy: option<balancingStrategy>,
    @ocaml.doc("<p>Configuration settings to define a scaling policy for the Auto Scaling group that is
            optimized for game hosting. The scaling policy uses the metric
                <code>\"PercentUtilizedGameServers\"</code> to maintain a buffer of idle game servers
            that can immediately accommodate new games and players. After the Auto Scaling group is
            created, update this value directly in the Auto Scaling group using the AWS console or
            APIs.</p>")
    @as("AutoScalingPolicy")
    autoScalingPolicy: option<gameServerGroupAutoScalingPolicy>,
    @ocaml.doc("<p>The EC2 instance types and sizes to use in the Auto Scaling group. The instance
            definitions must specify at least two different instance types that are supported by
            GameLift FleetIQ. For more information on instance types, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">EC2 Instance Types</a> in the
                <i>Amazon EC2 User Guide</i>. You can optionally specify capacity
            weighting for each instance type. If no weight value is specified for an instance type,
            it is set to the default value \"1\". For more information about capacity weighting, see
                <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html\"> Instance Weighting for
                Amazon EC2 Auto Scaling</a> in the Amazon EC2 Auto Scaling User Guide.</p>")
    @as("InstanceDefinitions")
    instanceDefinitions: instanceDefinitions,
    @ocaml.doc("<p>The EC2 launch template that contains configuration settings and game server code to
            be deployed to all instances in the game server group. You can specify the template
            using either the template name or ID. For help with creating a launch template, see
                <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html\">Creating a Launch
                Template for an Auto Scaling Group</a> in the <i>Amazon EC2 Auto Scaling
                User Guide</i>. After the Auto Scaling group is created, update this value
            directly in the Auto Scaling group using the AWS console or APIs.</p>
        <note>
            <p>If you specify network interfaces in your launch template, you must explicitly set
                the property <code>AssociatePublicIpAddress</code> to \"true\". If no network
                interface is specified in the launch template,  GameLift FleetIQ uses your account's default
                VPC.</p>
        </note>")
    @as("LaunchTemplate")
    launchTemplate: launchTemplateSpecification,
    @ocaml.doc("<p>The maximum number of instances allowed in the EC2 Auto Scaling group. During
            automatic scaling events, GameLift FleetIQ and EC2 do not scale up the group above this maximum.
            After the Auto Scaling group is created, update this value directly in the Auto Scaling
            group using the AWS console or APIs.</p>")
    @as("MaxSize")
    maxSize: positiveInteger,
    @ocaml.doc("<p>The minimum number of instances allowed in the EC2 Auto Scaling group. During
            automatic scaling events, GameLift FleetIQ and EC2 do not scale down the group below this
            minimum. In production, this value should be set to at least 1. After the Auto Scaling
            group is created, update this value directly in the Auto Scaling group using the AWS
            console or APIs.</p>")
    @as("MinSize")
    minSize: wholeNumber,
    @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) for an IAM role that
            allows Amazon GameLift to access your EC2 Auto Scaling groups.</p>")
    @as("RoleArn")
    roleArn: iamRoleArn,
    @ocaml.doc("<p>An identifier for the new game server group. This value is used to generate unique ARN
            identifiers for the EC2 Auto Scaling group and the GameLift FleetIQ game server group. The name
            must be unique per Region per AWS account.</p>")
    @as("GameServerGroupName")
    gameServerGroupName: gameServerGroupName,
  }
  type response = {
    @ocaml.doc("<p>The newly created game server group object, including the new ARN value for the GameLift FleetIQ
            game server group and the object's status. The EC2 Auto Scaling group ARN is initially
            null, since the group has not yet been created. This value is added once the game server
            group status reaches <code>ACTIVE</code>. </p>")
    @as("GameServerGroup")
    gameServerGroup: option<gameServerGroup>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "CreateGameServerGroupCommand"
  let make = (
    ~instanceDefinitions,
    ~launchTemplate,
    ~maxSize,
    ~minSize,
    ~roleArn,
    ~gameServerGroupName,
    ~tags=?,
    ~vpcSubnets=?,
    ~gameServerProtectionPolicy=?,
    ~balancingStrategy=?,
    ~autoScalingPolicy=?,
    (),
  ) =>
    new({
      tags: tags,
      vpcSubnets: vpcSubnets,
      gameServerProtectionPolicy: gameServerProtectionPolicy,
      balancingStrategy: balancingStrategy,
      autoScalingPolicy: autoScalingPolicy,
      instanceDefinitions: instanceDefinitions,
      launchTemplate: launchTemplate,
      maxSize: maxSize,
      minSize: minSize,
      roleArn: roleArn,
      gameServerGroupName: gameServerGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFleet = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>A list of labels to assign to the new fleet resource. Tags are developer-defined
            key-value pairs. Tagging AWS resources are useful for resource management, access
            management and cost allocation. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the
                <i>AWS General Reference</i>. Once the fleet is created, you can use
                <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit
            may be lower than stated. See the <i>AWS General Reference</i> for actual
            tagging limits.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A set of remote locations to deploy additional instances to and manage as part of the
            fleet. This parameter can only be used when creating fleets in AWS Regions that support
            multiple locations. You can add any GameLift-supported AWS Region as a remote location,
            in the form of an AWS Region code such as <code>us-west-2</code>. To create a fleet with
            instances in the home Region only, omit this parameter. </p>")
    @as("Locations")
    locations: option<locationConfigurationList>,
    @ocaml.doc("<p>Prompts GameLift to generate a TLS/SSL certificate for the fleet. TLS certificates are
            used for encrypting traffic between game clients and the game servers that are running
            on GameLift. By default, the <code>CertificateConfiguration</code> is set to
                <code>DISABLED</code>. Learn more at <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-howitworks.html#gamelift-howitworks-security\">Securing Client/Server Communication</a>. This property cannot be changed after
            the fleet is created. </p>
        <p>Note: This feature requires the AWS Certificate Manager (ACM) service, which is not
            available in all AWS regions. When working in a region that does not support this
            feature, a fleet creation request with certificate generation fails with a 4xx
            error.</p>")
    @as("CertificateConfiguration")
    certificateConfiguration: option<certificateConfiguration>,
    @ocaml.doc("<p>A unique identifier for an AWS IAM role that manages access to your AWS services. 
        With an instance role ARN set, any application that runs on an instance in this fleet can assume the role, 
        including install scripts, server processes, and daemons (background processes). Create a role or look up a role's 
        ARN by using the <a href=\"https://console.aws.amazon.com/iam/\">IAM dashboard</a> in the AWS Management Console.
        Learn more about using on-box credentials for your game servers at 
        <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html\">
        Access external resources from a game server</a>.  This property cannot be changed after the fleet is created.</p>")
    @as("InstanceRoleArn")
    instanceRoleArn: option<nonEmptyString>,
    @ocaml.doc("<p>Indicates whether to use On-Demand or Spot instances for this fleet. By default, this
            property is set to <code>ON_DEMAND</code>. Learn more about when to use <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot\"> On-Demand versus Spot Instances</a>. This property cannot be changed after the
            fleet is created.</p>")
    @as("FleetType")
    fleetType: option<fleetType>,
    @ocaml.doc("<p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
            VPC must be in the same Region as your fleet. To look up a VPC ID, use the 
            <a href=\"https://console.aws.amazon.com/vpc/\">VPC Dashboard</a> in the AWS Management Console. 
            Learn more about VPC peering in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with GameLift Fleets</a>. </p>")
    @as("PeerVpcId")
    peerVpcId: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>Used when peering your GameLift fleet with a VPC, the unique identifier for the AWS
            account that owns the VPC. You can find your account ID in the AWS Management Console under account
            settings. </p>")
    @as("PeerVpcAwsAccountId")
    peerVpcAwsAccountId: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>The name of an AWS CloudWatch metric group to add this fleet to. A metric group is
            used to aggregate the metrics for multiple fleets. You can specify an existing metric
            group name or set a new name to create a new metric group. A fleet can be included in
            only one metric group at a time. </p>")
    @as("MetricGroups")
    metricGroups: option<metricGroupList>,
    @ocaml.doc("<p>A policy that limits the number of game sessions that an individual player can create
            on instances in this fleet within a specified span of time.</p>")
    @as("ResourceCreationLimitPolicy")
    resourceCreationLimitPolicy: option<resourceCreationLimitPolicy>,
    @ocaml.doc("<p>Instructions for how to launch and maintain server processes on instances in the
            fleet. The runtime configuration defines one or more server process configurations, each
            identifying a build executable or Realtime script file and the number of processes of
            that type to run concurrently. </p>
        <note>
            <p>The <code>RuntimeConfiguration</code> parameter is required unless the fleet is
                being configured using the older parameters <code>ServerLaunchPath</code> and
                    <code>ServerLaunchParameters</code>, which are still supported for backward
                compatibility.</p>
        </note>")
    @as("RuntimeConfiguration")
    runtimeConfiguration: option<runtimeConfiguration>,
    @ocaml.doc("<p>The status of termination protection for active game sessions on the fleet. By
            default, this property is set to <code>NoProtection</code>. You can also set game
            session protection for an individual game session by calling <a>UpdateGameSession</a>.</p>
        <ul>
            <li>
                <p>
                    <b>NoProtection</b> - Game sessions can be terminated
                    during active gameplay as a result of a scale-down event. </p>
            </li>
            <li>
                <p>
                    <b>FullProtection</b> - Game sessions in
                        <code>ACTIVE</code> status cannot be terminated during a scale-down
                    event.</p>
            </li>
         </ul>")
    @as("NewGameSessionProtectionPolicy")
    newGameSessionProtectionPolicy: option<protectionPolicy>,
    @ocaml.doc("<p>The allowed IP address ranges and port settings that allow inbound traffic to access
            game sessions on this fleet. If the fleet is hosting a custom game build, this property
            must be set before players can connect to game sessions. For Realtime Servers fleets, GameLift
            automatically sets TCP and UDP ranges. </p>")
    @as("EC2InboundPermissions")
    ec2InboundPermissions: option<ipPermissionsList>,
    @ocaml.doc("<p>The GameLift-supported EC2 instance type to use for all fleet instances. Instance
            type determines the computing resources that will be used to host your game servers,
            including CPU, memory, storage, and networking capacity. See <a href=\"http://aws.amazon.com/ec2/instance-types/\">Amazon EC2 Instance Types</a> for detailed descriptions
            of EC2 instance types.</p>")
    @as("EC2InstanceType")
    ec2InstanceType: ec2InstanceType,
    @ocaml.doc("<p>
            <b>This parameter is no longer used.</b> To specify where
            GameLift should store log files once a server process shuts down, use the GameLift server
            API <code>ProcessReady()</code> and specify one or more directory paths in
                <code>logParameters</code>. See more information in the <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process\">Server API Reference</a>. </p>")
    @as("LogPaths")
    logPaths: option<stringList>,
    @ocaml.doc("<p>
            <b>This parameter is no longer used.</b> Specify server
            launch parameters using the <code>RuntimeConfiguration</code> parameter. Requests that
            use this parameter instead continue to be valid.</p>")
    @as("ServerLaunchParameters")
    serverLaunchParameters: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>
            <b>This parameter is no longer used.</b> Specify a server
            launch path using the <code>RuntimeConfiguration</code> parameter. Requests that use
            this parameter instead continue to be valid.</p>")
    @as("ServerLaunchPath")
    serverLaunchPath: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>The unique identifier for a Realtime configuration script to be deployed on fleet
            instances. You can use either the script ID or ARN. Scripts must be uploaded to GameLift
            prior to creating the fleet. This fleet property cannot be changed later.</p>")
    @as("ScriptId")
    scriptId: option<scriptIdOrArn>,
    @ocaml.doc("<p>The unique identifier for a custom game server build to be deployed on fleet
            instances. You can use either the build ID or ARN. The build must be uploaded to GameLift
            and in <code>READY</code> status. This fleet property cannot be changed later.</p>")
    @as("BuildId")
    buildId: option<buildIdOrArn>,
    @ocaml.doc("<p>A human-readable description of the fleet.</p>") @as("Description")
    description: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>"
    )
    @as("Name")
    name: nonZeroAndMaxString,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>The fleet's locations and life-cycle status of each location. For new fleets, the
            status of all locations is set to <code>NEW</code>. During fleet creation, GameLift
            updates each location status as instances are deployed there and prepared for game
            hosting. This list includes an entry for the fleet's home Region. For fleets with no
            remote locations, only one entry, representing the home Region, is returned.</p>")
    @as("LocationStates")
    locationStates: option<locationStateList>,
    @ocaml.doc("<p>The properties for the new fleet, including the current status. All fleets are placed
            in <code>NEW</code> status on creation. </p>")
    @as("FleetAttributes")
    fleetAttributes: option<fleetAttributes>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "CreateFleetCommand"
  let make = (
    ~ec2InstanceType,
    ~name,
    ~tags=?,
    ~locations=?,
    ~certificateConfiguration=?,
    ~instanceRoleArn=?,
    ~fleetType=?,
    ~peerVpcId=?,
    ~peerVpcAwsAccountId=?,
    ~metricGroups=?,
    ~resourceCreationLimitPolicy=?,
    ~runtimeConfiguration=?,
    ~newGameSessionProtectionPolicy=?,
    ~ec2InboundPermissions=?,
    ~logPaths=?,
    ~serverLaunchParameters=?,
    ~serverLaunchPath=?,
    ~scriptId=?,
    ~buildId=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      locations: locations,
      certificateConfiguration: certificateConfiguration,
      instanceRoleArn: instanceRoleArn,
      fleetType: fleetType,
      peerVpcId: peerVpcId,
      peerVpcAwsAccountId: peerVpcAwsAccountId,
      metricGroups: metricGroups,
      resourceCreationLimitPolicy: resourceCreationLimitPolicy,
      runtimeConfiguration: runtimeConfiguration,
      newGameSessionProtectionPolicy: newGameSessionProtectionPolicy,
      ec2InboundPermissions: ec2InboundPermissions,
      ec2InstanceType: ec2InstanceType,
      logPaths: logPaths,
      serverLaunchParameters: serverLaunchParameters,
      serverLaunchPath: serverLaunchPath,
      scriptId: scriptId,
      buildId: buildId,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchGameSessions = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. The maximum number of results returned is 20, even if this value is not set
            or is set higher than 20. </p>")
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>Instructions on how to sort the search results. If no sort expression is included,
            the request returns results in random order. A sort expression consists of the following
            elements:</p>
        <ul>
            <li>
                <p>
                    <b>Operand</b> -- Name of a game session attribute.
                    Valid values are <code>gameSessionName</code>, <code>gameSessionId</code>,
                        <code>gameSessionProperties</code>, <code>maximumSessions</code>,
                        <code>creationTimeMillis</code>, <code>playerSessionCount</code>,
                        <code>hasAvailablePlayerSessions</code>.</p>
            </li>
            <li>
                <p>
                    <b>Order</b> -- Valid sort orders are <code>ASC</code>
                    (ascending) and <code>DESC</code> (descending).</p>
            </li>
         </ul>
        <p>For example, this sort expression returns the oldest active sessions first:
                <code>\"SortExpression\": \"creationTimeMillis ASC\"</code>. Results with a null value
            for the sort operand are returned at the end of the list.</p>")
    @as("SortExpression")
    sortExpression: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>String containing the search criteria for the session search. If no filter
            expression is included, the request returns results for all game sessions in the fleet
            that are in <code>ACTIVE</code> status.</p>
        <p>A filter expression can contain one or multiple conditions. Each condition consists
            of the following:</p>
        <ul>
            <li>
                <p>
                  <b>Operand</b> -- Name of a game session
                    attribute. Valid values are <code>gameSessionName</code>,
                        <code>gameSessionId</code>, <code>gameSessionProperties</code>,
                        <code>maximumSessions</code>, <code>creationTimeMillis</code>,
                        <code>playerSessionCount</code>,
                    <code>hasAvailablePlayerSessions</code>.</p>
            </li>
            <li>
                <p>
                  <b>Comparator</b> -- Valid comparators are:
                        <code>=</code>, <code><></code>, <code><</code>, <code>></code>,
                        <code><=</code>, <code>>=</code>. </p>
            </li>
            <li>
                <p>
                  <b>Value</b> -- Value to be searched for. Values
                    may be numbers, boolean values (true/false) or strings depending on the operand.
                    String values are case sensitive and must be enclosed in single quotes. Special
                    characters must be escaped. Boolean and string values can only be used with the
                    comparators <code>=</code> and <code><></code>. For example, the following
                    filter expression searches on <code>gameSessionName</code>:
                        \"<code>FilterExpression\": \"gameSessionName = 'Matt\\\\'s Awesome Game
                        1'\"</code>. </p>
            </li>
         </ul>
        <p>To chain multiple conditions in a single expression, use the logical keywords
                <code>AND</code>, <code>OR</code>, and <code>NOT</code> and parentheses as needed.
            For example: <code>x AND y AND NOT z</code>, <code>NOT (x OR y)</code>.</p>
        <p>Session search evaluates conditions from left to right using the following
            precedence rules:</p>
        <ol>
            <li>
                <p>
                    <code>=</code>, <code><></code>, <code><</code>, <code>></code>,
                        <code><=</code>, <code>>=</code>
                </p>
            </li>
            <li>
                <p>Parentheses</p>
            </li>
            <li>
                <p>NOT</p>
            </li>
            <li>
                <p>AND</p>
            </li>
            <li>
                <p>OR</p>
            </li>
         </ol>
        <p>For example, this filter expression retrieves game sessions hosting at least ten
            players that have an open player slot: <code>\"maximumSessions>=10 AND
                hasAvailablePlayerSessions=true\"</code>. </p>")
    @as("FilterExpression")
    filterExpression: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A fleet location to search for game sessions. You can specify a fleet's home Region or
            a remote location. Use the AWS Region code format, such as <code>us-west-2</code>. </p>
        <p> </p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc("<p>A unique identifier for the alias associated with the fleet to search for active game sessions. You can use either
            the alias ID or ARN value. Each request must reference either a fleet ID or alias ID,
            but not both.</p>")
    @as("AliasId")
    aliasId: option<aliasIdOrArn>,
    @ocaml.doc("<p>A unique identifier for the fleet to search for active game sessions. You can use either the fleet ID or ARN
            value. Each request must reference either a fleet ID or alias ID, but not both.</p>")
    @as("FleetId")
    fleetId: option<fleetIdOrArn>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of objects containing game session properties for each session that
            matches the request.</p>")
    @as("GameSessions")
    gameSessions: option<gameSessionList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "SearchGameSessionsCommand"
  let make = (
    ~nextToken=?,
    ~limit=?,
    ~sortExpression=?,
    ~filterExpression=?,
    ~location=?,
    ~aliasId=?,
    ~fleetId=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      limit: limit,
      sortExpression: sortExpression,
      filterExpression: filterExpression,
      location: location,
      aliasId: aliasId,
      fleetId: fleetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGameServerGroups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
  }
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of game server group objects that match the request.</p>")
    @as("GameServerGroups")
    gameServerGroups: option<gameServerGroups>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "ListGameServerGroupsCommand"
  let make = (~nextToken=?, ~limit=?, ()) => new({nextToken: nextToken, limit: limit})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMatchmakingConfigurations = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is limited to 10.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>A unique identifier for the matchmaking rule set. You can use either the rule set name or ARN value. Use this parameter to
            retrieve all matchmaking configurations that use this rule set.</p>")
    @as("RuleSetName")
    ruleSetName: option<matchmakingRuleSetName>,
    @ocaml.doc("<p>A unique identifier for the matchmaking configuration(s) to retrieve. You can use either the configuration name or ARN value. To
            request all existing configurations, leave this parameter empty.</p>")
    @as("Names")
    names: option<matchmakingConfigurationNameList>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of requested matchmaking configurations.</p>") @as("Configurations")
    configurations: option<matchmakingConfigurationList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeMatchmakingConfigurationsCommand"
  let make = (~nextToken=?, ~limit=?, ~ruleSetName=?, ~names=?, ()) =>
    new({nextToken: nextToken, limit: limit, ruleSetName: ruleSetName, names: names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameSessions = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>Game session status to filter results on. You can filter on the following states:
                <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code>, and
                <code>TERMINATING</code>. The last two are transitory and used for only very brief
            periods of time. </p>")
    @as("StatusFilter")
    statusFilter: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A fleet location to get game session details for. You can specify a fleet's home
            Region or a remote location. Use the AWS Region code format, such as
                <code>us-west-2</code>. </p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc("<p>A unique identifier for the alias associated with the fleet to retrieve game sessions for. You can use either the
            alias ID or ARN value.</p>")
    @as("AliasId")
    aliasId: option<aliasIdOrArn>,
    @ocaml.doc("<p>A unique identifier for the game session to retrieve. </p>") @as("GameSessionId")
    gameSessionId: option<arnStringModel>,
    @ocaml.doc(
      "<p>A unique identifier for the fleet to retrieve game sessions for. You can use either the fleet ID or ARN value. </p>"
    )
    @as("FleetId")
    fleetId: option<fleetIdOrArn>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of properties for each game session that matches the request.</p>")
    @as("GameSessions")
    gameSessions: option<gameSessionList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeGameSessionsCommand"
  let make = (
    ~nextToken=?,
    ~limit=?,
    ~statusFilter=?,
    ~location=?,
    ~aliasId=?,
    ~gameSessionId=?,
    ~fleetId=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      limit: limit,
      statusFilter: statusFilter,
      location: location,
      aliasId: aliasId,
      gameSessionId: gameSessionId,
      fleetId: fleetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameSessionQueues = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. You can request up to 50 results.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>A list of queue names to retrieve information for. You can use either the queue ID or
            ARN value. To request settings for all queues, leave this parameter empty. </p>")
    @as("Names")
    names: option<gameSessionQueueNameOrArnList>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of objects that describe the requested game session queues.</p>")
    @as("GameSessionQueues")
    gameSessionQueues: option<gameSessionQueueList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeGameSessionQueuesCommand"
  let make = (~nextToken=?, ~limit=?, ~names=?, ()) =>
    new({nextToken: nextToken, limit: limit, names: names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGameSessionDetails = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc(
      "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
    )
    @as("Limit")
    limit: option<positiveInteger>,
    @ocaml.doc("<p>Game session status to filter results on. Possible game session statuses include
                <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code> and
                <code>TERMINATING</code> (the last two are transitory). </p>")
    @as("StatusFilter")
    statusFilter: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A fleet location to get game sessions for. You can specify a fleet's home Region or a
            remote location. Use the AWS Region code format, such as <code>us-west-2</code>. </p>")
    @as("Location")
    location: option<locationStringModel>,
    @ocaml.doc("<p>A unique identifier for the alias associated with the fleet to retrieve all game sessions for. You can use either
            the alias ID or ARN value.</p>")
    @as("AliasId")
    aliasId: option<aliasIdOrArn>,
    @ocaml.doc("<p>A unique identifier for the game session to retrieve. </p>") @as("GameSessionId")
    gameSessionId: option<arnStringModel>,
    @ocaml.doc("<p>A unique identifier for the fleet to retrieve all game sessions active on the fleet. You can use either the fleet
            ID or ARN value.</p>")
    @as("FleetId")
    fleetId: option<fleetIdOrArn>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
    )
    @as("NextToken")
    nextToken: option<nonZeroAndMaxString>,
    @ocaml.doc("<p>A collection of properties for each game session that matches the request.</p>")
    @as("GameSessionDetails")
    gameSessionDetails: option<gameSessionDetailList>,
  }
  @module("@aws-sdk/client-gamelift") @new
  external new: request => t = "DescribeGameSessionDetailsCommand"
  let make = (
    ~nextToken=?,
    ~limit=?,
    ~statusFilter=?,
    ~location=?,
    ~aliasId=?,
    ~gameSessionId=?,
    ~fleetId=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      limit: limit,
      statusFilter: statusFilter,
      location: location,
      aliasId: aliasId,
      gameSessionId: gameSessionId,
      fleetId: fleetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMatchmaking = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>Information on each player to be matched. This information must include a player
            ID, and may contain player attributes and latency data to be used in the matchmaking
            process. After a successful match, <code>Player</code> objects contain the name of the
            team the player is assigned to.</p>")
    @as("Players")
    players: playerList,
    @ocaml.doc("<p>Name of the matchmaking configuration to use for this request. Matchmaking
            configurations must exist in the same Region as this request. You can use either the
            configuration name or ARN value.</p>")
    @as("ConfigurationName")
    configurationName: matchmakingConfigurationName,
    @ocaml.doc("<p>A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift will generate one in the form of
            a UUID. Use this identifier to track the matchmaking ticket status and retrieve match
            results.</p>")
    @as("TicketId")
    ticketId: option<matchmakingIdStringModel>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Ticket representing the matchmaking request. This object include the information
            included in the request, ticket status, and match results as generated during the
            matchmaking process.</p>")
    @as("MatchmakingTicket")
    matchmakingTicket: option<matchmakingTicket>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "StartMatchmakingCommand"
  let make = (~players, ~configurationName, ~ticketId=?, ()) =>
    new({players: players, configurationName: configurationName, ticketId: ticketId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMatchBackfill = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc("<p>Match information on all players that are currently assigned to the game session.
            This information is used by the matchmaker to find new players and add them to the
            existing game.</p>
        <ul>
            <li>
                <p>PlayerID, PlayerAttributes, Team -- This information is maintained in the
                    <a>GameSession</a> object, <code>MatchmakerData</code> property,
                    for all players who are currently assigned to the game session. The matchmaker
                    data is in JSON syntax, formatted as a string. For more details, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data\">
                        Match Data</a>. </p>
            </li>
            <li>
                <p>LatencyInMs -- If the matchmaker uses player latency, include a latency
                    value, in milliseconds, for the Region that the game session is currently in. Do
                    not include latency values for any other Region.</p>
            </li>
         </ul>")
    @as("Players")
    players: playerList,
    @ocaml.doc("<p>A unique identifier for the game session. Use the game session ID. When using FlexMatch as a standalone matchmaking
            solution, this parameter is not needed. </p>")
    @as("GameSessionArn")
    gameSessionArn: option<arnStringModel>,
    @ocaml.doc("<p>Name of the matchmaker to use for this request. You can use either the configuration
            name or ARN value. The ARN of the matchmaker that was used with the original game
            session is listed in the <a>GameSession</a> object,
                <code>MatchmakerData</code> property.</p>")
    @as("ConfigurationName")
    configurationName: matchmakingConfigurationName,
    @ocaml.doc("<p>A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift will generate one in the form of
            a UUID. Use this identifier to track the match backfill ticket status and retrieve match
            results.</p>")
    @as("TicketId")
    ticketId: option<matchmakingIdStringModel>,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>Ticket representing the backfill matchmaking request. This object includes the
            information in the request, ticket status, and match results as generated during the
            matchmaking process.</p>")
    @as("MatchmakingTicket")
    matchmakingTicket: option<matchmakingTicket>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "StartMatchBackfillCommand"
  let make = (~players, ~configurationName, ~gameSessionArn=?, ~ticketId=?, ()) =>
    new({
      players: players,
      gameSessionArn: gameSessionArn,
      configurationName: configurationName,
      ticketId: ticketId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMatchmaking = {
  type t
  @ocaml.doc("<p>Represents the input for a request operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for a matchmaking ticket. You can include up to 10 ID values. </p>"
    )
    @as("TicketIds")
    ticketIds: matchmakingIdList,
  }
  @ocaml.doc("<p>Represents the returned data in response to a request operation.</p>")
  type response = {
    @ocaml.doc("<p>A collection of existing matchmaking ticket objects matching the request.</p>")
    @as("TicketList")
    ticketList: option<matchmakingTicketList>,
  }
  @module("@aws-sdk/client-gamelift") @new external new: request => t = "DescribeMatchmakingCommand"
  let make = (~ticketIds, ()) => new({ticketIds: ticketIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
