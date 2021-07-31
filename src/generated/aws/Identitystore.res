type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-identitystore") @new
external createClient: unit => awsServiceClient = "IdentitystoreClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type userName = string
type sensitiveStringType = string
type resourceType = [
  | @as("IDENTITY_STORE") #IDENTITY_STORE
  | @as("USER") #USER
  | @as("GROUP") #GROUP
]
type resourceId = string
type requestId = string
type nextToken = string
type message = string
type maxResults = int
type identityStoreId = string
type groupDisplayName = string
type attributePath = string
type user = {
  @as("UserId") userId: resourceId,
  @as("UserName") userName: userName,
}
type group = {
  @as("DisplayName") displayName: groupDisplayName,
  @as("GroupId") groupId: resourceId,
}
type filter = {
  @as("AttributeValue") attributeValue: sensitiveStringType,
  @as("AttributePath") attributePath: attributePath,
}
type users = array<user>
type groups = array<group>
type filters = array<filter>

module DescribeUser = {
  type t
  type request = {
    @as("UserId") userId: resourceId,
    @as("IdentityStoreId") identityStoreId: identityStoreId,
  }
  type response = {
    @as("UserId") userId: resourceId,
    @as("UserName") userName: userName,
  }
  @module("@aws-sdk/client-identitystore") @new external new: request => t = "DescribeUserCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGroup = {
  type t
  type request = {
    @as("GroupId") groupId: resourceId,
    @as("IdentityStoreId") identityStoreId: identityStoreId,
  }
  type response = {
    @as("DisplayName") displayName: groupDisplayName,
    @as("GroupId") groupId: resourceId,
  }
  @module("@aws-sdk/client-identitystore") @new external new: request => t = "DescribeGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUsers = {
  type t
  type request = {
    @as("Filters") filters: option<filters>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("IdentityStoreId") identityStoreId: identityStoreId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Users") users: users,
  }
  @module("@aws-sdk/client-identitystore") @new external new: request => t = "ListUsersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroups = {
  type t
  type request = {
    @as("Filters") filters: option<filters>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("IdentityStoreId") identityStoreId: identityStoreId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Groups") groups: groups,
  }
  @module("@aws-sdk/client-identitystore") @new external new: request => t = "ListGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
