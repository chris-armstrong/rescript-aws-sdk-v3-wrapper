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
type unprocessedIdentityId = {
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("IdentityId") identityId: option<identityId>,
}
type samlproviderList = array<arnstring>
type rolesMap = Js.Dict.t<arnstring>
type principalTags = Js.Dict.t<principalTagValue>
type oidcproviderList = array<arnstring>
type mappingRule = {
  @as("RoleARN") roleARN: arnstring,
  @as("Value") value: claimValue,
  @as("MatchType") matchType: mappingRuleMatchType,
  @as("Claim") claim: claimName,
}
type loginsMap = Js.Dict.t<identityProviderToken>
type loginsList = array<identityProviderName>
type identityProviders = Js.Dict.t<identityProviderId>
type identityPoolTagsType = Js.Dict.t<tagValueType>
type identityPoolTagsListType = array<tagKeysType>
type identityPoolShortDescription = {
  @as("IdentityPoolName") identityPoolName: option<identityPoolName>,
  @as("IdentityPoolId") identityPoolId: option<identityPoolId>,
}
type identityIdList = array<identityId>
type developerUserIdentifierList = array<developerUserIdentifier>
type credentials = {
  @as("Expiration") expiration: option<dateType>,
  @as("SessionToken") sessionToken: option<sessionTokenString>,
  @as("SecretKey") secretKey: option<secretKeyString>,
  @as("AccessKeyId") accessKeyId: option<accessKeyString>,
}
type cognitoIdentityProvider = {
  @as("ServerSideTokenCheck") serverSideTokenCheck: option<cognitoIdentityProviderTokenCheck>,
  @as("ClientId") clientId: option<cognitoIdentityProviderClientId>,
  @as("ProviderName") providerName: option<cognitoIdentityProviderName>,
}
type unprocessedIdentityIdList = array<unprocessedIdentityId>
type mappingRulesList = array<mappingRule>
type identityPoolsList = array<identityPoolShortDescription>
type identityDescription = {
  @as("LastModifiedDate") lastModifiedDate: option<dateType>,
  @as("CreationDate") creationDate: option<dateType>,
  @as("Logins") logins: option<loginsList>,
  @as("IdentityId") identityId: option<identityId>,
}
type cognitoIdentityProviderList = array<cognitoIdentityProvider>
type rulesConfigurationType = {@as("Rules") rules: mappingRulesList}
type identitiesList = array<identityDescription>
type roleMapping = {
  @as("RulesConfiguration") rulesConfiguration: option<rulesConfigurationType>,
  @as("AmbiguousRoleResolution") ambiguousRoleResolution: option<ambiguousRoleResolutionType>,
  @as("Type") type_: roleMappingType,
}
type roleMappingMap = Js.Dict.t<roleMapping>

module UnlinkDeveloperIdentity = {
  type t
  type request = {
    @as("DeveloperUserIdentifier") developerUserIdentifier: developerUserIdentifier,
    @as("DeveloperProviderName") developerProviderName: developerProviderName,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
    @as("IdentityId") identityId: identityId,
  }

  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "UnlinkDeveloperIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module MergeDeveloperIdentities = {
  type t
  type request = {
    @as("IdentityPoolId") identityPoolId: identityPoolId,
    @as("DeveloperProviderName") developerProviderName: developerProviderName,
    @as("DestinationUserIdentifier") destinationUserIdentifier: developerUserIdentifier,
    @as("SourceUserIdentifier") sourceUserIdentifier: developerUserIdentifier,
  }
  type response = {@as("IdentityId") identityId: option<identityId>}
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "MergeDeveloperIdentitiesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteIdentityPool = {
  type t
  type request = {@as("IdentityPoolId") identityPoolId: identityPoolId}

  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "DeleteIdentityPoolCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: identityPoolTagsListType,
    @as("ResourceArn") resourceArn: arnstring,
  }
  type response = unit
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UnlinkIdentity = {
  type t
  type request = {
    @as("LoginsToRemove") loginsToRemove: loginsList,
    @as("Logins") logins: loginsMap,
    @as("IdentityId") identityId: identityId,
  }

  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "UnlinkIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: identityPoolTagsType,
    @as("ResourceArn") resourceArn: arnstring,
  }
  type response = unit
  @module("@aws-sdk/client-cognito-identity") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetPrincipalTagAttributeMap = {
  type t
  type request = {
    @as("PrincipalTags") principalTags: option<principalTags>,
    @as("UseDefaults") useDefaults: option<useDefaults>,
    @as("IdentityProviderName") identityProviderName: identityProviderName,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {
    @as("PrincipalTags") principalTags: option<principalTags>,
    @as("UseDefaults") useDefaults: option<useDefaults>,
    @as("IdentityProviderName") identityProviderName: option<identityProviderName>,
    @as("IdentityPoolId") identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "SetPrincipalTagAttributeMapCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module LookupDeveloperIdentity = {
  type t
  type request = {
    @as("NextToken") nextToken: option<paginationKey>,
    @as("MaxResults") maxResults: option<queryLimit>,
    @as("DeveloperUserIdentifier") developerUserIdentifier: option<developerUserIdentifier>,
    @as("IdentityId") identityId: option<identityId>,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationKey>,
    @as("DeveloperUserIdentifierList")
    developerUserIdentifierList: option<developerUserIdentifierList>,
    @as("IdentityId") identityId: option<identityId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "LookupDeveloperIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: arnstring}
  type response = {@as("Tags") tags: option<identityPoolTagsType>}
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPrincipalTagAttributeMap = {
  type t
  type request = {
    @as("IdentityProviderName") identityProviderName: identityProviderName,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {
    @as("PrincipalTags") principalTags: option<principalTags>,
    @as("UseDefaults") useDefaults: option<useDefaults>,
    @as("IdentityProviderName") identityProviderName: option<identityProviderName>,
    @as("IdentityPoolId") identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "GetPrincipalTagAttributeMapCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOpenIdTokenForDeveloperIdentity = {
  type t
  type request = {
    @as("TokenDuration") tokenDuration: option<tokenDuration>,
    @as("PrincipalTags") principalTags: option<principalTags>,
    @as("Logins") logins: loginsMap,
    @as("IdentityId") identityId: option<identityId>,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {
    @as("Token") token: option<oidctoken>,
    @as("IdentityId") identityId: option<identityId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "GetOpenIdTokenForDeveloperIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOpenIdToken = {
  type t
  type request = {
    @as("Logins") logins: option<loginsMap>,
    @as("IdentityId") identityId: identityId,
  }
  type response = {
    @as("Token") token: option<oidctoken>,
    @as("IdentityId") identityId: option<identityId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "GetOpenIdTokenCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetId = {
  type t
  type request = {
    @as("Logins") logins: option<loginsMap>,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
    @as("AccountId") accountId: option<accountId>,
  }
  type response = {@as("IdentityId") identityId: option<identityId>}
  @module("@aws-sdk/client-cognito-identity") @new external new: request => t = "GetIdCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCredentialsForIdentity = {
  type t
  type request = {
    @as("CustomRoleArn") customRoleArn: option<arnstring>,
    @as("Logins") logins: option<loginsMap>,
    @as("IdentityId") identityId: identityId,
  }
  type response = {
    @as("Credentials") credentials: option<credentials>,
    @as("IdentityId") identityId: option<identityId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "GetCredentialsForIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIdentity = {
  type t
  type request = {@as("IdentityId") identityId: identityId}
  type response = identityDescription
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "DescribeIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIdentityPool = {
  type t
  type request = {
    @as("IdentityPoolTags") identityPoolTags: option<identityPoolTagsType>,
    @as("SamlProviderARNs") samlProviderARNs: option<samlproviderList>,
    @as("CognitoIdentityProviders") cognitoIdentityProviders: option<cognitoIdentityProviderList>,
    @as("OpenIdConnectProviderARNs") openIdConnectProviderARNs: option<oidcproviderList>,
    @as("DeveloperProviderName") developerProviderName: option<developerProviderName>,
    @as("SupportedLoginProviders") supportedLoginProviders: option<identityProviders>,
    @as("AllowClassicFlow") allowClassicFlow: option<classicFlow>,
    @as("AllowUnauthenticatedIdentities")
    allowUnauthenticatedIdentities: identityPoolUnauthenticated,
    @as("IdentityPoolName") identityPoolName: identityPoolName,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {
    @as("IdentityPoolTags") identityPoolTags: option<identityPoolTagsType>,
    @as("SamlProviderARNs") samlProviderARNs: option<samlproviderList>,
    @as("CognitoIdentityProviders") cognitoIdentityProviders: option<cognitoIdentityProviderList>,
    @as("OpenIdConnectProviderARNs") openIdConnectProviderARNs: option<oidcproviderList>,
    @as("DeveloperProviderName") developerProviderName: option<developerProviderName>,
    @as("SupportedLoginProviders") supportedLoginProviders: option<identityProviders>,
    @as("AllowClassicFlow") allowClassicFlow: option<classicFlow>,
    @as("AllowUnauthenticatedIdentities")
    allowUnauthenticatedIdentities: identityPoolUnauthenticated,
    @as("IdentityPoolName") identityPoolName: identityPoolName,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "UpdateIdentityPoolCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIdentityPools = {
  type t
  type request = {
    @as("NextToken") nextToken: option<paginationKey>,
    @as("MaxResults") maxResults: queryLimit,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationKey>,
    @as("IdentityPools") identityPools: option<identityPoolsList>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "ListIdentityPoolsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIdentityPool = {
  type t
  type request = {@as("IdentityPoolId") identityPoolId: identityPoolId}
  type response = {
    @as("IdentityPoolTags") identityPoolTags: option<identityPoolTagsType>,
    @as("SamlProviderARNs") samlProviderARNs: option<samlproviderList>,
    @as("CognitoIdentityProviders") cognitoIdentityProviders: option<cognitoIdentityProviderList>,
    @as("OpenIdConnectProviderARNs") openIdConnectProviderARNs: option<oidcproviderList>,
    @as("DeveloperProviderName") developerProviderName: option<developerProviderName>,
    @as("SupportedLoginProviders") supportedLoginProviders: option<identityProviders>,
    @as("AllowClassicFlow") allowClassicFlow: option<classicFlow>,
    @as("AllowUnauthenticatedIdentities")
    allowUnauthenticatedIdentities: identityPoolUnauthenticated,
    @as("IdentityPoolName") identityPoolName: identityPoolName,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "DescribeIdentityPoolCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteIdentities = {
  type t
  type request = {@as("IdentityIdsToDelete") identityIdsToDelete: identityIdList}
  type response = {
    @as("UnprocessedIdentityIds") unprocessedIdentityIds: option<unprocessedIdentityIdList>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "DeleteIdentitiesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIdentityPool = {
  type t
  type request = {
    @as("IdentityPoolTags") identityPoolTags: option<identityPoolTagsType>,
    @as("SamlProviderARNs") samlProviderARNs: option<samlproviderList>,
    @as("CognitoIdentityProviders") cognitoIdentityProviders: option<cognitoIdentityProviderList>,
    @as("OpenIdConnectProviderARNs") openIdConnectProviderARNs: option<oidcproviderList>,
    @as("DeveloperProviderName") developerProviderName: option<developerProviderName>,
    @as("SupportedLoginProviders") supportedLoginProviders: option<identityProviders>,
    @as("AllowClassicFlow") allowClassicFlow: option<classicFlow>,
    @as("AllowUnauthenticatedIdentities")
    allowUnauthenticatedIdentities: identityPoolUnauthenticated,
    @as("IdentityPoolName") identityPoolName: identityPoolName,
  }
  type response = {
    @as("IdentityPoolTags") identityPoolTags: option<identityPoolTagsType>,
    @as("SamlProviderARNs") samlProviderARNs: option<samlproviderList>,
    @as("CognitoIdentityProviders") cognitoIdentityProviders: option<cognitoIdentityProviderList>,
    @as("OpenIdConnectProviderARNs") openIdConnectProviderARNs: option<oidcproviderList>,
    @as("DeveloperProviderName") developerProviderName: option<developerProviderName>,
    @as("SupportedLoginProviders") supportedLoginProviders: option<identityProviders>,
    @as("AllowClassicFlow") allowClassicFlow: option<classicFlow>,
    @as("AllowUnauthenticatedIdentities")
    allowUnauthenticatedIdentities: identityPoolUnauthenticated,
    @as("IdentityPoolName") identityPoolName: identityPoolName,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "CreateIdentityPoolCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIdentities = {
  type t
  type request = {
    @as("HideDisabled") hideDisabled: option<hideDisabled>,
    @as("NextToken") nextToken: option<paginationKey>,
    @as("MaxResults") maxResults: queryLimit,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationKey>,
    @as("Identities") identities: option<identitiesList>,
    @as("IdentityPoolId") identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "ListIdentitiesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetIdentityPoolRoles = {
  type t
  type request = {
    @as("RoleMappings") roleMappings: option<roleMappingMap>,
    @as("Roles") roles: rolesMap,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }

  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "SetIdentityPoolRolesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetIdentityPoolRoles = {
  type t
  type request = {@as("IdentityPoolId") identityPoolId: identityPoolId}
  type response = {
    @as("RoleMappings") roleMappings: option<roleMappingMap>,
    @as("Roles") roles: option<rolesMap>,
    @as("IdentityPoolId") identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-identity") @new
  external new: request => t = "GetIdentityPoolRolesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
