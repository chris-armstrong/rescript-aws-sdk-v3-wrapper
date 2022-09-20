type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-awsssooidc") @new
external createClient: unit => awsServiceClient = "SSOOIDCClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
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
@ocaml.doc("<p>AWS Single Sign-On (SSO) OpenID Connect (OIDC) is a web service that enables a client
      (such as AWS CLI or a native application) to register with AWS SSO. The service also
      enables the client to fetch the user’s access token upon successful authentication and
      authorization with AWS SSO. This service conforms with the OAuth 2.0 based implementation of
      the device authorization grant standard (<a href=\"https://tools.ietf.org/html/rfc8628\">https://tools.ietf.org/html/rfc8628</a>).</p>
    
         <p>For general information about AWS SSO, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html\">What is AWS
        Single Sign-On?</a> in the <i>AWS SSO User Guide</i>.</p>
    
         <p>This API reference guide describes the AWS SSO OIDC operations that you can call
      programatically and includes detailed information on data types and errors.</p>
    
         <note>
            <p>AWS provides SDKs that consist of libraries and sample code for various programming
        languages and platforms such as Java, Ruby, .Net, iOS, and Android. The SDKs provide a
        convenient way to create programmatic access to AWS SSO and other AWS services. For more
        information about the AWS SDKs, including how to download and install them, see <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web Services</a>.</p>
         </note>")
module StartDeviceAuthorization = {
  type t
  type request = {
    @ocaml.doc("<p>The URL for the AWS SSO user portal. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/using-the-portal.html\">Using
        the User Portal</a> in the <i>AWS Single Sign-On User Guide</i>.</p>")
    startUrl: uri,
    @ocaml.doc("<p>A secret string that is generated for the client. This value should come from the
      persisted result of the <a>RegisterClient</a> API operation.</p>")
    clientSecret: clientSecret,
    @ocaml.doc("<p>The unique identifier string for the client that is registered with AWS SSO. This value
      should come from the persisted result of the <a>RegisterClient</a> API
      operation.</p>")
    clientId: clientId,
  }
  type response = {
    @ocaml.doc(
      "<p>Indicates the number of seconds the client must wait between attempts when polling for a session.</p>"
    )
    interval: option<intervalInSeconds>,
    @ocaml.doc(
      "<p>Indicates the number of seconds in which the verification code will become invalid.</p>"
    )
    expiresIn: option<expirationInSeconds>,
    @ocaml.doc("<p>An alternate URL that the client can use to automatically launch a browser. This process
      skips the manual step in which the user visits the verification page and enters their
      code.</p>")
    verificationUriComplete: option<uri>,
    @ocaml.doc(
      "<p>The URI of the verification page that takes the <code>userCode</code> to authorize the device.</p>"
    )
    verificationUri: option<uri>,
    @ocaml.doc(
      "<p>A one-time user verification code. This is needed to authorize an in-use device.</p>"
    )
    userCode: option<userCode>,
    @ocaml.doc(
      "<p>The short-lived code that is used by the device when polling for a session token.</p>"
    )
    deviceCode: option<deviceCode>,
  }
  @module("@aws-sdk/client-awsssooidc") @new
  external new: request => t = "StartDeviceAuthorizationCommand"
  let make = (~startUrl, ~clientSecret, ~clientId, ()) => new({startUrl, clientSecret, clientId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RegisterClient = {
  type t
  type request = {
    @ocaml.doc("<p>The list of scopes that are defined by the client. Upon authorization, this list is used
      to restrict permissions when granting an access token.</p>")
    scopes: option<scopes>,
    @ocaml.doc(
      "<p>The type of client. The service supports only <code>public</code> as a client type. Anything other than public will be rejected by the service.</p>"
    )
    clientType: clientType,
    @ocaml.doc("<p>The friendly name of the client.</p>") clientName: clientName,
  }
  type response = {
    @ocaml.doc("<p>The endpoint where the client can get an access token.</p>")
    tokenEndpoint: option<uri>,
    @ocaml.doc("<p>The endpoint where the client can request authorization.</p>")
    authorizationEndpoint: option<uri>,
    @ocaml.doc(
      "<p>Indicates the time at which the <code>clientId</code> and <code>clientSecret</code> will become invalid.</p>"
    )
    clientSecretExpiresAt: option<longTimeStampType>,
    @ocaml.doc(
      "<p>Indicates the time at which the <code>clientId</code> and <code>clientSecret</code> were issued.</p>"
    )
    clientIdIssuedAt: option<longTimeStampType>,
    @ocaml.doc("<p>A secret string generated for the client. The client will use this string to get
      authenticated by the service in subsequent calls.</p>")
    clientSecret: option<clientSecret>,
    @ocaml.doc("<p>The unique identifier string for each client. This client uses this identifier to get
      authenticated by the service in subsequent calls.</p>")
    clientId: option<clientId>,
  }
  @module("@aws-sdk/client-awsssooidc") @new external new: request => t = "RegisterClientCommand"
  let make = (~clientType, ~clientName, ~scopes=?, ()) => new({scopes, clientType, clientName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateToken = {
  type t
  type request = {
    @ocaml.doc("<p>The location of the application that will receive the authorization code. Users authorize
      the service to send the request to this location.</p>")
    redirectUri: option<uri>,
    @ocaml.doc("<p>The list of scopes that is defined by the client. Upon authorization, this list is used to
      restrict permissions when granting an access token.</p>")
    scope: option<scopes>,
    @ocaml.doc(
      "<p>The token used to obtain an access token in the event that the access token is invalid or expired. This token is not issued by the service.</p>"
    )
    refreshToken: option<refreshToken>,
    @ocaml.doc(
      "<p>The authorization code received from the authorization service. This parameter is required to perform an authorization grant request to get access to a token.</p>"
    )
    code: option<authCode>,
    @ocaml.doc("<p>Used only when calling this API for the device code grant type. This short-term code is
      used to identify this authentication attempt. This should come from an in-memory reference to
      the result of the <a>StartDeviceAuthorization</a> API.</p>")
    deviceCode: deviceCode,
    @ocaml.doc(
      "<p>Supports grant types for authorization code, refresh token, and device code request.</p>"
    )
    grantType: grantType,
    @ocaml.doc(
      "<p>A secret string generated for the client. This value should come from the persisted result of the <a>RegisterClient</a> API.</p>"
    )
    clientSecret: clientSecret,
    @ocaml.doc(
      "<p>The unique identifier string for each client. This value should come from the persisted result of the <a>RegisterClient</a> API.</p>"
    )
    clientId: clientId,
  }
  type response = {
    @ocaml.doc(
      "<p>The identifier of the user that associated with the access token, if present.</p>"
    )
    idToken: option<idToken>,
    @ocaml.doc("<p>A token that, if present, can be used to refresh a previously issued access token that
      might have expired.</p>")
    refreshToken: option<refreshToken>,
    @ocaml.doc("<p>Indicates the time in seconds when an access token will expire.</p>")
    expiresIn: option<expirationInSeconds>,
    @ocaml.doc("<p>Used to notify the client that the returned token is an access token. The supported type
      is <code>BearerToken</code>.</p>")
    tokenType: option<tokenType>,
    @ocaml.doc("<p>An opaque token to access AWS SSO resources assigned to a user.</p>")
    accessToken: option<accessToken>,
  }
  @module("@aws-sdk/client-awsssooidc") @new external new: request => t = "CreateTokenCommand"
  let make = (
    ~deviceCode,
    ~grantType,
    ~clientSecret,
    ~clientId,
    ~redirectUri=?,
    ~scope=?,
    ~refreshToken=?,
    ~code=?,
    (),
  ) => new({redirectUri, scope, refreshToken, code, deviceCode, grantType, clientSecret, clientId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
