type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-resource-groups") @new
external createClient: unit => awsServiceClient = "ResourceGroupsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tagValue = string
type tagKey = string
type resourceType = string
type resourceStatusValue = [@as("PENDING") #PENDING]
type resourceFilterValue = string
type resourceFilterName = [@as("resource-type") #Resource_Type]
type resourceArn = string
type queryType = [
  | @as("CLOUDFORMATION_STACK_1_0") #CLOUDFORMATION_STACK_1_0
  | @as("TAG_FILTERS_1_0") #TAG_FILTERS_1_0
]
type queryErrorMessage = string
type queryErrorCode = [
  | @as("CLOUDFORMATION_STACK_NOT_EXISTING") #CLOUDFORMATION_STACK_NOT_EXISTING
  | @as("CLOUDFORMATION_STACK_INACTIVE") #CLOUDFORMATION_STACK_INACTIVE
]
type query = string
type nextToken = string
type maxResults = int
type groupString = string
type groupName = string
type groupFilterValue = string
type groupFilterName = [
  | @as("configuration-type") #Configuration_Type
  | @as("resource-type") #Resource_Type
]
type groupConfigurationType = string
type groupConfigurationStatus = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATE_COMPLETE") #UPDATE_COMPLETE
  | @as("UPDATING") #UPDATING
]
type groupConfigurationParameterValue = string
type groupConfigurationParameterName = string
type groupConfigurationFailureReason = string
type groupArn = string
type errorMessage = string
type errorCode = string
type description = string
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A structure that identifies the current group membership status for a resource. Adding
            a resource to a resource group is performed asynchronously as a background task. A
                <code>PENDING</code> status indicates, for this resource, that the process isn't
            completed yet.</p>")
type resourceStatus = {
  @ocaml.doc("<p>The current status.</p>") @as("Name") name: option<resourceStatusValue>,
}
@ocaml.doc("<p>The query that is used to define a resource group or a search for resources. A query
            specifies both a query type and a query string as a JSON object. See the examples
            section for example JSON strings.</p>
        <p>The examples that follow are shown as standard JSON strings. If you include such a
            string as a parameter to the AWS CLI or an SDK API, you might need to 'escape' the
            string into a single line. For example, see the <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html\">Quoting
                strings</a> in the <i>AWS CLI User Guide</i>.</p>
        <p>
            <b>Example 1</b>
         </p>
        <p>The following generic example shows a resource query JSON string that includes only
            resources that meet the following criteria:</p>
        <ul>
            <li>
                <p>The resource type must be either <code>resource_type1</code> or
                        <code>resource_type2</code>.</p>
            </li>
            <li>
                <p>The resource must have a tag <code>Key1</code> with a value of either
                        <code>ValueA</code> or <code>ValueB</code>.</p>
            </li>
            <li>
                <p>The resource must have a tag <code>Key2</code> with a value of either
                        <code>ValueC</code> or <code>ValueD</code>.</p>
            </li>
         </ul>
        <p>
            <code>{
    \"Type\": \"TAG_FILTERS_1_0\",
    \"Query\": {
        \"ResourceTypeFilters\": [ \"resource_type1\", \"resource_type2\"],
        \"TagFilters\": [
            {
                \"Key\": \"Key1\",
                \"Values\": [\"ValueA\",\"ValueB\"]
            },
            {
                \"Key\":\"Key2\",
                \"Values\":[\"ValueC\",\"ValueD\"]
            }
        ]
    }
}</code>
         </p>
        <p>This has the equivalent \"shortcut\" syntax of the following:</p>
        <p>
            <code>{
    \"Type\": \"TAG_FILTERS_1_0\",
    \"Query\": {
        \"ResourceTypeFilters\": [ \"resource_type1\", \"resource_type2\"],
        \"TagFilters\": [
            { \"Key1\": [\"ValueA\",\"ValueB\"] },
            { \"Key2\": [\"ValueC\",\"ValueD\"]
            }
        ]
    }
}</code>
         </p>
        <p>
            <b>Example 2</b>
         </p>
        <p>The following example shows a resource query JSON string that includes only Amazon EC2
            instances that are tagged <code>Stage</code> with a value of <code>Test</code>.</p>
        <p>
            <code>{
    \"Type\": \"TAG_FILTERS_1_0\",
    \"Query\": \"{
        \"ResourceTypeFilters\": \"AWS::EC2::Instance\",
        \"TagFilters\": { \"Stage\": \"Test\" }
    }
}</code>
         </p>
        <p>
            <b>Example 3</b>
         </p>
        <p>The following example shows a resource query JSON string that includes resource of any
            supported type as long as it is tagged <code>Stage</code> with a value of
                <code>Prod</code>.</p>
        <p>
            <code>{
    \"Type\": \"TAG_FILTERS_1_0\",
    \"Query\": {
        \"ResourceTypeFilters\": \"AWS::AllSupported\",
        \"TagFilters\": { \"Stage\": \"Prod\" }
    }
}</code>
         </p>
        <p>
            <b>Example 4</b>
         </p>
        <p>The following example shows a resource query JSON string that includes only Amazon EC2
            instances and Amazon S3 buckets that are part of the specified AWS CloudFormation stack.</p>
        <p>
            <code>{
    \"Type\": \"CLOUDFORMATION_STACK_1_0\",
    \"Query\": {
        \"ResourceTypeFilters\": [ \"AWS::EC2::Instance\", \"AWS::S3::Bucket\" ],
        \"StackIdentifier\": \"arn:aws:cloudformation:us-west-2:123456789012:stack/AWStestuseraccount/fb0d5000-aba8-00e8-aa9e-50d5cEXAMPLE\"
    }
}</code>
         </p>")
type resourceQuery = {
  @ocaml.doc("<p>The query that defines a group or a search.</p>") @as("Query") query: query,
  @ocaml.doc("<p>The type of the query. You can use the following values:</p>
        <ul>
            <li>
                <p>
                  <i>
                     <code>CLOUDFORMATION_STACK_1_0:</code>
                  </i>Specifies that the
                        <code>Query</code> contains an ARN for a CloudFormation stack.</p>
            </li>
            <li>
                <p>
                  <i>
                     <code>TAG_FILTERS_1_0:</code>
                  </i>Specifies that the
                        <code>Query</code> parameter contains a JSON string that represents a
                    collection of simple tag filters for resource types and tags. The JSON string
                    uses a syntax similar to the <code>
                     <a href=\"https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html\">GetResources</a>
                  </code> operation, but uses only the <code>
                     <a href=\"https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html#resourcegrouptagging-GetResources-request-ResourceTypeFilters\"> ResourceTypeFilters</a>
                  </code> and <code>
                     <a href=\"https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html#resourcegrouptagging-GetResources-request-TagFiltersTagFilters\">TagFilters</a>
                  </code> fields. If you specify more than one tag key,
                    only resources that match all tag keys, and at least one value of each specified
                    tag key, are returned in your query. If you specify more than one value for a
                    tag key, a resource matches the filter if it has a tag key value that matches
                        <i>any</i> of the specified values.</p>
                <p>For example, consider the following sample query for resources that have two
                    tags, <code>Stage</code> and <code>Version</code>, with two values each:</p>
                <p>
                  <code>[{\"Stage\":[\"Test\",\"Deploy\"]},{\"Version\":[\"1\",\"2\"]}]</code>
               </p>
                <p>The results of this query could include the following.</p>
                <ul>
                  <li>
                        <p>An EC2 instance that has the following two tags:
                                <code>{\"Stage\":\"Deploy\"}</code>, and
                            <code>{\"Version\":\"2\"}</code>
                     </p>
                    </li>
                  <li>
                        <p>An S3 bucket that has the following two tags:
                                <code>{\"Stage\":\"Test\"}</code>, and
                            <code>{\"Version\":\"1\"}</code>
                     </p>
                    </li>
               </ul>
                <p>The query would not include the following items in the results, however. </p>
                <ul>
                  <li>
                        <p>An EC2 instance that has only the following tag:
                                <code>{\"Stage\":\"Deploy\"}</code>.</p>
                        <p>The instance does not have <b>all</b> of the
                            tag keys specified in the filter, so it is excluded from the
                            results.</p>
                    </li>
                  <li>
                        <p>An RDS database that has the following two tags:
                                <code>{\"Stage\":\"Archived\"}</code> and
                            <code>{\"Version\":\"4\"}</code>
                     </p>
                        <p>The database has all of the tag keys, but none of those keys has an
                            associated value that matches at least one of the specified values in
                            the filter.</p>
                    </li>
               </ul>
            </li>
         </ul>")
  @as("Type")
  type_: queryType,
}
@ocaml.doc("<p>A structure that contains the ARN of a resource and its resource type.</p>")
type resourceIdentifier = {
  @ocaml.doc("<p>The resource type of a resource, such as <code>AWS::EC2::Instance</code>.</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The ARN of a resource.</p>") @as("ResourceArn") resourceArn: option<resourceArn>,
}
type resourceFilterValues = array<resourceFilterValue>
type resourceArnList = array<resourceArn>
@ocaml.doc("<p>A two-part error structure that can occur in <code>ListGroupResources</code> or
                <code>SearchResources</code> operations on CloudFormation stack-based queries. The error
            occurs if the CloudFormation stack on which the query is based either does not exist, or has a
            status that renders the stack inactive. A <code>QueryError</code> occurrence does not
            necessarily mean that AWS Resource Groups could not complete the operation, but the resulting
            group might have no member resources.</p>")
type queryError = {
  @ocaml.doc("<p>A message that explains the <code>ErrorCode</code> value. Messages might state that
            the specified CloudFormation stack does not exist (or no longer exists). For
                <code>CLOUDFORMATION_STACK_INACTIVE</code>, the message typically states that the
            CloudFormation stack has a status that is not (or no longer) active, such as
                <code>CREATE_FAILED</code>.</p>")
  @as("Message")
  message: option<queryErrorMessage>,
  @ocaml.doc("<p>Possible values are <code>CLOUDFORMATION_STACK_INACTIVE</code> and
                <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>.</p>")
  @as("ErrorCode")
  errorCode: option<queryErrorCode>,
}
@ocaml.doc("<p>A structure that identifies a resource that is currently pending addition to the group
            as a member. Adding a resource to a resource group happens asynchronously as a
            background task and this one isn't completed yet.</p>")
type pendingResource = {
  @ocaml.doc("<p>The Amazon resource name (ARN) of the resource that's in a pending state.</p>")
  @as("ResourceArn")
  resourceArn: option<resourceArn>,
}
@ocaml.doc("<p>The unique identifiers for a resource group.</p>")
type groupIdentifier = {
  @ocaml.doc("<p>The ARN of the resource group.</p>") @as("GroupArn") groupArn: option<groupArn>,
  @ocaml.doc("<p>The name of the resource group.</p>") @as("GroupName")
  groupName: option<groupName>,
}
type groupFilterValues = array<groupFilterValue>
type groupConfigurationParameterValueList = array<groupConfigurationParameterValue>
@ocaml.doc("<p>A resource group that contains AWS resources. You can assign resources to the group
            by associating either of the following elements with the group:</p>
        <ul>
            <li>
                <p>
                  <a>ResourceQuery</a> - Use a resource query to specify a set of tag
                    keys and values. All resources in the same AWS Region and AWS account that
                    have those keys with the same values are included in the group. You can add a
                    resource query when you create the group, or later by using the <a>PutGroupConfiguration</a> operation.</p>
            </li>
            <li>
                <p>
                  <a>GroupConfiguration</a> - Use a service configuration to
                    associate the group with an AWS service. The configuration specifies which
                    resource types can be included in the group.</p>
            </li>
         </ul>")
type group = {
  @ocaml.doc("<p>The description of the resource group.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The name of the resource group.</p>") @as("Name") name: groupName,
  @ocaml.doc("<p>The ARN of the resource group.</p>") @as("GroupArn") groupArn: groupArn,
}
@ocaml.doc("<p>A resource that failed to be added to or removed from a group.</p>")
type failedResource = {
  @ocaml.doc("<p>The error code associated with the failure.</p>") @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The error message text associated with the failure.</p>") @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The ARN of the resource that failed to be added or removed.</p>")
  @as("ResourceArn")
  resourceArn: option<resourceArn>,
}
type resourceIdentifierList = array<resourceIdentifier>
@ocaml.doc("<p>A filter name and value pair that is used to obtain more specific results from a list
            of resources.</p>")
type resourceFilter = {
  @ocaml.doc("<p>One or more filter values. Allowed filter values vary by resource filter name, and are
            case-sensitive.</p>")
  @as("Values")
  values: resourceFilterValues,
  @ocaml.doc("<p>The name of the filter. Filter names are case-sensitive.</p>") @as("Name")
  name: resourceFilterName,
}
type queryErrorList = array<queryError>
type pendingResourceList = array<pendingResource>
@ocaml.doc("<p>A structure returned by the <a>ListGroupResources</a> operation that
            contains identity and group membership status information for one of the resources in
            the group.</p>")
type listGroupResourcesItem = {
  @ocaml.doc("<p>A structure that contains the status of this resource's membership in the
            group.</p>
        <note>
            <p>This field is present in the response only if the group is of type
                    <code>AWS::EC2::HostManagement</code>.</p>
        </note>")
  @as("Status")
  status: option<resourceStatus>,
  @as("Identifier") identifier: option<resourceIdentifier>,
}
@ocaml.doc("<p>A mapping of a query attached to a resource group that determines the AWS resources
            that are members of the group.</p>")
type groupQuery = {
  @ocaml.doc("<p>The resource query that determines which AWS resources are members of the associated
            resource group.</p>")
  @as("ResourceQuery")
  resourceQuery: resourceQuery,
  @ocaml.doc("<p>The name of the resource group that is associated with the specified resource
            query.</p>")
  @as("GroupName")
  groupName: groupName,
}
type groupList = array<group>
type groupIdentifierList = array<groupIdentifier>
@ocaml.doc("<p>A filter collection that you can use to restrict the results from a <code>List</code>
            operation to only those you want to include.</p>")
type groupFilter = {
  @ocaml.doc("<p>One or more filter values. Allowed filter values vary by group filter name, and are
            case-sensitive.</p>")
  @as("Values")
  values: groupFilterValues,
  @ocaml.doc("<p>The name of the filter. Filter names are case-sensitive.</p>") @as("Name")
  name: groupFilterName,
}
@ocaml.doc("<p>A parameter for a group configuration item. For details about group service
            configuration syntax, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html\">Service configurations for resource
                groups</a>.</p>")
type groupConfigurationParameter = {
  @ocaml.doc("<p>The value or values to be used for the specified parameter. For the list of values you
            can use with each parameter, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types\">Supported resource types and
                parameters</a>.</p>")
  @as("Values")
  values: option<groupConfigurationParameterValueList>,
  @ocaml.doc("<p>The name of the group configuration parameter. For the list of parameters that you can
            use with each configuration item type, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types\">Supported resource types and
                parameters</a>.</p>")
  @as("Name")
  name: groupConfigurationParameterName,
}
type failedResourceList = array<failedResource>
type resourceFilterList = array<resourceFilter>
type listGroupResourcesItemList = array<listGroupResourcesItem>
type groupParameterList = array<groupConfigurationParameter>
type groupFilterList = array<groupFilter>
@ocaml.doc("<p>An item in a group configuration. A group service configuration can have one or more
            items. For details about group service configuration syntax, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html\">Service configurations for
                resource groups</a>.</p>")
type groupConfigurationItem = {
  @ocaml.doc("<p>A collection of parameters for this group configuration item. For the list of
            parameters that you can use with each configuration item type, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types\">Supported
                resource types and parameters</a>.</p>")
  @as("Parameters")
  parameters: option<groupParameterList>,
  @ocaml.doc("<p>Specifies the type of group configuration item. Each item must have a unique value for
                <code>type</code>. For the list of types that you can specify for a configuration
            item, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types\">Supported resource types and
                parameters</a>.</p>")
  @as("Type")
  type_: groupConfigurationType,
}
type groupConfigurationList = array<groupConfigurationItem>
@ocaml.doc("<p>A service configuration associated with a resource group. The configuration options
            are determined by the AWS service that defines the <code>Type</code>, and specifies
            which resources can be included in the group. You can add a service configuration when
            you create the group by using <a>CreateGroup</a>, or later by using the <a>PutGroupConfiguration</a> operation. For details about group service
            configuration syntax, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html\">Service configurations for resource
                groups</a>.</p>")
type groupConfiguration = {
  @ocaml.doc(
    "<p>If present, the reason why a request to update the group configuration failed.</p>"
  )
  @as("FailureReason")
  failureReason: option<groupConfigurationFailureReason>,
  @ocaml.doc("<p>The current status of an attempt to update the group configuration.</p>")
  @as("Status")
  status: option<groupConfigurationStatus>,
  @ocaml.doc("<p>If present, the new configuration that is in the process of being applied to the
            group.</p>")
  @as("ProposedConfiguration")
  proposedConfiguration: option<groupConfigurationList>,
  @ocaml.doc("<p>The configuration currently associated with the group and in effect.</p>")
  @as("Configuration")
  configuration: option<groupConfigurationList>,
}
@ocaml.doc("<fullname>AWS Resource Groups</fullname>

        <p>AWS Resource Groups lets you organize AWS resources such as Amazon EC2 instances, Amazon Relational Database Service
            databases, and Amazon S3 buckets into groups using criteria that you define as tags. A
            resource group is a collection of resources that match the resource types specified in a
            query, and share one or more tags or portions of tags. You can create a group of
            resources based on their roles in your cloud infrastructure, lifecycle stages, regions,
            application layers, or virtually any criteria. Resource Groups enable you to automate management
            tasks, such as those in AWS Systems Manager Automation documents, on tag-related resources in
            AWS Systems Manager. Groups of tagged resources also let you quickly view a custom console in
            AWS Systems Manager that shows AWS Config compliance and other monitoring data about member
            resources.</p>
        <p>To create a resource group, build a resource query, and specify tags that identify the
            criteria that members of the group have in common. Tags are key-value pairs.</p>
        <p>For more information about Resource Groups, see the <a href=\"https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html\">AWS Resource Groups User Guide</a>.</p>
        <p>AWS Resource Groups uses a REST-compliant API that you can use to perform the following types of
            operations.</p>
        <ul>
            <li>
                <p>Create, Read, Update, and Delete (CRUD) operations on resource groups and
                    resource query entities</p>
            </li>
            <li>
                <p>Applying, editing, and removing tags from resource groups</p>
            </li>
            <li>
                <p>Resolving resource group member ARNs so they can be returned as search
                    results</p>
            </li>
            <li>
                <p>Getting data about resources that are members of a group</p>
            </li>
            <li>
                <p>Searching AWS resources based on a resource query</p>
            </li>
         </ul>")
module UpdateGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The new description that you want to update the resource group with. Descriptions can
            contain letters, numbers, hyphens, underscores, periods, and spaces.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name or the ARN of the resource group to modify.</p>") @as("Group")
    group: option<groupString>,
    @ocaml.doc("<p>Don't use this parameter. Use <code>Group</code> instead.</p>") @as("GroupName")
    groupName: option<groupName>,
  }
  type response = {
    @ocaml.doc("<p>The update description of the resource group.</p>") @as("Group")
    group: option<group>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "UpdateGroupCommand"
  let make = (~description=?, ~group=?, ~groupName=?, ()) =>
    new({description: description, group: group, groupName: groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Untag = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags to be removed.</p>") @as("Keys") keys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource group from which to remove tags. The command removed both the
            specified keys and any values associated with those keys.</p>")
    @as("Arn")
    arn: groupArn,
  }
  type response = {
    @ocaml.doc("<p>The keys of the tags that were removed.</p>") @as("Keys")
    keys: option<tagKeyList>,
    @ocaml.doc("<p>The ARN of the resource group from which tags have been removed.</p>") @as("Arn")
    arn: option<groupArn>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "UntagCommand"
  let make = (~keys, ~arn, ()) => new({keys: keys, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Tag = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add to the specified resource group. A tag is a string-to-string map of
            key-value pairs.</p>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>The ARN of the resource group to which to add tags.</p>") @as("Arn")
    arn: groupArn,
  }
  type response = {
    @ocaml.doc("<p>The tags that have been added to the specified resource group.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The ARN of the tagged resource.</p>") @as("Arn") arn: option<groupArn>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "TagCommand"
  let make = (~tags, ~arn, ()) => new({tags: tags, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTags = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource group whose tags you want to retrieve.</p>") @as("Arn")
    arn: groupArn,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with the specified resource group.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The ARN of the tagged resource group.</p>") @as("Arn") arn: option<groupArn>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "GetTagsCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name or the ARN of the resource group to retrieve.</p>") @as("Group")
    group: option<groupString>,
    @ocaml.doc("<p>Deprecated - don't use this parameter. Use <code>Group</code> instead.</p>")
    @as("GroupName")
    groupName: option<groupName>,
  }
  type response = {
    @ocaml.doc("<p>A full description of the resource group.</p>") @as("Group")
    group: option<group>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "GetGroupCommand"
  let make = (~group=?, ~groupName=?, ()) => new({group: group, groupName: groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name or the ARN of the resource group to delete.</p>") @as("Group")
    group: option<groupString>,
    @ocaml.doc("<p>Deprecated - don't use this parameter. Use <code>Group</code> instead.</p>")
    @as("GroupName")
    groupName: option<groupName>,
  }
  type response = {
    @ocaml.doc("<p>A full description of the deleted resource group.</p>") @as("Group")
    group: option<group>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "DeleteGroupCommand"
  let make = (~group=?, ~groupName=?, ()) => new({group: group, groupName: groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGroupQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The resource query to determine which AWS resources are members of this resource
            group.</p>
        <note>
            <p>A resource group can contain either a <code>Configuration</code> or a
                    <code>ResourceQuery</code>, but not both.</p>
        </note>")
    @as("ResourceQuery")
    resourceQuery: resourceQuery,
    @ocaml.doc("<p>The name or the ARN of the resource group to query.</p>") @as("Group")
    group: option<groupString>,
    @ocaml.doc("<p>Don't use this parameter. Use <code>Group</code> instead.</p>") @as("GroupName")
    groupName: option<groupName>,
  }
  type response = {
    @ocaml.doc(
      "<p>The updated resource query associated with the resource group after the update.</p>"
    )
    @as("GroupQuery")
    groupQuery: option<groupQuery>,
  }
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "UpdateGroupQueryCommand"
  let make = (~resourceQuery, ~group=?, ~groupName=?, ()) =>
    new({resourceQuery: resourceQuery, group: group, groupName: groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UngroupResources = {
  type t
  type request = {
    @ocaml.doc("<p>The ARNs of the resources to be removed from the group.</p>") @as("ResourceArns")
    resourceArns: resourceArnList,
    @ocaml.doc(
      "<p>The name or the ARN of the resource group from which to remove the resources.</p>"
    )
    @as("Group")
    group: groupString,
  }
  type response = {
    @ocaml.doc("<p>A list of any resources that are still in the process of being removed from the group
            by this operation. These pending removals continue asynchronously. You can check the
            status of pending removals by using the <code>
               <a>ListGroupResources</a>
            </code> operation. After the resource is successfully removed, it no longer
            appears in the response.</p>")
    @as("Pending")
    pending: option<pendingResourceList>,
    @ocaml.doc("<p>A list of any resources that failed to be removed from the group by this
            operation.</p>")
    @as("Failed")
    failed: option<failedResourceList>,
    @ocaml.doc("<p>A list of resources that were successfully removed from the group by this
            operation.</p>")
    @as("Succeeded")
    succeeded: option<resourceArnList>,
  }
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "UngroupResourcesCommand"
  let make = (~resourceArns, ~group, ()) => new({resourceArns: resourceArns, group: group})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchResources = {
  type t
  type request = {
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a
<code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
indicates that more output is available. Set this parameter to the value provided by a previous 
call's <code>NextToken</code> response to indicate where the output should continue from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
response. If you do not include this parameter, it defaults to a value that is specific to the 
operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
response element is present and has a value (is not null). Include that value as the 
<code>NextToken</code> request parameter in the next call to the operation to get the next part 
of the results. Note that the service might return fewer results than the maximum even when there 
are more results available. You should check <code>NextToken</code> after every operation to 
ensure that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The search query, using the same formats that are supported for resource group
            definition. For more information, see <a>CreateGroup</a>.</p>")
    @as("ResourceQuery")
    resourceQuery: resourceQuery,
  }
  type response = {
    @ocaml.doc("<p>A list of <code>QueryError</code> objects. Each error is an object that contains
                <code>ErrorCode</code> and <code>Message</code> structures. Possible values for
                <code>ErrorCode</code> are <code>CLOUDFORMATION_STACK_INACTIVE</code> and
                <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>.</p>")
    @as("QueryErrors")
    queryErrors: option<queryErrorList>,
    @ocaml.doc("<p>If present, indicates that more output is available than is 
included in the current response. Use this value in the <code>NextToken</code> request parameter 
in a subsequent call to the operation to get the next part of the output. You should repeat this 
until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARNs and resource types of resources that are members of the group that you
            specified.</p>")
    @as("ResourceIdentifiers")
    resourceIdentifiers: option<resourceIdentifierList>,
  }
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "SearchResourcesCommand"
  let make = (~resourceQuery, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, resourceQuery: resourceQuery})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GroupResources = {
  type t
  type request = {
    @ocaml.doc("<p>The list of ARNs for resources to be added to the group. </p>")
    @as("ResourceArns")
    resourceArns: resourceArnList,
    @ocaml.doc("<p>The name or the ARN of the resource group to add resources to.</p>") @as("Group")
    group: groupString,
  }
  type response = {
    @ocaml.doc("<p>A list of ARNs of any resources that are still in the process of being added to the
            group by this operation. These pending additions continue asynchronously. You can check
            the status of pending additions by using the <code>
               <a>ListGroupResources</a>
            </code> operation, and checking the <code>Resources</code> array in the response
            and the <code>Status</code> field of each object in that array. </p>")
    @as("Pending")
    pending: option<pendingResourceList>,
    @ocaml.doc("<p>A list of ARNs of any resources that failed to be added to the group by this
            operation.</p>")
    @as("Failed")
    failed: option<failedResourceList>,
    @ocaml.doc("<p>A list of ARNs of resources that were successfully added to the group by this
            operation.</p>")
    @as("Succeeded")
    succeeded: option<resourceArnList>,
  }
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "GroupResourcesCommand"
  let make = (~resourceArns, ~group, ()) => new({resourceArns: resourceArns, group: group})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGroupQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The name or the ARN of the resource group to query.</p>") @as("Group")
    group: option<groupString>,
    @ocaml.doc("<p>Don't use this parameter. Use <code>Group</code> instead.</p>") @as("GroupName")
    groupName: option<groupName>,
  }
  type response = {
    @ocaml.doc("<p>The resource query associated with the specified group. For more information about
            resource queries, see <a href=\"https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag\">Create
                a tag-based group in Resource Groups</a>.</p>")
    @as("GroupQuery")
    groupQuery: option<groupQuery>,
  }
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "GetGroupQueryCommand"
  let make = (~group=?, ~groupName=?, ()) => new({group: group, groupName: groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a
<code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
indicates that more output is available. Set this parameter to the value provided by a previous 
call's <code>NextToken</code> response to indicate where the output should continue from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
response. If you do not include this parameter, it defaults to a value that is specific to the 
operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
response element is present and has a value (is not null). Include that value as the 
<code>NextToken</code> request parameter in the next call to the operation to get the next part 
of the results. Note that the service might return fewer results than the maximum even when there 
are more results available. You should check <code>NextToken</code> after every operation to 
ensure that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Filters, formatted as <a>GroupFilter</a> objects, that you want to apply to
            a <code>ListGroups</code> operation.</p>
        <ul>
            <li>
                <p>
                  <code>resource-type</code> - Filter the results to include only those of the
                    specified resource types. Specify up to five resource types in the format
                            <code>AWS::<i>ServiceCode</i>::<i>ResourceType</i>
                  </code>.
                    For example, <code>AWS::EC2::Instance</code>, or
                    <code>AWS::S3::Bucket</code>.</p>
            </li>
            <li>
                <p>
                  <code>configuration-type</code> - Filter the results to include only those
                    groups that have the specified configuration types attached. The current
                    supported values are:</p>
                <ul>
                  <li>
                        <p>
                        <code>AWS:EC2::CapacityReservationPool</code>
                     </p>
                    </li>
                  <li>
                        <p>
                        <code>AWS:EC2::HostManagement</code>
                     </p>
                    </li>
               </ul>
            </li>
         </ul>")
    @as("Filters")
    filters: option<groupFilterList>,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
included in the current response. Use this value in the <code>NextToken</code> request parameter 
in a subsequent call to the operation to get the next part of the output. You should repeat this 
until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<important>
            <p>
               <i>
                  <b>Deprecated - don't use this field. Use the
                            <code>GroupIdentifiers</code> response field
                    instead.</b>
               </i>
            </p>
        </important>")
    @as("Groups")
    groups: option<groupList>,
    @ocaml.doc("<p>A list of <a>GroupIdentifier</a> objects. Each identifier is an object that
            contains both the <code>Name</code> and the <code>GroupArn</code>.</p>")
    @as("GroupIdentifiers")
    groupIdentifiers: option<groupIdentifierList>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "ListGroupsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroupResources = {
  type t
  type request = {
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a
<code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
indicates that more output is available. Set this parameter to the value provided by a previous 
call's <code>NextToken</code> response to indicate where the output should continue from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
response. If you do not include this parameter, it defaults to a value that is specific to the 
operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
response element is present and has a value (is not null). Include that value as the 
<code>NextToken</code> request parameter in the next call to the operation to get the next part 
of the results. Note that the service might return fewer results than the maximum even when there 
are more results available. You should check <code>NextToken</code> after every operation to 
ensure that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Filters, formatted as <a>ResourceFilter</a> objects, that you want to apply
            to a <code>ListGroupResources</code> operation. Filters the results to include only
            those of the specified resource types.</p>
        <ul>
            <li>
                <p>
                  <code>resource-type</code> - Filter resources by their type. Specify up to
                    five resource types in the format <code>AWS::ServiceCode::ResourceType</code>.
                    For example, <code>AWS::EC2::Instance</code>, or <code>AWS::S3::Bucket</code>.
                </p>
            </li>
         </ul>
        <p>When you specify a <code>resource-type</code> filter for
                <code>ListGroupResources</code>, AWS Resource Groups validates your filter resource types
            against the types that are defined in the query associated with the group. For example,
            if a group contains only S3 buckets because its query specifies only that resource type,
            but your <code>resource-type</code> filter includes EC2 instances, AWS Resource Groups
            does not filter for EC2 instances. In this case, a <code>ListGroupResources</code>
            request returns a <code>BadRequestException</code> error with a message similar to the
            following:</p>
        <p>
            <code>The resource types specified as filters in the request are not
            valid.</code>
         </p>
        <p>The error includes a list of resource types that failed the validation because they
            are not part of the query associated with the group. This validation doesn't occur when
            the group query specifies <code>AWS::AllSupported</code>, because a group based on such
            a query can contain any of the allowed resource types for the query type (tag-based or
            AWS CloudFormation stack-based queries).</p>")
    @as("Filters")
    filters: option<resourceFilterList>,
    @ocaml.doc("<p>The name or the ARN of the resource group</p>") @as("Group")
    group: option<groupString>,
    @ocaml.doc("<important>
            <p>
               <i>
                  <b>Deprecated - don't use this parameter. Use the
                            <code>Group</code> request field instead.</b>
               </i>
            </p>
        </important>")
    @as("GroupName")
    groupName: option<groupName>,
  }
  type response = {
    @ocaml.doc("<p>A list of <code>QueryError</code> objects. Each error is an object that contains
                <code>ErrorCode</code> and <code>Message</code> structures. Possible values for
                <code>ErrorCode</code> are <code>CLOUDFORMATION_STACK_INACTIVE</code> and
                <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>.</p>")
    @as("QueryErrors")
    queryErrors: option<queryErrorList>,
    @ocaml.doc("<p>If present, indicates that more output is available than is 
included in the current response. Use this value in the <code>NextToken</code> request parameter 
in a subsequent call to the operation to get the next part of the output. You should repeat this 
until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<important>
            <p>
               <b>
                  <i>Deprecated - don't use this parameter. Use the
                            <code>Resources</code> response field
                instead.</i>
               </b>
            </p>
        </important>")
    @as("ResourceIdentifiers")
    resourceIdentifiers: option<resourceIdentifierList>,
    @ocaml.doc("<p>An array of resources from which you can determine each resource's identity, type, and
            group membership status.</p>")
    @as("Resources")
    resources: option<listGroupResourcesItemList>,
  }
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "ListGroupResourcesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~group=?, ~groupName=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      group: group,
      groupName: groupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutGroupConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The new configuration to associate with the specified group. A configuration
            associates the resource group with an AWS service and specifies how the service can
            interact with the resources in the group. A configuration is an array of <a>GroupConfigurationItem</a> elements.</p>
        <p>For information about the syntax of a service configuration, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html\">Service configurations for
                resource groups</a>.</p>
        <note>
            <p>A resource group can contain either a <code>Configuration</code> or a
                    <code>ResourceQuery</code>, but not both.</p>
        </note>")
    @as("Configuration")
    configuration: option<groupConfigurationList>,
    @ocaml.doc("<p>The name or ARN of the resource group with the configuration that you want to
            update.</p>")
    @as("Group")
    group: option<groupString>,
  }
  type response = {.}
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "PutGroupConfigurationCommand"
  let make = (~configuration=?, ~group=?, ()) => new({configuration: configuration, group: group})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetGroupConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The name or the ARN of the resource group.</p>") @as("Group")
    group: option<groupString>,
  }
  type response = {
    @ocaml.doc("<p>The service configuration associated with the specified group. For details about the
            service configuration syntax, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html\">Service configurations for resource
                groups</a>.</p>")
    @as("GroupConfiguration")
    groupConfiguration: option<groupConfiguration>,
  }
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "GetGroupConfigurationCommand"
  let make = (~group=?, ()) => new({group: group})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A configuration associates the resource group with an AWS service and specifies how
            the service can interact with the resources in the group. A configuration is an array of
                <a>GroupConfigurationItem</a> elements. For details about the syntax of
            service configurations, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html\">Service configurations for resource
                groups</a>.</p>
        <note>
            <p>A resource group can contain either a <code>Configuration</code> or a
                    <code>ResourceQuery</code>, but not both.</p>
        </note>")
    @as("Configuration")
    configuration: option<groupConfigurationList>,
    @ocaml.doc("<p>The tags to add to the group. A tag is key-value pair string.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The resource query that determines which AWS resources are members of this group.
            For more information about resource queries, see <a href=\"https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag\">Create
                a tag-based group in Resource Groups</a>. </p>
        <note>
            <p>A resource group can contain either a <code>ResourceQuery</code> or a
                    <code>Configuration</code>, but not both.</p>
        </note>")
    @as("ResourceQuery")
    resourceQuery: option<resourceQuery>,
    @ocaml.doc("<p>The description of the resource group. Descriptions can consist of letters, numbers,
            hyphens, underscores, periods, and spaces.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the group, which is the identifier of the group in other operations. You
            can't change the name of a resource group after you create it. A resource group name can
            consist of letters, numbers, hyphens, periods, and underscores. The name cannot start
            with <code>AWS</code> or <code>aws</code>; these are reserved. A resource group name
            must be unique within each AWS Region in your AWS account.</p>")
    @as("Name")
    name: groupName,
  }
  type response = {
    @ocaml.doc("<p>The service configuration associated with the resource group. For details about the
            syntax of a service configuration, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html\">Service configurations for resource
                groups</a>.</p>")
    @as("GroupConfiguration")
    groupConfiguration: option<groupConfiguration>,
    @ocaml.doc("<p>The tags associated with the group.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The resource query associated with the group. For more information about resource
            queries, see <a href=\"https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag\">Create
                a tag-based group in Resource Groups</a>. </p>")
    @as("ResourceQuery")
    resourceQuery: option<resourceQuery>,
    @ocaml.doc("<p>The description of the resource group.</p>") @as("Group") group: option<group>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "CreateGroupCommand"
  let make = (~name, ~configuration=?, ~tags=?, ~resourceQuery=?, ~description=?, ()) =>
    new({
      configuration: configuration,
      tags: tags,
      resourceQuery: resourceQuery,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
