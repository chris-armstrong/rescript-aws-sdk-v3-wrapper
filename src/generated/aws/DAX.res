type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-dax") @new external createClient: unit => awsServiceClient = "DAXClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tstamp = Js.Date.t
type string_ = string
type sourceType = [
  | @as("SUBNET_GROUP") #SUBNET_GROUP
  | @as("PARAMETER_GROUP") #PARAMETER_GROUP
  | @as("CLUSTER") #CLUSTER
]
type ssestatus = [
  | @as("DISABLED") #DISABLED
  | @as("DISABLING") #DISABLING
  | @as("ENABLED") #ENABLED
  | @as("ENABLING") #ENABLING
]
type sseenabled = bool
type parameterType = [@as("NODE_TYPE_SPECIFIC") #NODE_TYPE_SPECIFIC | @as("DEFAULT") #DEFAULT]
type isModifiable = [@as("CONDITIONAL") #CONDITIONAL | @as("FALSE") #FALSE | @as("TRUE") #TRUE]
type integerOptional = int
type integer_ = int
type exceptionMessage = string
type changeType = [@as("REQUIRES_REBOOT") #REQUIRES_REBOOT | @as("IMMEDIATE") #IMMEDIATE]
type awsQueryErrorMessage = string
type tag = {
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>,
}
type subnetIdentifierList = array<string_>
type subnetGroupNameList = array<string_>
type subnet = {
  @as("SubnetAvailabilityZone") subnetAvailabilityZone: option<string_>,
  @as("SubnetIdentifier") subnetIdentifier: option<string_>,
}
type securityGroupMembership = {
  @as("Status") status: option<string_>,
  @as("SecurityGroupIdentifier") securityGroupIdentifier: option<string_>,
}
type securityGroupIdentifierList = array<string_>
type ssespecification = {@as("Enabled") enabled: sseenabled}
type ssedescription = {@as("Status") status: option<ssestatus>}
type parameterNameValue = {
  @as("ParameterValue") parameterValue: option<string_>,
  @as("ParameterName") parameterName: option<string_>,
}
type parameterGroupNameList = array<string_>
type parameterGroup = {
  @as("Description") description: option<string_>,
  @as("ParameterGroupName") parameterGroupName: option<string_>,
}
type notificationConfiguration = {
  @as("TopicStatus") topicStatus: option<string_>,
  @as("TopicArn") topicArn: option<string_>,
}
type nodeTypeSpecificValue = {
  @as("Value") value: option<string_>,
  @as("NodeType") nodeType: option<string_>,
}
type nodeIdentifierList = array<string_>
type keyList = array<string_>
type event = {
  @as("Date") date: option<tstamp>,
  @as("Message") message: option<string_>,
  @as("SourceType") sourceType: option<sourceType>,
  @as("SourceName") sourceName: option<string_>,
}
type endpoint = {
  @as("Port") port: option<integer_>,
  @as("Address") address: option<string_>,
}
type clusterNameList = array<string_>
type availabilityZoneList = array<string_>
type tagList_ = array<tag>
type subnetList = array<subnet>
type securityGroupMembershipList = array<securityGroupMembership>
type parameterNameValueList = array<parameterNameValue>
type parameterGroupStatus = {
  @as("NodeIdsToReboot") nodeIdsToReboot: option<nodeIdentifierList>,
  @as("ParameterApplyStatus") parameterApplyStatus: option<string_>,
  @as("ParameterGroupName") parameterGroupName: option<string_>,
}
type parameterGroupList = array<parameterGroup>
type nodeTypeSpecificValueList = array<nodeTypeSpecificValue>
type node = {
  @as("ParameterGroupStatus") parameterGroupStatus: option<string_>,
  @as("NodeStatus") nodeStatus: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("NodeCreateTime") nodeCreateTime: option<tstamp>,
  @as("Endpoint") endpoint: option<endpoint>,
  @as("NodeId") nodeId: option<string_>,
}
type eventList = array<event>
type subnetGroup = {
  @as("Subnets") subnets: option<subnetList>,
  @as("VpcId") vpcId: option<string_>,
  @as("Description") description: option<string_>,
  @as("SubnetGroupName") subnetGroupName: option<string_>,
}
type parameter = {
  @as("ChangeType") changeType: option<changeType>,
  @as("IsModifiable") isModifiable: option<isModifiable>,
  @as("AllowedValues") allowedValues: option<string_>,
  @as("DataType") dataType: option<string_>,
  @as("Source") source: option<string_>,
  @as("Description") description: option<string_>,
  @as("NodeTypeSpecificValues") nodeTypeSpecificValues: option<nodeTypeSpecificValueList>,
  @as("ParameterValue") parameterValue: option<string_>,
  @as("ParameterType") parameterType: option<parameterType>,
  @as("ParameterName") parameterName: option<string_>,
}
type nodeList = array<node>
type subnetGroupList = array<subnetGroup>
type parameterList = array<parameter>
type cluster = {
  @as("SSEDescription") ssedescription: option<ssedescription>,
  @as("ParameterGroup") parameterGroup: option<parameterGroupStatus>,
  @as("IamRoleArn") iamRoleArn: option<string_>,
  @as("SecurityGroups") securityGroups: option<securityGroupMembershipList>,
  @as("SubnetGroup") subnetGroup: option<string_>,
  @as("NotificationConfiguration") notificationConfiguration: option<notificationConfiguration>,
  @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
  @as("Nodes") nodes: option<nodeList>,
  @as("NodeIdsToRemove") nodeIdsToRemove: option<nodeIdentifierList>,
  @as("ClusterDiscoveryEndpoint") clusterDiscoveryEndpoint: option<endpoint>,
  @as("Status") status: option<string_>,
  @as("NodeType") nodeType: option<string_>,
  @as("ActiveNodes") activeNodes: option<integerOptional>,
  @as("TotalNodes") totalNodes: option<integerOptional>,
  @as("ClusterArn") clusterArn: option<string_>,
  @as("Description") description: option<string_>,
  @as("ClusterName") clusterName: option<string_>,
}
type clusterList = array<cluster>

module DeleteSubnetGroup = {
  type t
  type request = {@as("SubnetGroupName") subnetGroupName: string_}
  type response = {@as("DeletionMessage") deletionMessage: option<string_>}
  @module("@aws-sdk/client-dax") @new external new_: request => t = "DeleteSubnetGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteParameterGroup = {
  type t
  type request = {@as("ParameterGroupName") parameterGroupName: string_}
  type response = {@as("DeletionMessage") deletionMessage: option<string_>}
  @module("@aws-sdk/client-dax") @new external new_: request => t = "DeleteParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateParameterGroup = {
  type t
  type request = {
    @as("Description") description: option<string_>,
    @as("ParameterGroupName") parameterGroupName: string_,
  }
  type response = {@as("ParameterGroup") parameterGroup: option<parameterGroup>}
  @module("@aws-sdk/client-dax") @new external new_: request => t = "CreateParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateParameterGroup = {
  type t
  type request = {
    @as("ParameterNameValues") parameterNameValues: parameterNameValueList,
    @as("ParameterGroupName") parameterGroupName: string_,
  }
  type response = {@as("ParameterGroup") parameterGroup: option<parameterGroup>}
  @module("@aws-sdk/client-dax") @new external new_: request => t = "UpdateParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: keyList,
    @as("ResourceName") resourceName: string_,
  }
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-dax") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceName") resourceName: string_,
  }
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-dax") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTags = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("ResourceName") resourceName: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-dax") @new external new_: request => t = "ListTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeParameterGroups = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integerOptional>,
    @as("ParameterGroupNames") parameterGroupNames: option<parameterGroupNameList>,
  }
  type response = {
    @as("ParameterGroups") parameterGroups: option<parameterGroupList>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new external new_: request => t = "DescribeParameterGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integerOptional>,
    @as("Duration") duration: option<integerOptional>,
    @as("EndTime") endTime: option<tstamp>,
    @as("StartTime") startTime: option<tstamp>,
    @as("SourceType") sourceType: option<sourceType>,
    @as("SourceName") sourceName: option<string_>,
  }
  type response = {
    @as("Events") events: option<eventList>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new external new_: request => t = "DescribeEventsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSubnetGroup = {
  type t
  type request = {
    @as("SubnetIds") subnetIds: option<subnetIdentifierList>,
    @as("Description") description: option<string_>,
    @as("SubnetGroupName") subnetGroupName: string_,
  }
  type response = {@as("SubnetGroup") subnetGroup: option<subnetGroup>}
  @module("@aws-sdk/client-dax") @new external new_: request => t = "UpdateSubnetGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSubnetGroup = {
  type t
  type request = {
    @as("SubnetIds") subnetIds: subnetIdentifierList,
    @as("Description") description: option<string_>,
    @as("SubnetGroupName") subnetGroupName: string_,
  }
  type response = {@as("SubnetGroup") subnetGroup: option<subnetGroup>}
  @module("@aws-sdk/client-dax") @new external new_: request => t = "CreateSubnetGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCluster = {
  type t
  type request = {
    @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdentifierList>,
    @as("ParameterGroupName") parameterGroupName: option<string_>,
    @as("NotificationTopicStatus") notificationTopicStatus: option<string_>,
    @as("NotificationTopicArn") notificationTopicArn: option<string_>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("Description") description: option<string_>,
    @as("ClusterName") clusterName: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-dax") @new external new_: request => t = "UpdateClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootNode = {
  type t
  type request = {
    @as("NodeId") nodeId: string_,
    @as("ClusterName") clusterName: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-dax") @new external new_: request => t = "RebootNodeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module IncreaseReplicationFactor = {
  type t
  type request = {
    @as("AvailabilityZones") availabilityZones: option<availabilityZoneList>,
    @as("NewReplicationFactor") newReplicationFactor: integer_,
    @as("ClusterName") clusterName: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-dax") @new
  external new_: request => t = "IncreaseReplicationFactorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSubnetGroups = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integerOptional>,
    @as("SubnetGroupNames") subnetGroupNames: option<subnetGroupNameList>,
  }
  type response = {
    @as("SubnetGroups") subnetGroups: option<subnetGroupList>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new external new_: request => t = "DescribeSubnetGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeParameters = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integerOptional>,
    @as("Source") source: option<string_>,
    @as("ParameterGroupName") parameterGroupName: string_,
  }
  type response = {
    @as("Parameters") parameters: option<parameterList>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new external new_: request => t = "DescribeParametersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDefaultParameters = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integerOptional>,
  }
  type response = {
    @as("Parameters") parameters: option<parameterList>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new
  external new_: request => t = "DescribeDefaultParametersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCluster = {
  type t
  type request = {@as("ClusterName") clusterName: string_}
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-dax") @new external new_: request => t = "DeleteClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DecreaseReplicationFactor = {
  type t
  type request = {
    @as("NodeIdsToRemove") nodeIdsToRemove: option<nodeIdentifierList>,
    @as("AvailabilityZones") availabilityZones: option<availabilityZoneList>,
    @as("NewReplicationFactor") newReplicationFactor: integer_,
    @as("ClusterName") clusterName: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-dax") @new
  external new_: request => t = "DecreaseReplicationFactorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCluster = {
  type t
  type request = {
    @as("SSESpecification") ssespecification: option<ssespecification>,
    @as("Tags") tags: option<tagList_>,
    @as("ParameterGroupName") parameterGroupName: option<string_>,
    @as("IamRoleArn") iamRoleArn: string_,
    @as("NotificationTopicArn") notificationTopicArn: option<string_>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdentifierList>,
    @as("SubnetGroupName") subnetGroupName: option<string_>,
    @as("AvailabilityZones") availabilityZones: option<availabilityZoneList>,
    @as("ReplicationFactor") replicationFactor: integer_,
    @as("Description") description: option<string_>,
    @as("NodeType") nodeType: string_,
    @as("ClusterName") clusterName: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-dax") @new external new_: request => t = "CreateClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusters = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integerOptional>,
    @as("ClusterNames") clusterNames: option<clusterNameList>,
  }
  type response = {
    @as("Clusters") clusters: option<clusterList>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new external new_: request => t = "DescribeClustersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
