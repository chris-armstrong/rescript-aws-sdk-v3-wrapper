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
@ocaml.doc("<fullname>AWS IoT</fullname>
         <p>AWS IoT-Data enables secure, bi-directional communication between Internet-connected things (such as sensors,
      actuators, embedded devices, or smart appliances) and the AWS cloud. It implements a broker for applications and
      things to publish messages over HTTP (Publish) and retrieve, update, and delete shadows. A shadow is a
      persistent representation of your things and their state in the AWS cloud.</p>
         <p>Find the endpoint address for actions in the AWS IoT data plane by running this CLI command:</p>
         <p>
            <code>aws iot describe-endpoint --endpoint-type iot:Data-ATS</code>
         </p>
         <p>The service name used by <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">AWS Signature Version 4</a>
      to sign requests is: <i>iotdevicegateway</i>.</p>")
module UpdateThingShadow = {
  type t
  @ocaml.doc("<p>The input for the UpdateThingShadow operation.</p>")
  type request = {
    @ocaml.doc("<p>The state information, in JSON format.</p>") payload: jsonDocument,
    @ocaml.doc("<p>The name of the shadow.</p>") shadowName: option<shadowName>,
    @ocaml.doc("<p>The name of the thing.</p>") thingName: thingName,
  }
  @ocaml.doc("<p>The output from the UpdateThingShadow operation.</p>")
  type response = {
    @ocaml.doc("<p>The state information, in JSON format.</p>") payload: option<jsonDocument>,
  }
  @module("@aws-sdk/client-iotdata") @new external new: request => t = "UpdateThingShadowCommand"
  let make = (~payload, ~thingName, ~shadowName=?, ()) =>
    new({payload: payload, shadowName: shadowName, thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Publish = {
  type t
  @ocaml.doc("<p>The input for the Publish operation.</p>")
  type request = {
    @ocaml.doc("<p>The state information, in JSON format.</p>") payload: option<payload>,
    @ocaml.doc("<p>The Quality of Service (QoS) level.</p>") qos: option<qos>,
    @ocaml.doc("<p>The name of the MQTT topic.</p>") topic: topic,
  }

  @module("@aws-sdk/client-iotdata") @new external new: request => t = "PublishCommand"
  let make = (~topic, ~payload=?, ~qos=?, ()) => new({payload: payload, qos: qos, topic: topic})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetThingShadow = {
  type t
  @ocaml.doc("<p>The input for the GetThingShadow operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the shadow.</p>") shadowName: option<shadowName>,
    @ocaml.doc("<p>The name of the thing.</p>") thingName: thingName,
  }
  @ocaml.doc("<p>The output from the GetThingShadow operation.</p>")
  type response = {
    @ocaml.doc("<p>The state information, in JSON format.</p>") payload: option<jsonDocument>,
  }
  @module("@aws-sdk/client-iotdata") @new external new: request => t = "GetThingShadowCommand"
  let make = (~thingName, ~shadowName=?, ()) => new({shadowName: shadowName, thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteThingShadow = {
  type t
  @ocaml.doc("<p>The input for the DeleteThingShadow operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the shadow.</p>") shadowName: option<shadowName>,
    @ocaml.doc("<p>The name of the thing.</p>") thingName: thingName,
  }
  @ocaml.doc("<p>The output from the DeleteThingShadow operation.</p>")
  type response = {
    @ocaml.doc("<p>The state information, in JSON format.</p>") payload: jsonDocument,
  }
  @module("@aws-sdk/client-iotdata") @new external new: request => t = "DeleteThingShadowCommand"
  let make = (~thingName, ~shadowName=?, ()) => new({shadowName: shadowName, thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNamedShadowsForThing = {
  type t
  type request = {
    @ocaml.doc("<p>The result page size.</p>") pageSize: option<pageSize>,
    @ocaml.doc("<p>The token to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the thing.</p>") thingName: thingName,
  }
  type response = {
    @ocaml.doc("<p>The Epoch date and time the response was generated by AWS IoT.</p>")
    @as("timestamp")
    timestamp_: option<timestamp_>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of shadows for the specified thing.</p>")
    results: option<namedShadowList>,
  }
  @module("@aws-sdk/client-iotdata") @new
  external new: request => t = "ListNamedShadowsForThingCommand"
  let make = (~thingName, ~pageSize=?, ~nextToken=?, ()) =>
    new({pageSize: pageSize, nextToken: nextToken, thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
