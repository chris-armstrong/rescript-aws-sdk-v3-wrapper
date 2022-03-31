type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mediapackage") @new
external createClient: unit => awsServiceClient = "MediaPackageClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __string = string
type __integer = int
type __boolean = bool
type __PeriodTriggersElement = [@as("ADS") #ADS]
type __AdTriggersElement = [
  | @as("DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY") #DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY
  | @as("PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY") #PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY
  | @as("DISTRIBUTOR_PLACEMENT_OPPORTUNITY") #DISTRIBUTOR_PLACEMENT_OPPORTUNITY
  | @as("PROVIDER_PLACEMENT_OPPORTUNITY") #PROVIDER_PLACEMENT_OPPORTUNITY
  | @as("DISTRIBUTOR_ADVERTISEMENT") #DISTRIBUTOR_ADVERTISEMENT
  | @as("PROVIDER_ADVERTISEMENT") #PROVIDER_ADVERTISEMENT
  | @as("BREAK") #BREAK
  | @as("SPLICE_INSERT") #SPLICE_INSERT
]
type utcTiming = [@as("HTTP-ISO") #HTTP_ISO | @as("HTTP-HEAD") #HTTP_HEAD | @as("NONE") #NONE]
type streamOrder = [
  | @as("VIDEO_BITRATE_DESCENDING") #VIDEO_BITRATE_DESCENDING
  | @as("VIDEO_BITRATE_ASCENDING") #VIDEO_BITRATE_ASCENDING
  | @as("ORIGINAL") #ORIGINAL
]
type status = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type segmentTemplateFormat = [
  | @as("NUMBER_WITH_DURATION") #NUMBER_WITH_DURATION
  | @as("TIME_WITH_TIMELINE") #TIME_WITH_TIMELINE
  | @as("NUMBER_WITH_TIMELINE") #NUMBER_WITH_TIMELINE
]
type profile = [@as("HYBRIDCAST") #HYBRIDCAST | @as("HBBTV_1_5") #HBBTV_1_5 | @as("NONE") #NONE]
type presetSpeke20Video = [@as("PRESET-VIDEO-1") #PRESET_VIDEO_1]
type presetSpeke20Audio = [@as("PRESET-AUDIO-1") #PRESET_AUDIO_1]
type playlistType = [@as("VOD") #VOD | @as("EVENT") #EVENT | @as("NONE") #NONE]
type origination = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type maxResults = int
type manifestLayout = [@as("COMPACT") #COMPACT | @as("FULL") #FULL]
type encryptionMethod = [@as("SAMPLE_AES") #SAMPLE_AES | @as("AES_128") #AES_128]
@ocaml.doc("This setting allows the delivery restriction flags on SCTE-35 segmentation descriptors to
determine whether a message signals an ad.  Choosing \"NONE\" means no SCTE-35 messages become
ads.  Choosing \"RESTRICTED\" means SCTE-35 messages of the types specified in AdTriggers that
contain delivery restrictions will be treated as ads.  Choosing \"UNRESTRICTED\" means SCTE-35
messages of the types specified in AdTriggers that do not contain delivery restrictions will
be treated as ads.  Choosing \"BOTH\" means all SCTE-35 messages of the types specified in
AdTriggers will be treated as ads.  Note that Splice Insert messages do not have these flags
and are always treated as ads if specified in AdTriggers.")
type adsOnDeliveryRestrictions = [
  | @as("BOTH") #BOTH
  | @as("UNRESTRICTED") #UNRESTRICTED
  | @as("RESTRICTED") #RESTRICTED
  | @as("NONE") #NONE
]
type adMarkers = [
  | @as("DATERANGE") #DATERANGE
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("SCTE35_ENHANCED") #SCTE35_ENHANCED
  | @as("NONE") #NONE
]
type __mapOf__string = Js.Dict.t<__string>
type __listOf__string = array<__string>
type __listOf__PeriodTriggersElement = array<__PeriodTriggersElement>
@ocaml.doc("A collection of tags associated with a resource") type tags = Js.Dict.t<__string>
@ocaml.doc("A StreamSelection configuration.")
type streamSelection = {
  @ocaml.doc("A directive that determines the order of streams in the output.") @as("StreamOrder")
  streamOrder: option<streamOrder>,
  @ocaml.doc("The minimum video bitrate (bps) to include in output.") @as("MinVideoBitsPerSecond")
  minVideoBitsPerSecond: option<__integer>,
  @ocaml.doc("The maximum video bitrate (bps) to include in output.") @as("MaxVideoBitsPerSecond")
  maxVideoBitsPerSecond: option<__integer>,
}
@ocaml.doc("Configuration parameters for where in an S3 bucket to place the harvested content")
type s3Destination = {
  @ocaml.doc("The IAM role used to write to the specified S3 bucket") @as("RoleArn")
  roleArn: __string,
  @ocaml.doc(
    "The key in the specified S3 bucket where the harvested top-level manifest will be placed."
  )
  @as("ManifestKey")
  manifestKey: __string,
  @ocaml.doc("The name of an S3 bucket within which harvested content will be exported")
  @as("BucketName")
  bucketName: __string,
}
@ocaml.doc("Configure ingress access logging.")
type ingressAccessLogs = {
  @ocaml.doc("Customize the log group name.") @as("LogGroupName") logGroupName: option<__string>,
}
@ocaml.doc("An endpoint for ingesting source content for a Channel.")
type ingestEndpoint = {
  @ocaml.doc("The system generated username for ingest authentication.") @as("Username")
  username: option<__string>,
  @ocaml.doc("The ingest URL to which the source stream should be sent.") @as("Url")
  url: option<__string>,
  @ocaml.doc("The system generated password for ingest authentication.") @as("Password")
  password: option<__string>,
  @ocaml.doc("The system generated unique identifier for the IngestEndpoint") @as("Id")
  id: option<__string>,
}
@ocaml.doc("A HTTP Live Streaming (HLS) manifest configuration.")
type hlsManifest = {
  @ocaml.doc("The URL of the packaged OriginEndpoint for consumption.") @as("Url")
  url: option<__string>,
  @ocaml.doc("The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
inserted into manifests. Additionally, when an interval is specified
ID3Timed Metadata messages will be generated every 5 seconds using the
ingest time of the content.
If the interval is not specified, or set to 0, then
no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
ID3Timed Metadata messages will be generated. Note that irrespective
of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
it will be passed through to HLS output.")
  @as("ProgramDateTimeIntervalSeconds")
  programDateTimeIntervalSeconds: option<__integer>,
  @ocaml.doc("Time window (in seconds) contained in each parent manifest.")
  @as("PlaylistWindowSeconds")
  playlistWindowSeconds: option<__integer>,
  @ocaml.doc("The HTTP Live Streaming (HLS) playlist type.
When either \"EVENT\" or \"VOD\" is specified, a corresponding EXT-X-PLAYLIST-TYPE
entry will be included in the media playlist.")
  @as("PlaylistType")
  playlistType: option<playlistType>,
  @ocaml.doc(
    "An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint."
  )
  @as("ManifestName")
  manifestName: option<__string>,
  @ocaml.doc("When enabled, an I-Frame only stream will be included in the output.")
  @as("IncludeIframeOnlyStream")
  includeIframeOnlyStream: option<__boolean>,
  @ocaml.doc(
    "The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created."
  )
  @as("Id")
  id: __string,
  @ocaml.doc("This setting controls how ad markers are included in the packaged OriginEndpoint.
\"NONE\" will omit all SCTE-35 ad markers from the output.
\"PASSTHROUGH\" causes the manifest to contain a copy of the SCTE-35 ad
markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
\"SCTE35_ENHANCED\" generates ad markers and blackout tags based on SCTE-35
messages in the input source.
\"DATERANGE\" inserts EXT-X-DATERANGE tags to signal ad and program transition events 
in HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value 
that is greater than 0.")
  @as("AdMarkers")
  adMarkers: option<adMarkers>,
}
@ocaml.doc("Use encryptionContractConfiguration to configure one or more content encryption keys for your endpoints that use SPEKE 2.0. 
The encryption contract defines which content keys are used to encrypt the audio and video tracks in your stream. 
To configure the encryption contract, specify which audio and video encryption presets to use.
Note the following considerations when using encryptionContractConfiguration:
encryptionContractConfiguration can be used for DASH or CMAF endpoints that use SPEKE 2.0. SPEKE 2.0 relies on the CPIX 2.3 specification.
You must disable key rotation for this endpoint by setting keyRotationIntervalSeconds to 0.")
type encryptionContractConfiguration = {
  @ocaml.doc("A collection of video encryption presets.") @as("PresetSpeke20Video")
  presetSpeke20Video: presetSpeke20Video,
  @ocaml.doc("A collection of audio encryption presets.") @as("PresetSpeke20Audio")
  presetSpeke20Audio: presetSpeke20Audio,
}
@ocaml.doc("Configure egress access logging.")
type egressAccessLogs = {
  @ocaml.doc("Customize the log group name.") @as("LogGroupName") logGroupName: option<__string>,
}
@ocaml.doc("CDN Authorization credentials")
type authorization = {
  @ocaml.doc(
    "The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage to communicate with AWS Secrets Manager."
  )
  @as("SecretsRoleArn")
  secretsRoleArn: __string,
  @ocaml.doc(
    "The Amazon Resource Name (ARN) for the secret in Secrets Manager that your Content Distribution Network (CDN) uses for authorization to access your endpoint."
  )
  @as("CdnIdentifierSecret")
  cdnIdentifierSecret: __string,
}
@ocaml.doc("A list of SCTE-35 message types that are treated as ad markers in the output.  If empty, no
ad markers are output.  Specify multiple items to create ad markers for all of the included
message types.")
type adTriggers = array<__AdTriggersElement>
type __listOfIngestEndpoint = array<ingestEndpoint>
type __listOfHlsManifest = array<hlsManifest>
@ocaml.doc(
  "A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys."
)
type spekeKeyProvider = {
  @ocaml.doc("The URL of the external key provider service.") @as("Url") url: __string,
  @ocaml.doc("The system IDs to include in key requests.") @as("SystemIds")
  systemIds: __listOf__string,
  @ocaml.doc("An Amazon Resource Name (ARN) of an IAM role that AWS Elemental
MediaPackage will assume when accessing the key provider service.")
  @as("RoleArn")
  roleArn: __string,
  @ocaml.doc("The resource ID to include in key requests.") @as("ResourceId") resourceId: __string,
  @as("EncryptionContractConfiguration")
  encryptionContractConfiguration: option<encryptionContractConfiguration>,
  @ocaml.doc("An Amazon Resource Name (ARN) of a Certificate Manager certificate
that MediaPackage will use for enforcing secure end-to-end data
transfer with the key provider service.")
  @as("CertificateArn")
  certificateArn: option<__string>,
}
@ocaml.doc("A HTTP Live Streaming (HLS) manifest configuration.")
type hlsManifestCreateOrUpdateParameters = {
  @ocaml.doc("The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
inserted into manifests. Additionally, when an interval is specified
ID3Timed Metadata messages will be generated every 5 seconds using the
ingest time of the content.
If the interval is not specified, or set to 0, then
no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
ID3Timed Metadata messages will be generated. Note that irrespective
of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
it will be passed through to HLS output.")
  @as("ProgramDateTimeIntervalSeconds")
  programDateTimeIntervalSeconds: option<__integer>,
  @ocaml.doc("Time window (in seconds) contained in each parent manifest.")
  @as("PlaylistWindowSeconds")
  playlistWindowSeconds: option<__integer>,
  @ocaml.doc("The HTTP Live Streaming (HLS) playlist type.
When either \"EVENT\" or \"VOD\" is specified, a corresponding EXT-X-PLAYLIST-TYPE
entry will be included in the media playlist.")
  @as("PlaylistType")
  playlistType: option<playlistType>,
  @ocaml.doc(
    "An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint."
  )
  @as("ManifestName")
  manifestName: option<__string>,
  @ocaml.doc("When enabled, an I-Frame only stream will be included in the output.")
  @as("IncludeIframeOnlyStream")
  includeIframeOnlyStream: option<__boolean>,
  @ocaml.doc(
    "The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created."
  )
  @as("Id")
  id: __string,
  @as("AdsOnDeliveryRestrictions") adsOnDeliveryRestrictions: option<adsOnDeliveryRestrictions>,
  @as("AdTriggers") adTriggers: option<adTriggers>,
  @ocaml.doc("This setting controls how ad markers are included in the packaged OriginEndpoint.
\"NONE\" will omit all SCTE-35 ad markers from the output.
\"PASSTHROUGH\" causes the manifest to contain a copy of the SCTE-35 ad
markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
\"SCTE35_ENHANCED\" generates ad markers and blackout tags based on SCTE-35
messages in the input source.
\"DATERANGE\" inserts EXT-X-DATERANGE tags to signal ad and program transition events 
in HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value 
that is greater than 0.")
  @as("AdMarkers")
  adMarkers: option<adMarkers>,
}
@ocaml.doc("A HarvestJob resource configuration")
type harvestJob = {
  @ocaml.doc("The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for
HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will
include an explanation of why the HarvestJob failed.")
  @as("Status")
  status: option<status>,
  @ocaml.doc("The start of the time-window which will be harvested.") @as("StartTime")
  startTime: option<__string>,
  @as("S3Destination") s3Destination: option<s3Destination>,
  @ocaml.doc("The ID of the OriginEndpoint that the HarvestJob will harvest from.
This cannot be changed after the HarvestJob is submitted.")
  @as("OriginEndpointId")
  originEndpointId: option<__string>,
  @ocaml.doc("The ID of the HarvestJob. The ID must be unique within the region
and it cannot be changed after the HarvestJob is submitted.")
  @as("Id")
  id: option<__string>,
  @ocaml.doc("The end of the time-window which will be harvested.") @as("EndTime")
  endTime: option<__string>,
  @ocaml.doc("The time the HarvestJob was submitted") @as("CreatedAt") createdAt: option<__string>,
  @ocaml.doc("The ID of the Channel that the HarvestJob will harvest from.") @as("ChannelId")
  channelId: option<__string>,
  @ocaml.doc("The Amazon Resource Name (ARN) assigned to the HarvestJob.") @as("Arn")
  arn: option<__string>,
}
type __listOfHlsManifestCreateOrUpdateParameters = array<hlsManifestCreateOrUpdateParameters>
type __listOfHarvestJob = array<harvestJob>
@ocaml.doc("A Microsoft Smooth Streaming (MSS) encryption configuration.")
type mssEncryption = {@as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider}
@ocaml.doc("An HTTP Live Streaming (HLS) ingest resource configuration.")
type hlsIngest = {
  @ocaml.doc("A list of endpoints to which the source stream should be sent.")
  @as("IngestEndpoints")
  ingestEndpoints: option<__listOfIngestEndpoint>,
}
@ocaml.doc("An HTTP Live Streaming (HLS) encryption configuration.")
type hlsEncryption = {
  @as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider,
  @ocaml.doc("When enabled, the EXT-X-KEY tag will be repeated in output manifests.")
  @as("RepeatExtXKey")
  repeatExtXKey: option<__boolean>,
  @ocaml.doc("Interval (in seconds) between each encryption key rotation.")
  @as("KeyRotationIntervalSeconds")
  keyRotationIntervalSeconds: option<__integer>,
  @ocaml.doc("The encryption method to use.") @as("EncryptionMethod")
  encryptionMethod: option<encryptionMethod>,
  @ocaml.doc("A constant initialization vector for encryption (optional).
When not specified the initialization vector will be periodically rotated.")
  @as("ConstantInitializationVector")
  constantInitializationVector: option<__string>,
}
@ocaml.doc("A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.")
type dashEncryption = {
  @as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider,
  @ocaml.doc("Time (in seconds) between each encryption key rotation.")
  @as("KeyRotationIntervalSeconds")
  keyRotationIntervalSeconds: option<__integer>,
}
@ocaml.doc("A Common Media Application Format (CMAF) encryption configuration.")
type cmafEncryption = {
  @as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider,
  @ocaml.doc("Time (in seconds) between each encryption key rotation.")
  @as("KeyRotationIntervalSeconds")
  keyRotationIntervalSeconds: option<__integer>,
  @ocaml.doc(
    "An optional 128-bit, 16-byte hex value represented by a 32-character string, used in conjunction with the key for encrypting blocks. If you don't specify a value, then MediaPackage creates the constant initialization vector (IV)."
  )
  @as("ConstantInitializationVector")
  constantInitializationVector: option<__string>,
}
@ocaml.doc("A Microsoft Smooth Streaming (MSS) packaging configuration.")
type mssPackage = {
  @as("StreamSelection") streamSelection: option<streamSelection>,
  @ocaml.doc("The duration (in seconds) of each segment.") @as("SegmentDurationSeconds")
  segmentDurationSeconds: option<__integer>,
  @ocaml.doc("The time window (in seconds) contained in each manifest.")
  @as("ManifestWindowSeconds")
  manifestWindowSeconds: option<__integer>,
  @as("Encryption") encryption: option<mssEncryption>,
}
@ocaml.doc("An HTTP Live Streaming (HLS) packaging configuration.")
type hlsPackage = {
  @ocaml.doc("When enabled, audio streams will be placed in rendition groups in the output.")
  @as("UseAudioRenditionGroup")
  useAudioRenditionGroup: option<__boolean>,
  @as("StreamSelection") streamSelection: option<streamSelection>,
  @ocaml.doc("Duration (in seconds) of each fragment. Actual fragments will be
rounded to the nearest multiple of the source fragment duration.")
  @as("SegmentDurationSeconds")
  segmentDurationSeconds: option<__integer>,
  @ocaml.doc("The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
inserted into manifests. Additionally, when an interval is specified
ID3Timed Metadata messages will be generated every 5 seconds using the
ingest time of the content.
If the interval is not specified, or set to 0, then
no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
ID3Timed Metadata messages will be generated. Note that irrespective
of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
it will be passed through to HLS output.")
  @as("ProgramDateTimeIntervalSeconds")
  programDateTimeIntervalSeconds: option<__integer>,
  @ocaml.doc("Time window (in seconds) contained in each parent manifest.")
  @as("PlaylistWindowSeconds")
  playlistWindowSeconds: option<__integer>,
  @ocaml.doc("The HTTP Live Streaming (HLS) playlist type.
When either \"EVENT\" or \"VOD\" is specified, a corresponding EXT-X-PLAYLIST-TYPE
entry will be included in the media playlist.")
  @as("PlaylistType")
  playlistType: option<playlistType>,
  @ocaml.doc("When enabled, an I-Frame only stream will be included in the output.")
  @as("IncludeIframeOnlyStream")
  includeIframeOnlyStream: option<__boolean>,
  @ocaml.doc(
    "When enabled, MediaPackage passes through digital video broadcasting (DVB) subtitles into the output."
  )
  @as("IncludeDvbSubtitles")
  includeDvbSubtitles: option<__boolean>,
  @as("Encryption") encryption: option<hlsEncryption>,
  @as("AdsOnDeliveryRestrictions") adsOnDeliveryRestrictions: option<adsOnDeliveryRestrictions>,
  @as("AdTriggers") adTriggers: option<adTriggers>,
  @ocaml.doc("This setting controls how ad markers are included in the packaged OriginEndpoint.
\"NONE\" will omit all SCTE-35 ad markers from the output.
\"PASSTHROUGH\" causes the manifest to contain a copy of the SCTE-35 ad
markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
\"SCTE35_ENHANCED\" generates ad markers and blackout tags based on SCTE-35
messages in the input source.
\"DATERANGE\" inserts EXT-X-DATERANGE tags to signal ad and program transition events 
in HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value 
that is greater than 0.")
  @as("AdMarkers")
  adMarkers: option<adMarkers>,
}
@ocaml.doc("A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.")
type dashPackage = {
  @ocaml.doc(
    "Specifies the value attribute of the UTCTiming field when utcTiming is set to HTTP-ISO or HTTP-HEAD"
  )
  @as("UtcTimingUri")
  utcTimingUri: option<__string>,
  @ocaml.doc(
    "Determines the type of UTCTiming included in the Media Presentation Description (MPD)"
  )
  @as("UtcTiming")
  utcTiming: option<utcTiming>,
  @ocaml.doc("Duration (in seconds) to delay live content before presentation.")
  @as("SuggestedPresentationDelaySeconds")
  suggestedPresentationDelaySeconds: option<__integer>,
  @as("StreamSelection") streamSelection: option<streamSelection>,
  @ocaml.doc(
    "Determines the type of SegmentTemplate included in the Media Presentation Description (MPD).  When set to NUMBER_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Number$ media URLs.  When set to TIME_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Time$ media URLs. When set to NUMBER_WITH_DURATION, only a duration is included in each SegmentTemplate, with $Number$ media URLs."
  )
  @as("SegmentTemplateFormat")
  segmentTemplateFormat: option<segmentTemplateFormat>,
  @ocaml.doc("Duration (in seconds) of each segment. Actual segments will be
rounded to the nearest multiple of the source segment duration.")
  @as("SegmentDurationSeconds")
  segmentDurationSeconds: option<__integer>,
  @ocaml.doc(
    "The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to \"HBBTV_1_5\", HbbTV 1.5 compliant output is enabled."
  )
  @as("Profile")
  profile: option<profile>,
  @ocaml.doc("A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH)
Media Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not
be partitioned into more than one period. If the list contains \"ADS\", new periods will be created where
the Channel source contains SCTE-35 ad markers.")
  @as("PeriodTriggers")
  periodTriggers: option<__listOf__PeriodTriggersElement>,
  @ocaml.doc(
    "Minimum duration (in seconds) between potential changes to the Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD)."
  )
  @as("MinUpdatePeriodSeconds")
  minUpdatePeriodSeconds: option<__integer>,
  @ocaml.doc(
    "Minimum duration (in seconds) that a player will buffer media before starting the presentation."
  )
  @as("MinBufferTimeSeconds")
  minBufferTimeSeconds: option<__integer>,
  @ocaml.doc("Time window (in seconds) contained in each manifest.") @as("ManifestWindowSeconds")
  manifestWindowSeconds: option<__integer>,
  @ocaml.doc(
    "Determines the position of some tags in the Media Presentation Description (MPD).  When set to FULL, elements like SegmentTemplate and ContentProtection are included in each Representation.  When set to COMPACT, duplicate elements are combined and presented at the AdaptationSet level."
  )
  @as("ManifestLayout")
  manifestLayout: option<manifestLayout>,
  @as("Encryption") encryption: option<dashEncryption>,
  @as("AdsOnDeliveryRestrictions") adsOnDeliveryRestrictions: option<adsOnDeliveryRestrictions>,
  @as("AdTriggers") adTriggers: option<adTriggers>,
}
@ocaml.doc("A Common Media Application Format (CMAF) packaging configuration.")
type cmafPackageCreateOrUpdateParameters = {
  @as("StreamSelection") streamSelection: option<streamSelection>,
  @ocaml.doc(
    "An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId."
  )
  @as("SegmentPrefix")
  segmentPrefix: option<__string>,
  @ocaml.doc("Duration (in seconds) of each segment. Actual segments will be
rounded to the nearest multiple of the source segment duration.")
  @as("SegmentDurationSeconds")
  segmentDurationSeconds: option<__integer>,
  @ocaml.doc("A list of HLS manifest configurations") @as("HlsManifests")
  hlsManifests: option<__listOfHlsManifestCreateOrUpdateParameters>,
  @as("Encryption") encryption: option<cmafEncryption>,
}
@ocaml.doc("A Common Media Application Format (CMAF) packaging configuration.")
type cmafPackage = {
  @as("StreamSelection") streamSelection: option<streamSelection>,
  @ocaml.doc(
    "An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId."
  )
  @as("SegmentPrefix")
  segmentPrefix: option<__string>,
  @ocaml.doc("Duration (in seconds) of each segment. Actual segments will be
rounded to the nearest multiple of the source segment duration.")
  @as("SegmentDurationSeconds")
  segmentDurationSeconds: option<__integer>,
  @ocaml.doc("A list of HLS manifest configurations") @as("HlsManifests")
  hlsManifests: option<__listOfHlsManifest>,
  @as("Encryption") encryption: option<cmafEncryption>,
}
@ocaml.doc("A Channel resource configuration.")
type channel = {
  @as("Tags") tags: option<tags>,
  @as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
  @ocaml.doc("The ID of the Channel.") @as("Id") id: option<__string>,
  @as("HlsIngest") hlsIngest: option<hlsIngest>,
  @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
  @ocaml.doc("A short text description of the Channel.") @as("Description")
  description: option<__string>,
  @ocaml.doc("The Amazon Resource Name (ARN) assigned to the Channel.") @as("Arn")
  arn: option<__string>,
}
type __listOfChannel = array<channel>
@ocaml.doc("An OriginEndpoint resource configuration.")
type originEndpoint = {
  @ocaml.doc("A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.")
  @as("Whitelist")
  whitelist: option<__listOf__string>,
  @ocaml.doc("The URL of the packaged OriginEndpoint for consumption.") @as("Url")
  url: option<__string>,
  @ocaml.doc("Amount of delay (seconds) to enforce on the playback of live content.
If not specified, there will be no time delay in effect for the OriginEndpoint.")
  @as("TimeDelaySeconds")
  timeDelaySeconds: option<__integer>,
  @as("Tags") tags: option<tags>,
  @ocaml.doc("Maximum duration (seconds) of content to retain for startover playback.
If not specified, startover playback will be disabled for the OriginEndpoint.")
  @as("StartoverWindowSeconds")
  startoverWindowSeconds: option<__integer>,
  @ocaml.doc("Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination")
  @as("Origination")
  origination: option<origination>,
  @as("MssPackage") mssPackage: option<mssPackage>,
  @ocaml.doc("A short string appended to the end of the OriginEndpoint URL.") @as("ManifestName")
  manifestName: option<__string>,
  @ocaml.doc("The ID of the OriginEndpoint.") @as("Id") id: option<__string>,
  @as("HlsPackage") hlsPackage: option<hlsPackage>,
  @ocaml.doc("A short text description of the OriginEndpoint.") @as("Description")
  description: option<__string>,
  @as("DashPackage") dashPackage: option<dashPackage>,
  @as("CmafPackage") cmafPackage: option<cmafPackage>,
  @ocaml.doc("The ID of the Channel the OriginEndpoint is associated with.") @as("ChannelId")
  channelId: option<__string>,
  @as("Authorization") authorization: option<authorization>,
  @ocaml.doc("The Amazon Resource Name (ARN) assigned to the OriginEndpoint.") @as("Arn")
  arn: option<__string>,
}
type __listOfOriginEndpoint = array<originEndpoint>
@ocaml.doc("AWS Elemental MediaPackage")
module DeleteOriginEndpoint = {
  type t
  type request = {@ocaml.doc("The ID of the OriginEndpoint to delete.") @as("Id") id: __string}
  type response = {.}
  @module("@aws-sdk/client-mediapackage") @new
  external new: request => t = "DeleteOriginEndpointCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteChannel = {
  type t
  type request = {@ocaml.doc("The ID of the Channel to delete.") @as("Id") id: __string}
  type response = {.}
  @module("@aws-sdk/client-mediapackage") @new external new: request => t = "DeleteChannelCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("The key(s) of tag to be deleted") @as("TagKeys") tagKeys: __listOf__string,
    @as("ResourceArn") resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediapackage") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: __mapOf__string,
    @as("ResourceArn") resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediapackage") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: __string}
  type response = {@as("Tags") tags: option<__mapOf__string>}
  @module("@aws-sdk/client-mediapackage") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHarvestJob = {
  type t
  type request = {@ocaml.doc("The ID of the HarvestJob.") @as("Id") id: __string}
  type response = {
    @ocaml.doc("The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for
HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will
include an explanation of why the HarvestJob failed.")
    @as("Status")
    status: option<status>,
    @ocaml.doc("The start of the time-window which will be harvested.") @as("StartTime")
    startTime: option<__string>,
    @as("S3Destination") s3Destination: option<s3Destination>,
    @ocaml.doc("The ID of the OriginEndpoint that the HarvestJob will harvest from.
This cannot be changed after the HarvestJob is submitted.")
    @as("OriginEndpointId")
    originEndpointId: option<__string>,
    @ocaml.doc("The ID of the HarvestJob. The ID must be unique within the region
and it cannot be changed after the HarvestJob is submitted.")
    @as("Id")
    id: option<__string>,
    @ocaml.doc("The end of the time-window which will be harvested.") @as("EndTime")
    endTime: option<__string>,
    @ocaml.doc("The time the HarvestJob was submitted") @as("CreatedAt")
    createdAt: option<__string>,
    @ocaml.doc("The ID of the Channel that the HarvestJob will harvest from.") @as("ChannelId")
    channelId: option<__string>,
    @ocaml.doc("The Amazon Resource Name (ARN) assigned to the HarvestJob.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage") @new
  external new: request => t = "DescribeHarvestJobCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHarvestJob = {
  type t
  @ocaml.doc("Configuration parameters used to create a new HarvestJob.")
  type request = {
    @ocaml.doc("The start of the time-window which will be harvested") @as("StartTime")
    startTime: __string,
    @as("S3Destination") s3Destination: s3Destination,
    @ocaml.doc("The ID of the OriginEndpoint that the HarvestJob will harvest from.
This cannot be changed after the HarvestJob is submitted.")
    @as("OriginEndpointId")
    originEndpointId: __string,
    @ocaml.doc("The ID of the HarvestJob. The ID must be unique within the region
and it cannot be changed after the HarvestJob is submitted")
    @as("Id")
    id: __string,
    @ocaml.doc("The end of the time-window which will be harvested") @as("EndTime")
    endTime: __string,
  }
  type response = {
    @ocaml.doc("The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for
HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will
include an explanation of why the HarvestJob failed.")
    @as("Status")
    status: option<status>,
    @ocaml.doc("The start of the time-window which will be harvested.") @as("StartTime")
    startTime: option<__string>,
    @as("S3Destination") s3Destination: option<s3Destination>,
    @ocaml.doc("The ID of the OriginEndpoint that the HarvestJob will harvest from.
This cannot be changed after the HarvestJob is submitted.")
    @as("OriginEndpointId")
    originEndpointId: option<__string>,
    @ocaml.doc("The ID of the HarvestJob. The ID must be unique within the region
and it cannot be changed after the HarvestJob is submitted.")
    @as("Id")
    id: option<__string>,
    @ocaml.doc("The end of the time-window which will be harvested.") @as("EndTime")
    endTime: option<__string>,
    @ocaml.doc("The time the HarvestJob was submitted") @as("CreatedAt")
    createdAt: option<__string>,
    @ocaml.doc("The ID of the Channel that the HarvestJob will harvest from.") @as("ChannelId")
    channelId: option<__string>,
    @ocaml.doc("The Amazon Resource Name (ARN) assigned to the HarvestJob.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage") @new
  external new: request => t = "CreateHarvestJobCommand"
  let make = (~startTime, ~s3Destination, ~originEndpointId, ~id, ~endTime, ()) =>
    new({
      startTime: startTime,
      s3Destination: s3Destination,
      originEndpointId: originEndpointId,
      id: id,
      endTime: endTime,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChannel = {
  type t
  @ocaml.doc("Configuration parameters used to update the Channel.")
  type request = {
    @ocaml.doc("The ID of the Channel to update.") @as("Id") id: __string,
    @ocaml.doc("A short text description of the Channel.") @as("Description")
    description: option<__string>,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
    @ocaml.doc("The ID of the Channel.") @as("Id") id: option<__string>,
    @as("HlsIngest") hlsIngest: option<hlsIngest>,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
    @ocaml.doc("A short text description of the Channel.") @as("Description")
    description: option<__string>,
    @ocaml.doc("The Amazon Resource Name (ARN) assigned to the Channel.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage") @new external new: request => t = "UpdateChannelCommand"
  let make = (~id, ~description=?, ()) => new({id: id, description: description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RotateIngestEndpointCredentials = {
  type t
  type request = {
    @ocaml.doc("The id of the IngestEndpoint whose credentials should be rotated")
    @as("IngestEndpointId")
    ingestEndpointId: __string,
    @ocaml.doc("The ID of the channel the IngestEndpoint is on.") @as("Id") id: __string,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
    @ocaml.doc("The ID of the Channel.") @as("Id") id: option<__string>,
    @as("HlsIngest") hlsIngest: option<hlsIngest>,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
    @ocaml.doc("A short text description of the Channel.") @as("Description")
    description: option<__string>,
    @ocaml.doc("The Amazon Resource Name (ARN) assigned to the Channel.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage") @new
  external new: request => t = "RotateIngestEndpointCredentialsCommand"
  let make = (~ingestEndpointId, ~id, ()) => new({ingestEndpointId: ingestEndpointId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RotateChannelCredentials = {
  type t
  type request = {@ocaml.doc("The ID of the channel to update.") @as("Id") id: __string}
  type response = {
    @as("Tags") tags: option<tags>,
    @as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
    @ocaml.doc("The ID of the Channel.") @as("Id") id: option<__string>,
    @as("HlsIngest") hlsIngest: option<hlsIngest>,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
    @ocaml.doc("A short text description of the Channel.") @as("Description")
    description: option<__string>,
    @ocaml.doc("The Amazon Resource Name (ARN) assigned to the Channel.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage") @new
  external new: request => t = "RotateChannelCredentialsCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHarvestJobs = {
  type t
  type request = {
    @ocaml.doc("A token used to resume pagination from the end of a previous request.")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The upper bound on the number of records to return.") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("When specified, the request will return only HarvestJobs in the given status.")
    @as("IncludeStatus")
    includeStatus: option<__string>,
    @ocaml.doc(
      "When specified, the request will return only HarvestJobs associated with the given Channel ID."
    )
    @as("IncludeChannelId")
    includeChannelId: option<__string>,
  }
  type response = {
    @ocaml.doc("A token that can be used to resume pagination from the end of the collection.")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("A list of HarvestJob records.") @as("HarvestJobs")
    harvestJobs: option<__listOfHarvestJob>,
  }
  @module("@aws-sdk/client-mediapackage") @new external new: request => t = "ListHarvestJobsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~includeStatus=?, ~includeChannelId=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      includeStatus: includeStatus,
      includeChannelId: includeChannelId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChannel = {
  type t
  type request = {@ocaml.doc("The ID of a Channel.") @as("Id") id: __string}
  type response = {
    @as("Tags") tags: option<tags>,
    @as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
    @ocaml.doc("The ID of the Channel.") @as("Id") id: option<__string>,
    @as("HlsIngest") hlsIngest: option<hlsIngest>,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
    @ocaml.doc("A short text description of the Channel.") @as("Description")
    description: option<__string>,
    @ocaml.doc("The Amazon Resource Name (ARN) assigned to the Channel.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage") @new external new: request => t = "DescribeChannelCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChannel = {
  type t
  @ocaml.doc("A new Channel configuration.")
  type request = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("The ID of the Channel. The ID must be unique within the region and it
cannot be changed after a Channel is created.")
    @as("Id")
    id: __string,
    @ocaml.doc("A short text description of the Channel.") @as("Description")
    description: option<__string>,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
    @ocaml.doc("The ID of the Channel.") @as("Id") id: option<__string>,
    @as("HlsIngest") hlsIngest: option<hlsIngest>,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
    @ocaml.doc("A short text description of the Channel.") @as("Description")
    description: option<__string>,
    @ocaml.doc("The Amazon Resource Name (ARN) assigned to the Channel.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage") @new external new: request => t = "CreateChannelCommand"
  let make = (~id, ~tags=?, ~description=?, ()) =>
    new({tags: tags, id: id, description: description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ConfigureLogs = {
  type t
  @ocaml.doc("the option to configure log subscription.")
  type request = {
    @as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
    @ocaml.doc("The ID of the channel to log subscription.") @as("Id") id: __string,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
    @ocaml.doc("The ID of the Channel.") @as("Id") id: option<__string>,
    @as("HlsIngest") hlsIngest: option<hlsIngest>,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
    @ocaml.doc("A short text description of the Channel.") @as("Description")
    description: option<__string>,
    @ocaml.doc("The Amazon Resource Name (ARN) assigned to the Channel.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage") @new external new: request => t = "ConfigureLogsCommand"
  let make = (~id, ~ingressAccessLogs=?, ~egressAccessLogs=?, ()) =>
    new({ingressAccessLogs: ingressAccessLogs, id: id, egressAccessLogs: egressAccessLogs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateOriginEndpoint = {
  type t
  @ocaml.doc("Configuration parameters used to update an existing OriginEndpoint.")
  type request = {
    @ocaml.doc("A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.")
    @as("Whitelist")
    whitelist: option<__listOf__string>,
    @ocaml.doc("Amount of delay (in seconds) to enforce on the playback of live content.
If not specified, there will be no time delay in effect for the OriginEndpoint.")
    @as("TimeDelaySeconds")
    timeDelaySeconds: option<__integer>,
    @ocaml.doc("Maximum duration (in seconds) of content to retain for startover playback.
If not specified, startover playback will be disabled for the OriginEndpoint.")
    @as("StartoverWindowSeconds")
    startoverWindowSeconds: option<__integer>,
    @ocaml.doc("Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination")
    @as("Origination")
    origination: option<origination>,
    @as("MssPackage") mssPackage: option<mssPackage>,
    @ocaml.doc("A short string that will be appended to the end of the Endpoint URL.")
    @as("ManifestName")
    manifestName: option<__string>,
    @ocaml.doc("The ID of the OriginEndpoint to update.") @as("Id") id: __string,
    @as("HlsPackage") hlsPackage: option<hlsPackage>,
    @ocaml.doc("A short text description of the OriginEndpoint.") @as("Description")
    description: option<__string>,
    @as("DashPackage") dashPackage: option<dashPackage>,
    @as("CmafPackage") cmafPackage: option<cmafPackageCreateOrUpdateParameters>,
    @as("Authorization") authorization: option<authorization>,
  }
  type response = {
    @ocaml.doc("A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.")
    @as("Whitelist")
    whitelist: option<__listOf__string>,
    @ocaml.doc("The URL of the packaged OriginEndpoint for consumption.") @as("Url")
    url: option<__string>,
    @ocaml.doc("Amount of delay (seconds) to enforce on the playback of live content.
If not specified, there will be no time delay in effect for the OriginEndpoint.")
    @as("TimeDelaySeconds")
    timeDelaySeconds: option<__integer>,
    @as("Tags") tags: option<tags>,
    @ocaml.doc("Maximum duration (seconds) of content to retain for startover playback.
If not specified, startover playback will be disabled for the OriginEndpoint.")
    @as("StartoverWindowSeconds")
    startoverWindowSeconds: option<__integer>,
    @ocaml.doc("Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination")
    @as("Origination")
    origination: option<origination>,
    @as("MssPackage") mssPackage: option<mssPackage>,
    @ocaml.doc("A short string appended to the end of the OriginEndpoint URL.") @as("ManifestName")
    manifestName: option<__string>,
    @ocaml.doc("The ID of the OriginEndpoint.") @as("Id") id: option<__string>,
    @as("HlsPackage") hlsPackage: option<hlsPackage>,
    @ocaml.doc("A short text description of the OriginEndpoint.") @as("Description")
    description: option<__string>,
    @as("DashPackage") dashPackage: option<dashPackage>,
    @as("CmafPackage") cmafPackage: option<cmafPackage>,
    @ocaml.doc("The ID of the Channel the OriginEndpoint is associated with.") @as("ChannelId")
    channelId: option<__string>,
    @as("Authorization") authorization: option<authorization>,
    @ocaml.doc("The Amazon Resource Name (ARN) assigned to the OriginEndpoint.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage") @new
  external new: request => t = "UpdateOriginEndpointCommand"
  let make = (
    ~id,
    ~whitelist=?,
    ~timeDelaySeconds=?,
    ~startoverWindowSeconds=?,
    ~origination=?,
    ~mssPackage=?,
    ~manifestName=?,
    ~hlsPackage=?,
    ~description=?,
    ~dashPackage=?,
    ~cmafPackage=?,
    ~authorization=?,
    (),
  ) =>
    new({
      whitelist: whitelist,
      timeDelaySeconds: timeDelaySeconds,
      startoverWindowSeconds: startoverWindowSeconds,
      origination: origination,
      mssPackage: mssPackage,
      manifestName: manifestName,
      id: id,
      hlsPackage: hlsPackage,
      description: description,
      dashPackage: dashPackage,
      cmafPackage: cmafPackage,
      authorization: authorization,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOriginEndpoint = {
  type t
  type request = {@ocaml.doc("The ID of the OriginEndpoint.") @as("Id") id: __string}
  type response = {
    @ocaml.doc("A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.")
    @as("Whitelist")
    whitelist: option<__listOf__string>,
    @ocaml.doc("The URL of the packaged OriginEndpoint for consumption.") @as("Url")
    url: option<__string>,
    @ocaml.doc("Amount of delay (seconds) to enforce on the playback of live content.
If not specified, there will be no time delay in effect for the OriginEndpoint.")
    @as("TimeDelaySeconds")
    timeDelaySeconds: option<__integer>,
    @as("Tags") tags: option<tags>,
    @ocaml.doc("Maximum duration (seconds) of content to retain for startover playback.
If not specified, startover playback will be disabled for the OriginEndpoint.")
    @as("StartoverWindowSeconds")
    startoverWindowSeconds: option<__integer>,
    @ocaml.doc("Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination")
    @as("Origination")
    origination: option<origination>,
    @as("MssPackage") mssPackage: option<mssPackage>,
    @ocaml.doc("A short string appended to the end of the OriginEndpoint URL.") @as("ManifestName")
    manifestName: option<__string>,
    @ocaml.doc("The ID of the OriginEndpoint.") @as("Id") id: option<__string>,
    @as("HlsPackage") hlsPackage: option<hlsPackage>,
    @ocaml.doc("A short text description of the OriginEndpoint.") @as("Description")
    description: option<__string>,
    @as("DashPackage") dashPackage: option<dashPackage>,
    @as("CmafPackage") cmafPackage: option<cmafPackage>,
    @ocaml.doc("The ID of the Channel the OriginEndpoint is associated with.") @as("ChannelId")
    channelId: option<__string>,
    @as("Authorization") authorization: option<authorization>,
    @ocaml.doc("The Amazon Resource Name (ARN) assigned to the OriginEndpoint.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage") @new
  external new: request => t = "DescribeOriginEndpointCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOriginEndpoint = {
  type t
  @ocaml.doc("Configuration parameters used to create a new OriginEndpoint.")
  type request = {
    @ocaml.doc("A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.")
    @as("Whitelist")
    whitelist: option<__listOf__string>,
    @ocaml.doc("Amount of delay (seconds) to enforce on the playback of live content.
If not specified, there will be no time delay in effect for the OriginEndpoint.")
    @as("TimeDelaySeconds")
    timeDelaySeconds: option<__integer>,
    @as("Tags") tags: option<tags>,
    @ocaml.doc("Maximum duration (seconds) of content to retain for startover playback.
If not specified, startover playback will be disabled for the OriginEndpoint.")
    @as("StartoverWindowSeconds")
    startoverWindowSeconds: option<__integer>,
    @ocaml.doc("Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination")
    @as("Origination")
    origination: option<origination>,
    @as("MssPackage") mssPackage: option<mssPackage>,
    @ocaml.doc(
      "A short string that will be used as the filename of the OriginEndpoint URL (defaults to \"index\")."
    )
    @as("ManifestName")
    manifestName: option<__string>,
    @ocaml.doc("The ID of the OriginEndpoint.  The ID must be unique within the region
and it cannot be changed after the OriginEndpoint is created.")
    @as("Id")
    id: __string,
    @as("HlsPackage") hlsPackage: option<hlsPackage>,
    @ocaml.doc("A short text description of the OriginEndpoint.") @as("Description")
    description: option<__string>,
    @as("DashPackage") dashPackage: option<dashPackage>,
    @as("CmafPackage") cmafPackage: option<cmafPackageCreateOrUpdateParameters>,
    @ocaml.doc("The ID of the Channel that the OriginEndpoint will be associated with.
This cannot be changed after the OriginEndpoint is created.")
    @as("ChannelId")
    channelId: __string,
    @as("Authorization") authorization: option<authorization>,
  }
  type response = {
    @ocaml.doc("A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.")
    @as("Whitelist")
    whitelist: option<__listOf__string>,
    @ocaml.doc("The URL of the packaged OriginEndpoint for consumption.") @as("Url")
    url: option<__string>,
    @ocaml.doc("Amount of delay (seconds) to enforce on the playback of live content.
If not specified, there will be no time delay in effect for the OriginEndpoint.")
    @as("TimeDelaySeconds")
    timeDelaySeconds: option<__integer>,
    @as("Tags") tags: option<tags>,
    @ocaml.doc("Maximum duration (seconds) of content to retain for startover playback.
If not specified, startover playback will be disabled for the OriginEndpoint.")
    @as("StartoverWindowSeconds")
    startoverWindowSeconds: option<__integer>,
    @ocaml.doc("Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination")
    @as("Origination")
    origination: option<origination>,
    @as("MssPackage") mssPackage: option<mssPackage>,
    @ocaml.doc("A short string appended to the end of the OriginEndpoint URL.") @as("ManifestName")
    manifestName: option<__string>,
    @ocaml.doc("The ID of the OriginEndpoint.") @as("Id") id: option<__string>,
    @as("HlsPackage") hlsPackage: option<hlsPackage>,
    @ocaml.doc("A short text description of the OriginEndpoint.") @as("Description")
    description: option<__string>,
    @as("DashPackage") dashPackage: option<dashPackage>,
    @as("CmafPackage") cmafPackage: option<cmafPackage>,
    @ocaml.doc("The ID of the Channel the OriginEndpoint is associated with.") @as("ChannelId")
    channelId: option<__string>,
    @as("Authorization") authorization: option<authorization>,
    @ocaml.doc("The Amazon Resource Name (ARN) assigned to the OriginEndpoint.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage") @new
  external new: request => t = "CreateOriginEndpointCommand"
  let make = (
    ~id,
    ~channelId,
    ~whitelist=?,
    ~timeDelaySeconds=?,
    ~tags=?,
    ~startoverWindowSeconds=?,
    ~origination=?,
    ~mssPackage=?,
    ~manifestName=?,
    ~hlsPackage=?,
    ~description=?,
    ~dashPackage=?,
    ~cmafPackage=?,
    ~authorization=?,
    (),
  ) =>
    new({
      whitelist: whitelist,
      timeDelaySeconds: timeDelaySeconds,
      tags: tags,
      startoverWindowSeconds: startoverWindowSeconds,
      origination: origination,
      mssPackage: mssPackage,
      manifestName: manifestName,
      id: id,
      hlsPackage: hlsPackage,
      description: description,
      dashPackage: dashPackage,
      cmafPackage: cmafPackage,
      channelId: channelId,
      authorization: authorization,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannels = {
  type t
  type request = {
    @ocaml.doc("A token used to resume pagination from the end of a previous request.")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Upper bound on number of records to return.") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("A token that can be used to resume pagination from the end of the collection.")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("A list of Channel records.") @as("Channels") channels: option<__listOfChannel>,
  }
  @module("@aws-sdk/client-mediapackage") @new external new: request => t = "ListChannelsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOriginEndpoints = {
  type t
  type request = {
    @ocaml.doc("A token used to resume pagination from the end of a previous request.")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The upper bound on the number of records to return.") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "When specified, the request will return only OriginEndpoints associated with the given Channel ID."
    )
    @as("ChannelId")
    channelId: option<__string>,
  }
  type response = {
    @ocaml.doc("A list of OriginEndpoint records.") @as("OriginEndpoints")
    originEndpoints: option<__listOfOriginEndpoint>,
    @ocaml.doc("A token that can be used to resume pagination from the end of the collection.")
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage") @new
  external new: request => t = "ListOriginEndpointsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~channelId=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, channelId: channelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
