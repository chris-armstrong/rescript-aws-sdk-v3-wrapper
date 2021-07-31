type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type tStamp = Js.Date.t;
type amazonawsString = string
type sourceType = [@as("SUBNET_GROUP") #SUBNET_GROUP | @as("PARAMETER_GROUP") #PARAMETER_GROUP | @as("CLUSTER") #CLUSTER]
type sSEStatus = [@as("DISABLED") #DISABLED | @as("DISABLING") #DISABLING | @as("ENABLED") #ENABLED | @as("ENABLING") #ENABLING]
type sSEEnabled = bool;
type parameterType = [@as("NODE_TYPE_SPECIFIC") #NODE_TYPE_SPECIFIC | @as("DEFAULT") #DEFAULT]
type isModifiable = [@as("CONDITIONAL") #CONDITIONAL | @as("FALSE") #FALSE | @as("TRUE") #TRUE]
type integerOptional = int;
type amazonawsInteger = int;
type exceptionMessage = string
type changeType = [@as("REQUIRES_REBOOT") #REQUIRES_REBOOT | @as("IMMEDIATE") #IMMEDIATE]
type awsQueryErrorMessage = string
type tag = {
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString
}
type subnetIdentifierList = array<amazonawsString>
type subnetGroupNameList = array<amazonawsString>
type subnet = {
@as("SubnetAvailabilityZone") subnetAvailabilityZone: amazonawsString,
@as("SubnetIdentifier") subnetIdentifier: amazonawsString
}
type securityGroupMembership = {
@as("Status") status: amazonawsString,
@as("SecurityGroupIdentifier") securityGroupIdentifier: amazonawsString
}
type securityGroupIdentifierList = array<amazonawsString>
type sSESpecification = {
@as("Enabled") enabled: option<sSEEnabled>
}
type sSEDescription = {
@as("Status") status: sSEStatus
}
type parameterNameValue = {
@as("ParameterValue") parameterValue: amazonawsString,
@as("ParameterName") parameterName: amazonawsString
}
type parameterGroupNameList = array<amazonawsString>
type parameterGroup = {
@as("Description") description: amazonawsString,
@as("ParameterGroupName") parameterGroupName: amazonawsString
}
type notificationConfiguration = {
@as("TopicStatus") topicStatus: amazonawsString,
@as("TopicArn") topicArn: amazonawsString
}
type nodeTypeSpecificValue = {
@as("Value") value: amazonawsString,
@as("NodeType") nodeType: amazonawsString
}
type nodeIdentifierList = array<amazonawsString>
type keyList = array<amazonawsString>
type event = {
@as("Date") date: tStamp,
@as("Message") message: amazonawsString,
@as("SourceType") sourceType: sourceType,
@as("SourceName") sourceName: amazonawsString
}
type endpoint = {
@as("Port") port: amazonawsInteger,
@as("Address") address: amazonawsString
}
type clusterNameList = array<amazonawsString>
type availabilityZoneList = array<amazonawsString>
type tagList = array<tag>
type subnetList = array<subnet>
type securityGroupMembershipList = array<securityGroupMembership>
type parameterNameValueList = array<parameterNameValue>
type parameterGroupStatus = {
@as("NodeIdsToReboot") nodeIdsToReboot: nodeIdentifierList,
@as("ParameterApplyStatus") parameterApplyStatus: amazonawsString,
@as("ParameterGroupName") parameterGroupName: amazonawsString
}
type parameterGroupList = array<parameterGroup>
type nodeTypeSpecificValueList = array<nodeTypeSpecificValue>
type node = {
@as("ParameterGroupStatus") parameterGroupStatus: amazonawsString,
@as("NodeStatus") nodeStatus: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("NodeCreateTime") nodeCreateTime: tStamp,
@as("Endpoint") endpoint: endpoint,
@as("NodeId") nodeId: amazonawsString
}
type eventList = array<event>
type subnetGroup = {
@as("Subnets") subnets: subnetList,
@as("VpcId") vpcId: amazonawsString,
@as("Description") description: amazonawsString,
@as("SubnetGroupName") subnetGroupName: amazonawsString
}
type parameter = {
@as("ChangeType") changeType: changeType,
@as("IsModifiable") isModifiable: isModifiable,
@as("AllowedValues") allowedValues: amazonawsString,
@as("DataType") dataType: amazonawsString,
@as("Source") source: amazonawsString,
@as("Description") description: amazonawsString,
@as("NodeTypeSpecificValues") nodeTypeSpecificValues: nodeTypeSpecificValueList,
@as("ParameterValue") parameterValue: amazonawsString,
@as("ParameterType") parameterType: parameterType,
@as("ParameterName") parameterName: amazonawsString
}
type nodeList = array<node>
type subnetGroupList = array<subnetGroup>
type parameterList = array<parameter>
type cluster = {
@as("SSEDescription") sSEDescription: sSEDescription,
@as("ParameterGroup") parameterGroup: parameterGroupStatus,
@as("IamRoleArn") iamRoleArn: amazonawsString,
@as("SecurityGroups") securityGroups: securityGroupMembershipList,
@as("SubnetGroup") subnetGroup: amazonawsString,
@as("NotificationConfiguration") notificationConfiguration: notificationConfiguration,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("Nodes") nodes: nodeList,
@as("NodeIdsToRemove") nodeIdsToRemove: nodeIdentifierList,
@as("ClusterDiscoveryEndpoint") clusterDiscoveryEndpoint: endpoint,
@as("Status") status: amazonawsString,
@as("NodeType") nodeType: amazonawsString,
@as("ActiveNodes") activeNodes: integerOptional,
@as("TotalNodes") totalNodes: integerOptional,
@as("ClusterArn") clusterArn: amazonawsString,
@as("Description") description: amazonawsString,
@as("ClusterName") clusterName: amazonawsString
}
type clusterList = array<cluster>
type clientType;
@module("@aws-sdk/client-dax") @new external createClient: unit => clientType = "DAXClient";
module DeleteSubnetGroup = {
  type t;
  type request = {
@as("SubnetGroupName") subnetGroupName: option<amazonawsString>
}
  type response = {
@as("DeletionMessage") deletionMessage: amazonawsString
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "DeleteSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteParameterGroup = {
  type t;
  type request = {
@as("ParameterGroupName") parameterGroupName: option<amazonawsString>
}
  type response = {
@as("DeletionMessage") deletionMessage: amazonawsString
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "DeleteParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateParameterGroup = {
  type t;
  type request = {
@as("Description") description: amazonawsString,
@as("ParameterGroupName") parameterGroupName: option<amazonawsString>
}
  type response = {
@as("ParameterGroup") parameterGroup: parameterGroup
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "CreateParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateParameterGroup = {
  type t;
  type request = {
@as("ParameterNameValues") parameterNameValues: option<parameterNameValueList>,
@as("ParameterGroupName") parameterGroupName: option<amazonawsString>
}
  type response = {
@as("ParameterGroup") parameterGroup: parameterGroup
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "UpdateParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<keyList>,
@as("ResourceName") resourceName: option<amazonawsString>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceName") resourceName: option<amazonawsString>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("ResourceName") resourceName: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "ListTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeParameterGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: integerOptional,
@as("ParameterGroupNames") parameterGroupNames: parameterGroupNameList
}
  type response = {
@as("ParameterGroups") parameterGroups: parameterGroupList,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "DescribeParameterGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEvents = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: integerOptional,
@as("Duration") duration: integerOptional,
@as("EndTime") endTime: tStamp,
@as("StartTime") startTime: tStamp,
@as("SourceType") sourceType: sourceType,
@as("SourceName") sourceName: amazonawsString
}
  type response = {
@as("Events") events: eventList,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSubnetGroup = {
  type t;
  type request = {
@as("SubnetIds") subnetIds: subnetIdentifierList,
@as("Description") description: amazonawsString,
@as("SubnetGroupName") subnetGroupName: option<amazonawsString>
}
  type response = {
@as("SubnetGroup") subnetGroup: subnetGroup
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "UpdateSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSubnetGroup = {
  type t;
  type request = {
@as("SubnetIds") subnetIds: option<subnetIdentifierList>,
@as("Description") description: amazonawsString,
@as("SubnetGroupName") subnetGroupName: option<amazonawsString>
}
  type response = {
@as("SubnetGroup") subnetGroup: subnetGroup
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "CreateSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCluster = {
  type t;
  type request = {
@as("SecurityGroupIds") securityGroupIds: securityGroupIdentifierList,
@as("ParameterGroupName") parameterGroupName: amazonawsString,
@as("NotificationTopicStatus") notificationTopicStatus: amazonawsString,
@as("NotificationTopicArn") notificationTopicArn: amazonawsString,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("Description") description: amazonawsString,
@as("ClusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "UpdateClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RebootNode = {
  type t;
  type request = {
@as("NodeId") nodeId: option<amazonawsString>,
@as("ClusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "RebootNodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module IncreaseReplicationFactor = {
  type t;
  type request = {
@as("AvailabilityZones") availabilityZones: availabilityZoneList,
@as("NewReplicationFactor") newReplicationFactor: option<amazonawsInteger>,
@as("ClusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "IncreaseReplicationFactorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSubnetGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: integerOptional,
@as("SubnetGroupNames") subnetGroupNames: subnetGroupNameList
}
  type response = {
@as("SubnetGroups") subnetGroups: subnetGroupList,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "DescribeSubnetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeParameters = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: integerOptional,
@as("Source") source: amazonawsString,
@as("ParameterGroupName") parameterGroupName: option<amazonawsString>
}
  type response = {
@as("Parameters") parameters: parameterList,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "DescribeParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDefaultParameters = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: integerOptional
}
  type response = {
@as("Parameters") parameters: parameterList,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "DescribeDefaultParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCluster = {
  type t;
  type request = {
@as("ClusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "DeleteClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DecreaseReplicationFactor = {
  type t;
  type request = {
@as("NodeIdsToRemove") nodeIdsToRemove: nodeIdentifierList,
@as("AvailabilityZones") availabilityZones: availabilityZoneList,
@as("NewReplicationFactor") newReplicationFactor: option<amazonawsInteger>,
@as("ClusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "DecreaseReplicationFactorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCluster = {
  type t;
  type request = {
@as("SSESpecification") sSESpecification: sSESpecification,
@as("Tags") tags: tagList,
@as("ParameterGroupName") parameterGroupName: amazonawsString,
@as("IamRoleArn") iamRoleArn: option<amazonawsString>,
@as("NotificationTopicArn") notificationTopicArn: amazonawsString,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("SecurityGroupIds") securityGroupIds: securityGroupIdentifierList,
@as("SubnetGroupName") subnetGroupName: amazonawsString,
@as("AvailabilityZones") availabilityZones: availabilityZoneList,
@as("ReplicationFactor") replicationFactor: option<amazonawsInteger>,
@as("Description") description: amazonawsString,
@as("NodeType") nodeType: option<amazonawsString>,
@as("ClusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "CreateClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusters = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: integerOptional,
@as("ClusterNames") clusterNames: clusterNameList
}
  type response = {
@as("Clusters") clusters: clusterList,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-dax") @new external new_: (Js.Promise.t<request>) => t = "DescribeClustersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
