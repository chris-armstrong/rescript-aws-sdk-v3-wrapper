type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ivs") @new external createClient: unit => awsServiceClient = "IVSClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type errorMessage = string
type errorCode = string
type time = Js.Date.t
type targetIntervalSeconds = float
type tagValue = string
type tagKey = string
type string_ = string
type streamViewerCount = float
type streamState = [@as("OFFLINE") #OFFLINE | @as("LIVE") #LIVE]
type streamStartTime = Js.Date.t
type streamMetadata = string
type streamKeyValue = string
type streamKeyArn = string
type streamId = string
type streamHealth = [@as("UNKNOWN") #UNKNOWN | @as("STARVING") #STARVING | @as("HEALTHY") #HEALTHY]
type s3DestinationBucketName = string
type resourceArn = string
type recordingMode = [@as("INTERVAL") #INTERVAL | @as("DISABLED") #DISABLED]
type recordingConfigurationState = [
  | @as("ACTIVE") #ACTIVE
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATING") #CREATING
]
type recordingConfigurationName = string
type recordingConfigurationArn = string
type playbackURL = string
type playbackPublicKeyMaterial = string
type playbackKeyPairName = string
type playbackKeyPairFingerprint = string
type playbackKeyPairArn = string
type paginationToken = string
type maxStreamResults = int
type maxStreamKeyResults = int
type maxRecordingConfigurationResults = int
type maxPlaybackKeyPairResults = int
type maxChannelResults = int
type isAuthorized = bool
type integer_ = float
type ingestEndpoint = string
type channelType = [@as("STANDARD") #STANDARD | @as("BASIC") #BASIC]
type channelRecordingConfigurationArn = string
type channelName = string
type channelLatencyMode = [@as("LOW") #LOW | @as("NORMAL") #NORMAL]
type channelArn = string
type boolean_ = bool
@ocaml.doc("<p>Object specifying a stream’s video configuration.</p>")
type videoConfiguration = {
  @ocaml.doc("<p>Video-resolution width in pixels.</p>") videoWidth: option<integer_>,
  @ocaml.doc("<p>Video-resolution height in pixels.</p>") videoHeight: option<integer_>,
  @ocaml.doc("<p>The expected ingest framerate. This is configured in the encoder.</p>")
  targetFramerate: option<integer_>,
  @ocaml.doc(
    "<p>The expected ingest bitrate (bits per second). This is configured in the encoder.</p>"
  )
  targetBitrate: option<integer_>,
  @ocaml.doc("<p>Software or hardware used to encode the video.</p>") encoder: option<string_>,
  @ocaml.doc("<p>Codec used for the video encoding.</p>") codec: option<string_>,
  @ocaml.doc("<p>Indicates the degree of required decoder performance for a profile. Normally this is set
      automatically by the encoder. For details, see the H.264 specification.</p>")
  avcLevel: option<string_>,
  @ocaml.doc("<p>Indicates to the decoder the requirements for decoding the stream. For definitions of the
      valid values, see the H.264 specification.</p>")
  avcProfile: option<string_>,
}
@ocaml.doc("<p>An object representing a configuration of thumbnails for recorded video.</p>")
type thumbnailConfiguration = {
  @ocaml.doc("<p>The targeted thumbnail-generation interval in seconds. This is configurable (and required)
      only if <code>recordingMode</code> is <code>INTERVAL</code>. Default: 60.</p>
         <p>
            <b>Important:</b> Setting a value for <code>targetIntervalSeconds</code> does not guarantee that thumbnails
      are generated at the specified interval. For thumbnails to be generated at the
      <code>targetIntervalSeconds</code> interval, the <code>IDR/Keyframe</code> value for the input video must be less than
      the <code>targetIntervalSeconds</code> value. See <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/streaming-config.html\"> Amazon IVS Streaming Configuration</a> for information on
      setting <code>IDR/Keyframe</code> to the recommended value in video-encoder settings.</p>")
  targetIntervalSeconds: option<targetIntervalSeconds>,
  @ocaml.doc("<p>Thumbnail recording mode. Default: <code>INTERVAL</code>.</p>")
  recordingMode: option<recordingMode>,
}
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Summary information about a stream.</p>")
type streamSummary = {
  @ocaml.doc(
    "<p>Time of the stream’s start. This is an ISO 8601 timestamp returned as a string.</p>"
  )
  startTime: option<streamStartTime>,
  @ocaml.doc("<p>A count of concurrent views of the stream. Typically, a new view appears in
        <code>viewerCount</code> within 15 seconds of when video playback starts and a view is
      removed from <code>viewerCount</code> within 1 minute of when video playback ends. A value of
      -1 indicates that the request timed out; in this case, retry.</p>")
  viewerCount: option<streamViewerCount>,
  @ocaml.doc("<p>The stream’s health.</p>") health: option<streamHealth>,
  @ocaml.doc("<p>The stream’s state.</p>") state: option<streamState>,
  @ocaml.doc(
    "<p>Unique identifier for a live or previously live stream in the specified channel.</p>"
  )
  streamId: option<streamId>,
  @ocaml.doc("<p>Channel ARN for the stream.</p>") channelArn: option<channelArn>,
}
@ocaml.doc("<p>Summary information about a stream session.</p>")
type streamSessionSummary = {
  @ocaml.doc("<p>If <code>true</code>, this stream encountered a quota breach or failure.</p>")
  hasErrorEvent: option<boolean_>,
  @ocaml.doc("<p>UTC ISO-8601 formatted timestamp of when the channel went offline. For live streams, this
      is <code>NULL</code>.</p>")
  endTime: option<time>,
  @ocaml.doc("<p>UTC ISO-8601 formatted timestamp of when the channel went live.</p>")
  startTime: option<time>,
  @ocaml.doc(
    "<p>Unique identifier for a live or previously live stream in the specified channel.</p>"
  )
  streamId: option<streamId>,
}
type streamKeyArnList = array<streamKeyArn>
@ocaml.doc("<p>Object specifying the stream attribute on which to filter.</p>")
type streamFilters = {@ocaml.doc("<p>The stream’s health.</p>") health: option<streamHealth>}
@ocaml.doc("<p>Object specifying a stream’s events. For a list of events, see <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html\">Using Amazon EventBridge with Amazon
      IVS</a>.</p>")
type streamEvent = {
  @ocaml.doc("<p>UTC ISO-8601 formatted timestamp of when the event occurred.</p>")
  eventTime: option<time>,
  @ocaml.doc("<p>Logical group for certain events.</p>") @as("type") type_: option<string_>,
  @ocaml.doc("<p>Name that identifies the stream event within a <code>type</code>.</p>")
  name: option<string_>,
}
@ocaml.doc("<p>Specifies a live video stream that has been ingested and distributed.</p>")
type stream = {
  @ocaml.doc("<p>A count of concurrent views of the stream. Typically, a new view appears in
        <code>viewerCount</code> within 15 seconds of when video playback starts and a view is
      removed from <code>viewerCount</code> within 1 minute of when video playback ends. A value of
      -1 indicates that the request timed out; in this case, retry.</p>")
  viewerCount: option<streamViewerCount>,
  @ocaml.doc("<p>The stream’s health.</p>") health: option<streamHealth>,
  @ocaml.doc("<p>The stream’s state.</p>") state: option<streamState>,
  @ocaml.doc(
    "<p>Time of the stream’s start. This is an ISO 8601 timestamp returned as a string.</p>"
  )
  startTime: option<streamStartTime>,
  @ocaml.doc(
    "<p>URL of the master playlist, required by the video player to play the HLS stream.</p>"
  )
  playbackUrl: option<playbackURL>,
  @ocaml.doc(
    "<p>Unique identifier for a live or previously live stream in the specified channel.</p>"
  )
  streamId: option<streamId>,
  @ocaml.doc("<p>Channel ARN for the stream.</p>") channelArn: option<channelArn>,
}
@ocaml.doc(
  "<p>A complex type that describes an S3 location where recorded videos will be stored.</p>"
)
type s3DestinationConfiguration = {
  @ocaml.doc("<p>Location (S3 bucket name) where recorded videos will be stored.</p>")
  bucketName: s3DestinationBucketName,
}
type channelArnList = array<channelArn>
@ocaml.doc("<p>Error related to a specific channel, specified by its ARN.</p>")
type batchError = {
  @ocaml.doc("<p>Error message, determined by the application.</p>") message: option<errorMessage>,
  @ocaml.doc("<p>Error code.</p>") code: option<errorCode>,
  @ocaml.doc("<p>Channel ARN.</p>") arn: option<resourceArn>,
}
@ocaml.doc("<p>Object specifying a stream’s audio configuration.</p>")
type audioConfiguration = {
  @ocaml.doc("<p>Number of audio channels.</p>") channels: option<integer_>,
  @ocaml.doc("<p>Number of audio samples recorded per second.</p>") sampleRate: option<integer_>,
  @ocaml.doc(
    "<p>The expected ingest bitrate (bits per second). This is configured in the encoder.</p>"
  )
  targetBitrate: option<integer_>,
  @ocaml.doc("<p>Codec used for the audio encoding.</p>") codec: option<string_>,
}
type streamSessionList = array<streamSessionSummary>
type streamList = array<streamSummary>
@ocaml.doc("<p>Summary information about a stream key.</p>")
type streamKeySummary = {
  @ocaml.doc("<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>Channel ARN for the stream.</p>") channelArn: option<channelArn>,
  @ocaml.doc("<p>Stream-key ARN.</p>") arn: option<streamKeyArn>,
}
@ocaml.doc("<p>Object specifying a stream key.</p>")
type streamKey = {
  @ocaml.doc("<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>Channel ARN for the stream.</p>") channelArn: option<channelArn>,
  @ocaml.doc("<p>Stream-key value.</p>") value: option<streamKeyValue>,
  @ocaml.doc("<p>Stream-key ARN.</p>") arn: option<streamKeyArn>,
}
type streamEvents = array<streamEvent>
@ocaml.doc("<p>Summary information about a playback key pair.</p>")
type playbackKeyPairSummary = {
  @ocaml.doc("<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>Playback-key-pair name. The value does not need to be unique.</p>")
  name: option<playbackKeyPairName>,
  @ocaml.doc("<p>Key-pair ARN.</p>") arn: option<playbackKeyPairArn>,
}
@ocaml.doc("<p>A key pair used to sign and validate a playback authorization token.</p>")
type playbackKeyPair = {
  @ocaml.doc("<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>Key-pair identifier.</p>") fingerprint: option<playbackKeyPairFingerprint>,
  @ocaml.doc("<p>Playback-key-pair name. The value does not need to be unique.</p>")
  name: option<playbackKeyPairName>,
  @ocaml.doc("<p>Key-pair ARN.</p>") arn: option<playbackKeyPairArn>,
}
@ocaml.doc("<p>Object specifying the ingest configuration set up by the broadcaster, usually in an
      encoder.</p>")
type ingestConfiguration = {
  @ocaml.doc("<p>Encoder settings for audio.</p>") audio: option<audioConfiguration>,
  @ocaml.doc("<p>Encoder settings for video.</p>") video: option<videoConfiguration>,
}
@ocaml.doc("<p>A complex type that describes a location where recorded videos will be stored. Each member
      represents a type of destination configuration. For recording, you define one and only one
      type of destination configuration.</p>")
type destinationConfiguration = {
  @ocaml.doc("<p>An S3 destination configuration where recorded videos will be stored.</p>")
  s3: option<s3DestinationConfiguration>,
}
@ocaml.doc("<p>Summary information about a channel.</p>")
type channelSummary = {
  @ocaml.doc("<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>Recording-configuration ARN. A value other than an empty string indicates that recording
      is enabled. Default: \"\" (empty string, recording is disabled).</p>")
  recordingConfigurationArn: option<channelRecordingConfigurationArn>,
  @ocaml.doc("<p>Whether the channel is private (enabled for playback authorization). Default:
        <code>false</code>.</p>")
  authorized: option<isAuthorized>,
  @ocaml.doc("<p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
      Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. Default:
        <code>LOW</code>. (Note: In the Amazon IVS console, <code>LOW</code> and <code>NORMAL</code>
      correspond to Ultra-low and Standard, respectively.)</p>")
  latencyMode: option<channelLatencyMode>,
  @ocaml.doc("<p>Channel name.</p>") name: option<channelName>,
  @ocaml.doc("<p>Channel ARN.</p>") arn: option<channelArn>,
}
@ocaml.doc("<p>Object specifying a channel.</p>")
type channel = {
  @ocaml.doc("<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>Whether the channel is private (enabled for playback authorization). Default:
        <code>false</code>.</p>")
  authorized: option<isAuthorized>,
  @ocaml.doc("<p>Channel playback URL.</p>") playbackUrl: option<playbackURL>,
  @ocaml.doc("<p>Channel ingest endpoint, part of the definition of an ingest server, used when you set up
      streaming software.</p>")
  ingestEndpoint: option<ingestEndpoint>,
  @ocaml.doc("<p>Recording-configuration ARN. A value other than an empty string indicates that recording
      is enabled. Default: \"\" (empty string, recording is disabled).</p>")
  recordingConfigurationArn: option<channelRecordingConfigurationArn>,
  @ocaml.doc("<p>Channel type, which determines the allowable resolution and bitrate. <i>If you
        exceed the allowable resolution or bitrate, the stream probably will disconnect
        immediately.</i> Default: <code>STANDARD</code>. Valid values:</p>
         <ul>
            <li>
               <p>
                  <code>STANDARD</code>: Multiple qualities are generated from the original input, to
          automatically give viewers the best experience for their devices and network conditions.
          Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps. Audio is transcoded only
          for renditions 360p and below; above that, audio is passed through.</p>
            </li>
            <li>
               <p>
                  <code>BASIC</code>: Amazon IVS delivers the original input to viewers. The viewer’s
          video-quality choice is limited to the original input. Resolution can be up to 480p and
          bitrate can be up to 1.5 Mbps.</p>
            </li>
         </ul>")
  @as("type")
  type_: option<channelType>,
  @ocaml.doc("<p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
      Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. Default:
        <code>LOW</code>. (Note: In the Amazon IVS console, <code>LOW</code> and <code>NORMAL</code>
      correspond to Ultra-low and Standard, respectively.)</p>")
  latencyMode: option<channelLatencyMode>,
  @ocaml.doc("<p>Channel name.</p>") name: option<channelName>,
  @ocaml.doc("<p>Channel ARN.</p>") arn: option<channelArn>,
}
type batchErrors = array<batchError>
type streamKeys = array<streamKey>
type streamKeyList = array<streamKeySummary>
@ocaml.doc("<p>Summary information about a RecordingConfiguration.</p>")
type recordingConfigurationSummary = {
  @ocaml.doc("<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>Indicates the current state of the recording configuration. When the state is
        <code>ACTIVE</code>, the configuration is ready for recording a channel stream.</p>")
  state: recordingConfigurationState,
  @ocaml.doc(
    "<p>A complex type that contains information about where recorded video will be stored.</p>"
  )
  destinationConfiguration: destinationConfiguration,
  @ocaml.doc("<p>Recording-configuration name. The value does not need to be unique.</p>")
  name: option<recordingConfigurationName>,
  @ocaml.doc("<p>Recording-configuration ARN.</p>") arn: recordingConfigurationArn,
}
@ocaml.doc("<p>An object representing a configuration to record a channel stream.</p>")
type recordingConfiguration = {
  @ocaml.doc("<p>A complex type that allows you to enable/disable the recording of thumbnails for a live
      session and modify the interval at which thumbnails are generated for the live session.</p>")
  thumbnailConfiguration: option<thumbnailConfiguration>,
  @ocaml.doc("<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>Indicates the current state of the recording configuration. When the state is
        <code>ACTIVE</code>, the configuration is ready for recording a channel stream.</p>")
  state: recordingConfigurationState,
  @ocaml.doc(
    "<p>A complex type that contains information about where recorded video will be stored.</p>"
  )
  destinationConfiguration: destinationConfiguration,
  @ocaml.doc("<p>Recording-configuration name. The value does not need to be unique.</p>")
  name: option<recordingConfigurationName>,
  @ocaml.doc("<p>Recording-configuration ARN.</p>") arn: recordingConfigurationArn,
}
type playbackKeyPairList = array<playbackKeyPairSummary>
type channels = array<channel>
type channelList = array<channelSummary>
@ocaml.doc("<p>Object that captures the Amazon IVS configuration that the customer provisioned, the
      ingest configurations that the broadcaster used, and the most recent Amazon IVS stream events
      it encountered.</p>")
type streamSession = {
  @ocaml.doc("<p>List of Amazon IVS events that the stream encountered. The list is sorted by most recent
      events and contains up to 500 events. For Amazon IVS events, see <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html\">Using Amazon EventBridge with Amazon
      IVS</a>.</p>")
  truncatedEvents: option<streamEvents>,
  @ocaml.doc("<p>The properties of recording the live stream.</p>")
  recordingConfiguration: option<recordingConfiguration>,
  @ocaml.doc("<p>The properties of the incoming RTMP stream for the stream.</p>")
  ingestConfiguration: option<ingestConfiguration>,
  @ocaml.doc("<p>The properties of the channel at the time of going live.</p>")
  channel: option<channel>,
  @ocaml.doc("<p>UTC ISO-8601 formatted timestamp of when the channel went offline. For live streams, this
      is <code>NULL</code>.</p>")
  endTime: option<time>,
  @ocaml.doc("<p>UTC ISO-8601 formatted timestamp of when the channel went live.</p>")
  startTime: option<time>,
  @ocaml.doc(
    "<p>Unique identifier for a live or previously live stream in the specified channel.</p>"
  )
  streamId: option<streamId>,
}
type recordingConfigurationList = array<recordingConfigurationSummary>
@ocaml.doc("<p>
            <b>Introduction</b>
         </p>
         <p>The Amazon Interactive Video Service (IVS) API is REST compatible, using a standard HTTP
      API and an Amazon Web Services EventBridge event stream for responses. JSON is used for both
      requests and responses, including errors.</p>
         <p>The API is an Amazon Web Services regional service. For a list of supported regions and
      Amazon IVS HTTPS service endpoints, see the <a href=\"https://docs.aws.amazon.com/general/latest/gr/ivs.html\">Amazon IVS page</a> in the
          <i>Amazon Web Services General Reference</i>.</p>
         <p>
            <i>
               <b>All API request parameters and URLs are case sensitive.
        </b>
            </i>
         </p>
         <p>For a summary of notable documentation changes in each release, see <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/doc-history.html\"> Document
      History</a>.</p>
         <p>
            <b>Allowed Header Values</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>
                     <b>Accept:</b>
                  </code> application/json</p>
            </li>
            <li>
               <p>
                  <code>
                     <b>Accept-Encoding:</b>
                  </code> gzip, deflate</p>
            </li>
            <li>
               <p>
                  <code>
                     <b>Content-Type:</b>
                  </code>application/json</p>
            </li>
         </ul>
         <p>
            <b>Resources</b>
         </p>
         <p>The following resources contain information about your IVS live stream (see <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/getting-started.html\"> Getting Started with
        Amazon IVS</a>):</p>
         <ul>
            <li>
               <p>Channel — Stores configuration data related to your live stream. You first create a
          channel and then use the channel’s stream key to start your live stream. See the Channel
          endpoints for more information. </p>
            </li>
            <li>
               <p>Stream key — An identifier assigned by Amazon IVS when you create a channel, which is
          then used to authorize streaming. See the StreamKey endpoints for more information.
              <i>
                     <b>Treat the stream key like a secret, since it allows
              anyone to stream to the channel.</b>
                  </i>
               </p>
            </li>
            <li>
               <p>Playback key pair — Video playback may be restricted using playback-authorization
          tokens, which use public-key encryption. A playback key pair is the public-private pair of
          keys used to sign and validate the playback-authorization token. See the PlaybackKeyPair
          endpoints for more information.</p>
            </li>
            <li>
               <p>Recording configuration — Stores configuration related to recording a live stream and
          where to store the recorded content. Multiple channels can reference the same recording
          configuration. See the Recording Configuration endpoints for more information.</p>
            </li>
         </ul>
         <p>
            <b>Tagging</b>
         </p>
         <p>A <i>tag</i> is a metadata label that you assign to an Amazon Web Services
      resource. A tag comprises a <i>key</i> and a <i>value</i>, both
      set by you. For example, you might set a tag as <code>topic:nature</code> to label a
      particular video category. See <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services Resources</a> for
      more information, including restrictions that apply to tags.</p>
         <p>Tags can help you identify and organize your Amazon Web Services resources. For example,
      you can use the same tag for different resources to indicate that they are related. You can
      also use tags to manage access (see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html\"> Access Tags</a>). </p>
         <p>The Amazon IVS API has these tag-related endpoints: <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a>. The following
      resources support tagging: Channels, Stream Keys, Playback Key Pairs, and Recording
      Configurations.</p>
         <p>At most 50 tags can be applied to a resource. </p>
         <p>
            <b>Authentication versus Authorization</b>
         </p>
         <p>Note the differences between these concepts:</p>
         <ul>
            <li>
               <p>
                  <i>Authentication</i> is about verifying identity. You need to be
          authenticated to sign Amazon IVS API requests.</p>
            </li>
            <li>
               <p>
                  <i>Authorization</i> is about granting permissions. You need to be
          authorized to view <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html\">Amazon IVS private channels</a>.
          (Private channels are channels that are enabled for \"playback authorization.\")</p>
            </li>
         </ul>
         <p>
            <b>Authentication</b>
         </p>
         <p>All Amazon IVS API requests must be authenticated with a signature. The Amazon Web Services
      Command-Line Interface (CLI) and Amazon IVS Player SDKs take care of signing the underlying
      API calls for you. However, if your application calls the Amazon IVS API directly, it’s your
      responsibility to sign the requests.</p>
         <p>You generate a signature using valid Amazon Web Services credentials that have permission
      to perform the requested action. For example, you must sign PutMetadata requests with a
      signature generated from an IAM user account that has the <code>ivs:PutMetadata</code>
      permission.</p>
         <p>For more information:</p>
         <ul>
            <li>
               <p>Authentication and generating signatures — See <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html\">Authenticating Requests
              (Amazon Web Services Signature Version 4)</a> in the <i>Amazon Web Services
            General Reference</i>.</p>
            </li>
            <li>
               <p>Managing Amazon IVS permissions — See <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html\">Identity and Access Management</a> on
          the Security page of the <i>Amazon IVS User Guide</i>.</p>
            </li>
         </ul>
         <p>
            <b>Channel Endpoints</b>
         </p>
         <ul>
            <li>
               <p>
                  <a>CreateChannel</a> — Creates a new channel and an associated stream
          key to start streaming.</p>
            </li>
            <li>
               <p>
                  <a>GetChannel</a> — Gets the channel configuration for the specified
          channel ARN (Amazon Resource Name).</p>
            </li>
            <li>
               <p>
                  <a>BatchGetChannel</a> — Performs <a>GetChannel</a> on
          multiple ARNs simultaneously.</p>
            </li>
            <li>
               <p>
                  <a>ListChannels</a> — Gets summary information about all channels in
          your account, in the Amazon Web Services region where the API request is processed. This
          list can be filtered to match a specified name or recording-configuration ARN. Filters are
          mutually exclusive and cannot be used together. If you try to use both filters, you will
          get an error (409 Conflict Exception).</p>
            </li>
            <li>
               <p>
                  <a>UpdateChannel</a> — Updates a channel's configuration. This does
          not affect an ongoing stream of this channel. You must stop and restart the stream for the
          changes to take effect.</p>
            </li>
            <li>
               <p>
                  <a>DeleteChannel</a> — Deletes the specified channel.</p>
            </li>
         </ul>
         <p>
            <b>StreamKey Endpoints</b>
         </p>
         <ul>
            <li>
               <p>
                  <a>CreateStreamKey</a> — Creates a stream key, used to initiate a
          stream, for the specified channel ARN.</p>
            </li>
            <li>
               <p>
                  <a>GetStreamKey</a> — Gets stream key information for the specified
          ARN.</p>
            </li>
            <li>
               <p>
                  <a>BatchGetStreamKey</a> — Performs <a>GetStreamKey</a> on
          multiple ARNs simultaneously.</p>
            </li>
            <li>
               <p>
                  <a>ListStreamKeys</a> — Gets summary information about stream keys
          for the specified channel.</p>
            </li>
            <li>
               <p>
                  <a>DeleteStreamKey</a> — Deletes the stream key for the specified
          ARN, so it can no longer be used to stream.</p>
            </li>
         </ul>
         <p>
            <b>Stream Endpoints</b>
         </p>
         <ul>
            <li>
               <p>
                  <a>GetStream</a> — Gets information about the active (live) stream on
          a specified channel.</p>
            </li>
            <li>
               <p>
                  <a>GetStreamSession</a> — Gets metadata on a specified stream.</p>
            </li>
            <li>
               <p>
                  <a>ListStreams</a> — Gets summary information about live streams in
          your account, in the Amazon Web Services region where the API request is processed.</p>
            </li>
            <li>
               <p>
                  <a>ListStreamSessions</a> — Gets a summary of current and previous
          streams for a specified channel in your account, in the AWS region where the API request
          is processed.</p>
            </li>
            <li>
               <p>
                  <a>StopStream</a> — Disconnects the incoming RTMPS stream for the
          specified channel. Can be used in conjunction with <a>DeleteStreamKey</a> to
          prevent further streaming to a channel.</p>
            </li>
            <li>
               <p>
                  <a>PutMetadata</a> — Inserts metadata into the active stream of the
          specified channel. At most 5 requests per second per channel are allowed, each with a
          maximum 1 KB payload. (If 5 TPS is not sufficient for your needs, we recommend batching
          your data into a single PutMetadata call.) At most 155 requests per second per account are
          allowed.</p>
            </li>
         </ul>
         <p>
            <b>PlaybackKeyPair Endpoints</b>
         </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html\">Setting Up Private Channels</a> in the
        <i>Amazon IVS User Guide</i>.</p>
         <ul>
            <li>
               <p>
                  <a>ImportPlaybackKeyPair</a> — Imports the public portion of a new
          key pair and returns its <code>arn</code> and <code>fingerprint</code>. The
            <code>privateKey</code> can then be used to generate viewer authorization tokens, to
          grant viewers access to private channels (channels enabled for playback
          authorization).</p>
            </li>
            <li>
               <p>
                  <a>GetPlaybackKeyPair</a> — Gets a specified playback authorization
          key pair and returns the <code>arn</code> and <code>fingerprint</code>. The
            <code>privateKey</code> held by the caller can be used to generate viewer authorization
          tokens, to grant viewers access to private channels.</p>
            </li>
            <li>
               <p>
                  <a>ListPlaybackKeyPairs</a> — Gets summary information about playback
          key pairs.</p>
            </li>
            <li>
               <p>
                  <a>DeletePlaybackKeyPair</a> — Deletes a specified authorization key
          pair. This invalidates future viewer tokens generated using the key pair’s
            <code>privateKey</code>.</p>
            </li>
         </ul>
         <p>
            <b>RecordingConfiguration Endpoints</b>
         </p>
         <ul>
            <li>
               <p>
                  <a>CreateRecordingConfiguration</a> — Creates a new recording
          configuration, used to enable recording to Amazon S3.</p>
            </li>
            <li>
               <p>
                  <a>GetRecordingConfiguration</a> — Gets the recording-configuration
          metadata for the specified ARN.</p>
            </li>
            <li>
               <p>
                  <a>ListRecordingConfigurations</a> — Gets summary information about
          all recording configurations in your account, in the Amazon Web Services region where the
          API request is processed.</p>
            </li>
            <li>
               <p>
                  <a>DeleteRecordingConfiguration</a> — Deletes the recording
          configuration for the specified ARN.</p>
            </li>
         </ul>
         <p>
            <b>Amazon Web Services Tags Endpoints</b>
         </p>
         <ul>
            <li>
               <p>
                  <a>TagResource</a> — Adds or updates tags for the Amazon Web Services
          resource with the specified ARN.</p>
            </li>
            <li>
               <p>
                  <a>UntagResource</a> — Removes tags from the resource with the
          specified ARN.</p>
            </li>
            <li>
               <p>
                  <a>ListTagsForResource</a> — Gets information about Amazon Web Services tags for the specified ARN.</p>
            </li>
         </ul>")
module StopStream = {
  type t
  type request = {
    @ocaml.doc("<p>ARN of the channel for which the stream is to be stopped.</p>")
    channelArn: channelArn,
  }
  type response = {.}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "StopStreamCommand"
  let make = (~channelArn, ()) => new({channelArn: channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata to insert into the stream. Maximum: 1 KB per request.</p>")
    metadata: streamMetadata,
    @ocaml.doc("<p>ARN of the channel into which metadata is inserted. This channel must have an active
      stream.</p>")
    channelArn: channelArn,
  }
  type response = {.}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "PutMetadataCommand"
  let make = (~metadata, ~channelArn, ()) => new({metadata: metadata, channelArn: channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteStreamKey = {
  type t
  type request = {@ocaml.doc("<p>ARN of the stream key to be deleted.</p>") arn: streamKeyArn}
  type response = {.}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "DeleteStreamKeyCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRecordingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>ARN of the recording configuration to be deleted.</p>")
    arn: recordingConfigurationArn,
  }
  type response = {.}
  @module("@aws-sdk/client-ivs") @new
  external new: request => t = "DeleteRecordingConfigurationCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePlaybackKeyPair = {
  type t
  type request = {@ocaml.doc("<p>ARN of the key pair to be deleted.</p>") arn: playbackKeyPairArn}
  type response = {.}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "DeletePlaybackKeyPairCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteChannel = {
  type t
  type request = {@ocaml.doc("<p>ARN of the channel to be deleted.</p>") arn: channelArn}
  type response = {.}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "DeleteChannelCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Array of tags to be removed.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>ARN of the resource for which tags are to be removed.</p>")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Array of tags to be added or updated.</p>") tags: tags,
    @ocaml.doc("<p>ARN of the resource for which tags are to be added or updated.</p>")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource to be retrieved.</p>") resourceArn: resourceArn,
  }
  type response = {@ocaml.doc("<p/>") tags: tags}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStream = {
  type t
  type request = {
    @ocaml.doc("<p>Channel ARN for stream to be accessed.</p>") channelArn: channelArn,
  }
  type response = {@ocaml.doc("<p/>") stream: option<stream>}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "GetStreamCommand"
  let make = (~channelArn, ()) => new({channelArn: channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChannel = {
  type t
  type request = {
    @ocaml.doc("<p>Recording-configuration ARN. If this is set to an empty string, recording is disabled. A
      value other than an empty string indicates that recording is enabled</p>")
    recordingConfigurationArn: option<channelRecordingConfigurationArn>,
    @ocaml.doc("<p>Whether the channel is private (enabled for playback authorization).</p>")
    authorized: option<boolean_>,
    @ocaml.doc("<p>Channel type, which determines the allowable resolution and bitrate. <i>If you
        exceed the allowable resolution or bitrate, the stream probably will disconnect
        immediately</i>. Valid values:</p>
         <ul>
            <li>
               <p>
                  <code>STANDARD</code>: Multiple qualities are generated from the original input, to
          automatically give viewers the best experience for their devices and network conditions.
          Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps. Audio is transcoded only
          for renditions 360p and below; above that, audio is passed through.</p>
            </li>
            <li>
               <p>
                  <code>BASIC</code>: Amazon IVS delivers the original input to viewers. The viewer’s
          video-quality choice is limited to the original input. Resolution can be up to 480p and
          bitrate can be up to 1.5 Mbps.</p>
            </li>
         </ul>")
    @as("type")
    type_: option<channelType>,
    @ocaml.doc("<p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
      Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. (Note: In the
      Amazon IVS console, <code>LOW</code> and <code>NORMAL</code> correspond to Ultra-low and
      Standard, respectively.)</p>")
    latencyMode: option<channelLatencyMode>,
    @ocaml.doc("<p>Channel name.</p>") name: option<channelName>,
    @ocaml.doc("<p>ARN of the channel to be updated.</p>") arn: channelArn,
  }
  type response = {channel: option<channel>}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "UpdateChannelCommand"
  let make = (
    ~arn,
    ~recordingConfigurationArn=?,
    ~authorized=?,
    ~type_=?,
    ~latencyMode=?,
    ~name=?,
    (),
  ) =>
    new({
      recordingConfigurationArn: recordingConfigurationArn,
      authorized: authorized,
      type_: type_,
      latencyMode: latencyMode,
      name: name,
      arn: arn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreams = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of streams to return. Default: 50.</p>")
    maxResults: option<maxStreamResults>,
    @ocaml.doc("<p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code>
      response field.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Filters the stream list to match the specified criterion.</p>")
    filterBy: option<streamFilters>,
  }
  type response = {
    @ocaml.doc("<p>If there are more streams than <code>maxResults</code>, use <code>nextToken</code> in the
      request to get the next set.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>List of streams.</p>") streams: streamList,
  }
  @module("@aws-sdk/client-ivs") @new external new: request => t = "ListStreamsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filterBy=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filterBy: filterBy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreamSessions = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of streams to return. Default: 50.</p>")
    maxResults: option<maxStreamResults>,
    @ocaml.doc("<p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code>
      response field.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Channel ARN used to filter the list.</p>") channelArn: channelArn,
  }
  type response = {
    @ocaml.doc("<p>If there are more streams than <code>maxResults</code>, use <code>nextToken</code> in the
      request to get the next set.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>List of stream sessions.</p>") streamSessions: streamSessionList,
  }
  @module("@aws-sdk/client-ivs") @new external new: request => t = "ListStreamSessionsCommand"
  let make = (~channelArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, channelArn: channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportPlaybackKeyPair = {
  type t
  type request = {
    @ocaml.doc("<p>Any tags provided with the request are added to the playback key pair tags.</p>")
    tags: option<tags>,
    @ocaml.doc("<p>Playback-key-pair name. The value does not need to be unique.</p>")
    name: option<playbackKeyPairName>,
    @ocaml.doc("<p>The public portion of a customer-generated key pair.</p>")
    publicKeyMaterial: playbackPublicKeyMaterial,
  }
  type response = {@ocaml.doc("<p/>") keyPair: option<playbackKeyPair>}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "ImportPlaybackKeyPairCommand"
  let make = (~publicKeyMaterial, ~tags=?, ~name=?, ()) =>
    new({tags: tags, name: name, publicKeyMaterial: publicKeyMaterial})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStreamKey = {
  type t
  type request = {@ocaml.doc("<p>ARN for the stream key to be retrieved.</p>") arn: streamKeyArn}
  type response = {streamKey: option<streamKey>}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "GetStreamKeyCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPlaybackKeyPair = {
  type t
  type request = {@ocaml.doc("<p>ARN of the key pair to be returned.</p>") arn: playbackKeyPairArn}
  type response = {keyPair: option<playbackKeyPair>}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "GetPlaybackKeyPairCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetChannel = {
  type t
  type request = {
    @ocaml.doc("<p>ARN of the channel for which the configuration is to be retrieved.</p>")
    arn: channelArn,
  }
  type response = {@ocaml.doc("<p/>") channel: option<channel>}
  @module("@aws-sdk/client-ivs") @new external new: request => t = "GetChannelCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStreamKey = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>"
    )
    tags: option<tags>,
    @ocaml.doc("<p>ARN of the channel for which to create the stream key.</p>")
    channelArn: channelArn,
  }
  type response = {
    @ocaml.doc("<p>Stream key used to authenticate an RTMPS stream for ingestion.</p>")
    streamKey: option<streamKey>,
  }
  @module("@aws-sdk/client-ivs") @new external new: request => t = "CreateStreamKeyCommand"
  let make = (~channelArn, ~tags=?, ()) => new({tags: tags, channelArn: channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>"
    )
    tags: option<tags>,
    @ocaml.doc(
      "<p>Recording-configuration ARN. Default: \"\" (empty string, recording is disabled).</p>"
    )
    recordingConfigurationArn: option<channelRecordingConfigurationArn>,
    @ocaml.doc("<p>Whether the channel is private (enabled for playback authorization). Default:
        <code>false</code>.</p>")
    authorized: option<boolean_>,
    @ocaml.doc("<p>Channel type, which determines the allowable resolution and bitrate. <i>If you
        exceed the allowable resolution or bitrate, the stream probably will disconnect
        immediately.</i> Default: <code>STANDARD</code>. Valid values:</p>
         <ul>
            <li>
               <p>
                  <code>STANDARD</code>: Multiple qualities are generated from the original input, to
          automatically give viewers the best experience for their devices and network conditions.
          Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps. Audio is transcoded only
          for renditions 360p and below; above that, audio is passed through.</p>
            </li>
            <li>
               <p>
                  <code>BASIC</code>: Amazon IVS delivers the original input to viewers. The viewer’s
          video-quality choice is limited to the original input. Resolution can be up to 480p and
          bitrate can be up to 1.5 Mbps.</p>
            </li>
         </ul>")
    @as("type")
    type_: option<channelType>,
    @ocaml.doc("<p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
      Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. (Note: In the
      Amazon IVS console, <code>LOW</code> and <code>NORMAL</code> correspond to Ultra-low and
      Standard, respectively.) Default: <code>LOW</code>.</p>")
    latencyMode: option<channelLatencyMode>,
    @ocaml.doc("<p>Channel name.</p>") name: option<channelName>,
  }
  type response = {
    @ocaml.doc("<p/>") streamKey: option<streamKey>,
    @ocaml.doc("<p/>") channel: option<channel>,
  }
  @module("@aws-sdk/client-ivs") @new external new: request => t = "CreateChannelCommand"
  let make = (
    ~tags=?,
    ~recordingConfigurationArn=?,
    ~authorized=?,
    ~type_=?,
    ~latencyMode=?,
    ~name=?,
    (),
  ) =>
    new({
      tags: tags,
      recordingConfigurationArn: recordingConfigurationArn,
      authorized: authorized,
      type_: type_,
      latencyMode: latencyMode,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreamKeys = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of streamKeys to return. Default: 50.</p>")
    maxResults: option<maxStreamKeyResults>,
    @ocaml.doc("<p>The first stream key to retrieve. This is used for pagination; see the
        <code>nextToken</code> response field.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Channel ARN used to filter the list.</p>") channelArn: channelArn,
  }
  type response = {
    @ocaml.doc("<p>If there are more stream keys than <code>maxResults</code>, use <code>nextToken</code> in
      the request to get the next set.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>List of stream keys.</p>") streamKeys: streamKeyList,
  }
  @module("@aws-sdk/client-ivs") @new external new: request => t = "ListStreamKeysCommand"
  let make = (~channelArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, channelArn: channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPlaybackKeyPairs = {
  type t
  type request = {
    @ocaml.doc("<p>The first key pair to retrieve. This is used for pagination; see the
        <code>nextToken</code> response field. Default: 50.</p>")
    maxResults: option<maxPlaybackKeyPairResults>,
    @ocaml.doc("<p>Maximum number of key pairs to return.</p>") nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If there are more key pairs than <code>maxResults</code>, use <code>nextToken</code> in
      the request to get the next set.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>List of key pairs.</p>") keyPairs: playbackKeyPairList,
  }
  @module("@aws-sdk/client-ivs") @new external new: request => t = "ListPlaybackKeyPairsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannels = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of channels to return. Default: 50.</p>")
    maxResults: option<maxChannelResults>,
    @ocaml.doc("<p>The first channel to retrieve. This is used for pagination; see the <code>nextToken</code>
      response field.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>Filters the channel list to match the specified recording-configuration ARN.</p>"
    )
    filterByRecordingConfigurationArn: option<channelRecordingConfigurationArn>,
    @ocaml.doc("<p>Filters the channel list to match the specified name.</p>")
    filterByName: option<channelName>,
  }
  type response = {
    @ocaml.doc("<p>If there are more channels than <code>maxResults</code>, use <code>nextToken</code> in the
      request to get the next set.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>List of the matching channels.</p>") channels: channelList,
  }
  @module("@aws-sdk/client-ivs") @new external new: request => t = "ListChannelsCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~filterByRecordingConfigurationArn=?,
    ~filterByName=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      filterByRecordingConfigurationArn: filterByRecordingConfigurationArn,
      filterByName: filterByName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRecordingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>ARN of the recording configuration to be retrieved.</p>")
    arn: recordingConfigurationArn,
  }
  type response = {recordingConfiguration: option<recordingConfiguration>}
  @module("@aws-sdk/client-ivs") @new
  external new: request => t = "GetRecordingConfigurationCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRecordingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>A complex type that allows you to enable/disable the recording of thumbnails for a live
      session and modify the interval at which thumbnails are generated for the live session.</p>")
    thumbnailConfiguration: option<thumbnailConfiguration>,
    @ocaml.doc(
      "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>"
    )
    tags: option<tags>,
    @ocaml.doc("<p>A complex type that contains a destination configuration for where recorded video will be
      stored.</p>")
    destinationConfiguration: destinationConfiguration,
    @ocaml.doc("<p>Recording-configuration name. The value does not need to be unique.</p>")
    name: option<recordingConfigurationName>,
  }
  type response = {recordingConfiguration: option<recordingConfiguration>}
  @module("@aws-sdk/client-ivs") @new
  external new: request => t = "CreateRecordingConfigurationCommand"
  let make = (~destinationConfiguration, ~thumbnailConfiguration=?, ~tags=?, ~name=?, ()) =>
    new({
      thumbnailConfiguration: thumbnailConfiguration,
      tags: tags,
      destinationConfiguration: destinationConfiguration,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetStreamKey = {
  type t
  type request = {@ocaml.doc("<p>Array of ARNs, one per channel.</p>") arns: streamKeyArnList}
  type response = {
    @ocaml.doc("<p/>") errors: option<batchErrors>,
    @ocaml.doc("<p/>") streamKeys: option<streamKeys>,
  }
  @module("@aws-sdk/client-ivs") @new external new: request => t = "BatchGetStreamKeyCommand"
  let make = (~arns, ()) => new({arns: arns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetChannel = {
  type t
  type request = {@ocaml.doc("<p>Array of ARNs, one per channel.</p>") arns: channelArnList}
  type response = {
    @ocaml.doc("<p>Each error object is related to a specific ARN in the request.</p>")
    errors: option<batchErrors>,
    @ocaml.doc("<p/>") channels: option<channels>,
  }
  @module("@aws-sdk/client-ivs") @new external new: request => t = "BatchGetChannelCommand"
  let make = (~arns, ()) => new({arns: arns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecordingConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of recording configurations to return. Default: 50. </p>")
    maxResults: option<maxRecordingConfigurationResults>,
    @ocaml.doc("<p>The first recording configuration to retrieve. This is used for pagination; see the
        <code>nextToken</code> response field.</p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If there are more recording configurations than <code>maxResults</code>, use
        <code>nextToken</code> in the request to get the next set.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>List of the matching recording configurations.</p>")
    recordingConfigurations: recordingConfigurationList,
  }
  @module("@aws-sdk/client-ivs") @new
  external new: request => t = "ListRecordingConfigurationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStreamSession = {
  type t
  type request = {
    @ocaml.doc("<p>Unique identifier for a live or previously live stream in the specified channel. If no
        <code>streamId</code> is provided, this returns the most recent stream session for the
      channel, if it exists.</p>")
    streamId: option<streamId>,
    @ocaml.doc("<p>ARN of the channel resource</p>") channelArn: channelArn,
  }
  type response = {
    @ocaml.doc("<p>List of stream details.</p>") streamSession: option<streamSession>,
  }
  @module("@aws-sdk/client-ivs") @new external new: request => t = "GetStreamSessionCommand"
  let make = (~channelArn, ~streamId=?, ()) => new({streamId: streamId, channelArn: channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
