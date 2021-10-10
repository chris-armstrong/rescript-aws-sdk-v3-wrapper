type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-apigateway") @new
external createClient: unit => awsServiceClient = "ApiGatewayManagementApiClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __timestampIso8601 = Js.Date.t
type __string = string
@ocaml.doc("<p>The data to be sent to the client specified by its connection id.</p>")
type data = NodeJs.Buffer.t
type identity = {
  @ocaml.doc("<p>The User Agent of the API caller.</p>") @as("UserAgent") userAgent: __string,
  @ocaml.doc(
    "<p>The source IP address of the TCP connection making the request to API Gateway.</p>"
  )
  @as("SourceIp")
  sourceIp: __string,
}
@ocaml.doc(
  "<p>The Amazon API Gateway Management API allows you to directly manage runtime aspects of your deployed APIs. To use it, you must explicitly set the SDK's endpoint to point to the endpoint of your deployed API. The endpoint will be of the form https://{api-id}.execute-api.{region}.amazonaws.com/{stage}, or will be the endpoint corresponding to your API's custom domain and base path, if applicable.</p>"
)
module PostToConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the connection that a specific client is using.</p>")
    @as("ConnectionId")
    connectionId: __string,
    @ocaml.doc("<p>The data to be sent to the client specified by its connection id.</p>")
    @as("Data")
    data: data,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "PostToConnectionCommand"
  let make = (~connectionId, ~data, ()) => new({connectionId: connectionId, data: data})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConnection = {
  type t
  type request = {@as("ConnectionId") connectionId: __string}

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteConnectionCommand"
  let make = (~connectionId, ()) => new({connectionId: connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetConnection = {
  type t
  type request = {@as("ConnectionId") connectionId: __string}
  type response = {
    @ocaml.doc("<p>The time in ISO 8601 format for when the connection was last active.</p>")
    @as("LastActiveAt")
    lastActiveAt: option<__timestampIso8601>,
    @as("Identity") identity: option<identity>,
    @ocaml.doc("<p>The time in ISO 8601 format for when the connection was established.</p>")
    @as("ConnectedAt")
    connectedAt: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetConnectionCommand"
  let make = (~connectionId, ()) => new({connectionId: connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
