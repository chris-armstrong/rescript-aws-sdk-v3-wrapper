type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cognito-identity") @new
external createClient: unit => awsServiceClient = "CognitoClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type useDefaults = bool
type tokenDuration = float
type tagValueType = string
type tagKeysType = string
type string_ = string
type sessionTokenString = string
type secretKeyString = string
type roleType = string
type roleMappingType = [@as("Rules") #Rules | @as("Token") #Token]
type queryLimit = int
type principalTagValue = string
type principalTagID = string
type paginationKey = string
type oidctoken = string
type mappingRuleMatchType = [
  | @as("NotEqual") #NotEqual
  | @as("StartsWith") #StartsWith
  | @as("Contains") #Contains
  | @as("Equals") #Equals
]
type identityProviderToken = string
type identityProviderName = string
type identityProviderId = string
type identityPoolUnauthenticated = bool
type identityPoolName = string
type identityPoolId = string
type identityId = string
type hideDisabled = bool
type errorCode = [
  | @as("InternalServerError") #InternalServerError
  | @as("AccessDenied") #AccessDenied
]
type developerUserIdentifier = string
type developerProviderName = string
type dateType = Js.Date.t
type cognitoIdentityProviderTokenCheck = bool
type cognitoIdentityProviderName = string
type cognitoIdentityProviderClientId = string
type classicFlow = bool
type claimValue = string
type claimName = string
type ambiguousRoleResolutionType = [@as("Deny") #Deny | @as("AuthenticatedRole") #AuthenticatedRole]
type accountId = string
type accessKeyString = string
type arnstring = string
@ocaml.doc("<p>An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and
         IdentityId.</p>")
type unprocessedIdentityId = {
  @ocaml.doc("<p>The error code indicating the type of error that occurred.</p>") @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
  identityId: option<identityId>,
}
type samlproviderList = array<arnstring>
type rolesMap = Js.Dict.t<arnstring>
type principalTags = Js.Dict.t<principalTagValue>
type oidcproviderList = array<arnstring>
@ocaml.doc("<p>A rule that maps a claim name, a claim value, and a match type to a role
         ARN.</p>")
type mappingRule = {
  @ocaml.doc("<p>The role ARN.</p>") @as("RoleARN") roleARN: arnstring,
  @ocaml.doc("<p>A brief string that the claim must match, for example, \"paid\" or \"yes\".</p>")
  @as("Value")
  value: claimValue,
  @ocaml.doc("<p>The match condition that specifies how closely the claim value in the IdP token must
         match <code>Value</code>.</p>")
  @as("MatchType")
  matchType: mappingRuleMatchType,
  @ocaml.doc("<p>The claim name that must be present in the token, for example, \"isAdmin\" or
         \"paid\".</p>")
  @as("Claim")
  claim: claimName,
}
type loginsMap = Js.Dict.t<identityProviderToken>
type loginsList = array<identityProviderName>
type identityProviders = Js.Dict.t<identityProviderId>
type identityPoolTagsType = Js.Dict.t<tagValueType>
type identityPoolTagsListType = array<tagKeysType>
@ocaml.doc("<p>A description of the identity pool.</p>")
type identityPoolShortDescription = {
  @ocaml.doc("<p>A string that you provide.</p>") @as("IdentityPoolName")
  identityPoolName: option<identityPoolName>,
  @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
  identityPoolId: option<identityPoolId>,
}
type identityIdList = array<identityId>
type developerUserIdentifierList = array<developerUserIdentifier>
@ocaml.doc("<p>Credentials for the provided identity ID.</p>")
type credentials = {
  @ocaml.doc("<p>The date at which these credentials will expire.</p>") @as("Expiration")
  expiration: option<dateType>,
  @ocaml.doc("<p>The Session Token portion of the credentials</p>") @as("SessionToken")
  sessionToken: option<sessionTokenString>,
  @ocaml.doc("<p>The Secret Access Key portion of the credentials</p>") @as("SecretKey")
  secretKey: option<secretKeyString>,
  @ocaml.doc("<p>The Access Key portion of the credentials.</p>") @as("AccessKeyId")
  accessKeyId: option<accessKeyString>,
}
@ocaml.doc("<p>A provider representing an Amazon Cognito user pool and its client ID.</p>")
type cognitoIdentityProvider = {
  @ocaml.doc("<p>TRUE if server-side token validation is enabled for the identity provider’s
         token.</p>
         <p>Once you set <code>ServerSideTokenCheck</code> to TRUE for an identity pool, that
         identity pool will check with the integrated user pools to make sure that the user has not
         been globally signed out or deleted before the identity pool provides an OIDC token or AWS
         credentials for the user.</p>
         <p>If the user is signed out or deleted, the identity pool will return a 400 Not
         Authorized error.</p>")
  @as("ServerSideTokenCheck")
  serverSideTokenCheck: option<cognitoIdentityProviderTokenCheck>,
  @ocaml.doc("<p>The client ID for the Amazon Cognito user pool.</p>") @as("ClientId")
  clientId: option<cognitoIdentityProviderClientId>,
  @ocaml.doc("<p>The provider name for an Amazon Cognito user pool. For example,
            <code>cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789</code>.</p>")
  @as("ProviderName")
  providerName: option<cognitoIdentityProviderName>,
}
type unprocessedIdentityIdList = array<unprocessedIdentityId>
type mappingRulesList = array<mappingRule>
type identityPoolsList = array<identityPoolShortDescription>
@ocaml.doc("<p>A description of the identity.</p>")
type identityDescription = {
  @ocaml.doc("<p>Date on which the identity was last modified.</p>") @as("LastModifiedDate")
  lastModifiedDate: option<dateType>,
  @ocaml.doc("<p>Date on which the identity was created.</p>") @as("CreationDate")
  creationDate: option<dateType>,
  @ocaml.doc("<p>The provider names.</p>") @as("Logins") logins: option<loginsList>,
  @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
  identityId: option<identityId>,
}
type cognitoIdentityProviderList = array<cognitoIdentityProvider>
@ocaml.doc("<p>A container for rules.</p>")
type rulesConfigurationType = {
  @ocaml.doc("<p>An array of rules. You can specify up to 25 rules per identity provider.</p>
         <p>Rules are evaluated in order. The first one to match specifies the role.</p>")
  @as("Rules")
  rules: mappingRulesList,
}
type identitiesList = array<identityDescription>
@ocaml.doc("<p>A role mapping.</p>")
type roleMapping = {
  @ocaml.doc("<p>The rules to be used for mapping users to roles.</p>
         <p>If you specify Rules as the role mapping type, <code>RulesConfiguration</code> is
         required.</p>")
  @as("RulesConfiguration")
  rulesConfiguration: option<rulesConfigurationType>,
  @ocaml.doc("<p>If you specify Token or Rules as the <code>Type</code>,
            <code>AmbiguousRoleResolution</code> is required.</p>
         <p>Specifies the action to be taken if either no rules match the claim value for the
            <code>Rules</code> type, or there is no <code>cognito:preferred_role</code> claim and
         there are multiple <code>cognito:roles</code> matches for the <code>Token</code>
         type.</p>")
  @as("AmbiguousRoleResolution")
  ambiguousRoleResolution: option<ambiguousRoleResolutionType>,
  @ocaml.doc("<p>The role mapping type. Token will use <code>cognito:roles</code> and
            <code>cognito:preferred_role</code> claims from the Cognito identity provider token to
         map groups to roles. Rules will attempt to match claims from the token to map to a
         role.</p>")
  @as("Type")
  type_: roleMappingType,
}
type roleMappingMap = Js.Dict.t<roleMapping>
@ocaml.doc("<fullname>Amazon Cognito Federated Identities</fullname>
         <p>Amazon Cognito Federated Identities is a web service that delivers scoped temporary
         credentials to mobile devices and other untrusted environments. It uniquely identifies a
         device and supplies the user with a consistent identity over the lifetime of an
         application.</p>
         <p>Using Amazon Cognito Federated Identities, you can enable authentication with one or
         more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon
         Cognito user pool, and you can also choose to support unauthenticated access from your app.
         Cognito delivers a unique identifier for each user and acts as an OpenID token provider
         trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS
         credentials.</p>
         <p>For a description of the authentication flow from the Amazon Cognito Developer Guide
         see <a href=\"https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html\">Authentication Flow</a>.</p>
         <p>For more information see <a href=\"https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html\">Amazon Cognito Federated Identities</a>.</p>")
module UnlinkDeveloperIdentity = {
  type t
  @ocaml.doc("<p>Input to the <code>UnlinkDeveloperIdentity</code> action.</p>")
  type request = {
    @ocaml.doc("<p>A unique ID used by your backend authentication process to identify a user.</p>")
    @as("DeveloperUserIdentifier")
    developerUserIdentifier: developerUserIdentifier,
    @ocaml.doc("<p>The \"domain\" by which Cognito will refer to your users.</p>")
    @as("DeveloperProviderName")
    developerProviderName: developerProviderName,
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
    identityId: identityId,
  }

  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "UnlinkDeveloperIdentityCommand"
  let make = (~developerUserIdentifier, ~developerProviderName, ~identityPoolId, ~identityId, ()) =>
    new({
      developerUserIdentifier: developerUserIdentifier,
      developerProviderName: developerProviderName,
      identityPoolId: identityPoolId,
      identityId: identityId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module MergeDeveloperIdentities = {
  type t
  @ocaml.doc("<p>Input to the <code>MergeDeveloperIdentities</code> action.</p>")
  type request = {
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
    @ocaml.doc("<p>The \"domain\" by which Cognito will refer to your users. This is a (pseudo) domain
         name that you provide while creating an identity pool. This name acts as a placeholder that
         allows your backend and the Cognito service to communicate about the developer provider.
         For the <code>DeveloperProviderName</code>, you can use letters as well as period (.),
         underscore (_), and dash (-).</p>")
    @as("DeveloperProviderName")
    developerProviderName: developerProviderName,
    @ocaml.doc("<p>User identifier for the destination user. The value should be a
            <code>DeveloperUserIdentifier</code>.</p>")
    @as("DestinationUserIdentifier")
    destinationUserIdentifier: developerUserIdentifier,
    @ocaml.doc("<p>User identifier for the source user. The value should be a
            <code>DeveloperUserIdentifier</code>.</p>")
    @as("SourceUserIdentifier")
    sourceUserIdentifier: developerUserIdentifier,
  }
  @ocaml.doc("<p>Returned in response to a successful <code>MergeDeveloperIdentities</code>
         action.</p>")
  type response = {
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
    identityId: option<identityId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "MergeDeveloperIdentitiesCommand"
  let make = (
    ~identityPoolId,
    ~developerProviderName,
    ~destinationUserIdentifier,
    ~sourceUserIdentifier,
    (),
  ) =>
    new({
      identityPoolId: identityPoolId,
      developerProviderName: developerProviderName,
      destinationUserIdentifier: destinationUserIdentifier,
      sourceUserIdentifier: sourceUserIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteIdentityPool = {
  type t
  @ocaml.doc("<p>Input to the DeleteIdentityPool action.</p>")
  type request = {
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }

  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "DeleteIdentityPoolCommand"
  let make = (~identityPoolId, ()) => new({identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags to remove from the user pool.</p>") @as("TagKeys")
    tagKeys: identityPoolTagsListType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the identity pool.</p>") @as("ResourceArn")
    resourceArn: arnstring,
  }

  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UnlinkIdentity = {
  type t
  @ocaml.doc("<p>Input to the UnlinkIdentity action.</p>")
  type request = {
    @ocaml.doc("<p>Provider names to unlink from this identity.</p>") @as("LoginsToRemove")
    loginsToRemove: loginsList,
    @ocaml.doc("<p>A set of optional name-value pairs that map provider names to provider
         tokens.</p>")
    @as("Logins")
    logins: loginsMap,
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
    identityId: identityId,
  }

  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "UnlinkIdentityCommand"
  let make = (~loginsToRemove, ~logins, ~identityId, ()) =>
    new({loginsToRemove: loginsToRemove, logins: logins, identityId: identityId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the identity pool.</p>") @as("Tags")
    tags: identityPoolTagsType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the identity pool.</p>") @as("ResourceArn")
    resourceArn: arnstring,
  }

  @module("@aws-sdk/client-cognito-identity") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetPrincipalTagAttributeMap = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this operation to add principal tags.</p>") @as("PrincipalTags")
    principalTags: option<principalTags>,
    @ocaml.doc(
      "<p>You can use this operation to use default (username and clientID) attribute mappings.</p>"
    )
    @as("UseDefaults")
    useDefaults: option<useDefaults>,
    @ocaml.doc("<p>The provider name you want to use for attribute mappings.</p>")
    @as("IdentityProviderName")
    identityProviderName: identityProviderName,
    @ocaml.doc("<p>The ID of the Identity Pool you want to set attribute mappings for.</p>")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  type response = {
    @ocaml.doc(
      "<p>You can use this operation to add principal tags. The <code>PrincipalTags</code>operation enables you to reference user attributes in your IAM permissions policy.</p>"
    )
    @as("PrincipalTags")
    principalTags: option<principalTags>,
    @ocaml.doc(
      "<p>You can use this operation to select default (username and clientID) attribute mappings.</p>"
    )
    @as("UseDefaults")
    useDefaults: option<useDefaults>,
    @ocaml.doc("<p>The provider name you want to use for attribute mappings.</p>")
    @as("IdentityProviderName")
    identityProviderName: option<identityProviderName>,
    @ocaml.doc("<p>The ID of the Identity Pool you want to set attribute mappings for.</p>")
    @as("IdentityPoolId")
    identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "SetPrincipalTagAttributeMapCommand"
  let make = (~identityProviderName, ~identityPoolId, ~principalTags=?, ~useDefaults=?, ()) =>
    new({
      principalTags: principalTags,
      useDefaults: useDefaults,
      identityProviderName: identityProviderName,
      identityPoolId: identityPoolId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module LookupDeveloperIdentity = {
  type t
  @ocaml.doc("<p>Input to the <code>LookupDeveloperIdentityInput</code> action.</p>")
  type request = {
    @ocaml.doc("<p>A pagination token. The first call you make will have <code>NextToken</code> set to
         null. After that the service will return <code>NextToken</code> values as needed. For
         example, let's say you make a request with <code>MaxResults</code> set to 10, and there are
         20 matches in the database. The service will return a pagination token as a part of the
         response. This token can be used to call the API again and get results starting from the
         11th match.</p>")
    @as("NextToken")
    nextToken: option<paginationKey>,
    @ocaml.doc("<p>The maximum number of identities to return.</p>") @as("MaxResults")
    maxResults: option<queryLimit>,
    @ocaml.doc("<p>A unique ID used by your backend authentication process to identify a user.
         Typically, a developer identity provider would issue many developer user identifiers, in
         keeping with the number of users.</p>")
    @as("DeveloperUserIdentifier")
    developerUserIdentifier: option<developerUserIdentifier>,
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
    identityId: option<identityId>,
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("<p>Returned in response to a successful <code>LookupDeveloperIdentity</code>
         action.</p>")
  type response = {
    @ocaml.doc("<p>A pagination token. The first call you make will have <code>NextToken</code> set to
         null. After that the service will return <code>NextToken</code> values as needed. For
         example, let's say you make a request with <code>MaxResults</code> set to 10, and there are
         20 matches in the database. The service will return a pagination token as a part of the
         response. This token can be used to call the API again and get results starting from the
         11th match.</p>")
    @as("NextToken")
    nextToken: option<paginationKey>,
    @ocaml.doc("<p>This is the list of developer user identifiers associated with an identity ID.
         Cognito supports the association of multiple developer user identifiers with an identity
         ID.</p>")
    @as("DeveloperUserIdentifierList")
    developerUserIdentifierList: option<developerUserIdentifierList>,
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
    identityId: option<identityId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "LookupDeveloperIdentityCommand"
  let make = (
    ~identityPoolId,
    ~nextToken=?,
    ~maxResults=?,
    ~developerUserIdentifier=?,
    ~identityId=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      developerUserIdentifier: developerUserIdentifier,
      identityId: identityId,
      identityPoolId: identityPoolId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the identity pool that the tags are assigned
         to.</p>")
    @as("ResourceArn")
    resourceArn: arnstring,
  }
  type response = {
    @ocaml.doc("<p>The tags that are assigned to the identity pool.</p>") @as("Tags")
    tags: option<identityPoolTagsType>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPrincipalTagAttributeMap = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this operation to get the provider name.</p>")
    @as("IdentityProviderName")
    identityProviderName: identityProviderName,
    @ocaml.doc(
      "<p>You can use this operation to get the ID of the Identity Pool you setup attribute mappings for.</p>"
    )
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  type response = {
    @ocaml.doc(
      "<p>You can use this operation to add principal tags. The <code>PrincipalTags</code>operation enables you to reference user attributes in your IAM permissions policy.</p>"
    )
    @as("PrincipalTags")
    principalTags: option<principalTags>,
    @ocaml.doc("<p>You can use this operation to list </p>") @as("UseDefaults")
    useDefaults: option<useDefaults>,
    @ocaml.doc("<p>You can use this operation to get the provider name.</p>")
    @as("IdentityProviderName")
    identityProviderName: option<identityProviderName>,
    @ocaml.doc(
      "<p>You can use this operation to get the ID of the Identity Pool you setup attribute mappings for.</p>"
    )
    @as("IdentityPoolId")
    identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "GetPrincipalTagAttributeMapCommand"
  let make = (~identityProviderName, ~identityPoolId, ()) =>
    new({identityProviderName: identityProviderName, identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOpenIdTokenForDeveloperIdentity = {
  type t
  @ocaml.doc("<p>Input to the <code>GetOpenIdTokenForDeveloperIdentity</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The expiration time of the token, in seconds. You can specify a custom expiration
         time for the token so that you can cache it. If you don't provide an expiration time, the
         token is valid for 15 minutes. You can exchange the token with Amazon STS for temporary AWS
         credentials, which are valid for a maximum of one hour. The maximum token duration you can
         set is 24 hours. You should take care in setting the expiration time for a token, as there
         are significant security implications: an attacker could use a leaked token to access your
         AWS resources for the token's duration.</p>
         <note>
            <p>Please provide for a small grace period, usually no more than 5 minutes, to account for clock skew.</p>
         </note>")
    @as("TokenDuration")
    tokenDuration: option<tokenDuration>,
    @ocaml.doc("<p>Use this operation to configure attribute mappings for custom providers. </p>")
    @as("PrincipalTags")
    principalTags: option<principalTags>,
    @ocaml.doc("<p>A set of optional name-value pairs that map provider names to provider tokens. Each
         name-value pair represents a user from a public provider or developer provider. If the user
         is from a developer provider, the name-value pair will follow the syntax
            <code>\"developer_provider_name\": \"developer_user_identifier\"</code>. The developer
         provider is the \"domain\" by which Cognito will refer to your users; you provided this
         domain while creating/updating the identity pool. The developer user identifier is an
         identifier from your backend that uniquely identifies a user. When you create an identity
         pool, you can specify the supported logins.</p>")
    @as("Logins")
    logins: loginsMap,
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
    identityId: option<identityId>,
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("<p>Returned in response to a successful <code>GetOpenIdTokenForDeveloperIdentity</code>
         request.</p>")
  type response = {
    @ocaml.doc("<p>An OpenID token.</p>") @as("Token") token: option<oidctoken>,
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
    identityId: option<identityId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "GetOpenIdTokenForDeveloperIdentityCommand"
  let make = (~logins, ~identityPoolId, ~tokenDuration=?, ~principalTags=?, ~identityId=?, ()) =>
    new({
      tokenDuration: tokenDuration,
      principalTags: principalTags,
      logins: logins,
      identityId: identityId,
      identityPoolId: identityPoolId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOpenIdToken = {
  type t
  @ocaml.doc("<p>Input to the GetOpenIdToken action.</p>")
  type request = {
    @ocaml.doc("<p>A set of optional name-value pairs that map provider names to provider tokens. When
         using graph.facebook.com and www.amazon.com, supply the access_token returned from the
         provider's authflow. For accounts.google.com, an Amazon Cognito user pool provider, or any
         other OpenID Connect provider, always include the <code>id_token</code>.</p>")
    @as("Logins")
    logins: option<loginsMap>,
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
    identityId: identityId,
  }
  @ocaml.doc("<p>Returned in response to a successful GetOpenIdToken request.</p>")
  type response = {
    @ocaml.doc("<p>An OpenID token, valid for 10 minutes.</p>") @as("Token")
    token: option<oidctoken>,
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID. Note that the IdentityId returned may
         not match the one passed on input.</p>")
    @as("IdentityId")
    identityId: option<identityId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "GetOpenIdTokenCommand"
  let make = (~identityId, ~logins=?, ()) => new({logins: logins, identityId: identityId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetId = {
  type t
  @ocaml.doc("<p>Input to the GetId action.</p>")
  type request = {
    @ocaml.doc("<p>A set of optional name-value pairs that map provider names to provider tokens. The
         available provider names for <code>Logins</code> are as follows:</p>
         <ul>
            <li>
               <p>Facebook: <code>graph.facebook.com</code>
               </p>
            </li>
            <li>
               <p>Amazon Cognito user pool:
                  <code>cognito-idp.<region>.amazonaws.com/<YOUR_USER_POOL_ID></code>,
               for example, <code>cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789</code>.
            </p>
            </li>
            <li>
               <p>Google: <code>accounts.google.com</code>
               </p>
            </li>
            <li>
               <p>Amazon: <code>www.amazon.com</code>
               </p>
            </li>
            <li>
               <p>Twitter: <code>api.twitter.com</code>
               </p>
            </li>
            <li>
               <p>Digits: <code>www.digits.com</code>
               </p>
            </li>
         </ul>")
    @as("Logins")
    logins: option<loginsMap>,
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
    @ocaml.doc("<p>A standard AWS account ID (9+ digits).</p>") @as("AccountId")
    accountId: option<accountId>,
  }
  @ocaml.doc("<p>Returned in response to a GetId request.</p>")
  type response = {
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
    identityId: option<identityId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new external new: request => t = "GetIdCommand"
  let make = (~identityPoolId, ~logins=?, ~accountId=?, ()) =>
    new({logins: logins, identityPoolId: identityPoolId, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCredentialsForIdentity = {
  type t
  @ocaml.doc("<p>Input to the <code>GetCredentialsForIdentity</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were
         received in the token from the identity provider. For example, a SAML-based identity
         provider. This parameter is optional for identity providers that do not support role
         customization.</p>")
    @as("CustomRoleArn")
    customRoleArn: option<arnstring>,
    @ocaml.doc("<p>A set of optional name-value pairs that map provider names to provider tokens. The
         name-value pair will follow the syntax \"provider_name\":
         \"provider_user_identifier\".</p>
         <p>Logins should not be specified when trying to get credentials for an unauthenticated
         identity.</p>
         <p>The Logins parameter is required when using identities associated with external
         identity providers such as Facebook. For examples of <code>Logins</code> maps, see the code
         examples in the <a href=\"https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html\">External Identity Providers</a> section of the Amazon Cognito Developer
         Guide.</p>")
    @as("Logins")
    logins: option<loginsMap>,
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
    identityId: identityId,
  }
  @ocaml.doc("<p>Returned in response to a successful <code>GetCredentialsForIdentity</code>
         operation.</p>")
  type response = {
    @ocaml.doc("<p>Credentials for the provided identity ID.</p>") @as("Credentials")
    credentials: option<credentials>,
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
    identityId: option<identityId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "GetCredentialsForIdentityCommand"
  let make = (~identityId, ~customRoleArn=?, ~logins=?, ()) =>
    new({customRoleArn: customRoleArn, logins: logins, identityId: identityId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIdentity = {
  type t
  @ocaml.doc("<p>Input to the <code>DescribeIdentity</code> action.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier in the format REGION:GUID.</p>") @as("IdentityId")
    identityId: identityId,
  }
  type response = identityDescription
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "DescribeIdentityCommand"
  let make = (~identityId, ()) => new({identityId: identityId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIdentityPool = {
  type t
  @ocaml.doc("<p>An object representing an Amazon Cognito identity pool.</p>")
  type request = {
    @ocaml.doc("<p>The tags that are assigned to the identity pool. A tag is a label that you can apply to
         identity pools to categorize and manage them in different ways, such as by purpose, owner,
         environment, or other criteria.</p>")
    @as("IdentityPoolTags")
    identityPoolTags: option<identityPoolTagsType>,
    @ocaml.doc("<p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
         pool.</p>")
    @as("SamlProviderARNs")
    samlProviderARNs: option<samlproviderList>,
    @ocaml.doc("<p>A list representing an Amazon Cognito user pool and its client ID.</p>")
    @as("CognitoIdentityProviders")
    cognitoIdentityProviders: option<cognitoIdentityProviderList>,
    @ocaml.doc("<p>The ARNs of the OpenID Connect providers.</p>") @as("OpenIdConnectProviderARNs")
    openIdConnectProviderARNs: option<oidcproviderList>,
    @ocaml.doc("<p>The \"domain\" by which Cognito will refer to your users.</p>")
    @as("DeveloperProviderName")
    developerProviderName: option<developerProviderName>,
    @ocaml.doc("<p>Optional key:value pairs mapping provider names to provider app IDs.</p>")
    @as("SupportedLoginProviders")
    supportedLoginProviders: option<identityProviders>,
    @ocaml.doc("<p>Enables or disables the Basic (Classic) authentication flow. For more information, see
      <a href=\"https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html\">Identity Pools (Federated Identities) Authentication Flow</a> in the <i>Amazon Cognito Developer Guide</i>.</p>")
    @as("AllowClassicFlow")
    allowClassicFlow: option<classicFlow>,
    @ocaml.doc("<p>TRUE if the identity pool supports unauthenticated logins.</p>")
    @as("AllowUnauthenticatedIdentities")
    allowUnauthenticatedIdentities: identityPoolUnauthenticated,
    @ocaml.doc("<p>A string that you provide.</p>") @as("IdentityPoolName")
    identityPoolName: identityPoolName,
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("<p>An object representing an Amazon Cognito identity pool.</p>")
  type response = {
    @ocaml.doc("<p>The tags that are assigned to the identity pool. A tag is a label that you can apply to
         identity pools to categorize and manage them in different ways, such as by purpose, owner,
         environment, or other criteria.</p>")
    @as("IdentityPoolTags")
    identityPoolTags: option<identityPoolTagsType>,
    @ocaml.doc("<p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
         pool.</p>")
    @as("SamlProviderARNs")
    samlProviderARNs: option<samlproviderList>,
    @ocaml.doc("<p>A list representing an Amazon Cognito user pool and its client ID.</p>")
    @as("CognitoIdentityProviders")
    cognitoIdentityProviders: option<cognitoIdentityProviderList>,
    @ocaml.doc("<p>The ARNs of the OpenID Connect providers.</p>") @as("OpenIdConnectProviderARNs")
    openIdConnectProviderARNs: option<oidcproviderList>,
    @ocaml.doc("<p>The \"domain\" by which Cognito will refer to your users.</p>")
    @as("DeveloperProviderName")
    developerProviderName: option<developerProviderName>,
    @ocaml.doc("<p>Optional key:value pairs mapping provider names to provider app IDs.</p>")
    @as("SupportedLoginProviders")
    supportedLoginProviders: option<identityProviders>,
    @ocaml.doc("<p>Enables or disables the Basic (Classic) authentication flow. For more information, see
      <a href=\"https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html\">Identity Pools (Federated Identities) Authentication Flow</a> in the <i>Amazon Cognito Developer Guide</i>.</p>")
    @as("AllowClassicFlow")
    allowClassicFlow: option<classicFlow>,
    @ocaml.doc("<p>TRUE if the identity pool supports unauthenticated logins.</p>")
    @as("AllowUnauthenticatedIdentities")
    allowUnauthenticatedIdentities: identityPoolUnauthenticated,
    @ocaml.doc("<p>A string that you provide.</p>") @as("IdentityPoolName")
    identityPoolName: identityPoolName,
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "UpdateIdentityPoolCommand"
  let make = (
    ~allowUnauthenticatedIdentities,
    ~identityPoolName,
    ~identityPoolId,
    ~identityPoolTags=?,
    ~samlProviderARNs=?,
    ~cognitoIdentityProviders=?,
    ~openIdConnectProviderARNs=?,
    ~developerProviderName=?,
    ~supportedLoginProviders=?,
    ~allowClassicFlow=?,
    (),
  ) =>
    new({
      identityPoolTags: identityPoolTags,
      samlProviderARNs: samlProviderARNs,
      cognitoIdentityProviders: cognitoIdentityProviders,
      openIdConnectProviderARNs: openIdConnectProviderARNs,
      developerProviderName: developerProviderName,
      supportedLoginProviders: supportedLoginProviders,
      allowClassicFlow: allowClassicFlow,
      allowUnauthenticatedIdentities: allowUnauthenticatedIdentities,
      identityPoolName: identityPoolName,
      identityPoolId: identityPoolId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIdentityPools = {
  type t
  @ocaml.doc("<p>Input to the ListIdentityPools action.</p>")
  type request = {
    @ocaml.doc("<p>A pagination token.</p>") @as("NextToken") nextToken: option<paginationKey>,
    @ocaml.doc("<p>The maximum number of identities to return.</p>") @as("MaxResults")
    maxResults: queryLimit,
  }
  @ocaml.doc("<p>The result of a successful ListIdentityPools action.</p>")
  type response = {
    @ocaml.doc("<p>A pagination token.</p>") @as("NextToken") nextToken: option<paginationKey>,
    @ocaml.doc("<p>The identity pools returned by the ListIdentityPools action.</p>")
    @as("IdentityPools")
    identityPools: option<identityPoolsList>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "ListIdentityPoolsCommand"
  let make = (~maxResults, ~nextToken=?, ()) => new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIdentityPool = {
  type t
  @ocaml.doc("<p>Input to the DescribeIdentityPool action.</p>")
  type request = {
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("<p>An object representing an Amazon Cognito identity pool.</p>")
  type response = {
    @ocaml.doc("<p>The tags that are assigned to the identity pool. A tag is a label that you can apply to
         identity pools to categorize and manage them in different ways, such as by purpose, owner,
         environment, or other criteria.</p>")
    @as("IdentityPoolTags")
    identityPoolTags: option<identityPoolTagsType>,
    @ocaml.doc("<p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
         pool.</p>")
    @as("SamlProviderARNs")
    samlProviderARNs: option<samlproviderList>,
    @ocaml.doc("<p>A list representing an Amazon Cognito user pool and its client ID.</p>")
    @as("CognitoIdentityProviders")
    cognitoIdentityProviders: option<cognitoIdentityProviderList>,
    @ocaml.doc("<p>The ARNs of the OpenID Connect providers.</p>") @as("OpenIdConnectProviderARNs")
    openIdConnectProviderARNs: option<oidcproviderList>,
    @ocaml.doc("<p>The \"domain\" by which Cognito will refer to your users.</p>")
    @as("DeveloperProviderName")
    developerProviderName: option<developerProviderName>,
    @ocaml.doc("<p>Optional key:value pairs mapping provider names to provider app IDs.</p>")
    @as("SupportedLoginProviders")
    supportedLoginProviders: option<identityProviders>,
    @ocaml.doc("<p>Enables or disables the Basic (Classic) authentication flow. For more information, see
      <a href=\"https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html\">Identity Pools (Federated Identities) Authentication Flow</a> in the <i>Amazon Cognito Developer Guide</i>.</p>")
    @as("AllowClassicFlow")
    allowClassicFlow: option<classicFlow>,
    @ocaml.doc("<p>TRUE if the identity pool supports unauthenticated logins.</p>")
    @as("AllowUnauthenticatedIdentities")
    allowUnauthenticatedIdentities: identityPoolUnauthenticated,
    @ocaml.doc("<p>A string that you provide.</p>") @as("IdentityPoolName")
    identityPoolName: identityPoolName,
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "DescribeIdentityPoolCommand"
  let make = (~identityPoolId, ()) => new({identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteIdentities = {
  type t
  @ocaml.doc("<p>Input to the <code>DeleteIdentities</code> action.</p>")
  type request = {
    @ocaml.doc("<p>A list of 1-60 identities that you want to delete.</p>")
    @as("IdentityIdsToDelete")
    identityIdsToDelete: identityIdList,
  }
  @ocaml.doc("<p>Returned in response to a successful <code>DeleteIdentities</code>
         operation.</p>")
  type response = {
    @ocaml.doc("<p>An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and
         IdentityId.</p>")
    @as("UnprocessedIdentityIds")
    unprocessedIdentityIds: option<unprocessedIdentityIdList>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "DeleteIdentitiesCommand"
  let make = (~identityIdsToDelete, ()) => new({identityIdsToDelete: identityIdsToDelete})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIdentityPool = {
  type t
  @ocaml.doc("<p>Input to the CreateIdentityPool action.</p>")
  type request = {
    @ocaml.doc("<p>Tags to assign to the identity pool. A tag is a label that you can apply to identity
         pools to categorize and manage them in different ways, such as by purpose, owner,
         environment, or other criteria.</p>")
    @as("IdentityPoolTags")
    identityPoolTags: option<identityPoolTagsType>,
    @ocaml.doc("<p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
         pool.</p>")
    @as("SamlProviderARNs")
    samlProviderARNs: option<samlproviderList>,
    @ocaml.doc("<p>An array of Amazon Cognito user pools and their client IDs.</p>")
    @as("CognitoIdentityProviders")
    cognitoIdentityProviders: option<cognitoIdentityProviderList>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the OpenID Connect providers.</p>")
    @as("OpenIdConnectProviderARNs")
    openIdConnectProviderARNs: option<oidcproviderList>,
    @ocaml.doc("<p>The \"domain\" by which Cognito will refer to your users. This name acts as a
         placeholder that allows your backend and the Cognito service to communicate about the
         developer provider. For the <code>DeveloperProviderName</code>, you can use letters as well
         as period (<code>.</code>), underscore (<code>_</code>), and dash
         (<code>-</code>).</p>
         <p>Once you have set a developer provider name, you cannot change it. Please take care
         in setting this parameter.</p>")
    @as("DeveloperProviderName")
    developerProviderName: option<developerProviderName>,
    @ocaml.doc("<p>Optional key:value pairs mapping provider names to provider app IDs.</p>")
    @as("SupportedLoginProviders")
    supportedLoginProviders: option<identityProviders>,
    @ocaml.doc("<p>Enables or disables the Basic (Classic) authentication flow. For more information, see
      <a href=\"https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html\">Identity Pools (Federated Identities) Authentication Flow</a> in the <i>Amazon Cognito Developer Guide</i>.</p>")
    @as("AllowClassicFlow")
    allowClassicFlow: option<classicFlow>,
    @ocaml.doc("<p>TRUE if the identity pool supports unauthenticated logins.</p>")
    @as("AllowUnauthenticatedIdentities")
    allowUnauthenticatedIdentities: identityPoolUnauthenticated,
    @ocaml.doc("<p>A string that you provide.</p>") @as("IdentityPoolName")
    identityPoolName: identityPoolName,
  }
  @ocaml.doc("<p>An object representing an Amazon Cognito identity pool.</p>")
  type response = {
    @ocaml.doc("<p>The tags that are assigned to the identity pool. A tag is a label that you can apply to
         identity pools to categorize and manage them in different ways, such as by purpose, owner,
         environment, or other criteria.</p>")
    @as("IdentityPoolTags")
    identityPoolTags: option<identityPoolTagsType>,
    @ocaml.doc("<p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
         pool.</p>")
    @as("SamlProviderARNs")
    samlProviderARNs: option<samlproviderList>,
    @ocaml.doc("<p>A list representing an Amazon Cognito user pool and its client ID.</p>")
    @as("CognitoIdentityProviders")
    cognitoIdentityProviders: option<cognitoIdentityProviderList>,
    @ocaml.doc("<p>The ARNs of the OpenID Connect providers.</p>") @as("OpenIdConnectProviderARNs")
    openIdConnectProviderARNs: option<oidcproviderList>,
    @ocaml.doc("<p>The \"domain\" by which Cognito will refer to your users.</p>")
    @as("DeveloperProviderName")
    developerProviderName: option<developerProviderName>,
    @ocaml.doc("<p>Optional key:value pairs mapping provider names to provider app IDs.</p>")
    @as("SupportedLoginProviders")
    supportedLoginProviders: option<identityProviders>,
    @ocaml.doc("<p>Enables or disables the Basic (Classic) authentication flow. For more information, see
      <a href=\"https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html\">Identity Pools (Federated Identities) Authentication Flow</a> in the <i>Amazon Cognito Developer Guide</i>.</p>")
    @as("AllowClassicFlow")
    allowClassicFlow: option<classicFlow>,
    @ocaml.doc("<p>TRUE if the identity pool supports unauthenticated logins.</p>")
    @as("AllowUnauthenticatedIdentities")
    allowUnauthenticatedIdentities: identityPoolUnauthenticated,
    @ocaml.doc("<p>A string that you provide.</p>") @as("IdentityPoolName")
    identityPoolName: identityPoolName,
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "CreateIdentityPoolCommand"
  let make = (
    ~allowUnauthenticatedIdentities,
    ~identityPoolName,
    ~identityPoolTags=?,
    ~samlProviderARNs=?,
    ~cognitoIdentityProviders=?,
    ~openIdConnectProviderARNs=?,
    ~developerProviderName=?,
    ~supportedLoginProviders=?,
    ~allowClassicFlow=?,
    (),
  ) =>
    new({
      identityPoolTags: identityPoolTags,
      samlProviderARNs: samlProviderARNs,
      cognitoIdentityProviders: cognitoIdentityProviders,
      openIdConnectProviderARNs: openIdConnectProviderARNs,
      developerProviderName: developerProviderName,
      supportedLoginProviders: supportedLoginProviders,
      allowClassicFlow: allowClassicFlow,
      allowUnauthenticatedIdentities: allowUnauthenticatedIdentities,
      identityPoolName: identityPoolName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIdentities = {
  type t
  @ocaml.doc("<p>Input to the ListIdentities action.</p>")
  type request = {
    @ocaml.doc("<p>An optional boolean parameter that allows you to hide disabled identities. If
         omitted, the ListIdentities API will include disabled identities in the response.</p>")
    @as("HideDisabled")
    hideDisabled: option<hideDisabled>,
    @ocaml.doc("<p>A pagination token.</p>") @as("NextToken") nextToken: option<paginationKey>,
    @ocaml.doc("<p>The maximum number of identities to return.</p>") @as("MaxResults")
    maxResults: queryLimit,
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("<p>The response to a ListIdentities request.</p>")
  type response = {
    @ocaml.doc("<p>A pagination token.</p>") @as("NextToken") nextToken: option<paginationKey>,
    @ocaml.doc("<p>An object containing a set of identities and associated mappings.</p>")
    @as("Identities")
    identities: option<identitiesList>,
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "ListIdentitiesCommand"
  let make = (~maxResults, ~identityPoolId, ~hideDisabled=?, ~nextToken=?, ()) =>
    new({
      hideDisabled: hideDisabled,
      nextToken: nextToken,
      maxResults: maxResults,
      identityPoolId: identityPoolId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetIdentityPoolRoles = {
  type t
  @ocaml.doc("<p>Input to the <code>SetIdentityPoolRoles</code> action.</p>")
  type request = {
    @ocaml.doc("<p>How users for a specific identity provider are to mapped to roles. This is a string
         to <a>RoleMapping</a> object map. The string identifies the identity provider,
         for example, \"graph.facebook.com\" or
         \"cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id\".</p>
         <p>Up to 25 rules can be specified per identity provider.</p>")
    @as("RoleMappings")
    roleMappings: option<roleMappingMap>,
    @ocaml.doc("<p>The map of roles associated with this pool. For a given role, the key will be either
         \"authenticated\" or \"unauthenticated\" and the value will be the Role ARN.</p>")
    @as("Roles")
    roles: rolesMap,
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }

  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "SetIdentityPoolRolesCommand"
  let make = (~roles, ~identityPoolId, ~roleMappings=?, ()) =>
    new({roleMappings: roleMappings, roles: roles, identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetIdentityPoolRoles = {
  type t
  @ocaml.doc("<p>Input to the <code>GetIdentityPoolRoles</code> action.</p>")
  type request = {
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("<p>Returned in response to a successful <code>GetIdentityPoolRoles</code>
         operation.</p>")
  type response = {
    @ocaml.doc("<p>How users for a specific identity provider are to mapped to roles. This is a
            String-to-<a>RoleMapping</a> object map. The string identifies the identity
         provider, for example, \"graph.facebook.com\" or
         \"cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id\".</p>")
    @as("RoleMappings")
    roleMappings: option<roleMappingMap>,
    @ocaml.doc("<p>The map of roles associated with this pool. Currently only authenticated and
         unauthenticated roles are supported.</p>")
    @as("Roles")
    roles: option<rolesMap>,
    @ocaml.doc("<p>An identity pool ID in the format REGION:GUID.</p>") @as("IdentityPoolId")
    identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "GetIdentityPoolRolesCommand"
  let make = (~identityPoolId, ()) => new({identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
