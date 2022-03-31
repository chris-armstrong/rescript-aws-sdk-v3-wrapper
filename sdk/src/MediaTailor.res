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
type __integerMin1Max100 = int
type __integerMin1 = int
type __integer = int
type __boolean = bool
type type_ = [@as("HLS") #HLS | @as("DASH") #DASH]
type scheduleEntryType = [@as("FILLER_SLATE") #FILLER_SLATE | @as("PROGRAM") #PROGRAM]
type relativePosition = [
  | @as("AFTER_PROGRAM") #AFTER_PROGRAM
  | @as("BEFORE_PROGRAM") #BEFORE_PROGRAM
]
type playbackMode = [@as("LINEAR") #LINEAR | @as("LOOP") #LOOP]
type originManifestType = [@as("MULTI_PERIOD") #MULTI_PERIOD | @as("SINGLE_PERIOD") #SINGLE_PERIOD]
type operator = [@as("EQUALS") #EQUALS]
type mode = [@as("BEHIND_LIVE_EDGE") #BEHIND_LIVE_EDGE | @as("OFF") #OFF]
type messageType = [@as("SPLICE_INSERT") #SPLICE_INSERT]
type maxResults = int
type channelState = [@as("STOPPED") #STOPPED | @as("RUNNING") #RUNNING]
type accessType = [
  | @as("SECRETS_MANAGER_ACCESS_TOKEN") #SECRETS_MANAGER_ACCESS_TOKEN
  | @as("S3_SIGV4") #S3_SIGV4
]
type __mapOf__string = Js.Dict.t<__string>
type __listOf__string = array<__string>
@ocaml.doc("<p>Program transition configuration.</p>")
type transition = {
  @ocaml.doc(
    "<p>Defines when the program plays in the schedule. You can set the value to ABSOLUTE or RELATIVE.</p> <p>ABSOLUTE - The program plays at a specific wall clock time. This setting can only be used for channels using the LINEAR PlaybackMode.</p> <p>Note the following considerations when using ABSOLUTE transitions:</p> <p>If the preceding program in the schedule has a duration that extends past the wall clock time, MediaTailor truncates the preceding program on a common segment boundary.</p> <p>If there are gaps in playback, MediaTailor plays the FillerSlate you configured for your linear channel.</p> <p>RELATIVE - The program is inserted into the schedule either before or after a program that you specify via RelativePosition.</p>"
  )
  @as("Type")
  type_: __string,
  @ocaml.doc(
    "<p>The date and time that the program is scheduled to start, in epoch milliseconds.</p>"
  )
  @as("ScheduledStartTimeMillis")
  scheduledStartTimeMillis: option<__long>,
  @ocaml.doc(
    "<p>The name of the program that this program will be inserted next to, as defined by RelativePosition.</p>"
  )
  @as("RelativeProgram")
  relativeProgram: option<__string>,
  @ocaml.doc(
    "<p>The position where this program will be inserted relative to the RelativePosition.</p>"
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
type segmentDeliveryConfiguration = {
  @as("Name") name: option<__string>,
  @as("BaseUrl") baseUrl: option<__string>,
}
@ocaml.doc(
  "<p>AWS Secrets Manager access token configuration parameters. For information about Secrets Manager access token authentication, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-access-configuration-access-token.html\">Working with AWS Secrets Manager access token authentication</a>.</p>"
)
type secretsManagerAccessTokenConfiguration = {
  @ocaml.doc(
    "<p>The AWS Secrets Manager <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_CreateSecret.html#SecretsManager-CreateSecret-request-SecretString.html\">SecretString</a> key associated with the access token. MediaTailor uses the key to look up SecretString key and value pair containing the access token.</p>"
  )
  @as("SecretStringKey")
  secretStringKey: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the access token.</p>"
  )
  @as("SecretArn")
  secretArn: option<__string>,
  @ocaml.doc(
    "<p>The name of the HTTP header used to supply the access token in requests to the source location.</p>"
  )
  @as("HeaderName")
  headerName: option<__string>,
}
@ocaml.doc("<p>The schedule's ad break properties.</p>")
type scheduleAdBreak = {
  @ocaml.doc("<p>The name of the VOD source used for the ad break.</p>") @as("VodSourceName")
  vodSourceName: option<__string>,
  @ocaml.doc(
    "<p>The name of the source location containing the VOD source used for the ad break.</p>"
  )
  @as("SourceLocationName")
  sourceLocationName: option<__string>,
  @ocaml.doc("<p>The approximate time that the ad will start playing.</p>")
  @as("ApproximateStartTime")
  approximateStartTime: option<__timestampUnix>,
  @ocaml.doc("<p>The approximate duration of the ad break, in seconds.</p>")
  @as("ApproximateDurationSeconds")
  approximateDurationSeconds: option<__long>,
}
@ocaml.doc("<p>Returns Amazon CloudWatch log settings for a playback configuration.</p>")
type logConfiguration = {
  @ocaml.doc(
    "<p>The percentage of session logs that MediaTailor sends to your Cloudwatch Logs account. For example, if your playback configuration has 1000 sessions and percentEnabled is set to 60, MediaTailor sends logs for 600 of the sessions to CloudWatch Logs. MediaTailor decides at random which of the playback configuration sessions to send logs for. If you want to view logs for a specific session, you can use the <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html\">debug log mode</a>.</p> <p>Valid values: 0 - 100</p>"
  )
  @as("PercentEnabled")
  percentEnabled: __integer,
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
  "<p>MediaTailor only places (consumes) prefetched ads if the ad break meets the criteria defined by the dynamic variables. This gives you granular control over which ad break to place the prefetched ads into.</p> <p>As an example, let's say that you set DynamicVariable to scte.event_id and Operator to EQUALS, and your playback configuration has an ADS URL of https://my.ads.server.com/path?&amp;podId=[scte.avail_num]&amp;event=[scte.event_id]&amp;duration=[session.avail_duration_secs]. And the prefetch request to the ADS contains these values https://my.ads.server.com/path?&amp;podId=3&amp;event=my-awesome-event&amp;duration=30. MediaTailor will only insert the prefetched ads into the ad break if has a SCTE marker with an event id of my-awesome-event, since it must match the event id that MediaTailor uses to query the ADS.</p> <p>You can specify up to five AvailMatchingCriteria. If you specify multiple AvailMatchingCriteria, MediaTailor combines them to match using a logical AND. You can model logical OR combinations by creating multiple prefetch schedules.</p>"
)
type availMatchingCriteria = {
  @ocaml.doc(
    "<p>For the DynamicVariable specified in AvailMatchingCriteria, the Operator that is used for the comparison.</p>"
  )
  @as("Operator")
  operator: operator,
  @ocaml.doc(
    "<p>The dynamic variable(s) that MediaTailor should use as avail matching criteria. MediaTailor only places the prefetched ads into the avail if the avail matches the criteria defined by the dynamic variable. For information about dynamic variables, see <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/variables.html\">Using dynamic ad variables</a> in the <i>MediaTailor User Guide</i>.</p> <p>You can include up to 100 dynamic variables.</p>"
  )
  @as("DynamicVariable")
  dynamicVariable: __string,
}
@ocaml.doc(
  "<p>For HLS, when set to true, MediaTailor passes through EXT-X-CUE-IN, EXT-X-CUE-OUT, and EXT-X-SPLICEPOINT-SCTE35 ad markers from the origin manifest to the MediaTailor personalized manifest.</p> <p>No logic is applied to these ad markers. For example, if EXT-X-CUE-OUT has a value of 60, but no ads are filled for that ad break, MediaTailor will not set the value to 0.</p>"
)
type adMarkerPassthrough = {
  @ocaml.doc("<p>Enables ad marker passthrough for your configuration.</p>") @as("Enabled")
  enabled: option<__boolean>,
}
type __listOfSegmentDeliveryConfiguration = array<segmentDeliveryConfiguration>
type __listOfScheduleAdBreak = array<scheduleAdBreak>
type __listOfAvailMatchingCriteria = array<availMatchingCriteria>
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
@ocaml.doc("<p>The output configuration for this channel.</p>")
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
  "<p>A complex type that contains settings governing when MediaTailor prefetches ads, and which dynamic variables that MediaTailor includes in the request to the ad decision server.</p>"
)
type prefetchRetrieval = {
  @ocaml.doc(
    "<p>The time when prefetch retrievals can start for this break. Ad prefetching will be attempted for manifest requests that occur at or after this time. Defaults to the current time. If not specified, the prefetch retrieval starts as soon as possible.</p>"
  )
  @as("StartTime")
  startTime: option<__timestampUnix>,
  @ocaml.doc(
    "<p>The time when prefetch retrieval ends for the ad break. Prefetching will be attempted for manifest requests that occur at or before this time.</p>"
  )
  @as("EndTime")
  endTime: __timestampUnix,
  @ocaml.doc(
    "<p>The dynamic variables to use for substitution during prefetch requests to the ad decision server (ADS).</p> <p>You intially configure <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/variables.html\">dynamic variables</a> for the ADS URL when you set up your playback configuration. When you specify DynamicVariables for prefetch retrieval, MediaTailor includes the dynamic variables in the request to the ADS.</p>"
  )
  @as("DynamicVariables")
  dynamicVariables: option<__mapOf__string>,
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
@ocaml.doc("<p>Alert configuration parameters.</p>")
type alert = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
  resourceArn: __string,
  @ocaml.doc("<p>The Amazon Resource Names (ARNs) related to this alert.</p>")
  @as("RelatedResourceArns")
  relatedResourceArns: __listOf__string,
  @ocaml.doc("<p>The timestamp when the alert was last modified.</p>") @as("LastModifiedTime")
  lastModifiedTime: __timestampUnix,
  @ocaml.doc(
    "<p>If an alert is generated for a resource, an explanation of the reason for the alert.</p>"
  )
  @as("AlertMessage")
  alertMessage: __string,
  @ocaml.doc("<p>The code for the alert. For example, NOT_PROCESSED.</p>") @as("AlertCode")
  alertCode: __string,
}
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
@ocaml.doc("<p>Access configuration parameters.</p>")
type accessConfiguration = {
  @ocaml.doc("<p>AWS Secrets Manager access token configuration parameters.</p>")
  @as("SecretsManagerAccessTokenConfiguration")
  secretsManagerAccessTokenConfiguration: option<secretsManagerAccessTokenConfiguration>,
  @ocaml.doc(
    "<p>The type of authentication used to access content from HttpConfiguration::BaseUrl on your source location. Accepted value: S3_SIGV4.</p> <p>S3_SIGV4 - AWS Signature Version 4 authentication for Amazon S3 hosted virtual-style access. If your source location base URL is an Amazon S3 bucket, MediaTailor can use AWS Signature Version 4 (SigV4) authentication to access the bucket where your source content is stored. Your MediaTailor source location baseURL must follow the S3 virtual hosted-style request URL format. For example, https://bucket-name.s3.Region.amazonaws.com/key-name.</p> <p>Before you can use S3_SIGV4, you must meet these requirements:</p> <p>• You must allow MediaTailor to access your S3 bucket by granting mediatailor.amazonaws.com principal access in IAM. For information about configuring access in IAM, see Access management in the IAM User Guide.</p> <p>• The mediatailor.amazonaws.com service principal must have permissions to read all top level manifests referenced by the VodSource packaging configurations.</p> <p>• The caller of the API must have s3:GetObject IAM permissions to read all top level manifests referenced by your MediaTailor VodSource packaging configurations.</p>"
  )
  @as("AccessType")
  accessType: option<accessType>,
}
type __listOfAlert = array<alert>
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
@ocaml.doc("<p>This response includes only the \"type\" : \"object\" property.</p>")
type sourceLocation = {
  @ocaml.doc("<p>The tags assigned to the source location.</p>") @as("Tags")
  tags: option<__mapOf__string>,
  @ocaml.doc("<p>The name of the source location.</p>") @as("SourceLocationName")
  sourceLocationName: __string,
  @as("SegmentDeliveryConfigurations")
  segmentDeliveryConfigurations: option<__listOfSegmentDeliveryConfiguration>,
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
@ocaml.doc("<p>The properties for a schedule.</p>")
type scheduleEntry = {
  @ocaml.doc("<p>The name of the VOD source.</p>") @as("VodSourceName") vodSourceName: __string,
  @ocaml.doc("<p>The name of the source location.</p>") @as("SourceLocationName")
  sourceLocationName: __string,
  @ocaml.doc("<p>The type of schedule entry.</p> <p>Valid values: PROGRAM or FILLER_SLATE.</p>")
  @as("ScheduleEntryType")
  scheduleEntryType: option<scheduleEntryType>,
  @ocaml.doc("<p>The schedule's ad break properties.</p>") @as("ScheduleAdBreaks")
  scheduleAdBreaks: option<__listOfScheduleAdBreak>,
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
type responseOutputs = array<responseOutputItem>
@ocaml.doc("<p>An object that represents an object in the CreateChannel request.</p>")
type requestOutputs = array<requestOutputItem>
@ocaml.doc(
  "<p>A complex type that contains settings that determine how and when that MediaTailor places prefetched ads into upcoming ad breaks.</p>"
)
type prefetchConsumption = {
  @ocaml.doc(
    "<p>The time when prefetched ads are considered for use in an ad break. If you don't specify StartTime, the prefetched ads are available after MediaTailor retrives them from the ad decision server.</p>"
  )
  @as("StartTime")
  startTime: option<__timestampUnix>,
  @ocaml.doc(
    "<p>The time when MediaTailor no longer considers the prefetched ads for use in an ad break. MediaTailor automatically deletes prefetch schedules no less than seven days after the end time. If you'd like to manually delete the prefetch schedule, you can call DeletePrefetchSchedule.</p>"
  )
  @as("EndTime")
  endTime: __timestampUnix,
  @ocaml.doc(
    "<p>If you only want MediaTailor to insert prefetched ads into avails (ad breaks) that match specific dynamic variables, such as scte.event_id, set the avail matching criteria.</p>"
  )
  @as("AvailMatchingCriteria")
  availMatchingCriteria: option<__listOfAvailMatchingCriteria>,
}
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
  @ocaml.doc("<p>The Amazon CloudWatch log settings for a playback configuration.</p>")
  @as("LogConfiguration")
  logConfiguration: option<logConfiguration>,
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
type __listOfSourceLocation = array<sourceLocation>
type __listOfScheduleEntry = array<scheduleEntry>
type __listOfPlaybackConfiguration = array<playbackConfiguration>
@ocaml.doc("<p>A complex type that contains prefetch schedule information.</p>")
type prefetchSchedule = {
  @ocaml.doc(
    "<p>An optional stream identifier that you can specify in order to prefetch for multiple streams that use the same playback configuration.</p>"
  )
  @as("StreamId")
  streamId: option<__string>,
  @ocaml.doc(
    "<p>A complex type that contains settings for prefetch retrieval from the ad decision server (ADS).</p>"
  )
  @as("Retrieval")
  retrieval: prefetchRetrieval,
  @ocaml.doc("<p>The name of the playback configuration to create the prefetch schedule for.</p>")
  @as("PlaybackConfigurationName")
  playbackConfigurationName: __string,
  @ocaml.doc(
    "<p>The name of the prefetch schedule. The name must be unique among all prefetch schedules that are associated with the specified playback configuration.</p>"
  )
  @as("Name")
  name: __string,
  @ocaml.doc(
    "<p>Consumption settings determine how, and when, MediaTailor places the prefetched ads into ad breaks. Ad consumption occurs within a span of time that you define, called a <i>consumption window</i>. You can designate which ad breaks that MediaTailor fills with prefetch ads by setting avail matching criteria.</p>"
  )
  @as("Consumption")
  consumption: prefetchConsumption,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the prefetch schedule.</p>") @as("Arn")
  arn: __string,
}
@ocaml.doc("<p>The configuration parameters for a channel.</p>")
type channel = {
  @ocaml.doc("<p>The tags to assign to the channel.</p>") @as("Tags") tags: option<__mapOf__string>,
  @ocaml.doc(
    "<p>The type of playback mode for this channel.</p> <p>LINEAR - Programs play back-to-back only once.</p> <p>LOOP - Programs play back-to-back in an endless loop. When the last program in the schedule plays, playback loops back to the first program in the schedule.</p>"
  )
  @as("PlaybackMode")
  playbackMode: __string,
  @ocaml.doc("<p>The channel's output properties.</p>") @as("Outputs") outputs: responseOutputs,
  @ocaml.doc("<p>The timestamp of when the channel was last modified.</p>") @as("LastModifiedTime")
  lastModifiedTime: option<__timestampUnix>,
  @ocaml.doc(
    "<p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the LINEAR PlaybackMode. MediaTailor doesn't support filler slate for channels using the LOOP PlaybackMode.</p>"
  )
  @as("FillerSlate")
  fillerSlate: option<slateSource>,
  @ocaml.doc("<p>The timestamp of when the channel was created.</p>") @as("CreationTime")
  creationTime: option<__timestampUnix>,
  @ocaml.doc("<p>Returns the state whether the channel is running or not.</p>") @as("ChannelState")
  channelState: __string,
  @ocaml.doc("<p>The name of the channel.</p>") @as("ChannelName") channelName: __string,
  @ocaml.doc("<p>The ARN of the channel.</p>") @as("Arn") arn: __string,
}
type __listOfPrefetchSchedule = array<prefetchSchedule>
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
  type response = {.}
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
  type response = {.}
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
  type response = {.}
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
  type response = {.}
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
  type response = {.}
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
  type response = {.}
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "DeleteProgramCommand"
  let make = (~programName, ~channelName, ()) =>
    new({programName: programName, channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePrefetchSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the playback configuration.</p>") @as("PlaybackConfigurationName")
    playbackConfigurationName: __string,
    @ocaml.doc("<p>The identifier for the playback configuration.</p>") @as("Name") name: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "DeletePrefetchScheduleCommand"
  let make = (~playbackConfigurationName, ~name, ()) =>
    new({playbackConfigurationName: playbackConfigurationName, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePlaybackConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the playback configuration.</p>") @as("Name") name: __string,
  }
  type response = {.}
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
  type response = {.}
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
  type response = {.}
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "DeleteChannelCommand"
  let make = (~channelName, ()) => new({channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ConfigureLogsForPlaybackConfiguration = {
  type t
  @ocaml.doc("<p>Configures Amazon CloudWatch log settings for a playback configuration.</p>")
  type request = {
    @ocaml.doc("<p>The name of the playback configuration.</p>") @as("PlaybackConfigurationName")
    playbackConfigurationName: __string,
    @ocaml.doc(
      "<p>The percentage of session logs that MediaTailor sends to your Cloudwatch Logs account. For example, if your playback configuration has 1000 sessions and percentEnabled is set to 60, MediaTailor sends logs for 600 of the sessions to CloudWatch Logs. MediaTailor decides at random which of the playback configuration sessions to send logs for. If you want to view logs for a specific session, you can use the <a href=\"https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html\">debug log mode</a>.</p> <p>Valid values: 0 - 100</p>"
    )
    @as("PercentEnabled")
    percentEnabled: __integer,
  }
  type response = {
    @ocaml.doc("<p>The name of the playback configuration.</p>") @as("PlaybackConfigurationName")
    playbackConfigurationName: option<__string>,
    @ocaml.doc(
      "<p>The percentage of session logs that MediaTailor sends to your Cloudwatch Logs account.</p>"
    )
    @as("PercentEnabled")
    percentEnabled: option<__integer>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "ConfigureLogsForPlaybackConfigurationCommand"
  let make = (~playbackConfigurationName, ~percentEnabled, ()) =>
    new({playbackConfigurationName: playbackConfigurationName, percentEnabled: percentEnabled})
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
  type response = {.}
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
  type response = {.}
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

module UpdateSourceLocation = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the source location you are working on.</p>")
    @as("SourceLocationName")
    sourceLocationName: __string,
    @as("SegmentDeliveryConfigurations")
    segmentDeliveryConfigurations: option<__listOfSegmentDeliveryConfiguration>,
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
    @as("SegmentDeliveryConfigurations")
    segmentDeliveryConfigurations: option<__listOfSegmentDeliveryConfiguration>,
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
    ~segmentDeliveryConfigurations=?,
    ~defaultSegmentDeliveryConfiguration=?,
    ~accessConfiguration=?,
    (),
  ) =>
    new({
      sourceLocationName: sourceLocationName,
      segmentDeliveryConfigurations: segmentDeliveryConfigurations,
      httpConfiguration: httpConfiguration,
      defaultSegmentDeliveryConfiguration: defaultSegmentDeliveryConfiguration,
      accessConfiguration: accessConfiguration,
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
    @ocaml.doc("<p>The Amazon CloudWatch log settings for a playback configuration.</p>")
    @as("LogConfiguration")
    logConfiguration: option<logConfiguration>,
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
    @ocaml.doc("<p>The Amazon CloudWatch log settings for a playback configuration.</p>")
    @as("LogConfiguration")
    logConfiguration: option<logConfiguration>,
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
    @as("SegmentDeliveryConfigurations")
    segmentDeliveryConfigurations: option<__listOfSegmentDeliveryConfiguration>,
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

module CreateSourceLocation = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the source location.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The identifier for the source location you are working on.</p>")
    @as("SourceLocationName")
    sourceLocationName: __string,
    @as("SegmentDeliveryConfigurations")
    segmentDeliveryConfigurations: option<__listOfSegmentDeliveryConfiguration>,
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
    @as("SegmentDeliveryConfigurations")
    segmentDeliveryConfigurations: option<__listOfSegmentDeliveryConfiguration>,
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
    ~segmentDeliveryConfigurations=?,
    ~defaultSegmentDeliveryConfiguration=?,
    ~accessConfiguration=?,
    (),
  ) =>
    new({
      tags: tags,
      sourceLocationName: sourceLocationName,
      segmentDeliveryConfigurations: segmentDeliveryConfigurations,
      httpConfiguration: httpConfiguration,
      defaultSegmentDeliveryConfiguration: defaultSegmentDeliveryConfiguration,
      accessConfiguration: accessConfiguration,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The channel's output properties.</p>") @as("Outputs") outputs: requestOutputs,
    @ocaml.doc(
      "<p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the LINEAR PlaybackMode. MediaTailor doesn't support filler slate for channels using the LOOP PlaybackMode.</p>"
    )
    @as("FillerSlate")
    fillerSlate: option<slateSource>,
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }
  type response = {
    @ocaml.doc("<p>The tags assigned to the channel.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The channel's playback mode.</p>") @as("PlaybackMode")
    playbackMode: option<__string>,
    @ocaml.doc("<p>The channel's output properties.</p>") @as("Outputs")
    outputs: option<responseOutputs>,
    @ocaml.doc("<p>The timestamp of when the channel was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<__timestampUnix>,
    @ocaml.doc(
      "<p>Contains information about the slate used to fill gaps between programs in the schedule.</p>"
    )
    @as("FillerSlate")
    fillerSlate: option<slateSource>,
    @ocaml.doc("<p>The timestamp of when the channel was created.</p>") @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>Indicates whether the channel is in a running state or not.</p>")
    @as("ChannelState")
    channelState: option<channelState>,
    @ocaml.doc("<p>The name of the channel.</p>") @as("ChannelName") channelName: option<__string>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "UpdateChannelCommand"
  let make = (~outputs, ~channelName, ~fillerSlate=?, ()) =>
    new({outputs: outputs, fillerSlate: fillerSlate, channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAlerts = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: __string,
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
    @ocaml.doc("<p>An array of alerts that are associated with this resource.</p>") @as("Items")
    items: option<__listOfAlert>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "ListAlertsCommand"
  let make = (~resourceArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({resourceArn: resourceArn, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPrefetchSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the playback configuration.</p>") @as("PlaybackConfigurationName")
    playbackConfigurationName: __string,
    @ocaml.doc("<p>The identifier for the playback configuration.</p>") @as("Name") name: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>An optional stream identifier that you can specify in order to prefetch for multiple streams that use the same playback configuration.</p>"
    )
    @as("StreamId")
    streamId: option<__string>,
    @ocaml.doc(
      "<p>A complex type that contains settings for prefetch retrieval from the ad decision server (ADS).</p>"
    )
    @as("Retrieval")
    retrieval: option<prefetchRetrieval>,
    @ocaml.doc("<p>The name of the playback configuration to create the prefetch schedule for.</p>")
    @as("PlaybackConfigurationName")
    playbackConfigurationName: option<__string>,
    @ocaml.doc(
      "<p>The name of the prefetch schedule. The name must be unique among all prefetch schedules that are associated with the specified playback configuration.</p>"
    )
    @as("Name")
    name: option<__string>,
    @ocaml.doc(
      "<p>Consumption settings determine how, and when, MediaTailor places the prefetched ads into ad breaks. Ad consumption occurs within a span of time that you define, called a <i>consumption window</i>. You can designate which ad breaks that MediaTailor fills with prefetch ads by setting avail matching criteria.</p>"
    )
    @as("Consumption")
    consumption: option<prefetchConsumption>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the prefetch schedule.</p>") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "GetPrefetchScheduleCommand"
  let make = (~playbackConfigurationName, ~name, ()) =>
    new({playbackConfigurationName: playbackConfigurationName, name: name})
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
    @ocaml.doc(
      "<p>The date and time that the program is scheduled to start in ISO 8601 format and Coordinated Universal Time (UTC). For example, the value 2021-03-27T17:48:16.751Z represents March 27, 2021 at 17:48:16.751 UTC.</p>"
    )
    @as("ScheduledStartTime")
    scheduledStartTime: option<__timestampUnix>,
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
    @ocaml.doc("<p>The channel's playback mode.</p>") @as("PlaybackMode")
    playbackMode: option<__string>,
    @ocaml.doc("<p>The channel's output properties.</p>") @as("Outputs")
    outputs: option<responseOutputs>,
    @ocaml.doc("<p>The timestamp of when the channel was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<__timestampUnix>,
    @ocaml.doc(
      "<p>Contains information about the slate used to fill gaps between programs in the schedule.</p>"
    )
    @as("FillerSlate")
    fillerSlate: option<slateSource>,
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
    @ocaml.doc(
      "<p>The date and time that the program is scheduled to start in ISO 8601 format and Coordinated Universal Time (UTC). For example, the value 2021-03-27T17:48:16.751Z represents March 27, 2021 at 17:48:16.751 UTC.</p>"
    )
    @as("ScheduledStartTime")
    scheduledStartTime: option<__timestampUnix>,
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

module CreatePrefetchSchedule = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional stream identifier that MediaTailor uses to prefetch ads for multiple streams that use the same playback configuration. If StreamId is specified, MediaTailor returns all of the prefetch schedules with an exact match on StreamId. If not specified, MediaTailor returns all of the prefetch schedules for the playback configuration, regardless of StreamId.</p>"
    )
    @as("StreamId")
    streamId: option<__string>,
    @ocaml.doc(
      "<p>The configuration settings for retrieval of prefetched ads from the ad decision server. Only one set of prefetched ads will be retrieved and subsequently consumed for each ad break.</p>"
    )
    @as("Retrieval")
    retrieval: prefetchRetrieval,
    @ocaml.doc("<p>The name of the playback configuration.</p>") @as("PlaybackConfigurationName")
    playbackConfigurationName: __string,
    @ocaml.doc("<p>The identifier for the playback configuration.</p>") @as("Name") name: __string,
    @ocaml.doc(
      "<p>The configuration settings for MediaTailor's <i>consumption</i> of the prefetched ads from the ad decision server. Each consumption configuration contains an end time and an optional start time that define the <i>consumption window</i>. Prefetch schedules automatically expire no earlier than seven days after the end time.</p>"
    )
    @as("Consumption")
    consumption: prefetchConsumption,
  }
  type response = {
    @ocaml.doc(
      "<p>An optional stream identifier that you can specify in order to prefetch for multiple streams that use the same playback configuration.</p>"
    )
    @as("StreamId")
    streamId: option<__string>,
    @ocaml.doc(
      "<p>A complex type that contains settings for prefetch retrieval from the ad decision server (ADS).</p>"
    )
    @as("Retrieval")
    retrieval: option<prefetchRetrieval>,
    @ocaml.doc("<p>The name of the playback configuration to create the prefetch schedule for.</p>")
    @as("PlaybackConfigurationName")
    playbackConfigurationName: option<__string>,
    @ocaml.doc(
      "<p>The name of the prefetch schedule. The name must be unique among all prefetch schedules that are associated with the specified playback configuration.</p>"
    )
    @as("Name")
    name: option<__string>,
    @ocaml.doc(
      "<p>Consumption settings determine how, and when, MediaTailor places the prefetched ads into ad breaks. Ad consumption occurs within a span of time that you define, called a <i>consumption window</i>. You can designate which ad breaks that MediaTailor fills with prefetch ads by setting avail matching criteria.</p>"
    )
    @as("Consumption")
    consumption: option<prefetchConsumption>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the prefetch schedule.</p>") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "CreatePrefetchScheduleCommand"
  let make = (~retrieval, ~playbackConfigurationName, ~name, ~consumption, ~streamId=?, ()) =>
    new({
      streamId: streamId,
      retrieval: retrieval,
      playbackConfigurationName: playbackConfigurationName,
      name: name,
      consumption: consumption,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the channel.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "<p>The type of playback mode to use for this channel.</p> <p>LINEAR - The programs in the schedule play once back-to-back in the schedule.</p> <p>LOOP - The programs in the schedule play back-to-back in an endless loop. When the last program in the schedule stops playing, playback loops back to the first program in the schedule.</p>"
    )
    @as("PlaybackMode")
    playbackMode: playbackMode,
    @ocaml.doc("<p>The channel's output properties.</p>") @as("Outputs") outputs: requestOutputs,
    @ocaml.doc(
      "<p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the LINEAR PlaybackMode. MediaTailor doesn't support filler slate for channels using the LOOP PlaybackMode.</p>"
    )
    @as("FillerSlate")
    fillerSlate: option<slateSource>,
    @ocaml.doc("<p>The identifier for the channel you are working on.</p>") @as("ChannelName")
    channelName: __string,
  }
  type response = {
    @ocaml.doc("<p>The tags assigned to the channel.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The channel's playback mode.</p>") @as("PlaybackMode")
    playbackMode: option<__string>,
    @ocaml.doc("<p>The channel's output properties.</p>") @as("Outputs")
    outputs: option<responseOutputs>,
    @ocaml.doc("<p>The timestamp of when the channel was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<__timestampUnix>,
    @ocaml.doc(
      "<p>Contains information about the slate used to fill gaps between programs in the schedule.</p>"
    )
    @as("FillerSlate")
    fillerSlate: option<slateSource>,
    @ocaml.doc("<p>The timestamp of when the channel was created.</p>") @as("CreationTime")
    creationTime: option<__timestampUnix>,
    @ocaml.doc("<p>Indicates whether the channel is in a running state or not.</p>")
    @as("ChannelState")
    channelState: option<channelState>,
    @ocaml.doc("<p>The name of the channel.</p>") @as("ChannelName") channelName: option<__string>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediatailor") @new external new: request => t = "CreateChannelCommand"
  let make = (~playbackMode, ~outputs, ~channelName, ~tags=?, ~fillerSlate=?, ()) =>
    new({
      tags: tags,
      playbackMode: playbackMode,
      outputs: outputs,
      fillerSlate: fillerSlate,
      channelName: channelName,
    })
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

module ListPrefetchSchedules = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional filtering parameter whereby MediaTailor filters the prefetch schedules to include only specific streams.</p>"
    )
    @as("StreamId")
    streamId: option<__string>,
    @ocaml.doc("<p>The name of the playback configuration.</p>") @as("PlaybackConfigurationName")
    playbackConfigurationName: __string,
    @ocaml.doc(
      "<p>(Optional) If the playback configuration has more than MaxResults prefetch schedules, use NextToken to get the second and subsequent pages of results.</p> <p>For the first ListPrefetchSchedulesRequest request, omit this value.</p> <p>For the second and subsequent requests, get the value of NextToken from the previous response and specify that value for NextToken in the request.</p> <p>If the previous response didn't include a NextToken element, there are no more prefetch schedules to get.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of prefetch schedules that you want MediaTailor to return in response to the current request. If the playback configuration has more than MaxResults prefetch schedules, use the value of NextToken in the response to get the next page of results.</p>"
    )
    @as("MaxResults")
    maxResults: option<__integerMin1Max100>,
  }
  type response = {
    @ocaml.doc(
      "<p>The value that you will use forNextToken in the next ListPrefetchSchedulesRequest request.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>Lists the prefetch schedules. An empty Items list doesn't mean there aren't more items to fetch, just that that page was empty.</p>"
    )
    @as("Items")
    items: option<__listOfPrefetchSchedule>,
  }
  @module("@aws-sdk/client-mediatailor") @new
  external new: request => t = "ListPrefetchSchedulesCommand"
  let make = (~playbackConfigurationName, ~streamId=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      streamId: streamId,
      playbackConfigurationName: playbackConfigurationName,
      nextToken: nextToken,
      maxResults: maxResults,
    })
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
