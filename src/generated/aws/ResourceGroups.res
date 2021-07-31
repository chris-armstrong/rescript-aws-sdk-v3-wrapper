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
type resourceStatus = {@as("Name") name: option<resourceStatusValue>}
type resourceQuery = {
  @as("Query") query: query,
  @as("Type") type_: queryType,
}
type resourceIdentifier = {
  @as("ResourceType") resourceType: option<resourceType>,
  @as("ResourceArn") resourceArn: option<resourceArn>,
}
type resourceFilterValues = array<resourceFilterValue>
type resourceArnList = array<resourceArn>
type queryError = {
  @as("Message") message: option<queryErrorMessage>,
  @as("ErrorCode") errorCode: option<queryErrorCode>,
}
type pendingResource = {@as("ResourceArn") resourceArn: option<resourceArn>}
type groupIdentifier = {
  @as("GroupArn") groupArn: option<groupArn>,
  @as("GroupName") groupName: option<groupName>,
}
type groupFilterValues = array<groupFilterValue>
type groupConfigurationParameterValueList = array<groupConfigurationParameterValue>
type group = {
  @as("Description") description: option<description>,
  @as("Name") name: groupName,
  @as("GroupArn") groupArn: groupArn,
}
type failedResource = {
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("ResourceArn") resourceArn: option<resourceArn>,
}
type resourceIdentifierList = array<resourceIdentifier>
type resourceFilter = {
  @as("Values") values: resourceFilterValues,
  @as("Name") name: resourceFilterName,
}
type queryErrorList = array<queryError>
type pendingResourceList = array<pendingResource>
type listGroupResourcesItem = {
  @as("Status") status: option<resourceStatus>,
  @as("Identifier") identifier: option<resourceIdentifier>,
}
type groupQuery = {
  @as("ResourceQuery") resourceQuery: resourceQuery,
  @as("GroupName") groupName: groupName,
}
type groupList = array<group>
type groupIdentifierList = array<groupIdentifier>
type groupFilter = {
  @as("Values") values: groupFilterValues,
  @as("Name") name: groupFilterName,
}
type groupConfigurationParameter = {
  @as("Values") values: option<groupConfigurationParameterValueList>,
  @as("Name") name: groupConfigurationParameterName,
}
type failedResourceList = array<failedResource>
type resourceFilterList = array<resourceFilter>
type listGroupResourcesItemList = array<listGroupResourcesItem>
type groupParameterList = array<groupConfigurationParameter>
type groupFilterList = array<groupFilter>
type groupConfigurationItem = {
  @as("Parameters") parameters: option<groupParameterList>,
  @as("Type") type_: groupConfigurationType,
}
type groupConfigurationList = array<groupConfigurationItem>
type groupConfiguration = {
  @as("FailureReason") failureReason: option<groupConfigurationFailureReason>,
  @as("Status") status: option<groupConfigurationStatus>,
  @as("ProposedConfiguration") proposedConfiguration: option<groupConfigurationList>,
  @as("Configuration") configuration: option<groupConfigurationList>,
}

module UpdateGroup = {
  type t
  type request = {
    @as("Description") description: option<description>,
    @as("Group") group: option<groupString>,
    @as("GroupName") groupName: option<groupName>,
  }
  type response = {@as("Group") group: option<group>}
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "UpdateGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Untag = {
  type t
  type request = {
    @as("Keys") keys: tagKeyList,
    @as("Arn") arn: groupArn,
  }
  type response = {
    @as("Keys") keys: option<tagKeyList>,
    @as("Arn") arn: option<groupArn>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "UntagCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Tag = {
  type t
  type request = {
    @as("Tags") tags: tags,
    @as("Arn") arn: groupArn,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @as("Arn") arn: option<groupArn>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "TagCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTags = {
  type t
  type request = {@as("Arn") arn: groupArn}
  type response = {
    @as("Tags") tags: option<tags>,
    @as("Arn") arn: option<groupArn>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "GetTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGroup = {
  type t
  type request = {
    @as("Group") group: option<groupString>,
    @as("GroupName") groupName: option<groupName>,
  }
  type response = {@as("Group") group: option<group>}
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "GetGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGroup = {
  type t
  type request = {
    @as("Group") group: option<groupString>,
    @as("GroupName") groupName: option<groupName>,
  }
  type response = {@as("Group") group: option<group>}
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "DeleteGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGroupQuery = {
  type t
  type request = {
    @as("ResourceQuery") resourceQuery: resourceQuery,
    @as("Group") group: option<groupString>,
    @as("GroupName") groupName: option<groupName>,
  }
  type response = {@as("GroupQuery") groupQuery: option<groupQuery>}
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "UpdateGroupQueryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UngroupResources = {
  type t
  type request = {
    @as("ResourceArns") resourceArns: resourceArnList,
    @as("Group") group: groupString,
  }
  type response = {
    @as("Pending") pending: option<pendingResourceList>,
    @as("Failed") failed: option<failedResourceList>,
    @as("Succeeded") succeeded: option<resourceArnList>,
  }
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "UngroupResourcesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchResources = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ResourceQuery") resourceQuery: resourceQuery,
  }
  type response = {
    @as("QueryErrors") queryErrors: option<queryErrorList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("ResourceIdentifiers") resourceIdentifiers: option<resourceIdentifierList>,
  }
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "SearchResourcesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GroupResources = {
  type t
  type request = {
    @as("ResourceArns") resourceArns: resourceArnList,
    @as("Group") group: groupString,
  }
  type response = {
    @as("Pending") pending: option<pendingResourceList>,
    @as("Failed") failed: option<failedResourceList>,
    @as("Succeeded") succeeded: option<resourceArnList>,
  }
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "GroupResourcesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGroupQuery = {
  type t
  type request = {
    @as("Group") group: option<groupString>,
    @as("GroupName") groupName: option<groupName>,
  }
  type response = {@as("GroupQuery") groupQuery: option<groupQuery>}
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "GetGroupQueryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroups = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Filters") filters: option<groupFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Groups") groups: option<groupList>,
    @as("GroupIdentifiers") groupIdentifiers: option<groupIdentifierList>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "ListGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroupResources = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Filters") filters: option<resourceFilterList>,
    @as("Group") group: option<groupString>,
    @as("GroupName") groupName: option<groupName>,
  }
  type response = {
    @as("QueryErrors") queryErrors: option<queryErrorList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("ResourceIdentifiers") resourceIdentifiers: option<resourceIdentifierList>,
    @as("Resources") resources: option<listGroupResourcesItemList>,
  }
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "ListGroupResourcesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutGroupConfiguration = {
  type t
  type request = {
    @as("Configuration") configuration: option<groupConfigurationList>,
    @as("Group") group: option<groupString>,
  }
  type response = unit
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "PutGroupConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGroupConfiguration = {
  type t
  type request = {@as("Group") group: option<groupString>}
  type response = {@as("GroupConfiguration") groupConfiguration: option<groupConfiguration>}
  @module("@aws-sdk/client-resource-groups") @new
  external new: request => t = "GetGroupConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGroup = {
  type t
  type request = {
    @as("Configuration") configuration: option<groupConfigurationList>,
    @as("Tags") tags: option<tags>,
    @as("ResourceQuery") resourceQuery: option<resourceQuery>,
    @as("Description") description: option<description>,
    @as("Name") name: groupName,
  }
  type response = {
    @as("GroupConfiguration") groupConfiguration: option<groupConfiguration>,
    @as("Tags") tags: option<tags>,
    @as("ResourceQuery") resourceQuery: option<resourceQuery>,
    @as("Group") group: option<group>,
  }
  @module("@aws-sdk/client-resource-groups") @new external new: request => t = "CreateGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
