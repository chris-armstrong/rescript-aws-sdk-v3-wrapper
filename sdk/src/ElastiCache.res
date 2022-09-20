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
type logType = [@as("engine-log") #Engine_Log | @as("slow-log") #Slow_Log]
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
type dataTieringStatus = [@as("disabled") #Disabled | @as("enabled") #Enabled]
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
@ocaml.doc(
  "<p>Update action that has failed to be processed for the corresponding apply/stop request</p>"
)
type unprocessedUpdateAction = {
  @ocaml.doc("<p>The error message that describes the reason the request was not processed</p>")
  @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc("<p>The error type for requests that are not processed</p>") @as("ErrorType")
  errorType: option<string_>,
  @ocaml.doc("<p>The unique ID of the service update</p>") @as("ServiceUpdateName")
  serviceUpdateName: option<string_>,
  @ocaml.doc("<p>The ID of the cache cluster</p>") @as("CacheClusterId")
  cacheClusterId: option<string_>,
  @ocaml.doc("<p>The replication group ID</p>") @as("ReplicationGroupId")
  replicationGroupId: option<string_>,
}
type ugreplicationGroupIdList = array<string_>
@ocaml.doc(
  "<p>Filters update actions from the service updates that are in available status during the time range.</p>"
)
type timeRangeFilter = {
  @ocaml.doc("<p>The end time of the time range filter</p>") @as("EndTime") endTime: option<tstamp>,
  @ocaml.doc("<p>The start time of the time range filter</p>") @as("StartTime")
  startTime: option<tstamp>,
}
@ocaml.doc("<p>A tag that can be added to an ElastiCache cluster or replication group. 
            Tags are composed of a Key/Value pair. You can use tags to categorize and track all your ElastiCache resources, with the exception of global replication group. When you add or remove tags on replication groups, those actions will be replicated to all nodes in the replication group. A tag with a null Value is permitted.</p>")
type tag = {
  @ocaml.doc("<p>The tag's value. May be null.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>The key for the tag. May not be null.</p>") @as("Key") key: option<string_>,
}
@ocaml.doc("<p>The ID of the outpost subnet.</p>")
type subnetOutpost = {
  @ocaml.doc("<p>The outpost ARN of the subnet.</p>") @as("SubnetOutpostArn")
  subnetOutpostArn: option<string_>,
}
type subnetIdentifierList = array<string_>
type snapshotArnsList = array<string_>
@ocaml.doc("<p>Represents the progress of an online resharding operation.</p>")
type slotMigration = {
  @ocaml.doc("<p>The percentage of the slot migration that is complete.</p>")
  @as("ProgressPercentage")
  progressPercentage: option<double>,
}
type serviceUpdateStatusList = array<serviceUpdateStatus>
@ocaml.doc("<p>An update that you can apply to your Redis clusters.</p>")
type serviceUpdate = {
  @ocaml.doc("<p>The estimated length of time the service update will take</p>")
  @as("EstimatedUpdateTime")
  estimatedUpdateTime: option<string_>,
  @ocaml.doc(
    "<p>Indicates whether the service update will be automatically applied once the recommended apply-by date has expired. </p>"
  )
  @as("AutoUpdateAfterRecommendedApplyByDate")
  autoUpdateAfterRecommendedApplyByDate: option<booleanOptional>,
  @ocaml.doc(
    "<p>The Elasticache engine version to which the update applies. Either Redis or Memcached engine version</p>"
  )
  @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The Elasticache engine to which the update applies. Either Redis or Memcached</p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>Reflects the nature of the service update</p>") @as("ServiceUpdateType")
  serviceUpdateType: option<serviceUpdateType>,
  @ocaml.doc("<p>Provides details of the service update</p>") @as("ServiceUpdateDescription")
  serviceUpdateDescription: option<string_>,
  @ocaml.doc("<p>The status of the service update</p>") @as("ServiceUpdateStatus")
  serviceUpdateStatus: option<serviceUpdateStatus>,
  @ocaml.doc(
    "<p>The recommendend date to apply the service update in order to ensure compliance. For information on compliance, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/elasticache-compliance.html#elasticache-compliance-self-service\">Self-Service Security Updates for Compliance</a>.</p>"
  )
  @as("ServiceUpdateRecommendedApplyByDate")
  serviceUpdateRecommendedApplyByDate: option<tstamp>,
  @ocaml.doc("<p>The severity of the service update</p>") @as("ServiceUpdateSeverity")
  serviceUpdateSeverity: option<serviceUpdateSeverity>,
  @ocaml.doc("<p>The date after which the service update is no longer available</p>")
  @as("ServiceUpdateEndDate")
  serviceUpdateEndDate: option<tstamp>,
  @ocaml.doc("<p>The date when the service update is initially available</p>")
  @as("ServiceUpdateReleaseDate")
  serviceUpdateReleaseDate: option<tstamp>,
  @ocaml.doc("<p>The unique ID of the service update</p>") @as("ServiceUpdateName")
  serviceUpdateName: option<string_>,
}
@ocaml.doc("<p>Represents a single cache security group and its status.</p>")
type securityGroupMembership = {
  @ocaml.doc("<p>The status of the cache security group membership. 
            The status changes whenever a cache security group is modified, 
            or when the cache security groups assigned to a cluster are modified.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The identifier of the cache security group.</p>") @as("SecurityGroupId")
  securityGroupId: option<string_>,
}
type securityGroupIdsList = array<string_>
type replicationGroupOutpostArnList = array<string_>
type replicationGroupIdList = array<string_>
type removeReplicasList = array<string_>
@ocaml.doc("<p>Contains the specific price and frequency of a recurring charges for a reserved cache node, 
            or for a reserved cache node offering.</p>")
type recurringCharge = {
  @ocaml.doc("<p>The frequency of the recurring charge.</p>") @as("RecurringChargeFrequency")
  recurringChargeFrequency: option<string_>,
  @ocaml.doc("<p>The monetary amount of the recurring charge.</p>") @as("RecurringChargeAmount")
  recurringChargeAmount: option<double>,
}
@ocaml.doc("<p>Update action that has been processed for the corresponding apply/stop request</p>")
type processedUpdateAction = {
  @ocaml.doc("<p>The status of the update action on the Redis cluster</p>")
  @as("UpdateActionStatus")
  updateActionStatus: option<updateActionStatus>,
  @ocaml.doc("<p>The unique ID of the service update</p>") @as("ServiceUpdateName")
  serviceUpdateName: option<string_>,
  @ocaml.doc("<p>The ID of the cache cluster</p>") @as("CacheClusterId")
  cacheClusterId: option<string_>,
  @ocaml.doc("<p>The ID of the replication group</p>") @as("ReplicationGroupId")
  replicationGroupId: option<string_>,
}
type preferredOutpostArnList = array<string_>
type preferredAvailabilityZoneList = array<string_>
type passwordListInput = array<string_>
@ocaml.doc("<p>Describes a name-value pair that is used to update the value of a parameter.</p>")
type parameterNameValue = {
  @ocaml.doc("<p>The value of the parameter.</p>") @as("ParameterValue")
  parameterValue: option<string_>,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("ParameterName")
  parameterName: option<string_>,
}
@ocaml.doc(
  "<p>Describes an individual setting that controls some aspect of ElastiCache behavior.</p>"
)
type parameter = {
  @ocaml.doc("<p>Indicates whether a change to the parameter is applied immediately
            or requires a reboot for the change to be applied. 
            You can force a reboot or wait until the next maintenance window's reboot.
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html\">Rebooting a Cluster</a>.</p>")
  @as("ChangeType")
  changeType: option<changeType>,
  @ocaml.doc("<p>The earliest cache engine version to which the parameter can apply.</p>")
  @as("MinimumEngineVersion")
  minimumEngineVersion: option<string_>,
  @ocaml.doc("<p>Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be modified. 
            Some parameters have security or operational implications that prevent them from being changed.</p>")
  @as("IsModifiable")
  isModifiable: option<boolean_>,
  @ocaml.doc("<p>The valid range of values for the parameter.</p>") @as("AllowedValues")
  allowedValues: option<string_>,
  @ocaml.doc("<p>The valid data type for the parameter.</p>") @as("DataType")
  dataType: option<string_>,
  @ocaml.doc("<p>The source of the parameter.</p>") @as("Source") source: option<string_>,
  @ocaml.doc("<p>A description of the parameter.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The value of the parameter.</p>") @as("ParameterValue")
  parameterValue: option<string_>,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("ParameterName")
  parameterName: option<string_>,
}
type outpostArnsList = array<string_>
@ocaml.doc("<p>Describes a notification topic and its status. 
            Notification topics are used for publishing ElastiCache events to subscribers 
            using Amazon Simple Notification Service (SNS).</p>")
type notificationConfiguration = {
  @ocaml.doc("<p>The current state of the topic.</p>") @as("TopicStatus")
  topicStatus: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the topic.</p>") @as("TopicArn")
  topicArn: option<string_>,
}
type nodeTypeList = array<string_>
type nodeGroupsToRetainList = array<allowedNodeGroupId>
type nodeGroupsToRemoveList = array<allowedNodeGroupId>
@ocaml.doc("<p>The status of the service update on the node group member  </p>")
type nodeGroupMemberUpdateStatus = {
  @ocaml.doc("<p>The date when the NodeUpdateStatus was last modified</p>")
  @as("NodeUpdateStatusModifiedDate")
  nodeUpdateStatusModifiedDate: option<tstamp>,
  @ocaml.doc("<p>The date when the update is triggered</p>") @as("NodeUpdateInitiatedDate")
  nodeUpdateInitiatedDate: option<tstamp>,
  @ocaml.doc(
    "<p>Reflects whether the update was initiated by the customer or automatically applied</p>"
  )
  @as("NodeUpdateInitiatedBy")
  nodeUpdateInitiatedBy: option<nodeUpdateInitiatedBy>,
  @ocaml.doc("<p>The end date of the update for a node</p>") @as("NodeUpdateEndDate")
  nodeUpdateEndDate: option<tstamp>,
  @ocaml.doc("<p>The start date of the update for a node</p>") @as("NodeUpdateStartDate")
  nodeUpdateStartDate: option<tstamp>,
  @ocaml.doc("<p>The deletion date of the node</p>") @as("NodeDeletionDate")
  nodeDeletionDate: option<tstamp>,
  @ocaml.doc("<p>The update status of the node</p>") @as("NodeUpdateStatus")
  nodeUpdateStatus: option<nodeUpdateStatus>,
  @ocaml.doc("<p>The node ID of the cache cluster</p>") @as("CacheNodeId")
  cacheNodeId: option<string_>,
  @ocaml.doc("<p>The cache cluster ID</p>") @as("CacheClusterId") cacheClusterId: option<string_>,
}
@ocaml.doc("<p>The configuration details of the Kinesis Data Firehose destination.</p>")
type kinesisFirehoseDestinationDetails = {
  @ocaml.doc("<p>The name of the Kinesis Data Firehose delivery stream.</p>") @as("DeliveryStream")
  deliveryStream: option<string_>,
}
type keyList = array<string_>
@ocaml.doc(
  "<p>A member of a Global datastore. It contains the Replication Group Id, the Amazon region and the role of the replication group. </p>"
)
type globalReplicationGroupMember = {
  @ocaml.doc("<p>The status of the membership of the replication group.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Indicates whether automatic failover is enabled for the replication group.</p>")
  @as("AutomaticFailover")
  automaticFailover: option<automaticFailoverStatus>,
  @ocaml.doc("<p>Indicates the role of the replication group, primary or secondary.</p>")
  @as("Role")
  role: option<string_>,
  @ocaml.doc("<p>The Amazon region of the Global datastore member.</p>")
  @as("ReplicationGroupRegion")
  replicationGroupRegion: option<string_>,
  @ocaml.doc("<p>The replication group id of the Global datastore member.</p>")
  @as("ReplicationGroupId")
  replicationGroupId: option<string_>,
}
@ocaml.doc(
  "<p>The name of the Global datastore and role of this replication group in the Global datastore.</p>"
)
type globalReplicationGroupInfo = {
  @ocaml.doc(
    "<p>The role of the replication group in a Global datastore. Can be primary or secondary.</p>"
  )
  @as("GlobalReplicationGroupMemberRole")
  globalReplicationGroupMemberRole: option<string_>,
  @ocaml.doc("<p>The name of the Global datastore</p>") @as("GlobalReplicationGroupId")
  globalReplicationGroupId: option<string_>,
}
type globalNodeGroupIdList = array<string_>
@ocaml.doc("<p>Indicates the slot configuration and global identifier for a slice group.</p>")
type globalNodeGroup = {
  @ocaml.doc("<p>The keyspace for this node group</p>") @as("Slots") slots: option<string_>,
  @ocaml.doc("<p>The name of the global node group</p>") @as("GlobalNodeGroupId")
  globalNodeGroupId: option<string_>,
}
type filterValueList = array<filterValue>
@ocaml.doc("<p>Represents a single occurrence of something interesting within the system. 
            Some examples of events are creating a cluster, adding or removing a cache node, or rebooting a node.</p>")
type event = {
  @ocaml.doc("<p>The date and time when the event occurred.</p>") @as("Date") date: option<tstamp>,
  @ocaml.doc("<p>The text of the event.</p>") @as("Message") message: option<string_>,
  @ocaml.doc(
    "<p>Specifies the origin of this event - a cluster, a parameter group, a security group, etc.</p>"
  )
  @as("SourceType")
  sourceType: option<sourceType>,
  @ocaml.doc("<p>The identifier for the source of the event. 
            For example, if the event occurred at the cluster level, 
            the identifier would be the name of the cluster.</p>")
  @as("SourceIdentifier")
  sourceIdentifier: option<string_>,
}
@ocaml.doc(
  "<p>Represents the information required for client programs to connect to a cache node.</p>"
)
type endpoint = {
  @ocaml.doc("<p>The port number that the cache engine is listening on.</p>") @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>The DNS hostname of the cache node.</p>") @as("Address") address: option<string_>,
}
@ocaml.doc("<p>Provides ownership and status information for an Amazon EC2 security group.</p>")
type ec2SecurityGroup = {
  @ocaml.doc("<p>The Amazon account ID of the Amazon EC2 security group owner.</p>")
  @as("EC2SecurityGroupOwnerId")
  ec2SecurityGroupOwnerId: option<string_>,
  @ocaml.doc("<p>The name of the Amazon EC2 security group.</p>") @as("EC2SecurityGroupName")
  ec2SecurityGroupName: option<string_>,
  @ocaml.doc("<p>The status of the Amazon EC2 security group.</p>") @as("Status")
  status: option<string_>,
}
@ocaml.doc("<p>The endpoint from which data should be migrated.</p>")
type customerNodeEndpoint = {
  @ocaml.doc("<p>The port of the node endpoint</p>") @as("Port") port: option<integerOptional>,
  @ocaml.doc("<p>The address of the node endpoint</p>") @as("Address") address: option<string_>,
}
type clusterIdList = array<string_>
@ocaml.doc("<p>The configuration details of the CloudWatch Logs destination.</p>")
type cloudWatchLogsDestinationDetails = {
  @ocaml.doc("<p>The name of the CloudWatch Logs log group.</p>") @as("LogGroup")
  logGroup: option<string_>,
}
type cacheSecurityGroupNameList = array<string_>
@ocaml.doc("<p>Represents a cluster's status within a particular cache security group.</p>")
type cacheSecurityGroupMembership = {
  @ocaml.doc(
    "<p>The membership status in the cache security group. The status changes when a cache security group is modified, or when the cache security groups assigned to a cluster are modified.</p>"
  )
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The name of the cache security group.</p>") @as("CacheSecurityGroupName")
  cacheSecurityGroupName: option<string_>,
}
@ocaml.doc("<p>Represents the output of a <code>CreateCacheParameterGroup</code> operation.</p>")
type cacheParameterGroup = {
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the cache parameter group.</p>") @as("ARN")
  arn: option<string_>,
  @ocaml.doc("<p>Indicates whether the parameter group is associated with a Global datastore</p>")
  @as("IsGlobal")
  isGlobal: option<boolean_>,
  @ocaml.doc("<p>The description for this cache parameter group.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the cache parameter group family that this cache parameter group is compatible with.</p>
        <p>Valid values are: 
    <code>memcached1.4</code> | 
     <code>memcached1.5</code> | 
      <code>memcached1.6</code> | 
    <code>redis2.6</code> | 
    <code>redis2.8</code> |
    <code>redis3.2</code> |
    <code>redis4.0</code> |
     <code>redis5.0</code> | 
      <code>redis6.x</code> | 
    </p>")
  @as("CacheParameterGroupFamily")
  cacheParameterGroupFamily: option<string_>,
  @ocaml.doc("<p>The name of the cache parameter group.</p>") @as("CacheParameterGroupName")
  cacheParameterGroupName: option<string_>,
}
@ocaml.doc("<p>The status of the service update on the cache node</p>")
type cacheNodeUpdateStatus = {
  @ocaml.doc("<p>The date when the NodeUpdateStatus was last modified></p>")
  @as("NodeUpdateStatusModifiedDate")
  nodeUpdateStatusModifiedDate: option<tstamp>,
  @ocaml.doc("<p>The date when the update is triggered</p>") @as("NodeUpdateInitiatedDate")
  nodeUpdateInitiatedDate: option<tstamp>,
  @ocaml.doc(
    "<p>Reflects whether the update was initiated by the customer or automatically applied</p>"
  )
  @as("NodeUpdateInitiatedBy")
  nodeUpdateInitiatedBy: option<nodeUpdateInitiatedBy>,
  @ocaml.doc("<p>The end date of the update for a node</p>") @as("NodeUpdateEndDate")
  nodeUpdateEndDate: option<tstamp>,
  @ocaml.doc("<p>The start date of the update for a node</p>") @as("NodeUpdateStartDate")
  nodeUpdateStartDate: option<tstamp>,
  @ocaml.doc("<p>The deletion date of the node</p>") @as("NodeDeletionDate")
  nodeDeletionDate: option<tstamp>,
  @ocaml.doc("<p>The update status of the node</p>") @as("NodeUpdateStatus")
  nodeUpdateStatus: option<nodeUpdateStatus>,
  @ocaml.doc("<p>The node ID of the cache cluster</p>") @as("CacheNodeId")
  cacheNodeId: option<string_>,
}
@ocaml.doc("<p>A value that applies only to a certain cache node type.</p>")
type cacheNodeTypeSpecificValue = {
  @ocaml.doc("<p>The value for the cache node type.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>The cache node type for which this value applies.</p>") @as("CacheNodeType")
  cacheNodeType: option<string_>,
}
type cacheNodeIdsList = array<string_>
@ocaml.doc("<p>Provides all of the details about a particular cache engine version.</p>")
type cacheEngineVersion = {
  @ocaml.doc("<p>The description of the cache engine version.</p>")
  @as("CacheEngineVersionDescription")
  cacheEngineVersionDescription: option<string_>,
  @ocaml.doc("<p>The description of the cache engine.</p>") @as("CacheEngineDescription")
  cacheEngineDescription: option<string_>,
  @ocaml.doc("<p>The name of the cache parameter group family associated with this cache engine.</p>
        <p>Valid values are: 
    <code>memcached1.4</code> | 
     <code>memcached1.5</code> | 
      <code>memcached1.6</code> | 
    <code>redis2.6</code> | 
    <code>redis2.8</code> |
    <code>redis3.2</code> |
    <code>redis4.0</code> |
     <code>redis5.0</code> | 
      <code>redis6.x</code> 
         </p>")
  @as("CacheParameterGroupFamily")
  cacheParameterGroupFamily: option<string_>,
  @ocaml.doc("<p>The version number of the cache engine.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The name of the cache engine.</p>") @as("Engine") engine: option<string_>,
}
type cacheClusterIdList = array<string_>
type availabilityZonesList = array<string_>
@ocaml.doc("<p>Describes an Availability Zone in which the cluster is launched.</p>")
type availabilityZone = {
  @ocaml.doc("<p>The name of the Availability Zone.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Indicates whether the user requires a password to authenticate.</p>")
type authentication = {
  @ocaml.doc("<p>The number of passwords belonging to the user. The maximum is two.</p>")
  @as("PasswordCount")
  passwordCount: option<integerOptional>,
  @ocaml.doc("<p>Indicates whether the user requires a password to authenticate.</p>") @as("Type")
  type_: option<authenticationType>,
}
@ocaml.doc("<p>The status of the user group update.</p>")
type userGroupsUpdateStatus = {
  @ocaml.doc("<p>The ID of the user group to remove.</p>") @as("UserGroupIdsToRemove")
  userGroupIdsToRemove: option<userGroupIdList>,
  @ocaml.doc("<p>The ID of the user group to add.</p>") @as("UserGroupIdsToAdd")
  userGroupIdsToAdd: option<userGroupIdList>,
}
@ocaml.doc("<p>Returns the updates being applied to the user group.</p>")
type userGroupPendingChanges = {
  @ocaml.doc("<p>The list of user IDs to add.</p>") @as("UserIdsToAdd")
  userIdsToAdd: option<userIdList>,
  @ocaml.doc("<p>The list of user IDs to remove.</p>") @as("UserIdsToRemove")
  userIdsToRemove: option<userIdList>,
}
type user = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user.</p>") @as("ARN") arn: option<string_>,
  @ocaml.doc("<p>Denotes whether the user requires a password to authenticate.</p>")
  @as("Authentication")
  authentication: option<authentication>,
  @ocaml.doc("<p>Returns a list of the user group IDs the user belongs to.</p>") @as("UserGroupIds")
  userGroupIds: option<userGroupIdList>,
  @ocaml.doc("<p>Access permissions string used for this user.</p>") @as("AccessString")
  accessString: option<string_>,
  @ocaml.doc("<p>The minimum engine version required, which is Redis 6.0</p>")
  @as("MinimumEngineVersion")
  minimumEngineVersion: option<string_>,
  @ocaml.doc("<p>The current supported value is Redis.</p>") @as("Engine")
  engine: option<engineType>,
  @ocaml.doc("<p>Indicates the user status. Can be \"active\", \"modifying\" or \"deleting\".</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The username of the user.</p>") @as("UserName") userName: option<string_>,
  @ocaml.doc("<p>The ID of the user.</p>") @as("UserId") userId: option<string_>,
}
type unprocessedUpdateActionList = array<unprocessedUpdateAction>
type tagList_ = array<tag>
@ocaml.doc("<p>Represents the subnet associated with a cluster. 
            This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with ElastiCache.</p>")
type subnet = {
  @ocaml.doc("<p>The outpost ARN of the subnet.</p>") @as("SubnetOutpost")
  subnetOutpost: option<subnetOutpost>,
  @ocaml.doc("<p>The Availability Zone associated with the subnet.</p>")
  @as("SubnetAvailabilityZone")
  subnetAvailabilityZone: option<availabilityZone>,
  @ocaml.doc("<p>The unique identifier for the subnet.</p>") @as("SubnetIdentifier")
  subnetIdentifier: option<string_>,
}
type serviceUpdateList = array<serviceUpdate>
type securityGroupMembershipList = array<securityGroupMembership>
@ocaml.doc("<p>The status of an online resharding operation.</p>")
type reshardingStatus = {
  @ocaml.doc("<p>Represents the progress of an online resharding operation.</p>")
  @as("SlotMigration")
  slotMigration: option<slotMigration>,
}
@ocaml.doc("<p>A list of <code>PreferredAvailabilityZones</code> objects that specifies
            the configuration of a node group in the resharded cluster.</p>")
type reshardingConfiguration = {
  @ocaml.doc("<p>A list of preferred availability zones for the nodes in this cluster.</p>")
  @as("PreferredAvailabilityZones")
  preferredAvailabilityZones: option<availabilityZonesList>,
  @ocaml.doc("<p>Either the ElastiCache for Redis supplied 4-digit id or a user supplied id for the node group these 
            configuration values apply to.</p>")
  @as("NodeGroupId")
  nodeGroupId: option<allowedNodeGroupId>,
}
type recurringChargeList = array<recurringCharge>
type processedUpdateActionList = array<processedUpdateAction>
type parametersList = array<parameter>
type parameterNameValueList = array<parameterNameValue>
type nodeGroupMemberUpdateStatusList = array<nodeGroupMemberUpdateStatus>
@ocaml.doc("<p>Represents a single node within a node group (shard).</p>")
type nodeGroupMember = {
  @ocaml.doc("<p>The role that is currently assigned to the node - <code>primary</code> or 
            <code>replica</code>. This member is only applicable for Redis (cluster mode disabled) 
            replication groups.</p>")
  @as("CurrentRole")
  currentRole: option<string_>,
  @ocaml.doc("<p>The outpost ARN of the node group member.</p>") @as("PreferredOutpostArn")
  preferredOutpostArn: option<string_>,
  @ocaml.doc("<p>The name of the Availability Zone in which the node is located.</p>")
  @as("PreferredAvailabilityZone")
  preferredAvailabilityZone: option<string_>,
  @ocaml.doc("<p>The information required for client programs to connect to a node for read operations.
            The read endpoint is only applicable on Redis (cluster mode disabled) clusters.</p>")
  @as("ReadEndpoint")
  readEndpoint: option<endpoint>,
  @ocaml.doc(
    "<p>The ID of the node within its cluster. A node ID is a numeric identifier (0001, 0002, etc.).</p>"
  )
  @as("CacheNodeId")
  cacheNodeId: option<string_>,
  @ocaml.doc("<p>The ID of the cluster to which the node belongs.</p>") @as("CacheClusterId")
  cacheClusterId: option<string_>,
}
@ocaml.doc("<p>Node group (shard) configuration options. 
            Each node group (shard) configuration has the following: <code>Slots</code>, <code>PrimaryAvailabilityZone</code>, <code>ReplicaAvailabilityZones</code>, <code>ReplicaCount</code>.</p>")
type nodeGroupConfiguration = {
  @ocaml.doc("<p>The outpost ARN of the node replicas.</p>") @as("ReplicaOutpostArns")
  replicaOutpostArns: option<outpostArnsList>,
  @ocaml.doc("<p>The outpost ARN of the primary node.</p>") @as("PrimaryOutpostArn")
  primaryOutpostArn: option<string_>,
  @ocaml.doc("<p>A list of Availability Zones to be used for the read replicas.
            The number of Availability Zones in this list must match the value of <code>ReplicaCount</code>
            or <code>ReplicasPerNodeGroup</code> if not specified.</p>")
  @as("ReplicaAvailabilityZones")
  replicaAvailabilityZones: option<availabilityZonesList>,
  @ocaml.doc(
    "<p>The Availability Zone where the primary node of this node group (shard) is launched.</p>"
  )
  @as("PrimaryAvailabilityZone")
  primaryAvailabilityZone: option<string_>,
  @ocaml.doc("<p>The number of read replica nodes in this node group (shard).</p>")
  @as("ReplicaCount")
  replicaCount: option<integerOptional>,
  @ocaml.doc("<p>A string that specifies the keyspace for a particular node group.
            Keyspaces range from 0 to 16,383.
            The string is in the format <code>startkey-endkey</code>.</p>
        <p>Example: <code>\"0-3999\"</code>
         </p>")
  @as("Slots")
  slots: option<string_>,
  @ocaml.doc("<p>Either the ElastiCache for Redis supplied 4-digit id or a user supplied id for the node group these 
            configuration values apply to.</p>")
  @as("NodeGroupId")
  nodeGroupId: option<allowedNodeGroupId>,
}
type globalReplicationGroupMemberList = array<globalReplicationGroupMember>
type globalNodeGroupList = array<globalNodeGroup>
@ocaml.doc("<p>Used to streamline results of a search based on the property being filtered.</p>")
type filter = {
  @ocaml.doc("<p>The property values to filter on. For example, \"user-123\".</p>") @as("Values")
  values: filterValueList,
  @ocaml.doc("<p>The property being filtered. For example, UserId.</p>") @as("Name")
  name: filterName,
}
type eventList = array<event>
type ec2SecurityGroupList = array<ec2SecurityGroup>
@ocaml.doc(
  "<p>Configuration details of either a CloudWatch Logs destination or Kinesis Data Firehose destination.</p>"
)
type destinationDetails = {
  @ocaml.doc("<p>The configuration details of the Kinesis Data Firehose destination.</p>")
  @as("KinesisFirehoseDetails")
  kinesisFirehoseDetails: option<kinesisFirehoseDestinationDetails>,
  @ocaml.doc("<p>The configuration details of the CloudWatch Logs destination.</p>")
  @as("CloudWatchLogsDetails")
  cloudWatchLogsDetails: option<cloudWatchLogsDestinationDetails>,
}
type customerNodeEndpointList = array<customerNodeEndpoint>
@ocaml.doc("<p>Node group (shard) configuration options when adding or removing replicas. 
            Each node group (shard) configuration has the following members: NodeGroupId, NewReplicaCount, and PreferredAvailabilityZones. </p>")
type configureShard = {
  @ocaml.doc("<p>The outpost ARNs in which the cache cluster is created.</p>")
  @as("PreferredOutpostArns")
  preferredOutpostArns: option<preferredOutpostArnList>,
  @ocaml.doc("<p>A list of <code>PreferredAvailabilityZone</code> strings that specify which availability zones the 
            replication group's nodes are to be in. The nummber of <code>PreferredAvailabilityZone</code> values must 
            equal the value of <code>NewReplicaCount</code> plus 1 to account for the primary node. If this member of 
            <code>ReplicaConfiguration</code> is omitted, ElastiCache for Redis selects the availability zone for  
            each of the replicas.</p>")
  @as("PreferredAvailabilityZones")
  preferredAvailabilityZones: option<preferredAvailabilityZoneList>,
  @ocaml.doc("<p>The number of replicas you want  in this node group at the end of this operation. 
            The maximum value for <code>NewReplicaCount</code> is 5.
            The minimum value depends upon the type of Redis replication group you are working with.</p>
        <p>The minimum number of replicas in a shard or replication group is:</p>
        <ul>
            <li>
                <p>Redis (cluster mode disabled)</p>
                <ul>
                  <li>
                        <p>If Multi-AZ: 1</p>
                  </li>
                  <li>
                        <p>If Multi-AZ: 0</p>
                  </li>
               </ul>
            </li>
            <li>
                <p>Redis (cluster mode enabled): 0 (though you will not be able to failover to a replica if your primary node fails)</p>
            </li>
         </ul>")
  @as("NewReplicaCount")
  newReplicaCount: integer_,
  @ocaml.doc("<p>The 4-digit id for the node group you are configuring. For Redis (cluster mode disabled) 
            replication groups, the node group id is always 0001. To find a Redis (cluster mode enabled)'s 
            node group's (shard's) id, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/shard-find-id.html\">Finding a Shard's Id</a>.</p>")
  @as("NodeGroupId")
  nodeGroupId: allowedNodeGroupId,
}
type cacheSecurityGroupMembershipList = array<cacheSecurityGroupMembership>
@ocaml.doc("<p>Status of the cache parameter group.</p>")
type cacheParameterGroupStatus = {
  @ocaml.doc("<p>A list of the cache node IDs which need to be rebooted for parameter changes to be applied. 
            A node ID is a numeric identifier (0001, 0002, etc.).</p>")
  @as("CacheNodeIdsToReboot")
  cacheNodeIdsToReboot: option<cacheNodeIdsList>,
  @ocaml.doc("<p>The status of parameter updates.</p>") @as("ParameterApplyStatus")
  parameterApplyStatus: option<string_>,
  @ocaml.doc("<p>The name of the cache parameter group.</p>") @as("CacheParameterGroupName")
  cacheParameterGroupName: option<string_>,
}
type cacheParameterGroupList = array<cacheParameterGroup>
type cacheNodeUpdateStatusList = array<cacheNodeUpdateStatus>
type cacheNodeTypeSpecificValueList = array<cacheNodeTypeSpecificValue>
@ocaml.doc("<p>Represents an individual cache node within a cluster. Each cache node runs its own
            instance of the cluster's protocol-compliant caching software - either Memcached or
            Redis.</p>

        <p>The following node types are supported by ElastiCache. 
				Generally speaking, the current generation types provide more memory and computational power
			at lower cost when compared to their equivalent previous generation counterparts.</p>
		       <ul>
            <li>
               <p>General purpose:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>
					    
					    
					   
					    
					    
					                <p>
                        <b>M6g node types:</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward): 	<code>cache.m6g.large</code>,
							<code>cache.m6g.xlarge</code>,
							<code>cache.m6g.2xlarge</code>,
							<code>cache.m6g.4xlarge</code>,
							<code>cache.m6g.8xlarge</code>,
							<code>cache.m6g.12xlarge</code>,
							<code>cache.m6g.16xlarge</code>
							
							
							
						               </p>	
						
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
    					
    					
    					            <p>
                        <b>M5 node types:</b>
    						              <code>cache.m5.large</code>,
    						<code>cache.m5.xlarge</code>,
    						<code>cache.m5.2xlarge</code>,
    						<code>cache.m5.4xlarge</code>,
    						<code>cache.m5.12xlarge</code>,
    						<code>cache.m5.24xlarge</code>
    						
    						
    						           </p>	
    						
						
						               <p>
                        <b>M4 node types:</b>
    						              <code>cache.m4.large</code>,
    						<code>cache.m4.xlarge</code>,
    						<code>cache.m4.2xlarge</code>,
    						<code>cache.m4.4xlarge</code>,
    						<code>cache.m4.10xlarge</code>
                     </p>
    		
					                <p>
                        <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
					        <code>cache.t4g.micro</code>,
					        <code>cache.t4g.small</code>,
					        <code>cache.t4g.medium</code>
					                </p>	          	    
					    
					                <p>
                        <b>T3 node types:</b>
					                   <code>cache.t3.micro</code>, 
    						<code>cache.t3.small</code>,
    						<code>cache.t3.medium</code>
                     </p>
    								
    						
    				             <p>
                        <b>T2 node types:</b>
					                   <code>cache.t2.micro</code>, 
    						<code>cache.t2.small</code>,
    						<code>cache.t2.medium</code>
                     </p>
    						
    						
    						
    						
    						        </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
						               <p>
                        <b>T1 node types:</b>
					                   <code>cache.t1.micro</code>
                     </p>
					     
						               <p>
                        <b>M1 node types:</b>
						                  <code>cache.m1.small</code>, 
						   <code>cache.m1.medium</code>, 
						   <code>cache.m1.large</code>,
						   <code>cache.m1.xlarge</code>
                     </p>
						   
						               <p>
                        <b>M3 node types:</b>
    						              <code>cache.m3.medium</code>,
    						<code>cache.m3.large</code>, 
    						<code>cache.m3.xlarge</code>,
    						<code>cache.m3.2xlarge</code>
                     </p>
						   
						            </li>
               </ul>
            </li>
            <li>
               <p>Compute optimized:</p>

				           <ul>
                  <li>
                     <p>Previous generation: (not recommended)</p>
			                  <p>
                        <b>C1 node types:</b>
			                     <code>cache.c1.xlarge</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized with data tiering:</p>
		             <ul>
                  <li>
                     <p>Current generation: </p>
		                
		                   <p>
                        <b>R6gd node types</b> (available only for Redis engine version 6.2 onward).</p>
		                
		                
		                
		                
		                   <p>	
		                    
		                      <code>cache.r6gd.xlarge</code>,
		                    <code>cache.r6gd.2xlarge</code>,
		                    <code>cache.r6gd.4xlarge</code>,
		                    <code>cache.r6gd.8xlarge</code>,
		                    <code>cache.r6gd.12xlarge</code>,
		                    <code>cache.r6gd.16xlarge</code>
		                    
		                    
		                    
		                    
		                    
		                    
		                   </p>					    
		                
		                </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>

			    				    
					    
					                <p>
                        <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
						

						
						
						               <p>	
							                 <code>cache.r6g.large</code>,
							<code>cache.r6g.xlarge</code>,
							<code>cache.r6g.2xlarge</code>,
							<code>cache.r6g.4xlarge</code>,
							<code>cache.r6g.8xlarge</code>,
							<code>cache.r6g.12xlarge</code>,
							<code>cache.r6g.16xlarge</code>
							
							
							
							
							
							
						               </p>	
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
					                <p>
                        <b>R5 node types:</b>
    					               <code>cache.r5.large</code>,
    					   <code>cache.r5.xlarge</code>,
    					   <code>cache.r5.2xlarge</code>,
    					   <code>cache.r5.4xlarge</code>,
    					   <code>cache.r5.12xlarge</code>,
    					   <code>cache.r5.24xlarge</code>
                     </p>
						
    					            <p>
                        <b>R4 node types:</b>
    					               <code>cache.r4.large</code>,
    					   <code>cache.r4.xlarge</code>,
    					   <code>cache.r4.2xlarge</code>,
    					   <code>cache.r4.4xlarge</code>,
    					   <code>cache.r4.8xlarge</code>,
    					   <code>cache.r4.16xlarge</code>
                     </p>
    					   
    					   
    					   

  
    					   
    					   
    					   
    					   
    					   
    					   
    					         </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
                        <p>
                        <b>M2 node types:</b>						
    					               <code>cache.m2.xlarge</code>, 
    						<code>cache.m2.2xlarge</code>,
    						<code>cache.m2.4xlarge</code>
                     </p>
    						
    						           <p>
                        <b>R3 node types:</b>
    					               <code>cache.r3.large</code>, 
    						<code>cache.r3.xlarge</code>,
    						<code>cache.r3.2xlarge</code>,  
    						<code>cache.r3.4xlarge</code>,
    						<code>cache.r3.8xlarge</code>
                     </p>
    						
    						        </li>
               </ul>
            </li>
         </ul>
				
		       <p>
            <b>Additional node type info</b>
         </p>
		       <ul>
            <li>
               <p>All current generation instance types are created in Amazon VPC by default.</p>
            </li>
            <li>
               <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
            </li>
            <li>
               <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
            </li>
            <li>
               <p>Redis configuration variables <code>appendonly</code> and 
				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
            </li>
         </ul>")
type cacheNode = {
  @ocaml.doc("<p>The customer outpost ARN of the cache node.</p>") @as("CustomerOutpostArn")
  customerOutpostArn: option<string_>,
  @ocaml.doc("<p>The Availability Zone where this node was created and now resides.</p>")
  @as("CustomerAvailabilityZone")
  customerAvailabilityZone: option<string_>,
  @ocaml.doc("<p>The ID of the primary node to which this read replica node is synchronized. 
            If this field is empty, this node is not associated with a primary cluster.</p>")
  @as("SourceCacheNodeId")
  sourceCacheNodeId: option<string_>,
  @ocaml.doc("<p>The status of the parameter group applied to this cache node.</p>")
  @as("ParameterGroupStatus")
  parameterGroupStatus: option<string_>,
  @ocaml.doc("<p>The hostname for connecting to this cache node.</p>") @as("Endpoint")
  endpoint: option<endpoint>,
  @ocaml.doc("<p>The date and time when the cache node was created.</p>") @as("CacheNodeCreateTime")
  cacheNodeCreateTime: option<tstamp>,
  @ocaml.doc(
    "<p>The current state of this cache node, one of the following values: <code>available</code>, <code>creating</code>, <code>rebooting</code>, or <code>deleting</code>.</p>"
  )
  @as("CacheNodeStatus")
  cacheNodeStatus: option<string_>,
  @ocaml.doc(
    "<p>The cache node identifier. A node ID is a numeric identifier (0001, 0002, etc.). The combination of cluster ID and node ID uniquely identifies every cache node used in a customer's Amazon account.</p>"
  )
  @as("CacheNodeId")
  cacheNodeId: option<string_>,
}
type cacheEngineVersionList = array<cacheEngineVersion>
type userList = array<user>
type userGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user group.</p>") @as("ARN")
  arn: option<string_>,
  @ocaml.doc("<p>A list of replication groups that the user group can access.</p>")
  @as("ReplicationGroups")
  replicationGroups: option<ugreplicationGroupIdList>,
  @ocaml.doc("<p>A list of updates being applied to the user group.</p>") @as("PendingChanges")
  pendingChanges: option<userGroupPendingChanges>,
  @ocaml.doc("<p>The minimum engine version required, which is Redis 6.0</p>")
  @as("MinimumEngineVersion")
  minimumEngineVersion: option<string_>,
  @ocaml.doc("<p>The list of user IDs that belong to the user group.</p>") @as("UserIds")
  userIds: option<userIdList>,
  @ocaml.doc("<p>The current supported value is Redis. </p>") @as("Engine")
  engine: option<engineType>,
  @ocaml.doc(
    "<p>Indicates user group status. Can be \"creating\", \"active\", \"modifying\", \"deleting\".</p>"
  )
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The ID of the user group.</p>") @as("UserGroupId") userGroupId: option<string_>,
}
type subnetList = array<subnet>
type reshardingConfigurationList = array<reshardingConfiguration>
@ocaml.doc("<p>Describes all of the attributes of a reserved cache node offering.</p>")
type reservedCacheNodesOffering = {
  @ocaml.doc("<p>The recurring price charged to run this reserved cache node.</p>")
  @as("RecurringCharges")
  recurringCharges: option<recurringChargeList>,
  @ocaml.doc("<p>The offering type.</p>") @as("OfferingType") offeringType: option<string_>,
  @ocaml.doc("<p>The cache engine used by the offering.</p>") @as("ProductDescription")
  productDescription: option<string_>,
  @ocaml.doc("<p>The hourly price charged for this offering.</p>") @as("UsagePrice")
  usagePrice: option<double>,
  @ocaml.doc("<p>The fixed price charged for this offering.</p>") @as("FixedPrice")
  fixedPrice: option<double>,
  @ocaml.doc("<p>The duration of the offering. in seconds.</p>") @as("Duration")
  duration: option<integer_>,
  @ocaml.doc("<p>The cache node type for the reserved cache node.</p>
        <p>The following node types are supported by ElastiCache. 
				Generally speaking, the current generation types provide more memory and computational power
			at lower cost when compared to their equivalent previous generation counterparts.</p>
		       <ul>
            <li>
               <p>General purpose:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>
					    
					    
					    
					  
					    
					    
					                <p>
                        <b>M6g node types:</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward): 	<code>cache.m6g.large</code>,
							<code>cache.m6g.xlarge</code>,
							<code>cache.m6g.2xlarge</code>,
							<code>cache.m6g.4xlarge</code>,
							<code>cache.m6g.8xlarge</code>,
							<code>cache.m6g.12xlarge</code>,
							<code>cache.m6g.16xlarge</code>
							
							
							
						               </p>	
						
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
    					
    					
    					            <p>
                        <b>M5 node types:</b>
    						              <code>cache.m5.large</code>,
    						<code>cache.m5.xlarge</code>,
    						<code>cache.m5.2xlarge</code>,
    						<code>cache.m5.4xlarge</code>,
    						<code>cache.m5.12xlarge</code>,
    						<code>cache.m5.24xlarge</code>
    						
    						
    						           </p>	
    						
						
						               <p>
                        <b>M4 node types:</b>
    						              <code>cache.m4.large</code>,
    						<code>cache.m4.xlarge</code>,
    						<code>cache.m4.2xlarge</code>,
    						<code>cache.m4.4xlarge</code>,
    						<code>cache.m4.10xlarge</code>
                     </p>
    	
					                <p>
                        <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
					     <code>cache.t4g.micro</code>,
					        <code>cache.t4g.small</code>,
					        <code>cache.t4g.medium</code>
					                </p>      	    
					    
					                <p>
                        <b>T3 node types:</b>
					                   <code>cache.t3.micro</code>, 
    						<code>cache.t3.small</code>,
    						<code>cache.t3.medium</code>
                     </p>
    								
    						
    				             <p>
                        <b>T2 node types:</b>
					                   <code>cache.t2.micro</code>, 
    						<code>cache.t2.small</code>,
    						<code>cache.t2.medium</code>
                     </p>
    						
    						
    						
    						
    						        </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
						               <p>
                        <b>T1 node types:</b>
					                   <code>cache.t1.micro</code>
                     </p>
					     
						               <p>
                        <b>M1 node types:</b>
						                  <code>cache.m1.small</code>, 
						   <code>cache.m1.medium</code>, 
						   <code>cache.m1.large</code>,
						   <code>cache.m1.xlarge</code>
                     </p>
						   
						               <p>
                        <b>M3 node types:</b>
    						              <code>cache.m3.medium</code>,
    						<code>cache.m3.large</code>, 
    						<code>cache.m3.xlarge</code>,
    						<code>cache.m3.2xlarge</code>
                     </p>
						   
						            </li>
               </ul>
            </li>
            <li>
               <p>Compute optimized:</p>

				           <ul>
                  <li>
                     <p>Previous generation: (not recommended)</p>
			                  <p>
                        <b>C1 node types:</b>
			                     <code>cache.c1.xlarge</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized with data tiering:</p>
		             <ul>
                  <li>
                     <p>Current generation: </p>
		                
		                   <p>
                        <b>R6gd node types</b> (available only for Redis engine version 6.2 onward).</p>
		                
		                
		                
		                
		                   <p>	
		                    
		                      <code>cache.r6gd.xlarge</code>,
		                    <code>cache.r6gd.2xlarge</code>,
		                    <code>cache.r6gd.4xlarge</code>,
		                    <code>cache.r6gd.8xlarge</code>,
		                    <code>cache.r6gd.12xlarge</code>,
		                    <code>cache.r6gd.16xlarge</code>
		                    
		                    
		                    
		                    
		                    
		                    
		                   </p>					    
		                
		                </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>

						    
					    
					    
					                <p>
                        <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
						
						

						
						
						               <p>	
							                 <code>cache.r6g.large</code>,
							<code>cache.r6g.xlarge</code>,
							<code>cache.r6g.2xlarge</code>,
							<code>cache.r6g.4xlarge</code>,
							<code>cache.r6g.8xlarge</code>,
							<code>cache.r6g.12xlarge</code>,
							<code>cache.r6g.16xlarge</code>
							
							
							
							
							
							
						               </p>	
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
					                <p>
                        <b>R5 node types:</b>
    					               <code>cache.r5.large</code>,
    					   <code>cache.r5.xlarge</code>,
    					   <code>cache.r5.2xlarge</code>,
    					   <code>cache.r5.4xlarge</code>,
    					   <code>cache.r5.12xlarge</code>,
    					   <code>cache.r5.24xlarge</code>
                     </p>
						
    					            <p>
                        <b>R4 node types:</b>
    					               <code>cache.r4.large</code>,
    					   <code>cache.r4.xlarge</code>,
    					   <code>cache.r4.2xlarge</code>,
    					   <code>cache.r4.4xlarge</code>,
    					   <code>cache.r4.8xlarge</code>,
    					   <code>cache.r4.16xlarge</code>
                     </p>
    					   
    					   
    					   

  
    					   
    					   
    					   
    					   
    					   
    					   
    					         </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
                        <p>
                        <b>M2 node types:</b>						
    					               <code>cache.m2.xlarge</code>, 
    						<code>cache.m2.2xlarge</code>,
    						<code>cache.m2.4xlarge</code>
                     </p>
    						
    						           <p>
                        <b>R3 node types:</b>
    					               <code>cache.r3.large</code>, 
    						<code>cache.r3.xlarge</code>,
    						<code>cache.r3.2xlarge</code>,  
    						<code>cache.r3.4xlarge</code>,
    						<code>cache.r3.8xlarge</code>
                     </p>
    						
    						        </li>
               </ul>
            </li>
         </ul>
				
		       <p>
            <b>Additional node type info</b>
         </p>
		       <ul>
            <li>
               <p>All current generation instance types are created in Amazon VPC by default.</p>
            </li>
            <li>
               <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
            </li>
            <li>
               <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
            </li>
            <li>
               <p>Redis configuration variables <code>appendonly</code> and 
				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
            </li>
         </ul>")
  @as("CacheNodeType")
  cacheNodeType: option<string_>,
  @ocaml.doc("<p>A unique identifier for the reserved cache node offering.</p>")
  @as("ReservedCacheNodesOfferingId")
  reservedCacheNodesOfferingId: option<string_>,
}
@ocaml.doc(
  "<p>Represents the output of a <code>PurchaseReservedCacheNodesOffering</code> operation.</p>"
)
type reservedCacheNode = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the reserved cache node.</p>
        <p>Example: <code>arn:aws:elasticache:us-east-1:123456789012:reserved-instance:ri-2017-03-27-08-33-25-582</code>
         </p>")
  @as("ReservationARN")
  reservationARN: option<string_>,
  @ocaml.doc("<p>The recurring price charged to run this reserved cache node.</p>")
  @as("RecurringCharges")
  recurringCharges: option<recurringChargeList>,
  @ocaml.doc("<p>The state of the reserved cache node.</p>") @as("State") state: option<string_>,
  @ocaml.doc("<p>The offering type of this reserved cache node.</p>") @as("OfferingType")
  offeringType: option<string_>,
  @ocaml.doc("<p>The description of the reserved cache node.</p>") @as("ProductDescription")
  productDescription: option<string_>,
  @ocaml.doc("<p>The number of cache nodes that have been reserved.</p>") @as("CacheNodeCount")
  cacheNodeCount: option<integer_>,
  @ocaml.doc("<p>The hourly price charged for this reserved cache node.</p>") @as("UsagePrice")
  usagePrice: option<double>,
  @ocaml.doc("<p>The fixed price charged for this reserved cache node.</p>") @as("FixedPrice")
  fixedPrice: option<double>,
  @ocaml.doc("<p>The duration of the reservation in seconds.</p>") @as("Duration")
  duration: option<integer_>,
  @ocaml.doc("<p>The time the reservation started.</p>") @as("StartTime") startTime: option<tstamp>,
  @ocaml.doc("<p>The cache node type for the reserved cache nodes.</p>        
        
        <p>The following node types are supported by ElastiCache. 
				Generally speaking, the current generation types provide more memory and computational power
			at lower cost when compared to their equivalent previous generation counterparts.</p>
		       <ul>
            <li>
               <p>General purpose:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>
					    
					    
					   
					    
					    
					                <p>
                        <b>M6g node types:</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):	<code>cache.m6g.large</code>,
							<code>cache.m6g.xlarge</code>,
							<code>cache.m6g.2xlarge</code>,
							<code>cache.m6g.4xlarge</code>,
							<code>cache.m6g.8xlarge</code>,
							<code>cache.m6g.12xlarge</code>,
							<code>cache.m6g.16xlarge</code>
							
							
							
						               </p>	
						
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
    					
    					
    					            <p>
                        <b>M5 node types:</b>
    						              <code>cache.m5.large</code>,
    						<code>cache.m5.xlarge</code>,
    						<code>cache.m5.2xlarge</code>,
    						<code>cache.m5.4xlarge</code>,
    						<code>cache.m5.12xlarge</code>,
    						<code>cache.m5.24xlarge</code>
    						
    						
    						           </p>	
    						
						
						               <p>
                        <b>M4 node types:</b>
    						              <code>cache.m4.large</code>,
    						<code>cache.m4.xlarge</code>,
    						<code>cache.m4.2xlarge</code>,
    						<code>cache.m4.4xlarge</code>,
    						<code>cache.m4.10xlarge</code>
                     </p>
					    
					                <p>
                        <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
					        <code>cache.t4g.micro</code>,
					        <code>cache.t4g.small</code>,
					        <code>cache.t4g.medium</code>
					                </p>	           
    					            <p>
                        <b>T3 node types:</b>
					                   <code>cache.t3.micro</code>, 
    						<code>cache.t3.small</code>,
    						<code>cache.t3.medium</code>
                     </p>
    								
    						
    				             <p>
                        <b>T2 node types:</b>
					                   <code>cache.t2.micro</code>, 
    						<code>cache.t2.small</code>,
    						<code>cache.t2.medium</code>
                     </p>
    						
    						
    						
    						
    						        </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
						               <p>
                        <b>T1 node types:</b>
					                   <code>cache.t1.micro</code>
                     </p>
					     
						               <p>
                        <b>M1 node types:</b>
						                  <code>cache.m1.small</code>, 
						   <code>cache.m1.medium</code>, 
						   <code>cache.m1.large</code>,
						   <code>cache.m1.xlarge</code>
                     </p>
						   
						               <p>
                        <b>M3 node types:</b>
    						              <code>cache.m3.medium</code>,
    						<code>cache.m3.large</code>, 
    						<code>cache.m3.xlarge</code>,
    						<code>cache.m3.2xlarge</code>
                     </p>
						   
						            </li>
               </ul>
            </li>
            <li>
               <p>Compute optimized:</p>

				           <ul>
                  <li>
                     <p>Previous generation: (not recommended)</p>
			                  <p>
                        <b>C1 node types:</b>
			                     <code>cache.c1.xlarge</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized with data tiering:</p>
		             <ul>
                  <li>
                     <p>Current generation: </p>
		                
		                   <p>
                        <b>R6gd node types</b> (available only for Redis engine version 6.2 onward).</p>
		                
		                
		                
		                
		                   <p>	
		                    
		                      <code>cache.r6gd.xlarge</code>,
		                    <code>cache.r6gd.2xlarge</code>,
		                    <code>cache.r6gd.4xlarge</code>,
		                    <code>cache.r6gd.8xlarge</code>,
		                    <code>cache.r6gd.12xlarge</code>,
		                    <code>cache.r6gd.16xlarge</code>
		                    
		                    
		                    
		                    
		                    
		                    
		                   </p>					    
		                
		                </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>

	
					   
					                <p>
                        <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
						

						
						
						               <p>	
							                 <code>cache.r6g.large</code>,
							<code>cache.r6g.xlarge</code>,
							<code>cache.r6g.2xlarge</code>,
							<code>cache.r6g.4xlarge</code>,
							<code>cache.r6g.8xlarge</code>,
							<code>cache.r6g.12xlarge</code>,
							<code>cache.r6g.16xlarge</code>
							
							
							
							
							
							
						               </p>	
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
					                <p>
                        <b>R5 node types:</b>
    					               <code>cache.r5.large</code>,
    					   <code>cache.r5.xlarge</code>,
    					   <code>cache.r5.2xlarge</code>,
    					   <code>cache.r5.4xlarge</code>,
    					   <code>cache.r5.12xlarge</code>,
    					   <code>cache.r5.24xlarge</code>
                     </p>
						
    					            <p>
                        <b>R4 node types:</b>
    					               <code>cache.r4.large</code>,
    					   <code>cache.r4.xlarge</code>,
    					   <code>cache.r4.2xlarge</code>,
    					   <code>cache.r4.4xlarge</code>,
    					   <code>cache.r4.8xlarge</code>,
    					   <code>cache.r4.16xlarge</code>
                     </p>
    					   
    					   
    					   

  
    					   
    					   
    					   
    					   
    					   
    					   
    					         </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
                        <p>
                        <b>M2 node types:</b>						
    					               <code>cache.m2.xlarge</code>, 
    						<code>cache.m2.2xlarge</code>,
    						<code>cache.m2.4xlarge</code>
                     </p>
    						
    						           <p>
                        <b>R3 node types:</b>
    					               <code>cache.r3.large</code>, 
    						<code>cache.r3.xlarge</code>,
    						<code>cache.r3.2xlarge</code>,  
    						<code>cache.r3.4xlarge</code>,
    						<code>cache.r3.8xlarge</code>
                     </p>
    						
    						        </li>
               </ul>
            </li>
         </ul>
				
		       <p>
            <b>Additional node type info</b>
         </p>
		       <ul>
            <li>
               <p>All current generation instance types are created in Amazon VPC by default.</p>
            </li>
            <li>
               <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
            </li>
            <li>
               <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
            </li>
            <li>
               <p>Redis configuration variables <code>appendonly</code> and 
				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
            </li>
         </ul>")
  @as("CacheNodeType")
  cacheNodeType: option<string_>,
  @ocaml.doc("<p>The offering identifier.</p>") @as("ReservedCacheNodesOfferingId")
  reservedCacheNodesOfferingId: option<string_>,
  @ocaml.doc("<p>The unique identifier for the reservation.</p>") @as("ReservedCacheNodeId")
  reservedCacheNodeId: option<string_>,
}
type replicaConfigurationList = array<configureShard>
@ocaml.doc("<p>The log delivery configurations being modified </p>")
type pendingLogDeliveryConfiguration = {
  @ocaml.doc("<p>Returns the log format, either JSON or TEXT</p>") @as("LogFormat")
  logFormat: option<logFormat>,
  @ocaml.doc(
    "<p>Configuration details of either a CloudWatch Logs destination or Kinesis Data Firehose destination.</p>"
  )
  @as("DestinationDetails")
  destinationDetails: option<destinationDetails>,
  @ocaml.doc(
    "<p>Returns the destination type, either CloudWatch Logs or Kinesis Data Firehose.</p>"
  )
  @as("DestinationType")
  destinationType: option<destinationType>,
  @ocaml.doc(
    "<p>Refers to <a href=\"https://redis.io/commands/slowlog\">slow-log</a> or engine-log..</p>"
  )
  @as("LogType")
  logType: option<logType>,
}
@ocaml.doc("<p>Represents an individual cache node in a snapshot of a cluster.</p>")
type nodeSnapshot = {
  @ocaml.doc(
    "<p>The date and time when the source node's metadata and cache data set was obtained for the snapshot.</p>"
  )
  @as("SnapshotCreateTime")
  snapshotCreateTime: option<tstamp>,
  @ocaml.doc("<p>The date and time when the cache node was created in the source cluster.</p>")
  @as("CacheNodeCreateTime")
  cacheNodeCreateTime: option<tstamp>,
  @ocaml.doc("<p>The size of the cache on the source cache node.</p>") @as("CacheSize")
  cacheSize: option<string_>,
  @ocaml.doc("<p>The configuration for the source node group (shard).</p>")
  @as("NodeGroupConfiguration")
  nodeGroupConfiguration: option<nodeGroupConfiguration>,
  @ocaml.doc("<p>The cache node identifier for the node in the source cluster.</p>")
  @as("CacheNodeId")
  cacheNodeId: option<string_>,
  @ocaml.doc("<p>A unique identifier for the source node group (shard).</p>") @as("NodeGroupId")
  nodeGroupId: option<string_>,
  @ocaml.doc("<p>A unique identifier for the source cluster.</p>") @as("CacheClusterId")
  cacheClusterId: option<string_>,
}
@ocaml.doc("<p>The status of the service update on the node group </p>")
type nodeGroupUpdateStatus = {
  @ocaml.doc("<p>The status of the service update on the node group member</p>")
  @as("NodeGroupMemberUpdateStatus")
  nodeGroupMemberUpdateStatus: option<nodeGroupMemberUpdateStatusList>,
  @ocaml.doc("<p>The ID of the node group</p>") @as("NodeGroupId") nodeGroupId: option<string_>,
}
type nodeGroupMemberList = array<nodeGroupMember>
type nodeGroupConfigurationList = array<nodeGroupConfiguration>
@ocaml.doc("<p>Specifies the destination, format and type of the logs. </p>")
type logDeliveryConfigurationRequest = {
  @ocaml.doc("<p>Specify if log delivery is enabled. Default <code>true</code>.</p>") @as("Enabled")
  enabled: option<booleanOptional>,
  @ocaml.doc("<p>Specifies either JSON or TEXT</p>") @as("LogFormat") logFormat: option<logFormat>,
  @ocaml.doc(
    "<p>Configuration details of either a CloudWatch Logs destination or Kinesis Data Firehose destination.</p>"
  )
  @as("DestinationDetails")
  destinationDetails: option<destinationDetails>,
  @ocaml.doc(
    "<p>Specify either <code>cloudwatch-logs</code> or <code>kinesis-firehose</code> as the destination type.</p>"
  )
  @as("DestinationType")
  destinationType: option<destinationType>,
  @ocaml.doc(
    "<p>Refers to <a href=\"https://redis.io/commands/slowlog\">slow-log</a> or engine-log..</p>"
  )
  @as("LogType")
  logType: option<logType>,
}
@ocaml.doc("<p>Returns the destination, format and type of the logs. </p>")
type logDeliveryConfiguration = {
  @ocaml.doc("<p>Returns an error message for the log delivery configuration.</p>") @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>Returns the log delivery configuration status. Values are one of <code>enabling</code> | <code>disabling</code> | <code>modifying</code> | <code>active</code> | <code>error</code>
         </p>")
  @as("Status")
  status: option<logDeliveryConfigurationStatus>,
  @ocaml.doc("<p>Returns the log format, either JSON or TEXT.</p>") @as("LogFormat")
  logFormat: option<logFormat>,
  @ocaml.doc(
    "<p>Configuration details of either a CloudWatch Logs destination or Kinesis Data Firehose destination.</p>"
  )
  @as("DestinationDetails")
  destinationDetails: option<destinationDetails>,
  @ocaml.doc(
    "<p>Returns the destination type, either <code>cloudwatch-logs</code> or <code>kinesis-firehose</code>.</p>"
  )
  @as("DestinationType")
  destinationType: option<destinationType>,
  @ocaml.doc(
    "<p>Refers to <a href=\"https://redis.io/commands/slowlog\">slow-log</a> or engine-log.</p>"
  )
  @as("LogType")
  logType: option<logType>,
}
@ocaml.doc("<p>Consists of a primary cluster that accepts writes and an associated secondary cluster that resides in a different Amazon region. The secondary cluster accepts only reads. The primary
        cluster automatically replicates updates to the secondary cluster.</p>
        
        
        <ul>
            <li>
               <p>The <b>GlobalReplicationGroupIdSuffix</b> represents the name of the Global datastore,
            which is what you use to associate a secondary cluster.</p> 
            </li>
         </ul>")
type globalReplicationGroup = {
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the global replication group.</p>") @as("ARN")
  arn: option<string_>,
  @ocaml.doc("<p>A flag that enables encryption at rest when set to <code>true</code>.</p>
            <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code> after the replication
                group is created. 
                To enable encryption at rest on a replication group you must set <code>AtRestEncryptionEnabled</code> to 
                <code>true</code> when you create the replication group. </p>
            <p>
            <b>Required:</b>
                Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code>, <code>4.x</code> or later.</p>")
  @as("AtRestEncryptionEnabled")
  atRestEncryptionEnabled: option<booleanOptional>,
  @ocaml.doc("<p>A flag that enables in-transit encryption when set to true.
            
            You cannot modify the value of <code>TransitEncryptionEnabled</code> after the cluster is created. To enable in-transit encryption on a cluster you must set <code>TransitEncryptionEnabled</code> to true when you create a cluster. </p>
        <p>
            <b>Required:</b>
            Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code>, <code>4.x</code> or later.</p>")
  @as("TransitEncryptionEnabled")
  transitEncryptionEnabled: option<booleanOptional>,
  @ocaml.doc("<p>A flag that enables using an <code>AuthToken</code> (password)
            when issuing Redis commands.</p>
            <p>Default: <code>false</code>
         </p>")
  @as("AuthTokenEnabled")
  authTokenEnabled: option<booleanOptional>,
  @ocaml.doc("<p>Indicates the slot configuration and global identifier for each slice group.</p>")
  @as("GlobalNodeGroups")
  globalNodeGroups: option<globalNodeGroupList>,
  @ocaml.doc("<p>A flag that indicates whether the Global datastore is cluster enabled.</p>")
  @as("ClusterEnabled")
  clusterEnabled: option<booleanOptional>,
  @ocaml.doc("<p>The replication groups that comprise the Global datastore.</p>") @as("Members")
  members: option<globalReplicationGroupMemberList>,
  @ocaml.doc("<p>The Elasticache Redis engine version.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The Elasticache engine. For Redis only.</p>") @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>The cache node type of the Global datastore</p>") @as("CacheNodeType")
  cacheNodeType: option<string_>,
  @ocaml.doc("<p>The status of the Global datastore</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The optional description of the Global datastore</p>")
  @as("GlobalReplicationGroupDescription")
  globalReplicationGroupDescription: option<string_>,
  @ocaml.doc("<p>The name of the Global datastore</p>") @as("GlobalReplicationGroupId")
  globalReplicationGroupId: option<string_>,
}
type filterList = array<filter>
@ocaml.doc("<p>Represents the output of one of the following operations:</p>
        <ul>
            <li>
               <p>
                  <code>AuthorizeCacheSecurityGroupIngress</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CreateCacheSecurityGroup</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RevokeCacheSecurityGroupIngress</code>
               </p>
            </li>
         </ul>")
type cacheSecurityGroup = {
  @ocaml.doc("<p>The ARN of the cache security group,</p>") @as("ARN") arn: option<string_>,
  @ocaml.doc(
    "<p>A list of Amazon EC2 security groups that are associated with this cache security group.</p>"
  )
  @as("EC2SecurityGroups")
  ec2SecurityGroups: option<ec2SecurityGroupList>,
  @ocaml.doc("<p>The description of the cache security group.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the cache security group.</p>") @as("CacheSecurityGroupName")
  cacheSecurityGroupName: option<string_>,
  @ocaml.doc("<p>The Amazon account ID of the cache security group owner.</p>") @as("OwnerId")
  ownerId: option<string_>,
}
@ocaml.doc("<p>A parameter that has a different value for each cache node type it is applied to. For
            example, in a Redis cluster, a <code>cache.m1.large</code> cache node type would have a
            larger <code>maxmemory</code> value than a <code>cache.m1.small</code> type.</p>")
type cacheNodeTypeSpecificParameter = {
  @ocaml.doc("<p>Indicates whether a change to the parameter is applied immediately
            or requires a reboot for the change to be applied. 
            You can force a reboot or wait until the next maintenance window's reboot.
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html\">Rebooting a Cluster</a>.</p>")
  @as("ChangeType")
  changeType: option<changeType>,
  @ocaml.doc("<p>A list of cache node types and their corresponding values for this parameter.</p>")
  @as("CacheNodeTypeSpecificValues")
  cacheNodeTypeSpecificValues: option<cacheNodeTypeSpecificValueList>,
  @ocaml.doc("<p>The earliest cache engine version to which the parameter can apply.</p>")
  @as("MinimumEngineVersion")
  minimumEngineVersion: option<string_>,
  @ocaml.doc("<p>Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be
            modified. Some parameters have security or operational implications that prevent them
            from being changed.</p>")
  @as("IsModifiable")
  isModifiable: option<boolean_>,
  @ocaml.doc("<p>The valid range of values for the parameter.</p>") @as("AllowedValues")
  allowedValues: option<string_>,
  @ocaml.doc("<p>The valid data type for the parameter.</p>") @as("DataType")
  dataType: option<string_>,
  @ocaml.doc("<p>The source of the parameter value.</p>") @as("Source") source: option<string_>,
  @ocaml.doc("<p>A description of the parameter.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("ParameterName")
  parameterName: option<string_>,
}
type cacheNodeList = array<cacheNode>
type userGroupList = array<userGroup>
type reservedCacheNodesOfferingList = array<reservedCacheNodesOffering>
type reservedCacheNodeList = array<reservedCacheNode>
@ocaml.doc("<p>A list of the replication groups </p>")
type regionalConfiguration = {
  @ocaml.doc(
    "<p>A list of <code>PreferredAvailabilityZones</code> objects that specifies the configuration of a node group in the resharded cluster. </p>"
  )
  @as("ReshardingConfiguration")
  reshardingConfiguration: reshardingConfigurationList,
  @ocaml.doc("<p>The Amazon region where the cluster is stored</p>") @as("ReplicationGroupRegion")
  replicationGroupRegion: string_,
  @ocaml.doc("<p>The name of the secondary cluster</p>") @as("ReplicationGroupId")
  replicationGroupId: string_,
}
type pendingLogDeliveryConfigurationList = array<pendingLogDeliveryConfiguration>
type nodeSnapshotList = array<nodeSnapshot>
type nodeGroupUpdateStatusList = array<nodeGroupUpdateStatus>
@ocaml.doc("<p>Represents a collection of cache nodes in a replication group.
            One node in the node group is the read/write primary node. 
            All the other nodes are read-only Replica nodes.</p>")
type nodeGroup = {
  @ocaml.doc(
    "<p>A list containing information about individual nodes within the node group (shard).</p>"
  )
  @as("NodeGroupMembers")
  nodeGroupMembers: option<nodeGroupMemberList>,
  @ocaml.doc("<p>The keyspace for this node group (shard).</p>") @as("Slots")
  slots: option<string_>,
  @ocaml.doc("<p>The endpoint of the replica nodes in this node group (shard).</p>")
  @as("ReaderEndpoint")
  readerEndpoint: option<endpoint>,
  @ocaml.doc("<p>The endpoint of the primary node in this node group (shard).</p>")
  @as("PrimaryEndpoint")
  primaryEndpoint: option<endpoint>,
  @ocaml.doc("<p>The current state of this replication group - <code>creating</code>, 
            <code>available</code>, <code>modifying</code>, <code>deleting</code>.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The identifier for the node group (shard). A Redis (cluster mode disabled) replication group contains only 1 node group; therefore, the node group ID is 0001.
            A Redis (cluster mode enabled) replication group contains 1 to 90 node groups numbered 0001 to 0090. Optionally, the user can provide the id for
            a node group. </p>")
  @as("NodeGroupId")
  nodeGroupId: option<string_>,
}
type logDeliveryConfigurationRequestList = array<logDeliveryConfigurationRequest>
type logDeliveryConfigurationList = array<logDeliveryConfiguration>
type globalReplicationGroupList = array<globalReplicationGroup>
@ocaml.doc("<p>Represents the output of one of the following operations:</p>
        <ul>
            <li>
               <p>
                  <code>CreateCacheSubnetGroup</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ModifyCacheSubnetGroup</code>
               </p>
            </li>
         </ul>")
type cacheSubnetGroup = {
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the cache subnet group.</p>") @as("ARN")
  arn: option<string_>,
  @ocaml.doc("<p>A list of subnets associated with the cache subnet group.</p>") @as("Subnets")
  subnets: option<subnetList>,
  @ocaml.doc(
    "<p>The Amazon Virtual Private Cloud identifier (VPC ID) of the cache subnet group.</p>"
  )
  @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>The description of the cache subnet group.</p>") @as("CacheSubnetGroupDescription")
  cacheSubnetGroupDescription: option<string_>,
  @ocaml.doc("<p>The name of the cache subnet group.</p>") @as("CacheSubnetGroupName")
  cacheSubnetGroupName: option<string_>,
}
type cacheSecurityGroups = array<cacheSecurityGroup>
type cacheNodeTypeSpecificParametersList = array<cacheNodeTypeSpecificParameter>
@ocaml.doc("<p>The status of the service update for a specific replication group</p>")
type updateAction = {
  @ocaml.doc("<p>The Elasticache engine to which the update applies. Either Redis or Memcached</p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>The estimated length of time for the update to complete</p>")
  @as("EstimatedUpdateTime")
  estimatedUpdateTime: option<string_>,
  @ocaml.doc("<p>The status of the service update on the cache node</p>")
  @as("CacheNodeUpdateStatus")
  cacheNodeUpdateStatus: option<cacheNodeUpdateStatusList>,
  @ocaml.doc("<p>The status of the service update on the node group</p>")
  @as("NodeGroupUpdateStatus")
  nodeGroupUpdateStatus: option<nodeGroupUpdateStatusList>,
  @ocaml.doc("<p>If yes, all nodes in the replication group have been updated by the recommended apply-by date. If no, at least one node in the replication group have not been updated by the recommended apply-by date. If N/A, the replication group was created after the
      recommended apply-by date.</p>")
  @as("SlaMet")
  slaMet: option<slaMet>,
  @ocaml.doc("<p>The date when the UpdateActionStatus was last modified</p>")
  @as("UpdateActionStatusModifiedDate")
  updateActionStatusModifiedDate: option<tstamp>,
  @ocaml.doc("<p>The progress of the service update on the replication group</p>")
  @as("NodesUpdated")
  nodesUpdated: option<string_>,
  @ocaml.doc("<p>The status of the update action</p>") @as("UpdateActionStatus")
  updateActionStatus: option<updateActionStatus>,
  @ocaml.doc("<p>The date that the service update is available to a replication group</p>")
  @as("UpdateActionAvailableDate")
  updateActionAvailableDate: option<tstamp>,
  @ocaml.doc("<p>Reflects the nature of the service update  </p>") @as("ServiceUpdateType")
  serviceUpdateType: option<serviceUpdateType>,
  @ocaml.doc(
    "<p>The recommended date to apply the service update to ensure compliance. For information on compliance, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/elasticache-compliance.html#elasticache-compliance-self-service\">Self-Service Security Updates for Compliance</a>.</p>"
  )
  @as("ServiceUpdateRecommendedApplyByDate")
  serviceUpdateRecommendedApplyByDate: option<tstamp>,
  @ocaml.doc("<p>The status of the service update</p>") @as("ServiceUpdateStatus")
  serviceUpdateStatus: option<serviceUpdateStatus>,
  @ocaml.doc("<p>The severity of the service update</p>") @as("ServiceUpdateSeverity")
  serviceUpdateSeverity: option<serviceUpdateSeverity>,
  @ocaml.doc("<p>The date the update is first available</p>") @as("ServiceUpdateReleaseDate")
  serviceUpdateReleaseDate: option<tstamp>,
  @ocaml.doc("<p>The unique ID of the service update</p>") @as("ServiceUpdateName")
  serviceUpdateName: option<string_>,
  @ocaml.doc("<p>The ID of the cache cluster</p>") @as("CacheClusterId")
  cacheClusterId: option<string_>,
  @ocaml.doc("<p>The ID of the replication group</p>") @as("ReplicationGroupId")
  replicationGroupId: option<string_>,
}
@ocaml.doc(
  "<p>Represents a copy of an entire Redis cluster as of the time when the snapshot was taken.</p>"
)
type snapshot = {
  @ocaml.doc("<p>Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to true when using r6gd nodes.
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/data-tiering.html\">Data tiering</a>.</p>")
  @as("DataTiering")
  dataTiering: option<dataTieringStatus>,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the snapshot.</p>") @as("ARN")
  arn: option<string_>,
  @ocaml.doc("<p>The ID of the KMS key used to encrypt the snapshot.</p>") @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>A list of the cache nodes in the source cluster.</p>") @as("NodeSnapshots")
  nodeSnapshots: option<nodeSnapshotList>,
  @ocaml.doc(
    "<p>Indicates the status of automatic failover for the source Redis replication group.</p>"
  )
  @as("AutomaticFailover")
  automaticFailover: option<automaticFailoverStatus>,
  @ocaml.doc("<p>The number of node groups (shards) in this snapshot.
            When restoring from a snapshot, the number of node groups (shards) in the snapshot and in the restored 
            replication group must be the same.</p>")
  @as("NumNodeGroups")
  numNodeGroups: option<integerOptional>,
  @ocaml.doc(
    "<p>The daily time range during which ElastiCache takes daily snapshots of the source cluster.</p>"
  )
  @as("SnapshotWindow")
  snapshotWindow: option<string_>,
  @ocaml.doc("<p>For an automatic snapshot, the number of days for which ElastiCache retains the snapshot before deleting it.</p>
        <p>For manual snapshots, this field reflects the <code>SnapshotRetentionLimit</code> for the
            source cluster when the snapshot was created. This field is otherwise ignored:
            Manual snapshots do not expire, and can only be deleted using the <code>DeleteSnapshot</code>
            operation. </p>
        <p>
            <b>Important</b>
          If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.</p>")
  @as("SnapshotRetentionLimit")
  snapshotRetentionLimit: option<integerOptional>,
  @ocaml.doc("<p> If you are running Redis engine version 6.0 or later, set this parameter to yes if you want to opt-in to the next auto minor version upgrade campaign. This parameter is disabled for previous versions. 
        </p>")
  @as("AutoMinorVersionUpgrade")
  autoMinorVersionUpgrade: option<boolean_>,
  @ocaml.doc(
    "<p>The Amazon Virtual Private Cloud identifier (VPC ID) of the cache subnet group for the source cluster.</p>"
  )
  @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>The name of the cache subnet group associated with the source cluster.</p>")
  @as("CacheSubnetGroupName")
  cacheSubnetGroupName: option<string_>,
  @ocaml.doc("<p>The cache parameter group that is associated with the source cluster.</p>")
  @as("CacheParameterGroupName")
  cacheParameterGroupName: option<string_>,
  @ocaml.doc("<p>The port number used by each cache nodes in the source cluster.</p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) for the topic used by the source cluster for publishing notifications.</p>"
  )
  @as("TopicArn")
  topicArn: option<string_>,
  @ocaml.doc("<p>Specifies the weekly time range during which maintenance
   on the cluster is performed. It is specified as a range in
   the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
   maintenance window is a 60 minute period.</p>
         <p>Valid values for <code>ddd</code> are:</p>
         <ul>
            <li>
               <p>
                  <code>sun</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mon</code>
               </p>
            </li>
            <li>
               <p>
                  <code>tue</code>
               </p>
            </li>
            <li>
               <p>
                  <code>wed</code>
               </p>
            </li>
            <li>
               <p>
                  <code>thu</code>
               </p>
            </li>
            <li>
               <p>
                  <code>fri</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sat</code>
               </p>
            </li>
         </ul>
         <p>Example: <code>sun:23:00-mon:01:30</code>
         </p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<string_>,
  @ocaml.doc("<p>The date and time when the source cluster was created.</p>")
  @as("CacheClusterCreateTime")
  cacheClusterCreateTime: option<tstamp>,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the preferred outpost.</p>")
  @as("PreferredOutpostArn")
  preferredOutpostArn: option<string_>,
  @ocaml.doc("<p>The name of the Availability Zone in which the source cluster is located.</p>")
  @as("PreferredAvailabilityZone")
  preferredAvailabilityZone: option<string_>,
  @ocaml.doc("<p>The number of cache nodes in the source cluster.</p>
        <p>For clusters running Redis, this value must be 1. 
            For clusters running Memcached, this value must be between 1 and 40.</p>")
  @as("NumCacheNodes")
  numCacheNodes: option<integerOptional>,
  @ocaml.doc("<p>The version of the cache engine version that is used by the source cluster.</p>")
  @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The name of the cache engine (<code>memcached</code> or 
            <code>redis</code>) used by the source cluster.</p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>The name of the compute and memory capacity node type for the source cluster.</p>
        
        <p>The following node types are supported by ElastiCache. 
				Generally speaking, the current generation types provide more memory and computational power
			at lower cost when compared to their equivalent previous generation counterparts.</p>
		       <ul>
            <li>
               <p>General purpose:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>
					    
					                <p>
                        <b>M6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
					    
					    
					    
					    
					                <p>	
                        <code>cache.m6g.large</code>,
							<code>cache.m6g.xlarge</code>,
							<code>cache.m6g.2xlarge</code>,
							<code>cache.m6g.4xlarge</code>,
							<code>cache.m6g.8xlarge</code>,
							<code>cache.m6g.12xlarge</code>,
							<code>cache.m6g.16xlarge</code>
							
					                </p>
							
						
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
    					
    					
    					            <p>
                        <b>M5 node types:</b>
    						              <code>cache.m5.large</code>,
    						<code>cache.m5.xlarge</code>,
    						<code>cache.m5.2xlarge</code>,
    						<code>cache.m5.4xlarge</code>,
    						<code>cache.m5.12xlarge</code>,
    						<code>cache.m5.24xlarge</code>
    						
    						
    						           </p>	
    						
						
						               <p>
                        <b>M4 node types:</b>
    						              <code>cache.m4.large</code>,
    						<code>cache.m4.xlarge</code>,
    						<code>cache.m4.2xlarge</code>,
    						<code>cache.m4.4xlarge</code>,
    						<code>cache.m4.10xlarge</code>
                     </p>
    			
					                <p>
                        <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):</p>
					    
					   
					                <p>
					                   <code>cache.t4g.micro</code>,
					        <code>cache.t4g.small</code>,
					        <code>cache.t4g.medium</code>
					                </p>	             
					    
					    
					    
					                <p>
                        <b>T3 node types:</b>
					                   <code>cache.t3.micro</code>, 
    						<code>cache.t3.small</code>,
    						<code>cache.t3.medium</code>
                     </p>
    								
    						
    				             <p>
                        <b>T2 node types:</b>
					                   <code>cache.t2.micro</code>, 
    						<code>cache.t2.small</code>,
    						<code>cache.t2.medium</code>
                     </p>
    						
    						
    						
    						
    						        </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
						               <p>
                        <b>T1 node types:</b>
					                   <code>cache.t1.micro</code>
                     </p>
					     
						               <p>
                        <b>M1 node types:</b>
						                  <code>cache.m1.small</code>, 
						   <code>cache.m1.medium</code>, 
						   <code>cache.m1.large</code>,
						   <code>cache.m1.xlarge</code>
                     </p>
						   
						               <p>
                        <b>M3 node types:</b>
    						              <code>cache.m3.medium</code>,
    						<code>cache.m3.large</code>, 
    						<code>cache.m3.xlarge</code>,
    						<code>cache.m3.2xlarge</code>
                     </p>
						   
						            </li>
               </ul>
            </li>
            <li>
               <p>Compute optimized:</p>

				           <ul>
                  <li>
                     <p>Previous generation: (not recommended)</p>
			                  <p>
                        <b>C1 node types:</b>
			                     <code>cache.c1.xlarge</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized with data tiering:</p>
		             <ul>
                  <li>
                     <p>Current generation: </p>
		                
		                   <p>
                        <b>R6gd node types</b> (available only for Redis engine version 6.2 onward).</p>
		                
		                
		                
		                
		                   <p>	
		                    
		                      <code>cache.r6gd.xlarge</code>,
		                    <code>cache.r6gd.2xlarge</code>,
		                    <code>cache.r6gd.4xlarge</code>,
		                    <code>cache.r6gd.8xlarge</code>,
		                    <code>cache.r6gd.12xlarge</code>,
		                    <code>cache.r6gd.16xlarge</code>
		                    
		                    
		                    
		                    
		                    
		                    
		                   </p>					    
		    
		                </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized:</p>
		       
		     
		            <ul>
                  <li>
                     <p>Current generation: </p>
		                    
		                    
		                    
		                    
		                    <p>
                        <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
		                    
		                    
		                    
		                    <p>	
		                        <code>cache.r6g.large</code>,
		                        <code>cache.r6g.xlarge</code>,
		                        <code>cache.r6g.2xlarge</code>,
		                        <code>cache.r6g.4xlarge</code>,
		                        <code>cache.r6g.8xlarge</code>,
		                        <code>cache.r6g.12xlarge</code>,
		                        <code>cache.r6g.16xlarge</code>
		                        
		                        
		                        
		                        
		                        
		                        
		                    </p>	
		                    <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>

					 			    
					    
					    
					   
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
					                <p>
                        <b>R5 node types:</b>
    					               <code>cache.r5.large</code>,
    					   <code>cache.r5.xlarge</code>,
    					   <code>cache.r5.2xlarge</code>,
    					   <code>cache.r5.4xlarge</code>,
    					   <code>cache.r5.12xlarge</code>,
    					   <code>cache.r5.24xlarge</code>
                     </p>
						
    					            <p>
                        <b>R4 node types:</b>
    					               <code>cache.r4.large</code>,
    					   <code>cache.r4.xlarge</code>,
    					   <code>cache.r4.2xlarge</code>,
    					   <code>cache.r4.4xlarge</code>,
    					   <code>cache.r4.8xlarge</code>,
    					   <code>cache.r4.16xlarge</code>
                     </p>
    					   
    					   
    					   

  
    					   
    					   
    					   
    					   
    					   
    					   
    					         </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
                        <p>
                        <b>M2 node types:</b>						
    					               <code>cache.m2.xlarge</code>, 
    						<code>cache.m2.2xlarge</code>,
    						<code>cache.m2.4xlarge</code>
                     </p>
    						
    						           <p>
                        <b>R3 node types:</b>
    					               <code>cache.r3.large</code>, 
    						<code>cache.r3.xlarge</code>,
    						<code>cache.r3.2xlarge</code>,  
    						<code>cache.r3.4xlarge</code>,
    						<code>cache.r3.8xlarge</code>
                     </p>
    						
    						        </li>
               </ul>
            </li>
         </ul>
				
		       <p>
            <b>Additional node type info</b>
         </p>
		       <ul>
            <li>
               <p>All current generation instance types are created in Amazon VPC by default.</p>
            </li>
            <li>
               <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
            </li>
            <li>
               <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
            </li>
            <li>
               <p>Redis configuration variables <code>appendonly</code> and 
				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
            </li>
         </ul>")
  @as("CacheNodeType")
  cacheNodeType: option<string_>,
  @ocaml.doc("<p>Indicates whether the snapshot is from an automatic backup (<code>automated</code>) 
            or was created manually (<code>manual</code>).</p>")
  @as("SnapshotSource")
  snapshotSource: option<string_>,
  @ocaml.doc("<p>The status of the snapshot. Valid values: <code>creating</code> | <code>available</code>
            | <code>restoring</code> | <code>copying</code> | <code>deleting</code>.</p>")
  @as("SnapshotStatus")
  snapshotStatus: option<string_>,
  @ocaml.doc("<p>The user-supplied identifier of the source cluster.</p>") @as("CacheClusterId")
  cacheClusterId: option<string_>,
  @ocaml.doc("<p>A description of the source replication group.</p>")
  @as("ReplicationGroupDescription")
  replicationGroupDescription: option<string_>,
  @ocaml.doc("<p>The unique identifier of the source replication group.</p>")
  @as("ReplicationGroupId")
  replicationGroupId: option<string_>,
  @ocaml.doc("<p>The name of a snapshot. 
            For an automatic snapshot, the name is system-generated.  
            For a manual snapshot, this is the user-provided name.</p>")
  @as("SnapshotName")
  snapshotName: option<string_>,
}
@ocaml.doc("<p>The settings to be applied to the Redis replication group, 
            either immediately or during the next maintenance window.</p>")
type replicationGroupPendingModifiedValues = {
  @ocaml.doc("<p>The log delivery configurations being modified </p>")
  @as("LogDeliveryConfigurations")
  logDeliveryConfigurations: option<pendingLogDeliveryConfigurationList>,
  @ocaml.doc("<p>The user group being modified.</p>") @as("UserGroups")
  userGroups: option<userGroupsUpdateStatus>,
  @ocaml.doc("<p>The auth token status</p>") @as("AuthTokenStatus")
  authTokenStatus: option<authTokenUpdateStatus>,
  @ocaml.doc("<p>The status of an online resharding operation.</p>") @as("Resharding")
  resharding: option<reshardingStatus>,
  @ocaml.doc("<p>Indicates the status of automatic failover for this Redis replication group.</p>")
  @as("AutomaticFailoverStatus")
  automaticFailoverStatus: option<pendingAutomaticFailoverStatus>,
  @ocaml.doc("<p>The primary cluster ID that is applied immediately (if <code>--apply-immediately</code> 
            was specified), or during the next maintenance window.</p>")
  @as("PrimaryClusterId")
  primaryClusterId: option<string_>,
}
type regionalConfigurationList = array<regionalConfiguration>
@ocaml.doc("<p>A group of settings that are applied to the cluster in the future, 
            or that are currently being applied.</p>")
type pendingModifiedValues = {
  @ocaml.doc("<p>The log delivery configurations being modified </p>")
  @as("LogDeliveryConfigurations")
  logDeliveryConfigurations: option<pendingLogDeliveryConfigurationList>,
  @ocaml.doc("<p>The auth token status</p>") @as("AuthTokenStatus")
  authTokenStatus: option<authTokenUpdateStatus>,
  @ocaml.doc("<p>The cache node type that this cluster or replication group is scaled to.</p>")
  @as("CacheNodeType")
  cacheNodeType: option<string_>,
  @ocaml.doc("<p>The new cache engine version that the cluster  runs.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>A list of cache node IDs that are being removed (or will be removed) from the cluster. 
            A node ID is a 4-digit numeric identifier (0001, 0002, etc.).</p>")
  @as("CacheNodeIdsToRemove")
  cacheNodeIdsToRemove: option<cacheNodeIdsList>,
  @ocaml.doc("<p>The new number of cache nodes for the cluster.</p>
        <p>For clusters running Redis, this value must be 1. 
            For clusters running Memcached, this value must be between 1 and 40.</p>")
  @as("NumCacheNodes")
  numCacheNodes: option<integerOptional>,
}
type nodeGroupList = array<nodeGroup>
@ocaml.doc(
  "<p>Represents the output of a <code>DescribeEngineDefaultParameters</code> operation.</p>"
)
type engineDefaults = {
  @ocaml.doc(
    "<p>A list of parameters specific to a particular cache node type. Each element in the list contains detailed information about one parameter.</p>"
  )
  @as("CacheNodeTypeSpecificParameters")
  cacheNodeTypeSpecificParameters: option<cacheNodeTypeSpecificParametersList>,
  @ocaml.doc("<p>Contains a list of engine default parameters.</p>") @as("Parameters")
  parameters: option<parametersList>,
  @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>") @as("Marker")
  marker: option<string_>,
  @ocaml.doc("<p>Specifies the name of the cache parameter group family to which the engine default parameters apply.</p>
        <p>Valid values are: 
    <code>memcached1.4</code> | 
     <code>memcached1.5</code> | 
      <code>memcached1.6</code> | 
    <code>redis2.6</code> | 
    <code>redis2.8</code> |
    <code>redis3.2</code> |
    <code>redis4.0</code> |
     <code>redis5.0</code> | 
      <code>redis6.0</code> | 
            <code>redis6.x</code>
         </p>")
  @as("CacheParameterGroupFamily")
  cacheParameterGroupFamily: option<string_>,
}
type cacheSubnetGroups = array<cacheSubnetGroup>
type updateActionList = array<updateAction>
type snapshotList = array<snapshot>
@ocaml.doc("<p>Contains all of the attributes of a specific Redis replication group.</p>")
type replicationGroup = {
  @ocaml.doc("<p>Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to true when using r6gd nodes.
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/data-tiering.html\">Data tiering</a>.</p>")
  @as("DataTiering")
  dataTiering: option<dataTieringStatus>,
  @ocaml.doc("<p>The date and time when the cluster was created.</p>")
  @as("ReplicationGroupCreateTime")
  replicationGroupCreateTime: option<tstamp>,
  @ocaml.doc("<p>Returns the destination, format and type of the logs. </p>")
  @as("LogDeliveryConfigurations")
  logDeliveryConfigurations: option<logDeliveryConfigurationList>,
  @ocaml.doc("<p>The ID of the user group associated to the replication group.</p>")
  @as("UserGroupIds")
  userGroupIds: option<userGroupIdList>,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the replication group.</p>") @as("ARN")
  arn: option<string_>,
  @ocaml.doc("<p>The ID of the KMS key used to encrypt the disk in the cluster.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>The outpost ARNs of the replication group's member clusters.</p>")
  @as("MemberClustersOutpostArns")
  memberClustersOutpostArns: option<replicationGroupOutpostArnList>,
  @ocaml.doc("<p>A flag that enables encryption at-rest when set to <code>true</code>.</p>
        <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code>
            after the cluster is created. To enable encryption at-rest on a cluster
            you must set <code>AtRestEncryptionEnabled</code> to <code>true</code>
            when you create a cluster.</p>
        <p>
            <b>Required:</b>
            Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code>, <code>4.x</code> or later.</p>
        <p>Default: <code>false</code>
         </p>")
  @as("AtRestEncryptionEnabled")
  atRestEncryptionEnabled: option<booleanOptional>,
  @ocaml.doc("<p>A flag that enables in-transit encryption when set to <code>true</code>.</p>
        <p>You cannot modify the value of <code>TransitEncryptionEnabled</code>
            after the cluster is created. To enable in-transit encryption on a cluster
            you must set <code>TransitEncryptionEnabled</code> to <code>true</code>
            when you create a cluster.</p>
        <p>
            <b>Required:</b>
            Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code>, <code>4.x</code> or later.</p>
        <p>Default: <code>false</code>
         </p>")
  @as("TransitEncryptionEnabled")
  transitEncryptionEnabled: option<booleanOptional>,
  @ocaml.doc("<p>The date the auth token was last modified</p>") @as("AuthTokenLastModifiedDate")
  authTokenLastModifiedDate: option<tstamp>,
  @ocaml.doc("<p>A flag that enables using an <code>AuthToken</code> (password)
            when issuing Redis commands.</p>
        <p>Default: <code>false</code>
         </p>")
  @as("AuthTokenEnabled")
  authTokenEnabled: option<booleanOptional>,
  @ocaml.doc(
    "<p>The name of the compute and memory capacity node type for each node in the replication group.</p>"
  )
  @as("CacheNodeType")
  cacheNodeType: option<string_>,
  @ocaml.doc("<p>A flag indicating whether or not this replication group is cluster enabled; 
            i.e., whether its data can be partitioned across multiple shards (API/CLI: node groups).</p>
        <p>Valid values: <code>true</code> | <code>false</code>
         </p>")
  @as("ClusterEnabled")
  clusterEnabled: option<booleanOptional>,
  @ocaml.doc("<p>The daily time range (in UTC) during which ElastiCache  begins taking a daily snapshot of your node group (shard).</p>
        <p>Example: <code>05:00-09:00</code>
        </p>
        <p>If you do not specify this parameter, ElastiCache  automatically chooses an appropriate time range.</p>
        <note>
            <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p>
         </note>")
  @as("SnapshotWindow")
  snapshotWindow: option<string_>,
  @ocaml.doc("<p>The number of days for which ElastiCache retains automatic cluster snapshots before
            deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a
            snapshot that was taken today is retained for 5 days before being deleted.</p>
        <important>
            <p>
            If the value of <code>SnapshotRetentionLimit</code> is set to zero (0), backups are turned off.</p>
         </important>")
  @as("SnapshotRetentionLimit")
  snapshotRetentionLimit: option<integerOptional>,
  @ocaml.doc("<p>The configuration endpoint for this replication group. 
            Use the configuration endpoint to connect to this replication group.</p>")
  @as("ConfigurationEndpoint")
  configurationEndpoint: option<endpoint>,
  @ocaml.doc("<p>A flag indicating if you have Multi-AZ enabled to enhance fault tolerance. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html\">Minimizing Downtime: Multi-AZ</a>
         </p>")
  @as("MultiAZ")
  multiAZ: option<multiAZStatus>,
  @ocaml.doc("<p>Indicates the status of automatic failover for this Redis replication group.</p>")
  @as("AutomaticFailover")
  automaticFailover: option<automaticFailoverStatus>,
  @ocaml.doc(
    "<p>The cluster ID that is used as the daily snapshot source for the replication group.</p>"
  )
  @as("SnapshottingClusterId")
  snapshottingClusterId: option<string_>,
  @ocaml.doc("<p>A list of node groups in this replication group.
            For Redis (cluster mode disabled) replication groups, this is a single-element list.
            For Redis (cluster mode enabled) replication groups, the list contains an entry for each
            node group (shard).</p>")
  @as("NodeGroups")
  nodeGroups: option<nodeGroupList>,
  @ocaml.doc("<p>The names of all the cache clusters that are part of this replication group.</p>")
  @as("MemberClusters")
  memberClusters: option<clusterIdList>,
  @ocaml.doc("<p>A group of settings to be applied to the replication group, 
            either immediately or during the next maintenance window.</p>")
  @as("PendingModifiedValues")
  pendingModifiedValues: option<replicationGroupPendingModifiedValues>,
  @ocaml.doc("<p>The current state of this replication group - 
            <code>creating</code>, 
            <code>available</code>, 
            <code>modifying</code>, 
            <code>deleting</code>, 
            <code>create-failed</code>,
            <code>snapshotting</code>.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc(
    "<p>The name of the Global datastore and role of this replication group in the Global datastore.</p>"
  )
  @as("GlobalReplicationGroupInfo")
  globalReplicationGroupInfo: option<globalReplicationGroupInfo>,
  @ocaml.doc("<p>The user supplied description of the replication group.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The identifier for the replication group.</p>") @as("ReplicationGroupId")
  replicationGroupId: option<string_>,
}
@ocaml.doc("<p>Contains all of the attributes of a specific cluster.</p>")
type cacheCluster = {
  @ocaml.doc("<p>Returns the destination, format and type of the logs.</p>")
  @as("LogDeliveryConfigurations")
  logDeliveryConfigurations: option<logDeliveryConfigurationList>,
  @ocaml.doc(
    "<p>A boolean value indicating whether log delivery is enabled for the replication group.</p>"
  )
  @as("ReplicationGroupLogDeliveryEnabled")
  replicationGroupLogDeliveryEnabled: option<boolean_>,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the cache cluster.</p>") @as("ARN")
  arn: option<string_>,
  @ocaml.doc("<p>A flag that enables encryption at-rest when set to <code>true</code>.</p>
        <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code>
            after the cluster is created. To enable at-rest encryption on a cluster
            you must set <code>AtRestEncryptionEnabled</code> to <code>true</code>
            when you create a cluster.</p>
        <p>
            <b>Required:</b>
            Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code>, <code>4.x</code> or later.</p>
        <p>Default: <code>false</code>
         </p>")
  @as("AtRestEncryptionEnabled")
  atRestEncryptionEnabled: option<booleanOptional>,
  @ocaml.doc("<p>A flag that enables in-transit encryption when set to <code>true</code>.</p>
        <p>You cannot modify the value of <code>TransitEncryptionEnabled</code>
            after the cluster is created. To enable in-transit encryption on a cluster
            you must set <code>TransitEncryptionEnabled</code> to <code>true</code>
            when you create a cluster.</p>
        <p>
            <b>Required:</b>
            Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code>, <code>4.x</code> or later.</p>
        <p>Default: <code>false</code>
         </p>")
  @as("TransitEncryptionEnabled")
  transitEncryptionEnabled: option<booleanOptional>,
  @ocaml.doc("<p>The date the auth token was last modified</p>") @as("AuthTokenLastModifiedDate")
  authTokenLastModifiedDate: option<tstamp>,
  @ocaml.doc("<p>A flag that enables using an <code>AuthToken</code> (password)
            when issuing Redis commands.</p>
        <p>Default: <code>false</code>
         </p>")
  @as("AuthTokenEnabled")
  authTokenEnabled: option<booleanOptional>,
  @ocaml.doc("<p>The daily time range (in UTC) during which ElastiCache begins taking a 
            daily snapshot of your cluster.</p>
        <p>Example: <code>05:00-09:00</code>
         </p>")
  @as("SnapshotWindow")
  snapshotWindow: option<string_>,
  @ocaml.doc("<p>The number of days for which ElastiCache retains automatic cluster snapshots before
            deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5,  a
            snapshot that was taken today is retained for 5 days before being deleted.</p>
        <important>
            <p>
          If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.</p>
         </important>")
  @as("SnapshotRetentionLimit")
  snapshotRetentionLimit: option<integerOptional>,
  @ocaml.doc("<p>The replication group to which this cluster belongs. 
            If this field is empty, the cluster is not associated with any replication group.</p>")
  @as("ReplicationGroupId")
  replicationGroupId: option<string_>,
  @ocaml.doc("<p>A list of VPC Security Groups associated with the cluster.</p>")
  @as("SecurityGroups")
  securityGroups: option<securityGroupMembershipList>,
  @ocaml.doc("<p> If you are running Redis engine version 6.0 or later, set this parameter to yes if you want to opt-in to the next auto minor version upgrade campaign. This parameter is disabled for previous versions. 
        </p>")
  @as("AutoMinorVersionUpgrade")
  autoMinorVersionUpgrade: option<boolean_>,
  @ocaml.doc("<p>A list of cache nodes that are members of the cluster.</p>") @as("CacheNodes")
  cacheNodes: option<cacheNodeList>,
  @ocaml.doc("<p>The name of the cache subnet group associated with the cluster.</p>")
  @as("CacheSubnetGroupName")
  cacheSubnetGroupName: option<string_>,
  @ocaml.doc("<p>Status of the cache parameter group.</p>") @as("CacheParameterGroup")
  cacheParameterGroup: option<cacheParameterGroupStatus>,
  @ocaml.doc(
    "<p>A list of cache security group elements, composed of name and status sub-elements.</p>"
  )
  @as("CacheSecurityGroups")
  cacheSecurityGroups: option<cacheSecurityGroupMembershipList>,
  @ocaml.doc("<p>Describes a notification topic and its status. 
            Notification topics are used for publishing ElastiCache events to subscribers using Amazon Simple Notification Service (SNS). </p>")
  @as("NotificationConfiguration")
  notificationConfiguration: option<notificationConfiguration>,
  @as("PendingModifiedValues") pendingModifiedValues: option<pendingModifiedValues>,
  @ocaml.doc("<p>Specifies the weekly time range during which maintenance
   on the cluster is performed. It is specified as a range in
   the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
   maintenance window is a 60 minute period.</p>
         <p>Valid values for <code>ddd</code> are:</p>
         <ul>
            <li>
               <p>
                  <code>sun</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mon</code>
               </p>
            </li>
            <li>
               <p>
                  <code>tue</code>
               </p>
            </li>
            <li>
               <p>
                  <code>wed</code>
               </p>
            </li>
            <li>
               <p>
                  <code>thu</code>
               </p>
            </li>
            <li>
               <p>
                  <code>fri</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sat</code>
               </p>
            </li>
         </ul>
         <p>Example: <code>sun:23:00-mon:01:30</code>
         </p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<string_>,
  @ocaml.doc("<p>The date and time when the cluster was created.</p>") @as("CacheClusterCreateTime")
  cacheClusterCreateTime: option<tstamp>,
  @ocaml.doc("<p>The outpost ARN in which the cache cluster is created.</p>")
  @as("PreferredOutpostArn")
  preferredOutpostArn: option<string_>,
  @ocaml.doc("<p>The name of the Availability Zone in which the cluster is located or \"Multiple\" 
            if the cache nodes are located in different Availability Zones.</p>")
  @as("PreferredAvailabilityZone")
  preferredAvailabilityZone: option<string_>,
  @ocaml.doc("<p>The number of cache nodes in the cluster.</p>
        <p>For clusters running Redis, this value must be 1. For clusters running Memcached, 
            this value must be between 1 and 40.</p>")
  @as("NumCacheNodes")
  numCacheNodes: option<integerOptional>,
  @ocaml.doc("<p>The current state of this cluster, one of the following values: 
                                                     <code>available</code>, 
                                                     <code>creating</code>, 
                                                     <code>deleted</code>, 
                                                     <code>deleting</code>,
                                                     <code>incompatible-network</code>,
                                                     <code>modifying</code>,
                                                     <code>rebooting cluster nodes</code>,
                                                     <code>restore-failed</code>, or 
                                                     <code>snapshotting</code>.</p>")
  @as("CacheClusterStatus")
  cacheClusterStatus: option<string_>,
  @ocaml.doc("<p>The version of the cache engine that is used in this cluster.</p>")
  @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The name of the cache engine (<code>memcached</code> or 
            <code>redis</code>) to be used for this cluster.</p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>The name of the compute and memory capacity node type for the cluster.</p>
        
        <p>The following node types are supported by ElastiCache. 
				Generally speaking, the current generation types provide more memory and computational power
			at lower cost when compared to their equivalent previous generation counterparts.</p>
		       <ul>
            <li>
               <p>General purpose:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>
					    
					    
					  
					    
					    
					                <p>
                        <b>M6g node types:</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward): 	<code>cache.m6g.large</code>,
							<code>cache.m6g.xlarge</code>,
							<code>cache.m6g.2xlarge</code>,
							<code>cache.m6g.4xlarge</code>,
							<code>cache.m6g.8xlarge</code>,
							<code>cache.m6g.12xlarge</code>,
							<code>cache.m6g.16xlarge</code>
							
							
							
						               </p>	
						
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
    					
    					
    					            <p>
                        <b>M5 node types:</b>
    						              <code>cache.m5.large</code>,
    						<code>cache.m5.xlarge</code>,
    						<code>cache.m5.2xlarge</code>,
    						<code>cache.m5.4xlarge</code>,
    						<code>cache.m5.12xlarge</code>,
    						<code>cache.m5.24xlarge</code>
    						
    						
    						           </p>	
    						
						
						               <p>
                        <b>M4 node types:</b>
    						              <code>cache.m4.large</code>,
    						<code>cache.m4.xlarge</code>,
    						<code>cache.m4.2xlarge</code>,
    						<code>cache.m4.4xlarge</code>,
    						<code>cache.m4.10xlarge</code>
                     </p>
    	
					    
					                <p>
                        <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
					        <code>cache.t4g.micro</code>,
					        <code>cache.t4g.small</code>,
					        <code>cache.t4g.medium</code>
					                </p>
					    
					                <p>
                        <b>T3 node types:</b>
					                   <code>cache.t3.micro</code>, 
    						<code>cache.t3.small</code>,
    						<code>cache.t3.medium</code>
                     </p>
    								
    						
    				             <p>
                        <b>T2 node types:</b>
					                   <code>cache.t2.micro</code>, 
    						<code>cache.t2.small</code>,
    						<code>cache.t2.medium</code>
                     </p>
    						
    						
    						
    						
    						        </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
						               <p>
                        <b>T1 node types:</b>
					                   <code>cache.t1.micro</code>
                     </p>
					     
						               <p>
                        <b>M1 node types:</b>
						                  <code>cache.m1.small</code>, 
						   <code>cache.m1.medium</code>, 
						   <code>cache.m1.large</code>,
						   <code>cache.m1.xlarge</code>
                     </p>
						   
						               <p>
                        <b>M3 node types:</b>
    						              <code>cache.m3.medium</code>,
    						<code>cache.m3.large</code>, 
    						<code>cache.m3.xlarge</code>,
    						<code>cache.m3.2xlarge</code>
                     </p>
						   
						            </li>
               </ul>
            </li>
            <li>
               <p>Compute optimized:</p>

				           <ul>
                  <li>
                     <p>Previous generation: (not recommended)</p>
			                  <p>
                        <b>C1 node types:</b>
			                     <code>cache.c1.xlarge</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized with data tiering:</p>
		             <ul>
                  <li>
                     <p>Current generation: </p>
		                
		                   <p>
                        <b>R6gd node types</b> (available only for Redis engine version 6.2 onward).</p>
		                
		                
		                
		                
		                   <p>	
		                    
		                      <code>cache.r6gd.xlarge</code>,
		                    <code>cache.r6gd.2xlarge</code>,
		                    <code>cache.r6gd.4xlarge</code>,
		                    <code>cache.r6gd.8xlarge</code>,
		                    <code>cache.r6gd.12xlarge</code>,
		                    <code>cache.r6gd.16xlarge</code>
		                    
		                    
		                    
		                    
		                    
		                    
		                   </p>					    
		                
		                </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>

		    				    
					    
					                <p>
                        <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
						
						
						
						

						               <p>	
							                 <code>cache.r6g.large</code>,
							<code>cache.r6g.xlarge</code>,
							<code>cache.r6g.2xlarge</code>,
							<code>cache.r6g.4xlarge</code>,
							<code>cache.r6g.8xlarge</code>,
							<code>cache.r6g.12xlarge</code>,
							<code>cache.r6g.16xlarge</code>
							
							
							
							
							
							
						               </p>	
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
					                <p>
                        <b>R5 node types:</b>
    					               <code>cache.r5.large</code>,
    					   <code>cache.r5.xlarge</code>,
    					   <code>cache.r5.2xlarge</code>,
    					   <code>cache.r5.4xlarge</code>,
    					   <code>cache.r5.12xlarge</code>,
    					   <code>cache.r5.24xlarge</code>
                     </p>
						
    					            <p>
                        <b>R4 node types:</b>
    					               <code>cache.r4.large</code>,
    					   <code>cache.r4.xlarge</code>,
    					   <code>cache.r4.2xlarge</code>,
    					   <code>cache.r4.4xlarge</code>,
    					   <code>cache.r4.8xlarge</code>,
    					   <code>cache.r4.16xlarge</code>
                     </p>
    					   
    					   
    					   

  
    					   
    					   
    					   
    					   
    					   
    					   
    					         </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
                        <p>
                        <b>M2 node types:</b>						
    					               <code>cache.m2.xlarge</code>, 
    						<code>cache.m2.2xlarge</code>,
    						<code>cache.m2.4xlarge</code>
                     </p>
    						
    						           <p>
                        <b>R3 node types:</b>
    					               <code>cache.r3.large</code>, 
    						<code>cache.r3.xlarge</code>,
    						<code>cache.r3.2xlarge</code>,  
    						<code>cache.r3.4xlarge</code>,
    						<code>cache.r3.8xlarge</code>
                     </p>
    						
    						        </li>
               </ul>
            </li>
         </ul>
				
		       <p>
            <b>Additional node type info</b>
         </p>
		       <ul>
            <li>
               <p>All current generation instance types are created in Amazon VPC by default.</p>
            </li>
            <li>
               <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
            </li>
            <li>
               <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
            </li>
            <li>
               <p>Redis configuration variables <code>appendonly</code> and 
				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
            </li>
         </ul>")
  @as("CacheNodeType")
  cacheNodeType: option<string_>,
  @ocaml.doc(
    "<p>The URL of the web page where you can download the latest ElastiCache client library.</p>"
  )
  @as("ClientDownloadLandingPage")
  clientDownloadLandingPage: option<string_>,
  @ocaml.doc("<p>Represents a Memcached cluster endpoint which can be used by an application to connect to any node in the cluster.
            The configuration endpoint will always have <code>.cfg</code> in it.</p>
        <p>Example: <code>mem-3.9dvc4r<u>.cfg</u>.usw2.cache.amazonaws.com:11211</code>
         </p>")
  @as("ConfigurationEndpoint")
  configurationEndpoint: option<endpoint>,
  @ocaml.doc("<p>The user-supplied identifier of the cluster. 
            This identifier is a unique key that identifies a cluster.</p>")
  @as("CacheClusterId")
  cacheClusterId: option<string_>,
}
type replicationGroupList = array<replicationGroup>
type cacheClusterList = array<cacheCluster>
@ocaml.doc("<fullname>Amazon ElastiCache</fullname>
        <p>Amazon ElastiCache is a web service that makes it easier to set up, operate, 
            and scale a distributed cache in the cloud.</p>
        <p>With ElastiCache, customers get all of the benefits of a high-performance, 
            in-memory cache with less of the administrative burden involved in launching and managing a distributed cache. 
            The service makes setup, scaling, 
            and cluster failure handling much simpler than in a self-managed cache deployment.</p>
        <p>In addition, through integration with Amazon CloudWatch, 
            customers get enhanced visibility into the key performance statistics 
            associated with their cache and can receive alarms if a part of their cache runs hot.</p>")
module DeleteCacheSubnetGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteCacheSubnetGroup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the cache subnet group to delete.</p>
        <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>")
    @as("CacheSubnetGroupName")
    cacheSubnetGroupName: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DeleteCacheSubnetGroupCommand"
  let make = (~cacheSubnetGroupName, ()) => new({cacheSubnetGroupName: cacheSubnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteCacheSecurityGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteCacheSecurityGroup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the cache security group to delete.</p>
        <note>
            <p>You cannot delete the default security group.</p>
         </note>")
    @as("CacheSecurityGroupName")
    cacheSecurityGroupName: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DeleteCacheSecurityGroupCommand"
  let make = (~cacheSecurityGroupName, ()) => new({cacheSecurityGroupName: cacheSecurityGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteCacheParameterGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteCacheParameterGroup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the cache parameter group to delete.</p>
        <note>
            <p>The specified cache security group must not be associated with any clusters.</p>
         </note>")
    @as("CacheParameterGroupName")
    cacheParameterGroupName: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DeleteCacheParameterGroupCommand"
  let make = (~cacheParameterGroupName, ()) =>
    new({cacheParameterGroupName: cacheParameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ModifyUser = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates no password is required for the user.</p>") @as("NoPasswordRequired")
    noPasswordRequired: option<booleanOptional>,
    @ocaml.doc("<p>The passwords belonging to the user. You are allowed up to two.</p>")
    @as("Passwords")
    passwords: option<passwordListInput>,
    @ocaml.doc("<p>Adds additional user permissions to the access string.</p>")
    @as("AppendAccessString")
    appendAccessString: option<accessString>,
    @ocaml.doc("<p>Access permissions string used for this user.</p>") @as("AccessString")
    accessString: option<accessString>,
    @ocaml.doc("<p>The ID of the user.</p>") @as("UserId") userId: userId,
  }
  type response = user
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "ModifyUserCommand"
  let make = (
    ~userId,
    ~noPasswordRequired=?,
    ~passwords=?,
    ~appendAccessString=?,
    ~accessString=?,
    (),
  ) => new({noPasswordRequired, passwords, appendAccessString, accessString, userId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAllowedNodeTypeModifications = {
  type t
  @ocaml.doc(
    "<p>The input parameters for the <code>ListAllowedNodeTypeModifications</code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>The name of the replication group want to scale up to a larger node type.
        ElastiCache uses the replication group id to identify the current node type being used by
        this replication group, and from that to create a list of node types you can scale up to.</p>

        <important>
            <p>You must provide a value for either the <code>CacheClusterId</code> or the
            <code>ReplicationGroupId</code>.</p>
         </important>")
    @as("ReplicationGroupId")
    replicationGroupId: option<string_>,
    @ocaml.doc("<p>The name of the cluster you want to scale up to a larger node instanced type. 
            ElastiCache uses the cluster id to identify the current node type of this cluster and from that to create a list of node types you can scale up to.</p>
        
        <important>
            <p>You must provide a value for either the <code>CacheClusterId</code> or the
            <code>ReplicationGroupId</code>.</p>
         </important>")
    @as("CacheClusterId")
    cacheClusterId: option<string_>,
  }
  @ocaml.doc(
    "<p>Represents the allowed node types you can use to modify your cluster or replication group.</p>"
  )
  type response = {
    @ocaml.doc("<p>A string list, each element of which specifies a cache node type which you can use to scale your cluster or replication group.
            
            When scaling down a Redis cluster or replication group using ModifyCacheCluster or ModifyReplicationGroup, use a value from this list for the CacheNodeType parameter. </p>")
    @as("ScaleDownModifications")
    scaleDownModifications: option<nodeTypeList>,
    @ocaml.doc("<p>A string list, each element of which specifies a cache node type which you can use 
            to scale your cluster or replication group.</p>
        <p>When scaling up a Redis cluster or replication group using <code>ModifyCacheCluster</code> or
            <code>ModifyReplicationGroup</code>, 
            use a value from this list for the <code>CacheNodeType</code> parameter.</p>")
    @as("ScaleUpModifications")
    scaleUpModifications: option<nodeTypeList>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "ListAllowedNodeTypeModificationsCommand"
  let make = (~replicationGroupId=?, ~cacheClusterId=?, ()) =>
    new({replicationGroupId, cacheClusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteUser = {
  type t
  type request = {@ocaml.doc("<p>The ID of the user.</p>") @as("UserId") userId: userId}
  type response = user
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "DeleteUserCommand"
  let make = (~userId, ()) => new({userId: userId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ResetCacheParameterGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ResetCacheParameterGroup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An array of parameter names to reset to their default values. 
            If <code>ResetAllParameters</code> is <code>true</code>, 
            do not use <code>ParameterNameValues</code>.
            If <code>ResetAllParameters</code> is <code>false</code>, 
            you must specify the name of at least one parameter to reset.</p>")
    @as("ParameterNameValues")
    parameterNameValues: option<parameterNameValueList>,
    @ocaml.doc("<p>If <code>true</code>, 
            all parameters in the cache parameter group are reset to their default values.
            If <code>false</code>, only the parameters listed by <code>ParameterNameValues</code>
            are reset to their default values.</p>
        <p>Valid values: <code>true</code> | <code>false</code>
         </p>")
    @as("ResetAllParameters")
    resetAllParameters: option<boolean_>,
    @ocaml.doc("<p>The name of the cache parameter group to reset.</p>")
    @as("CacheParameterGroupName")
    cacheParameterGroupName: string_,
  }
  @ocaml.doc("<p>Represents the output of one of the following operations:</p>
        <ul>
            <li>
               <p>
                  <code>ModifyCacheParameterGroup</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ResetCacheParameterGroup</code>
               </p>
            </li>
         </ul>")
  type response = {
    @ocaml.doc("<p>The name of the cache parameter group.</p>") @as("CacheParameterGroupName")
    cacheParameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "ResetCacheParameterGroupCommand"
  let make = (~cacheParameterGroupName, ~parameterNameValues=?, ~resetAllParameters=?, ()) =>
    new({parameterNameValues, resetAllParameters, cacheParameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RemoveTagsFromResource = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>RemoveTagsFromResource</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A list of <code>TagKeys</code> identifying the tags you want removed from the named resource.</p>"
    )
    @as("TagKeys")
    tagKeys: keyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource from which you want the tags removed, 
            for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code> 
            or <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Service Namespaces</a>.</p>")
    @as("ResourceName")
    resourceName: string_,
  }
  @ocaml.doc("<p>Represents the output from the <code>AddTagsToResource</code>, 
            <code>ListTagsForResource</code>, and <code>RemoveTagsFromResource</code> operations.</p>")
  type response = {
    @ocaml.doc("<p>A list of tags as key-value pairs.</p>") @as("TagList")
    tagList_: option<tagList_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "RemoveTagsFromResourceCommand"
  let make = (~tagKeys, ~resourceName, ()) => new({tagKeys, resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ModifyUserGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The list of user IDs to remove from the user group.</p>") @as("UserIdsToRemove")
    userIdsToRemove: option<userIdListInput>,
    @ocaml.doc("<p>The list of user IDs to add to the user group.</p>") @as("UserIdsToAdd")
    userIdsToAdd: option<userIdListInput>,
    @ocaml.doc("<p>The ID of the user group.</p>") @as("UserGroupId") userGroupId: string_,
  }
  type response = userGroup
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "ModifyUserGroupCommand"
  let make = (~userGroupId, ~userIdsToRemove=?, ~userIdsToAdd=?, ()) =>
    new({userIdsToRemove, userIdsToAdd, userGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ModifyCacheParameterGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ModifyCacheParameterGroup</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>An array of parameter names and values for the parameter update. You must supply at least one parameter name and value; subsequent arguments are optional. A maximum of 20 parameters may be modified per request.</p>"
    )
    @as("ParameterNameValues")
    parameterNameValues: parameterNameValueList,
    @ocaml.doc("<p>The name of the cache parameter group to modify.</p>")
    @as("CacheParameterGroupName")
    cacheParameterGroupName: string_,
  }
  @ocaml.doc("<p>Represents the output of one of the following operations:</p>
        <ul>
            <li>
               <p>
                  <code>ModifyCacheParameterGroup</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ResetCacheParameterGroup</code>
               </p>
            </li>
         </ul>")
  type response = {
    @ocaml.doc("<p>The name of the cache parameter group.</p>") @as("CacheParameterGroupName")
    cacheParameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "ModifyCacheParameterGroupCommand"
  let make = (~parameterNameValues, ~cacheParameterGroupName, ()) =>
    new({parameterNameValues, cacheParameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  @ocaml.doc("<p>The input parameters for the <code>ListTagsForResource</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource for which you want the list of tags, 
            for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code> 
            or <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a>.</p>")
    @as("ResourceName")
    resourceName: string_,
  }
  @ocaml.doc("<p>Represents the output from the <code>AddTagsToResource</code>, 
            <code>ListTagsForResource</code>, and <code>RemoveTagsFromResource</code> operations.</p>")
  type response = {
    @ocaml.doc("<p>A list of tags as key-value pairs.</p>") @as("TagList")
    tagList_: option<tagList_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceName, ()) => new({resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeServiceUpdates = {
  type t
  type request = {
    @ocaml.doc("<p>An optional marker returned from a prior request. 
           Use this marker for pagination of results from this operation. If this
           parameter is specified, the response includes only records beyond the marker, up to the
           value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response</p>") @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The status of the service update</p>") @as("ServiceUpdateStatus")
    serviceUpdateStatus: option<serviceUpdateStatusList>,
    @ocaml.doc("<p>The unique ID of the service update</p>") @as("ServiceUpdateName")
    serviceUpdateName: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A list of service updates</p>") @as("ServiceUpdates")
    serviceUpdates: option<serviceUpdateList>,
    @ocaml.doc("<p>An optional marker returned from a prior request. 
           Use this marker for pagination of results from this operation. If this
           parameter is specified, the response includes only records beyond the marker, up to the
           value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeServiceUpdatesCommand"
  let make = (~marker=?, ~maxRecords=?, ~serviceUpdateStatus=?, ~serviceUpdateName=?, ()) =>
    new({marker, maxRecords, serviceUpdateStatus, serviceUpdateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeEvents = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DescribeEvents</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An optional marker returned from a prior request. 
            Use this marker for pagination of results from this operation. 
            If this parameter is specified, the response includes only records beyond the marker, 
            up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
            specified <code>MaxRecords</code> value, a marker is included in the response so that
            the remaining results can be retrieved.</p>
 
        <p>Default: 100</p>
        <p>Constraints: minimum 20; maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The number of minutes worth of events to retrieve.</p>") @as("Duration")
    duration: option<integerOptional>,
    @ocaml.doc("<p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.</p>
        <p>
            <b>Example:</b> 2017-03-30T07:03:49.555Z</p>")
    @as("EndTime")
    endTime: option<tstamp>,
    @ocaml.doc("<p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.</p>
        <p>
            <b>Example:</b> 2017-03-30T07:03:49.555Z</p>")
    @as("StartTime")
    startTime: option<tstamp>,
    @ocaml.doc("<p>The event source to retrieve events for. 
            If no value is specified, all events are returned.</p>")
    @as("SourceType")
    sourceType: option<sourceType>,
    @ocaml.doc("<p>The identifier of the event source for which events are returned. 
            If not specified, all sources are included in the response.</p>")
    @as("SourceIdentifier")
    sourceIdentifier: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of a <code>DescribeEvents</code> operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A list of events. Each element in the list contains detailed information about one event.</p>"
    )
    @as("Events")
    events: option<eventList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "DescribeEventsCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~duration=?,
    ~endTime=?,
    ~startTime=?,
    ~sourceType=?,
    ~sourceIdentifier=?,
    (),
  ) => new({marker, maxRecords, duration, endTime, startTime, sourceType, sourceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCacheParameterGroups = {
  type t
  @ocaml.doc(
    "<p>Represents the input of a <code>DescribeCacheParameterGroups</code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. 
            If this parameter is specified, the response includes only records beyond the marker, up to the
            value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
            specified <code>MaxRecords</code> value, a marker is included in the response so that
            the remaining results can be retrieved.</p>
 
        <p>Default: 100</p>
        <p>Constraints: minimum 20; maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of a specific cache parameter group to return details for.</p>")
    @as("CacheParameterGroupName")
    cacheParameterGroupName: option<string_>,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>DescribeCacheParameterGroups</code> operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>A list of cache parameter groups. Each element in the list contains detailed information 
            about one cache parameter group.</p>")
    @as("CacheParameterGroups")
    cacheParameterGroups: option<cacheParameterGroupList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeCacheParameterGroupsCommand"
  let make = (~marker=?, ~maxRecords=?, ~cacheParameterGroupName=?, ()) =>
    new({marker, maxRecords, cacheParameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCacheEngineVersions = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DescribeCacheEngineVersions</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>If <code>true</code>, specifies that only the default version of the specified engine or engine
            and major version combination is to be returned.</p>")
    @as("DefaultOnly")
    defaultOnly: option<boolean_>,
    @ocaml.doc("<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. 
            If this parameter is specified, the response includes only records beyond the marker, up to the
            value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
            specified <code>MaxRecords</code> value, a marker is included in the response so that
            the remaining results can be retrieved.</p>
 
        <p>Default: 100</p>
        <p>Constraints: minimum 20; maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of a specific cache parameter group family to return details for.</p>
        <p>Valid values are: 
    <code>memcached1.4</code> | 
     <code>memcached1.5</code> | 
      <code>memcached1.6</code> | 
    <code>redis2.6</code> | 
    <code>redis2.8</code> |
    <code>redis3.2</code> |
    <code>redis4.0</code> |
     <code>redis5.0</code> | 
      <code>redis6.x</code> | 
            <code>redis6.2</code>
         </p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>Must be 1 to 255 alphanumeric characters</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>")
    @as("CacheParameterGroupFamily")
    cacheParameterGroupFamily: option<string_>,
    @ocaml.doc("<p>The cache engine version to return.</p>
        <p>Example: <code>1.4.14</code>
         </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The cache engine to return. Valid values: <code>memcached</code> | <code>redis</code>
         </p>")
    @as("Engine")
    engine: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of a <a>DescribeCacheEngineVersions</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>A list of cache engine version details. 
            Each element in the list contains detailed information about one cache engine version.</p>")
    @as("CacheEngineVersions")
    cacheEngineVersions: option<cacheEngineVersionList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeCacheEngineVersionsCommand"
  let make = (
    ~defaultOnly=?,
    ~marker=?,
    ~maxRecords=?,
    ~cacheParameterGroupFamily=?,
    ~engineVersion=?,
    ~engine=?,
    (),
  ) => new({defaultOnly, marker, maxRecords, cacheParameterGroupFamily, engineVersion, engine})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteUserGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the user group.</p>") @as("UserGroupId") userGroupId: string_,
  }
  type response = userGroup
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "DeleteUserGroupCommand"
  let make = (~userGroupId, ()) => new({userGroupId: userGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateUserGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The list of user IDs that belong to the user group.</p>") @as("UserIds")
    userIds: option<userIdListInput>,
    @ocaml.doc("<p>The current supported value is Redis. </p>") @as("Engine") engine: engineType,
    @ocaml.doc("<p>The ID of the user group.</p>") @as("UserGroupId") userGroupId: string_,
  }
  type response = userGroup
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "CreateUserGroupCommand"
  let make = (~engine, ~userGroupId, ~tags=?, ~userIds=?, ()) =>
    new({tags, userIds, engine, userGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateUser = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Indicates a password is not required for this user.</p>")
    @as("NoPasswordRequired")
    noPasswordRequired: option<booleanOptional>,
    @ocaml.doc("<p>Access permissions string used for this user.</p>") @as("AccessString")
    accessString: accessString,
    @ocaml.doc(
      "<p>Passwords used for this user. You can create up to two passwords for each user.</p>"
    )
    @as("Passwords")
    passwords: option<passwordListInput>,
    @ocaml.doc("<p>The current supported value is Redis. </p>") @as("Engine") engine: engineType,
    @ocaml.doc("<p>The username of the user.</p>") @as("UserName") userName: userName,
    @ocaml.doc("<p>The ID of the user.</p>") @as("UserId") userId: userId,
  }
  type response = user
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "CreateUserCommand"
  let make = (
    ~accessString,
    ~engine,
    ~userName,
    ~userId,
    ~tags=?,
    ~noPasswordRequired=?,
    ~passwords=?,
    (),
  ) => new({tags, noPasswordRequired, accessString, passwords, engine, userName, userId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateCacheParameterGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CreateCacheParameterGroup</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A user-specified description for the cache parameter group.</p>")
    @as("Description")
    description: string_,
    @ocaml.doc("<p>The name of the cache parameter group family that the cache parameter group can be used with.</p>
        <p>Valid values are: 
    <code>memcached1.4</code> | 
     <code>memcached1.5</code> | 
      <code>memcached1.6</code> | 
    <code>redis2.6</code> | 
    <code>redis2.8</code> |
    <code>redis3.2</code> |
    <code>redis4.0</code> |
     <code>redis5.0</code> | 
      <code>redis6.x</code> 
         </p>")
    @as("CacheParameterGroupFamily")
    cacheParameterGroupFamily: string_,
    @ocaml.doc("<p>A user-specified name for the cache parameter group.</p>")
    @as("CacheParameterGroupName")
    cacheParameterGroupName: string_,
  }
  type response = {@as("CacheParameterGroup") cacheParameterGroup: option<cacheParameterGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "CreateCacheParameterGroupCommand"
  let make = (~description, ~cacheParameterGroupFamily, ~cacheParameterGroupName, ~tags=?, ()) =>
    new({tags, description, cacheParameterGroupFamily, cacheParameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchStopUpdateAction = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the service update</p>") @as("ServiceUpdateName")
    serviceUpdateName: string_,
    @ocaml.doc("<p>The cache cluster IDs</p>") @as("CacheClusterIds")
    cacheClusterIds: option<cacheClusterIdList>,
    @ocaml.doc("<p>The replication group IDs</p>") @as("ReplicationGroupIds")
    replicationGroupIds: option<replicationGroupIdList>,
  }
  type response = {
    @ocaml.doc("<p>Update actions that haven't been processed successfully</p>")
    @as("UnprocessedUpdateActions")
    unprocessedUpdateActions: option<unprocessedUpdateActionList>,
    @ocaml.doc("<p>Update actions that have been processed successfully</p>")
    @as("ProcessedUpdateActions")
    processedUpdateActions: option<processedUpdateActionList>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "BatchStopUpdateActionCommand"
  let make = (~serviceUpdateName, ~cacheClusterIds=?, ~replicationGroupIds=?, ()) =>
    new({serviceUpdateName, cacheClusterIds, replicationGroupIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchApplyUpdateAction = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the service update</p>") @as("ServiceUpdateName")
    serviceUpdateName: string_,
    @ocaml.doc("<p>The cache cluster IDs</p>") @as("CacheClusterIds")
    cacheClusterIds: option<cacheClusterIdList>,
    @ocaml.doc("<p>The replication group IDs</p>") @as("ReplicationGroupIds")
    replicationGroupIds: option<replicationGroupIdList>,
  }
  type response = {
    @ocaml.doc("<p>Update actions that haven't been processed successfully</p>")
    @as("UnprocessedUpdateActions")
    unprocessedUpdateActions: option<unprocessedUpdateActionList>,
    @ocaml.doc("<p>Update actions that have been processed successfully</p>")
    @as("ProcessedUpdateActions")
    processedUpdateActions: option<processedUpdateActionList>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "BatchApplyUpdateActionCommand"
  let make = (~serviceUpdateName, ~cacheClusterIds=?, ~replicationGroupIds=?, ()) =>
    new({serviceUpdateName, cacheClusterIds, replicationGroupIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddTagsToResource = {
  type t
  @ocaml.doc("<p>Represents the input of an AddTagsToResource operation.</p>")
  type request = {
    @ocaml.doc("<p>A list of tags to be added to this resource. A tag is a key-value pair. 
          A tag key must be accompanied by a tag value, although null is accepted.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to which the tags are to be added, 
            for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code> 
            or <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.
            ElastiCache resources are <i>cluster</i> and <i>snapshot</i>.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Service Namespaces</a>.</p>")
    @as("ResourceName")
    resourceName: string_,
  }
  @ocaml.doc("<p>Represents the output from the <code>AddTagsToResource</code>, 
            <code>ListTagsForResource</code>, and <code>RemoveTagsFromResource</code> operations.</p>")
  type response = {
    @ocaml.doc("<p>A list of tags as key-value pairs.</p>") @as("TagList")
    tagList_: option<tagList_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "AddTagsToResourceCommand"
  let make = (~tags, ~resourceName, ()) => new({tags, resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RevokeCacheSecurityGroupIngress = {
  type t
  @ocaml.doc(
    "<p>Represents the input of a <code>RevokeCacheSecurityGroupIngress</code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>The Amazon account number of the Amazon EC2 security group owner. 
            Note that this is not the same thing as an Amazon access key ID - you must provide 
            a valid Amazon account number for this parameter.</p>")
    @as("EC2SecurityGroupOwnerId")
    ec2SecurityGroupOwnerId: string_,
    @ocaml.doc("<p>The name of the Amazon EC2 security group to revoke access from.</p>")
    @as("EC2SecurityGroupName")
    ec2SecurityGroupName: string_,
    @ocaml.doc("<p>The name of the cache security group to revoke ingress from.</p>")
    @as("CacheSecurityGroupName")
    cacheSecurityGroupName: string_,
  }
  type response = {@as("CacheSecurityGroup") cacheSecurityGroup: option<cacheSecurityGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "RevokeCacheSecurityGroupIngressCommand"
  let make = (~ec2SecurityGroupOwnerId, ~ec2SecurityGroupName, ~cacheSecurityGroupName, ()) =>
    new({ec2SecurityGroupOwnerId, ec2SecurityGroupName, cacheSecurityGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RebalanceSlotsInGlobalReplicationGroup = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>True</code>, redistribution is applied immediately.</p>")
    @as("ApplyImmediately")
    applyImmediately: boolean_,
    @ocaml.doc("<p>The name of the Global datastore</p>") @as("GlobalReplicationGroupId")
    globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "RebalanceSlotsInGlobalReplicationGroupCommand"
  let make = (~applyImmediately, ~globalReplicationGroupId, ()) =>
    new({applyImmediately, globalReplicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PurchaseReservedCacheNodesOffering = {
  type t
  @ocaml.doc(
    "<p>Represents the input of a <code>PurchaseReservedCacheNodesOffering</code> operation.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The number of cache node instances to reserve.</p>
        <p>Default: <code>1</code>
         </p>")
    @as("CacheNodeCount")
    cacheNodeCount: option<integerOptional>,
    @ocaml.doc("<p>A customer-specified identifier to track this reservation.</p>
        <note>
            <p>The Reserved Cache Node ID is an unique customer-specified identifier to track this reservation. 
                If this parameter is not specified, 
                ElastiCache automatically generates an identifier for the reservation.</p>
         </note>
        <p>Example: myreservationID</p>")
    @as("ReservedCacheNodeId")
    reservedCacheNodeId: option<string_>,
    @ocaml.doc("<p>The ID of the reserved cache node offering to purchase.</p>
        <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code>
         </p>")
    @as("ReservedCacheNodesOfferingId")
    reservedCacheNodesOfferingId: string_,
  }
  type response = {@as("ReservedCacheNode") reservedCacheNode: option<reservedCacheNode>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "PurchaseReservedCacheNodesOfferingCommand"
  let make = (
    ~reservedCacheNodesOfferingId,
    ~tags=?,
    ~cacheNodeCount=?,
    ~reservedCacheNodeId=?,
    (),
  ) => new({tags, cacheNodeCount, reservedCacheNodeId, reservedCacheNodesOfferingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ModifyGlobalReplicationGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Determines whether a read replica is automatically promoted to read/write primary if the existing primary encounters a failure. </p>"
    )
    @as("AutomaticFailoverEnabled")
    automaticFailoverEnabled: option<booleanOptional>,
    @ocaml.doc("<p>A description of the Global datastore</p>")
    @as("GlobalReplicationGroupDescription")
    globalReplicationGroupDescription: option<string_>,
    @ocaml.doc(
      "<p>The name of the cache parameter group to use with the Global datastore. It must be compatible with the major engine version used by the Global datastore.</p>"
    )
    @as("CacheParameterGroupName")
    cacheParameterGroupName: option<string_>,
    @ocaml.doc(
      "<p>The upgraded version of the cache engine to be run on the clusters in the Global datastore. </p>"
    )
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>A valid cache node type that you want to scale this Global datastore to.</p>")
    @as("CacheNodeType")
    cacheNodeType: option<string_>,
    @ocaml.doc("<p>This parameter causes the modifications in this request and any pending modifications to be applied, asynchronously and as soon as possible. Modifications to Global 
            Replication Groups cannot be requested to be applied in PreferredMaintenceWindow.
             </p>")
    @as("ApplyImmediately")
    applyImmediately: boolean_,
    @ocaml.doc("<p>The name of the Global datastore</p>") @as("GlobalReplicationGroupId")
    globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "ModifyGlobalReplicationGroupCommand"
  let make = (
    ~applyImmediately,
    ~globalReplicationGroupId,
    ~automaticFailoverEnabled=?,
    ~globalReplicationGroupDescription=?,
    ~cacheParameterGroupName=?,
    ~engineVersion=?,
    ~cacheNodeType=?,
    (),
  ) =>
    new({
      automaticFailoverEnabled,
      globalReplicationGroupDescription,
      cacheParameterGroupName,
      engineVersion,
      cacheNodeType,
      applyImmediately,
      globalReplicationGroupId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module FailoverGlobalReplicationGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the primary replication group</p>") @as("PrimaryReplicationGroupId")
    primaryReplicationGroupId: string_,
    @ocaml.doc("<p>The Amazon region of the primary cluster of the Global datastore</p>")
    @as("PrimaryRegion")
    primaryRegion: string_,
    @ocaml.doc("<p>The name of the Global datastore</p>") @as("GlobalReplicationGroupId")
    globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "FailoverGlobalReplicationGroupCommand"
  let make = (~primaryReplicationGroupId, ~primaryRegion, ~globalReplicationGroupId, ()) =>
    new({primaryReplicationGroupId, primaryRegion, globalReplicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateGlobalReplicationGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon region of secondary cluster you wish to remove from the Global datastore</p>"
    )
    @as("ReplicationGroupRegion")
    replicationGroupRegion: string_,
    @ocaml.doc(
      "<p>The name of the secondary cluster you wish to remove from the Global datastore</p>"
    )
    @as("ReplicationGroupId")
    replicationGroupId: string_,
    @ocaml.doc("<p>The name of the Global datastore</p>") @as("GlobalReplicationGroupId")
    globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DisassociateGlobalReplicationGroupCommand"
  let make = (~replicationGroupRegion, ~replicationGroupId, ~globalReplicationGroupId, ()) =>
    new({replicationGroupRegion, replicationGroupId, globalReplicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeUsers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ></p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved. </p>"
    )
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Filter to determine the list of User IDs to return.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The ID of the user.</p>") @as("UserId") userId: option<userId>,
    @ocaml.doc("<p>The Redis engine. </p>") @as("Engine") engine: option<engineType>,
  }
  type response = {
    @ocaml.doc(
      "<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ></p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of users.</p>") @as("Users") users: option<userList>,
  }
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "DescribeUsersCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~userId=?, ~engine=?, ()) =>
    new({marker, maxRecords, filters, userId, engine})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteGlobalReplicationGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The primary replication group is retained as a standalone replication group. </p>"
    )
    @as("RetainPrimaryReplicationGroup")
    retainPrimaryReplicationGroup: boolean_,
    @ocaml.doc("<p>The name of the Global datastore</p>") @as("GlobalReplicationGroupId")
    globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DeleteGlobalReplicationGroupCommand"
  let make = (~retainPrimaryReplicationGroup, ~globalReplicationGroupId, ()) =>
    new({retainPrimaryReplicationGroup, globalReplicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DecreaseNodeGroupsInGlobalReplicationGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Indicates that the shard reconfiguration process begins immediately. At present, the only permitted value for this parameter is true. </p>"
    )
    @as("ApplyImmediately")
    applyImmediately: boolean_,
    @ocaml.doc("<p>If the value of NodeGroupCount is less than the current number of node groups (shards), then either NodeGroupsToRemove or NodeGroupsToRetain is required. GlobalNodeGroupsToRetain is a list of NodeGroupIds to retain from the cluster. ElastiCache for Redis will attempt to retain all node groups listed by GlobalNodeGroupsToRetain from the cluster. 
            

             </p>")
    @as("GlobalNodeGroupsToRetain")
    globalNodeGroupsToRetain: option<globalNodeGroupIdList>,
    @ocaml.doc("<p>If the value of NodeGroupCount is less than the current number of node groups (shards), then either NodeGroupsToRemove or NodeGroupsToRetain is required. GlobalNodeGroupsToRemove is a list of NodeGroupIds to remove from the cluster.
            
            ElastiCache for Redis will attempt to remove all node groups listed by GlobalNodeGroupsToRemove from the cluster. </p>")
    @as("GlobalNodeGroupsToRemove")
    globalNodeGroupsToRemove: option<globalNodeGroupIdList>,
    @ocaml.doc(
      "<p>The number of node groups (shards) that results from the modification of the shard configuration</p>"
    )
    @as("NodeGroupCount")
    nodeGroupCount: integer_,
    @ocaml.doc("<p>The name of the Global datastore</p>") @as("GlobalReplicationGroupId")
    globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DecreaseNodeGroupsInGlobalReplicationGroupCommand"
  let make = (
    ~applyImmediately,
    ~nodeGroupCount,
    ~globalReplicationGroupId,
    ~globalNodeGroupsToRetain=?,
    ~globalNodeGroupsToRemove=?,
    (),
  ) =>
    new({
      applyImmediately,
      globalNodeGroupsToRetain,
      globalNodeGroupsToRemove,
      nodeGroupCount,
      globalReplicationGroupId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateGlobalReplicationGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the primary cluster that accepts writes and will replicate updates to the secondary cluster.</p>"
    )
    @as("PrimaryReplicationGroupId")
    primaryReplicationGroupId: string_,
    @ocaml.doc("<p>Provides details of the Global datastore</p>")
    @as("GlobalReplicationGroupDescription")
    globalReplicationGroupDescription: option<string_>,
    @ocaml.doc("<p>The suffix name of a Global datastore. Amazon ElastiCache automatically applies a prefix 
            to the Global datastore ID when it is created. Each Amazon Region has its own prefix. For instance, a Global datastore ID created in the US-West-1 region will begin with \"dsdfu\" along with the suffix name you provide. The suffix, combined with the auto-generated prefix, guarantees uniqueness of the Global datastore name across multiple regions.  </p>
        <p>For a full list of Amazon Regions and their respective Global datastore iD prefixes, see <a href=\"http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Redis-Global-Datastores-CLI.html\">Using the Amazon CLI with Global datastores </a>.</p>")
    @as("GlobalReplicationGroupIdSuffix")
    globalReplicationGroupIdSuffix: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "CreateGlobalReplicationGroupCommand"
  let make = (
    ~primaryReplicationGroupId,
    ~globalReplicationGroupIdSuffix,
    ~globalReplicationGroupDescription=?,
    (),
  ) =>
    new({
      primaryReplicationGroupId,
      globalReplicationGroupDescription,
      globalReplicationGroupIdSuffix,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateCacheSecurityGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CreateCacheSecurityGroup</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A description for the cache security group.</p>") @as("Description")
    description: string_,
    @ocaml.doc("<p>A name for the cache security group. This value is stored as a lowercase string.</p>
        <p>Constraints: Must contain no more than 255 alphanumeric characters. Cannot be the word \"Default\".</p>
        <p>Example: <code>mysecuritygroup</code>
         </p>")
    @as("CacheSecurityGroupName")
    cacheSecurityGroupName: string_,
  }
  type response = {@as("CacheSecurityGroup") cacheSecurityGroup: option<cacheSecurityGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "CreateCacheSecurityGroupCommand"
  let make = (~description, ~cacheSecurityGroupName, ~tags=?, ()) =>
    new({tags, description, cacheSecurityGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AuthorizeCacheSecurityGroupIngress = {
  type t
  @ocaml.doc("<p>Represents the input of an AuthorizeCacheSecurityGroupIngress operation.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon account number of the Amazon EC2 security group owner. 
            Note that this is not the same thing as an Amazon access key ID - 
            you must provide a valid Amazon account number for this parameter.</p>")
    @as("EC2SecurityGroupOwnerId")
    ec2SecurityGroupOwnerId: string_,
    @ocaml.doc(
      "<p>The Amazon EC2 security group to be authorized for ingress to the cache security group.</p>"
    )
    @as("EC2SecurityGroupName")
    ec2SecurityGroupName: string_,
    @ocaml.doc("<p>The cache security group that allows network ingress.</p>")
    @as("CacheSecurityGroupName")
    cacheSecurityGroupName: string_,
  }
  type response = {@as("CacheSecurityGroup") cacheSecurityGroup: option<cacheSecurityGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "AuthorizeCacheSecurityGroupIngressCommand"
  let make = (~ec2SecurityGroupOwnerId, ~ec2SecurityGroupName, ~cacheSecurityGroupName, ()) =>
    new({ec2SecurityGroupOwnerId, ec2SecurityGroupName, cacheSecurityGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ModifyCacheSubnetGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ModifyCacheSubnetGroup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The EC2 subnet IDs for the cache subnet group.</p>") @as("SubnetIds")
    subnetIds: option<subnetIdentifierList>,
    @ocaml.doc("<p>A description of the cache subnet group.</p>") @as("CacheSubnetGroupDescription")
    cacheSubnetGroupDescription: option<string_>,
    @ocaml.doc("<p>The name for the cache subnet group. This value is stored as a lowercase string.</p>
        <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>
        <p>Example: <code>mysubnetgroup</code>
         </p>")
    @as("CacheSubnetGroupName")
    cacheSubnetGroupName: string_,
  }
  type response = {@as("CacheSubnetGroup") cacheSubnetGroup: option<cacheSubnetGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "ModifyCacheSubnetGroupCommand"
  let make = (~cacheSubnetGroupName, ~subnetIds=?, ~cacheSubnetGroupDescription=?, ()) =>
    new({subnetIds, cacheSubnetGroupDescription, cacheSubnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeUserGroups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ></p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved. </p>"
    )
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The ID of the user group.</p>") @as("UserGroupId") userGroupId: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ></p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>Returns a list of user groups.</p>") @as("UserGroups")
    userGroups: option<userGroupList>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeUserGroupsCommand"
  let make = (~marker=?, ~maxRecords=?, ~userGroupId=?, ()) =>
    new({marker, maxRecords, userGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeReservedCacheNodesOfferings = {
  type t
  @ocaml.doc(
    "<p>Represents the input of a <code>DescribeReservedCacheNodesOfferings</code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>An optional marker returned from a prior request. 
            Use this marker for pagination of results from this operation. 
            If this parameter is specified, the response includes only records beyond the marker, 
            up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
            specified <code>MaxRecords</code> value, a marker is included in the response so that
            the remaining results can be retrieved.</p>
 
        <p>Default: 100</p>
        <p>Constraints: minimum 20; maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The offering type filter value. 
            Use this parameter to show only the available offerings matching the specified offering type.</p>
        <p>Valid Values: <code>\"Light Utilization\"|\"Medium Utilization\"|\"Heavy Utilization\" |\"All Upfront\"|\"Partial Upfront\"| \"No Upfront\"</code>
         </p>")
    @as("OfferingType")
    offeringType: option<string_>,
    @ocaml.doc("<p>The product description filter value. 
            Use this parameter to show only the available offerings matching the specified product description.</p>")
    @as("ProductDescription")
    productDescription: option<string_>,
    @ocaml.doc("<p>Duration filter value, specified in years or seconds. 
            Use this parameter to show only reservations for a given duration.</p>
        <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
         </p>")
    @as("Duration")
    duration: option<string_>,
    @ocaml.doc("<p>The cache node type filter value. 
            Use this parameter to show only the available offerings matching the specified cache node type.</p>

        <p>The following node types are supported by ElastiCache. 
				Generally speaking, the current generation types provide more memory and computational power
			at lower cost when compared to their equivalent previous generation counterparts.</p>
		       <ul>
            <li>
               <p>General purpose:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>
					    
					    
					    
					
					    
					    
					                <p>
                        <b>M6g node types:</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward)	<code>cache.m6g.large</code>,
							<code>cache.m6g.xlarge</code>,
							<code>cache.m6g.2xlarge</code>,
							<code>cache.m6g.4xlarge</code>,
							<code>cache.m6g.8xlarge</code>,
							<code>cache.m6g.12xlarge</code>,
							<code>cache.m6g.16xlarge</code>
							
							
							
						               </p>	
						
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
    					
    					
    					            <p>
                        <b>M5 node types:</b>
    						              <code>cache.m5.large</code>,
    						<code>cache.m5.xlarge</code>,
    						<code>cache.m5.2xlarge</code>,
    						<code>cache.m5.4xlarge</code>,
    						<code>cache.m5.12xlarge</code>,
    						<code>cache.m5.24xlarge</code>
    						
    						
    						           </p>	
    						
						
						               <p>
                        <b>M4 node types:</b>
    						              <code>cache.m4.large</code>,
    						<code>cache.m4.xlarge</code>,
    						<code>cache.m4.2xlarge</code>,
    						<code>cache.m4.4xlarge</code>,
    						<code>cache.m4.10xlarge</code>
                     </p>
    		
					                <p>
                        <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
					        <code>cache.t4g.micro</code>,
					        <code>cache.t4g.small</code>,
					        <code>cache.t4g.medium</code>
					                </p>	             
					    
					    
					                <p>
                        <b>T3 node types:</b>
					                   <code>cache.t3.micro</code>, 
    						<code>cache.t3.small</code>,
    						<code>cache.t3.medium</code>
                     </p>
    								
    						
    				             <p>
                        <b>T2 node types:</b>
					                   <code>cache.t2.micro</code>, 
    						<code>cache.t2.small</code>,
    						<code>cache.t2.medium</code>
                     </p>
    						
    						
    						
    						
    						        </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
						               <p>
                        <b>T1 node types:</b>
					                   <code>cache.t1.micro</code>
                     </p>
					     
						               <p>
                        <b>M1 node types:</b>
						                  <code>cache.m1.small</code>, 
						   <code>cache.m1.medium</code>, 
						   <code>cache.m1.large</code>,
						   <code>cache.m1.xlarge</code>
                     </p>
						   
						               <p>
                        <b>M3 node types:</b>
    						              <code>cache.m3.medium</code>,
    						<code>cache.m3.large</code>, 
    						<code>cache.m3.xlarge</code>,
    						<code>cache.m3.2xlarge</code>
                     </p>
						   
						            </li>
               </ul>
            </li>
            <li>
               <p>Compute optimized:</p>

				           <ul>
                  <li>
                     <p>Previous generation: (not recommended)</p>
			                  <p>
                        <b>C1 node types:</b>
			                     <code>cache.c1.xlarge</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized with data tiering:</p>
		             <ul>
                  <li>
                     <p>Current generation: </p>
		                
		                   <p>
                        <b>R6gd node types</b> (available only for Redis engine version 6.2 onward).</p>
		                
		                
		                
		                
		                   <p>	
		                    
		                      <code>cache.r6gd.xlarge</code>,
		                    <code>cache.r6gd.2xlarge</code>,
		                    <code>cache.r6gd.4xlarge</code>,
		                    <code>cache.r6gd.8xlarge</code>,
		                    <code>cache.r6gd.12xlarge</code>,
		                    <code>cache.r6gd.16xlarge</code>
		                    
		                    
		                    
		                    
		                    
		                    
		                   </p>					    
		                
		                </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>


					 			    					    
					    
					                <p>
                        <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
						
						
						
						

						               <p>	
							                 <code>cache.r6g.large</code>,
							<code>cache.r6g.xlarge</code>,
							<code>cache.r6g.2xlarge</code>,
							<code>cache.r6g.4xlarge</code>,
							<code>cache.r6g.8xlarge</code>,
							<code>cache.r6g.12xlarge</code>,
							<code>cache.r6g.16xlarge</code>
							
							
							
							
							
							
						               </p>	
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
					                <p>
                        <b>R5 node types:</b>
    					               <code>cache.r5.large</code>,
    					   <code>cache.r5.xlarge</code>,
    					   <code>cache.r5.2xlarge</code>,
    					   <code>cache.r5.4xlarge</code>,
    					   <code>cache.r5.12xlarge</code>,
    					   <code>cache.r5.24xlarge</code>
                     </p>
						
    					            <p>
                        <b>R4 node types:</b>
    					               <code>cache.r4.large</code>,
    					   <code>cache.r4.xlarge</code>,
    					   <code>cache.r4.2xlarge</code>,
    					   <code>cache.r4.4xlarge</code>,
    					   <code>cache.r4.8xlarge</code>,
    					   <code>cache.r4.16xlarge</code>
                     </p>
    					   
    					   
    					   

  
    					   
    					   
    					   
    					   
    					   
    					   
    					         </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
                        <p>
                        <b>M2 node types:</b>						
    					               <code>cache.m2.xlarge</code>, 
    						<code>cache.m2.2xlarge</code>,
    						<code>cache.m2.4xlarge</code>
                     </p>
    						
    						           <p>
                        <b>R3 node types:</b>
    					               <code>cache.r3.large</code>, 
    						<code>cache.r3.xlarge</code>,
    						<code>cache.r3.2xlarge</code>,  
    						<code>cache.r3.4xlarge</code>,
    						<code>cache.r3.8xlarge</code>
                     </p>
    						
    						        </li>
               </ul>
            </li>
         </ul>
				
		       <p>
            <b>Additional node type info</b>
         </p>
		       <ul>
            <li>
               <p>All current generation instance types are created in Amazon VPC by default.</p>
            </li>
            <li>
               <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
            </li>
            <li>
               <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
            </li>
            <li>
               <p>Redis configuration variables <code>appendonly</code> and 
				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
            </li>
         </ul>")
    @as("CacheNodeType")
    cacheNodeType: option<string_>,
    @ocaml.doc("<p>The offering identifier filter value. 
            Use this parameter to show only the available offering that matches the specified reservation identifier.</p>
        <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code>
         </p>")
    @as("ReservedCacheNodesOfferingId")
    reservedCacheNodesOfferingId: option<string_>,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>DescribeReservedCacheNodesOfferings</code> operation.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>A list of reserved cache node offerings. Each element in the list contains detailed information about one offering.</p>"
    )
    @as("ReservedCacheNodesOfferings")
    reservedCacheNodesOfferings: option<reservedCacheNodesOfferingList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeReservedCacheNodesOfferingsCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~offeringType=?,
    ~productDescription=?,
    ~duration=?,
    ~cacheNodeType=?,
    ~reservedCacheNodesOfferingId=?,
    (),
  ) =>
    new({
      marker,
      maxRecords,
      offeringType,
      productDescription,
      duration,
      cacheNodeType,
      reservedCacheNodesOfferingId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeReservedCacheNodes = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DescribeReservedCacheNodes</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An optional marker returned from a prior request. 
            Use this marker for pagination of results from this operation. 
            If this parameter is specified, the response includes only records beyond the marker, 
            up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
            specified <code>MaxRecords</code> value, a marker is included in the response so that
            the remaining results can be retrieved.</p>

        <p>Default: 100</p>
        <p>Constraints: minimum 20; maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The offering type filter value. 
            Use this parameter to show only the available offerings matching the specified offering type.</p>
        <p>Valid values: <code>\"Light Utilization\"|\"Medium Utilization\"|\"Heavy Utilization\"|\"All Upfront\"|\"Partial Upfront\"| \"No Upfront\"</code>
         </p>")
    @as("OfferingType")
    offeringType: option<string_>,
    @ocaml.doc(
      "<p>The product description filter value. Use this parameter to show only those reservations matching the specified product description.</p>"
    )
    @as("ProductDescription")
    productDescription: option<string_>,
    @ocaml.doc("<p>The duration filter value, specified in years or seconds. 
            Use this parameter to show only reservations for this duration.</p>
        <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
         </p>")
    @as("Duration")
    duration: option<string_>,
    @ocaml.doc("<p>The cache node type filter value. 
            Use this parameter to show only those reservations matching the specified cache node type.</p>
        
        <p>The following node types are supported by ElastiCache. 
				Generally speaking, the current generation types provide more memory and computational power
			at lower cost when compared to their equivalent previous generation counterparts.</p>
		       <ul>
            <li>
               <p>General purpose:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>
					    
					    
					    
					 
					    
					    
					                <p>
                        <b>M6g node types:</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
					        <code>cache.m6g.large</code>,
							<code>cache.m6g.xlarge</code>,
							<code>cache.m6g.2xlarge</code>,
							<code>cache.m6g.4xlarge</code>,
							<code>cache.m6g.8xlarge</code>,
							<code>cache.m6g.12xlarge</code>,
							<code>cache.m6g.16xlarge</code>
							
							
							
						               </p>	
						
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
    					
    					
    					            <p>
                        <b>M5 node types:</b>
    						              <code>cache.m5.large</code>,
    						<code>cache.m5.xlarge</code>,
    						<code>cache.m5.2xlarge</code>,
    						<code>cache.m5.4xlarge</code>,
    						<code>cache.m5.12xlarge</code>,
    						<code>cache.m5.24xlarge</code>
    						
    						
    						           </p>	
    						
						
						               <p>
                        <b>M4 node types:</b>
    						              <code>cache.m4.large</code>,
    						<code>cache.m4.xlarge</code>,
    						<code>cache.m4.2xlarge</code>,
    						<code>cache.m4.4xlarge</code>,
    						<code>cache.m4.10xlarge</code>
                     </p>
    		
					                <p>
                        <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
					        <code>cache.t4g.micro</code>,
					        <code>cache.t4g.small</code>,
					        <code>cache.t4g.medium</code>
					                </p>		    
					    
					    
					                <p>
                        <b>T3 node types:</b>
					                   <code>cache.t3.micro</code>, 
    						<code>cache.t3.small</code>,
    						<code>cache.t3.medium</code>
                     </p>
    								
    						
    				             <p>
                        <b>T2 node types:</b>
					                   <code>cache.t2.micro</code>, 
    						<code>cache.t2.small</code>,
    						<code>cache.t2.medium</code>
                     </p>
    						
    						
    						
    						
    						        </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
						               <p>
                        <b>T1 node types:</b>
					                   <code>cache.t1.micro</code>
                     </p>
					     
						               <p>
                        <b>M1 node types:</b>
						                  <code>cache.m1.small</code>, 
						   <code>cache.m1.medium</code>, 
						   <code>cache.m1.large</code>,
						   <code>cache.m1.xlarge</code>
                     </p>
						   
						               <p>
                        <b>M3 node types:</b>
    						              <code>cache.m3.medium</code>,
    						<code>cache.m3.large</code>, 
    						<code>cache.m3.xlarge</code>,
    						<code>cache.m3.2xlarge</code>
                     </p>
						   
						            </li>
               </ul>
            </li>
            <li>
               <p>Compute optimized:</p>

				           <ul>
                  <li>
                     <p>Previous generation: (not recommended)</p>
			                  <p>
                        <b>C1 node types:</b>
			                     <code>cache.c1.xlarge</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized with data tiering:</p>
		             <ul>
                  <li>
                     <p>Current generation: </p>
		                
		                   <p>
                        <b>R6gd node types</b> (available only for Redis engine version 6.2 onward).</p>
		                
		                
		                
		                
		                   <p>	
		                    
		                      <code>cache.r6gd.xlarge</code>,
		                    <code>cache.r6gd.2xlarge</code>,
		                    <code>cache.r6gd.4xlarge</code>,
		                    <code>cache.r6gd.8xlarge</code>,
		                    <code>cache.r6gd.12xlarge</code>,
		                    <code>cache.r6gd.16xlarge</code>
		                    
		                    
		                    
		                    
		                    
		                    
		                   </p>					    
		                
		                </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>
	
								    				    
					    
					                <p>
                        <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
						
						
						
						
						               <p>	
							                 <code>cache.r6g.large</code>,
							<code>cache.r6g.xlarge</code>,
							<code>cache.r6g.2xlarge</code>,
							<code>cache.r6g.4xlarge</code>,
							<code>cache.r6g.8xlarge</code>,
							<code>cache.r6g.12xlarge</code>,
							<code>cache.r6g.16xlarge</code>
							
							
							
							
							
							
						               </p>	
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
					                <p>
                        <b>R5 node types:</b>
    					               <code>cache.r5.large</code>,
    					   <code>cache.r5.xlarge</code>,
    					   <code>cache.r5.2xlarge</code>,
    					   <code>cache.r5.4xlarge</code>,
    					   <code>cache.r5.12xlarge</code>,
    					   <code>cache.r5.24xlarge</code>
                     </p>
						
    					            <p>
                        <b>R4 node types:</b>
    					               <code>cache.r4.large</code>,
    					   <code>cache.r4.xlarge</code>,
    					   <code>cache.r4.2xlarge</code>,
    					   <code>cache.r4.4xlarge</code>,
    					   <code>cache.r4.8xlarge</code>,
    					   <code>cache.r4.16xlarge</code>
                     </p>
    					   
    					   
    					   

  
    					   
    					   
    					   
    					   
    					   
    					   
    					         </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
                        <p>
                        <b>M2 node types:</b>						
    					               <code>cache.m2.xlarge</code>, 
    						<code>cache.m2.2xlarge</code>,
    						<code>cache.m2.4xlarge</code>
                     </p>
    						
    						           <p>
                        <b>R3 node types:</b>
    					               <code>cache.r3.large</code>, 
    						<code>cache.r3.xlarge</code>,
    						<code>cache.r3.2xlarge</code>,  
    						<code>cache.r3.4xlarge</code>,
    						<code>cache.r3.8xlarge</code>
                     </p>
    						
    						        </li>
               </ul>
            </li>
         </ul>
				
		       <p>
            <b>Additional node type info</b>
         </p>
		       <ul>
            <li>
               <p>All current generation instance types are created in Amazon VPC by default.</p>
            </li>
            <li>
               <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
            </li>
            <li>
               <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
            </li>
            <li>
               <p>Redis configuration variables <code>appendonly</code> and 
				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
            </li>
         </ul>")
    @as("CacheNodeType")
    cacheNodeType: option<string_>,
    @ocaml.doc("<p>The offering identifier filter value. 
            Use this parameter to show only purchased reservations matching the specified offering identifier.</p>")
    @as("ReservedCacheNodesOfferingId")
    reservedCacheNodesOfferingId: option<string_>,
    @ocaml.doc("<p>The reserved cache node identifier filter value. 
            Use this parameter to show only the reservation that matches the specified reservation ID.</p>")
    @as("ReservedCacheNodeId")
    reservedCacheNodeId: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of a <code>DescribeReservedCacheNodes</code> operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A list of reserved cache nodes. Each element in the list contains detailed information about one node.</p>"
    )
    @as("ReservedCacheNodes")
    reservedCacheNodes: option<reservedCacheNodeList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeReservedCacheNodesCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~offeringType=?,
    ~productDescription=?,
    ~duration=?,
    ~cacheNodeType=?,
    ~reservedCacheNodesOfferingId=?,
    ~reservedCacheNodeId=?,
    (),
  ) =>
    new({
      marker,
      maxRecords,
      offeringType,
      productDescription,
      duration,
      cacheNodeType,
      reservedCacheNodesOfferingId,
      reservedCacheNodeId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeGlobalReplicationGroups = {
  type t
  type request = {
    @ocaml.doc("<p>Returns the list of members that comprise the Global datastore.</p>")
    @as("ShowMemberInfo")
    showMemberInfo: option<booleanOptional>,
    @ocaml.doc(
      "<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved. </p>"
    )
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of the Global datastore</p>") @as("GlobalReplicationGroupId")
    globalReplicationGroupId: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>Indicates the slot configuration and global identifier for each slice group.</p>"
    )
    @as("GlobalReplicationGroups")
    globalReplicationGroups: option<globalReplicationGroupList>,
    @ocaml.doc(
      "<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ></p>"
    )
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeGlobalReplicationGroupsCommand"
  let make = (~showMemberInfo=?, ~marker=?, ~maxRecords=?, ~globalReplicationGroupId=?, ()) =>
    new({showMemberInfo, marker, maxRecords, globalReplicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCacheSecurityGroups = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DescribeCacheSecurityGroups</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this
            parameter is specified, the response includes only records beyond the marker, up to the
            value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
            specified <code>MaxRecords</code> value, a marker is included in the response so that
            the remaining results can be retrieved.</p>

        <p>Default: 100</p>
        <p>Constraints: minimum 20; maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of the cache security group to return details for.</p>")
    @as("CacheSecurityGroupName")
    cacheSecurityGroupName: option<string_>,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>DescribeCacheSecurityGroups</code> operation.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>A list of cache security groups. Each element in the list contains detailed information about one group.</p>"
    )
    @as("CacheSecurityGroups")
    cacheSecurityGroups: option<cacheSecurityGroups>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeCacheSecurityGroupsCommand"
  let make = (~marker=?, ~maxRecords=?, ~cacheSecurityGroupName=?, ()) =>
    new({marker, maxRecords, cacheSecurityGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCacheParameters = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DescribeCacheParameters</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An optional marker returned from a prior request. 
            Use this marker for pagination of results from this operation. 
            If this parameter is specified, the response includes only records beyond the marker, up to the
            value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
            specified <code>MaxRecords</code> value, a marker is included in the response so that
            the remaining results can be retrieved.</p>

        <p>Default: 100</p>
        <p>Constraints: minimum 20; maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The parameter types to return.</p>
        <p>Valid values: <code>user</code> | <code>system</code> | <code>engine-default</code>
         </p>")
    @as("Source")
    source: option<string_>,
    @ocaml.doc("<p>The name of a specific cache parameter group to return details for.</p>")
    @as("CacheParameterGroupName")
    cacheParameterGroupName: string_,
  }
  @ocaml.doc("<p>Represents the output of a <code>DescribeCacheParameters</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>A list of parameters specific to a particular cache node type. 
            Each element in the list contains detailed information about one parameter.</p>")
    @as("CacheNodeTypeSpecificParameters")
    cacheNodeTypeSpecificParameters: option<cacheNodeTypeSpecificParametersList>,
    @ocaml.doc("<p>A list of <a>Parameter</a> instances.</p>") @as("Parameters")
    parameters: option<parametersList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeCacheParametersCommand"
  let make = (~cacheParameterGroupName, ~marker=?, ~maxRecords=?, ~source=?, ()) =>
    new({marker, maxRecords, source, cacheParameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateCacheSubnetGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CreateCacheSubnetGroup</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A list of VPC subnet IDs for the cache subnet group.</p>") @as("SubnetIds")
    subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>A description for the cache subnet group.</p>")
    @as("CacheSubnetGroupDescription")
    cacheSubnetGroupDescription: string_,
    @ocaml.doc("<p>A name for the cache subnet group. This value is stored as a lowercase string.</p>
        <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>
        <p>Example: <code>mysubnetgroup</code>
         </p>")
    @as("CacheSubnetGroupName")
    cacheSubnetGroupName: string_,
  }
  type response = {@as("CacheSubnetGroup") cacheSubnetGroup: option<cacheSubnetGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "CreateCacheSubnetGroupCommand"
  let make = (~subnetIds, ~cacheSubnetGroupDescription, ~cacheSubnetGroupName, ~tags=?, ()) =>
    new({tags, subnetIds, cacheSubnetGroupDescription, cacheSubnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module IncreaseNodeGroupsInGlobalReplicationGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Indicates that the process begins immediately. At present, the only permitted value for this parameter is true.</p>"
    )
    @as("ApplyImmediately")
    applyImmediately: boolean_,
    @ocaml.doc(
      "<p>Describes the replication group IDs, the Amazon regions where they are stored and the shard configuration for each that comprise the Global datastore</p>"
    )
    @as("RegionalConfigurations")
    regionalConfigurations: option<regionalConfigurationList>,
    @ocaml.doc("<p>The number of node groups you wish to add</p>") @as("NodeGroupCount")
    nodeGroupCount: integer_,
    @ocaml.doc("<p>The name of the Global datastore</p>") @as("GlobalReplicationGroupId")
    globalReplicationGroupId: string_,
  }
  type response = {
    @as("GlobalReplicationGroup") globalReplicationGroup: option<globalReplicationGroup>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "IncreaseNodeGroupsInGlobalReplicationGroupCommand"
  let make = (
    ~applyImmediately,
    ~nodeGroupCount,
    ~globalReplicationGroupId,
    ~regionalConfigurations=?,
    (),
  ) => new({applyImmediately, regionalConfigurations, nodeGroupCount, globalReplicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeEngineDefaultParameters = {
  type t
  @ocaml.doc(
    "<p>Represents the input of a <code>DescribeEngineDefaultParameters</code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this
            parameter is specified, the response includes only records beyond the marker, up to the
            value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
            specified <code>MaxRecords</code> value, a marker is included in the response so that
            the remaining results can be retrieved.</p>

        <p>Default: 100</p>
        <p>Constraints: minimum 20; maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of the cache parameter group family.</p>
        <p>Valid values are: 
    <code>memcached1.4</code> | 
     <code>memcached1.5</code> | 
      <code>memcached1.6</code> | 
    <code>redis2.6</code> | 
    <code>redis2.8</code> |
    <code>redis3.2</code> |
    <code>redis4.0</code> |
     <code>redis5.0</code> | 
      <code>redis6.x</code> | 
            <code>redis6.2</code>
         </p>")
    @as("CacheParameterGroupFamily")
    cacheParameterGroupFamily: string_,
  }
  type response = {@as("EngineDefaults") engineDefaults: option<engineDefaults>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeEngineDefaultParametersCommand"
  let make = (~cacheParameterGroupFamily, ~marker=?, ~maxRecords=?, ()) =>
    new({marker, maxRecords, cacheParameterGroupFamily})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCacheSubnetGroups = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DescribeCacheSubnetGroups</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An optional marker returned from a prior request. 
            Use this marker for pagination of results from this operation. 
            If this parameter is specified, the response includes only records beyond the marker, up to the
            value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
            specified <code>MaxRecords</code> value, a marker is included in the response so that
            the remaining results can be retrieved.</p>

        <p>Default: 100</p>
        <p>Constraints: minimum 20; maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of the cache subnet group to return details for.</p>")
    @as("CacheSubnetGroupName")
    cacheSubnetGroupName: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of a <code>DescribeCacheSubnetGroups</code> operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A list of cache subnet groups. Each element in the list contains detailed information about one group.</p>"
    )
    @as("CacheSubnetGroups")
    cacheSubnetGroups: option<cacheSubnetGroups>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeCacheSubnetGroupsCommand"
  let make = (~marker=?, ~maxRecords=?, ~cacheSubnetGroupName=?, ()) =>
    new({marker, maxRecords, cacheSubnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteSnapshot = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteSnapshot</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the snapshot to be deleted.</p>") @as("SnapshotName")
    snapshotName: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "DeleteSnapshotCommand"
  let make = (~snapshotName, ()) => new({snapshotName: snapshotName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSnapshot = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CreateSnapshot</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ID of the KMS key used to encrypt the snapshot.</p>") @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>A name for the snapshot being created.</p>") @as("SnapshotName")
    snapshotName: string_,
    @ocaml.doc(
      "<p>The identifier of an existing cluster. The snapshot is created from this cluster.</p>"
    )
    @as("CacheClusterId")
    cacheClusterId: option<string_>,
    @ocaml.doc(
      "<p>The identifier of an existing replication group. The snapshot is created from this replication group.</p>"
    )
    @as("ReplicationGroupId")
    replicationGroupId: option<string_>,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "CreateSnapshotCommand"
  let make = (~snapshotName, ~tags=?, ~kmsKeyId=?, ~cacheClusterId=?, ~replicationGroupId=?, ()) =>
    new({tags, kmsKeyId, snapshotName, cacheClusterId, replicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CopySnapshot = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CopySnapshotMessage</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ID of the KMS key used to encrypt the target snapshot.</p>") @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The Amazon S3 bucket to which the snapshot is exported.
            This parameter is used only when exporting a snapshot for external access.</p>
        <p>When using this parameter to export a snapshot, 
            be sure Amazon ElastiCache has the needed permissions to this S3 bucket. 
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access\">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the <i>Amazon ElastiCache User Guide</i>.</p>
        
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html\">Exporting a Snapshot</a> in the <i>Amazon ElastiCache User Guide</i>.</p>")
    @as("TargetBucket")
    targetBucket: option<string_>,
    @ocaml.doc("<p>A name for the snapshot copy.
            ElastiCache does not permit overwriting a snapshot, therefore
            this name must be unique within its context - ElastiCache or an Amazon S3 bucket if exporting.</p>")
    @as("TargetSnapshotName")
    targetSnapshotName: string_,
    @ocaml.doc("<p>The name of an existing snapshot from which to make a copy.</p>")
    @as("SourceSnapshotName")
    sourceSnapshotName: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "CopySnapshotCommand"
  let make = (
    ~targetSnapshotName,
    ~sourceSnapshotName,
    ~tags=?,
    ~kmsKeyId=?,
    ~targetBucket=?,
    (),
  ) => new({tags, kmsKeyId, targetBucket, targetSnapshotName, sourceSnapshotName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TestFailover = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the node group (called shard in the console) in this replication group on
            which automatic failover is to be tested.
            You may test automatic failover on up to 5 node groups in any rolling 24-hour period.</p>")
    @as("NodeGroupId")
    nodeGroupId: allowedNodeGroupId,
    @ocaml.doc("<p>The name of the replication group (console: cluster) whose automatic failover is being
            tested by this operation.</p>")
    @as("ReplicationGroupId")
    replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "TestFailoverCommand"
  let make = (~nodeGroupId, ~replicationGroupId, ()) => new({nodeGroupId, replicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartMigration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>List of endpoints from which data should be migrated. For Redis (cluster mode disabled), list should have only one element.</p>"
    )
    @as("CustomerNodeEndpointList")
    customerNodeEndpointList: customerNodeEndpointList,
    @ocaml.doc("<p>The ID of the replication group to which data should be migrated.</p>")
    @as("ReplicationGroupId")
    replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new external new: request => t = "StartMigrationCommand"
  let make = (~customerNodeEndpointList, ~replicationGroupId, ()) =>
    new({customerNodeEndpointList, replicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RebootCacheCluster = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>RebootCacheCluster</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A list of cache node IDs to reboot. A node ID is a numeric identifier (0001, 0002, etc.). To reboot an entire cluster, specify all of the cache node IDs.</p>"
    )
    @as("CacheNodeIdsToReboot")
    cacheNodeIdsToReboot: cacheNodeIdsList,
    @ocaml.doc("<p>The cluster identifier. This parameter is stored as a lowercase string.</p>")
    @as("CacheClusterId")
    cacheClusterId: string_,
  }
  type response = {@as("CacheCluster") cacheCluster: option<cacheCluster>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "RebootCacheClusterCommand"
  let make = (~cacheNodeIdsToReboot, ~cacheClusterId, ()) =>
    new({cacheNodeIdsToReboot, cacheClusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ModifyReplicationGroupShardConfiguration = {
  type t
  @ocaml.doc(
    "<p>Represents the input for a <code>ModifyReplicationGroupShardConfiguration</code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>If the value of <code>NodeGroupCount</code> is less than the 
            current number of node groups (shards), then either <code>NodeGroupsToRemove</code> or
            <code>NodeGroupsToRetain</code> is required.
            <code>NodeGroupsToRetain</code> is a list of <code>NodeGroupId</code>s to retain 
            in the cluster.</p>
        <p>ElastiCache for Redis will attempt to remove all node groups except those listed by <code>NodeGroupsToRetain</code>
            from the cluster.</p>")
    @as("NodeGroupsToRetain")
    nodeGroupsToRetain: option<nodeGroupsToRetainList>,
    @ocaml.doc("<p>If the value of <code>NodeGroupCount</code> is less than the 
            current number of node groups (shards), then either <code>NodeGroupsToRemove</code> or
            <code>NodeGroupsToRetain</code> is required.
            <code>NodeGroupsToRemove</code> is a list of <code>NodeGroupId</code>s to remove 
            from the cluster.</p>
        <p>ElastiCache for Redis will attempt to remove all node groups listed by <code>NodeGroupsToRemove</code>
            from the cluster.</p>")
    @as("NodeGroupsToRemove")
    nodeGroupsToRemove: option<nodeGroupsToRemoveList>,
    @ocaml.doc("<p>Specifies the preferred availability zones for each node group in the cluster.
            If the value of <code>NodeGroupCount</code> is greater than the current number
            of node groups (shards), you can use this parameter to specify the preferred 
            availability zones of the cluster's shards. 
            If you omit this parameter ElastiCache selects availability zones for you.</p>
        <p>You can specify this parameter only if the value of <code>NodeGroupCount</code>
            is greater than the current number of node groups (shards).</p>")
    @as("ReshardingConfiguration")
    reshardingConfiguration: option<reshardingConfigurationList>,
    @ocaml.doc("<p>Indicates that the shard reconfiguration process begins immediately. 
            At present, the only permitted value for this parameter is <code>true</code>.</p>
        <p>Value: true</p>")
    @as("ApplyImmediately")
    applyImmediately: boolean_,
    @ocaml.doc("<p>The number of node groups (shards) that results from the modification of the
            shard configuration.</p>")
    @as("NodeGroupCount")
    nodeGroupCount: integer_,
    @ocaml.doc("<p>The name of the Redis (cluster mode enabled) cluster (replication group)
            on which the shards are to be configured.</p>")
    @as("ReplicationGroupId")
    replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "ModifyReplicationGroupShardConfigurationCommand"
  let make = (
    ~applyImmediately,
    ~nodeGroupCount,
    ~replicationGroupId,
    ~nodeGroupsToRetain=?,
    ~nodeGroupsToRemove=?,
    ~reshardingConfiguration=?,
    (),
  ) =>
    new({
      nodeGroupsToRetain,
      nodeGroupsToRemove,
      reshardingConfiguration,
      applyImmediately,
      nodeGroupCount,
      replicationGroupId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ModifyReplicationGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ModifyReplicationGroups</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the destination, format and type of the logs.</p>")
    @as("LogDeliveryConfigurations")
    logDeliveryConfigurations: option<logDeliveryConfigurationRequestList>,
    @ocaml.doc("<p>Removes the user group associated with this replication group.</p>")
    @as("RemoveUserGroups")
    removeUserGroups: option<booleanOptional>,
    @ocaml.doc(
      "<p>The ID of the user group to disassociate from the replication group, meaning the users in the group no longer can access the replication group.</p>"
    )
    @as("UserGroupIdsToRemove")
    userGroupIdsToRemove: option<userGroupIdList>,
    @ocaml.doc("<p>The ID of the user group you are associating with the replication group.</p>")
    @as("UserGroupIdsToAdd")
    userGroupIdsToAdd: option<userGroupIdList>,
    @ocaml.doc("<p>Specifies the strategy to use to update the AUTH token. This parameter must be specified with the <code>auth-token</code> parameter.
                Possible values:</p>
            <ul>
            <li>
               <p>Rotate</p>
            </li>
            <li>
               <p>Set</p>
            </li>
         </ul>
            <p> 
                For more information, see <a href=\"http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/auth.html\">Authenticating Users with Redis AUTH</a>
         </p>")
    @as("AuthTokenUpdateStrategy")
    authTokenUpdateStrategy: option<authTokenUpdateStrategyType>,
    @ocaml.doc("<p>Reserved parameter. The password used to access a password protected server. This parameter must be specified with the <code>auth-token-update-strategy </code>
            parameter.
            Password constraints:</p>
        <ul>
            <li>
               <p>Must be only printable ASCII characters</p>
            </li>
            <li>
               <p>Must be at least 16 characters and no more than 128 characters in length</p>
            </li>
            <li>
               <p>Cannot contain any of the following characters: '/', '\"', or '@', '%'</p>
            </li>
         </ul>
        <p>     
            
            For more information, see AUTH password at <a href=\"http://redis.io/commands/AUTH\">AUTH</a>.</p>")
    @as("AuthToken")
    authToken: option<string_>,
    @ocaml.doc("<p>A valid cache node type that you want to scale this replication group to.</p>")
    @as("CacheNodeType")
    cacheNodeType: option<string_>,
    @ocaml.doc("<p>The daily time range (in UTC) during which ElastiCache  begins taking a daily snapshot of
            the node group (shard) specified by <code>SnapshottingClusterId</code>.</p>
        <p>Example: <code>05:00-09:00</code>
         </p>
        <p>If you do not specify this parameter, ElastiCache  automatically chooses an appropriate time range.</p>")
    @as("SnapshotWindow")
    snapshotWindow: option<string_>,
    @ocaml.doc("<p>The number of days for which ElastiCache retains automatic node group (shard) snapshots before
            deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a
            snapshot that was taken today is retained for 5 days before being deleted.</p>
        <p>
            <b>Important</b> If the value of SnapshotRetentionLimit is set to zero (0), 
            backups are turned off.</p>")
    @as("SnapshotRetentionLimit")
    snapshotRetentionLimit: option<integerOptional>,
    @ocaml.doc("<p> If you are running Redis engine version 6.0 or later, set this parameter to yes if you want to opt-in to the next auto minor version upgrade campaign. This parameter is disabled for previous versions. 
        </p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The upgraded version of the cache engine to be run on the clusters in the replication group.</p>
        
        <p>
            <b>Important:</b> You can upgrade to a newer engine version (see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement\">Selecting a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine version.
            If you want to use an earlier engine version, 
            you must delete the existing replication group and create it anew with the earlier engine version. </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>If <code>true</code>, this parameter causes the modifications in this request and any
            pending modifications to be applied, asynchronously and as soon as possible, regardless
            of the <code>PreferredMaintenanceWindow</code> setting for the replication group.</p>
        <p>If <code>false</code>, changes to the nodes in the replication group are applied on
            the next maintenance reboot, or the next failure reboot, whichever occurs first.</p>
        <p>Valid values: <code>true</code> | <code>false</code>
         </p>
        <p>Default: <code>false</code>
         </p>")
    @as("ApplyImmediately")
    applyImmediately: option<boolean_>,
    @ocaml.doc("<p>The status of the Amazon SNS notification topic for the replication group. 
            Notifications are sent only if the status is <code>active</code>.</p>
        <p>Valid values: <code>active</code> | <code>inactive</code>
         </p>")
    @as("NotificationTopicStatus")
    notificationTopicStatus: option<string_>,
    @ocaml.doc("<p>The name of the cache parameter group to apply to all of the clusters in this replication group. 
            This change is asynchronously applied as soon as possible for parameters when the 
            <code>ApplyImmediately</code> parameter is specified as <code>true</code> for this request.</p>")
    @as("CacheParameterGroupName")
    cacheParameterGroupName: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are sent.</p>
        <note>
            <p>The Amazon SNS topic owner must be same as the replication group owner. </p>
         </note>")
    @as("NotificationTopicArn")
    notificationTopicArn: option<string_>,
    @ocaml.doc("<p>Specifies the weekly time range during which maintenance
   on the cluster is performed. It is specified as a range in
   the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
   maintenance window is a 60 minute period.</p>
         <p>Valid values for <code>ddd</code> are:</p>
         <ul>
            <li>
               <p>
                  <code>sun</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mon</code>
               </p>
            </li>
            <li>
               <p>
                  <code>tue</code>
               </p>
            </li>
            <li>
               <p>
                  <code>wed</code>
               </p>
            </li>
            <li>
               <p>
                  <code>thu</code>
               </p>
            </li>
            <li>
               <p>
                  <code>fri</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sat</code>
               </p>
            </li>
         </ul>
         <p>Example: <code>sun:23:00-mon:01:30</code>
         </p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>Specifies the VPC Security Groups associated with the clusters in the replication group.</p>
        <p>This parameter can be used only with replication group containing clusters running in 
            an Amazon Virtual Private Cloud (Amazon VPC).</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIdsList>,
    @ocaml.doc("<p>A list of cache security group names to authorize for the clusters in this replication group. This change is asynchronously applied as soon as possible.</p>
        <p>This parameter can be used only with replication group containing clusters running outside of an Amazon Virtual Private Cloud (Amazon VPC).</p>
        <p>Constraints: Must contain no more than 255 alphanumeric characters. Must not be <code>Default</code>.</p>")
    @as("CacheSecurityGroupNames")
    cacheSecurityGroupNames: option<cacheSecurityGroupNameList>,
    @ocaml.doc("<p>Deprecated. This parameter is not used.</p>") @as("NodeGroupId")
    nodeGroupId: option<string_>,
    @ocaml.doc("<p>A flag to indicate MultiAZ is enabled.</p>") @as("MultiAZEnabled")
    multiAZEnabled: option<booleanOptional>,
    @ocaml.doc("<p>Determines whether a read replica is automatically promoted to read/write primary if the existing primary encounters a failure.</p>
        <p>Valid values: <code>true</code> | <code>false</code>
         </p>")
    @as("AutomaticFailoverEnabled")
    automaticFailoverEnabled: option<booleanOptional>,
    @ocaml.doc("<p>The cluster ID that is used as the daily snapshot source for the replication group.
            This parameter cannot be set for Redis (cluster mode enabled) replication groups.</p>")
    @as("SnapshottingClusterId")
    snapshottingClusterId: option<string_>,
    @ocaml.doc("<p>For replication groups with a single primary, 
            if this parameter is specified, ElastiCache promotes the specified cluster in the specified replication group to the primary role. 
            The nodes of all other clusters in the replication group are read replicas.</p>")
    @as("PrimaryClusterId")
    primaryClusterId: option<string_>,
    @ocaml.doc("<p>A description for the replication group. Maximum length is 255 characters.</p>")
    @as("ReplicationGroupDescription")
    replicationGroupDescription: option<string_>,
    @ocaml.doc("<p>The identifier of the replication group to modify.</p>")
    @as("ReplicationGroupId")
    replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "ModifyReplicationGroupCommand"
  let make = (
    ~replicationGroupId,
    ~logDeliveryConfigurations=?,
    ~removeUserGroups=?,
    ~userGroupIdsToRemove=?,
    ~userGroupIdsToAdd=?,
    ~authTokenUpdateStrategy=?,
    ~authToken=?,
    ~cacheNodeType=?,
    ~snapshotWindow=?,
    ~snapshotRetentionLimit=?,
    ~autoMinorVersionUpgrade=?,
    ~engineVersion=?,
    ~applyImmediately=?,
    ~notificationTopicStatus=?,
    ~cacheParameterGroupName=?,
    ~notificationTopicArn=?,
    ~preferredMaintenanceWindow=?,
    ~securityGroupIds=?,
    ~cacheSecurityGroupNames=?,
    ~nodeGroupId=?,
    ~multiAZEnabled=?,
    ~automaticFailoverEnabled=?,
    ~snapshottingClusterId=?,
    ~primaryClusterId=?,
    ~replicationGroupDescription=?,
    (),
  ) =>
    new({
      logDeliveryConfigurations,
      removeUserGroups,
      userGroupIdsToRemove,
      userGroupIdsToAdd,
      authTokenUpdateStrategy,
      authToken,
      cacheNodeType,
      snapshotWindow,
      snapshotRetentionLimit,
      autoMinorVersionUpgrade,
      engineVersion,
      applyImmediately,
      notificationTopicStatus,
      cacheParameterGroupName,
      notificationTopicArn,
      preferredMaintenanceWindow,
      securityGroupIds,
      cacheSecurityGroupNames,
      nodeGroupId,
      multiAZEnabled,
      automaticFailoverEnabled,
      snapshottingClusterId,
      primaryClusterId,
      replicationGroupDescription,
      replicationGroupId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ModifyCacheCluster = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ModifyCacheCluster</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the destination, format and type of the logs.</p>")
    @as("LogDeliveryConfigurations")
    logDeliveryConfigurations: option<logDeliveryConfigurationRequestList>,
    @ocaml.doc("<p>Specifies the strategy to use to update the AUTH token. This parameter must be specified with the <code>auth-token</code> parameter.
            Possible values:</p>
            <ul>
            <li>
               <p>Rotate</p>
            </li>
            <li>
               <p>Set</p>
            </li>
         </ul>
        <p> 
            For more information, see <a href=\"http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/auth.html\">Authenticating Users with Redis AUTH</a>
         </p>")
    @as("AuthTokenUpdateStrategy")
    authTokenUpdateStrategy: option<authTokenUpdateStrategyType>,
    @ocaml.doc("<p>Reserved parameter. The password used to access a password protected server. This parameter must be specified with the <code>auth-token-update</code> parameter.
            Password constraints:</p>
            <ul>
            <li>
               <p>Must be only printable ASCII characters</p>
            </li>
            <li>
               <p>Must be at least 16 characters and no more than 128 characters in length</p>
            </li>
            <li>
               <p>Cannot contain any of the following characters: '/', '\"', or '@', '%'</p>
            </li>
         </ul>
         <p>     
           
            For more information, see AUTH password at <a href=\"http://redis.io/commands/AUTH\">AUTH</a>.</p>")
    @as("AuthToken")
    authToken: option<string_>,
    @ocaml.doc("<p>A valid cache node type that you want to scale this cluster up to.</p>")
    @as("CacheNodeType")
    cacheNodeType: option<string_>,
    @ocaml.doc("<p>The daily time range (in UTC) during which ElastiCache  begins taking a daily snapshot of
            your cluster. </p>")
    @as("SnapshotWindow")
    snapshotWindow: option<string_>,
    @ocaml.doc("<p>The number of days for which ElastiCache retains automatic cluster snapshots before
            deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5,  a
            snapshot that was taken today is retained for 5 days before being deleted.</p>
        <note>
            <p>If the value of <code>SnapshotRetentionLimit</code> is set to zero (0), backups are turned off.</p>
         </note>")
    @as("SnapshotRetentionLimit")
    snapshotRetentionLimit: option<integerOptional>,
    @ocaml.doc("<p> If you are running Redis engine version 6.0 or later, set this parameter to yes if you want to opt-in to the next auto minor version upgrade campaign. This parameter is disabled for previous versions. 
        </p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The upgraded version of the cache engine to be run on the cache nodes.</p>
        
        <p>
            <b>Important:</b> You can upgrade to a newer engine version 
            (see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement\">Selecting a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine version.
            If you want to use an earlier engine version, 
            you must delete the existing cluster and create it anew with the earlier engine version. </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>If <code>true</code>, this parameter causes the modifications in this request and any
            pending modifications to be applied, asynchronously and as soon as possible, regardless
            of the <code>PreferredMaintenanceWindow</code> setting for the cluster.</p>
        <p>If <code>false</code>, changes to the cluster are applied on the next
            maintenance reboot, or the next failure reboot, whichever occurs first.</p>
        <important>
            <p>If you perform a <code>ModifyCacheCluster</code> before a pending modification is applied, 
            the pending modification is replaced by the newer modification.</p>
         </important>
        <p>Valid values: <code>true</code> | <code>false</code>
         </p>
        <p>Default: <code>false</code>
         </p>")
    @as("ApplyImmediately")
    applyImmediately: option<boolean_>,
    @ocaml.doc("<p>The status of the Amazon SNS notification topic. Notifications are sent only if the
            status is <code>active</code>.</p>
        <p>Valid values: <code>active</code> | <code>inactive</code>
         </p>")
    @as("NotificationTopicStatus")
    notificationTopicStatus: option<string_>,
    @ocaml.doc("<p>The name of the cache parameter group to apply to this cluster. This change is
            asynchronously applied as soon as possible for parameters when the
            <code>ApplyImmediately</code> parameter is specified as <code>true</code> for this request.</p>")
    @as("CacheParameterGroupName")
    cacheParameterGroupName: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are sent.</p>
        <note>
            <p>The Amazon SNS topic owner must be same as the cluster owner.</p>
         </note>")
    @as("NotificationTopicArn")
    notificationTopicArn: option<string_>,
    @ocaml.doc("<p>Specifies the weekly time range during which maintenance
   on the cluster is performed. It is specified as a range in
   the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
   maintenance window is a 60 minute period.</p>
         <p>Valid values for <code>ddd</code> are:</p>
         <ul>
            <li>
               <p>
                  <code>sun</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mon</code>
               </p>
            </li>
            <li>
               <p>
                  <code>tue</code>
               </p>
            </li>
            <li>
               <p>
                  <code>wed</code>
               </p>
            </li>
            <li>
               <p>
                  <code>thu</code>
               </p>
            </li>
            <li>
               <p>
                  <code>fri</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sat</code>
               </p>
            </li>
         </ul>
         <p>Example: <code>sun:23:00-mon:01:30</code>
         </p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>Specifies the VPC Security Groups associated with the cluster.</p>
        <p>This parameter can be used only with clusters that are created in an Amazon Virtual Private Cloud (Amazon VPC).</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIdsList>,
    @ocaml.doc("<p>A list of cache security group names to authorize on this cluster. 
            This change is asynchronously applied as soon as possible.</p>
        <p>You can use this parameter only with clusters that are created outside of an Amazon Virtual Private Cloud (Amazon VPC).</p>
        <p>Constraints: Must contain no more than 255 alphanumeric characters. Must not be \"Default\".</p>")
    @as("CacheSecurityGroupNames")
    cacheSecurityGroupNames: option<cacheSecurityGroupNameList>,
    @ocaml.doc("<note>
            <p>This option is only supported on Memcached clusters.</p>
         </note>
        <p>The list of Availability Zones where the new Memcached cache nodes are created.</p>  
        <p>This parameter is only valid when <code>NumCacheNodes</code> in the request is greater 
            than the sum of the number of active cache nodes and the number of cache nodes pending creation (which may be zero). 
            The number of Availability Zones supplied in this list must match the cache nodes being added in this request.</p>
        
        <p>Scenarios:</p>
            <ul>
            <li>
                   <p>
                  <b>Scenario 1:</b> You have 3 active nodes and wish to add 2 nodes. 
                        Specify <code>NumCacheNodes=5</code> (3 + 2) and optionally specify two Availability Zones 
                        for the two new nodes.</p>
                </li>
            <li>
                   <p>
                  <b>Scenario 2:</b> You have 3 active nodes and 2 nodes pending creation 
                        (from the scenario 1 call) and want to add 1 more node. 
                        Specify <code>NumCacheNodes=6</code> ((3 + 2) + 1) and 
                        optionally specify an Availability Zone for the new node.</p>
                </li>
            <li>
                    <p>
                  <b>Scenario 3:</b> You want to cancel all pending operations. 
                        Specify <code>NumCacheNodes=3</code> to cancel all pending operations.</p>
                </li>
         </ul>

        <p>The Availability Zone placement of nodes pending creation cannot be modified. If you wish to cancel any nodes pending creation, 
            add 0 nodes by setting <code>NumCacheNodes</code> to the number of current nodes.</p>
        <p>If <code>cross-az</code> is specified, existing Memcached nodes remain in their current Availability Zone. 
            Only newly created nodes can be located in different Availability Zones. 
            For guidance on how to move existing Memcached nodes to different Availability Zones, see the
            <b>Availability Zone Considerations</b> section of <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNodes.SupportedTypes.html\">Cache Node Considerations for Memcached</a>.</p>
        
         <p>
            <b>Impact of new add/remove requests upon pending requests</b>
         </p>
         <ul>
            <li>
               <p>Scenario-1</p>
               <ul>
                  <li>
                     <p>Pending Action: Delete</p>
                  </li>
                  <li>
                     <p>New Request: Delete</p>
                  </li>
                  <li>
                     <p>Result: The new delete, pending or immediate, replaces the pending delete.</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Scenario-2</p>
               <ul>
                  <li>
                     <p>Pending Action: Delete</p>
                  </li>
                  <li>
                     <p>New Request: Create</p>
                  </li>
                  <li>
                     <p>Result: The new create, pending or immediate, replaces the pending delete.</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Scenario-3</p>
               <ul>
                  <li>
                     <p>Pending Action: Create</p>
                  </li>
                  <li>
                     <p>New Request: Delete</p>
                  </li>
                  <li>
                     <p>Result: The new delete, pending or immediate, replaces the pending create.</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Scenario-4</p>
               <ul>
                  <li>
                     <p>Pending Action: Create</p>
                  </li>
                  <li>
                     <p>New Request: Create</p>
                  </li>
                  <li>
                     <p>Result: The new create is added to the pending create.</p>
                     <important>
                        <p>
                           <b>Important:</b>
                      If the new create request is <b>Apply Immediately - Yes</b>, 
                      all creates are performed immediately. 
                      If the new create request is <b>Apply Immediately - No</b>, 
                      all creates are pending.</p>
                     </important>
                  </li>
               </ul>
            </li>
         </ul>")
    @as("NewAvailabilityZones")
    newAvailabilityZones: option<preferredAvailabilityZoneList>,
    @ocaml.doc("<p>Specifies whether the new nodes in this Memcached cluster are all created in a 
            single Availability Zone or created across multiple Availability Zones.</p>
        <p>Valid values: <code>single-az</code> | <code>cross-az</code>.</p>
        <p>This option is only supported for Memcached clusters.</p>
        <note>
            <p>You cannot specify <code>single-az</code> if the Memcached cluster already has cache nodes in different Availability Zones.            
            If <code>cross-az</code> is specified, existing Memcached nodes remain in their current Availability Zone.</p> 
            <p>Only newly created nodes are located in different Availability Zones. 
                </p>
        </note>")
    @as("AZMode")
    azmode: option<azmode>,
    @ocaml.doc("<p>A list of cache node IDs to be removed. A node ID is a numeric identifier (0001, 0002,
            etc.). This parameter is only valid when <code>NumCacheNodes</code> is less than the existing number
            of cache nodes. The number of cache node IDs supplied in this parameter must match the
            difference between the existing number of cache nodes in the cluster or pending cache nodes, whichever is
            greater, and the value of <code>NumCacheNodes</code> in the request.</p>
        <p>For example: If you have 3 active cache nodes, 7 pending cache nodes, and the number of cache nodes in this 
        <code>ModifyCacheCluster</code> call is 5, you must list 2 (7 - 5) cache node IDs to remove.</p>")
    @as("CacheNodeIdsToRemove")
    cacheNodeIdsToRemove: option<cacheNodeIdsList>,
    @ocaml.doc("<p>The number of cache nodes that the cluster should have. 
            If the value for <code>NumCacheNodes</code> is greater than the sum of the number of current cache nodes and 
            the number of cache nodes pending creation (which may be zero), more nodes are added. 
            If the value is less than the number of existing cache nodes,  nodes are removed. 
            If the value is equal to the number of current cache nodes, 
             any pending add or remove requests are canceled.</p>
        <p>If you are removing cache nodes, you must
            use the <code>CacheNodeIdsToRemove</code> parameter to provide the IDs of the specific cache nodes to remove.</p>
        <p>For clusters running Redis, this value must be 1. 
    For clusters running Memcached, this value must be between 1 and 40.</p>
        
        <note>
            <p>Adding or removing Memcached cache nodes can be applied immediately or as a pending operation (see <code>ApplyImmediately</code>).</p>
            <p>A pending operation to modify the number of cache nodes in a cluster during its maintenance window, 
            whether by adding or removing nodes in accordance with the scale out architecture, is not queued. 
            The customer's latest request to add or remove nodes to the cluster overrides any previous pending operations to modify the 
            number of cache nodes in the cluster. 
            For example, a request to remove 2 nodes would override a previous pending operation to remove 3 nodes. 
            Similarly, a request to add 2 nodes would override a previous pending operation to remove 3 nodes and vice versa. 
            As Memcached cache nodes may now be provisioned in different Availability Zones with flexible cache node placement, 
            a request to add nodes does not automatically override a previous pending operation to add nodes. 
            The customer can modify the previous pending operation to add more nodes or explicitly cancel the pending request and 
            retry the new request. 
            To cancel pending operations to modify the number of cache nodes in a cluster, 
            use the <code>ModifyCacheCluster</code> request and 
            set <code>NumCacheNodes</code> equal to the number of cache nodes currently in the cluster.</p>
         </note>")
    @as("NumCacheNodes")
    numCacheNodes: option<integerOptional>,
    @ocaml.doc("<p>The cluster identifier. This value is stored as a lowercase string.</p>")
    @as("CacheClusterId")
    cacheClusterId: string_,
  }
  type response = {@as("CacheCluster") cacheCluster: option<cacheCluster>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "ModifyCacheClusterCommand"
  let make = (
    ~cacheClusterId,
    ~logDeliveryConfigurations=?,
    ~authTokenUpdateStrategy=?,
    ~authToken=?,
    ~cacheNodeType=?,
    ~snapshotWindow=?,
    ~snapshotRetentionLimit=?,
    ~autoMinorVersionUpgrade=?,
    ~engineVersion=?,
    ~applyImmediately=?,
    ~notificationTopicStatus=?,
    ~cacheParameterGroupName=?,
    ~notificationTopicArn=?,
    ~preferredMaintenanceWindow=?,
    ~securityGroupIds=?,
    ~cacheSecurityGroupNames=?,
    ~newAvailabilityZones=?,
    ~azmode=?,
    ~cacheNodeIdsToRemove=?,
    ~numCacheNodes=?,
    (),
  ) =>
    new({
      logDeliveryConfigurations,
      authTokenUpdateStrategy,
      authToken,
      cacheNodeType,
      snapshotWindow,
      snapshotRetentionLimit,
      autoMinorVersionUpgrade,
      engineVersion,
      applyImmediately,
      notificationTopicStatus,
      cacheParameterGroupName,
      notificationTopicArn,
      preferredMaintenanceWindow,
      securityGroupIds,
      cacheSecurityGroupNames,
      newAvailabilityZones,
      azmode,
      cacheNodeIdsToRemove,
      numCacheNodes,
      cacheClusterId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module IncreaseReplicaCount = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>True</code>, the number of replica nodes is increased immediately. 

            <code>ApplyImmediately=False</code> is not currently supported.</p>")
    @as("ApplyImmediately")
    applyImmediately: boolean_,
    @ocaml.doc("<p>A list of <code>ConfigureShard</code> objects that can be used to configure each shard
            in a Redis (cluster mode enabled) replication group. The <code>ConfigureShard</code> has three members:
            <code>NewReplicaCount</code>, <code>NodeGroupId</code>, and <code>PreferredAvailabilityZones</code>.</p>")
    @as("ReplicaConfiguration")
    replicaConfiguration: option<replicaConfigurationList>,
    @ocaml.doc("<p>The number of read replica nodes you want at the completion of this operation.
            For Redis (cluster mode disabled) replication groups, this is the number of replica nodes in the
            replication group. For Redis (cluster mode enabled) replication groups, this is the number of 
            replica nodes in each of the replication group's node groups.</p>")
    @as("NewReplicaCount")
    newReplicaCount: option<integerOptional>,
    @ocaml.doc("<p>The id of the replication group to which you want to add replica nodes.</p>")
    @as("ReplicationGroupId")
    replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "IncreaseReplicaCountCommand"
  let make = (
    ~applyImmediately,
    ~replicationGroupId,
    ~replicaConfiguration=?,
    ~newReplicaCount=?,
    (),
  ) => new({applyImmediately, replicaConfiguration, newReplicaCount, replicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeUpdateActions = {
  type t
  type request = {
    @ocaml.doc("<p>An optional marker returned from a prior request. 
           Use this marker for pagination of results from this operation. If this
           parameter is specified, the response includes only records beyond the marker, up to the
           value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response</p>") @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Dictates whether to include node level update status in the response </p>")
    @as("ShowNodeLevelUpdateStatus")
    showNodeLevelUpdateStatus: option<booleanOptional>,
    @ocaml.doc("<p>The status of the update action.</p>") @as("UpdateActionStatus")
    updateActionStatus: option<updateActionStatusList>,
    @ocaml.doc(
      "<p>The range of time specified to search for service updates that are in available status</p>"
    )
    @as("ServiceUpdateTimeRange")
    serviceUpdateTimeRange: option<timeRangeFilter>,
    @ocaml.doc("<p>The status of the service update</p>") @as("ServiceUpdateStatus")
    serviceUpdateStatus: option<serviceUpdateStatusList>,
    @ocaml.doc(
      "<p>The Elasticache engine to which the update applies. Either Redis or Memcached </p>"
    )
    @as("Engine")
    engine: option<string_>,
    @ocaml.doc("<p>The cache cluster IDs</p>") @as("CacheClusterIds")
    cacheClusterIds: option<cacheClusterIdList>,
    @ocaml.doc("<p>The replication group IDs</p>") @as("ReplicationGroupIds")
    replicationGroupIds: option<replicationGroupIdList>,
    @ocaml.doc("<p>The unique ID of the service update</p>") @as("ServiceUpdateName")
    serviceUpdateName: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>Returns a list of update actions</p>") @as("UpdateActions")
    updateActions: option<updateActionList>,
    @ocaml.doc("<p>An optional marker returned from a prior request. 
           Use this marker for pagination of results from this operation. If this
           parameter is specified, the response includes only records beyond the marker, up to the
           value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeUpdateActionsCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~showNodeLevelUpdateStatus=?,
    ~updateActionStatus=?,
    ~serviceUpdateTimeRange=?,
    ~serviceUpdateStatus=?,
    ~engine=?,
    ~cacheClusterIds=?,
    ~replicationGroupIds=?,
    ~serviceUpdateName=?,
    (),
  ) =>
    new({
      marker,
      maxRecords,
      showNodeLevelUpdateStatus,
      updateActionStatus,
      serviceUpdateTimeRange,
      serviceUpdateStatus,
      engine,
      cacheClusterIds,
      replicationGroupIds,
      serviceUpdateName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeSnapshots = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DescribeSnapshotsMessage</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>A Boolean value which if true, the node group (shard) configuration is included in the snapshot description.</p>"
    )
    @as("ShowNodeGroupConfig")
    showNodeGroupConfig: option<booleanOptional>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
            specified <code>MaxRecords</code> value, a marker is included in the response so that
            the remaining results can be retrieved.</p> 
        <p>Default: 50</p>
        <p>Constraints: minimum 20; maximum 50.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>An optional marker returned from a prior request. 
            Use this marker for pagination of results from this operation. 
            If this parameter is specified, the response includes only records beyond the marker, 
            up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>If set to <code>system</code>, the output shows snapshots that were automatically created by ElastiCache. 
            If set to <code>user</code> the output shows snapshots that were manually created. 
            If omitted, the output shows both automatically and manually created snapshots.</p>")
    @as("SnapshotSource")
    snapshotSource: option<string_>,
    @ocaml.doc("<p>A user-supplied name of the snapshot. 
            If this parameter is specified, only this snapshot are described.</p>")
    @as("SnapshotName")
    snapshotName: option<string_>,
    @ocaml.doc("<p>A user-supplied cluster identifier. 
            If this parameter is specified, only snapshots associated with that specific cluster are described.</p>")
    @as("CacheClusterId")
    cacheClusterId: option<string_>,
    @ocaml.doc("<p>A user-supplied replication group identifier.
            If this parameter is specified, only snapshots associated with that specific replication group are described.</p>")
    @as("ReplicationGroupId")
    replicationGroupId: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of a <code>DescribeSnapshots</code> operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A list of snapshots. Each item in the list contains detailed information about one snapshot.</p>"
    )
    @as("Snapshots")
    snapshots: option<snapshotList>,
    @ocaml.doc("<p>An optional marker returned from a prior request. 
            Use this marker for pagination of results from this operation. 
            If this parameter is specified, the response includes only records beyond the marker, 
            up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeSnapshotsCommand"
  let make = (
    ~showNodeGroupConfig=?,
    ~maxRecords=?,
    ~marker=?,
    ~snapshotSource=?,
    ~snapshotName=?,
    ~cacheClusterId=?,
    ~replicationGroupId=?,
    (),
  ) =>
    new({
      showNodeGroupConfig,
      maxRecords,
      marker,
      snapshotSource,
      snapshotName,
      cacheClusterId,
      replicationGroupId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteReplicationGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteReplicationGroup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of a final node group (shard) snapshot. 
            ElastiCache creates the snapshot from the primary node in the cluster, 
            rather than one of the replicas; this is to ensure that it captures the freshest data. 
            After the final snapshot is taken, the replication group is immediately deleted.</p>")
    @as("FinalSnapshotIdentifier")
    finalSnapshotIdentifier: option<string_>,
    @ocaml.doc("<p>If set to <code>true</code>, all of the read replicas are deleted, 
            but the primary node is retained.</p>")
    @as("RetainPrimaryCluster")
    retainPrimaryCluster: option<booleanOptional>,
    @ocaml.doc(
      "<p>The identifier for the cluster to be deleted. This parameter is not case sensitive.</p>"
    )
    @as("ReplicationGroupId")
    replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DeleteReplicationGroupCommand"
  let make = (~replicationGroupId, ~finalSnapshotIdentifier=?, ~retainPrimaryCluster=?, ()) =>
    new({finalSnapshotIdentifier, retainPrimaryCluster, replicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteCacheCluster = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteCacheCluster</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The user-supplied name of a final cluster snapshot. This is the unique name that identifies the snapshot. 
            ElastiCache creates the snapshot, and then deletes the cluster immediately afterward.</p>")
    @as("FinalSnapshotIdentifier")
    finalSnapshotIdentifier: option<string_>,
    @ocaml.doc(
      "<p>The cluster identifier for the cluster to be deleted. This parameter is not case sensitive.</p>"
    )
    @as("CacheClusterId")
    cacheClusterId: string_,
  }
  type response = {@as("CacheCluster") cacheCluster: option<cacheCluster>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DeleteCacheClusterCommand"
  let make = (~cacheClusterId, ~finalSnapshotIdentifier=?, ()) =>
    new({finalSnapshotIdentifier, cacheClusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DecreaseReplicaCount = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>True</code>, the number of replica nodes is decreased immediately. 

            <code>ApplyImmediately=False</code> is not currently supported.</p>")
    @as("ApplyImmediately")
    applyImmediately: boolean_,
    @ocaml.doc(
      "<p>A list of the node ids to remove from the replication group or node group (shard).</p>"
    )
    @as("ReplicasToRemove")
    replicasToRemove: option<removeReplicasList>,
    @ocaml.doc("<p>A list of <code>ConfigureShard</code> objects that can be used to configure each shard
            in a Redis (cluster mode enabled) replication group. The <code>ConfigureShard</code> has three members:
            <code>NewReplicaCount</code>, <code>NodeGroupId</code>, and <code>PreferredAvailabilityZones</code>.</p>")
    @as("ReplicaConfiguration")
    replicaConfiguration: option<replicaConfigurationList>,
    @ocaml.doc("<p>The number of read replica nodes you want at the completion of this operation.
            For Redis (cluster mode disabled) replication groups, this is the number of replica nodes in the
            replication group. For Redis (cluster mode enabled) replication groups, this is the number of 
            replica nodes in each of the replication group's node groups.</p>
        <p>The minimum number of replicas in a shard or replication group is:</p>
        <ul>
            <li>
                <p>Redis (cluster mode disabled)</p>
                <ul>
                  <li>
                        <p>If Multi-AZ is enabled: 1</p>
                  </li>
                  <li>
                        <p>If Multi-AZ is not enabled: 0</p>
                  </li>
               </ul>
            </li>
            <li>
                <p>Redis (cluster mode enabled): 0 (though you will not be able to failover to a replica if your primary node fails)</p>
            </li>
         </ul>")
    @as("NewReplicaCount")
    newReplicaCount: option<integerOptional>,
    @ocaml.doc(
      "<p>The id of the replication group from which you want to remove replica nodes.</p>"
    )
    @as("ReplicationGroupId")
    replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DecreaseReplicaCountCommand"
  let make = (
    ~applyImmediately,
    ~replicationGroupId,
    ~replicasToRemove=?,
    ~replicaConfiguration=?,
    ~newReplicaCount=?,
    (),
  ) =>
    new({
      applyImmediately,
      replicasToRemove,
      replicaConfiguration,
      newReplicaCount,
      replicationGroupId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateReplicationGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CreateReplicationGroup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to true when using r6gd nodes.
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/data-tiering.html\">Data tiering</a>.</p>")
    @as("DataTieringEnabled")
    dataTieringEnabled: option<booleanOptional>,
    @ocaml.doc("<p>Specifies the destination, format and type of the logs.</p>")
    @as("LogDeliveryConfigurations")
    logDeliveryConfigurations: option<logDeliveryConfigurationRequestList>,
    @ocaml.doc("<p>The user group to associate with the replication group.</p>") @as("UserGroupIds")
    userGroupIds: option<userGroupIdListInput>,
    @ocaml.doc("<p>The ID of the KMS key used to encrypt the disk in the cluster.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>A flag that enables encryption at rest when set to <code>true</code>.</p>
        <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code> after the replication
            group is created. 
            To enable encryption at rest on a replication group you must set <code>AtRestEncryptionEnabled</code> to 
            <code>true</code> when you create the replication group. </p>
        <p>
            <b>Required:</b>
            Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code>, <code>4.x</code> or later.</p>
        <p>Default: <code>false</code>
         </p>")
    @as("AtRestEncryptionEnabled")
    atRestEncryptionEnabled: option<booleanOptional>,
    @ocaml.doc("<p>A flag that enables in-transit encryption when set to <code>true</code>.</p>
        <p>You cannot modify the value of <code>TransitEncryptionEnabled</code>
            after the cluster is created. To enable in-transit encryption on a cluster
            you must set <code>TransitEncryptionEnabled</code> to <code>true</code>
            when you create a cluster.</p>
        <p>This parameter is valid only if the <code>Engine</code> parameter is <code>redis</code>,
            the <code>EngineVersion</code> parameter is <code>3.2.6</code>, <code>4.x</code> or later,
            and the cluster is being created in an Amazon VPC.</p>
        <p>If you enable in-transit encryption, you must also specify a value for 
            <code>CacheSubnetGroup</code>.</p>
        <p>
            <b>Required:</b>
            Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code>, <code>4.x</code> or later.</p>
        <p>Default: <code>false</code>
         </p>
        <important>
            <p>For HIPAA compliance, you must specify <code>TransitEncryptionEnabled</code> as <code>true</code>, 
            an <code>AuthToken</code>, and a <code>CacheSubnetGroup</code>.</p>
         </important>")
    @as("TransitEncryptionEnabled")
    transitEncryptionEnabled: option<booleanOptional>,
    @ocaml.doc("<p>
            <b>Reserved parameter.</b>  
            The password used to access a password protected server.</p>
        <p>
            <code>AuthToken</code> can be specified only on replication groups where <code>TransitEncryptionEnabled</code> is 
            <code>true</code>.</p>
        <important>
            <p>For HIPAA compliance, you must specify <code>TransitEncryptionEnabled</code> as <code>true</code>, 
            an <code>AuthToken</code>, and a <code>CacheSubnetGroup</code>.</p>
         </important>
        <p>Password constraints:</p>
        <ul>
            <li>
               <p>Must be only printable ASCII characters.</p>
            </li>
            <li>
               <p>Must be at least 16 characters and no more than 128
                characters in length.</p>
            </li>
            <li>
               <p>The only permitted printable special characters are !, &, #, $, ^, <, >, and -. Other printable special characters cannot be used in the AUTH token.</p>
            </li>
         </ul>
        <p>For more information, see <a href=\"http://redis.io/commands/AUTH\">AUTH password</a> at http://redis.io/commands/AUTH.</p>")
    @as("AuthToken")
    authToken: option<string_>,
    @ocaml.doc("<p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).</p>
         <p>Example: <code>05:00-09:00</code>
         </p>
         <p>If you do not specify this parameter, ElastiCache  automatically chooses an appropriate time range.</p>")
    @as("SnapshotWindow")
    snapshotWindow: option<string_>,
    @ocaml.doc("<p>The number of days for which ElastiCache retains automatic snapshots before deleting them. 
            For example, if you set <code>SnapshotRetentionLimit</code> to 5, 
            a snapshot that was taken today is retained for 5 days before being deleted.</p>
         <p>Default: 0 (i.e., automatic backups are disabled for this cluster).</p>")
    @as("SnapshotRetentionLimit")
    snapshotRetentionLimit: option<integerOptional>,
    @ocaml.doc("<p> If you are running Redis engine version 6.0 or later, set this parameter to yes if you want to opt-in to the next auto minor version upgrade campaign. This parameter is disabled for previous versions. 
        </p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) 
            topic to which notifications are sent.</p>
        <note>
            <p>The Amazon SNS topic owner must be the same as the cluster owner.</p>
         </note>")
    @as("NotificationTopicArn")
    notificationTopicArn: option<string_>,
    @ocaml.doc(
      "<p>The port number on which each member of the replication group accepts connections.</p>"
    )
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>Specifies the weekly time range during which maintenance
            on the cluster is performed. It is specified as a range in
            the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
            maintenance window is a 60 minute period.
            Valid values for <code>ddd</code> are:</p>
        
         <p>Specifies the weekly time range during which maintenance
   on the cluster is performed. It is specified as a range in
   the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
   maintenance window is a 60 minute period.</p>
         <p>Valid values for <code>ddd</code> are:</p>
         <ul>
            <li>
               <p>
                  <code>sun</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mon</code>
               </p>
            </li>
            <li>
               <p>
                  <code>tue</code>
               </p>
            </li>
            <li>
               <p>
                  <code>wed</code>
               </p>
            </li>
            <li>
               <p>
                  <code>thu</code>
               </p>
            </li>
            <li>
               <p>
                  <code>fri</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sat</code>
               </p>
            </li>
         </ul>
         <p>Example: <code>sun:23:00-mon:01:30</code>
         </p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The name of a snapshot from which to restore data into the new replication group.
            The snapshot status changes to <code>restoring</code> while the new replication group is being created.</p>")
    @as("SnapshotName")
    snapshotName: option<string_>,
    @ocaml.doc("<p>A list of Amazon Resource Names (ARN) that uniquely identify 
          the Redis RDB snapshot files stored in Amazon S3. 
          The snapshot files are used to populate the new replication group. 
          The Amazon S3 object name in the ARN cannot contain any commas. 
          The new replication group will have the number of node groups (console: shards)
          specified by the parameter <i>NumNodeGroups</i> or the number of
          node groups configured by <i>NodeGroupConfiguration</i> regardless 
          of the number of ARNs specified here.</p>
         <p>Example of an Amazon S3 ARN: <code>arn:aws:s3:::my_bucket/snapshot1.rdb</code>
         </p>")
    @as("SnapshotArns")
    snapshotArns: option<snapshotArnsList>,
    @ocaml.doc("<p>A list of tags to be added to this resource. 
          Tags are comma-separated key,value pairs (e.g. Key=<code>myKey</code>, Value=<code>myKeyValue</code>. You can include multiple tags as shown following: 
          Key=<code>myKey</code>, Value=<code>myKeyValue</code> Key=<code>mySecondKey</code>, Value=<code>mySecondKeyValue</code>. Tags on replication groups will be replicated to all nodes.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>One or more Amazon VPC security groups associated with this replication group.</p>
        <p>Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud (Amazon VPC).</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIdsList>,
    @ocaml.doc(
      "<p>A list of cache security group names to associate with this replication group.</p>"
    )
    @as("CacheSecurityGroupNames")
    cacheSecurityGroupNames: option<cacheSecurityGroupNameList>,
    @ocaml.doc("<p>The name of the cache subnet group to be used for the replication group.</p>
        <important>
            <p>If you're going to launch your cluster in an Amazon VPC, 
                you need to create a subnet group before you start creating a cluster. 
                For more information, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html\">Subnets and Subnet Groups</a>.</p>
         </important>")
    @as("CacheSubnetGroupName")
    cacheSubnetGroupName: option<string_>,
    @ocaml.doc("<p>The name of the parameter group to associate with this replication group. 
            If this argument is omitted, the default cache parameter group for the specified engine is
            used.</p>
        
        <p>If you are running Redis version 3.2.4 or later, only one node group (shard), and want to use a default parameter group, 
            we recommend that you specify the parameter group by name. </p>
        <ul>
            <li>
               <p>To create a Redis (cluster mode disabled) replication group, use <code>CacheParameterGroupName=default.redis3.2</code>.</p>
            </li>
            <li>
               <p>To create a Redis (cluster mode enabled) replication group, use <code>CacheParameterGroupName=default.redis3.2.cluster.on</code>.</p>
            </li>
         </ul>")
    @as("CacheParameterGroupName")
    cacheParameterGroupName: option<string_>,
    @ocaml.doc("<p>The version number of the cache engine to be used for the clusters in this replication group. 
            To view the supported cache engine versions, use the <code>DescribeCacheEngineVersions</code> operation.</p>

        <p>
            <b>Important:</b> You can upgrade to a newer engine version (see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement\">Selecting a Cache Engine and Version</a>) in the <i>ElastiCache User Guide</i>, 
            but you cannot downgrade to an earlier engine version.
            If you want to use an earlier engine version, 
            you must delete the existing cluster or replication group and 
            create it anew with the earlier engine version. </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc(
      "<p>The name of the cache engine to be used for the clusters in this replication group. Must be Redis.</p>"
    )
    @as("Engine")
    engine: option<string_>,
    @ocaml.doc("<p>The compute and memory capacity of the nodes in the node group (shard).</p>        
        <p>The following node types are supported by ElastiCache. 
				Generally speaking, the current generation types provide more memory and computational power
			at lower cost when compared to their equivalent previous generation counterparts.</p>
		       <ul>
            <li>
               <p>General purpose:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>
					    
					    
					    
					    
					    
					                <p>
                        <b>M6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
						<code>cache.m6g.large</code>,
							<code>cache.m6g.xlarge</code>,
							<code>cache.m6g.2xlarge</code>,
							<code>cache.m6g.4xlarge</code>,
							<code>cache.m6g.8xlarge</code>,
							<code>cache.m6g.12xlarge</code>,
							<code>cache.m6g.16xlarge</code>
							
							
							
						               </p>	
						
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
    					
    					
    					            <p>
                        <b>M5 node types:</b>
    						              <code>cache.m5.large</code>,
    						<code>cache.m5.xlarge</code>,
    						<code>cache.m5.2xlarge</code>,
    						<code>cache.m5.4xlarge</code>,
    						<code>cache.m5.12xlarge</code>,
    						<code>cache.m5.24xlarge</code>
    						
    						
    						           </p>	
    						
						
						               <p>
                        <b>M4 node types:</b>
    						              <code>cache.m4.large</code>,
    						<code>cache.m4.xlarge</code>,
    						<code>cache.m4.2xlarge</code>,
    						<code>cache.m4.4xlarge</code>,
    						<code>cache.m4.10xlarge</code>
                     </p>
    			
					    
					                <p>
                        <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):    
					        <code>cache.t4g.micro</code>,
					        <code>cache.t4g.small</code>,
					        <code>cache.t4g.medium</code>
					                </p>	         
					                <p>
                        <b>T3 node types:</b>
					                   <code>cache.t3.micro</code>, 
    						<code>cache.t3.small</code>,
    						<code>cache.t3.medium</code>
                     </p>
    								
    						
    				             <p>
                        <b>T2 node types:</b>
					                   <code>cache.t2.micro</code>, 
    						<code>cache.t2.small</code>,
    						<code>cache.t2.medium</code>
                     </p>
    						
    						
    						
    						
    						        </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
						               <p>
                        <b>T1 node types:</b>
					                   <code>cache.t1.micro</code>
                     </p>
					     
						               <p>
                        <b>M1 node types:</b>
						                  <code>cache.m1.small</code>, 
						   <code>cache.m1.medium</code>, 
						   <code>cache.m1.large</code>,
						   <code>cache.m1.xlarge</code>
                     </p>
						   
						               <p>
                        <b>M3 node types:</b>
    						              <code>cache.m3.medium</code>,
    						<code>cache.m3.large</code>, 
    						<code>cache.m3.xlarge</code>,
    						<code>cache.m3.2xlarge</code>
                     </p>
						   
						            </li>
               </ul>
            </li>
            <li>
               <p>Compute optimized:</p>

				           <ul>
                  <li>
                     <p>Previous generation: (not recommended)</p>
			                  <p>
                        <b>C1 node types:</b>
			                     <code>cache.c1.xlarge</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized with data tiering:</p>
		             <ul>
                  <li>
                     <p>Current generation: </p>
		                
		                   <p>
                        <b>R6gd node types</b> (available only for Redis engine version 6.2 onward).</p>
		                
		                
		                
		                
		                   <p>	
		                    
		                      <code>cache.r6gd.xlarge</code>,
		                    <code>cache.r6gd.2xlarge</code>,
		                    <code>cache.r6gd.4xlarge</code>,
		                    <code>cache.r6gd.8xlarge</code>,
		                    <code>cache.r6gd.12xlarge</code>,
		                    <code>cache.r6gd.16xlarge</code>
		                    
		                    
		                    
		                    
		                    
		                    
		                   </p>					    
		                
		                </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>
				
					   		    				    
					    
					    
					                <p>
                        <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
						
						
						
						
						               <p>	
							                 <code>cache.r6g.large</code>,
							<code>cache.r6g.xlarge</code>,
							<code>cache.r6g.2xlarge</code>,
							<code>cache.r6g.4xlarge</code>,
							<code>cache.r6g.8xlarge</code>,
							<code>cache.r6g.12xlarge</code>,
							<code>cache.r6g.16xlarge</code>
							
							
							
							
							
							
						               </p>	
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
					                <p>
                        <b>R5 node types:</b>
    					               <code>cache.r5.large</code>,
    					   <code>cache.r5.xlarge</code>,
    					   <code>cache.r5.2xlarge</code>,
    					   <code>cache.r5.4xlarge</code>,
    					   <code>cache.r5.12xlarge</code>,
    					   <code>cache.r5.24xlarge</code>
                     </p>
						
    					            <p>
                        <b>R4 node types:</b>
    					               <code>cache.r4.large</code>,
    					   <code>cache.r4.xlarge</code>,
    					   <code>cache.r4.2xlarge</code>,
    					   <code>cache.r4.4xlarge</code>,
    					   <code>cache.r4.8xlarge</code>,
    					   <code>cache.r4.16xlarge</code>
                     </p>
    					   
    					   
    					   

  
    					   
    					   
    					   
    					   
    					   
    					   
    					         </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
                        <p>
                        <b>M2 node types:</b>						
    					               <code>cache.m2.xlarge</code>, 
    						<code>cache.m2.2xlarge</code>,
    						<code>cache.m2.4xlarge</code>
                     </p>
    						
    						           <p>
                        <b>R3 node types:</b>
    					               <code>cache.r3.large</code>, 
    						<code>cache.r3.xlarge</code>,
    						<code>cache.r3.2xlarge</code>,  
    						<code>cache.r3.4xlarge</code>,
    						<code>cache.r3.8xlarge</code>
                     </p>
    						
    						        </li>
               </ul>
            </li>
         </ul>
				
		       <p>
            <b>Additional node type info</b>
         </p>
		       <ul>
            <li>
               <p>All current generation instance types are created in Amazon VPC by default.</p>
            </li>
            <li>
               <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
            </li>
            <li>
               <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
            </li>
            <li>
               <p>Redis configuration variables <code>appendonly</code> and 
				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
            </li>
         </ul>")
    @as("CacheNodeType")
    cacheNodeType: option<string_>,
    @ocaml.doc("<p>A list of node group (shard) configuration options. 
            Each node group (shard) configuration has the following members:
            <code>PrimaryAvailabilityZone</code>,
            <code>ReplicaAvailabilityZones</code>,
            <code>ReplicaCount</code>, and 
            <code>Slots</code>.</p>
        <p>If you're creating a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group, you can use this parameter to 
            individually configure each node group (shard), or you can omit this parameter. However, it is required when seeding a 
            Redis (cluster mode enabled) cluster from a S3 rdb file. You must configure each node group (shard) using this parameter 
            because you must specify the slots for each node group.</p>")
    @as("NodeGroupConfiguration")
    nodeGroupConfiguration: option<nodeGroupConfigurationList>,
    @ocaml.doc("<p>An optional parameter that specifies the number of replica nodes in each node group (shard).
            Valid values are 0 to 5.</p>")
    @as("ReplicasPerNodeGroup")
    replicasPerNodeGroup: option<integerOptional>,
    @ocaml.doc("<p>An optional parameter that specifies the number of node groups (shards) for this Redis (cluster mode enabled) replication group. 
            For Redis (cluster mode disabled) either omit this parameter or set it to 1.</p>
        <p>Default: 1</p>")
    @as("NumNodeGroups")
    numNodeGroups: option<integerOptional>,
    @ocaml.doc("<p>A list of EC2 Availability Zones in which the replication group's clusters are created. 
            The order of the Availability Zones in the list is the order in which clusters are allocated. 
            The primary cluster is created in the first AZ in the list.</p>
        <p>This parameter is not used if there is more than one node group (shard).  
            You should use <code>NodeGroupConfiguration</code> instead.</p>
        <note>
            <p>If you are creating your replication group in an Amazon VPC (recommended), 
            you can only locate clusters in Availability Zones associated with the subnets in the selected subnet group.</p>
            <p>The number of Availability Zones listed must equal the value of <code>NumCacheClusters</code>.</p>
         </note>
        <p>Default: system chosen Availability Zones.</p>")
    @as("PreferredCacheClusterAZs")
    preferredCacheClusterAZs: option<availabilityZonesList>,
    @ocaml.doc("<p>The number of clusters this replication group initially has.</p>
        <p>This parameter is not used if there is more than one node group (shard).  
            You should use <code>ReplicasPerNodeGroup</code> instead.</p>
        <p>If <code>AutomaticFailoverEnabled</code> is <code>true</code>, the value of this parameter must be at least 2.
            If <code>AutomaticFailoverEnabled</code> is <code>false</code> you can omit this parameter (it will default to 1), or you
            can explicitly set it to a value between 2 and 6.</p>
        <p>The maximum permitted value for <code>NumCacheClusters</code> is 6 (1 primary plus 5 replicas).</p>")
    @as("NumCacheClusters")
    numCacheClusters: option<integerOptional>,
    @ocaml.doc(
      "<p>A flag indicating if you have Multi-AZ enabled to enhance fault tolerance. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html\">Minimizing Downtime: Multi-AZ</a>.</p>"
    )
    @as("MultiAZEnabled")
    multiAZEnabled: option<booleanOptional>,
    @ocaml.doc("<p>Specifies whether a read-only replica is automatically promoted to read/write primary if the existing primary fails.</p>
      
        <p>
            <code>AutomaticFailoverEnabled</code> must be enabled for Redis (cluster mode enabled) replication groups.</p>
        
        <p>Default: false</p>")
    @as("AutomaticFailoverEnabled")
    automaticFailoverEnabled: option<booleanOptional>,
    @ocaml.doc("<p>The identifier of the cluster that serves as the primary for this replication
            group. This cluster must already exist and have a status of <code>available</code>.</p>
        <p>This parameter is not required if <code>NumCacheClusters</code>,
            <code>NumNodeGroups</code>, or
            <code>ReplicasPerNodeGroup</code> is specified.</p>")
    @as("PrimaryClusterId")
    primaryClusterId: option<string_>,
    @ocaml.doc("<p>The name of the Global datastore</p>") @as("GlobalReplicationGroupId")
    globalReplicationGroupId: option<string_>,
    @ocaml.doc("<p>A user-created description for the replication group.</p>")
    @as("ReplicationGroupDescription")
    replicationGroupDescription: string_,
    @ocaml.doc("<p>The replication group identifier. This parameter is stored as a lowercase string.</p>
        
         <p>Constraints:</p>
         <ul>
            <li>
               <p>A name must contain from 1 to 40 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>The first character must be a letter.</p>
            </li>
            <li>
               <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("ReplicationGroupId")
    replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "CreateReplicationGroupCommand"
  let make = (
    ~replicationGroupDescription,
    ~replicationGroupId,
    ~dataTieringEnabled=?,
    ~logDeliveryConfigurations=?,
    ~userGroupIds=?,
    ~kmsKeyId=?,
    ~atRestEncryptionEnabled=?,
    ~transitEncryptionEnabled=?,
    ~authToken=?,
    ~snapshotWindow=?,
    ~snapshotRetentionLimit=?,
    ~autoMinorVersionUpgrade=?,
    ~notificationTopicArn=?,
    ~port=?,
    ~preferredMaintenanceWindow=?,
    ~snapshotName=?,
    ~snapshotArns=?,
    ~tags=?,
    ~securityGroupIds=?,
    ~cacheSecurityGroupNames=?,
    ~cacheSubnetGroupName=?,
    ~cacheParameterGroupName=?,
    ~engineVersion=?,
    ~engine=?,
    ~cacheNodeType=?,
    ~nodeGroupConfiguration=?,
    ~replicasPerNodeGroup=?,
    ~numNodeGroups=?,
    ~preferredCacheClusterAZs=?,
    ~numCacheClusters=?,
    ~multiAZEnabled=?,
    ~automaticFailoverEnabled=?,
    ~primaryClusterId=?,
    ~globalReplicationGroupId=?,
    (),
  ) =>
    new({
      dataTieringEnabled,
      logDeliveryConfigurations,
      userGroupIds,
      kmsKeyId,
      atRestEncryptionEnabled,
      transitEncryptionEnabled,
      authToken,
      snapshotWindow,
      snapshotRetentionLimit,
      autoMinorVersionUpgrade,
      notificationTopicArn,
      port,
      preferredMaintenanceWindow,
      snapshotName,
      snapshotArns,
      tags,
      securityGroupIds,
      cacheSecurityGroupNames,
      cacheSubnetGroupName,
      cacheParameterGroupName,
      engineVersion,
      engine,
      cacheNodeType,
      nodeGroupConfiguration,
      replicasPerNodeGroup,
      numNodeGroups,
      preferredCacheClusterAZs,
      numCacheClusters,
      multiAZEnabled,
      automaticFailoverEnabled,
      primaryClusterId,
      globalReplicationGroupId,
      replicationGroupDescription,
      replicationGroupId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateCacheCluster = {
  type t
  @ocaml.doc("<p>Represents the input of a CreateCacheCluster operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the destination, format and type of the logs. </p>")
    @as("LogDeliveryConfigurations")
    logDeliveryConfigurations: option<logDeliveryConfigurationRequestList>,
    @ocaml.doc("<p>The outpost ARNs in which the cache cluster is created.</p>")
    @as("PreferredOutpostArns")
    preferredOutpostArns: option<preferredOutpostArnList>,
    @ocaml.doc("<p>The outpost ARN in which the cache cluster is created.</p>")
    @as("PreferredOutpostArn")
    preferredOutpostArn: option<string_>,
    @ocaml.doc(
      "<p>Specifies whether the nodes in the cluster are created in a single outpost or across multiple outposts.</p>"
    )
    @as("OutpostMode")
    outpostMode: option<outpostMode>,
    @ocaml.doc("<p>
            <b>Reserved parameter.</b>  
            The password used to access a password protected server.</p>
        <p>Password constraints:</p>
        <ul>
            <li>
               <p>Must be only printable ASCII characters.</p>
            </li>
            <li>
               <p>Must be at least 16 characters and no more than 128
                characters in length.</p>
            </li>
            <li>
               <p>The only permitted printable special characters are !, &, #, $, ^, <, >, and -. Other printable special characters cannot be used in the AUTH token.</p>
            </li>
         </ul>
        <p>For more information, see <a href=\"http://redis.io/commands/AUTH\">AUTH password</a> at http://redis.io/commands/AUTH.</p>")
    @as("AuthToken")
    authToken: option<string_>,
    @ocaml.doc("<p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).</p>
         <p>Example: <code>05:00-09:00</code>
         </p>
         <p>If you do not specify this parameter, ElastiCache  automatically chooses an appropriate time range.</p>
        <note>
            <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p>
         </note>")
    @as("SnapshotWindow")
    snapshotWindow: option<string_>,
    @ocaml.doc("<p>The number of days for which ElastiCache retains automatic snapshots before deleting them. 
          For example, if you set <code>SnapshotRetentionLimit</code> to 5,
          a snapshot taken today is retained for 5 days before being deleted.</p>
         <note>
            <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p>
         </note>
         <p>Default: 0 (i.e., automatic backups are disabled for this cache cluster).</p>")
    @as("SnapshotRetentionLimit")
    snapshotRetentionLimit: option<integerOptional>,
    @ocaml.doc("<p> If you are running Redis engine version 6.0 or later, set this parameter to yes if you want to opt-in to the next auto minor version upgrade campaign. This parameter is disabled for previous versions. 
            </p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic 
          to which notifications are sent.</p>
         <note>
            <p>The Amazon SNS topic owner must be the same as the cluster owner.</p>
         </note>")
    @as("NotificationTopicArn")
    notificationTopicArn: option<string_>,
    @ocaml.doc("<p>The port number on which each of the cache nodes  accepts connections.</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>Specifies the weekly time range during which maintenance
            on the cluster is performed. It is specified as a range in
            the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
            maintenance window is a 60 minute period.
           </p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The name of a Redis snapshot from which to restore data into the new node group (shard).
            The snapshot status changes to <code>restoring</code> while the new node group (shard) is being created.</p>
        <note>
            <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p>
         </note>")
    @as("SnapshotName")
    snapshotName: option<string_>,
    @ocaml.doc("<p>A single-element string list containing an Amazon Resource Name (ARN) that uniquely identifies 
            a Redis RDB snapshot file stored in Amazon S3.
            The snapshot file is used to populate the node group (shard). 
            The Amazon S3 object name in the ARN cannot contain any commas.</p>
        <note>
            <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p>
         </note>
        <p>Example of an Amazon S3 ARN: <code>arn:aws:s3:::my_bucket/snapshot1.rdb</code>
         </p>")
    @as("SnapshotArns")
    snapshotArns: option<snapshotArnsList>,
    @ocaml.doc("<p>A list of tags to be added to this resource.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>One or more VPC security groups associated with the cluster.</p>
        <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIdsList>,
    @ocaml.doc("<p>A list of security group names to associate with this cluster.</p>
        <p>Use this parameter only when you are creating a cluster outside of an Amazon Virtual Private Cloud (Amazon VPC).</p>")
    @as("CacheSecurityGroupNames")
    cacheSecurityGroupNames: option<cacheSecurityGroupNameList>,
    @ocaml.doc("<p>The name of the subnet group to be used for the cluster.</p>
        <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).</p>
        <important>
            <p>If you're going to launch your cluster in an Amazon VPC, 
                you need to create a subnet group before you start creating a cluster. 
                For more information, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html\">Subnets and Subnet Groups</a>.</p>
         </important>")
    @as("CacheSubnetGroupName")
    cacheSubnetGroupName: option<string_>,
    @ocaml.doc("<p>The name of the parameter group to associate with this cluster. 
            If this argument is omitted, the default parameter group for the specified engine is used.
            You cannot use any parameter group which has <code>cluster-enabled='yes'</code> when creating a cluster.</p>")
    @as("CacheParameterGroupName")
    cacheParameterGroupName: option<string_>,
    @ocaml.doc("<p>The version number of the cache engine to be used for this cluster. 
            To view the supported cache engine versions, use the DescribeCacheEngineVersions operation.</p>
        
        <p>
            <b>Important:</b> You can upgrade to a newer engine version (see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement\">Selecting a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine version.
            If you want to use an earlier engine version, 
            you must delete the existing cluster or replication group and create it anew with the earlier engine version. </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The name of the cache engine to be used for this cluster.</p>
        <p>Valid values for this parameter are: <code>memcached</code> | <code>redis</code>
         </p>")
    @as("Engine")
    engine: option<string_>,
    @ocaml.doc("<p>The compute and memory capacity of the nodes in the node group (shard).</p>
        <p>The following node types are supported by ElastiCache. 
				Generally speaking, the current generation types provide more memory and computational power
			at lower cost when compared to their equivalent previous generation counterparts.</p>
		       <ul>
            <li>
               <p>General purpose:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>
					    
    					
					   
					    
					                <p>
                        <b>M6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
					    
					 	<code>cache.m6g.large</code>,
							<code>cache.m6g.xlarge</code>,
							<code>cache.m6g.2xlarge</code>,
							<code>cache.m6g.4xlarge</code>,
							<code>cache.m6g.8xlarge</code>,
							<code>cache.m6g.12xlarge</code>,
							<code>cache.m6g.16xlarge</code>
							
							
							
						               </p>	
						
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
    					
    					
    					            <p>
                        <b>M5 node types:</b>
    						              <code>cache.m5.large</code>,
    						<code>cache.m5.xlarge</code>,
    						<code>cache.m5.2xlarge</code>,
    						<code>cache.m5.4xlarge</code>,
    						<code>cache.m5.12xlarge</code>,
    						<code>cache.m5.24xlarge</code>
    						
    						
    						           </p>	
    						
						
						               <p>
                        <b>M4 node types:</b>
    						              <code>cache.m4.large</code>,
    						<code>cache.m4.xlarge</code>,
    						<code>cache.m4.2xlarge</code>,
    						<code>cache.m4.4xlarge</code>,
    						<code>cache.m4.10xlarge</code>
                     </p>
    		
					                <p>
                        <b>T4g node types</b> (available only for Redis engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
					        <code>cache.t4g.micro</code>,
					        <code>cache.t4g.small</code>,
					        <code>cache.t4g.medium</code>
					                </p>
					    
					    
					                <p>
                        <b>T3 node types:</b>
					                   <code>cache.t3.micro</code>, 
    						<code>cache.t3.small</code>,
    						<code>cache.t3.medium</code>
                     </p>
    								
    						
    				             <p>
                        <b>T2 node types:</b>
					                   <code>cache.t2.micro</code>, 
    						<code>cache.t2.small</code>,
    						<code>cache.t2.medium</code>
                     </p>
    						
    						
    						
    						
    						        </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
						               <p>
                        <b>T1 node types:</b>
					                   <code>cache.t1.micro</code>
                     </p>
					     
						               <p>
                        <b>M1 node types:</b>
						                  <code>cache.m1.small</code>, 
						   <code>cache.m1.medium</code>, 
						   <code>cache.m1.large</code>,
						   <code>cache.m1.xlarge</code>
                     </p>
						   
						               <p>
                        <b>M3 node types:</b>
    						              <code>cache.m3.medium</code>,
    						<code>cache.m3.large</code>, 
    						<code>cache.m3.xlarge</code>,
    						<code>cache.m3.2xlarge</code>
                     </p>
						   
						            </li>
               </ul>
            </li>
            <li>
               <p>Compute optimized:</p>

				           <ul>
                  <li>
                     <p>Previous generation: (not recommended)</p>
			                  <p>
                        <b>C1 node types:</b>
			                     <code>cache.c1.xlarge</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Memory optimized:</p>
				           <ul>
                  <li>
                     <p>Current generation: </p>
					  
					    
					    
					    
											          <p>
                        <b>R6g node types</b> (available only for Redis engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward).</p>
						
					  
						
						               <p>	
							                 <code>cache.r6g.large</code>,
							<code>cache.r6g.xlarge</code>,
							<code>cache.r6g.2xlarge</code>,
							<code>cache.r6g.4xlarge</code>,
							<code>cache.r6g.8xlarge</code>,
							<code>cache.r6g.12xlarge</code>,
							<code>cache.r6g.16xlarge</code>
							
							
							
							
							
							
						               </p>	
						               <note>
                        <p>For region availability, see <a href=\"https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion\">Supported Node Types</a>
                        </p>
                     </note>
					                <p>
                        <b>R5 node types:</b>
    					               <code>cache.r5.large</code>,
    					   <code>cache.r5.xlarge</code>,
    					   <code>cache.r5.2xlarge</code>,
    					   <code>cache.r5.4xlarge</code>,
    					   <code>cache.r5.12xlarge</code>,
    					   <code>cache.r5.24xlarge</code>
                     </p>
						
    					            <p>
                        <b>R4 node types:</b>
    					               <code>cache.r4.large</code>,
    					   <code>cache.r4.xlarge</code>,
    					   <code>cache.r4.2xlarge</code>,
    					   <code>cache.r4.4xlarge</code>,
    					   <code>cache.r4.8xlarge</code>,
    					   <code>cache.r4.16xlarge</code>
                     </p>
    					   
    					   
    					   

  
    					   
    					   
    					   
    					   
    					   
    					   
    					         </li>
                  <li>
                     <p>Previous generation: (not recommended)</p>
                        <p>
                        <b>M2 node types:</b>						
    					               <code>cache.m2.xlarge</code>, 
    						<code>cache.m2.2xlarge</code>,
    						<code>cache.m2.4xlarge</code>
                     </p>
    						
    						           <p>
                        <b>R3 node types:</b>
    					               <code>cache.r3.large</code>, 
    						<code>cache.r3.xlarge</code>,
    						<code>cache.r3.2xlarge</code>,  
    						<code>cache.r3.4xlarge</code>,
    						<code>cache.r3.8xlarge</code>
                     </p>
    						
    						        </li>
               </ul>
            </li>
         </ul>
				
		       <p>
            <b>Additional node type info</b>
         </p>
		       <ul>
            <li>
               <p>All current generation instance types are created in Amazon VPC by default.</p>
            </li>
            <li>
               <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p>
            </li>
            <li>
               <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p>
            </li>
            <li>
               <p>Redis configuration variables <code>appendonly</code> and 
				<code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p>
            </li>
         </ul>")
    @as("CacheNodeType")
    cacheNodeType: option<string_>,
    @ocaml.doc("<p>The initial number of cache nodes that the cluster has.</p>
        <p>For clusters running Redis, this value must be 1. 
    For clusters running Memcached, this value must be between 1 and 40.</p>
        <p>If you need more than 40 nodes for your Memcached cluster, 
            please fill out the ElastiCache Limit Increase Request form at <a href=\"http://aws.amazon.com/contact-us/elasticache-node-limit-request/\">http://aws.amazon.com/contact-us/elasticache-node-limit-request/</a>.</p>")
    @as("NumCacheNodes")
    numCacheNodes: option<integerOptional>,
    @ocaml.doc("<p>A list of the Availability Zones in which cache nodes are created. The order of the zones in the list is not important.</p>
        <p>This option is only supported on Memcached.</p>
        <note>
            <p>If you are creating your cluster in an Amazon VPC (recommended) you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group.</p>
            <p>The number of Availability Zones listed must equal the value of <code>NumCacheNodes</code>.</p>
        </note>
        <p>If you want all the nodes in the same Availability Zone, use <code>PreferredAvailabilityZone</code> instead, or 
            repeat the Availability Zone multiple times in the list.</p>
        <p>Default: System chosen Availability Zones.</p>")
    @as("PreferredAvailabilityZones")
    preferredAvailabilityZones: option<preferredAvailabilityZoneList>,
    @ocaml.doc("<p>The EC2 Availability Zone in which the cluster is created.</p>
        <p>All nodes belonging to this cluster are placed in the preferred Availability Zone. 
            If you want to create your nodes across multiple Availability Zones, use <code>PreferredAvailabilityZones</code>.</p>
        <p>Default: System chosen Availability Zone.</p>")
    @as("PreferredAvailabilityZone")
    preferredAvailabilityZone: option<string_>,
    @ocaml.doc("<p>Specifies whether the nodes in this Memcached cluster are created in a single Availability Zone or 
            created across multiple Availability Zones in the cluster's region.</p>
        <p>This parameter is only supported for Memcached clusters.</p>
        <p>If the <code>AZMode</code> and <code>PreferredAvailabilityZones</code> are not specified, 
            ElastiCache assumes <code>single-az</code> mode.</p>")
    @as("AZMode")
    azmode: option<azmode>,
    @ocaml.doc("<p>The ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.</p>
        <p>If the specified replication group is Multi-AZ enabled and the Availability Zone is not specified, the cluster is created in Availability Zones that provide the best spread of read replicas across Availability Zones.</p>
        <note>
            <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p>
         </note>")
    @as("ReplicationGroupId")
    replicationGroupId: option<string_>,
    @ocaml.doc("<p>The node group (shard) identifier. This parameter is stored as a lowercase string.</p>        
         <p>
            <b>Constraints:</b>
         </p>
         <ul>
            <li>
               <p>A name must contain from 1 to 50 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>The first character must be a letter.</p>
            </li>
            <li>
               <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("CacheClusterId")
    cacheClusterId: string_,
  }
  type response = {@as("CacheCluster") cacheCluster: option<cacheCluster>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "CreateCacheClusterCommand"
  let make = (
    ~cacheClusterId,
    ~logDeliveryConfigurations=?,
    ~preferredOutpostArns=?,
    ~preferredOutpostArn=?,
    ~outpostMode=?,
    ~authToken=?,
    ~snapshotWindow=?,
    ~snapshotRetentionLimit=?,
    ~autoMinorVersionUpgrade=?,
    ~notificationTopicArn=?,
    ~port=?,
    ~preferredMaintenanceWindow=?,
    ~snapshotName=?,
    ~snapshotArns=?,
    ~tags=?,
    ~securityGroupIds=?,
    ~cacheSecurityGroupNames=?,
    ~cacheSubnetGroupName=?,
    ~cacheParameterGroupName=?,
    ~engineVersion=?,
    ~engine=?,
    ~cacheNodeType=?,
    ~numCacheNodes=?,
    ~preferredAvailabilityZones=?,
    ~preferredAvailabilityZone=?,
    ~azmode=?,
    ~replicationGroupId=?,
    (),
  ) =>
    new({
      logDeliveryConfigurations,
      preferredOutpostArns,
      preferredOutpostArn,
      outpostMode,
      authToken,
      snapshotWindow,
      snapshotRetentionLimit,
      autoMinorVersionUpgrade,
      notificationTopicArn,
      port,
      preferredMaintenanceWindow,
      snapshotName,
      snapshotArns,
      tags,
      securityGroupIds,
      cacheSecurityGroupNames,
      cacheSubnetGroupName,
      cacheParameterGroupName,
      engineVersion,
      engine,
      cacheNodeType,
      numCacheNodes,
      preferredAvailabilityZones,
      preferredAvailabilityZone,
      azmode,
      replicationGroupId,
      cacheClusterId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CompleteMigration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Forces the migration to stop without ensuring that data is in sync. It is recommended to use this option only to abort the migration and not recommended when application wants to continue migration to ElastiCache.</p>"
    )
    @as("Force")
    force: option<boolean_>,
    @ocaml.doc("<p>The ID of the replication group to which data is being migrated.</p>")
    @as("ReplicationGroupId")
    replicationGroupId: string_,
  }
  type response = {@as("ReplicationGroup") replicationGroup: option<replicationGroup>}
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "CompleteMigrationCommand"
  let make = (~replicationGroupId, ~force=?, ()) => new({force, replicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeReplicationGroups = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DescribeReplicationGroups</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this
            parameter is specified, the response includes only records beyond the marker, up to the
            value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
            specified <code>MaxRecords</code> value, a marker is included in the response so that
            the remaining results can be retrieved.</p>

        <p>Default: 100</p>
        <p>Constraints: minimum 20; maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The identifier for the replication group to be described. This parameter is not case sensitive.</p>
        <p>If you do not specify this parameter, information about all replication groups is returned.</p>")
    @as("ReplicationGroupId")
    replicationGroupId: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of a <code>DescribeReplicationGroups</code> operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A list of replication groups. Each item in the list contains detailed information about one replication group.</p>"
    )
    @as("ReplicationGroups")
    replicationGroups: option<replicationGroupList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeReplicationGroupsCommand"
  let make = (~marker=?, ~maxRecords=?, ~replicationGroupId=?, ()) =>
    new({marker, maxRecords, replicationGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCacheClusters = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DescribeCacheClusters</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An optional flag that can be included in the <code>DescribeCacheCluster</code> request
            to show only nodes (API/CLI: clusters) that are not members of a replication group.
            In practice, this mean Memcached and single node Redis clusters.</p>")
    @as("ShowCacheClustersNotInReplicationGroups")
    showCacheClustersNotInReplicationGroups: option<booleanOptional>,
    @ocaml.doc("<p>An optional flag that can be included in the <code>DescribeCacheCluster</code> request 
            to retrieve information about the individual cache nodes.</p>")
    @as("ShowCacheNodeInfo")
    showCacheNodeInfo: option<booleanOptional>,
    @ocaml.doc("<p>An optional marker returned from a prior request. 
            Use this marker for pagination of results from this operation. If this
            parameter is specified, the response includes only records beyond the marker, up to the
            value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
            specified <code>MaxRecords</code> value, a marker is included in the response so that
            the remaining results can be retrieved.</p>

        <p>Default: 100</p>
        <p>Constraints: minimum 20; maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The user-supplied cluster identifier. If this parameter is specified, only information
            about that specific cluster is returned. This parameter isn't case sensitive.</p>")
    @as("CacheClusterId")
    cacheClusterId: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of a <code>DescribeCacheClusters</code> operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A list of clusters. Each item in the list contains detailed information about one cluster.</p>"
    )
    @as("CacheClusters")
    cacheClusters: option<cacheClusterList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-elasticache") @new
  external new: request => t = "DescribeCacheClustersCommand"
  let make = (
    ~showCacheClustersNotInReplicationGroups=?,
    ~showCacheNodeInfo=?,
    ~marker=?,
    ~maxRecords=?,
    ~cacheClusterId=?,
    (),
  ) =>
    new({
      showCacheClustersNotInReplicationGroups,
      showCacheNodeInfo,
      marker,
      maxRecords,
      cacheClusterId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
