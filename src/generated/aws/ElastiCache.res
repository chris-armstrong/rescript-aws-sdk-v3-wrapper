type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type userName = string
type userId = string
type userGroupId = string
type updateActionStatus = [@as("not-applicable") #not_applicable | @as("scheduled") #scheduled | @as("scheduling") #scheduling | @as("complete") #complete | @as("stopped") #stopped | @as("stopping") #stopping | @as("in-progress") #in_progress | @as("waiting-to-start") #waiting_to_start | @as("not-applied") #not_applied]
type tStamp = Js.Date.t;
type amazonawsString = string
type sourceType = [@as("user-group") #user_group | @as("user") #user | @as("replication-group") #replication_group | @as("cache-subnet-group") #cache_subnet_group | @as("cache-security-group") #cache_security_group | @as("cache-parameter-group") #cache_parameter_group | @as("cache-cluster") #cache_cluster]
type slaMet = [@as("n/a") #n_a | @as("no") #no | @as("yes") #yes]
type serviceUpdateType = [@as("security-update") #security_update]
type serviceUpdateStatus = [@as("expired") #expired | @as("cancelled") #cancelled | @as("available") #available]
type serviceUpdateSeverity = [@as("low") #low | @as("medium") #medium | @as("important") #important | @as("critical") #critical]
type pendingAutomaticFailoverStatus = [@as("disabled") #disabled | @as("enabled") #enabled]
type outpostMode = [@as("cross-outpost") #cross_outpost | @as("single-outpost") #single_outpost]
type nodeUpdateStatus = [@as("complete") #complete | @as("stopped") #stopped | @as("stopping") #stopping | @as("in-progress") #in_progress | @as("waiting-to-start") #waiting_to_start | @as("not-applied") #not_applied]
type nodeUpdateInitiatedBy = [@as("customer") #customer | @as("system") #system]
type multiAZStatus = [@as("disabled") #disabled | @as("enabled") #enabled]
type logType = [@as("slow-log") #slow_log]
type logFormat = [@as("json") #json | @as("text") #text]
type logDeliveryConfigurationStatus = [@as("error") #error | @as("disabling") #disabling | @as("modifying") #modifying | @as("enabling") #enabling | @as("active") #active]
type integerOptional = int;
type amazonawsInteger = int;
type filterValue = string
type filterName = string
type exceptionMessage = string
type engineType = string
type amazonawsDouble = float;
type destinationType = [@as("kinesis-firehose") #kinesis_firehose | @as("cloudwatch-logs") #cloudwatch_logs]
type changeType = [@as("requires-reboot") #requires_reboot | @as("immediate") #immediate]
type booleanOptional = bool;
type amazonawsBoolean = bool;
type awsQueryErrorMessage = string
type automaticFailoverStatus = [@as("disabling") #disabling | @as("enabling") #enabling | @as("disabled") #disabled | @as("enabled") #enabled]
type authenticationType = [@as("no-password") #no_password | @as("password") #password]
type authTokenUpdateStrategyType = [@as("DELETE") #DELETE | @as("ROTATE") #ROTATE | @as("SET") #SET]
type authTokenUpdateStatus = [@as("ROTATING") #ROTATING | @as("SETTING") #SETTING]
type allowedNodeGroupId = string
type accessString = string
type aZMode = [@as("cross-az") #cross_az | @as("single-az") #single_az]
type userIdListInput = array<userId>
type userIdList = array<userId>
type userGroupIdListInput = array<userGroupId>
type userGroupIdList = array<userGroupId>
type updateActionStatusList = array<updateActionStatus>
type unprocessedUpdateAction = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorType") errorType: amazonawsString,
@as("ServiceUpdateName") serviceUpdateName: amazonawsString,
@as("CacheClusterId") cacheClusterId: amazonawsString,
@as("ReplicationGroupId") replicationGroupId: amazonawsString
}
type uGReplicationGroupIdList = array<amazonawsString>
type timeRangeFilter = {
@as("EndTime") endTime: tStamp,
@as("StartTime") startTime: tStamp
}
type tag = {
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString
}
type subnetOutpost = {
@as("SubnetOutpostArn") subnetOutpostArn: amazonawsString
}
type subnetIdentifierList = array<amazonawsString>
type snapshotArnsList = array<amazonawsString>
type slotMigration = {
@as("ProgressPercentage") progressPercentage: amazonawsDouble
}
type serviceUpdateStatusList = array<serviceUpdateStatus>
type serviceUpdate = {
@as("EstimatedUpdateTime") estimatedUpdateTime: amazonawsString,
@as("AutoUpdateAfterRecommendedApplyByDate") autoUpdateAfterRecommendedApplyByDate: booleanOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("ServiceUpdateType") serviceUpdateType: serviceUpdateType,
@as("ServiceUpdateDescription") serviceUpdateDescription: amazonawsString,
@as("ServiceUpdateStatus") serviceUpdateStatus: serviceUpdateStatus,
@as("ServiceUpdateRecommendedApplyByDate") serviceUpdateRecommendedApplyByDate: tStamp,
@as("ServiceUpdateSeverity") serviceUpdateSeverity: serviceUpdateSeverity,
@as("ServiceUpdateEndDate") serviceUpdateEndDate: tStamp,
@as("ServiceUpdateReleaseDate") serviceUpdateReleaseDate: tStamp,
@as("ServiceUpdateName") serviceUpdateName: amazonawsString
}
type securityGroupMembership = {
@as("Status") status: amazonawsString,
@as("SecurityGroupId") securityGroupId: amazonawsString
}
type securityGroupIdsList = array<amazonawsString>
type replicationGroupOutpostArnList = array<amazonawsString>
type replicationGroupIdList = array<amazonawsString>
type removeReplicasList = array<amazonawsString>
type recurringCharge = {
@as("RecurringChargeFrequency") recurringChargeFrequency: amazonawsString,
@as("RecurringChargeAmount") recurringChargeAmount: amazonawsDouble
}
type processedUpdateAction = {
@as("UpdateActionStatus") updateActionStatus: updateActionStatus,
@as("ServiceUpdateName") serviceUpdateName: amazonawsString,
@as("CacheClusterId") cacheClusterId: amazonawsString,
@as("ReplicationGroupId") replicationGroupId: amazonawsString
}
type preferredOutpostArnList = array<amazonawsString>
type preferredAvailabilityZoneList = array<amazonawsString>
type passwordListInput = array<amazonawsString>
type parameterNameValue = {
@as("ParameterValue") parameterValue: amazonawsString,
@as("ParameterName") parameterName: amazonawsString
}
type parameter = {
@as("ChangeType") changeType: changeType,
@as("MinimumEngineVersion") minimumEngineVersion: amazonawsString,
@as("IsModifiable") isModifiable: amazonawsBoolean,
@as("AllowedValues") allowedValues: amazonawsString,
@as("DataType") dataType: amazonawsString,
@as("Source") source: amazonawsString,
@as("Description") description: amazonawsString,
@as("ParameterValue") parameterValue: amazonawsString,
@as("ParameterName") parameterName: amazonawsString
}
type outpostArnsList = array<amazonawsString>
type notificationConfiguration = {
@as("TopicStatus") topicStatus: amazonawsString,
@as("TopicArn") topicArn: amazonawsString
}
type nodeTypeList = array<amazonawsString>
type nodeGroupsToRetainList = array<allowedNodeGroupId>
type nodeGroupsToRemoveList = array<allowedNodeGroupId>
type nodeGroupMemberUpdateStatus = {
@as("NodeUpdateStatusModifiedDate") nodeUpdateStatusModifiedDate: tStamp,
@as("NodeUpdateInitiatedDate") nodeUpdateInitiatedDate: tStamp,
@as("NodeUpdateInitiatedBy") nodeUpdateInitiatedBy: nodeUpdateInitiatedBy,
@as("NodeUpdateEndDate") nodeUpdateEndDate: tStamp,
@as("NodeUpdateStartDate") nodeUpdateStartDate: tStamp,
@as("NodeDeletionDate") nodeDeletionDate: tStamp,
@as("NodeUpdateStatus") nodeUpdateStatus: nodeUpdateStatus,
@as("CacheNodeId") cacheNodeId: amazonawsString,
@as("CacheClusterId") cacheClusterId: amazonawsString
}
type kinesisFirehoseDestinationDetails = {
@as("DeliveryStream") deliveryStream: amazonawsString
}
type keyList = array<amazonawsString>
type globalReplicationGroupMember = {
@as("Status") status: amazonawsString,
@as("AutomaticFailover") automaticFailover: automaticFailoverStatus,
@as("Role") role: amazonawsString,
@as("ReplicationGroupRegion") replicationGroupRegion: amazonawsString,
@as("ReplicationGroupId") replicationGroupId: amazonawsString
}
type globalReplicationGroupInfo = {
@as("GlobalReplicationGroupMemberRole") globalReplicationGroupMemberRole: amazonawsString,
@as("GlobalReplicationGroupId") globalReplicationGroupId: amazonawsString
}
type globalNodeGroupIdList = array<amazonawsString>
type globalNodeGroup = {
@as("Slots") slots: amazonawsString,
@as("GlobalNodeGroupId") globalNodeGroupId: amazonawsString
}
type filterValueList = array<filterValue>
type event = {
@as("Date") date: tStamp,
@as("Message") message: amazonawsString,
@as("SourceType") sourceType: sourceType,
@as("SourceIdentifier") sourceIdentifier: amazonawsString
}
type endpoint = {
@as("Port") port: amazonawsInteger,
@as("Address") address: amazonawsString
}
type eC2SecurityGroup = {
@as("EC2SecurityGroupOwnerId") eC2SecurityGroupOwnerId: amazonawsString,
@as("EC2SecurityGroupName") eC2SecurityGroupName: amazonawsString,
@as("Status") status: amazonawsString
}
type customerNodeEndpoint = {
@as("Port") port: integerOptional,
@as("Address") address: amazonawsString
}
type clusterIdList = array<amazonawsString>
type cloudWatchLogsDestinationDetails = {
@as("LogGroup") logGroup: amazonawsString
}
type cacheSecurityGroupNameList = array<amazonawsString>
type cacheSecurityGroupMembership = {
@as("Status") status: amazonawsString,
@as("CacheSecurityGroupName") cacheSecurityGroupName: amazonawsString
}
type cacheParameterGroup = {
@as("ARN") aRN: amazonawsString,
@as("IsGlobal") isGlobal: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("CacheParameterGroupFamily") cacheParameterGroupFamily: amazonawsString,
@as("CacheParameterGroupName") cacheParameterGroupName: amazonawsString
}
type cacheNodeUpdateStatus = {
@as("NodeUpdateStatusModifiedDate") nodeUpdateStatusModifiedDate: tStamp,
@as("NodeUpdateInitiatedDate") nodeUpdateInitiatedDate: tStamp,
@as("NodeUpdateInitiatedBy") nodeUpdateInitiatedBy: nodeUpdateInitiatedBy,
@as("NodeUpdateEndDate") nodeUpdateEndDate: tStamp,
@as("NodeUpdateStartDate") nodeUpdateStartDate: tStamp,
@as("NodeDeletionDate") nodeDeletionDate: tStamp,
@as("NodeUpdateStatus") nodeUpdateStatus: nodeUpdateStatus,
@as("CacheNodeId") cacheNodeId: amazonawsString
}
type cacheNodeTypeSpecificValue = {
@as("Value") value: amazonawsString,
@as("CacheNodeType") cacheNodeType: amazonawsString
}
type cacheNodeIdsList = array<amazonawsString>
type cacheEngineVersion = {
@as("CacheEngineVersionDescription") cacheEngineVersionDescription: amazonawsString,
@as("CacheEngineDescription") cacheEngineDescription: amazonawsString,
@as("CacheParameterGroupFamily") cacheParameterGroupFamily: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString
}
type cacheClusterIdList = array<amazonawsString>
type availabilityZonesList = array<amazonawsString>
type availabilityZone = {
@as("Name") name: amazonawsString
}
type authentication = {
@as("PasswordCount") passwordCount: integerOptional,
@as("Type") type_: authenticationType
}
type userGroupsUpdateStatus = {
@as("UserGroupIdsToRemove") userGroupIdsToRemove: userGroupIdList,
@as("UserGroupIdsToAdd") userGroupIdsToAdd: userGroupIdList
}
type userGroupPendingChanges = {
@as("UserIdsToAdd") userIdsToAdd: userIdList,
@as("UserIdsToRemove") userIdsToRemove: userIdList
}
type user = {
@as("ARN") aRN: amazonawsString,
@as("Authentication") authentication: authentication,
@as("UserGroupIds") userGroupIds: userGroupIdList,
@as("AccessString") accessString: amazonawsString,
@as("Engine") engine: engineType,
@as("Status") status: amazonawsString,
@as("UserName") userName: amazonawsString,
@as("UserId") userId: amazonawsString
}
type unprocessedUpdateActionList = array<unprocessedUpdateAction>
type tagList = array<tag>
type subnet = {
@as("SubnetOutpost") subnetOutpost: subnetOutpost,
@as("SubnetAvailabilityZone") subnetAvailabilityZone: availabilityZone,
@as("SubnetIdentifier") subnetIdentifier: amazonawsString
}
type serviceUpdateList = array<serviceUpdate>
type securityGroupMembershipList = array<securityGroupMembership>
type reshardingStatus = {
@as("SlotMigration") slotMigration: slotMigration
}
type reshardingConfiguration = {
@as("PreferredAvailabilityZones") preferredAvailabilityZones: availabilityZonesList,
@as("NodeGroupId") nodeGroupId: allowedNodeGroupId
}
type recurringChargeList = array<recurringCharge>
type processedUpdateActionList = array<processedUpdateAction>
type parametersList = array<parameter>
type parameterNameValueList = array<parameterNameValue>
type nodeGroupMemberUpdateStatusList = array<nodeGroupMemberUpdateStatus>
type nodeGroupMember = {
@as("CurrentRole") currentRole: amazonawsString,
@as("PreferredOutpostArn") preferredOutpostArn: amazonawsString,
@as("PreferredAvailabilityZone") preferredAvailabilityZone: amazonawsString,
@as("ReadEndpoint") readEndpoint: endpoint,
@as("CacheNodeId") cacheNodeId: amazonawsString,
@as("CacheClusterId") cacheClusterId: amazonawsString
}
type nodeGroupConfiguration = {
@as("ReplicaOutpostArns") replicaOutpostArns: outpostArnsList,
@as("PrimaryOutpostArn") primaryOutpostArn: amazonawsString,
@as("ReplicaAvailabilityZones") replicaAvailabilityZones: availabilityZonesList,
@as("PrimaryAvailabilityZone") primaryAvailabilityZone: amazonawsString,
@as("ReplicaCount") replicaCount: integerOptional,
@as("Slots") slots: amazonawsString,
@as("NodeGroupId") nodeGroupId: allowedNodeGroupId
}
type globalReplicationGroupMemberList = array<globalReplicationGroupMember>
type globalNodeGroupList = array<globalNodeGroup>
type filter = {
@as("Values") values: option<filterValueList>,
@as("Name") name: option<filterName>
}
type eventList = array<event>
type eC2SecurityGroupList = array<eC2SecurityGroup>
type destinationDetails = {
@as("KinesisFirehoseDetails") kinesisFirehoseDetails: kinesisFirehoseDestinationDetails,
@as("CloudWatchLogsDetails") cloudWatchLogsDetails: cloudWatchLogsDestinationDetails
}
type customerNodeEndpointList = array<customerNodeEndpoint>
type configureShard = {
@as("PreferredOutpostArns") preferredOutpostArns: preferredOutpostArnList,
@as("PreferredAvailabilityZones") preferredAvailabilityZones: preferredAvailabilityZoneList,
@as("NewReplicaCount") newReplicaCount: option<amazonawsInteger>,
@as("NodeGroupId") nodeGroupId: option<allowedNodeGroupId>
}
type cacheSecurityGroupMembershipList = array<cacheSecurityGroupMembership>
type cacheParameterGroupStatus = {
@as("CacheNodeIdsToReboot") cacheNodeIdsToReboot: cacheNodeIdsList,
@as("ParameterApplyStatus") parameterApplyStatus: amazonawsString,
@as("CacheParameterGroupName") cacheParameterGroupName: amazonawsString
}
type cacheParameterGroupList = array<cacheParameterGroup>
type cacheNodeUpdateStatusList = array<cacheNodeUpdateStatus>
type cacheNodeTypeSpecificValueList = array<cacheNodeTypeSpecificValue>
type cacheNode = {
@as("CustomerOutpostArn") customerOutpostArn: amazonawsString,
@as("CustomerAvailabilityZone") customerAvailabilityZone: amazonawsString,
@as("SourceCacheNodeId") sourceCacheNodeId: amazonawsString,
@as("ParameterGroupStatus") parameterGroupStatus: amazonawsString,
@as("Endpoint") endpoint: endpoint,
@as("CacheNodeCreateTime") cacheNodeCreateTime: tStamp,
@as("CacheNodeStatus") cacheNodeStatus: amazonawsString,
@as("CacheNodeId") cacheNodeId: amazonawsString
}
type cacheEngineVersionList = array<cacheEngineVersion>
type userList = array<user>
type userGroup = {
@as("ARN") aRN: amazonawsString,
@as("ReplicationGroups") replicationGroups: uGReplicationGroupIdList,
@as("PendingChanges") pendingChanges: userGroupPendingChanges,
@as("UserIds") userIds: userIdList,
@as("Engine") engine: engineType,
@as("Status") status: amazonawsString,
@as("UserGroupId") userGroupId: amazonawsString
}
type subnetList = array<subnet>
type reshardingConfigurationList = array<reshardingConfiguration>
type reservedCacheNodesOffering = {
@as("RecurringCharges") recurringCharges: recurringChargeList,
@as("OfferingType") offeringType: amazonawsString,
@as("ProductDescription") productDescription: amazonawsString,
@as("UsagePrice") usagePrice: amazonawsDouble,
@as("FixedPrice") fixedPrice: amazonawsDouble,
@as("Duration") duration: amazonawsInteger,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("ReservedCacheNodesOfferingId") reservedCacheNodesOfferingId: amazonawsString
}
type reservedCacheNode = {
@as("ReservationARN") reservationARN: amazonawsString,
@as("RecurringCharges") recurringCharges: recurringChargeList,
@as("State") state: amazonawsString,
@as("OfferingType") offeringType: amazonawsString,
@as("ProductDescription") productDescription: amazonawsString,
@as("CacheNodeCount") cacheNodeCount: amazonawsInteger,
@as("UsagePrice") usagePrice: amazonawsDouble,
@as("FixedPrice") fixedPrice: amazonawsDouble,
@as("Duration") duration: amazonawsInteger,
@as("StartTime") startTime: tStamp,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("ReservedCacheNodesOfferingId") reservedCacheNodesOfferingId: amazonawsString,
@as("ReservedCacheNodeId") reservedCacheNodeId: amazonawsString
}
type replicaConfigurationList = array<configureShard>
type pendingLogDeliveryConfiguration = {
@as("LogFormat") logFormat: logFormat,
@as("DestinationDetails") destinationDetails: destinationDetails,
@as("DestinationType") destinationType: destinationType,
@as("LogType") logType: logType
}
type nodeSnapshot = {
@as("SnapshotCreateTime") snapshotCreateTime: tStamp,
@as("CacheNodeCreateTime") cacheNodeCreateTime: tStamp,
@as("CacheSize") cacheSize: amazonawsString,
@as("NodeGroupConfiguration") nodeGroupConfiguration: nodeGroupConfiguration,
@as("CacheNodeId") cacheNodeId: amazonawsString,
@as("NodeGroupId") nodeGroupId: amazonawsString,
@as("CacheClusterId") cacheClusterId: amazonawsString
}
type nodeGroupUpdateStatus = {
@as("NodeGroupMemberUpdateStatus") nodeGroupMemberUpdateStatus: nodeGroupMemberUpdateStatusList,
@as("NodeGroupId") nodeGroupId: amazonawsString
}
type nodeGroupMemberList = array<nodeGroupMember>
type nodeGroupConfigurationList = array<nodeGroupConfiguration>
type logDeliveryConfigurationRequest = {
@as("Enabled") enabled: booleanOptional,
@as("LogFormat") logFormat: logFormat,
@as("DestinationDetails") destinationDetails: destinationDetails,
@as("DestinationType") destinationType: destinationType,
@as("LogType") logType: logType
}
type logDeliveryConfiguration = {
@as("Message") message: amazonawsString,
@as("Status") status: logDeliveryConfigurationStatus,
@as("LogFormat") logFormat: logFormat,
@as("DestinationDetails") destinationDetails: destinationDetails,
@as("DestinationType") destinationType: destinationType,
@as("LogType") logType: logType
}
type globalReplicationGroup = {
@as("ARN") aRN: amazonawsString,
@as("AtRestEncryptionEnabled") atRestEncryptionEnabled: booleanOptional,
@as("TransitEncryptionEnabled") transitEncryptionEnabled: booleanOptional,
@as("AuthTokenEnabled") authTokenEnabled: booleanOptional,
@as("GlobalNodeGroups") globalNodeGroups: globalNodeGroupList,
@as("ClusterEnabled") clusterEnabled: booleanOptional,
@as("Members") members: globalReplicationGroupMemberList,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("Status") status: amazonawsString,
@as("GlobalReplicationGroupDescription") globalReplicationGroupDescription: amazonawsString,
@as("GlobalReplicationGroupId") globalReplicationGroupId: amazonawsString
}
type filterList = array<filter>
type cacheSecurityGroup = {
@as("ARN") aRN: amazonawsString,
@as("EC2SecurityGroups") eC2SecurityGroups: eC2SecurityGroupList,
@as("Description") description: amazonawsString,
@as("CacheSecurityGroupName") cacheSecurityGroupName: amazonawsString,
@as("OwnerId") ownerId: amazonawsString
}
type cacheNodeTypeSpecificParameter = {
@as("ChangeType") changeType: changeType,
@as("CacheNodeTypeSpecificValues") cacheNodeTypeSpecificValues: cacheNodeTypeSpecificValueList,
@as("MinimumEngineVersion") minimumEngineVersion: amazonawsString,
@as("IsModifiable") isModifiable: amazonawsBoolean,
@as("AllowedValues") allowedValues: amazonawsString,
@as("DataType") dataType: amazonawsString,
@as("Source") source: amazonawsString,
@as("Description") description: amazonawsString,
@as("ParameterName") parameterName: amazonawsString
}
type cacheNodeList = array<cacheNode>
type userGroupList = array<userGroup>
type reservedCacheNodesOfferingList = array<reservedCacheNodesOffering>
type reservedCacheNodeList = array<reservedCacheNode>
type regionalConfiguration = {
@as("ReshardingConfiguration") reshardingConfiguration: option<reshardingConfigurationList>,
@as("ReplicationGroupRegion") replicationGroupRegion: option<amazonawsString>,
@as("ReplicationGroupId") replicationGroupId: option<amazonawsString>
}
type pendingLogDeliveryConfigurationList = array<pendingLogDeliveryConfiguration>
type nodeSnapshotList = array<nodeSnapshot>
type nodeGroupUpdateStatusList = array<nodeGroupUpdateStatus>
type nodeGroup = {
@as("NodeGroupMembers") nodeGroupMembers: nodeGroupMemberList,
@as("Slots") slots: amazonawsString,
@as("ReaderEndpoint") readerEndpoint: endpoint,
@as("PrimaryEndpoint") primaryEndpoint: endpoint,
@as("Status") status: amazonawsString,
@as("NodeGroupId") nodeGroupId: amazonawsString
}
type logDeliveryConfigurationRequestList = array<logDeliveryConfigurationRequest>
type logDeliveryConfigurationList = array<logDeliveryConfiguration>
type globalReplicationGroupList = array<globalReplicationGroup>
type cacheSubnetGroup = {
@as("ARN") aRN: amazonawsString,
@as("Subnets") subnets: subnetList,
@as("VpcId") vpcId: amazonawsString,
@as("CacheSubnetGroupDescription") cacheSubnetGroupDescription: amazonawsString,
@as("CacheSubnetGroupName") cacheSubnetGroupName: amazonawsString
}
type cacheSecurityGroups = array<cacheSecurityGroup>
type cacheNodeTypeSpecificParametersList = array<cacheNodeTypeSpecificParameter>
type updateAction = {
@as("Engine") engine: amazonawsString,
@as("EstimatedUpdateTime") estimatedUpdateTime: amazonawsString,
@as("CacheNodeUpdateStatus") cacheNodeUpdateStatus: cacheNodeUpdateStatusList,
@as("NodeGroupUpdateStatus") nodeGroupUpdateStatus: nodeGroupUpdateStatusList,
@as("SlaMet") slaMet: slaMet,
@as("UpdateActionStatusModifiedDate") updateActionStatusModifiedDate: tStamp,
@as("NodesUpdated") nodesUpdated: amazonawsString,
@as("UpdateActionStatus") updateActionStatus: updateActionStatus,
@as("UpdateActionAvailableDate") updateActionAvailableDate: tStamp,
@as("ServiceUpdateType") serviceUpdateType: serviceUpdateType,
@as("ServiceUpdateRecommendedApplyByDate") serviceUpdateRecommendedApplyByDate: tStamp,
@as("ServiceUpdateStatus") serviceUpdateStatus: serviceUpdateStatus,
@as("ServiceUpdateSeverity") serviceUpdateSeverity: serviceUpdateSeverity,
@as("ServiceUpdateReleaseDate") serviceUpdateReleaseDate: tStamp,
@as("ServiceUpdateName") serviceUpdateName: amazonawsString,
@as("CacheClusterId") cacheClusterId: amazonawsString,
@as("ReplicationGroupId") replicationGroupId: amazonawsString
}
type snapshot = {
@as("ARN") aRN: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("NodeSnapshots") nodeSnapshots: nodeSnapshotList,
@as("AutomaticFailover") automaticFailover: automaticFailoverStatus,
@as("NumNodeGroups") numNodeGroups: integerOptional,
@as("SnapshotWindow") snapshotWindow: amazonawsString,
@as("SnapshotRetentionLimit") snapshotRetentionLimit: integerOptional,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: amazonawsBoolean,
@as("VpcId") vpcId: amazonawsString,
@as("CacheSubnetGroupName") cacheSubnetGroupName: amazonawsString,
@as("CacheParameterGroupName") cacheParameterGroupName: amazonawsString,
@as("Port") port: integerOptional,
@as("TopicArn") topicArn: amazonawsString,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("CacheClusterCreateTime") cacheClusterCreateTime: tStamp,
@as("PreferredOutpostArn") preferredOutpostArn: amazonawsString,
@as("PreferredAvailabilityZone") preferredAvailabilityZone: amazonawsString,
@as("NumCacheNodes") numCacheNodes: integerOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("SnapshotSource") snapshotSource: amazonawsString,
@as("SnapshotStatus") snapshotStatus: amazonawsString,
@as("CacheClusterId") cacheClusterId: amazonawsString,
@as("ReplicationGroupDescription") replicationGroupDescription: amazonawsString,
@as("ReplicationGroupId") replicationGroupId: amazonawsString,
@as("SnapshotName") snapshotName: amazonawsString
}
type replicationGroupPendingModifiedValues = {
@as("LogDeliveryConfigurations") logDeliveryConfigurations: pendingLogDeliveryConfigurationList,
@as("UserGroups") userGroups: userGroupsUpdateStatus,
@as("AuthTokenStatus") authTokenStatus: authTokenUpdateStatus,
@as("Resharding") resharding: reshardingStatus,
@as("AutomaticFailoverStatus") automaticFailoverStatus: pendingAutomaticFailoverStatus,
@as("PrimaryClusterId") primaryClusterId: amazonawsString
}
type regionalConfigurationList = array<regionalConfiguration>
type pendingModifiedValues = {
@as("LogDeliveryConfigurations") logDeliveryConfigurations: pendingLogDeliveryConfigurationList,
@as("AuthTokenStatus") authTokenStatus: authTokenUpdateStatus,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("CacheNodeIdsToRemove") cacheNodeIdsToRemove: cacheNodeIdsList,
@as("NumCacheNodes") numCacheNodes: integerOptional
}
type nodeGroupList = array<nodeGroup>
type engineDefaults = {
@as("CacheNodeTypeSpecificParameters") cacheNodeTypeSpecificParameters: cacheNodeTypeSpecificParametersList,
@as("Parameters") parameters: parametersList,
@as("Marker") marker: amazonawsString,
@as("CacheParameterGroupFamily") cacheParameterGroupFamily: amazonawsString
}
type cacheSubnetGroups = array<cacheSubnetGroup>
type updateActionList = array<updateAction>
type snapshotList = array<snapshot>
type replicationGroup = {
@as("LogDeliveryConfigurations") logDeliveryConfigurations: logDeliveryConfigurationList,
@as("UserGroupIds") userGroupIds: userGroupIdList,
@as("ARN") aRN: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("MemberClustersOutpostArns") memberClustersOutpostArns: replicationGroupOutpostArnList,
@as("AtRestEncryptionEnabled") atRestEncryptionEnabled: booleanOptional,
@as("TransitEncryptionEnabled") transitEncryptionEnabled: booleanOptional,
@as("AuthTokenLastModifiedDate") authTokenLastModifiedDate: tStamp,
@as("AuthTokenEnabled") authTokenEnabled: booleanOptional,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("ClusterEnabled") clusterEnabled: booleanOptional,
@as("SnapshotWindow") snapshotWindow: amazonawsString,
@as("SnapshotRetentionLimit") snapshotRetentionLimit: integerOptional,
@as("ConfigurationEndpoint") configurationEndpoint: endpoint,
@as("MultiAZ") multiAZ: multiAZStatus,
@as("AutomaticFailover") automaticFailover: automaticFailoverStatus,
@as("SnapshottingClusterId") snapshottingClusterId: amazonawsString,
@as("NodeGroups") nodeGroups: nodeGroupList,
@as("MemberClusters") memberClusters: clusterIdList,
@as("PendingModifiedValues") pendingModifiedValues: replicationGroupPendingModifiedValues,
@as("Status") status: amazonawsString,
@as("GlobalReplicationGroupInfo") globalReplicationGroupInfo: globalReplicationGroupInfo,
@as("Description") description: amazonawsString,
@as("ReplicationGroupId") replicationGroupId: amazonawsString
}
type cacheCluster = {
@as("LogDeliveryConfigurations") logDeliveryConfigurations: logDeliveryConfigurationList,
@as("ReplicationGroupLogDeliveryEnabled") replicationGroupLogDeliveryEnabled: amazonawsBoolean,
@as("ARN") aRN: amazonawsString,
@as("AtRestEncryptionEnabled") atRestEncryptionEnabled: booleanOptional,
@as("TransitEncryptionEnabled") transitEncryptionEnabled: booleanOptional,
@as("AuthTokenLastModifiedDate") authTokenLastModifiedDate: tStamp,
@as("AuthTokenEnabled") authTokenEnabled: booleanOptional,
@as("SnapshotWindow") snapshotWindow: amazonawsString,
@as("SnapshotRetentionLimit") snapshotRetentionLimit: integerOptional,
@as("ReplicationGroupId") replicationGroupId: amazonawsString,
@as("SecurityGroups") securityGroups: securityGroupMembershipList,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: amazonawsBoolean,
@as("CacheNodes") cacheNodes: cacheNodeList,
@as("CacheSubnetGroupName") cacheSubnetGroupName: amazonawsString,
@as("CacheParameterGroup") cacheParameterGroup: cacheParameterGroupStatus,
@as("CacheSecurityGroups") cacheSecurityGroups: cacheSecurityGroupMembershipList,
@as("NotificationConfiguration") notificationConfiguration: notificationConfiguration,
@as("PendingModifiedValues") pendingModifiedValues: pendingModifiedValues,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("CacheClusterCreateTime") cacheClusterCreateTime: tStamp,
@as("PreferredOutpostArn") preferredOutpostArn: amazonawsString,
@as("PreferredAvailabilityZone") preferredAvailabilityZone: amazonawsString,
@as("NumCacheNodes") numCacheNodes: integerOptional,
@as("CacheClusterStatus") cacheClusterStatus: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("ClientDownloadLandingPage") clientDownloadLandingPage: amazonawsString,
@as("ConfigurationEndpoint") configurationEndpoint: endpoint,
@as("CacheClusterId") cacheClusterId: amazonawsString
}
type replicationGroupList = array<replicationGroup>
type cacheClusterList = array<cacheCluster>
type clientType;
@module("@aws-sdk/client-elasticache") @new external createClient: unit => clientType = "ElastiCacheClient";
module DeleteCacheSubnetGroup = {
  type t;
  type request = {
@as("CacheSubnetGroupName") cacheSubnetGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DeleteCacheSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCacheSecurityGroup = {
  type t;
  type request = {
@as("CacheSecurityGroupName") cacheSecurityGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DeleteCacheSecurityGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCacheParameterGroup = {
  type t;
  type request = {
@as("CacheParameterGroupName") cacheParameterGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DeleteCacheParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ModifyUser = {
  type t;
  type request = {
@as("NoPasswordRequired") noPasswordRequired: booleanOptional,
@as("Passwords") passwords: passwordListInput,
@as("AppendAccessString") appendAccessString: accessString,
@as("AccessString") accessString: accessString,
@as("UserId") userId: option<userId>
}
  type response = user;
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "ModifyUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAllowedNodeTypeModifications = {
  type t;
  type request = {
@as("ReplicationGroupId") replicationGroupId: amazonawsString,
@as("CacheClusterId") cacheClusterId: amazonawsString
}
  type response = {
@as("ScaleDownModifications") scaleDownModifications: nodeTypeList,
@as("ScaleUpModifications") scaleUpModifications: nodeTypeList
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "ListAllowedNodeTypeModificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("UserId") userId: option<userId>
}
  type response = user;
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DeleteUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetCacheParameterGroup = {
  type t;
  type request = {
@as("ParameterNameValues") parameterNameValues: parameterNameValueList,
@as("ResetAllParameters") resetAllParameters: amazonawsBoolean,
@as("CacheParameterGroupName") cacheParameterGroupName: option<amazonawsString>
}
  type response = {
@as("CacheParameterGroupName") cacheParameterGroupName: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "ResetCacheParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<keyList>,
@as("ResourceName") resourceName: option<amazonawsString>
}
  type response = {
@as("TagList") tagList: tagList
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "RemoveTagsFromResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyUserGroup = {
  type t;
  type request = {
@as("UserIdsToRemove") userIdsToRemove: userIdListInput,
@as("UserIdsToAdd") userIdsToAdd: userIdListInput,
@as("UserGroupId") userGroupId: option<amazonawsString>
}
  type response = userGroup;
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "ModifyUserGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyCacheParameterGroup = {
  type t;
  type request = {
@as("ParameterNameValues") parameterNameValues: option<parameterNameValueList>,
@as("CacheParameterGroupName") cacheParameterGroupName: option<amazonawsString>
}
  type response = {
@as("CacheParameterGroupName") cacheParameterGroupName: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "ModifyCacheParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<amazonawsString>
}
  type response = {
@as("TagList") tagList: tagList
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeServiceUpdates = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ServiceUpdateStatus") serviceUpdateStatus: serviceUpdateStatusList,
@as("ServiceUpdateName") serviceUpdateName: amazonawsString
}
  type response = {
@as("ServiceUpdates") serviceUpdates: serviceUpdateList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeServiceUpdatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEvents = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Duration") duration: integerOptional,
@as("EndTime") endTime: tStamp,
@as("StartTime") startTime: tStamp,
@as("SourceType") sourceType: sourceType,
@as("SourceIdentifier") sourceIdentifier: amazonawsString
}
  type response = {
@as("Events") events: eventList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCacheParameterGroups = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("CacheParameterGroupName") cacheParameterGroupName: amazonawsString
}
  type response = {
@as("CacheParameterGroups") cacheParameterGroups: cacheParameterGroupList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeCacheParameterGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCacheEngineVersions = {
  type t;
  type request = {
@as("DefaultOnly") defaultOnly: amazonawsBoolean,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("CacheParameterGroupFamily") cacheParameterGroupFamily: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString
}
  type response = {
@as("CacheEngineVersions") cacheEngineVersions: cacheEngineVersionList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeCacheEngineVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUserGroup = {
  type t;
  type request = {
@as("UserGroupId") userGroupId: option<amazonawsString>
}
  type response = userGroup;
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DeleteUserGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUserGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("UserIds") userIds: userIdListInput,
@as("Engine") engine: option<engineType>,
@as("UserGroupId") userGroupId: option<amazonawsString>
}
  type response = userGroup;
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "CreateUserGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("NoPasswordRequired") noPasswordRequired: booleanOptional,
@as("AccessString") accessString: option<accessString>,
@as("Passwords") passwords: passwordListInput,
@as("Engine") engine: option<engineType>,
@as("UserName") userName: option<userName>,
@as("UserId") userId: option<userId>
}
  type response = user;
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "CreateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCacheParameterGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: option<amazonawsString>,
@as("CacheParameterGroupFamily") cacheParameterGroupFamily: option<amazonawsString>,
@as("CacheParameterGroupName") cacheParameterGroupName: option<amazonawsString>
}
  type response = {
@as("CacheParameterGroup") cacheParameterGroup: cacheParameterGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "CreateCacheParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchStopUpdateAction = {
  type t;
  type request = {
@as("ServiceUpdateName") serviceUpdateName: option<amazonawsString>,
@as("CacheClusterIds") cacheClusterIds: cacheClusterIdList,
@as("ReplicationGroupIds") replicationGroupIds: replicationGroupIdList
}
  type response = {
@as("UnprocessedUpdateActions") unprocessedUpdateActions: unprocessedUpdateActionList,
@as("ProcessedUpdateActions") processedUpdateActions: processedUpdateActionList
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "BatchStopUpdateActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchApplyUpdateAction = {
  type t;
  type request = {
@as("ServiceUpdateName") serviceUpdateName: option<amazonawsString>,
@as("CacheClusterIds") cacheClusterIds: cacheClusterIdList,
@as("ReplicationGroupIds") replicationGroupIds: replicationGroupIdList
}
  type response = {
@as("UnprocessedUpdateActions") unprocessedUpdateActions: unprocessedUpdateActionList,
@as("ProcessedUpdateActions") processedUpdateActions: processedUpdateActionList
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "BatchApplyUpdateActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTagsToResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceName") resourceName: option<amazonawsString>
}
  type response = {
@as("TagList") tagList: tagList
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "AddTagsToResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeCacheSecurityGroupIngress = {
  type t;
  type request = {
@as("EC2SecurityGroupOwnerId") eC2SecurityGroupOwnerId: option<amazonawsString>,
@as("EC2SecurityGroupName") eC2SecurityGroupName: option<amazonawsString>,
@as("CacheSecurityGroupName") cacheSecurityGroupName: option<amazonawsString>
}
  type response = {
@as("CacheSecurityGroup") cacheSecurityGroup: cacheSecurityGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "RevokeCacheSecurityGroupIngressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RebalanceSlotsInGlobalReplicationGroup = {
  type t;
  type request = {
@as("ApplyImmediately") applyImmediately: option<amazonawsBoolean>,
@as("GlobalReplicationGroupId") globalReplicationGroupId: option<amazonawsString>
}
  type response = {
@as("GlobalReplicationGroup") globalReplicationGroup: globalReplicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "RebalanceSlotsInGlobalReplicationGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PurchaseReservedCacheNodesOffering = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("CacheNodeCount") cacheNodeCount: integerOptional,
@as("ReservedCacheNodeId") reservedCacheNodeId: amazonawsString,
@as("ReservedCacheNodesOfferingId") reservedCacheNodesOfferingId: option<amazonawsString>
}
  type response = {
@as("ReservedCacheNode") reservedCacheNode: reservedCacheNode
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "PurchaseReservedCacheNodesOfferingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyGlobalReplicationGroup = {
  type t;
  type request = {
@as("AutomaticFailoverEnabled") automaticFailoverEnabled: booleanOptional,
@as("GlobalReplicationGroupDescription") globalReplicationGroupDescription: amazonawsString,
@as("CacheParameterGroupName") cacheParameterGroupName: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("ApplyImmediately") applyImmediately: option<amazonawsBoolean>,
@as("GlobalReplicationGroupId") globalReplicationGroupId: option<amazonawsString>
}
  type response = {
@as("GlobalReplicationGroup") globalReplicationGroup: globalReplicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "ModifyGlobalReplicationGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module FailoverGlobalReplicationGroup = {
  type t;
  type request = {
@as("PrimaryReplicationGroupId") primaryReplicationGroupId: option<amazonawsString>,
@as("PrimaryRegion") primaryRegion: option<amazonawsString>,
@as("GlobalReplicationGroupId") globalReplicationGroupId: option<amazonawsString>
}
  type response = {
@as("GlobalReplicationGroup") globalReplicationGroup: globalReplicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "FailoverGlobalReplicationGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateGlobalReplicationGroup = {
  type t;
  type request = {
@as("ReplicationGroupRegion") replicationGroupRegion: option<amazonawsString>,
@as("ReplicationGroupId") replicationGroupId: option<amazonawsString>,
@as("GlobalReplicationGroupId") globalReplicationGroupId: option<amazonawsString>
}
  type response = {
@as("GlobalReplicationGroup") globalReplicationGroup: globalReplicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DisassociateGlobalReplicationGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUsers = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("UserId") userId: userId,
@as("Engine") engine: engineType
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("Users") users: userList
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGlobalReplicationGroup = {
  type t;
  type request = {
@as("RetainPrimaryReplicationGroup") retainPrimaryReplicationGroup: option<amazonawsBoolean>,
@as("GlobalReplicationGroupId") globalReplicationGroupId: option<amazonawsString>
}
  type response = {
@as("GlobalReplicationGroup") globalReplicationGroup: globalReplicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DeleteGlobalReplicationGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DecreaseNodeGroupsInGlobalReplicationGroup = {
  type t;
  type request = {
@as("ApplyImmediately") applyImmediately: option<amazonawsBoolean>,
@as("GlobalNodeGroupsToRetain") globalNodeGroupsToRetain: globalNodeGroupIdList,
@as("GlobalNodeGroupsToRemove") globalNodeGroupsToRemove: globalNodeGroupIdList,
@as("NodeGroupCount") nodeGroupCount: option<amazonawsInteger>,
@as("GlobalReplicationGroupId") globalReplicationGroupId: option<amazonawsString>
}
  type response = {
@as("GlobalReplicationGroup") globalReplicationGroup: globalReplicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DecreaseNodeGroupsInGlobalReplicationGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGlobalReplicationGroup = {
  type t;
  type request = {
@as("PrimaryReplicationGroupId") primaryReplicationGroupId: option<amazonawsString>,
@as("GlobalReplicationGroupDescription") globalReplicationGroupDescription: amazonawsString,
@as("GlobalReplicationGroupIdSuffix") globalReplicationGroupIdSuffix: option<amazonawsString>
}
  type response = {
@as("GlobalReplicationGroup") globalReplicationGroup: globalReplicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "CreateGlobalReplicationGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCacheSecurityGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: option<amazonawsString>,
@as("CacheSecurityGroupName") cacheSecurityGroupName: option<amazonawsString>
}
  type response = {
@as("CacheSecurityGroup") cacheSecurityGroup: cacheSecurityGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "CreateCacheSecurityGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AuthorizeCacheSecurityGroupIngress = {
  type t;
  type request = {
@as("EC2SecurityGroupOwnerId") eC2SecurityGroupOwnerId: option<amazonawsString>,
@as("EC2SecurityGroupName") eC2SecurityGroupName: option<amazonawsString>,
@as("CacheSecurityGroupName") cacheSecurityGroupName: option<amazonawsString>
}
  type response = {
@as("CacheSecurityGroup") cacheSecurityGroup: cacheSecurityGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "AuthorizeCacheSecurityGroupIngressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyCacheSubnetGroup = {
  type t;
  type request = {
@as("SubnetIds") subnetIds: subnetIdentifierList,
@as("CacheSubnetGroupDescription") cacheSubnetGroupDescription: amazonawsString,
@as("CacheSubnetGroupName") cacheSubnetGroupName: option<amazonawsString>
}
  type response = {
@as("CacheSubnetGroup") cacheSubnetGroup: cacheSubnetGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "ModifyCacheSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUserGroups = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("UserGroupId") userGroupId: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("UserGroups") userGroups: userGroupList
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeUserGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedCacheNodesOfferings = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("OfferingType") offeringType: amazonawsString,
@as("ProductDescription") productDescription: amazonawsString,
@as("Duration") duration: amazonawsString,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("ReservedCacheNodesOfferingId") reservedCacheNodesOfferingId: amazonawsString
}
  type response = {
@as("ReservedCacheNodesOfferings") reservedCacheNodesOfferings: reservedCacheNodesOfferingList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeReservedCacheNodesOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedCacheNodes = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("OfferingType") offeringType: amazonawsString,
@as("ProductDescription") productDescription: amazonawsString,
@as("Duration") duration: amazonawsString,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("ReservedCacheNodesOfferingId") reservedCacheNodesOfferingId: amazonawsString,
@as("ReservedCacheNodeId") reservedCacheNodeId: amazonawsString
}
  type response = {
@as("ReservedCacheNodes") reservedCacheNodes: reservedCacheNodeList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeReservedCacheNodesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGlobalReplicationGroups = {
  type t;
  type request = {
@as("ShowMemberInfo") showMemberInfo: booleanOptional,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("GlobalReplicationGroupId") globalReplicationGroupId: amazonawsString
}
  type response = {
@as("GlobalReplicationGroups") globalReplicationGroups: globalReplicationGroupList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeGlobalReplicationGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCacheSecurityGroups = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("CacheSecurityGroupName") cacheSecurityGroupName: amazonawsString
}
  type response = {
@as("CacheSecurityGroups") cacheSecurityGroups: cacheSecurityGroups,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeCacheSecurityGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCacheParameters = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Source") source: amazonawsString,
@as("CacheParameterGroupName") cacheParameterGroupName: option<amazonawsString>
}
  type response = {
@as("CacheNodeTypeSpecificParameters") cacheNodeTypeSpecificParameters: cacheNodeTypeSpecificParametersList,
@as("Parameters") parameters: parametersList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeCacheParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCacheSubnetGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("SubnetIds") subnetIds: option<subnetIdentifierList>,
@as("CacheSubnetGroupDescription") cacheSubnetGroupDescription: option<amazonawsString>,
@as("CacheSubnetGroupName") cacheSubnetGroupName: option<amazonawsString>
}
  type response = {
@as("CacheSubnetGroup") cacheSubnetGroup: cacheSubnetGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "CreateCacheSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module IncreaseNodeGroupsInGlobalReplicationGroup = {
  type t;
  type request = {
@as("ApplyImmediately") applyImmediately: option<amazonawsBoolean>,
@as("RegionalConfigurations") regionalConfigurations: regionalConfigurationList,
@as("NodeGroupCount") nodeGroupCount: option<amazonawsInteger>,
@as("GlobalReplicationGroupId") globalReplicationGroupId: option<amazonawsString>
}
  type response = {
@as("GlobalReplicationGroup") globalReplicationGroup: globalReplicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "IncreaseNodeGroupsInGlobalReplicationGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEngineDefaultParameters = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("CacheParameterGroupFamily") cacheParameterGroupFamily: option<amazonawsString>
}
  type response = {
@as("EngineDefaults") engineDefaults: engineDefaults
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeEngineDefaultParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCacheSubnetGroups = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("CacheSubnetGroupName") cacheSubnetGroupName: amazonawsString
}
  type response = {
@as("CacheSubnetGroups") cacheSubnetGroups: cacheSubnetGroups,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeCacheSubnetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSnapshot = {
  type t;
  type request = {
@as("SnapshotName") snapshotName: option<amazonawsString>
}
  type response = {
@as("Snapshot") snapshot: snapshot
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DeleteSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSnapshot = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("SnapshotName") snapshotName: option<amazonawsString>,
@as("CacheClusterId") cacheClusterId: amazonawsString,
@as("ReplicationGroupId") replicationGroupId: amazonawsString
}
  type response = {
@as("Snapshot") snapshot: snapshot
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "CreateSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopySnapshot = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("TargetBucket") targetBucket: amazonawsString,
@as("TargetSnapshotName") targetSnapshotName: option<amazonawsString>,
@as("SourceSnapshotName") sourceSnapshotName: option<amazonawsString>
}
  type response = {
@as("Snapshot") snapshot: snapshot
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "CopySnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestFailover = {
  type t;
  type request = {
@as("NodeGroupId") nodeGroupId: option<allowedNodeGroupId>,
@as("ReplicationGroupId") replicationGroupId: option<amazonawsString>
}
  type response = {
@as("ReplicationGroup") replicationGroup: replicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "TestFailoverCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartMigration = {
  type t;
  type request = {
@as("CustomerNodeEndpointList") customerNodeEndpointList: option<customerNodeEndpointList>,
@as("ReplicationGroupId") replicationGroupId: option<amazonawsString>
}
  type response = {
@as("ReplicationGroup") replicationGroup: replicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "StartMigrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RebootCacheCluster = {
  type t;
  type request = {
@as("CacheNodeIdsToReboot") cacheNodeIdsToReboot: option<cacheNodeIdsList>,
@as("CacheClusterId") cacheClusterId: option<amazonawsString>
}
  type response = {
@as("CacheCluster") cacheCluster: cacheCluster
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "RebootCacheClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyReplicationGroupShardConfiguration = {
  type t;
  type request = {
@as("NodeGroupsToRetain") nodeGroupsToRetain: nodeGroupsToRetainList,
@as("NodeGroupsToRemove") nodeGroupsToRemove: nodeGroupsToRemoveList,
@as("ReshardingConfiguration") reshardingConfiguration: reshardingConfigurationList,
@as("ApplyImmediately") applyImmediately: option<amazonawsBoolean>,
@as("NodeGroupCount") nodeGroupCount: option<amazonawsInteger>,
@as("ReplicationGroupId") replicationGroupId: option<amazonawsString>
}
  type response = {
@as("ReplicationGroup") replicationGroup: replicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "ModifyReplicationGroupShardConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyReplicationGroup = {
  type t;
  type request = {
@as("LogDeliveryConfigurations") logDeliveryConfigurations: logDeliveryConfigurationRequestList,
@as("RemoveUserGroups") removeUserGroups: booleanOptional,
@as("UserGroupIdsToRemove") userGroupIdsToRemove: userGroupIdList,
@as("UserGroupIdsToAdd") userGroupIdsToAdd: userGroupIdList,
@as("AuthTokenUpdateStrategy") authTokenUpdateStrategy: authTokenUpdateStrategyType,
@as("AuthToken") authToken: amazonawsString,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("SnapshotWindow") snapshotWindow: amazonawsString,
@as("SnapshotRetentionLimit") snapshotRetentionLimit: integerOptional,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("ApplyImmediately") applyImmediately: amazonawsBoolean,
@as("NotificationTopicStatus") notificationTopicStatus: amazonawsString,
@as("CacheParameterGroupName") cacheParameterGroupName: amazonawsString,
@as("NotificationTopicArn") notificationTopicArn: amazonawsString,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("SecurityGroupIds") securityGroupIds: securityGroupIdsList,
@as("CacheSecurityGroupNames") cacheSecurityGroupNames: cacheSecurityGroupNameList,
@as("NodeGroupId") nodeGroupId: amazonawsString,
@as("MultiAZEnabled") multiAZEnabled: booleanOptional,
@as("AutomaticFailoverEnabled") automaticFailoverEnabled: booleanOptional,
@as("SnapshottingClusterId") snapshottingClusterId: amazonawsString,
@as("PrimaryClusterId") primaryClusterId: amazonawsString,
@as("ReplicationGroupDescription") replicationGroupDescription: amazonawsString,
@as("ReplicationGroupId") replicationGroupId: option<amazonawsString>
}
  type response = {
@as("ReplicationGroup") replicationGroup: replicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "ModifyReplicationGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyCacheCluster = {
  type t;
  type request = {
@as("LogDeliveryConfigurations") logDeliveryConfigurations: logDeliveryConfigurationRequestList,
@as("AuthTokenUpdateStrategy") authTokenUpdateStrategy: authTokenUpdateStrategyType,
@as("AuthToken") authToken: amazonawsString,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("SnapshotWindow") snapshotWindow: amazonawsString,
@as("SnapshotRetentionLimit") snapshotRetentionLimit: integerOptional,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("ApplyImmediately") applyImmediately: amazonawsBoolean,
@as("NotificationTopicStatus") notificationTopicStatus: amazonawsString,
@as("CacheParameterGroupName") cacheParameterGroupName: amazonawsString,
@as("NotificationTopicArn") notificationTopicArn: amazonawsString,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("SecurityGroupIds") securityGroupIds: securityGroupIdsList,
@as("CacheSecurityGroupNames") cacheSecurityGroupNames: cacheSecurityGroupNameList,
@as("NewAvailabilityZones") newAvailabilityZones: preferredAvailabilityZoneList,
@as("AZMode") aZMode: aZMode,
@as("CacheNodeIdsToRemove") cacheNodeIdsToRemove: cacheNodeIdsList,
@as("NumCacheNodes") numCacheNodes: integerOptional,
@as("CacheClusterId") cacheClusterId: option<amazonawsString>
}
  type response = {
@as("CacheCluster") cacheCluster: cacheCluster
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "ModifyCacheClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module IncreaseReplicaCount = {
  type t;
  type request = {
@as("ApplyImmediately") applyImmediately: option<amazonawsBoolean>,
@as("ReplicaConfiguration") replicaConfiguration: replicaConfigurationList,
@as("NewReplicaCount") newReplicaCount: integerOptional,
@as("ReplicationGroupId") replicationGroupId: option<amazonawsString>
}
  type response = {
@as("ReplicationGroup") replicationGroup: replicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "IncreaseReplicaCountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUpdateActions = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ShowNodeLevelUpdateStatus") showNodeLevelUpdateStatus: booleanOptional,
@as("UpdateActionStatus") updateActionStatus: updateActionStatusList,
@as("ServiceUpdateTimeRange") serviceUpdateTimeRange: timeRangeFilter,
@as("ServiceUpdateStatus") serviceUpdateStatus: serviceUpdateStatusList,
@as("Engine") engine: amazonawsString,
@as("CacheClusterIds") cacheClusterIds: cacheClusterIdList,
@as("ReplicationGroupIds") replicationGroupIds: replicationGroupIdList,
@as("ServiceUpdateName") serviceUpdateName: amazonawsString
}
  type response = {
@as("UpdateActions") updateActions: updateActionList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeUpdateActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSnapshots = {
  type t;
  type request = {
@as("ShowNodeGroupConfig") showNodeGroupConfig: booleanOptional,
@as("MaxRecords") maxRecords: integerOptional,
@as("Marker") marker: amazonawsString,
@as("SnapshotSource") snapshotSource: amazonawsString,
@as("SnapshotName") snapshotName: amazonawsString,
@as("CacheClusterId") cacheClusterId: amazonawsString,
@as("ReplicationGroupId") replicationGroupId: amazonawsString
}
  type response = {
@as("Snapshots") snapshots: snapshotList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationGroup = {
  type t;
  type request = {
@as("FinalSnapshotIdentifier") finalSnapshotIdentifier: amazonawsString,
@as("RetainPrimaryCluster") retainPrimaryCluster: booleanOptional,
@as("ReplicationGroupId") replicationGroupId: option<amazonawsString>
}
  type response = {
@as("ReplicationGroup") replicationGroup: replicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DeleteReplicationGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCacheCluster = {
  type t;
  type request = {
@as("FinalSnapshotIdentifier") finalSnapshotIdentifier: amazonawsString,
@as("CacheClusterId") cacheClusterId: option<amazonawsString>
}
  type response = {
@as("CacheCluster") cacheCluster: cacheCluster
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DeleteCacheClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DecreaseReplicaCount = {
  type t;
  type request = {
@as("ApplyImmediately") applyImmediately: option<amazonawsBoolean>,
@as("ReplicasToRemove") replicasToRemove: removeReplicasList,
@as("ReplicaConfiguration") replicaConfiguration: replicaConfigurationList,
@as("NewReplicaCount") newReplicaCount: integerOptional,
@as("ReplicationGroupId") replicationGroupId: option<amazonawsString>
}
  type response = {
@as("ReplicationGroup") replicationGroup: replicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DecreaseReplicaCountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationGroup = {
  type t;
  type request = {
@as("LogDeliveryConfigurations") logDeliveryConfigurations: logDeliveryConfigurationRequestList,
@as("UserGroupIds") userGroupIds: userGroupIdListInput,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("AtRestEncryptionEnabled") atRestEncryptionEnabled: booleanOptional,
@as("TransitEncryptionEnabled") transitEncryptionEnabled: booleanOptional,
@as("AuthToken") authToken: amazonawsString,
@as("SnapshotWindow") snapshotWindow: amazonawsString,
@as("SnapshotRetentionLimit") snapshotRetentionLimit: integerOptional,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("NotificationTopicArn") notificationTopicArn: amazonawsString,
@as("Port") port: integerOptional,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("SnapshotName") snapshotName: amazonawsString,
@as("SnapshotArns") snapshotArns: snapshotArnsList,
@as("Tags") tags: tagList,
@as("SecurityGroupIds") securityGroupIds: securityGroupIdsList,
@as("CacheSecurityGroupNames") cacheSecurityGroupNames: cacheSecurityGroupNameList,
@as("CacheSubnetGroupName") cacheSubnetGroupName: amazonawsString,
@as("CacheParameterGroupName") cacheParameterGroupName: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("NodeGroupConfiguration") nodeGroupConfiguration: nodeGroupConfigurationList,
@as("ReplicasPerNodeGroup") replicasPerNodeGroup: integerOptional,
@as("NumNodeGroups") numNodeGroups: integerOptional,
@as("PreferredCacheClusterAZs") preferredCacheClusterAZs: availabilityZonesList,
@as("NumCacheClusters") numCacheClusters: integerOptional,
@as("MultiAZEnabled") multiAZEnabled: booleanOptional,
@as("AutomaticFailoverEnabled") automaticFailoverEnabled: booleanOptional,
@as("PrimaryClusterId") primaryClusterId: amazonawsString,
@as("GlobalReplicationGroupId") globalReplicationGroupId: amazonawsString,
@as("ReplicationGroupDescription") replicationGroupDescription: option<amazonawsString>,
@as("ReplicationGroupId") replicationGroupId: option<amazonawsString>
}
  type response = {
@as("ReplicationGroup") replicationGroup: replicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "CreateReplicationGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCacheCluster = {
  type t;
  type request = {
@as("LogDeliveryConfigurations") logDeliveryConfigurations: logDeliveryConfigurationRequestList,
@as("PreferredOutpostArns") preferredOutpostArns: preferredOutpostArnList,
@as("PreferredOutpostArn") preferredOutpostArn: amazonawsString,
@as("OutpostMode") outpostMode: outpostMode,
@as("AuthToken") authToken: amazonawsString,
@as("SnapshotWindow") snapshotWindow: amazonawsString,
@as("SnapshotRetentionLimit") snapshotRetentionLimit: integerOptional,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("NotificationTopicArn") notificationTopicArn: amazonawsString,
@as("Port") port: integerOptional,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("SnapshotName") snapshotName: amazonawsString,
@as("SnapshotArns") snapshotArns: snapshotArnsList,
@as("Tags") tags: tagList,
@as("SecurityGroupIds") securityGroupIds: securityGroupIdsList,
@as("CacheSecurityGroupNames") cacheSecurityGroupNames: cacheSecurityGroupNameList,
@as("CacheSubnetGroupName") cacheSubnetGroupName: amazonawsString,
@as("CacheParameterGroupName") cacheParameterGroupName: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("CacheNodeType") cacheNodeType: amazonawsString,
@as("NumCacheNodes") numCacheNodes: integerOptional,
@as("PreferredAvailabilityZones") preferredAvailabilityZones: preferredAvailabilityZoneList,
@as("PreferredAvailabilityZone") preferredAvailabilityZone: amazonawsString,
@as("AZMode") aZMode: aZMode,
@as("ReplicationGroupId") replicationGroupId: amazonawsString,
@as("CacheClusterId") cacheClusterId: option<amazonawsString>
}
  type response = {
@as("CacheCluster") cacheCluster: cacheCluster
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "CreateCacheClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CompleteMigration = {
  type t;
  type request = {
@as("Force") force: amazonawsBoolean,
@as("ReplicationGroupId") replicationGroupId: option<amazonawsString>
}
  type response = {
@as("ReplicationGroup") replicationGroup: replicationGroup
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "CompleteMigrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationGroups = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ReplicationGroupId") replicationGroupId: amazonawsString
}
  type response = {
@as("ReplicationGroups") replicationGroups: replicationGroupList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeReplicationGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCacheClusters = {
  type t;
  type request = {
@as("ShowCacheClustersNotInReplicationGroups") showCacheClustersNotInReplicationGroups: booleanOptional,
@as("ShowCacheNodeInfo") showCacheNodeInfo: booleanOptional,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("CacheClusterId") cacheClusterId: amazonawsString
}
  type response = {
@as("CacheClusters") cacheClusters: cacheClusterList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-elasticache") @new external new_: (request) => t = "DescribeCacheClustersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
