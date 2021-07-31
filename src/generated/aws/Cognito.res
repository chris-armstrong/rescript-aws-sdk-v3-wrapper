type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type useDefaults = bool;
type tokenDuration = float;
type tagValueType = string
type tagKeysType = string
type amazonawsString = string
type sessionTokenString = string
type secretKeyString = string
type roleType = string
type roleMappingType = [@as("Rules") #Rules | @as("Token") #Token]
type queryLimit = int;
type principalTagValue = string
type principalTagID = string
type paginationKey = string
type oIDCToken = string
type mappingRuleMatchType = [@as("NotEqual") #NotEqual | @as("StartsWith") #StartsWith | @as("Contains") #Contains | @as("Equals") #Equals]
type identityProviderToken = string
type identityProviderName = string
type identityProviderId = string
type identityPoolUnauthenticated = bool;
type identityPoolName = string
type identityPoolId = string
type identityId = string
type hideDisabled = bool;
type errorCode = [@as("InternalServerError") #InternalServerError | @as("AccessDenied") #AccessDenied]
type developerUserIdentifier = string
type developerProviderName = string
type dateType = Js.Date.t;
type cognitoIdentityProviderTokenCheck = bool;
type cognitoIdentityProviderName = string
type cognitoIdentityProviderClientId = string
type classicFlow = bool;
type claimValue = string
type claimName = string
type ambiguousRoleResolutionType = [@as("Deny") #Deny | @as("AuthenticatedRole") #AuthenticatedRole]
type accountId = string
type accessKeyString = string
type aRNString = string
type unprocessedIdentityId = {
@as("ErrorCode") errorCode: errorCode,
@as("IdentityId") identityId: identityId
}
type sAMLProviderList = array<aRNString>
type rolesMap = Js.Dict.t< aRNString>
type principalTags = Js.Dict.t< principalTagValue>
type oIDCProviderList = array<aRNString>
type mappingRule = {
@as("RoleARN") roleARN: option<aRNString>,
@as("Value") value: option<claimValue>,
@as("MatchType") matchType: option<mappingRuleMatchType>,
@as("Claim") claim: option<claimName>
}
type loginsMap = Js.Dict.t< identityProviderToken>
type loginsList = array<identityProviderName>
type identityProviders = Js.Dict.t< identityProviderId>
type identityPoolTagsType = Js.Dict.t< tagValueType>
type identityPoolTagsListType = array<tagKeysType>
type identityPoolShortDescription = {
@as("IdentityPoolName") identityPoolName: identityPoolName,
@as("IdentityPoolId") identityPoolId: identityPoolId
}
type identityIdList = array<identityId>
type developerUserIdentifierList = array<developerUserIdentifier>
type credentials = {
@as("Expiration") expiration: dateType,
@as("SessionToken") sessionToken: sessionTokenString,
@as("SecretKey") secretKey: secretKeyString,
@as("AccessKeyId") accessKeyId: accessKeyString
}
type cognitoIdentityProvider = {
@as("ServerSideTokenCheck") serverSideTokenCheck: cognitoIdentityProviderTokenCheck,
@as("ClientId") clientId: cognitoIdentityProviderClientId,
@as("ProviderName") providerName: cognitoIdentityProviderName
}
type unprocessedIdentityIdList = array<unprocessedIdentityId>
type mappingRulesList = array<mappingRule>
type identityPoolsList = array<identityPoolShortDescription>
type identityDescription = {
@as("LastModifiedDate") lastModifiedDate: dateType,
@as("CreationDate") creationDate: dateType,
@as("Logins") logins: loginsList,
@as("IdentityId") identityId: identityId
}
type cognitoIdentityProviderList = array<cognitoIdentityProvider>
type rulesConfigurationType = {
@as("Rules") rules: option<mappingRulesList>
}
type identitiesList = array<identityDescription>
type roleMapping = {
@as("RulesConfiguration") rulesConfiguration: rulesConfigurationType,
@as("AmbiguousRoleResolution") ambiguousRoleResolution: ambiguousRoleResolutionType,
@as("Type") type_: option<roleMappingType>
}
type roleMappingMap = Js.Dict.t< roleMapping>
type clientType;
@module("@aws-sdk/client-cognito-identity") @new external createClient: unit => clientType = "CognitoClient";
module UnlinkDeveloperIdentity = {
  type t;
  type request = {
@as("DeveloperUserIdentifier") developerUserIdentifier: option<developerUserIdentifier>,
@as("DeveloperProviderName") developerProviderName: option<developerProviderName>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>,
@as("IdentityId") identityId: option<identityId>
}
  
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "UnlinkDeveloperIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module MergeDeveloperIdentities = {
  type t;
  type request = {
@as("IdentityPoolId") identityPoolId: option<identityPoolId>,
@as("DeveloperProviderName") developerProviderName: option<developerProviderName>,
@as("DestinationUserIdentifier") destinationUserIdentifier: option<developerUserIdentifier>,
@as("SourceUserIdentifier") sourceUserIdentifier: option<developerUserIdentifier>
}
  type response = {
@as("IdentityId") identityId: identityId
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "MergeDeveloperIdentitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteIdentityPool = {
  type t;
  type request = {
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "DeleteIdentityPoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<identityPoolTagsListType>,
@as("ResourceArn") resourceArn: option<aRNString>
}
  type response = unit
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UnlinkIdentity = {
  type t;
  type request = {
@as("LoginsToRemove") loginsToRemove: option<loginsList>,
@as("Logins") logins: option<loginsMap>,
@as("IdentityId") identityId: option<identityId>
}
  
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "UnlinkIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<identityPoolTagsType>,
@as("ResourceArn") resourceArn: option<aRNString>
}
  type response = unit
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetPrincipalTagAttributeMap = {
  type t;
  type request = {
@as("PrincipalTags") principalTags: principalTags,
@as("UseDefaults") useDefaults: useDefaults,
@as("IdentityProviderName") identityProviderName: option<identityProviderName>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("PrincipalTags") principalTags: principalTags,
@as("UseDefaults") useDefaults: useDefaults,
@as("IdentityProviderName") identityProviderName: identityProviderName,
@as("IdentityPoolId") identityPoolId: identityPoolId
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "SetPrincipalTagAttributeMapCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module LookupDeveloperIdentity = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationKey,
@as("MaxResults") maxResults: queryLimit,
@as("DeveloperUserIdentifier") developerUserIdentifier: developerUserIdentifier,
@as("IdentityId") identityId: identityId,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("NextToken") nextToken: paginationKey,
@as("DeveloperUserIdentifierList") developerUserIdentifierList: developerUserIdentifierList,
@as("IdentityId") identityId: identityId
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "LookupDeveloperIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<aRNString>
}
  type response = {
@as("Tags") tags: identityPoolTagsType
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPrincipalTagAttributeMap = {
  type t;
  type request = {
@as("IdentityProviderName") identityProviderName: option<identityProviderName>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("PrincipalTags") principalTags: principalTags,
@as("UseDefaults") useDefaults: useDefaults,
@as("IdentityProviderName") identityProviderName: identityProviderName,
@as("IdentityPoolId") identityPoolId: identityPoolId
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "GetPrincipalTagAttributeMapCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOpenIdTokenForDeveloperIdentity = {
  type t;
  type request = {
@as("TokenDuration") tokenDuration: tokenDuration,
@as("PrincipalTags") principalTags: principalTags,
@as("Logins") logins: option<loginsMap>,
@as("IdentityId") identityId: identityId,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("Token") token: oIDCToken,
@as("IdentityId") identityId: identityId
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "GetOpenIdTokenForDeveloperIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOpenIdToken = {
  type t;
  type request = {
@as("Logins") logins: loginsMap,
@as("IdentityId") identityId: option<identityId>
}
  type response = {
@as("Token") token: oIDCToken,
@as("IdentityId") identityId: identityId
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "GetOpenIdTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetId = {
  type t;
  type request = {
@as("Logins") logins: loginsMap,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>,
@as("AccountId") accountId: accountId
}
  type response = {
@as("IdentityId") identityId: identityId
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "GetIdCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCredentialsForIdentity = {
  type t;
  type request = {
@as("CustomRoleArn") customRoleArn: aRNString,
@as("Logins") logins: loginsMap,
@as("IdentityId") identityId: option<identityId>
}
  type response = {
@as("Credentials") credentials: credentials,
@as("IdentityId") identityId: identityId
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "GetCredentialsForIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIdentity = {
  type t;
  type request = {
@as("IdentityId") identityId: option<identityId>
}
  type response = identityDescription;
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "DescribeIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateIdentityPool = {
  type t;
  type request = {
@as("IdentityPoolTags") identityPoolTags: identityPoolTagsType,
@as("SamlProviderARNs") samlProviderARNs: sAMLProviderList,
@as("CognitoIdentityProviders") cognitoIdentityProviders: cognitoIdentityProviderList,
@as("OpenIdConnectProviderARNs") openIdConnectProviderARNs: oIDCProviderList,
@as("DeveloperProviderName") developerProviderName: developerProviderName,
@as("SupportedLoginProviders") supportedLoginProviders: identityProviders,
@as("AllowClassicFlow") allowClassicFlow: classicFlow,
@as("AllowUnauthenticatedIdentities") allowUnauthenticatedIdentities: option<identityPoolUnauthenticated>,
@as("IdentityPoolName") identityPoolName: option<identityPoolName>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("IdentityPoolTags") identityPoolTags: identityPoolTagsType,
@as("SamlProviderARNs") samlProviderARNs: sAMLProviderList,
@as("CognitoIdentityProviders") cognitoIdentityProviders: cognitoIdentityProviderList,
@as("OpenIdConnectProviderARNs") openIdConnectProviderARNs: oIDCProviderList,
@as("DeveloperProviderName") developerProviderName: developerProviderName,
@as("SupportedLoginProviders") supportedLoginProviders: identityProviders,
@as("AllowClassicFlow") allowClassicFlow: classicFlow,
@as("AllowUnauthenticatedIdentities") allowUnauthenticatedIdentities: option<identityPoolUnauthenticated>,
@as("IdentityPoolName") identityPoolName: option<identityPoolName>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "UpdateIdentityPoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIdentityPools = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationKey,
@as("MaxResults") maxResults: option<queryLimit>
}
  type response = {
@as("NextToken") nextToken: paginationKey,
@as("IdentityPools") identityPools: identityPoolsList
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "ListIdentityPoolsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIdentityPool = {
  type t;
  type request = {
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("IdentityPoolTags") identityPoolTags: identityPoolTagsType,
@as("SamlProviderARNs") samlProviderARNs: sAMLProviderList,
@as("CognitoIdentityProviders") cognitoIdentityProviders: cognitoIdentityProviderList,
@as("OpenIdConnectProviderARNs") openIdConnectProviderARNs: oIDCProviderList,
@as("DeveloperProviderName") developerProviderName: developerProviderName,
@as("SupportedLoginProviders") supportedLoginProviders: identityProviders,
@as("AllowClassicFlow") allowClassicFlow: classicFlow,
@as("AllowUnauthenticatedIdentities") allowUnauthenticatedIdentities: option<identityPoolUnauthenticated>,
@as("IdentityPoolName") identityPoolName: option<identityPoolName>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "DescribeIdentityPoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteIdentities = {
  type t;
  type request = {
@as("IdentityIdsToDelete") identityIdsToDelete: option<identityIdList>
}
  type response = {
@as("UnprocessedIdentityIds") unprocessedIdentityIds: unprocessedIdentityIdList
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "DeleteIdentitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateIdentityPool = {
  type t;
  type request = {
@as("IdentityPoolTags") identityPoolTags: identityPoolTagsType,
@as("SamlProviderARNs") samlProviderARNs: sAMLProviderList,
@as("CognitoIdentityProviders") cognitoIdentityProviders: cognitoIdentityProviderList,
@as("OpenIdConnectProviderARNs") openIdConnectProviderARNs: oIDCProviderList,
@as("DeveloperProviderName") developerProviderName: developerProviderName,
@as("SupportedLoginProviders") supportedLoginProviders: identityProviders,
@as("AllowClassicFlow") allowClassicFlow: classicFlow,
@as("AllowUnauthenticatedIdentities") allowUnauthenticatedIdentities: option<identityPoolUnauthenticated>,
@as("IdentityPoolName") identityPoolName: option<identityPoolName>
}
  type response = {
@as("IdentityPoolTags") identityPoolTags: identityPoolTagsType,
@as("SamlProviderARNs") samlProviderARNs: sAMLProviderList,
@as("CognitoIdentityProviders") cognitoIdentityProviders: cognitoIdentityProviderList,
@as("OpenIdConnectProviderARNs") openIdConnectProviderARNs: oIDCProviderList,
@as("DeveloperProviderName") developerProviderName: developerProviderName,
@as("SupportedLoginProviders") supportedLoginProviders: identityProviders,
@as("AllowClassicFlow") allowClassicFlow: classicFlow,
@as("AllowUnauthenticatedIdentities") allowUnauthenticatedIdentities: option<identityPoolUnauthenticated>,
@as("IdentityPoolName") identityPoolName: option<identityPoolName>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "CreateIdentityPoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIdentities = {
  type t;
  type request = {
@as("HideDisabled") hideDisabled: hideDisabled,
@as("NextToken") nextToken: paginationKey,
@as("MaxResults") maxResults: option<queryLimit>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("NextToken") nextToken: paginationKey,
@as("Identities") identities: identitiesList,
@as("IdentityPoolId") identityPoolId: identityPoolId
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "ListIdentitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetIdentityPoolRoles = {
  type t;
  type request = {
@as("RoleMappings") roleMappings: roleMappingMap,
@as("Roles") roles: option<rolesMap>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "SetIdentityPoolRolesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetIdentityPoolRoles = {
  type t;
  type request = {
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("RoleMappings") roleMappings: roleMappingMap,
@as("Roles") roles: rolesMap,
@as("IdentityPoolId") identityPoolId: identityPoolId
}
  @module("@aws-sdk/client-cognito-identity") @new external new_: (request) => t = "GetIdentityPoolRolesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
