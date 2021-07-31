type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type tagValue = string
type tagKey = string
type resourceType = string
type resourceStatusValue = [@as("PENDING") #PENDING]
type resourceFilterValue = string
type resourceFilterName = [@as("resource-type") #resource_type]
type resourceArn = string
type queryType = [@as("CLOUDFORMATION_STACK_1_0") #CLOUDFORMATION_STACK_1_0 | @as("TAG_FILTERS_1_0") #TAG_FILTERS_1_0]
type queryErrorMessage = string
type queryErrorCode = [@as("CLOUDFORMATION_STACK_NOT_EXISTING") #CLOUDFORMATION_STACK_NOT_EXISTING | @as("CLOUDFORMATION_STACK_INACTIVE") #CLOUDFORMATION_STACK_INACTIVE]
type query = string
type nextToken = string
type maxResults = int;
type groupString = string
type groupName = string
type groupFilterValue = string
type groupFilterName = [@as("configuration-type") #configuration_type | @as("resource-type") #resource_type]
type groupConfigurationType = string
type groupConfigurationStatus = [@as("UPDATE_FAILED") #UPDATE_FAILED | @as("UPDATE_COMPLETE") #UPDATE_COMPLETE | @as("UPDATING") #UPDATING]
type groupConfigurationParameterValue = string
type groupConfigurationParameterName = string
type groupConfigurationFailureReason = string
type groupArn = string
type errorMessage = string
type errorCode = string
type description = string
type tags = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type resourceStatus = {
@as("Name") name: resourceStatusValue
}
type resourceQuery = {
@as("Query") query: option<query>,
@as("Type") type_: option<queryType>
}
type resourceIdentifier = {
@as("ResourceType") resourceType: resourceType,
@as("ResourceArn") resourceArn: resourceArn
}
type resourceFilterValues = array<resourceFilterValue>
type resourceArnList = array<resourceArn>
type queryError = {
@as("Message") message: queryErrorMessage,
@as("ErrorCode") errorCode: queryErrorCode
}
type pendingResource = {
@as("ResourceArn") resourceArn: resourceArn
}
type groupIdentifier = {
@as("GroupArn") groupArn: groupArn,
@as("GroupName") groupName: groupName
}
type groupFilterValues = array<groupFilterValue>
type groupConfigurationParameterValueList = array<groupConfigurationParameterValue>
type group = {
@as("Description") description: description,
@as("Name") name: option<groupName>,
@as("GroupArn") groupArn: option<groupArn>
}
type failedResource = {
@as("ErrorCode") errorCode: errorCode,
@as("ErrorMessage") errorMessage: errorMessage,
@as("ResourceArn") resourceArn: resourceArn
}
type resourceIdentifierList = array<resourceIdentifier>
type resourceFilter = {
@as("Values") values: option<resourceFilterValues>,
@as("Name") name: option<resourceFilterName>
}
type queryErrorList = array<queryError>
type pendingResourceList = array<pendingResource>
type listGroupResourcesItem = {
@as("Status") status: resourceStatus,
@as("Identifier") identifier: resourceIdentifier
}
type groupQuery = {
@as("ResourceQuery") resourceQuery: option<resourceQuery>,
@as("GroupName") groupName: option<groupName>
}
type groupList = array<group>
type groupIdentifierList = array<groupIdentifier>
type groupFilter = {
@as("Values") values: option<groupFilterValues>,
@as("Name") name: option<groupFilterName>
}
type groupConfigurationParameter = {
@as("Values") values: groupConfigurationParameterValueList,
@as("Name") name: option<groupConfigurationParameterName>
}
type failedResourceList = array<failedResource>
type resourceFilterList = array<resourceFilter>
type listGroupResourcesItemList = array<listGroupResourcesItem>
type groupParameterList = array<groupConfigurationParameter>
type groupFilterList = array<groupFilter>
type groupConfigurationItem = {
@as("Parameters") parameters: groupParameterList,
@as("Type") type_: option<groupConfigurationType>
}
type groupConfigurationList = array<groupConfigurationItem>
type groupConfiguration = {
@as("FailureReason") failureReason: groupConfigurationFailureReason,
@as("Status") status: groupConfigurationStatus,
@as("ProposedConfiguration") proposedConfiguration: groupConfigurationList,
@as("Configuration") configuration: groupConfigurationList
}
type clientType;
@module("@aws-sdk/client-resource-groups") @new external createClient: unit => clientType = "ResourceGroupsClient";
module UpdateGroup = {
  type t;
  type request = {
@as("Description") description: description,
@as("Group") group: groupString,
@as("GroupName") groupName: groupName
}
  type response = {
@as("Group") group: group
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "UpdateGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Untag = {
  type t;
  type request = {
@as("Keys") keys: option<tagKeyList>,
@as("Arn") arn: option<groupArn>
}
  type response = {
@as("Keys") keys: tagKeyList,
@as("Arn") arn: groupArn
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "UntagCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Tag = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("Arn") arn: option<groupArn>
}
  type response = {
@as("Tags") tags: tags,
@as("Arn") arn: groupArn
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "TagCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTags = {
  type t;
  type request = {
@as("Arn") arn: option<groupArn>
}
  type response = {
@as("Tags") tags: tags,
@as("Arn") arn: groupArn
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "GetTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGroup = {
  type t;
  type request = {
@as("Group") group: groupString,
@as("GroupName") groupName: groupName
}
  type response = {
@as("Group") group: group
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "GetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGroup = {
  type t;
  type request = {
@as("Group") group: groupString,
@as("GroupName") groupName: groupName
}
  type response = {
@as("Group") group: group
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "DeleteGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGroupQuery = {
  type t;
  type request = {
@as("ResourceQuery") resourceQuery: option<resourceQuery>,
@as("Group") group: groupString,
@as("GroupName") groupName: groupName
}
  type response = {
@as("GroupQuery") groupQuery: groupQuery
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "UpdateGroupQueryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UngroupResources = {
  type t;
  type request = {
@as("ResourceArns") resourceArns: option<resourceArnList>,
@as("Group") group: option<groupString>
}
  type response = {
@as("Pending") pending: pendingResourceList,
@as("Failed") failed: failedResourceList,
@as("Succeeded") succeeded: resourceArnList
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "UngroupResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchResources = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ResourceQuery") resourceQuery: option<resourceQuery>
}
  type response = {
@as("QueryErrors") queryErrors: queryErrorList,
@as("NextToken") nextToken: nextToken,
@as("ResourceIdentifiers") resourceIdentifiers: resourceIdentifierList
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "SearchResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GroupResources = {
  type t;
  type request = {
@as("ResourceArns") resourceArns: option<resourceArnList>,
@as("Group") group: option<groupString>
}
  type response = {
@as("Pending") pending: pendingResourceList,
@as("Failed") failed: failedResourceList,
@as("Succeeded") succeeded: resourceArnList
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "GroupResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGroupQuery = {
  type t;
  type request = {
@as("Group") group: groupString,
@as("GroupName") groupName: groupName
}
  type response = {
@as("GroupQuery") groupQuery: groupQuery
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "GetGroupQueryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Filters") filters: groupFilterList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Groups") groups: groupList,
@as("GroupIdentifiers") groupIdentifiers: groupIdentifierList
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "ListGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroupResources = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Filters") filters: resourceFilterList,
@as("Group") group: groupString,
@as("GroupName") groupName: groupName
}
  type response = {
@as("QueryErrors") queryErrors: queryErrorList,
@as("NextToken") nextToken: nextToken,
@as("ResourceIdentifiers") resourceIdentifiers: resourceIdentifierList,
@as("Resources") resources: listGroupResourcesItemList
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "ListGroupResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutGroupConfiguration = {
  type t;
  type request = {
@as("Configuration") configuration: groupConfigurationList,
@as("Group") group: groupString
}
  type response = unit
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "PutGroupConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGroupConfiguration = {
  type t;
  type request = {
@as("Group") group: groupString
}
  type response = {
@as("GroupConfiguration") groupConfiguration: groupConfiguration
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "GetGroupConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGroup = {
  type t;
  type request = {
@as("Configuration") configuration: groupConfigurationList,
@as("Tags") tags: tags,
@as("ResourceQuery") resourceQuery: resourceQuery,
@as("Description") description: description,
@as("Name") name: option<groupName>
}
  type response = {
@as("GroupConfiguration") groupConfiguration: groupConfiguration,
@as("Tags") tags: tags,
@as("ResourceQuery") resourceQuery: resourceQuery,
@as("Group") group: group
}
  @module("@aws-sdk/client-resource-groups") @new external new_: (request) => t = "CreateGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
