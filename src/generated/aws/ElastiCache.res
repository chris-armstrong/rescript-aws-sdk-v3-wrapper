type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-elasticache") @new
external createClient: unit => awsServiceClient = "ElastiCacheClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type userName = string
type userId = string
type userGroupId = string
type updateActionStatus = [
  | @as("not-applicable") #Not_Applicable
  | @as("scheduled") #Scheduled
  | @as("scheduling") #Scheduling
  | @as("complete") #Complete
  | @as("stopped") #Stopped
  | @as("stopping") #Stopping
  | @as("in-progress") #In_Progress
  | @as("waiting-to-start") #Waiting_To_Start
  | @as("not-applied") #Not_Applied
]
type tstamp = Js.Date.t
type string_ = string
type sourceType = [
  | @as("user-group") #User_Group
  | @as("user") #User
  | @as("replication-group") #Replication_Group
  | @as("cache-subnet-group") #Cache_Subnet_Group
  | @as("cache-security-group") #Cache_Security_Group
  | @as("cache-parameter-group") #Cache_Parameter_Group
  | @as("cache-cluster") #Cache_Cluster
]
type slaMet = [@as("n/a") #N_A | @as("no") #No | @as("yes") #Yes]
type serviceUpdateType = [@as("security-update") #Security_Update]
type serviceUpdateStatus = [
  | @as("expired") #Expired
  | @as("cancelled") #Cancelled
  | @as("available") #Available
]
type serviceUpdateSeverity = [
  | @as("low") #Low
  | @as("medium") #Medium
  | @as("important") #Important
  | @as("critical") #Critical
]
type pendingAutomaticFailoverStatus = [@as("disabled") #Disabled | @as("enabled") #Enabled]
type outpostMode = [@as("cross-outpost") #Cross_Outpost | @as("single-outpost") #Single_Outpost]
type nodeUpdateStatus = [
  | @as("complete") #Complete
  | @as("stopped") #Stopped
  | @as("stopping") #Stopping
  | @as("in-progress") #In_Progress
  | @as("waiting-to-start") #Waiting_To_Start
  | @as("not-applied") #Not_Applied
]
type nodeUpdateInitiatedBy = [@as("customer") #Customer | @as("system") #System]
type multiAZStatus = [@as("disabled") #Disabled | @as("enabled") #Enabled]
type logType = [@as("slow-log") #Slow_Log]
type logFormat = [@as("json") #Json | @as("text") #Text]
type logDeliveryConfigurationStatus = [
  | @as("error") #Error
  | @as("disabling") #Disabling
  | @as("modifying") #Modifying
  | @as("enabling") #Enabling
  | @as("active") #Active
]
type integerOptional = int
type integer_ = int
type filterValue = string
type filterName = string
type exceptionMessage = string
type engineType = string
type double = float
type destinationType = [
  | @as("kinesis-firehose") #Kinesis_Firehose
  | @as("cloudwatch-logs") #Cloudwatch_Logs
]
type changeType = [@as("requires-reboot") #Requires_Reboot | @as("immediate") #Immediate]
type booleanOptional = bool
type boolean_ = bool
type awsQueryErrorMessage = string
type automaticFailoverStatus = [
  | @as("disabling") #Disabling
  | @as("enabling") #Enabling
  | @as("disabled") #Disabled
  | @as("enabled") #Enabled
]
type authenticationType = [@as("no-password") #No_Password | @as("password") #Password]
type authTokenUpdateStrategyType = [@as("DELETE") #DELETE | @as("ROTATE") #ROTATE | @as("SET") #SET]
type authTokenUpdateStatus = [@as("ROTATING") #ROTATING | @as("SETTING") #SETTING]
type allowedNodeGroupId = string
type accessString = string
type azmode = [@as("cross-az") #Cross_Az | @as("single-az") #Single_Az]
type userIdListInput = array<userId>
type userIdList = array<userId>
type userGroupIdListInput = array<userGroupId>
type userGroupIdList = array<userGroupId>
type updateActionStatusList = array<updateActionStatus>
type unprocessedUpdateAction = {
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorType") errorType: option<string_>,
  @as("ServiceUpdateName") serviceUpdateName: option<string_>,
  @as("CacheClusterId") cacheClusterId: option<string_>,
  @as("ReplicationGroupId") replicationGroupId: option<string_>,
}
type ugreplicationGroupIdList = array<string_>
type timeRangeFilter = {
  @as("EndTime") endTime: option<tstamp>,
  @as("StartTime") startTime: option<tstamp>,
}
type tag = {
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>,
}
type subnetOutpost = {@as("SubnetOutpostArn") subnetOutpostArn: option<string_>}
type subnetIdentifierList = array<string_>
type snapshotArnsList = array<string_>
type slotMigration = {@as("ProgressPercentage") progressPercentage: option<double>}
type serviceUpdateStatusList = array<serviceUpdateStatus>
type serviceUpdate = {
  @as("EstimatedUpdateTime") estimatedUpdateTime: option<string_>,
  @as("AutoUpdateAfterRecommendedApplyByDate")
  autoUpdateAfterRecommendedApplyByDate: option<booleanOptional>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("ServiceUpdateType") serviceUpdateType: option<serviceUpdateType>,
  @as("ServiceUpdateDescription") serviceUpdateDescription: option<string_>,
  @as("ServiceUpdateStatus") serviceUpdateStatus: option<serviceUpdateStatus>,
  @as("ServiceUpdateRecommendedApplyByDate") serviceUpdateRecommendedApplyByDate: option<tstamp>,
  @as("ServiceUpdateSeverity") serviceUpdateSeverity: option<serviceUpdateSeverity>,
  @as("ServiceUpdateEndDate") serviceUpdateEndDate: option<tstamp>,
  @as("ServiceUpdateReleaseDate") serviceUpdateReleaseDate: option<tstamp>,
  @as("ServiceUpdateName") serviceUpdateName: option<string_>,
}
type securityGroupMembership = {
  @as("Status") status: option<string_>,
  @as("SecurityGroupId") securityGroupId: option<string_>,
}
type securityGroupIdsList = array<string_>
type replicationGroupOutpostArnList = array<string_>
type replicationGroupIdList = array<string_>
type removeReplicasList = array<string_>
type recurringCharge = {
  @as("RecurringChargeFrequency") recurringChargeFrequency: option<string_>,
  @as("RecurringChargeAmount") recurringChargeAmount: option<double>,
}
type processedUpdateAction = {
  @as("UpdateActionStatus") updateActionStatus: option<updateActionStatus>,
  @as("ServiceUpdateName") serviceUpdateName: option<string_>,
  @as("CacheClusterId") cacheClusterId: option<string_>,
  @as("ReplicationGroupId") replicationGroupId: option<string_>,
}
type preferredOutpostArnList = array<string_>
type preferredAvailabilityZoneList = array<string_>
type passwordListInput = array<string_>
type parameterNameValue = {
  @as("ParameterValue") parameterValue: option<string_>,
  @as("ParameterName") parameterName: option<string_>,
}
type parameter = {
  @as("ChangeType") changeType: option<changeType>,
  @as("MinimumEngineVersion") minimumEngineVersion: option<string_>,
  @as("IsModifiable") isModifiable: option<boolean_>,
  @as("AllowedValues") allowedValues: option<string_>,
  @as("DataType") dataType: option<string_>,
  @as("Source") source: option<string_>,
  @as("Description") description: option<string_>,
  @as("ParameterValue") parameterValue: option<string_>,
  @as("ParameterName") parameterName: option<string_>,
}
type outpostArnsList = array<string_>
type notificationConfiguration = {
  @as("TopicStatus") topicStatus: option<string_>,
  @as("TopicArn") topicArn: option<string_>,
}
type nodeTypeList = array<string_>
type nodeGroupsToRetainList = array<allowedNodeGroupId>
type nodeGroupsToRemoveList = array<allowedNodeGroupId>
type nodeGroupMemberUpdateStatus = {
  @as("NodeUpdateStatusModifiedDate") nodeUpdateStatusModifiedDate: option<tstamp>,
  @as("NodeUpdateInitiatedDate") nodeUpdateInitiatedDate: option<tstamp>,
  @as("NodeUpdateInitiatedBy") nodeUpdateInitiatedBy: option<nodeUpdateInitiatedBy>,
  @as("NodeUpdateEndDate") nodeUpdateEndDate: option<tstamp>,
  @as("NodeUpdateStartDate") nodeUpdateStartDate: option<tstamp>,
  @as("NodeDeletionDate") nodeDeletionDate: option<tstamp>,
  @as("NodeUpdateStatus") nodeUpdateStatus: option<nodeUpdateStatus>,
  @as("CacheNodeId") cacheNodeId: option<string_>,
  @as("CacheClusterId") cacheClusterId: option<string_>,
}
type kinesisFirehoseDestinationDetails = {@as("DeliveryStream") deliveryStream: option<string_>}
type keyList = array<string_>
type globalReplicationGroupMember = {
  @as("Status") status: option<string_>,
  @as("AutomaticFailover") automaticFailover: option<automaticFailoverStatus>,
  @as("Role") role: option<string_>,
  @as("ReplicationGroupRegion") replicationGroupRegion: option<string_>,
  @as("ReplicationGroupId") replicationGroupId: option<string_>,
}
type globalReplicationGroupInfo = {
  @as("GlobalReplicationGroupMemberRole") globalReplicationGroupMemberRole: option<string_>,
  @as("GlobalReplicationGroupId") globalReplicationGroupId: option<string_>,
}
type globalNodeGroupIdList = array<string_>
type globalNodeGroup = {
  @as("Slots") slots: option<string_>,
  @as("GlobalNodeGroupId") globalNodeGroupId: option<string_>,
}
type filterValueList = array<filterValue>
type event = {
  @as("Date") date: option<tstamp>,
  @as("Message") message: option<string_>,
  @as("SourceType") sourceType: option<sourceType>,
  @as("SourceIdentifier") sourceIdentifier: option<string_>,
}
type endpoint = {
  @as("Port") port: option<integer_>,
  @as("Address") address: option<string_>,
}
type ec2SecurityGroup = {
  @as("EC2SecurityGroupOwnerId") ec2SecurityGroupOwnerId: option<string_>,
  @as("EC2SecurityGroupName") ec2SecurityGroupName: option<string_>,
  @as("Status") status: option<string_>,
}
type customerNodeEndpoint = {
  @as("Port") port: option<integerOptional>,
  @as("Address") address: option<string_>,
}
type clusterIdList = array<string_>
type cloudWatchLogsDestinationDetails = {@as("LogGroup") logGroup: option<string_>}
type cacheSecurityGroupNameList = array<string_>
type cacheSecurityGroupMembership = {
  @as("Status") status: option<string_>,
  @as("CacheSecurityGroupName") cacheSecurityGroupName: option<string_>,
}
type cacheParameterGroup = {
  @as("ARN") arn: option<string_>,
  @as("IsGlobal") isGlobal: option<boolean_>,
  @as("Description") description: option<string_>,
  @as("CacheParameterGroupFamily") cacheParameterGroupFamily: option<string_>,
  @as("CacheParameterGroupName") cacheParameterGroupName: option<string_>,
}
type cacheNodeUpdateStatus = {
  @as("NodeUpdateStatusModifiedDate") nodeUpdateStatusModifiedDate: option<tstamp>,
  @as("NodeUpdateInitiatedDate") nodeUpdateInitiatedDate: option<tstamp>,
  @as("NodeUpdateInitiatedBy") nodeUpdateInitiatedBy: option<nodeUpdateInitiatedBy>,
  @as("NodeUpdateEndDate") nodeUpdateEndDate: option<tstamp>,
  @as("NodeUpdateStartDate") nodeUpdateStartDate: option<tstamp>,
  @as("NodeDeletionDate") nodeDeletionDate: option<tstamp>,
  @as("NodeUpdateStatus") nodeUpdateStatus: option<nodeUpdateStatus>,
  @as("CacheNodeId") cacheNodeId: option<string_>,
}
type cacheNodeTypeSpecificValue = {
  @as("Value") value: option<string_>,
  @as("CacheNodeType") cacheNodeType: option<string_>,
}
type cacheNodeIdsList = array<string_>
type cacheEngineVersion = {
  @as("CacheEngineVersionDescription") cacheEngineVersionDescription: option<string_>,
  @as("CacheEngineDescription") cacheEngineDescription: option<string_>,
  @as("CacheParameterGroupFamily") cacheParameterGroupFamily: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
}
type cacheClusterIdList = array<string_>
type availabilityZonesList = array<string_>
type availabilityZone = {@as("Name") name: option<string_>}
type authentication = {
  @as("PasswordCount") passwordCount: option<integerOptional>,
  @as("Type") type_: option<authenticationType>,
}
type userGroupsUpdateStatus = {
  @as("UserGroupIdsToRemove") userGroupIdsToRemove: option<userGroupIdList>,
  @as("UserGroupIdsToAdd") userGroupIdsToAdd: option<userGroupIdList>,
}
type userGroupPendingChanges = {
  @as("UserIdsToAdd") userIdsToAdd: option<userIdList>,
  @as("UserIdsToRemove") userIdsToRemove: option<userIdList>,
}
type user = {
  @as("ARN") arn: option<string_>,
  @as("Authentication") authentication: option<authentication>,
  @as("UserGroupIds") userGroupIds: option<userGroupIdList>,
  @as("AccessString") accessString: option<string_>,
  @as("Engine") engine: option<engineType>,
  @as("Status") status: option<string_>,
  @as("UserName") userName: option<string_>,
  @as("UserId") userId: option<string_>,
}
type unprocessedUpdateActionList = array<unprocessedUpdateAction>
type tagList_ = array<tag>
type subnet = {
  @as("SubnetOutpost") subnetOutpost: option<subnetOutpost>,
  @as("SubnetAvailabilityZone") subnetAvailabilityZone: option<availabilityZone>,
  @as("SubnetIdentifier") subnetIdentifier: option<string_>,
}
type serviceUpdateList = array<serviceUpdate>
type securityGroupMembershipList = array<securityGroupMembership>
type reshardingStatus = {@as("SlotMigration") slotMigration: option<slotMigration>}
type reshardingConfiguration = {
  @as("PreferredAvailabilityZones") preferredAvailabilityZones: option<availabilityZonesList>,
  @as("NodeGroupId") nodeGroupId: option<allowedNodeGroupId>,
}
type recurringChargeList = array<recurringCharge>
type processedUpdateActionList = array<processedUpdateAction>
type parametersList = array<parameter>
type parameterNameValueList = array<parameterNameValue>
type nodeGroupMemberUpdateStatusList = array<nodeGroupMemberUpdateStatus>
type nodeGroupMember = {
  @as("CurrentRole") currentRole: option<string_>,
  @as("PreferredOutpostArn") preferredOutpostArn: option<string_>,
  @as("PreferredAvailabilityZone") preferredAvailabilityZone: option<string_>,
  @as("ReadEndpoint") readEndpoint: option<endpoint>,
  @as("CacheNodeId") cacheNodeId: option<string_>,
  @as("CacheClusterId") cacheClusterId: option<string_>,
}
type nodeGroupConfiguration = {
  @as("ReplicaOutpostArns") replicaOutpostArns: option<outpostArnsList>,
  @as("PrimaryOutpostArn") primaryOutpostArn: option<string_>,
  @as("ReplicaAvailabilityZones") replicaAvailabilityZones: option<availabilityZonesList>,
  @as("PrimaryAvailabilityZone") primaryAvailabilityZone: option<string_>,
  @as("ReplicaCount") replicaCount: option<integerOptional>,
  @as("Slots") slots: option<string_>,
  @as("NodeGroupId") nodeGroupId: option<allowedNodeGroupId>,
}
type globalReplicationGroupMemberList = array<globalReplicationGroupMember>
type globalNodeGroupList = array<globalNodeGroup>
type filter = {
  @as("Values") values: filterValueList,
  @as("Name") name: filterName,
}
type eventList = array<event>
type ec2SecurityGroupList = array<ec2SecurityGroup>
type destinationDetails = {
  @as("KinesisFirehoseDetails") kinesisFirehoseDetails: option<kinesisFirehoseDestinationDetails>,
  @as("CloudWatchLogsDetails") cloudWatchLogsDetails: option<cloudWatchLogsDestinationDetails>,
}
type customerNodeEndpointList = array<customerNodeEndpoint>
type configureShard = {
  @as("PreferredOutpostArns") preferredOutpostArns: option<preferredOutpostArnList>,
  @as("PreferredAvailabilityZones")
  preferredAvailabilityZones: option<preferredAvailabilityZoneList>,
  @as("NewReplicaCount") newReplicaCount: integer_,
  @as("NodeGroupId") nodeGroupId: allowedNodeGroupId,
}
type cacheSecurityGroupMembershipList = array<cacheSecurityGroupMembership>
type cacheParameterGroupStatus = {
  @as("CacheNodeIdsToReboot") cacheNodeIdsToReboot: option<cacheNodeIdsList>,
  @as("ParameterApplyStatus") parameterApplyStatus: option<string_>,
  @as("CacheParameterGroupName") cacheParameterGroupName: option<string_>,
}
type cacheParameterGroupList = array<cacheParameterGroup>
type cacheNodeUpdateStatusList = array<cacheNodeUpdateStatus>
type cacheNodeTypeSpecificValueList = array<cacheNodeTypeSpecificValue>
type cacheNode = {
  @as("CustomerOutpostArn") customerOutpostArn: option<string_>,
  @as("CustomerAvailabilityZone") customerAvailabilityZone: option<string_>,
  @as("SourceCacheNodeId") sourceCacheNodeId: option<string_>,
  @as("ParameterGroupStatus") parameterGroupStatus: option<string_>,
  @as("Endpoint") endpoint: option<endpoint>,
  @as("CacheNodeCreateTime") cacheNodeCreateTime: option<tstamp>,
  @as("CacheNodeStatus") cacheNodeStatus: option<string_>,
  @as("CacheNodeId") cacheNodeId: option<string_>,
}
type cacheEngineVersionList = array<cacheEngineVersion>
type userList = array<user>
type userGroup = {
  @as("ARN") arn: option<string_>,
  @as("ReplicationGroups") replicationGroups: option<ugreplicationGroupIdList>,
  @as("PendingChanges") pendingChanges: option<userGroupPendingChanges>,
  @as("UserIds") userIds: option<userIdList>,
  @as("Engine") engine: option<engineType>,
  @as("Status") status: option<string_>,
  @as("UserGroupId") userGroupId: option<string_>,
}
type subnetList = array<subnet>
type reshardingConfigurationList = array<reshardingConfiguration>
type reservedCacheNodesOffering = {
  @as("RecurringCharges") recurringCharges: option<recurringChargeList>,
  @as("OfferingType") offeringType: option<string_>,
  @as("ProductDescription") productDescription: option<string_>,
  @as("UsagePrice") usagePrice: option<double>,
  @as("FixedPrice") fixedPrice: option<double>,
  @as("Duration") duration: option<integer_>,
  @as("CacheNodeType") cacheNodeType: option<string_>,
  @as("ReservedCacheNodesOfferingId") reservedCacheNodesOfferingId: option<string_>,
}
type reservedCacheNode = {
  @as("ReservationARN") reservationARN: option<string_>,
  @as("RecurringCharges") recurringCharges: option<recurringChargeList>,
  @as("State") state: option<string_>,
  @as("OfferingType") offeringType: option<string_>,
  @as("ProductDescription") productDescription: option<string_>,
  @as("CacheNodeCount") cacheNodeCount: option<integer_>,
  @as("UsagePrice") usagePrice: option<double>,
  @as("FixedPrice") fixedPrice: option<double>,
  @as("Duration") duration: option<integer_>,
  @as("StartTime") startTime: option<tstamp>,
  @as("CacheNodeType") cacheNodeType: option<string_>,
  @as("ReservedCacheNodesOfferingId") reservedCacheNodesOfferingId: option<string_>,
  @as("ReservedCacheNodeId") reservedCacheNodeId: option<string_>,
}
type replicaConfigurationList = array<configureShard>
type pendingLogDeliveryConfiguration = {
  @as("LogFormat") logFormat: option<logFormat>,
  @as("DestinationDetails") destinationDetails: option<destinationDetails>,
  @as("DestinationType") destinationType: option<destinationType>,
  @as("LogType") logType: option<logType>,
}
type nodeSnapshot = {
  @as("SnapshotCreateTime") snapshotCreateTime: option<tstamp>,
  @as("CacheNodeCreateTime") cacheNodeCreateTime: option<tstamp>,
  @as("CacheSize") cacheSize: option<string_>,
  @as("NodeGroupConfiguration") nodeGroupConfiguration: option<nodeGroupConfiguration>,
  @as("CacheNodeId") cacheNodeId: option<string_>,
  @as("NodeGroupId") nodeGroupId: option<string_>,
  @as("CacheClusterId") cacheClusterId: option<string_>,
}
type nodeGroupUpdateStatus = {
  @as("NodeGroupMemberUpdateStatus")
  nodeGroupMemberUpdateStatus: option<nodeGroupMemberUpdateStatusList>,
  @as("NodeGroupId") nodeGroupId: option<string_>,
}
type nodeGroupMemberList = array<nodeGroupMember>
type nodeGroupConfigurationList = array<nodeGroupConfiguration>
type logDeliveryConfigurationRequest = {
  @as("Enabled") enabled: option<booleanOptional>,
  @as("LogFormat") logFormat: option<logFormat>,
  @as("DestinationDetails") destinationDetails: option<destinationDetails>,
  @as("DestinationType") destinationType: option<destinationType>,
  @as("LogType") logType: option<logType>,
}
type logDeliveryConfiguration = {
  @as("Message") message: option<string_>,
  @as("Status") status: option<logDeliveryConfigurationStatus>,
  @as("LogFormat") logFormat: option<logFormat>,
  @as("DestinationDetails") destinationDetails: option<destinationDetails>,
  @as("DestinationType") destinationType: option<destinationType>,
  @as("LogType") logType: option<logType>,
}
type globalReplicationGroup = {
  @as("ARN") arn: option<string_>,
  @as("AtRestEncryptionEnabled") atRestEncryptionEnabled: option<booleanOptional>,
  @as("TransitEncryptionEnabled") transitEncryptionEnabled: option<booleanOptional>,
  @as("AuthTokenEnabled") authTokenEnabled: option<booleanOptional>,
  @as("GlobalNodeGroups") globalNodeGroups: option<globalNodeGroupList>,
  @as("ClusterEnabled") clusterEnabled: option<booleanOptional>,
  @as("Members") members: option<globalReplicationGroupMemberList>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("CacheNodeType") cacheNodeType: option<string_>,
  @as("Status") status: option<string_>,
  @as("GlobalReplicationGroupDescription") globalReplicationGroupDescription: option<string_>,
  @as("GlobalReplicationGroupId") globalReplicationGroupId: option<string_>,
}
type filterList = array<filter>
type cacheSecurityGroup = {
  @as("ARN") arn: option<string_>,
  @as("EC2SecurityGroups") ec2SecurityGroups: option<ec2SecurityGroupList>,
  @as("Description") description: option<string_>,
  @as("CacheSecurityGroupName") cacheSecurityGroupName: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
}
type cacheNodeTypeSpecificParameter = {
  @as("ChangeType") changeType: option<changeType>,
  @as("CacheNodeTypeSpecificValues")
  cacheNodeTypeSpecificValues: option<cacheNodeTypeSpecificValueList>,
  @as("MinimumEngineVersion") minimumEngineVersion: option<string_>,
  @as("IsModifiable") isModifiable: option<boolean_>,
  @as("AllowedValues") allowedValues: option<string_>,
  @as("DataType") dataType: option<string_>,
  @as("Source") source: option<string_>,
  @as("Description") description: option<string_>,
  @as("ParameterName") parameterName: option<string_>,
}
type cacheNodeList = array<cacheNode>
type userGroupList = array<userGroup>
type reservedCacheNodesOfferingList = array<reservedCacheNodesOffering>
type reservedCacheNodeList = array<reservedCacheNode>
type regionalConfiguration = {
  @as("ReshardingConfiguration") reshardingConfiguration: reshardingConfigurationList,
  @as("ReplicationGroupRegion") replicationGroupRegion: string_,
  @as("ReplicationGroupId") replicationGroupId: string_,
}
type pendingLogDeliveryConfigurationList = array<pendingLogDeliveryConfiguration>
type nodeSnapshotList = array<nodeSnapshot>
type nodeGroupUpdateStatusList = array<nodeGroupUpdateStatus>
type nodeGroup = {
  @as("NodeGroupMembers") nodeGroupMembers: option<nodeGroupMemberList>,
  @as("Slots") slots: option<string_>,
  @as("ReaderEndpoint") readerEndpoint: option<endpoint>,
  @as("PrimaryEndpoint") primaryEndpoint: option<endpoint>,
  @as("Status") status: option<string_>,
  @as("NodeGroupId") nodeGroupId: option<string_>,
}
type logDeliveryConfigurationRequestList = array<logDeliveryConfigurationRequest>
type logDeliveryConfigurationList = array<logDeliveryConfiguration>
type globalReplicationGroupList = array<globalReplicationGroup>
type cacheSubnetGroup = {
  @as("ARN") arn: option<string_>,
  @as("Subnets") subnets: option<subnetList>,
  @as("VpcId") vpcId: option<string_>,
  @as("CacheSubnetGroupDescription") cacheSubnetGroupDescription: option<string_>,
  @as("CacheSubnetGroupName") cacheSubnetGroupName: option<string_>,
}
type cacheSecurityGroups = array<cacheSecurityGroup>
type cacheNodeTypeSpecificParametersList = array<cacheNodeTypeSpecificParameter>
type updateAction = {
  @as("Engine") engine: option<string_>,
  @as("EstimatedUpdateTime") estimatedUpdateTime: option<string_>,
  @as("CacheNodeUpdateStatus") cacheNodeUpdateStatus: option<cacheNodeUpdateStatusList>,
  @as("NodeGroupUpdateStatus") nodeGroupUpdateStatus: option<nodeGroupUpdateStatusList>,
  @as("SlaMet") slaMet: option<slaMet>,
  @as("UpdateActionStatusModifiedDate") updateActionStatusModifiedDate: option<tstamp>,
  @as("NodesUpdated") nodesUpdated: option<string_>,
  @as("UpdateActionStatus") updateActionStatus: option<updateActionStatus>,
  @as("UpdateActionAvailableDate") updateActionAvailableDate: option<tstamp>,
  @as("ServiceUpdateType") serviceUpdateType: option<serviceUpdateType>,
  @as("ServiceUpdateRecommendedApplyByDate") serviceUpdateRecommendedApplyByDate: option<tstamp>,
  @as("ServiceUpdateStatus") serviceUpdateStatus: option<serviceUpdateStatus>,
  @as("ServiceUpdateSeverity") serviceUpdateSeverity: option<serviceUpdateSeverity>,
  @as("ServiceUpdateReleaseDate") serviceUpdateReleaseDate: option<tstamp>,
  @as("ServiceUpdateName") serviceUpdateName: option<string_>,
  @as("CacheClusterId") cacheClusterId: option<string_>,
  @as("ReplicationGroupId") replicationGroupId: option<string_>,
}
type snapshot = {
  @as("ARN") arn: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("NodeSnapshots") nodeSnapshots: option<nodeSnapshotList>,
  @as("AutomaticFailover") automaticFailover: option<automaticFailoverStatus>,
  @as("NumNodeGroups") numNodeGroups: option<integerOptional>,
  @as("SnapshotWindow") snapshotWindow: option<string_>,
  @as("SnapshotRetentionLimit") snapshotRetentionLimit: option<integerOptional>,
  @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<boolean_>,
  @as("VpcId") vpcId: option<string_>,
  @as("CacheSubnetGroupName") cacheSubnetGroupName: option<string_>,
  @as("CacheParameterGroupName") cacheParameterGroupName: option<string_>,
  @as("Port") port: option<integerOptional>,
  @as("TopicArn") topicArn: option<string_>,
  @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
  @as("CacheClusterCreateTime") cacheClusterCreateTime: option<tstamp>,
  @as("PreferredOutpostArn") preferredOutpostArn: option<string_>,
  @as("PreferredAvailabilityZone") preferredAvailabilityZone: option<string_>,
  @as("NumCacheNodes") numCacheNodes: option<integerOptional>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("CacheNodeType") cacheNodeType: option<string_>,
  @as("SnapshotSource") snapshotSource: option<string_>,
  @as("SnapshotStatus") snapshotStatus: option<string_>,
  @as("CacheClusterId") cacheClusterId: option<string_>,
  @as("ReplicationGroupDescription") replicationGroupDescription: option<string_>,
  @as("ReplicationGroupId") replicationGroupId: option<string_>,
  @as("SnapshotName") snapshotName: option<string_>,
}
type replicationGroupPendingModifiedValues = {
  @as("LogDeliveryConfigurations")
  logDeliveryConfigurations: option<pendingLogDeliveryConfigurationList>,
  @as("UserGroups") userGroups: option<userGroupsUpdateStatus>,
  @as("AuthTokenStatus") authTokenStatus: option<authTokenUpdateStatus>,
  @as("Resharding") resharding: option<reshardingStatus>,
  @as("AutomaticFailoverStatus") automaticFailoverStatus: option<pendingAutomaticFailoverStatus>,
  @as("PrimaryClusterId") primaryClusterId: option<string_>,
}
type regionalConfigurationList = array<regionalConfiguration>
type pendingModifiedValues = {
  @as("LogDeliveryConfigurations")
  logDeliveryConfigurations: option<pendingLogDeliveryConfigurationList>,
  @as("AuthTokenStatus") authTokenStatus: option<authTokenUpdateStatus>,
  @as("CacheNodeType") cacheNodeType: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("CacheNodeIdsToRemove") cacheNodeIdsToRemove: option<cacheNodeIdsList>,
  @as("NumCacheNodes") numCacheNodes: option<integerOptional>,
}
type nodeGroupList = array<nodeGroup>
type engineDefaults = {
  @as("CacheNodeTypeSpecificParameters")
  cacheNodeTypeSpecificParameters: option<cacheNodeTypeSpecificParametersList>,
  @as("Parameters") parameters: option<parametersList>,
  @as("Marker") marker: option<string_>,
  @as("CacheParameterGroupFamily") cacheParameterGroupFamily: option<string_>,
}
type cacheSubnetGroups = array<cacheSubnetGroup>
type updateActionList = array<updateAction>
type snapshotList = array<snapshot>
type replicationGroup = {
  @as("LogDeliveryConfigurations") logDeliveryConfigurations: option<logDeliveryConfigurationList>,
  @as("UserGroupIds") userGroupIds: option<userGroupIdList>,
  @as("ARN") arn: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("MemberClustersOutpostArns")
  memberClustersOutpostArns: option<replicationGroupOutpostArnList>,
  @as("AtRestEncryptionEnabled") atRestEncryptionEnabled: option<booleanOptional>,
  @as("TransitEncryptionEnabled") transitEncryptionEnabled: option<booleanOptional>,
  @as("AuthTokenLastModifiedDate") authTokenLastModifiedDate: option<tstamp>,
  @as("AuthTokenEnabled") authTokenEnabled: option<booleanOptional>,
  @as("CacheNodeType") cacheNodeType: option<string_>,
  @as("ClusterEnabled") clusterEnabled: option<booleanOptional>,
  @as("SnapshotWindow") snapshotWindow: option<string_>,
  @as("SnapshotRetentionLimit") snapshotRetentionLimit: option<integerOptional>,
  @as("ConfigurationEndpoint") configurationEndpoint: option<endpoint>,
  @as("MultiAZ") multiAZ: option<multiAZStatus>,
  @as("AutomaticFailover") automaticFailover: option<automaticFailoverStatus>,
  @as("SnapshottingClusterId") snapshottingClusterId: option<string_>,
  @as("NodeGroups") nodeGroups: option<nodeGroupList>,
  @as("MemberClusters") memberClusters: option<clusterIdList>,
  @as("PendingModifiedValues") pendingModifiedValues: option<replicationGroupPendingModifiedValues>,
  @as("Status") status: option<string_>,
  @as("GlobalReplicationGroupInfo") globalReplicationGroupInfo: option<globalReplicationGroupInfo>,
  @as("Description") description: option<string_>,
  @as("ReplicationGroupId") replicationGroupId: option<string_>,
}
type cacheCluster = {
  @as("LogDeliveryConfigurations") logDeliveryConfigurations: option<logDeliveryConfigurationList>,
  @as("ReplicationGroupLogDeliveryEnabled") replicationGroupLogDeliveryEnabled: option<boolean_>,
  @as("ARN") arn: option<string_>,
  @as("AtRestEncryptionEnabled") atRestEncryptionEnabled: option<booleanOptional>,
  @as("TransitEncryptionEnabled") transitEncryptionEnabled: option<booleanOptional>,
  @as("AuthTokenLastModifiedDate") authTokenLastModifiedDate: option<tstamp>,
  @as("AuthTokenEnabled") authTokenEnabled: option<booleanOptional>,
  @as("SnapshotWindow") snapshotWindow: option<string_>,
  @as("SnapshotRetentionLimit") snapshotRetentionLimit: option<integerOptional>,
  @as("ReplicationGroupId") replicationGroupId: option<string_>,
  @as("SecurityGroups") securityGroups: option<securityGroupMembershipList>,
  @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<boolean_>,
  @as("CacheNodes") cacheNodes: option<cacheNodeList>,
  @as("CacheSubnetGroupName") cacheSubnetGroupName: option<string_>,
  @as("CacheParameterGroup") cacheParameterGroup: option<cacheParameterGroupStatus>,
  @as("CacheSecurityGroups") cacheSecurityGroups: option<cacheSecurityGroupMembershipList>,
  @as("NotificationConfiguration") notificationConfiguration: option<notificationConfiguration>,
  @as("PendingModifiedValues") pendingModifiedValues: option<pendingModifiedValues>,
  @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
  @as("CacheClusterCreateTime") cacheClusterCreateTime: option<tstamp>,
  @as("PreferredOutpostArn") preferredOutpostArn: option<string_>,
  @as("PreferredAvailabilityZone") preferredAvailabilityZone: option<string_>,
  @as("NumCacheNodes") numCacheNodes: option<integerOptional>,
  @as("CacheClusterStatus") cacheClusterStatus: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("CacheNodeType") cacheNodeType: option<string_>,
  @as("ClientDownloadLandingPage") clientDownloadLandingPage: option<string_>,
  @as("ConfigurationEndpoint") configurationEndpoint: option<endpoint>,
  @as("CacheClusterId") cacheClusterId: option<string_>,
}
type replicationGroupList = array<replicationGroup>
type cacheClusterList = array<cacheCluster>

module DeleteCacheSubnetGroup = {
  type t
  type request = {@as("CacheSubnetGroupName") cacheSubnetGroupName: string_}

  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DeleteCacheSubnetGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCacheSecurityGroup = {
  type t
  type request = {@as("CacheSecurityGroupName") cacheSecurityGroupName: string_}

  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DeleteCacheSecurityGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCacheParameterGroup = {
  type t
  type request = {@as("CacheParameterGroupName") cacheParameterGroupName: string_}

  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DeleteCacheParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyUser = {
  type t
  type request = {
    @as("NoPasswordRequired") noPasswordRequired: option<booleanOptional>,
    @as("Passwords") passwords: option<passwordListInput>,
    @as("AppendAccessString") appendAccessString: option<accessString>,
    @as("AccessString") accessString: option<accessString>,
    @as("UserId") userId: userId,
  }
  type response = user
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "ModifyUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAllowedNodeTypeModifications = {
  type t
  type request = {
    @as("ReplicationGroupId") replicationGroupId: option<string_>,
    @as("CacheClusterId") cacheClusterId: option<string_>,
  }
  type response = {
    @as("ScaleDownModifications") scaleDownModifications: option<nodeTypeList>,
    @as("ScaleUpModifications") scaleUpModifications: option<nodeTypeList>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "ListAllowedNodeTypeModificationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUser = {
  type t
  type request = {@as("UserId") userId: userId}
  type response = user
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "DeleteUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetCacheParameterGroup = {
  type t
  type request = {
    @as("ParameterNameValues") parameterNameValues: option<parameterNameValueList>,
    @as("ResetAllParameters") resetAllParameters: option<boolean_>,
    @as("CacheParameterGroupName") cacheParameterGroupName: string_,
  }
  type response = {@as("CacheParameterGroupName") cacheParameterGroupName: option<string_>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "ResetCacheParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTagsFromResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: keyList,
    @as("ResourceName") resourceName: string_,
  }
  type response = {@as("TagList") tagList_: option<tagList_>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "RemoveTagsFromResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyUserGroup = {
  type t
  type request = {
    @as("UserIdsToRemove") userIdsToRemove: option<userIdListInput>,
    @as("UserIdsToAdd") userIdsToAdd: option<userIdListInput>,
    @as("UserGroupId") userGroupId: string_,
  }
  type response = userGroup
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "ModifyUserGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyCacheParameterGroup = {
  type t
  type request = {
    @as("ParameterNameValues") parameterNameValues: parameterNameValueList,
    @as("CacheParameterGroupName") cacheParameterGroupName: string_,
  }
  type response = {@as("CacheParameterGroupName") cacheParameterGroupName: option<string_>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "ModifyCacheParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceName") resourceName: string_}
  type response = {@as("TagList") tagList_: option<tagList_>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeServiceUpdates = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ServiceUpdateStatus") serviceUpdateStatus: option<serviceUpdateStatusList>,
    @as("ServiceUpdateName") serviceUpdateName: option<string_>,
  }
  type response = {
    @as("ServiceUpdates") serviceUpdates: option<serviceUpdateList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeServiceUpdatesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Duration") duration: option<integerOptional>,
    @as("EndTime") endTime: option<tstamp>,
    @as("StartTime") startTime: option<tstamp>,
    @as("SourceType") sourceType: option<sourceType>,
    @as("SourceIdentifier") sourceIdentifier: option<string_>,
  }
  type response = {
    @as("Events") events: option<eventList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "DescribeEventsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCacheParameterGroups = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("CacheParameterGroupName") cacheParameterGroupName: option<string_>,
  }
  type response = {
    @as("CacheParameterGroups") cacheParameterGroups: option<cacheParameterGroupList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeCacheParameterGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCacheEngineVersions = {
  type t
  type request = {
    @as("DefaultOnly") defaultOnly: option<boolean_>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("CacheParameterGroupFamily") cacheParameterGroupFamily: option<string_>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("Engine") engine: option<string_>,
  }
  type response = {
    @as("CacheEngineVersions") cacheEngineVersions: option<cacheEngineVersionList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeCacheEngineVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUserGroup = {
  type t
  type request = {@as("UserGroupId") userGroupId: string_}
  type response = userGroup
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "DeleteUserGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUserGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("UserIds") userIds: option<userIdListInput>,
    @as("Engine") engine: engineType,
    @as("UserGroupId") userGroupId: string_,
  }
  type response = userGroup
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "CreateUserGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUser = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("NoPasswordRequired") noPasswordRequired: option<booleanOptional>,
    @as("AccessString") accessString: accessString,
    @as("Passwords") passwords: option<passwordListInput>,
    @as("Engine") engine: engineType,
    @as("UserName") userName: userName,
    @as("UserId") userId: userId,
  }
  type response = user
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "CreateUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCacheParameterGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: string_,
    @as("CacheParameterGroupFamily") cacheParameterGroupFamily: string_,
    @as("CacheParameterGroupName") cacheParameterGroupName: string_,
  }
  type response = {@as("CacheParameterGroup") cacheParameterGroup: option<cacheParameterGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "CreateCacheParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchStopUpdateAction = {
  type t
  type request = {
    @as("ServiceUpdateName") serviceUpdateName: string_,
    @as("CacheClusterIds") cacheClusterIds: option<cacheClusterIdList>,
    @as("ReplicationGroupIds") replicationGroupIds: option<replicationGroupIdList>,
  }
  type response = {
    @as("UnprocessedUpdateActions") unprocessedUpdateActions: option<unprocessedUpdateActionList>,
    @as("ProcessedUpdateActions") processedUpdateActions: option<processedUpdateActionList>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "BatchStopUpdateActionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchApplyUpdateAction = {
  type t
  type request = {
    @as("ServiceUpdateName") serviceUpdateName: string_,
    @as("CacheClusterIds") cacheClusterIds: option<cacheClusterIdList>,
    @as("ReplicationGroupIds") replicationGroupIds: option<replicationGroupIdList>,
  }
  type response = {
    @as("UnprocessedUpdateActions") unprocessedUpdateActions: option<unprocessedUpdateActionList>,
    @as("ProcessedUpdateActions") processedUpdateActions: option<processedUpdateActionList>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "BatchApplyUpdateActionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTagsToResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceName") resourceName: string_,
  }
  type response = {@as("TagList") tagList_: option<tagList_>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "AddTagsToResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeCacheSecurityGroupIngress = {
  type t
  type request = {
    @as("EC2SecurityGroupOwnerId") ec2SecurityGroupOwnerId: string_,
    @as("EC2SecurityGroupName") ec2SecurityGroupName: string_,
    @as("CacheSecurityGroupName") cacheSecurityGroupName: string_,
  }
  type response = {@as("CacheSecurityGroup") cacheSecurityGroup: option<cacheSecurityGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "RevokeCacheSecurityGroupIngressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebalanceSlotsInGlobalReplicationGroup = {
  type t
  type request = {
    @as("ApplyImmediately") applyImmediately: boolean_,
    @as("GlobalReplicationGroupId") globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "RebalanceSlotsInGlobalReplicationGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PurchaseReservedCacheNodesOffering = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("CacheNodeCount") cacheNodeCount: option<integerOptional>,
    @as("ReservedCacheNodeId") reservedCacheNodeId: option<string_>,
    @as("ReservedCacheNodesOfferingId") reservedCacheNodesOfferingId: string_,
  }
  type response = {@as("ReservedCacheNode") reservedCacheNode: option<reservedCacheNode>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "PurchaseReservedCacheNodesOfferingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyGlobalReplicationGroup = {
  type t
  type request = {
    @as("AutomaticFailoverEnabled") automaticFailoverEnabled: option<booleanOptional>,
    @as("GlobalReplicationGroupDescription") globalReplicationGroupDescription: option<string_>,
    @as("CacheParameterGroupName") cacheParameterGroupName: option<string_>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("CacheNodeType") cacheNodeType: option<string_>,
    @as("ApplyImmediately") applyImmediately: boolean_,
    @as("GlobalReplicationGroupId") globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "ModifyGlobalReplicationGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module FailoverGlobalReplicationGroup = {
  type t
  type request = {
    @as("PrimaryReplicationGroupId") primaryReplicationGroupId: string_,
    @as("PrimaryRegion") primaryRegion: string_,
    @as("GlobalReplicationGroupId") globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "FailoverGlobalReplicationGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateGlobalReplicationGroup = {
  type t
  type request = {
    @as("ReplicationGroupRegion") replicationGroupRegion: string_,
    @as("ReplicationGroupId") replicationGroupId: string_,
    @as("GlobalReplicationGroupId") globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DisassociateGlobalReplicationGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUsers = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("UserId") userId: option<userId>,
    @as("Engine") engine: option<engineType>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("Users") users: option<userList>,
  }
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "DescribeUsersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGlobalReplicationGroup = {
  type t
  type request = {
    @as("RetainPrimaryReplicationGroup") retainPrimaryReplicationGroup: boolean_,
    @as("GlobalReplicationGroupId") globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DeleteGlobalReplicationGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DecreaseNodeGroupsInGlobalReplicationGroup = {
  type t
  type request = {
    @as("ApplyImmediately") applyImmediately: boolean_,
    @as("GlobalNodeGroupsToRetain") globalNodeGroupsToRetain: option<globalNodeGroupIdList>,
    @as("GlobalNodeGroupsToRemove") globalNodeGroupsToRemove: option<globalNodeGroupIdList>,
    @as("NodeGroupCount") nodeGroupCount: integer_,
    @as("GlobalReplicationGroupId") globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DecreaseNodeGroupsInGlobalReplicationGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGlobalReplicationGroup = {
  type t
  type request = {
    @as("PrimaryReplicationGroupId") primaryReplicationGroupId: string_,
    @as("GlobalReplicationGroupDescription") globalReplicationGroupDescription: option<string_>,
    @as("GlobalReplicationGroupIdSuffix") globalReplicationGroupIdSuffix: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "CreateGlobalReplicationGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCacheSecurityGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: string_,
    @as("CacheSecurityGroupName") cacheSecurityGroupName: string_,
  }
  type response = {@as("CacheSecurityGroup") cacheSecurityGroup: option<cacheSecurityGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "CreateCacheSecurityGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AuthorizeCacheSecurityGroupIngress = {
  type t
  type request = {
    @as("EC2SecurityGroupOwnerId") ec2SecurityGroupOwnerId: string_,
    @as("EC2SecurityGroupName") ec2SecurityGroupName: string_,
    @as("CacheSecurityGroupName") cacheSecurityGroupName: string_,
  }
  type response = {@as("CacheSecurityGroup") cacheSecurityGroup: option<cacheSecurityGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "AuthorizeCacheSecurityGroupIngressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyCacheSubnetGroup = {
  type t
  type request = {
    @as("SubnetIds") subnetIds: option<subnetIdentifierList>,
    @as("CacheSubnetGroupDescription") cacheSubnetGroupDescription: option<string_>,
    @as("CacheSubnetGroupName") cacheSubnetGroupName: string_,
  }
  type response = {@as("CacheSubnetGroup") cacheSubnetGroup: option<cacheSubnetGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "ModifyCacheSubnetGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUserGroups = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("UserGroupId") userGroupId: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("UserGroups") userGroups: option<userGroupList>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeUserGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedCacheNodesOfferings = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("OfferingType") offeringType: option<string_>,
    @as("ProductDescription") productDescription: option<string_>,
    @as("Duration") duration: option<string_>,
    @as("CacheNodeType") cacheNodeType: option<string_>,
    @as("ReservedCacheNodesOfferingId") reservedCacheNodesOfferingId: option<string_>,
  }
  type response = {
    @as("ReservedCacheNodesOfferings")
    reservedCacheNodesOfferings: option<reservedCacheNodesOfferingList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeReservedCacheNodesOfferingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedCacheNodes = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("OfferingType") offeringType: option<string_>,
    @as("ProductDescription") productDescription: option<string_>,
    @as("Duration") duration: option<string_>,
    @as("CacheNodeType") cacheNodeType: option<string_>,
    @as("ReservedCacheNodesOfferingId") reservedCacheNodesOfferingId: option<string_>,
    @as("ReservedCacheNodeId") reservedCacheNodeId: option<string_>,
  }
  type response = {
    @as("ReservedCacheNodes") reservedCacheNodes: option<reservedCacheNodeList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeReservedCacheNodesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGlobalReplicationGroups = {
  type t
  type request = {
    @as("ShowMemberInfo") showMemberInfo: option<booleanOptional>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("GlobalReplicationGroupId") globalReplicationGroupId: option<string_>,
  }
  type response = {
    @as("GlobalReplicationGroups") globalReplicationGroups: option<globalReplicationGroupList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeGlobalReplicationGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCacheSecurityGroups = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("CacheSecurityGroupName") cacheSecurityGroupName: option<string_>,
  }
  type response = {
    @as("CacheSecurityGroups") cacheSecurityGroups: option<cacheSecurityGroups>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeCacheSecurityGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCacheParameters = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Source") source: option<string_>,
    @as("CacheParameterGroupName") cacheParameterGroupName: string_,
  }
  type response = {
    @as("CacheNodeTypeSpecificParameters")
    cacheNodeTypeSpecificParameters: option<cacheNodeTypeSpecificParametersList>,
    @as("Parameters") parameters: option<parametersList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeCacheParametersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCacheSubnetGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("SubnetIds") subnetIds: subnetIdentifierList,
    @as("CacheSubnetGroupDescription") cacheSubnetGroupDescription: string_,
    @as("CacheSubnetGroupName") cacheSubnetGroupName: string_,
  }
  type response = {@as("CacheSubnetGroup") cacheSubnetGroup: option<cacheSubnetGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "CreateCacheSubnetGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module IncreaseNodeGroupsInGlobalReplicationGroup = {
  type t
  type request = {
    @as("ApplyImmediately") applyImmediately: boolean_,
    @as("RegionalConfigurations") regionalConfigurations: option<regionalConfigurationList>,
    @as("NodeGroupCount") nodeGroupCount: integer_,
    @as("GlobalReplicationGroupId") globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "IncreaseNodeGroupsInGlobalReplicationGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEngineDefaultParameters = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("CacheParameterGroupFamily") cacheParameterGroupFamily: string_,
  }
  type response = {@as("EngineDefaults") engineDefaults: option<engineDefaults>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeEngineDefaultParametersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCacheSubnetGroups = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("CacheSubnetGroupName") cacheSubnetGroupName: option<string_>,
  }
  type response = {
    @as("CacheSubnetGroups") cacheSubnetGroups: option<cacheSubnetGroups>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeCacheSubnetGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSnapshot = {
  type t
  type request = {@as("SnapshotName") snapshotName: string_}
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "DeleteSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSnapshot = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("SnapshotName") snapshotName: string_,
    @as("CacheClusterId") cacheClusterId: option<string_>,
    @as("ReplicationGroupId") replicationGroupId: option<string_>,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "CreateSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopySnapshot = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("TargetBucket") targetBucket: option<string_>,
    @as("TargetSnapshotName") targetSnapshotName: string_,
    @as("SourceSnapshotName") sourceSnapshotName: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "CopySnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestFailover = {
  type t
  type request = {
    @as("NodeGroupId") nodeGroupId: allowedNodeGroupId,
    @as("ReplicationGroupId") replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "TestFailoverCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMigration = {
  type t
  type request = {
    @as("CustomerNodeEndpointList") customerNodeEndpointList: customerNodeEndpointList,
    @as("ReplicationGroupId") replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new external new_: request => t = "StartMigrationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootCacheCluster = {
  type t
  type request = {
    @as("CacheNodeIdsToReboot") cacheNodeIdsToReboot: cacheNodeIdsList,
    @as("CacheClusterId") cacheClusterId: string_,
  }
  type response = {@as("CacheCluster") cacheCluster: option<cacheCluster>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "RebootCacheClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyReplicationGroupShardConfiguration = {
  type t
  type request = {
    @as("NodeGroupsToRetain") nodeGroupsToRetain: option<nodeGroupsToRetainList>,
    @as("NodeGroupsToRemove") nodeGroupsToRemove: option<nodeGroupsToRemoveList>,
    @as("ReshardingConfiguration") reshardingConfiguration: option<reshardingConfigurationList>,
    @as("ApplyImmediately") applyImmediately: boolean_,
    @as("NodeGroupCount") nodeGroupCount: integer_,
    @as("ReplicationGroupId") replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "ModifyReplicationGroupShardConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyReplicationGroup = {
  type t
  type request = {
    @as("LogDeliveryConfigurations")
    logDeliveryConfigurations: option<logDeliveryConfigurationRequestList>,
    @as("RemoveUserGroups") removeUserGroups: option<booleanOptional>,
    @as("UserGroupIdsToRemove") userGroupIdsToRemove: option<userGroupIdList>,
    @as("UserGroupIdsToAdd") userGroupIdsToAdd: option<userGroupIdList>,
    @as("AuthTokenUpdateStrategy") authTokenUpdateStrategy: option<authTokenUpdateStrategyType>,
    @as("AuthToken") authToken: option<string_>,
    @as("CacheNodeType") cacheNodeType: option<string_>,
    @as("SnapshotWindow") snapshotWindow: option<string_>,
    @as("SnapshotRetentionLimit") snapshotRetentionLimit: option<integerOptional>,
    @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("ApplyImmediately") applyImmediately: option<boolean_>,
    @as("NotificationTopicStatus") notificationTopicStatus: option<string_>,
    @as("CacheParameterGroupName") cacheParameterGroupName: option<string_>,
    @as("NotificationTopicArn") notificationTopicArn: option<string_>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdsList>,
    @as("CacheSecurityGroupNames") cacheSecurityGroupNames: option<cacheSecurityGroupNameList>,
    @as("NodeGroupId") nodeGroupId: option<string_>,
    @as("MultiAZEnabled") multiAZEnabled: option<booleanOptional>,
    @as("AutomaticFailoverEnabled") automaticFailoverEnabled: option<booleanOptional>,
    @as("SnapshottingClusterId") snapshottingClusterId: option<string_>,
    @as("PrimaryClusterId") primaryClusterId: option<string_>,
    @as("ReplicationGroupDescription") replicationGroupDescription: option<string_>,
    @as("ReplicationGroupId") replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "ModifyReplicationGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyCacheCluster = {
  type t
  type request = {
    @as("LogDeliveryConfigurations")
    logDeliveryConfigurations: option<logDeliveryConfigurationRequestList>,
    @as("AuthTokenUpdateStrategy") authTokenUpdateStrategy: option<authTokenUpdateStrategyType>,
    @as("AuthToken") authToken: option<string_>,
    @as("CacheNodeType") cacheNodeType: option<string_>,
    @as("SnapshotWindow") snapshotWindow: option<string_>,
    @as("SnapshotRetentionLimit") snapshotRetentionLimit: option<integerOptional>,
    @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("ApplyImmediately") applyImmediately: option<boolean_>,
    @as("NotificationTopicStatus") notificationTopicStatus: option<string_>,
    @as("CacheParameterGroupName") cacheParameterGroupName: option<string_>,
    @as("NotificationTopicArn") notificationTopicArn: option<string_>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdsList>,
    @as("CacheSecurityGroupNames") cacheSecurityGroupNames: option<cacheSecurityGroupNameList>,
    @as("NewAvailabilityZones") newAvailabilityZones: option<preferredAvailabilityZoneList>,
    @as("AZMode") azmode: option<azmode>,
    @as("CacheNodeIdsToRemove") cacheNodeIdsToRemove: option<cacheNodeIdsList>,
    @as("NumCacheNodes") numCacheNodes: option<integerOptional>,
    @as("CacheClusterId") cacheClusterId: string_,
  }
  type response = {@as("CacheCluster") cacheCluster: option<cacheCluster>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "ModifyCacheClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module IncreaseReplicaCount = {
  type t
  type request = {
    @as("ApplyImmediately") applyImmediately: boolean_,
    @as("ReplicaConfiguration") replicaConfiguration: option<replicaConfigurationList>,
    @as("NewReplicaCount") newReplicaCount: option<integerOptional>,
    @as("ReplicationGroupId") replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "IncreaseReplicaCountCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUpdateActions = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ShowNodeLevelUpdateStatus") showNodeLevelUpdateStatus: option<booleanOptional>,
    @as("UpdateActionStatus") updateActionStatus: option<updateActionStatusList>,
    @as("ServiceUpdateTimeRange") serviceUpdateTimeRange: option<timeRangeFilter>,
    @as("ServiceUpdateStatus") serviceUpdateStatus: option<serviceUpdateStatusList>,
    @as("Engine") engine: option<string_>,
    @as("CacheClusterIds") cacheClusterIds: option<cacheClusterIdList>,
    @as("ReplicationGroupIds") replicationGroupIds: option<replicationGroupIdList>,
    @as("ServiceUpdateName") serviceUpdateName: option<string_>,
  }
  type response = {
    @as("UpdateActions") updateActions: option<updateActionList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeUpdateActionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSnapshots = {
  type t
  type request = {
    @as("ShowNodeGroupConfig") showNodeGroupConfig: option<booleanOptional>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Marker") marker: option<string_>,
    @as("SnapshotSource") snapshotSource: option<string_>,
    @as("SnapshotName") snapshotName: option<string_>,
    @as("CacheClusterId") cacheClusterId: option<string_>,
    @as("ReplicationGroupId") replicationGroupId: option<string_>,
  }
  type response = {
    @as("Snapshots") snapshots: option<snapshotList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeSnapshotsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteReplicationGroup = {
  type t
  type request = {
    @as("FinalSnapshotIdentifier") finalSnapshotIdentifier: option<string_>,
    @as("RetainPrimaryCluster") retainPrimaryCluster: option<booleanOptional>,
    @as("ReplicationGroupId") replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DeleteReplicationGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCacheCluster = {
  type t
  type request = {
    @as("FinalSnapshotIdentifier") finalSnapshotIdentifier: option<string_>,
    @as("CacheClusterId") cacheClusterId: string_,
  }
  type response = {@as("CacheCluster") cacheCluster: option<cacheCluster>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DeleteCacheClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DecreaseReplicaCount = {
  type t
  type request = {
    @as("ApplyImmediately") applyImmediately: boolean_,
    @as("ReplicasToRemove") replicasToRemove: option<removeReplicasList>,
    @as("ReplicaConfiguration") replicaConfiguration: option<replicaConfigurationList>,
    @as("NewReplicaCount") newReplicaCount: option<integerOptional>,
    @as("ReplicationGroupId") replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DecreaseReplicaCountCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReplicationGroup = {
  type t
  type request = {
    @as("LogDeliveryConfigurations")
    logDeliveryConfigurations: option<logDeliveryConfigurationRequestList>,
    @as("UserGroupIds") userGroupIds: option<userGroupIdListInput>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("AtRestEncryptionEnabled") atRestEncryptionEnabled: option<booleanOptional>,
    @as("TransitEncryptionEnabled") transitEncryptionEnabled: option<booleanOptional>,
    @as("AuthToken") authToken: option<string_>,
    @as("SnapshotWindow") snapshotWindow: option<string_>,
    @as("SnapshotRetentionLimit") snapshotRetentionLimit: option<integerOptional>,
    @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
    @as("NotificationTopicArn") notificationTopicArn: option<string_>,
    @as("Port") port: option<integerOptional>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("SnapshotName") snapshotName: option<string_>,
    @as("SnapshotArns") snapshotArns: option<snapshotArnsList>,
    @as("Tags") tags: option<tagList_>,
    @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdsList>,
    @as("CacheSecurityGroupNames") cacheSecurityGroupNames: option<cacheSecurityGroupNameList>,
    @as("CacheSubnetGroupName") cacheSubnetGroupName: option<string_>,
    @as("CacheParameterGroupName") cacheParameterGroupName: option<string_>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("Engine") engine: option<string_>,
    @as("CacheNodeType") cacheNodeType: option<string_>,
    @as("NodeGroupConfiguration") nodeGroupConfiguration: option<nodeGroupConfigurationList>,
    @as("ReplicasPerNodeGroup") replicasPerNodeGroup: option<integerOptional>,
    @as("NumNodeGroups") numNodeGroups: option<integerOptional>,
    @as("PreferredCacheClusterAZs") preferredCacheClusterAZs: option<availabilityZonesList>,
    @as("NumCacheClusters") numCacheClusters: option<integerOptional>,
    @as("MultiAZEnabled") multiAZEnabled: option<booleanOptional>,
    @as("AutomaticFailoverEnabled") automaticFailoverEnabled: option<booleanOptional>,
    @as("PrimaryClusterId") primaryClusterId: option<string_>,
    @as("GlobalReplicationGroupId") globalReplicationGroupId: option<string_>,
    @as("ReplicationGroupDescription") replicationGroupDescription: string_,
    @as("ReplicationGroupId") replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "CreateReplicationGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCacheCluster = {
  type t
  type request = {
    @as("LogDeliveryConfigurations")
    logDeliveryConfigurations: option<logDeliveryConfigurationRequestList>,
    @as("PreferredOutpostArns") preferredOutpostArns: option<preferredOutpostArnList>,
    @as("PreferredOutpostArn") preferredOutpostArn: option<string_>,
    @as("OutpostMode") outpostMode: option<outpostMode>,
    @as("AuthToken") authToken: option<string_>,
    @as("SnapshotWindow") snapshotWindow: option<string_>,
    @as("SnapshotRetentionLimit") snapshotRetentionLimit: option<integerOptional>,
    @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
    @as("NotificationTopicArn") notificationTopicArn: option<string_>,
    @as("Port") port: option<integerOptional>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("SnapshotName") snapshotName: option<string_>,
    @as("SnapshotArns") snapshotArns: option<snapshotArnsList>,
    @as("Tags") tags: option<tagList_>,
    @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdsList>,
    @as("CacheSecurityGroupNames") cacheSecurityGroupNames: option<cacheSecurityGroupNameList>,
    @as("CacheSubnetGroupName") cacheSubnetGroupName: option<string_>,
    @as("CacheParameterGroupName") cacheParameterGroupName: option<string_>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("Engine") engine: option<string_>,
    @as("CacheNodeType") cacheNodeType: option<string_>,
    @as("NumCacheNodes") numCacheNodes: option<integerOptional>,
    @as("PreferredAvailabilityZones")
    preferredAvailabilityZones: option<preferredAvailabilityZoneList>,
    @as("PreferredAvailabilityZone") preferredAvailabilityZone: option<string_>,
    @as("AZMode") azmode: option<azmode>,
    @as("ReplicationGroupId") replicationGroupId: option<string_>,
    @as("CacheClusterId") cacheClusterId: string_,
  }
  type response = {@as("CacheCluster") cacheCluster: option<cacheCluster>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "CreateCacheClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CompleteMigration = {
  type t
  type request = {
    @as("Force") force: option<boolean_>,
    @as("ReplicationGroupId") replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "CompleteMigrationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplicationGroups = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ReplicationGroupId") replicationGroupId: option<string_>,
  }
  type response = {
    @as("ReplicationGroups") replicationGroups: option<replicationGroupList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeReplicationGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCacheClusters = {
  type t
  type request = {
    @as("ShowCacheClustersNotInReplicationGroups")
    showCacheClustersNotInReplicationGroups: option<booleanOptional>,
    @as("ShowCacheNodeInfo") showCacheNodeInfo: option<booleanOptional>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("CacheClusterId") cacheClusterId: option<string_>,
  }
  type response = {
    @as("CacheClusters") cacheClusters: option<cacheClusterList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new_: request => t = "DescribeCacheClustersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
