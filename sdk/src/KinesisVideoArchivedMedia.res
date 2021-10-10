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
@ocaml.doc("<p>The range of timestamps for which to return fragments.</p>")
type timestampRange = {
  @ocaml.doc(
    "<p>The ending timestamp in the range of timestamps for which to return fragments.</p>"
  )
  @as("EndTimestamp")
  endTimestamp: timestamp_,
  @ocaml.doc("<p>The starting timestamp in the range of timestamps for which to return
            fragments.</p>")
  @as("StartTimestamp")
  startTimestamp: timestamp_,
}
@ocaml.doc("<p>The start and end of the timestamp range for the requested media.</p>
        <p>This value should not be present if <code>PlaybackType</code> is
            <code>LIVE</code>.</p>")
type hlstimestampRange = {
  @ocaml.doc("<p>The end of the timestamp range for the requested media. This value must be within 24
            hours of the specified <code>StartTimestamp</code>, and it must be later than the
                <code>StartTimestamp</code> value.</p>
        <p>If <code>FragmentSelectorType</code> for the request is <code>SERVER_TIMESTAMP</code>,
            this value must be in the past.</p>
        <p>The <code>EndTimestamp</code> value is required for <code>ON_DEMAND</code> mode, but
            optional for <code>LIVE_REPLAY</code> mode. If the <code>EndTimestamp</code> is not set
            for <code>LIVE_REPLAY</code> mode then the session will continue to include newly
            ingested fragments until the session expires.</p>
        <note>
            <p>This value is inclusive. The <code>EndTimestamp</code> is compared to the
                (starting) timestamp of the fragment. Fragments that start before the
                    <code>EndTimestamp</code> value and continue past it are included in the
                session.</p>
        </note>")
  @as("EndTimestamp")
  endTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The start of the timestamp range for the requested media.</p>
        <p>If the <code>HLSTimestampRange</code> value is specified, the
                <code>StartTimestamp</code> value is required. </p>
        <p>Only fragments that start exactly at or after <code>StartTimestamp</code> are included
            in the session. Fragments that start before <code>StartTimestamp</code> and continue
            past it aren't included in the session. If <code>FragmentSelectorType</code> is
                <code>SERVER_TIMESTAMP</code>, the <code>StartTimestamp</code> must be later than
            the stream head. </p>")
  @as("StartTimestamp")
  startTimestamp: option<timestamp_>,
}
type fragmentNumberList = array<fragmentNumberString>
@ocaml.doc("<p>Represents a segment of video or other time-delimited data.</p>")
type fragment = {
  @ocaml.doc("<p>The playback duration or other time value associated with the fragment.</p>")
  @as("FragmentLengthInMilliseconds")
  fragmentLengthInMilliseconds: option<long>,
  @ocaml.doc("<p>The timestamp from the AWS server corresponding to the fragment.</p>")
  @as("ServerTimestamp")
  serverTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The timestamp from the producer corresponding to the fragment.</p>")
  @as("ProducerTimestamp")
  producerTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The total fragment size, including information about the fragment and contained media
            data.</p>")
  @as("FragmentSizeInBytes")
  fragmentSizeInBytes: option<long>,
  @ocaml.doc("<p>The unique identifier of the fragment. This value monotonically increases based on the
            ingestion order.</p>")
  @as("FragmentNumber")
  fragmentNumber: option<fragmentNumberString>,
}
@ocaml.doc("<p>The start and end of the timestamp range for the requested media.</p>
        <p>This value should not be present if <code>PlaybackType</code> is
            <code>LIVE</code>.</p>
        <p>The values in <code>DASHimestampRange</code> are inclusive. Fragments that start
            exactly at or after the start time are included in the session. Fragments that start
            before the start time and continue past it are not included in the session.</p>")
type dashtimestampRange = {
  @ocaml.doc("<p>The end of the timestamp range for the requested media. This value must be within 24
            hours of the specified <code>StartTimestamp</code>, and it must be later than the
                <code>StartTimestamp</code> value.</p>
        <p>If <code>FragmentSelectorType</code> for the request is <code>SERVER_TIMESTAMP</code>,
            this value must be in the past.</p>

        <p>The <code>EndTimestamp</code> value is required for <code>ON_DEMAND</code> mode, but
            optional for <code>LIVE_REPLAY</code> mode. If the <code>EndTimestamp</code> is not set
            for <code>LIVE_REPLAY</code> mode then the session will continue to include newly
            ingested fragments until the session expires.</p>
        <note>
            <p>This value is inclusive. The <code>EndTimestamp</code> is compared to the
                (starting) timestamp of the fragment. Fragments that start before the
                    <code>EndTimestamp</code> value and continue past it are included in the
                session.</p>
        </note>")
  @as("EndTimestamp")
  endTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The start of the timestamp range for the requested media.</p>
        <p>If the <code>DASHTimestampRange</code> value is specified, the
                <code>StartTimestamp</code> value is required.</p>
        <p>Only fragments that start exactly at or after <code>StartTimestamp</code> are included
            in the session. Fragments that start before <code>StartTimestamp</code> and continue
            past it aren't included in the session. If <code>FragmentSelectorType</code> is
                <code>SERVER_TIMESTAMP</code>, the <code>StartTimestamp</code> must be later than
            the stream head. </p>")
  @as("StartTimestamp")
  startTimestamp: option<timestamp_>,
}
@ocaml.doc("<p>The range of timestamps for which to return fragments.</p>")
type clipTimestampRange = {
  @ocaml.doc("<p>The end of the timestamp range for the requested media.</p>
        <p>This value must be within 24 hours of the specified <code>StartTimestamp</code>, and
            it must be later than the <code>StartTimestamp</code> value. If
                <code>FragmentSelectorType</code> for the request is <code>SERVER_TIMESTAMP</code>,
            this value must be in the past. </p>
        <p>This value is inclusive. The <code>EndTimestamp</code> is compared to the (starting)
            timestamp of the fragment. Fragments that start before the <code>EndTimestamp</code>
            value and continue past it are included in the session. </p>")
  @as("EndTimestamp")
  endTimestamp: timestamp_,
  @ocaml.doc("<p>The starting timestamp in the range of timestamps for which to return fragments. </p>
        <p>Only fragments that start exactly at or after <code>StartTimestamp</code> are included
            in the session. Fragments that start before <code>StartTimestamp</code> and continue
            past it aren't included in the session. If <code>FragmentSelectorType</code> is
                <code>SERVER_TIMESTAMP</code>, the <code>StartTimestamp</code> must be later than
            the stream head. </p>")
  @as("StartTimestamp")
  startTimestamp: timestamp_,
}
@ocaml.doc("<p>Contains the range of timestamps for the requested media, and the source of the
            timestamps.</p>")
type hlsfragmentSelector = {
  @ocaml.doc("<p>The start and end of the timestamp range for the requested media.</p>
        <p>This value should not be present if <code>PlaybackType</code> is
            <code>LIVE</code>.</p>")
  @as("TimestampRange")
  timestampRange: option<hlstimestampRange>,
  @ocaml.doc("<p>The source of the timestamps for the requested media.</p>
        <p>When <code>FragmentSelectorType</code> is set to <code>PRODUCER_TIMESTAMP</code> and
                <a>GetHLSStreamingSessionURLInput$PlaybackMode</a> is
                <code>ON_DEMAND</code> or <code>LIVE_REPLAY</code>, the first fragment ingested with
            a producer timestamp within the specified <a>FragmentSelector$TimestampRange</a> is included in the media playlist. In
            addition, the fragments with producer timestamps within the <code>TimestampRange</code>
            ingested immediately following the first fragment (up to the <a>GetHLSStreamingSessionURLInput$MaxMediaPlaylistFragmentResults</a> value)
            are included. </p>
        <p>Fragments that have duplicate producer timestamps are deduplicated. This means that if
            producers are producing a stream of fragments with producer timestamps that are
            approximately equal to the true clock time, the HLS media playlists will contain all of
            the fragments within the requested timestamp range. If some fragments are ingested
            within the same time range and very different points in time, only the oldest ingested
            collection of fragments are returned.</p>
        <p>When <code>FragmentSelectorType</code> is set to <code>PRODUCER_TIMESTAMP</code> and
                <a>GetHLSStreamingSessionURLInput$PlaybackMode</a> is <code>LIVE</code>,
            the producer timestamps are used in the MP4 fragments and for deduplication. But the
            most recently ingested fragments based on server timestamps are included in the HLS
            media playlist. This means that even if fragments ingested in the past have producer
            timestamps with values now, they are not included in the HLS media playlist.</p>
        <p>The default is <code>SERVER_TIMESTAMP</code>.</p>")
  @as("FragmentSelectorType")
  fragmentSelectorType: option<hlsfragmentSelectorType>,
}
@ocaml.doc("<p>Describes the timestamp range and timestamp origin of a range of fragments.</p>
        <p>Only fragments with a start timestamp greater than or equal to the given start time
            and less than or equal to the end time are returned. For example, if a stream contains
            fragments with the following start timestamps: </p>
        <ul>
            <li>
                <p>00:00:00</p>
            </li>
            <li>
                <p>00:00:02</p>
            </li>
            <li>
                <p>00:00:04</p>
            </li>
            <li>
                <p>00:00:06</p>
            </li>
         </ul>
        <p> A fragment selector range with a start time of 00:00:01 and end time of 00:00:04
            would return the fragments with start times of 00:00:02 and 00:00:04. </p>")
type fragmentSelector = {
  @ocaml.doc("<p>The range of timestamps to return.</p>") @as("TimestampRange")
  timestampRange: timestampRange,
  @ocaml.doc("<p>The origin of the timestamps to use (Server or Producer).</p>")
  @as("FragmentSelectorType")
  fragmentSelectorType: fragmentSelectorType,
}
type fragmentList = array<fragment>
@ocaml.doc("<p>Contains the range of timestamps for the requested media, and the source of the
            timestamps. </p>")
type dashfragmentSelector = {
  @ocaml.doc("<p>The start and end of the timestamp range for the requested media.</p>
        <p>This value should not be present if <code>PlaybackType</code> is
            <code>LIVE</code>.</p>")
  @as("TimestampRange")
  timestampRange: option<dashtimestampRange>,
  @ocaml.doc("<p>The source of the timestamps for the requested media.</p>
        <p>When <code>FragmentSelectorType</code> is set to <code>PRODUCER_TIMESTAMP</code> and
                <a>GetDASHStreamingSessionURLInput$PlaybackMode</a> is
                <code>ON_DEMAND</code> or <code>LIVE_REPLAY</code>, the first fragment ingested with
            a producer timestamp within the specified <a>FragmentSelector$TimestampRange</a> is included in the media playlist. In
            addition, the fragments with producer timestamps within the <code>TimestampRange</code>
            ingested immediately following the first fragment (up to the <a>GetDASHStreamingSessionURLInput$MaxManifestFragmentResults</a> value) are
            included. </p>
        <p>Fragments that have duplicate producer timestamps are deduplicated. This means that if
            producers are producing a stream of fragments with producer timestamps that are
            approximately equal to the true clock time, the MPEG-DASH manifest will contain all of
            the fragments within the requested timestamp range. If some fragments are ingested
            within the same time range and very different points in time, only the oldest ingested
            collection of fragments are returned.</p>
        <p>When <code>FragmentSelectorType</code> is set to <code>PRODUCER_TIMESTAMP</code> and
                <a>GetDASHStreamingSessionURLInput$PlaybackMode</a> is <code>LIVE</code>,
            the producer timestamps are used in the MP4 fragments and for deduplication. But the
            most recently ingested fragments based on server timestamps are included in the
            MPEG-DASH manifest. This means that even if fragments ingested in the past have producer
            timestamps with values now, they are not included in the HLS media playlist.</p>
        <p>The default is <code>SERVER_TIMESTAMP</code>.</p>")
  @as("FragmentSelectorType")
  fragmentSelectorType: option<dashfragmentSelectorType>,
}
@ocaml.doc("<p>Describes the timestamp range and timestamp origin of a range of fragments.</p>
        <p>Fragments that have duplicate producer timestamps are deduplicated. This means that if
            producers are producing a stream of fragments with producer timestamps that are
            approximately equal to the true clock time, the clip will contain all of the fragments
            within the requested timestamp range. If some fragments are ingested within the same
            time range and very different points in time, only the oldest ingested collection of
            fragments are returned.</p>")
type clipFragmentSelector = {
  @ocaml.doc("<p>The range of timestamps to return.</p>") @as("TimestampRange")
  timestampRange: clipTimestampRange,
  @ocaml.doc("<p>The origin of the timestamps to use (Server or Producer).</p>")
  @as("FragmentSelectorType")
  fragmentSelectorType: clipFragmentSelectorType,
}
@ocaml.doc("<p></p>")
module GetMediaForFragmentList = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the numbers of fragments for which to retrieve media. You retrieve these
            values with <a>ListFragments</a>.</p>")
    @as("Fragments")
    fragments: fragmentNumberList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the stream from which to retrieve fragment media. Specify either this parameter or the <code>StreamName</code> parameter.</p>"
    )
    @as("StreamARN")
    streamARN: option<resourceARN>,
    @ocaml.doc(
      "<p>The name of the stream from which to retrieve fragment media. Specify either this parameter or the <code>StreamARN</code> parameter.</p>"
    )
    @as("StreamName")
    streamName: option<streamName>,
  }
  type response = {
    @ocaml.doc("<p>The payload that Kinesis Video Streams returns is a sequence of chunks from the
            specified stream. For information about the chunks, see <a href=\"http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_PutMedia.html\">PutMedia</a>. The chunks that Kinesis Video Streams returns in the
                <code>GetMediaForFragmentList</code> call also include the following additional
            Matroska (MKV) tags: </p>
        <ul>
            <li>
                <p>AWS_KINESISVIDEO_FRAGMENT_NUMBER - Fragment number returned in the
                    chunk.</p>
            </li>
            <li>
                <p>AWS_KINESISVIDEO_SERVER_SIDE_TIMESTAMP - Server-side timestamp of the
                    fragment.</p>
            </li>
            <li>
                <p>AWS_KINESISVIDEO_PRODUCER_SIDE_TIMESTAMP - Producer-side timestamp of the
                    fragment.</p>
            </li>
         </ul>
        <p>The following tags will be included if an exception occurs:</p>
        <ul>
            <li>
                <p>AWS_KINESISVIDEO_FRAGMENT_NUMBER - The number of the fragment that threw the
                    exception</p>
            </li>
            <li>
                <p>AWS_KINESISVIDEO_EXCEPTION_ERROR_CODE - The integer code of the
                    exception</p>
            </li>
            <li>
                <p>AWS_KINESISVIDEO_EXCEPTION_MESSAGE - A text description of the
                    exception</p>
            </li>
         </ul>")
    @as("Payload")
    payload: option<payload>,
    @ocaml.doc("<p>The content type of the requested media.</p>") @as("ContentType")
    contentType: option<contentType>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "GetMediaForFragmentListCommand"
  let make = (~fragments, ~streamARN=?, ~streamName=?, ()) =>
    new({fragments: fragments, streamARN: streamARN, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFragments = {
  type t
  type request = {
    @ocaml.doc("<p>Describes the timestamp range and timestamp origin for the range of fragments to
            return.</p>")
    @as("FragmentSelector")
    fragmentSelector: option<fragmentSelector>,
    @ocaml.doc("<p>A token to specify where to start paginating. This is the <a>ListFragmentsOutput$NextToken</a> from a previously truncated
            response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The total number of fragments to return. If the total number of fragments available is
            more than the value specified in <code>max-results</code>, then a <a>ListFragmentsOutput$NextToken</a> is provided in the output that you can use
            to resume pagination.</p>")
    @as("MaxResults")
    maxResults: option<listFragmentsMaxResults>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the stream from which to retrieve a fragment list. Specify either this parameter or the <code>StreamName</code> parameter.</p>"
    )
    @as("StreamARN")
    streamARN: option<resourceARN>,
    @ocaml.doc(
      "<p>The name of the stream from which to retrieve a fragment list. Specify either this parameter or the <code>StreamARN</code> parameter.</p>"
    )
    @as("StreamName")
    streamName: option<streamName>,
  }
  type response = {
    @ocaml.doc("<p>If the returned list is truncated, the operation returns this token to use to retrieve
            the next page of results. This value is <code>null</code> when there are no more results
            to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of archived <a>Fragment</a> objects from the stream that meet the
            selector criteria. Results are in no specific order, even across pages.</p>")
    @as("Fragments")
    fragments: option<fragmentList>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "ListFragmentsCommand"
  let make = (~fragmentSelector=?, ~nextToken=?, ~maxResults=?, ~streamARN=?, ~streamName=?, ()) =>
    new({
      fragmentSelector: fragmentSelector,
      nextToken: nextToken,
      maxResults: maxResults,
      streamARN: streamARN,
      streamName: streamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetHLSStreamingSessionURL = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of fragments that are returned in the HLS media playlists.</p>
        <p>When the <code>PlaybackMode</code> is <code>LIVE</code>, the most recent fragments are
            returned up to this value. When the <code>PlaybackMode</code> is <code>ON_DEMAND</code>,
            the oldest fragments are returned, up to this maximum number.</p>
        <p>When there are a higher number of fragments available in a live HLS media playlist,
            video players often buffer content before starting playback. Increasing the buffer size
            increases the playback latency, but it decreases the likelihood that rebuffering will
            occur during playback. We recommend that a live HLS media playlist have a minimum of 3
            fragments and a maximum of 10 fragments.</p>
        <p>The default is 5 fragments if <code>PlaybackMode</code> is <code>LIVE</code> or
                <code>LIVE_REPLAY</code>, and 1,000 if <code>PlaybackMode</code> is
                <code>ON_DEMAND</code>. </p>
        <p>The maximum value of 5,000 fragments corresponds to more than 80 minutes of video on
            streams with 1-second fragments, and more than 13 hours of video on streams with
            10-second fragments.</p>")
    @as("MaxMediaPlaylistFragmentResults")
    maxMediaPlaylistFragmentResults: option<hlsmaxResults>,
    @ocaml.doc("<p>The time in seconds until the requested session expires. This value can be between 300
            (5 minutes) and 43200 (12 hours).</p>
        <p>When a session expires, no new calls to <code>GetHLSMasterPlaylist</code>,
                <code>GetHLSMediaPlaylist</code>, <code>GetMP4InitFragment</code>,
                <code>GetMP4MediaFragment</code>, or <code>GetTSFragment</code> can be made for that
            session.</p>
        <p>The default is 300 (5 minutes).</p>")
    @as("Expires")
    expires: option<expires>,
    @ocaml.doc("<p>Specifies when the fragment start timestamps should be included in the HLS media
            playlist. Typically, media players report the playhead position as a time relative to
            the start of the first fragment in the playback session. However, when the start
            timestamps are included in the HLS media playlist, some media players might report the
            current playhead as an absolute time based on the fragment timestamps. This can be
            useful for creating a playback experience that shows viewers the wall-clock time of the
            media.</p>
        <p>The default is <code>NEVER</code>. When <a>HLSFragmentSelector</a> is
                <code>SERVER_TIMESTAMP</code>, the timestamps will be the server start timestamps.
            Similarly, when <a>HLSFragmentSelector</a> is
            <code>PRODUCER_TIMESTAMP</code>, the timestamps will be the producer start timestamps.
        </p>")
    @as("DisplayFragmentTimestamp")
    displayFragmentTimestamp: option<hlsdisplayFragmentTimestamp>,
    @ocaml.doc("<p>Specifies when flags marking discontinuities between fragments are added to the media
            playlists.</p>
        <p>Media players typically build a timeline of media content to play, based on the
            timestamps of each fragment. This means that if there is any overlap or gap between
            fragments (as is typical if <a>HLSFragmentSelector</a> is set to
                <code>SERVER_TIMESTAMP</code>), the media player timeline will also have small gaps
            between fragments in some places, and will overwrite frames in other places. Gaps in the
            media player timeline can cause playback to stall and overlaps can cause playback to be
            jittery. When there are discontinuity flags between fragments, the media player is
            expected to reset the timeline, resulting in the next fragment being played immediately
            after the previous fragment. </p>
        <p>The following modes are supported:</p>
        <ul>
            <li>
                <p>
                    <code>ALWAYS</code>: a discontinuity marker is placed between every fragment in
                    the HLS media playlist. It is recommended to use a value of <code>ALWAYS</code>
                    if the fragment timestamps are not accurate.</p>
            </li>
            <li>
                <p>
                    <code>NEVER</code>: no discontinuity markers are placed anywhere. It is
                    recommended to use a value of <code>NEVER</code> to ensure the media player
                    timeline most accurately maps to the producer timestamps. </p>
            </li>
            <li>
                <p>
                    <code>ON_DISCONTINUITY</code>: a discontinuity marker is placed between
                    fragments that have a gap or overlap of more than 50 milliseconds. For most
                    playback scenarios, it is recommended to use a value of
                        <code>ON_DISCONTINUITY</code> so that the media player timeline is only
                    reset when there is a significant issue with the media timeline (e.g. a missing
                    fragment).</p>
            </li>
         </ul>
        <p>The default is <code>ALWAYS</code> when <a>HLSFragmentSelector</a> is set
            to <code>SERVER_TIMESTAMP</code>, and <code>NEVER</code> when it is set to
                <code>PRODUCER_TIMESTAMP</code>.</p>")
    @as("DiscontinuityMode")
    discontinuityMode: option<hlsdiscontinuityMode>,
    @ocaml.doc("<p>Specifies which format should be used for packaging the media. Specifying the
                <code>FRAGMENTED_MP4</code> container format packages the media into MP4 fragments
            (fMP4 or CMAF). This is the recommended packaging because there is minimal packaging
            overhead. The other container format option is <code>MPEG_TS</code>. HLS has supported
            MPEG TS chunks since it was released and is sometimes the only supported packaging on
            older HLS players. MPEG TS typically has a 5-25 percent packaging overhead. This means
            MPEG TS typically requires 5-25 percent more bandwidth and cost than fMP4.</p>
        <p>The default is <code>FRAGMENTED_MP4</code>.</p>")
    @as("ContainerFormat")
    containerFormat: option<containerFormat>,
    @ocaml.doc("<p>The time range of the requested fragment and the source of the timestamps.</p>
        <p>This parameter is required if <code>PlaybackMode</code> is <code>ON_DEMAND</code> or
                <code>LIVE_REPLAY</code>. This parameter is optional if PlaybackMode is<code></code>
            <code>LIVE</code>. If <code>PlaybackMode</code> is <code>LIVE</code>, the
                <code>FragmentSelectorType</code> can be set, but the <code>TimestampRange</code>
            should not be set. If <code>PlaybackMode</code> is <code>ON_DEMAND</code> or
                <code>LIVE_REPLAY</code>, both <code>FragmentSelectorType</code> and
                <code>TimestampRange</code> must be set.</p>")
    @as("HLSFragmentSelector")
    hlsfragmentSelector: option<hlsfragmentSelector>,
    @ocaml.doc("<p>Whether to retrieve live, live replay, or archived, on-demand data.</p>
        <p>Features of the three types of sessions include the following:</p>
        <ul>
            <li>
                <p>
                    <b>
                        <code>LIVE</code>
                    </b>: For sessions of this type, the HLS media playlist is continually
                    updated with the latest fragments as they become available. We recommend that
                    the media player retrieve a new playlist on a one-second interval. When this
                    type of session is played in a media player, the user interface typically
                    displays a \"live\" notification, with no scrubber control for choosing the
                    position in the playback window to display.</p>
                <note>
                    <p>In <code>LIVE</code> mode, the newest available fragments are included in
                        an HLS media playlist, even if there is a gap between fragments (that is, if
                        a fragment is missing). A gap like this might cause a media player to halt
                        or cause a jump in playback. In this mode, fragments are not added to the
                        HLS media playlist if they are older than the newest fragment in the
                        playlist. If the missing fragment becomes available after a subsequent
                        fragment is added to the playlist, the older fragment is not added, and the
                        gap is not filled.</p>
                </note>
            </li>
            <li>
                <p>
                    <b>
                        <code>LIVE_REPLAY</code>
                    </b>: For sessions of this type, the HLS media playlist is updated
                    similarly to how it is updated for <code>LIVE</code> mode except that it starts
                    by including fragments from a given start time. Instead of fragments being added
                    as they are ingested, fragments are added as the duration of the next fragment
                    elapses. For example, if the fragments in the session are two seconds long, then
                    a new fragment is added to the media playlist every two seconds. This mode is
                    useful to be able to start playback from when an event is detected and continue
                    live streaming media that has not yet been ingested as of the time of the
                    session creation. This mode is also useful to stream previously archived media
                    without being limited by the 1,000 fragment limit in the <code>ON_DEMAND</code>
                    mode. </p>
            </li>
            <li>
                <p>
                    <b>
                        <code>ON_DEMAND</code>
                    </b>: For sessions of this type, the HLS media playlist contains all the
                    fragments for the session, up to the number that is specified in
                        <code>MaxMediaPlaylistFragmentResults</code>. The playlist must be retrieved
                    only once for each session. When this type of session is played in a media
                    player, the user interface typically displays a scrubber control for choosing
                    the position in the playback window to display.</p>
            </li>
         </ul>
        <p>In all playback modes, if <code>FragmentSelectorType</code> is
                <code>PRODUCER_TIMESTAMP</code>, and if there are multiple fragments with the same
            start timestamp, the fragment that has the largest fragment number (that is, the newest
            fragment) is included in the HLS media playlist. The other fragments are not included.
            Fragments that have different timestamps but have overlapping durations are still
            included in the HLS media playlist. This can lead to unexpected behavior in the media
            player.</p>
        <p>The default is <code>LIVE</code>.</p>")
    @as("PlaybackMode")
    playbackMode: option<hlsplaybackMode>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stream for which to retrieve the HLS master
            playlist URL.</p>
        <p>You must specify either the <code>StreamName</code> or the
            <code>StreamARN</code>.</p>")
    @as("StreamARN")
    streamARN: option<resourceARN>,
    @ocaml.doc("<p>The name of the stream for which to retrieve the HLS master playlist URL.</p>
        <p>You must specify either the <code>StreamName</code> or the
            <code>StreamARN</code>.</p>")
    @as("StreamName")
    streamName: option<streamName>,
  }
  type response = {
    @ocaml.doc("<p>The URL (containing the session token) that a media player can use to retrieve the HLS
            master playlist.</p>")
    @as("HLSStreamingSessionURL")
    hlsstreamingSessionURL: option<hlsstreamingSessionURL>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "GetHLSStreamingSessionURLCommand"
  let make = (
    ~maxMediaPlaylistFragmentResults=?,
    ~expires=?,
    ~displayFragmentTimestamp=?,
    ~discontinuityMode=?,
    ~containerFormat=?,
    ~hlsfragmentSelector=?,
    ~playbackMode=?,
    ~streamARN=?,
    ~streamName=?,
    (),
  ) =>
    new({
      maxMediaPlaylistFragmentResults: maxMediaPlaylistFragmentResults,
      expires: expires,
      displayFragmentTimestamp: displayFragmentTimestamp,
      discontinuityMode: discontinuityMode,
      containerFormat: containerFormat,
      hlsfragmentSelector: hlsfragmentSelector,
      playbackMode: playbackMode,
      streamARN: streamARN,
      streamName: streamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDASHStreamingSessionURL = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of fragments that are returned in the MPEG-DASH manifest.</p>
        <p>When the <code>PlaybackMode</code> is <code>LIVE</code>, the most recent fragments are
            returned up to this value. When the <code>PlaybackMode</code> is <code>ON_DEMAND</code>,
            the oldest fragments are returned, up to this maximum number.</p>
        <p>When there are a higher number of fragments available in a live MPEG-DASH manifest,
            video players often buffer content before starting playback. Increasing the buffer size
            increases the playback latency, but it decreases the likelihood that rebuffering will
            occur during playback. We recommend that a live MPEG-DASH manifest have a minimum of 3
            fragments and a maximum of 10 fragments.</p>
        <p>The default is 5 fragments if <code>PlaybackMode</code> is <code>LIVE</code> or
                <code>LIVE_REPLAY</code>, and 1,000 if <code>PlaybackMode</code> is
                <code>ON_DEMAND</code>. </p>
        <p>The maximum value of 1,000 fragments corresponds to more than 16 minutes of video on
            streams with 1-second fragments, and more than 2 1/2 hours of video on streams with
            10-second fragments.</p>")
    @as("MaxManifestFragmentResults")
    maxManifestFragmentResults: option<dashmaxResults>,
    @ocaml.doc("<p>The time in seconds until the requested session expires. This value can be between 300
            (5 minutes) and 43200 (12 hours).</p>
        <p>When a session expires, no new calls to <code>GetDashManifest</code>,
                <code>GetMP4InitFragment</code>, or <code>GetMP4MediaFragment</code> can be made for
            that session.</p>
        <p>The default is 300 (5 minutes).</p>")
    @as("Expires")
    expires: option<expires>,
    @ocaml.doc("<p>The time range of the requested fragment and the source of the timestamps.</p>
        <p>This parameter is required if <code>PlaybackMode</code> is <code>ON_DEMAND</code> or
                <code>LIVE_REPLAY</code>. This parameter is optional if PlaybackMode is<code></code>
            <code>LIVE</code>. If <code>PlaybackMode</code> is <code>LIVE</code>, the
                <code>FragmentSelectorType</code> can be set, but the <code>TimestampRange</code>
            should not be set. If <code>PlaybackMode</code> is <code>ON_DEMAND</code> or
                <code>LIVE_REPLAY</code>, both <code>FragmentSelectorType</code> and
                <code>TimestampRange</code> must be set.</p>")
    @as("DASHFragmentSelector")
    dashfragmentSelector: option<dashfragmentSelector>,
    @ocaml.doc("<p>Fragments are identified in the manifest file based on their sequence number in the
            session. If DisplayFragmentNumber is set to <code>ALWAYS</code>, the Kinesis Video
            Streams fragment number is added to each S element in the manifest file with the
            attribute name “kvs:fn”. These fragment numbers can be used for logging or for use with
            other APIs (e.g. <code>GetMedia</code> and <code>GetMediaForFragmentList</code>). A
            custom MPEG-DASH media player is necessary to leverage these this custom
            attribute.</p>
        <p>The default value is <code>NEVER</code>.</p>")
    @as("DisplayFragmentNumber")
    displayFragmentNumber: option<dashdisplayFragmentNumber>,
    @ocaml.doc("<p>Per the MPEG-DASH specification, the wall-clock time of fragments in the manifest file
            can be derived using attributes in the manifest itself. However, typically, MPEG-DASH
            compatible media players do not properly handle gaps in the media timeline. Kinesis
            Video Streams adjusts the media timeline in the manifest file to enable playback of
            media with discontinuities. Therefore, the wall-clock time derived from the manifest
            file may be inaccurate. If DisplayFragmentTimestamp is set to <code>ALWAYS</code>, the
            accurate fragment timestamp is added to each S element in the manifest file with the
            attribute name “kvs:ts”. A custom MPEG-DASH media player is necessary to leverage this
            custom attribute.</p>
        <p>The default value is <code>NEVER</code>. When <a>DASHFragmentSelector</a>
            is <code>SERVER_TIMESTAMP</code>, the timestamps will be the server start timestamps.
            Similarly, when <a>DASHFragmentSelector</a> is
                <code>PRODUCER_TIMESTAMP</code>, the timestamps will be the producer start
            timestamps. </p>")
    @as("DisplayFragmentTimestamp")
    displayFragmentTimestamp: option<dashdisplayFragmentTimestamp>,
    @ocaml.doc("<p>Whether to retrieve live, live replay, or archived, on-demand data.</p>
        <p>Features of the three types of sessions include the following:</p>
        <ul>
            <li>
                <p>
                    <b>
                        <code>LIVE</code>
                    </b>: For sessions of this type, the MPEG-DASH manifest is continually
                    updated with the latest fragments as they become available. We recommend that
                    the media player retrieve a new manifest on a one-second interval. When this
                    type of session is played in a media player, the user interface typically
                    displays a \"live\" notification, with no scrubber control for choosing the
                    position in the playback window to display.</p>
                <note>
                    <p>In <code>LIVE</code> mode, the newest available fragments are included in
                        an MPEG-DASH manifest, even if there is a gap between fragments (that is, if
                        a fragment is missing). A gap like this might cause a media player to halt
                        or cause a jump in playback. In this mode, fragments are not added to the
                        MPEG-DASH manifest if they are older than the newest fragment in the
                        playlist. If the missing fragment becomes available after a subsequent
                        fragment is added to the manifest, the older fragment is not added, and the
                        gap is not filled.</p>
                </note>
            </li>
            <li>
                <p>
                    <b>
                        <code>LIVE_REPLAY</code>
                    </b>: For sessions of this type, the MPEG-DASH manifest is updated
                    similarly to how it is updated for <code>LIVE</code> mode except that it starts
                    by including fragments from a given start time. Instead of fragments being added
                    as they are ingested, fragments are added as the duration of the next fragment
                    elapses. For example, if the fragments in the session are two seconds long, then
                    a new fragment is added to the manifest every two seconds. This mode is useful
                    to be able to start playback from when an event is detected and continue live
                    streaming media that has not yet been ingested as of the time of the session
                    creation. This mode is also useful to stream previously archived media without
                    being limited by the 1,000 fragment limit in the <code>ON_DEMAND</code> mode.
                </p>
            </li>
            <li>
                <p>
                    <b>
                        <code>ON_DEMAND</code>
                    </b>: For sessions of this type, the MPEG-DASH manifest contains all the
                    fragments for the session, up to the number that is specified in
                        <code>MaxManifestFragmentResults</code>. The manifest must be retrieved only
                    once for each session. When this type of session is played in a media player,
                    the user interface typically displays a scrubber control for choosing the
                    position in the playback window to display.</p>
            </li>
         </ul>
        <p>In all playback modes, if <code>FragmentSelectorType</code> is
                <code>PRODUCER_TIMESTAMP</code>, and if there are multiple fragments with the same
            start timestamp, the fragment that has the larger fragment number (that is, the newer
            fragment) is included in the MPEG-DASH manifest. The other fragments are not included.
            Fragments that have different timestamps but have overlapping durations are still
            included in the MPEG-DASH manifest. This can lead to unexpected behavior in the media
            player.</p>
        <p>The default is <code>LIVE</code>.</p>")
    @as("PlaybackMode")
    playbackMode: option<dashplaybackMode>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stream for which to retrieve the MPEG-DASH
            manifest URL.</p>
        <p>You must specify either the <code>StreamName</code> or the
            <code>StreamARN</code>.</p>")
    @as("StreamARN")
    streamARN: option<resourceARN>,
    @ocaml.doc("<p>The name of the stream for which to retrieve the MPEG-DASH manifest URL.</p>
        <p>You must specify either the <code>StreamName</code> or the
            <code>StreamARN</code>.</p>")
    @as("StreamName")
    streamName: option<streamName>,
  }
  type response = {
    @ocaml.doc("<p>The URL (containing the session token) that a media player can use to retrieve the
            MPEG-DASH manifest.</p>")
    @as("DASHStreamingSessionURL")
    dashstreamingSessionURL: option<dashstreamingSessionURL>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "GetDASHStreamingSessionURLCommand"
  let make = (
    ~maxManifestFragmentResults=?,
    ~expires=?,
    ~dashfragmentSelector=?,
    ~displayFragmentNumber=?,
    ~displayFragmentTimestamp=?,
    ~playbackMode=?,
    ~streamARN=?,
    ~streamName=?,
    (),
  ) =>
    new({
      maxManifestFragmentResults: maxManifestFragmentResults,
      expires: expires,
      dashfragmentSelector: dashfragmentSelector,
      displayFragmentNumber: displayFragmentNumber,
      displayFragmentTimestamp: displayFragmentTimestamp,
      playbackMode: playbackMode,
      streamARN: streamARN,
      streamName: streamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetClip = {
  type t
  type request = {
    @ocaml.doc("<p>The time range of the requested clip and the source of the timestamps.</p>")
    @as("ClipFragmentSelector")
    clipFragmentSelector: clipFragmentSelector,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stream for which to retrieve the media clip. </p>
        <p>You must specify either the StreamName or the StreamARN. </p>")
    @as("StreamARN")
    streamARN: option<resourceARN>,
    @ocaml.doc("<p>The name of the stream for which to retrieve the media clip. </p>
        <p>You must specify either the StreamName or the StreamARN. </p>")
    @as("StreamName")
    streamName: option<streamName>,
  }
  type response = {
    @ocaml.doc("<p>Traditional MP4 file that contains the media clip from the specified video stream. The
            output will contain the first 100 MB or the first 200 fragments from the specified start
            timestamp. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html\">Kinesis
                Video Streams Limits</a>. </p>")
    @as("Payload")
    payload: option<payload>,
    @ocaml.doc("<p>The content type of the media in the requested clip.</p>") @as("ContentType")
    contentType: option<contentType>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "GetClipCommand"
  let make = (~clipFragmentSelector, ~streamARN=?, ~streamName=?, ()) =>
    new({clipFragmentSelector: clipFragmentSelector, streamARN: streamARN, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
