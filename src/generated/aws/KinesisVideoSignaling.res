type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-kinesisvideo") @new external createClient: unit => awsServiceClient = "KinesisVideoSignalingClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
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
type iceServer = {
@as("Ttl") ttl: option<ttl>,
  @as("Password") password: option<password>,
  @as("Username") username: option<username>,
  @as("Uris") uris: option<uris>
}
type iceServerList = array<iceServer>

module SendAlexaOfferToMaster = {
  type t;
  type request = {
@as("MessagePayload") messagePayload: messagePayload,
  @as("SenderClientId") senderClientId: clientId,
  @as("ChannelARN") channelARN: resourceARN
}
  type response = {
@as("Answer") answer: option<answer>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "SendAlexaOfferToMasterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIceServerConfig = {
  type t;
  type request = {
@as("Username") username: option<username>,
  @as("Service") service: option<service>,
  @as("ClientId") clientId: option<clientId>,
  @as("ChannelARN") channelARN: resourceARN
}
  type response = {
@as("IceServerList") iceServerList: option<iceServerList>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "GetIceServerConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
