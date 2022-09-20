type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-memorydb") @new
external createClient: unit => awsServiceClient = "MemoryDBClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type userName = string
type targetBucket = string
type tstamp = Js.Date.t
type string_ = string
type sourceType = [
  | @as("acl") #Acl
  | @as("user") #User
  | @as("cluster") #Cluster
  | @as("subnet-group") #Subnet_Group
  | @as("parameter-group") #Parameter_Group
  | @as("node") #Node
]
type serviceUpdateType = [@as("security-update") #Security_Update]
type serviceUpdateStatus = [
  | @as("scheduled") #Scheduled
  | @as("complete") #Complete
  | @as("in-progress") #In_Progress
  | @as("available") #Available
]
type kmsKeyId = string
type integerOptional = int
type integer_ = int
type inputAuthenticationType = [@as("password") #Password]
type filterValue = string
type filterName = string
type exceptionMessage = string
type double = float
type booleanOptional = bool
type boolean_ = bool
type awsQueryErrorMessage = string
type authenticationType = [@as("no-password") #No_Password | @as("password") #Password]
type accessString = string
type azstatus = [@as("multiaz") #Multiaz | @as("singleaz") #Singleaz]
type aclname = string
type userNameListInput = array<userName>
type userNameList = array<userName>
@ocaml.doc("<p>A cluster whose updates have failed</p>")
type unprocessedCluster = {
  @ocaml.doc("<p>The error message associated with the update failure</p>") @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc("<p>The error type associated with the update failure</p>") @as("ErrorType")
  errorType: option<string_>,
  @ocaml.doc("<p>The name of the cluster</p>") @as("ClusterName") clusterName: option<string_>,
}
@ocaml.doc("<p>A tag that can be added to an MemoryDB resource. Tags are composed of a Key/Value pair. You can use tags to categorize and track all your MemoryDB resources. 
         When you add or remove tags on clusters, those actions will be replicated to all nodes in the cluster. A tag with a null Value is permitted. For more information, see 
         <a href=\"https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging-resources.html\">Tagging your MemoryDB resources</a>
         </p>")
type tag = {
  @ocaml.doc("<p>The tag's value. May be null.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>The key for the tag. May not be null.</p>") @as("Key") key: option<string_>,
}
type subnetIdentifierList = array<string_>
type snapshotArnsList = array<string_>
@ocaml.doc("<p>Represents the progress of an online resharding operation.</p>")
type slotMigration = {
  @ocaml.doc("<p>The percentage of the slot migration that is complete.</p>")
  @as("ProgressPercentage")
  progressPercentage: option<double>,
}
@ocaml.doc("<p>A request to configure the sharding properties of a cluster</p>")
type shardConfigurationRequest = {
  @ocaml.doc("<p>The number of shards in the cluster</p>") @as("ShardCount")
  shardCount: option<integer_>,
}
@ocaml.doc(
  "<p>Shard configuration options. Each shard configuration has the following: Slots and ReplicaCount.</p>"
)
type shardConfiguration = {
  @ocaml.doc("<p>The number of read replica nodes in this shard.</p>") @as("ReplicaCount")
  replicaCount: option<integerOptional>,
  @ocaml.doc(
    "<p>A string that specifies the keyspace for a particular node group. Keyspaces range from 0 to 16,383. The string is in the format startkey-endkey.</p>"
  )
  @as("Slots")
  slots: option<string_>,
}
type serviceUpdateStatusList = array<serviceUpdateStatus>
@ocaml.doc("<p>A request to apply a service update</p>")
type serviceUpdateRequest = {
  @ocaml.doc("<p>The unique ID of the service update</p>") @as("ServiceUpdateNameToApply")
  serviceUpdateNameToApply: option<string_>,
}
@ocaml.doc("<p>An update that you can apply to your MemoryDB clusters.</p>")
type serviceUpdate = {
  @ocaml.doc("<p>The date at which the service update will be automatically applied</p>")
  @as("AutoUpdateStartDate")
  autoUpdateStartDate: option<tstamp>,
  @ocaml.doc("<p>A list of nodes updated by the service update</p>") @as("NodesUpdated")
  nodesUpdated: option<string_>,
  @ocaml.doc("<p>Reflects the nature of the service update</p>") @as("Type")
  type_: option<serviceUpdateType>,
  @ocaml.doc("<p>The status of the service update</p>") @as("Status")
  status: option<serviceUpdateStatus>,
  @ocaml.doc("<p>Provides details of the service update</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The date when the service update is initially available</p>") @as("ReleaseDate")
  releaseDate: option<tstamp>,
  @ocaml.doc("<p>The unique ID of the service update</p>") @as("ServiceUpdateName")
  serviceUpdateName: option<string_>,
  @ocaml.doc("<p>The name of the cluster to which the service update applies</p>")
  @as("ClusterName")
  clusterName: option<string_>,
}
@ocaml.doc("<p>Represents a single security group and its status.</p>")
type securityGroupMembership = {
  @ocaml.doc(
    "<p>The status of the security group membership. The status changes whenever a security group is modified, or when the security groups assigned to a cluster are modified.</p>"
  )
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The identifier of the security group.</p>") @as("SecurityGroupId")
  securityGroupId: option<string_>,
}
type securityGroupIdsList = array<string_>
@ocaml.doc("<p>A request to configure the number of replicas in a shard</p>")
type replicaConfigurationRequest = {
  @ocaml.doc("<p>The number of replicas to scale up or down to</p>") @as("ReplicaCount")
  replicaCount: option<integer_>,
}
@ocaml.doc(
  "<p>Update action that has yet to be processed for the corresponding apply/stop request</p>"
)
type pendingModifiedServiceUpdate = {
  @ocaml.doc("<p>The status of the service update</p>") @as("Status")
  status: option<serviceUpdateStatus>,
  @ocaml.doc("<p>The unique ID of the service update</p>") @as("ServiceUpdateName")
  serviceUpdateName: option<string_>,
}
type passwordListInput = array<string_>
@ocaml.doc("<p>Describes a name-value pair that is used to update the value of a parameter.</p>")
type parameterNameValue = {
  @ocaml.doc("<p>The value of the parameter</p>") @as("ParameterValue")
  parameterValue: option<string_>,
  @ocaml.doc("<p>The name of the parameter</p>") @as("ParameterName")
  parameterName: option<string_>,
}
type parameterNameList = array<string_>
@ocaml.doc(
  "<p>Represents the output of a CreateParameterGroup operation. A parameter group represents a combination of specific values for the parameters that are passed to the engine software during startup.</p>"
)
type parameterGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the parameter group</p>") @as("ARN")
  arn: option<string_>,
  @ocaml.doc("<p>A description of the parameter group</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc(
    "<p>The name of the parameter group family that this  parameter group is compatible with.</p>"
  )
  @as("Family")
  family: option<string_>,
  @ocaml.doc("<p>The name of the parameter group</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Describes an individual setting that controls some aspect of MemoryDB behavior.</p>")
type parameter = {
  @ocaml.doc("<p>The earliest engine version to which the parameter can apply.</p>")
  @as("MinimumEngineVersion")
  minimumEngineVersion: option<string_>,
  @ocaml.doc("<p>The valid range of values for the parameter.</p>") @as("AllowedValues")
  allowedValues: option<string_>,
  @ocaml.doc("<p>The parameter's data type</p>") @as("DataType") dataType: option<string_>,
  @ocaml.doc("<p>A description of the parameter</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The value of the parameter</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>The name of the parameter</p>") @as("Name") name: option<string_>,
}
type nodeTypeList = array<string_>
type keyList = array<string_>
type filterValueList = array<filterValue>
@ocaml.doc("<p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a cluster or adding or removing a 
         node.</p>")
type event = {
  @ocaml.doc("<p>The date and time when the event occurred.</p>") @as("Date") date: option<tstamp>,
  @ocaml.doc("<p>The text of the event.</p>") @as("Message") message: option<string_>,
  @ocaml.doc(
    "<p>Specifies the origin of this event - a cluster, a parameter group, a security group, etc.</p>"
  )
  @as("SourceType")
  sourceType: option<sourceType>,
  @ocaml.doc(
    "<p>The name for the source of the event. For example, if the event occurred at the cluster level, the identifier would be the name of the cluster.</p>"
  )
  @as("SourceName")
  sourceName: option<string_>,
}
@ocaml.doc("<p>Provides details of the Redis engine version</p>")
type engineVersionInfo = {
  @ocaml.doc(
    "<p>Specifies the name of the parameter group family to which the engine default parameters apply.</p>"
  )
  @as("ParameterGroupFamily")
  parameterGroupFamily: option<string_>,
  @ocaml.doc("<p>The patched engine version</p>") @as("EnginePatchVersion")
  enginePatchVersion: option<string_>,
  @ocaml.doc("<p>The engine version</p>") @as("EngineVersion") engineVersion: option<string_>,
}
@ocaml.doc(
  "<p>Represents the information required for client programs to connect to the cluster and its nodes.</p>"
)
type endpoint = {
  @ocaml.doc("<p>The port number that the engine is listening on.</p>") @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>The DNS hostname of the node.</p>") @as("Address") address: option<string_>,
}
type clusterNameList = array<string_>
@ocaml.doc(
  "<p>Indicates if the cluster has a Multi-AZ configuration (multiaz) or not (singleaz).</p>"
)
type availabilityZone = {
  @ocaml.doc("<p>The name of the Availability Zone.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc(
  "<p>Denotes the user's authentication properties, such as whether it requires a password to authenticate. Used in output responses.</p>"
)
type authentication = {
  @ocaml.doc("<p>The number of passwords belonging to the user. The maximum is two.</p>")
  @as("PasswordCount")
  passwordCount: option<integerOptional>,
  @ocaml.doc("<p>Indicates whether the user requires a password to authenticate.</p>") @as("Type")
  type_: option<authenticationType>,
}
@ocaml.doc("<p>The status of the ACL update</p>")
type aclsUpdateStatus = {
  @ocaml.doc("<p>A list of ACLs pending to be applied.</p>") @as("ACLToApply")
  acltoApply: option<aclname>,
}
type aclnameList = array<aclname>
type aclclusterNameList = array<string_>
@ocaml.doc(
  "<p>You create users and assign them specific permissions by using an access string. You assign the users to Access Control Lists aligned with a specific role (administrators, human resources) that are then deployed to one or more MemoryDB clusters.</p>"
)
type user = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user.
         
      </p>")
  @as("ARN")
  arn: option<string_>,
  @ocaml.doc("<p>Denotes whether the user requires a password to authenticate.</p>")
  @as("Authentication")
  authentication: option<authentication>,
  @ocaml.doc("<p>The minimum engine version supported for the user</p>") @as("MinimumEngineVersion")
  minimumEngineVersion: option<string_>,
  @ocaml.doc("<p>The names of the Access Control Lists to which the user belongs</p>")
  @as("ACLNames")
  aclnames: option<aclnameList>,
  @ocaml.doc("<p>Access permissions string used for this user.</p>") @as("AccessString")
  accessString: option<string_>,
  @ocaml.doc("<p>Indicates the user status. Can be \"active\", \"modifying\" or \"deleting\".</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The name of the user</p>") @as("Name") name: option<string_>,
}
type unprocessedClusterList = array<unprocessedCluster>
type tagList_ = array<tag>
@ocaml.doc(
  "<p>Represents the subnet associated with a cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with MemoryDB.</p>"
)
type subnet = {
  @ocaml.doc("<p>The Availability Zone where the subnet resides</p>") @as("AvailabilityZone")
  availabilityZone: option<availabilityZone>,
  @ocaml.doc("<p>The unique identifier for the subnet.</p>") @as("Identifier")
  identifier: option<string_>,
}
@ocaml.doc("<p>Provides details of a shard in a snapshot</p>")
type shardDetail = {
  @ocaml.doc("<p>The date and time that the shard's snapshot was created</p>")
  @as("SnapshotCreationTime")
  snapshotCreationTime: option<tstamp>,
  @ocaml.doc("<p>The size of the shard's snapshot</p>") @as("Size") size: option<string_>,
  @ocaml.doc("<p>The configuration details of the shard</p>") @as("Configuration")
  configuration: option<shardConfiguration>,
  @ocaml.doc("<p>The name of the shard</p>") @as("Name") name: option<string_>,
}
type serviceUpdateList = array<serviceUpdate>
type securityGroupMembershipList = array<securityGroupMembership>
@ocaml.doc("<p>The status of the online resharding</p>")
type reshardingStatus = {
  @ocaml.doc("<p>The status of the online resharding slot migration</p>") @as("SlotMigration")
  slotMigration: option<slotMigration>,
}
type pendingModifiedServiceUpdateList = array<pendingModifiedServiceUpdate>
type parametersList = array<parameter>
type parameterNameValueList = array<parameterNameValue>
type parameterGroupList = array<parameterGroup>
@ocaml.doc(
  "<p>Represents an individual node within a cluster. Each node runs its own instance of the cluster's protocol-compliant caching software.</p>"
)
type node = {
  @ocaml.doc("<p>The hostname for connecting to this node.</p>") @as("Endpoint")
  endpoint: option<endpoint>,
  @ocaml.doc("<p>The date and time when the node was created.</p>") @as("CreateTime")
  createTime: option<tstamp>,
  @ocaml.doc("<p>The Availability Zone in which the node resides</p>") @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc("<p>The status of the service update on the node</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc(
    "<p>The  node identifier. A node name is a numeric identifier (0001, 0002, etc.). The combination of cluster name, shard name and node name uniquely identifies every node used in a customer's Amazon account.</p>"
  )
  @as("Name")
  name: option<string_>,
}
@ocaml.doc("<p>Used to streamline results of a search based on the property being filtered.</p>")
type filter = {
  @ocaml.doc("<p>The property values to filter on. For example, \"user-123\".</p>") @as("Values")
  values: filterValueList,
  @ocaml.doc("<p>The property being filtered. For example, UserName.</p>") @as("Name")
  name: filterName,
}
type eventList = array<event>
type engineVersionInfoList = array<engineVersionInfo>
@ocaml.doc(
  "<p>Denotes the user's authentication properties, such as whether it requires a password to authenticate. Used in output responses.</p>"
)
type authenticationMode = {
  @ocaml.doc("<p>The password(s) used for authentication</p>") @as("Passwords")
  passwords: option<passwordListInput>,
  @ocaml.doc(
    "<p>Indicates whether the user requires a password to authenticate. All newly-created users require a password.</p>"
  )
  @as("Type")
  type_: option<inputAuthenticationType>,
}
@ocaml.doc("<p>Returns the updates being applied to the ACL.</p>")
type aclpendingChanges = {
  @ocaml.doc("<p>A list of users being added to the ACL</p>") @as("UserNamesToAdd")
  userNamesToAdd: option<userNameList>,
  @ocaml.doc("<p>A list of user names being removed from the ACL</p>") @as("UserNamesToRemove")
  userNamesToRemove: option<userNameList>,
}
type userList = array<user>
type subnetList = array<subnet>
type shardDetails = array<shardDetail>
type nodeList = array<node>
type filterList = array<filter>
@ocaml.doc("<p>A list of updates being applied to the cluster</p>")
type clusterPendingUpdates = {
  @ocaml.doc("<p>A list of service updates being applied to the cluster</p>") @as("ServiceUpdates")
  serviceUpdates: option<pendingModifiedServiceUpdateList>,
  @ocaml.doc("<p>A list of ACLs associated with the cluster that are being updated</p>") @as("ACLs")
  acls: option<aclsUpdateStatus>,
  @ocaml.doc("<p>The status of an online resharding operation.</p>") @as("Resharding")
  resharding: option<reshardingStatus>,
}
@ocaml.doc("<p>An Access Control List. You can authenticate users with Access Contol Lists.
         
         ACLs enable you to control cluster access by grouping users. These Access control lists are designed as a way to organize access to clusters.</p>")
type acl = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the ACL</p>") @as("ARN") arn: option<string_>,
  @ocaml.doc("<p>A list of clusters associated with the ACL.</p>") @as("Clusters")
  clusters: option<aclclusterNameList>,
  @ocaml.doc("<p>A list of updates being applied to the ACL.</p>") @as("PendingChanges")
  pendingChanges: option<aclpendingChanges>,
  @ocaml.doc("<p>The minimum engine version supported for the ACL</p>") @as("MinimumEngineVersion")
  minimumEngineVersion: option<string_>,
  @ocaml.doc("<p>The list of user names that belong to the ACL.</p>") @as("UserNames")
  userNames: option<userNameList>,
  @ocaml.doc(
    "<p>Indicates ACL status. Can be \"creating\", \"active\", \"modifying\", \"deleting\".</p>"
  )
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The name of the Access Control List</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Represents the output of one of the following operations:</p>
         <ul>
            <li>
               <p>CreateSubnetGroup</p>
            </li>
            <li>
               <p>UpdateSubnetGroup</p>
            </li>
         </ul>  
         <p>A subnet group is a collection of subnets (typically private) that you can designate for your clusters running in an Amazon Virtual Private Cloud (VPC) environment.</p>")
type subnetGroup = {
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the subnet group.</p>") @as("ARN")
  arn: option<string_>,
  @ocaml.doc("<p>A list of subnets associated with the subnet group.</p>") @as("Subnets")
  subnets: option<subnetList>,
  @ocaml.doc("<p>The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.</p>")
  @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>A description of the subnet group</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the subnet group</p>") @as("Name") name: option<string_>,
}
@ocaml.doc(
  "<p>Represents a collection of nodes in a cluster. One node in the node group is the read/write primary node. All the other nodes are read-only Replica nodes.</p>"
)
type shard = {
  @ocaml.doc("<p>The number of nodes in the shard</p>") @as("NumberOfNodes")
  numberOfNodes: option<integerOptional>,
  @ocaml.doc("<p>A list containing information about individual nodes within the shard</p>")
  @as("Nodes")
  nodes: option<nodeList>,
  @ocaml.doc("<p>The keyspace for this shard.</p>") @as("Slots") slots: option<string_>,
  @ocaml.doc(
    "<p>The current state of this replication group - creating, available, modifying, deleting.</p>"
  )
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The name of the shard</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>A list of cluster configuration options. </p>")
type clusterConfiguration = {
  @ocaml.doc("<p>The list of shards in the cluster</p>") @as("Shards") shards: option<shardDetails>,
  @ocaml.doc("<p>The number of shards in the cluster</p>") @as("NumShards")
  numShards: option<integerOptional>,
  @ocaml.doc("<p>The snapshot window set by the cluster</p>") @as("SnapshotWindow")
  snapshotWindow: option<string_>,
  @ocaml.doc("<p>The snapshot retention limit set by the cluster</p>") @as("SnapshotRetentionLimit")
  snapshotRetentionLimit: option<integerOptional>,
  @ocaml.doc("<p>The ID of the VPC the cluster belongs to</p>") @as("VpcId") vpcId: option<string_>,
  @ocaml.doc("<p>The name of the subnet group used by the cluster</p>") @as("SubnetGroupName")
  subnetGroupName: option<string_>,
  @ocaml.doc("<p>The name of parameter group used by the cluster</p>") @as("ParameterGroupName")
  parameterGroupName: option<string_>,
  @ocaml.doc("<p>The port used by the cluster</p>") @as("Port") port: option<integerOptional>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SNS notification topic for the cluster</p>")
  @as("TopicArn")
  topicArn: option<string_>,
  @ocaml.doc("<p>The specified maintenance window for the cluster</p>") @as("MaintenanceWindow")
  maintenanceWindow: option<string_>,
  @ocaml.doc("<p>The Redis engine version used by the cluster</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The node type used for the cluster</p>") @as("NodeType") nodeType: option<string_>,
  @ocaml.doc("<p>The description of the cluster configuration</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the cluster</p>") @as("Name") name: option<string_>,
}
type acllist = array<acl>
type subnetGroupList = array<subnetGroup>
@ocaml.doc(
  "<p>Represents a copy of an entire cluster as of the time when the snapshot was taken.</p>"
)
type snapshot = {
  @ocaml.doc("<p>The configuration of the cluster from which the snapshot was taken</p>")
  @as("ClusterConfiguration")
  clusterConfiguration: option<clusterConfiguration>,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the snapshot.</p>") @as("ARN")
  arn: option<string_>,
  @ocaml.doc("<p>The ID of the KMS key used to encrypt the snapshot.</p>") @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc(
    "<p>Indicates whether the snapshot is from an automatic backup (automated) or was created manually (manual).</p>"
  )
  @as("Source")
  source: option<string_>,
  @ocaml.doc(
    "<p>The status of the snapshot. Valid values: creating | available | restoring | copying | deleting.</p>"
  )
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The name of the snapshot</p>") @as("Name") name: option<string_>,
}
type shardList = array<shard>
type snapshotList = array<snapshot>
@ocaml.doc("<p>Contains all of the attributes of a specific cluster.</p>")
type cluster = {
  @ocaml.doc(
    "<p>When set to true, the cluster will automatically receive minor engine version upgrades after launch.</p>"
  )
  @as("AutoMinorVersionUpgrade")
  autoMinorVersionUpgrade: option<booleanOptional>,
  @ocaml.doc("<p>The name of the Access Control List associated with this cluster.</p>")
  @as("ACLName")
  aclname: option<aclname>,
  @ocaml.doc("<p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard.
         
         Example: 05:00-09:00
         
         If you do not specify this parameter, MemoryDB automatically chooses an appropriate time range.</p>")
  @as("SnapshotWindow")
  snapshotWindow: option<string_>,
  @ocaml.doc(
    "<p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. </p>"
  )
  @as("MaintenanceWindow")
  maintenanceWindow: option<string_>,
  @ocaml.doc(
    "<p>The number of days for which MemoryDB retains automatic snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>"
  )
  @as("SnapshotRetentionLimit")
  snapshotRetentionLimit: option<integerOptional>,
  @ocaml.doc("<p>The SNS topic must be in Active status to receive notifications</p>")
  @as("SnsTopicStatus")
  snsTopicStatus: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SNS notification topic</p>")
  @as("SnsTopicArn")
  snsTopicArn: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ARN")
  arn: option<string_>,
  @ocaml.doc("<p>The ID of the KMS key used to encrypt the cluster</p>") @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>A flag to indicate if In-transit encryption is enabled</p>") @as("TLSEnabled")
  tlsenabled: option<booleanOptional>,
  @ocaml.doc("<p>The name of the subnet group used by the cluster</p>") @as("SubnetGroupName")
  subnetGroupName: option<string_>,
  @ocaml.doc("<p>A list of security groups used by the cluster</p>") @as("SecurityGroups")
  securityGroups: option<securityGroupMembershipList>,
  @ocaml.doc(
    "<p>The status of the parameter group used by the cluster, for example 'active' or 'applying'.</p>"
  )
  @as("ParameterGroupStatus")
  parameterGroupStatus: option<string_>,
  @ocaml.doc("<p>The name of the parameter group used by the cluster</p>") @as("ParameterGroupName")
  parameterGroupName: option<string_>,
  @ocaml.doc("<p>The Redis engine patch version used by the cluster</p>") @as("EnginePatchVersion")
  enginePatchVersion: option<string_>,
  @ocaml.doc("<p>The Redis engine version used by the cluster</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The cluster's node type</p>") @as("NodeType") nodeType: option<string_>,
  @ocaml.doc("<p>The cluster's configuration endpoint</p>") @as("ClusterEndpoint")
  clusterEndpoint: option<endpoint>,
  @ocaml.doc(
    "<p>Indicates if the cluster has a Multi-AZ configuration (multiaz) or not (singleaz).</p>"
  )
  @as("AvailabilityMode")
  availabilityMode: option<azstatus>,
  @ocaml.doc("<p>A list of shards that are members of the cluster.</p>") @as("Shards")
  shards: option<shardList>,
  @ocaml.doc("<p>The number of shards in the cluster</p>") @as("NumberOfShards")
  numberOfShards: option<integerOptional>,
  @ocaml.doc("<p>A group of settings that are currently being applied.</p>") @as("PendingUpdates")
  pendingUpdates: option<clusterPendingUpdates>,
  @ocaml.doc("<p>The status of the cluster. For example, Available, Updating, Creating.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>A description of the cluster</p>") @as("Description") description: option<string_>,
  @ocaml.doc(
    "<p>The user-supplied name of the cluster. This identifier is a unique key that identifies a cluster.</p>"
  )
  @as("Name")
  name: option<string_>,
}
type clusterList = array<cluster>
@ocaml.doc("<p>MemoryDB for Redis is a fully managed, Redis-compatible, in-memory database that delivers ultra-fast performance and Multi-AZ durability for modern applications built using microservices architectures.
       
       MemoryDB stores the entire database in-memory, enabling low latency and high throughput data access. It is compatible with Redis, a popular open source data store, enabling you to leverage Redis’ flexible and friendly data structures, APIs, and commands.</p>")
module ResetParameterGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of parameter names to reset to their default values. If AllParameters is true, do not use ParameterNames. If AllParameters is false, you must specify the name of at least one parameter to reset.</p>"
    )
    @as("ParameterNames")
    parameterNames: option<parameterNameList>,
    @ocaml.doc(
      "<p>If true, all parameters in the parameter group are reset to their default values. If false, only the parameters listed by ParameterNames are reset to their default values.</p>"
    )
    @as("AllParameters")
    allParameters: option<boolean_>,
    @ocaml.doc("<p>The name of the parameter group to reset.</p>") @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>The parameter group being reset.</p>") @as("ParameterGroup")
    parameterGroup: option<parameterGroup>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "ResetParameterGroupCommand"
  let make = (~parameterGroupName, ~parameterNames=?, ~allParameters=?, ()) =>
    new({parameterNames, allParameters, parameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAllowedNodeTypeUpdates = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the cluster you want to scale. MemoryDB uses the cluster name to identify the current node type being used by this cluster, and from that to create a list of node types
         you can scale up to.</p>")
    @as("ClusterName")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>A list node types which you can use to scale down your cluster.</p>")
    @as("ScaleDownNodeTypes")
    scaleDownNodeTypes: option<nodeTypeList>,
    @ocaml.doc("<p>A list node types which you can use to scale up your cluster.</p>")
    @as("ScaleUpNodeTypes")
    scaleUpNodeTypes: option<nodeTypeList>,
  }
  @module("@aws-sdk/client-memorydb") @new
  external new: request => t = "ListAllowedNodeTypeUpdatesCommand"
  let make = (~clusterName, ()) => new({clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteParameterGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the parameter group to delete.</p>") @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>The parameter group that has been deleted.</p>") @as("ParameterGroup")
    parameterGroup: option<parameterGroup>,
  }
  @module("@aws-sdk/client-memorydb") @new
  external new: request => t = "DeleteParameterGroupCommand"
  let make = (~parameterGroupName, ()) => new({parameterGroupName: parameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateUser = {
  type t
  type request = {
    @ocaml.doc("<p>Access permissions string used for this user.</p>") @as("AccessString")
    accessString: option<accessString>,
    @ocaml.doc(
      "<p>Denotes the user's authentication properties, such as whether it requires a password to authenticate.</p>"
    )
    @as("AuthenticationMode")
    authenticationMode: option<authenticationMode>,
    @ocaml.doc("<p>The name of the user</p>") @as("UserName") userName: userName,
  }
  type response = {@ocaml.doc("<p>The updated user</p>") @as("User") user: option<user>}
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "UpdateUserCommand"
  let make = (~userName, ~accessString=?, ~authenticationMode=?, ()) =>
    new({accessString, authenticationMode, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateParameterGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of parameter names and values for the parameter update. You must supply at least one parameter name and value; subsequent arguments are optional. A maximum of 20 parameters may be updated per request.</p>"
    )
    @as("ParameterNameValues")
    parameterNameValues: parameterNameValueList,
    @ocaml.doc("<p>The name of the parameter group to update.</p>") @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>The updated parameter group</p>") @as("ParameterGroup")
    parameterGroup: option<parameterGroup>,
  }
  @module("@aws-sdk/client-memorydb") @new
  external new: request => t = "UpdateParameterGroupCommand"
  let make = (~parameterNameValues, ~parameterGroupName, ()) =>
    new({parameterNameValues, parameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of keys of the tags that are to be removed</p>") @as("TagKeys")
    tagKeys: keyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource to which the tags are to be removed</p>"
    )
    @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The list of tags removed</p>") @as("TagList") tagList_: option<tagList_>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: tagList_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource to which the tags are to be added</p>"
    )
    @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {
    @ocaml.doc("<p>A list of tags as key-value pairs.</p>") @as("TagList")
    tagList_: option<tagList_>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTags = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource for which you want the list of tags</p>"
    )
    @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {
    @ocaml.doc("<p>A list of tags as key-value pairs.</p>") @as("TagList")
    tagList_: option<tagList_>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "ListTagsCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeServiceUpdates = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"
    )
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>The status(es) of the service updates to filter on</p>") @as("Status")
    status: option<serviceUpdateStatusList>,
    @ocaml.doc("<p>The list of cluster names to identify service updates to apply</p>")
    @as("ClusterNames")
    clusterNames: option<clusterNameList>,
    @ocaml.doc("<p>The unique ID of the service update to describe.</p>") @as("ServiceUpdateName")
    serviceUpdateName: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A list of service updates</p>") @as("ServiceUpdates")
    serviceUpdates: option<serviceUpdateList>,
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-memorydb") @new
  external new: request => t = "DescribeServiceUpdatesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~status=?, ~clusterNames=?, ~serviceUpdateName=?, ()) =>
    new({nextToken, maxResults, status, clusterNames, serviceUpdateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeParameters = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"
    )
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>he name of a specific  parameter group to return details for.</p>")
    @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of parameters specific to a particular parameter group. Each element in the list contains detailed information about one parameter.</p>"
    )
    @as("Parameters")
    parameters: option<parametersList>,
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "DescribeParametersCommand"
  let make = (~parameterGroupName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, parameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeParameterGroups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"
    )
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>The name of a specific  parameter group to return details for.</p>")
    @as("ParameterGroupName")
    parameterGroupName: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of parameter groups. Each element in the list contains detailed information about one parameter group.</p>"
    )
    @as("ParameterGroups")
    parameterGroups: option<parameterGroupList>,
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-memorydb") @new
  external new: request => t = "DescribeParameterGroupsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~parameterGroupName=?, ()) =>
    new({nextToken, maxResults, parameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeEvents = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"
    )
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>The number of minutes worth of events to retrieve.</p>") @as("Duration")
    duration: option<integerOptional>,
    @ocaml.doc("<p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.
         
         Example: 2017-03-30T07:03:49.555Z</p>")
    @as("EndTime")
    endTime: option<tstamp>,
    @ocaml.doc("<p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.
         
         Example: 2017-03-30T07:03:49.555Z</p>")
    @as("StartTime")
    startTime: option<tstamp>,
    @ocaml.doc(
      "<p>The event source to retrieve events for. If no value is specified, all events are returned.</p>"
    )
    @as("SourceType")
    sourceType: option<sourceType>,
    @ocaml.doc(
      "<p>The identifier of the event source for which events are returned. If not specified, all sources are included in the response.</p>"
    )
    @as("SourceName")
    sourceName: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of events. Each element in the list contains detailed information about one event.</p>"
    )
    @as("Events")
    events: option<eventList>,
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "DescribeEventsCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~duration=?,
    ~endTime=?,
    ~startTime=?,
    ~sourceType=?,
    ~sourceName=?,
    (),
  ) => new({nextToken, maxResults, duration, endTime, startTime, sourceType, sourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeEngineVersions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>If true, specifies that only the default version of the specified engine or engine and major version combination is to be returned.</p>"
    )
    @as("DefaultOnly")
    defaultOnly: option<boolean_>,
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"
    )
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>The name of a specific parameter group family to return details for.</p>")
    @as("ParameterGroupFamily")
    parameterGroupFamily: option<string_>,
    @ocaml.doc("<p>The Redis engine version</p>") @as("EngineVersion")
    engineVersion: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of engine version details. Each element in the list contains detailed information about one engine version.</p>"
    )
    @as("EngineVersions")
    engineVersions: option<engineVersionInfoList>,
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-memorydb") @new
  external new: request => t = "DescribeEngineVersionsCommand"
  let make = (
    ~defaultOnly=?,
    ~nextToken=?,
    ~maxResults=?,
    ~parameterGroupFamily=?,
    ~engineVersion=?,
    (),
  ) => new({defaultOnly, nextToken, maxResults, parameterGroupFamily, engineVersion})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteUser = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the user to delete</p>") @as("UserName") userName: userName,
  }
  type response = {
    @ocaml.doc("<p>The user object that has been deleted.</p>") @as("User") user: option<user>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "DeleteUserCommand"
  let make = (~userName, ()) => new({userName: userName})
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
    @ocaml.doc("<p>Access permissions string used for this user.</p>") @as("AccessString")
    accessString: accessString,
    @ocaml.doc(
      "<p>Denotes the user's authentication properties, such as whether it requires a password to authenticate.</p>"
    )
    @as("AuthenticationMode")
    authenticationMode: authenticationMode,
    @ocaml.doc(
      "<p>The name of the user. This value must be unique as it also serves as the user identifier.</p>"
    )
    @as("UserName")
    userName: userName,
  }
  type response = {@ocaml.doc("<p>The newly-created user.</p>") @as("User") user: option<user>}
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "CreateUserCommand"
  let make = (~accessString, ~authenticationMode, ~userName, ~tags=?, ()) =>
    new({tags, accessString, authenticationMode, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateParameterGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>An optional description of the parameter group.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc(
      "<p>The name of the parameter group family that the parameter group can be used with.</p>"
    )
    @as("Family")
    family: string_,
    @ocaml.doc("<p>The name of the parameter group.</p>") @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>The newly-created parameter group.</p>") @as("ParameterGroup")
    parameterGroup: option<parameterGroup>,
  }
  @module("@aws-sdk/client-memorydb") @new
  external new: request => t = "CreateParameterGroupCommand"
  let make = (~family, ~parameterGroupName, ~tags=?, ~description=?, ()) =>
    new({tags, description, family, parameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateACL = {
  type t
  type request = {
    @ocaml.doc("<p>The list of users to remove from the Access Control List</p>")
    @as("UserNamesToRemove")
    userNamesToRemove: option<userNameListInput>,
    @ocaml.doc("<p>The list of users to add to the Access Control List</p>") @as("UserNamesToAdd")
    userNamesToAdd: option<userNameListInput>,
    @ocaml.doc("<p>The name of the Access Control List</p>") @as("ACLName") aclname: string_,
  }
  type response = {@ocaml.doc("<p>The updated Access Control List</p>") @as("ACL") acl: option<acl>}
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "UpdateACLCommand"
  let make = (~aclname, ~userNamesToRemove=?, ~userNamesToAdd=?, ()) =>
    new({userNamesToRemove, userNamesToAdd, aclname})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeUsers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"
    )
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>Filter to determine the list of users to return.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of the user</p>") @as("UserName") userName: option<userName>,
  }
  type response = {
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of users.</p>") @as("Users") users: option<userList>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "DescribeUsersCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~userName=?, ()) =>
    new({nextToken, maxResults, filters, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteACL = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Access Control List to delete</p>") @as("ACLName")
    aclname: string_,
  }
  type response = {
    @ocaml.doc("<p>The Access Control List object that has been deleted.</p>") @as("ACL")
    acl: option<acl>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "DeleteACLCommand"
  let make = (~aclname, ()) => new({aclname: aclname})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateACL = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The list of users that belong to the Access Control List.</p>") @as("UserNames")
    userNames: option<userNameListInput>,
    @ocaml.doc("<p>The name of the Access Control List.</p>") @as("ACLName") aclname: string_,
  }
  type response = {
    @ocaml.doc("<p>The newly-created Access Control List.</p>") @as("ACL") acl: option<acl>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "CreateACLCommand"
  let make = (~aclname, ~tags=?, ~userNames=?, ()) => new({tags, userNames, aclname})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateSubnetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The EC2 subnet IDs for the subnet group.</p>") @as("SubnetIds")
    subnetIds: option<subnetIdentifierList>,
    @ocaml.doc("<p>A description of the subnet group</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The name of the subnet group</p>") @as("SubnetGroupName")
    subnetGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>The updated subnet group</p>") @as("SubnetGroup")
    subnetGroup: option<subnetGroup>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "UpdateSubnetGroupCommand"
  let make = (~subnetGroupName, ~subnetIds=?, ~description=?, ()) =>
    new({subnetIds, description, subnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeACLs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"
    )
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>The name of the ACL</p>") @as("ACLName") aclname: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list of ACLs</p>") @as("ACLs") acls: option<acllist>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "DescribeACLsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~aclname=?, ()) => new({nextToken, maxResults, aclname})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteSubnetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the subnet group to delete</p>") @as("SubnetGroupName")
    subnetGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>The subnet group object that has been deleted.</p>") @as("SubnetGroup")
    subnetGroup: option<subnetGroup>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "DeleteSubnetGroupCommand"
  let make = (~subnetGroupName, ()) => new({subnetGroupName: subnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSubnetGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A list of VPC subnet IDs for the subnet group.</p>") @as("SubnetIds")
    subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>A description for the subnet group.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The name of the subnet group.</p>") @as("SubnetGroupName")
    subnetGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>The newly-created subnet group</p>") @as("SubnetGroup")
    subnetGroup: option<subnetGroup>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "CreateSubnetGroupCommand"
  let make = (~subnetIds, ~subnetGroupName, ~tags=?, ~description=?, ()) =>
    new({tags, subnetIds, description, subnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeSubnetGroups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"
    )
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>The name of the subnet group to return details for.</p>") @as("SubnetGroupName")
    subnetGroupName: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of subnet groups. Each element in the list contains detailed information about one group.</p>"
    )
    @as("SubnetGroups")
    subnetGroups: option<subnetGroupList>,
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-memorydb") @new
  external new: request => t = "DescribeSubnetGroupsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~subnetGroupName=?, ()) =>
    new({nextToken, maxResults, subnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the snapshot to delete</p>") @as("SnapshotName")
    snapshotName: string_,
  }
  type response = {
    @ocaml.doc("<p>The snapshot object that has been deleted.</p>") @as("Snapshot")
    snapshot: option<snapshot>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "DeleteSnapshotCommand"
  let make = (~snapshotName, ()) => new({snapshotName: snapshotName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSnapshot = {
  type t
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
    @ocaml.doc("<p>The snapshot is created from this cluster.</p>") @as("ClusterName")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The newly-created snapshot.</p>") @as("Snapshot") snapshot: option<snapshot>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "CreateSnapshotCommand"
  let make = (~snapshotName, ~clusterName, ~tags=?, ~kmsKeyId=?, ()) =>
    new({tags, kmsKeyId, snapshotName, clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CopySnapshot = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ID of the KMS key used to encrypt the target snapshot.</p>") @as("KmsKeyId")
    kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>The Amazon S3 bucket to which the snapshot is exported. This parameter is used only when exporting a snapshot for external access.
       
       When using this parameter to export a snapshot, be sure MemoryDB has the needed permissions to this S3 bucket. For more information, see 
       
       <a href=\"https://docs.aws.amazon.com/MemoryDB/latest/devguide/snapshots-exporting.html\">Step 2: Grant MemoryDB Access to Your Amazon S3 Bucket</a>. 
       
     </p>")
    @as("TargetBucket")
    targetBucket: option<targetBucket>,
    @ocaml.doc(
      "<p>A name for the snapshot copy. MemoryDB does not permit overwriting a snapshot, therefore this name must be unique within its context - MemoryDB or an Amazon S3 bucket if exporting.</p>"
    )
    @as("TargetSnapshotName")
    targetSnapshotName: string_,
    @ocaml.doc("<p>The name of an existing snapshot from which to make a copy.</p>")
    @as("SourceSnapshotName")
    sourceSnapshotName: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>Represents a copy of an entire cluster as of the time when the snapshot was taken.</p>"
    )
    @as("Snapshot")
    snapshot: option<snapshot>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "CopySnapshotCommand"
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
module UpdateCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The Access Control List that is associated with the cluster</p>") @as("ACLName")
    aclname: option<aclname>,
    @ocaml.doc("<p>The number of shards in the cluster</p>") @as("ShardConfiguration")
    shardConfiguration: option<shardConfigurationRequest>,
    @ocaml.doc("<p>The number of replicas that will reside in each shard</p>")
    @as("ReplicaConfiguration")
    replicaConfiguration: option<replicaConfigurationRequest>,
    @ocaml.doc(
      "<p>The upgraded version of the engine to be run on the nodes. You can upgrade to a newer engine version, but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cluster and create it anew with the earlier engine version.</p>"
    )
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>A valid node type that you want to scale this cluster up or down to.</p>")
    @as("NodeType")
    nodeType: option<string_>,
    @ocaml.doc(
      "<p>The number of days for which MemoryDB retains automatic cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>"
    )
    @as("SnapshotRetentionLimit")
    snapshotRetentionLimit: option<integerOptional>,
    @ocaml.doc(
      "<p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your cluster.</p>"
    )
    @as("SnapshotWindow")
    snapshotWindow: option<string_>,
    @ocaml.doc("<p>The name of the parameter group to update</p>") @as("ParameterGroupName")
    parameterGroupName: option<string_>,
    @ocaml.doc(
      "<p>The status of the Amazon SNS notification topic. Notifications are sent only if the status is active.</p>"
    )
    @as("SnsTopicStatus")
    snsTopicStatus: option<string_>,
    @ocaml.doc("<p>The SNS topic ARN to update</p>") @as("SnsTopicArn")
    snsTopicArn: option<string_>,
    @ocaml.doc("<p>The maintenance window to update</p>") @as("MaintenanceWindow")
    maintenanceWindow: option<string_>,
    @ocaml.doc("<p>The SecurityGroupIds to update</p>") @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIdsList>,
    @ocaml.doc("<p>The description of the cluster to update</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The name of the cluster to update</p>") @as("ClusterName") clusterName: string_,
  }
  type response = {@ocaml.doc("<p>The updated cluster</p>") @as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "UpdateClusterCommand"
  let make = (
    ~clusterName,
    ~aclname=?,
    ~shardConfiguration=?,
    ~replicaConfiguration=?,
    ~engineVersion=?,
    ~nodeType=?,
    ~snapshotRetentionLimit=?,
    ~snapshotWindow=?,
    ~parameterGroupName=?,
    ~snsTopicStatus=?,
    ~snsTopicArn=?,
    ~maintenanceWindow=?,
    ~securityGroupIds=?,
    ~description=?,
    (),
  ) =>
    new({
      aclname,
      shardConfiguration,
      replicaConfiguration,
      engineVersion,
      nodeType,
      snapshotRetentionLimit,
      snapshotWindow,
      parameterGroupName,
      snsTopicStatus,
      snsTopicArn,
      maintenanceWindow,
      securityGroupIds,
      description,
      clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module FailoverShard = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the shard</p>") @as("ShardName") shardName: string_,
    @ocaml.doc("<p>The cluster being failed over</p>") @as("ClusterName") clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The cluster being failed over</p>") @as("Cluster") cluster: option<cluster>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "FailoverShardCommand"
  let make = (~shardName, ~clusterName, ()) => new({shardName, clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeSnapshots = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A Boolean value which if true, the shard configuration is included in the snapshot description.</p>"
    )
    @as("ShowDetail")
    showDetail: option<booleanOptional>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"
    )
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>If set to system, the output shows snapshots that were automatically created by MemoryDB. If set to user the output shows snapshots that were manually created. If omitted, the output shows both automatically and manually created snapshots.</p>"
    )
    @as("Source")
    source: option<string_>,
    @ocaml.doc(
      "<p>A user-supplied name of the snapshot. If this parameter is specified, only this named snapshot is described.</p>"
    )
    @as("SnapshotName")
    snapshotName: option<string_>,
    @ocaml.doc(
      "<p>A user-supplied cluster identifier. If this parameter is specified, only snapshots associated with that specific cluster are described.</p>"
    )
    @as("ClusterName")
    clusterName: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of snapshots. Each item in the list contains detailed information about one snapshot.</p>"
    )
    @as("Snapshots")
    snapshots: option<snapshotList>,
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "DescribeSnapshotsCommand"
  let make = (
    ~showDetail=?,
    ~maxResults=?,
    ~nextToken=?,
    ~source=?,
    ~snapshotName=?,
    ~clusterName=?,
    (),
  ) => new({showDetail, maxResults, nextToken, source, snapshotName, clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteCluster = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The user-supplied name of a final cluster snapshot. This is the unique name that identifies the snapshot. MemoryDB creates the snapshot, and then deletes the cluster immediately afterward.</p>"
    )
    @as("FinalSnapshotName")
    finalSnapshotName: option<string_>,
    @ocaml.doc("<p>The name of the cluster to be deleted</p>") @as("ClusterName")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The cluster object that has been deleted</p>") @as("Cluster")
    cluster: option<cluster>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "DeleteClusterCommand"
  let make = (~clusterName, ~finalSnapshotName=?, ()) => new({finalSnapshotName, clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateCluster = {
  type t
  type request = {
    @ocaml.doc(
      "<p>When set to true, the cluster will automatically receive minor engine version upgrades after launch.</p>"
    )
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The version number of the Redis engine to be used for the cluster.</p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The name of the Access Control List to associate with the cluster.</p>")
    @as("ACLName")
    aclname: aclname,
    @ocaml.doc("<p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard.</p>
         
         <p>    Example: 05:00-09:00</p>
         
         <p>    If you do not specify this parameter, MemoryDB automatically chooses an appropriate time range.</p>")
    @as("SnapshotWindow")
    snapshotWindow: option<string_>,
    @ocaml.doc(
      "<p>A list of tags to be added to this resource. Tags are comma-separated key,value pairs (e.g. Key=myKey, Value=myKeyValue. You can include multiple tags as shown following: Key=myKey, Value=myKeyValue Key=mySecondKey, Value=mySecondKeyValue.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>The number of days for which MemoryDB retains automatic snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>"
    )
    @as("SnapshotRetentionLimit")
    snapshotRetentionLimit: option<integerOptional>,
    @ocaml.doc(
      "<p>The name of a snapshot from which to restore data into the new cluster. The snapshot status changes to restoring while the new cluster is being created.</p>"
    )
    @as("SnapshotName")
    snapshotName: option<string_>,
    @ocaml.doc(
      "<p>A list of Amazon Resource Names (ARN) that uniquely identify the RDB snapshot files stored in Amazon S3. The snapshot files are used to populate the new cluster. The Amazon S3 object name in the ARN cannot contain any commas.</p>"
    )
    @as("SnapshotArns")
    snapshotArns: option<snapshotArnsList>,
    @ocaml.doc("<p>The ID of the KMS key used to encrypt the cluster.</p>") @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>A flag to enable in-transit encryption on the cluster.</p>") @as("TLSEnabled")
    tlsenabled: option<booleanOptional>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.</p>"
    )
    @as("SnsTopicArn")
    snsTopicArn: option<string_>,
    @ocaml.doc("<p>The port number on which each of the nodes accepts connections.</p>") @as("Port")
    port: option<integerOptional>,
    @ocaml.doc(
      "<p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format <code>ddd:hh24:mi-ddd:hh24:mi</code> (24H Clock UTC). The minimum maintenance window is a 60 minute period.</p>"
    )
    @as("MaintenanceWindow")
    maintenanceWindow: option<string_>,
    @ocaml.doc("<p>A list of security group names to associate with this cluster.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIdsList>,
    @ocaml.doc("<p>The name of the subnet group to be used for the cluster.</p>")
    @as("SubnetGroupName")
    subnetGroupName: option<string_>,
    @ocaml.doc(
      "<p>The number of replicas to apply to each shard. The default value is 1. The maximum is 5. </p>"
    )
    @as("NumReplicasPerShard")
    numReplicasPerShard: option<integerOptional>,
    @ocaml.doc("<p>The number of shards the cluster will contain. The default value is 1. </p>")
    @as("NumShards")
    numShards: option<integerOptional>,
    @ocaml.doc("<p>An optional description of the cluster.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The name of the parameter group associated with the cluster.</p>")
    @as("ParameterGroupName")
    parameterGroupName: option<string_>,
    @ocaml.doc("<p>The compute and memory capacity of the nodes in the cluster.</p>")
    @as("NodeType")
    nodeType: string_,
    @ocaml.doc(
      "<p>The name of the cluster. This value must be unique as it also serves as the cluster identifier.</p>"
    )
    @as("ClusterName")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The newly-created cluster.</p>") @as("Cluster") cluster: option<cluster>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "CreateClusterCommand"
  let make = (
    ~aclname,
    ~nodeType,
    ~clusterName,
    ~autoMinorVersionUpgrade=?,
    ~engineVersion=?,
    ~snapshotWindow=?,
    ~tags=?,
    ~snapshotRetentionLimit=?,
    ~snapshotName=?,
    ~snapshotArns=?,
    ~kmsKeyId=?,
    ~tlsenabled=?,
    ~snsTopicArn=?,
    ~port=?,
    ~maintenanceWindow=?,
    ~securityGroupIds=?,
    ~subnetGroupName=?,
    ~numReplicasPerShard=?,
    ~numShards=?,
    ~description=?,
    ~parameterGroupName=?,
    (),
  ) =>
    new({
      autoMinorVersionUpgrade,
      engineVersion,
      aclname,
      snapshotWindow,
      tags,
      snapshotRetentionLimit,
      snapshotName,
      snapshotArns,
      kmsKeyId,
      tlsenabled,
      snsTopicArn,
      port,
      maintenanceWindow,
      securityGroupIds,
      subnetGroupName,
      numReplicasPerShard,
      numShards,
      description,
      parameterGroupName,
      nodeType,
      clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeClusters = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional flag that can be included in the request to retrieve information about the individual shard(s).</p>"
    )
    @as("ShowShardDetails")
    showShardDetails: option<booleanOptional>,
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"
    )
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>The name of the cluster</p>") @as("ClusterName") clusterName: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A list of clusters</p>") @as("Clusters") clusters: option<clusterList>,
    @ocaml.doc(
      "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "DescribeClustersCommand"
  let make = (~showShardDetails=?, ~nextToken=?, ~maxResults=?, ~clusterName=?, ()) =>
    new({showShardDetails, nextToken, maxResults, clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchUpdateCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the service update</p>") @as("ServiceUpdate")
    serviceUpdate: option<serviceUpdateRequest>,
    @ocaml.doc("<p>The cluster names to apply the updates.</p>") @as("ClusterNames")
    clusterNames: clusterNameList,
  }
  type response = {
    @ocaml.doc("<p>The list of clusters where updates have not been applied.</p>")
    @as("UnprocessedClusters")
    unprocessedClusters: option<unprocessedClusterList>,
    @ocaml.doc("<p>The list of clusters that have been updated.</p>") @as("ProcessedClusters")
    processedClusters: option<clusterList>,
  }
  @module("@aws-sdk/client-memorydb") @new external new: request => t = "BatchUpdateClusterCommand"
  let make = (~clusterNames, ~serviceUpdate=?, ()) => new({serviceUpdate, clusterNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
