type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-kinesisvideo") @new
external createClient: unit => awsServiceClient = "KinesisVideoSignalingClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type username = string
type uri = string
type ttl = int
type service = [@as("TURN") #TURN]
type resourceARN = string
type password = string
type messagePayload = string
type errorMessage = string
type clientId = string
type answer = string
type uris = array<uri>
@ocaml.doc("<p>A structure for the ICE server connection data.</p>")
type iceServer = {
  @ocaml.doc("<p>The period of time, in seconds, during which the username and password are
            valid.</p>")
  @as("Ttl")
  ttl: option<ttl>,
  @ocaml.doc("<p>A password to login to the ICE server.</p>") @as("Password")
  password: option<password>,
  @ocaml.doc("<p>A username to login to the ICE server.</p>") @as("Username")
  username: option<username>,
  @ocaml.doc("<p>An array of URIs, in the form specified in the <a href=\"https://tools.ietf.org/html/draft-petithuguenin-behave-turn-uris-03\">I-D.petithuguenin-behave-turn-uris</a> spec. These URIs provide the different
            addresses and/or protocols that can be used to reach the TURN server.</p>")
  @as("Uris")
  uris: option<uris>,
}
type iceServerList = array<iceServer>
@ocaml.doc("<p>Kinesis Video Streams Signaling Service is a intermediate service that establishes a
            communication channel for discovering peers, transmitting offers and answers in order to
            establish peer-to-peer connection in webRTC technology.</p>")
module SendAlexaOfferToMaster = {
  type t
  type request = {
    @ocaml.doc("<p>The base64-encoded SDP offer content.</p>") @as("MessagePayload")
    messagePayload: messagePayload,
    @ocaml.doc("<p>The unique identifier for the sender client.</p>") @as("SenderClientId")
    senderClientId: clientId,
    @ocaml.doc("<p>The ARN of the signaling channel by which Alexa and the master peer
            communicate.</p>")
    @as("ChannelARN")
    channelARN: resourceARN,
  }
  type response = {
    @ocaml.doc("<p>The base64-encoded SDP answer content.</p>") @as("Answer")
    answer: option<answer>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "SendAlexaOfferToMasterCommand"
  let make = (~messagePayload, ~senderClientId, ~channelARN, ()) =>
    new({messagePayload: messagePayload, senderClientId: senderClientId, channelARN: channelARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIceServerConfig = {
  type t
  type request = {
    @ocaml.doc("<p>An optional user ID to be associated with the credentials.</p>") @as("Username")
    username: option<username>,
    @ocaml.doc("<p>Specifies the desired service. Currently, <code>TURN</code> is the only valid
            value.</p>")
    @as("Service")
    service: option<service>,
    @ocaml.doc(
      "<p>Unique identifier for the viewer. Must be unique within the signaling channel.</p>"
    )
    @as("ClientId")
    clientId: option<clientId>,
    @ocaml.doc("<p>The ARN of the signaling channel to be used for the peer-to-peer connection between
            configured peers. </p>")
    @as("ChannelARN")
    channelARN: resourceARN,
  }
  type response = {
    @ocaml.doc("<p>The list of ICE server information objects.</p>") @as("IceServerList")
    iceServerList: option<iceServerList>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "GetIceServerConfigCommand"
  let make = (~channelARN, ~username=?, ~service=?, ~clientId=?, ()) =>
    new({username: username, service: service, clientId: clientId, channelARN: channelARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
