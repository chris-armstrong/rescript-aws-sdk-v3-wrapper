type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type sessionTokenType = string
type secretAccessKeyType = string
type roleNameType = string
type nextTokenType = string
type maxResultType = int;
type expirationTimestampType = float;
type errorDescription = string
type emailAddressType = string
type accountNameType = string
type accountIdType = string
type accessTokenType = string
type accessKeyType = string
type roleInfo = {
@as("accountId") accountId: accountIdType,
@as("roleName") roleName: roleNameType
}
type roleCredentials = {
@as("expiration") expiration: expirationTimestampType,
@as("sessionToken") sessionToken: sessionTokenType,
@as("secretAccessKey") secretAccessKey: secretAccessKeyType,
@as("accessKeyId") accessKeyId: accessKeyType
}
type accountInfo = {
@as("emailAddress") emailAddress: emailAddressType,
@as("accountName") accountName: accountNameType,
@as("accountId") accountId: accountIdType
}
type roleListType = array<roleInfo>
type accountListType = array<accountInfo>
type clientType;
@module("@aws-sdk/client-awsssoportal") @new external createClient: unit => clientType = "SSOClient";
module Logout = {
  type t;
  type request = {
@as("accessToken") accessToken: option<accessTokenType>
}
  
  @module("@aws-sdk/client-awsssoportal") @new external new_: (request) => t = "LogoutCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetRoleCredentials = {
  type t;
  type request = {
@as("accessToken") accessToken: option<accessTokenType>,
@as("accountId") accountId: option<accountIdType>,
@as("roleName") roleName: option<roleNameType>
}
  type response = {
@as("roleCredentials") roleCredentials: roleCredentials
}
  @module("@aws-sdk/client-awsssoportal") @new external new_: (request) => t = "GetRoleCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccounts = {
  type t;
  type request = {
@as("accessToken") accessToken: option<accessTokenType>,
@as("maxResults") maxResults: maxResultType,
@as("nextToken") nextToken: nextTokenType
}
  type response = {
@as("accountList") accountList: accountListType,
@as("nextToken") nextToken: nextTokenType
}
  @module("@aws-sdk/client-awsssoportal") @new external new_: (request) => t = "ListAccountsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccountRoles = {
  type t;
  type request = {
@as("accountId") accountId: option<accountIdType>,
@as("accessToken") accessToken: option<accessTokenType>,
@as("maxResults") maxResults: maxResultType,
@as("nextToken") nextToken: nextTokenType
}
  type response = {
@as("roleList") roleList: roleListType,
@as("nextToken") nextToken: nextTokenType
}
  @module("@aws-sdk/client-awsssoportal") @new external new_: (request) => t = "ListAccountRolesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
