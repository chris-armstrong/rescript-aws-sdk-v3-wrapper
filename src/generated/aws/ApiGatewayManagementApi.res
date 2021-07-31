type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __timestampIso8601 = Js.Date.t;
type __string = string
type data = NodeJs.Buffer.t;
type identity = {
@as("UserAgent") userAgent: option<__string>,
@as("SourceIp") sourceIp: option<__string>
}
type clientType;
@module("@aws-sdk/client-apigateway") @new external createClient: unit => clientType = "ApiGatewayManagementApiClient";
module PostToConnection = {
  type t;
  type request = {
@as("ConnectionId") connectionId: option<__string>,
@as("Data") data: option<data>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "PostToConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
@as("ConnectionId") connectionId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetConnection = {
  type t;
  type request = {
@as("ConnectionId") connectionId: option<__string>
}
  type response = {
@as("LastActiveAt") lastActiveAt: __timestampIso8601,
@as("Identity") identity: identity,
@as("ConnectedAt") connectedAt: __timestampIso8601
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
