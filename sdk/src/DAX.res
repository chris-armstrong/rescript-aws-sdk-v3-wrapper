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
@ocaml.doc("<p>A description of a tag.  Every tag is a key-value pair. You can add up to 50 tags to a single
            DAX cluster.</p>
        <p>AWS-assigned tag names and values are automatically assigned the <code>aws:</code>
            prefix, which the user cannot assign. AWS-assigned tag names do not count towards the
            tag limit of 50. User-assigned tag names have the prefix <code>user:</code>.</p> 
        <p>You cannot backdate the application of a tag.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag. Tag values are case-sensitive and can be null. </p>")
  @as("Value")
  value: option<string_>,
  @ocaml.doc("<p>The key for the tag.  Tag keys are case sensitive. Every DAX cluster can only have
            one tag with the same key. If you try to add an existing tag (same key), the
            existing tag value will be updated to the new value.</p>")
  @as("Key")
  key: option<string_>,
}
type subnetIdentifierList = array<string_>
type subnetGroupNameList = array<string_>
@ocaml.doc("<p>Represents the subnet associated with a DAX cluster. This parameter refers to
            subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with
            DAX.</p>")
type subnet = {
  @ocaml.doc("<p>The Availability Zone (AZ) for the subnet.</p>") @as("SubnetAvailabilityZone")
  subnetAvailabilityZone: option<string_>,
  @ocaml.doc("<p>The system-assigned identifier for the subnet.</p>") @as("SubnetIdentifier")
  subnetIdentifier: option<string_>,
}
@ocaml.doc("<p>An individual VPC security group and its status.</p>")
type securityGroupMembership = {
  @ocaml.doc("<p>The status of this security group.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The unique ID for this security group.</p>") @as("SecurityGroupIdentifier")
  securityGroupIdentifier: option<string_>,
}
type securityGroupIdentifierList = array<string_>
@ocaml.doc("<p>Represents the settings used to enable server-side encryption.</p>")
type ssespecification = {
  @ocaml.doc(
    "<p>Indicates whether server-side encryption is enabled (true) or disabled (false) on the cluster.</p>"
  )
  @as("Enabled")
  enabled: sseenabled,
}
@ocaml.doc(
  "<p>The description of the server-side encryption status on the specified DAX cluster.</p>"
)
type ssedescription = {
  @ocaml.doc("<p>The current state of server-side encryption:</p>
         <ul>
            <li>
               <p>
                  <code>ENABLING</code> - Server-side encryption is being enabled.</p>
            </li>
            <li>
               <p>
                  <code>ENABLED</code> - Server-side encryption is enabled.</p>
            </li>
            <li>
               <p>
                  <code>DISABLING</code> - Server-side encryption is being disabled.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> - Server-side encryption is disabled.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<ssestatus>,
}
@ocaml.doc("<p>An individual DAX parameter.</p>")
type parameterNameValue = {
  @ocaml.doc("<p>The value of the parameter.</p>") @as("ParameterValue")
  parameterValue: option<string_>,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("ParameterName")
  parameterName: option<string_>,
}
type parameterGroupNameList = array<string_>
@ocaml.doc("<p>A named set of parameters that are applied to all of the nodes in a DAX
            cluster.</p>")
type parameterGroup = {
  @ocaml.doc("<p>A description of the parameter group.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the parameter group.</p>") @as("ParameterGroupName")
  parameterGroupName: option<string_>,
}
@ocaml.doc("<p>Describes a notification topic and its status. Notification topics are used for
            publishing DAX events to subscribers using Amazon Simple Notification Service
            (SNS).</p>")
type notificationConfiguration = {
  @ocaml.doc("<p>The current state of the topic.</p>") @as("TopicStatus")
  topicStatus: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the topic. </p>") @as("TopicArn")
  topicArn: option<string_>,
}
@ocaml.doc("<p>Represents a parameter value that is applicable to a particular node
            type.</p>")
type nodeTypeSpecificValue = {
  @ocaml.doc("<p>The parameter value for this node type.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>A node type to which the parameter value applies.</p>") @as("NodeType")
  nodeType: option<string_>,
}
type nodeIdentifierList = array<string_>
type keyList = array<string_>
@ocaml.doc("<p>Represents a single occurrence of something interesting within the system. Some
            examples of events are creating a DAX cluster, adding or removing a node, or rebooting
            a node.</p>")
type event = {
  @ocaml.doc("<p>The date and time when the event occurred.</p>") @as("Date") date: option<tstamp>,
  @ocaml.doc("<p>A user-defined message associated with the event.</p>") @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>Specifies the origin of this event - a cluster, a parameter group, a node ID,
            etc.</p>")
  @as("SourceType")
  sourceType: option<sourceType>,
  @ocaml.doc("<p>The source of the event. For example, if the event occurred at the node level, the
            source would be the node ID.</p>")
  @as("SourceName")
  sourceName: option<string_>,
}
@ocaml.doc("<p>Represents the information required for client programs to connect to the
            configuration endpoint for a DAX cluster, or to an individual node within the
            cluster.</p>")
type endpoint = {
  @ocaml.doc("<p>The port number that applications should use to connect to the endpoint.</p>")
  @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>The DNS hostname of the endpoint.</p>") @as("Address") address: option<string_>,
}
type clusterNameList = array<string_>
type availabilityZoneList = array<string_>
type tagList_ = array<tag>
type subnetList = array<subnet>
type securityGroupMembershipList = array<securityGroupMembership>
type parameterNameValueList = array<parameterNameValue>
@ocaml.doc("<p>The status of a parameter group.</p>")
type parameterGroupStatus = {
  @ocaml.doc("<p>The node IDs of one or more nodes to be rebooted.</p>") @as("NodeIdsToReboot")
  nodeIdsToReboot: option<nodeIdentifierList>,
  @ocaml.doc("<p>The status of parameter updates. </p>") @as("ParameterApplyStatus")
  parameterApplyStatus: option<string_>,
  @ocaml.doc("<p>The name of the parameter group.</p>") @as("ParameterGroupName")
  parameterGroupName: option<string_>,
}
type parameterGroupList = array<parameterGroup>
type nodeTypeSpecificValueList = array<nodeTypeSpecificValue>
@ocaml.doc("<p>Represents an individual node within a DAX cluster.</p>")
type node = {
  @ocaml.doc("<p>The status of the parameter group associated with this node. For example,
                <code>in-sync</code>.</p>")
  @as("ParameterGroupStatus")
  parameterGroupStatus: option<string_>,
  @ocaml.doc("<p>The current status of the node. For example: <code>available</code>.</p>")
  @as("NodeStatus")
  nodeStatus: option<string_>,
  @ocaml.doc("<p>The Availability Zone (AZ) in which the node has been deployed.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc("<p>The date and time (in UNIX epoch format) when the node was launched.</p>")
  @as("NodeCreateTime")
  nodeCreateTime: option<tstamp>,
  @ocaml.doc("<p>The endpoint for the node, consisting of a DNS name and a port number. Client
            applications can connect directly to a node endpoint, if desired (as an alternative to
            allowing DAX client software to intelligently route requests and responses to nodes in
            the DAX cluster.</p>")
  @as("Endpoint")
  endpoint: option<endpoint>,
  @ocaml.doc("<p>A system-generated identifier for the node.</p>") @as("NodeId")
  nodeId: option<string_>,
}
type eventList = array<event>
@ocaml.doc("<p>Represents the output of one of the following actions:</p>
        <ul>
            <li>
                <p>
                    <i>CreateSubnetGroup</i>
                </p>
            </li>
            <li>
                <p>
                    <i>ModifySubnetGroup</i>
                </p>
            </li>
         </ul>")
type subnetGroup = {
  @ocaml.doc("<p>A list of subnets associated with the subnet group. </p>") @as("Subnets")
  subnets: option<subnetList>,
  @ocaml.doc("<p>The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.</p>")
  @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>The description of the subnet group.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the subnet group.</p>") @as("SubnetGroupName")
  subnetGroupName: option<string_>,
}
@ocaml.doc("<p>Describes an individual setting that controls some aspect of DAX
            behavior.</p>")
type parameter = {
  @ocaml.doc("<p>The conditions under which changes to this parameter can be applied. For example,
                <code>requires-reboot</code> indicates that a new value for this parameter will only
            take effect if a node is rebooted.</p>")
  @as("ChangeType")
  changeType: option<changeType>,
  @ocaml.doc("<p>Whether the customer is allowed to modify the parameter.</p>") @as("IsModifiable")
  isModifiable: option<isModifiable>,
  @ocaml.doc("<p>A range of values within which the parameter can be set.</p>") @as("AllowedValues")
  allowedValues: option<string_>,
  @ocaml.doc("<p>The data type of the parameter. For example, <code>integer</code>:</p>")
  @as("DataType")
  dataType: option<string_>,
  @ocaml.doc("<p>How the parameter is defined. For example, <code>system</code> denotes a
            system-defined parameter.</p>")
  @as("Source")
  source: option<string_>,
  @ocaml.doc("<p>A description of the parameter</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>A list of node types, and specific parameter values for each node.</p>")
  @as("NodeTypeSpecificValues")
  nodeTypeSpecificValues: option<nodeTypeSpecificValueList>,
  @ocaml.doc("<p>The value for the parameter.</p>") @as("ParameterValue")
  parameterValue: option<string_>,
  @ocaml.doc("<p>Determines whether the parameter can be applied to any nodes, or only nodes of a
            particular type.</p>")
  @as("ParameterType")
  parameterType: option<parameterType>,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("ParameterName")
  parameterName: option<string_>,
}
type nodeList = array<node>
type subnetGroupList = array<subnetGroup>
type parameterList = array<parameter>
@ocaml.doc("<p>Contains all of the attributes of a specific DAX cluster.</p>")
type cluster = {
  @ocaml.doc(
    "<p>The description of the server-side encryption status on the specified DAX cluster.</p>"
  )
  @as("SSEDescription")
  ssedescription: option<ssedescription>,
  @ocaml.doc("<p>The parameter group being used by nodes in the cluster.</p>") @as("ParameterGroup")
  parameterGroup: option<parameterGroupStatus>,
  @ocaml.doc("<p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX
            will assume this role and use the role's permissions to access DynamoDB on your
            behalf.</p>")
  @as("IamRoleArn")
  iamRoleArn: option<string_>,
  @ocaml.doc(
    "<p>A list of security groups, and the status of each, for the nodes in the cluster.</p>"
  )
  @as("SecurityGroups")
  securityGroups: option<securityGroupMembershipList>,
  @ocaml.doc("<p>The subnet group where the DAX cluster is running.</p>") @as("SubnetGroup")
  subnetGroup: option<string_>,
  @ocaml.doc("<p>Describes a notification topic and its status. Notification topics are used for
            publishing DAX events to subscribers using Amazon Simple Notification Service
            (SNS).</p>")
  @as("NotificationConfiguration")
  notificationConfiguration: option<notificationConfiguration>,
  @ocaml.doc("<p>A range of time when maintenance of DAX cluster software will be performed. For
            example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than
            30 minutes, and is performed automatically within the maintenance window.</p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<string_>,
  @ocaml.doc("<p>A list of nodes that are currently in the cluster.</p>") @as("Nodes")
  nodes: option<nodeList>,
  @ocaml.doc("<p>A list of nodes to be removed from the cluster.</p>") @as("NodeIdsToRemove")
  nodeIdsToRemove: option<nodeIdentifierList>,
  @ocaml.doc("<p>The configuration endpoint for this DAX cluster, consisting of a DNS name and a
            port number. Client applications can specify this endpoint, rather than an individual
            node endpoint, and allow the DAX client software to intelligently route requests and
            responses to nodes in the DAX cluster.</p>")
  @as("ClusterDiscoveryEndpoint")
  clusterDiscoveryEndpoint: option<endpoint>,
  @ocaml.doc("<p>The current status of the cluster.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The node type for the nodes in the cluster. (All nodes in a DAX cluster are of
            the same type.)</p>")
  @as("NodeType")
  nodeType: option<string_>,
  @ocaml.doc("<p>The number of nodes in the cluster that are active (i.e., capable of serving
            requests).</p>")
  @as("ActiveNodes")
  activeNodes: option<integerOptional>,
  @ocaml.doc("<p>The total number of nodes in the cluster.</p>") @as("TotalNodes")
  totalNodes: option<integerOptional>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.
        </p>")
  @as("ClusterArn")
  clusterArn: option<string_>,
  @ocaml.doc("<p>The description of the cluster.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the DAX cluster.</p>") @as("ClusterName") clusterName: option<string_>,
}
type clusterList = array<cluster>
@ocaml.doc("<p>DAX is a managed caching service engineered for Amazon DynamoDB. DAX
            dramatically speeds up database reads by caching frequently-accessed data from DynamoDB, so
            applications can access that data with sub-millisecond latency. You can create a DAX
            cluster easily, using the AWS Management Console. With a few simple modifications to
            your code, your application can begin taking advantage of the DAX cluster and realize
            significant improvements in read performance.</p>")
module DeleteSubnetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the subnet group to delete.</p>") @as("SubnetGroupName")
    subnetGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>A user-specified message for this action (i.e., a reason for deleting the subnet
            group).</p>")
    @as("DeletionMessage")
    deletionMessage: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "DeleteSubnetGroupCommand"
  let make = (~subnetGroupName, ()) => new({subnetGroupName: subnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteParameterGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the parameter group to delete.</p>") @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>A user-specified message for this action (i.e., a reason for deleting the parameter
            group).</p>")
    @as("DeletionMessage")
    deletionMessage: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "DeleteParameterGroupCommand"
  let make = (~parameterGroupName, ()) => new({parameterGroupName: parameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateParameterGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the parameter group.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The name of the parameter group to apply to all of the clusters in this replication
            group.</p>")
    @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>Represents the output of a <i>CreateParameterGroup</i>
            action.</p>")
    @as("ParameterGroup")
    parameterGroup: option<parameterGroup>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "CreateParameterGroupCommand"
  let make = (~parameterGroupName, ~description=?, ()) =>
    new({description: description, parameterGroupName: parameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateParameterGroup = {
  type t
  type request = {
    @ocaml.doc("<p>An array of name-value pairs for the parameters in the group. Each element in the
            array represents a single parameter.</p>")
    @as("ParameterNameValues")
    parameterNameValues: parameterNameValueList,
    @ocaml.doc("<p>The name of the parameter group.</p>") @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>The parameter group that has been modified.</p>") @as("ParameterGroup")
    parameterGroup: option<parameterGroup>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "UpdateParameterGroupCommand"
  let make = (~parameterNameValues, ~parameterGroupName, ()) =>
    new({parameterNameValues: parameterNameValues, parameterGroupName: parameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of tag keys. If the DAX cluster has any tags with these keys, then the tags are removed from the cluster.</p>"
    )
    @as("TagKeys")
    tagKeys: keyList,
    @ocaml.doc("<p>The name of the DAX resource from which the tags should be removed.</p>")
    @as("ResourceName")
    resourceName: string_,
  }
  type response = {
    @ocaml.doc("<p>The tag keys that have been removed from the cluster.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceName, ()) => new({tagKeys: tagKeys, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the DAX resource. </p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The name of the DAX resource to which tags should be added.</p>")
    @as("ResourceName")
    resourceName: string_,
  }
  type response = {
    @ocaml.doc("<p>The list of tags that are associated with the DAX resource.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceName, ()) => new({tags: tags, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTags = {
  type t
  type request = {
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
            results from this action. If this parameter is specified, the response includes only
            results beyond the token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the DAX resource to which the tags belong.</p>") @as("ResourceName")
    resourceName: string_,
  }
  type response = {
    @ocaml.doc("<p>If this value is present, there are additional results to be displayed.  To retrieve them, call 
            <code>ListTags</code> again, with <code>NextToken</code> set to this value.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of tags currently associated with the DAX cluster.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "ListTagsCommand"
  let make = (~resourceName, ~nextToken=?, ()) =>
    new({nextToken: nextToken, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeParameterGroups = {
  type t
  type request = {
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
            results from this action. If this parameter is specified, the response includes only
            results beyond the token, up to the value specified by
            <code>MaxResults</code>.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist
            than the specified <code>MaxResults</code> value, a token is included in the response so
            that the remaining results can be retrieved.</p>
        <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>")
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>The names of the parameter groups.</p>") @as("ParameterGroupNames")
    parameterGroupNames: option<parameterGroupNameList>,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of parameter groups.  Each element in the array represents one parameter group.</p>"
    )
    @as("ParameterGroups")
    parameterGroups: option<parameterGroupList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "DescribeParameterGroupsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~parameterGroupNames=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, parameterGroupNames: parameterGroupNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  type request = {
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
            results from this action. If this parameter is specified, the response includes only
            results beyond the token, up to the value specified by
            <code>MaxResults</code>.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist
            than the specified <code>MaxResults</code> value, a token is included in the response so
            that the remaining results can be retrieved.</p>
        <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>")
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>The number of minutes' worth of events to retrieve.</p>") @as("Duration")
    duration: option<integerOptional>,
    @ocaml.doc("<p>The end of the time interval for which to retrieve events, specified in ISO 8601
            format.</p>")
    @as("EndTime")
    endTime: option<tstamp>,
    @ocaml.doc("<p>The beginning of the time interval to retrieve events for, specified in ISO 8601
            format.</p>")
    @as("StartTime")
    startTime: option<tstamp>,
    @ocaml.doc("<p>The event source to retrieve events for. If no value is specified, all events are
            returned.</p>")
    @as("SourceType")
    sourceType: option<sourceType>,
    @ocaml.doc("<p>The identifier of the event source for which events will be returned. If not
            specified, then all sources are included in the response.</p>")
    @as("SourceName")
    sourceName: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>An array of events.  Each element in the array represents one event.</p>")
    @as("Events")
    events: option<eventList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "DescribeEventsCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~duration=?,
    ~endTime=?,
    ~startTime=?,
    ~sourceType=?,
    ~sourceName=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      duration: duration,
      endTime: endTime,
      startTime: startTime,
      sourceType: sourceType,
      sourceName: sourceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSubnetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A list of subnet IDs in the subnet group.</p>") @as("SubnetIds")
    subnetIds: option<subnetIdentifierList>,
    @ocaml.doc("<p>A description of the subnet group.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The name of the subnet group.</p>") @as("SubnetGroupName")
    subnetGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>The subnet group that has been modified.</p>") @as("SubnetGroup")
    subnetGroup: option<subnetGroup>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "UpdateSubnetGroupCommand"
  let make = (~subnetGroupName, ~subnetIds=?, ~description=?, ()) =>
    new({subnetIds: subnetIds, description: description, subnetGroupName: subnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSubnetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A list of VPC subnet IDs for the subnet group.</p>") @as("SubnetIds")
    subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>A description for the subnet group</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>A name for the subnet group. This value is stored as a lowercase string. </p>")
    @as("SubnetGroupName")
    subnetGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>Represents the output of a <i>CreateSubnetGroup</i>
            operation.</p>")
    @as("SubnetGroup")
    subnetGroup: option<subnetGroup>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "CreateSubnetGroupCommand"
  let make = (~subnetIds, ~subnetGroupName, ~description=?, ()) =>
    new({subnetIds: subnetIds, description: description, subnetGroupName: subnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCluster = {
  type t
  type request = {
    @ocaml.doc("<p>A list of user-specified security group IDs to be assigned to each node in the DAX cluster.  If this parameter is not 
            specified, DAX assigns the default VPC security group to each node.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIdentifierList>,
    @ocaml.doc("<p>The name of a parameter group for this cluster.</p>") @as("ParameterGroupName")
    parameterGroupName: option<string_>,
    @ocaml.doc("<p>The current state of the topic.</p>") @as("NotificationTopicStatus")
    notificationTopicStatus: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the topic.</p>")
    @as("NotificationTopicArn")
    notificationTopicArn: option<string_>,
    @ocaml.doc("<p>A range of time when maintenance of DAX cluster software will be performed. For
            example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than
            30 minutes, and is performed automatically within the maintenance window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>A description of the changes being made to the cluster.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The name of the DAX cluster to be modified.</p>") @as("ClusterName")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>A description of the DAX cluster, after it has been modified.</p>")
    @as("Cluster")
    cluster: option<cluster>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "UpdateClusterCommand"
  let make = (
    ~clusterName,
    ~securityGroupIds=?,
    ~parameterGroupName=?,
    ~notificationTopicStatus=?,
    ~notificationTopicArn=?,
    ~preferredMaintenanceWindow=?,
    ~description=?,
    (),
  ) =>
    new({
      securityGroupIds: securityGroupIds,
      parameterGroupName: parameterGroupName,
      notificationTopicStatus: notificationTopicStatus,
      notificationTopicArn: notificationTopicArn,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      description: description,
      clusterName: clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootNode = {
  type t
  type request = {
    @ocaml.doc("<p>The system-assigned ID of the node to be rebooted.</p>") @as("NodeId")
    nodeId: string_,
    @ocaml.doc("<p>The name of the DAX cluster containing the node to be rebooted.</p>")
    @as("ClusterName")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>A description of the DAX cluster after a node has been rebooted.</p>")
    @as("Cluster")
    cluster: option<cluster>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "RebootNodeCommand"
  let make = (~nodeId, ~clusterName, ()) => new({nodeId: nodeId, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module IncreaseReplicationFactor = {
  type t
  type request = {
    @ocaml.doc("<p>The Availability Zones (AZs) in which the cluster nodes will be created. All nodes
            belonging to the cluster are placed in these Availability Zones. Use this parameter if you want
            to distribute the nodes across multiple AZs.</p>")
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZoneList>,
    @ocaml.doc("<p>The new number of nodes for the DAX cluster.</p>") @as("NewReplicationFactor")
    newReplicationFactor: integer_,
    @ocaml.doc("<p>The name of the DAX cluster that will receive additional nodes.</p>")
    @as("ClusterName")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>A description of the DAX cluster. with its new replication factor.</p>")
    @as("Cluster")
    cluster: option<cluster>,
  }
  @module("@aws-sdk/client-dax") @new
  external new: request => t = "IncreaseReplicationFactorCommand"
  let make = (~newReplicationFactor, ~clusterName, ~availabilityZones=?, ()) =>
    new({
      availabilityZones: availabilityZones,
      newReplicationFactor: newReplicationFactor,
      clusterName: clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSubnetGroups = {
  type t
  type request = {
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
            results from this action. If this parameter is specified, the response includes only
            results beyond the token, up to the value specified by
            <code>MaxResults</code>.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist
            than the specified <code>MaxResults</code> value, a token is included in the response so
            that the remaining results can be retrieved.</p>
            <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>")
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>The name of the subnet group.</p>") @as("SubnetGroupNames")
    subnetGroupNames: option<subnetGroupNameList>,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of subnet groups.  Each element in the array represents a single subnet group.</p>"
    )
    @as("SubnetGroups")
    subnetGroups: option<subnetGroupList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "DescribeSubnetGroupsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~subnetGroupNames=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, subnetGroupNames: subnetGroupNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeParameters = {
  type t
  type request = {
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
            results from this action. If this parameter is specified, the response includes only
            results beyond the token, up to the value specified by
            <code>MaxResults</code>.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist
            than the specified <code>MaxResults</code> value, a token is included in the response so
            that the remaining results can be retrieved.</p>
        <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>")
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>How the parameter is defined. For example, <code>system</code> denotes a
            system-defined parameter.</p>")
    @as("Source")
    source: option<string_>,
    @ocaml.doc("<p>The name of the parameter group.</p>") @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of parameters within a parameter group.  Each element in the list represents one parameter.</p>"
    )
    @as("Parameters")
    parameters: option<parameterList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "DescribeParametersCommand"
  let make = (~parameterGroupName, ~nextToken=?, ~maxResults=?, ~source=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      source: source,
      parameterGroupName: parameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDefaultParameters = {
  type t
  type request = {
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
            results from this action. If this parameter is specified, the response includes only
            results beyond the token, up to the value specified by
            <code>MaxResults</code>.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist
            than the specified <code>MaxResults</code> value, a token is included in the response so
            that the remaining results can be retrieved.</p>
        <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>")
    @as("MaxResults")
    maxResults: option<integerOptional>,
  }
  type response = {
    @ocaml.doc("<p>A list of parameters.  Each element in the list represents one parameter.</p>")
    @as("Parameters")
    parameters: option<parameterList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new
  external new: request => t = "DescribeDefaultParametersCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the cluster to be deleted.</p>") @as("ClusterName")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>A description of the DAX cluster that is being deleted.</p>") @as("Cluster")
    cluster: option<cluster>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "DeleteClusterCommand"
  let make = (~clusterName, ()) => new({clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DecreaseReplicationFactor = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifiers of the nodes to be removed from the cluster.</p>")
    @as("NodeIdsToRemove")
    nodeIdsToRemove: option<nodeIdentifierList>,
    @ocaml.doc("<p>The Availability Zone(s) from which to remove nodes.</p>")
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZoneList>,
    @ocaml.doc("<p>The new number of nodes for the DAX cluster.</p>") @as("NewReplicationFactor")
    newReplicationFactor: integer_,
    @ocaml.doc("<p>The name of the DAX cluster from which you want to remove nodes.</p>")
    @as("ClusterName")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>A description of the DAX cluster, after you have decreased its replication
            factor.</p>")
    @as("Cluster")
    cluster: option<cluster>,
  }
  @module("@aws-sdk/client-dax") @new
  external new: request => t = "DecreaseReplicationFactorCommand"
  let make = (~newReplicationFactor, ~clusterName, ~nodeIdsToRemove=?, ~availabilityZones=?, ()) =>
    new({
      nodeIdsToRemove: nodeIdsToRemove,
      availabilityZones: availabilityZones,
      newReplicationFactor: newReplicationFactor,
      clusterName: clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCluster = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Represents the settings used to enable server-side encryption on the cluster.</p>"
    )
    @as("SSESpecification")
    ssespecification: option<ssespecification>,
    @ocaml.doc("<p>A set of tags to associate with the DAX cluster.  </p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The parameter group to be associated with the DAX cluster.</p>")
    @as("ParameterGroupName")
    parameterGroupName: option<string_>,
    @ocaml.doc("<p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX
            will assume this role and use the role's permissions to access DynamoDB on your
            behalf.</p>")
    @as("IamRoleArn")
    iamRoleArn: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications will
            be sent.</p>
        <note>
            <p>The Amazon SNS topic owner must be same as the DAX cluster owner.</p>
        </note>")
    @as("NotificationTopicArn")
    notificationTopicArn: option<string_>,
    @ocaml.doc("<p>Specifies the weekly time range during which maintenance on the DAX cluster is
            performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock
            UTC). The minimum maintenance window is a 60 minute period. Valid values for
                <code>ddd</code> are:</p>
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
        <p>Example: <code>sun:05:00-sun:09:00</code>
        </p>
        <note>
            <p>If you don't specify a preferred maintenance window when you create or modify a
                cache cluster, DAX assigns a 60-minute maintenance window on a randomly selected day
                of the week.</p>
         </note>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>A list of security group IDs to be assigned to each node in the DAX cluster. (Each of the 
             security group ID is system-generated.)</p>
        <p>If this parameter is not specified, DAX assigns the default VPC security group to
            each node.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIdentifierList>,
    @ocaml.doc("<p>The name of the subnet group to be used for the replication group.</p>
        <important>
            <p>DAX clusters can only run in an Amazon VPC environment. All of the subnets
                that you specify in a subnet group must exist in the same VPC.</p>
        </important>")
    @as("SubnetGroupName")
    subnetGroupName: option<string_>,
    @ocaml.doc("<p>The Availability Zones (AZs) in which the cluster nodes will reside after the cluster
         has been created or updated. If provided, the length of this list must equal the <code>ReplicationFactor</code> parameter.
         If you omit this parameter, DAX will spread the nodes across Availability Zones for the highest availability.</p>")
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZoneList>,
    @ocaml.doc("<p>The number of nodes in the DAX cluster. A replication factor of 1 will
            create a single-node cluster, without any read replicas. For additional fault tolerance,
            you can create a multiple node cluster with one or more read replicas. To do this, set
                <code>ReplicationFactor</code> to a number between 3 (one primary and two read replicas) and 10 (one primary and nine read replicas). 
                 <code>If the AvailabilityZones</code> parameter is provided, its length must equal the <code>ReplicationFactor</code>.</p>
        <note>
            <p>AWS recommends that you have at least two read replicas per cluster.</p>
         </note>")
    @as("ReplicationFactor")
    replicationFactor: integer_,
    @ocaml.doc("<p>A description of the cluster.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The compute and memory capacity of the nodes in the cluster.</p>")
    @as("NodeType")
    nodeType: string_,
    @ocaml.doc("<p>The cluster identifier. This parameter is stored as a lowercase
            string.</p>
        <p>
            <b>Constraints:</b>
        </p>
        <ul>
            <li>
                <p>A name must contain from 1 to 20 alphanumeric characters or
                    hyphens.</p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>A name cannot end with a hyphen or contain two consecutive
                    hyphens.</p>
            </li>
         </ul>")
    @as("ClusterName")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>A description of the DAX cluster that you have created.</p>") @as("Cluster")
    cluster: option<cluster>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "CreateClusterCommand"
  let make = (
    ~iamRoleArn,
    ~replicationFactor,
    ~nodeType,
    ~clusterName,
    ~ssespecification=?,
    ~tags=?,
    ~parameterGroupName=?,
    ~notificationTopicArn=?,
    ~preferredMaintenanceWindow=?,
    ~securityGroupIds=?,
    ~subnetGroupName=?,
    ~availabilityZones=?,
    ~description=?,
    (),
  ) =>
    new({
      ssespecification: ssespecification,
      tags: tags,
      parameterGroupName: parameterGroupName,
      iamRoleArn: iamRoleArn,
      notificationTopicArn: notificationTopicArn,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      securityGroupIds: securityGroupIds,
      subnetGroupName: subnetGroupName,
      availabilityZones: availabilityZones,
      replicationFactor: replicationFactor,
      description: description,
      nodeType: nodeType,
      clusterName: clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusters = {
  type t
  type request = {
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
            results from this action. If this parameter is specified, the response includes only
            results beyond the token, up to the value specified by
            <code>MaxResults</code>.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist
            than the specified <code>MaxResults</code> value, a token is included in the response so
            that the remaining results can be retrieved.</p>
        <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>")
    @as("MaxResults")
    maxResults: option<integerOptional>,
    @ocaml.doc("<p>The names of the DAX clusters being described.</p>") @as("ClusterNames")
    clusterNames: option<clusterNameList>,
  }
  type response = {
    @ocaml.doc("<p>The descriptions of your DAX clusters, in response to a
            <i>DescribeClusters</i> request.</p>")
    @as("Clusters")
    clusters: option<clusterList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-dax") @new external new: request => t = "DescribeClustersCommand"
  let make = (~nextToken=?, ~maxResults=?, ~clusterNames=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, clusterNames: clusterNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
