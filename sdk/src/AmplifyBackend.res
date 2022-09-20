type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-amplifybackend") @new
external createClient: unit => awsServiceClient = "AmplifyBackendClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __string = string
type __integerMin1Max25 = int
type __double = float
type __boolean = bool
type unAuthenticatedElement = [
  | @as("DELETE") #DELETE
  | @as("CREATE_AND_UPDATE") #CREATE_AND_UPDATE
  | @as("READ") #READ
]
type status = [@as("STALE") #STALE | @as("LATEST") #LATEST]
type signInMethod = [
  | @as("USERNAME") #USERNAME
  | @as("PHONE_NUMBER") #PHONE_NUMBER
  | @as("EMAIL_AND_PHONE_NUMBER") #EMAIL_AND_PHONE_NUMBER
  | @as("EMAIL") #EMAIL
]
type serviceName = [@as("S3") #S3]
type service = [@as("COGNITO") #COGNITO]
@ocaml.doc("<p>Defines the resource configuration for the data model in your Amplify project.</p>")
type resourceConfig = {.}
type resolutionStrategy = [
  | @as("NONE") #NONE
  | @as("AUTOMERGE") #AUTOMERGE
  | @as("LAMBDA") #LAMBDA
  | @as("OPTIMISTIC_CONCURRENCY") #OPTIMISTIC_CONCURRENCY
]
type requiredSignUpAttributesElement = [
  | @as("ZONE_INFO") #ZONE_INFO
  | @as("WEBSITE") #WEBSITE
  | @as("UPDATED_AT") #UPDATED_AT
  | @as("PROFILE") #PROFILE
  | @as("PREFERRED_USERNAME") #PREFERRED_USERNAME
  | @as("PICTURE") #PICTURE
  | @as("PHONE_NUMBER") #PHONE_NUMBER
  | @as("NICKNAME") #NICKNAME
  | @as("NAME") #NAME
  | @as("MIDDLE_NAME") #MIDDLE_NAME
  | @as("LOCALE") #LOCALE
  | @as("GIVEN_NAME") #GIVEN_NAME
  | @as("GENDER") #GENDER
  | @as("FAMILY_NAME") #FAMILY_NAME
  | @as("EMAIL") #EMAIL
  | @as("BIRTHDATE") #BIRTHDATE
  | @as("ADDRESS") #ADDRESS
]
type oauthScopesElement = [
  | @as("AWS_COGNITO_SIGNIN_USER_ADMIN") #AWS_COGNITO_SIGNIN_USER_ADMIN
  | @as("PROFILE") #PROFILE
  | @as("OPENID") #OPENID
  | @as("EMAIL") #EMAIL
  | @as("PHONE") #PHONE
]
type oauthGrantType = [@as("IMPLICIT") #IMPLICIT | @as("CODE") #CODE]
type mode = [
  | @as("OPENID_CONNECT") #OPENID_CONNECT
  | @as("AMAZON_COGNITO_USER_POOLS") #AMAZON_COGNITO_USER_POOLS
  | @as("AWS_IAM") #AWS_IAM
  | @as("API_KEY") #API_KEY
]
type mfaTypesElement = [@as("TOTP") #TOTP | @as("SMS") #SMS]
type mfamode = [@as("OPTIONAL") #OPTIONAL | @as("OFF") #OFF | @as("ON") #ON]
@ocaml.doc("<p>The type of verification message to send.</p>")
type deliveryMethod = [@as("SMS") #SMS | @as("EMAIL") #EMAIL]
type authenticatedElement = [
  | @as("DELETE") #DELETE
  | @as("CREATE_AND_UPDATE") #CREATE_AND_UPDATE
  | @as("READ") #READ
]
type authResources = [
  | @as("IDENTITY_POOL_AND_USER_POOL") #IDENTITY_POOL_AND_USER_POOL
  | @as("USER_POOL_ONLY") #USER_POOL_ONLY
]
type additionalConstraintsElement = [
  | @as("REQUIRE_UPPERCASE") #REQUIRE_UPPERCASE
  | @as("REQUIRE_SYMBOL") #REQUIRE_SYMBOL
  | @as("REQUIRE_LOWERCASE") #REQUIRE_LOWERCASE
  | @as("REQUIRE_DIGIT") #REQUIRE_DIGIT
]
@ocaml.doc(
  "<p>Describes the authorization configuration for the Amazon Cognito identity pool, provisioned as a part of your auth resource in the Amplify project.</p>"
)
type updateBackendAuthIdentityPoolConfig = {
  @ocaml.doc(
    "<p>A boolean value that can be set to allow or disallow guest-level authorization into your Amplify app.</p>"
  )
  @as("UnauthenticatedLogin")
  unauthenticatedLogin: option<__boolean>,
}
@ocaml.doc("<p>SMS settings for authentication.</p>")
type smsSettings = {
  @ocaml.doc("<p>The contents of the SMS message.</p>") @as("SmsMessage")
  smsMessage: option<__string>,
}
@ocaml.doc("<p>Describes the metadata of the S3 bucket.</p>")
type s3BucketInfo = {
  @ocaml.doc("<p>The name of the S3 bucket.</p>") @as("Name") name: option<__string>,
  @ocaml.doc("<p>The creation date of the S3 bucket.</p>") @as("CreationDate")
  creationDate: option<__string>,
}
@ocaml.doc("<p>The request object for this operation.</p>")
type loginAuthConfigReqObj = {
  @ocaml.doc("<p>The web client ID for the Amazon Cognito user pools.</p>")
  @as("AwsUserPoolsWebClientId")
  awsUserPoolsWebClientId: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Cognito user pool ID used for Amplify Admin UI login authentication.</p>"
  )
  @as("AwsUserPoolsId")
  awsUserPoolsId: option<__string>,
  @ocaml.doc("<p>The AWS Region for the Amplify Admin UI login.</p>") @as("AwsCognitoRegion")
  awsCognitoRegion: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Cognito identity pool ID used for the Amplify Admin UI login authorization.</p>"
  )
  @as("AwsCognitoIdentityPoolId")
  awsCognitoIdentityPoolId: option<__string>,
}
type listOf__string = array<__string>
type listOfUnAuthenticatedElement = array<unAuthenticatedElement>
type listOfRequiredSignUpAttributesElement = array<requiredSignUpAttributesElement>
type listOfOAuthScopesElement = array<oauthScopesElement>
type listOfMfaTypesElement = array<mfaTypesElement>
type listOfAuthenticatedElement = array<authenticatedElement>
type listOfAdditionalConstraintsElement = array<additionalConstraintsElement>
@ocaml.doc("<p>The configuration for the email sent when an app user forgets their password.</p>")
type emailSettings = {
  @ocaml.doc("<p>The contents of the subject line of the email message.</p>") @as("EmailSubject")
  emailSubject: option<__string>,
  @ocaml.doc("<p>The contents of the email message.</p>") @as("EmailMessage")
  emailMessage: option<__string>,
}
@ocaml.doc(
  "<p>Describes authorization configurations for the auth resources, configured as a part of your Amplify project.</p>"
)
type createBackendAuthIdentityPoolConfig = {
  @ocaml.doc(
    "<p>Set to true or false based on whether you want to enable guest authorization to your Amplify app.</p>"
  )
  @as("UnauthenticatedLogin")
  unauthenticatedLogin: __boolean,
  @ocaml.doc("<p>Name of the Amazon Cognito identity pool used for authorization.</p>")
  @as("IdentityPoolName")
  identityPoolName: __string,
}
@ocaml.doc("<p>The response object for this operation.</p>")
type backendJobRespObj = {
  @ocaml.doc("<p>The time when the job was last updated.</p>") @as("UpdateTime")
  updateTime: option<__string>,
  @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
  @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
  @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
  @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
  error: option<__string>,
  @ocaml.doc("<p>The time when the job was created.</p>") @as("CreateTime")
  createTime: option<__string>,
  @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
  backendEnvironmentName: __string,
  @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
}
@ocaml.doc(
  "<p>Describes third-party social federation configurations for allowing your app users to sign in using OAuth.</p>"
)
type backendAuthSocialProviderConfig = {
  @ocaml.doc(
    "<p>Describes the client_secret, which can be obtained from third-party social federation providers.</p>"
  )
  @as("ClientSecret")
  clientSecret: option<__string>,
  @ocaml.doc(
    "<p>Describes the client_id, which can be obtained from the third-party social federation provider.</p>"
  )
  @as("ClientId")
  clientId: option<__string>,
}
@ocaml.doc(
  "<p>Describes Apple social federation configurations for allowing your app users to sign in using OAuth.</p>"
)
type backendAuthAppleProviderConfig = {
  @ocaml.doc("<p>Describes the team_id that comes from Apple.</p>") @as("TeamId")
  teamId: option<__string>,
  @ocaml.doc("<p>Describes the private_key that comes from Apple.</p>") @as("PrivateKey")
  privateKey: option<__string>,
  @ocaml.doc("<p>Describes the key_id that comes from Apple.</p>") @as("KeyId")
  keyId: option<__string>,
  @ocaml.doc("<p>Describes the client_id (also called Services ID) that comes from Apple.</p>")
  @as("ClientId")
  clientId: option<__string>,
}
@ocaml.doc(
  "<p>Describes the conflict resolution configuration for your data model configured in your Amplify project.</p>"
)
type backendAPIConflictResolution = {
  @ocaml.doc("<p>The strategy for conflict resolution.</p>") @as("ResolutionStrategy")
  resolutionStrategy: option<resolutionStrategy>,
}
@ocaml.doc(
  "<p>The authentication settings for accessing provisioned data models in your Amplify project.</p>"
)
type backendAPIAppSyncAuthSettings = {
  @ocaml.doc(
    "<p>The OpenID provider name, if OpenID was used as an authentication mechanism to access your data models.</p>"
  )
  @as("OpenIDProviderName")
  openIDProviderName: option<__string>,
  @ocaml.doc(
    "<p>The openID issuer URL, if openID was used as an authentication setting to access your data models.</p>"
  )
  @as("OpenIDIssueURL")
  openIDIssueURL: option<__string>,
  @ocaml.doc("<p>The expiry time for the OpenID authentication mechanism.</p>") @as("OpenIDIatTTL")
  openIDIatTTL: option<__string>,
  @ocaml.doc(
    "<p>The clientID for openID, if openID was used as an authentication setting to access your data models.</p>"
  )
  @as("OpenIDClientId")
  openIDClientId: option<__string>,
  @ocaml.doc("<p>The expiry time for the OpenID authentication mechanism.</p>") @as("OpenIDAuthTTL")
  openIDAuthTTL: option<__string>,
  @ocaml.doc(
    "<p>The API key expiration time for API_KEY, if it was used as an authentication mechanism to access your data models.</p>"
  )
  @as("ExpirationTime")
  expirationTime: option<__double>,
  @ocaml.doc(
    "<p>The API key description for API_KEY, if it was used as an authentication mechanism to access your data models.</p>"
  )
  @as("Description")
  description: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Cognito user pool ID, if Amazon Cognito was used as an authentication setting to access your data models.</p>"
  )
  @as("CognitoUserPoolId")
  cognitoUserPoolId: option<__string>,
}
@ocaml.doc(
  "<p>Updates the configuration of the email or SMS message for the auth resource configured for your Amplify project.</p>"
)
type updateBackendAuthVerificationMessageConfig = {
  @ocaml.doc("<p>The settings for the SMS message.</p>") @as("SmsSettings")
  smsSettings: option<smsSettings>,
  @ocaml.doc("<p>The settings for the email message.</p>") @as("EmailSettings")
  emailSettings: option<emailSettings>,
  @ocaml.doc("<p>The type of verification message to send.</p>") @as("DeliveryMethod")
  deliveryMethod: deliveryMethod,
}
@ocaml.doc(
  "<p>Describes the password policy for your Amazon Cognito user pool configured as a part of your Amplify project.</p>"
)
type updateBackendAuthPasswordPolicyConfig = {
  @ocaml.doc(
    "<p>Describes the minimum length of the password required to sign in to the auth resource, configured as a part of your Amplify project.</p>"
  )
  @as("MinimumLength")
  minimumLength: option<__double>,
  @ocaml.doc(
    "<p>Describes additional constraints on password requirements to sign in to the auth resource, configured as a part of your Amplify project.</p>"
  )
  @as("AdditionalConstraints")
  additionalConstraints: option<listOfAdditionalConstraintsElement>,
}
@ocaml.doc(
  "<p><b>(DEPRECATED)</b> Describes the forgot password policy for authenticating into the Amplify app.</p>"
)
type updateBackendAuthForgotPasswordConfig = {
  @ocaml.doc(
    "<p><b>(DEPRECATED)</b> The configuration for the SMS message sent when an Amplify app user forgets their password.</p>"
  )
  @as("SmsSettings")
  smsSettings: option<smsSettings>,
  @ocaml.doc(
    "<p><b>(DEPRECATED)</b> The configuration for the email sent when an app user forgets their password.</p>"
  )
  @as("EmailSettings")
  emailSettings: option<emailSettings>,
  @ocaml.doc(
    "<p><b>(DEPRECATED)</b> Describes which mode to use (either SMS or email) to deliver messages to app users that want to recover their password.</p>"
  )
  @as("DeliveryMethod")
  deliveryMethod: option<deliveryMethod>,
}
@ocaml.doc(
  "<p>The settings for using the social identity providers for access to your Amplify app.</p>"
)
type socialProviderSettings = {
  @as("SignInWithApple") signInWithApple: option<backendAuthAppleProviderConfig>,
  @as("LoginWithAmazon") loginWithAmazon: option<backendAuthSocialProviderConfig>,
  @as("Google") google: option<backendAuthSocialProviderConfig>,
  @as("Facebook") facebook: option<backendAuthSocialProviderConfig>,
}
@ocaml.doc("<p>The settings of your MFA configuration for the backend of your Amplify project.</p>")
type settings = {
  @ocaml.doc("<p>The body of the SMS message.</p>") @as("SmsMessage") smsMessage: option<__string>,
  @ocaml.doc("<p>The supported MFA types.</p>") @as("MfaTypes")
  mfaTypes: option<listOfMfaTypesElement>,
}
type listOfS3BucketInfo = array<s3BucketInfo>
type listOfBackendJobRespObj = array<backendJobRespObj>
@ocaml.doc(
  "<p>Creates an email or SMS verification message for the auth resource configured for your Amplify project.</p>"
)
type createBackendAuthVerificationMessageConfig = {
  @ocaml.doc("<p>The settings for the SMS message.</p>") @as("SmsSettings")
  smsSettings: option<smsSettings>,
  @ocaml.doc("<p>The settings for the email message.</p>") @as("EmailSettings")
  emailSettings: option<emailSettings>,
  @ocaml.doc("<p>The type of verification message to send.</p>") @as("DeliveryMethod")
  deliveryMethod: deliveryMethod,
}
@ocaml.doc("<p>The password policy configuration for the backend to your Amplify project.</p>")
type createBackendAuthPasswordPolicyConfig = {
  @ocaml.doc(
    "<p>The minimum length of the password used to access the backend of your Amplify project.</p>"
  )
  @as("MinimumLength")
  minimumLength: __double,
  @ocaml.doc(
    "<p>Additional constraints for the password used to access the backend of your Amplify project.</p>"
  )
  @as("AdditionalConstraints")
  additionalConstraints: option<listOfAdditionalConstraintsElement>,
}
@ocaml.doc(
  "<p><b>(DEPRECATED)</b> Describes the forgot password policy for authenticating into the Amplify app.</p>"
)
type createBackendAuthForgotPasswordConfig = {
  @ocaml.doc(
    "<p><b>(DEPRECATED)</b> The configuration for the SMS message sent when an app user forgets their password.</p>"
  )
  @as("SmsSettings")
  smsSettings: option<smsSettings>,
  @ocaml.doc(
    "<p><b>(DEPRECATED)</b> The configuration for the email sent when an app user forgets their password.</p>"
  )
  @as("EmailSettings")
  emailSettings: option<emailSettings>,
  @ocaml.doc(
    "<p><b>(DEPRECATED)</b> Describes which mode to use (either SMS or email) to deliver messages to app users who want to recover their password.</p>"
  )
  @as("DeliveryMethod")
  deliveryMethod: deliveryMethod,
}
@ocaml.doc(
  "<p>Describes the read, write, and delete permissions users have against your storage S3 bucket.</p>"
)
type backendStoragePermissions = {
  @ocaml.doc(
    "<p>Lists all unauthenticated user read, write, and delete permissions for your S3 bucket.</p>"
  )
  @as("UnAuthenticated")
  unAuthenticated: option<listOfUnAuthenticatedElement>,
  @ocaml.doc(
    "<p>Lists all authenticated user read, write, and delete permissions for your S3 bucket.</p>"
  )
  @as("Authenticated")
  authenticated: listOfAuthenticatedElement,
}
@ocaml.doc("<p>Describes the auth types for your configured data models.</p>")
type backendAPIAuthType = {
  @ocaml.doc("<p>Describes settings for the authentication mode.</p>") @as("Settings")
  settings: option<backendAPIAppSyncAuthSettings>,
  @ocaml.doc("<p>Describes the authentication mode.</p>") @as("Mode") mode: option<mode>,
}
@ocaml.doc("<p>The resource configuration for updating backend storage.</p>")
type updateBackendStorageResourceConfig = {
  @ocaml.doc("<p>The name of the storage service.</p>") @as("ServiceName") serviceName: serviceName,
  @ocaml.doc("<p>The authorization configuration for the storage S3 bucket.</p>") @as("Permissions")
  permissions: backendStoragePermissions,
}
@ocaml.doc("<p>The OAuth configurations for authenticating users into your Amplify app.</p>")
type updateBackendAuthOAuthConfig = {
  @ocaml.doc(
    "<p>Describes third-party social federation configurations for allowing your users to sign in with OAuth.</p>"
  )
  @as("SocialProviderSettings")
  socialProviderSettings: option<socialProviderSettings>,
  @ocaml.doc("<p>Redirect URLs that OAuth uses when a user signs out of an Amplify app.</p>")
  @as("RedirectSignOutURIs")
  redirectSignOutURIs: option<listOf__string>,
  @ocaml.doc("<p>Redirect URLs that OAuth uses when a user signs in to an Amplify app.</p>")
  @as("RedirectSignInURIs")
  redirectSignInURIs: option<listOf__string>,
  @ocaml.doc(
    "<p>The list of OAuth-related flows that can allow users to authenticate from your Amplify app.</p>"
  )
  @as("OAuthScopes")
  oauthScopes: option<listOfOAuthScopesElement>,
  @ocaml.doc(
    "<p>The OAuth grant type to allow app users to authenticate from your Amplify app.</p>"
  )
  @as("OAuthGrantType")
  oauthGrantType: option<oauthGrantType>,
  @ocaml.doc(
    "<p>The Amazon Cognito domain prefix used to create a hosted UI for authentication.</p>"
  )
  @as("DomainPrefix")
  domainPrefix: option<__string>,
}
@ocaml.doc(
  "<p>Updates the multi-factor authentication (MFA) configuration for the backend of your Amplify project.</p>"
)
type updateBackendAuthMFAConfig = {
  @ocaml.doc(
    "<p>The settings of your MFA configuration for the backend of your Amplify project.</p>"
  )
  @as("Settings")
  settings: option<settings>,
  @ocaml.doc("<p>The MFA mode for the backend of your Amplify project.</p>") @as("MFAMode")
  mfamode: option<mfamode>,
}
type listOfBackendAPIAuthType = array<backendAPIAuthType>
@ocaml.doc("<p>The details for a backend storage resource.</p>")
type getBackendStorageResourceConfig = {
  @ocaml.doc("<p>The name of the storage service.</p>") @as("ServiceName") serviceName: serviceName,
  @ocaml.doc("<p>The authorization configuration for the storage S3 bucket.</p>") @as("Permissions")
  permissions: option<backendStoragePermissions>,
  @ocaml.doc("<p>Returns True if the storage resource has been imported.</p>") @as("Imported")
  imported: __boolean,
  @ocaml.doc("<p>The name of the S3 bucket.</p>") @as("BucketName") bucketName: option<__string>,
}
@ocaml.doc("<p>The resource configuration for creating backend storage.</p>")
type createBackendStorageResourceConfig = {
  @ocaml.doc("<p>The name of the storage service.</p>") @as("ServiceName") serviceName: serviceName,
  @ocaml.doc("<p>The authorization configuration for the storage S3 bucket.</p>") @as("Permissions")
  permissions: backendStoragePermissions,
  @ocaml.doc("<p>The name of the S3 bucket.</p>") @as("BucketName") bucketName: option<__string>,
}
@ocaml.doc("<p>Creates the OAuth configuration for your Amplify project.</p>")
type createBackendAuthOAuthConfig = {
  @ocaml.doc("<p>The settings for using social providers to access your Amplify app.</p>")
  @as("SocialProviderSettings")
  socialProviderSettings: option<socialProviderSettings>,
  @ocaml.doc("<p>Redirect URLs that OAuth uses when a user signs out of an Amplify app.</p>")
  @as("RedirectSignOutURIs")
  redirectSignOutURIs: listOf__string,
  @ocaml.doc("<p>The redirected URI for signing in to your Amplify app.</p>")
  @as("RedirectSignInURIs")
  redirectSignInURIs: listOf__string,
  @ocaml.doc(
    "<p>List of OAuth-related flows used to allow your app users to authenticate from your Amplify app.</p>"
  )
  @as("OAuthScopes")
  oauthScopes: listOfOAuthScopesElement,
  @ocaml.doc(
    "<p>The OAuth grant type that you use to allow app users to authenticate from your Amplify app.</p>"
  )
  @as("OAuthGrantType")
  oauthGrantType: oauthGrantType,
  @ocaml.doc("<p>The domain prefix for your Amplify app.</p>") @as("DomainPrefix")
  domainPrefix: option<__string>,
}
@ocaml.doc(
  "<p>Describes whether to apply multi-factor authentication policies for your Amazon Cognito user pool configured as a part of your Amplify project.</p>"
)
type createBackendAuthMFAConfig = {
  @ocaml.doc(
    "<p>Describes the configuration settings and methods for your Amplify app users to use MFA.</p>"
  )
  @as("Settings")
  settings: option<settings>,
  @ocaml.doc(
    "<p>Describes whether MFA should be [ON, OFF, or OPTIONAL] for authentication in your Amplify project.</p>"
  )
  @as("MFAMode")
  mfamode: mfamode,
}
@ocaml.doc(
  "<p>Describes the Amazon Cognito user pool configuration for the authorization resource to be configured for your Amplify project on an update.</p>"
)
type updateBackendAuthUserPoolConfig = {
  @ocaml.doc(
    "<p>Describes the email or SMS verification message for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>"
  )
  @as("VerificationMessage")
  verificationMessage: option<updateBackendAuthVerificationMessageConfig>,
  @ocaml.doc(
    "<p>Describes the password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>"
  )
  @as("PasswordPolicy")
  passwordPolicy: option<updateBackendAuthPasswordPolicyConfig>,
  @ocaml.doc(
    "<p>Describes the OAuth policy and rules for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>"
  )
  @as("OAuth")
  oauth: option<updateBackendAuthOAuthConfig>,
  @ocaml.doc(
    "<p>Describes whether to apply multi-factor authentication policies for your Amazon Cognito user pool configured as a part of your Amplify project.</p>"
  )
  @as("Mfa")
  mfa: option<updateBackendAuthMFAConfig>,
  @ocaml.doc(
    "<p><b>(DEPRECATED)</b> Describes the forgot password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>"
  )
  @as("ForgotPassword")
  forgotPassword: option<updateBackendAuthForgotPasswordConfig>,
}
@ocaml.doc(
  "<p>Describes the Amazon Cognito user pool configuration for the auth resource to be configured for your Amplify project.</p>"
)
type createBackendAuthUserPoolConfig = {
  @ocaml.doc(
    "<p>Describes the email or SMS verification message for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>"
  )
  @as("VerificationMessage")
  verificationMessage: option<createBackendAuthVerificationMessageConfig>,
  @ocaml.doc("<p>The Amazon Cognito user pool name.</p>") @as("UserPoolName")
  userPoolName: __string,
  @ocaml.doc(
    "<p>Describes the sign-in methods that your Amplify app users use to log in using the Amazon Cognito user pool, configured as a part of your Amplify project.</p>"
  )
  @as("SignInMethod")
  signInMethod: signInMethod,
  @ocaml.doc("<p>The required attributes to sign up new users in the user pool.</p>")
  @as("RequiredSignUpAttributes")
  requiredSignUpAttributes: listOfRequiredSignUpAttributesElement,
  @ocaml.doc(
    "<p>Describes the password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>"
  )
  @as("PasswordPolicy")
  passwordPolicy: option<createBackendAuthPasswordPolicyConfig>,
  @ocaml.doc(
    "<p>Describes the OAuth policy and rules for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>"
  )
  @as("OAuth")
  oauth: option<createBackendAuthOAuthConfig>,
  @ocaml.doc(
    "<p>Describes whether to apply multi-factor authentication policies for your Amazon Cognito user pool configured as a part of your Amplify project.</p>"
  )
  @as("Mfa")
  mfa: option<createBackendAuthMFAConfig>,
  @ocaml.doc(
    "<p><b>(DEPRECATED)</b> Describes the forgotten password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>"
  )
  @as("ForgotPassword")
  forgotPassword: option<createBackendAuthForgotPasswordConfig>,
}
@ocaml.doc(
  "<p>The resource config for the data model, configured as a part of the Amplify project.</p>"
)
type backendAPIResourceConfig = {
  @ocaml.doc(
    "<p>The definition of the data model in the annotated transform of the GraphQL schema.</p>"
  )
  @as("TransformSchema")
  transformSchema: option<__string>,
  @ocaml.doc("<p>The service used to provision and interact with the data model.</p>")
  @as("Service")
  service: option<__string>,
  @ocaml.doc(
    "<p>The default authentication type for interacting with the configured data models in your Amplify project.</p>"
  )
  @as("DefaultAuthType")
  defaultAuthType: option<backendAPIAuthType>,
  @ocaml.doc("<p>The conflict resolution strategy for your data stored in the data models.</p>")
  @as("ConflictResolution")
  conflictResolution: option<backendAPIConflictResolution>,
  @ocaml.doc(
    "<p>The API name used to interact with the data model, configured as a part of your Amplify project.</p>"
  )
  @as("ApiName")
  apiName: option<__string>,
  @ocaml.doc("<p>Additional authentication methods used to interact with your data models.</p>")
  @as("AdditionalAuthTypes")
  additionalAuthTypes: option<listOfBackendAPIAuthType>,
}
@ocaml.doc(
  "<p>Defines the resource configuration when updating an authentication resource in your Amplify project.</p>"
)
type updateBackendAuthResourceConfig = {
  @ocaml.doc(
    "<p>Describes the authentication configuration for the Amazon Cognito user pool, provisioned as a part of your auth resource in the Amplify project.</p>"
  )
  @as("UserPoolConfigs")
  userPoolConfigs: updateBackendAuthUserPoolConfig,
  @ocaml.doc(
    "<p>Defines the service name to use when configuring an authentication resource in your Amplify project.</p>"
  )
  @as("Service")
  service: service,
  @ocaml.doc(
    "<p>Describes the authorization configuration for the Amazon Cognito identity pool, provisioned as a part of your auth resource in the Amplify project.</p>"
  )
  @as("IdentityPoolConfigs")
  identityPoolConfigs: option<updateBackendAuthIdentityPoolConfig>,
  @ocaml.doc(
    "<p>Defines the service name to use when configuring an authentication resource in your Amplify project.</p>"
  )
  @as("AuthResources")
  authResources: authResources,
}
@ocaml.doc(
  "<p>Defines the resource configuration when creating an auth resource in your Amplify project.</p>"
)
type createBackendAuthResourceConfig = {
  @ocaml.doc(
    "<p>Describes authentication configuration for the Amazon Cognito user pool, provisioned as a part of your auth resource in the Amplify project.</p>"
  )
  @as("UserPoolConfigs")
  userPoolConfigs: createBackendAuthUserPoolConfig,
  @ocaml.doc(
    "<p>Defines the service name to use when configuring an authentication resource in your Amplify project.</p>"
  )
  @as("Service")
  service: service,
  @ocaml.doc(
    "<p>Describes the authorization configuration for the Amazon Cognito identity pool, provisioned as a part of your auth resource in the Amplify project.</p>"
  )
  @as("IdentityPoolConfigs")
  identityPoolConfigs: option<createBackendAuthIdentityPoolConfig>,
  @ocaml.doc(
    "<p>Defines whether you want to configure only authentication or both authentication and authorization settings.</p>"
  )
  @as("AuthResources")
  authResources: authResources,
}
@ocaml.doc("<p>AWS Amplify Admin API</p>")
module UpdateBackendJob = {
  type t
  @ocaml.doc("<p>The request body for GetBackendJob.</p>")
  type request = {
    @ocaml.doc(
      "<p>Filters the list of response objects to include only those with the specified status.</p>"
    )
    @as("Status")
    status: option<__string>,
    @ocaml.doc(
      "<p>Filters the list of response objects to include only those with the specified operation name.</p>"
    )
    @as("Operation")
    operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: __string,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The time when the job was last updated.</p>") @as("UpdateTime")
    updateTime: option<__string>,
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The time when the job was created.</p>") @as("CreateTime")
    createTime: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "UpdateBackendJobCommand"
  let make = (~jobId, ~backendEnvironmentName, ~appId, ~status=?, ~operation=?, ()) =>
    new({status, operation, jobId, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RemoveBackendConfig = {
  type t
  type request = {@ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string}
  type response = {
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "RemoveBackendConfigCommand"
  let make = (~appId, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RemoveAllBackends = {
  type t
  @ocaml.doc("<p>The request body for RemoveAllBackends.</p>")
  type request = {
    @ocaml.doc("<p>Cleans up the Amplify Console app if this value is set to true.</p>")
    @as("CleanAmplifyApp")
    cleanAmplifyApp: option<__boolean>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "RemoveAllBackendsCommand"
  let make = (~appId, ~cleanAmplifyApp=?, ()) => new({cleanAmplifyApp, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ImportBackendStorage = {
  type t
  @ocaml.doc("<p>The request body for ImportBackendStorage.</p>")
  type request = {
    @ocaml.doc("<p>The name of the storage service.</p>") @as("ServiceName")
    serviceName: serviceName,
    @ocaml.doc("<p>The name of the S3 bucket.</p>") @as("BucketName") bucketName: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "ImportBackendStorageCommand"
  let make = (~serviceName, ~backendEnvironmentName, ~appId, ~bucketName=?, ()) =>
    new({serviceName, bucketName, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ImportBackendAuth = {
  type t
  @ocaml.doc("<p>The request body for ImportBackendAuth.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the Amazon Cognito web client.</p>") @as("WebClientId")
    webClientId: __string,
    @ocaml.doc("<p>The ID of the Amazon Cognito user pool.</p>") @as("UserPoolId")
    userPoolId: __string,
    @ocaml.doc("<p>The ID of the Amazon Cognito native client.</p>") @as("NativeClientId")
    nativeClientId: __string,
    @ocaml.doc("<p>The ID of the Amazon Cognito identity pool.</p>") @as("IdentityPoolId")
    identityPoolId: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "ImportBackendAuthCommand"
  let make = (
    ~webClientId,
    ~userPoolId,
    ~nativeClientId,
    ~backendEnvironmentName,
    ~appId,
    ~identityPoolId=?,
    (),
  ) => new({webClientId, userPoolId, nativeClientId, identityPoolId, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetToken = {
  type t
  type request = {
    @ocaml.doc("<p>The session ID.</p>") @as("SessionId") sessionId: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The expiry time for the one-time generated token code.</p>") @as("Ttl")
    ttl: option<__string>,
    @ocaml.doc("<p>A unique ID provided when creating a new challenge token.</p>") @as("SessionId")
    sessionId: option<__string>,
    @ocaml.doc("<p>The one-time challenge code for authenticating into the Amplify Admin UI.</p>")
    @as("ChallengeCode")
    challengeCode: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new external new: request => t = "GetTokenCommand"
  let make = (~sessionId, ~appId, ()) => new({sessionId, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBackendJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: __string,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The time when the job was last updated.</p>") @as("UpdateTime")
    updateTime: option<__string>,
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The time when the job was created.</p>") @as("CreateTime")
    createTime: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new external new: request => t = "GetBackendJobCommand"
  let make = (~jobId, ~backendEnvironmentName, ~appId, ()) =>
    new({jobId, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBackendAPIModels = {
  type t
  @ocaml.doc("<p>The request body for GetBackendAPIModels.</p>")
  type request = {
    @ocaml.doc("<p>The name of this resource.</p>") @as("ResourceName") resourceName: __string,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<status>,
    @ocaml.doc("<p>Stringified JSON of the datastore model.</p>") @as("Models")
    models: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "GetBackendAPIModelsCommand"
  let make = (~resourceName, ~backendEnvironmentName, ~appId, ()) =>
    new({resourceName, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GenerateBackendAPIModels = {
  type t
  @ocaml.doc("<p>The request body for GenerateBackendAPIModels.</p>")
  type request = {
    @ocaml.doc("<p>The name of this resource.</p>") @as("ResourceName") resourceName: __string,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "GenerateBackendAPIModelsCommand"
  let make = (~resourceName, ~backendEnvironmentName, ~appId, ()) =>
    new({resourceName, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteToken = {
  type t
  type request = {
    @ocaml.doc("<p>The session ID.</p>") @as("SessionId") sessionId: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether the request succeeded or failed.</p>") @as("IsSuccess")
    isSuccess: option<__boolean>,
  }
  @module("@aws-sdk/client-amplifybackend") @new external new: request => t = "DeleteTokenCommand"
  let make = (~sessionId, ~appId, ()) => new({sessionId, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteBackendStorage = {
  type t
  @ocaml.doc("<p>The request body for DeleteBackendStorage.</p>")
  type request = {
    @ocaml.doc("<p>The name of the storage service.</p>") @as("ServiceName")
    serviceName: serviceName,
    @ocaml.doc("<p>The name of the storage resource.</p>") @as("ResourceName")
    resourceName: __string,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "DeleteBackendStorageCommand"
  let make = (~serviceName, ~resourceName, ~backendEnvironmentName, ~appId, ()) =>
    new({serviceName, resourceName, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteBackendAuth = {
  type t
  @ocaml.doc("<p>The request body for DeleteBackendAuth.</p>")
  type request = {
    @ocaml.doc("<p>The name of this resource.</p>") @as("ResourceName") resourceName: __string,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "DeleteBackendAuthCommand"
  let make = (~resourceName, ~backendEnvironmentName, ~appId, ()) =>
    new({resourceName, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteBackend = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new external new: request => t = "DeleteBackendCommand"
  let make = (~backendEnvironmentName, ~appId, ()) => new({backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateToken = {
  type t
  type request = {@ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string}
  type response = {
    @ocaml.doc("<p>The expiry time for the one-time generated token code.</p>") @as("Ttl")
    ttl: option<__string>,
    @ocaml.doc("<p>A unique ID provided when creating a new challenge token.</p>") @as("SessionId")
    sessionId: option<__string>,
    @ocaml.doc("<p>One-time challenge code for authenticating into the Amplify Admin UI.</p>")
    @as("ChallengeCode")
    challengeCode: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new external new: request => t = "CreateTokenCommand"
  let make = (~appId, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateBackendConfig = {
  type t
  @ocaml.doc("<p>The request body for CreateBackendConfig.</p>")
  type request = {
    @ocaml.doc("<p>The app ID for the backend manager.</p>") @as("BackendManagerAppId")
    backendManagerAppId: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "CreateBackendConfigCommand"
  let make = (~appId, ~backendManagerAppId=?, ()) => new({backendManagerAppId, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateBackend = {
  type t
  @ocaml.doc("<p>The request body for CreateBackend.</p>")
  type request = {
    @ocaml.doc("<p>The name of the resource.</p>") @as("ResourceName")
    resourceName: option<__string>,
    @ocaml.doc("<p>The resource configuration for creating a backend.</p>") @as("ResourceConfig")
    resourceConfig: option<resourceConfig>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The name of the app.</p>") @as("AppName") appName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new external new: request => t = "CreateBackendCommand"
  let make = (~backendEnvironmentName, ~appName, ~appId, ~resourceName=?, ~resourceConfig=?, ()) =>
    new({resourceName, resourceConfig, backendEnvironmentName, appName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CloneBackend = {
  type t
  @ocaml.doc("<p>The request body for CloneBackend.</p>")
  type request = {
    @ocaml.doc("<p>The name of the destination backend environment to be created.</p>")
    @as("TargetEnvironmentName")
    targetEnvironmentName: __string,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new external new: request => t = "CloneBackendCommand"
  let make = (~targetEnvironmentName, ~backendEnvironmentName, ~appId, ()) =>
    new({targetEnvironmentName, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateBackendConfig = {
  type t
  @ocaml.doc("<p>The request body for UpdateBackendConfig.</p>")
  type request = {
    @ocaml.doc("<p>Describes the Amazon Cognito configuration for Admin UI access.</p>")
    @as("LoginAuthConfig")
    loginAuthConfig: option<loginAuthConfigReqObj>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>Describes the Amazon Cognito configurations for the Admin UI auth resource to log in with.</p>"
    )
    @as("LoginAuthConfig")
    loginAuthConfig: option<loginAuthConfigReqObj>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The app ID for the backend manager.</p>") @as("BackendManagerAppId")
    backendManagerAppId: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "UpdateBackendConfigCommand"
  let make = (~appId, ~loginAuthConfig=?, ()) => new({loginAuthConfig, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBackend = {
  type t
  @ocaml.doc("<p>The request body for GetBackend.</p>")
  type request = {
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>If the request failed, this is the returned error.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>A list of backend environments in an array.</p>") @as("BackendEnvironmentList")
    backendEnvironmentList: option<listOf__string>,
    @ocaml.doc("<p>The name of the app.</p>") @as("AppName") appName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
    @ocaml.doc("<p>A stringified version of the current configs for your Amplify project.</p>")
    @as("AmplifyMetaConfig")
    amplifyMetaConfig: option<__string>,
    @ocaml.doc("<p>A stringified version of the cli.json file for your Amplify project.</p>")
    @as("AmplifyFeatureFlags")
    amplifyFeatureFlags: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new external new: request => t = "GetBackendCommand"
  let make = (~appId, ~backendEnvironmentName=?, ()) => new({backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListS3Buckets = {
  type t
  @ocaml.doc("<p>The request body for S3Buckets.</p>")
  type request = {
    @ocaml.doc("<p>Reserved for future use.</p>") @as("NextToken") nextToken: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>Reserved for future use.</p>") @as("NextToken") nextToken: option<__string>,
    @ocaml.doc("<p>The list of S3 buckets.</p>") @as("Buckets") buckets: option<listOfS3BucketInfo>,
  }
  @module("@aws-sdk/client-amplifybackend") @new external new: request => t = "ListS3BucketsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListBackendJobs = {
  type t
  @ocaml.doc("<p>The request body for ListBackendJobs.</p>")
  type request = {
    @ocaml.doc(
      "<p>Filters the list of response objects to include only those with the specified status.</p>"
    )
    @as("Status")
    status: option<__string>,
    @ocaml.doc(
      "<p>Filters the list of response objects to include only those with the specified operation name.</p>"
    )
    @as("Operation")
    operation: option<__string>,
    @ocaml.doc("<p>The token for the next set of results.</p>") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of results that you want in the response.</p>")
    @as("MaxResults")
    maxResults: option<__integerMin1Max25>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of results.</p>") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of jobs and their properties.</p>") @as("Jobs")
    jobs: option<listOfBackendJobRespObj>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "ListBackendJobsCommand"
  let make = (
    ~backendEnvironmentName,
    ~appId,
    ~status=?,
    ~operation=?,
    ~nextToken=?,
    ~maxResults=?,
    ~jobId=?,
    (),
  ) => new({status, operation, nextToken, maxResults, jobId, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateBackendStorage = {
  type t
  @ocaml.doc("<p>The request body for UpdateBackendStorage.</p>")
  type request = {
    @ocaml.doc("<p>The name of the storage resource.</p>") @as("ResourceName")
    resourceName: __string,
    @ocaml.doc("<p>The resource configuration for updating backend storage.</p>")
    @as("ResourceConfig")
    resourceConfig: updateBackendStorageResourceConfig,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "UpdateBackendStorageCommand"
  let make = (~resourceName, ~resourceConfig, ~backendEnvironmentName, ~appId, ()) =>
    new({resourceName, resourceConfig, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBackendStorage = {
  type t
  @ocaml.doc("<p>The request body for GetBackendStorage.</p>")
  type request = {
    @ocaml.doc("<p>The name of the storage resource.</p>") @as("ResourceName")
    resourceName: __string,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The name of the storage resource.</p>") @as("ResourceName")
    resourceName: option<__string>,
    @ocaml.doc("<p>The resource configuration for the backend storage resource.</p>")
    @as("ResourceConfig")
    resourceConfig: option<getBackendStorageResourceConfig>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "GetBackendStorageCommand"
  let make = (~resourceName, ~backendEnvironmentName, ~appId, ()) =>
    new({resourceName, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateBackendStorage = {
  type t
  @ocaml.doc("<p>The request body for CreateBackendStorage.</p>")
  type request = {
    @ocaml.doc("<p>The name of the storage resource.</p>") @as("ResourceName")
    resourceName: __string,
    @ocaml.doc("<p>The resource configuration for creating backend storage.</p>")
    @as("ResourceConfig")
    resourceConfig: createBackendStorageResourceConfig,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "CreateBackendStorageCommand"
  let make = (~resourceName, ~resourceConfig, ~backendEnvironmentName, ~appId, ()) =>
    new({resourceName, resourceConfig, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateBackendAPI = {
  type t
  @ocaml.doc("<p>The request body for UpdateBackendAPI.</p>")
  type request = {
    @ocaml.doc("<p>The name of this resource.</p>") @as("ResourceName") resourceName: __string,
    @ocaml.doc(
      "<p>Defines the resource configuration for the data model in your Amplify project.</p>"
    )
    @as("ResourceConfig")
    resourceConfig: option<backendAPIResourceConfig>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "UpdateBackendAPICommand"
  let make = (~resourceName, ~backendEnvironmentName, ~appId, ~resourceConfig=?, ()) =>
    new({resourceName, resourceConfig, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBackendAPI = {
  type t
  @ocaml.doc("<p>The request body for GetBackendAPI.</p>")
  type request = {
    @ocaml.doc("<p>The name of this resource.</p>") @as("ResourceName") resourceName: __string,
    @ocaml.doc(
      "<p>Defines the resource configuration for the data model in your Amplify project.</p>"
    )
    @as("ResourceConfig")
    resourceConfig: option<backendAPIResourceConfig>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The name of this resource.</p>") @as("ResourceName")
    resourceName: option<__string>,
    @ocaml.doc("<p>The resource configuration for this response object.</p>") @as("ResourceConfig")
    resourceConfig: option<backendAPIResourceConfig>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new external new: request => t = "GetBackendAPICommand"
  let make = (~resourceName, ~backendEnvironmentName, ~appId, ~resourceConfig=?, ()) =>
    new({resourceName, resourceConfig, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteBackendAPI = {
  type t
  @ocaml.doc("<p>The request body for DeleteBackendAPI.</p>")
  type request = {
    @ocaml.doc("<p>The name of this resource.</p>") @as("ResourceName") resourceName: __string,
    @ocaml.doc(
      "<p>Defines the resource configuration for the data model in your Amplify project.</p>"
    )
    @as("ResourceConfig")
    resourceConfig: option<backendAPIResourceConfig>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "DeleteBackendAPICommand"
  let make = (~resourceName, ~backendEnvironmentName, ~appId, ~resourceConfig=?, ()) =>
    new({resourceName, resourceConfig, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateBackendAPI = {
  type t
  @ocaml.doc("<p>The request body for CreateBackendAPI.</p>")
  type request = {
    @ocaml.doc("<p>The name of this resource.</p>") @as("ResourceName") resourceName: __string,
    @ocaml.doc("<p>The resource configuration for this request.</p>") @as("ResourceConfig")
    resourceConfig: backendAPIResourceConfig,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "CreateBackendAPICommand"
  let make = (~resourceName, ~resourceConfig, ~backendEnvironmentName, ~appId, ()) =>
    new({resourceName, resourceConfig, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateBackendAuth = {
  type t
  @ocaml.doc("<p>The request body for UpdateBackendAuth.</p>")
  type request = {
    @ocaml.doc("<p>The name of this resource.</p>") @as("ResourceName") resourceName: __string,
    @ocaml.doc("<p>The resource configuration for this request object.</p>") @as("ResourceConfig")
    resourceConfig: updateBackendAuthResourceConfig,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "UpdateBackendAuthCommand"
  let make = (~resourceName, ~resourceConfig, ~backendEnvironmentName, ~appId, ()) =>
    new({resourceName, resourceConfig, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBackendAuth = {
  type t
  @ocaml.doc("<p>The request body for GetBackendAuth.</p>")
  type request = {
    @ocaml.doc("<p>The name of this resource.</p>") @as("ResourceName") resourceName: __string,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The name of this resource.</p>") @as("ResourceName")
    resourceName: option<__string>,
    @ocaml.doc(
      "<p>The resource configuration for authorization requests to the backend of your Amplify project.</p>"
    )
    @as("ResourceConfig")
    resourceConfig: option<createBackendAuthResourceConfig>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "GetBackendAuthCommand"
  let make = (~resourceName, ~backendEnvironmentName, ~appId, ()) =>
    new({resourceName, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateBackendAuth = {
  type t
  @ocaml.doc("<p>The request body for CreateBackendAuth.</p>")
  type request = {
    @ocaml.doc("<p>The name of this resource.</p>") @as("ResourceName") resourceName: __string,
    @ocaml.doc("<p>The resource configuration for this request object.</p>") @as("ResourceConfig")
    resourceConfig: createBackendAuthResourceConfig,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: __string,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of the request.</p>") @as("Status") status: option<__string>,
    @ocaml.doc("<p>The name of the operation.</p>") @as("Operation") operation: option<__string>,
    @ocaml.doc("<p>The ID for the job.</p>") @as("JobId") jobId: option<__string>,
    @ocaml.doc("<p>If the request fails, this error is returned.</p>") @as("Error")
    error: option<__string>,
    @ocaml.doc("<p>The name of the backend environment.</p>") @as("BackendEnvironmentName")
    backendEnvironmentName: option<__string>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<__string>,
  }
  @module("@aws-sdk/client-amplifybackend") @new
  external new: request => t = "CreateBackendAuthCommand"
  let make = (~resourceName, ~resourceConfig, ~backendEnvironmentName, ~appId, ()) =>
    new({resourceName, resourceConfig, backendEnvironmentName, appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
