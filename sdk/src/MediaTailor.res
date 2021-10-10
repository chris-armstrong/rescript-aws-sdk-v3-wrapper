type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mediatailor") @new
external createClient: unit => awsServiceClient = "MediaTailorClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __timestampUnix = int
type __string = string
type __long = float
type __integerMin1 = int
type __integer = int
type __boolean = bool
type type_ = [@as("HLS") #HLS | @as("DASH") #DASH]
type relativePosition = [
  | @as("AFTER_PROGRAM") #AFTER_PROGRAM
  | @as("BEFORE_PROGRAM") #BEFORE_PROGRAM
]
type playbackMode = [@as("LOOP") #LOOP]
type originManifestType = [@as("MULTI_PERIOD") #MULTI_PERIOD | @as("SINGLE_PERIOD") #SINGLE_PERIOD]
type mode = [@as("BEHIND_LIVE_EDGE") #BEHIND_LIVE_EDGE | @as("OFF") #OFF]
type messageType = [@as("SPLICE_INSERT") #SPLICE_INSERT]
type maxResults = int
type channelState = [@as("STOPPED") #STOPPED | @as("RUNNING") #RUNNING]
type accessType = [@as("S3_SIGV4") #S3_SIGV4]
type __mapOf__string = Js.Dict.t<__string>
type __listOf__string = array<__string>
@ocaml.doc("<p>Program transition configuration.</p>")
type transition = {
  @ocaml.doc(
    "<p>When the program should be played. RELATIVE means that programs will be played back-to-back.</p>"
  )
  @as("Type")
  type_: __string,
  @ocaml.doc(
    "<p>The name of the program that this program will be inserted next to, as defined by RelativePosition.</p>"
  )
  @as("RelativeProgram")
  relativeProgram: option<__string>,
  @ocaml.doc(
    "<p>The position where this program will be inserted relative to the RelativeProgram. Possible values are: AFTER_PROGRAM, and BEFORE_PROGRAM.</p>"
  )
  @as("RelativePosition")
  relativePosition: relativePosition,
}
@ocaml.doc("<p>Splice insert message configuration.</p>")
type spliceInsertMessage = {
  @ocaml.doc(
    "<p>This is written to splice_insert.unique_program_id, as defined in section 9.7.3.1 of the SCTE-35 specification. The default value is 0. Values must be between 0 and 256, inclusive.</p>"
  )
  @as("UniqueProgramId")
  uniqueProgramId: option<__integer>,
  @ocaml.doc(
    "<p>This is written to splice_insert.splice_event_id, as defined in section 9.7.3.1 of the SCTE-35 specification. The default value is 1.</p>"
  )
  @as("SpliceEventId")
  spliceEventId: option<__integer>,
  @ocaml.doc(
    "<p>This is written to splice_insert.avails_expected, as defined in section 9.7.3.1 of the SCTE-35 specification. The default value is 0. Values must be between 0 and 256, inclusive.</p>"
  )
  @as("AvailsExpected")
  availsExpected: option<__integer>,
  @ocaml.doc(
    "<p>This is written to splice_insert.avail_num, as defined in section 9.7.3.1 of the SCTE-35 specification. The default value is 0. Values must be between 0 and 256, inclusive.</p>"
  )
  @as("AvailNum")
  availNum: option<__integer>,
}
@ocaml.doc("<p>Slate VOD source configuration.</p>")
type slateSource = {
  @ocaml.doc(
    "<p>The slate VOD source name. The VOD source must already exist in a source location before it can be used for slate.</p>"
  )
  @as("VodSourceName")
  vodSourceName: option<__string>,
  @ocaml.doc("<p>The name of the source location where the slate VOD source is stored.</p>")
  @as("SourceLocationName")
  sourceLocationName: option<__string>,
}
@ocaml.doc("<p>The properties for a schedule.</p>")
type scheduleEntry = {
  @ocaml.doc("<p>The name of the VOD source.</p>") @as("VodSourceName") vodSourceName: __string,
  @ocaml.doc("<p>The name of the source location.</p>") @as("SourceLocationName")
  sourceLocationName: __string,
  @ocaml.doc("<p>The name of the program.</p>") @as("ProgramName") programName: __string,
  @ocaml.doc("<p>The name of the channel that uses this schedule.</p>") @as("ChannelName")
  channelName: __string,
  @ocaml.doc("<p>The ARN of the program.</p>") @as("Arn") arn: __string,
  @ocaml.doc("<p>The approximate time that the program will start playing.</p>")
  @as("ApproximateStartTime")
  approximateStartTime: option<__timestampUnix>,
  @ocaml.doc("<p>The approximate duration of this program, in seconds.</p>")
  @as("ApproximateDurationSeconds")
  approximateDurationSeconds: option<__long>,
}
@ocaml.doc("<p>The configuration for pre-roll ad insertion.</p>")
type livePreRollConfiguration = {
  @ocaml.doc(
    "The maximum allowed duration for the pre-roll ad avail. AWS Elemental MediaTailor won't play pre-roll ads to exceed this duration, regardless of the total duration of ads that the ADS returns."
  )
  @as("MaxDurationSeconds")
  maxDurationSeconds: option<__integer>,
  @ocaml.doc(
    "<p>The URL for the ad decision server (ADS) for pre-roll ads. This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.</p>"
  )
  @as("AdDecisionServerUrl")
  adDecisionServerUrl: option<__string>,
}
@ocaml.doc("<p>The HTTP package configuration properties for the requested VOD source.</p>")
type httpPackageConfiguration = {
  @ocaml.doc(
    "<p>The streaming protocol for this package configuration. Supported values are HLS and DASH.</p>"
  )
  @as("Type")
  type_: type_,
  @ocaml.doc(
    "<p>The name of the source group. This has to match one of the Channel::Outputs::SourceGroup.</p>"
  )
  @as("SourceGroup")
  sourceGroup: __string,
  @ocaml.doc(
    "<p>The relative path to the URL for this VOD source. This is combined with SourceLocation::HttpConfiguration::BaseUrl to form a valid URL.</p>"
  )
  @as("Path")
  path: __string,
}
@ocaml.doc("<p>The HTTP configuration for the source location.</p>")
type httpConfiguration = {
  @ocaml.doc(
    "<p>The base URL for the source location host server. This string must include the protocol, such as <b>https://</b>.</p>"
  )
  @as("BaseUrl")
  baseUrl: __string,
}
@ocaml.doc("<p>HLS playlist configuration parameters.</p>")
type hlsPlaylistSettings = {
  @ocaml.doc(
    "<p>The total duration (in seconds) of each manifest. Minimum value: 30 seconds. Maximum value: 3600 seconds.</p>"
  )
  @as("ManifestWindowSeconds")
  manifestWindowSeconds: option<__integer>,
}
@ocaml.doc("<p>The configuration for HLS content.</p>")
type hlsConfiguration = {
  @ocaml.doc(
    "<p>The URL that is used to initiate a playback session for devices that support Apple HLS. The session uses server-side reporting.</p>"
  )
  @as("ManifestEndpointPrefix")
  manifestEndpointPrefix: option<__string>,
}
@ocaml.doc(
  "<p>The optional configuration for a server that serves segments. Use this if you want the segment delivery server to be different from the source location server. For example, you can configure your source location server to be an origination server, such as MediaPackage, and the segment delivery server to be a content delivery network (CDN), such as CloudFront. If you don't specify a segment delivery server, then the source location server is used.</p>"
)
type defaultSegmentDeliveryConfiguration = {
  @ocaml.doc(
    "<p>The hostname of the server that will be used to serve segments. This string must include the protocol, such as <b>https://</b>.</p>"
  )
  @as("BaseUrl")
  baseUrl: option<__string>,
}
@ocaml.doc("<p>Dash manifest configuration parameters.</p>")
type dashPlaylistSettings = {
  @ocaml.doc(
    "<p>Amount of time (in seconds) that the player should be from the live point at the end of the manifest. Minimum value: 2 seconds. Maximum value: 60 seconds.</p>"
  )
  @as("SuggestedPresentationDelaySeconds")
  suggestedPresentationDelaySeconds: option<__integer>,
  @ocaml.doc(
    "<p>Minimum amount of time (in seconds) that the player should wait before requesting updates to the manifest. Minimum value: 2 seconds. Maximum value: 60 seconds.</p>"
  )
  @as("MinUpdatePeriodSeconds")
  minUpdatePeriodSeconds: option<__integer>,
  @ocaml.doc(
    "<p>Minimum amount of content (measured in seconds) that a player must keep available in the buffer. Minimum value: 2 seconds. Maximum value: 60 seconds.</p>"
  )
  @as("MinBufferTimeSeconds")
  minBufferTimeSeconds: option<__integer>,
  @ocaml.doc(
    "<p>The total duration (in seconds) of each manifest. Minimum value: 30 seconds. Maximum value: 3600 seconds.</p>"
  )
  @as("ManifestWindowSeconds")
  manifestWindowSeconds: option<__integer>,
}
@ocaml.doc("<p>The configuration for DASH PUT operations.</p>")
type dashConfigurationForPut = {
  @ocaml.doc(
    "<p>The setting that controls whether MediaTailor handles manifests from the origin server as multi-period manifests or single-period manifests. If your origin server produces single-period manifests, set this to SINGLE_PERIOD. The default setting is MULTI_PERIOD. For multi-period manifests, omit this setting or set it to MULTI_PERIOD.</p>"
  )
  @as("OriginManifestType")
  originManifestType: option<originManifestType>,
  @ocaml.doc(
    "<p>The setting that controls whether MediaTailor includes the Location tag in DASH manifests. MediaTailor populates the Location tag with the URL for manifest update requests, to be used by players that don't support sticky redirects. Disable this if you have CDN routing rules set up for accessing MediaTailor manifests, and you are either using client-side reporting or your players support sticky HTTP redirects. Valid values are DISABLED and EMT_DEFAULT. The EMT_DEFAULT setting enables the inclusion of the tag and is the default value.</p>"
  )
  @as("MpdLocation")
  mpdLocation: option<__string>,
}
@ocaml.doc("<p>The configuration for DASH content.</p>")
type dashConfiguration = {
  @ocaml.doc(
    "<p>The setting that controls whether MediaTailor handles manifests from the origin server as multi-period manifests or single-period manifests. If your origin server produces single-period manifests, set this to SINGLE_PERIOD. The default setting is MULTI_PERIOD. For multi-period manifests, omit this setting or set it to MULTI_PERIOD.</p>"
  )
  @as("OriginManifestType")
  originManifestType: option<originManifestType>,
  @ocaml.doc(
    "<p>The setting that controls whether MediaTailor includes the Location tag in DASH manifests. MediaTailor populates the Location tag with the URL for manifest update requests, to be used by players that don't support sticky redirects. Disable this if you have CDN routing rules set up for accessing MediaTailor manifests, and you are either using client-side reporting or your players support sticky HTTP redirects. Valid values are DISABLED and EMT_DEFAULT. The EMT_DEFAULT setting enables the inclusion of the tag and is the default value.</p>"
  )
  @as("MpdLocation")
  mpdLocation: option<__string>,
  @ocaml.doc(
    "<p>The URL generated by MediaTailor to initiate a playback session. The session uses server-side reporting. This setting is ignored in PUT operations.</p>"
  )
  @as("ManifestEndpointPrefix")
  manifestEndpointPrefix: option<__string>,
}
@ocaml.doc(
  "<p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>"
)
type cdnConfiguration = {
  @ocaml.doc(
    "<p>A content delivery network (CDN) to cache content segments, so that content requests don’t always have to go to the origin server. First, create a rule in your CDN for the content segment origin server. Then specify the rule's name in this ContentSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for content segments.</p>"
  )
  @as("ContentSegmentUrlPrefix")
  contentSegmentUrlPrefix: option<__string>,
  @ocaml.doc(
    "<p>A non-default content delivery network (CDN) to serve ad segments. By default, AWS Elemental MediaTailor uses Amazon CloudFront with default cache settings as its CDN for ad segments. To set up an alternate CDN, create a rule in your CDN for the origin ads.mediatailor.&amp;lt;region&gt;.amazonaws.com. Then specify the rule's name in this AdSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for ad segments.</p>"
  )
  @as("AdSegmentUrlPrefix")
  adSegmentUrlPrefix: option<__string>,
}
@ocaml.doc(
  "<p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html\">Bumpers</a>.</p>"
)
type bumper = {
  @ocaml.doc("<p>The URL for the start bumper asset.</p>") @as("StartUrl")
  startUrl: option<__string>,
  @ocaml.doc("<p>The URL for the end bumper asset.</p>") @as("EndUrl") endUrl: option<__string>,
}
@ocaml.doc(
  "<p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html\">Ad Suppression</a>.</p>"
)
type availSuppression = {
  @ocaml.doc(
    "<p>A live edge offset time in HH:MM:SS. MediaTailor won't fill ad breaks on or behind this time in the manifest lookback window. If Value is set to 00:00:00, it is in sync with the live edge, and MediaTailor won't fill any ad breaks on or behind the live edge. If you set a Value time, MediaTailor won't fill any ad breaks on or behind this time in the manifest lookback window. For example, if you set 00:45:00, then MediaTailor will fill ad breaks that occur within 45 minutes behind the live edge, but won't fill ad breaks on or behind 45 minutes behind the live edge.</p>"
  )
  @as("Value")
  value: option<__string>,
  @ocaml.doc(
    "<p>Sets the ad suppression mode. By default, ad suppression is off and all ad breaks are filled with ads or slate. When Mode is set to BEHIND_LIVE_EDGE, ad suppression is active and MediaTailor won't fill ad breaks on or behind the ad suppression Value time in the manifest lookback window.</p>"
  )
  @as("Mode")
  mode: option<mode>,
}
@ocaml.doc(
  "<p>For HLS, when set to true, MediaTailor passes through EXT-X-CUE-IN, EXT-X-CUE-OUT, and EXT-X-SPLICEPOINT-SCTE35 ad markers from the origin manifest to the MediaTailor personalized manifest.</p> <p>No logic is applied to these ad markers. For example, if EXT-X-CUE-OUT has a value of 60, but no ads are filled for that ad break, MediaTailor will not set the value to 0.</p>"
)
type adMarkerPassthrough = {
  @ocaml.doc("<p>Enables ad marker passthrough for your configuration.</p>") @as("Enabled")
  enabled: option<__boolean>,
}
@ocaml.doc("<p>Access configuration parameters.</p>")
type accessConfiguration = {
  @ocaml.doc(
    "<p>The type of authentication used to access content from HttpConfiguration::BaseUrl on your source location. Accepted value: S3_SIGV4.</p> <p>S3_SIGV4 - AWS Signature Version 4 authentication for Amazon S3 hosted virtual-style access. If your source location base URL is an Amazon S3 bucket, MediaTailor can use AWS Signature Version 4 (SigV4) authentication to access the bucket where your source content is stored. Your MediaTailor source location baseURL must follow the S3 virtual hosted-style request URL format. For example, https://bucket-name.s3.Region.amazonaws.com/key-name.</p> <p>Before you can use S3_SIGV4, you must meet these requirements:</p> <p>• You must allow MediaTailor to access your S3 bucket by granting mediatailor.amazonaws.com principal access in IAM. For information about configuring access in IAM, see Access management in the IAM User Guide.</p> <p>• The mediatailor.amazonaws.com service principal must have permissions to read all top level manifests referenced by the VodSource packaging configurations.</p> <p>• The caller of the API must have s3:GetObject IAM permissions to read all top level manifests referenced by your MediaTailor VodSource packaging configurations.</p>"
  )
  @as("AccessType")
  accessType: option<accessType>,
}
type __listOfScheduleEntry = array<scheduleEntry>
@ocaml.doc("<p>This response includes only the \"type\" : \"object\" property.</p>")
type sourceLocation = {
  @ocaml.doc("<p>The tags assigned to the source location.</p>") @as("Tags")
  tags: option<__mapOf__string>,
  @ocaml.doc("<p>The name of the source location.</p>") @as("SourceLocationName")
  sourceLocationName: __string,
  @ocaml.doc("<p>The timestamp that indicates when the source location was last modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<__timestampUnix>,
  @ocaml.doc("<p>The HTTP configuration for the source location.</p>") @as("HttpConfiguration")
  httpConfiguration: httpConfiguration,
  @ocaml.doc("<p>The default segment delivery configuration.</p>")
  @as("DefaultSegmentDeliveryConfiguration")
  defaultSegmentDeliveryConfiguration: option<defaultSegmentDeliveryConfiguration>,
  @ocaml.doc("<p>The timestamp that indicates when the source location was created.</p>")
  @as("CreationTime")
  creationTime: option<__timestampUnix>,
  @ocaml.doc("<p>The ARN of the SourceLocation.</p>") @as("Arn") arn: __string,
  @ocaml.doc("<p>The access configuration for the source location.</p>") @as("AccessConfiguration")
  accessConfiguration: option<accessConfiguration>,
}
@ocaml.doc(
  "<p>Schedule configuration parameters. A channel must be stopped before changes can be made to the schedule.</p>"
)
type scheduleConfiguration = {
  @ocaml.doc("<p>Program transition configurations.</p>") @as("Transition") transition: transition,
}
@ocaml.doc("<p>This response includes only the \"property\" : \"type\" property.</p>")
type responseOutputItem = {
  @ocaml.doc(
    "<p>A string used to associate a package configuration source group with a channel output.</p>"
  )
  @as("SourceGroup")
  sourceGroup: __string,
  @ocaml.doc("<p>The URL used for playback by content players.</p>") @as("PlaybackUrl")
  playbackUrl: __string,
  @ocaml.doc(
    "<p>The name of the manifest for the channel that will appear in the channel output's playback URL.</p>"
  )
  @as("ManifestName")
  manifestName: __string,
  @ocaml.doc("<p>HLS manifest configuration settings.</p>") @as("HlsPlaylistSettings")
  hlsPlaylistSettings: option<hlsPlaylistSettings>,
  @ocaml.doc("<p>DASH manifest configuration settings.</p>") @as("DashPlaylistSettings")
  dashPlaylistSettings: option<dashPlaylistSettings>,
}
@ocaml.doc("<p>The ouput configuration for this channel.</p>")
type requestOutputItem = {
  @ocaml.doc(
    "<p>A string used to match which HttpPackageConfiguration is used for each VodSource.</p>"
  )
  @as("SourceGroup")
  sourceGroup: __string,
  @ocaml.doc(
    "<p>The name of the manifest for the channel. The name appears in the PlaybackUrl.</p>"
  )
  @as("ManifestName")
  manifestName: __string,
  @ocaml.doc("<p>HLS playlist configuration parameters.</p>") @as("HlsPlaylistSettings")
  hlsPlaylistSettings: option<hlsPlaylistSettings>,
  @ocaml.doc("<p>DASH manifest configuration parameters.</p>") @as("DashPlaylistSettings")
  dashPlaylistSettings: option<dashPlaylistSettings>,
}
@ocaml.doc(
  "<p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>"
)
type manifestProcessingRules = {
  @ocaml.doc(
    "<p>For HLS, when set to true, MediaTailor passes through EXT-X-CUE-IN, EXT-X-CUE-OUT, and EXT-X-SPLICEPOINT-SCTE35 ad markers from the origin manifest to the MediaTailor personalized manifest.</p> <p>No logic is applied to these ad markers. For example, if EXT-X-CUE-OUT has a value of 60, but no ads are filled for that ad break, MediaTailor will not set the value to 0.</p>"
  )
  @as("AdMarkerPassthrough")
  adMarkerPassthrough: option<adMarkerPassthrough>,
}
@ocaml.doc("<p>The VOD source's HTTP package configuration settings.</p>")
type httpPackageConfigurations = array<httpPackageConfiguration>
@ocaml.doc("<p>The predefined aliases for dynamic variables.</p>")
type configurationAliasesResponse = Js.Dict.t<__mapOf__string>
@ocaml.doc("<p>The predefined aliases for dynamic variables.</p>")
type configurationAliasesRequest = Js.Dict.t<__mapOf__string>
@ocaml.doc("<p>Ad break configuration parameters.</p>")
type adBreak = {
  @ocaml.doc(
    "<p>This defines the SCTE-35 splice_insert() message inserted around the ad. For information about using splice_insert(), see the SCTE-35 specficiaiton, section 9.7.3.1.</p>"
  )
  @as("SpliceInsertMessage")
  spliceInsertMessage: option<spliceInsertMessage>,
  @ocaml.doc("<p>Ad break slate configuration.</p>") @as("Slate") slate: option<slateSource>,
  @ocaml.doc(
    "<p>How long (in milliseconds) after the beginning of the program that an ad starts. This value must fall within 100ms of a segment boundary, otherwise the ad break will be skipped.</p>"
  )
  @as("OffsetMillis")
  offsetMillis: option<__long>,
  @ocaml.doc("<p>The SCTE-35 ad insertion type. Accepted value: SPLICE_INSERT.</p>")
  @as("MessageType")
  messageType: option<messageType>,
}
type __listOfSourceLocation = array<sourceLocation>
type __listOfAdBreak = array<adBreak>
@ocaml.doc("<p>VOD source configuration parameters.</p>")
type vodSource = {
  @ocaml.doc("<p>The name of the VOD source.</p>") @as("VodSourceName") vodSourceName: __string,
  @ocaml.doc("<p>The tags assigned to the VOD source.</p>") @as("Tags")
  tags: option<__mapOf__string>,
  @ocaml.doc("<p>The name of the source location that the VOD source is associated with.</p>")
  @as("SourceLocationName")
  sourceLocationName: __string,
  @ocaml.doc("<p>The timestamp that indicates when the VOD source was last modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<__timestampUnix>,
  @ocaml.doc("<p>The HTTP package configurations for the VOD source.</p>")
  @as("HttpPackageConfigurations")
  httpPackageConfigurations: httpPackageConfigurations,
  @ocaml.doc("<p>The timestamp that indicates when the VOD source was created.</p>")
  @as("CreationTime")
  creationTime: option<__timestampUnix>,
  @ocaml.doc("<p>The ARN for the VOD source.</p>") @as("Arn") arn: __string,
}
type responseOutputs = array<responseOutputItem>
@ocaml.doc("<p>An object that represents an object in the CreateChannel request.</p>")
type requestOutputs = array<requestOutputItem>
@ocaml.doc(
  "<p>Creates a playback configuration. For information about MediaTailor configurations, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html\">Working with configurations in AWS Elemental MediaTailor</a>.</p>"
)
type playbackConfiguration = {
  @ocaml.doc(
    "<p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>"
  )
  @as("VideoContentSourceUrl")
  videoContentSourceUrl: option<__string>,
  @ocaml.doc(
    "<p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>"
  )
  @as("TranscodeProfileName")
  transcodeProfileName: option<__string>,
  @ocaml.doc("<p>The tags to assign to the playback configuration.</p>") @as("Tags")
  tags: option<__mapOf__string>,
  @ocaml.doc(
    "<p>The URL for a video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID playback configurations. For VPAID, the slate is required because MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>"
  )
  @as("SlateAdUrl")
  slateAdUrl: option<__string>,
  @ocaml.doc(
    "<p>The URL that the player uses to initialize a session that uses client-side reporting.</p>"
  )
  @as("SessionInitializationEndpointPrefix")
  sessionInitializationEndpointPrefix: option<__string>,
  @ocaml.doc(
    "<p>The URL that the player accesses to get a manifest from AWS Elemental MediaTailor.</p>"
  )
  @as("PlaybackEndpointPrefix")
  playbackEndpointPrefix: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the playback configuration.</p>")
  @as("PlaybackConfigurationArn")
  playbackConfigurationArn: option<__string>,
  @ocaml.doc(
    "<p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html\">Ad Behavior in AWS Elemental MediaTailor</a>.</p>"
  )
  @as("PersonalizationThresholdSeconds")
  personalizationThresholdSeconds: option<__integerMin1>,
  @ocaml.doc("<p>The identifier for the playback configuration.</p>") @as("Name")
  name: option<__string>,
  @ocaml.doc(
    "<p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>"
  )
  @as("ManifestProcessingRules")
  manifestProcessingRules: option<manifestProcessingRules>,
  @ocaml.doc("<p>The configuration for pre-roll ad insertion.</p>") @as("LivePreRollConfiguration")
  livePreRollConfiguration: option<livePreRollConfiguration>,
  @ocaml.doc("<p>The configuration for HLS content.</p>") @as("HlsConfiguration")
  hlsConfiguration: option<hlsConfiguration>,
  @ocaml.doc("<p>The configuration for a DASH source.</p>") @as("DashConfiguration")
  dashConfiguration: option<dashConfiguration>,
  @ocaml.doc(
    "<p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html\">Domain Variables</a>.</p>"
  )
  @as("ConfigurationAliases")
  configurationAliases: option<configurationAliasesResponse>,
  @ocaml.doc(
    "<p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>"
  )
  @as("CdnConfiguration")
  cdnConfiguration: option<cdnConfiguration>,
  @ocaml.doc(
    "<p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html\">Bumpers</a>.</p>"
  )
  @as("Bumper")
  bumper: option<bumper>,
  @ocaml.doc(
    "<p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html\">Ad Suppression</a>.</p>"
  )
  @as("AvailSuppression")
  availSuppression: option<availSuppression>,
  @ocaml.doc(
    "<p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.</p>"
  )
  @as("AdDecisionServerUrl")
  adDecisionServerUrl: option<__string>,
}
type __listOfVodSource = array<vodSource>
type __listOfPlaybackConfiguration = array<playbackConfiguration>
@ocaml.doc("<p>The configuration parameters for a channel.</p>")
type channel = {
  @ocaml.doc("<p>The tags to assign to the channel.</p>") @as("Tags") tags: option<__mapOf__string>,
  @ocaml.doc("<p>The type of playback mode for this channel. Possible values: ONCE or LOOP.</p>")
  @as("PlaybackMode")
  playbackMode: __string,
  @ocaml.doc("<p>The channel's output properties.</p>") @as("Outputs") outputs: responseOutputs,
  @ocaml.doc("<p>The timestamp of when the channel was last modified.</p>") @as("LastModifiedTime")
  lastModifiedTime: option<__timestampUnix>,
  @ocaml.doc("<p>The timestamp of when the channel was created.</p>") @as("CreationTime")
  creationTime: option<__timestampUnix>,
  @ocaml.doc("<p>Returns the state whether the channel is running or not.</p>") @as("ChannelState")
  channelState: __string,
  @ocaml.doc("<p>The name of the channel.</p>") @as("ChannelName") channelName: __string,
  @ocaml.doc("<p>The ARN of the channel.</p>") @as("Arn") arn: __string,
}
type __listOfChannel = array<channel>
@ocaml.doc(
  "<p>Use the AWS Elemental MediaTailor SDKs and CLI to configure scalable ad insertion and linear channels. With MediaTailor, you can assemble existing content into a linear stream and serve targeted ads to viewers while maintaining broadcast quality in over-the-top (OTT) video applications. For information about using the service, including detailed information about the settings covered in this guide, see the <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/\">AWS Elemental MediaTailor User Guide</a>.</p> <p>Through the SDKs and the CLI you manage AWS Elemental MediaTailor configurations and channels the same as you do through the console. For example, you specify ad insertion behavior and mapping information for the origin server and the ad decision server (ADS).</p>"
)
module StopChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }

  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "StopChannelCommand"
  let make = (~channelName, ()) => new({channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }

  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "StartChannelCommand"
  let make = (~channelName, ()) => new({channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutChannelPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Adds an IAM role that determines the permissions of your channel.</p>")
    @as("Policy")
    policy: __string,
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }

  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "PutChannelPolicyCommand"
  let make = (~policy, ~channelName, ()) => new({policy: policy, channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetChannelPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }
  type response = {
    @ocaml.doc("<p>The IAM policy for the channel.</p>") @as("Policy") policy: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "GetChannelPolicyCommand"
  let make = (~channelName, ()) => new({channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVodSource = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the VOD source you are working on.</p>") @as("VodSourceName")
    vodSourceName: __string,
    @ocaml.doc("<p>The identifier for the source location you are working on.</p>")
    @as("SourceLocationName")
    sourceLocationName: __string,
  }

  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "DeleteVodSourceCommand"
  let make = (~vodSourceName, ~sourceLocationName, ()) =>
    new({vodSourceName: vodSourceName, sourceLocationName: sourceLocationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSourceLocation = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the source location you are working on.</p>")
    @as("SourceLocationName")
    sourceLocationName: __string,
  }

  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "DeleteSourceLocationCommand"
  let make = (~sourceLocationName, ()) => new({sourceLocationName: sourceLocationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProgram = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the program you are working on.</p>") @as("ProgramName")
    programName: __string,
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }

  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "DeleteProgramCommand"
  let make = (~programName, ~channelName, ()) =>
    new({programName: programName, channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePlaybackConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the playback configuration.</p>") @as("Name") name: __string,
  }

  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "DeletePlaybackConfigurationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteChannelPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }

  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "DeleteChannelPolicyCommand"
  let make = (~channelName, ()) => new({channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }

  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "DeleteChannelCommand"
  let make = (~channelName, ()) => new({channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateSourceLocation = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the source location you are working on.</p>")
    @as("SourceLocationName")
    sourceLocationName: __string,
    @ocaml.doc("<p>The HTTP configuration for the source location.</p>") @as("HttpConfiguration")
    httpConfiguration: httpConfiguration,
    @ocaml.doc("<p>The optional configuration for the host server that serves segments.</p>")
    @as("DefaultSegmentDeliveryConfiguration")
    defaultSegmentDeliveryConfiguration: option<defaultSegmentDeliveryConfiguration>,
    @ocaml.doc(
      "<p>Access configuration parameters. Configures the type of authentication used to access content from your source location.</p>"
    )
    @as("AccessConfiguration")
    accessConfiguration: option<accessConfiguration>,
  }
  type response = {
    @ocaml.doc("<p>The tags assigned to the source location.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The name of the source location.</p>") @as("SourceLocationName")
    sourceLocationName: option<__string>,
    @ocaml.doc("<p>The timestamp that indicates when the source location was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<__timestampUnix>,
    @ocaml.doc("<p>The HTTP package configuration settings for the source location.</p>")
    @as("HttpConfiguration")
    httpConfiguration: option<httpConfiguration>,
    @ocaml.doc("<p>The default segment delivery configuration settings.</p>")
    @as("DefaultSegmentDeliveryConfiguration")
    defaultSegmentDeliveryConfiguration: option<defaultSegmentDeliveryConfiguration>,
    @ocaml.doc("<p>The timestamp that indicates when the source location was created.</p>")
    @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>The ARN of the source location.</p>") @as("Arn") arn: option<__string>,
    @ocaml.doc("<p>The access configuration for the source location.</p>")
    @as("AccessConfiguration")
    accessConfiguration: option<accessConfiguration>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "UpdateSourceLocationCommand"
  let make = (
    ~sourceLocationName,
    ~httpConfiguration,
    ~defaultSegmentDeliveryConfiguration=?,
    ~accessConfiguration=?,
    (),
  ) =>
    new({
      sourceLocationName: sourceLocationName,
      httpConfiguration: httpConfiguration,
      defaultSegmentDeliveryConfiguration: defaultSegmentDeliveryConfiguration,
      accessConfiguration: accessConfiguration,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A comma-separated list of the tag keys to remove from the playback configuration.</p>"
    )
    @as("TagKeys")
    tagKeys: __listOf__string,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request.</p>"
    )
    @as("ResourceArn")
    resourceArn: __string,
  }

  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A comma-separated list of tag key:value pairs.</p>") @as("Tags")
    tags: __mapOf__string,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request.</p>"
    )
    @as("ResourceArn")
    resourceArn: __string,
  }

  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request.</p>"
    )
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {
    @ocaml.doc("<p>A comma-separated list of tag key:value pairs.</p>") @as("Tags")
    tags: option<__mapOf__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSourceLocation = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the source location you are working on.</p>")
    @as("SourceLocationName")
    sourceLocationName: __string,
  }
  type response = {
    @ocaml.doc("<p>The tags assigned to the source location.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The name of the source location.</p>") @as("SourceLocationName")
    sourceLocationName: option<__string>,
    @ocaml.doc("<p>The timestamp that indicates when the source location was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<__timestampUnix>,
    @ocaml.doc("<p>The HTTP package configuration settings for the source location.</p>")
    @as("HttpConfiguration")
    httpConfiguration: option<httpConfiguration>,
    @ocaml.doc("<p>The default segment delivery configuration settings.</p>")
    @as("DefaultSegmentDeliveryConfiguration")
    defaultSegmentDeliveryConfiguration: option<defaultSegmentDeliveryConfiguration>,
    @ocaml.doc("<p>The timestamp that indicates when the source location was created.</p>")
    @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>The ARN of the source location.</p>") @as("Arn") arn: option<__string>,
    @ocaml.doc("<p>The access configuration for the source location.</p>")
    @as("AccessConfiguration")
    accessConfiguration: option<accessConfiguration>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "DescribeSourceLocationCommand"
  let make = (~sourceLocationName, ()) => new({sourceLocationName: sourceLocationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSourceLocation = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the source location.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The identifier for the source location you are working on.</p>")
    @as("SourceLocationName")
    sourceLocationName: __string,
    @ocaml.doc("<p>The source's HTTP package configurations.</p>") @as("HttpConfiguration")
    httpConfiguration: httpConfiguration,
    @ocaml.doc("<p>The optional configuration for the server that serves segments.</p>")
    @as("DefaultSegmentDeliveryConfiguration")
    defaultSegmentDeliveryConfiguration: option<defaultSegmentDeliveryConfiguration>,
    @ocaml.doc(
      "<p>Access configuration parameters. Configures the type of authentication used to access content from your source location.</p>"
    )
    @as("AccessConfiguration")
    accessConfiguration: option<accessConfiguration>,
  }
  type response = {
    @ocaml.doc("<p>The tags assigned to the source location.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The name of the source location.</p>") @as("SourceLocationName")
    sourceLocationName: option<__string>,
    @ocaml.doc("<p>The timestamp that indicates when the source location was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<__timestampUnix>,
    @ocaml.doc("<p>The HTTP package configuration settings for the source location.</p>")
    @as("HttpConfiguration")
    httpConfiguration: option<httpConfiguration>,
    @ocaml.doc("<p>The default segment delivery configuration settings.</p>")
    @as("DefaultSegmentDeliveryConfiguration")
    defaultSegmentDeliveryConfiguration: option<defaultSegmentDeliveryConfiguration>,
    @ocaml.doc("<p>The timestamp that indicates when the source location was created.</p>")
    @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>The ARN of the source location.</p>") @as("Arn") arn: option<__string>,
    @ocaml.doc("<p>The access configuration for the source location.</p>")
    @as("AccessConfiguration")
    accessConfiguration: option<accessConfiguration>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "CreateSourceLocationCommand"
  let make = (
    ~sourceLocationName,
    ~httpConfiguration,
    ~tags=?,
    ~defaultSegmentDeliveryConfiguration=?,
    ~accessConfiguration=?,
    (),
  ) =>
    new({
      tags: tags,
      sourceLocationName: sourceLocationName,
      httpConfiguration: httpConfiguration,
      defaultSegmentDeliveryConfiguration: defaultSegmentDeliveryConfiguration,
      accessConfiguration: accessConfiguration,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVodSource = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the VOD source you are working on.</p>") @as("VodSourceName")
    vodSourceName: __string,
    @ocaml.doc("<p>The identifier for the source location you are working on.</p>")
    @as("SourceLocationName")
    sourceLocationName: __string,
    @ocaml.doc("<p>An array of HTTP package configurations for the VOD source on this account.</p>")
    @as("HttpPackageConfigurations")
    httpPackageConfigurations: httpPackageConfigurations,
  }
  type response = {
    @ocaml.doc("<p>The name of the VOD source.</p>") @as("VodSourceName")
    vodSourceName: option<__string>,
    @ocaml.doc("<p>The tags assigned to the VOD source.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The name of the source location associated with the VOD source.</p>")
    @as("SourceLocationName")
    sourceLocationName: option<__string>,
    @ocaml.doc("<p>The ARN for the VOD source.</p>") @as("LastModifiedTime")
    lastModifiedTime: option<__timestampUnix>,
    @ocaml.doc("<p>The HTTP package configurations.</p>") @as("HttpPackageConfigurations")
    httpPackageConfigurations: option<httpPackageConfigurations>,
    @ocaml.doc("<p>The timestamp that indicates when the VOD source was created.</p>")
    @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>The ARN of the VOD source.</p>") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "UpdateVodSourceCommand"
  let make = (~vodSourceName, ~sourceLocationName, ~httpPackageConfigurations, ()) =>
    new({
      vodSourceName: vodSourceName,
      sourceLocationName: sourceLocationName,
      httpPackageConfigurations: httpPackageConfigurations,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutPlaybackConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>"
    )
    @as("VideoContentSourceUrl")
    videoContentSourceUrl: option<__string>,
    @ocaml.doc(
      "<p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>"
    )
    @as("TranscodeProfileName")
    transcodeProfileName: option<__string>,
    @ocaml.doc("<p>The tags to assign to the playback configuration.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "<p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>"
    )
    @as("SlateAdUrl")
    slateAdUrl: option<__string>,
    @ocaml.doc(
      "<p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html\">Ad Behavior in AWS Elemental MediaTailor</a>.</p>"
    )
    @as("PersonalizationThresholdSeconds")
    personalizationThresholdSeconds: option<__integerMin1>,
    @ocaml.doc("<p>The identifier for the playback configuration.</p>") @as("Name")
    name: option<__string>,
    @ocaml.doc(
      "<p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>"
    )
    @as("ManifestProcessingRules")
    manifestProcessingRules: option<manifestProcessingRules>,
    @ocaml.doc("<p>The configuration for pre-roll ad insertion.</p>")
    @as("LivePreRollConfiguration")
    livePreRollConfiguration: option<livePreRollConfiguration>,
    @ocaml.doc("<p>The configuration for DASH content.</p>") @as("DashConfiguration")
    dashConfiguration: option<dashConfigurationForPut>,
    @ocaml.doc(
      "<p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html\">Domain Variables</a>.</p>"
    )
    @as("ConfigurationAliases")
    configurationAliases: option<configurationAliasesRequest>,
    @ocaml.doc(
      "<p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>"
    )
    @as("CdnConfiguration")
    cdnConfiguration: option<cdnConfiguration>,
    @ocaml.doc(
      "<p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html\">Bumpers</a>.</p>"
    )
    @as("Bumper")
    bumper: option<bumper>,
    @ocaml.doc(
      "<p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html\">Ad Suppression</a>.</p>"
    )
    @as("AvailSuppression")
    availSuppression: option<availSuppression>,
    @ocaml.doc(
      "<p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.</p>"
    )
    @as("AdDecisionServerUrl")
    adDecisionServerUrl: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>"
    )
    @as("VideoContentSourceUrl")
    videoContentSourceUrl: option<__string>,
    @ocaml.doc(
      "<p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>"
    )
    @as("TranscodeProfileName")
    transcodeProfileName: option<__string>,
    @ocaml.doc("<p>The tags assigned to the playback configuration.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "<p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID playback configurations. For VPAID, the slate is required because MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>"
    )
    @as("SlateAdUrl")
    slateAdUrl: option<__string>,
    @ocaml.doc(
      "<p>The URL that the player uses to initialize a session that uses client-side reporting.</p>"
    )
    @as("SessionInitializationEndpointPrefix")
    sessionInitializationEndpointPrefix: option<__string>,
    @ocaml.doc(
      "<p>The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting.</p>"
    )
    @as("PlaybackEndpointPrefix")
    playbackEndpointPrefix: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the playback configuration.</p>")
    @as("PlaybackConfigurationArn")
    playbackConfigurationArn: option<__string>,
    @ocaml.doc(
      "<p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html\">Ad Behavior in AWS Elemental MediaTailor</a>.</p>"
    )
    @as("PersonalizationThresholdSeconds")
    personalizationThresholdSeconds: option<__integerMin1>,
    @ocaml.doc("<p>The identifier for the playback configuration.</p>") @as("Name")
    name: option<__string>,
    @ocaml.doc(
      "<p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>"
    )
    @as("ManifestProcessingRules")
    manifestProcessingRules: option<manifestProcessingRules>,
    @ocaml.doc("<p>The configuration for pre-roll ad insertion.</p>")
    @as("LivePreRollConfiguration")
    livePreRollConfiguration: option<livePreRollConfiguration>,
    @ocaml.doc("<p>The configuration for HLS content.</p>") @as("HlsConfiguration")
    hlsConfiguration: option<hlsConfiguration>,
    @ocaml.doc("<p>The configuration for DASH content.</p>") @as("DashConfiguration")
    dashConfiguration: option<dashConfiguration>,
    @ocaml.doc(
      "<p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html\">Domain Variables</a>.</p>"
    )
    @as("ConfigurationAliases")
    configurationAliases: option<configurationAliasesResponse>,
    @ocaml.doc(
      "<p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>"
    )
    @as("CdnConfiguration")
    cdnConfiguration: option<cdnConfiguration>,
    @ocaml.doc(
      "<p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html\">Bumpers</a>.</p>"
    )
    @as("Bumper")
    bumper: option<bumper>,
    @ocaml.doc(
      "<p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html\">Ad Suppression</a>.</p>"
    )
    @as("AvailSuppression")
    availSuppression: option<availSuppression>,
    @ocaml.doc(
      "<p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.</p>"
    )
    @as("AdDecisionServerUrl")
    adDecisionServerUrl: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "PutPlaybackConfigurationCommand"
  let make = (
    ~videoContentSourceUrl=?,
    ~transcodeProfileName=?,
    ~tags=?,
    ~slateAdUrl=?,
    ~personalizationThresholdSeconds=?,
    ~name=?,
    ~manifestProcessingRules=?,
    ~livePreRollConfiguration=?,
    ~dashConfiguration=?,
    ~configurationAliases=?,
    ~cdnConfiguration=?,
    ~bumper=?,
    ~availSuppression=?,
    ~adDecisionServerUrl=?,
    (),
  ) =>
    new({
      videoContentSourceUrl: videoContentSourceUrl,
      transcodeProfileName: transcodeProfileName,
      tags: tags,
      slateAdUrl: slateAdUrl,
      personalizationThresholdSeconds: personalizationThresholdSeconds,
      name: name,
      manifestProcessingRules: manifestProcessingRules,
      livePreRollConfiguration: livePreRollConfiguration,
      dashConfiguration: dashConfiguration,
      configurationAliases: configurationAliases,
      cdnConfiguration: cdnConfiguration,
      bumper: bumper,
      availSuppression: availSuppression,
      adDecisionServerUrl: adDecisionServerUrl,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPlaybackConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the playback configuration.</p>") @as("Name") name: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>"
    )
    @as("VideoContentSourceUrl")
    videoContentSourceUrl: option<__string>,
    @ocaml.doc(
      "<p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>"
    )
    @as("TranscodeProfileName")
    transcodeProfileName: option<__string>,
    @ocaml.doc("<p>The tags assigned to the playback configuration.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "<p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID playback configurations. For VPAID, the slate is required because MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>"
    )
    @as("SlateAdUrl")
    slateAdUrl: option<__string>,
    @ocaml.doc(
      "<p>The URL that the player uses to initialize a session that uses client-side reporting.</p>"
    )
    @as("SessionInitializationEndpointPrefix")
    sessionInitializationEndpointPrefix: option<__string>,
    @ocaml.doc(
      "<p>The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting.</p>"
    )
    @as("PlaybackEndpointPrefix")
    playbackEndpointPrefix: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the playback configuration.</p>")
    @as("PlaybackConfigurationArn")
    playbackConfigurationArn: option<__string>,
    @ocaml.doc(
      "<p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html\">Ad Behavior in AWS Elemental MediaTailor</a>.</p>"
    )
    @as("PersonalizationThresholdSeconds")
    personalizationThresholdSeconds: option<__integerMin1>,
    @ocaml.doc("<p>The identifier for the playback configuration.</p>") @as("Name")
    name: option<__string>,
    @ocaml.doc(
      "<p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>"
    )
    @as("ManifestProcessingRules")
    manifestProcessingRules: option<manifestProcessingRules>,
    @ocaml.doc("<p>The configuration for pre-roll ad insertion.</p>")
    @as("LivePreRollConfiguration")
    livePreRollConfiguration: option<livePreRollConfiguration>,
    @ocaml.doc("<p>The configuration for HLS content.</p>") @as("HlsConfiguration")
    hlsConfiguration: option<hlsConfiguration>,
    @ocaml.doc("<p>The configuration for DASH content.</p>") @as("DashConfiguration")
    dashConfiguration: option<dashConfiguration>,
    @ocaml.doc(
      "<p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html\">Domain Variables</a>.</p>"
    )
    @as("ConfigurationAliases")
    configurationAliases: option<configurationAliasesResponse>,
    @ocaml.doc(
      "<p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>"
    )
    @as("CdnConfiguration")
    cdnConfiguration: option<cdnConfiguration>,
    @ocaml.doc(
      "<p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html\">Bumpers</a>.</p>"
    )
    @as("Bumper")
    bumper: option<bumper>,
    @ocaml.doc(
      "<p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html\">Ad Suppression</a>.</p>"
    )
    @as("AvailSuppression")
    availSuppression: option<availSuppression>,
    @ocaml.doc(
      "<p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.</p>"
    )
    @as("AdDecisionServerUrl")
    adDecisionServerUrl: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "GetPlaybackConfigurationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetChannelSchedule = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>Upper bound on number of records to return. The maximum number of results is 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The schedule duration in minutes. The maximum duration is 4320 minutes (three days).</p>"
    )
    @as("DurationMinutes")
    durationMinutes: option<__string>,
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of schedule entries for the channel.</p>") @as("Items")
    items: option<__listOfScheduleEntry>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "GetChannelScheduleCommand"
  let make = (~channelName, ~nextToken=?, ~maxResults=?, ~durationMinutes=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      durationMinutes: durationMinutes,
      channelName: channelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVodSource = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the VOD source you are working on.</p>") @as("VodSourceName")
    vodSourceName: __string,
    @ocaml.doc("<p>The identifier for the source location you are working on.</p>")
    @as("SourceLocationName")
    sourceLocationName: __string,
  }
  type response = {
    @ocaml.doc("<p>The name of the VOD source.</p>") @as("VodSourceName")
    vodSourceName: option<__string>,
    @ocaml.doc("<p>The tags assigned to the VOD source.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The name of the source location associated with the VOD source.</p>")
    @as("SourceLocationName")
    sourceLocationName: option<__string>,
    @ocaml.doc("<p>The ARN for the VOD source.</p>") @as("LastModifiedTime")
    lastModifiedTime: option<__timestampUnix>,
    @ocaml.doc("<p>The HTTP package configurations.</p>") @as("HttpPackageConfigurations")
    httpPackageConfigurations: option<httpPackageConfigurations>,
    @ocaml.doc("<p>The timestamp that indicates when the VOD source was created.</p>")
    @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>The ARN of the VOD source.</p>") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "DescribeVodSourceCommand"
  let make = (~vodSourceName, ~sourceLocationName, ()) =>
    new({vodSourceName: vodSourceName, sourceLocationName: sourceLocationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVodSource = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the VOD source you are working on.</p>") @as("VodSourceName")
    vodSourceName: __string,
    @ocaml.doc("<p>The tags to assign to the VOD source.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The identifier for the source location you are working on.</p>")
    @as("SourceLocationName")
    sourceLocationName: __string,
    @ocaml.doc("<p>An array of HTTP package configuration parameters for this VOD source.</p>")
    @as("HttpPackageConfigurations")
    httpPackageConfigurations: httpPackageConfigurations,
  }
  type response = {
    @ocaml.doc("<p>The name of the VOD source.</p>") @as("VodSourceName")
    vodSourceName: option<__string>,
    @ocaml.doc("<p>The tags assigned to the VOD source.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The name of the source location associated with the VOD source.</p>")
    @as("SourceLocationName")
    sourceLocationName: option<__string>,
    @ocaml.doc("<p>The ARN for the VOD source.</p>") @as("LastModifiedTime")
    lastModifiedTime: option<__timestampUnix>,
    @ocaml.doc("<p>The HTTP package configurations.</p>") @as("HttpPackageConfigurations")
    httpPackageConfigurations: option<httpPackageConfigurations>,
    @ocaml.doc("<p>The timestamp that indicates when the VOD source was created.</p>")
    @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>The ARN of the VOD source.</p>") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "CreateVodSourceCommand"
  let make = (~vodSourceName, ~sourceLocationName, ~httpPackageConfigurations, ~tags=?, ()) =>
    new({
      vodSourceName: vodSourceName,
      tags: tags,
      sourceLocationName: sourceLocationName,
      httpPackageConfigurations: httpPackageConfigurations,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The channel's output properties.</p>") @as("Outputs") outputs: requestOutputs,
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }
  type response = {
    @ocaml.doc("<p>The tags assigned to the channel.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The type of playback for this channel. The only supported value is LOOP.</p>")
    @as("PlaybackMode")
    playbackMode: option<__string>,
    @ocaml.doc("<p>The channel's output properties.</p>") @as("Outputs")
    outputs: option<responseOutputs>,
    @ocaml.doc("<p>The timestamp of when the channel was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<__timestampUnix>,
    @ocaml.doc("<p>The timestamp of when the channel was created.</p>") @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>Indicates whether the channel is in a running state or not.</p>")
    @as("ChannelState")
    channelState: option<channelState>,
    @ocaml.doc("<p>The name of the channel.</p>") @as("ChannelName") channelName: option<__string>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "UpdateChannelCommand"
  let make = (~outputs, ~channelName, ()) => new({outputs: outputs, channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSourceLocations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>Upper bound on number of records to return. The maximum number of results is 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>Pagination token from the list request. Use the token to fetch the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of source locations.</p>") @as("Items")
    items: option<__listOfSourceLocation>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "ListSourceLocationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProgram = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the program you are working on.</p>") @as("ProgramName")
    programName: __string,
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }
  type response = {
    @ocaml.doc("<p>The name that's used to refer to a VOD source.</p>") @as("VodSourceName")
    vodSourceName: option<__string>,
    @ocaml.doc("<p>The source location name.</p>") @as("SourceLocationName")
    sourceLocationName: option<__string>,
    @ocaml.doc("<p>The name of the program.</p>") @as("ProgramName") programName: option<__string>,
    @ocaml.doc("<p>The timestamp of when the program was created.</p>") @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>The name of the channel that the program belongs to.</p>") @as("ChannelName")
    channelName: option<__string>,
    @ocaml.doc("<p>The ARN of the program.</p>") @as("Arn") arn: option<__string>,
    @ocaml.doc("<p>The ad break configuration settings.</p>") @as("AdBreaks")
    adBreaks: option<__listOfAdBreak>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "DescribeProgramCommand"
  let make = (~programName, ~channelName, ()) =>
    new({programName: programName, channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }
  type response = {
    @ocaml.doc("<p>The tags assigned to the channel.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The type of playback for this channel. The only supported value is LOOP.</p>")
    @as("PlaybackMode")
    playbackMode: option<__string>,
    @ocaml.doc("<p>The channel's output properties.</p>") @as("Outputs")
    outputs: option<responseOutputs>,
    @ocaml.doc("<p>The timestamp of when the channel was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<__timestampUnix>,
    @ocaml.doc("<p>The timestamp of when the channel was created.</p>") @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>Indicates whether the channel is in a running state or not.</p>")
    @as("ChannelState")
    channelState: option<channelState>,
    @ocaml.doc("<p>The name of the channel.</p>") @as("ChannelName") channelName: option<__string>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "DescribeChannelCommand"
  let make = (~channelName, ()) => new({channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProgram = {
  type t
  type request = {
    @ocaml.doc("<p>The name that's used to refer to a VOD source.</p>") @as("VodSourceName")
    vodSourceName: __string,
    @ocaml.doc("<p>The name of the source location.</p>") @as("SourceLocationName")
    sourceLocationName: __string,
    @ocaml.doc("<p>The schedule configuration settings.</p>") @as("ScheduleConfiguration")
    scheduleConfiguration: scheduleConfiguration,
    @ocaml.doc("<p>The identifier for the program you are working on.</p>") @as("ProgramName")
    programName: __string,
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
    @ocaml.doc("<p>The ad break configuration settings.</p>") @as("AdBreaks")
    adBreaks: option<__listOfAdBreak>,
  }
  type response = {
    @ocaml.doc("<p>The name that's used to refer to a VOD source.</p>") @as("VodSourceName")
    vodSourceName: option<__string>,
    @ocaml.doc("<p>The source location name.</p>") @as("SourceLocationName")
    sourceLocationName: option<__string>,
    @ocaml.doc("<p>The name of the program.</p>") @as("ProgramName") programName: option<__string>,
    @ocaml.doc("<p>The timestamp of when the program was created.</p>") @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>The name of the channel that the program belongs to.</p>") @as("ChannelName")
    channelName: option<__string>,
    @ocaml.doc("<p>The ARN of the program.</p>") @as("Arn") arn: option<__string>,
    @ocaml.doc("<p>The ad break configuration settings.</p>") @as("AdBreaks")
    adBreaks: option<__listOfAdBreak>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "CreateProgramCommand"
  let make = (
    ~vodSourceName,
    ~sourceLocationName,
    ~scheduleConfiguration,
    ~programName,
    ~channelName,
    ~adBreaks=?,
    (),
  ) =>
    new({
      vodSourceName: vodSourceName,
      sourceLocationName: sourceLocationName,
      scheduleConfiguration: scheduleConfiguration,
      programName: programName,
      channelName: channelName,
      adBreaks: adBreaks,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the channel.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "<p>The type of playback mode for this channel. The only supported value is LOOP.</p>"
    )
    @as("PlaybackMode")
    playbackMode: playbackMode,
    @ocaml.doc("<p>The channel's output properties.</p>") @as("Outputs") outputs: requestOutputs,
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }
  type response = {
    @ocaml.doc("<p>The tags assigned to the channel.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The type of playback for this channel. The only supported value is LOOP.</p>")
    @as("PlaybackMode")
    playbackMode: option<__string>,
    @ocaml.doc("<p>The channel's output properties.</p>") @as("Outputs")
    outputs: option<responseOutputs>,
    @ocaml.doc("<p>The timestamp of when the channel was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<__timestampUnix>,
    @ocaml.doc("<p>The timestamp of when the channel was created.</p>") @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>Indicates whether the channel is in a running state or not.</p>")
    @as("ChannelState")
    channelState: option<channelState>,
    @ocaml.doc("<p>The name of the channel.</p>") @as("ChannelName") channelName: option<__string>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "CreateChannelCommand"
  let make = (~playbackMode, ~outputs, ~channelName, ~tags=?, ()) =>
    new({tags: tags, playbackMode: playbackMode, outputs: outputs, channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVodSources = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the source location you are working on.</p>")
    @as("SourceLocationName")
    sourceLocationName: __string,
    @ocaml.doc(
      "<p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>Upper bound on number of records to return. The maximum number of results is 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>Pagination token from the list request. Use the token to fetch the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>Lists the VOD sources.</p>") @as("Items") items: option<__listOfVodSource>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "ListVodSourcesCommand"
  let make = (~sourceLocationName, ~nextToken=?, ~maxResults=?, ()) =>
    new({sourceLocationName: sourceLocationName, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPlaybackConfigurations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Pagination token returned by the GET list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>Maximum number of records to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>Pagination token returned by the GET list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>Array of playback configurations. This might be all the available configurations or a subset, depending on the settings that you provide and the total number of configurations stored.</p>"
    )
    @as("Items")
    items: option<__listOfPlaybackConfiguration>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "ListPlaybackConfigurationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannels = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>Upper bound on number of records to return. The maximum number of results is 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of channels that are associated with this account.</p>") @as("Items")
    items: option<__listOfChannel>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "ListChannelsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
