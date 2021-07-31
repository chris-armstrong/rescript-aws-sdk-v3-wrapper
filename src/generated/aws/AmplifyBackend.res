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
type __string = string
type __integerMin1Max25 = int
type __double = float
type __boolean = bool
type status = [@as("STALE") #STALE | @as("LATEST") #LATEST]
type signInMethod = [@as("USERNAME") #USERNAME | @as("PHONE_NUMBER") #PHONENUMBER | @as("EMAIL_AND_PHONE_NUMBER") #EMAILANDPHONENUMBER | @as("EMAIL") #EMAIL]
type service = [@as("COGNITO") #COGNITO]
type resourceConfig = unit
type resolutionStrategy = [@as("NONE") #NONE | @as("AUTOMERGE") #AUTOMERGE | @as("LAMBDA") #LAMBDA | @as("OPTIMISTIC_CONCURRENCY") #OPTIMISTICCONCURRENCY]
type requiredSignUpAttributesElement = [@as("ZONE_INFO") #ZONEINFO | @as("WEBSITE") #WEBSITE | @as("UPDATED_AT") #UPDATEDAT | @as("PROFILE") #PROFILE | @as("PREFERRED_USERNAME") #PREFERREDUSERNAME | @as("PICTURE") #PICTURE | @as("PHONE_NUMBER") #PHONENUMBER | @as("NICKNAME") #NICKNAME | @as("NAME") #NAME | @as("MIDDLE_NAME") #MIDDLENAME | @as("LOCALE") #LOCALE | @as("GIVEN_NAME") #GIVENNAME | @as("GENDER") #GENDER | @as("FAMILY_NAME") #FAMILYNAME | @as("EMAIL") #EMAIL | @as("BIRTHDATE") #BIRTHDATE | @as("ADDRESS") #ADDRESS]
type oauthScopesElement = [@as("AWS_COGNITO_SIGNIN_USER_ADMIN") #AWSCOGNITOSIGNINUSERADMIN | @as("PROFILE") #PROFILE | @as("OPENID") #OPENID | @as("EMAIL") #EMAIL | @as("PHONE") #PHONE]
type oauthGrantType = [@as("IMPLICIT") #IMPLICIT | @as("CODE") #CODE]
type mode = [@as("OPENID_CONNECT") #OPENIDCONNECT | @as("AMAZON_COGNITO_USER_POOLS") #AMAZONCOGNITOUSERPOOLS | @as("AWS_IAM") #AWSIAM | @as("API_KEY") #APIKEY]
type mfaTypesElement = [@as("TOTP") #TOTP | @as("SMS") #SMS]
type mfamode = [@as("OPTIONAL") #OPTIONAL | @as("OFF") #OFF | @as("ON") #ON]
type deliveryMethod = [@as("SMS") #SMS | @as("EMAIL") #EMAIL]
type authResources = [@as("IDENTITY_POOL_AND_USER_POOL") #IDENTITYPOOLANDUSERPOOL | @as("USER_POOL_ONLY") #USERPOOLONLY]
type additionalConstraintsElement = [@as("REQUIRE_UPPERCASE") #REQUIREUPPERCASE | @as("REQUIRE_SYMBOL") #REQUIRESYMBOL | @as("REQUIRE_LOWERCASE") #REQUIRELOWERCASE | @as("REQUIRE_DIGIT") #REQUIREDIGIT]
type updateBackendAuthIdentityPoolConfig = {
@as("UnauthenticatedLogin") unauthenticatedLogin: option<__boolean>
}
type smsSettings = {
@as("SmsMessage") smsMessage: option<__string>
}
type loginAuthConfigReqObj = {
@as("AwsUserPoolsWebClientId") awsUserPoolsWebClientId: option<__string>,
@as("AwsUserPoolsId") awsUserPoolsId: option<__string>,
@as("AwsCognitoRegion") awsCognitoRegion: option<__string>,
@as("AwsCognitoIdentityPoolId") awsCognitoIdentityPoolId: option<__string>
}
type listOf__string = array<__string>
type listOfRequiredSignUpAttributesElement = array<requiredSignUpAttributesElement>
type listOfOAuthScopesElement = array<oauthScopesElement>
type listOfMfaTypesElement = array<mfaTypesElement>
type listOfAdditionalConstraintsElement = array<additionalConstraintsElement>
type emailSettings = {
@as("EmailSubject") emailSubject: option<__string>,
@as("EmailMessage") emailMessage: option<__string>
}
type createBackendAuthIdentityPoolConfig = {
@as("UnauthenticatedLogin") unauthenticatedLogin: __boolean,
@as("IdentityPoolName") identityPoolName: __string
}
type backendJobRespObj = {
@as("UpdateTime") updateTime: option<__string>,
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("CreateTime") createTime: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
type backendAuthSocialProviderConfig = {
@as("ClientSecret") clientSecret: option<__string>,
@as("ClientId") clientId: option<__string>
}
type backendAPIConflictResolution = {
@as("ResolutionStrategy") resolutionStrategy: option<resolutionStrategy>
}
type backendAPIAppSyncAuthSettings = {
@as("OpenIDProviderName") openIDProviderName: option<__string>,
@as("OpenIDIssueURL") openIDIssueURL: option<__string>,
@as("OpenIDIatTTL") openIDIatTTL: option<__string>,
@as("OpenIDClientId") openIDClientId: option<__string>,
@as("OpenIDAuthTTL") openIDAuthTTL: option<__string>,
@as("ExpirationTime") expirationTime: option<__double>,
@as("Description") description: option<__string>,
@as("CognitoUserPoolId") cognitoUserPoolId: option<__string>
}
type updateBackendAuthPasswordPolicyConfig = {
@as("MinimumLength") minimumLength: option<__double>,
@as("AdditionalConstraints") additionalConstraints: option<listOfAdditionalConstraintsElement>
}
type updateBackendAuthForgotPasswordConfig = {
@as("SmsSettings") smsSettings: option<smsSettings>,
@as("EmailSettings") emailSettings: option<emailSettings>,
@as("DeliveryMethod") deliveryMethod: option<deliveryMethod>
}
type socialProviderSettings = {
@as("LoginWithAmazon") loginWithAmazon: option<backendAuthSocialProviderConfig>,
@as("Google") google: option<backendAuthSocialProviderConfig>,
@as("Facebook") facebook: option<backendAuthSocialProviderConfig>
}
type settings = {
@as("SmsMessage") smsMessage: option<__string>,
@as("MfaTypes") mfaTypes: option<listOfMfaTypesElement>
}
type listOfBackendJobRespObj = array<backendJobRespObj>
type createBackendAuthPasswordPolicyConfig = {
@as("MinimumLength") minimumLength: __double,
@as("AdditionalConstraints") additionalConstraints: option<listOfAdditionalConstraintsElement>
}
type createBackendAuthForgotPasswordConfig = {
@as("SmsSettings") smsSettings: option<smsSettings>,
@as("EmailSettings") emailSettings: option<emailSettings>,
@as("DeliveryMethod") deliveryMethod: deliveryMethod
}
type backendAPIAuthType = {
@as("Settings") settings: option<backendAPIAppSyncAuthSettings>,
@as("Mode") mode: option<mode>
}
type updateBackendAuthOAuthConfig = {
@as("SocialProviderSettings") socialProviderSettings: option<socialProviderSettings>,
@as("RedirectSignOutURIs") redirectSignOutURIs: option<listOf__string>,
@as("RedirectSignInURIs") redirectSignInURIs: option<listOf__string>,
@as("OAuthScopes") oauthScopes: option<listOfOAuthScopesElement>,
@as("OAuthGrantType") oauthGrantType: option<oauthGrantType>,
@as("DomainPrefix") domainPrefix: option<__string>
}
type updateBackendAuthMFAConfig = {
@as("Settings") settings: option<settings>,
@as("MFAMode") mfamode: option<mfamode>
}
type listOfBackendAPIAuthType = array<backendAPIAuthType>
type createBackendAuthOAuthConfig = {
@as("SocialProviderSettings") socialProviderSettings: option<socialProviderSettings>,
@as("RedirectSignOutURIs") redirectSignOutURIs: listOf__string,
@as("RedirectSignInURIs") redirectSignInURIs: listOf__string,
@as("OAuthScopes") oauthScopes: listOfOAuthScopesElement,
@as("OAuthGrantType") oauthGrantType: oauthGrantType,
@as("DomainPrefix") domainPrefix: option<__string>
}
type createBackendAuthMFAConfig = {
@as("Settings") settings: option<settings>,
@as("MFAMode") mfamode: mfamode
}
type updateBackendAuthUserPoolConfig = {
@as("PasswordPolicy") passwordPolicy: option<updateBackendAuthPasswordPolicyConfig>,
@as("OAuth") oauth: option<updateBackendAuthOAuthConfig>,
@as("Mfa") mfa: option<updateBackendAuthMFAConfig>,
@as("ForgotPassword") forgotPassword: option<updateBackendAuthForgotPasswordConfig>
}
type createBackendAuthUserPoolConfig = {
@as("UserPoolName") userPoolName: __string,
@as("SignInMethod") signInMethod: signInMethod,
@as("RequiredSignUpAttributes") requiredSignUpAttributes: listOfRequiredSignUpAttributesElement,
@as("PasswordPolicy") passwordPolicy: option<createBackendAuthPasswordPolicyConfig>,
@as("OAuth") oauth: option<createBackendAuthOAuthConfig>,
@as("Mfa") mfa: option<createBackendAuthMFAConfig>,
@as("ForgotPassword") forgotPassword: option<createBackendAuthForgotPasswordConfig>
}
type backendAPIResourceConfig = {
@as("TransformSchema") transformSchema: option<__string>,
@as("Service") service: option<__string>,
@as("DefaultAuthType") defaultAuthType: option<backendAPIAuthType>,
@as("ConflictResolution") conflictResolution: option<backendAPIConflictResolution>,
@as("ApiName") apiName: option<__string>,
@as("AdditionalAuthTypes") additionalAuthTypes: option<listOfBackendAPIAuthType>
}
type updateBackendAuthResourceConfig = {
@as("UserPoolConfigs") userPoolConfigs: updateBackendAuthUserPoolConfig,
@as("Service") service: service,
@as("IdentityPoolConfigs") identityPoolConfigs: option<updateBackendAuthIdentityPoolConfig>,
@as("AuthResources") authResources: authResources
}
type createBackendAuthResourceConfig = {
@as("UserPoolConfigs") userPoolConfigs: createBackendAuthUserPoolConfig,
@as("Service") service: service,
@as("IdentityPoolConfigs") identityPoolConfigs: option<createBackendAuthIdentityPoolConfig>,
@as("AuthResources") authResources: authResources
}
type awsServiceClient;
@module("@aws-sdk/client-amplifybackend") @new external createClient: unit => awsServiceClient = "AmplifyBackendClient";
module UpdateBackendJob = {
  type t;
  type request = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("UpdateTime") updateTime: option<__string>,
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("CreateTime") createTime: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "UpdateBackendJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveBackendConfig = {
  type t;
  type request = {
@as("AppId") appId: __string
}
  type response = {
@as("Error") error: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "RemoveBackendConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveAllBackends = {
  type t;
  type request = {
@as("CleanAmplifyApp") cleanAmplifyApp: option<__boolean>,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "RemoveAllBackendsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetToken = {
  type t;
  type request = {
@as("SessionId") sessionId: __string,
@as("AppId") appId: __string
}
  type response = {
@as("Ttl") ttl: option<__string>,
@as("SessionId") sessionId: option<__string>,
@as("ChallengeCode") challengeCode: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GetTokenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBackendJob = {
  type t;
  type request = {
@as("JobId") jobId: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("UpdateTime") updateTime: option<__string>,
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("CreateTime") createTime: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GetBackendJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBackendAPIModels = {
  type t;
  type request = {
@as("ResourceName") resourceName: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<status>,
@as("Models") models: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GetBackendAPIModelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GenerateBackendAPIModels = {
  type t;
  type request = {
@as("ResourceName") resourceName: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GenerateBackendAPIModelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteToken = {
  type t;
  type request = {
@as("SessionId") sessionId: __string,
@as("AppId") appId: __string
}
  type response = {
@as("IsSuccess") isSuccess: option<__boolean>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "DeleteTokenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBackendAuth = {
  type t;
  type request = {
@as("ResourceName") resourceName: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "DeleteBackendAuthCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBackend = {
  type t;
  type request = {
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "DeleteBackendCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateToken = {
  type t;
  type request = {
@as("AppId") appId: __string
}
  type response = {
@as("Ttl") ttl: option<__string>,
@as("SessionId") sessionId: option<__string>,
@as("ChallengeCode") challengeCode: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "CreateTokenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBackendConfig = {
  type t;
  type request = {
@as("BackendManagerAppId") backendManagerAppId: option<__string>,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<__string>,
@as("JobId") jobId: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "CreateBackendConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBackend = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<__string>,
@as("ResourceConfig") resourceConfig: option<resourceConfig>,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppName") appName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "CreateBackendCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CloneBackend = {
  type t;
  type request = {
@as("TargetEnvironmentName") targetEnvironmentName: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "CloneBackendCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBackendConfig = {
  type t;
  type request = {
@as("LoginAuthConfig") loginAuthConfig: option<loginAuthConfigReqObj>,
@as("AppId") appId: __string
}
  type response = {
@as("LoginAuthConfig") loginAuthConfig: option<loginAuthConfigReqObj>,
@as("Error") error: option<__string>,
@as("BackendManagerAppId") backendManagerAppId: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "UpdateBackendConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBackend = {
  type t;
  type request = {
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: __string
}
  type response = {
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("BackendEnvironmentList") backendEnvironmentList: option<listOf__string>,
@as("AppName") appName: option<__string>,
@as("AppId") appId: option<__string>,
@as("AmplifyMetaConfig") amplifyMetaConfig: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GetBackendCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBackendJobs = {
  type t;
  type request = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<__integerMin1Max25>,
@as("JobId") jobId: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("Jobs") jobs: option<listOfBackendJobRespObj>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "ListBackendJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBackendAPI = {
  type t;
  type request = {
@as("ResourceName") resourceName: __string,
@as("ResourceConfig") resourceConfig: option<backendAPIResourceConfig>,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "UpdateBackendAPICommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBackendAPI = {
  type t;
  type request = {
@as("ResourceName") resourceName: __string,
@as("ResourceConfig") resourceConfig: option<backendAPIResourceConfig>,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("ResourceName") resourceName: option<__string>,
@as("ResourceConfig") resourceConfig: option<backendAPIResourceConfig>,
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GetBackendAPICommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBackendAPI = {
  type t;
  type request = {
@as("ResourceName") resourceName: __string,
@as("ResourceConfig") resourceConfig: option<backendAPIResourceConfig>,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "DeleteBackendAPICommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBackendAPI = {
  type t;
  type request = {
@as("ResourceName") resourceName: __string,
@as("ResourceConfig") resourceConfig: backendAPIResourceConfig,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "CreateBackendAPICommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBackendAuth = {
  type t;
  type request = {
@as("ResourceName") resourceName: __string,
@as("ResourceConfig") resourceConfig: updateBackendAuthResourceConfig,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "UpdateBackendAuthCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBackendAuth = {
  type t;
  type request = {
@as("ResourceName") resourceName: __string,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("ResourceName") resourceName: option<__string>,
@as("ResourceConfig") resourceConfig: option<createBackendAuthResourceConfig>,
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "GetBackendAuthCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBackendAuth = {
  type t;
  type request = {
@as("ResourceName") resourceName: __string,
@as("ResourceConfig") resourceConfig: createBackendAuthResourceConfig,
@as("BackendEnvironmentName") backendEnvironmentName: __string,
@as("AppId") appId: __string
}
  type response = {
@as("Status") status: option<__string>,
@as("Operation") operation: option<__string>,
@as("JobId") jobId: option<__string>,
@as("Error") error: option<__string>,
@as("BackendEnvironmentName") backendEnvironmentName: option<__string>,
@as("AppId") appId: option<__string>
}
  @module("@aws-sdk/client-amplifybackend") @new external new_: (request) => t = "CreateBackendAuthCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
