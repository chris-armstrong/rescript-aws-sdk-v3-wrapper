type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type userName = string
type sensitiveStringType = string
type resourceType = [@as("IDENTITY_STORE") #IDENTITY_STORE | @as("USER") #USER | @as("GROUP") #GROUP]
type resourceId = string
type requestId = string
type nextToken = string
type message = string
type maxResults = int;
type identityStoreId = string
type groupDisplayName = string
type attributePath = string
type user = {
@as("UserId") userId: option<resourceId>,
@as("UserName") userName: option<userName>
}
type group = {
@as("DisplayName") displayName: option<groupDisplayName>,
@as("GroupId") groupId: option<resourceId>
}
type filter = {
@as("AttributeValue") attributeValue: option<sensitiveStringType>,
@as("AttributePath") attributePath: option<attributePath>
}
type users = array<user>
type groups = array<group>
type filters = array<filter>
type clientType;
@module("@aws-sdk/client-identitystore") @new external createClient: unit => clientType = "IdentitystoreClient";
module DescribeUser = {
  type t;
  type request = {
@as("UserId") userId: option<resourceId>,
@as("IdentityStoreId") identityStoreId: option<identityStoreId>
}
  type response = {
@as("UserId") userId: option<resourceId>,
@as("UserName") userName: option<userName>
}
  @module("@aws-sdk/client-identitystore") @new external new_: (Js.Promise.t<request>) => t = "DescribeUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGroup = {
  type t;
  type request = {
@as("GroupId") groupId: option<resourceId>,
@as("IdentityStoreId") identityStoreId: option<identityStoreId>
}
  type response = {
@as("DisplayName") displayName: option<groupDisplayName>,
@as("GroupId") groupId: option<resourceId>
}
  @module("@aws-sdk/client-identitystore") @new external new_: (Js.Promise.t<request>) => t = "DescribeGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("IdentityStoreId") identityStoreId: option<identityStoreId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Users") users: option<users>
}
  @module("@aws-sdk/client-identitystore") @new external new_: (Js.Promise.t<request>) => t = "ListUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroups = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("IdentityStoreId") identityStoreId: option<identityStoreId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Groups") groups: option<groups>
}
  @module("@aws-sdk/client-identitystore") @new external new_: (Js.Promise.t<request>) => t = "ListGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
