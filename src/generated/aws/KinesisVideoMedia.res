type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type long = float
type timestamp_ = Js.Date.t;
type streamName = string
type startSelectorType = [@as("CONTINUATION_TOKEN") #CONTINUATIONTOKEN | @as("EARLIEST") #EARLIEST | @as("NOW") #NOW | @as("PRODUCER_TIMESTAMP") #PRODUCERTIMESTAMP | @as("SERVER_TIMESTAMP") #SERVERTIMESTAMP | @as("FRAGMENT_NUMBER") #FRAGMENTNUMBER]
type resourceARN = string
type payload = NodeJs.Buffer.t
type fragmentNumberString = string
type errorMessage = string
type continuationToken = string
type contentType = string
type startSelector = {
@as("ContinuationToken") continuationToken: option<continuationToken>,
@as("StartTimestamp") startTimestamp: option<timestamp_>,
@as("AfterFragmentNumber") afterFragmentNumber: option<fragmentNumberString>,
@as("StartSelectorType") startSelectorType: startSelectorType
}
type awsServiceClient;
@module("@aws-sdk/client-kinesisvideo") @new external createClient: unit => awsServiceClient = "KinesisVideoMediaClient";
module GetMedia = {
  type t;
  type request = {
@as("StartSelector") startSelector: startSelector,
@as("StreamARN") streamARN: option<resourceARN>,
@as("StreamName") streamName: option<streamName>
}
  type response = {
@as("Payload") payload: option<payload>,
@as("ContentType") contentType: option<contentType>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "GetMediaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
