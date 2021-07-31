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
external createClient: unit => awsServiceClient = "KinesisVideoMediaClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type streamName = string
type startSelectorType = [
  | @as("CONTINUATION_TOKEN") #CONTINUATION_TOKEN
  | @as("EARLIEST") #EARLIEST
  | @as("NOW") #NOW
  | @as("PRODUCER_TIMESTAMP") #PRODUCER_TIMESTAMP
  | @as("SERVER_TIMESTAMP") #SERVER_TIMESTAMP
  | @as("FRAGMENT_NUMBER") #FRAGMENT_NUMBER
]
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
  @as("StartSelectorType") startSelectorType: startSelectorType,
}

module GetMedia = {
  type t
  type request = {
    @as("StartSelector") startSelector: startSelector,
    @as("StreamARN") streamARN: option<resourceARN>,
    @as("StreamName") streamName: option<streamName>,
  }
  type response = {
    @as("Payload") payload: option<payload>,
    @as("ContentType") contentType: option<contentType>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new external new_: request => t = "GetMediaCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
