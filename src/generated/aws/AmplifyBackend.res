type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __string = string
type __integerMin1Max25 = int;
type __double = float;
type __boolean = bool;
type status = [@as("STALE") #STALE | @as("LATEST") #LATEST]
type signInMethod = [@as("USERNAME") #USERNAME | @as("PHONE_NUMBER") #PHONE_NUMBER | @as("EMAIL_AND_PHONE_NUMBER") #EMAIL_AND_PHONE_NUMBER | @as("EMAIL") #EMAIL]
type service = [@as("COGNITO") #COGNITO]
type resourceConfig = unit
type resolutionStrategy = [@as("NONE") #NONE | @as("AUTOMERGE") #AUTOMERGE | @as("LAMBDA") #LAMBDA | @as("OPTIMISTIC_CONCURRENCY") #OPTIMISTIC_CONCURRENCY]
type requiredSignUpAttributesElement = [@as("ZONE_INFO") #ZONE_INFO | @as("WEBSITE") #WEBSITE | @as("UPDATED_AT") #UPDATED_AT | @as("PROFILE") #PROFILE | @as("PREFERRED_USERNAME") #PREFERRED_USERNAME | @as("PICTURE") #PICTURE | @as("PHONE_NUMBER") #PHONE_NUMBER | @as("NICKNAME") #NICKNAME | @as("NAME") #NAME | @as("MIDDLE_NAME") #MIDDLE_NAME | @as("LOCALE") #LOCALE | @as("GIVEN_NAME") #GIVEN_NAME | @as("GENDER") #GENDER | @as("FAMILY_NAME") #FAMILY_NAME | @as("EMAIL") #EMAIL | @as("BIRTHDATE") #BIRTHDATE | @as("ADDRESS") #ADDRESS]
type oAuthScopesElement = [@as("AWS_COGNITO_SIGNIN_USER_ADMIN") #AWS_COGNITO_SIGNIN_USER_ADMIN | @as("PROFILE") #PROFILE | @as("OPENID") #OPENID | @as("EMAIL") #EMAIL | @as("PHONE") #PHONE]
type oAuthGrantType = [@as("IMPLICIT") #IMPLICIT | @as("CODE") #CODE]
type mode = [@as("OPENID_CONNECT") #OPENID_CONNECT | @as("AMAZON_COGNITO_USER_POOLS") #AMAZON_COGNITO_USER_POOLS | @as("AWS_IAM") #AWS_IAM | @as("API_KEY") #API_KEY]
type mfaTypesElement = [@as("TOTP") #TOTP | @as("SMS") #SMS]
type mFAMode = [@as("OPTIONAL") #OPTIONAL | @as("OFF") #OFF | @as("ON") #ON]
type deliveryMethod = [@as("SMS") #SMS | @as("EMAIL") #EMAIL]
type authResources = [@as("IDENTITY_POOL_AND_USER_POOL") #IDENTITY_POOL_AND_USER_POOL | @as("USER_POOL_ONLY") #USER_POOL_ONLY]
type additionalConstraintsElement = [@as("REQUIRE_UPPERCASE") #REQUIRE_UPPERCASE | @as("REQUIRE_SYMBOL") #REQUIRE_SYMBOL | @as("REQUIRE_LOWERCASE") #REQUIRE_LOWERCASE | @as("REQUIRE_DIGIT") #REQUIRE_DIGIT]
type updateBackendAuthIdentityPoolConfig = {
@as("UnauthenticatedLogin") unauthenticatedLogin: __boolean
}
type smsSettings = {
@as("SmsMessage") smsMessage: __string
}
type loginAuthConfigReqObj = {
@as("AwsUserPoolsWebClientId") awsUserPoolsWebClientId: __string,
@as("AwsUserPoolsId") awsUserPoolsId: __string,
@as("AwsCognitoRegion") awsCognitoRegion: __string,
@as("AwsCognitoIdentityPoolId") awsCognitoIdentityPoolId: __string
}
type listOf__string = array<__string>
type listOfRequiredSignUpAttributesElement = array<requiredSignUpAttributesElement>
type listOfOAuthScopesElement = array<oAuthScopesElement>
type listOfMfaTypesElement = array<mfaTypesElement>
type listOfAdditionalConstraintsElement = array<additionalConstraintsElement>
type emailSettings = {
@as("EmailSubject") emailSubject: __string,
@as("EmailMessage") emailMessage: __string
}
type createBackendAuthIdentityPoolConfig = {
@as("UnauthenticatedLogin") unauthenticatedLogin: option<__boolean>,
@as("IdentityPoolName") identityPoolName: option<__string>
}
type backendJobRespObj = {
@as("UpdateTime") updateTime: __string,
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("CreateTime") createTime: __string,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
type backendAuthSocialProviderConfig = {
@as("ClientSecret") clientSecret: __string,
@as("ClientId") clientId: __string
}
type backendAPIConflictResolution = {
@as("ResolutionStrategy") resolutionStrategy: resolutionStrategy
}
type backendAPIAppSyncAuthSettings = {
@as("OpenIDProviderName") openIDProviderName: __string,
@as("OpenIDIssueURL") openIDIssueURL: __string,
@as("OpenIDIatTTL") openIDIatTTL: __string,
@as("OpenIDClientId") openIDClientId: __string,
@as("OpenIDAuthTTL") openIDAuthTTL: __string,
@as("ExpirationTime") expirationTime: __double,
@as("Description") description: __string,
@as("CognitoUserPoolId") cognitoUserPoolId: __string
}
type updateBackendAuthPasswordPolicyConfig = {
@as("MinimumLength") minimumLength: __double,
@as("AdditionalConstraints") additionalConstraints: listOfAdditionalConstraintsElement
}
type updateBackendAuthForgotPasswordConfig = {
@as("SmsSettings") smsSettings: smsSettings,
@as("EmailSettings") emailSettings: emailSettings,
@as("DeliveryMethod") deliveryMethod: deliveryMethod
}
type socialProviderSettings = {
@as("LoginWithAmazon") loginWithAmazon: backendAuthSocialProviderConfig,
@as("Google") google: backendAuthSocialProviderConfig,
@as("Facebook") facebook: backendAuthSocialProviderConfig
}
type settings = {
@as("SmsMessage") smsMessage: __string,
@as("MfaTypes") mfaTypes: listOfMfaTypesElement
}
type listOfBackendJobRespObj = array<backendJobRespObj>
type createBackendAuthPasswordPolicyConfig = {
@as("MinimumLength") minimumLength: option<__double>,
@as("AdditionalConstraints") additionalConstraints: listOfAdditionalConstraintsElement
}
type createBackendAuthForgotPasswordConfig = {
@as("SmsSettings") smsSettings: smsSettings,
@as("EmailSettings") emailSettings: emailSettings,
@as("DeliveryMethod") deliveryMethod: option<deliveryMethod>
}
type backendAPIAuthType = {
@as("Settings") settings: backendAPIAppSyncAuthSettings,
@as("Mode") mode: mode
}
type updateBackendAuthOAuthConfig = {
@as("SocialProviderSettings") socialProviderSettings: socialProviderSettings,
@as("RedirectSignOutURIs") redirectSignOutURIs: listOf__string,
@as("RedirectSignInURIs") redirectSignInURIs: listOf__string,
@as("OAuthScopes") oAuthScopes: listOfOAuthScopesElement,
@as("OAuthGrantType") oAuthGrantType: oAuthGrantType,
@as("DomainPrefix") domainPrefix: __string
}
type updateBackendAuthMFAConfig = {
@as("Settings") settings: settings,
@as("MFAMode") mFAMode: mFAMode
}
type listOfBackendAPIAuthType = array<backendAPIAuthType>
type createBackendAuthOAuthConfig = {
@as("SocialProviderSettings") socialProviderSettings: socialProviderSettings,
@as("RedirectSignOutURIs") redirectSignOutURIs: option<listOf__string>,
@as("RedirectSignInURIs") redirectSignInURIs: option<listOf__string>,
@as("OAuthScopes") oAuthScopes: option<listOfOAuthScopesElement>,
@as("OAuthGrantType") oAuthGrantType: option<oAuthGrantType>,
@as("DomainPrefix") domainPrefix: __string
}
type createBackendAuthMFAConfig = {
@as("Settings") settings: settings,
@as("MFAMode") mFAMode: option<mFAMode>
}
type updateBackendAuthUserPoolConfig = {
@as("PasswordPolicy") passwordPolicy: updateBackendAuthPasswordPolicyConfig,
@as("OAuth") oAuth: updateBackendAuthOAuthConfig,
@as("Mfa") mfa: updateBackendAuthMFAConfig,
@as("ForgotPassword") forgotPassword: updateBackendAuthForgotPasswordConfig
}
type createBackendAuthUserPoolConfig = {
@as("UserPoolName") userPoolName: option<__string>,
@as("SignInMethod") signInMethod: option<signInMethod>,
@as("RequiredSignUpAttributes") requiredSignUpAttributes: option<listOfRequiredSignUpAttributesElement>,
@as("PasswordPolicy") passwordPolicy: createBackendAuthPasswordPolicyConfig,
@as("OAuth") oAuth: createBackendAuthOAuthConfig,
@as("Mfa") mfa: createBackendAuthMFAConfig,
@as("ForgotPassword") forgotPassword: createBackendAuthForgotPasswordConfig
}
type backendAPIResourceConfig = {
@as("TransformSchema") transformSchema: __string,
@as("Service") service: __string,
@as("DefaultAuthType") defaultAuthType: backendAPIAuthType,
@as("ConflictResolution") conflictResolution: backendAPIConflictResolution,
@as("ApiName") apiName: __string,
@as("AdditionalAuthTypes") additionalAuthTypes: listOfBackendAPIAuthType
}
type updateBackendAuthResourceConfig = {
@as("UserPoolConfigs") userPoolConfigs: option<updateBackendAuthUserPoolConfig>,
@as("Service") service: option<service>,
@as("IdentityPoolConfigs") identityPoolConfigs: updateBackendAuthIdentityPoolConfig,
@as("AuthResources") authResources: option<authResources>
}
type createBackendAuthResourceConfig = {
@as("UserPoolConfigs") userPoolConfigs: option<createBackendAuthUserPoolConfig>,
@as("Service") service: option<service>,
@as("IdentityPoolConfigs") identityPoolConfigs: createBackendAuthIdentityPoolConfig,
@as("AuthResources") authResources: option<authResources>
}
type clientType;
@module("@aws-sdk/client-amplifybackend") @new external createClient: unit => clientType = "AmplifyBackendClient";
module UpdateBackendJob = {
  type t;
  type request = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("UpdateTime") updateTime: __string,
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("CreateTime") createTime: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "UpdateBackendJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveBackendConfig = {
  type t;
  type request = {
@as("AppId") appId: option<__string>
}
  type response = {
@as("Error") error: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "RemoveBackendConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveAllBackends = {
  type t;
  type request = {
@as("CleanAmplifyApp") cleanAmplifyApp: __boolean,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "RemoveAllBackendsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetToken = {
  type t;
  type request = {
@as("SessionId") sessionId: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Ttl") ttl: __string,
@as("SessionId") sessionId: __string,
@as("ChallengeCode") challengeCode: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GetTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBackendJob = {
  type t;
  type request = {
@as("JobId") jobId: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("UpdateTime") updateTime: __string,
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("CreateTime") createTime: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GetBackendJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBackendAPIModels = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: status,
@as("Models") models: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GetBackendAPIModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateBackendAPIModels = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GenerateBackendAPIModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteToken = {
  type t;
  type request = {
@as("SessionId") sessionId: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("IsSuccess") isSuccess: __boolean
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "DeleteTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBackendAuth = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "DeleteBackendAuthCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBackend = {
  type t;
  type request = {
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "DeleteBackendCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateToken = {
  type t;
  type request = {
@as("AppId") appId: option<__string>
}
  type response = {
@as("Ttl") ttl: __string,
@as("SessionId") sessionId: __string,
@as("ChallengeCode") challengeCode: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "CreateTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBackendConfig = {
  type t;
  type request = {
@as("BackendManagerAppId") backendManagerAppId: __string,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: __string,
@as("JobId") jobId: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "CreateBackendConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBackend = {
  type t;
  type request = {
@as("ResourceName") resourceName: __string,
@as("ResourceConfig") resourceConfig: resourceConfig,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppName") appName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "CreateBackendCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CloneBackend = {
  type t;
  type request = {
@as("TargetEnvironmentName") targetEnvironmentName: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "CloneBackendCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBackendConfig = {
  type t;
  type request = {
@as("LoginAuthConfig") loginAuthConfig: loginAuthConfigReqObj,
@as("AppId") appId: option<__string>
}
  type response = {
@as("LoginAuthConfig") loginAuthConfig: loginAuthConfigReqObj,
@as("Error") error: __string,
@as("BackendManagerAppId") backendManagerAppId: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "UpdateBackendConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBackend = {
  type t;
  type request = {
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("BackendEnvironmentList") backendEnvironmentList: listOf__string,
@as("AppName") appName: __string,
@as("AppId") appId: __string,
@as("AmplifyMetaConfig") amplifyMetaConfig: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GetBackendCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBackendJobs = {
  type t;
  type request = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __integerMin1Max25,
@as("JobId") jobId: __string,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Jobs") jobs: listOfBackendJobRespObj
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "ListBackendJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBackendAPI = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<__string>,
@as("ResourceConfig") resourceConfig: backendAPIResourceConfig,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "UpdateBackendAPICommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBackendAPI = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<__string>,
@as("ResourceConfig") resourceConfig: backendAPIResourceConfig,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("ResourceName") resourceName: __string,
@as("ResourceConfig") resourceConfig: backendAPIResourceConfig,
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GetBackendAPICommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBackendAPI = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<__string>,
@as("ResourceConfig") resourceConfig: backendAPIResourceConfig,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "DeleteBackendAPICommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBackendAPI = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<__string>,
@as("ResourceConfig") resourceConfig: option<backendAPIResourceConfig>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "CreateBackendAPICommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBackendAuth = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<__string>,
@as("ResourceConfig") resourceConfig: option<updateBackendAuthResourceConfig>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "UpdateBackendAuthCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBackendAuth = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("ResourceName") resourceName: __string,
@as("ResourceConfig") resourceConfig: createBackendAuthResourceConfig,
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GetBackendAuthCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBackendAuth = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<__string>,
@as("ResourceConfig") resourceConfig: option<createBackendAuthResourceConfig>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  type response = {
@as("Status") status: __string,
@as("Operation") operation: __string,
@as("JobId") jobId: __string,
@as("Error") error: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "CreateBackendAuthCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
