type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-appconfigdata") @new
external createClient: unit => awsServiceClient = "AppConfigDataClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type token = string
type string_ = string
type resourceType = [
  | @as("Configuration") #Configuration
  | @as("Environment") #Environment
  | @as("Deployment") #Deployment
  | @as("ConfigurationProfile") #ConfigurationProfile
  | @as("Application") #Application
]
type optionalPollSeconds = int
type invalidParameterProblem = [
  | @as("PollIntervalNotSatisfied") #PollIntervalNotSatisfied
  | @as("Expired") #Expired
  | @as("Corrupted") #Corrupted
]
type integer_ = int
type identifier = string
type id = string

type blob = NodeJs.Buffer.t
type badRequestReason = [@as("InvalidParameters") #InvalidParameters]
type stringMap = Js.Dict.t<string_>
@ocaml.doc("<p>Information about an invalid parameter.</p>")
type invalidParameterDetail = {
  @ocaml.doc("<p>The reason the parameter is invalid.</p>") @as("Problem")
  problem: option<invalidParameterProblem>,
}
type invalidParameterMap = Js.Dict.t<invalidParameterDetail>
@ocaml.doc("<p>Detailed information about the input that failed to satisfy the constraints specified by
         a call.</p>")
type badRequestDetails = {
  @ocaml.doc("<p>One or more specified parameters are not valid for the call.</p>")
  @as("InvalidParameters")
  invalidParameters: option<invalidParameterMap>,
}
module BadRequestDetails = {
  type t = InvalidParameters(invalidParameterMap)
  exception BadRequestDetailsUnspecified
  let classify = value =>
    switch value {
    | {invalidParameters: Some(x)} => InvalidParameters(x)
    | _ => raise(BadRequestDetailsUnspecified)
    }

  let make = value =>
    switch value {
    | InvalidParameters(x) => {invalidParameters: Some(x)}
    }
}
@ocaml.doc("<p>AppConfig Data provides the data plane APIs your application uses to retrieve configuration data.
         Here's how it works:</p>
         <p>Your application retrieves configuration data by first establishing a configuration
         session using the AppConfig Data <a>StartConfigurationSession</a> API action. Your session's
         client then makes periodic calls to <a>GetLatestConfiguration</a> to check for
         and retrieve the latest data available.</p>
         <p>When calling <code>StartConfigurationSession</code>, your code sends the following
         information:</p>
         <ul>
            <li>
               <p>Identifiers (ID or name) of an AppConfig application, environment, and
               configuration profile that the session tracks.</p>
            </li>
            <li>
               <p>(Optional) The minimum amount of time the session's client must wait between calls
               to <code>GetLatestConfiguration</code>.</p>
            </li>
         </ul>
         <p>In response, AppConfig provides an <code>InitialConfigurationToken</code> to be given to
         the session's client and used the first time it calls <code>GetLatestConfiguration</code>
         for that session.</p>
         <p>When calling <code>GetLatestConfiguration</code>, your client code sends the most recent
            <code>ConfigurationToken</code> value it has and receives in response:</p>
         <ul>
            <li>
               <p>
                  <code>NextPollConfigurationToken</code>: the <code>ConfigurationToken</code> value
               to use on the next call to <code>GetLatestConfiguration</code>.</p>
            </li>
            <li>
               <p>
                  <code>NextPollIntervalInSeconds</code>: the duration the client should wait before
               making its next call to <code>GetLatestConfiguration</code>. This duration may vary
               over the course of the session, so it should be used instead of the value sent on the
                  <code>StartConfigurationSession</code> call.</p>
            </li>
            <li>
               <p>The configuration: the latest data intended for the session. This may be empty if
               the client already has the latest version of the configuration.</p>
            </li>
         </ul>
         <p>For more information and to view example CLI commands that show how to retrieve a
         configuration using the AppConfig Data <code>StartConfigurationSession</code> and
            <code>GetLatestConfiguration</code> API actions, see <a href=\"http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration\">Receiving the
            configuration</a> in the <i>AppConfig User Guide</i>.</p>")
module StartConfigurationSession = {
  type t
  type request = {
    @ocaml.doc("<p>Sets a constraint on a session. If you specify a value of, for example, 60 seconds, then
         the client that established the session can't call <a>GetLatestConfiguration</a>
         more frequently then every 60 seconds.</p>")
    @as("RequiredMinimumPollIntervalInSeconds")
    requiredMinimumPollIntervalInSeconds: option<optionalPollSeconds>,
    @ocaml.doc("<p>The configuration profile ID or the configuration profile name.</p>")
    @as("ConfigurationProfileIdentifier")
    configurationProfileIdentifier: identifier,
    @ocaml.doc("<p>The environment ID or the environment name.</p>") @as("EnvironmentIdentifier")
    environmentIdentifier: identifier,
    @ocaml.doc("<p>The application ID or the application name.</p>") @as("ApplicationIdentifier")
    applicationIdentifier: identifier,
  }
  type response = {
    @ocaml.doc("<p>Token encapsulating state about the configuration session. Provide this token to the
            <code>GetLatestConfiguration</code> API to retrieve configuration data.</p>
         <important>
            <p>This token should only be used once in your first call to
               <code>GetLatestConfiguration</code>. You MUST use the new token in the
               <code>GetLatestConfiguration</code> response
            (<code>NextPollConfigurationToken</code>) in each subsequent call to
               <code>GetLatestConfiguration</code>.</p>
         </important>")
    @as("InitialConfigurationToken")
    initialConfigurationToken: option<token>,
  }
  @module("@aws-sdk/client-appconfigdata") @new
  external new: request => t = "StartConfigurationSessionCommand"
  let make = (
    ~configurationProfileIdentifier,
    ~environmentIdentifier,
    ~applicationIdentifier,
    ~requiredMinimumPollIntervalInSeconds=?,
    (),
  ) =>
    new({
      requiredMinimumPollIntervalInSeconds: requiredMinimumPollIntervalInSeconds,
      configurationProfileIdentifier: configurationProfileIdentifier,
      environmentIdentifier: environmentIdentifier,
      applicationIdentifier: applicationIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLatestConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Token describing the current state of the configuration session. To obtain a token,
         first call the <a>StartConfigurationSession</a> API. Note that every call to
            <code>GetLatestConfiguration</code> will return a new <code>ConfigurationToken</code>
            (<code>NextPollConfigurationToken</code> in the response) and MUST be provided to
         subsequent <code>GetLatestConfiguration</code> API calls.</p>")
    @as("ConfigurationToken")
    configurationToken: token,
  }
  type response = {
    @ocaml.doc("<p>The data of the configuration. This may be empty if the client already has the latest
         version of configuration.</p>")
    @as("Configuration")
    configuration: option<blob>,
    @ocaml.doc("<p>A standard MIME type describing the format of the configuration content.</p>")
    @as("ContentType")
    contentType: option<string_>,
    @ocaml.doc("<p>The amount of time the client should wait before polling for configuration updates
         again. Use <code>RequiredMinimumPollIntervalInSeconds</code> to set the desired poll
         interval.</p>")
    @as("NextPollIntervalInSeconds")
    nextPollIntervalInSeconds: option<integer_>,
    @ocaml.doc("<p>The latest token describing the current state of the configuration session. This MUST be
         provided to the next call to <code>GetLatestConfiguration.</code>
         </p>")
    @as("NextPollConfigurationToken")
    nextPollConfigurationToken: option<token>,
  }
  @module("@aws-sdk/client-appconfigdata") @new
  external new: request => t = "GetLatestConfigurationCommand"
  let make = (~configurationToken, ()) => new({configurationToken: configurationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
