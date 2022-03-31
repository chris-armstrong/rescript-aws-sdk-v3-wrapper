type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-medialive") @new
external createClient: unit => awsServiceClient = "MediaLiveClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
@ocaml.doc("Placeholder documentation for __timestamp") type __timestamp = Js.Date.t
@ocaml.doc("Placeholder documentation for __stringPattern010920300")
type __stringPattern010920300 = string
@ocaml.doc("Placeholder documentation for __stringMin6Max6") type __stringMin6Max6 = string
@ocaml.doc("Placeholder documentation for __stringMin3Max3") type __stringMin3Max3 = string
@ocaml.doc("Placeholder documentation for __stringMin34Max34") type __stringMin34Max34 = string
@ocaml.doc("Placeholder documentation for __stringMin32Max32") type __stringMin32Max32 = string
@ocaml.doc("Placeholder documentation for __stringMin2Max2") type __stringMin2Max2 = string
@ocaml.doc("Placeholder documentation for __stringMin1Max7") type __stringMin1Max7 = string
@ocaml.doc("Placeholder documentation for __stringMin1Max35") type __stringMin1Max35 = string
@ocaml.doc("Placeholder documentation for __stringMin1Max256") type __stringMin1Max256 = string
@ocaml.doc("Placeholder documentation for __stringMin1Max255") type __stringMin1Max255 = string
@ocaml.doc("Placeholder documentation for __stringMin1") type __stringMin1 = string
@ocaml.doc("Placeholder documentation for __stringMax32") type __stringMax32 = string
@ocaml.doc("Placeholder documentation for __stringMax256") type __stringMax256 = string
@ocaml.doc("Placeholder documentation for __stringMax1000") type __stringMax1000 = string
@ocaml.doc("Placeholder documentation for __string") type __string = string
@ocaml.doc("Placeholder documentation for __longMin0Max86400000") type __longMin0Max86400000 = float
@ocaml.doc("Placeholder documentation for __longMin0Max8589934591")
type __longMin0Max8589934591 = float
@ocaml.doc("Placeholder documentation for __longMin0Max4294967295")
type __longMin0Max4294967295 = float
@ocaml.doc("Placeholder documentation for __longMin0Max1099511627775")
type __longMin0Max1099511627775 = float
@ocaml.doc("Placeholder documentation for __long") type __long = float
@ocaml.doc("Placeholder documentation for __integerMinNegative60Max60")
type __integerMinNegative60Max60 = int
@ocaml.doc("Placeholder documentation for __integerMinNegative60Max6")
type __integerMinNegative60Max6 = int
@ocaml.doc("Placeholder documentation for __integerMinNegative5Max5")
type __integerMinNegative5Max5 = int
@ocaml.doc("Placeholder documentation for __integerMinNegative1000Max1000")
type __integerMinNegative1000Max1000 = int
@ocaml.doc("Placeholder documentation for __integerMin96Max600") type __integerMin96Max600 = int
@ocaml.doc("Placeholder documentation for __integerMin800Max3000") type __integerMin800Max3000 = int
@ocaml.doc("Placeholder documentation for __integerMin4Max20") type __integerMin4Max20 = int
@ocaml.doc("Placeholder documentation for __integerMin32Max8191") type __integerMin32Max8191 = int
@ocaml.doc("Placeholder documentation for __integerMin30") type __integerMin30 = int
@ocaml.doc("Placeholder documentation for __integerMin3") type __integerMin3 = int
@ocaml.doc("Placeholder documentation for __integerMin25Max2000") type __integerMin25Max2000 = int
@ocaml.doc("Placeholder documentation for __integerMin25Max10000") type __integerMin25Max10000 = int
@ocaml.doc("Placeholder documentation for __integerMin1Max8") type __integerMin1Max8 = int
@ocaml.doc("Placeholder documentation for __integerMin1Max6") type __integerMin1Max6 = int
@ocaml.doc("Placeholder documentation for __integerMin1Max5") type __integerMin1Max5 = int
@ocaml.doc("Placeholder documentation for __integerMin1Max4") type __integerMin1Max4 = int
@ocaml.doc("Placeholder documentation for __integerMin1Max3600000")
type __integerMin1Max3600000 = int
@ocaml.doc("Placeholder documentation for __integerMin1Max32") type __integerMin1Max32 = int
@ocaml.doc("Placeholder documentation for __integerMin1Max31") type __integerMin1Max31 = int
@ocaml.doc("Placeholder documentation for __integerMin1Max3003") type __integerMin1Max3003 = int
@ocaml.doc("Placeholder documentation for __integerMin1Max20") type __integerMin1Max20 = int
@ocaml.doc("Placeholder documentation for __integerMin1Max16") type __integerMin1Max16 = int
@ocaml.doc("Placeholder documentation for __integerMin1Max1000000")
type __integerMin1Max1000000 = int
@ocaml.doc("Placeholder documentation for __integerMin1Max10") type __integerMin1Max10 = int
@ocaml.doc("Placeholder documentation for __integerMin1000Max30000")
type __integerMin1000Max30000 = int
@ocaml.doc("Placeholder documentation for __integerMin100000Max80000000")
type __integerMin100000Max80000000 = int
@ocaml.doc("Placeholder documentation for __integerMin100000Max40000000")
type __integerMin100000Max40000000 = int
@ocaml.doc("Placeholder documentation for __integerMin100000Max100000000")
type __integerMin100000Max100000000 = int
@ocaml.doc("Placeholder documentation for __integerMin1000000Max100000000")
type __integerMin1000000Max100000000 = int
@ocaml.doc("Placeholder documentation for __integerMin1000") type __integerMin1000 = int
@ocaml.doc("Placeholder documentation for __integerMin100") type __integerMin100 = int
@ocaml.doc("Placeholder documentation for __integerMin1") type __integerMin1 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max8191") type __integerMin0Max8191 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max7") type __integerMin0Max7 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max65536") type __integerMin0Max65536 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max65535") type __integerMin0Max65535 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max600") type __integerMin0Max600 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max500") type __integerMin0Max500 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max3600") type __integerMin0Max3600 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max32768") type __integerMin0Max32768 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max30") type __integerMin0Max30 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max255") type __integerMin0Max255 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max15") type __integerMin0Max15 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max128") type __integerMin0Max128 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max100000000")
type __integerMin0Max100000000 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max1000000")
type __integerMin0Max1000000 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max10000") type __integerMin0Max10000 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max1000") type __integerMin0Max1000 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max100") type __integerMin0Max100 = int
@ocaml.doc("Placeholder documentation for __integerMin0Max10") type __integerMin0Max10 = int
@ocaml.doc("Placeholder documentation for __integerMin0") type __integerMin0 = int
@ocaml.doc("Placeholder documentation for __integer") type __integer = int
@ocaml.doc("Placeholder documentation for __doubleMinNegative59Max0")
type __doubleMinNegative59Max0 = float
@ocaml.doc("Placeholder documentation for __doubleMin1Max65535") type __doubleMin1Max65535 = float
@ocaml.doc("Placeholder documentation for __doubleMin1") type __doubleMin1 = float
@ocaml.doc("Placeholder documentation for __doubleMin0Max100") type __doubleMin0Max100 = float
@ocaml.doc("Placeholder documentation for __doubleMin0Max1") type __doubleMin0Max1 = float
@ocaml.doc("Placeholder documentation for __doubleMin0") type __doubleMin0 = float
@ocaml.doc("Placeholder documentation for __double") type __double = float
@ocaml.doc("Webvtt Destination Style Control")
type webvttDestinationStyleControl = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_STYLE_DATA") #NO_STYLE_DATA
]
@ocaml.doc("Wav Coding Mode")
type wavCodingMode = [
  | @as("CODING_MODE_8_0") #CODING_MODE_8_0
  | @as("CODING_MODE_4_0") #CODING_MODE_4_0
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
]
@ocaml.doc("Video Selector Color Space Usage")
type videoSelectorColorSpaceUsage = [@as("FORCE") #FORCE | @as("FALLBACK") #FALLBACK]
@ocaml.doc("Video Selector Color Space")
type videoSelectorColorSpace = [
  | @as("REC_709") #REC_709
  | @as("REC_601") #REC_601
  | @as("HLG_2020") #HLG_2020
  | @as("HDR10") #HDR10
  | @as("FOLLOW") #FOLLOW
]
@ocaml.doc("Video Description Scaling Behavior")
type videoDescriptionScalingBehavior = [
  | @as("STRETCH_TO_OUTPUT") #STRETCH_TO_OUTPUT
  | @as("DEFAULT") #DEFAULT
]
@ocaml.doc("Video Description Respond To Afd")
type videoDescriptionRespondToAfd = [
  | @as("RESPOND") #RESPOND
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NONE") #NONE
]
@ocaml.doc("Udp Timed Metadata Id3 Frame")
type udpTimedMetadataId3Frame = [@as("TDRL") #TDRL | @as("PRIV") #PRIV | @as("NONE") #NONE]
@ocaml.doc("Ttml Destination Style Control")
type ttmlDestinationStyleControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("PASSTHROUGH") #PASSTHROUGH
]
@ocaml.doc("Timecode Config Source")
type timecodeConfigSource = [
  | @as("ZEROBASED") #ZEROBASED
  | @as("SYSTEMCLOCK") #SYSTEMCLOCK
  | @as("EMBEDDED") #EMBEDDED
]
@ocaml.doc("Temporal Filter Strength")
type temporalFilterStrength = [
  | @as("STRENGTH_16") #STRENGTH_16
  | @as("STRENGTH_15") #STRENGTH_15
  | @as("STRENGTH_14") #STRENGTH_14
  | @as("STRENGTH_13") #STRENGTH_13
  | @as("STRENGTH_12") #STRENGTH_12
  | @as("STRENGTH_11") #STRENGTH_11
  | @as("STRENGTH_10") #STRENGTH_10
  | @as("STRENGTH_9") #STRENGTH_9
  | @as("STRENGTH_8") #STRENGTH_8
  | @as("STRENGTH_7") #STRENGTH_7
  | @as("STRENGTH_6") #STRENGTH_6
  | @as("STRENGTH_5") #STRENGTH_5
  | @as("STRENGTH_4") #STRENGTH_4
  | @as("STRENGTH_3") #STRENGTH_3
  | @as("STRENGTH_2") #STRENGTH_2
  | @as("STRENGTH_1") #STRENGTH_1
  | @as("AUTO") #AUTO
]
@ocaml.doc("Temporal Filter Post Filter Sharpening")
type temporalFilterPostFilterSharpening = [
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
  | @as("AUTO") #AUTO
]
@ocaml.doc("Teletext Destination Settings") type teletextDestinationSettings = {.}
@ocaml.doc("Smpte Tt Destination Settings") type smpteTtDestinationSettings = {.}
@ocaml.doc("Smpte2038 Data Preference")
type smpte2038DataPreference = [@as("PREFER") #PREFER | @as("IGNORE") #IGNORE]
@ocaml.doc("Smooth Group Timestamp Offset Mode")
type smoothGroupTimestampOffsetMode = [
  | @as("USE_EVENT_START_DATE") #USE_EVENT_START_DATE
  | @as("USE_CONFIGURED_OFFSET") #USE_CONFIGURED_OFFSET
]
@ocaml.doc("Smooth Group Stream Manifest Behavior")
type smoothGroupStreamManifestBehavior = [@as("SEND") #SEND | @as("DO_NOT_SEND") #DO_NOT_SEND]
@ocaml.doc("Smooth Group Sparse Track Type")
type smoothGroupSparseTrackType = [
  | @as("SCTE_35_WITHOUT_SEGMENTATION") #SCTE_35_WITHOUT_SEGMENTATION
  | @as("SCTE_35") #SCTE_35
  | @as("NONE") #NONE
]
@ocaml.doc("Smooth Group Segmentation Mode")
type smoothGroupSegmentationMode = [
  | @as("USE_SEGMENT_DURATION") #USE_SEGMENT_DURATION
  | @as("USE_INPUT_SEGMENTATION") #USE_INPUT_SEGMENTATION
]
@ocaml.doc("Smooth Group Event Stop Behavior")
type smoothGroupEventStopBehavior = [@as("SEND_EOS") #SEND_EOS | @as("NONE") #NONE]
@ocaml.doc("Smooth Group Event Id Mode")
type smoothGroupEventIdMode = [
  | @as("USE_TIMESTAMP") #USE_TIMESTAMP
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("NO_EVENT_ID") #NO_EVENT_ID
]
@ocaml.doc("Smooth Group Certificate Mode")
type smoothGroupCertificateMode = [
  | @as("VERIFY_AUTHENTICITY") #VERIFY_AUTHENTICITY
  | @as("SELF_SIGNED") #SELF_SIGNED
]
@ocaml.doc("Smooth Group Audio Only Timecode Control")
type smoothGroupAudioOnlyTimecodeControl = [
  | @as("USE_CONFIGURED_CLOCK") #USE_CONFIGURED_CLOCK
  | @as("PASSTHROUGH") #PASSTHROUGH
]
@ocaml.doc(
  "Corresponds to the web_delivery_allowed_flag parameter. A value of WEB_DELIVERY_NOT_ALLOWED corresponds to 0 (false) in the SCTE-35 specification. If you include one of the \"restriction\" flags then you must include all four of them."
)
type scte35WebDeliveryAllowedFlag = [
  | @as("WEB_DELIVERY_ALLOWED") #WEB_DELIVERY_ALLOWED
  | @as("WEB_DELIVERY_NOT_ALLOWED") #WEB_DELIVERY_NOT_ALLOWED
]
@ocaml.doc("Scte35 Splice Insert Web Delivery Allowed Behavior")
type scte35SpliceInsertWebDeliveryAllowedBehavior = [@as("IGNORE") #IGNORE | @as("FOLLOW") #FOLLOW]
@ocaml.doc("Scte35 Splice Insert No Regional Blackout Behavior")
type scte35SpliceInsertNoRegionalBlackoutBehavior = [@as("IGNORE") #IGNORE | @as("FOLLOW") #FOLLOW]
@ocaml.doc(
  "Corresponds to SCTE-35 segmentation_event_cancel_indicator. SEGMENTATION_EVENT_NOT_CANCELED corresponds to 0 in the SCTE-35 specification and indicates that this is an insertion request. SEGMENTATION_EVENT_CANCELED corresponds to 1 in the SCTE-35 specification and indicates that this is a cancelation request, in which case complete this field and the existing event ID to cancel."
)
type scte35SegmentationCancelIndicator = [
  | @as("SEGMENTATION_EVENT_CANCELED") #SEGMENTATION_EVENT_CANCELED
  | @as("SEGMENTATION_EVENT_NOT_CANCELED") #SEGMENTATION_EVENT_NOT_CANCELED
]
@ocaml.doc(
  "Corresponds to the no_regional_blackout_flag parameter. A value of REGIONAL_BLACKOUT corresponds to 0 (false) in the SCTE-35 specification. If you include one of the \"restriction\" flags then you must include all four of them."
)
type scte35NoRegionalBlackoutFlag = [
  | @as("NO_REGIONAL_BLACKOUT") #NO_REGIONAL_BLACKOUT
  | @as("REGIONAL_BLACKOUT") #REGIONAL_BLACKOUT
]
@ocaml.doc(
  "Corresponds to the device_restrictions parameter in a segmentation_descriptor. If you include one of the \"restriction\" flags then you must include all four of them."
)
type scte35DeviceRestrictions = [
  | @as("RESTRICT_GROUP2") #RESTRICT_GROUP2
  | @as("RESTRICT_GROUP1") #RESTRICT_GROUP1
  | @as("RESTRICT_GROUP0") #RESTRICT_GROUP0
  | @as("NONE") #NONE
]
@ocaml.doc(
  "Corresponds to the archive_allowed parameter. A value of ARCHIVE_NOT_ALLOWED corresponds to 0 (false) in the SCTE-35 specification. If you include one of the \"restriction\" flags then you must include all four of them."
)
type scte35ArchiveAllowedFlag = [
  | @as("ARCHIVE_ALLOWED") #ARCHIVE_ALLOWED
  | @as("ARCHIVE_NOT_ALLOWED") #ARCHIVE_NOT_ALLOWED
]
@ocaml.doc("Scte35 Apos Web Delivery Allowed Behavior")
type scte35AposWebDeliveryAllowedBehavior = [@as("IGNORE") #IGNORE | @as("FOLLOW") #FOLLOW]
@ocaml.doc("Scte35 Apos No Regional Blackout Behavior")
type scte35AposNoRegionalBlackoutBehavior = [@as("IGNORE") #IGNORE | @as("FOLLOW") #FOLLOW]
@ocaml.doc("Scte27 Ocr Language")
type scte27OcrLanguage = [
  | @as("SPA") #SPA
  | @as("POR") #POR
  | @as("NLD") #NLD
  | @as("FRA") #FRA
  | @as("ENG") #ENG
  | @as("DEU") #DEU
]
@ocaml.doc("Scte27 Destination Settings") type scte27DestinationSettings = {.}
@ocaml.doc("Scte20 Plus Embedded Destination Settings")
type scte20PlusEmbeddedDestinationSettings = {.}
@ocaml.doc("Scte20 Convert608 To708")
type scte20Convert608To708 = [@as("UPCONVERT") #UPCONVERT | @as("DISABLED") #DISABLED]
@ocaml.doc("S3 Canned Acl")
type s3CannedAcl = [
  | @as("PUBLIC_READ") #PUBLIC_READ
  | @as("BUCKET_OWNER_READ") #BUCKET_OWNER_READ
  | @as("BUCKET_OWNER_FULL_CONTROL") #BUCKET_OWNER_FULL_CONTROL
  | @as("AUTHENTICATED_READ") #AUTHENTICATED_READ
]
@ocaml.doc("Rtmp Output Certificate Mode")
type rtmpOutputCertificateMode = [
  | @as("VERIFY_AUTHENTICITY") #VERIFY_AUTHENTICITY
  | @as("SELF_SIGNED") #SELF_SIGNED
]
@ocaml.doc("Rtmp Caption Info Destination Settings") type rtmpCaptionInfoDestinationSettings = {.}
@ocaml.doc("Rtmp Caption Data")
type rtmpCaptionData = [
  | @as("FIELD1_AND_FIELD2_608") #FIELD1_AND_FIELD2_608
  | @as("FIELD1_608") #FIELD1_608
  | @as("ALL") #ALL
]
@ocaml.doc("Rtmp Cache Full Behavior")
type rtmpCacheFullBehavior = [
  | @as("WAIT_FOR_SERVER") #WAIT_FOR_SERVER
  | @as("DISCONNECT_IMMEDIATELY") #DISCONNECT_IMMEDIATELY
]
@ocaml.doc("Rtmp Ad Markers") type rtmpAdMarkers = [@as("ON_CUE_POINT_SCTE35") #ON_CUE_POINT_SCTE35]
@ocaml.doc("Video quality, e.g. 'STANDARD' (Outputs only)")
type reservationVideoQuality = [
  | @as("PREMIUM") #PREMIUM
  | @as("ENHANCED") #ENHANCED
  | @as("STANDARD") #STANDARD
]
@ocaml.doc("Current reservation state")
type reservationState = [
  | @as("DELETED") #DELETED
  | @as("CANCELED") #CANCELED
  | @as("EXPIRED") #EXPIRED
  | @as("ACTIVE") #ACTIVE
]
@ocaml.doc("Special features, 'ADVANCED_AUDIO' 'AUDIO_NORMALIZATION' 'MGHD' or 'MGUHD'")
type reservationSpecialFeature = [
  | @as("MGUHD") #MGUHD
  | @as("MGHD") #MGHD
  | @as("AUDIO_NORMALIZATION") #AUDIO_NORMALIZATION
  | @as("ADVANCED_AUDIO") #ADVANCED_AUDIO
]
@ocaml.doc("Resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'")
type reservationResourceType = [
  | @as("CHANNEL") #CHANNEL
  | @as("MULTIPLEX") #MULTIPLEX
  | @as("OUTPUT") #OUTPUT
  | @as("INPUT") #INPUT
]
@ocaml.doc(
  "Resolution based on lines of vertical resolution; SD is less than 720 lines, HD is 720 to 1080 lines, FHD is 1080 lines, UHD is greater than 1080 lines"
)
type reservationResolution = [@as("UHD") #UHD | @as("FHD") #FHD | @as("HD") #HD | @as("SD") #SD]
@ocaml.doc("Maximum framerate in frames per second (Outputs only)")
type reservationMaximumFramerate = [@as("MAX_60_FPS") #MAX_60_FPS | @as("MAX_30_FPS") #MAX_30_FPS]
@ocaml.doc("Maximum bitrate in megabits per second")
type reservationMaximumBitrate = [
  | @as("MAX_50_MBPS") #MAX_50_MBPS
  | @as("MAX_20_MBPS") #MAX_20_MBPS
  | @as("MAX_10_MBPS") #MAX_10_MBPS
]
@ocaml.doc("Codec, 'MPEG2', 'AVC', 'HEVC', or 'AUDIO'")
type reservationCodec = [
  | @as("LINK") #LINK
  | @as("AUDIO") #AUDIO
  | @as("HEVC") #HEVC
  | @as("AVC") #AVC
  | @as("MPEG2") #MPEG2
]
@ocaml.doc("Rec709 Settings") type rec709Settings = {.}
@ocaml.doc("Rec601 Settings") type rec601Settings = {.}
@ocaml.doc("Raw Settings") type rawSettings = {.}
@ocaml.doc("Indicates which pipeline is preferred by the multiplex for program ingest.
If set to \\\"PIPELINE_0\\\" or \\\"PIPELINE_1\\\" and an unhealthy ingest causes the multiplex to switch to the non-preferred pipeline,
it will switch back once that ingest is healthy again. If set to \\\"CURRENTLY_ACTIVE\\\",
it will not switch back to the other pipeline based on it recovering to a healthy state,
it will only switch if the active pipeline becomes unhealthy.")
type preferredChannelPipeline = [
  | @as("PIPELINE_1") #PIPELINE_1
  | @as("PIPELINE_0") #PIPELINE_0
  | @as("CURRENTLY_ACTIVE") #CURRENTLY_ACTIVE
]
@ocaml.doc("Pipeline ID")
type pipelineId = [@as("PIPELINE_1") #PIPELINE_1 | @as("PIPELINE_0") #PIPELINE_0]
@ocaml.doc("Pass Through Settings") type passThroughSettings = {.}
@ocaml.doc("Offering type, e.g. 'NO_UPFRONT'") type offeringType = [@as("NO_UPFRONT") #NO_UPFRONT]
@ocaml.doc("Units for duration, e.g. 'MONTHS'") type offeringDurationUnits = [@as("MONTHS") #MONTHS]
@ocaml.doc("Nielsen Watermarks Distribution Types")
type nielsenWatermarksDistributionTypes = [
  | @as("PROGRAM_CONTENT") #PROGRAM_CONTENT
  | @as("FINAL_DISTRIBUTOR") #FINAL_DISTRIBUTOR
]
@ocaml.doc("Nielsen Watermarks Cbet Stepaside")
type nielsenWatermarksCbetStepaside = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("State of Nielsen PCM to ID3 tagging")
type nielsenPcmToId3TaggingState = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Network Input Server Validation")
type networkInputServerValidation = [
  | @as("CHECK_CRYPTOGRAPHY_ONLY") #CHECK_CRYPTOGRAPHY_ONLY
  | @as("CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME") #CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME
]
@ocaml.doc("The current state of the multiplex.")
type multiplexState = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("STOPPING") #STOPPING
  | @as("RECOVERING") #RECOVERING
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
  | @as("IDLE") #IDLE
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATING") #CREATING
]
@ocaml.doc("Multiplex Group Settings") type multiplexGroupSettings = {.}
@ocaml.doc("Ms Smooth H265 Packaging Type")
type msSmoothH265PackagingType = [@as("HVC1") #HVC1 | @as("HEV1") #HEV1]
@ocaml.doc("Mpeg2 Timecode Insertion Behavior")
type mpeg2TimecodeInsertionBehavior = [
  | @as("GOP_TIMECODE") #GOP_TIMECODE
  | @as("DISABLED") #DISABLED
]
@ocaml.doc("Mpeg2 Sub Gop Length")
type mpeg2SubGopLength = [@as("FIXED") #FIXED | @as("DYNAMIC") #DYNAMIC]
@ocaml.doc("Mpeg2 Scan Type")
type mpeg2ScanType = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
@ocaml.doc("Mpeg2 Gop Size Units")
type mpeg2GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
@ocaml.doc("Mpeg2 Display Ratio")
type mpeg2DisplayRatio = [
  | @as("DISPLAYRATIO4X3") #DISPLAYRATIO4X3
  | @as("DISPLAYRATIO16X9") #DISPLAYRATIO16X9
]
@ocaml.doc("Mpeg2 Color Space")
type mpeg2ColorSpace = [@as("PASSTHROUGH") #PASSTHROUGH | @as("AUTO") #AUTO]
@ocaml.doc("Mpeg2 Color Metadata")
type mpeg2ColorMetadata = [@as("INSERT") #INSERT | @as("IGNORE") #IGNORE]
@ocaml.doc("Mpeg2 Adaptive Quantization")
type mpeg2AdaptiveQuantization = [
  | @as("OFF") #OFF
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("HIGH") #HIGH
  | @as("AUTO") #AUTO
]
@ocaml.doc("Mp2 Coding Mode")
type mp2CodingMode = [
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
]
@ocaml.doc("Motion Graphics Insertion")
type motionGraphicsInsertion = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Settings to specify the ending of rendering motion graphics into the video stream.")
type motionGraphicsDeactivateScheduleActionSettings = {.}
@ocaml.doc("Media Package Output Settings") type mediaPackageOutputSettings = {.}
@ocaml.doc("Placeholder documentation for MaxResults") type maxResults = int
@ocaml.doc("The currently selected maintenance day.")
type maintenanceDay = [
  | @as("SUNDAY") #SUNDAY
  | @as("SATURDAY") #SATURDAY
  | @as("FRIDAY") #FRIDAY
  | @as("THURSDAY") #THURSDAY
  | @as("WEDNESDAY") #WEDNESDAY
  | @as("TUESDAY") #TUESDAY
  | @as("MONDAY") #MONDAY
]
@ocaml.doc("M3u8 Timed Metadata Behavior")
type m3u8TimedMetadataBehavior = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
@ocaml.doc("M3u8 Scte35 Behavior")
type m3u8Scte35Behavior = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH]
@ocaml.doc("M3u8 Pcr Control")
type m3u8PcrControl = [
  | @as("PCR_EVERY_PES_PACKET") #PCR_EVERY_PES_PACKET
  | @as("CONFIGURED_PCR_PERIOD") #CONFIGURED_PCR_PERIOD
]
@ocaml.doc("M3u8 Nielsen Id3 Behavior")
type m3u8NielsenId3Behavior = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
@ocaml.doc("M2ts Timed Metadata Behavior")
type m2tsTimedMetadataBehavior = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
@ocaml.doc("M2ts Segmentation Style")
type m2tsSegmentationStyle = [
  | @as("RESET_CADENCE") #RESET_CADENCE
  | @as("MAINTAIN_CADENCE") #MAINTAIN_CADENCE
]
@ocaml.doc("M2ts Segmentation Markers")
type m2tsSegmentationMarkers = [
  | @as("RAI_SEGSTART") #RAI_SEGSTART
  | @as("RAI_ADAPT") #RAI_ADAPT
  | @as("PSI_SEGSTART") #PSI_SEGSTART
  | @as("NONE") #NONE
  | @as("EBP_LEGACY") #EBP_LEGACY
  | @as("EBP") #EBP
]
@ocaml.doc("M2ts Scte35 Control")
type m2tsScte35Control = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NONE") #NONE]
@ocaml.doc("M2ts Rate Mode") type m2tsRateMode = [@as("VBR") #VBR | @as("CBR") #CBR]
@ocaml.doc("M2ts Pcr Control")
type m2tsPcrControl = [
  | @as("PCR_EVERY_PES_PACKET") #PCR_EVERY_PES_PACKET
  | @as("CONFIGURED_PCR_PERIOD") #CONFIGURED_PCR_PERIOD
]
@ocaml.doc("M2ts Nielsen Id3 Behavior")
type m2tsNielsenId3Behavior = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
@ocaml.doc("M2ts Klv") type m2tsKlv = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NONE") #NONE]
@ocaml.doc("M2ts Es Rate In Pes")
type m2tsEsRateInPes = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
@ocaml.doc("M2ts Ebp Placement")
type m2tsEbpPlacement = [
  | @as("VIDEO_PID") #VIDEO_PID
  | @as("VIDEO_AND_AUDIO_PIDS") #VIDEO_AND_AUDIO_PIDS
]
@ocaml.doc("M2ts Ebif Control")
type m2tsEbifControl = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NONE") #NONE]
@ocaml.doc("M2ts Cc Descriptor")
type m2tsCcDescriptor = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("M2ts Buffer Model")
type m2tsBufferModel = [@as("NONE") #NONE | @as("MULTIPLEX") #MULTIPLEX]
@ocaml.doc("M2ts Audio Stream Type")
type m2tsAudioStreamType = [@as("DVB") #DVB | @as("ATSC") #ATSC]
@ocaml.doc("M2ts Audio Interval")
type m2tsAudioInterval = [
  | @as("VIDEO_INTERVAL") #VIDEO_INTERVAL
  | @as("VIDEO_AND_FIXED_INTERVALS") #VIDEO_AND_FIXED_INTERVALS
]
@ocaml.doc("M2ts Audio Buffer Model")
type m2tsAudioBufferModel = [@as("DVB") #DVB | @as("ATSC") #ATSC]
@ocaml.doc("M2ts Arib Captions Pid Control")
type m2tsAribCaptionsPidControl = [@as("USE_CONFIGURED") #USE_CONFIGURED | @as("AUTO") #AUTO]
@ocaml.doc("M2ts Arib") type m2tsArib = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("M2ts Absent Input Audio Behavior")
type m2tsAbsentInputAudioBehavior = [@as("ENCODE_SILENCE") #ENCODE_SILENCE | @as("DROP") #DROP]
@ocaml.doc("The log level the user wants for their channel.")
type logLevel = [
  | @as("DISABLED") #DISABLED
  | @as("DEBUG") #DEBUG
  | @as("INFO") #INFO
  | @as("WARNING") #WARNING
  | @as("ERROR") #ERROR
]
@ocaml.doc(
  "If you specify a StopTimecode in an input (in order to clip the file), you can specify if you want the clip to exclude (the default) or include the frame specified by the timecode."
)
type lastFrameClippingBehavior = [
  | @as("INCLUDE_LAST_FRAME") #INCLUDE_LAST_FRAME
  | @as("EXCLUDE_LAST_FRAME") #EXCLUDE_LAST_FRAME
]
@ocaml.doc("The different types of inputs that AWS Elemental MediaLive supports.")
type inputType = [
  | @as("TS_FILE") #TS_FILE
  | @as("AWS_CDI") #AWS_CDI
  | @as("INPUT_DEVICE") #INPUT_DEVICE
  | @as("MEDIACONNECT") #MEDIACONNECT
  | @as("MP4_FILE") #MP4_FILE
  | @as("URL_PULL") #URL_PULL
  | @as("RTMP_PULL") #RTMP_PULL
  | @as("RTMP_PUSH") #RTMP_PUSH
  | @as("RTP_PUSH") #RTP_PUSH
  | @as("UDP_PUSH") #UDP_PUSH
]
@ocaml.doc("Documentation update needed")
type inputTimecodeSource = [@as("EMBEDDED") #EMBEDDED | @as("ZEROBASED") #ZEROBASED]
@ocaml.doc("Placeholder documentation for InputState")
type inputState = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("ATTACHED") #ATTACHED
  | @as("DETACHED") #DETACHED
  | @as("CREATING") #CREATING
]
@ocaml.doc("There are two types of input sources, static and dynamic. If an input source is dynamic you can
change the source url of the input dynamically using an input switch action. Currently, two input types
support a dynamic url at this time, MP4_FILE and TS_FILE. By default all input sources are static.")
type inputSourceType = [@as("DYNAMIC") #DYNAMIC | @as("STATIC") #STATIC]
@ocaml.doc("Input Source End Behavior")
type inputSourceEndBehavior = [@as("LOOP") #LOOP | @as("CONTINUE") #CONTINUE]
@ocaml.doc("Placeholder documentation for InputSecurityGroupState")
type inputSecurityGroupState = [
  | @as("DELETED") #DELETED
  | @as("UPDATING") #UPDATING
  | @as("IN_USE") #IN_USE
  | @as("IDLE") #IDLE
]
@ocaml.doc(
  "Input resolution based on lines of vertical resolution in the input; SD is less than 720 lines, HD is 720 to 1080 lines, UHD is greater than 1080 lines"
)
type inputResolution = [@as("UHD") #UHD | @as("HD") #HD | @as("SD") #SD]
@ocaml.doc("Input preference when deciding which input to make active when a previously failed input has recovered.
If \\\"EQUAL_INPUT_PREFERENCE\\\", then the active input will stay active as long as it is healthy.
If \\\"PRIMARY_INPUT_PREFERRED\\\", then always switch back to the primary input when it is healthy.")
type inputPreference = [
  | @as("PRIMARY_INPUT_PREFERRED") #PRIMARY_INPUT_PREFERRED
  | @as("EQUAL_INPUT_PREFERENCE") #EQUAL_INPUT_PREFERENCE
]
@ocaml.doc(
  "Maximum input bitrate in megabits per second. Bitrates up to 50 Mbps are supported currently."
)
type inputMaximumBitrate = [
  | @as("MAX_50_MBPS") #MAX_50_MBPS
  | @as("MAX_20_MBPS") #MAX_20_MBPS
  | @as("MAX_10_MBPS") #MAX_10_MBPS
]
@ocaml.doc("Input Loss Image Type")
type inputLossImageType = [@as("SLATE") #SLATE | @as("COLOR") #COLOR]
@ocaml.doc("Input Loss Action For Udp Out")
type inputLossActionForUdpOut = [
  | @as("EMIT_PROGRAM") #EMIT_PROGRAM
  | @as("DROP_TS") #DROP_TS
  | @as("DROP_PROGRAM") #DROP_PROGRAM
]
@ocaml.doc("Input Loss Action For Rtmp Out")
type inputLossActionForRtmpOut = [
  | @as("PAUSE_OUTPUT") #PAUSE_OUTPUT
  | @as("EMIT_OUTPUT") #EMIT_OUTPUT
]
@ocaml.doc("Input Loss Action For Ms Smooth Out")
type inputLossActionForMsSmoothOut = [
  | @as("PAUSE_OUTPUT") #PAUSE_OUTPUT
  | @as("EMIT_OUTPUT") #EMIT_OUTPUT
]
@ocaml.doc("Input Loss Action For Hls Out")
type inputLossActionForHlsOut = [
  | @as("PAUSE_OUTPUT") #PAUSE_OUTPUT
  | @as("EMIT_OUTPUT") #EMIT_OUTPUT
]
@ocaml.doc("Input Filter")
type inputFilter = [@as("FORCED") #FORCED | @as("DISABLED") #DISABLED | @as("AUTO") #AUTO]
@ocaml.doc(
  "The type of the input device. For an AWS Elemental Link device that outputs resolutions up to 1080, choose \"HD\"."
)
type inputDeviceType = [@as("HD") #HD]
@ocaml.doc(
  "The type of device transfer. INCOMING for an input device that is being transferred to you, OUTGOING for an input device that you are transferring to another AWS account."
)
type inputDeviceTransferType = [@as("INCOMING") #INCOMING | @as("OUTGOING") #OUTGOING]
@ocaml.doc(
  "The binary data for the thumbnail that the Link device has most recently sent to MediaLive."
)
type inputDeviceThumbnail = NodeJs.Buffer.t
@ocaml.doc("The state of the input device.")
type inputDeviceState = [@as("STREAMING") #STREAMING | @as("IDLE") #IDLE]
@ocaml.doc("The scan type of the video source.")
type inputDeviceScanType = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
@ocaml.doc(
  "Specifies whether the input device has been configured (outside of MediaLive) to use a dynamic IP address assignment (DHCP) or a static IP address."
)
type inputDeviceIpScheme = [@as("DHCP") #DHCP | @as("STATIC") #STATIC]
@ocaml.doc("The state of the connection between the input device and AWS.")
type inputDeviceConnectionState = [@as("CONNECTED") #CONNECTED | @as("DISCONNECTED") #DISCONNECTED]
@ocaml.doc("The source to activate (use) from the input device.")
type inputDeviceConfiguredInput = [@as("SDI") #SDI | @as("HDMI") #HDMI | @as("AUTO") #AUTO]
@ocaml.doc("The source at the input device that is currently active.")
type inputDeviceActiveInput = [@as("SDI") #SDI | @as("HDMI") #HDMI]
@ocaml.doc("Input Denoise Filter")
type inputDenoiseFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Input Deblock Filter")
type inputDeblockFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("codec in increasing order of complexity")
type inputCodec = [@as("HEVC") #HEVC | @as("AVC") #AVC | @as("MPEG2") #MPEG2]
@ocaml.doc("A standard input has two sources and a single pipeline input only has one.")
type inputClass = [@as("SINGLE_PIPELINE") #SINGLE_PIPELINE | @as("STANDARD") #STANDARD]
@ocaml.doc("Settings to configure an action so that it occurs as soon as possible.")
type immediateModeScheduleActionStartSettings = {.}
@ocaml.doc(
  "When set to \"standard\", an I-Frame only playlist will be written out for each video output in the output group. This I-Frame only playlist will contain byte range offsets pointing to the I-frame(s) in each segment."
)
type iframeOnlyPlaylistType = [@as("STANDARD") #STANDARD | @as("DISABLED") #DISABLED]
@ocaml.doc("Html Motion Graphics Settings") type htmlMotionGraphicsSettings = {.}
@ocaml.doc("Hls Webdav Http Transfer Mode")
type hlsWebdavHttpTransferMode = [@as("NON_CHUNKED") #NON_CHUNKED | @as("CHUNKED") #CHUNKED]
@ocaml.doc("Hls Ts File Mode")
type hlsTsFileMode = [@as("SINGLE_FILE") #SINGLE_FILE | @as("SEGMENTED_FILES") #SEGMENTED_FILES]
@ocaml.doc("Hls Timed Metadata Id3 Frame")
type hlsTimedMetadataId3Frame = [@as("TDRL") #TDRL | @as("PRIV") #PRIV | @as("NONE") #NONE]
@ocaml.doc("Hls Stream Inf Resolution")
type hlsStreamInfResolution = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
@ocaml.doc("Hls Segmentation Mode")
type hlsSegmentationMode = [
  | @as("USE_SEGMENT_DURATION") #USE_SEGMENT_DURATION
  | @as("USE_INPUT_SEGMENTATION") #USE_INPUT_SEGMENTATION
]
@ocaml.doc("Hls Scte35 Source Type")
type hlsScte35SourceType = [@as("SEGMENTS") #SEGMENTS | @as("MANIFEST") #MANIFEST]
@ocaml.doc("Hls Redundant Manifest")
type hlsRedundantManifest = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Hls Program Date Time Clock")
type hlsProgramDateTimeClock = [
  | @as("SYSTEM_CLOCK") #SYSTEM_CLOCK
  | @as("INITIALIZE_FROM_OUTPUT_TIMECODE") #INITIALIZE_FROM_OUTPUT_TIMECODE
]
@ocaml.doc("Hls Program Date Time")
type hlsProgramDateTime = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
@ocaml.doc("Hls Output Selection")
type hlsOutputSelection = [
  | @as("VARIANT_MANIFESTS_AND_SEGMENTS") #VARIANT_MANIFESTS_AND_SEGMENTS
  | @as("SEGMENTS_ONLY") #SEGMENTS_ONLY
  | @as("MANIFESTS_AND_SEGMENTS") #MANIFESTS_AND_SEGMENTS
]
@ocaml.doc("Hls Mode") type hlsMode = [@as("VOD") #VOD | @as("LIVE") #LIVE]
@ocaml.doc("Hls Media Store Storage Class")
type hlsMediaStoreStorageClass = [@as("TEMPORAL") #TEMPORAL]
@ocaml.doc("Hls Manifest Duration Format")
type hlsManifestDurationFormat = [@as("INTEGER") #INTEGER | @as("FLOATING_POINT") #FLOATING_POINT]
@ocaml.doc("Hls Manifest Compression")
type hlsManifestCompression = [@as("NONE") #NONE | @as("GZIP") #GZIP]
@ocaml.doc("Hls Iv Source")
type hlsIvSource = [
  | @as("FOLLOWS_SEGMENT_NUMBER") #FOLLOWS_SEGMENT_NUMBER
  | @as("EXPLICIT") #EXPLICIT
]
@ocaml.doc("Hls Iv In Manifest")
type hlsIvInManifest = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
@ocaml.doc("Hls Incomplete Segment Behavior")
type hlsIncompleteSegmentBehavior = [@as("SUPPRESS") #SUPPRESS | @as("AUTO") #AUTO]
@ocaml.doc("State of HLS ID3 Segment Tagging")
type hlsId3SegmentTaggingState = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Hls H265 Packaging Type")
type hlsH265PackagingType = [@as("HVC1") #HVC1 | @as("HEV1") #HEV1]
@ocaml.doc("Hls Encryption Type")
type hlsEncryptionType = [@as("SAMPLE_AES") #SAMPLE_AES | @as("AES128") #AES128]
@ocaml.doc("Hls Discontinuity Tags")
type hlsDiscontinuityTags = [@as("NEVER_INSERT") #NEVER_INSERT | @as("INSERT") #INSERT]
@ocaml.doc("Hls Directory Structure")
type hlsDirectoryStructure = [
  | @as("SUBDIRECTORY_PER_STREAM") #SUBDIRECTORY_PER_STREAM
  | @as("SINGLE_DIRECTORY") #SINGLE_DIRECTORY
]
@ocaml.doc("Hls Codec Specification")
type hlsCodecSpecification = [@as("RFC_6381") #RFC_6381 | @as("RFC_4281") #RFC_4281]
@ocaml.doc("Hls Client Cache")
type hlsClientCache = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Hls Caption Language Setting")
type hlsCaptionLanguageSetting = [@as("OMIT") #OMIT | @as("NONE") #NONE | @as("INSERT") #INSERT]
@ocaml.doc("Hls Akamai Http Transfer Mode")
type hlsAkamaiHttpTransferMode = [@as("NON_CHUNKED") #NON_CHUNKED | @as("CHUNKED") #CHUNKED]
@ocaml.doc("Hls Ad Markers")
type hlsAdMarkers = [
  | @as("ELEMENTAL_SCTE35") #ELEMENTAL_SCTE35
  | @as("ELEMENTAL") #ELEMENTAL
  | @as("ADOBE") #ADOBE
]
@ocaml.doc("H265 Timecode Insertion Behavior")
type h265TimecodeInsertionBehavior = [
  | @as("PIC_TIMING_SEI") #PIC_TIMING_SEI
  | @as("DISABLED") #DISABLED
]
@ocaml.doc("H265 Tier") type h265Tier = [@as("MAIN") #MAIN | @as("HIGH") #HIGH]
@ocaml.doc("H265 Scene Change Detect")
type h265SceneChangeDetect = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("H265 Scan Type")
type h265ScanType = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
@ocaml.doc("H265 Rate Control Mode")
type h265RateControlMode = [@as("QVBR") #QVBR | @as("MULTIPLEX") #MULTIPLEX | @as("CBR") #CBR]
@ocaml.doc("H265 Profile") type h265Profile = [@as("MAIN_10BIT") #MAIN_10BIT | @as("MAIN") #MAIN]
@ocaml.doc("H265 Look Ahead Rate Control")
type h265LookAheadRateControl = [@as("MEDIUM") #MEDIUM | @as("LOW") #LOW | @as("HIGH") #HIGH]
@ocaml.doc("H265 Level")
type h265Level = [
  | @as("H265_LEVEL_AUTO") #H265_LEVEL_AUTO
  | @as("H265_LEVEL_6_2") #H265_LEVEL_6_2
  | @as("H265_LEVEL_6_1") #H265_LEVEL_6_1
  | @as("H265_LEVEL_6") #H265_LEVEL_6
  | @as("H265_LEVEL_5_2") #H265_LEVEL_5_2
  | @as("H265_LEVEL_5_1") #H265_LEVEL_5_1
  | @as("H265_LEVEL_5") #H265_LEVEL_5
  | @as("H265_LEVEL_4_1") #H265_LEVEL_4_1
  | @as("H265_LEVEL_4") #H265_LEVEL_4
  | @as("H265_LEVEL_3_1") #H265_LEVEL_3_1
  | @as("H265_LEVEL_3") #H265_LEVEL_3
  | @as("H265_LEVEL_2_1") #H265_LEVEL_2_1
  | @as("H265_LEVEL_2") #H265_LEVEL_2
  | @as("H265_LEVEL_1") #H265_LEVEL_1
]
@ocaml.doc("H265 Gop Size Units")
type h265GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
@ocaml.doc("H265 Flicker Aq")
type h265FlickerAq = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("H265 Color Metadata")
type h265ColorMetadata = [@as("INSERT") #INSERT | @as("IGNORE") #IGNORE]
@ocaml.doc("H265 Alternative Transfer Function")
type h265AlternativeTransferFunction = [@as("OMIT") #OMIT | @as("INSERT") #INSERT]
@ocaml.doc("H265 Adaptive Quantization")
type h265AdaptiveQuantization = [
  | @as("OFF") #OFF
  | @as("MEDIUM") #MEDIUM
  | @as("MAX") #MAX
  | @as("LOW") #LOW
  | @as("HIGHER") #HIGHER
  | @as("HIGH") #HIGH
  | @as("AUTO") #AUTO
]
@ocaml.doc("H264 Timecode Insertion Behavior")
type h264TimecodeInsertionBehavior = [
  | @as("PIC_TIMING_SEI") #PIC_TIMING_SEI
  | @as("DISABLED") #DISABLED
]
@ocaml.doc("H264 Temporal Aq")
type h264TemporalAq = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("H264 Syntax") type h264Syntax = [@as("RP2027") #RP2027 | @as("DEFAULT") #DEFAULT]
@ocaml.doc("H264 Sub Gop Length")
type h264SubGopLength = [@as("FIXED") #FIXED | @as("DYNAMIC") #DYNAMIC]
@ocaml.doc("H264 Spatial Aq")
type h264SpatialAq = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("H264 Scene Change Detect")
type h264SceneChangeDetect = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("H264 Scan Type")
type h264ScanType = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
@ocaml.doc("H264 Rate Control Mode")
type h264RateControlMode = [
  | @as("VBR") #VBR
  | @as("QVBR") #QVBR
  | @as("MULTIPLEX") #MULTIPLEX
  | @as("CBR") #CBR
]
@ocaml.doc("H264 Quality Level")
type h264QualityLevel = [
  | @as("STANDARD_QUALITY") #STANDARD_QUALITY
  | @as("ENHANCED_QUALITY") #ENHANCED_QUALITY
]
@ocaml.doc("H264 Profile")
type h264Profile = [
  | @as("MAIN") #MAIN
  | @as("HIGH_422_10BIT") #HIGH_422_10BIT
  | @as("HIGH_422") #HIGH_422
  | @as("HIGH_10BIT") #HIGH_10BIT
  | @as("HIGH") #HIGH
  | @as("BASELINE") #BASELINE
]
@ocaml.doc("H264 Par Control")
type h264ParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc("H264 Look Ahead Rate Control")
type h264LookAheadRateControl = [@as("MEDIUM") #MEDIUM | @as("LOW") #LOW | @as("HIGH") #HIGH]
@ocaml.doc("H264 Level")
type h264Level = [
  | @as("H264_LEVEL_AUTO") #H264_LEVEL_AUTO
  | @as("H264_LEVEL_5_2") #H264_LEVEL_5_2
  | @as("H264_LEVEL_5_1") #H264_LEVEL_5_1
  | @as("H264_LEVEL_5") #H264_LEVEL_5
  | @as("H264_LEVEL_4_2") #H264_LEVEL_4_2
  | @as("H264_LEVEL_4_1") #H264_LEVEL_4_1
  | @as("H264_LEVEL_4") #H264_LEVEL_4
  | @as("H264_LEVEL_3_2") #H264_LEVEL_3_2
  | @as("H264_LEVEL_3_1") #H264_LEVEL_3_1
  | @as("H264_LEVEL_3") #H264_LEVEL_3
  | @as("H264_LEVEL_2_2") #H264_LEVEL_2_2
  | @as("H264_LEVEL_2_1") #H264_LEVEL_2_1
  | @as("H264_LEVEL_2") #H264_LEVEL_2
  | @as("H264_LEVEL_1_3") #H264_LEVEL_1_3
  | @as("H264_LEVEL_1_2") #H264_LEVEL_1_2
  | @as("H264_LEVEL_1_1") #H264_LEVEL_1_1
  | @as("H264_LEVEL_1") #H264_LEVEL_1
]
@ocaml.doc("H264 Gop Size Units")
type h264GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
@ocaml.doc("H264 Gop BReference")
type h264GopBReference = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("H264 Framerate Control")
type h264FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc("H264 Force Field Pictures")
type h264ForceFieldPictures = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("H264 Flicker Aq")
type h264FlickerAq = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("H264 Entropy Encoding")
type h264EntropyEncoding = [@as("CAVLC") #CAVLC | @as("CABAC") #CABAC]
@ocaml.doc("H264 Color Metadata")
type h264ColorMetadata = [@as("INSERT") #INSERT | @as("IGNORE") #IGNORE]
@ocaml.doc("H264 Adaptive Quantization")
type h264AdaptiveQuantization = [
  | @as("OFF") #OFF
  | @as("MEDIUM") #MEDIUM
  | @as("MAX") #MAX
  | @as("LOW") #LOW
  | @as("HIGHER") #HIGHER
  | @as("HIGH") #HIGH
  | @as("AUTO") #AUTO
]
@ocaml.doc("Global Configuration Output Timing Source")
type globalConfigurationOutputTimingSource = [
  | @as("SYSTEM_CLOCK") #SYSTEM_CLOCK
  | @as("INPUT_CLOCK") #INPUT_CLOCK
]
@ocaml.doc("Global Configuration Output Locking Mode")
type globalConfigurationOutputLockingMode = [
  | @as("PIPELINE_LOCKING") #PIPELINE_LOCKING
  | @as("EPOCH_LOCKING") #EPOCH_LOCKING
]
@ocaml.doc("Global Configuration Low Framerate Inputs")
type globalConfigurationLowFramerateInputs = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Global Configuration Input End Action")
type globalConfigurationInputEndAction = [
  | @as("SWITCH_AND_LOOP_INPUTS") #SWITCH_AND_LOOP_INPUTS
  | @as("NONE") #NONE
]
@ocaml.doc("Frame Capture Interval Unit")
type frameCaptureIntervalUnit = [@as("SECONDS") #SECONDS | @as("MILLISECONDS") #MILLISECONDS]
@ocaml.doc("Frame Capture Hls Settings") type frameCaptureHlsSettings = {.}
@ocaml.doc("Follow reference point.") type followPoint = [@as("START") #START | @as("END") #END]
@ocaml.doc("Fmp4 Timed Metadata Behavior")
type fmp4TimedMetadataBehavior = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
@ocaml.doc("Fmp4 Nielsen Id3 Behavior")
type fmp4NielsenId3Behavior = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
@ocaml.doc("Fixed Afd")
type fixedAfd = [
  | @as("AFD_1111") #AFD_1111
  | @as("AFD_1110") #AFD_1110
  | @as("AFD_1101") #AFD_1101
  | @as("AFD_1011") #AFD_1011
  | @as("AFD_1010") #AFD_1010
  | @as("AFD_1001") #AFD_1001
  | @as("AFD_1000") #AFD_1000
  | @as("AFD_0100") #AFD_0100
  | @as("AFD_0011") #AFD_0011
  | @as("AFD_0010") #AFD_0010
  | @as("AFD_0000") #AFD_0000
]
@ocaml.doc("Fec Output Include Fec")
type fecOutputIncludeFec = [@as("COLUMN_AND_ROW") #COLUMN_AND_ROW | @as("COLUMN") #COLUMN]
@ocaml.doc("Feature Activations Input Prepare Schedule Actions")
type featureActivationsInputPrepareScheduleActions = [
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
@ocaml.doc("Embedded Scte20 Detection")
type embeddedScte20Detection = [@as("OFF") #OFF | @as("AUTO") #AUTO]
@ocaml.doc("Embedded Plus Scte20 Destination Settings")
type embeddedPlusScte20DestinationSettings = {.}
@ocaml.doc("Embedded Destination Settings") type embeddedDestinationSettings = {.}
@ocaml.doc("Embedded Convert608 To708")
type embeddedConvert608To708 = [@as("UPCONVERT") #UPCONVERT | @as("DISABLED") #DISABLED]
@ocaml.doc("Ebu Tt DFill Line Gap Control")
type ebuTtDFillLineGapControl = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Ebu Tt DDestination Style Control")
type ebuTtDDestinationStyleControl = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
@ocaml.doc("Eac3 Surround Mode")
type eac3SurroundMode = [
  | @as("NOT_INDICATED") #NOT_INDICATED
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
@ocaml.doc("Eac3 Surround Ex Mode")
type eac3SurroundExMode = [
  | @as("NOT_INDICATED") #NOT_INDICATED
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
@ocaml.doc("Eac3 Stereo Downmix")
type eac3StereoDownmix = [
  | @as("NOT_INDICATED") #NOT_INDICATED
  | @as("LT_RT") #LT_RT
  | @as("LO_RO") #LO_RO
  | @as("DPL2") #DPL2
]
@ocaml.doc("Eac3 Phase Control")
type eac3PhaseControl = [@as("SHIFT_90_DEGREES") #SHIFT_90_DEGREES | @as("NO_SHIFT") #NO_SHIFT]
@ocaml.doc("Eac3 Passthrough Control")
type eac3PassthroughControl = [
  | @as("WHEN_POSSIBLE") #WHEN_POSSIBLE
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
@ocaml.doc("Eac3 Metadata Control")
type eac3MetadataControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
@ocaml.doc("Eac3 Lfe Filter")
type eac3LfeFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Eac3 Lfe Control") type eac3LfeControl = [@as("NO_LFE") #NO_LFE | @as("LFE") #LFE]
@ocaml.doc("Eac3 Drc Rf")
type eac3DrcRf = [
  | @as("SPEECH") #SPEECH
  | @as("NONE") #NONE
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
]
@ocaml.doc("Eac3 Drc Line")
type eac3DrcLine = [
  | @as("SPEECH") #SPEECH
  | @as("NONE") #NONE
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
]
@ocaml.doc("Eac3 Dc Filter")
type eac3DcFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Eac3 Coding Mode")
type eac3CodingMode = [
  | @as("CODING_MODE_3_2") #CODING_MODE_3_2
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
]
@ocaml.doc("Eac3 Bitstream Mode")
type eac3BitstreamMode = [
  | @as("VISUALLY_IMPAIRED") #VISUALLY_IMPAIRED
  | @as("HEARING_IMPAIRED") #HEARING_IMPAIRED
  | @as("EMERGENCY") #EMERGENCY
  | @as("COMPLETE_MAIN") #COMPLETE_MAIN
  | @as("COMMENTARY") #COMMENTARY
]
@ocaml.doc("Eac3 Attenuation Control")
type eac3AttenuationControl = [@as("NONE") #NONE | @as("ATTENUATE_3_DB") #ATTENUATE_3_DB]
@ocaml.doc("Dvb Sub Ocr Language")
type dvbSubOcrLanguage = [
  | @as("SPA") #SPA
  | @as("POR") #POR
  | @as("NLD") #NLD
  | @as("FRA") #FRA
  | @as("ENG") #ENG
  | @as("DEU") #DEU
]
@ocaml.doc("Dvb Sub Destination Teletext Grid Control")
type dvbSubDestinationTeletextGridControl = [@as("SCALED") #SCALED | @as("FIXED") #FIXED]
@ocaml.doc("Dvb Sub Destination Shadow Color")
type dvbSubDestinationShadowColor = [@as("WHITE") #WHITE | @as("NONE") #NONE | @as("BLACK") #BLACK]
@ocaml.doc("Dvb Sub Destination Outline Color")
type dvbSubDestinationOutlineColor = [
  | @as("YELLOW") #YELLOW
  | @as("WHITE") #WHITE
  | @as("RED") #RED
  | @as("GREEN") #GREEN
  | @as("BLUE") #BLUE
  | @as("BLACK") #BLACK
]
@ocaml.doc("Dvb Sub Destination Font Color")
type dvbSubDestinationFontColor = [
  | @as("YELLOW") #YELLOW
  | @as("WHITE") #WHITE
  | @as("RED") #RED
  | @as("GREEN") #GREEN
  | @as("BLUE") #BLUE
  | @as("BLACK") #BLACK
]
@ocaml.doc("Dvb Sub Destination Background Color")
type dvbSubDestinationBackgroundColor = [
  | @as("WHITE") #WHITE
  | @as("NONE") #NONE
  | @as("BLACK") #BLACK
]
@ocaml.doc("Dvb Sub Destination Alignment")
type dvbSubDestinationAlignment = [
  | @as("SMART") #SMART
  | @as("LEFT") #LEFT
  | @as("CENTERED") #CENTERED
]
@ocaml.doc("Dvb Sdt Output Sdt")
type dvbSdtOutputSdt = [
  | @as("SDT_NONE") #SDT_NONE
  | @as("SDT_MANUAL") #SDT_MANUAL
  | @as("SDT_FOLLOW_IF_PRESENT") #SDT_FOLLOW_IF_PRESENT
  | @as("SDT_FOLLOW") #SDT_FOLLOW
]
@ocaml.doc("The status of software on the input device.")
type deviceUpdateStatus = [@as("NOT_UP_TO_DATE") #NOT_UP_TO_DATE | @as("UP_TO_DATE") #UP_TO_DATE]
@ocaml.doc(
  "The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration."
)
type deviceSettingsSyncState = [@as("SYNCING") #SYNCING | @as("SYNCED") #SYNCED]
@ocaml.doc("Specifies the media type of the thumbnail.")
type contentType = [@as("image/jpeg") #Image_Jpeg]
@ocaml.doc("Passthrough applies no color space conversion to the output")
type colorSpacePassthroughSettings = {.}
@ocaml.doc("Placeholder documentation for ChannelState")
type channelState = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATING") #UPDATING
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("STOPPING") #STOPPING
  | @as("RECOVERING") #RECOVERING
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
  | @as("IDLE") #IDLE
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATING") #CREATING
]
@ocaml.doc(
  "A standard channel has two encoding pipelines and a single pipeline channel only has one."
)
type channelClass = [@as("SINGLE_PIPELINE") #SINGLE_PIPELINE | @as("STANDARD") #STANDARD]
@ocaml.doc(
  "Maximum CDI input resolution; SD is 480i and 576i up to 30 frames-per-second (fps), HD is 720p up to 60 fps / 1080i up to 30 fps, FHD is 1080p up to 60 fps, UHD is 2160p up to 60 fps"
)
type cdiInputResolution = [@as("UHD") #UHD | @as("FHD") #FHD | @as("HD") #HD | @as("SD") #SD]
@ocaml.doc("Burn In Teletext Grid Control")
type burnInTeletextGridControl = [@as("SCALED") #SCALED | @as("FIXED") #FIXED]
@ocaml.doc("Burn In Shadow Color")
type burnInShadowColor = [@as("WHITE") #WHITE | @as("NONE") #NONE | @as("BLACK") #BLACK]
@ocaml.doc("Burn In Outline Color")
type burnInOutlineColor = [
  | @as("YELLOW") #YELLOW
  | @as("WHITE") #WHITE
  | @as("RED") #RED
  | @as("GREEN") #GREEN
  | @as("BLUE") #BLUE
  | @as("BLACK") #BLACK
]
@ocaml.doc("Burn In Font Color")
type burnInFontColor = [
  | @as("YELLOW") #YELLOW
  | @as("WHITE") #WHITE
  | @as("RED") #RED
  | @as("GREEN") #GREEN
  | @as("BLUE") #BLUE
  | @as("BLACK") #BLACK
]
@ocaml.doc("Burn In Background Color")
type burnInBackgroundColor = [@as("WHITE") #WHITE | @as("NONE") #NONE | @as("BLACK") #BLACK]
@ocaml.doc("Burn In Alignment")
type burnInAlignment = [@as("SMART") #SMART | @as("LEFT") #LEFT | @as("CENTERED") #CENTERED]
@ocaml.doc("Blackout Slate State")
type blackoutSlateState = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Blackout Slate Network End Blackout")
type blackoutSlateNetworkEndBlackout = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Avail Blanking State")
type availBlankingState = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Authentication Scheme")
type authenticationScheme = [@as("COMMON") #COMMON | @as("AKAMAI") #AKAMAI]
@ocaml.doc("Audio Type")
type audioType = [
  | @as("VISUAL_IMPAIRED_COMMENTARY") #VISUAL_IMPAIRED_COMMENTARY
  | @as("UNDEFINED") #UNDEFINED
  | @as("HEARING_IMPAIRED") #HEARING_IMPAIRED
  | @as("CLEAN_EFFECTS") #CLEAN_EFFECTS
]
@ocaml.doc("Audio Only Hls Track Type")
type audioOnlyHlsTrackType = [
  | @as("AUDIO_ONLY_VARIANT_STREAM") #AUDIO_ONLY_VARIANT_STREAM
  | @as("ALTERNATE_AUDIO_NOT_AUTO_SELECT") #ALTERNATE_AUDIO_NOT_AUTO_SELECT
  | @as("ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT") #ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT
  | @as("ALTERNATE_AUDIO_AUTO_SELECT") #ALTERNATE_AUDIO_AUTO_SELECT
]
@ocaml.doc("Audio Only Hls Segment Type")
type audioOnlyHlsSegmentType = [@as("FMP4") #FMP4 | @as("AAC") #AAC]
@ocaml.doc("Audio Normalization Algorithm Control")
type audioNormalizationAlgorithmControl = [@as("CORRECT_AUDIO") #CORRECT_AUDIO]
@ocaml.doc("Audio Normalization Algorithm")
type audioNormalizationAlgorithm = [@as("ITU_1770_2") #ITU_1770_2 | @as("ITU_1770_1") #ITU_1770_1]
@ocaml.doc("Audio Language Selection Policy")
type audioLanguageSelectionPolicy = [@as("STRICT") #STRICT | @as("LOOSE") #LOOSE]
@ocaml.doc("Audio Description Language Code Control")
type audioDescriptionLanguageCodeControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
@ocaml.doc("Audio Description Audio Type Control")
type audioDescriptionAudioTypeControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
@ocaml.doc("Arib Source Settings") type aribSourceSettings = {.}
@ocaml.doc("Arib Destination Settings") type aribDestinationSettings = {.}
@ocaml.doc("Afd Signaling")
type afdSignaling = [@as("NONE") #NONE | @as("FIXED") #FIXED | @as("AUTO") #AUTO]
@ocaml.doc("The HTTP Accept header. Indicates the requested type fothe thumbnail.")
type acceptHeader = [@as("image/jpeg") #Image_Jpeg]
@ocaml.doc("Ac3 Metadata Control")
type ac3MetadataControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
@ocaml.doc("Ac3 Lfe Filter")
type ac3LfeFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("Ac3 Drc Profile")
type ac3DrcProfile = [@as("NONE") #NONE | @as("FILM_STANDARD") #FILM_STANDARD]
@ocaml.doc("Ac3 Coding Mode")
type ac3CodingMode = [
  | @as("CODING_MODE_3_2_LFE") #CODING_MODE_3_2_LFE
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_1") #CODING_MODE_1_1
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
]
@ocaml.doc("Ac3 Bitstream Mode")
type ac3BitstreamMode = [
  | @as("VOICE_OVER") #VOICE_OVER
  | @as("VISUALLY_IMPAIRED") #VISUALLY_IMPAIRED
  | @as("MUSIC_AND_EFFECTS") #MUSIC_AND_EFFECTS
  | @as("HEARING_IMPAIRED") #HEARING_IMPAIRED
  | @as("EMERGENCY") #EMERGENCY
  | @as("DIALOGUE") #DIALOGUE
  | @as("COMPLETE_MAIN") #COMPLETE_MAIN
  | @as("COMMENTARY") #COMMENTARY
]
@ocaml.doc("Aac Vbr Quality")
type aacVbrQuality = [
  | @as("MEDIUM_LOW") #MEDIUM_LOW
  | @as("MEDIUM_HIGH") #MEDIUM_HIGH
  | @as("LOW") #LOW
  | @as("HIGH") #HIGH
]
@ocaml.doc("Aac Spec") type aacSpec = [@as("MPEG4") #MPEG4 | @as("MPEG2") #MPEG2]
@ocaml.doc("Aac Raw Format") type aacRawFormat = [@as("NONE") #NONE | @as("LATM_LOAS") #LATM_LOAS]
@ocaml.doc("Aac Rate Control Mode") type aacRateControlMode = [@as("VBR") #VBR | @as("CBR") #CBR]
@ocaml.doc("Aac Profile") type aacProfile = [@as("LC") #LC | @as("HEV2") #HEV2 | @as("HEV1") #HEV1]
@ocaml.doc("Aac Input Type")
type aacInputType = [@as("NORMAL") #NORMAL | @as("BROADCASTER_MIXED_AD") #BROADCASTER_MIXED_AD]
@ocaml.doc("Aac Coding Mode")
type aacCodingMode = [
  | @as("CODING_MODE_5_1") #CODING_MODE_5_1
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_1") #CODING_MODE_1_1
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
  | @as("AD_RECEIVER_MIX") #AD_RECEIVER_MIX
]
@ocaml.doc("Placeholder documentation for __listOf__string") type __listOf__string = array<__string>
@ocaml.doc("Placeholder documentation for __listOf__integer")
type __listOf__integer = array<__integer>
@ocaml.doc("Placeholder documentation for __listOfRtmpAdMarkers")
type __listOfRtmpAdMarkers = array<rtmpAdMarkers>
@ocaml.doc("Placeholder documentation for __listOfHlsAdMarkers")
type __listOfHlsAdMarkers = array<hlsAdMarkers>
@ocaml.doc("Webvtt Destination Settings")
type webvttDestinationSettings = {
  @ocaml.doc(
    "Controls whether the color and position of the source captions is passed through to the WebVTT output captions.  PASSTHROUGH - Valid only if the source captions are EMBEDDED or TELETEXT.  NO_STYLE_DATA - Don't pass through the style. The output captions will not contain any font styling information."
  )
  @as("StyleControl")
  styleControl: option<webvttDestinationStyleControl>,
}
@ocaml.doc("Wav Settings")
type wavSettings = {
  @ocaml.doc("Sample rate in Hz.") @as("SampleRate") sampleRate: option<__double>,
  @ocaml.doc(
    "The audio coding mode for the WAV audio. The mode determines the number of channels in the audio."
  )
  @as("CodingMode")
  codingMode: option<wavCodingMode>,
  @ocaml.doc("Bits per sample.") @as("BitDepth") bitDepth: option<__double>,
}
@ocaml.doc("Video Selector Program Id")
type videoSelectorProgramId = {
  @ocaml.doc(
    "Selects a specific program from within a multi-program transport stream. If the program doesn't exist, the first program within the transport stream will be selected by default."
  )
  @as("ProgramId")
  programId: option<__integerMin0Max65536>,
}
@ocaml.doc("Video Selector Pid")
type videoSelectorPid = {
  @ocaml.doc("Selects a specific PID from within a video source.") @as("Pid")
  pid: option<__integerMin0Max8191>,
}
@ocaml.doc("Placeholder documentation for VideoBlackFailoverSettings")
type videoBlackFailoverSettings = {
  @ocaml.doc(
    "The amount of time (in milliseconds) that the active input must be black before automatic input failover occurs."
  )
  @as("VideoBlackThresholdMsec")
  videoBlackThresholdMsec: option<__integerMin1000>,
  @ocaml.doc(
    "A value used in calculating the threshold below which MediaLive considers a pixel to be 'black'. For the input to be considered black, every pixel in a frame must be below this threshold. The threshold is calculated as a percentage (expressed as a decimal) of white. Therefore .1 means 10% white (or 90% black). Note how the formula works for any color depth. For example, if you set this field to 0.1 in 10-bit color depth: (1023*0.1=102.3), which means a pixel value of 102 or less is 'black'. If you set this field to .1 in an 8-bit color depth: (255*0.1=25.5), which means a pixel value of 25 or less is 'black'. The range is 0.0 to 1.0, with any number of decimal places."
  )
  @as("BlackDetectThreshold")
  blackDetectThreshold: option<__doubleMin0Max1>,
}
@ocaml.doc("Placeholder documentation for ValidationError")
type validationError = {
  @ocaml.doc("The error message.") @as("ErrorMessage") errorMessage: option<__string>,
  @ocaml.doc("Path to the source of the error.") @as("ElementPath") elementPath: option<__string>,
}
@ocaml.doc("Udp Group Settings")
type udpGroupSettings = {
  @ocaml.doc("Timed Metadata interval in seconds.") @as("TimedMetadataId3Period")
  timedMetadataId3Period: option<__integerMin0>,
  @ocaml.doc("Indicates ID3 frame that has the timecode.") @as("TimedMetadataId3Frame")
  timedMetadataId3Frame: option<udpTimedMetadataId3Frame>,
  @ocaml.doc(
    "Specifies behavior of last resort when input video is lost, and no more backup inputs are available. When dropTs is selected the entire transport stream will stop being emitted.  When dropProgram is selected the program can be dropped from the transport stream (and replaced with null packets to meet the TS bitrate requirement).  Or, when emitProgram is chosen the transport stream will continue to be produced normally with repeat frames, black frames, or slate frames substituted for the absent input video."
  )
  @as("InputLossAction")
  inputLossAction: option<inputLossActionForUdpOut>,
}
@ocaml.doc("Ttml Destination Settings")
type ttmlDestinationSettings = {
  @ocaml.doc(
    "This field is not currently supported and will not affect the output styling. Leave the default value."
  )
  @as("StyleControl")
  styleControl: option<ttmlDestinationStyleControl>,
}
@ocaml.doc("Details about the input device that is being transferred.")
type transferringInputDeviceSummary = {
  @ocaml.doc("The type (direction) of the input device transfer.") @as("TransferType")
  transferType: option<inputDeviceTransferType>,
  @ocaml.doc("The AWS account ID for the recipient of the input device transfer.")
  @as("TargetCustomerId")
  targetCustomerId: option<__string>,
  @ocaml.doc("The optional message that the sender has attached to the transfer.") @as("Message")
  message: option<__string>,
  @ocaml.doc("The unique ID of the input device.") @as("Id") id: option<__string>,
}
@ocaml.doc("Timecode Config")
type timecodeConfig = {
  @ocaml.doc(
    "Threshold in frames beyond which output timecode is resynchronized to the input timecode. Discrepancies below this threshold are permitted to avoid unnecessary discontinuities in the output timecode. No timecode sync when this is not specified."
  )
  @as("SyncThreshold")
  syncThreshold: option<__integerMin1Max1000000>,
  @ocaml.doc("Identifies the source for the timecode that will be associated with the events outputs.
-Embedded (embedded): Initialize the output timecode with timecode from the the source.  If no embedded timecode is detected in the source, the system falls back to using \"Start at 0\" (zerobased).
-System Clock (systemclock): Use the UTC time.
-Start at 0 (zerobased): The time of the first frame of the event will be 00:00:00:00.")
  @as("Source")
  source: timecodeConfigSource,
}
@ocaml.doc("Temporal Filter Settings")
type temporalFilterSettings = {
  @ocaml.doc(
    "Choose a filter strength. We recommend a strength of 1 or 2. A higher strength might take out good information, resulting in an image that is overly soft."
  )
  @as("Strength")
  strength: option<temporalFilterStrength>,
  @ocaml.doc("If you enable this filter, the results are the following:
- If the source content is noisy (it contains excessive digital artifacts), the filter cleans up the source.
- If the source content is already clean, the filter tends to decrease the bitrate, especially when the rate control mode is QVBR.")
  @as("PostFilterSharpening")
  postFilterSharpening: option<temporalFilterPostFilterSharpening>,
}
@ocaml.doc("Placeholder documentation for Tags") type tags = Js.Dict.t<__string>
@ocaml.doc("Settings to identify the end of the clip.")
type stopTimecode = {
  @ocaml.doc(
    "The timecode for the frame where you want to stop the clip. Optional; if not specified, the clip continues to the end of the file. Enter the timecode as HH:MM:SS:FF or HH:MM:SS;FF."
  )
  @as("Timecode")
  timecode: option<__string>,
  @ocaml.doc(
    "If you specify a StopTimecode in an input (in order to clip the file), you can specify if you want the clip to exclude (the default) or include the frame specified by the timecode."
  )
  @as("LastFrameClippingBehavior")
  lastFrameClippingBehavior: option<lastFrameClippingBehavior>,
}
@ocaml.doc("Settings for the action to deactivate the image in a specific layer.")
type staticImageDeactivateScheduleActionSettings = {
  @ocaml.doc("The image overlay layer to deactivate, 0 to 7. Default is 0.") @as("Layer")
  layer: option<__integerMin0Max7>,
  @ocaml.doc("The time in milliseconds for the image to fade out. Default is 0 (no fade-out).")
  @as("FadeOut")
  fadeOut: option<__integerMin0>,
}
@ocaml.doc("Settings to identify the start of the clip.")
type startTimecode = {
  @ocaml.doc(
    "The timecode for the frame where you want to start the clip. Optional; if not specified, the clip starts at first frame in the file. Enter the timecode as HH:MM:SS:FF or HH:MM:SS;FF."
  )
  @as("Timecode")
  timecode: option<__string>,
}
@ocaml.doc("Scte35 Time Signal Apos")
type scte35TimeSignalApos = {
  @ocaml.doc(
    "When set to ignore, Segment Descriptors with webDeliveryAllowedFlag set to 0 will no longer trigger blackouts or Ad Avail slates"
  )
  @as("WebDeliveryAllowedFlag")
  webDeliveryAllowedFlag: option<scte35AposWebDeliveryAllowedBehavior>,
  @ocaml.doc(
    "When set to ignore, Segment Descriptors with noRegionalBlackoutFlag set to 0 will no longer trigger blackouts or Ad Avail slates"
  )
  @as("NoRegionalBlackoutFlag")
  noRegionalBlackoutFlag: option<scte35AposNoRegionalBlackoutBehavior>,
  @ocaml.doc(
    "When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time. This only applies to embedded SCTE 104/35 messages and does not apply to OOB messages."
  )
  @as("AdAvailOffset")
  adAvailOffset: option<__integerMinNegative1000Max1000>,
}
@ocaml.doc("Settings for a SCTE-35 splice_insert message.")
type scte35SpliceInsertScheduleActionSettings = {
  @ocaml.doc("The splice_event_id for the SCTE-35 splice_insert, as defined in SCTE-35.")
  @as("SpliceEventId")
  spliceEventId: __longMin0Max4294967295,
  @ocaml.doc(
    "Optional, the duration for the splice_insert, in 90 KHz ticks. To convert seconds to ticks, multiple the seconds by 90,000. If you enter a duration, there is an expectation that the downstream system can read the duration and cue in at that time. If you do not enter a duration, the splice_insert will continue indefinitely and there is an expectation that you will enter a return_to_network to end the splice_insert at the appropriate time."
  )
  @as("Duration")
  duration: option<__longMin0Max8589934591>,
}
@ocaml.doc("Scte35 Splice Insert")
type scte35SpliceInsert = {
  @ocaml.doc(
    "When set to ignore, Segment Descriptors with webDeliveryAllowedFlag set to 0 will no longer trigger blackouts or Ad Avail slates"
  )
  @as("WebDeliveryAllowedFlag")
  webDeliveryAllowedFlag: option<scte35SpliceInsertWebDeliveryAllowedBehavior>,
  @ocaml.doc(
    "When set to ignore, Segment Descriptors with noRegionalBlackoutFlag set to 0 will no longer trigger blackouts or Ad Avail slates"
  )
  @as("NoRegionalBlackoutFlag")
  noRegionalBlackoutFlag: option<scte35SpliceInsertNoRegionalBlackoutBehavior>,
  @ocaml.doc(
    "When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time. This only applies to embedded SCTE 104/35 messages and does not apply to OOB messages."
  )
  @as("AdAvailOffset")
  adAvailOffset: option<__integerMinNegative1000Max1000>,
}
@ocaml.doc("Settings for a SCTE-35 return_to_network message.")
type scte35ReturnToNetworkScheduleActionSettings = {
  @ocaml.doc("The splice_event_id for the SCTE-35 splice_insert, as defined in SCTE-35.")
  @as("SpliceEventId")
  spliceEventId: __longMin0Max4294967295,
}
@ocaml.doc(
  "Corresponds to SCTE-35 delivery_not_restricted_flag parameter. To declare delivery restrictions, include this element and its four \"restriction\" flags. To declare that there are no restrictions, omit this element."
)
type scte35DeliveryRestrictions = {
  @ocaml.doc("Corresponds to SCTE-35 web_delivery_allowed_flag parameter.")
  @as("WebDeliveryAllowedFlag")
  webDeliveryAllowedFlag: scte35WebDeliveryAllowedFlag,
  @ocaml.doc("Corresponds to SCTE-35 no_regional_blackout_flag parameter.")
  @as("NoRegionalBlackoutFlag")
  noRegionalBlackoutFlag: scte35NoRegionalBlackoutFlag,
  @ocaml.doc("Corresponds to SCTE-35 device_restrictions parameter.") @as("DeviceRestrictions")
  deviceRestrictions: scte35DeviceRestrictions,
  @ocaml.doc("Corresponds to SCTE-35 archive_allowed_flag.") @as("ArchiveAllowedFlag")
  archiveAllowedFlag: scte35ArchiveAllowedFlag,
}
@ocaml.doc("Scte27 Source Settings")
type scte27SourceSettings = {
  @ocaml.doc("The pid field is used in conjunction with the caption selector languageCode field as follows:
  - Specify PID and Language: Extracts captions from that PID; the language is \"informational\".
  - Specify PID and omit Language: Extracts the specified PID.
  - Omit PID and specify Language: Extracts the specified language, whichever PID that happens to be.
  - Omit PID and omit Language: Valid only if source is DVB-Sub that is being passed through; all languages will be passed through.")
  @as("Pid")
  pid: option<__integerMin1>,
  @ocaml.doc("If you will configure a WebVTT caption description that references this caption selector, use this field to
provide the language to consider when translating the image-based source to text.")
  @as("OcrLanguage")
  ocrLanguage: option<scte27OcrLanguage>,
}
@ocaml.doc("Scte20 Source Settings")
type scte20SourceSettings = {
  @ocaml.doc(
    "Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough."
  )
  @as("Source608ChannelNumber")
  source608ChannelNumber: option<__integerMin1Max4>,
  @ocaml.doc(
    "If upconvert, 608 data is both passed through via the \"608 compatibility bytes\" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded."
  )
  @as("Convert608To708")
  convert608To708: option<scte20Convert608To708>,
}
@ocaml.doc("Resource configuration (codec, resolution, bitrate, ...)")
type reservationResourceSpecification = {
  @ocaml.doc("Video quality, e.g. 'STANDARD' (Outputs only)") @as("VideoQuality")
  videoQuality: option<reservationVideoQuality>,
  @ocaml.doc("Special feature, e.g. 'AUDIO_NORMALIZATION' (Channels only)") @as("SpecialFeature")
  specialFeature: option<reservationSpecialFeature>,
  @ocaml.doc("Resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'") @as("ResourceType")
  resourceType: option<reservationResourceType>,
  @ocaml.doc("Resolution, e.g. 'HD'") @as("Resolution") resolution: option<reservationResolution>,
  @ocaml.doc("Maximum framerate, e.g. 'MAX_30_FPS' (Outputs only)") @as("MaximumFramerate")
  maximumFramerate: option<reservationMaximumFramerate>,
  @ocaml.doc("Maximum bitrate, e.g. 'MAX_20_MBPS'") @as("MaximumBitrate")
  maximumBitrate: option<reservationMaximumBitrate>,
  @ocaml.doc("Codec, e.g. 'AVC'") @as("Codec") codec: option<reservationCodec>,
  @ocaml.doc("Channel class, e.g. 'STANDARD'") @as("ChannelClass")
  channelClass: option<channelClass>,
}
@ocaml.doc("Settings for pausing a pipeline.")
type pipelinePauseStateSettings = {
  @ocaml.doc("Pipeline ID to pause (\"PIPELINE_0\" or \"PIPELINE_1\").") @as("PipelineId")
  pipelineId: pipelineId,
}
@ocaml.doc("Runtime details of a pipeline when a channel is running.")
type pipelineDetail = {
  @ocaml.doc("Pipeline ID") @as("PipelineId") pipelineId: option<__string>,
  @ocaml.doc("The current URI being used for HTML5 motion graphics for this pipeline.")
  @as("ActiveMotionGraphicsUri")
  activeMotionGraphicsUri: option<__string>,
  @ocaml.doc(
    "The name of the motion graphics activate action that occurred most recently and that resulted in the current graphics URI for this pipeline."
  )
  @as("ActiveMotionGraphicsActionName")
  activeMotionGraphicsActionName: option<__string>,
  @ocaml.doc(
    "The name of the input switch schedule action that occurred most recently and that resulted in the switch to the current input attachment for this pipeline."
  )
  @as("ActiveInputSwitchActionName")
  activeInputSwitchActionName: option<__string>,
  @ocaml.doc("The name of the active input attachment currently being ingested by this pipeline.")
  @as("ActiveInputAttachmentName")
  activeInputAttachmentName: option<__string>,
}
@ocaml.doc("Reference to an OutputDestination ID defined in the channel")
type outputLocationRef = {@as("DestinationRefId") destinationRefId: option<__string>}
@ocaml.doc("Placeholder documentation for OutputDestinationSettings")
type outputDestinationSettings = {
  @ocaml.doc("username for destination") @as("Username") username: option<__string>,
  @ocaml.doc("A URL specifying a destination") @as("Url") url: option<__string>,
  @ocaml.doc("Stream name for RTMP destinations (URLs of type rtmp://)") @as("StreamName")
  streamName: option<__string>,
  @ocaml.doc("key used to extract the password from EC2 Parameter store") @as("PasswordParam")
  passwordParam: option<__string>,
}
@ocaml.doc("Nielsen Naes Ii Nw")
type nielsenNaesIiNw = {
  @ocaml.doc("Enter the Nielsen Source ID (SID) to include in the watermark") @as("Sid")
  sid: __doubleMin1Max65535,
  @ocaml.doc("Enter the check digit string for the watermark") @as("CheckDigitString")
  checkDigitString: __stringMin2Max2,
}
@ocaml.doc("Nielsen Configuration")
type nielsenConfiguration = {
  @ocaml.doc("Enables Nielsen PCM to ID3 tagging") @as("NielsenPcmToId3Tagging")
  nielsenPcmToId3Tagging: option<nielsenPcmToId3TaggingState>,
  @ocaml.doc("Enter the Distributor ID assigned to your organization by Nielsen.")
  @as("DistributorId")
  distributorId: option<__string>,
}
@ocaml.doc("Nielsen CBET")
type nielsenCBET = {
  @ocaml.doc("Enter the CBET Source ID (CSID) to use in the watermark") @as("Csid")
  csid: __stringMin1Max7,
  @ocaml.doc(
    "Determines the method of CBET insertion mode when prior encoding is detected on the same layer."
  )
  @as("CbetStepaside")
  cbetStepaside: nielsenWatermarksCbetStepaside,
  @ocaml.doc("Enter the CBET check digits to use in the watermark.") @as("CbetCheckDigitString")
  cbetCheckDigitString: __stringMin2Max2,
}
@ocaml.doc("Statmux rate control settings")
type multiplexStatmuxVideoSettings = {
  @ocaml.doc(
    "The purpose of the priority is to use a combination of the\\nmultiplex rate control algorithm and the QVBR capability of the\\nencoder to prioritize the video quality of some channels in a\\nmultiplex over others.  Channels that have a higher priority will\\nget higher video quality at the expense of the video quality of\\nother channels in the multiplex with lower priority."
  )
  @as("Priority")
  priority: option<__integerMinNegative5Max5>,
  @ocaml.doc("Minimum statmux bitrate.") @as("MinimumBitrate")
  minimumBitrate: option<__integerMin100000Max100000000>,
  @ocaml.doc("Maximum statmux bitrate.") @as("MaximumBitrate")
  maximumBitrate: option<__integerMin100000Max100000000>,
}
@ocaml.doc("Contains summary configuration for a Multiplex event.")
type multiplexSettingsSummary = {
  @ocaml.doc("Transport stream bit rate.") @as("TransportStreamBitrate")
  transportStreamBitrate: option<__integerMin1000000Max100000000>,
}
@ocaml.doc("Contains configuration for a Multiplex event")
type multiplexSettings = {
  @ocaml.doc("Transport stream reserved bit rate.") @as("TransportStreamReservedBitrate")
  transportStreamReservedBitrate: option<__integerMin0Max100000000>,
  @ocaml.doc("Transport stream ID.") @as("TransportStreamId")
  transportStreamId: __integerMin0Max65535,
  @ocaml.doc("Transport stream bit rate.") @as("TransportStreamBitrate")
  transportStreamBitrate: __integerMin1000000Max100000000,
  @ocaml.doc("Maximum video buffer delay in milliseconds.")
  @as("MaximumVideoBufferDelayMilliseconds")
  maximumVideoBufferDelayMilliseconds: option<__integerMin800Max3000>,
}
@ocaml.doc("Placeholder documentation for MultiplexProgramSummary")
type multiplexProgramSummary = {
  @ocaml.doc("The name of the multiplex program.") @as("ProgramName") programName: option<__string>,
  @ocaml.doc("The MediaLive Channel associated with the program.") @as("ChannelId")
  channelId: option<__string>,
}
@ocaml.doc("Transport stream service descriptor configuration for the Multiplex program.")
type multiplexProgramServiceDescriptor = {
  @ocaml.doc("Name of the service.") @as("ServiceName") serviceName: __stringMax256,
  @ocaml.doc("Name of the provider.") @as("ProviderName") providerName: __stringMax256,
}
@ocaml.doc("The current source for one of the pipelines in the multiplex.")
type multiplexProgramPipelineDetail = {
  @ocaml.doc("Identifies a specific pipeline in the multiplex.") @as("PipelineId")
  pipelineId: option<__string>,
  @ocaml.doc(
    "Identifies the channel pipeline that is currently active for the pipeline (identified by PipelineId) in the multiplex."
  )
  @as("ActiveChannelPipeline")
  activeChannelPipeline: option<__string>,
}
@ocaml.doc("Multiplex Program Input Destination Settings for outputting a Channel to a Multiplex")
type multiplexProgramChannelDestinationSettings = {
  @ocaml.doc("The program name of the Multiplex program that the encoder is providing output to.")
  @as("ProgramName")
  programName: option<__stringMin1>,
  @ocaml.doc("The ID of the Multiplex that the encoder is providing output to. You do not need to specify the individual inputs to the Multiplex; MediaLive will handle the connection of the two MediaLive pipelines to the two Multiplex instances.
The Multiplex must be in the same region as the Channel.")
  @as("MultiplexId")
  multiplexId: option<__stringMin1>,
}
@ocaml.doc("Multiplex MediaConnect output destination settings.")
type multiplexMediaConnectOutputDestinationSettings = {
  @ocaml.doc("The MediaConnect entitlement ARN available as a Flow source.") @as("EntitlementArn")
  entitlementArn: option<__stringMin1>,
}
@ocaml.doc("Ms Smooth Output Settings")
type msSmoothOutputSettings = {
  @ocaml.doc(
    "String concatenated to the end of the destination filename.  Required for multiple outputs of the same type."
  )
  @as("NameModifier")
  nameModifier: option<__string>,
  @ocaml.doc("Only applicable when this output is referencing an H.265 video description.
Specifies whether MP4 segments should be packaged as HEV1 or HVC1.")
  @as("H265PackagingType")
  h265PackagingType: option<msSmoothH265PackagingType>,
}
@ocaml.doc("Mp2 Settings")
type mp2Settings = {
  @ocaml.doc("Sample rate in Hz.") @as("SampleRate") sampleRate: option<__double>,
  @ocaml.doc(
    "The MPEG2 Audio coding mode.  Valid values are codingMode10 (for mono) or codingMode20 (for stereo)."
  )
  @as("CodingMode")
  codingMode: option<mp2CodingMode>,
  @ocaml.doc("Average bitrate in bits/second.") @as("Bitrate") bitrate: option<__double>,
}
@ocaml.doc("Motion Graphics Settings")
type motionGraphicsSettings = {
  @as("HtmlMotionGraphicsSettings") htmlMotionGraphicsSettings: option<htmlMotionGraphicsSettings>,
}
@ocaml.doc("Settings to specify the rendering of motion graphics into the video stream.")
type motionGraphicsActivateScheduleActionSettings = {
  @ocaml.doc("Documentation update needed") @as("Username") username: option<__string>,
  @ocaml.doc("URI of the HTML5 content to be rendered into the live stream.") @as("Url")
  url: option<__string>,
  @ocaml.doc("Key used to extract the password from EC2 Parameter store") @as("PasswordParam")
  passwordParam: option<__string>,
  @ocaml.doc(
    "Duration (in milliseconds) that motion graphics should render on to the video stream. Leaving out this property or setting to 0 will result in rendering continuing until a deactivate action is processed."
  )
  @as("Duration")
  duration: option<__longMin0Max86400000>,
}
@ocaml.doc("MediaPackage Output Destination Settings")
type mediaPackageOutputDestinationSettings = {
  @ocaml.doc(
    "ID of the channel in MediaPackage that is the destination for this output group. You do not need to specify the individual inputs in MediaPackage; MediaLive will handle the connection of the two MediaLive pipelines to the two MediaPackage inputs. The MediaPackage channel and MediaLive channel must be in the same region."
  )
  @as("ChannelId")
  channelId: option<__stringMin1>,
}
@ocaml.doc("The settings for a MediaConnect Flow.")
type mediaConnectFlowRequest = {
  @ocaml.doc("The ARN of the MediaConnect Flow that you want to use as a source.") @as("FlowArn")
  flowArn: option<__string>,
}
@ocaml.doc("The settings for a MediaConnect Flow.")
type mediaConnectFlow = {
  @ocaml.doc("The unique ARN of the MediaConnect Flow being used as a source.") @as("FlowArn")
  flowArn: option<__string>,
}
@ocaml.doc("Placeholder documentation for MaintenanceUpdateSettings")
type maintenanceUpdateSettings = {
  @ocaml.doc(
    "Choose the hour that maintenance will start. The chosen time is used for all future maintenance windows."
  )
  @as("MaintenanceStartTime")
  maintenanceStartTime: option<__stringPattern010920300>,
  @ocaml.doc(
    "Choose a specific date for maintenance to occur. The chosen date is used for the next maintenance window only."
  )
  @as("MaintenanceScheduledDate")
  maintenanceScheduledDate: option<__string>,
  @ocaml.doc(
    "Choose one day of the week for maintenance. The chosen day is used for all future maintenance windows."
  )
  @as("MaintenanceDay")
  maintenanceDay: option<maintenanceDay>,
}
@ocaml.doc("Placeholder documentation for MaintenanceStatus")
type maintenanceStatus = {
  @ocaml.doc("The currently selected maintenance start time. Time is in UTC.")
  @as("MaintenanceStartTime")
  maintenanceStartTime: option<__string>,
  @ocaml.doc("The currently scheduled maintenance date and time. Date and time is in ISO.")
  @as("MaintenanceScheduledDate")
  maintenanceScheduledDate: option<__string>,
  @ocaml.doc("Maintenance is required by the displayed date and time. Date and time is in ISO.")
  @as("MaintenanceDeadline")
  maintenanceDeadline: option<__string>,
  @ocaml.doc("The currently selected maintenance day.") @as("MaintenanceDay")
  maintenanceDay: option<maintenanceDay>,
}
@ocaml.doc("Placeholder documentation for MaintenanceCreateSettings")
type maintenanceCreateSettings = {
  @ocaml.doc(
    "Choose the hour that maintenance will start. The chosen time is used for all future maintenance windows."
  )
  @as("MaintenanceStartTime")
  maintenanceStartTime: option<__stringPattern010920300>,
  @ocaml.doc(
    "Choose one day of the week for maintenance. The chosen day is used for all future maintenance windows."
  )
  @as("MaintenanceDay")
  maintenanceDay: option<maintenanceDay>,
}
@ocaml.doc("Settings information for the .m3u8 container")
type m3u8Settings = {
  @ocaml.doc(
    "Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value."
  )
  @as("VideoPid")
  videoPid: option<__string>,
  @ocaml.doc("The value of the transport stream ID field in the Program Map Table.")
  @as("TransportStreamId")
  transportStreamId: option<__integerMin0Max65535>,
  @ocaml.doc(
    "Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("TimedMetadataPid")
  timedMetadataPid: option<__string>,
  @ocaml.doc("When set to passthrough, timed metadata is passed through from input to output.")
  @as("TimedMetadataBehavior")
  timedMetadataBehavior: option<m3u8TimedMetadataBehavior>,
  @ocaml.doc(
    "Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value."
  )
  @as("Scte35Pid")
  scte35Pid: option<__string>,
  @ocaml.doc(
    "If set to passthrough, passes any SCTE-35 signals from the input source to this output."
  )
  @as("Scte35Behavior")
  scte35Behavior: option<m3u8Scte35Behavior>,
  @ocaml.doc("The value of the program number field in the Program Map Table.") @as("ProgramNum")
  programNum: option<__integerMin0Max65535>,
  @ocaml.doc(
    "Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value."
  )
  @as("PmtPid")
  pmtPid: option<__string>,
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream. A value of \\\"0\\\" writes out the PMT once per segment file."
  )
  @as("PmtInterval")
  pmtInterval: option<__integerMin0Max1000>,
  @ocaml.doc(
    "Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value."
  )
  @as("PcrPid")
  pcrPid: option<__string>,
  @ocaml.doc(
    "Maximum time in milliseconds between Program Clock References (PCRs) inserted into the transport stream."
  )
  @as("PcrPeriod")
  pcrPeriod: option<__integerMin0Max500>,
  @ocaml.doc(
    "When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream."
  )
  @as("PcrControl")
  pcrControl: option<m3u8PcrControl>,
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream. A value of \\\"0\\\" writes out the PMT once per segment file."
  )
  @as("PatInterval")
  patInterval: option<__integerMin0Max1000>,
  @ocaml.doc(
    "If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output."
  )
  @as("NielsenId3Behavior")
  nielsenId3Behavior: option<m3u8NielsenId3Behavior>,
  @ocaml.doc("This parameter is unused and deprecated.") @as("EcmPid") ecmPid: option<__string>,
  @ocaml.doc(
    "Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values."
  )
  @as("AudioPids")
  audioPids: option<__string>,
  @ocaml.doc("The number of audio frames to insert for each PES packet.") @as("AudioFramesPerPes")
  audioFramesPerPes: option<__integerMin0>,
}
@ocaml.doc("An IPv4 CIDR to whitelist.")
type inputWhitelistRuleCidr = {
  @ocaml.doc("The IPv4 CIDR to whitelist.") @as("Cidr") cidr: option<__string>,
}
@ocaml.doc("Whitelist rule")
type inputWhitelistRule = {
  @ocaml.doc("The IPv4 CIDR that's whitelisted.") @as("Cidr") cidr: option<__string>,
}
@ocaml.doc("Placeholder documentation for InputSpecification")
type inputSpecification = {
  @ocaml.doc("Input resolution, categorized coarsely") @as("Resolution")
  resolution: option<inputResolution>,
  @ocaml.doc("Maximum input bitrate, categorized coarsely") @as("MaximumBitrate")
  maximumBitrate: option<inputMaximumBitrate>,
  @ocaml.doc("Input codec") @as("Codec") codec: option<inputCodec>,
}
@ocaml.doc("Settings for for a PULL type input.")
type inputSourceRequest = {
  @ocaml.doc("The username for the input source.") @as("Username") username: option<__string>,
  @ocaml.doc("This represents the customer's source URL where stream is
pulled from.")
  @as("Url")
  url: option<__string>,
  @ocaml.doc("The key used to extract the password from EC2 Parameter store.") @as("PasswordParam")
  passwordParam: option<__string>,
}
@ocaml.doc("The settings for a PULL type input.")
type inputSource = {
  @ocaml.doc("The username for the input source.") @as("Username") username: option<__string>,
  @ocaml.doc("This represents the customer's source URL where stream is
pulled from.")
  @as("Url")
  url: option<__string>,
  @ocaml.doc("The key used to extract the password from EC2 Parameter store.") @as("PasswordParam")
  passwordParam: option<__string>,
}
@ocaml.doc(
  "MediaLive will perform a failover if content is not detected in this input for the specified period."
)
type inputLossFailoverSettings = {
  @ocaml.doc(
    "The amount of time (in milliseconds) that no input is detected. After that time, an input failover will occur."
  )
  @as("InputLossThresholdMsec")
  inputLossThresholdMsec: option<__integerMin100>,
}
@ocaml.doc("Input Location")
type inputLocation = {
  @ocaml.doc("Documentation update needed") @as("Username") username: option<__string>,
  @ocaml.doc(
    "Uniform Resource Identifier - This should be a path to a file accessible to the Live system (eg. a http:// URI) depending on the output type. For example, a RTMP destination should have a uri simliar to: \"rtmp://fmsserver/live\"."
  )
  @as("Uri")
  uri: __string,
  @ocaml.doc("key used to extract the password from EC2 Parameter store") @as("PasswordParam")
  passwordParam: option<__string>,
}
@ocaml.doc(
  "Settings that describe the active source from the input device, and the video characteristics of that source."
)
type inputDeviceUhdSettings = {
  @ocaml.doc("The width of the video source, in pixels.") @as("Width") width: option<__integer>,
  @ocaml.doc("The scan type of the video source.") @as("ScanType")
  scanType: option<inputDeviceScanType>,
  @ocaml.doc(
    "The current maximum bitrate for ingesting this source, in bits per second. You can specify this maximum."
  )
  @as("MaxBitrate")
  maxBitrate: option<__integer>,
  @ocaml.doc("The height of the video source, in pixels.") @as("Height") height: option<__integer>,
  @ocaml.doc("The frame rate of the video source.") @as("Framerate") framerate: option<__double>,
  @ocaml.doc("The state of the input device.") @as("DeviceState")
  deviceState: option<inputDeviceState>,
  @ocaml.doc(
    "The source at the input device that is currently active. You can specify this source."
  )
  @as("ConfiguredInput")
  configuredInput: option<inputDeviceConfiguredInput>,
  @ocaml.doc(
    "If you specified Auto as the configured input, specifies which of the sources is currently active (SDI or HDMI)."
  )
  @as("ActiveInput")
  activeInput: option<inputDeviceActiveInput>,
}
@ocaml.doc("Settings for an input device.")
type inputDeviceSettings = {
  @ocaml.doc("The unique ID for the device.") @as("Id") id: option<__string>,
}
@ocaml.doc("Settings for an input device.")
type inputDeviceRequest = {
  @ocaml.doc("The unique ID for the device.") @as("Id") id: option<__string>,
}
@ocaml.doc(
  "Settings that describe the active source from the input device, and the video characteristics of that source."
)
type inputDeviceHdSettings = {
  @ocaml.doc("The width of the video source, in pixels.") @as("Width") width: option<__integer>,
  @ocaml.doc("The scan type of the video source.") @as("ScanType")
  scanType: option<inputDeviceScanType>,
  @ocaml.doc(
    "The current maximum bitrate for ingesting this source, in bits per second. You can specify this maximum."
  )
  @as("MaxBitrate")
  maxBitrate: option<__integer>,
  @ocaml.doc("The height of the video source, in pixels.") @as("Height") height: option<__integer>,
  @ocaml.doc("The frame rate of the video source.") @as("Framerate") framerate: option<__double>,
  @ocaml.doc("The state of the input device.") @as("DeviceState")
  deviceState: option<inputDeviceState>,
  @ocaml.doc(
    "The source at the input device that is currently active. You can specify this source."
  )
  @as("ConfiguredInput")
  configuredInput: option<inputDeviceConfiguredInput>,
  @ocaml.doc(
    "If you specified Auto as the configured input, specifies which of the sources is currently active (SDI or HDMI)."
  )
  @as("ActiveInput")
  activeInput: option<inputDeviceActiveInput>,
}
@ocaml.doc("Configurable settings for the input device.")
type inputDeviceConfigurableSettings = {
  @ocaml.doc(
    "The maximum bitrate in bits per second. Set a value here to throttle the bitrate of the source video."
  )
  @as("MaxBitrate")
  maxBitrate: option<__integer>,
  @ocaml.doc(
    "The input source that you want to use. If the device has a source connected to only one of its input ports, or if you don't care which source the device sends, specify Auto. If the device has sources connected to both its input ports, and you want to use a specific source, specify the source."
  )
  @as("ConfiguredInput")
  configuredInput: option<inputDeviceConfiguredInput>,
}
@ocaml.doc("The properties for a VPC type input destination.")
type inputDestinationVpc = {
  @ocaml.doc("The network interface ID of the Input destination in the VPC.")
  @as("NetworkInterfaceId")
  networkInterfaceId: option<__string>,
  @ocaml.doc("The availability zone of the Input destination.") @as("AvailabilityZone")
  availabilityZone: option<__string>,
}
@ocaml.doc("Endpoint settings for a PUSH type input.")
type inputDestinationRequest = {
  @ocaml.doc("A unique name for the location the RTMP stream is being pushed
to.")
  @as("StreamName")
  streamName: option<__string>,
}
@ocaml.doc("Input Channel Level")
type inputChannelLevel = {
  @ocaml.doc("The index of the input channel used as a source.") @as("InputChannel")
  inputChannel: __integerMin0Max15,
  @ocaml.doc(
    "Remixing value. Units are in dB and acceptable values are within the range from -60 (mute) and 6 dB."
  )
  @as("Gain")
  gain: __integerMinNegative60Max6,
}
@ocaml.doc("Hls Webdav Settings")
type hlsWebdavSettings = {
  @ocaml.doc(
    "If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart."
  )
  @as("RestartDelay")
  restartDelay: option<__integerMin0Max15>,
  @ocaml.doc(
    "Number of retry attempts that will be made before the Live Event is put into an error state."
  )
  @as("NumRetries")
  numRetries: option<__integerMin0>,
  @ocaml.doc("Specify whether or not to use chunked transfer encoding to WebDAV.")
  @as("HttpTransferMode")
  httpTransferMode: option<hlsWebdavHttpTransferMode>,
  @ocaml.doc("Size in seconds of file cache for streaming outputs.") @as("FilecacheDuration")
  filecacheDuration: option<__integerMin0Max600>,
  @ocaml.doc(
    "Number of seconds to wait before retrying connection to the CDN if the connection is lost."
  )
  @as("ConnectionRetryInterval")
  connectionRetryInterval: option<__integerMin0>,
}
@ocaml.doc("Settings for the action to emit HLS metadata")
type hlsTimedMetadataScheduleActionSettings = {
  @ocaml.doc(
    "Base64 string formatted according to the ID3 specification: http://id3.org/id3v2.4.0-structure"
  )
  @as("Id3")
  id3: __string,
}
@ocaml.doc("Hls S3 Settings")
type hlsS3Settings = {
  @ocaml.doc("Specify the canned ACL to apply to each S3 request. Defaults to none.")
  @as("CannedAcl")
  cannedAcl: option<s3CannedAcl>,
}
@ocaml.doc("Hls Media Store Settings")
type hlsMediaStoreSettings = {
  @ocaml.doc(
    "If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart."
  )
  @as("RestartDelay")
  restartDelay: option<__integerMin0Max15>,
  @ocaml.doc(
    "Number of retry attempts that will be made before the Live Event is put into an error state."
  )
  @as("NumRetries")
  numRetries: option<__integerMin0>,
  @ocaml.doc(
    "When set to temporal, output files are stored in non-persistent memory for faster reading and writing."
  )
  @as("MediaStoreStorageClass")
  mediaStoreStorageClass: option<hlsMediaStoreStorageClass>,
  @ocaml.doc("Size in seconds of file cache for streaming outputs.") @as("FilecacheDuration")
  filecacheDuration: option<__integerMin0Max600>,
  @ocaml.doc(
    "Number of seconds to wait before retrying connection to the CDN if the connection is lost."
  )
  @as("ConnectionRetryInterval")
  connectionRetryInterval: option<__integerMin0>,
}
@ocaml.doc("Hls Input Settings")
type hlsInputSettings = {
  @ocaml.doc(
    "Identifies the source for the SCTE-35 messages that MediaLive will ingest. Messages can be ingested from the content segments (in the stream) or from tags in the playlist (the HLS manifest). MediaLive ignores SCTE-35 information in the source that is not selected."
  )
  @as("Scte35Source")
  scte35Source: option<hlsScte35SourceType>,
  @ocaml.doc(
    "The number of seconds between retries when an attempt to read a manifest or segment fails."
  )
  @as("RetryInterval")
  retryInterval: option<__integerMin0>,
  @ocaml.doc(
    "The number of consecutive times that attempts to read a manifest or segment must fail before the input is considered unavailable."
  )
  @as("Retries")
  retries: option<__integerMin0>,
  @ocaml.doc(
    "When specified, reading of the HLS input will begin this many buffer segments from the end (most recently written segment).  When not specified, the HLS input will begin with the first segment specified in the m3u8."
  )
  @as("BufferSegments")
  bufferSegments: option<__integerMin0>,
  @ocaml.doc(
    "When specified the HLS stream with the m3u8 BANDWIDTH that most closely matches this value will be chosen, otherwise the highest bandwidth stream in the m3u8 will be chosen.  The bitrate is specified in bits per second, as in an HLS manifest."
  )
  @as("Bandwidth")
  bandwidth: option<__integerMin0>,
}
@ocaml.doc("Settings for the action to insert a user-defined ID3 tag in each HLS segment")
type hlsId3SegmentTaggingScheduleActionSettings = {
  @ocaml.doc(
    "ID3 tag to insert into each segment. Supports special keyword identifiers to substitute in segment-related values.\\nSupported keyword identifiers: https://docs.aws.amazon.com/medialive/latest/ug/variable-data-identifiers.html"
  )
  @as("Tag")
  tag: __string,
}
@ocaml.doc("Hls Basic Put Settings")
type hlsBasicPutSettings = {
  @ocaml.doc(
    "If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart."
  )
  @as("RestartDelay")
  restartDelay: option<__integerMin0Max15>,
  @ocaml.doc(
    "Number of retry attempts that will be made before the Live Event is put into an error state."
  )
  @as("NumRetries")
  numRetries: option<__integerMin0>,
  @ocaml.doc("Size in seconds of file cache for streaming outputs.") @as("FilecacheDuration")
  filecacheDuration: option<__integerMin0Max600>,
  @ocaml.doc(
    "Number of seconds to wait before retrying connection to the CDN if the connection is lost."
  )
  @as("ConnectionRetryInterval")
  connectionRetryInterval: option<__integerMin0>,
}
@ocaml.doc("Hls Akamai Settings")
type hlsAkamaiSettings = {
  @ocaml.doc("Token parameter for authenticated akamai. If not specified, _gda_ is used.")
  @as("Token")
  token: option<__string>,
  @ocaml.doc("Salt for authenticated Akamai.") @as("Salt") salt: option<__string>,
  @ocaml.doc(
    "If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart."
  )
  @as("RestartDelay")
  restartDelay: option<__integerMin0Max15>,
  @ocaml.doc(
    "Number of retry attempts that will be made before the Live Event is put into an error state."
  )
  @as("NumRetries")
  numRetries: option<__integerMin0>,
  @ocaml.doc(
    "Specify whether or not to use chunked transfer encoding to Akamai. User should contact Akamai to enable this feature."
  )
  @as("HttpTransferMode")
  httpTransferMode: option<hlsAkamaiHttpTransferMode>,
  @ocaml.doc("Size in seconds of file cache for streaming outputs.") @as("FilecacheDuration")
  filecacheDuration: option<__integerMin0Max600>,
  @ocaml.doc(
    "Number of seconds to wait before retrying connection to the CDN if the connection is lost."
  )
  @as("ConnectionRetryInterval")
  connectionRetryInterval: option<__integerMin0>,
}
@ocaml.doc("Hdr10 Settings")
type hdr10Settings = {
  @ocaml.doc("Maximum Frame Average Light Level
An integer metadata value defining the maximum average light level, in nits,
for any single frame within an encoded HDR video stream or file.")
  @as("MaxFall")
  maxFall: option<__integerMin0Max32768>,
  @ocaml.doc("Maximum Content Light Level
An integer metadata value defining the maximum light level, in nits,
of any single pixel within an encoded HDR video stream or file.")
  @as("MaxCll")
  maxCll: option<__integerMin0Max32768>,
}
@ocaml.doc("H264 Color Space Settings")
type h264ColorSpaceSettings = {
  @as("Rec709Settings") rec709Settings: option<rec709Settings>,
  @as("Rec601Settings") rec601Settings: option<rec601Settings>,
  @as("ColorSpacePassthroughSettings")
  colorSpacePassthroughSettings: option<colorSpacePassthroughSettings>,
}
@ocaml.doc("Frame Capture Settings")
type frameCaptureSettings = {
  @ocaml.doc("Unit for the frame capture interval.") @as("CaptureIntervalUnits")
  captureIntervalUnits: option<frameCaptureIntervalUnit>,
  @ocaml.doc(
    "The frequency at which to capture frames for inclusion in the output. May be specified in either seconds or milliseconds, as specified by captureIntervalUnits."
  )
  @as("CaptureInterval")
  captureInterval: option<__integerMin1Max3600000>,
}
@ocaml.doc("Frame Capture S3 Settings")
type frameCaptureS3Settings = {
  @ocaml.doc("Specify the canned ACL to apply to each S3 request. Defaults to none.")
  @as("CannedAcl")
  cannedAcl: option<s3CannedAcl>,
}
@ocaml.doc("Frame Capture Output Settings")
type frameCaptureOutputSettings = {
  @ocaml.doc(
    "Required if the output group contains more than one output. This modifier forms part of the output file name."
  )
  @as("NameModifier")
  nameModifier: option<__string>,
}
@ocaml.doc("Settings to specify if an action follows another.")
type followModeScheduleActionStartSettings = {
  @ocaml.doc("The action name of another action that this one refers to.")
  @as("ReferenceActionName")
  referenceActionName: __string,
  @ocaml.doc(
    "Identifies whether this action starts relative to the start or relative to the end of the reference action."
  )
  @as("FollowPoint")
  followPoint: followPoint,
}
@ocaml.doc("Fmp4 Hls Settings")
type fmp4HlsSettings = {
  @ocaml.doc("When set to passthrough, timed metadata is passed through from input to output.")
  @as("TimedMetadataBehavior")
  timedMetadataBehavior: option<fmp4TimedMetadataBehavior>,
  @ocaml.doc(
    "If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output."
  )
  @as("NielsenId3Behavior")
  nielsenId3Behavior: option<fmp4NielsenId3Behavior>,
  @ocaml.doc(
    "List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','."
  )
  @as("AudioRenditionSets")
  audioRenditionSets: option<__string>,
}
@ocaml.doc("Start time for the action.")
type fixedModeScheduleActionStartSettings = {
  @ocaml.doc(
    "Start time for the action to start in the channel. (Not the time for the action to be added to the schedule: actions are always added to the schedule immediately.) UTC format: yyyy-mm-ddThh:mm:ss.nnnZ. All the letters are digits (for example, mm might be 01) except for the two constants \"T\" for time and \"Z\" for \"UTC format\"."
  )
  @as("Time")
  time: __string,
}
@ocaml.doc("Fec Output Settings")
type fecOutputSettings = {
  @ocaml.doc(
    "Parameter L from SMPTE 2022-1. The width of the FEC protection matrix.  Must be between 1 and 20, inclusive. If only Column FEC is used, then larger values increase robustness.  If Row FEC is used, then this is the number of transport stream packets per row error correction packet, and the value must be between 4 and 20, inclusive, if includeFec is columnAndRow. If includeFec is column, this value must be 1 to 20, inclusive."
  )
  @as("RowLength")
  rowLength: option<__integerMin1Max20>,
  @ocaml.doc("Enables column only or column and row based FEC") @as("IncludeFec")
  includeFec: option<fecOutputIncludeFec>,
  @ocaml.doc(
    "Parameter D from SMPTE 2022-1. The height of the FEC protection matrix.  The number of transport stream packets per column error correction packet. Must be between 4 and 20, inclusive."
  )
  @as("ColumnDepth")
  columnDepth: option<__integerMin4Max20>,
}
@ocaml.doc("Feature Activations")
type featureActivations = {
  @ocaml.doc("Enables the Input Prepare feature. You can create Input Prepare actions in the schedule only if this feature is enabled.
If you disable the feature on an existing schedule, make sure that you first delete all input prepare actions from the schedule.")
  @as("InputPrepareScheduleActions")
  inputPrepareScheduleActions: option<featureActivationsInputPrepareScheduleActions>,
}
@ocaml.doc("Embedded Source Settings")
type embeddedSourceSettings = {
  @ocaml.doc("This field is unused and deprecated.") @as("Source608TrackNumber")
  source608TrackNumber: option<__integerMin1Max5>,
  @ocaml.doc(
    "Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough."
  )
  @as("Source608ChannelNumber")
  source608ChannelNumber: option<__integerMin1Max4>,
  @ocaml.doc(
    "Set to \"auto\" to handle streams with intermittent and/or non-aligned SCTE-20 and Embedded captions."
  )
  @as("Scte20Detection")
  scte20Detection: option<embeddedScte20Detection>,
  @ocaml.doc(
    "If upconvert, 608 data is both passed through via the \"608 compatibility bytes\" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded."
  )
  @as("Convert608To708")
  convert608To708: option<embeddedConvert608To708>,
}
@ocaml.doc("Ebu Tt DDestination Settings")
type ebuTtDDestinationSettings = {
  @ocaml.doc("Specifies the style information (font color, font position, and so on) to include in the font data that is attached to the EBU-TT captions.

- include: Take the style information (font color, font position, and so on) from the source captions and include that information in the font data attached to the EBU-TT captions. This option is valid only if the source captions are Embedded or Teletext.
- exclude: In the font data attached to the EBU-TT captions, set the font family to \"monospaced\". Do not include any other style information.")
  @as("StyleControl")
  styleControl: option<ebuTtDDestinationStyleControl>,
  @ocaml.doc("Specifies the font family to include in the font data attached to the EBU-TT captions. Valid only if styleControl is set to include. If you leave this field empty, the font family is set to \"monospaced\". (If styleControl is set to exclude, the font family is always set to \"monospaced\".)

You specify only the font family. All other style information (color, bold, position and so on) is copied from the input captions. The size is always set to 100% to allow the downstream player to choose the size.

- Enter a list of font families, as a comma-separated list of font names, in order of preference. The name can be a font family (such as “Arial”), or a generic font family (such as “serif”), or “default” (to let the downstream player choose the font).
- Leave blank to set the family to “monospace”.")
  @as("FontFamily")
  fontFamily: option<__string>,
  @ocaml.doc("Specifies how to handle the gap between the lines (in multi-line captions).

- enabled: Fill with the captions background color (as specified in the input captions).
- disabled: Leave the gap unfilled.")
  @as("FillLineGap")
  fillLineGap: option<ebuTtDFillLineGapControl>,
  @ocaml.doc(
    "Complete this field if you want to include the name of the copyright holder in the copyright tag in the captions metadata."
  )
  @as("CopyrightHolder")
  copyrightHolder: option<__stringMax1000>,
}
@ocaml.doc("Eac3 Settings")
type eac3Settings = {
  @ocaml.doc(
    "When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels."
  )
  @as("SurroundMode")
  surroundMode: option<eac3SurroundMode>,
  @ocaml.doc(
    "When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels."
  )
  @as("SurroundExMode")
  surroundExMode: option<eac3SurroundExMode>,
  @ocaml.doc("Stereo downmix preference. Only used for 3/2 coding mode.") @as("StereoDownmix")
  stereoDownmix: option<eac3StereoDownmix>,
  @ocaml.doc(
    "When set to shift90Degrees, applies a 90-degree phase shift to the surround channels. Only used for 3/2 coding mode."
  )
  @as("PhaseControl")
  phaseControl: option<eac3PhaseControl>,
  @ocaml.doc(
    "When set to whenPossible, input DD+ audio will be passed through if it is present on the input. This detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding."
  )
  @as("PassthroughControl")
  passthroughControl: option<eac3PassthroughControl>,
  @ocaml.doc(
    "When set to followInput, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used."
  )
  @as("MetadataControl")
  metadataControl: option<eac3MetadataControl>,
  @ocaml.doc("Left total/Right total surround mix level. Only used for 3/2 coding mode.")
  @as("LtRtSurroundMixLevel")
  ltRtSurroundMixLevel: option<__double>,
  @ocaml.doc("Left total/Right total center mix level. Only used for 3/2 coding mode.")
  @as("LtRtCenterMixLevel")
  ltRtCenterMixLevel: option<__double>,
  @ocaml.doc("Left only/Right only surround mix level. Only used for 3/2 coding mode.")
  @as("LoRoSurroundMixLevel")
  loRoSurroundMixLevel: option<__double>,
  @ocaml.doc("Left only/Right only center mix level. Only used for 3/2 coding mode.")
  @as("LoRoCenterMixLevel")
  loRoCenterMixLevel: option<__double>,
  @ocaml.doc(
    "When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with codingMode32 coding mode."
  )
  @as("LfeFilter")
  lfeFilter: option<eac3LfeFilter>,
  @ocaml.doc("When encoding 3/2 audio, setting to lfe enables the LFE channel") @as("LfeControl")
  lfeControl: option<eac3LfeControl>,
  @ocaml.doc(
    "Sets the profile for heavy Dolby dynamic range compression, ensures that the instantaneous signal peaks do not exceed specified levels."
  )
  @as("DrcRf")
  drcRf: option<eac3DrcRf>,
  @ocaml.doc("Sets the Dolby dynamic range compression profile.") @as("DrcLine")
  drcLine: option<eac3DrcLine>,
  @ocaml.doc(
    "Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through."
  )
  @as("Dialnorm")
  dialnorm: option<__integerMin1Max31>,
  @ocaml.doc("When set to enabled, activates a DC highpass filter for all input channels.")
  @as("DcFilter")
  dcFilter: option<eac3DcFilter>,
  @ocaml.doc("Dolby Digital Plus coding mode. Determines number of channels.") @as("CodingMode")
  codingMode: option<eac3CodingMode>,
  @ocaml.doc(
    "Specifies the bitstream mode (bsmod) for the emitted E-AC-3 stream. See ATSC A/52-2012 (Annex E) for background on these values."
  )
  @as("BitstreamMode")
  bitstreamMode: option<eac3BitstreamMode>,
  @ocaml.doc("Average bitrate in bits/second. Valid bitrates depend on the coding mode.")
  @as("Bitrate")
  bitrate: option<__double>,
  @ocaml.doc(
    "When set to attenuate3Db, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode."
  )
  @as("AttenuationControl")
  attenuationControl: option<eac3AttenuationControl>,
}
@ocaml.doc("DVB Time and Date Table (SDT)")
type dvbTdtSettings = {
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream."
  )
  @as("RepInterval")
  repInterval: option<__integerMin1000Max30000>,
}
@ocaml.doc("Dvb Sub Source Settings")
type dvbSubSourceSettings = {
  @ocaml.doc(
    "When using DVB-Sub with Burn-In or SMPTE-TT, use this PID for the source content. Unused for DVB-Sub passthrough. All DVB-Sub content is passed through, regardless of selectors."
  )
  @as("Pid")
  pid: option<__integerMin1>,
  @ocaml.doc("If you will configure a WebVTT caption description that references this caption selector, use this field to
provide the language to consider when translating the image-based source to text.")
  @as("OcrLanguage")
  ocrLanguage: option<dvbSubOcrLanguage>,
}
@ocaml.doc("DVB Service Description Table (SDT)")
type dvbSdtSettings = {
  @ocaml.doc(
    "The service provider name placed in the serviceDescriptor in the Service Description Table. Maximum length is 256 characters."
  )
  @as("ServiceProviderName")
  serviceProviderName: option<__stringMin1Max256>,
  @ocaml.doc(
    "The service name placed in the serviceDescriptor in the Service Description Table. Maximum length is 256 characters."
  )
  @as("ServiceName")
  serviceName: option<__stringMin1Max256>,
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream."
  )
  @as("RepInterval")
  repInterval: option<__integerMin25Max2000>,
  @ocaml.doc(
    "Selects method of inserting SDT information into output stream. The sdtFollow setting copies SDT information from input stream to output stream. The sdtFollowIfPresent setting copies SDT information from input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. The sdtManual setting means user will enter the SDT information. The sdtNone setting means output stream will not contain SDT information."
  )
  @as("OutputSdt")
  outputSdt: option<dvbSdtOutputSdt>,
}
@ocaml.doc("DVB Network Information Table (NIT)")
type dvbNitSettings = {
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream."
  )
  @as("RepInterval")
  repInterval: option<__integerMin25Max10000>,
  @ocaml.doc(
    "The network name text placed in the networkNameDescriptor inside the Network Information Table. Maximum length is 256 characters."
  )
  @as("NetworkName")
  networkName: __stringMin1Max256,
  @ocaml.doc("The numeric value placed in the Network Information Table (NIT).") @as("NetworkId")
  networkId: __integerMin0Max65536,
}
@ocaml.doc("Placeholder documentation for ChannelEgressEndpoint")
type channelEgressEndpoint = {
  @ocaml.doc("Public IP of where a channel's output comes from") @as("SourceIp")
  sourceIp: option<__string>,
}
@ocaml.doc("Placeholder documentation for CdiInputSpecification")
type cdiInputSpecification = {
  @ocaml.doc("Maximum CDI input resolution") @as("Resolution")
  resolution: option<cdiInputResolution>,
}
@ocaml.doc("Caption Rectangle")
type captionRectangle = {
  @ocaml.doc("See the description in leftOffset.
For width, specify the entire width of the rectangle as a percentage of the underlying frame width. For example, \\\"80\\\" means the rectangle width is 80% of the underlying frame width. The leftOffset and rectangleWidth must add up to 100% or less.
This field corresponds to tts:extent - X in the TTML standard.")
  @as("Width")
  width: __doubleMin0Max100,
  @ocaml.doc("See the description in leftOffset.
For topOffset, specify the position of the top edge of the rectangle, as a percentage of the underlying frame height, and relative to the top edge of the frame. For example, \\\"10\\\" means the measurement is 10% of the underlying frame height. The rectangle top edge starts at that position from the top edge of the frame.
This field corresponds to tts:origin - Y in the TTML standard.")
  @as("TopOffset")
  topOffset: __doubleMin0Max100,
  @ocaml.doc("Applies only if you plan to convert these source captions to EBU-TT-D or TTML in an output. (Make sure to leave the default if you don't have either of these formats in the output.) You can define a display rectangle for the captions that is smaller than the underlying video frame. You define the rectangle by specifying the position of the left edge, top edge, bottom edge, and right edge of the rectangle, all within the underlying video frame. The units for the measurements are percentages.
If you specify a value for one of these fields, you must specify a value for all of them.
For leftOffset, specify the position of the left edge of the rectangle, as a percentage of the underlying frame width, and relative to the left edge of the frame. For example, \\\"10\\\" means the measurement is 10% of the underlying frame width. The rectangle left edge starts at that position from the left edge of the frame.
This field corresponds to tts:origin - X in the TTML standard.")
  @as("LeftOffset")
  leftOffset: __doubleMin0Max100,
  @ocaml.doc("See the description in leftOffset.
For height, specify the entire height of the rectangle as a percentage of the underlying frame height. For example, \\\"80\\\" means the rectangle height is 80% of the underlying frame height. The topOffset and rectangleHeight must add up to 100% or less.
This field corresponds to tts:extent - Y in the TTML standard.")
  @as("Height")
  height: __doubleMin0Max100,
}
@ocaml.doc(
  "Maps a caption channel to an ISO 693-2 language code (http://www.loc.gov/standards/iso639-2), with an optional description."
)
type captionLanguageMapping = {
  @ocaml.doc("Textual description of language") @as("LanguageDescription")
  languageDescription: __stringMin1,
  @ocaml.doc("Three character ISO 639-2 language code (see http://www.loc.gov/standards/iso639-2)")
  @as("LanguageCode")
  languageCode: __stringMin3Max3,
  @ocaml.doc(
    "The closed caption channel being described by this CaptionLanguageMapping.  Each channel mapping must have a unique channel number (maximum of 4)"
  )
  @as("CaptionChannel")
  captionChannel: __integerMin1Max4,
}
@ocaml.doc("Details from a successful operation")
type batchSuccessfulResultModel = {
  @ocaml.doc("Current state of the resource") @as("State") state: option<__string>,
  @ocaml.doc("ID of the resource") @as("Id") id: option<__string>,
  @ocaml.doc("ARN of the resource") @as("Arn") arn: option<__string>,
}
@ocaml.doc("Details from a failed operation")
type batchFailedResultModel = {
  @ocaml.doc("Error message for the failed operation") @as("Message") message: option<__string>,
  @ocaml.doc("ID of the resource") @as("Id") id: option<__string>,
  @ocaml.doc("Error code for the failed operation") @as("Code") code: option<__string>,
  @ocaml.doc("ARN of the resource") @as("Arn") arn: option<__string>,
}
@ocaml.doc("Audio Track")
type audioTrack = {
  @ocaml.doc("1-based integer value that maps to a specific audio track") @as("Track")
  track: __integerMin1,
}
@ocaml.doc("Placeholder documentation for AudioSilenceFailoverSettings")
type audioSilenceFailoverSettings = {
  @ocaml.doc(
    "The amount of time (in milliseconds) that the active input must be silent before automatic input failover occurs. Silence is defined as audio loss or audio quieter than -50 dBFS."
  )
  @as("AudioSilenceThresholdMsec")
  audioSilenceThresholdMsec: option<__integerMin1000>,
  @ocaml.doc(
    "The name of the audio selector in the input that MediaLive should monitor to detect silence. Select your most important rendition. If you didn't create an audio selector in this input, leave blank."
  )
  @as("AudioSelectorName")
  audioSelectorName: __string,
}
@ocaml.doc("Audio Pid Selection")
type audioPidSelection = {
  @ocaml.doc("Selects a specific PID from within a source.") @as("Pid") pid: __integerMin0Max8191,
}
@ocaml.doc("Audio Normalization Settings")
type audioNormalizationSettings = {
  @ocaml.doc(
    "Target LKFS(loudness) to adjust volume to. If no value is entered, a default value will be used according to the chosen algorithm.  The CALM Act (1770-1) recommends a target of -24 LKFS. The EBU R-128 specification (1770-2) recommends a target of -23 LKFS."
  )
  @as("TargetLkfs")
  targetLkfs: option<__doubleMinNegative59Max0>,
  @ocaml.doc(
    "When set to correctAudio the output audio is corrected using the chosen algorithm. If set to measureOnly, the audio will be measured but not adjusted."
  )
  @as("AlgorithmControl")
  algorithmControl: option<audioNormalizationAlgorithmControl>,
  @ocaml.doc(
    "Audio normalization algorithm to use. itu17701 conforms to the CALM Act specification, itu17702 conforms to the EBU R-128 specification."
  )
  @as("Algorithm")
  algorithm: option<audioNormalizationAlgorithm>,
}
@ocaml.doc("Audio Language Selection")
type audioLanguageSelection = {
  @ocaml.doc(
    "When set to \"strict\", the transport stream demux strictly identifies audio streams by their language descriptor. If a PMT update occurs such that an audio stream matching the initially selected language is no longer present then mute will be encoded until the language returns. If \"loose\", then on a PMT update the demux will choose another audio stream in the program with the same stream type if it can't find one with the same language."
  )
  @as("LanguageSelectionPolicy")
  languageSelectionPolicy: option<audioLanguageSelectionPolicy>,
  @ocaml.doc("Selects a specific three-letter language code from within an audio source.")
  @as("LanguageCode")
  languageCode: __string,
}
@ocaml.doc("Audio Hls Rendition Selection")
type audioHlsRenditionSelection = {
  @ocaml.doc("Specifies the NAME in the #EXT-X-MEDIA tag of the target HLS audio rendition.")
  @as("Name")
  name: __stringMin1,
  @ocaml.doc("Specifies the GROUP-ID in the #EXT-X-MEDIA tag of the target HLS audio rendition.")
  @as("GroupId")
  groupId: __stringMin1,
}
@ocaml.doc("Archive S3 Settings")
type archiveS3Settings = {
  @ocaml.doc("Specify the canned ACL to apply to each S3 request. Defaults to none.")
  @as("CannedAcl")
  cannedAcl: option<s3CannedAcl>,
}
@ocaml.doc("Ancillary Source Settings")
type ancillarySourceSettings = {
  @ocaml.doc(
    "Specifies the number (1 to 4) of the captions channel you want to extract from the ancillary captions. If you plan to convert the ancillary captions to another format, complete this field. If you plan to choose Embedded as the captions destination in the output (to pass through all the channels in the ancillary captions), leave this field blank because MediaLive ignores the field."
  )
  @as("SourceAncillaryChannelNumber")
  sourceAncillaryChannelNumber: option<__integerMin1Max4>,
}
@ocaml.doc("Ac3 Settings")
type ac3Settings = {
  @ocaml.doc(
    "When set to \"followInput\", encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used."
  )
  @as("MetadataControl")
  metadataControl: option<ac3MetadataControl>,
  @ocaml.doc(
    "When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid in codingMode32Lfe mode."
  )
  @as("LfeFilter")
  lfeFilter: option<ac3LfeFilter>,
  @ocaml.doc(
    "If set to filmStandard, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification."
  )
  @as("DrcProfile")
  drcProfile: option<ac3DrcProfile>,
  @ocaml.doc(
    "Sets the dialnorm for the output. If excluded and input audio is Dolby Digital, dialnorm will be passed through."
  )
  @as("Dialnorm")
  dialnorm: option<__integerMin1Max31>,
  @ocaml.doc("Dolby Digital coding mode. Determines number of channels.") @as("CodingMode")
  codingMode: option<ac3CodingMode>,
  @ocaml.doc(
    "Specifies the bitstream mode (bsmod) for the emitted AC-3 stream. See ATSC A/52-2012 for background on these values."
  )
  @as("BitstreamMode")
  bitstreamMode: option<ac3BitstreamMode>,
  @ocaml.doc("Average bitrate in bits/second. Valid bitrates depend on the coding mode.")
  @as("Bitrate")
  bitrate: option<__double>,
}
@ocaml.doc("Aac Settings")
type aacSettings = {
  @ocaml.doc("VBR Quality Level - Only used if rateControlMode is VBR.") @as("VbrQuality")
  vbrQuality: option<aacVbrQuality>,
  @ocaml.doc(
    "Use MPEG-2 AAC audio instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers."
  )
  @as("Spec")
  spec: option<aacSpec>,
  @ocaml.doc("Sample rate in Hz. Valid values depend on rate control mode and profile.")
  @as("SampleRate")
  sampleRate: option<__double>,
  @ocaml.doc("Sets LATM / LOAS AAC output for raw containers.") @as("RawFormat")
  rawFormat: option<aacRawFormat>,
  @ocaml.doc("Rate Control Mode.") @as("RateControlMode")
  rateControlMode: option<aacRateControlMode>,
  @ocaml.doc("AAC Profile.") @as("Profile") profile: option<aacProfile>,
  @ocaml.doc("Set to \"broadcasterMixedAd\" when input contains pre-mixed main audio + AD (narration) as a stereo pair.  The Audio Type field (audioType) will be set to 3, which signals to downstream systems that this stream contains \"broadcaster mixed AD\". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. The values in audioTypeControl and audioType (in AudioDescription) are ignored when set to broadcasterMixedAd.

Leave set to \"normal\" when input does not contain pre-mixed audio + AD.")
  @as("InputType")
  inputType: option<aacInputType>,
  @ocaml.doc(
    "Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. The adReceiverMix setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E."
  )
  @as("CodingMode")
  codingMode: option<aacCodingMode>,
  @ocaml.doc(
    "Average bitrate in bits/second. Valid values depend on rate control mode and profile."
  )
  @as("Bitrate")
  bitrate: option<__double>,
}
@ocaml.doc("Placeholder documentation for __listOfValidationError")
type __listOfValidationError = array<validationError>
@ocaml.doc("Placeholder documentation for __listOfTransferringInputDeviceSummary")
type __listOfTransferringInputDeviceSummary = array<transferringInputDeviceSummary>
@ocaml.doc("Placeholder documentation for __listOfPipelinePauseStateSettings")
type __listOfPipelinePauseStateSettings = array<pipelinePauseStateSettings>
@ocaml.doc("Placeholder documentation for __listOfPipelineDetail")
type __listOfPipelineDetail = array<pipelineDetail>
@ocaml.doc("Placeholder documentation for __listOfOutputDestinationSettings")
type __listOfOutputDestinationSettings = array<outputDestinationSettings>
@ocaml.doc("Placeholder documentation for __listOfMultiplexProgramSummary")
type __listOfMultiplexProgramSummary = array<multiplexProgramSummary>
@ocaml.doc("Placeholder documentation for __listOfMultiplexProgramPipelineDetail")
type __listOfMultiplexProgramPipelineDetail = array<multiplexProgramPipelineDetail>
@ocaml.doc("Placeholder documentation for __listOfMediaPackageOutputDestinationSettings")
type __listOfMediaPackageOutputDestinationSettings = array<mediaPackageOutputDestinationSettings>
@ocaml.doc("Placeholder documentation for __listOfMediaConnectFlowRequest")
type __listOfMediaConnectFlowRequest = array<mediaConnectFlowRequest>
@ocaml.doc("Placeholder documentation for __listOfMediaConnectFlow")
type __listOfMediaConnectFlow = array<mediaConnectFlow>
@ocaml.doc("Placeholder documentation for __listOfInputWhitelistRuleCidr")
type __listOfInputWhitelistRuleCidr = array<inputWhitelistRuleCidr>
@ocaml.doc("Placeholder documentation for __listOfInputWhitelistRule")
type __listOfInputWhitelistRule = array<inputWhitelistRule>
@ocaml.doc("Placeholder documentation for __listOfInputSourceRequest")
type __listOfInputSourceRequest = array<inputSourceRequest>
@ocaml.doc("Placeholder documentation for __listOfInputSource")
type __listOfInputSource = array<inputSource>
@ocaml.doc("Placeholder documentation for __listOfInputDeviceSettings")
type __listOfInputDeviceSettings = array<inputDeviceSettings>
@ocaml.doc("Placeholder documentation for __listOfInputDeviceRequest")
type __listOfInputDeviceRequest = array<inputDeviceRequest>
@ocaml.doc("Placeholder documentation for __listOfInputDestinationRequest")
type __listOfInputDestinationRequest = array<inputDestinationRequest>
@ocaml.doc("Placeholder documentation for __listOfInputChannelLevel")
type __listOfInputChannelLevel = array<inputChannelLevel>
@ocaml.doc("Placeholder documentation for __listOfChannelEgressEndpoint")
type __listOfChannelEgressEndpoint = array<channelEgressEndpoint>
@ocaml.doc("Placeholder documentation for __listOfCaptionLanguageMapping")
type __listOfCaptionLanguageMapping = array<captionLanguageMapping>
@ocaml.doc("Placeholder documentation for __listOfBatchSuccessfulResultModel")
type __listOfBatchSuccessfulResultModel = array<batchSuccessfulResultModel>
@ocaml.doc("Placeholder documentation for __listOfBatchFailedResultModel")
type __listOfBatchFailedResultModel = array<batchFailedResultModel>
@ocaml.doc("Placeholder documentation for __listOfAudioTrack")
type __listOfAudioTrack = array<audioTrack>
@ocaml.doc("The properties for a private VPC Output")
type vpcOutputSettingsDescription = {
  @ocaml.doc("A list of VPC subnet IDs from the same VPC.
If STANDARD channel, subnet IDs must be mapped to two unique availability zones (AZ).")
  @as("SubnetIds")
  subnetIds: option<__listOf__string>,
  @ocaml.doc(
    "A list of up EC2 VPC security group IDs attached to the Output VPC network interfaces."
  )
  @as("SecurityGroupIds")
  securityGroupIds: option<__listOf__string>,
  @ocaml.doc("A list of Elastic Network Interfaces created by MediaLive in the customer's VPC")
  @as("NetworkInterfaceIds")
  networkInterfaceIds: option<__listOf__string>,
  @ocaml.doc("The Availability Zones where the vpc subnets are located.
The first Availability Zone applies to the first subnet in the list of subnets.
The second Availability Zone applies to the second subnet.")
  @as("AvailabilityZones")
  availabilityZones: option<__listOf__string>,
}
@ocaml.doc("The properties for a private VPC Output
When this property is specified, the output egress addresses will be created in a user specified VPC")
type vpcOutputSettings = {
  @ocaml.doc("A list of VPC subnet IDs from the same VPC.
If STANDARD channel, subnet IDs must be mapped to two unique availability zones (AZ).")
  @as("SubnetIds")
  subnetIds: __listOf__string,
  @ocaml.doc("A list of up to 5 EC2 VPC security group IDs to attach to the Output VPC network interfaces.
If none are specified then the VPC default security group will be used")
  @as("SecurityGroupIds")
  securityGroupIds: option<__listOf__string>,
  @ocaml.doc("List of public address allocation ids to associate with ENIs that will be created in Output VPC.
Must specify one for SINGLE_PIPELINE, two for STANDARD channels")
  @as("PublicAddressAllocationIds")
  publicAddressAllocationIds: option<__listOf__string>,
}
@ocaml.doc("Video Selector Settings")
type videoSelectorSettings = {
  @as("VideoSelectorProgramId") videoSelectorProgramId: option<videoSelectorProgramId>,
  @as("VideoSelectorPid") videoSelectorPid: option<videoSelectorPid>,
}
@ocaml.doc("Video Selector Color Space Settings")
type videoSelectorColorSpaceSettings = {@as("Hdr10Settings") hdr10Settings: option<hdr10Settings>}
@ocaml.doc("Teletext Source Settings")
type teletextSourceSettings = {
  @ocaml.doc(
    "Specifies the teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for passthrough. Should be specified as a hexadecimal string with no \"0x\" prefix."
  )
  @as("PageNumber")
  pageNumber: option<__string>,
  @ocaml.doc("Optionally defines a region where TTML style captions will be displayed")
  @as("OutputRectangle")
  outputRectangle: option<captionRectangle>,
}
@ocaml.doc("Static Key Settings")
type staticKeySettings = {
  @ocaml.doc("Static key value as a 32 character hexadecimal string.") @as("StaticKeyValue")
  staticKeyValue: __stringMin32Max32,
  @ocaml.doc("The URL of the license server used for protecting content.") @as("KeyProviderServer")
  keyProviderServer: option<inputLocation>,
}
@ocaml.doc("Settings for the action to activate a static image.")
type staticImageActivateScheduleActionSettings = {
  @ocaml.doc(
    "The width of the image when inserted into the video, in pixels. The overlay will be scaled up or down to the specified width. Leave blank to use the native width of the overlay."
  )
  @as("Width")
  width: option<__integerMin1>,
  @ocaml.doc("Opacity of image where 0 is transparent and 100 is fully opaque. Default is 100.")
  @as("Opacity")
  opacity: option<__integerMin0Max100>,
  @ocaml.doc(
    "The number of the layer, 0 to 7. There are 8 layers that can be overlaid on the video, each layer with a different image. The layers are in Z order, which means that overlays with higher values of layer are inserted on top of overlays with lower values of layer. Default is 0."
  )
  @as("Layer")
  layer: option<__integerMin0Max7>,
  @ocaml.doc(
    "Placement of the top edge of the overlay relative to the top edge of the video frame, in pixels. 0 (the default) is the top edge of the frame. If the placement causes the overlay to extend beyond the bottom edge of the underlying video, then the overlay is cropped on the bottom."
  )
  @as("ImageY")
  imageY: option<__integerMin0>,
  @ocaml.doc(
    "Placement of the left edge of the overlay relative to the left edge of the video frame, in pixels. 0 (the default) is the left edge of the frame. If the placement causes the overlay to extend beyond the right edge of the underlying video, then the overlay is cropped on the right."
  )
  @as("ImageX")
  imageX: option<__integerMin0>,
  @ocaml.doc(
    "The location and filename of the image file to overlay on the video. The file must be a 32-bit BMP, PNG, or TGA file, and must not be larger (in pixels) than the input video."
  )
  @as("Image")
  image: inputLocation,
  @ocaml.doc(
    "The height of the image when inserted into the video, in pixels. The overlay will be scaled up or down to the specified height. Leave blank to use the native height of the overlay."
  )
  @as("Height")
  height: option<__integerMin1>,
  @ocaml.doc(
    "Applies only if a duration is specified. The time in milliseconds for the image to fade out. The fade-out starts when the duration time is hit, so it effectively extends the duration. Default is 0 (no fade-out)."
  )
  @as("FadeOut")
  fadeOut: option<__integerMin0>,
  @ocaml.doc(
    "The time in milliseconds for the image to fade in. The fade-in starts at the start time of the overlay. Default is 0 (no fade-in)."
  )
  @as("FadeIn")
  fadeIn: option<__integerMin0>,
  @ocaml.doc(
    "The duration in milliseconds for the image to remain on the video. If omitted or set to 0 the duration is unlimited and the image will remain until it is explicitly deactivated."
  )
  @as("Duration")
  duration: option<__integerMin0>,
}
@ocaml.doc("Standard Hls Settings")
type standardHlsSettings = {
  @as("M3u8Settings") m3u8Settings: m3u8Settings,
  @ocaml.doc(
    "List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','."
  )
  @as("AudioRenditionSets")
  audioRenditionSets: option<__string>,
}
@ocaml.doc("Corresponds to SCTE-35 segmentation_descriptor.")
type scte35SegmentationDescriptor = {
  @ocaml.doc(
    "Corresponds to SCTE-35 sub_segments_expected. A value that is valid for the specified segmentation_type_id."
  )
  @as("SubSegmentsExpected")
  subSegmentsExpected: option<__integerMin0Max255>,
  @ocaml.doc(
    "Corresponds to SCTE-35 sub_segment_num. A value that is valid for the specified segmentation_type_id."
  )
  @as("SubSegmentNum")
  subSegmentNum: option<__integerMin0Max255>,
  @ocaml.doc(
    "Corresponds to SCTE-35 segments_expected. A value that is valid for the specified segmentation_type_id."
  )
  @as("SegmentsExpected")
  segmentsExpected: option<__integerMin0Max255>,
  @ocaml.doc(
    "Corresponds to SCTE-35 segmentation_upid_type. On the console, enter one of the types listed in the SCTE-35 specification, converted to a decimal. For example, \"0x0C\" hex from the specification is \"12\" in decimal. In the CLI, API, or an SDK, enter one of the types listed in the SCTE-35 specification, in either hex (for example, \"0x0C\" ) or in decimal (for example, \"12\")."
  )
  @as("SegmentationUpidType")
  segmentationUpidType: option<__integerMin0Max255>,
  @ocaml.doc(
    "Corresponds to SCTE-35 segmentation_upid. Enter a string containing the hexadecimal representation of the characters that make up the SCTE-35 segmentation_upid value. Must contain an even number of hex characters. Do not include spaces between each hex pair. For example, the ASCII \"ADS Information\" becomes hex \"41445320496e666f726d6174696f6e."
  )
  @as("SegmentationUpid")
  segmentationUpid: option<__string>,
  @ocaml.doc(
    "Corresponds to SCTE-35 segmentation_type_id. One of the segmentation_type_id values listed in the SCTE-35 specification. On the console, enter the ID in decimal (for example, \"52\"). In the CLI, API, or an SDK, enter the ID in hex (for example, \"0x34\") or decimal (for example, \"52\")."
  )
  @as("SegmentationTypeId")
  segmentationTypeId: option<__integerMin0Max255>,
  @ocaml.doc("Corresponds to SCTE-35 segmentation_event_id.") @as("SegmentationEventId")
  segmentationEventId: __longMin0Max4294967295,
  @ocaml.doc(
    "Corresponds to SCTE-35 segmentation_duration. Optional. The duration for the time_signal, in 90 KHz ticks. To convert seconds to ticks, multiple the seconds by 90,000. Enter time in 90 KHz clock ticks. If you do not enter a duration, the time_signal will continue until you insert a cancellation message."
  )
  @as("SegmentationDuration")
  segmentationDuration: option<__longMin0Max1099511627775>,
  @ocaml.doc("Corresponds to SCTE-35 segmentation_event_cancel_indicator.")
  @as("SegmentationCancelIndicator")
  segmentationCancelIndicator: scte35SegmentationCancelIndicator,
  @ocaml.doc(
    "Corresponds to SCTE-35 segment_num. A value that is valid for the specified segmentation_type_id."
  )
  @as("SegmentNum")
  segmentNum: option<__integerMin0Max255>,
  @ocaml.doc("Holds the four SCTE-35 delivery restriction parameters.") @as("DeliveryRestrictions")
  deliveryRestrictions: option<scte35DeliveryRestrictions>,
}
@ocaml.doc(
  "Settings to specify when an action should occur. Only one of the options must be selected."
)
type scheduleActionStartSettings = {
  @ocaml.doc("Option for specifying an action that should be applied immediately.")
  @as("ImmediateModeScheduleActionStartSettings")
  immediateModeScheduleActionStartSettings: option<immediateModeScheduleActionStartSettings>,
  @ocaml.doc("Option for specifying an action as relative to another action.")
  @as("FollowModeScheduleActionStartSettings")
  followModeScheduleActionStartSettings: option<followModeScheduleActionStartSettings>,
  @ocaml.doc("Option for specifying the start time for an action.")
  @as("FixedModeScheduleActionStartSettings")
  fixedModeScheduleActionStartSettings: option<fixedModeScheduleActionStartSettings>,
}
@ocaml.doc("Rtmp Output Settings")
type rtmpOutputSettings = {
  @ocaml.doc("Number of retry attempts.") @as("NumRetries") numRetries: option<__integerMin0>,
  @ocaml.doc(
    "The RTMP endpoint excluding the stream name (eg. rtmp://host/appname). For connection to Akamai, a username and password must be supplied. URI fields accept format identifiers."
  )
  @as("Destination")
  destination: outputLocationRef,
  @ocaml.doc(
    "Number of seconds to wait before retrying a connection to the Flash Media server if the connection is lost."
  )
  @as("ConnectionRetryInterval")
  connectionRetryInterval: option<__integerMin1>,
  @ocaml.doc(
    "If set to verifyAuthenticity, verify the tls certificate chain to a trusted Certificate Authority (CA).  This will cause rtmps outputs with self-signed certificates to fail."
  )
  @as("CertificateMode")
  certificateMode: option<rtmpOutputCertificateMode>,
}
@ocaml.doc("Rtmp Group Settings")
type rtmpGroupSettings = {
  @ocaml.doc(
    "If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart."
  )
  @as("RestartDelay")
  restartDelay: option<__integerMin0>,
  @ocaml.doc("Controls the behavior of this RTMP group if input becomes unavailable.

- emitOutput: Emit a slate until input returns.
- pauseOutput: Stop transmitting data until input returns. This does not close the underlying RTMP connection.")
  @as("InputLossAction")
  inputLossAction: option<inputLossActionForRtmpOut>,
  @ocaml.doc(
    "Controls the types of data that passes to onCaptionInfo outputs.  If set to 'all' then 608 and 708 carried DTVCC data will be passed.  If set to 'field1AndField2608' then DTVCC data will be stripped out, but 608 data from both fields will be passed. If set to 'field1608' then only the data carried in 608 from field 1 video will be passed."
  )
  @as("CaptionData")
  captionData: option<rtmpCaptionData>,
  @ocaml.doc("Cache length, in seconds, is used to calculate buffer size.") @as("CacheLength")
  cacheLength: option<__integerMin30>,
  @ocaml.doc(
    "Controls behavior when content cache fills up. If remote origin server stalls the RTMP connection and does not accept content fast enough the 'Media Cache' will fill up. When the cache reaches the duration specified by cacheLength the cache will stop accepting new content. If set to disconnectImmediately, the RTMP output will force a disconnect. Clear the media cache, and reconnect after restartDelay seconds. If set to waitForServer, the RTMP output will wait up to 5 minutes to allow the origin server to begin accepting data again."
  )
  @as("CacheFullBehavior")
  cacheFullBehavior: option<rtmpCacheFullBehavior>,
  @ocaml.doc("Authentication scheme to use when connecting with CDN") @as("AuthenticationScheme")
  authenticationScheme: option<authenticationScheme>,
  @ocaml.doc(
    "Choose the ad marker type for this output group. MediaLive will create a message based on the content of each SCTE-35 message, format it for that marker type, and insert it in the datastream."
  )
  @as("AdMarkers")
  adMarkers: option<__listOfRtmpAdMarkers>,
}
@ocaml.doc("Reserved resources available to use")
type reservation = {
  @ocaml.doc("Recurring usage charge for each reserved resource, e.g. '157.0'") @as("UsagePrice")
  usagePrice: option<__double>,
  @ocaml.doc("A collection of key-value pairs") @as("Tags") tags: option<tags>,
  @ocaml.doc("Current state of reservation, e.g. 'ACTIVE'") @as("State")
  state: option<reservationState>,
  @ocaml.doc("Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'")
  @as("Start")
  start: option<__string>,
  @ocaml.doc("Resource configuration details") @as("ResourceSpecification")
  resourceSpecification: option<reservationResourceSpecification>,
  @ocaml.doc("Unique reservation ID, e.g. '1234567'") @as("ReservationId")
  reservationId: option<__string>,
  @ocaml.doc("AWS region, e.g. 'us-west-2'") @as("Region") region: option<__string>,
  @ocaml.doc("Offering type, e.g. 'NO_UPFRONT'") @as("OfferingType")
  offeringType: option<offeringType>,
  @ocaml.doc("Unique offering ID, e.g. '87654321'") @as("OfferingId") offeringId: option<__string>,
  @ocaml.doc(
    "Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'"
  )
  @as("OfferingDescription")
  offeringDescription: option<__string>,
  @ocaml.doc("User specified reservation name") @as("Name") name: option<__string>,
  @ocaml.doc("One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering")
  @as("FixedPrice")
  fixedPrice: option<__double>,
  @ocaml.doc("Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'")
  @as("End")
  end: option<__string>,
  @ocaml.doc("Units for duration, e.g. 'MONTHS'") @as("DurationUnits")
  durationUnits: option<offeringDurationUnits>,
  @ocaml.doc("Lease duration, e.g. '12'") @as("Duration") duration: option<__integer>,
  @ocaml.doc("Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'")
  @as("CurrencyCode")
  currencyCode: option<__string>,
  @ocaml.doc("Number of reserved resources") @as("Count") count: option<__integer>,
  @ocaml.doc(
    "Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'"
  )
  @as("Arn")
  arn: option<__string>,
}
@ocaml.doc("Reserved resources available for purchase")
type offering = {
  @ocaml.doc("Recurring usage charge for each reserved resource, e.g. '157.0'") @as("UsagePrice")
  usagePrice: option<__double>,
  @ocaml.doc("Resource configuration details") @as("ResourceSpecification")
  resourceSpecification: option<reservationResourceSpecification>,
  @ocaml.doc("AWS region, e.g. 'us-west-2'") @as("Region") region: option<__string>,
  @ocaml.doc("Offering type, e.g. 'NO_UPFRONT'") @as("OfferingType")
  offeringType: option<offeringType>,
  @ocaml.doc("Unique offering ID, e.g. '87654321'") @as("OfferingId") offeringId: option<__string>,
  @ocaml.doc(
    "Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'"
  )
  @as("OfferingDescription")
  offeringDescription: option<__string>,
  @ocaml.doc("One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering")
  @as("FixedPrice")
  fixedPrice: option<__double>,
  @ocaml.doc("Units for duration, e.g. 'MONTHS'") @as("DurationUnits")
  durationUnits: option<offeringDurationUnits>,
  @ocaml.doc("Lease duration, e.g. '12'") @as("Duration") duration: option<__integer>,
  @ocaml.doc("Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'")
  @as("CurrencyCode")
  currencyCode: option<__string>,
  @ocaml.doc(
    "Unique offering ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:offering:87654321'"
  )
  @as("Arn")
  arn: option<__string>,
}
@ocaml.doc("Nielsen Watermarks Settings")
type nielsenWatermarksSettings = {
  @ocaml.doc(
    "Complete these fields only if you want to insert watermarks of type Nielsen NAES II (N2) and Nielsen NAES VI (NW)."
  )
  @as("NielsenNaesIiNwSettings")
  nielsenNaesIiNwSettings: option<nielsenNaesIiNw>,
  @ocaml.doc("Choose the distribution types that you want to assign to the watermarks:
- PROGRAM_CONTENT
- FINAL_DISTRIBUTOR")
  @as("NielsenDistributionType")
  nielsenDistributionType: option<nielsenWatermarksDistributionTypes>,
  @ocaml.doc("Complete these fields only if you want to insert watermarks of type Nielsen CBET")
  @as("NielsenCbetSettings")
  nielsenCbetSettings: option<nielsenCBET>,
}
@ocaml.doc(
  "Network source to transcode. Must be accessible to the Elemental Live node that is running the live event through a network connection."
)
type networkInputSettings = {
  @ocaml.doc(
    "Check HTTPS server certificates. When set to checkCryptographyOnly, cryptography in the certificate will be checked, but not the server's name. Certain subdomains (notably S3 buckets that use dots in the bucket name) do not strictly match the corresponding certificate's wildcard pattern and would otherwise cause the event to error. This setting is ignored for protocols that do not use https."
  )
  @as("ServerValidation")
  serverValidation: option<networkInputServerValidation>,
  @ocaml.doc("Specifies HLS input settings when the uri is for a HLS manifest.")
  @as("HlsInputSettings")
  hlsInputSettings: option<hlsInputSettings>,
}
@ocaml.doc("The video configuration for each program in a multiplex.")
type multiplexVideoSettings = {
  @ocaml.doc("Statmux rate control settings.
When this field is defined, ConstantBitrate must be undefined.")
  @as("StatmuxSettings")
  statmuxSettings: option<multiplexStatmuxVideoSettings>,
  @ocaml.doc("The constant bitrate configuration for the video encode.
When this field is defined, StatmuxSettings must be undefined.")
  @as("ConstantBitrate")
  constantBitrate: option<__integerMin100000Max100000000>,
}
@ocaml.doc("Placeholder documentation for MultiplexSummary")
type multiplexSummary = {
  @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
  @ocaml.doc("The current state of the multiplex.") @as("State") state: option<multiplexState>,
  @ocaml.doc("The number of programs in the multiplex.") @as("ProgramCount")
  programCount: option<__integer>,
  @ocaml.doc("The number of currently healthy pipelines.") @as("PipelinesRunningCount")
  pipelinesRunningCount: option<__integer>,
  @ocaml.doc("The name of the multiplex.") @as("Name") name: option<__string>,
  @ocaml.doc("Configuration for a multiplex event.") @as("MultiplexSettings")
  multiplexSettings: option<multiplexSettingsSummary>,
  @ocaml.doc("The unique id of the multiplex.") @as("Id") id: option<__string>,
  @ocaml.doc("A list of availability zones for the multiplex.") @as("AvailabilityZones")
  availabilityZones: option<__listOf__string>,
  @ocaml.doc("The unique arn of the multiplex.") @as("Arn") arn: option<__string>,
}
@ocaml.doc("Packet identifiers map for a given Multiplex program.")
type multiplexProgramPacketIdentifiersMap = {
  @as("VideoPid") videoPid: option<__integer>,
  @as("TimedMetadataPid") timedMetadataPid: option<__integer>,
  @as("Scte35Pid") scte35Pid: option<__integer>,
  @as("Scte27Pids") scte27Pids: option<__listOf__integer>,
  @as("PrivateMetadataPid") privateMetadataPid: option<__integer>,
  @as("PmtPid") pmtPid: option<__integer>,
  @as("PcrPid") pcrPid: option<__integer>,
  @as("KlvDataPids") klvDataPids: option<__listOf__integer>,
  @as("EtvSignalPid") etvSignalPid: option<__integer>,
  @as("EtvPlatformPid") etvPlatformPid: option<__integer>,
  @as("DvbTeletextPid") dvbTeletextPid: option<__integer>,
  @as("DvbSubPids") dvbSubPids: option<__listOf__integer>,
  @as("AudioPids") audioPids: option<__listOf__integer>,
}
@ocaml.doc("Multiplex Output Settings")
type multiplexOutputSettings = {
  @ocaml.doc("Destination is a Multiplex.") @as("Destination") destination: outputLocationRef,
}
@ocaml.doc("Multiplex output destination settings")
type multiplexOutputDestination = {
  @ocaml.doc("Multiplex MediaConnect output destination settings.") @as("MediaConnectSettings")
  mediaConnectSettings: option<multiplexMediaConnectOutputDestinationSettings>,
}
@ocaml.doc("Ms Smooth Group Settings")
type msSmoothGroupSettings = {
  @ocaml.doc("Type of timestamp date offset to use.
- useEventStartDate: Use the date the event was started as the offset
- useConfiguredOffset: Use an explicitly configured date as the offset")
  @as("TimestampOffsetMode")
  timestampOffsetMode: option<smoothGroupTimestampOffsetMode>,
  @ocaml.doc(
    "Timestamp offset for the event.  Only used if timestampOffsetMode is set to useConfiguredOffset."
  )
  @as("TimestampOffset")
  timestampOffset: option<__string>,
  @ocaml.doc(
    "When set to send, send stream manifest so publishing point doesn't start until all streams start."
  )
  @as("StreamManifestBehavior")
  streamManifestBehavior: option<smoothGroupStreamManifestBehavior>,
  @ocaml.doc("Identifies the type of data to place in the sparse track:
- SCTE35: Insert SCTE-35 messages from the source content. With each message, insert an IDR frame to start a new segment.
- SCTE35_WITHOUT_SEGMENTATION: Insert SCTE-35 messages from the source content. With each message, insert an IDR frame but don't start a new segment.
- NONE: Don't generate a sparse track for any outputs in this output group.")
  @as("SparseTrackType")
  sparseTrackType: option<smoothGroupSparseTrackType>,
  @ocaml.doc("Number of milliseconds to delay the output from the second pipeline.")
  @as("SendDelayMs")
  sendDelayMs: option<__integerMin0Max10000>,
  @ocaml.doc(
    "useInputSegmentation has been deprecated. The configured segment size is always used."
  )
  @as("SegmentationMode")
  segmentationMode: option<smoothGroupSegmentationMode>,
  @ocaml.doc(
    "Number of seconds before initiating a restart due to output failure, due to exhausting the numRetries on one segment, or exceeding filecacheDuration."
  )
  @as("RestartDelay")
  restartDelay: option<__integerMin0>,
  @ocaml.doc("Number of retry attempts.") @as("NumRetries") numRetries: option<__integerMin0>,
  @ocaml.doc("Parameter that control output group behavior on input loss.") @as("InputLossAction")
  inputLossAction: option<inputLossActionForMsSmoothOut>,
  @ocaml.doc(
    "Length of mp4 fragments to generate (in seconds). Fragment length must be compatible with GOP size and framerate."
  )
  @as("FragmentLength")
  fragmentLength: option<__integerMin1>,
  @ocaml.doc("Size in seconds of file cache for streaming outputs.") @as("FilecacheDuration")
  filecacheDuration: option<__integerMin0>,
  @ocaml.doc("When set to sendEos, send EOS signal to IIS server when stopping the event")
  @as("EventStopBehavior")
  eventStopBehavior: option<smoothGroupEventStopBehavior>,
  @ocaml.doc("Specifies whether or not to send an event ID to the IIS server. If no event ID is sent and the same Live Event is used without changing the publishing point, clients might see cached video from the previous run.

Options:
- \"useConfigured\" - use the value provided in eventId
- \"useTimestamp\" - generate and send an event ID based on the current timestamp
- \"noEventId\" - do not send an event ID to the IIS server.")
  @as("EventIdMode")
  eventIdMode: option<smoothGroupEventIdMode>,
  @ocaml.doc("MS Smooth event ID to be sent to the IIS server.

Should only be specified if eventIdMode is set to useConfigured.")
  @as("EventId")
  eventId: option<__string>,
  @ocaml.doc(
    "Smooth Streaming publish point on an IIS server. Elemental Live acts as a \"Push\" encoder to IIS."
  )
  @as("Destination")
  destination: outputLocationRef,
  @ocaml.doc(
    "Number of seconds to wait before retrying connection to the IIS server if the connection is lost. Content will be cached during this time and the cache will be be delivered to the IIS server once the connection is re-established."
  )
  @as("ConnectionRetryInterval")
  connectionRetryInterval: option<__integerMin0>,
  @ocaml.doc(
    "If set to verifyAuthenticity, verify the https certificate chain to a trusted Certificate Authority (CA).  This will cause https outputs to self-signed certificates to fail."
  )
  @as("CertificateMode")
  certificateMode: option<smoothGroupCertificateMode>,
  @ocaml.doc(
    "If set to passthrough for an audio-only MS Smooth output, the fragment absolute time will be set to the current timecode. This option does not write timecodes to the audio elementary stream."
  )
  @as("AudioOnlyTimecodeControl")
  audioOnlyTimecodeControl: option<smoothGroupAudioOnlyTimecodeControl>,
  @ocaml.doc(
    "The ID to include in each message in the sparse track. Ignored if sparseTrackType is NONE."
  )
  @as("AcquisitionPointId")
  acquisitionPointId: option<__string>,
}
@ocaml.doc("Mpeg2 Filter Settings")
type mpeg2FilterSettings = {
  @as("TemporalFilterSettings") temporalFilterSettings: option<temporalFilterSettings>,
}
@ocaml.doc("Motion Graphics Configuration")
type motionGraphicsConfiguration = {
  @ocaml.doc("Motion Graphics Settings") @as("MotionGraphicsSettings")
  motionGraphicsSettings: motionGraphicsSettings,
  @as("MotionGraphicsInsertion") motionGraphicsInsertion: option<motionGraphicsInsertion>,
}
@ocaml.doc("Media Package Group Settings")
type mediaPackageGroupSettings = {
  @ocaml.doc("MediaPackage channel destination.") @as("Destination") destination: outputLocationRef,
}
@ocaml.doc("M2ts Settings")
type m2tsSettings = {
  @ocaml.doc(
    "Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("VideoPid")
  videoPid: option<__string>,
  @ocaml.doc("The value of the transport stream ID field in the Program Map Table.")
  @as("TransportStreamId")
  transportStreamId: option<__integerMin0Max65535>,
  @ocaml.doc(
    "Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("TimedMetadataPid")
  timedMetadataPid: option<__string>,
  @ocaml.doc("When set to passthrough, timed metadata will be passed through from input to output.")
  @as("TimedMetadataBehavior")
  timedMetadataBehavior: option<m2tsTimedMetadataBehavior>,
  @ocaml.doc("The length in seconds of each segment. Required unless markers is set to _none_.")
  @as("SegmentationTime")
  segmentationTime: option<__doubleMin1>,
  @ocaml.doc("The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted.

When a segmentation style of \"resetCadence\" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of $segmentationTime seconds.

When a segmentation style of \"maintainCadence\" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentationTime seconds. Note that EBP lookahead is a slight exception to this rule.")
  @as("SegmentationStyle")
  segmentationStyle: option<m2tsSegmentationStyle>,
  @ocaml.doc(
    "Inserts segmentation markers at each segmentationTime period. raiSegstart sets the Random Access Indicator bit in the adaptation field. raiAdapt sets the RAI bit and adds the current timecode in the private data bytes. psiSegstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebpLegacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format."
  )
  @as("SegmentationMarkers")
  segmentationMarkers: option<m2tsSegmentationMarkers>,
  @ocaml.doc(
    "Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("Scte35Pid")
  scte35Pid: option<__string>,
  @ocaml.doc("Optionally pass SCTE-35 signals from the input source to this output.")
  @as("Scte35Control")
  scte35Control: option<m2tsScte35Control>,
  @ocaml.doc(
    "Packet Identifier (PID) for input source SCTE-27 data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("Scte27Pids")
  scte27Pids: option<__string>,
  @ocaml.doc(
    "When vbr, does not insert null packets into transport stream to fill specified bitrate. The bitrate setting acts as the maximum bitrate when vbr is set."
  )
  @as("RateMode")
  rateMode: option<m2tsRateMode>,
  @ocaml.doc("The value of the program number field in the Program Map Table.") @as("ProgramNum")
  programNum: option<__integerMin0Max65535>,
  @ocaml.doc(
    "Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value. Valid values are 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("PmtPid")
  pmtPid: option<__string>,
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream. Valid values are 0, 10..1000."
  )
  @as("PmtInterval")
  pmtInterval: option<__integerMin0Max1000>,
  @ocaml.doc(
    "Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("PcrPid")
  pcrPid: option<__string>,
  @ocaml.doc(
    "Maximum time in milliseconds between Program Clock Reference (PCRs) inserted into the transport stream."
  )
  @as("PcrPeriod")
  pcrPeriod: option<__integerMin0Max500>,
  @ocaml.doc(
    "When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream."
  )
  @as("PcrControl")
  pcrControl: option<m2tsPcrControl>,
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream.  Valid values are 0, 10..1000."
  )
  @as("PatInterval")
  patInterval: option<__integerMin0Max1000>,
  @ocaml.doc(
    "Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets."
  )
  @as("NullPacketBitrate")
  nullPacketBitrate: option<__doubleMin0>,
  @ocaml.doc(
    "If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output."
  )
  @as("NielsenId3Behavior")
  nielsenId3Behavior: option<m2tsNielsenId3Behavior>,
  @ocaml.doc(
    "Packet Identifier (PID) for input source KLV data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("KlvDataPids")
  klvDataPids: option<__string>,
  @ocaml.doc("If set to passthrough, passes any KLV data from the input source to this output.")
  @as("Klv")
  klv: option<m2tsKlv>,
  @ocaml.doc("The length in seconds of each fragment. Only used with EBP markers.")
  @as("FragmentTime")
  fragmentTime: option<__doubleMin0>,
  @ocaml.doc(
    "Packet Identifier (PID) for input source ETV Signal data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("EtvSignalPid")
  etvSignalPid: option<__string>,
  @ocaml.doc(
    "Packet Identifier (PID) for input source ETV Platform data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("EtvPlatformPid")
  etvPlatformPid: option<__string>,
  @ocaml.doc("Include or exclude the ES Rate field in the PES header.") @as("EsRateInPes")
  esRateInPes: option<m2tsEsRateInPes>,
  @ocaml.doc("This field is unused and deprecated.") @as("EcmPid") ecmPid: option<__string>,
  @ocaml.doc(
    "Controls placement of EBP on Audio PIDs. If set to videoAndAudioPids, EBP markers will be placed on the video PID and all audio PIDs.  If set to videoPid, EBP markers will be placed on only the video PID."
  )
  @as("EbpPlacement")
  ebpPlacement: option<m2tsEbpPlacement>,
  @ocaml.doc(
    "When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is \"stretched\" to the next marker.  The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate."
  )
  @as("EbpLookaheadMs")
  ebpLookaheadMs: option<__integerMin0Max10000>,
  @ocaml.doc(
    "When videoAndFixedIntervals is selected, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. Only available when EBP Cablelabs segmentation markers are selected.  Partitions 1 and 2 will always follow the video interval."
  )
  @as("EbpAudioInterval")
  ebpAudioInterval: option<m2tsAudioInterval>,
  @ocaml.doc("If set to passthrough, passes any EBIF data from the input source to this output.")
  @as("Ebif")
  ebif: option<m2tsEbifControl>,
  @ocaml.doc(
    "Packet Identifier (PID) for input source DVB Teletext data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("DvbTeletextPid")
  dvbTeletextPid: option<__string>,
  @ocaml.doc("Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.")
  @as("DvbTdtSettings")
  dvbTdtSettings: option<dvbTdtSettings>,
  @ocaml.doc(
    "Packet Identifier (PID) for input source DVB Subtitle data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("DvbSubPids")
  dvbSubPids: option<__string>,
  @ocaml.doc(
    "Inserts DVB Service Description Table (SDT) at the specified table repetition interval."
  )
  @as("DvbSdtSettings")
  dvbSdtSettings: option<dvbSdtSettings>,
  @ocaml.doc(
    "Inserts DVB Network Information Table (NIT) at the specified table repetition interval."
  )
  @as("DvbNitSettings")
  dvbNitSettings: option<dvbNitSettings>,
  @ocaml.doc("When set to enabled, generates captionServiceDescriptor in PMT.") @as("CcDescriptor")
  ccDescriptor: option<m2tsCcDescriptor>,
  @ocaml.doc(
    "Controls the timing accuracy for output network traffic. Leave as MULTIPLEX to ensure accurate network packet timing. Or set to NONE, which might result in lower latency but will result in more variability in output network packet timing. This variability might cause interruptions, jitter, or bursty behavior in your playback or receiving devices."
  )
  @as("BufferModel")
  bufferModel: option<m2tsBufferModel>,
  @ocaml.doc(
    "The output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate."
  )
  @as("Bitrate")
  bitrate: option<__integerMin0>,
  @ocaml.doc(
    "When set to atsc, uses stream type = 0x81 for AC3 and stream type = 0x87 for EAC3. When set to dvb, uses stream type = 0x06."
  )
  @as("AudioStreamType")
  audioStreamType: option<m2tsAudioStreamType>,
  @ocaml.doc(
    "Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values. Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("AudioPids")
  audioPids: option<__string>,
  @ocaml.doc("The number of audio frames to insert for each PES packet.") @as("AudioFramesPerPes")
  audioFramesPerPes: option<__integerMin0>,
  @ocaml.doc(
    "When set to dvb, uses DVB buffer model for Dolby Digital audio.  When set to atsc, the ATSC model is used."
  )
  @as("AudioBufferModel")
  audioBufferModel: option<m2tsAudioBufferModel>,
  @ocaml.doc(
    "If set to auto, pid number used for ARIB Captions will be auto-selected from unused pids.  If set to useConfigured, ARIB Captions will be on the configured pid number."
  )
  @as("AribCaptionsPidControl")
  aribCaptionsPidControl: option<m2tsAribCaptionsPidControl>,
  @ocaml.doc(
    "Packet Identifier (PID) for ARIB Captions in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6)."
  )
  @as("AribCaptionsPid")
  aribCaptionsPid: option<__string>,
  @ocaml.doc("When set to enabled, uses ARIB-compliant field muxing and removes video descriptor.")
  @as("Arib")
  arib: option<m2tsArib>,
  @ocaml.doc(
    "When set to drop, output audio streams will be removed from the program if the selected input audio stream is removed from the input. This allows the output audio configuration to dynamically change based on input configuration. If this is set to encodeSilence, all output audio streams will output encoded silence when not connected to an active input stream."
  )
  @as("AbsentInputAudioBehavior")
  absentInputAudioBehavior: option<m2tsAbsentInputAudioBehavior>,
}
@ocaml.doc("Settings for a private VPC Input.
When this property is specified, the input destination addresses will be created in a VPC rather than with public Internet addresses.
This property requires setting the roleArn property on Input creation.
Not compatible with the inputSecurityGroups property.")
type inputVpcRequest = {
  @ocaml.doc("A list of 2 VPC subnet IDs from the same VPC.
Subnet IDs must be mapped to two unique availability zones (AZ).")
  @as("SubnetIds")
  subnetIds: __listOf__string,
  @ocaml.doc("A list of up to 5 EC2 VPC security group IDs to attach to the Input VPC network interfaces.
Requires subnetIds. If none are specified then the VPC default security group will be used.")
  @as("SecurityGroupIds")
  securityGroupIds: option<__listOf__string>,
}
@ocaml.doc("Input Loss Behavior")
type inputLossBehavior = {
  @ocaml.doc("Documentation update needed") @as("RepeatFrameMsec")
  repeatFrameMsec: option<__integerMin0Max1000000>,
  @ocaml.doc(
    "Indicates whether to substitute a solid color or a slate into the output after input loss exceeds blackFrameMsec."
  )
  @as("InputLossImageType")
  inputLossImageType: option<inputLossImageType>,
  @ocaml.doc(
    "When input loss image type is \"slate\" these fields specify the parameters for accessing the slate."
  )
  @as("InputLossImageSlate")
  inputLossImageSlate: option<inputLocation>,
  @ocaml.doc(
    "When input loss image type is \"color\" this field specifies the color to use. Value: 6 hex characters representing the values of RGB."
  )
  @as("InputLossImageColor")
  inputLossImageColor: option<__stringMin6Max6>,
  @ocaml.doc("Documentation update needed") @as("BlackFrameMsec")
  blackFrameMsec: option<__integerMin0Max1000000>,
}
@ocaml.doc("The network settings for the input device.")
type inputDeviceNetworkSettings = {
  @ocaml.doc("The subnet mask of the input device.") @as("SubnetMask") subnetMask: option<__string>,
  @ocaml.doc(
    "Specifies whether the input device has been configured (outside of MediaLive) to use a dynamic IP address assignment (DHCP) or a static IP address."
  )
  @as("IpScheme")
  ipScheme: option<inputDeviceIpScheme>,
  @ocaml.doc("The IP address of the input device.") @as("IpAddress") ipAddress: option<__string>,
  @ocaml.doc("The network gateway IP address.") @as("Gateway") gateway: option<__string>,
  @ocaml.doc("The DNS addresses of the input device.") @as("DnsAddresses")
  dnsAddresses: option<__listOf__string>,
}
@ocaml.doc("The settings for a PUSH type input.")
type inputDestination = {
  @as("Vpc") vpc: option<inputDestinationVpc>,
  @ocaml.doc("This represents the endpoint that the customer stream will be
pushed to.")
  @as("Url")
  url: option<__string>,
  @ocaml.doc("The port number for the input.") @as("Port") port: option<__string>,
  @ocaml.doc("The system-generated static IP address of endpoint.
It remains fixed for the lifetime of the input.")
  @as("Ip")
  ip: option<__string>,
}
@ocaml.doc(
  "Settings to let you create a clip of the file input, in order to set up the input to ingest only a portion of the file."
)
type inputClippingSettings = {
  @ocaml.doc("Settings to identify the end of the clip.") @as("StopTimecode")
  stopTimecode: option<stopTimecode>,
  @ocaml.doc("Settings to identify the start of the clip.") @as("StartTimecode")
  startTimecode: option<startTimecode>,
  @ocaml.doc("The source of the timecodes in the source being clipped.") @as("InputTimecodeSource")
  inputTimecodeSource: inputTimecodeSource,
}
@ocaml.doc("Hls Cdn Settings")
type hlsCdnSettings = {
  @as("HlsWebdavSettings") hlsWebdavSettings: option<hlsWebdavSettings>,
  @as("HlsS3Settings") hlsS3Settings: option<hlsS3Settings>,
  @as("HlsMediaStoreSettings") hlsMediaStoreSettings: option<hlsMediaStoreSettings>,
  @as("HlsBasicPutSettings") hlsBasicPutSettings: option<hlsBasicPutSettings>,
  @as("HlsAkamaiSettings") hlsAkamaiSettings: option<hlsAkamaiSettings>,
}
@ocaml.doc("H265 Filter Settings")
type h265FilterSettings = {
  @as("TemporalFilterSettings") temporalFilterSettings: option<temporalFilterSettings>,
}
@ocaml.doc("H265 Color Space Settings")
type h265ColorSpaceSettings = {
  @as("Rec709Settings") rec709Settings: option<rec709Settings>,
  @as("Rec601Settings") rec601Settings: option<rec601Settings>,
  @as("Hdr10Settings") hdr10Settings: option<hdr10Settings>,
  @as("ColorSpacePassthroughSettings")
  colorSpacePassthroughSettings: option<colorSpacePassthroughSettings>,
}
@ocaml.doc("H264 Filter Settings")
type h264FilterSettings = {
  @as("TemporalFilterSettings") temporalFilterSettings: option<temporalFilterSettings>,
}
@ocaml.doc("Frame Capture Cdn Settings")
type frameCaptureCdnSettings = {
  @as("FrameCaptureS3Settings") frameCaptureS3Settings: option<frameCaptureS3Settings>,
}
@ocaml.doc("Settings for one failover condition.")
type failoverConditionSettings = {
  @ocaml.doc(
    "MediaLive will perform a failover if content is considered black for the specified period."
  )
  @as("VideoBlackSettings")
  videoBlackSettings: option<videoBlackFailoverSettings>,
  @ocaml.doc(
    "MediaLive will perform a failover if content is not detected in this input for the specified period."
  )
  @as("InputLossSettings")
  inputLossSettings: option<inputLossFailoverSettings>,
  @ocaml.doc(
    "MediaLive will perform a failover if the specified audio selector is silent for the specified period."
  )
  @as("AudioSilenceSettings")
  audioSilenceSettings: option<audioSilenceFailoverSettings>,
}
@ocaml.doc("Dvb Sub Destination Settings")
type dvbSubDestinationSettings = {
  @ocaml.doc(
    "Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match."
  )
  @as("YPosition")
  yposition: option<__integerMin0>,
  @ocaml.doc(
    "Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match."
  )
  @as("XPosition")
  xposition: option<__integerMin0>,
  @ocaml.doc(
    "Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs."
  )
  @as("TeletextGridControl")
  teletextGridControl: option<dvbSubDestinationTeletextGridControl>,
  @ocaml.doc(
    "Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match."
  )
  @as("ShadowYOffset")
  shadowYOffset: option<__integer>,
  @ocaml.doc(
    "Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match."
  )
  @as("ShadowXOffset")
  shadowXOffset: option<__integer>,
  @ocaml.doc(
    "Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match."
  )
  @as("ShadowOpacity")
  shadowOpacity: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match."
  )
  @as("ShadowColor")
  shadowColor: option<dvbSubDestinationShadowColor>,
  @ocaml.doc(
    "Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
  )
  @as("OutlineSize")
  outlineSize: option<__integerMin0Max10>,
  @ocaml.doc(
    "Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
  )
  @as("OutlineColor")
  outlineColor: option<dvbSubDestinationOutlineColor>,
  @ocaml.doc(
    "When set to auto fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match."
  )
  @as("FontSize")
  fontSize: option<__string>,
  @ocaml.doc(
    "Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match."
  )
  @as("FontResolution")
  fontResolution: option<__integerMin96Max600>,
  @ocaml.doc(
    "Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match."
  )
  @as("FontOpacity")
  fontOpacity: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match."
  )
  @as("FontColor")
  fontColor: option<dvbSubDestinationFontColor>,
  @ocaml.doc(
    "External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match."
  )
  @as("Font")
  font: option<inputLocation>,
  @ocaml.doc(
    "Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match."
  )
  @as("BackgroundOpacity")
  backgroundOpacity: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match."
  )
  @as("BackgroundColor")
  backgroundColor: option<dvbSubDestinationBackgroundColor>,
  @ocaml.doc(
    "If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting \"smart\" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  This option is not valid for source captions that are STL or 608/embedded.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match."
  )
  @as("Alignment")
  alignment: option<dvbSubDestinationAlignment>,
}
@ocaml.doc("Burn In Destination Settings")
type burnInDestinationSettings = {
  @ocaml.doc(
    "Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  All burn-in and DVB-Sub font settings must match."
  )
  @as("YPosition")
  yposition: option<__integerMin0>,
  @ocaml.doc(
    "Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  All burn-in and DVB-Sub font settings must match."
  )
  @as("XPosition")
  xposition: option<__integerMin0>,
  @ocaml.doc(
    "Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs."
  )
  @as("TeletextGridControl")
  teletextGridControl: option<burnInTeletextGridControl>,
  @ocaml.doc(
    "Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match."
  )
  @as("ShadowYOffset")
  shadowYOffset: option<__integer>,
  @ocaml.doc(
    "Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match."
  )
  @as("ShadowXOffset")
  shadowXOffset: option<__integer>,
  @ocaml.doc(
    "Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match."
  )
  @as("ShadowOpacity")
  shadowOpacity: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match."
  )
  @as("ShadowColor")
  shadowColor: option<burnInShadowColor>,
  @ocaml.doc(
    "Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
  )
  @as("OutlineSize")
  outlineSize: option<__integerMin0Max10>,
  @ocaml.doc(
    "Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
  )
  @as("OutlineColor")
  outlineColor: option<burnInOutlineColor>,
  @ocaml.doc(
    "When set to 'auto' fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match."
  )
  @as("FontSize")
  fontSize: option<__string>,
  @ocaml.doc(
    "Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match."
  )
  @as("FontResolution")
  fontResolution: option<__integerMin96Max600>,
  @ocaml.doc(
    "Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match."
  )
  @as("FontOpacity")
  fontOpacity: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match."
  )
  @as("FontColor")
  fontColor: option<burnInFontColor>,
  @ocaml.doc(
    "External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions,  embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match."
  )
  @as("Font")
  font: option<inputLocation>,
  @ocaml.doc(
    "Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match."
  )
  @as("BackgroundOpacity")
  backgroundOpacity: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match."
  )
  @as("BackgroundColor")
  backgroundColor: option<burnInBackgroundColor>,
  @ocaml.doc(
    "If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting \"smart\" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  All burn-in and DVB-Sub font settings must match."
  )
  @as("Alignment")
  alignment: option<burnInAlignment>,
}
@ocaml.doc("Blackout Slate")
type blackoutSlate = {
  @ocaml.doc(
    "When set to enabled, causes video, audio and captions to be blanked when indicated by program metadata."
  )
  @as("State")
  state: option<blackoutSlateState>,
  @ocaml.doc(
    "Provides Network ID that matches EIDR ID format (e.g., \"10.XXXX/XXXX-XXXX-XXXX-XXXX-XXXX-C\")."
  )
  @as("NetworkId")
  networkId: option<__stringMin34Max34>,
  @ocaml.doc(
    "Path to local file to use as Network End Blackout image. Image will be scaled to fill the entire output raster."
  )
  @as("NetworkEndBlackoutImage")
  networkEndBlackoutImage: option<inputLocation>,
  @ocaml.doc(
    "Setting to enabled causes the encoder to blackout the video, audio, and captions, and raise the \"Network Blackout Image\" slate when an SCTE104/35 Network End Segmentation Descriptor is encountered. The blackout will be lifted when the Network Start Segmentation Descriptor is encountered. The Network End and Network Start descriptors must contain a network ID that matches the value entered in \"Network ID\"."
  )
  @as("NetworkEndBlackout")
  networkEndBlackout: option<blackoutSlateNetworkEndBlackout>,
  @ocaml.doc(
    "Blackout slate image to be used. Leave empty for solid black. Only bmp and png images are supported."
  )
  @as("BlackoutSlateImage")
  blackoutSlateImage: option<inputLocation>,
}
@ocaml.doc("A list of schedule actions to delete.")
type batchScheduleActionDeleteRequest = {
  @ocaml.doc("A list of schedule actions to delete.") @as("ActionNames")
  actionNames: __listOf__string,
}
@ocaml.doc("Avail Settings")
type availSettings = {
  @as("Scte35TimeSignalApos") scte35TimeSignalApos: option<scte35TimeSignalApos>,
  @as("Scte35SpliceInsert") scte35SpliceInsert: option<scte35SpliceInsert>,
}
@ocaml.doc("Avail Blanking")
type availBlanking = {
  @ocaml.doc(
    "When set to enabled, causes video, audio and captions to be blanked when insertion metadata is added."
  )
  @as("State")
  state: option<availBlankingState>,
  @ocaml.doc(
    "Blanking image to be used. Leave empty for solid black. Only bmp and png images are supported."
  )
  @as("AvailBlankingImage")
  availBlankingImage: option<inputLocation>,
}
@ocaml.doc("Audio Only Hls Settings")
type audioOnlyHlsSettings = {
  @ocaml.doc("Specifies the segment type.") @as("SegmentType")
  segmentType: option<audioOnlyHlsSegmentType>,
  @ocaml.doc("Four types of audio-only tracks are supported:

Audio-Only Variant Stream
The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest.

Alternate Audio, Auto Select, Default
Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES

Alternate Audio, Auto Select, Not Default
Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES

Alternate Audio, not Auto Select
Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO")
  @as("AudioTrackType")
  audioTrackType: option<audioOnlyHlsTrackType>,
  @ocaml.doc("Optional. Specifies the .jpg or .png image to use as the cover art for an audio-only output. We recommend a low bit-size file because the image increases the output audio bandwidth.

The image is attached to the audio as an ID3 tag, frame type APIC, picture type 0x10, as per the \"ID3 tag version 2.4.0 - Native Frames\" standard.")
  @as("AudioOnlyImage")
  audioOnlyImage: option<inputLocation>,
  @ocaml.doc("Specifies the group to which the audio Rendition belongs.") @as("AudioGroupId")
  audioGroupId: option<__string>,
}
@ocaml.doc("Audio Codec Settings")
type audioCodecSettings = {
  @as("WavSettings") wavSettings: option<wavSettings>,
  @as("PassThroughSettings") passThroughSettings: option<passThroughSettings>,
  @as("Mp2Settings") mp2Settings: option<mp2Settings>,
  @as("Eac3Settings") eac3Settings: option<eac3Settings>,
  @as("Ac3Settings") ac3Settings: option<ac3Settings>,
  @as("AacSettings") aacSettings: option<aacSettings>,
}
@ocaml.doc("Archive Cdn Settings")
type archiveCdnSettings = {@as("ArchiveS3Settings") archiveS3Settings: option<archiveS3Settings>}
@ocaml.doc("Placeholder documentation for __listOfReservation")
type __listOfReservation = array<reservation>
@ocaml.doc("Placeholder documentation for __listOfOffering") type __listOfOffering = array<offering>
@ocaml.doc("Placeholder documentation for __listOfMultiplexSummary")
type __listOfMultiplexSummary = array<multiplexSummary>
@ocaml.doc("Placeholder documentation for __listOfMultiplexOutputDestination")
type __listOfMultiplexOutputDestination = array<multiplexOutputDestination>
@ocaml.doc("Placeholder documentation for __listOfInputDestination")
type __listOfInputDestination = array<inputDestination>
@ocaml.doc(
  "Specifies a particular video stream within an input source. An input may have only a single video selector."
)
type videoSelector = {
  @ocaml.doc("The video selector settings.") @as("SelectorSettings")
  selectorSettings: option<videoSelectorSettings>,
  @ocaml.doc(
    "Applies only if colorSpace is a value other than follow. This field controls how the value in the colorSpace field will be used. fallback means that when the input does include color space data, that data will be used, but when the input has no color space data, the value in colorSpace will be used. Choose fallback if your input is sometimes missing color space data, but when it does have color space data, that data is correct. force means to always use the value in colorSpace. Choose force if your input usually has no color space data or might have unreliable color space data."
  )
  @as("ColorSpaceUsage")
  colorSpaceUsage: option<videoSelectorColorSpaceUsage>,
  @ocaml.doc("Color space settings") @as("ColorSpaceSettings")
  colorSpaceSettings: option<videoSelectorColorSpaceSettings>,
  @ocaml.doc(
    "Specifies the color space of an input. This setting works in tandem with colorSpaceUsage and a video description's colorSpaceSettingsChoice to determine if any conversion will be performed."
  )
  @as("ColorSpace")
  colorSpace: option<videoSelectorColorSpace>,
}
@ocaml.doc("Udp Container Settings")
type udpContainerSettings = {@as("M2tsSettings") m2tsSettings: option<m2tsSettings>}
@ocaml.doc("SCTE-35 Descriptor settings.")
type scte35DescriptorSettings = {
  @ocaml.doc("SCTE-35 Segmentation Descriptor.")
  @as("SegmentationDescriptorScte35DescriptorSettings")
  segmentationDescriptorScte35DescriptorSettings: scte35SegmentationDescriptor,
}
@ocaml.doc("Settings for the action to set pause state of a channel.")
type pauseStateScheduleActionSettings = {
  @as("Pipelines") pipelines: option<__listOfPipelinePauseStateSettings>,
}
@ocaml.doc("Placeholder documentation for OutputDestination")
type outputDestination = {
  @ocaml.doc(
    "Destination settings for a standard output; one destination for each redundant encoder."
  )
  @as("Settings")
  settings: option<__listOfOutputDestinationSettings>,
  @ocaml.doc("Destination settings for a Multiplex output; one destination for both encoders.")
  @as("MultiplexSettings")
  multiplexSettings: option<multiplexProgramChannelDestinationSettings>,
  @ocaml.doc("Destination settings for a MediaPackage output; one destination for both encoders.")
  @as("MediaPackageSettings")
  mediaPackageSettings: option<__listOfMediaPackageOutputDestinationSettings>,
  @ocaml.doc("User-specified id. This is used in an output group or an output.") @as("Id")
  id: option<__string>,
}
@ocaml.doc("Multiplex Program settings configuration.")
type multiplexProgramSettings = {
  @ocaml.doc("Program video settings configuration.") @as("VideoSettings")
  videoSettings: option<multiplexVideoSettings>,
  @ocaml.doc("Transport stream service descriptor configuration for the Multiplex program.")
  @as("ServiceDescriptor")
  serviceDescriptor: option<multiplexProgramServiceDescriptor>,
  @ocaml.doc("Unique program number.") @as("ProgramNumber") programNumber: __integerMin0Max65535,
  @ocaml.doc("Indicates which pipeline is preferred by the multiplex for program ingest.")
  @as("PreferredChannelPipeline")
  preferredChannelPipeline: option<preferredChannelPipeline>,
}
@ocaml.doc("Mpeg2 Settings")
type mpeg2Settings = {
  @ocaml.doc("Determines how MediaLive inserts timecodes in the output video. For detailed information about setting up the input and the output for a timecode, see the section on \\\"MediaLive Features - Timecode configuration\\\" in the MediaLive User Guide.
DISABLED: do not include timecodes.
GOP_TIMECODE: Include timecode metadata in the GOP header.")
  @as("TimecodeInsertion")
  timecodeInsertion: option<mpeg2TimecodeInsertionBehavior>,
  @ocaml.doc("Relates to the GOP structure. If you do not know what GOP is, use the default.
FIXED: Set the number of B-frames in each sub-GOP to the value in gopNumBFrames.
DYNAMIC: Let MediaLive optimize the number of B-frames in each sub-GOP, to improve visual quality.")
  @as("SubgopLength")
  subgopLength: option<mpeg2SubGopLength>,
  @ocaml.doc("Set the scan type of the output to PROGRESSIVE or INTERLACED (top field first).")
  @as("ScanType")
  scanType: option<mpeg2ScanType>,
  @ocaml.doc(
    "Relates to the GOP structure. Specifies whether the gopSize is specified in frames or seconds. If you do not plan to change the default gopSize, leave the default. If you specify SECONDS, MediaLive will internally convert the gop size to a frame count."
  )
  @as("GopSizeUnits")
  gopSizeUnits: option<mpeg2GopSizeUnits>,
  @ocaml.doc("Relates to the GOP structure. The GOP size (keyframe interval) in the units specified in gopSizeUnits. If you do not know what GOP is, use the default.
If gopSizeUnits is frames, then the gopSize must be an integer and must be greater than or equal to 1.
If gopSizeUnits is seconds, the gopSize must be greater than 0, but does not need to be an integer.")
  @as("GopSize")
  gopSize: option<__double>,
  @ocaml.doc(
    "Relates to the GOP structure. The number of B-frames between reference frames. If you do not know what a B-frame is, use the default."
  )
  @as("GopNumBFrames")
  gopNumBFrames: option<__integerMin0Max7>,
  @ocaml.doc("MPEG2: default is open GOP.") @as("GopClosedCadence")
  gopClosedCadence: option<__integerMin0>,
  @ocaml.doc(
    "The framerate numerator. For example, 24000. The framerate is the numerator divided by the denominator. For example, 24000 / 1001 = 23.976 FPS."
  )
  @as("FramerateNumerator")
  framerateNumerator: __integerMin1,
  @ocaml.doc(
    "description\": \"The framerate denominator. For example, 1001. The framerate is the numerator divided by the denominator. For example, 24000 / 1001 = 23.976 FPS."
  )
  @as("FramerateDenominator")
  framerateDenominator: __integerMin1,
  @ocaml.doc(
    "Complete this field only when afdSignaling is set to FIXED. Enter the AFD value (4 bits) to write on all frames of the video encode."
  )
  @as("FixedAfd")
  fixedAfd: option<fixedAfd>,
  @ocaml.doc("Optionally specify a noise reduction filter, which can improve quality of compressed content. If you do not choose a filter, no filter will be applied.
TEMPORAL: This filter is useful for both source content that is noisy (when it has excessive digital artifacts) and source content that is clean.
When the content is noisy, the filter cleans up the source content before the encoding phase, with these two effects: First, it improves the output video quality because the content has been cleaned up. Secondly, it decreases the bandwidth because MediaLive does not waste bits on encoding noise.
When the content is reasonably clean, the filter tends to decrease the bitrate.")
  @as("FilterSettings")
  filterSettings: option<mpeg2FilterSettings>,
  @ocaml.doc("Sets the pixel aspect ratio for the encode.") @as("DisplayAspectRatio")
  displayAspectRatio: option<mpeg2DisplayRatio>,
  @ocaml.doc("Choose the type of color space conversion to apply to the output. For detailed information on setting up both the input and the output to obtain the desired color space in the output, see the section on \\\"MediaLive Features - Video - color space\\\" in the MediaLive User Guide.
PASSTHROUGH: Keep the color space of the input content - do not convert it.
AUTO:Convert all content that is SD to rec 601, and convert all content that is HD to rec 709.")
  @as("ColorSpace")
  colorSpace: option<mpeg2ColorSpace>,
  @ocaml.doc(
    "Specifies whether to include the color space metadata. The metadata describes the color space that applies to the video (the colorSpace field). We recommend that you insert the metadata."
  )
  @as("ColorMetadata")
  colorMetadata: option<mpeg2ColorMetadata>,
  @ocaml.doc("Indicates the AFD values that MediaLive will write into the video encode. If you do not know what AFD signaling is, or if your downstream system has not given you guidance, choose AUTO.
AUTO: MediaLive will try to preserve the input AFD value (in cases where multiple AFD values are valid).
FIXED: MediaLive will use the value you specify in fixedAFD.")
  @as("AfdSignaling")
  afdSignaling: option<afdSignaling>,
  @ocaml.doc(
    "Choose Off to disable adaptive quantization. Or choose another value to enable the quantizer and set its strength. The strengths are: Auto, Off, Low, Medium, High. When you enable this field, MediaLive allows intra-frame quantizers to vary, which might improve visual quality."
  )
  @as("AdaptiveQuantization")
  adaptiveQuantization: option<mpeg2AdaptiveQuantization>,
}
@ocaml.doc("Key Provider Settings")
type keyProviderSettings = {@as("StaticKeySettings") staticKeySettings: option<staticKeySettings>}
@ocaml.doc(
  "Settings for the \"switch input\" action: to switch from ingesting one input to ingesting another input."
)
type inputSwitchScheduleActionSettings = {
  @ocaml.doc(
    "The value for the variable portion of the URL for the dynamic input, for this instance of the input. Each time you use the same dynamic input in an input switch action, you can provide a different value, in order to connect the input to a different content source."
  )
  @as("UrlPath")
  urlPath: option<__listOf__string>,
  @ocaml.doc(
    "Settings to let you create a clip of the file input, in order to set up the input to ingest only a portion of the file."
  )
  @as("InputClippingSettings")
  inputClippingSettings: option<inputClippingSettings>,
  @ocaml.doc(
    "The name of the input attachment (not the name of the input!) to switch to. The name is specified in the channel configuration."
  )
  @as("InputAttachmentNameReference")
  inputAttachmentNameReference: __string,
}
@ocaml.doc("An Input Security Group")
type inputSecurityGroup = {
  @ocaml.doc("Whitelist rules and their sync status") @as("WhitelistRules")
  whitelistRules: option<__listOfInputWhitelistRule>,
  @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
  @ocaml.doc("The current state of the Input Security Group.") @as("State")
  state: option<inputSecurityGroupState>,
  @ocaml.doc("The list of inputs currently using this Input Security Group.") @as("Inputs")
  inputs: option<__listOf__string>,
  @ocaml.doc("The Id of the Input Security Group") @as("Id") id: option<__string>,
  @ocaml.doc("Unique ARN of Input Security Group") @as("Arn") arn: option<__string>,
}
@ocaml.doc("Action to prepare an input for a future immediate input switch.")
type inputPrepareScheduleActionSettings = {
  @ocaml.doc(
    "The value for the variable portion of the URL for the dynamic input, for this instance of the input. Each time you use the same dynamic input in an input switch action, you can provide a different value, in order to connect the input to a different content source."
  )
  @as("UrlPath")
  urlPath: option<__listOf__string>,
  @ocaml.doc(
    "Settings to let you create a clip of the file input, in order to set up the input to ingest only a portion of the file."
  )
  @as("InputClippingSettings")
  inputClippingSettings: option<inputClippingSettings>,
  @ocaml.doc(
    "The name of the input attachment that should be prepared by this action. If no name is provided, the action will stop the most recent prepare (if any) when activated."
  )
  @as("InputAttachmentNameReference")
  inputAttachmentNameReference: option<__string>,
}
@ocaml.doc("Details of the input device.")
type inputDeviceSummary = {
  @ocaml.doc("Settings that describe an input device that is type UHD.") @as("UhdDeviceSettings")
  uhdDeviceSettings: option<inputDeviceUhdSettings>,
  @ocaml.doc("The type of the input device.") @as("Type") type_: option<inputDeviceType>,
  @ocaml.doc("The unique serial number of the input device.") @as("SerialNumber")
  serialNumber: option<__string>,
  @ocaml.doc("Network settings for the input device.") @as("NetworkSettings")
  networkSettings: option<inputDeviceNetworkSettings>,
  @ocaml.doc("A name that you specify for the input device.") @as("Name") name: option<__string>,
  @ocaml.doc("The network MAC address of the input device.") @as("MacAddress")
  macAddress: option<__string>,
  @ocaml.doc("The unique ID of the input device.") @as("Id") id: option<__string>,
  @ocaml.doc("Settings that describe an input device that is type HD.") @as("HdDeviceSettings")
  hdDeviceSettings: option<inputDeviceHdSettings>,
  @ocaml.doc("The status of software on the input device.") @as("DeviceUpdateStatus")
  deviceUpdateStatus: option<deviceUpdateStatus>,
  @ocaml.doc(
    "The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration."
  )
  @as("DeviceSettingsSyncState")
  deviceSettingsSyncState: option<deviceSettingsSyncState>,
  @ocaml.doc("The state of the connection between the input device and AWS.") @as("ConnectionState")
  connectionState: option<inputDeviceConnectionState>,
  @ocaml.doc("The unique ARN of the input device.") @as("Arn") arn: option<__string>,
}
@ocaml.doc("Hls Settings")
type hlsSettings = {
  @as("StandardHlsSettings") standardHlsSettings: option<standardHlsSettings>,
  @as("FrameCaptureHlsSettings") frameCaptureHlsSettings: option<frameCaptureHlsSettings>,
  @as("Fmp4HlsSettings") fmp4HlsSettings: option<fmp4HlsSettings>,
  @as("AudioOnlyHlsSettings") audioOnlyHlsSettings: option<audioOnlyHlsSettings>,
}
@ocaml.doc("H265 Settings")
type h265Settings = {
  @ocaml.doc("Determines how timecodes should be inserted into the video elementary stream.
- 'disabled': Do not include timecodes
- 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config")
  @as("TimecodeInsertion")
  timecodeInsertion: option<h265TimecodeInsertionBehavior>,
  @ocaml.doc("H.265 Tier.") @as("Tier") tier: option<h265Tier>,
  @ocaml.doc("Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.")
  @as("Slices")
  slices: option<__integerMin1Max16>,
  @ocaml.doc("Scene change detection.") @as("SceneChangeDetect")
  sceneChangeDetect: option<h265SceneChangeDetect>,
  @ocaml.doc("Sets the scan type of the output to progressive or top-field-first interlaced.")
  @as("ScanType")
  scanType: option<h265ScanType>,
  @ocaml.doc("Rate control mode.

QVBR: Quality will match the specified quality level except when it is constrained by the
maximum bitrate.  Recommended if you or your viewers pay for bandwidth.

CBR: Quality varies, depending on the video complexity. Recommended only if you distribute
your assets to devices that cannot handle variable bitrates.

Multiplex: This rate control mode is only supported (and is required) when the video is being
delivered to a MediaLive Multiplex in which case the rate control configuration is controlled
by the properties within the Multiplex Program.")
  @as("RateControlMode")
  rateControlMode: option<h265RateControlMode>,
  @ocaml.doc("Controls the target quality for the video encode. Applies only when the rate control mode is QVBR. Set values for the QVBR quality level field and Max bitrate field that suit your most important viewing devices. Recommended values are:
- Primary screen: Quality level: 8 to 10. Max bitrate: 4M
- PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M
- Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M")
  @as("QvbrQualityLevel")
  qvbrQualityLevel: option<__integerMin1Max10>,
  @ocaml.doc("H.265 Profile.") @as("Profile") profile: option<h265Profile>,
  @ocaml.doc("Pixel Aspect Ratio numerator.") @as("ParNumerator")
  parNumerator: option<__integerMin1>,
  @ocaml.doc("Pixel Aspect Ratio denominator.") @as("ParDenominator")
  parDenominator: option<__integerMin1>,
  @ocaml.doc(
    "Only meaningful if sceneChangeDetect is set to enabled.  Defaults to 5 if multiplex rate control is used.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1"
  )
  @as("MinIInterval")
  minIInterval: option<__integerMin0Max30>,
  @ocaml.doc("For QVBR: See the tooltip for Quality level") @as("MaxBitrate")
  maxBitrate: option<__integerMin100000Max40000000>,
  @ocaml.doc(
    "Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content."
  )
  @as("LookAheadRateControl")
  lookAheadRateControl: option<h265LookAheadRateControl>,
  @ocaml.doc("H.265 Level.") @as("Level") level: option<h265Level>,
  @ocaml.doc(
    "Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time."
  )
  @as("GopSizeUnits")
  gopSizeUnits: option<h265GopSizeUnits>,
  @ocaml.doc("GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits.
If gopSizeUnits is frames, gopSize must be an integer and must be greater than or equal to 1.
If gopSizeUnits is seconds, gopSize must be greater than 0, but need not be an integer.")
  @as("GopSize")
  gopSize: option<__double>,
  @ocaml.doc(
    "Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting."
  )
  @as("GopClosedCadence")
  gopClosedCadence: option<__integerMin0>,
  @ocaml.doc("Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.")
  @as("FramerateNumerator")
  framerateNumerator: __integerMin1,
  @ocaml.doc("Framerate denominator.") @as("FramerateDenominator")
  framerateDenominator: __integerMin1Max3003,
  @ocaml.doc(
    "If set to enabled, adjust quantization within each frame to reduce flicker or 'pop' on I-frames."
  )
  @as("FlickerAq")
  flickerAq: option<h265FlickerAq>,
  @ocaml.doc(
    "Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'."
  )
  @as("FixedAfd")
  fixedAfd: option<fixedAfd>,
  @ocaml.doc("Optional filters that you can apply to an encode.") @as("FilterSettings")
  filterSettings: option<h265FilterSettings>,
  @ocaml.doc("Color Space settings") @as("ColorSpaceSettings")
  colorSpaceSettings: option<h265ColorSpaceSettings>,
  @ocaml.doc("Includes colorspace metadata in the output.") @as("ColorMetadata")
  colorMetadata: option<h265ColorMetadata>,
  @ocaml.doc("Size of buffer (HRD buffer model) in bits.") @as("BufSize")
  bufSize: option<__integerMin100000Max80000000>,
  @ocaml.doc(
    "Average bitrate in bits/second. Required when the rate control mode is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output must have a unique value when its bitrate is rounded down to the nearest multiple of 1000."
  )
  @as("Bitrate")
  bitrate: option<__integerMin100000Max40000000>,
  @ocaml.doc(
    "Whether or not EML should insert an Alternative Transfer Function SEI message to support backwards compatibility with non-HDR decoders and displays."
  )
  @as("AlternativeTransferFunction")
  alternativeTransferFunction: option<h265AlternativeTransferFunction>,
  @ocaml.doc(
    "Indicates that AFD values will be written into the output stream.  If afdSignaling is \"auto\", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to \"fixed\", the AFD value will be the value configured in the fixedAfd parameter."
  )
  @as("AfdSignaling")
  afdSignaling: option<afdSignaling>,
  @ocaml.doc(
    "Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality."
  )
  @as("AdaptiveQuantization")
  adaptiveQuantization: option<h265AdaptiveQuantization>,
}
@ocaml.doc("H264 Settings")
type h264Settings = {
  @ocaml.doc("Determines how timecodes should be inserted into the video elementary stream.
- 'disabled': Do not include timecodes
- 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config")
  @as("TimecodeInsertion")
  timecodeInsertion: option<h264TimecodeInsertionBehavior>,
  @ocaml.doc(
    "Temporal makes adjustments within each frame based on temporal variation of content complexity. The value to enter in this field depends on the value in the Adaptive quantization field: If you have set the Adaptive quantization field to Auto, MediaLive ignores any value in this field. MediaLive will determine if temporal AQ is appropriate and will apply the appropriate strength. If you have set the Adaptive quantization field to a strength, you can set this field to Enabled or Disabled. Enabled: MediaLive will apply temporal AQ using the specified strength. Disabled: MediaLive won't apply temporal AQ. If you have set the Adaptive quantization to Disabled, MediaLive ignores any value in this field and doesn't apply temporal AQ."
  )
  @as("TemporalAq")
  temporalAq: option<h264TemporalAq>,
  @ocaml.doc("Produces a bitstream compliant with SMPTE RP-2027.") @as("Syntax")
  syntax: option<h264Syntax>,
  @ocaml.doc(
    "If set to fixed, use gopNumBFrames B-frames per sub-GOP. If set to dynamic, optimize the number of B-frames used for each sub-GOP to improve visual quality."
  )
  @as("SubgopLength")
  subgopLength: option<h264SubGopLength>,
  @ocaml.doc(
    "Spatial AQ makes adjustments within each frame based on spatial variation of content complexity. The value to enter in this field depends on the value in the Adaptive quantization field: If you have set the Adaptive quantization field to Auto, MediaLive ignores any value in this field. MediaLive will determine if spatial AQ is appropriate and will apply the appropriate strength. If you have set the Adaptive quantization field to a strength, you can set this field to Enabled or Disabled. Enabled: MediaLive will apply spatial AQ using the specified strength. Disabled: MediaLive won't apply spatial AQ. If you have set the Adaptive quantization to Disabled, MediaLive ignores any value in this field and doesn't apply spatial AQ."
  )
  @as("SpatialAq")
  spatialAq: option<h264SpatialAq>,
  @ocaml.doc(
    "Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.  If not set to zero, must be greater than 15."
  )
  @as("Softness")
  softness: option<__integerMin0Max128>,
  @ocaml.doc("Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.")
  @as("Slices")
  slices: option<__integerMin1Max32>,
  @ocaml.doc("Scene change detection.

- On: inserts I-frames when scene change is detected.
- Off: does not force an I-frame when scene change is detected.")
  @as("SceneChangeDetect")
  sceneChangeDetect: option<h264SceneChangeDetect>,
  @ocaml.doc("Sets the scan type of the output to progressive or top-field-first interlaced.")
  @as("ScanType")
  scanType: option<h264ScanType>,
  @ocaml.doc("Rate control mode.

QVBR: Quality will match the specified quality level except when it is constrained by the
maximum bitrate.  Recommended if you or your viewers pay for bandwidth.

VBR: Quality and bitrate vary, depending on the video complexity. Recommended instead of QVBR
if you want to maintain a specific average bitrate over the duration of the channel.

CBR: Quality varies, depending on the video complexity. Recommended only if you distribute
your assets to devices that cannot handle variable bitrates.

Multiplex: This rate control mode is only supported (and is required) when the video is being
delivered to a MediaLive Multiplex in which case the rate control configuration is controlled
by the properties within the Multiplex Program.")
  @as("RateControlMode")
  rateControlMode: option<h264RateControlMode>,
  @ocaml.doc("Controls the target quality for the video encode. Applies only when the rate control mode is QVBR. You can set a target quality or you can let MediaLive determine the best quality. To set a target quality, enter values in the QVBR quality level field and the Max bitrate field. Enter values that suit your most important viewing devices. Recommended values are:
- Primary screen: Quality level: 8 to 10. Max bitrate: 4M
- PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M
- Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
To let MediaLive decide, leave the QVBR quality level field empty, and in Max bitrate enter the maximum rate you want in the video. For more information, see the section called \"Video - rate control mode\" in the MediaLive user guide")
  @as("QvbrQualityLevel")
  qvbrQualityLevel: option<__integerMin1Max10>,
  @ocaml.doc("Leave as STANDARD_QUALITY or choose a different value (which might result in additional costs to run the channel).
- ENHANCED_QUALITY: Produces a slightly better video quality without an increase in the bitrate. Has an effect only when the Rate control mode is QVBR or CBR. If this channel is in a MediaLive multiplex, the value must be ENHANCED_QUALITY.
- STANDARD_QUALITY: Valid for any Rate control mode.")
  @as("QualityLevel")
  qualityLevel: option<h264QualityLevel>,
  @ocaml.doc("H.264 Profile.") @as("Profile") profile: option<h264Profile>,
  @ocaml.doc("Pixel Aspect Ratio numerator.") @as("ParNumerator")
  parNumerator: option<__integerMin1>,
  @ocaml.doc("Pixel Aspect Ratio denominator.") @as("ParDenominator")
  parDenominator: option<__integerMin1>,
  @ocaml.doc(
    "This field indicates how the output pixel aspect ratio is specified.  If \"specified\" is selected then the output video pixel aspect ratio is determined by parNumerator and parDenominator, else if \"initializeFromSource\" is selected then the output pixsel aspect ratio will be set equal to the input video pixel aspect ratio of the first input."
  )
  @as("ParControl")
  parControl: option<h264ParControl>,
  @ocaml.doc(
    "Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding."
  )
  @as("NumRefFrames")
  numRefFrames: option<__integerMin1Max6>,
  @ocaml.doc(
    "Only meaningful if sceneChangeDetect is set to enabled.  Defaults to 5 if multiplex rate control is used.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1"
  )
  @as("MinIInterval")
  minIInterval: option<__integerMin0Max30>,
  @ocaml.doc("For QVBR: See the tooltip for Quality level

For VBR: Set the maximum bitrate in order to accommodate expected spikes in the complexity of the video.")
  @as("MaxBitrate")
  maxBitrate: option<__integerMin1000>,
  @ocaml.doc(
    "Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content."
  )
  @as("LookAheadRateControl")
  lookAheadRateControl: option<h264LookAheadRateControl>,
  @ocaml.doc("H.264 Level.") @as("Level") level: option<h264Level>,
  @ocaml.doc(
    "Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time."
  )
  @as("GopSizeUnits")
  gopSizeUnits: option<h264GopSizeUnits>,
  @ocaml.doc("GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits.
If gopSizeUnits is frames, gopSize must be an integer and must be greater than or equal to 1.
If gopSizeUnits is seconds, gopSize must be greater than 0, but need not be an integer.")
  @as("GopSize")
  gopSize: option<__double>,
  @ocaml.doc("Number of B-frames between reference frames.") @as("GopNumBFrames")
  gopNumBFrames: option<__integerMin0Max7>,
  @ocaml.doc(
    "Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting."
  )
  @as("GopClosedCadence")
  gopClosedCadence: option<__integerMin0>,
  @ocaml.doc("Documentation update needed") @as("GopBReference")
  gopBReference: option<h264GopBReference>,
  @ocaml.doc("Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.")
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin1>,
  @ocaml.doc("Framerate denominator.") @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1>,
  @ocaml.doc(
    "This field indicates how the output video frame rate is specified.  If \"specified\" is selected then the output video frame rate is determined by framerateNumerator and framerateDenominator, else if \"initializeFromSource\" is selected then the output video frame rate will be set equal to the input video frame rate of the first input."
  )
  @as("FramerateControl")
  framerateControl: option<h264FramerateControl>,
  @ocaml.doc("This setting applies only when scan type is \"interlaced.\" It controls whether coding is performed on a field basis or on a frame basis. (When the video is progressive, the coding is always performed on a frame basis.)
enabled: Force MediaLive to code on a field basis, so that odd and even sets of fields are coded separately.
disabled: Code the two sets of fields separately (on a field basis) or together (on a frame basis using PAFF), depending on what is most appropriate for the content.")
  @as("ForceFieldPictures")
  forceFieldPictures: option<h264ForceFieldPictures>,
  @ocaml.doc(
    "Flicker AQ makes adjustments within each frame to reduce flicker or 'pop' on I-frames. The value to enter in this field depends on the value in the Adaptive quantization field: If you have set the Adaptive quantization field to Auto, MediaLive ignores any value in this field. MediaLive will determine if flicker AQ is appropriate and will apply the appropriate strength. If you have set the Adaptive quantization field to a strength, you can set this field to Enabled or Disabled. Enabled: MediaLive will apply flicker AQ using the specified strength. Disabled: MediaLive won't apply flicker AQ. If you have set the Adaptive quantization to Disabled, MediaLive ignores any value in this field and doesn't apply flicker AQ."
  )
  @as("FlickerAq")
  flickerAq: option<h264FlickerAq>,
  @ocaml.doc(
    "Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'."
  )
  @as("FixedAfd")
  fixedAfd: option<fixedAfd>,
  @ocaml.doc("Optional filters that you can apply to an encode.") @as("FilterSettings")
  filterSettings: option<h264FilterSettings>,
  @ocaml.doc("Entropy encoding mode.  Use cabac (must be in Main or High profile) or cavlc.")
  @as("EntropyEncoding")
  entropyEncoding: option<h264EntropyEncoding>,
  @ocaml.doc("Color Space settings") @as("ColorSpaceSettings")
  colorSpaceSettings: option<h264ColorSpaceSettings>,
  @ocaml.doc("Includes colorspace metadata in the output.") @as("ColorMetadata")
  colorMetadata: option<h264ColorMetadata>,
  @ocaml.doc("Size of buffer (HRD buffer model) in bits.") @as("BufSize")
  bufSize: option<__integerMin0>,
  @ocaml.doc("Percentage of the buffer that should initially be filled (HRD buffer model).")
  @as("BufFillPct")
  bufFillPct: option<__integerMin0Max100>,
  @ocaml.doc(
    "Average bitrate in bits/second. Required when the rate control mode is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output must have a unique value when its bitrate is rounded down to the nearest multiple of 1000."
  )
  @as("Bitrate")
  bitrate: option<__integerMin1000>,
  @ocaml.doc(
    "Indicates that AFD values will be written into the output stream.  If afdSignaling is \"auto\", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to \"fixed\", the AFD value will be the value configured in the fixedAfd parameter."
  )
  @as("AfdSignaling")
  afdSignaling: option<afdSignaling>,
  @ocaml.doc(
    "Enables or disables adaptive quantization, which is a technique MediaLive can apply to video on a frame-by-frame basis to produce more compression without losing quality. There are three types of adaptive quantization: flicker, spatial, and temporal. Set the field in one of these ways: Set to Auto. Recommended. For each type of AQ, MediaLive will determine if AQ is needed, and if so, the appropriate strength. Set a strength (a value other than Auto or Disable). This strength will apply to any of the AQ fields that you choose to enable. Set to Disabled to disable all types of adaptive quantization."
  )
  @as("AdaptiveQuantization")
  adaptiveQuantization: option<h264AdaptiveQuantization>,
}
@ocaml.doc("Global Configuration")
type globalConfiguration = {
  @ocaml.doc(
    "Adjusts video input buffer for streams with very low video framerates. This is commonly set to enabled for music channels with less than one video frame per second."
  )
  @as("SupportLowFramerateInputs")
  supportLowFramerateInputs: option<globalConfigurationLowFramerateInputs>,
  @ocaml.doc(
    "Indicates whether the rate of frames emitted by the Live encoder should be paced by its system clock (which optionally may be locked to another source via NTP) or should be locked to the clock of the source that is providing the input stream."
  )
  @as("OutputTimingSource")
  outputTimingSource: option<globalConfigurationOutputTimingSource>,
  @ocaml.doc("Indicates how MediaLive pipelines are synchronized.

PIPELINE_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the other.
EPOCH_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the Unix epoch.")
  @as("OutputLockingMode")
  outputLockingMode: option<globalConfigurationOutputLockingMode>,
  @ocaml.doc("Settings for system actions when input is lost.") @as("InputLossBehavior")
  inputLossBehavior: option<inputLossBehavior>,
  @ocaml.doc(
    "Indicates the action to take when the current input completes (e.g. end-of-file). When switchAndLoopInputs is configured the encoder will restart at the beginning of the first input.  When \"none\" is configured the encoder will transcode either black, a solid color, or a user specified slate images per the \"Input Loss Behavior\" configuration until the next input switch occurs (which is controlled through the Channel Schedule API)."
  )
  @as("InputEndAction")
  inputEndAction: option<globalConfigurationInputEndAction>,
  @ocaml.doc("Value to set the initial audio gain for the Live Event.") @as("InitialAudioGain")
  initialAudioGain: option<__integerMinNegative60Max60>,
}
@ocaml.doc("Frame Capture Group Settings")
type frameCaptureGroupSettings = {
  @ocaml.doc("Parameters that control interactions with the CDN.") @as("FrameCaptureCdnSettings")
  frameCaptureCdnSettings: option<frameCaptureCdnSettings>,
  @ocaml.doc(
    "The destination for the frame capture files. Either the URI for an Amazon S3 bucket and object, plus a file name prefix (for example, s3ssl://sportsDelivery/highlights/20180820/curling-) or the URI for a MediaStore container, plus a file name prefix (for example, mediastoressl://sportsDelivery/20180820/curling-). The final file names consist of the prefix from the destination field (for example, \"curling-\") + name modifier + the counter (5 digits, starting from 00001) + extension (which is always .jpg).  For example, curling-low.00001.jpg"
  )
  @as("Destination")
  destination: outputLocationRef,
}
@ocaml.doc(
  "Failover Condition settings. There can be multiple failover conditions inside AutomaticInputFailoverSettings."
)
type failoverCondition = {
  @ocaml.doc("Failover condition type-specific settings.") @as("FailoverConditionSettings")
  failoverConditionSettings: option<failoverConditionSettings>,
}
@ocaml.doc("Caption Selector Settings")
type captionSelectorSettings = {
  @as("TeletextSourceSettings") teletextSourceSettings: option<teletextSourceSettings>,
  @as("Scte27SourceSettings") scte27SourceSettings: option<scte27SourceSettings>,
  @as("Scte20SourceSettings") scte20SourceSettings: option<scte20SourceSettings>,
  @as("EmbeddedSourceSettings") embeddedSourceSettings: option<embeddedSourceSettings>,
  @as("DvbSubSourceSettings") dvbSubSourceSettings: option<dvbSubSourceSettings>,
  @as("AribSourceSettings") aribSourceSettings: option<aribSourceSettings>,
  @as("AncillarySourceSettings") ancillarySourceSettings: option<ancillarySourceSettings>,
}
@ocaml.doc("Caption Destination Settings")
type captionDestinationSettings = {
  @as("WebvttDestinationSettings") webvttDestinationSettings: option<webvttDestinationSettings>,
  @as("TtmlDestinationSettings") ttmlDestinationSettings: option<ttmlDestinationSettings>,
  @as("TeletextDestinationSettings")
  teletextDestinationSettings: option<teletextDestinationSettings>,
  @as("SmpteTtDestinationSettings") smpteTtDestinationSettings: option<smpteTtDestinationSettings>,
  @as("Scte27DestinationSettings") scte27DestinationSettings: option<scte27DestinationSettings>,
  @as("Scte20PlusEmbeddedDestinationSettings")
  scte20PlusEmbeddedDestinationSettings: option<scte20PlusEmbeddedDestinationSettings>,
  @as("RtmpCaptionInfoDestinationSettings")
  rtmpCaptionInfoDestinationSettings: option<rtmpCaptionInfoDestinationSettings>,
  @as("EmbeddedPlusScte20DestinationSettings")
  embeddedPlusScte20DestinationSettings: option<embeddedPlusScte20DestinationSettings>,
  @as("EmbeddedDestinationSettings")
  embeddedDestinationSettings: option<embeddedDestinationSettings>,
  @as("EbuTtDDestinationSettings") ebuTtDDestinationSettings: option<ebuTtDDestinationSettings>,
  @as("DvbSubDestinationSettings") dvbSubDestinationSettings: option<dvbSubDestinationSettings>,
  @as("BurnInDestinationSettings") burnInDestinationSettings: option<burnInDestinationSettings>,
  @as("AribDestinationSettings") aribDestinationSettings: option<aribDestinationSettings>,
}
@ocaml.doc("Avail Configuration")
type availConfiguration = {
  @ocaml.doc("Ad avail settings.") @as("AvailSettings") availSettings: option<availSettings>,
}
@ocaml.doc("Audio Watermark Settings")
type audioWatermarkSettings = {
  @ocaml.doc("Settings to configure Nielsen Watermarks in the audio encode")
  @as("NielsenWatermarksSettings")
  nielsenWatermarksSettings: option<nielsenWatermarksSettings>,
}
@ocaml.doc("Audio Track Selection")
type audioTrackSelection = {
  @ocaml.doc("Selects one or more unique audio tracks from within a source.") @as("Tracks")
  tracks: __listOfAudioTrack,
}
@ocaml.doc("Audio Channel Mapping")
type audioChannelMapping = {
  @ocaml.doc("The index of the output channel being produced.") @as("OutputChannel")
  outputChannel: __integerMin0Max7,
  @ocaml.doc(
    "Indices and gain values for each input channel that should be remixed into this output channel."
  )
  @as("InputChannelLevels")
  inputChannelLevels: __listOfInputChannelLevel,
}
@ocaml.doc("Archive Group Settings")
type archiveGroupSettings = {
  @ocaml.doc("Number of seconds to write to archive file before closing and starting a new one.")
  @as("RolloverInterval")
  rolloverInterval: option<__integerMin1>,
  @ocaml.doc("A directory and base filename where archive files should be written.")
  @as("Destination")
  destination: outputLocationRef,
  @ocaml.doc("Parameters that control interactions with the CDN.") @as("ArchiveCdnSettings")
  archiveCdnSettings: option<archiveCdnSettings>,
}
@ocaml.doc("Archive Container Settings")
type archiveContainerSettings = {
  @as("RawSettings") rawSettings: option<rawSettings>,
  @as("M2tsSettings") m2tsSettings: option<m2tsSettings>,
}
@ocaml.doc("Placeholder documentation for __listOfOutputDestination")
type __listOfOutputDestination = array<outputDestination>
@ocaml.doc("Placeholder documentation for __listOfInputSecurityGroup")
type __listOfInputSecurityGroup = array<inputSecurityGroup>
@ocaml.doc("Placeholder documentation for __listOfInputDeviceSummary")
type __listOfInputDeviceSummary = array<inputDeviceSummary>
@ocaml.doc("Placeholder documentation for __listOfFailoverCondition")
type __listOfFailoverCondition = array<failoverCondition>
@ocaml.doc("Placeholder documentation for __listOfAudioChannelMapping")
type __listOfAudioChannelMapping = array<audioChannelMapping>
@ocaml.doc("Video Codec Settings")
type videoCodecSettings = {
  @as("Mpeg2Settings") mpeg2Settings: option<mpeg2Settings>,
  @as("H265Settings") h265Settings: option<h265Settings>,
  @as("H264Settings") h264Settings: option<h264Settings>,
  @as("FrameCaptureSettings") frameCaptureSettings: option<frameCaptureSettings>,
}
@ocaml.doc("Udp Output Settings")
type udpOutputSettings = {
  @ocaml.doc("Settings for enabling and adjusting Forward Error Correction on UDP outputs.")
  @as("FecOutputSettings")
  fecOutputSettings: option<fecOutputSettings>,
  @ocaml.doc(
    "Destination address and port number for RTP or UDP packets. Can be unicast or multicast RTP or UDP (eg. rtp://239.10.10.10:5001 or udp://10.100.100.100:5002)."
  )
  @as("Destination")
  destination: outputLocationRef,
  @as("ContainerSettings") containerSettings: udpContainerSettings,
  @ocaml.doc(
    "UDP output buffering in milliseconds. Larger values increase latency through the transcoder but simultaneously assist the transcoder in maintaining a constant, low-jitter UDP/RTP output while accommodating clock recovery, input switching, input disruptions, picture reordering, etc."
  )
  @as("BufferMsec")
  bufferMsec: option<__integerMin0Max10000>,
}
@ocaml.doc("Holds one set of SCTE-35 Descriptor Settings.")
type scte35Descriptor = {
  @ocaml.doc("SCTE-35 Descriptor Settings.") @as("Scte35DescriptorSettings")
  scte35DescriptorSettings: scte35DescriptorSettings,
}
@ocaml.doc("The multiplex program object.")
type multiplexProgram = {
  @ocaml.doc("The name of the multiplex program.") @as("ProgramName") programName: option<__string>,
  @ocaml.doc(
    "Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time."
  )
  @as("PipelineDetails")
  pipelineDetails: option<__listOfMultiplexProgramPipelineDetail>,
  @ocaml.doc("The packet identifier map for this multiplex program.") @as("PacketIdentifiersMap")
  packetIdentifiersMap: option<multiplexProgramPacketIdentifiersMap>,
  @ocaml.doc("The settings for this multiplex program.") @as("MultiplexProgramSettings")
  multiplexProgramSettings: option<multiplexProgramSettings>,
  @ocaml.doc("The MediaLive channel associated with the program.") @as("ChannelId")
  channelId: option<__string>,
}
@ocaml.doc("The multiplex object.")
type multiplex = {
  @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
  @ocaml.doc("The current state of the multiplex.") @as("State") state: option<multiplexState>,
  @ocaml.doc("The number of programs in the multiplex.") @as("ProgramCount")
  programCount: option<__integer>,
  @ocaml.doc("The number of currently healthy pipelines.") @as("PipelinesRunningCount")
  pipelinesRunningCount: option<__integer>,
  @ocaml.doc("The name of the multiplex.") @as("Name") name: option<__string>,
  @ocaml.doc("Configuration for a multiplex event.") @as("MultiplexSettings")
  multiplexSettings: option<multiplexSettings>,
  @ocaml.doc("The unique id of the multiplex.") @as("Id") id: option<__string>,
  @ocaml.doc("A list of the multiplex output destinations.") @as("Destinations")
  destinations: option<__listOfMultiplexOutputDestination>,
  @ocaml.doc("A list of availability zones for the multiplex.") @as("AvailabilityZones")
  availabilityZones: option<__listOf__string>,
  @ocaml.doc("The unique arn of the multiplex.") @as("Arn") arn: option<__string>,
}
@ocaml.doc("Placeholder documentation for Input")
type input = {
  @as("Type") type_: option<inputType>,
  @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
  @as("State") state: option<inputState>,
  @ocaml.doc("A list of the sources of the input (PULL-type).") @as("Sources")
  sources: option<__listOfInputSource>,
  @ocaml.doc("A list of IDs for all the Input Security Groups attached to the input.")
  @as("SecurityGroups")
  securityGroups: option<__listOf__string>,
  @ocaml.doc(
    "The Amazon Resource Name (ARN) of the role this input assumes during and after creation."
  )
  @as("RoleArn")
  roleArn: option<__string>,
  @ocaml.doc("The user-assigned name (This is a mutable value).") @as("Name")
  name: option<__string>,
  @ocaml.doc("A list of MediaConnect Flows for this input.") @as("MediaConnectFlows")
  mediaConnectFlows: option<__listOfMediaConnectFlow>,
  @ocaml.doc("Certain pull input sources can be dynamic, meaning that they can have their URL's dynamically changes
during input switch actions. Presently, this functionality only works with MP4_FILE and TS_FILE inputs.")
  @as("InputSourceType")
  inputSourceType: option<inputSourceType>,
  @ocaml.doc("A list of IDs for all Inputs which are partners of this one.") @as("InputPartnerIds")
  inputPartnerIds: option<__listOf__string>,
  @ocaml.doc("Settings for the input devices.") @as("InputDevices")
  inputDevices: option<__listOfInputDeviceSettings>,
  @ocaml.doc("STANDARD - MediaLive expects two sources to be connected to this input. If the channel is also STANDARD, both sources will be ingested. If the channel is SINGLE_PIPELINE, only the first source will be ingested; the second source will always be ignored, even if the first source fails.
SINGLE_PIPELINE - You can connect only one source to this input. If the ChannelClass is also  SINGLE_PIPELINE, this value is valid. If the ChannelClass is STANDARD, this value is not valid because the channel requires two sources in the input.")
  @as("InputClass")
  inputClass: option<inputClass>,
  @ocaml.doc("The generated ID of the input (unique for user account, immutable).") @as("Id")
  id: option<__string>,
  @ocaml.doc("A list of the destinations of the input (PUSH-type).") @as("Destinations")
  destinations: option<__listOfInputDestination>,
  @ocaml.doc(
    "A list of channel IDs that that input is attached to (currently an input can only be attached to one channel)."
  )
  @as("AttachedChannels")
  attachedChannels: option<__listOf__string>,
  @ocaml.doc("The Unique ARN of the input (generated, immutable).") @as("Arn")
  arn: option<__string>,
}
@ocaml.doc("Hls Output Settings")
type hlsOutputSettings = {
  @ocaml.doc("String concatenated to end of segment filenames.") @as("SegmentModifier")
  segmentModifier: option<__string>,
  @ocaml.doc(
    "String concatenated to the end of the destination filename. Accepts \\\"Format Identifiers\\\":#formatIdentifierParameters."
  )
  @as("NameModifier")
  nameModifier: option<__stringMin1>,
  @ocaml.doc(
    "Settings regarding the underlying stream. These settings are different for audio-only outputs."
  )
  @as("HlsSettings")
  hlsSettings: hlsSettings,
  @ocaml.doc("Only applicable when this output is referencing an H.265 video description.
Specifies whether MP4 segments should be packaged as HEV1 or HVC1.")
  @as("H265PackagingType")
  h265PackagingType: option<hlsH265PackagingType>,
}
@ocaml.doc("Hls Group Settings")
type hlsGroupSettings = {
  @ocaml.doc("SEGMENTED_FILES: Emit the program as segments - multiple .ts media files.

SINGLE_FILE: Applies only if Mode field is VOD. Emit the program as a single .ts media file. The media manifest includes #EXT-X-BYTERANGE tags to index segments for playback. A typical use for this value is when sending the output to AWS Elemental MediaConvert, which can accept only a single media file. Playback while the channel is running is not guaranteed due to HTTP server caching.")
  @as("TsFileMode")
  tsFileMode: option<hlsTsFileMode>,
  @ocaml.doc("Provides an extra millisecond delta offset to fine tune the timestamps.")
  @as("TimestampDeltaMilliseconds")
  timestampDeltaMilliseconds: option<__integerMin0>,
  @ocaml.doc("Timed Metadata interval in seconds.") @as("TimedMetadataId3Period")
  timedMetadataId3Period: option<__integerMin0>,
  @ocaml.doc("Indicates ID3 frame that has the timecode.") @as("TimedMetadataId3Frame")
  timedMetadataId3Frame: option<hlsTimedMetadataId3Frame>,
  @ocaml.doc(
    "Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest."
  )
  @as("StreamInfResolution")
  streamInfResolution: option<hlsStreamInfResolution>,
  @ocaml.doc(
    "Number of segments to write to a subdirectory before starting a new one. directoryStructure must be subdirectoryPerStream for this setting to have an effect."
  )
  @as("SegmentsPerSubdirectory")
  segmentsPerSubdirectory: option<__integerMin1>,
  @ocaml.doc(
    "useInputSegmentation has been deprecated. The configured segment size is always used."
  )
  @as("SegmentationMode")
  segmentationMode: option<hlsSegmentationMode>,
  @ocaml.doc(
    "Length of MPEG-2 Transport Stream segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer."
  )
  @as("SegmentLength")
  segmentLength: option<__integerMin1>,
  @ocaml.doc("ENABLED: The master manifest (.m3u8 file) for each pipeline includes information about both pipelines: first its own media files, then the media files of the other pipeline. This feature allows playout device that support stale manifest detection to switch from one manifest to the other, when the current manifest seems to be stale. There are still two destinations and two master manifests, but both master manifests reference the media files from both pipelines.

DISABLED: The master manifest (.m3u8 file) for each pipeline includes information about its own pipeline only.

For an HLS output group with MediaPackage as the destination, the DISABLED behavior is always followed. MediaPackage regenerates the manifests it serves to players so a redundant manifest from MediaLive is irrelevant.")
  @as("RedundantManifest")
  redundantManifest: option<hlsRedundantManifest>,
  @ocaml.doc("Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.")
  @as("ProgramDateTimePeriod")
  programDateTimePeriod: option<__integerMin0Max3600>,
  @ocaml.doc("Specifies the algorithm used to drive the HLS EXT-X-PROGRAM-DATE-TIME clock. Options include:

INITIALIZE_FROM_OUTPUT_TIMECODE: The PDT clock is initialized as a function of the first output timecode, then incremented by the EXTINF duration of each encoded segment.

SYSTEM_CLOCK: The PDT clock is initialized as a function of the UTC wall clock, then incremented by the EXTINF duration of each encoded segment. If the PDT clock diverges from the wall clock by more than 500ms, it is resynchronized to the wall clock.")
  @as("ProgramDateTimeClock")
  programDateTimeClock: option<hlsProgramDateTimeClock>,
  @ocaml.doc(
    "Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated using the program date time clock."
  )
  @as("ProgramDateTime")
  programDateTime: option<hlsProgramDateTime>,
  @ocaml.doc("MANIFESTS_AND_SEGMENTS: Generates manifests (master manifest, if applicable, and media manifests) for this output group.

VARIANT_MANIFESTS_AND_SEGMENTS: Generates media manifests for this output group, but not a master manifest.

SEGMENTS_ONLY: Does not generate any manifests for this output group.")
  @as("OutputSelection")
  outputSelection: option<hlsOutputSelection>,
  @ocaml.doc("If \"vod\", all segments are indexed and kept permanently in the destination and manifest. If \"live\", only the number segments specified in keepSegments and indexNSegments are kept; newer segments replace older segments, which may prevent players from rewinding all the way to the beginning of the event.

VOD mode uses HLS EXT-X-PLAYLIST-TYPE of EVENT while the channel is running, converting it to a \"VOD\" type manifest on completion of the stream.")
  @as("Mode")
  mode: option<hlsMode>,
  @ocaml.doc(
    "When set, minimumSegmentLength is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed."
  )
  @as("MinSegmentLength")
  minSegmentLength: option<__integerMin0>,
  @ocaml.doc(
    "Indicates whether the output manifest should use floating point or integer values for segment duration."
  )
  @as("ManifestDurationFormat")
  manifestDurationFormat: option<hlsManifestDurationFormat>,
  @ocaml.doc("When set to gzip, compresses HLS playlist.") @as("ManifestCompression")
  manifestCompression: option<hlsManifestCompression>,
  @ocaml.doc("The key provider settings.") @as("KeyProviderSettings")
  keyProviderSettings: option<keyProviderSettings>,
  @ocaml.doc(
    "Either a single positive integer version value or a slash delimited list of version values (1/2/3)."
  )
  @as("KeyFormatVersions")
  keyFormatVersions: option<__string>,
  @ocaml.doc(
    "The value specifies how the key is represented in the resource identified by the URI.  If parameter is absent, an implicit value of \"identity\" is used.  A reverse DNS string can also be given."
  )
  @as("KeyFormat")
  keyFormat: option<__string>,
  @ocaml.doc("Applies only if Mode field is LIVE.

Specifies the number of media segments to retain in the destination directory. This number should be bigger than indexNSegments (Num segments). We recommend (value = (2 x indexNsegments) + 1).

If this \"keep segments\" number is too low, the following might happen: the player is still reading a media manifest file that lists this segment, but that segment has been removed from the destination directory (as directed by indexNSegments). This situation would result in a 404 HTTP error on the player.")
  @as("KeepSegments")
  keepSegments: option<__integerMin1>,
  @ocaml.doc(
    "For use with encryptionType. The IV (Initialization Vector) is a 128-bit number used in conjunction with the key for encrypting blocks. If this setting is \"followsSegmentNumber\", it will cause the IV to change every segment (to match the segment number). If this is set to \"explicit\", you must enter a constantIv value."
  )
  @as("IvSource")
  ivSource: option<hlsIvSource>,
  @ocaml.doc(
    "For use with encryptionType. The IV (Initialization Vector) is a 128-bit number used in conjunction with the key for encrypting blocks. If set to \"include\", IV is listed in the manifest, otherwise the IV is not in the manifest."
  )
  @as("IvInManifest")
  ivInManifest: option<hlsIvInManifest>,
  @ocaml.doc("Parameter that control output group behavior on input loss.") @as("InputLossAction")
  inputLossAction: option<inputLossActionForHlsOut>,
  @ocaml.doc("Applies only if Mode field is LIVE.

Specifies the maximum number of segments in the media manifest file. After this maximum, older segments are removed from the media manifest. This number must be smaller than the number in the Keep Segments field.")
  @as("IndexNSegments")
  indexNSegments: option<__integerMin3>,
  @ocaml.doc("Specifies whether to include the final (incomplete) segment in the media output when the pipeline stops producing output because of a channel stop, a channel pause or a loss of input to the pipeline.
Auto means that MediaLive decides whether to include the final segment, depending on the channel class and the types of output groups.
Suppress means to never include the incomplete segment. We recommend you choose Auto and let MediaLive control the behavior.")
  @as("IncompleteSegmentBehavior")
  incompleteSegmentBehavior: option<hlsIncompleteSegmentBehavior>,
  @ocaml.doc("DISABLED: Do not create an I-frame-only manifest, but do create the master and media manifests (according to the Output Selection field).

STANDARD: Create an I-frame-only manifest for each output that contains video, as well as the other manifests (according to the Output Selection field). The I-frame manifest contains a #EXT-X-I-FRAMES-ONLY tag to indicate it is I-frame only, and one or more #EXT-X-BYTERANGE entries identifying the I-frame position. For example, #EXT-X-BYTERANGE:160364@1461888\"")
  @as("IFrameOnlyPlaylists")
  iframeOnlyPlaylists: option<iframeOnlyPlaylistType>,
  @ocaml.doc("State of HLS ID3 Segment Tagging") @as("HlsId3SegmentTagging")
  hlsId3SegmentTagging: option<hlsId3SegmentTaggingState>,
  @ocaml.doc("Parameters that control interactions with the CDN.") @as("HlsCdnSettings")
  hlsCdnSettings: option<hlsCdnSettings>,
  @ocaml.doc(
    "Encrypts the segments with the given encryption scheme.  Exclude this parameter if no encryption is desired."
  )
  @as("EncryptionType")
  encryptionType: option<hlsEncryptionType>,
  @ocaml.doc("Specifies whether to insert EXT-X-DISCONTINUITY tags in the HLS child manifests for this output group.
Typically, choose Insert because these tags are required in the manifest (according to the HLS specification) and serve an important purpose.
Choose Never Insert only if the downstream system is doing real-time failover (without using the MediaLive automatic failover feature) and only if that downstream system has advised you to exclude the tags.")
  @as("DiscontinuityTags")
  discontinuityTags: option<hlsDiscontinuityTags>,
  @ocaml.doc("Place segments in subdirectories.") @as("DirectoryStructure")
  directoryStructure: option<hlsDirectoryStructure>,
  @ocaml.doc(
    "A directory or HTTP destination for the HLS segments, manifest files, and encryption keys (if enabled)."
  )
  @as("Destination")
  destination: outputLocationRef,
  @ocaml.doc(
    "For use with encryptionType. This is a 128-bit, 16-byte hex value represented by a 32-character text string. If ivSource is set to \"explicit\" then this parameter is required and is used as the IV for encryption."
  )
  @as("ConstantIv")
  constantIv: option<__stringMin32Max32>,
  @ocaml.doc(
    "Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation."
  )
  @as("CodecSpecification")
  codecSpecification: option<hlsCodecSpecification>,
  @ocaml.doc(
    "When set to \"disabled\", sets the #EXT-X-ALLOW-CACHE:no tag in the manifest, which prevents clients from saving media segments for later replay."
  )
  @as("ClientCache")
  clientCache: option<hlsClientCache>,
  @ocaml.doc("Applies only to 608 Embedded output captions.
insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions.
none: Include CLOSED-CAPTIONS=NONE line in the manifest.
omit: Omit any CLOSED-CAPTIONS line from the manifest.")
  @as("CaptionLanguageSetting")
  captionLanguageSetting: option<hlsCaptionLanguageSetting>,
  @ocaml.doc(
    "Mapping of up to 4 caption channels to caption languages.  Is only meaningful if captionLanguageSetting is set to \"insert\"."
  )
  @as("CaptionLanguageMappings")
  captionLanguageMappings: option<__listOfCaptionLanguageMapping>,
  @ocaml.doc("Optional. One value per output group.

Complete this field only if you are completing Base URL manifest A, and the downstream system has notified you that the child manifest files for pipeline 1 of all outputs are in a location different from the child manifest files for pipeline 0.")
  @as("BaseUrlManifest1")
  baseUrlManifest1: option<__string>,
  @ocaml.doc(
    "A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file."
  )
  @as("BaseUrlManifest")
  baseUrlManifest: option<__string>,
  @ocaml.doc("Optional. One value per output group.

This field is required only if you are completing Base URL content A, and the downstream system has notified you that the media files for pipeline 1 of all outputs are in a location different from the media files for pipeline 0.")
  @as("BaseUrlContent1")
  baseUrlContent1: option<__string>,
  @ocaml.doc(
    "A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file."
  )
  @as("BaseUrlContent")
  baseUrlContent: option<__string>,
  @ocaml.doc(
    "Choose one or more ad marker types to pass SCTE35 signals through to this group of Apple HLS outputs."
  )
  @as("AdMarkers")
  adMarkers: option<__listOfHlsAdMarkers>,
}
@ocaml.doc(
  "Output groups for this Live Event. Output groups contain information about where streams should be distributed."
)
type captionSelector = {
  @ocaml.doc("Caption selector settings.") @as("SelectorSettings")
  selectorSettings: option<captionSelectorSettings>,
  @ocaml.doc(
    "Name identifier for a caption selector.  This name is used to associate this caption selector with one or more caption descriptions.  Names must be unique within an event."
  )
  @as("Name")
  name: __stringMin1,
  @ocaml.doc(
    "When specified this field indicates the three letter language code of the caption track to extract from the source."
  )
  @as("LanguageCode")
  languageCode: option<__string>,
}
@ocaml.doc("Caption Description")
type captionDescription = {
  @ocaml.doc(
    "Name of the caption description.  Used to associate a caption description with an output.  Names must be unique within an event."
  )
  @as("Name")
  name: __string,
  @ocaml.doc(
    "Human readable information to indicate captions available for players (eg. English, or Spanish)."
  )
  @as("LanguageDescription")
  languageDescription: option<__string>,
  @ocaml.doc("ISO 639-2 three-digit code: http://www.loc.gov/standards/iso639-2/")
  @as("LanguageCode")
  languageCode: option<__string>,
  @ocaml.doc("Additional settings for captions destination that depend on the destination type.")
  @as("DestinationSettings")
  destinationSettings: option<captionDestinationSettings>,
  @ocaml.doc(
    "Specifies which input caption selector to use as a caption source when generating output captions. This field should match a captionSelector name."
  )
  @as("CaptionSelectorName")
  captionSelectorName: __string,
}
@ocaml.doc("Audio Selector Settings")
type audioSelectorSettings = {
  @as("AudioTrackSelection") audioTrackSelection: option<audioTrackSelection>,
  @as("AudioPidSelection") audioPidSelection: option<audioPidSelection>,
  @as("AudioLanguageSelection") audioLanguageSelection: option<audioLanguageSelection>,
  @as("AudioHlsRenditionSelection") audioHlsRenditionSelection: option<audioHlsRenditionSelection>,
}
@ocaml.doc("Archive Output Settings")
type archiveOutputSettings = {
  @ocaml.doc(
    "String concatenated to the end of the destination filename.  Required for multiple outputs of the same type."
  )
  @as("NameModifier")
  nameModifier: option<__string>,
  @ocaml.doc(
    "Output file extension. If excluded, this will be auto-selected from the container type."
  )
  @as("Extension")
  extension: option<__string>,
  @ocaml.doc("Settings specific to the container type of the file.") @as("ContainerSettings")
  containerSettings: archiveContainerSettings,
}
@ocaml.doc("Placeholder documentation for __listOfScte35Descriptor")
type __listOfScte35Descriptor = array<scte35Descriptor>
@ocaml.doc("Placeholder documentation for __listOfInput") type __listOfInput = array<input>
@ocaml.doc("Placeholder documentation for __listOfCaptionSelector")
type __listOfCaptionSelector = array<captionSelector>
@ocaml.doc("Placeholder documentation for __listOfCaptionDescription")
type __listOfCaptionDescription = array<captionDescription>
@ocaml.doc("Video settings for this stream.")
type videoDescription = {
  @ocaml.doc(
    "Output video width, in pixels. Must be an even number. For most codecs, you can leave this field and height blank in order to use the height and width (resolution) from the source. Note, however, that leaving blank is not recommended. For the Frame Capture codec, height and width are required."
  )
  @as("Width")
  width: option<__integer>,
  @ocaml.doc(
    "Changes the strength of the anti-alias filter used for scaling. 0 is the softest setting, 100 is the sharpest. A setting of 50 is recommended for most content."
  )
  @as("Sharpness")
  sharpness: option<__integerMin0Max100>,
  @ocaml.doc(
    "STRETCH_TO_OUTPUT configures the output position to stretch the video to the specified output resolution (height and width). This option will override any position value. DEFAULT may insert black boxes (pillar boxes or letter boxes) around the video to provide the specified output resolution."
  )
  @as("ScalingBehavior")
  scalingBehavior: option<videoDescriptionScalingBehavior>,
  @ocaml.doc("Indicates how MediaLive will respond to the AFD values that might be in the input video. If you do not know what AFD signaling is, or if your downstream system has not given you guidance, choose PASSTHROUGH.
RESPOND: MediaLive clips the input video using a formula that uses the AFD values (configured in afdSignaling ), the input display aspect ratio, and the output display aspect ratio. MediaLive also includes the AFD values in the output, unless the codec for this encode is FRAME_CAPTURE.
PASSTHROUGH: MediaLive ignores the AFD values and does not clip the video. But MediaLive does include the values in the output.
NONE: MediaLive does not clip the input video and does not include the AFD values in the output")
  @as("RespondToAfd")
  respondToAfd: option<videoDescriptionRespondToAfd>,
  @ocaml.doc(
    "The name of this VideoDescription. Outputs will use this name to uniquely identify this Description.  Description names should be unique within this Live Event."
  )
  @as("Name")
  name: __string,
  @ocaml.doc(
    "Output video height, in pixels. Must be an even number. For most codecs, you can leave this field and width blank in order to use the height and width (resolution) from the source. Note, however, that leaving blank is not recommended. For the Frame Capture codec, height and width are required."
  )
  @as("Height")
  height: option<__integer>,
  @ocaml.doc("Video codec settings.") @as("CodecSettings")
  codecSettings: option<videoCodecSettings>,
}
@ocaml.doc("Remix Settings")
type remixSettings = {
  @ocaml.doc("Number of output channels to be produced.
Valid values: 1, 2, 4, 6, 8")
  @as("ChannelsOut")
  channelsOut: option<__integerMin1Max8>,
  @ocaml.doc("Number of input channels to be used.") @as("ChannelsIn")
  channelsIn: option<__integerMin1Max16>,
  @ocaml.doc("Mapping of input channels to output channels, with appropriate gain adjustments.")
  @as("ChannelMappings")
  channelMappings: __listOfAudioChannelMapping,
}
@ocaml.doc("Output Settings")
type outputSettings = {
  @as("UdpOutputSettings") udpOutputSettings: option<udpOutputSettings>,
  @as("RtmpOutputSettings") rtmpOutputSettings: option<rtmpOutputSettings>,
  @as("MultiplexOutputSettings") multiplexOutputSettings: option<multiplexOutputSettings>,
  @as("MsSmoothOutputSettings") msSmoothOutputSettings: option<msSmoothOutputSettings>,
  @as("MediaPackageOutputSettings") mediaPackageOutputSettings: option<mediaPackageOutputSettings>,
  @as("HlsOutputSettings") hlsOutputSettings: option<hlsOutputSettings>,
  @as("FrameCaptureOutputSettings") frameCaptureOutputSettings: option<frameCaptureOutputSettings>,
  @as("ArchiveOutputSettings") archiveOutputSettings: option<archiveOutputSettings>,
}
@ocaml.doc("Output Group Settings")
type outputGroupSettings = {
  @as("UdpGroupSettings") udpGroupSettings: option<udpGroupSettings>,
  @as("RtmpGroupSettings") rtmpGroupSettings: option<rtmpGroupSettings>,
  @as("MultiplexGroupSettings") multiplexGroupSettings: option<multiplexGroupSettings>,
  @as("MsSmoothGroupSettings") msSmoothGroupSettings: option<msSmoothGroupSettings>,
  @as("MediaPackageGroupSettings") mediaPackageGroupSettings: option<mediaPackageGroupSettings>,
  @as("HlsGroupSettings") hlsGroupSettings: option<hlsGroupSettings>,
  @as("FrameCaptureGroupSettings") frameCaptureGroupSettings: option<frameCaptureGroupSettings>,
  @as("ArchiveGroupSettings") archiveGroupSettings: option<archiveGroupSettings>,
}
@ocaml.doc("The settings for Automatic Input Failover.")
type automaticInputFailoverSettings = {
  @ocaml.doc("The input ID of the secondary input in the automatic input failover pair.")
  @as("SecondaryInputId")
  secondaryInputId: __string,
  @ocaml.doc(
    "Input preference when deciding which input to make active when a previously failed input has recovered."
  )
  @as("InputPreference")
  inputPreference: option<inputPreference>,
  @ocaml.doc(
    "A list of failover conditions. If any of these conditions occur, MediaLive will perform a failover to the other input."
  )
  @as("FailoverConditions")
  failoverConditions: option<__listOfFailoverCondition>,
  @ocaml.doc(
    "This clear time defines the requirement a recovered input must meet to be considered healthy. The input must have no failover conditions for this length of time. Enter a time in milliseconds. This value is particularly important if the input_preference for the failover pair is set to PRIMARY_INPUT_PREFERRED, because after this time, MediaLive will switch back to the primary input."
  )
  @as("ErrorClearTimeMsec")
  errorClearTimeMsec: option<__integerMin1>,
}
@ocaml.doc("Audio Selector")
type audioSelector = {
  @ocaml.doc("The audio selector settings.") @as("SelectorSettings")
  selectorSettings: option<audioSelectorSettings>,
  @ocaml.doc(
    "The name of this AudioSelector. AudioDescriptions will use this name to uniquely identify this Selector.  Selector names should be unique per input."
  )
  @as("Name")
  name: __stringMin1,
}
@ocaml.doc("Placeholder documentation for __listOfVideoDescription")
type __listOfVideoDescription = array<videoDescription>
@ocaml.doc("Placeholder documentation for __listOfAudioSelector")
type __listOfAudioSelector = array<audioSelector>
@ocaml.doc("Settings for a SCTE-35 time_signal.")
type scte35TimeSignalScheduleActionSettings = {
  @ocaml.doc("The list of SCTE-35 descriptors accompanying the SCTE-35 time_signal.")
  @as("Scte35Descriptors")
  scte35Descriptors: __listOfScte35Descriptor,
}
@ocaml.doc("Output settings. There can be multiple outputs within a group.")
type output = {
  @ocaml.doc("The name of the VideoDescription used as the source for this output.")
  @as("VideoDescriptionName")
  videoDescriptionName: option<__string>,
  @ocaml.doc("Output type-specific settings.") @as("OutputSettings") outputSettings: outputSettings,
  @ocaml.doc("The name used to identify an output.") @as("OutputName")
  outputName: option<__stringMin1Max255>,
  @ocaml.doc("The names of the CaptionDescriptions used as caption sources for this output.")
  @as("CaptionDescriptionNames")
  captionDescriptionNames: option<__listOf__string>,
  @ocaml.doc("The names of the AudioDescriptions used as audio sources for this output.")
  @as("AudioDescriptionNames")
  audioDescriptionNames: option<__listOf__string>,
}
@ocaml.doc("Audio Description")
type audioDescription = {
  @ocaml.doc(
    "Used for MS Smooth and Apple HLS outputs. Indicates the name displayed by the player (eg. English, or Director Commentary)."
  )
  @as("StreamName")
  streamName: option<__string>,
  @ocaml.doc(
    "Settings that control how input audio channels are remixed into the output audio channels."
  )
  @as("RemixSettings")
  remixSettings: option<remixSettings>,
  @ocaml.doc(
    "The name of this AudioDescription. Outputs will use this name to uniquely identify this AudioDescription.  Description names should be unique within this Live Event."
  )
  @as("Name")
  name: __string,
  @ocaml.doc(
    "Choosing followInput will cause the ISO 639 language code of the output to follow the ISO 639 language code of the input. The languageCode will be used when useConfigured is set, or when followInput is selected but there is no ISO 639 language code specified by the input."
  )
  @as("LanguageCodeControl")
  languageCodeControl: option<audioDescriptionLanguageCodeControl>,
  @ocaml.doc(
    "RFC 5646 language code representing the language of the audio output track. Only used if languageControlMode is useConfigured, or there is no ISO 639 language code specified in the input."
  )
  @as("LanguageCode")
  languageCode: option<__stringMin1Max35>,
  @ocaml.doc("Audio codec settings.") @as("CodecSettings")
  codecSettings: option<audioCodecSettings>,
  @ocaml.doc(
    "Settings to configure one or more solutions that insert audio watermarks in the audio encode"
  )
  @as("AudioWatermarkingSettings")
  audioWatermarkingSettings: option<audioWatermarkSettings>,
  @ocaml.doc("Determines how audio type is determined.
  followInput: If the input contains an ISO 639 audioType, then that value is passed through to the output. If the input contains no ISO 639 audioType, the value in Audio Type is included in the output.
  useConfigured: The value in Audio Type is included in the output.
Note that this field and audioType are both ignored if inputType is broadcasterMixedAd.")
  @as("AudioTypeControl")
  audioTypeControl: option<audioDescriptionAudioTypeControl>,
  @ocaml.doc(
    "Applies only if audioTypeControl is useConfigured. The values for audioType are defined in ISO-IEC 13818-1."
  )
  @as("AudioType")
  audioType: option<audioType>,
  @ocaml.doc("The name of the AudioSelector used as the source for this AudioDescription.")
  @as("AudioSelectorName")
  audioSelectorName: __string,
  @ocaml.doc("Advanced audio normalization settings.") @as("AudioNormalizationSettings")
  audioNormalizationSettings: option<audioNormalizationSettings>,
}
@ocaml.doc("Placeholder documentation for __listOfOutput") type __listOfOutput = array<output>
@ocaml.doc("Placeholder documentation for __listOfAudioDescription")
type __listOfAudioDescription = array<audioDescription>
@ocaml.doc("Holds the settings for a single schedule action.")
type scheduleActionSettings = {
  @ocaml.doc("Action to deactivate a static image overlay") @as("StaticImageDeactivateSettings")
  staticImageDeactivateSettings: option<staticImageDeactivateScheduleActionSettings>,
  @ocaml.doc("Action to activate a static image overlay") @as("StaticImageActivateSettings")
  staticImageActivateSettings: option<staticImageActivateScheduleActionSettings>,
  @ocaml.doc("Action to insert SCTE-35 time_signal message") @as("Scte35TimeSignalSettings")
  scte35TimeSignalSettings: option<scte35TimeSignalScheduleActionSettings>,
  @ocaml.doc("Action to insert SCTE-35 splice_insert message") @as("Scte35SpliceInsertSettings")
  scte35SpliceInsertSettings: option<scte35SpliceInsertScheduleActionSettings>,
  @ocaml.doc("Action to insert SCTE-35 return_to_network message")
  @as("Scte35ReturnToNetworkSettings")
  scte35ReturnToNetworkSettings: option<scte35ReturnToNetworkScheduleActionSettings>,
  @ocaml.doc("Action to pause or unpause one or both channel pipelines") @as("PauseStateSettings")
  pauseStateSettings: option<pauseStateScheduleActionSettings>,
  @ocaml.doc("Action to deactivate a motion graphics image overlay")
  @as("MotionGraphicsImageDeactivateSettings")
  motionGraphicsImageDeactivateSettings: option<motionGraphicsDeactivateScheduleActionSettings>,
  @ocaml.doc("Action to activate a motion graphics image overlay")
  @as("MotionGraphicsImageActivateSettings")
  motionGraphicsImageActivateSettings: option<motionGraphicsActivateScheduleActionSettings>,
  @ocaml.doc("Action to switch the input") @as("InputSwitchSettings")
  inputSwitchSettings: option<inputSwitchScheduleActionSettings>,
  @ocaml.doc("Action to prepare an input for a future immediate input switch")
  @as("InputPrepareSettings")
  inputPrepareSettings: option<inputPrepareScheduleActionSettings>,
  @ocaml.doc("Action to insert HLS metadata") @as("HlsTimedMetadataSettings")
  hlsTimedMetadataSettings: option<hlsTimedMetadataScheduleActionSettings>,
  @ocaml.doc("Action to insert HLS ID3 segment tagging") @as("HlsId3SegmentTaggingSettings")
  hlsId3SegmentTaggingSettings: option<hlsId3SegmentTaggingScheduleActionSettings>,
}
@ocaml.doc("Live Event input parameters. There can be multiple inputs in a single Live Event.")
type inputSettings = {
  @ocaml.doc(
    "Informs which video elementary stream to decode for input types that have multiple available."
  )
  @as("VideoSelector")
  videoSelector: option<videoSelector>,
  @ocaml.doc("Loop input if it is a file. This allows a file input to be streamed indefinitely.")
  @as("SourceEndBehavior")
  sourceEndBehavior: option<inputSourceEndBehavior>,
  @ocaml.doc("Specifies whether to extract applicable ancillary data from a SMPTE-2038 source in this input. Applicable data types are captions, timecode, AFD, and SCTE-104 messages.
- PREFER: Extract from SMPTE-2038 if present in this input, otherwise extract from another source (if any).
- IGNORE: Never extract any ancillary data from SMPTE-2038.")
  @as("Smpte2038DataPreference")
  smpte2038DataPreference: option<smpte2038DataPreference>,
  @ocaml.doc(
    "PID from which to read SCTE-35 messages. If left undefined, EML will select the first SCTE-35 PID found in the input."
  )
  @as("Scte35Pid")
  scte35Pid: option<__integerMin32Max8191>,
  @ocaml.doc("Input settings.") @as("NetworkInputSettings")
  networkInputSettings: option<networkInputSettings>,
  @ocaml.doc("Turns on the filter for this input. MPEG-2 inputs have the deblocking filter enabled by default.
1) auto - filtering will be applied depending on input type/quality
2) disabled - no filtering will be applied to the input
3) forced - filtering will be applied regardless of input type")
  @as("InputFilter")
  inputFilter: option<inputFilter>,
  @ocaml.doc("Adjusts the magnitude of filtering from 1 (minimal) to 5 (strongest).")
  @as("FilterStrength")
  filterStrength: option<__integerMin1Max5>,
  @ocaml.doc("Enable or disable the denoise filter when filtering.") @as("DenoiseFilter")
  denoiseFilter: option<inputDenoiseFilter>,
  @ocaml.doc("Enable or disable the deblock filter when filtering.") @as("DeblockFilter")
  deblockFilter: option<inputDeblockFilter>,
  @ocaml.doc("Used to select the caption input to use for inputs that have multiple available.")
  @as("CaptionSelectors")
  captionSelectors: option<__listOfCaptionSelector>,
  @ocaml.doc("Used to select the audio stream to decode for inputs that have multiple available.")
  @as("AudioSelectors")
  audioSelectors: option<__listOfAudioSelector>,
}
@ocaml.doc("Contains information on a single schedule action.")
type scheduleAction = {
  @ocaml.doc("The time for the action to start in the channel.") @as("ScheduleActionStartSettings")
  scheduleActionStartSettings: scheduleActionStartSettings,
  @ocaml.doc("Settings for this schedule action.") @as("ScheduleActionSettings")
  scheduleActionSettings: scheduleActionSettings,
  @ocaml.doc(
    "The name of the action, must be unique within the schedule. This name provides the main reference to an action once it is added to the schedule. A name is unique if it is no longer in the schedule. The schedule is automatically cleaned up to remove actions with a start time of more than 1 hour ago (approximately) so at that point a name can be reused."
  )
  @as("ActionName")
  actionName: __string,
}
@ocaml.doc(
  "Output groups for this Live Event. Output groups contain information about where streams should be distributed."
)
type outputGroup = {
  @as("Outputs") outputs: __listOfOutput,
  @ocaml.doc("Settings associated with the output group.") @as("OutputGroupSettings")
  outputGroupSettings: outputGroupSettings,
  @ocaml.doc("Custom output group name optionally defined by the user.") @as("Name")
  name: option<__stringMax32>,
}
@ocaml.doc("Placeholder documentation for InputAttachment")
type inputAttachment = {
  @ocaml.doc("Settings of an input (caption selector, etc.)") @as("InputSettings")
  inputSettings: option<inputSettings>,
  @ocaml.doc("The ID of the input") @as("InputId") inputId: option<__string>,
  @ocaml.doc(
    "User-specified name for the attachment. This is required if the user wants to use this input in an input switch action."
  )
  @as("InputAttachmentName")
  inputAttachmentName: option<__string>,
  @ocaml.doc(
    "User-specified settings for defining what the conditions are for declaring the input unhealthy and failing over to a different input."
  )
  @as("AutomaticInputFailoverSettings")
  automaticInputFailoverSettings: option<automaticInputFailoverSettings>,
}
@ocaml.doc("Placeholder documentation for __listOfScheduleAction")
type __listOfScheduleAction = array<scheduleAction>
@ocaml.doc("Placeholder documentation for __listOfOutputGroup")
type __listOfOutputGroup = array<outputGroup>
@ocaml.doc("Placeholder documentation for __listOfInputAttachment")
type __listOfInputAttachment = array<inputAttachment>
@ocaml.doc("Encoder Settings")
type encoderSettings = {
  @as("VideoDescriptions") videoDescriptions: __listOfVideoDescription,
  @ocaml.doc("Contains settings used to acquire and adjust timecode information from inputs.")
  @as("TimecodeConfig")
  timecodeConfig: timecodeConfig,
  @as("OutputGroups") outputGroups: __listOfOutputGroup,
  @ocaml.doc("Nielsen configuration settings.") @as("NielsenConfiguration")
  nielsenConfiguration: option<nielsenConfiguration>,
  @ocaml.doc("Settings for motion graphics.") @as("MotionGraphicsConfiguration")
  motionGraphicsConfiguration: option<motionGraphicsConfiguration>,
  @ocaml.doc("Configuration settings that apply to the event as a whole.")
  @as("GlobalConfiguration")
  globalConfiguration: option<globalConfiguration>,
  @ocaml.doc("Feature Activations") @as("FeatureActivations")
  featureActivations: option<featureActivations>,
  @ocaml.doc("Settings for caption decriptions") @as("CaptionDescriptions")
  captionDescriptions: option<__listOfCaptionDescription>,
  @ocaml.doc("Settings for blackout slate.") @as("BlackoutSlate")
  blackoutSlate: option<blackoutSlate>,
  @ocaml.doc("Event-wide configuration settings for ad avail insertion.") @as("AvailConfiguration")
  availConfiguration: option<availConfiguration>,
  @ocaml.doc("Settings for ad avail blanking.") @as("AvailBlanking")
  availBlanking: option<availBlanking>,
  @as("AudioDescriptions") audioDescriptions: __listOfAudioDescription,
}
@ocaml.doc("Placeholder documentation for ChannelSummary")
type channelSummary = {
  @ocaml.doc("Settings for any VPC outputs.") @as("Vpc") vpc: option<vpcOutputSettingsDescription>,
  @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
  @as("State") state: option<channelState>,
  @ocaml.doc("The Amazon Resource Name (ARN) of the role assumed when running the Channel.")
  @as("RoleArn")
  roleArn: option<__string>,
  @ocaml.doc("The number of currently healthy pipelines.") @as("PipelinesRunningCount")
  pipelinesRunningCount: option<__integer>,
  @ocaml.doc("The name of the channel. (user-mutable)") @as("Name") name: option<__string>,
  @ocaml.doc("Maintenance settings for this channel.") @as("Maintenance")
  maintenance: option<maintenanceStatus>,
  @ocaml.doc("The log level being written to CloudWatch Logs.") @as("LogLevel")
  logLevel: option<logLevel>,
  @ocaml.doc("Specification of network and file inputs for this channel") @as("InputSpecification")
  inputSpecification: option<inputSpecification>,
  @ocaml.doc("List of input attachments for channel.") @as("InputAttachments")
  inputAttachments: option<__listOfInputAttachment>,
  @ocaml.doc("The unique id of the channel.") @as("Id") id: option<__string>,
  @ocaml.doc("The endpoints where outgoing connections initiate from") @as("EgressEndpoints")
  egressEndpoints: option<__listOfChannelEgressEndpoint>,
  @ocaml.doc("A list of destinations of the channel. For UDP outputs, there is one
destination per output. For other types (HLS, for example), there is
one destination per packager.")
  @as("Destinations")
  destinations: option<__listOfOutputDestination>,
  @ocaml.doc(
    "The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline."
  )
  @as("ChannelClass")
  channelClass: option<channelClass>,
  @ocaml.doc("Specification of CDI inputs for this channel") @as("CdiInputSpecification")
  cdiInputSpecification: option<cdiInputSpecification>,
  @ocaml.doc("The unique arn of the channel.") @as("Arn") arn: option<__string>,
}
@ocaml.doc("List of actions that have been deleted from the schedule.")
type batchScheduleActionDeleteResult = {
  @ocaml.doc("List of actions that have been deleted from the schedule.") @as("ScheduleActions")
  scheduleActions: __listOfScheduleAction,
}
@ocaml.doc("List of actions that have been created in the schedule.")
type batchScheduleActionCreateResult = {
  @ocaml.doc("List of actions that have been created in the schedule.") @as("ScheduleActions")
  scheduleActions: __listOfScheduleAction,
}
@ocaml.doc(
  "A list of schedule actions to create (in a request) or that have been created (in a response)."
)
type batchScheduleActionCreateRequest = {
  @ocaml.doc("A list of schedule actions to create.") @as("ScheduleActions")
  scheduleActions: __listOfScheduleAction,
}
@ocaml.doc("Placeholder documentation for __listOfChannelSummary")
type __listOfChannelSummary = array<channelSummary>
@ocaml.doc("Placeholder documentation for Channel")
type channel = {
  @ocaml.doc("Settings for VPC output") @as("Vpc") vpc: option<vpcOutputSettingsDescription>,
  @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
  @as("State") state: option<channelState>,
  @ocaml.doc("The Amazon Resource Name (ARN) of the role assumed when running the Channel.")
  @as("RoleArn")
  roleArn: option<__string>,
  @ocaml.doc("The number of currently healthy pipelines.") @as("PipelinesRunningCount")
  pipelinesRunningCount: option<__integer>,
  @ocaml.doc("Runtime details for the pipelines of a running channel.") @as("PipelineDetails")
  pipelineDetails: option<__listOfPipelineDetail>,
  @ocaml.doc("The name of the channel. (user-mutable)") @as("Name") name: option<__string>,
  @ocaml.doc("Maintenance settings for this channel.") @as("Maintenance")
  maintenance: option<maintenanceStatus>,
  @ocaml.doc("The log level being written to CloudWatch Logs.") @as("LogLevel")
  logLevel: option<logLevel>,
  @ocaml.doc("Specification of network and file inputs for this channel") @as("InputSpecification")
  inputSpecification: option<inputSpecification>,
  @ocaml.doc("List of input attachments for channel.") @as("InputAttachments")
  inputAttachments: option<__listOfInputAttachment>,
  @ocaml.doc("The unique id of the channel.") @as("Id") id: option<__string>,
  @as("EncoderSettings") encoderSettings: option<encoderSettings>,
  @ocaml.doc("The endpoints where outgoing connections initiate from") @as("EgressEndpoints")
  egressEndpoints: option<__listOfChannelEgressEndpoint>,
  @ocaml.doc("A list of destinations of the channel. For UDP outputs, there is one
destination per output. For other types (HLS, for example), there is
one destination per packager.")
  @as("Destinations")
  destinations: option<__listOfOutputDestination>,
  @ocaml.doc(
    "The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline."
  )
  @as("ChannelClass")
  channelClass: option<channelClass>,
  @ocaml.doc("Specification of CDI inputs for this channel") @as("CdiInputSpecification")
  cdiInputSpecification: option<cdiInputSpecification>,
  @ocaml.doc("The unique arn of the channel.") @as("Arn") arn: option<__string>,
}
@ocaml.doc("API for AWS Elemental MediaLive")
module DescribeInputDeviceThumbnail = {
  type t
  @ocaml.doc("Placeholder documentation for DescribeInputDeviceThumbnailRequest")
  type request = {
    @ocaml.doc("The HTTP Accept header. Indicates the requested type for the thumbnail.")
    @as("Accept")
    accept: acceptHeader,
    @ocaml.doc("The unique ID of this input device. For example, hd-123456789abcdef.")
    @as("InputDeviceId")
    inputDeviceId: __string,
  }
  @ocaml.doc("Placeholder documentation for DescribeInputDeviceThumbnailResponse")
  type response = {
    @ocaml.doc("The date and time the thumbnail was last updated at the device.")
    @as("LastModified")
    lastModified: option<__timestamp>,
    @ocaml.doc("The unique, cacheable version of this thumbnail.") @as("ETag")
    etag: option<__string>,
    @ocaml.doc("The length of the content.") @as("ContentLength") contentLength: option<__long>,
    @ocaml.doc("Specifies the media type of the thumbnail.") @as("ContentType")
    contentType: option<contentType>,
    @ocaml.doc(
      "The binary data for the thumbnail that the Link device has most recently sent to MediaLive."
    )
    @as("Body")
    body: option<inputDeviceThumbnail>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DescribeInputDeviceThumbnailCommand"
  let make = (~accept, ~inputDeviceId, ()) => new({accept: accept, inputDeviceId: inputDeviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSchedule = {
  type t
  @ocaml.doc("Placeholder documentation for DeleteScheduleRequest")
  type request = {
    @ocaml.doc("Id of the channel whose schedule is being deleted.") @as("ChannelId")
    channelId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DeleteScheduleCommand"
  let make = (~channelId, ()) => new({channelId: channelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteInputSecurityGroup = {
  type t
  @ocaml.doc("Placeholder documentation for DeleteInputSecurityGroupRequest")
  type request = {
    @ocaml.doc("The Input Security Group to delete") @as("InputSecurityGroupId")
    inputSecurityGroupId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DeleteInputSecurityGroupCommand"
  let make = (~inputSecurityGroupId, ()) => new({inputSecurityGroupId: inputSecurityGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteInput = {
  type t
  @ocaml.doc("Placeholder documentation for DeleteInputRequest")
  type request = {@ocaml.doc("Unique ID of the input") @as("InputId") inputId: __string}
  type response = {.}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DeleteInputCommand"
  let make = (~inputId, ()) => new({inputId: inputId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  @ocaml.doc("Placeholder documentation for ListTagsForResourceRequest")
  type request = {@as("ResourceArn") resourceArn: __string}
  @ocaml.doc("Placeholder documentation for ListTagsForResourceResponse")
  type response = {@as("Tags") tags: option<tags>}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservation = {
  type t
  @ocaml.doc("Placeholder documentation for DescribeReservationRequest")
  type request = {
    @ocaml.doc("Unique reservation ID, e.g. '1234567'") @as("ReservationId")
    reservationId: __string,
  }
  @ocaml.doc("Placeholder documentation for DescribeReservationResponse")
  type response = {
    @ocaml.doc("Recurring usage charge for each reserved resource, e.g. '157.0'") @as("UsagePrice")
    usagePrice: option<__double>,
    @ocaml.doc("A collection of key-value pairs") @as("Tags") tags: option<tags>,
    @ocaml.doc("Current state of reservation, e.g. 'ACTIVE'") @as("State")
    state: option<reservationState>,
    @ocaml.doc("Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'")
    @as("Start")
    start: option<__string>,
    @ocaml.doc("Resource configuration details") @as("ResourceSpecification")
    resourceSpecification: option<reservationResourceSpecification>,
    @ocaml.doc("Unique reservation ID, e.g. '1234567'") @as("ReservationId")
    reservationId: option<__string>,
    @ocaml.doc("AWS region, e.g. 'us-west-2'") @as("Region") region: option<__string>,
    @ocaml.doc("Offering type, e.g. 'NO_UPFRONT'") @as("OfferingType")
    offeringType: option<offeringType>,
    @ocaml.doc("Unique offering ID, e.g. '87654321'") @as("OfferingId")
    offeringId: option<__string>,
    @ocaml.doc(
      "Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'"
    )
    @as("OfferingDescription")
    offeringDescription: option<__string>,
    @ocaml.doc("User specified reservation name") @as("Name") name: option<__string>,
    @ocaml.doc("One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering")
    @as("FixedPrice")
    fixedPrice: option<__double>,
    @ocaml.doc("Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'")
    @as("End")
    end: option<__string>,
    @ocaml.doc("Units for duration, e.g. 'MONTHS'") @as("DurationUnits")
    durationUnits: option<offeringDurationUnits>,
    @ocaml.doc("Lease duration, e.g. '12'") @as("Duration") duration: option<__integer>,
    @ocaml.doc("Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'")
    @as("CurrencyCode")
    currencyCode: option<__string>,
    @ocaml.doc("Number of reserved resources") @as("Count") count: option<__integer>,
    @ocaml.doc(
      "Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'"
    )
    @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DescribeReservationCommand"
  let make = (~reservationId, ()) => new({reservationId: reservationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOffering = {
  type t
  @ocaml.doc("Placeholder documentation for DescribeOfferingRequest")
  type request = {
    @ocaml.doc("Unique offering ID, e.g. '87654321'") @as("OfferingId") offeringId: __string,
  }
  @ocaml.doc("Placeholder documentation for DescribeOfferingResponse")
  type response = {
    @ocaml.doc("Recurring usage charge for each reserved resource, e.g. '157.0'") @as("UsagePrice")
    usagePrice: option<__double>,
    @ocaml.doc("Resource configuration details") @as("ResourceSpecification")
    resourceSpecification: option<reservationResourceSpecification>,
    @ocaml.doc("AWS region, e.g. 'us-west-2'") @as("Region") region: option<__string>,
    @ocaml.doc("Offering type, e.g. 'NO_UPFRONT'") @as("OfferingType")
    offeringType: option<offeringType>,
    @ocaml.doc("Unique offering ID, e.g. '87654321'") @as("OfferingId")
    offeringId: option<__string>,
    @ocaml.doc(
      "Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'"
    )
    @as("OfferingDescription")
    offeringDescription: option<__string>,
    @ocaml.doc("One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering")
    @as("FixedPrice")
    fixedPrice: option<__double>,
    @ocaml.doc("Units for duration, e.g. 'MONTHS'") @as("DurationUnits")
    durationUnits: option<offeringDurationUnits>,
    @ocaml.doc("Lease duration, e.g. '12'") @as("Duration") duration: option<__integer>,
    @ocaml.doc("Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'")
    @as("CurrencyCode")
    currencyCode: option<__string>,
    @ocaml.doc(
      "Unique offering ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:offering:87654321'"
    )
    @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DescribeOfferingCommand"
  let make = (~offeringId, ()) => new({offeringId: offeringId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTags = {
  type t
  @ocaml.doc("Placeholder documentation for DeleteTagsRequest")
  type request = {
    @ocaml.doc("An array of tag keys to delete") @as("TagKeys") tagKeys: __listOf__string,
    @as("ResourceArn") resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DeleteTagsCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteReservation = {
  type t
  @ocaml.doc("Placeholder documentation for DeleteReservationRequest")
  type request = {
    @ocaml.doc("Unique reservation ID, e.g. '1234567'") @as("ReservationId")
    reservationId: __string,
  }
  @ocaml.doc("Placeholder documentation for DeleteReservationResponse")
  type response = {
    @ocaml.doc("Recurring usage charge for each reserved resource, e.g. '157.0'") @as("UsagePrice")
    usagePrice: option<__double>,
    @ocaml.doc("A collection of key-value pairs") @as("Tags") tags: option<tags>,
    @ocaml.doc("Current state of reservation, e.g. 'ACTIVE'") @as("State")
    state: option<reservationState>,
    @ocaml.doc("Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'")
    @as("Start")
    start: option<__string>,
    @ocaml.doc("Resource configuration details") @as("ResourceSpecification")
    resourceSpecification: option<reservationResourceSpecification>,
    @ocaml.doc("Unique reservation ID, e.g. '1234567'") @as("ReservationId")
    reservationId: option<__string>,
    @ocaml.doc("AWS region, e.g. 'us-west-2'") @as("Region") region: option<__string>,
    @ocaml.doc("Offering type, e.g. 'NO_UPFRONT'") @as("OfferingType")
    offeringType: option<offeringType>,
    @ocaml.doc("Unique offering ID, e.g. '87654321'") @as("OfferingId")
    offeringId: option<__string>,
    @ocaml.doc(
      "Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'"
    )
    @as("OfferingDescription")
    offeringDescription: option<__string>,
    @ocaml.doc("User specified reservation name") @as("Name") name: option<__string>,
    @ocaml.doc("One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering")
    @as("FixedPrice")
    fixedPrice: option<__double>,
    @ocaml.doc("Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'")
    @as("End")
    end: option<__string>,
    @ocaml.doc("Units for duration, e.g. 'MONTHS'") @as("DurationUnits")
    durationUnits: option<offeringDurationUnits>,
    @ocaml.doc("Lease duration, e.g. '12'") @as("Duration") duration: option<__integer>,
    @ocaml.doc("Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'")
    @as("CurrencyCode")
    currencyCode: option<__string>,
    @ocaml.doc("Number of reserved resources") @as("Count") count: option<__integer>,
    @ocaml.doc(
      "Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'"
    )
    @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DeleteReservationCommand"
  let make = (~reservationId, ()) => new({reservationId: reservationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTags = {
  type t
  @ocaml.doc("Placeholder documentation for CreateTagsRequest")
  type request = {
    @as("Tags") tags: option<tags>,
    @as("ResourceArn") resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "CreateTagsCommand"
  let make = (~resourceArn, ~tags=?, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateReservation = {
  type t
  @ocaml.doc("Request to update a reservation")
  type request = {
    @ocaml.doc("Unique reservation ID, e.g. '1234567'") @as("ReservationId")
    reservationId: __string,
    @ocaml.doc("Name of the reservation") @as("Name") name: option<__string>,
  }
  @ocaml.doc("Placeholder documentation for UpdateReservationResponse")
  type response = {@as("Reservation") reservation: option<reservation>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "UpdateReservationCommand"
  let make = (~reservationId, ~name=?, ()) => new({reservationId: reservationId, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInputDevice = {
  type t
  @ocaml.doc("A request to update an input device.")
  type request = {
    @ocaml.doc("The settings that you want to apply to the UHD input device.")
    @as("UhdDeviceSettings")
    uhdDeviceSettings: option<inputDeviceConfigurableSettings>,
    @ocaml.doc("The name that you assigned to this input device (not the unique ID).") @as("Name")
    name: option<__string>,
    @ocaml.doc("The unique ID of the input device. For example, hd-123456789abcdef.")
    @as("InputDeviceId")
    inputDeviceId: __string,
    @ocaml.doc("The settings that you want to apply to the HD input device.")
    @as("HdDeviceSettings")
    hdDeviceSettings: option<inputDeviceConfigurableSettings>,
  }
  @ocaml.doc("Placeholder documentation for UpdateInputDeviceResponse")
  type response = {
    @ocaml.doc("Settings that describe an input device that is type UHD.") @as("UhdDeviceSettings")
    uhdDeviceSettings: option<inputDeviceUhdSettings>,
    @ocaml.doc("The type of the input device.") @as("Type") type_: option<inputDeviceType>,
    @ocaml.doc("The unique serial number of the input device.") @as("SerialNumber")
    serialNumber: option<__string>,
    @ocaml.doc("The network settings for the input device.") @as("NetworkSettings")
    networkSettings: option<inputDeviceNetworkSettings>,
    @ocaml.doc("A name that you specify for the input device.") @as("Name") name: option<__string>,
    @ocaml.doc("The network MAC address of the input device.") @as("MacAddress")
    macAddress: option<__string>,
    @ocaml.doc("The unique ID of the input device.") @as("Id") id: option<__string>,
    @ocaml.doc("Settings that describe an input device that is type HD.") @as("HdDeviceSettings")
    hdDeviceSettings: option<inputDeviceHdSettings>,
    @ocaml.doc("The status of software on the input device.") @as("DeviceUpdateStatus")
    deviceUpdateStatus: option<deviceUpdateStatus>,
    @ocaml.doc(
      "The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration."
    )
    @as("DeviceSettingsSyncState")
    deviceSettingsSyncState: option<deviceSettingsSyncState>,
    @ocaml.doc("The state of the connection between the input device and AWS.")
    @as("ConnectionState")
    connectionState: option<inputDeviceConnectionState>,
    @ocaml.doc("The unique ARN of the input device.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "UpdateInputDeviceCommand"
  let make = (~inputDeviceId, ~uhdDeviceSettings=?, ~name=?, ~hdDeviceSettings=?, ()) =>
    new({
      uhdDeviceSettings: uhdDeviceSettings,
      name: name,
      inputDeviceId: inputDeviceId,
      hdDeviceSettings: hdDeviceSettings,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TransferInputDevice = {
  type t
  @ocaml.doc("A request to transfer an input device.")
  type request = {
    @ocaml.doc("An optional message for the recipient. Maximum 280 characters.")
    @as("TransferMessage")
    transferMessage: option<__string>,
    @ocaml.doc("The target AWS region to transfer the device.") @as("TargetRegion")
    targetRegion: option<__string>,
    @ocaml.doc("The AWS account ID (12 digits) for the recipient of the device transfer.")
    @as("TargetCustomerId")
    targetCustomerId: option<__string>,
    @ocaml.doc("The unique ID of this input device. For example, hd-123456789abcdef.")
    @as("InputDeviceId")
    inputDeviceId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "TransferInputDeviceCommand"
  let make = (~inputDeviceId, ~transferMessage=?, ~targetRegion=?, ~targetCustomerId=?, ()) =>
    new({
      transferMessage: transferMessage,
      targetRegion: targetRegion,
      targetCustomerId: targetCustomerId,
      inputDeviceId: inputDeviceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RejectInputDeviceTransfer = {
  type t
  @ocaml.doc("Placeholder documentation for RejectInputDeviceTransferRequest")
  type request = {
    @ocaml.doc("The unique ID of the input device to reject. For example, hd-123456789abcdef.")
    @as("InputDeviceId")
    inputDeviceId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "RejectInputDeviceTransferCommand"
  let make = (~inputDeviceId, ()) => new({inputDeviceId: inputDeviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PurchaseOffering = {
  type t
  @ocaml.doc("Placeholder documentation for PurchaseOfferingRequest")
  type request = {
    @ocaml.doc("A collection of key-value pairs") @as("Tags") tags: option<tags>,
    @ocaml.doc(
      "Requested reservation start time (UTC) in ISO-8601 format. The specified time must be between the first day of the current month and one year from now. If no value is given, the default is now."
    )
    @as("Start")
    start: option<__string>,
    @ocaml.doc(
      "Unique request ID to be specified. This is needed to prevent retries from creating multiple resources."
    )
    @as("RequestId")
    requestId: option<__string>,
    @ocaml.doc("Offering to purchase, e.g. '87654321'") @as("OfferingId") offeringId: __string,
    @ocaml.doc("Name for the new reservation") @as("Name") name: option<__string>,
    @ocaml.doc("Number of resources") @as("Count") count: __integerMin1,
  }
  @ocaml.doc("Placeholder documentation for PurchaseOfferingResponse")
  type response = {@as("Reservation") reservation: option<reservation>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "PurchaseOfferingCommand"
  let make = (~offeringId, ~count, ~tags=?, ~start=?, ~requestId=?, ~name=?, ()) =>
    new({
      tags: tags,
      start: start,
      requestId: requestId,
      offeringId: offeringId,
      name: name,
      count: count,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMultiplexPrograms = {
  type t
  @ocaml.doc("Placeholder documentation for ListMultiplexProgramsRequest")
  type request = {
    @ocaml.doc("The token to retrieve the next page of results.") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The ID of the multiplex that the programs belong to.") @as("MultiplexId")
    multiplexId: __string,
    @ocaml.doc("The maximum number of items to return.") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  @ocaml.doc("Placeholder documentation for ListMultiplexProgramsResponse")
  type response = {
    @ocaml.doc("Token for the next ListMultiplexProgram request.") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("List of multiplex programs.") @as("MultiplexPrograms")
    multiplexPrograms: option<__listOfMultiplexProgramSummary>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "ListMultiplexProgramsCommand"
  let make = (~multiplexId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, multiplexId: multiplexId, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInputDeviceTransfers = {
  type t
  @ocaml.doc("Placeholder documentation for ListInputDeviceTransfersRequest")
  type request = {
    @as("TransferType") transferType: __string,
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  @ocaml.doc("Placeholder documentation for ListInputDeviceTransfersResponse")
  type response = {
    @ocaml.doc("A token to get additional list results.") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The list of devices that you are transferring or are being transferred to you.")
    @as("InputDeviceTransfers")
    inputDeviceTransfers: option<__listOfTransferringInputDeviceSummary>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "ListInputDeviceTransfersCommand"
  let make = (~transferType, ~nextToken=?, ~maxResults=?, ()) =>
    new({transferType: transferType, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInputSecurityGroup = {
  type t
  @ocaml.doc("Placeholder documentation for DescribeInputSecurityGroupRequest")
  type request = {
    @ocaml.doc("The id of the Input Security Group to describe") @as("InputSecurityGroupId")
    inputSecurityGroupId: __string,
  }
  @ocaml.doc("Placeholder documentation for DescribeInputSecurityGroupResponse")
  type response = {
    @ocaml.doc("Whitelist rules and their sync status") @as("WhitelistRules")
    whitelistRules: option<__listOfInputWhitelistRule>,
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @ocaml.doc("The current state of the Input Security Group.") @as("State")
    state: option<inputSecurityGroupState>,
    @ocaml.doc("The list of inputs currently using this Input Security Group.") @as("Inputs")
    inputs: option<__listOf__string>,
    @ocaml.doc("The Id of the Input Security Group") @as("Id") id: option<__string>,
    @ocaml.doc("Unique ARN of Input Security Group") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DescribeInputSecurityGroupCommand"
  let make = (~inputSecurityGroupId, ()) => new({inputSecurityGroupId: inputSecurityGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInputDevice = {
  type t
  @ocaml.doc("Placeholder documentation for DescribeInputDeviceRequest")
  type request = {
    @ocaml.doc("The unique ID of this input device. For example, hd-123456789abcdef.")
    @as("InputDeviceId")
    inputDeviceId: __string,
  }
  @ocaml.doc("Placeholder documentation for DescribeInputDeviceResponse")
  type response = {
    @ocaml.doc("Settings that describe an input device that is type UHD.") @as("UhdDeviceSettings")
    uhdDeviceSettings: option<inputDeviceUhdSettings>,
    @ocaml.doc("The type of the input device.") @as("Type") type_: option<inputDeviceType>,
    @ocaml.doc("The unique serial number of the input device.") @as("SerialNumber")
    serialNumber: option<__string>,
    @ocaml.doc("The network settings for the input device.") @as("NetworkSettings")
    networkSettings: option<inputDeviceNetworkSettings>,
    @ocaml.doc("A name that you specify for the input device.") @as("Name") name: option<__string>,
    @ocaml.doc("The network MAC address of the input device.") @as("MacAddress")
    macAddress: option<__string>,
    @ocaml.doc("The unique ID of the input device.") @as("Id") id: option<__string>,
    @ocaml.doc("Settings that describe an input device that is type HD.") @as("HdDeviceSettings")
    hdDeviceSettings: option<inputDeviceHdSettings>,
    @ocaml.doc("The status of software on the input device.") @as("DeviceUpdateStatus")
    deviceUpdateStatus: option<deviceUpdateStatus>,
    @ocaml.doc(
      "The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration."
    )
    @as("DeviceSettingsSyncState")
    deviceSettingsSyncState: option<deviceSettingsSyncState>,
    @ocaml.doc("The state of the connection between the input device and AWS.")
    @as("ConnectionState")
    connectionState: option<inputDeviceConnectionState>,
    @ocaml.doc("The unique ARN of the input device.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DescribeInputDeviceCommand"
  let make = (~inputDeviceId, ()) => new({inputDeviceId: inputDeviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ClaimDevice = {
  type t
  @ocaml.doc(
    "A request to claim an AWS Elemental device that you have purchased from a third-party vendor."
  )
  type request = {
    @ocaml.doc("The id of the device you want to claim.") @as("Id") id: option<__string>,
  }
  type response = {.}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ClaimDeviceCommand"
  let make = (~id=?, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelInputDeviceTransfer = {
  type t
  @ocaml.doc("Placeholder documentation for CancelInputDeviceTransferRequest")
  type request = {
    @ocaml.doc("The unique ID of the input device to cancel. For example, hd-123456789abcdef.")
    @as("InputDeviceId")
    inputDeviceId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "CancelInputDeviceTransferCommand"
  let make = (~inputDeviceId, ()) => new({inputDeviceId: inputDeviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module BatchStop = {
  type t
  @ocaml.doc("A request to stop resources")
  type request = {
    @ocaml.doc("List of multiplex IDs") @as("MultiplexIds") multiplexIds: option<__listOf__string>,
    @ocaml.doc("List of channel IDs") @as("ChannelIds") channelIds: option<__listOf__string>,
  }
  @ocaml.doc("Placeholder documentation for BatchStopResponse")
  type response = {
    @ocaml.doc("List of successful operations") @as("Successful")
    successful: option<__listOfBatchSuccessfulResultModel>,
    @ocaml.doc("List of failed operations") @as("Failed")
    failed: option<__listOfBatchFailedResultModel>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "BatchStopCommand"
  let make = (~multiplexIds=?, ~channelIds=?, ()) =>
    new({multiplexIds: multiplexIds, channelIds: channelIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchStart = {
  type t
  @ocaml.doc("A request to start resources")
  type request = {
    @ocaml.doc("List of multiplex IDs") @as("MultiplexIds") multiplexIds: option<__listOf__string>,
    @ocaml.doc("List of channel IDs") @as("ChannelIds") channelIds: option<__listOf__string>,
  }
  @ocaml.doc("Placeholder documentation for BatchStartResponse")
  type response = {
    @ocaml.doc("List of successful operations") @as("Successful")
    successful: option<__listOfBatchSuccessfulResultModel>,
    @ocaml.doc("List of failed operations") @as("Failed")
    failed: option<__listOfBatchFailedResultModel>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "BatchStartCommand"
  let make = (~multiplexIds=?, ~channelIds=?, ()) =>
    new({multiplexIds: multiplexIds, channelIds: channelIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDelete = {
  type t
  @ocaml.doc("A request to delete resources")
  type request = {
    @ocaml.doc("List of multiplex IDs") @as("MultiplexIds") multiplexIds: option<__listOf__string>,
    @ocaml.doc("List of input security group IDs") @as("InputSecurityGroupIds")
    inputSecurityGroupIds: option<__listOf__string>,
    @ocaml.doc("List of input IDs") @as("InputIds") inputIds: option<__listOf__string>,
    @ocaml.doc("List of channel IDs") @as("ChannelIds") channelIds: option<__listOf__string>,
  }
  @ocaml.doc("Placeholder documentation for BatchDeleteResponse")
  type response = {
    @ocaml.doc("List of successful operations") @as("Successful")
    successful: option<__listOfBatchSuccessfulResultModel>,
    @ocaml.doc("List of failed operations") @as("Failed")
    failed: option<__listOfBatchFailedResultModel>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "BatchDeleteCommand"
  let make = (~multiplexIds=?, ~inputSecurityGroupIds=?, ~inputIds=?, ~channelIds=?, ()) =>
    new({
      multiplexIds: multiplexIds,
      inputSecurityGroupIds: inputSecurityGroupIds,
      inputIds: inputIds,
      channelIds: channelIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptInputDeviceTransfer = {
  type t
  @ocaml.doc("Placeholder documentation for AcceptInputDeviceTransferRequest")
  type request = {
    @ocaml.doc("The unique ID of the input device to accept. For example, hd-123456789abcdef.")
    @as("InputDeviceId")
    inputDeviceId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "AcceptInputDeviceTransferCommand"
  let make = (~inputDeviceId, ()) => new({inputDeviceId: inputDeviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateInputSecurityGroup = {
  type t
  @ocaml.doc(
    "The request to update some combination of the Input Security Group name and the IPv4 CIDRs the Input Security Group should allow."
  )
  type request = {
    @ocaml.doc("List of IPv4 CIDR addresses to whitelist") @as("WhitelistRules")
    whitelistRules: option<__listOfInputWhitelistRuleCidr>,
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @ocaml.doc("The id of the Input Security Group to update.") @as("InputSecurityGroupId")
    inputSecurityGroupId: __string,
  }
  @ocaml.doc("Placeholder documentation for UpdateInputSecurityGroupResponse")
  type response = {@as("SecurityGroup") securityGroup: option<inputSecurityGroup>}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "UpdateInputSecurityGroupCommand"
  let make = (~inputSecurityGroupId, ~whitelistRules=?, ~tags=?, ()) =>
    new({whitelistRules: whitelistRules, tags: tags, inputSecurityGroupId: inputSecurityGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopMultiplex = {
  type t
  @ocaml.doc("Placeholder documentation for StopMultiplexRequest")
  type request = {@ocaml.doc("The ID of the multiplex.") @as("MultiplexId") multiplexId: __string}
  @ocaml.doc("Placeholder documentation for StopMultiplexResponse")
  type response = {
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @ocaml.doc("The current state of the multiplex.") @as("State") state: option<multiplexState>,
    @ocaml.doc("The number of programs in the multiplex.") @as("ProgramCount")
    programCount: option<__integer>,
    @ocaml.doc("The number of currently healthy pipelines.") @as("PipelinesRunningCount")
    pipelinesRunningCount: option<__integer>,
    @ocaml.doc("The name of the multiplex.") @as("Name") name: option<__string>,
    @ocaml.doc("Configuration for a multiplex event.") @as("MultiplexSettings")
    multiplexSettings: option<multiplexSettings>,
    @ocaml.doc("The unique id of the multiplex.") @as("Id") id: option<__string>,
    @ocaml.doc("A list of the multiplex output destinations.") @as("Destinations")
    destinations: option<__listOfMultiplexOutputDestination>,
    @ocaml.doc("A list of availability zones for the multiplex.") @as("AvailabilityZones")
    availabilityZones: option<__listOf__string>,
    @ocaml.doc("The unique arn of the multiplex.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "StopMultiplexCommand"
  let make = (~multiplexId, ()) => new({multiplexId: multiplexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMultiplex = {
  type t
  @ocaml.doc("Placeholder documentation for StartMultiplexRequest")
  type request = {@ocaml.doc("The ID of the multiplex.") @as("MultiplexId") multiplexId: __string}
  @ocaml.doc("Placeholder documentation for StartMultiplexResponse")
  type response = {
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @ocaml.doc("The current state of the multiplex.") @as("State") state: option<multiplexState>,
    @ocaml.doc("The number of programs in the multiplex.") @as("ProgramCount")
    programCount: option<__integer>,
    @ocaml.doc("The number of currently healthy pipelines.") @as("PipelinesRunningCount")
    pipelinesRunningCount: option<__integer>,
    @ocaml.doc("The name of the multiplex.") @as("Name") name: option<__string>,
    @ocaml.doc("Configuration for a multiplex event.") @as("MultiplexSettings")
    multiplexSettings: option<multiplexSettings>,
    @ocaml.doc("The unique id of the multiplex.") @as("Id") id: option<__string>,
    @ocaml.doc("A list of the multiplex output destinations.") @as("Destinations")
    destinations: option<__listOfMultiplexOutputDestination>,
    @ocaml.doc("A list of availability zones for the multiplex.") @as("AvailabilityZones")
    availabilityZones: option<__listOf__string>,
    @ocaml.doc("The unique arn of the multiplex.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "StartMultiplexCommand"
  let make = (~multiplexId, ()) => new({multiplexId: multiplexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReservations = {
  type t
  @ocaml.doc("Placeholder documentation for ListReservationsRequest")
  type request = {
    @ocaml.doc("Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'") @as("VideoQuality")
    videoQuality: option<__string>,
    @ocaml.doc("Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'")
    @as("SpecialFeature")
    specialFeature: option<__string>,
    @ocaml.doc("Filter by resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'")
    @as("ResourceType")
    resourceType: option<__string>,
    @ocaml.doc("Filter by resolution, 'SD', 'HD', 'FHD', or 'UHD'") @as("Resolution")
    resolution: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @ocaml.doc("Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'") @as("MaximumFramerate")
    maximumFramerate: option<__string>,
    @ocaml.doc("Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'")
    @as("MaximumBitrate")
    maximumBitrate: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc("Filter by codec, 'AVC', 'HEVC', 'MPEG2', 'AUDIO', or 'LINK'") @as("Codec")
    codec: option<__string>,
    @ocaml.doc("Filter by channel class, 'STANDARD' or 'SINGLE_PIPELINE'") @as("ChannelClass")
    channelClass: option<__string>,
  }
  @ocaml.doc("Placeholder documentation for ListReservationsResponse")
  type response = {
    @ocaml.doc("List of reservations") @as("Reservations")
    reservations: option<__listOfReservation>,
    @ocaml.doc("Token to retrieve the next page of results") @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ListReservationsCommand"
  let make = (
    ~videoQuality=?,
    ~specialFeature=?,
    ~resourceType=?,
    ~resolution=?,
    ~nextToken=?,
    ~maximumFramerate=?,
    ~maximumBitrate=?,
    ~maxResults=?,
    ~codec=?,
    ~channelClass=?,
    (),
  ) =>
    new({
      videoQuality: videoQuality,
      specialFeature: specialFeature,
      resourceType: resourceType,
      resolution: resolution,
      nextToken: nextToken,
      maximumFramerate: maximumFramerate,
      maximumBitrate: maximumBitrate,
      maxResults: maxResults,
      codec: codec,
      channelClass: channelClass,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOfferings = {
  type t
  @ocaml.doc("Placeholder documentation for ListOfferingsRequest")
  type request = {
    @ocaml.doc("Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'") @as("VideoQuality")
    videoQuality: option<__string>,
    @ocaml.doc("Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'")
    @as("SpecialFeature")
    specialFeature: option<__string>,
    @ocaml.doc("Filter by resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'")
    @as("ResourceType")
    resourceType: option<__string>,
    @ocaml.doc("Filter by resolution, 'SD', 'HD', 'FHD', or 'UHD'") @as("Resolution")
    resolution: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @ocaml.doc("Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'") @as("MaximumFramerate")
    maximumFramerate: option<__string>,
    @ocaml.doc("Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'")
    @as("MaximumBitrate")
    maximumBitrate: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc("Filter by offering duration, e.g. '12'") @as("Duration") duration: option<__string>,
    @ocaml.doc("Filter by codec, 'AVC', 'HEVC', 'MPEG2', 'AUDIO', or 'LINK'") @as("Codec")
    codec: option<__string>,
    @ocaml.doc(
      "Filter to offerings that match the configuration of an existing channel, e.g. '2345678' (a channel ID)"
    )
    @as("ChannelConfiguration")
    channelConfiguration: option<__string>,
    @ocaml.doc("Filter by channel class, 'STANDARD' or 'SINGLE_PIPELINE'") @as("ChannelClass")
    channelClass: option<__string>,
  }
  @ocaml.doc("Placeholder documentation for ListOfferingsResponse")
  type response = {
    @ocaml.doc("List of offerings") @as("Offerings") offerings: option<__listOfOffering>,
    @ocaml.doc("Token to retrieve the next page of results") @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ListOfferingsCommand"
  let make = (
    ~videoQuality=?,
    ~specialFeature=?,
    ~resourceType=?,
    ~resolution=?,
    ~nextToken=?,
    ~maximumFramerate=?,
    ~maximumBitrate=?,
    ~maxResults=?,
    ~duration=?,
    ~codec=?,
    ~channelConfiguration=?,
    ~channelClass=?,
    (),
  ) =>
    new({
      videoQuality: videoQuality,
      specialFeature: specialFeature,
      resourceType: resourceType,
      resolution: resolution,
      nextToken: nextToken,
      maximumFramerate: maximumFramerate,
      maximumBitrate: maximumBitrate,
      maxResults: maxResults,
      duration: duration,
      codec: codec,
      channelConfiguration: channelConfiguration,
      channelClass: channelClass,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMultiplexes = {
  type t
  @ocaml.doc("Placeholder documentation for ListMultiplexesRequest")
  type request = {
    @ocaml.doc("The token to retrieve the next page of results.") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The maximum number of items to return.") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  @ocaml.doc("Placeholder documentation for ListMultiplexesResponse")
  type response = {
    @ocaml.doc("Token for the next ListMultiplexes request.") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("List of multiplexes.") @as("Multiplexes")
    multiplexes: option<__listOfMultiplexSummary>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ListMultiplexesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMultiplexProgram = {
  type t
  @ocaml.doc("Placeholder documentation for DescribeMultiplexProgramRequest")
  type request = {
    @ocaml.doc("The name of the program.") @as("ProgramName") programName: __string,
    @ocaml.doc("The ID of the multiplex that the program belongs to.") @as("MultiplexId")
    multiplexId: __string,
  }
  @ocaml.doc("Placeholder documentation for DescribeMultiplexProgramResponse")
  type response = {
    @ocaml.doc("The name of the multiplex program.") @as("ProgramName")
    programName: option<__string>,
    @ocaml.doc(
      "Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time."
    )
    @as("PipelineDetails")
    pipelineDetails: option<__listOfMultiplexProgramPipelineDetail>,
    @ocaml.doc("The packet identifier map for this multiplex program.") @as("PacketIdentifiersMap")
    packetIdentifiersMap: option<multiplexProgramPacketIdentifiersMap>,
    @ocaml.doc("The settings for this multiplex program.") @as("MultiplexProgramSettings")
    multiplexProgramSettings: option<multiplexProgramSettings>,
    @ocaml.doc("The MediaLive channel associated with the program.") @as("ChannelId")
    channelId: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DescribeMultiplexProgramCommand"
  let make = (~programName, ~multiplexId, ()) =>
    new({programName: programName, multiplexId: multiplexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMultiplex = {
  type t
  @ocaml.doc("Placeholder documentation for DescribeMultiplexRequest")
  type request = {@ocaml.doc("The ID of the multiplex.") @as("MultiplexId") multiplexId: __string}
  @ocaml.doc("Placeholder documentation for DescribeMultiplexResponse")
  type response = {
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @ocaml.doc("The current state of the multiplex.") @as("State") state: option<multiplexState>,
    @ocaml.doc("The number of programs in the multiplex.") @as("ProgramCount")
    programCount: option<__integer>,
    @ocaml.doc("The number of currently healthy pipelines.") @as("PipelinesRunningCount")
    pipelinesRunningCount: option<__integer>,
    @ocaml.doc("The name of the multiplex.") @as("Name") name: option<__string>,
    @ocaml.doc("Configuration for a multiplex event.") @as("MultiplexSettings")
    multiplexSettings: option<multiplexSettings>,
    @ocaml.doc("The unique id of the multiplex.") @as("Id") id: option<__string>,
    @ocaml.doc("A list of the multiplex output destinations.") @as("Destinations")
    destinations: option<__listOfMultiplexOutputDestination>,
    @ocaml.doc("A list of availability zones for the multiplex.") @as("AvailabilityZones")
    availabilityZones: option<__listOf__string>,
    @ocaml.doc("The unique arn of the multiplex.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DescribeMultiplexCommand"
  let make = (~multiplexId, ()) => new({multiplexId: multiplexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInput = {
  type t
  @ocaml.doc("Placeholder documentation for DescribeInputRequest")
  type request = {@ocaml.doc("Unique ID of the input") @as("InputId") inputId: __string}
  @ocaml.doc("Placeholder documentation for DescribeInputResponse")
  type response = {
    @as("Type") type_: option<inputType>,
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @as("State") state: option<inputState>,
    @ocaml.doc("A list of the sources of the input (PULL-type).") @as("Sources")
    sources: option<__listOfInputSource>,
    @ocaml.doc("A list of IDs for all the Input Security Groups attached to the input.")
    @as("SecurityGroups")
    securityGroups: option<__listOf__string>,
    @ocaml.doc(
      "The Amazon Resource Name (ARN) of the role this input assumes during and after creation."
    )
    @as("RoleArn")
    roleArn: option<__string>,
    @ocaml.doc("The user-assigned name (This is a mutable value).") @as("Name")
    name: option<__string>,
    @ocaml.doc("A list of MediaConnect Flows for this input.") @as("MediaConnectFlows")
    mediaConnectFlows: option<__listOfMediaConnectFlow>,
    @ocaml.doc("Certain pull input sources can be dynamic, meaning that they can have their URL's dynamically changes
during input switch actions. Presently, this functionality only works with MP4_FILE and TS_FILE inputs.")
    @as("InputSourceType")
    inputSourceType: option<inputSourceType>,
    @ocaml.doc("A list of IDs for all Inputs which are partners of this one.")
    @as("InputPartnerIds")
    inputPartnerIds: option<__listOf__string>,
    @ocaml.doc("Settings for the input devices.") @as("InputDevices")
    inputDevices: option<__listOfInputDeviceSettings>,
    @ocaml.doc("STANDARD - MediaLive expects two sources to be connected to this input. If the channel is also STANDARD, both sources will be ingested. If the channel is SINGLE_PIPELINE, only the first source will be ingested; the second source will always be ignored, even if the first source fails.
SINGLE_PIPELINE - You can connect only one source to this input. If the ChannelClass is also  SINGLE_PIPELINE, this value is valid. If the ChannelClass is STANDARD, this value is not valid because the channel requires two sources in the input.")
    @as("InputClass")
    inputClass: option<inputClass>,
    @ocaml.doc("The generated ID of the input (unique for user account, immutable).") @as("Id")
    id: option<__string>,
    @ocaml.doc("A list of the destinations of the input (PUSH-type).") @as("Destinations")
    destinations: option<__listOfInputDestination>,
    @ocaml.doc(
      "A list of channel IDs that that input is attached to (currently an input can only be attached to one channel)."
    )
    @as("AttachedChannels")
    attachedChannels: option<__listOf__string>,
    @ocaml.doc("The Unique ARN of the input (generated, immutable).") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DescribeInputCommand"
  let make = (~inputId, ()) => new({inputId: inputId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMultiplexProgram = {
  type t
  @ocaml.doc("Placeholder documentation for DeleteMultiplexProgramRequest")
  type request = {
    @ocaml.doc("The multiplex program name.") @as("ProgramName") programName: __string,
    @ocaml.doc("The ID of the multiplex that the program belongs to.") @as("MultiplexId")
    multiplexId: __string,
  }
  @ocaml.doc("Placeholder documentation for DeleteMultiplexProgramResponse")
  type response = {
    @ocaml.doc("The name of the multiplex program.") @as("ProgramName")
    programName: option<__string>,
    @ocaml.doc(
      "Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time."
    )
    @as("PipelineDetails")
    pipelineDetails: option<__listOfMultiplexProgramPipelineDetail>,
    @ocaml.doc("The packet identifier map for this multiplex program.") @as("PacketIdentifiersMap")
    packetIdentifiersMap: option<multiplexProgramPacketIdentifiersMap>,
    @ocaml.doc("The settings for this multiplex program.") @as("MultiplexProgramSettings")
    multiplexProgramSettings: option<multiplexProgramSettings>,
    @ocaml.doc("The MediaLive channel associated with the program.") @as("ChannelId")
    channelId: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DeleteMultiplexProgramCommand"
  let make = (~programName, ~multiplexId, ()) =>
    new({programName: programName, multiplexId: multiplexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMultiplex = {
  type t
  @ocaml.doc("Placeholder documentation for DeleteMultiplexRequest")
  type request = {@ocaml.doc("The ID of the multiplex.") @as("MultiplexId") multiplexId: __string}
  @ocaml.doc("Placeholder documentation for DeleteMultiplexResponse")
  type response = {
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @ocaml.doc("The current state of the multiplex.") @as("State") state: option<multiplexState>,
    @ocaml.doc("The number of programs in the multiplex.") @as("ProgramCount")
    programCount: option<__integer>,
    @ocaml.doc("The number of currently healthy pipelines.") @as("PipelinesRunningCount")
    pipelinesRunningCount: option<__integer>,
    @ocaml.doc("The name of the multiplex.") @as("Name") name: option<__string>,
    @ocaml.doc("Configuration for a multiplex event.") @as("MultiplexSettings")
    multiplexSettings: option<multiplexSettings>,
    @ocaml.doc("The unique id of the multiplex.") @as("Id") id: option<__string>,
    @ocaml.doc("A list of the multiplex output destinations.") @as("Destinations")
    destinations: option<__listOfMultiplexOutputDestination>,
    @ocaml.doc("A list of availability zones for the multiplex.") @as("AvailabilityZones")
    availabilityZones: option<__listOf__string>,
    @ocaml.doc("The unique arn of the multiplex.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DeleteMultiplexCommand"
  let make = (~multiplexId, ()) => new({multiplexId: multiplexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInputSecurityGroup = {
  type t
  @ocaml.doc("The IPv4 CIDRs to whitelist for this Input Security Group")
  type request = {
    @ocaml.doc("List of IPv4 CIDR addresses to whitelist") @as("WhitelistRules")
    whitelistRules: option<__listOfInputWhitelistRuleCidr>,
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
  }
  @ocaml.doc("Placeholder documentation for CreateInputSecurityGroupResponse")
  type response = {@as("SecurityGroup") securityGroup: option<inputSecurityGroup>}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "CreateInputSecurityGroupCommand"
  let make = (~whitelistRules=?, ~tags=?, ()) => new({whitelistRules: whitelistRules, tags: tags})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMultiplexProgram = {
  type t
  @ocaml.doc("A request to update a program in a multiplex.")
  type request = {
    @ocaml.doc("The name of the program to update.") @as("ProgramName") programName: __string,
    @ocaml.doc("The new settings for a multiplex program.") @as("MultiplexProgramSettings")
    multiplexProgramSettings: option<multiplexProgramSettings>,
    @ocaml.doc("The ID of the multiplex of the program to update.") @as("MultiplexId")
    multiplexId: __string,
  }
  @ocaml.doc("Placeholder documentation for UpdateMultiplexProgramResponse")
  type response = {
    @ocaml.doc("The updated multiplex program.") @as("MultiplexProgram")
    multiplexProgram: option<multiplexProgram>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "UpdateMultiplexProgramCommand"
  let make = (~programName, ~multiplexId, ~multiplexProgramSettings=?, ()) =>
    new({
      programName: programName,
      multiplexProgramSettings: multiplexProgramSettings,
      multiplexId: multiplexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMultiplex = {
  type t
  @ocaml.doc("A request to update a multiplex.")
  type request = {
    @ocaml.doc("Name of the multiplex.") @as("Name") name: option<__string>,
    @ocaml.doc("The new settings for a multiplex.") @as("MultiplexSettings")
    multiplexSettings: option<multiplexSettings>,
    @ocaml.doc("ID of the multiplex to update.") @as("MultiplexId") multiplexId: __string,
  }
  @ocaml.doc("Placeholder documentation for UpdateMultiplexResponse")
  type response = {
    @ocaml.doc("The updated multiplex.") @as("Multiplex") multiplex: option<multiplex>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "UpdateMultiplexCommand"
  let make = (~multiplexId, ~name=?, ~multiplexSettings=?, ()) =>
    new({name: name, multiplexSettings: multiplexSettings, multiplexId: multiplexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInput = {
  type t
  @ocaml.doc("A request to update an input.")
  type request = {
    @ocaml.doc("The source URLs for a PULL-type input. Every PULL type input needs
exactly two source URLs for redundancy.
Only specify sources for PULL type Inputs. Leave Destinations empty.")
    @as("Sources")
    sources: option<__listOfInputSourceRequest>,
    @ocaml.doc(
      "The Amazon Resource Name (ARN) of the role this input assumes during and after creation."
    )
    @as("RoleArn")
    roleArn: option<__string>,
    @ocaml.doc("Name of the input.") @as("Name") name: option<__string>,
    @ocaml.doc("A list of the MediaConnect Flow ARNs that you want to use as the source of the input. You can specify as few as one
Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a
separate Availability Zone as this ensures your EML input is redundant to AZ issues.")
    @as("MediaConnectFlows")
    mediaConnectFlows: option<__listOfMediaConnectFlowRequest>,
    @ocaml.doc("A list of security groups referenced by IDs to attach to the input.")
    @as("InputSecurityGroups")
    inputSecurityGroups: option<__listOf__string>,
    @ocaml.doc("Unique ID of the input.") @as("InputId") inputId: __string,
    @ocaml.doc("Settings for the devices.") @as("InputDevices")
    inputDevices: option<__listOfInputDeviceRequest>,
    @ocaml.doc("Destination settings for PUSH type inputs.") @as("Destinations")
    destinations: option<__listOfInputDestinationRequest>,
  }
  @ocaml.doc("Placeholder documentation for UpdateInputResponse")
  type response = {@as("Input") input: option<input>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "UpdateInputCommand"
  let make = (
    ~inputId,
    ~sources=?,
    ~roleArn=?,
    ~name=?,
    ~mediaConnectFlows=?,
    ~inputSecurityGroups=?,
    ~inputDevices=?,
    ~destinations=?,
    (),
  ) =>
    new({
      sources: sources,
      roleArn: roleArn,
      name: name,
      mediaConnectFlows: mediaConnectFlows,
      inputSecurityGroups: inputSecurityGroups,
      inputId: inputId,
      inputDevices: inputDevices,
      destinations: destinations,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInputSecurityGroups = {
  type t
  @ocaml.doc("Placeholder documentation for ListInputSecurityGroupsRequest")
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  @ocaml.doc("Placeholder documentation for ListInputSecurityGroupsResponse")
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @ocaml.doc("List of input security groups") @as("InputSecurityGroups")
    inputSecurityGroups: option<__listOfInputSecurityGroup>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "ListInputSecurityGroupsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInputDevices = {
  type t
  @ocaml.doc("Placeholder documentation for ListInputDevicesRequest")
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  @ocaml.doc("Placeholder documentation for ListInputDevicesResponse")
  type response = {
    @ocaml.doc("A token to get additional list results.") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("The list of input devices.") @as("InputDevices")
    inputDevices: option<__listOfInputDeviceSummary>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ListInputDevicesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePartnerInput = {
  type t
  @ocaml.doc("A request to create a partner input")
  type request = {
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @ocaml.doc("Unique identifier of the request to ensure the request is handled
exactly once in case of retries.")
    @as("RequestId")
    requestId: option<__string>,
    @ocaml.doc("Unique ID of the input.") @as("InputId") inputId: __string,
  }
  @ocaml.doc("Placeholder documentation for CreatePartnerInputResponse")
  type response = {@as("Input") input: option<input>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "CreatePartnerInputCommand"
  let make = (~inputId, ~tags=?, ~requestId=?, ()) =>
    new({tags: tags, requestId: requestId, inputId: inputId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMultiplexProgram = {
  type t
  @ocaml.doc("A request to create a program in a multiplex.")
  type request = {
    @ocaml.doc("Unique request ID. This prevents retries from creating multiple
resources.")
    @as("RequestId")
    requestId: __string,
    @ocaml.doc("Name of multiplex program.") @as("ProgramName") programName: __string,
    @ocaml.doc("The settings for this multiplex program.") @as("MultiplexProgramSettings")
    multiplexProgramSettings: multiplexProgramSettings,
    @ocaml.doc("ID of the multiplex where the program is to be created.") @as("MultiplexId")
    multiplexId: __string,
  }
  @ocaml.doc("Placeholder documentation for CreateMultiplexProgramResponse")
  type response = {
    @ocaml.doc("The newly created multiplex program.") @as("MultiplexProgram")
    multiplexProgram: option<multiplexProgram>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "CreateMultiplexProgramCommand"
  let make = (~requestId, ~programName, ~multiplexProgramSettings, ~multiplexId, ()) =>
    new({
      requestId: requestId,
      programName: programName,
      multiplexProgramSettings: multiplexProgramSettings,
      multiplexId: multiplexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMultiplex = {
  type t
  @ocaml.doc("A request to create a multiplex.")
  type request = {
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @ocaml.doc("Unique request ID. This prevents retries from creating multiple
resources.")
    @as("RequestId")
    requestId: __string,
    @ocaml.doc("Name of multiplex.") @as("Name") name: __string,
    @ocaml.doc("Configuration for a multiplex event.") @as("MultiplexSettings")
    multiplexSettings: multiplexSettings,
    @ocaml.doc("A list of availability zones for the multiplex. You must specify exactly two.")
    @as("AvailabilityZones")
    availabilityZones: __listOf__string,
  }
  @ocaml.doc("Placeholder documentation for CreateMultiplexResponse")
  type response = {
    @ocaml.doc("The newly created multiplex.") @as("Multiplex") multiplex: option<multiplex>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "CreateMultiplexCommand"
  let make = (~requestId, ~name, ~multiplexSettings, ~availabilityZones, ~tags=?, ()) =>
    new({
      tags: tags,
      requestId: requestId,
      name: name,
      multiplexSettings: multiplexSettings,
      availabilityZones: availabilityZones,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInput = {
  type t
  @ocaml.doc("The name of the input")
  type request = {
    @as("Vpc") vpc: option<inputVpcRequest>,
    @as("Type") type_: option<inputType>,
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @ocaml.doc("The source URLs for a PULL-type input. Every PULL type input needs
exactly two source URLs for redundancy.
Only specify sources for PULL type Inputs. Leave Destinations empty.")
    @as("Sources")
    sources: option<__listOfInputSourceRequest>,
    @ocaml.doc(
      "The Amazon Resource Name (ARN) of the role this input assumes during and after creation."
    )
    @as("RoleArn")
    roleArn: option<__string>,
    @ocaml.doc("Unique identifier of the request to ensure the request is handled
exactly once in case of retries.")
    @as("RequestId")
    requestId: option<__string>,
    @ocaml.doc("Name of the input.") @as("Name") name: option<__string>,
    @ocaml.doc("A list of the MediaConnect Flows that you want to use in this input. You can specify as few as one
Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a
separate Availability Zone as this ensures your EML input is redundant to AZ issues.")
    @as("MediaConnectFlows")
    mediaConnectFlows: option<__listOfMediaConnectFlowRequest>,
    @ocaml.doc("A list of security groups referenced by IDs to attach to the input.")
    @as("InputSecurityGroups")
    inputSecurityGroups: option<__listOf__string>,
    @ocaml.doc("Settings for the devices.") @as("InputDevices")
    inputDevices: option<__listOfInputDeviceSettings>,
    @ocaml.doc("Destination settings for PUSH type inputs.") @as("Destinations")
    destinations: option<__listOfInputDestinationRequest>,
  }
  @ocaml.doc("Placeholder documentation for CreateInputResponse")
  type response = {@as("Input") input: option<input>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "CreateInputCommand"
  let make = (
    ~vpc=?,
    ~type_=?,
    ~tags=?,
    ~sources=?,
    ~roleArn=?,
    ~requestId=?,
    ~name=?,
    ~mediaConnectFlows=?,
    ~inputSecurityGroups=?,
    ~inputDevices=?,
    ~destinations=?,
    (),
  ) =>
    new({
      vpc: vpc,
      type_: type_,
      tags: tags,
      sources: sources,
      roleArn: roleArn,
      requestId: requestId,
      name: name,
      mediaConnectFlows: mediaConnectFlows,
      inputSecurityGroups: inputSecurityGroups,
      inputDevices: inputDevices,
      destinations: destinations,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInputs = {
  type t
  @ocaml.doc("Placeholder documentation for ListInputsRequest")
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  @ocaml.doc("Placeholder documentation for ListInputsResponse")
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Inputs") inputs: option<__listOfInput>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ListInputsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSchedule = {
  type t
  @ocaml.doc("Placeholder documentation for DescribeScheduleRequest")
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc("Id of the channel whose schedule is being updated.") @as("ChannelId")
    channelId: __string,
  }
  @ocaml.doc("Placeholder documentation for DescribeScheduleResponse")
  type response = {
    @ocaml.doc("The list of actions in the schedule.") @as("ScheduleActions")
    scheduleActions: option<__listOfScheduleAction>,
    @ocaml.doc("The next token; for use in pagination.") @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DescribeScheduleCommand"
  let make = (~channelId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, channelId: channelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopChannel = {
  type t
  @ocaml.doc("Placeholder documentation for StopChannelRequest")
  type request = {
    @ocaml.doc("A request to stop a running channel") @as("ChannelId") channelId: __string,
  }
  @ocaml.doc("Placeholder documentation for StopChannelResponse")
  type response = {
    @ocaml.doc("Settings for VPC output") @as("Vpc") vpc: option<vpcOutputSettingsDescription>,
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @as("State") state: option<channelState>,
    @ocaml.doc("The Amazon Resource Name (ARN) of the role assumed when running the Channel.")
    @as("RoleArn")
    roleArn: option<__string>,
    @ocaml.doc("The number of currently healthy pipelines.") @as("PipelinesRunningCount")
    pipelinesRunningCount: option<__integer>,
    @ocaml.doc("Runtime details for the pipelines of a running channel.") @as("PipelineDetails")
    pipelineDetails: option<__listOfPipelineDetail>,
    @ocaml.doc("The name of the channel. (user-mutable)") @as("Name") name: option<__string>,
    @ocaml.doc("Maintenance settings for this channel.") @as("Maintenance")
    maintenance: option<maintenanceStatus>,
    @ocaml.doc("The log level being written to CloudWatch Logs.") @as("LogLevel")
    logLevel: option<logLevel>,
    @ocaml.doc("Specification of network and file inputs for this channel")
    @as("InputSpecification")
    inputSpecification: option<inputSpecification>,
    @ocaml.doc("List of input attachments for channel.") @as("InputAttachments")
    inputAttachments: option<__listOfInputAttachment>,
    @ocaml.doc("The unique id of the channel.") @as("Id") id: option<__string>,
    @as("EncoderSettings") encoderSettings: option<encoderSettings>,
    @ocaml.doc("The endpoints where outgoing connections initiate from") @as("EgressEndpoints")
    egressEndpoints: option<__listOfChannelEgressEndpoint>,
    @ocaml.doc("A list of destinations of the channel. For UDP outputs, there is one
destination per output. For other types (HLS, for example), there is
one destination per packager.")
    @as("Destinations")
    destinations: option<__listOfOutputDestination>,
    @ocaml.doc(
      "The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline."
    )
    @as("ChannelClass")
    channelClass: option<channelClass>,
    @ocaml.doc("Specification of CDI inputs for this channel") @as("CdiInputSpecification")
    cdiInputSpecification: option<cdiInputSpecification>,
    @ocaml.doc("The unique arn of the channel.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "StopChannelCommand"
  let make = (~channelId, ()) => new({channelId: channelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartChannel = {
  type t
  @ocaml.doc("Placeholder documentation for StartChannelRequest")
  type request = {@ocaml.doc("A request to start a channel") @as("ChannelId") channelId: __string}
  @ocaml.doc("Placeholder documentation for StartChannelResponse")
  type response = {
    @ocaml.doc("Settings for VPC output") @as("Vpc") vpc: option<vpcOutputSettingsDescription>,
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @as("State") state: option<channelState>,
    @ocaml.doc("The Amazon Resource Name (ARN) of the role assumed when running the Channel.")
    @as("RoleArn")
    roleArn: option<__string>,
    @ocaml.doc("The number of currently healthy pipelines.") @as("PipelinesRunningCount")
    pipelinesRunningCount: option<__integer>,
    @ocaml.doc("Runtime details for the pipelines of a running channel.") @as("PipelineDetails")
    pipelineDetails: option<__listOfPipelineDetail>,
    @ocaml.doc("The name of the channel. (user-mutable)") @as("Name") name: option<__string>,
    @ocaml.doc("Maintenance settings for this channel.") @as("Maintenance")
    maintenance: option<maintenanceStatus>,
    @ocaml.doc("The log level being written to CloudWatch Logs.") @as("LogLevel")
    logLevel: option<logLevel>,
    @ocaml.doc("Specification of network and file inputs for this channel")
    @as("InputSpecification")
    inputSpecification: option<inputSpecification>,
    @ocaml.doc("List of input attachments for channel.") @as("InputAttachments")
    inputAttachments: option<__listOfInputAttachment>,
    @ocaml.doc("The unique id of the channel.") @as("Id") id: option<__string>,
    @as("EncoderSettings") encoderSettings: option<encoderSettings>,
    @ocaml.doc("The endpoints where outgoing connections initiate from") @as("EgressEndpoints")
    egressEndpoints: option<__listOfChannelEgressEndpoint>,
    @ocaml.doc("A list of destinations of the channel. For UDP outputs, there is one
destination per output. For other types (HLS, for example), there is
one destination per packager.")
    @as("Destinations")
    destinations: option<__listOfOutputDestination>,
    @ocaml.doc(
      "The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline."
    )
    @as("ChannelClass")
    channelClass: option<channelClass>,
    @ocaml.doc("Specification of CDI inputs for this channel") @as("CdiInputSpecification")
    cdiInputSpecification: option<cdiInputSpecification>,
    @ocaml.doc("The unique arn of the channel.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "StartChannelCommand"
  let make = (~channelId, ()) => new({channelId: channelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChannel = {
  type t
  @ocaml.doc("Placeholder documentation for DescribeChannelRequest")
  type request = {@ocaml.doc("channel ID") @as("ChannelId") channelId: __string}
  @ocaml.doc("Placeholder documentation for DescribeChannelResponse")
  type response = {
    @ocaml.doc("Settings for VPC output") @as("Vpc") vpc: option<vpcOutputSettingsDescription>,
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @as("State") state: option<channelState>,
    @ocaml.doc("The Amazon Resource Name (ARN) of the role assumed when running the Channel.")
    @as("RoleArn")
    roleArn: option<__string>,
    @ocaml.doc("The number of currently healthy pipelines.") @as("PipelinesRunningCount")
    pipelinesRunningCount: option<__integer>,
    @ocaml.doc("Runtime details for the pipelines of a running channel.") @as("PipelineDetails")
    pipelineDetails: option<__listOfPipelineDetail>,
    @ocaml.doc("The name of the channel. (user-mutable)") @as("Name") name: option<__string>,
    @ocaml.doc("Maintenance settings for this channel.") @as("Maintenance")
    maintenance: option<maintenanceStatus>,
    @ocaml.doc("The log level being written to CloudWatch Logs.") @as("LogLevel")
    logLevel: option<logLevel>,
    @ocaml.doc("Specification of network and file inputs for this channel")
    @as("InputSpecification")
    inputSpecification: option<inputSpecification>,
    @ocaml.doc("List of input attachments for channel.") @as("InputAttachments")
    inputAttachments: option<__listOfInputAttachment>,
    @ocaml.doc("The unique id of the channel.") @as("Id") id: option<__string>,
    @as("EncoderSettings") encoderSettings: option<encoderSettings>,
    @ocaml.doc("The endpoints where outgoing connections initiate from") @as("EgressEndpoints")
    egressEndpoints: option<__listOfChannelEgressEndpoint>,
    @ocaml.doc("A list of destinations of the channel. For UDP outputs, there is one
destination per output. For other types (HLS, for example), there is
one destination per packager.")
    @as("Destinations")
    destinations: option<__listOfOutputDestination>,
    @ocaml.doc(
      "The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline."
    )
    @as("ChannelClass")
    channelClass: option<channelClass>,
    @ocaml.doc("Specification of CDI inputs for this channel") @as("CdiInputSpecification")
    cdiInputSpecification: option<cdiInputSpecification>,
    @ocaml.doc("The unique arn of the channel.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DescribeChannelCommand"
  let make = (~channelId, ()) => new({channelId: channelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteChannel = {
  type t
  @ocaml.doc("Placeholder documentation for DeleteChannelRequest")
  type request = {@ocaml.doc("Unique ID of the channel.") @as("ChannelId") channelId: __string}
  @ocaml.doc("Placeholder documentation for DeleteChannelResponse")
  type response = {
    @ocaml.doc("Settings for VPC output") @as("Vpc") vpc: option<vpcOutputSettingsDescription>,
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @as("State") state: option<channelState>,
    @ocaml.doc("The Amazon Resource Name (ARN) of the role assumed when running the Channel.")
    @as("RoleArn")
    roleArn: option<__string>,
    @ocaml.doc("The number of currently healthy pipelines.") @as("PipelinesRunningCount")
    pipelinesRunningCount: option<__integer>,
    @ocaml.doc("Runtime details for the pipelines of a running channel.") @as("PipelineDetails")
    pipelineDetails: option<__listOfPipelineDetail>,
    @ocaml.doc("The name of the channel. (user-mutable)") @as("Name") name: option<__string>,
    @ocaml.doc("Maintenance settings for this channel.") @as("Maintenance")
    maintenance: option<maintenanceStatus>,
    @ocaml.doc("The log level being written to CloudWatch Logs.") @as("LogLevel")
    logLevel: option<logLevel>,
    @ocaml.doc("Specification of network and file inputs for this channel")
    @as("InputSpecification")
    inputSpecification: option<inputSpecification>,
    @ocaml.doc("List of input attachments for channel.") @as("InputAttachments")
    inputAttachments: option<__listOfInputAttachment>,
    @ocaml.doc("The unique id of the channel.") @as("Id") id: option<__string>,
    @as("EncoderSettings") encoderSettings: option<encoderSettings>,
    @ocaml.doc("The endpoints where outgoing connections initiate from") @as("EgressEndpoints")
    egressEndpoints: option<__listOfChannelEgressEndpoint>,
    @ocaml.doc("A list of destinations of the channel. For UDP outputs, there is one
destination per output. For other types (HLS, for example), there is
one destination per packager.")
    @as("Destinations")
    destinations: option<__listOfOutputDestination>,
    @ocaml.doc(
      "The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline."
    )
    @as("ChannelClass")
    channelClass: option<channelClass>,
    @ocaml.doc("Specification of CDI inputs for this channel") @as("CdiInputSpecification")
    cdiInputSpecification: option<cdiInputSpecification>,
    @ocaml.doc("The unique arn of the channel.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DeleteChannelCommand"
  let make = (~channelId, ()) => new({channelId: channelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchUpdateSchedule = {
  type t
  @ocaml.doc("List of actions to create and list of actions to delete.")
  type request = {
    @ocaml.doc("Schedule actions to delete from the schedule.") @as("Deletes")
    deletes: option<batchScheduleActionDeleteRequest>,
    @ocaml.doc("Schedule actions to create in the schedule.") @as("Creates")
    creates: option<batchScheduleActionCreateRequest>,
    @ocaml.doc("Id of the channel whose schedule is being updated.") @as("ChannelId")
    channelId: __string,
  }
  @ocaml.doc("Placeholder documentation for BatchUpdateScheduleResponse")
  type response = {
    @ocaml.doc("Schedule actions deleted from the schedule.") @as("Deletes")
    deletes: option<batchScheduleActionDeleteResult>,
    @ocaml.doc("Schedule actions created in the schedule.") @as("Creates")
    creates: option<batchScheduleActionCreateResult>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "BatchUpdateScheduleCommand"
  let make = (~channelId, ~deletes=?, ~creates=?, ()) =>
    new({deletes: deletes, creates: creates, channelId: channelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChannelClass = {
  type t
  @ocaml.doc("Channel class that the channel should be updated to.")
  type request = {
    @ocaml.doc("A list of output destinations for this channel.") @as("Destinations")
    destinations: option<__listOfOutputDestination>,
    @ocaml.doc("Channel Id of the channel whose class should be updated.") @as("ChannelId")
    channelId: __string,
    @ocaml.doc("The channel class that you wish to update this channel to use.") @as("ChannelClass")
    channelClass: channelClass,
  }
  @ocaml.doc("Placeholder documentation for UpdateChannelClassResponse")
  type response = {@as("Channel") channel: option<channel>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "UpdateChannelClassCommand"
  let make = (~channelId, ~channelClass, ~destinations=?, ()) =>
    new({destinations: destinations, channelId: channelId, channelClass: channelClass})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChannel = {
  type t
  @ocaml.doc("A request to update a channel.")
  type request = {
    @ocaml.doc(
      "An optional Amazon Resource Name (ARN) of the role to assume when running the Channel. If you do not specify this on an update call but the role was previously set that role will be removed."
    )
    @as("RoleArn")
    roleArn: option<__string>,
    @ocaml.doc("The name of the channel.") @as("Name") name: option<__string>,
    @ocaml.doc("Maintenance settings for this channel.") @as("Maintenance")
    maintenance: option<maintenanceUpdateSettings>,
    @ocaml.doc("The log level to write to CloudWatch Logs.") @as("LogLevel")
    logLevel: option<logLevel>,
    @ocaml.doc("Specification of network and file inputs for this channel")
    @as("InputSpecification")
    inputSpecification: option<inputSpecification>,
    @as("InputAttachments") inputAttachments: option<__listOfInputAttachment>,
    @ocaml.doc("The encoder settings for this channel.") @as("EncoderSettings")
    encoderSettings: option<encoderSettings>,
    @ocaml.doc("A list of output destinations for this channel.") @as("Destinations")
    destinations: option<__listOfOutputDestination>,
    @ocaml.doc("channel ID") @as("ChannelId") channelId: __string,
    @ocaml.doc("Specification of CDI inputs for this channel") @as("CdiInputSpecification")
    cdiInputSpecification: option<cdiInputSpecification>,
  }
  @ocaml.doc("Placeholder documentation for UpdateChannelResponse")
  type response = {@as("Channel") channel: option<channel>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "UpdateChannelCommand"
  let make = (
    ~channelId,
    ~roleArn=?,
    ~name=?,
    ~maintenance=?,
    ~logLevel=?,
    ~inputSpecification=?,
    ~inputAttachments=?,
    ~encoderSettings=?,
    ~destinations=?,
    ~cdiInputSpecification=?,
    (),
  ) =>
    new({
      roleArn: roleArn,
      name: name,
      maintenance: maintenance,
      logLevel: logLevel,
      inputSpecification: inputSpecification,
      inputAttachments: inputAttachments,
      encoderSettings: encoderSettings,
      destinations: destinations,
      channelId: channelId,
      cdiInputSpecification: cdiInputSpecification,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannels = {
  type t
  @ocaml.doc("Placeholder documentation for ListChannelsRequest")
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  @ocaml.doc("Placeholder documentation for ListChannelsResponse")
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Channels") channels: option<__listOfChannelSummary>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ListChannelsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChannel = {
  type t
  @ocaml.doc("A request to create a channel")
  type request = {
    @ocaml.doc("Settings for the VPC outputs") @as("Vpc") vpc: option<vpcOutputSettings>,
    @ocaml.doc("A collection of key-value pairs.") @as("Tags") tags: option<tags>,
    @ocaml.doc(
      "An optional Amazon Resource Name (ARN) of the role to assume when running the Channel."
    )
    @as("RoleArn")
    roleArn: option<__string>,
    @ocaml.doc("Deprecated field that's only usable by whitelisted customers.") @as("Reserved")
    reserved: option<__string>,
    @ocaml.doc("Unique request ID to be specified. This is needed to prevent retries from
creating multiple resources.")
    @as("RequestId")
    requestId: option<__string>,
    @ocaml.doc("Name of channel.") @as("Name") name: option<__string>,
    @ocaml.doc("Maintenance settings for this channel.") @as("Maintenance")
    maintenance: option<maintenanceCreateSettings>,
    @ocaml.doc("The log level to write to CloudWatch Logs.") @as("LogLevel")
    logLevel: option<logLevel>,
    @ocaml.doc("Specification of network and file inputs for this channel")
    @as("InputSpecification")
    inputSpecification: option<inputSpecification>,
    @ocaml.doc("List of input attachments for channel.") @as("InputAttachments")
    inputAttachments: option<__listOfInputAttachment>,
    @as("EncoderSettings") encoderSettings: option<encoderSettings>,
    @as("Destinations") destinations: option<__listOfOutputDestination>,
    @ocaml.doc(
      "The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline."
    )
    @as("ChannelClass")
    channelClass: option<channelClass>,
    @ocaml.doc("Specification of CDI inputs for this channel") @as("CdiInputSpecification")
    cdiInputSpecification: option<cdiInputSpecification>,
  }
  @ocaml.doc("Placeholder documentation for CreateChannelResponse")
  type response = {@as("Channel") channel: option<channel>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "CreateChannelCommand"
  let make = (
    ~vpc=?,
    ~tags=?,
    ~roleArn=?,
    ~reserved=?,
    ~requestId=?,
    ~name=?,
    ~maintenance=?,
    ~logLevel=?,
    ~inputSpecification=?,
    ~inputAttachments=?,
    ~encoderSettings=?,
    ~destinations=?,
    ~channelClass=?,
    ~cdiInputSpecification=?,
    (),
  ) =>
    new({
      vpc: vpc,
      tags: tags,
      roleArn: roleArn,
      reserved: reserved,
      requestId: requestId,
      name: name,
      maintenance: maintenance,
      logLevel: logLevel,
      inputSpecification: inputSpecification,
      inputAttachments: inputAttachments,
      encoderSettings: encoderSettings,
      destinations: destinations,
      channelClass: channelClass,
      cdiInputSpecification: cdiInputSpecification,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
