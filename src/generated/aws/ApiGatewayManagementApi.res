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
type data = NodeJs.Buffer.t
type identity = {
  @as("UserAgent") userAgent: __string,
  @as("SourceIp") sourceIp: __string,
}

module PostToConnection = {
  type t
  type request = {
    @as("ConnectionId") connectionId: __string,
    @as("Data") data: data,
  }

  @module("@aws-sdk/client-apigateway") @new external new_: request => t = "PostToConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConnection = {
  type t
  type request = {@as("ConnectionId") connectionId: __string}

  @module("@aws-sdk/client-apigateway") @new external new_: request => t = "DeleteConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetConnection = {
  type t
  type request = {@as("ConnectionId") connectionId: __string}
  type response = {
    @as("LastActiveAt") lastActiveAt: option<__timestampIso8601>,
    @as("Identity") identity: option<identity>,
    @as("ConnectedAt") connectedAt: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-apigateway") @new external new_: request => t = "GetConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
