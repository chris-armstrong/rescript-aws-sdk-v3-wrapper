type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type userCode = string
type uRI = string
type tokenType = string
type scope = string
type refreshToken = string
type longTimeStampType = float;
type intervalInSeconds = int;
type idToken = string
type grantType = string
type expirationInSeconds = int;
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
type clientType;
@module("@aws-sdk/client-awsssooidc") @new external createClient: unit => clientType = "SSOOIDCClient";
module StartDeviceAuthorization = {
  type t;
  type request = {
@as("startUrl") startUrl: option<uRI>,
@as("clientSecret") clientSecret: option<clientSecret>,
@as("clientId") clientId: option<clientId>
}
  type response = {
@as("interval") interval: intervalInSeconds,
@as("expiresIn") expiresIn: expirationInSeconds,
@as("verificationUriComplete") verificationUriComplete: uRI,
@as("verificationUri") verificationUri: uRI,
@as("userCode") userCode: userCode,
@as("deviceCode") deviceCode: deviceCode
}
  @module("@aws-sdk/client-awsssooidc") @new external new_: (Js.Promise.t<request>) => t = "StartDeviceAuthorizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterClient = {
  type t;
  type request = {
@as("scopes") scopes: scopes,
@as("clientType") clientType: option<clientType>,
@as("clientName") clientName: option<clientName>
}
  type response = {
@as("tokenEndpoint") tokenEndpoint: uRI,
@as("authorizationEndpoint") authorizationEndpoint: uRI,
@as("clientSecretExpiresAt") clientSecretExpiresAt: longTimeStampType,
@as("clientIdIssuedAt") clientIdIssuedAt: longTimeStampType,
@as("clientSecret") clientSecret: clientSecret,
@as("clientId") clientId: clientId
}
  @module("@aws-sdk/client-awsssooidc") @new external new_: (Js.Promise.t<request>) => t = "RegisterClientCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateToken = {
  type t;
  type request = {
@as("redirectUri") redirectUri: uRI,
@as("scope") scope: scopes,
@as("refreshToken") refreshToken: refreshToken,
@as("code") code: authCode,
@as("deviceCode") deviceCode: option<deviceCode>,
@as("grantType") grantType: option<grantType>,
@as("clientSecret") clientSecret: option<clientSecret>,
@as("clientId") clientId: option<clientId>
}
  type response = {
@as("idToken") idToken: idToken,
@as("refreshToken") refreshToken: refreshToken,
@as("expiresIn") expiresIn: expirationInSeconds,
@as("tokenType") tokenType: tokenType,
@as("accessToken") accessToken: accessToken
}
  @module("@aws-sdk/client-awsssooidc") @new external new_: (Js.Promise.t<request>) => t = "CreateTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
