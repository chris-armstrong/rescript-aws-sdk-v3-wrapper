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
type sessionTokenType = string
type secretAccessKeyType = string
type roleNameType = string
type nextTokenType = string
type maxResultType = int
type expirationTimestampType = float
type errorDescription = string
type emailAddressType = string
type accountNameType = string
type accountIdType = string
type accessTokenType = string
type accessKeyType = string
type roleInfo = {
accountId: option<accountIdType>,
roleName: option<roleNameType>
}
type roleCredentials = {
expiration: option<expirationTimestampType>,
sessionToken: option<sessionTokenType>,
secretAccessKey: option<secretAccessKeyType>,
accessKeyId: option<accessKeyType>
}
type accountInfo = {
emailAddress: option<emailAddressType>,
accountName: option<accountNameType>,
accountId: option<accountIdType>
}
type roleListType = array<roleInfo>
type accountListType = array<accountInfo>
type awsServiceClient;
@module("@aws-sdk/client-awsssoportal") @new external createClient: unit => awsServiceClient = "SSOClient";
module Logout = {
  type t;
  type request = {
accessToken: accessTokenType
}
  
  @module("@aws-sdk/client-awsssoportal") @new external new_: (request) => t = "LogoutCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module GetRoleCredentials = {
  type t;
  type request = {
accessToken: accessTokenType,
accountId: accountIdType,
roleName: roleNameType
}
  type response = {
roleCredentials: option<roleCredentials>
}
  @module("@aws-sdk/client-awsssoportal") @new external new_: (request) => t = "GetRoleCredentialsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccounts = {
  type t;
  type request = {
accessToken: accessTokenType,
maxResults: option<maxResultType>,
nextToken: option<nextTokenType>
}
  type response = {
accountList: option<accountListType>,
nextToken: option<nextTokenType>
}
  @module("@aws-sdk/client-awsssoportal") @new external new_: (request) => t = "ListAccountsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccountRoles = {
  type t;
  type request = {
accountId: accountIdType,
accessToken: accessTokenType,
maxResults: option<maxResultType>,
nextToken: option<nextTokenType>
}
  type response = {
roleList: option<roleListType>,
nextToken: option<nextTokenType>
}
  @module("@aws-sdk/client-awsssoportal") @new external new_: (request) => t = "ListAccountRolesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
