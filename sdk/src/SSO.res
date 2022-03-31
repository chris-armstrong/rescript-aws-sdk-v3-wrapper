type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-awsssoportal") @new
external createClient: unit => awsServiceClient = "SSOClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
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
@ocaml.doc("<p>Provides information about the role that is assigned to the user.</p>")
type roleInfo = {
  @ocaml.doc("<p>The identifier of the AWS account assigned to the user.</p>")
  accountId: option<accountIdType>,
  @ocaml.doc("<p>The friendly name of the role that is assigned to the user.</p>")
  roleName: option<roleNameType>,
}
@ocaml.doc("<p>Provides information about the role credentials that are assigned to the user.</p>")
type roleCredentials = {
  @ocaml.doc("<p>The date on which temporary security credentials expire.</p>")
  expiration: option<expirationTimestampType>,
  @ocaml.doc("<p>The token used for temporary credentials. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html\">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the
        <i>AWS IAM User Guide</i>.</p>")
  sessionToken: option<sessionTokenType>,
  @ocaml.doc("<p>The key that is used to sign the request. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html\">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the
        <i>AWS IAM User Guide</i>.</p>")
  secretAccessKey: option<secretAccessKeyType>,
  @ocaml.doc("<p>The identifier used for the temporary security credentials. For more information, see
        <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html\">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the
        <i>AWS IAM User Guide</i>.</p>")
  accessKeyId: option<accessKeyType>,
}
@ocaml.doc("<p>Provides information about your AWS account.</p>")
type accountInfo = {
  @ocaml.doc("<p>The email address of the AWS account that is assigned to the user.</p>")
  emailAddress: option<emailAddressType>,
  @ocaml.doc("<p>The display name of the AWS account that is assigned to the user.</p>")
  accountName: option<accountNameType>,
  @ocaml.doc("<p>The identifier of the AWS account that is assigned to the user.</p>")
  accountId: option<accountIdType>,
}
type roleListType = array<roleInfo>
type accountListType = array<accountInfo>
@ocaml.doc("<p>AWS Single Sign-On Portal is a web service that makes it easy for you to assign user
      access to AWS SSO resources such as the user portal. Users can get AWS account applications
      and roles assigned to them and get federated into the application.</p>
    
         <p>For general information about AWS SSO, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html\">What is AWS
        Single Sign-On?</a> in the <i>AWS SSO User Guide</i>.</p>
    
         <p>This API reference guide describes the AWS SSO Portal operations that you can call
      programatically and includes detailed information on data types and errors.</p>
    
         <note>
            <p>AWS provides SDKs that consist of libraries and sample code for various programming
        languages and platforms, such as Java, Ruby, .Net, iOS, or Android. The SDKs provide a
        convenient way to create programmatic access to AWS SSO and other AWS services. For more
        information about the AWS SDKs, including how to download and install them, see <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web Services</a>.</p>
         </note>")
module Logout = {
  type t
  type request = {
    @ocaml.doc("<p>The token issued by the <code>CreateToken</code> API call. For more information, see
        <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html\">CreateToken</a> in the <i>AWS SSO OIDC API Reference Guide</i>.</p>")
    accessToken: accessTokenType,
  }
  type response = {.}
  @module("@aws-sdk/client-awsssoportal") @new external new: request => t = "LogoutCommand"
  let make = (~accessToken, ()) => new({accessToken: accessToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetRoleCredentials = {
  type t
  type request = {
    @ocaml.doc("<p>The token issued by the <code>CreateToken</code> API call. For more information, see
        <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html\">CreateToken</a> in the <i>AWS SSO OIDC API Reference Guide</i>.</p>")
    accessToken: accessTokenType,
    @ocaml.doc("<p>The identifier for the AWS account that is assigned to the user.</p>")
    accountId: accountIdType,
    @ocaml.doc("<p>The friendly name of the role that is assigned to the user.</p>")
    roleName: roleNameType,
  }
  type response = {
    @ocaml.doc("<p>The credentials for the role that is assigned to the user.</p>")
    roleCredentials: option<roleCredentials>,
  }
  @module("@aws-sdk/client-awsssoportal") @new
  external new: request => t = "GetRoleCredentialsCommand"
  let make = (~accessToken, ~accountId, ~roleName, ()) =>
    new({accessToken: accessToken, accountId: accountId, roleName: roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccounts = {
  type t
  type request = {
    @ocaml.doc("<p>The token issued by the <code>CreateToken</code> API call. For more information, see
        <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html\">CreateToken</a> in the <i>AWS SSO OIDC API Reference Guide</i>.</p>")
    accessToken: accessTokenType,
    @ocaml.doc("<p>This is the number of items clients can request per page.</p>")
    maxResults: option<maxResultType>,
    @ocaml.doc(
      "<p>(Optional) When requesting subsequent pages, this is the page token from the previous response output.</p>"
    )
    nextToken: option<nextTokenType>,
  }
  type response = {
    @ocaml.doc(
      "<p>A paginated response with the list of account information and the next token if more results are available.</p>"
    )
    accountList: option<accountListType>,
    @ocaml.doc("<p>The page token client that is used to retrieve the list of accounts.</p>")
    nextToken: option<nextTokenType>,
  }
  @module("@aws-sdk/client-awsssoportal") @new external new: request => t = "ListAccountsCommand"
  let make = (~accessToken, ~maxResults=?, ~nextToken=?, ()) =>
    new({accessToken: accessToken, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccountRoles = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the AWS account that is assigned to the user.</p>")
    accountId: accountIdType,
    @ocaml.doc("<p>The token issued by the <code>CreateToken</code> API call. For more information, see
        <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html\">CreateToken</a> in the <i>AWS SSO OIDC API Reference Guide</i>.</p>")
    accessToken: accessTokenType,
    @ocaml.doc("<p>The number of items that clients can request per page.</p>")
    maxResults: option<maxResultType>,
    @ocaml.doc(
      "<p>The page token from the previous response output when you request subsequent pages.</p>"
    )
    nextToken: option<nextTokenType>,
  }
  type response = {
    @ocaml.doc(
      "<p>A paginated response with the list of roles and the next token if more results are available.</p>"
    )
    roleList: option<roleListType>,
    @ocaml.doc("<p>The page token client that is used to retrieve the list of accounts.</p>")
    nextToken: option<nextTokenType>,
  }
  @module("@aws-sdk/client-awsssoportal") @new
  external new: request => t = "ListAccountRolesCommand"
  let make = (~accountId, ~accessToken, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      accountId: accountId,
      accessToken: accessToken,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
