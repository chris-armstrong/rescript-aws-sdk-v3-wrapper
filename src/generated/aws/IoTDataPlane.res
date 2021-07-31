type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iotdata") @new
external createClient: unit => awsServiceClient = "IoTDataPlaneClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type errorMessage = string
type topic = string
type timestamp_ = float
type thingName = string
type shadowName = string
type qos = int
type payload = NodeJs.Buffer.t
type pageSize = int
type nextToken = string
type jsonDocument = NodeJs.Buffer.t
type namedShadowList = array<shadowName>

module UpdateThingShadow = {
  type t
  type request = {
    payload: jsonDocument,
    shadowName: option<shadowName>,
    thingName: thingName,
  }
  type response = {payload: option<jsonDocument>}
  @module("@aws-sdk/client-iotdata") @new external new_: request => t = "UpdateThingShadowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Publish = {
  type t
  type request = {
    payload: option<payload>,
    qos: option<qos>,
    topic: topic,
  }

  @module("@aws-sdk/client-iotdata") @new external new_: request => t = "PublishCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetThingShadow = {
  type t
  type request = {
    shadowName: option<shadowName>,
    thingName: thingName,
  }
  type response = {payload: option<jsonDocument>}
  @module("@aws-sdk/client-iotdata") @new external new_: request => t = "GetThingShadowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteThingShadow = {
  type t
  type request = {
    shadowName: option<shadowName>,
    thingName: thingName,
  }
  type response = {payload: jsonDocument}
  @module("@aws-sdk/client-iotdata") @new external new_: request => t = "DeleteThingShadowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNamedShadowsForThing = {
  type t
  type request = {
    pageSize: option<pageSize>,
    nextToken: option<nextToken>,
    thingName: thingName,
  }
  type response = {
    @as("timestamp") timestamp_: option<timestamp_>,
    nextToken: option<nextToken>,
    results: option<namedShadowList>,
  }
  @module("@aws-sdk/client-iotdata") @new
  external new_: request => t = "ListNamedShadowsForThingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
