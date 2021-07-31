type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type streamName = string
type resourceARN = string
type payload = NodeJs.Buffer.t;
type nextToken = string
type amazonawsLong = float;
type listFragmentsMaxResults = float;
type hLSStreamingSessionURL = string
type hLSPlaybackMode = [@as("ON_DEMAND") #ON_DEMAND | @as("LIVE_REPLAY") #LIVE_REPLAY | @as("LIVE") #LIVE]
type hLSMaxResults = float;
type hLSFragmentSelectorType = [@as("SERVER_TIMESTAMP") #SERVER_TIMESTAMP | @as("PRODUCER_TIMESTAMP") #PRODUCER_TIMESTAMP]
type hLSDisplayFragmentTimestamp = [@as("NEVER") #NEVER | @as("ALWAYS") #ALWAYS]
type hLSDiscontinuityMode = [@as("ON_DISCONTINUITY") #ON_DISCONTINUITY | @as("NEVER") #NEVER | @as("ALWAYS") #ALWAYS]
type fragmentSelectorType = [@as("SERVER_TIMESTAMP") #SERVER_TIMESTAMP | @as("PRODUCER_TIMESTAMP") #PRODUCER_TIMESTAMP]
type fragmentNumberString = string
type expires = int;
type errorMessage = string
type dASHStreamingSessionURL = string
type dASHPlaybackMode = [@as("ON_DEMAND") #ON_DEMAND | @as("LIVE_REPLAY") #LIVE_REPLAY | @as("LIVE") #LIVE]
type dASHMaxResults = float;
type dASHFragmentSelectorType = [@as("SERVER_TIMESTAMP") #SERVER_TIMESTAMP | @as("PRODUCER_TIMESTAMP") #PRODUCER_TIMESTAMP]
type dASHDisplayFragmentTimestamp = [@as("NEVER") #NEVER | @as("ALWAYS") #ALWAYS]
type dASHDisplayFragmentNumber = [@as("NEVER") #NEVER | @as("ALWAYS") #ALWAYS]
type contentType = string
type containerFormat = [@as("MPEG_TS") #MPEG_TS | @as("FRAGMENTED_MP4") #FRAGMENTED_MP4]
type clipFragmentSelectorType = [@as("SERVER_TIMESTAMP") #SERVER_TIMESTAMP | @as("PRODUCER_TIMESTAMP") #PRODUCER_TIMESTAMP]
type timestampRange = {
@as("EndTimestamp") endTimestamp: option<amazonawsTimestamp>,
@as("StartTimestamp") startTimestamp: option<amazonawsTimestamp>
}
type hLSTimestampRange = {
@as("EndTimestamp") endTimestamp: amazonawsTimestamp,
@as("StartTimestamp") startTimestamp: amazonawsTimestamp
}
type fragmentNumberList = array<fragmentNumberString>
type fragment = {
@as("FragmentLengthInMilliseconds") fragmentLengthInMilliseconds: amazonawsLong,
@as("ServerTimestamp") serverTimestamp: amazonawsTimestamp,
@as("ProducerTimestamp") producerTimestamp: amazonawsTimestamp,
@as("FragmentSizeInBytes") fragmentSizeInBytes: amazonawsLong,
@as("FragmentNumber") fragmentNumber: fragmentNumberString
}
type dASHTimestampRange = {
@as("EndTimestamp") endTimestamp: amazonawsTimestamp,
@as("StartTimestamp") startTimestamp: amazonawsTimestamp
}
type clipTimestampRange = {
@as("EndTimestamp") endTimestamp: option<amazonawsTimestamp>,
@as("StartTimestamp") startTimestamp: option<amazonawsTimestamp>
}
type hLSFragmentSelector = {
@as("TimestampRange") timestampRange: hLSTimestampRange,
@as("FragmentSelectorType") fragmentSelectorType: hLSFragmentSelectorType
}
type fragmentSelector = {
@as("TimestampRange") timestampRange: option<timestampRange>,
@as("FragmentSelectorType") fragmentSelectorType: option<fragmentSelectorType>
}
type fragmentList = array<fragment>
type dASHFragmentSelector = {
@as("TimestampRange") timestampRange: dASHTimestampRange,
@as("FragmentSelectorType") fragmentSelectorType: dASHFragmentSelectorType
}
type clipFragmentSelector = {
@as("TimestampRange") timestampRange: option<clipTimestampRange>,
@as("FragmentSelectorType") fragmentSelectorType: option<clipFragmentSelectorType>
}
type clientType;
@module("@aws-sdk/client-kinesisvideo") @new external createClient: unit => clientType = "KinesisVideoArchivedMediaClient";
module GetMediaForFragmentList = {
  type t;
  type request = {
@as("Fragments") fragments: option<fragmentNumberList>,
@as("StreamARN") streamARN: resourceARN,
@as("StreamName") streamName: streamName
}
  type response = {
@as("Payload") payload: payload,
@as("ContentType") contentType: contentType
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (Js.Promise.t<request>) => t = "GetMediaForFragmentListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFragments = {
  type t;
  type request = {
@as("FragmentSelector") fragmentSelector: fragmentSelector,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: listFragmentsMaxResults,
@as("StreamARN") streamARN: resourceARN,
@as("StreamName") streamName: streamName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Fragments") fragments: fragmentList
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (Js.Promise.t<request>) => t = "ListFragmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetHLSStreamingSessionURL = {
  type t;
  type request = {
@as("MaxMediaPlaylistFragmentResults") maxMediaPlaylistFragmentResults: hLSMaxResults,
@as("Expires") expires: expires,
@as("DisplayFragmentTimestamp") displayFragmentTimestamp: hLSDisplayFragmentTimestamp,
@as("DiscontinuityMode") discontinuityMode: hLSDiscontinuityMode,
@as("ContainerFormat") containerFormat: containerFormat,
@as("HLSFragmentSelector") hLSFragmentSelector: hLSFragmentSelector,
@as("PlaybackMode") playbackMode: hLSPlaybackMode,
@as("StreamARN") streamARN: resourceARN,
@as("StreamName") streamName: streamName
}
  type response = {
@as("HLSStreamingSessionURL") hLSStreamingSessionURL: hLSStreamingSessionURL
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (Js.Promise.t<request>) => t = "GetHLSStreamingSessionURLCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDASHStreamingSessionURL = {
  type t;
  type request = {
@as("MaxManifestFragmentResults") maxManifestFragmentResults: dASHMaxResults,
@as("Expires") expires: expires,
@as("DASHFragmentSelector") dASHFragmentSelector: dASHFragmentSelector,
@as("DisplayFragmentNumber") displayFragmentNumber: dASHDisplayFragmentNumber,
@as("DisplayFragmentTimestamp") displayFragmentTimestamp: dASHDisplayFragmentTimestamp,
@as("PlaybackMode") playbackMode: dASHPlaybackMode,
@as("StreamARN") streamARN: resourceARN,
@as("StreamName") streamName: streamName
}
  type response = {
@as("DASHStreamingSessionURL") dASHStreamingSessionURL: dASHStreamingSessionURL
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (Js.Promise.t<request>) => t = "GetDASHStreamingSessionURLCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetClip = {
  type t;
  type request = {
@as("ClipFragmentSelector") clipFragmentSelector: option<clipFragmentSelector>,
@as("StreamARN") streamARN: resourceARN,
@as("StreamName") streamName: streamName
}
  type response = {
@as("Payload") payload: payload,
@as("ContentType") contentType: contentType
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (Js.Promise.t<request>) => t = "GetClipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
