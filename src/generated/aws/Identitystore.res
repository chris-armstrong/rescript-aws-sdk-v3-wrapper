type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type userName = string
type sensitiveStringType = string
type resourceType = [@as("IDENTITY_STORE") #IDENTITYSTORE | @as("USER") #USER | @as("GROUP") #GROUP]
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
@as("UserName") userName: userName
}
type group = {
@as("DisplayName") displayName: groupDisplayName,
@as("GroupId") groupId: resourceId
}
type filter = {
@as("AttributeValue") attributeValue: sensitiveStringType,
@as("AttributePath") attributePath: attributePath
}
type users = array<user>
type groups = array<group>
type filters = array<filter>
type awsServiceClient;
@module("@aws-sdk/client-identitystore") @new external createClient: unit => awsServiceClient = "IdentitystoreClient";
module DescribeUser = {
  type t;
  type request = {
@as("UserId") userId: resourceId,
@as("IdentityStoreId") identityStoreId: identityStoreId
}
  type response = {
@as("UserId") userId: resourceId,
@as("UserName") userName: userName
}
  @module("@aws-sdk/client-identitystore") @new external new_: (request) => t = "DescribeUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeGroup = {
  type t;
  type request = {
@as("GroupId") groupId: resourceId,
@as("IdentityStoreId") identityStoreId: identityStoreId
}
  type response = {
@as("DisplayName") displayName: groupDisplayName,
@as("GroupId") groupId: resourceId
}
  @module("@aws-sdk/client-identitystore") @new external new_: (request) => t = "DescribeGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("IdentityStoreId") identityStoreId: identityStoreId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Users") users: users
}
  @module("@aws-sdk/client-identitystore") @new external new_: (request) => t = "ListUsersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGroups = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("IdentityStoreId") identityStoreId: identityStoreId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Groups") groups: groups
}
  @module("@aws-sdk/client-identitystore") @new external new_: (request) => t = "ListGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
