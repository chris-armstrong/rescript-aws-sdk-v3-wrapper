type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-awsssooidc") @new external createClient: unit => awsServiceClient = "SSOOIDCClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type userCode = string
type uri = string
type tokenType = string
type scope = string
type refreshToken = string
type longTimeStampType = float
type intervalInSeconds = int
type idToken = string
type grantType = string
type expirationInSeconds = int
type errorDescription = string
type error = string
type deviceCode = string
type clientType = string
type clientSecret = string
type clientName = string
type clientId = string
type authCode = string
type accessToken = string
type scopes = array<scope>

module StartDeviceAuthorization = {
  type t;
  type request = {
startUrl: uri,
  clientSecret: clientSecret,
  clientId: clientId
}
  type response = {
interval: option<intervalInSeconds>,
  expiresIn: option<expirationInSeconds>,
  verificationUriComplete: option<uri>,
  verificationUri: option<uri>,
  userCode: option<userCode>,
  deviceCode: option<deviceCode>
}
  @module("@aws-sdk/client-awsssooidc") @new external new_: (request) => t = "StartDeviceAuthorizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterClient = {
  type t;
  type request = {
scopes: option<scopes>,
  clientType: clientType,
  clientName: clientName
}
  type response = {
tokenEndpoint: option<uri>,
  authorizationEndpoint: option<uri>,
  clientSecretExpiresAt: option<longTimeStampType>,
  clientIdIssuedAt: option<longTimeStampType>,
  clientSecret: option<clientSecret>,
  clientId: option<clientId>
}
  @module("@aws-sdk/client-awsssooidc") @new external new_: (request) => t = "RegisterClientCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateToken = {
  type t;
  type request = {
redirectUri: option<uri>,
  scope: option<scopes>,
  refreshToken: option<refreshToken>,
  code: option<authCode>,
  deviceCode: deviceCode,
  grantType: grantType,
  clientSecret: clientSecret,
  clientId: clientId
}
  type response = {
idToken: option<idToken>,
  refreshToken: option<refreshToken>,
  expiresIn: option<expirationInSeconds>,
  tokenType: option<tokenType>,
  accessToken: option<accessToken>
}
  @module("@aws-sdk/client-awsssooidc") @new external new_: (request) => t = "CreateTokenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
