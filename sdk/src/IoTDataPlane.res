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
type retain = bool
type qos = int
type payloadSize = float
type payload = NodeJs.Buffer.t
type pageSize = int
type nextToken = string
type maxResults = int
type jsonDocument = NodeJs.Buffer.t
@ocaml.doc("<p>Information about a single retained message.</p>")
type retainedMessageSummary = {
  @ocaml.doc(
    "<p>The Epoch date and time, in milliseconds, when the retained message was stored by IoT.</p>"
  )
  lastModifiedTime: option<timestamp_>,
  @ocaml.doc("<p>The quality of service (QoS) level used to publish the retained message.</p>")
  qos: option<qos>,
  @ocaml.doc("<p>The size of the retained message's payload in bytes.</p>")
  payloadSize: option<payloadSize>,
  @ocaml.doc("<p>The topic name to which the retained message was published.</p>")
  topic: option<topic>,
}
type namedShadowList = array<shadowName>
type retainedMessageList = array<retainedMessageSummary>
@ocaml.doc("<fullname>IoT data</fullname>
         <p>IoT data enables secure, bi-directional communication between Internet-connected things (such as sensors,
      actuators, embedded devices, or smart appliances) and the Amazon Web Services cloud. It implements a broker for applications and
      things to publish messages over HTTP (Publish) and retrieve, update, and delete shadows. A shadow is a
      persistent representation of your things and their state in the Amazon Web Services cloud.</p>
         <p>Find the endpoint address for actions in IoT data by running this CLI command:</p>
         <p>
            <code>aws iot describe-endpoint --endpoint-type iot:Data-ATS</code>
         </p>
         <p>The service name used by <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Amazon Web ServicesSignature Version 4</a>
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
    @ocaml.doc("<p>The message body. MQTT accepts text, binary, and empty (null) message payloads.</p>
         <p>Publishing an empty (null) payload with <b>retain</b> =
        <code>true</code> deletes the retained message identified by <b>topic</b> from Amazon Web Services IoT Core.</p>")
    payload: option<payload>,
    @ocaml.doc("<p>A Boolean value that determines whether to set the RETAIN flag when the message is published.</p>
         <p>Setting the RETAIN flag causes the message to be retained and sent to new subscribers to the topic.</p>
         <p>Valid values: <code>true</code> | <code>false</code>
         </p>
         <p>Default value: <code>false</code>
         </p>")
    retain: option<retain>,
    @ocaml.doc("<p>The Quality of Service (QoS) level.</p>") qos: option<qos>,
    @ocaml.doc("<p>The name of the MQTT topic.</p>") topic: topic,
  }
  type response = {.}
  @module("@aws-sdk/client-iotdata") @new external new: request => t = "PublishCommand"
  let make = (~topic, ~payload=?, ~retain=?, ~qos=?, ()) =>
    new({payload: payload, retain: retain, qos: qos, topic: topic})
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

module GetRetainedMessage = {
  type t
  @ocaml.doc("<p>The input for the GetRetainedMessage operation.</p>")
  type request = {
    @ocaml.doc("<p>The topic name of the retained message to retrieve.</p>") topic: topic,
  }
  @ocaml.doc("<p>The output from the GetRetainedMessage operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>The Epoch date and time, in milliseconds, when the retained message was stored by IoT.</p>"
    )
    lastModifiedTime: option<timestamp_>,
    @ocaml.doc("<p>The quality of service (QoS) level used to publish the retained message.</p>")
    qos: option<qos>,
    @ocaml.doc("<p>The Base64-encoded message payload of the retained message body.</p>")
    payload: option<payload>,
    @ocaml.doc("<p>The topic name to which the retained message was published.</p>")
    topic: option<topic>,
  }
  @module("@aws-sdk/client-iotdata") @new external new: request => t = "GetRetainedMessageCommand"
  let make = (~topic, ()) => new({topic: topic})
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
    @ocaml.doc("<p>The Epoch date and time the response was generated by IoT.</p>") @as("timestamp")
    timestamp_: option<timestamp_>,
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
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

module ListRetainedMessages = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
      value from a previous response; otherwise <b>null</b> to receive
      the first set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A summary list the account's retained messages. The information returned doesn't include
      the message payloads of the retained messages.</p>")
    retainedTopics: option<retainedMessageList>,
  }
  @module("@aws-sdk/client-iotdata") @new external new: request => t = "ListRetainedMessagesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
