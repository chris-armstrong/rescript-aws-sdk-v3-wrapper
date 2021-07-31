type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type errorMessage = string
type topic = string
type amazonawsTimestamp = float;
type thingName = string
type shadowName = string
type qos = int;
type payload = NodeJs.Buffer.t;
type pageSize = int;
type nextToken = string
type jsonDocument = NodeJs.Buffer.t;
type namedShadowList = array<shadowName>
type clientType;
@module("@aws-sdk/client-iotdata") @new external createClient: unit => clientType = "IoTDataPlaneClient";
module UpdateThingShadow = {
  type t;
  type request = {
@as("payload") payload: option<jsonDocument>,
@as("shadowName") shadowName: shadowName,
@as("thingName") thingName: option<thingName>
}
  type response = {
@as("payload") payload: jsonDocument
}
  @module("@aws-sdk/client-iotdata") @new external new_: (request) => t = "UpdateThingShadowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Publish = {
  type t;
  type request = {
@as("payload") payload: payload,
@as("qos") qos: qos,
@as("topic") topic: option<topic>
}
  
  @module("@aws-sdk/client-iotdata") @new external new_: (request) => t = "PublishCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetThingShadow = {
  type t;
  type request = {
@as("shadowName") shadowName: shadowName,
@as("thingName") thingName: option<thingName>
}
  type response = {
@as("payload") payload: jsonDocument
}
  @module("@aws-sdk/client-iotdata") @new external new_: (request) => t = "GetThingShadowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteThingShadow = {
  type t;
  type request = {
@as("shadowName") shadowName: shadowName,
@as("thingName") thingName: option<thingName>
}
  type response = {
@as("payload") payload: option<jsonDocument>
}
  @module("@aws-sdk/client-iotdata") @new external new_: (request) => t = "DeleteThingShadowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNamedShadowsForThing = {
  type t;
  type request = {
@as("pageSize") pageSize: pageSize,
@as("nextToken") nextToken: nextToken,
@as("thingName") thingName: option<thingName>
}
  type response = {
@as("timestamp") timestamp: amazonawsTimestamp,
@as("nextToken") nextToken: nextToken,
@as("results") results: namedShadowList
}
  @module("@aws-sdk/client-iotdata") @new external new_: (request) => t = "ListNamedShadowsForThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
