type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type streamName = string
type startSelectorType = [@as("CONTINUATION_TOKEN") #CONTINUATION_TOKEN | @as("EARLIEST") #EARLIEST | @as("NOW") #NOW | @as("PRODUCER_TIMESTAMP") #PRODUCER_TIMESTAMP | @as("SERVER_TIMESTAMP") #SERVER_TIMESTAMP | @as("FRAGMENT_NUMBER") #FRAGMENT_NUMBER]
type resourceARN = string
type payload = NodeJs.Buffer.t;
type fragmentNumberString = string
type errorMessage = string
type continuationToken = string
type contentType = string
type startSelector = {
@as("ContinuationToken") continuationToken: continuationToken,
@as("StartTimestamp") startTimestamp: amazonawsTimestamp,
@as("AfterFragmentNumber") afterFragmentNumber: fragmentNumberString,
@as("StartSelectorType") startSelectorType: option<startSelectorType>
}
type clientType;
@module("@aws-sdk/client-kinesisvideo") @new external createClient: unit => clientType = "KinesisVideoMediaClient";
module GetMedia = {
  type t;
  type request = {
@as("StartSelector") startSelector: option<startSelector>,
@as("StreamARN") streamARN: resourceARN,
@as("StreamName") streamName: streamName
}
  type response = {
@as("Payload") payload: payload,
@as("ContentType") contentType: contentType
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "GetMediaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
