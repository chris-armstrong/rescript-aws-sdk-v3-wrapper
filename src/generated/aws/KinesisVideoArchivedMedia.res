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
external createClient: unit => awsServiceClient = "KinesisVideoArchivedMediaClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type streamName = string
type resourceARN = string
type payload = NodeJs.Buffer.t
type nextToken = string
type long = float
type listFragmentsMaxResults = float
type hlsstreamingSessionURL = string
type hlsplaybackMode = [
  | @as("ON_DEMAND") #ON_DEMAND
  | @as("LIVE_REPLAY") #LIVE_REPLAY
  | @as("LIVE") #LIVE
]
type hlsmaxResults = float
type hlsfragmentSelectorType = [
  | @as("SERVER_TIMESTAMP") #SERVER_TIMESTAMP
  | @as("PRODUCER_TIMESTAMP") #PRODUCER_TIMESTAMP
]
type hlsdisplayFragmentTimestamp = [@as("NEVER") #NEVER | @as("ALWAYS") #ALWAYS]
type hlsdiscontinuityMode = [
  | @as("ON_DISCONTINUITY") #ON_DISCONTINUITY
  | @as("NEVER") #NEVER
  | @as("ALWAYS") #ALWAYS
]
type fragmentSelectorType = [
  | @as("SERVER_TIMESTAMP") #SERVER_TIMESTAMP
  | @as("PRODUCER_TIMESTAMP") #PRODUCER_TIMESTAMP
]
type fragmentNumberString = string
type expires = int
type errorMessage = string
type dashstreamingSessionURL = string
type dashplaybackMode = [
  | @as("ON_DEMAND") #ON_DEMAND
  | @as("LIVE_REPLAY") #LIVE_REPLAY
  | @as("LIVE") #LIVE
]
type dashmaxResults = float
type dashfragmentSelectorType = [
  | @as("SERVER_TIMESTAMP") #SERVER_TIMESTAMP
  | @as("PRODUCER_TIMESTAMP") #PRODUCER_TIMESTAMP
]
type dashdisplayFragmentTimestamp = [@as("NEVER") #NEVER | @as("ALWAYS") #ALWAYS]
type dashdisplayFragmentNumber = [@as("NEVER") #NEVER | @as("ALWAYS") #ALWAYS]
type contentType = string
type containerFormat = [@as("MPEG_TS") #MPEG_TS | @as("FRAGMENTED_MP4") #FRAGMENTED_MP4]
type clipFragmentSelectorType = [
  | @as("SERVER_TIMESTAMP") #SERVER_TIMESTAMP
  | @as("PRODUCER_TIMESTAMP") #PRODUCER_TIMESTAMP
]
type timestampRange = {
  @as("EndTimestamp") endTimestamp: timestamp_,
  @as("StartTimestamp") startTimestamp: timestamp_,
}
type hlstimestampRange = {
  @as("EndTimestamp") endTimestamp: option<timestamp_>,
  @as("StartTimestamp") startTimestamp: option<timestamp_>,
}
type fragmentNumberList = array<fragmentNumberString>
type fragment = {
  @as("FragmentLengthInMilliseconds") fragmentLengthInMilliseconds: option<long>,
  @as("ServerTimestamp") serverTimestamp: option<timestamp_>,
  @as("ProducerTimestamp") producerTimestamp: option<timestamp_>,
  @as("FragmentSizeInBytes") fragmentSizeInBytes: option<long>,
  @as("FragmentNumber") fragmentNumber: option<fragmentNumberString>,
}
type dashtimestampRange = {
  @as("EndTimestamp") endTimestamp: option<timestamp_>,
  @as("StartTimestamp") startTimestamp: option<timestamp_>,
}
type clipTimestampRange = {
  @as("EndTimestamp") endTimestamp: timestamp_,
  @as("StartTimestamp") startTimestamp: timestamp_,
}
type hlsfragmentSelector = {
  @as("TimestampRange") timestampRange: option<hlstimestampRange>,
  @as("FragmentSelectorType") fragmentSelectorType: option<hlsfragmentSelectorType>,
}
type fragmentSelector = {
  @as("TimestampRange") timestampRange: timestampRange,
  @as("FragmentSelectorType") fragmentSelectorType: fragmentSelectorType,
}
type fragmentList = array<fragment>
type dashfragmentSelector = {
  @as("TimestampRange") timestampRange: option<dashtimestampRange>,
  @as("FragmentSelectorType") fragmentSelectorType: option<dashfragmentSelectorType>,
}
type clipFragmentSelector = {
  @as("TimestampRange") timestampRange: clipTimestampRange,
  @as("FragmentSelectorType") fragmentSelectorType: clipFragmentSelectorType,
}

module GetMediaForFragmentList = {
  type t
  type request = {
    @as("Fragments") fragments: fragmentNumberList,
    @as("StreamARN") streamARN: option<resourceARN>,
    @as("StreamName") streamName: option<streamName>,
  }
  type response = {
    @as("Payload") payload: option<payload>,
    @as("ContentType") contentType: option<contentType>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "GetMediaForFragmentListCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFragments = {
  type t
  type request = {
    @as("FragmentSelector") fragmentSelector: option<fragmentSelector>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<listFragmentsMaxResults>,
    @as("StreamARN") streamARN: option<resourceARN>,
    @as("StreamName") streamName: option<streamName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Fragments") fragments: option<fragmentList>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "ListFragmentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetHLSStreamingSessionURL = {
  type t
  type request = {
    @as("MaxMediaPlaylistFragmentResults") maxMediaPlaylistFragmentResults: option<hlsmaxResults>,
    @as("Expires") expires: option<expires>,
    @as("DisplayFragmentTimestamp") displayFragmentTimestamp: option<hlsdisplayFragmentTimestamp>,
    @as("DiscontinuityMode") discontinuityMode: option<hlsdiscontinuityMode>,
    @as("ContainerFormat") containerFormat: option<containerFormat>,
    @as("HLSFragmentSelector") hlsfragmentSelector: option<hlsfragmentSelector>,
    @as("PlaybackMode") playbackMode: option<hlsplaybackMode>,
    @as("StreamARN") streamARN: option<resourceARN>,
    @as("StreamName") streamName: option<streamName>,
  }
  type response = {
    @as("HLSStreamingSessionURL") hlsstreamingSessionURL: option<hlsstreamingSessionURL>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "GetHLSStreamingSessionURLCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDASHStreamingSessionURL = {
  type t
  type request = {
    @as("MaxManifestFragmentResults") maxManifestFragmentResults: option<dashmaxResults>,
    @as("Expires") expires: option<expires>,
    @as("DASHFragmentSelector") dashfragmentSelector: option<dashfragmentSelector>,
    @as("DisplayFragmentNumber") displayFragmentNumber: option<dashdisplayFragmentNumber>,
    @as("DisplayFragmentTimestamp") displayFragmentTimestamp: option<dashdisplayFragmentTimestamp>,
    @as("PlaybackMode") playbackMode: option<dashplaybackMode>,
    @as("StreamARN") streamARN: option<resourceARN>,
    @as("StreamName") streamName: option<streamName>,
  }
  type response = {
    @as("DASHStreamingSessionURL") dashstreamingSessionURL: option<dashstreamingSessionURL>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "GetDASHStreamingSessionURLCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetClip = {
  type t
  type request = {
    @as("ClipFragmentSelector") clipFragmentSelector: clipFragmentSelector,
    @as("StreamARN") streamARN: option<resourceARN>,
    @as("StreamName") streamName: option<streamName>,
  }
  type response = {
    @as("Payload") payload: option<payload>,
    @as("ContentType") contentType: option<contentType>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "GetClipCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
