type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type username = string
type uri = string
type ttl = int;
type service = [@as("TURN") #TURN]
type resourceARN = string
type password = string
type messagePayload = string
type errorMessage = string
type clientId = string
type answer = string
type uris = array<uri>
type iceServer = {
@as("Ttl") ttl: ttl,
@as("Password") password: password,
@as("Username") username: username,
@as("Uris") uris: uris
}
type iceServerList = array<iceServer>
type clientType;
@module("@aws-sdk/client-kinesisvideo") @new external createClient: unit => clientType = "KinesisVideoSignalingClient";
module SendAlexaOfferToMaster = {
  type t;
  type request = {
@as("MessagePayload") messagePayload: option<messagePayload>,
@as("SenderClientId") senderClientId: option<clientId>,
@as("ChannelARN") channelARN: option<resourceARN>
}
  type response = {
@as("Answer") answer: answer
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (Js.Promise.t<request>) => t = "SendAlexaOfferToMasterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIceServerConfig = {
  type t;
  type request = {
@as("Username") username: username,
@as("Service") service: service,
@as("ClientId") clientId: clientId,
@as("ChannelARN") channelARN: option<resourceARN>
}
  type response = {
@as("IceServerList") iceServerList: iceServerList
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (Js.Promise.t<request>) => t = "GetIceServerConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
