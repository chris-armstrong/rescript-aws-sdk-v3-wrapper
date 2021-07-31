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
type __timestamp = Js.Date.t
type __stringMin6Max6 = string
type __stringMin3Max3 = string
type __stringMin34Max34 = string
type __stringMin32Max32 = string
type __stringMin1Max35 = string
type __stringMin1Max256 = string
type __stringMin1Max255 = string
type __stringMin1 = string
type __stringMax32 = string
type __stringMax256 = string
type __stringMax1000 = string
type __string = string
type __longMin0Max86400000 = float
type __longMin0Max8589934591 = float
type __longMin0Max4294967295 = float
type __longMin0Max1099511627775 = float
type __long = float
type __integerMinNegative60Max60 = int
type __integerMinNegative60Max6 = int
type __integerMinNegative5Max5 = int
type __integerMinNegative1000Max1000 = int
type __integerMin96Max600 = int
type __integerMin800Max3000 = int
type __integerMin4Max20 = int
type __integerMin30 = int
type __integerMin3 = int
type __integerMin25Max2000 = int
type __integerMin25Max10000 = int
type __integerMin1Max8 = int
type __integerMin1Max6 = int
type __integerMin1Max5 = int
type __integerMin1Max4 = int
type __integerMin1Max3600000 = int
type __integerMin1Max32 = int
type __integerMin1Max31 = int
type __integerMin1Max3003 = int
type __integerMin1Max20 = int
type __integerMin1Max16 = int
type __integerMin1Max1000000 = int
type __integerMin1Max10 = int
type __integerMin1000Max30000 = int
type __integerMin100000Max80000000 = int
type __integerMin100000Max40000000 = int
type __integerMin100000Max100000000 = int
type __integerMin1000000Max100000000 = int
type __integerMin1000 = int
type __integerMin100 = int
type __integerMin1 = int
type __integerMin0Max8191 = int
type __integerMin0Max7 = int
type __integerMin0Max65536 = int
type __integerMin0Max65535 = int
type __integerMin0Max600 = int
type __integerMin0Max500 = int
type __integerMin0Max3600 = int
type __integerMin0Max32768 = int
type __integerMin0Max30 = int
type __integerMin0Max255 = int
type __integerMin0Max15 = int
type __integerMin0Max128 = int
type __integerMin0Max100000000 = int
type __integerMin0Max1000000 = int
type __integerMin0Max10000 = int
type __integerMin0Max1000 = int
type __integerMin0Max100 = int
type __integerMin0Max10 = int
type __integerMin0 = int
type __integer = int
type __doubleMinNegative59Max0 = float
type __doubleMin1 = float
type __doubleMin0Max100 = float
type __doubleMin0Max1 = float
type __doubleMin0 = float
type __double = float
type webvttDestinationSettings = unit
type wavCodingMode = [
  | @as("CODING_MODE_8_0") #CODING_MODE_8_0
  | @as("CODING_MODE_4_0") #CODING_MODE_4_0
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
]
type videoSelectorColorSpaceUsage = [@as("FORCE") #FORCE | @as("FALLBACK") #FALLBACK]
type videoSelectorColorSpace = [
  | @as("REC_709") #REC_709
  | @as("REC_601") #REC_601
  | @as("HLG_2020") #HLG_2020
  | @as("HDR10") #HDR10
  | @as("FOLLOW") #FOLLOW
]
type videoDescriptionScalingBehavior = [
  | @as("STRETCH_TO_OUTPUT") #STRETCH_TO_OUTPUT
  | @as("DEFAULT") #DEFAULT
]
type videoDescriptionRespondToAfd = [
  | @as("RESPOND") #RESPOND
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NONE") #NONE
]
type udpTimedMetadataId3Frame = [@as("TDRL") #TDRL | @as("PRIV") #PRIV | @as("NONE") #NONE]
type ttmlDestinationStyleControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("PASSTHROUGH") #PASSTHROUGH
]
type timecodeConfigSource = [
  | @as("ZEROBASED") #ZEROBASED
  | @as("SYSTEMCLOCK") #SYSTEMCLOCK
  | @as("EMBEDDED") #EMBEDDED
]
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
type temporalFilterPostFilterSharpening = [
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
  | @as("AUTO") #AUTO
]
type teletextDestinationSettings = unit
type smpteTtDestinationSettings = unit
type smpte2038DataPreference = [@as("PREFER") #PREFER | @as("IGNORE") #IGNORE]
type smoothGroupTimestampOffsetMode = [
  | @as("USE_EVENT_START_DATE") #USE_EVENT_START_DATE
  | @as("USE_CONFIGURED_OFFSET") #USE_CONFIGURED_OFFSET
]
type smoothGroupStreamManifestBehavior = [@as("SEND") #SEND | @as("DO_NOT_SEND") #DO_NOT_SEND]
type smoothGroupSparseTrackType = [
  | @as("SCTE_35_WITHOUT_SEGMENTATION") #SCTE_35_WITHOUT_SEGMENTATION
  | @as("SCTE_35") #SCTE_35
  | @as("NONE") #NONE
]
type smoothGroupSegmentationMode = [
  | @as("USE_SEGMENT_DURATION") #USE_SEGMENT_DURATION
  | @as("USE_INPUT_SEGMENTATION") #USE_INPUT_SEGMENTATION
]
type smoothGroupEventStopBehavior = [@as("SEND_EOS") #SEND_EOS | @as("NONE") #NONE]
type smoothGroupEventIdMode = [
  | @as("USE_TIMESTAMP") #USE_TIMESTAMP
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("NO_EVENT_ID") #NO_EVENT_ID
]
type smoothGroupCertificateMode = [
  | @as("VERIFY_AUTHENTICITY") #VERIFY_AUTHENTICITY
  | @as("SELF_SIGNED") #SELF_SIGNED
]
type smoothGroupAudioOnlyTimecodeControl = [
  | @as("USE_CONFIGURED_CLOCK") #USE_CONFIGURED_CLOCK
  | @as("PASSTHROUGH") #PASSTHROUGH
]
type scte35WebDeliveryAllowedFlag = [
  | @as("WEB_DELIVERY_ALLOWED") #WEB_DELIVERY_ALLOWED
  | @as("WEB_DELIVERY_NOT_ALLOWED") #WEB_DELIVERY_NOT_ALLOWED
]
type scte35SpliceInsertWebDeliveryAllowedBehavior = [@as("IGNORE") #IGNORE | @as("FOLLOW") #FOLLOW]
type scte35SpliceInsertNoRegionalBlackoutBehavior = [@as("IGNORE") #IGNORE | @as("FOLLOW") #FOLLOW]
type scte35SegmentationCancelIndicator = [
  | @as("SEGMENTATION_EVENT_CANCELED") #SEGMENTATION_EVENT_CANCELED
  | @as("SEGMENTATION_EVENT_NOT_CANCELED") #SEGMENTATION_EVENT_NOT_CANCELED
]
type scte35NoRegionalBlackoutFlag = [
  | @as("NO_REGIONAL_BLACKOUT") #NO_REGIONAL_BLACKOUT
  | @as("REGIONAL_BLACKOUT") #REGIONAL_BLACKOUT
]
type scte35DeviceRestrictions = [
  | @as("RESTRICT_GROUP2") #RESTRICT_GROUP2
  | @as("RESTRICT_GROUP1") #RESTRICT_GROUP1
  | @as("RESTRICT_GROUP0") #RESTRICT_GROUP0
  | @as("NONE") #NONE
]
type scte35ArchiveAllowedFlag = [
  | @as("ARCHIVE_ALLOWED") #ARCHIVE_ALLOWED
  | @as("ARCHIVE_NOT_ALLOWED") #ARCHIVE_NOT_ALLOWED
]
type scte35AposWebDeliveryAllowedBehavior = [@as("IGNORE") #IGNORE | @as("FOLLOW") #FOLLOW]
type scte35AposNoRegionalBlackoutBehavior = [@as("IGNORE") #IGNORE | @as("FOLLOW") #FOLLOW]
type scte27DestinationSettings = unit
type scte20PlusEmbeddedDestinationSettings = unit
type scte20Convert608To708 = [@as("UPCONVERT") #UPCONVERT | @as("DISABLED") #DISABLED]
type s3CannedAcl = [
  | @as("PUBLIC_READ") #PUBLIC_READ
  | @as("BUCKET_OWNER_READ") #BUCKET_OWNER_READ
  | @as("BUCKET_OWNER_FULL_CONTROL") #BUCKET_OWNER_FULL_CONTROL
  | @as("AUTHENTICATED_READ") #AUTHENTICATED_READ
]
type rtmpOutputCertificateMode = [
  | @as("VERIFY_AUTHENTICITY") #VERIFY_AUTHENTICITY
  | @as("SELF_SIGNED") #SELF_SIGNED
]
type rtmpCaptionInfoDestinationSettings = unit
type rtmpCaptionData = [
  | @as("FIELD1_AND_FIELD2_608") #FIELD1_AND_FIELD2_608
  | @as("FIELD1_608") #FIELD1_608
  | @as("ALL") #ALL
]
type rtmpCacheFullBehavior = [
  | @as("WAIT_FOR_SERVER") #WAIT_FOR_SERVER
  | @as("DISCONNECT_IMMEDIATELY") #DISCONNECT_IMMEDIATELY
]
type rtmpAdMarkers = [@as("ON_CUE_POINT_SCTE35") #ON_CUE_POINT_SCTE35]
type reservationVideoQuality = [
  | @as("PREMIUM") #PREMIUM
  | @as("ENHANCED") #ENHANCED
  | @as("STANDARD") #STANDARD
]
type reservationState = [
  | @as("DELETED") #DELETED
  | @as("CANCELED") #CANCELED
  | @as("EXPIRED") #EXPIRED
  | @as("ACTIVE") #ACTIVE
]
type reservationSpecialFeature = [
  | @as("AUDIO_NORMALIZATION") #AUDIO_NORMALIZATION
  | @as("ADVANCED_AUDIO") #ADVANCED_AUDIO
]
type reservationResourceType = [
  | @as("CHANNEL") #CHANNEL
  | @as("MULTIPLEX") #MULTIPLEX
  | @as("OUTPUT") #OUTPUT
  | @as("INPUT") #INPUT
]
type reservationResolution = [@as("UHD") #UHD | @as("FHD") #FHD | @as("HD") #HD | @as("SD") #SD]
type reservationMaximumFramerate = [@as("MAX_60_FPS") #MAX_60_FPS | @as("MAX_30_FPS") #MAX_30_FPS]
type reservationMaximumBitrate = [
  | @as("MAX_50_MBPS") #MAX_50_MBPS
  | @as("MAX_20_MBPS") #MAX_20_MBPS
  | @as("MAX_10_MBPS") #MAX_10_MBPS
]
type reservationCodec = [
  | @as("LINK") #LINK
  | @as("AUDIO") #AUDIO
  | @as("HEVC") #HEVC
  | @as("AVC") #AVC
  | @as("MPEG2") #MPEG2
]
type rec709Settings = unit
type rec601Settings = unit
type rawSettings = unit
type preferredChannelPipeline = [
  | @as("PIPELINE_1") #PIPELINE_1
  | @as("PIPELINE_0") #PIPELINE_0
  | @as("CURRENTLY_ACTIVE") #CURRENTLY_ACTIVE
]
type pipelineId = [@as("PIPELINE_1") #PIPELINE_1 | @as("PIPELINE_0") #PIPELINE_0]
type passThroughSettings = unit
type offeringType = [@as("NO_UPFRONT") #NO_UPFRONT]
type offeringDurationUnits = [@as("MONTHS") #MONTHS]
type nielsenPcmToId3TaggingState = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type networkInputServerValidation = [
  | @as("CHECK_CRYPTOGRAPHY_ONLY") #CHECK_CRYPTOGRAPHY_ONLY
  | @as("CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME") #CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME
]
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
type multiplexGroupSettings = unit
type msSmoothH265PackagingType = [@as("HVC1") #HVC1 | @as("HEV1") #HEV1]
type mpeg2TimecodeInsertionBehavior = [
  | @as("GOP_TIMECODE") #GOP_TIMECODE
  | @as("DISABLED") #DISABLED
]
type mpeg2SubGopLength = [@as("FIXED") #FIXED | @as("DYNAMIC") #DYNAMIC]
type mpeg2ScanType = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
type mpeg2GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
type mpeg2DisplayRatio = [
  | @as("DISPLAYRATIO4X3") #DISPLAYRATIO4X3
  | @as("DISPLAYRATIO16X9") #DISPLAYRATIO16X9
]
type mpeg2ColorSpace = [@as("PASSTHROUGH") #PASSTHROUGH | @as("AUTO") #AUTO]
type mpeg2ColorMetadata = [@as("INSERT") #INSERT | @as("IGNORE") #IGNORE]
type mpeg2AdaptiveQuantization = [
  | @as("OFF") #OFF
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("HIGH") #HIGH
  | @as("AUTO") #AUTO
]
type mp2CodingMode = [
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
]
type motionGraphicsInsertion = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type motionGraphicsDeactivateScheduleActionSettings = unit
type mediaPackageOutputSettings = unit
type maxResults = int
type m3u8TimedMetadataBehavior = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
type m3u8Scte35Behavior = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH]
type m3u8PcrControl = [
  | @as("PCR_EVERY_PES_PACKET") #PCR_EVERY_PES_PACKET
  | @as("CONFIGURED_PCR_PERIOD") #CONFIGURED_PCR_PERIOD
]
type m3u8NielsenId3Behavior = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
type m2tsTimedMetadataBehavior = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
type m2tsSegmentationStyle = [
  | @as("RESET_CADENCE") #RESET_CADENCE
  | @as("MAINTAIN_CADENCE") #MAINTAIN_CADENCE
]
type m2tsSegmentationMarkers = [
  | @as("RAI_SEGSTART") #RAI_SEGSTART
  | @as("RAI_ADAPT") #RAI_ADAPT
  | @as("PSI_SEGSTART") #PSI_SEGSTART
  | @as("NONE") #NONE
  | @as("EBP_LEGACY") #EBP_LEGACY
  | @as("EBP") #EBP
]
type m2tsScte35Control = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NONE") #NONE]
type m2tsRateMode = [@as("VBR") #VBR | @as("CBR") #CBR]
type m2tsPcrControl = [
  | @as("PCR_EVERY_PES_PACKET") #PCR_EVERY_PES_PACKET
  | @as("CONFIGURED_PCR_PERIOD") #CONFIGURED_PCR_PERIOD
]
type m2tsNielsenId3Behavior = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
type m2tsKlv = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NONE") #NONE]
type m2tsEsRateInPes = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
type m2tsEbpPlacement = [
  | @as("VIDEO_PID") #VIDEO_PID
  | @as("VIDEO_AND_AUDIO_PIDS") #VIDEO_AND_AUDIO_PIDS
]
type m2tsEbifControl = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NONE") #NONE]
type m2tsCcDescriptor = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type m2tsBufferModel = [@as("NONE") #NONE | @as("MULTIPLEX") #MULTIPLEX]
type m2tsAudioStreamType = [@as("DVB") #DVB | @as("ATSC") #ATSC]
type m2tsAudioInterval = [
  | @as("VIDEO_INTERVAL") #VIDEO_INTERVAL
  | @as("VIDEO_AND_FIXED_INTERVALS") #VIDEO_AND_FIXED_INTERVALS
]
type m2tsAudioBufferModel = [@as("DVB") #DVB | @as("ATSC") #ATSC]
type m2tsAribCaptionsPidControl = [@as("USE_CONFIGURED") #USE_CONFIGURED | @as("AUTO") #AUTO]
type m2tsArib = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type m2tsAbsentInputAudioBehavior = [@as("ENCODE_SILENCE") #ENCODE_SILENCE | @as("DROP") #DROP]
type logLevel = [
  | @as("DISABLED") #DISABLED
  | @as("DEBUG") #DEBUG
  | @as("INFO") #INFO
  | @as("WARNING") #WARNING
  | @as("ERROR") #ERROR
]
type lastFrameClippingBehavior = [
  | @as("INCLUDE_LAST_FRAME") #INCLUDE_LAST_FRAME
  | @as("EXCLUDE_LAST_FRAME") #EXCLUDE_LAST_FRAME
]
type inputType = [
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
type inputTimecodeSource = [@as("EMBEDDED") #EMBEDDED | @as("ZEROBASED") #ZEROBASED]
type inputState = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("ATTACHED") #ATTACHED
  | @as("DETACHED") #DETACHED
  | @as("CREATING") #CREATING
]
type inputSourceType = [@as("DYNAMIC") #DYNAMIC | @as("STATIC") #STATIC]
type inputSourceEndBehavior = [@as("LOOP") #LOOP | @as("CONTINUE") #CONTINUE]
type inputSecurityGroupState = [
  | @as("DELETED") #DELETED
  | @as("UPDATING") #UPDATING
  | @as("IN_USE") #IN_USE
  | @as("IDLE") #IDLE
]
type inputResolution = [@as("UHD") #UHD | @as("HD") #HD | @as("SD") #SD]
type inputPreference = [
  | @as("PRIMARY_INPUT_PREFERRED") #PRIMARY_INPUT_PREFERRED
  | @as("EQUAL_INPUT_PREFERENCE") #EQUAL_INPUT_PREFERENCE
]
type inputMaximumBitrate = [
  | @as("MAX_50_MBPS") #MAX_50_MBPS
  | @as("MAX_20_MBPS") #MAX_20_MBPS
  | @as("MAX_10_MBPS") #MAX_10_MBPS
]
type inputLossImageType = [@as("SLATE") #SLATE | @as("COLOR") #COLOR]
type inputLossActionForUdpOut = [
  | @as("EMIT_PROGRAM") #EMIT_PROGRAM
  | @as("DROP_TS") #DROP_TS
  | @as("DROP_PROGRAM") #DROP_PROGRAM
]
type inputLossActionForRtmpOut = [
  | @as("PAUSE_OUTPUT") #PAUSE_OUTPUT
  | @as("EMIT_OUTPUT") #EMIT_OUTPUT
]
type inputLossActionForMsSmoothOut = [
  | @as("PAUSE_OUTPUT") #PAUSE_OUTPUT
  | @as("EMIT_OUTPUT") #EMIT_OUTPUT
]
type inputLossActionForHlsOut = [
  | @as("PAUSE_OUTPUT") #PAUSE_OUTPUT
  | @as("EMIT_OUTPUT") #EMIT_OUTPUT
]
type inputFilter = [@as("FORCED") #FORCED | @as("DISABLED") #DISABLED | @as("AUTO") #AUTO]
type inputDeviceType = [@as("HD") #HD]
type inputDeviceTransferType = [@as("INCOMING") #INCOMING | @as("OUTGOING") #OUTGOING]
type inputDeviceThumbnail = NodeJs.Buffer.t
type inputDeviceState = [@as("STREAMING") #STREAMING | @as("IDLE") #IDLE]
type inputDeviceScanType = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
type inputDeviceIpScheme = [@as("DHCP") #DHCP | @as("STATIC") #STATIC]
type inputDeviceConnectionState = [@as("CONNECTED") #CONNECTED | @as("DISCONNECTED") #DISCONNECTED]
type inputDeviceConfiguredInput = [@as("SDI") #SDI | @as("HDMI") #HDMI | @as("AUTO") #AUTO]
type inputDeviceActiveInput = [@as("SDI") #SDI | @as("HDMI") #HDMI]
type inputDenoiseFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type inputDeblockFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type inputCodec = [@as("HEVC") #HEVC | @as("AVC") #AVC | @as("MPEG2") #MPEG2]
type inputClass = [@as("SINGLE_PIPELINE") #SINGLE_PIPELINE | @as("STANDARD") #STANDARD]
type immediateModeScheduleActionStartSettings = unit
type iframeOnlyPlaylistType = [@as("STANDARD") #STANDARD | @as("DISABLED") #DISABLED]
type htmlMotionGraphicsSettings = unit
type hlsWebdavHttpTransferMode = [@as("NON_CHUNKED") #NON_CHUNKED | @as("CHUNKED") #CHUNKED]
type hlsTsFileMode = [@as("SINGLE_FILE") #SINGLE_FILE | @as("SEGMENTED_FILES") #SEGMENTED_FILES]
type hlsTimedMetadataId3Frame = [@as("TDRL") #TDRL | @as("PRIV") #PRIV | @as("NONE") #NONE]
type hlsStreamInfResolution = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
type hlsSegmentationMode = [
  | @as("USE_SEGMENT_DURATION") #USE_SEGMENT_DURATION
  | @as("USE_INPUT_SEGMENTATION") #USE_INPUT_SEGMENTATION
]
type hlsRedundantManifest = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type hlsProgramDateTime = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
type hlsOutputSelection = [
  | @as("VARIANT_MANIFESTS_AND_SEGMENTS") #VARIANT_MANIFESTS_AND_SEGMENTS
  | @as("SEGMENTS_ONLY") #SEGMENTS_ONLY
  | @as("MANIFESTS_AND_SEGMENTS") #MANIFESTS_AND_SEGMENTS
]
type hlsMode = [@as("VOD") #VOD | @as("LIVE") #LIVE]
type hlsMediaStoreStorageClass = [@as("TEMPORAL") #TEMPORAL]
type hlsManifestDurationFormat = [@as("INTEGER") #INTEGER | @as("FLOATING_POINT") #FLOATING_POINT]
type hlsManifestCompression = [@as("NONE") #NONE | @as("GZIP") #GZIP]
type hlsIvSource = [
  | @as("FOLLOWS_SEGMENT_NUMBER") #FOLLOWS_SEGMENT_NUMBER
  | @as("EXPLICIT") #EXPLICIT
]
type hlsIvInManifest = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
type hlsIncompleteSegmentBehavior = [@as("SUPPRESS") #SUPPRESS | @as("AUTO") #AUTO]
type hlsId3SegmentTaggingState = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type hlsH265PackagingType = [@as("HVC1") #HVC1 | @as("HEV1") #HEV1]
type hlsEncryptionType = [@as("SAMPLE_AES") #SAMPLE_AES | @as("AES128") #AES128]
type hlsDiscontinuityTags = [@as("NEVER_INSERT") #NEVER_INSERT | @as("INSERT") #INSERT]
type hlsDirectoryStructure = [
  | @as("SUBDIRECTORY_PER_STREAM") #SUBDIRECTORY_PER_STREAM
  | @as("SINGLE_DIRECTORY") #SINGLE_DIRECTORY
]
type hlsCodecSpecification = [@as("RFC_6381") #RFC_6381 | @as("RFC_4281") #RFC_4281]
type hlsClientCache = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type hlsCaptionLanguageSetting = [@as("OMIT") #OMIT | @as("NONE") #NONE | @as("INSERT") #INSERT]
type hlsAkamaiHttpTransferMode = [@as("NON_CHUNKED") #NON_CHUNKED | @as("CHUNKED") #CHUNKED]
type hlsAdMarkers = [
  | @as("ELEMENTAL_SCTE35") #ELEMENTAL_SCTE35
  | @as("ELEMENTAL") #ELEMENTAL
  | @as("ADOBE") #ADOBE
]
type h265TimecodeInsertionBehavior = [
  | @as("PIC_TIMING_SEI") #PIC_TIMING_SEI
  | @as("DISABLED") #DISABLED
]
type h265Tier = [@as("MAIN") #MAIN | @as("HIGH") #HIGH]
type h265SceneChangeDetect = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265ScanType = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
type h265RateControlMode = [@as("QVBR") #QVBR | @as("MULTIPLEX") #MULTIPLEX | @as("CBR") #CBR]
type h265Profile = [@as("MAIN_10BIT") #MAIN_10BIT | @as("MAIN") #MAIN]
type h265LookAheadRateControl = [@as("MEDIUM") #MEDIUM | @as("LOW") #LOW | @as("HIGH") #HIGH]
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
type h265GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
type h265FlickerAq = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265ColorMetadata = [@as("INSERT") #INSERT | @as("IGNORE") #IGNORE]
type h265AlternativeTransferFunction = [@as("OMIT") #OMIT | @as("INSERT") #INSERT]
type h265AdaptiveQuantization = [
  | @as("OFF") #OFF
  | @as("MEDIUM") #MEDIUM
  | @as("MAX") #MAX
  | @as("LOW") #LOW
  | @as("HIGHER") #HIGHER
  | @as("HIGH") #HIGH
]
type h264TimecodeInsertionBehavior = [
  | @as("PIC_TIMING_SEI") #PIC_TIMING_SEI
  | @as("DISABLED") #DISABLED
]
type h264TemporalAq = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264Syntax = [@as("RP2027") #RP2027 | @as("DEFAULT") #DEFAULT]
type h264SubGopLength = [@as("FIXED") #FIXED | @as("DYNAMIC") #DYNAMIC]
type h264SpatialAq = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264SceneChangeDetect = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264ScanType = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
type h264RateControlMode = [
  | @as("VBR") #VBR
  | @as("QVBR") #QVBR
  | @as("MULTIPLEX") #MULTIPLEX
  | @as("CBR") #CBR
]
type h264QualityLevel = [
  | @as("STANDARD_QUALITY") #STANDARD_QUALITY
  | @as("ENHANCED_QUALITY") #ENHANCED_QUALITY
]
type h264Profile = [
  | @as("MAIN") #MAIN
  | @as("HIGH_422_10BIT") #HIGH_422_10BIT
  | @as("HIGH_422") #HIGH_422
  | @as("HIGH_10BIT") #HIGH_10BIT
  | @as("HIGH") #HIGH
  | @as("BASELINE") #BASELINE
]
type h264ParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type h264LookAheadRateControl = [@as("MEDIUM") #MEDIUM | @as("LOW") #LOW | @as("HIGH") #HIGH]
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
type h264GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
type h264GopBReference = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type h264ForceFieldPictures = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264FlickerAq = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264EntropyEncoding = [@as("CAVLC") #CAVLC | @as("CABAC") #CABAC]
type h264ColorMetadata = [@as("INSERT") #INSERT | @as("IGNORE") #IGNORE]
type h264AdaptiveQuantization = [
  | @as("OFF") #OFF
  | @as("MEDIUM") #MEDIUM
  | @as("MAX") #MAX
  | @as("LOW") #LOW
  | @as("HIGHER") #HIGHER
  | @as("HIGH") #HIGH
]
type globalConfigurationOutputTimingSource = [
  | @as("SYSTEM_CLOCK") #SYSTEM_CLOCK
  | @as("INPUT_CLOCK") #INPUT_CLOCK
]
type globalConfigurationOutputLockingMode = [
  | @as("PIPELINE_LOCKING") #PIPELINE_LOCKING
  | @as("EPOCH_LOCKING") #EPOCH_LOCKING
]
type globalConfigurationLowFramerateInputs = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type globalConfigurationInputEndAction = [
  | @as("SWITCH_AND_LOOP_INPUTS") #SWITCH_AND_LOOP_INPUTS
  | @as("NONE") #NONE
]
type frameCaptureIntervalUnit = [@as("SECONDS") #SECONDS | @as("MILLISECONDS") #MILLISECONDS]
type frameCaptureHlsSettings = unit
type followPoint = [@as("START") #START | @as("END") #END]
type fmp4TimedMetadataBehavior = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
type fmp4NielsenId3Behavior = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
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
type fecOutputIncludeFec = [@as("COLUMN_AND_ROW") #COLUMN_AND_ROW | @as("COLUMN") #COLUMN]
type featureActivationsInputPrepareScheduleActions = [
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
type embeddedScte20Detection = [@as("OFF") #OFF | @as("AUTO") #AUTO]
type embeddedPlusScte20DestinationSettings = unit
type embeddedDestinationSettings = unit
type embeddedConvert608To708 = [@as("UPCONVERT") #UPCONVERT | @as("DISABLED") #DISABLED]
type ebuTtDFillLineGapControl = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type ebuTtDDestinationStyleControl = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
type eac3SurroundMode = [
  | @as("NOT_INDICATED") #NOT_INDICATED
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
type eac3SurroundExMode = [
  | @as("NOT_INDICATED") #NOT_INDICATED
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
type eac3StereoDownmix = [
  | @as("NOT_INDICATED") #NOT_INDICATED
  | @as("LT_RT") #LT_RT
  | @as("LO_RO") #LO_RO
  | @as("DPL2") #DPL2
]
type eac3PhaseControl = [@as("SHIFT_90_DEGREES") #SHIFT_90_DEGREES | @as("NO_SHIFT") #NO_SHIFT]
type eac3PassthroughControl = [
  | @as("WHEN_POSSIBLE") #WHEN_POSSIBLE
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
]
type eac3MetadataControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
type eac3LfeFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type eac3LfeControl = [@as("NO_LFE") #NO_LFE | @as("LFE") #LFE]
type eac3DrcRf = [
  | @as("SPEECH") #SPEECH
  | @as("NONE") #NONE
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
]
type eac3DrcLine = [
  | @as("SPEECH") #SPEECH
  | @as("NONE") #NONE
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
]
type eac3DcFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type eac3CodingMode = [
  | @as("CODING_MODE_3_2") #CODING_MODE_3_2
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
]
type eac3BitstreamMode = [
  | @as("VISUALLY_IMPAIRED") #VISUALLY_IMPAIRED
  | @as("HEARING_IMPAIRED") #HEARING_IMPAIRED
  | @as("EMERGENCY") #EMERGENCY
  | @as("COMPLETE_MAIN") #COMPLETE_MAIN
  | @as("COMMENTARY") #COMMENTARY
]
type eac3AttenuationControl = [@as("NONE") #NONE | @as("ATTENUATE_3_DB") #ATTENUATE_3_DB]
type dvbSubDestinationTeletextGridControl = [@as("SCALED") #SCALED | @as("FIXED") #FIXED]
type dvbSubDestinationShadowColor = [@as("WHITE") #WHITE | @as("NONE") #NONE | @as("BLACK") #BLACK]
type dvbSubDestinationOutlineColor = [
  | @as("YELLOW") #YELLOW
  | @as("WHITE") #WHITE
  | @as("RED") #RED
  | @as("GREEN") #GREEN
  | @as("BLUE") #BLUE
  | @as("BLACK") #BLACK
]
type dvbSubDestinationFontColor = [
  | @as("YELLOW") #YELLOW
  | @as("WHITE") #WHITE
  | @as("RED") #RED
  | @as("GREEN") #GREEN
  | @as("BLUE") #BLUE
  | @as("BLACK") #BLACK
]
type dvbSubDestinationBackgroundColor = [
  | @as("WHITE") #WHITE
  | @as("NONE") #NONE
  | @as("BLACK") #BLACK
]
type dvbSubDestinationAlignment = [
  | @as("SMART") #SMART
  | @as("LEFT") #LEFT
  | @as("CENTERED") #CENTERED
]
type dvbSdtOutputSdt = [
  | @as("SDT_NONE") #SDT_NONE
  | @as("SDT_MANUAL") #SDT_MANUAL
  | @as("SDT_FOLLOW_IF_PRESENT") #SDT_FOLLOW_IF_PRESENT
  | @as("SDT_FOLLOW") #SDT_FOLLOW
]
type deviceUpdateStatus = [@as("NOT_UP_TO_DATE") #NOT_UP_TO_DATE | @as("UP_TO_DATE") #UP_TO_DATE]
type deviceSettingsSyncState = [@as("SYNCING") #SYNCING | @as("SYNCED") #SYNCED]
type contentType = [@as("image/jpeg") #Image_Jpeg]
type colorSpacePassthroughSettings = unit
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
type channelClass = [@as("SINGLE_PIPELINE") #SINGLE_PIPELINE | @as("STANDARD") #STANDARD]
type cdiInputResolution = [@as("UHD") #UHD | @as("FHD") #FHD | @as("HD") #HD | @as("SD") #SD]
type burnInTeletextGridControl = [@as("SCALED") #SCALED | @as("FIXED") #FIXED]
type burnInShadowColor = [@as("WHITE") #WHITE | @as("NONE") #NONE | @as("BLACK") #BLACK]
type burnInOutlineColor = [
  | @as("YELLOW") #YELLOW
  | @as("WHITE") #WHITE
  | @as("RED") #RED
  | @as("GREEN") #GREEN
  | @as("BLUE") #BLUE
  | @as("BLACK") #BLACK
]
type burnInFontColor = [
  | @as("YELLOW") #YELLOW
  | @as("WHITE") #WHITE
  | @as("RED") #RED
  | @as("GREEN") #GREEN
  | @as("BLUE") #BLUE
  | @as("BLACK") #BLACK
]
type burnInBackgroundColor = [@as("WHITE") #WHITE | @as("NONE") #NONE | @as("BLACK") #BLACK]
type burnInAlignment = [@as("SMART") #SMART | @as("LEFT") #LEFT | @as("CENTERED") #CENTERED]
type blackoutSlateState = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type blackoutSlateNetworkEndBlackout = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type availBlankingState = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type authenticationScheme = [@as("COMMON") #COMMON | @as("AKAMAI") #AKAMAI]
type audioType = [
  | @as("VISUAL_IMPAIRED_COMMENTARY") #VISUAL_IMPAIRED_COMMENTARY
  | @as("UNDEFINED") #UNDEFINED
  | @as("HEARING_IMPAIRED") #HEARING_IMPAIRED
  | @as("CLEAN_EFFECTS") #CLEAN_EFFECTS
]
type audioOnlyHlsTrackType = [
  | @as("AUDIO_ONLY_VARIANT_STREAM") #AUDIO_ONLY_VARIANT_STREAM
  | @as("ALTERNATE_AUDIO_NOT_AUTO_SELECT") #ALTERNATE_AUDIO_NOT_AUTO_SELECT
  | @as("ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT") #ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT
  | @as("ALTERNATE_AUDIO_AUTO_SELECT") #ALTERNATE_AUDIO_AUTO_SELECT
]
type audioOnlyHlsSegmentType = [@as("FMP4") #FMP4 | @as("AAC") #AAC]
type audioNormalizationAlgorithmControl = [@as("CORRECT_AUDIO") #CORRECT_AUDIO]
type audioNormalizationAlgorithm = [@as("ITU_1770_2") #ITU_1770_2 | @as("ITU_1770_1") #ITU_1770_1]
type audioLanguageSelectionPolicy = [@as("STRICT") #STRICT | @as("LOOSE") #LOOSE]
type audioDescriptionLanguageCodeControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
type audioDescriptionAudioTypeControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
type aribSourceSettings = unit
type aribDestinationSettings = unit
type afdSignaling = [@as("NONE") #NONE | @as("FIXED") #FIXED | @as("AUTO") #AUTO]
type acceptHeader = [@as("image/jpeg") #Image_Jpeg]
type ac3MetadataControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
type ac3LfeFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type ac3DrcProfile = [@as("NONE") #NONE | @as("FILM_STANDARD") #FILM_STANDARD]
type ac3CodingMode = [
  | @as("CODING_MODE_3_2_LFE") #CODING_MODE_3_2_LFE
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_1") #CODING_MODE_1_1
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
]
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
type aacVbrQuality = [
  | @as("MEDIUM_LOW") #MEDIUM_LOW
  | @as("MEDIUM_HIGH") #MEDIUM_HIGH
  | @as("LOW") #LOW
  | @as("HIGH") #HIGH
]
type aacSpec = [@as("MPEG4") #MPEG4 | @as("MPEG2") #MPEG2]
type aacRawFormat = [@as("NONE") #NONE | @as("LATM_LOAS") #LATM_LOAS]
type aacRateControlMode = [@as("VBR") #VBR | @as("CBR") #CBR]
type aacProfile = [@as("LC") #LC | @as("HEV2") #HEV2 | @as("HEV1") #HEV1]
type aacInputType = [@as("NORMAL") #NORMAL | @as("BROADCASTER_MIXED_AD") #BROADCASTER_MIXED_AD]
type aacCodingMode = [
  | @as("CODING_MODE_5_1") #CODING_MODE_5_1
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_1") #CODING_MODE_1_1
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
  | @as("AD_RECEIVER_MIX") #AD_RECEIVER_MIX
]
type __listOf__string = array<__string>
type __listOf__integer = array<__integer>
type __listOfRtmpAdMarkers = array<rtmpAdMarkers>
type __listOfHlsAdMarkers = array<hlsAdMarkers>
type wavSettings = {
  @as("SampleRate") sampleRate: option<__double>,
  @as("CodingMode") codingMode: option<wavCodingMode>,
  @as("BitDepth") bitDepth: option<__double>,
}
type videoSelectorProgramId = {@as("ProgramId") programId: option<__integerMin0Max65536>}
type videoSelectorPid = {@as("Pid") pid: option<__integerMin0Max8191>}
type videoBlackFailoverSettings = {
  @as("VideoBlackThresholdMsec") videoBlackThresholdMsec: option<__integerMin1000>,
  @as("BlackDetectThreshold") blackDetectThreshold: option<__doubleMin0Max1>,
}
type validationError = {
  @as("ErrorMessage") errorMessage: option<__string>,
  @as("ElementPath") elementPath: option<__string>,
}
type udpGroupSettings = {
  @as("TimedMetadataId3Period") timedMetadataId3Period: option<__integerMin0>,
  @as("TimedMetadataId3Frame") timedMetadataId3Frame: option<udpTimedMetadataId3Frame>,
  @as("InputLossAction") inputLossAction: option<inputLossActionForUdpOut>,
}
type ttmlDestinationSettings = {
  @as("StyleControl") styleControl: option<ttmlDestinationStyleControl>,
}
type transferringInputDeviceSummary = {
  @as("TransferType") transferType: option<inputDeviceTransferType>,
  @as("TargetCustomerId") targetCustomerId: option<__string>,
  @as("Message") message: option<__string>,
  @as("Id") id: option<__string>,
}
type timecodeConfig = {
  @as("SyncThreshold") syncThreshold: option<__integerMin1Max1000000>,
  @as("Source") source: timecodeConfigSource,
}
type temporalFilterSettings = {
  @as("Strength") strength: option<temporalFilterStrength>,
  @as("PostFilterSharpening") postFilterSharpening: option<temporalFilterPostFilterSharpening>,
}
type tags = Js.Dict.t<__string>
type stopTimecode = {
  @as("Timecode") timecode: option<__string>,
  @as("LastFrameClippingBehavior") lastFrameClippingBehavior: option<lastFrameClippingBehavior>,
}
type staticImageDeactivateScheduleActionSettings = {
  @as("Layer") layer: option<__integerMin0Max7>,
  @as("FadeOut") fadeOut: option<__integerMin0>,
}
type startTimecode = {@as("Timecode") timecode: option<__string>}
type scte35TimeSignalApos = {
  @as("WebDeliveryAllowedFlag")
  webDeliveryAllowedFlag: option<scte35AposWebDeliveryAllowedBehavior>,
  @as("NoRegionalBlackoutFlag")
  noRegionalBlackoutFlag: option<scte35AposNoRegionalBlackoutBehavior>,
  @as("AdAvailOffset") adAvailOffset: option<__integerMinNegative1000Max1000>,
}
type scte35SpliceInsertScheduleActionSettings = {
  @as("SpliceEventId") spliceEventId: __longMin0Max4294967295,
  @as("Duration") duration: option<__longMin0Max8589934591>,
}
type scte35SpliceInsert = {
  @as("WebDeliveryAllowedFlag")
  webDeliveryAllowedFlag: option<scte35SpliceInsertWebDeliveryAllowedBehavior>,
  @as("NoRegionalBlackoutFlag")
  noRegionalBlackoutFlag: option<scte35SpliceInsertNoRegionalBlackoutBehavior>,
  @as("AdAvailOffset") adAvailOffset: option<__integerMinNegative1000Max1000>,
}
type scte35ReturnToNetworkScheduleActionSettings = {
  @as("SpliceEventId") spliceEventId: __longMin0Max4294967295,
}
type scte35DeliveryRestrictions = {
  @as("WebDeliveryAllowedFlag") webDeliveryAllowedFlag: scte35WebDeliveryAllowedFlag,
  @as("NoRegionalBlackoutFlag") noRegionalBlackoutFlag: scte35NoRegionalBlackoutFlag,
  @as("DeviceRestrictions") deviceRestrictions: scte35DeviceRestrictions,
  @as("ArchiveAllowedFlag") archiveAllowedFlag: scte35ArchiveAllowedFlag,
}
type scte27SourceSettings = {@as("Pid") pid: option<__integerMin1>}
type scte20SourceSettings = {
  @as("Source608ChannelNumber") source608ChannelNumber: option<__integerMin1Max4>,
  @as("Convert608To708") convert608To708: option<scte20Convert608To708>,
}
type reservationResourceSpecification = {
  @as("VideoQuality") videoQuality: option<reservationVideoQuality>,
  @as("SpecialFeature") specialFeature: option<reservationSpecialFeature>,
  @as("ResourceType") resourceType: option<reservationResourceType>,
  @as("Resolution") resolution: option<reservationResolution>,
  @as("MaximumFramerate") maximumFramerate: option<reservationMaximumFramerate>,
  @as("MaximumBitrate") maximumBitrate: option<reservationMaximumBitrate>,
  @as("Codec") codec: option<reservationCodec>,
  @as("ChannelClass") channelClass: option<channelClass>,
}
type pipelinePauseStateSettings = {@as("PipelineId") pipelineId: pipelineId}
type pipelineDetail = {
  @as("PipelineId") pipelineId: option<__string>,
  @as("ActiveMotionGraphicsUri") activeMotionGraphicsUri: option<__string>,
  @as("ActiveMotionGraphicsActionName") activeMotionGraphicsActionName: option<__string>,
  @as("ActiveInputSwitchActionName") activeInputSwitchActionName: option<__string>,
  @as("ActiveInputAttachmentName") activeInputAttachmentName: option<__string>,
}
type outputLocationRef = {@as("DestinationRefId") destinationRefId: option<__string>}
type outputDestinationSettings = {
  @as("Username") username: option<__string>,
  @as("Url") url: option<__string>,
  @as("StreamName") streamName: option<__string>,
  @as("PasswordParam") passwordParam: option<__string>,
}
type nielsenConfiguration = {
  @as("NielsenPcmToId3Tagging") nielsenPcmToId3Tagging: option<nielsenPcmToId3TaggingState>,
  @as("DistributorId") distributorId: option<__string>,
}
type multiplexStatmuxVideoSettings = {
  @as("Priority") priority: option<__integerMinNegative5Max5>,
  @as("MinimumBitrate") minimumBitrate: option<__integerMin100000Max100000000>,
  @as("MaximumBitrate") maximumBitrate: option<__integerMin100000Max100000000>,
}
type multiplexSettingsSummary = {
  @as("TransportStreamBitrate") transportStreamBitrate: option<__integerMin1000000Max100000000>,
}
type multiplexSettings = {
  @as("TransportStreamReservedBitrate")
  transportStreamReservedBitrate: option<__integerMin0Max100000000>,
  @as("TransportStreamId") transportStreamId: __integerMin0Max65535,
  @as("TransportStreamBitrate") transportStreamBitrate: __integerMin1000000Max100000000,
  @as("MaximumVideoBufferDelayMilliseconds")
  maximumVideoBufferDelayMilliseconds: option<__integerMin800Max3000>,
}
type multiplexProgramSummary = {
  @as("ProgramName") programName: option<__string>,
  @as("ChannelId") channelId: option<__string>,
}
type multiplexProgramServiceDescriptor = {
  @as("ServiceName") serviceName: __stringMax256,
  @as("ProviderName") providerName: __stringMax256,
}
type multiplexProgramPipelineDetail = {
  @as("PipelineId") pipelineId: option<__string>,
  @as("ActiveChannelPipeline") activeChannelPipeline: option<__string>,
}
type multiplexProgramChannelDestinationSettings = {
  @as("ProgramName") programName: option<__stringMin1>,
  @as("MultiplexId") multiplexId: option<__stringMin1>,
}
type multiplexMediaConnectOutputDestinationSettings = {
  @as("EntitlementArn") entitlementArn: option<__stringMin1>,
}
type msSmoothOutputSettings = {
  @as("NameModifier") nameModifier: option<__string>,
  @as("H265PackagingType") h265PackagingType: option<msSmoothH265PackagingType>,
}
type mp2Settings = {
  @as("SampleRate") sampleRate: option<__double>,
  @as("CodingMode") codingMode: option<mp2CodingMode>,
  @as("Bitrate") bitrate: option<__double>,
}
type motionGraphicsSettings = {
  @as("HtmlMotionGraphicsSettings") htmlMotionGraphicsSettings: option<htmlMotionGraphicsSettings>,
}
type motionGraphicsActivateScheduleActionSettings = {
  @as("Username") username: option<__string>,
  @as("Url") url: option<__string>,
  @as("PasswordParam") passwordParam: option<__string>,
  @as("Duration") duration: option<__longMin0Max86400000>,
}
type mediaPackageOutputDestinationSettings = {@as("ChannelId") channelId: option<__stringMin1>}
type mediaConnectFlowRequest = {@as("FlowArn") flowArn: option<__string>}
type mediaConnectFlow = {@as("FlowArn") flowArn: option<__string>}
type m3u8Settings = {
  @as("VideoPid") videoPid: option<__string>,
  @as("TransportStreamId") transportStreamId: option<__integerMin0Max65535>,
  @as("TimedMetadataPid") timedMetadataPid: option<__string>,
  @as("TimedMetadataBehavior") timedMetadataBehavior: option<m3u8TimedMetadataBehavior>,
  @as("Scte35Pid") scte35Pid: option<__string>,
  @as("Scte35Behavior") scte35Behavior: option<m3u8Scte35Behavior>,
  @as("ProgramNum") programNum: option<__integerMin0Max65535>,
  @as("PmtPid") pmtPid: option<__string>,
  @as("PmtInterval") pmtInterval: option<__integerMin0Max1000>,
  @as("PcrPid") pcrPid: option<__string>,
  @as("PcrPeriod") pcrPeriod: option<__integerMin0Max500>,
  @as("PcrControl") pcrControl: option<m3u8PcrControl>,
  @as("PatInterval") patInterval: option<__integerMin0Max1000>,
  @as("NielsenId3Behavior") nielsenId3Behavior: option<m3u8NielsenId3Behavior>,
  @as("EcmPid") ecmPid: option<__string>,
  @as("AudioPids") audioPids: option<__string>,
  @as("AudioFramesPerPes") audioFramesPerPes: option<__integerMin0>,
}
type inputWhitelistRuleCidr = {@as("Cidr") cidr: option<__string>}
type inputWhitelistRule = {@as("Cidr") cidr: option<__string>}
type inputSpecification = {
  @as("Resolution") resolution: option<inputResolution>,
  @as("MaximumBitrate") maximumBitrate: option<inputMaximumBitrate>,
  @as("Codec") codec: option<inputCodec>,
}
type inputSourceRequest = {
  @as("Username") username: option<__string>,
  @as("Url") url: option<__string>,
  @as("PasswordParam") passwordParam: option<__string>,
}
type inputSource = {
  @as("Username") username: option<__string>,
  @as("Url") url: option<__string>,
  @as("PasswordParam") passwordParam: option<__string>,
}
type inputLossFailoverSettings = {
  @as("InputLossThresholdMsec") inputLossThresholdMsec: option<__integerMin100>,
}
type inputLocation = {
  @as("Username") username: option<__string>,
  @as("Uri") uri: __string,
  @as("PasswordParam") passwordParam: option<__string>,
}
type inputDeviceUhdSettings = {
  @as("Width") width: option<__integer>,
  @as("ScanType") scanType: option<inputDeviceScanType>,
  @as("MaxBitrate") maxBitrate: option<__integer>,
  @as("Height") height: option<__integer>,
  @as("Framerate") framerate: option<__double>,
  @as("DeviceState") deviceState: option<inputDeviceState>,
  @as("ConfiguredInput") configuredInput: option<inputDeviceConfiguredInput>,
  @as("ActiveInput") activeInput: option<inputDeviceActiveInput>,
}
type inputDeviceSettings = {@as("Id") id: option<__string>}
type inputDeviceRequest = {@as("Id") id: option<__string>}
type inputDeviceHdSettings = {
  @as("Width") width: option<__integer>,
  @as("ScanType") scanType: option<inputDeviceScanType>,
  @as("MaxBitrate") maxBitrate: option<__integer>,
  @as("Height") height: option<__integer>,
  @as("Framerate") framerate: option<__double>,
  @as("DeviceState") deviceState: option<inputDeviceState>,
  @as("ConfiguredInput") configuredInput: option<inputDeviceConfiguredInput>,
  @as("ActiveInput") activeInput: option<inputDeviceActiveInput>,
}
type inputDeviceConfigurableSettings = {
  @as("MaxBitrate") maxBitrate: option<__integer>,
  @as("ConfiguredInput") configuredInput: option<inputDeviceConfiguredInput>,
}
type inputDestinationVpc = {
  @as("NetworkInterfaceId") networkInterfaceId: option<__string>,
  @as("AvailabilityZone") availabilityZone: option<__string>,
}
type inputDestinationRequest = {@as("StreamName") streamName: option<__string>}
type inputChannelLevel = {
  @as("InputChannel") inputChannel: __integerMin0Max15,
  @as("Gain") gain: __integerMinNegative60Max6,
}
type hlsWebdavSettings = {
  @as("RestartDelay") restartDelay: option<__integerMin0Max15>,
  @as("NumRetries") numRetries: option<__integerMin0>,
  @as("HttpTransferMode") httpTransferMode: option<hlsWebdavHttpTransferMode>,
  @as("FilecacheDuration") filecacheDuration: option<__integerMin0Max600>,
  @as("ConnectionRetryInterval") connectionRetryInterval: option<__integerMin0>,
}
type hlsTimedMetadataScheduleActionSettings = {@as("Id3") id3: __string}
type hlsS3Settings = {@as("CannedAcl") cannedAcl: option<s3CannedAcl>}
type hlsMediaStoreSettings = {
  @as("RestartDelay") restartDelay: option<__integerMin0Max15>,
  @as("NumRetries") numRetries: option<__integerMin0>,
  @as("MediaStoreStorageClass") mediaStoreStorageClass: option<hlsMediaStoreStorageClass>,
  @as("FilecacheDuration") filecacheDuration: option<__integerMin0Max600>,
  @as("ConnectionRetryInterval") connectionRetryInterval: option<__integerMin0>,
}
type hlsInputSettings = {
  @as("RetryInterval") retryInterval: option<__integerMin0>,
  @as("Retries") retries: option<__integerMin0>,
  @as("BufferSegments") bufferSegments: option<__integerMin0>,
  @as("Bandwidth") bandwidth: option<__integerMin0>,
}
type hlsId3SegmentTaggingScheduleActionSettings = {@as("Tag") tag: __string}
type hlsBasicPutSettings = {
  @as("RestartDelay") restartDelay: option<__integerMin0Max15>,
  @as("NumRetries") numRetries: option<__integerMin0>,
  @as("FilecacheDuration") filecacheDuration: option<__integerMin0Max600>,
  @as("ConnectionRetryInterval") connectionRetryInterval: option<__integerMin0>,
}
type hlsAkamaiSettings = {
  @as("Token") token: option<__string>,
  @as("Salt") salt: option<__string>,
  @as("RestartDelay") restartDelay: option<__integerMin0Max15>,
  @as("NumRetries") numRetries: option<__integerMin0>,
  @as("HttpTransferMode") httpTransferMode: option<hlsAkamaiHttpTransferMode>,
  @as("FilecacheDuration") filecacheDuration: option<__integerMin0Max600>,
  @as("ConnectionRetryInterval") connectionRetryInterval: option<__integerMin0>,
}
type hdr10Settings = {
  @as("MaxFall") maxFall: option<__integerMin0Max32768>,
  @as("MaxCll") maxCll: option<__integerMin0Max32768>,
}
type h264ColorSpaceSettings = {
  @as("Rec709Settings") rec709Settings: option<rec709Settings>,
  @as("Rec601Settings") rec601Settings: option<rec601Settings>,
  @as("ColorSpacePassthroughSettings")
  colorSpacePassthroughSettings: option<colorSpacePassthroughSettings>,
}
type frameCaptureSettings = {
  @as("CaptureIntervalUnits") captureIntervalUnits: option<frameCaptureIntervalUnit>,
  @as("CaptureInterval") captureInterval: option<__integerMin1Max3600000>,
}
type frameCaptureS3Settings = {@as("CannedAcl") cannedAcl: option<s3CannedAcl>}
type frameCaptureOutputSettings = {@as("NameModifier") nameModifier: option<__string>}
type followModeScheduleActionStartSettings = {
  @as("ReferenceActionName") referenceActionName: __string,
  @as("FollowPoint") followPoint: followPoint,
}
type fmp4HlsSettings = {
  @as("TimedMetadataBehavior") timedMetadataBehavior: option<fmp4TimedMetadataBehavior>,
  @as("NielsenId3Behavior") nielsenId3Behavior: option<fmp4NielsenId3Behavior>,
  @as("AudioRenditionSets") audioRenditionSets: option<__string>,
}
type fixedModeScheduleActionStartSettings = {@as("Time") time: __string}
type fecOutputSettings = {
  @as("RowLength") rowLength: option<__integerMin1Max20>,
  @as("IncludeFec") includeFec: option<fecOutputIncludeFec>,
  @as("ColumnDepth") columnDepth: option<__integerMin4Max20>,
}
type featureActivations = {
  @as("InputPrepareScheduleActions")
  inputPrepareScheduleActions: option<featureActivationsInputPrepareScheduleActions>,
}
type embeddedSourceSettings = {
  @as("Source608TrackNumber") source608TrackNumber: option<__integerMin1Max5>,
  @as("Source608ChannelNumber") source608ChannelNumber: option<__integerMin1Max4>,
  @as("Scte20Detection") scte20Detection: option<embeddedScte20Detection>,
  @as("Convert608To708") convert608To708: option<embeddedConvert608To708>,
}
type ebuTtDDestinationSettings = {
  @as("StyleControl") styleControl: option<ebuTtDDestinationStyleControl>,
  @as("FontFamily") fontFamily: option<__string>,
  @as("FillLineGap") fillLineGap: option<ebuTtDFillLineGapControl>,
  @as("CopyrightHolder") copyrightHolder: option<__stringMax1000>,
}
type eac3Settings = {
  @as("SurroundMode") surroundMode: option<eac3SurroundMode>,
  @as("SurroundExMode") surroundExMode: option<eac3SurroundExMode>,
  @as("StereoDownmix") stereoDownmix: option<eac3StereoDownmix>,
  @as("PhaseControl") phaseControl: option<eac3PhaseControl>,
  @as("PassthroughControl") passthroughControl: option<eac3PassthroughControl>,
  @as("MetadataControl") metadataControl: option<eac3MetadataControl>,
  @as("LtRtSurroundMixLevel") ltRtSurroundMixLevel: option<__double>,
  @as("LtRtCenterMixLevel") ltRtCenterMixLevel: option<__double>,
  @as("LoRoSurroundMixLevel") loRoSurroundMixLevel: option<__double>,
  @as("LoRoCenterMixLevel") loRoCenterMixLevel: option<__double>,
  @as("LfeFilter") lfeFilter: option<eac3LfeFilter>,
  @as("LfeControl") lfeControl: option<eac3LfeControl>,
  @as("DrcRf") drcRf: option<eac3DrcRf>,
  @as("DrcLine") drcLine: option<eac3DrcLine>,
  @as("Dialnorm") dialnorm: option<__integerMin1Max31>,
  @as("DcFilter") dcFilter: option<eac3DcFilter>,
  @as("CodingMode") codingMode: option<eac3CodingMode>,
  @as("BitstreamMode") bitstreamMode: option<eac3BitstreamMode>,
  @as("Bitrate") bitrate: option<__double>,
  @as("AttenuationControl") attenuationControl: option<eac3AttenuationControl>,
}
type dvbTdtSettings = {@as("RepInterval") repInterval: option<__integerMin1000Max30000>}
type dvbSubSourceSettings = {@as("Pid") pid: option<__integerMin1>}
type dvbSdtSettings = {
  @as("ServiceProviderName") serviceProviderName: option<__stringMin1Max256>,
  @as("ServiceName") serviceName: option<__stringMin1Max256>,
  @as("RepInterval") repInterval: option<__integerMin25Max2000>,
  @as("OutputSdt") outputSdt: option<dvbSdtOutputSdt>,
}
type dvbNitSettings = {
  @as("RepInterval") repInterval: option<__integerMin25Max10000>,
  @as("NetworkName") networkName: __stringMin1Max256,
  @as("NetworkId") networkId: __integerMin0Max65536,
}
type channelEgressEndpoint = {@as("SourceIp") sourceIp: option<__string>}
type cdiInputSpecification = {@as("Resolution") resolution: option<cdiInputResolution>}
type captionRectangle = {
  @as("Width") width: __doubleMin0Max100,
  @as("TopOffset") topOffset: __doubleMin0Max100,
  @as("LeftOffset") leftOffset: __doubleMin0Max100,
  @as("Height") height: __doubleMin0Max100,
}
type captionLanguageMapping = {
  @as("LanguageDescription") languageDescription: __stringMin1,
  @as("LanguageCode") languageCode: __stringMin3Max3,
  @as("CaptionChannel") captionChannel: __integerMin1Max4,
}
type batchSuccessfulResultModel = {
  @as("State") state: option<__string>,
  @as("Id") id: option<__string>,
  @as("Arn") arn: option<__string>,
}
type batchFailedResultModel = {
  @as("Message") message: option<__string>,
  @as("Id") id: option<__string>,
  @as("Code") code: option<__string>,
  @as("Arn") arn: option<__string>,
}
type audioTrack = {@as("Track") track: __integerMin1}
type audioSilenceFailoverSettings = {
  @as("AudioSilenceThresholdMsec") audioSilenceThresholdMsec: option<__integerMin1000>,
  @as("AudioSelectorName") audioSelectorName: __string,
}
type audioPidSelection = {@as("Pid") pid: __integerMin0Max8191}
type audioNormalizationSettings = {
  @as("TargetLkfs") targetLkfs: option<__doubleMinNegative59Max0>,
  @as("AlgorithmControl") algorithmControl: option<audioNormalizationAlgorithmControl>,
  @as("Algorithm") algorithm: option<audioNormalizationAlgorithm>,
}
type audioLanguageSelection = {
  @as("LanguageSelectionPolicy") languageSelectionPolicy: option<audioLanguageSelectionPolicy>,
  @as("LanguageCode") languageCode: __string,
}
type archiveS3Settings = {@as("CannedAcl") cannedAcl: option<s3CannedAcl>}
type ancillarySourceSettings = {
  @as("SourceAncillaryChannelNumber") sourceAncillaryChannelNumber: option<__integerMin1Max4>,
}
type ac3Settings = {
  @as("MetadataControl") metadataControl: option<ac3MetadataControl>,
  @as("LfeFilter") lfeFilter: option<ac3LfeFilter>,
  @as("DrcProfile") drcProfile: option<ac3DrcProfile>,
  @as("Dialnorm") dialnorm: option<__integerMin1Max31>,
  @as("CodingMode") codingMode: option<ac3CodingMode>,
  @as("BitstreamMode") bitstreamMode: option<ac3BitstreamMode>,
  @as("Bitrate") bitrate: option<__double>,
}
type aacSettings = {
  @as("VbrQuality") vbrQuality: option<aacVbrQuality>,
  @as("Spec") spec: option<aacSpec>,
  @as("SampleRate") sampleRate: option<__double>,
  @as("RawFormat") rawFormat: option<aacRawFormat>,
  @as("RateControlMode") rateControlMode: option<aacRateControlMode>,
  @as("Profile") profile: option<aacProfile>,
  @as("InputType") inputType: option<aacInputType>,
  @as("CodingMode") codingMode: option<aacCodingMode>,
  @as("Bitrate") bitrate: option<__double>,
}
type __listOfValidationError = array<validationError>
type __listOfTransferringInputDeviceSummary = array<transferringInputDeviceSummary>
type __listOfPipelinePauseStateSettings = array<pipelinePauseStateSettings>
type __listOfPipelineDetail = array<pipelineDetail>
type __listOfOutputDestinationSettings = array<outputDestinationSettings>
type __listOfMultiplexProgramSummary = array<multiplexProgramSummary>
type __listOfMultiplexProgramPipelineDetail = array<multiplexProgramPipelineDetail>
type __listOfMediaPackageOutputDestinationSettings = array<mediaPackageOutputDestinationSettings>
type __listOfMediaConnectFlowRequest = array<mediaConnectFlowRequest>
type __listOfMediaConnectFlow = array<mediaConnectFlow>
type __listOfInputWhitelistRuleCidr = array<inputWhitelistRuleCidr>
type __listOfInputWhitelistRule = array<inputWhitelistRule>
type __listOfInputSourceRequest = array<inputSourceRequest>
type __listOfInputSource = array<inputSource>
type __listOfInputDeviceSettings = array<inputDeviceSettings>
type __listOfInputDeviceRequest = array<inputDeviceRequest>
type __listOfInputDestinationRequest = array<inputDestinationRequest>
type __listOfInputChannelLevel = array<inputChannelLevel>
type __listOfChannelEgressEndpoint = array<channelEgressEndpoint>
type __listOfCaptionLanguageMapping = array<captionLanguageMapping>
type __listOfBatchSuccessfulResultModel = array<batchSuccessfulResultModel>
type __listOfBatchFailedResultModel = array<batchFailedResultModel>
type __listOfAudioTrack = array<audioTrack>
type vpcOutputSettingsDescription = {
  @as("SubnetIds") subnetIds: option<__listOf__string>,
  @as("SecurityGroupIds") securityGroupIds: option<__listOf__string>,
  @as("NetworkInterfaceIds") networkInterfaceIds: option<__listOf__string>,
  @as("AvailabilityZones") availabilityZones: option<__listOf__string>,
}
type vpcOutputSettings = {
  @as("SubnetIds") subnetIds: __listOf__string,
  @as("SecurityGroupIds") securityGroupIds: option<__listOf__string>,
  @as("PublicAddressAllocationIds") publicAddressAllocationIds: option<__listOf__string>,
}
type videoSelectorSettings = {
  @as("VideoSelectorProgramId") videoSelectorProgramId: option<videoSelectorProgramId>,
  @as("VideoSelectorPid") videoSelectorPid: option<videoSelectorPid>,
}
type videoSelectorColorSpaceSettings = {@as("Hdr10Settings") hdr10Settings: option<hdr10Settings>}
type teletextSourceSettings = {
  @as("PageNumber") pageNumber: option<__string>,
  @as("OutputRectangle") outputRectangle: option<captionRectangle>,
}
type staticKeySettings = {
  @as("StaticKeyValue") staticKeyValue: __stringMin32Max32,
  @as("KeyProviderServer") keyProviderServer: option<inputLocation>,
}
type staticImageActivateScheduleActionSettings = {
  @as("Width") width: option<__integerMin1>,
  @as("Opacity") opacity: option<__integerMin0Max100>,
  @as("Layer") layer: option<__integerMin0Max7>,
  @as("ImageY") imageY: option<__integerMin0>,
  @as("ImageX") imageX: option<__integerMin0>,
  @as("Image") image: inputLocation,
  @as("Height") height: option<__integerMin1>,
  @as("FadeOut") fadeOut: option<__integerMin0>,
  @as("FadeIn") fadeIn: option<__integerMin0>,
  @as("Duration") duration: option<__integerMin0>,
}
type standardHlsSettings = {
  @as("M3u8Settings") m3u8Settings: m3u8Settings,
  @as("AudioRenditionSets") audioRenditionSets: option<__string>,
}
type scte35SegmentationDescriptor = {
  @as("SubSegmentsExpected") subSegmentsExpected: option<__integerMin0Max255>,
  @as("SubSegmentNum") subSegmentNum: option<__integerMin0Max255>,
  @as("SegmentsExpected") segmentsExpected: option<__integerMin0Max255>,
  @as("SegmentationUpidType") segmentationUpidType: option<__integerMin0Max255>,
  @as("SegmentationUpid") segmentationUpid: option<__string>,
  @as("SegmentationTypeId") segmentationTypeId: option<__integerMin0Max255>,
  @as("SegmentationEventId") segmentationEventId: __longMin0Max4294967295,
  @as("SegmentationDuration") segmentationDuration: option<__longMin0Max1099511627775>,
  @as("SegmentationCancelIndicator") segmentationCancelIndicator: scte35SegmentationCancelIndicator,
  @as("SegmentNum") segmentNum: option<__integerMin0Max255>,
  @as("DeliveryRestrictions") deliveryRestrictions: option<scte35DeliveryRestrictions>,
}
type scheduleActionStartSettings = {
  @as("ImmediateModeScheduleActionStartSettings")
  immediateModeScheduleActionStartSettings: option<immediateModeScheduleActionStartSettings>,
  @as("FollowModeScheduleActionStartSettings")
  followModeScheduleActionStartSettings: option<followModeScheduleActionStartSettings>,
  @as("FixedModeScheduleActionStartSettings")
  fixedModeScheduleActionStartSettings: option<fixedModeScheduleActionStartSettings>,
}
type rtmpOutputSettings = {
  @as("NumRetries") numRetries: option<__integerMin0>,
  @as("Destination") destination: outputLocationRef,
  @as("ConnectionRetryInterval") connectionRetryInterval: option<__integerMin1>,
  @as("CertificateMode") certificateMode: option<rtmpOutputCertificateMode>,
}
type rtmpGroupSettings = {
  @as("RestartDelay") restartDelay: option<__integerMin0>,
  @as("InputLossAction") inputLossAction: option<inputLossActionForRtmpOut>,
  @as("CaptionData") captionData: option<rtmpCaptionData>,
  @as("CacheLength") cacheLength: option<__integerMin30>,
  @as("CacheFullBehavior") cacheFullBehavior: option<rtmpCacheFullBehavior>,
  @as("AuthenticationScheme") authenticationScheme: option<authenticationScheme>,
  @as("AdMarkers") adMarkers: option<__listOfRtmpAdMarkers>,
}
type reservation = {
  @as("UsagePrice") usagePrice: option<__double>,
  @as("Tags") tags: option<tags>,
  @as("State") state: option<reservationState>,
  @as("Start") start: option<__string>,
  @as("ResourceSpecification") resourceSpecification: option<reservationResourceSpecification>,
  @as("ReservationId") reservationId: option<__string>,
  @as("Region") region: option<__string>,
  @as("OfferingType") offeringType: option<offeringType>,
  @as("OfferingId") offeringId: option<__string>,
  @as("OfferingDescription") offeringDescription: option<__string>,
  @as("Name") name: option<__string>,
  @as("FixedPrice") fixedPrice: option<__double>,
  @as("End") end: option<__string>,
  @as("DurationUnits") durationUnits: option<offeringDurationUnits>,
  @as("Duration") duration: option<__integer>,
  @as("CurrencyCode") currencyCode: option<__string>,
  @as("Count") count: option<__integer>,
  @as("Arn") arn: option<__string>,
}
type offering = {
  @as("UsagePrice") usagePrice: option<__double>,
  @as("ResourceSpecification") resourceSpecification: option<reservationResourceSpecification>,
  @as("Region") region: option<__string>,
  @as("OfferingType") offeringType: option<offeringType>,
  @as("OfferingId") offeringId: option<__string>,
  @as("OfferingDescription") offeringDescription: option<__string>,
  @as("FixedPrice") fixedPrice: option<__double>,
  @as("DurationUnits") durationUnits: option<offeringDurationUnits>,
  @as("Duration") duration: option<__integer>,
  @as("CurrencyCode") currencyCode: option<__string>,
  @as("Arn") arn: option<__string>,
}
type networkInputSettings = {
  @as("ServerValidation") serverValidation: option<networkInputServerValidation>,
  @as("HlsInputSettings") hlsInputSettings: option<hlsInputSettings>,
}
type multiplexVideoSettings = {
  @as("StatmuxSettings") statmuxSettings: option<multiplexStatmuxVideoSettings>,
  @as("ConstantBitrate") constantBitrate: option<__integerMin100000Max100000000>,
}
type multiplexSummary = {
  @as("Tags") tags: option<tags>,
  @as("State") state: option<multiplexState>,
  @as("ProgramCount") programCount: option<__integer>,
  @as("PipelinesRunningCount") pipelinesRunningCount: option<__integer>,
  @as("Name") name: option<__string>,
  @as("MultiplexSettings") multiplexSettings: option<multiplexSettingsSummary>,
  @as("Id") id: option<__string>,
  @as("AvailabilityZones") availabilityZones: option<__listOf__string>,
  @as("Arn") arn: option<__string>,
}
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
type multiplexOutputSettings = {@as("Destination") destination: outputLocationRef}
type multiplexOutputDestination = {
  @as("MediaConnectSettings")
  mediaConnectSettings: option<multiplexMediaConnectOutputDestinationSettings>,
}
type msSmoothGroupSettings = {
  @as("TimestampOffsetMode") timestampOffsetMode: option<smoothGroupTimestampOffsetMode>,
  @as("TimestampOffset") timestampOffset: option<__string>,
  @as("StreamManifestBehavior") streamManifestBehavior: option<smoothGroupStreamManifestBehavior>,
  @as("SparseTrackType") sparseTrackType: option<smoothGroupSparseTrackType>,
  @as("SendDelayMs") sendDelayMs: option<__integerMin0Max10000>,
  @as("SegmentationMode") segmentationMode: option<smoothGroupSegmentationMode>,
  @as("RestartDelay") restartDelay: option<__integerMin0>,
  @as("NumRetries") numRetries: option<__integerMin0>,
  @as("InputLossAction") inputLossAction: option<inputLossActionForMsSmoothOut>,
  @as("FragmentLength") fragmentLength: option<__integerMin1>,
  @as("FilecacheDuration") filecacheDuration: option<__integerMin0>,
  @as("EventStopBehavior") eventStopBehavior: option<smoothGroupEventStopBehavior>,
  @as("EventIdMode") eventIdMode: option<smoothGroupEventIdMode>,
  @as("EventId") eventId: option<__string>,
  @as("Destination") destination: outputLocationRef,
  @as("ConnectionRetryInterval") connectionRetryInterval: option<__integerMin0>,
  @as("CertificateMode") certificateMode: option<smoothGroupCertificateMode>,
  @as("AudioOnlyTimecodeControl")
  audioOnlyTimecodeControl: option<smoothGroupAudioOnlyTimecodeControl>,
  @as("AcquisitionPointId") acquisitionPointId: option<__string>,
}
type mpeg2FilterSettings = {
  @as("TemporalFilterSettings") temporalFilterSettings: option<temporalFilterSettings>,
}
type motionGraphicsConfiguration = {
  @as("MotionGraphicsSettings") motionGraphicsSettings: motionGraphicsSettings,
  @as("MotionGraphicsInsertion") motionGraphicsInsertion: option<motionGraphicsInsertion>,
}
type mediaPackageGroupSettings = {@as("Destination") destination: outputLocationRef}
type m2tsSettings = {
  @as("VideoPid") videoPid: option<__string>,
  @as("TransportStreamId") transportStreamId: option<__integerMin0Max65535>,
  @as("TimedMetadataPid") timedMetadataPid: option<__string>,
  @as("TimedMetadataBehavior") timedMetadataBehavior: option<m2tsTimedMetadataBehavior>,
  @as("SegmentationTime") segmentationTime: option<__doubleMin1>,
  @as("SegmentationStyle") segmentationStyle: option<m2tsSegmentationStyle>,
  @as("SegmentationMarkers") segmentationMarkers: option<m2tsSegmentationMarkers>,
  @as("Scte35Pid") scte35Pid: option<__string>,
  @as("Scte35Control") scte35Control: option<m2tsScte35Control>,
  @as("Scte27Pids") scte27Pids: option<__string>,
  @as("RateMode") rateMode: option<m2tsRateMode>,
  @as("ProgramNum") programNum: option<__integerMin0Max65535>,
  @as("PmtPid") pmtPid: option<__string>,
  @as("PmtInterval") pmtInterval: option<__integerMin0Max1000>,
  @as("PcrPid") pcrPid: option<__string>,
  @as("PcrPeriod") pcrPeriod: option<__integerMin0Max500>,
  @as("PcrControl") pcrControl: option<m2tsPcrControl>,
  @as("PatInterval") patInterval: option<__integerMin0Max1000>,
  @as("NullPacketBitrate") nullPacketBitrate: option<__doubleMin0>,
  @as("NielsenId3Behavior") nielsenId3Behavior: option<m2tsNielsenId3Behavior>,
  @as("KlvDataPids") klvDataPids: option<__string>,
  @as("Klv") klv: option<m2tsKlv>,
  @as("FragmentTime") fragmentTime: option<__doubleMin0>,
  @as("EtvSignalPid") etvSignalPid: option<__string>,
  @as("EtvPlatformPid") etvPlatformPid: option<__string>,
  @as("EsRateInPes") esRateInPes: option<m2tsEsRateInPes>,
  @as("EcmPid") ecmPid: option<__string>,
  @as("EbpPlacement") ebpPlacement: option<m2tsEbpPlacement>,
  @as("EbpLookaheadMs") ebpLookaheadMs: option<__integerMin0Max10000>,
  @as("EbpAudioInterval") ebpAudioInterval: option<m2tsAudioInterval>,
  @as("Ebif") ebif: option<m2tsEbifControl>,
  @as("DvbTeletextPid") dvbTeletextPid: option<__string>,
  @as("DvbTdtSettings") dvbTdtSettings: option<dvbTdtSettings>,
  @as("DvbSubPids") dvbSubPids: option<__string>,
  @as("DvbSdtSettings") dvbSdtSettings: option<dvbSdtSettings>,
  @as("DvbNitSettings") dvbNitSettings: option<dvbNitSettings>,
  @as("CcDescriptor") ccDescriptor: option<m2tsCcDescriptor>,
  @as("BufferModel") bufferModel: option<m2tsBufferModel>,
  @as("Bitrate") bitrate: option<__integerMin0>,
  @as("AudioStreamType") audioStreamType: option<m2tsAudioStreamType>,
  @as("AudioPids") audioPids: option<__string>,
  @as("AudioFramesPerPes") audioFramesPerPes: option<__integerMin0>,
  @as("AudioBufferModel") audioBufferModel: option<m2tsAudioBufferModel>,
  @as("AribCaptionsPidControl") aribCaptionsPidControl: option<m2tsAribCaptionsPidControl>,
  @as("AribCaptionsPid") aribCaptionsPid: option<__string>,
  @as("Arib") arib: option<m2tsArib>,
  @as("AbsentInputAudioBehavior") absentInputAudioBehavior: option<m2tsAbsentInputAudioBehavior>,
}
type inputVpcRequest = {
  @as("SubnetIds") subnetIds: __listOf__string,
  @as("SecurityGroupIds") securityGroupIds: option<__listOf__string>,
}
type inputLossBehavior = {
  @as("RepeatFrameMsec") repeatFrameMsec: option<__integerMin0Max1000000>,
  @as("InputLossImageType") inputLossImageType: option<inputLossImageType>,
  @as("InputLossImageSlate") inputLossImageSlate: option<inputLocation>,
  @as("InputLossImageColor") inputLossImageColor: option<__stringMin6Max6>,
  @as("BlackFrameMsec") blackFrameMsec: option<__integerMin0Max1000000>,
}
type inputDeviceNetworkSettings = {
  @as("SubnetMask") subnetMask: option<__string>,
  @as("IpScheme") ipScheme: option<inputDeviceIpScheme>,
  @as("IpAddress") ipAddress: option<__string>,
  @as("Gateway") gateway: option<__string>,
  @as("DnsAddresses") dnsAddresses: option<__listOf__string>,
}
type inputDestination = {
  @as("Vpc") vpc: option<inputDestinationVpc>,
  @as("Url") url: option<__string>,
  @as("Port") port: option<__string>,
  @as("Ip") ip: option<__string>,
}
type inputClippingSettings = {
  @as("StopTimecode") stopTimecode: option<stopTimecode>,
  @as("StartTimecode") startTimecode: option<startTimecode>,
  @as("InputTimecodeSource") inputTimecodeSource: inputTimecodeSource,
}
type hlsCdnSettings = {
  @as("HlsWebdavSettings") hlsWebdavSettings: option<hlsWebdavSettings>,
  @as("HlsS3Settings") hlsS3Settings: option<hlsS3Settings>,
  @as("HlsMediaStoreSettings") hlsMediaStoreSettings: option<hlsMediaStoreSettings>,
  @as("HlsBasicPutSettings") hlsBasicPutSettings: option<hlsBasicPutSettings>,
  @as("HlsAkamaiSettings") hlsAkamaiSettings: option<hlsAkamaiSettings>,
}
type h265FilterSettings = {
  @as("TemporalFilterSettings") temporalFilterSettings: option<temporalFilterSettings>,
}
type h265ColorSpaceSettings = {
  @as("Rec709Settings") rec709Settings: option<rec709Settings>,
  @as("Rec601Settings") rec601Settings: option<rec601Settings>,
  @as("Hdr10Settings") hdr10Settings: option<hdr10Settings>,
  @as("ColorSpacePassthroughSettings")
  colorSpacePassthroughSettings: option<colorSpacePassthroughSettings>,
}
type h264FilterSettings = {
  @as("TemporalFilterSettings") temporalFilterSettings: option<temporalFilterSettings>,
}
type frameCaptureCdnSettings = {
  @as("FrameCaptureS3Settings") frameCaptureS3Settings: option<frameCaptureS3Settings>,
}
type failoverConditionSettings = {
  @as("VideoBlackSettings") videoBlackSettings: option<videoBlackFailoverSettings>,
  @as("InputLossSettings") inputLossSettings: option<inputLossFailoverSettings>,
  @as("AudioSilenceSettings") audioSilenceSettings: option<audioSilenceFailoverSettings>,
}
type dvbSubDestinationSettings = {
  @as("YPosition") yposition: option<__integerMin0>,
  @as("XPosition") xposition: option<__integerMin0>,
  @as("TeletextGridControl") teletextGridControl: option<dvbSubDestinationTeletextGridControl>,
  @as("ShadowYOffset") shadowYOffset: option<__integer>,
  @as("ShadowXOffset") shadowXOffset: option<__integer>,
  @as("ShadowOpacity") shadowOpacity: option<__integerMin0Max255>,
  @as("ShadowColor") shadowColor: option<dvbSubDestinationShadowColor>,
  @as("OutlineSize") outlineSize: option<__integerMin0Max10>,
  @as("OutlineColor") outlineColor: option<dvbSubDestinationOutlineColor>,
  @as("FontSize") fontSize: option<__string>,
  @as("FontResolution") fontResolution: option<__integerMin96Max600>,
  @as("FontOpacity") fontOpacity: option<__integerMin0Max255>,
  @as("FontColor") fontColor: option<dvbSubDestinationFontColor>,
  @as("Font") font: option<inputLocation>,
  @as("BackgroundOpacity") backgroundOpacity: option<__integerMin0Max255>,
  @as("BackgroundColor") backgroundColor: option<dvbSubDestinationBackgroundColor>,
  @as("Alignment") alignment: option<dvbSubDestinationAlignment>,
}
type burnInDestinationSettings = {
  @as("YPosition") yposition: option<__integerMin0>,
  @as("XPosition") xposition: option<__integerMin0>,
  @as("TeletextGridControl") teletextGridControl: option<burnInTeletextGridControl>,
  @as("ShadowYOffset") shadowYOffset: option<__integer>,
  @as("ShadowXOffset") shadowXOffset: option<__integer>,
  @as("ShadowOpacity") shadowOpacity: option<__integerMin0Max255>,
  @as("ShadowColor") shadowColor: option<burnInShadowColor>,
  @as("OutlineSize") outlineSize: option<__integerMin0Max10>,
  @as("OutlineColor") outlineColor: option<burnInOutlineColor>,
  @as("FontSize") fontSize: option<__string>,
  @as("FontResolution") fontResolution: option<__integerMin96Max600>,
  @as("FontOpacity") fontOpacity: option<__integerMin0Max255>,
  @as("FontColor") fontColor: option<burnInFontColor>,
  @as("Font") font: option<inputLocation>,
  @as("BackgroundOpacity") backgroundOpacity: option<__integerMin0Max255>,
  @as("BackgroundColor") backgroundColor: option<burnInBackgroundColor>,
  @as("Alignment") alignment: option<burnInAlignment>,
}
type blackoutSlate = {
  @as("State") state: option<blackoutSlateState>,
  @as("NetworkId") networkId: option<__stringMin34Max34>,
  @as("NetworkEndBlackoutImage") networkEndBlackoutImage: option<inputLocation>,
  @as("NetworkEndBlackout") networkEndBlackout: option<blackoutSlateNetworkEndBlackout>,
  @as("BlackoutSlateImage") blackoutSlateImage: option<inputLocation>,
}
type batchScheduleActionDeleteRequest = {@as("ActionNames") actionNames: __listOf__string}
type availSettings = {
  @as("Scte35TimeSignalApos") scte35TimeSignalApos: option<scte35TimeSignalApos>,
  @as("Scte35SpliceInsert") scte35SpliceInsert: option<scte35SpliceInsert>,
}
type availBlanking = {
  @as("State") state: option<availBlankingState>,
  @as("AvailBlankingImage") availBlankingImage: option<inputLocation>,
}
type audioOnlyHlsSettings = {
  @as("SegmentType") segmentType: option<audioOnlyHlsSegmentType>,
  @as("AudioTrackType") audioTrackType: option<audioOnlyHlsTrackType>,
  @as("AudioOnlyImage") audioOnlyImage: option<inputLocation>,
  @as("AudioGroupId") audioGroupId: option<__string>,
}
type audioCodecSettings = {
  @as("WavSettings") wavSettings: option<wavSettings>,
  @as("PassThroughSettings") passThroughSettings: option<passThroughSettings>,
  @as("Mp2Settings") mp2Settings: option<mp2Settings>,
  @as("Eac3Settings") eac3Settings: option<eac3Settings>,
  @as("Ac3Settings") ac3Settings: option<ac3Settings>,
  @as("AacSettings") aacSettings: option<aacSettings>,
}
type archiveCdnSettings = {@as("ArchiveS3Settings") archiveS3Settings: option<archiveS3Settings>}
type __listOfReservation = array<reservation>
type __listOfOffering = array<offering>
type __listOfMultiplexSummary = array<multiplexSummary>
type __listOfMultiplexOutputDestination = array<multiplexOutputDestination>
type __listOfInputDestination = array<inputDestination>
type videoSelector = {
  @as("SelectorSettings") selectorSettings: option<videoSelectorSettings>,
  @as("ColorSpaceUsage") colorSpaceUsage: option<videoSelectorColorSpaceUsage>,
  @as("ColorSpaceSettings") colorSpaceSettings: option<videoSelectorColorSpaceSettings>,
  @as("ColorSpace") colorSpace: option<videoSelectorColorSpace>,
}
type udpContainerSettings = {@as("M2tsSettings") m2tsSettings: option<m2tsSettings>}
type scte35DescriptorSettings = {
  @as("SegmentationDescriptorScte35DescriptorSettings")
  segmentationDescriptorScte35DescriptorSettings: scte35SegmentationDescriptor,
}
type pauseStateScheduleActionSettings = {
  @as("Pipelines") pipelines: option<__listOfPipelinePauseStateSettings>,
}
type outputDestination = {
  @as("Settings") settings: option<__listOfOutputDestinationSettings>,
  @as("MultiplexSettings") multiplexSettings: option<multiplexProgramChannelDestinationSettings>,
  @as("MediaPackageSettings")
  mediaPackageSettings: option<__listOfMediaPackageOutputDestinationSettings>,
  @as("Id") id: option<__string>,
}
type multiplexProgramSettings = {
  @as("VideoSettings") videoSettings: option<multiplexVideoSettings>,
  @as("ServiceDescriptor") serviceDescriptor: option<multiplexProgramServiceDescriptor>,
  @as("ProgramNumber") programNumber: __integerMin0Max65535,
  @as("PreferredChannelPipeline") preferredChannelPipeline: option<preferredChannelPipeline>,
}
type mpeg2Settings = {
  @as("TimecodeInsertion") timecodeInsertion: option<mpeg2TimecodeInsertionBehavior>,
  @as("SubgopLength") subgopLength: option<mpeg2SubGopLength>,
  @as("ScanType") scanType: option<mpeg2ScanType>,
  @as("GopSizeUnits") gopSizeUnits: option<mpeg2GopSizeUnits>,
  @as("GopSize") gopSize: option<__double>,
  @as("GopNumBFrames") gopNumBFrames: option<__integerMin0Max7>,
  @as("GopClosedCadence") gopClosedCadence: option<__integerMin0>,
  @as("FramerateNumerator") framerateNumerator: __integerMin1,
  @as("FramerateDenominator") framerateDenominator: __integerMin1,
  @as("FixedAfd") fixedAfd: option<fixedAfd>,
  @as("FilterSettings") filterSettings: option<mpeg2FilterSettings>,
  @as("DisplayAspectRatio") displayAspectRatio: option<mpeg2DisplayRatio>,
  @as("ColorSpace") colorSpace: option<mpeg2ColorSpace>,
  @as("ColorMetadata") colorMetadata: option<mpeg2ColorMetadata>,
  @as("AfdSignaling") afdSignaling: option<afdSignaling>,
  @as("AdaptiveQuantization") adaptiveQuantization: option<mpeg2AdaptiveQuantization>,
}
type keyProviderSettings = {@as("StaticKeySettings") staticKeySettings: option<staticKeySettings>}
type inputSwitchScheduleActionSettings = {
  @as("UrlPath") urlPath: option<__listOf__string>,
  @as("InputClippingSettings") inputClippingSettings: option<inputClippingSettings>,
  @as("InputAttachmentNameReference") inputAttachmentNameReference: __string,
}
type inputSecurityGroup = {
  @as("WhitelistRules") whitelistRules: option<__listOfInputWhitelistRule>,
  @as("Tags") tags: option<tags>,
  @as("State") state: option<inputSecurityGroupState>,
  @as("Inputs") inputs: option<__listOf__string>,
  @as("Id") id: option<__string>,
  @as("Arn") arn: option<__string>,
}
type inputPrepareScheduleActionSettings = {
  @as("UrlPath") urlPath: option<__listOf__string>,
  @as("InputClippingSettings") inputClippingSettings: option<inputClippingSettings>,
  @as("InputAttachmentNameReference") inputAttachmentNameReference: option<__string>,
}
type inputDeviceSummary = {
  @as("UhdDeviceSettings") uhdDeviceSettings: option<inputDeviceUhdSettings>,
  @as("Type") type_: option<inputDeviceType>,
  @as("SerialNumber") serialNumber: option<__string>,
  @as("NetworkSettings") networkSettings: option<inputDeviceNetworkSettings>,
  @as("Name") name: option<__string>,
  @as("MacAddress") macAddress: option<__string>,
  @as("Id") id: option<__string>,
  @as("HdDeviceSettings") hdDeviceSettings: option<inputDeviceHdSettings>,
  @as("DeviceUpdateStatus") deviceUpdateStatus: option<deviceUpdateStatus>,
  @as("DeviceSettingsSyncState") deviceSettingsSyncState: option<deviceSettingsSyncState>,
  @as("ConnectionState") connectionState: option<inputDeviceConnectionState>,
  @as("Arn") arn: option<__string>,
}
type hlsSettings = {
  @as("StandardHlsSettings") standardHlsSettings: option<standardHlsSettings>,
  @as("FrameCaptureHlsSettings") frameCaptureHlsSettings: option<frameCaptureHlsSettings>,
  @as("Fmp4HlsSettings") fmp4HlsSettings: option<fmp4HlsSettings>,
  @as("AudioOnlyHlsSettings") audioOnlyHlsSettings: option<audioOnlyHlsSettings>,
}
type h265Settings = {
  @as("TimecodeInsertion") timecodeInsertion: option<h265TimecodeInsertionBehavior>,
  @as("Tier") tier: option<h265Tier>,
  @as("Slices") slices: option<__integerMin1Max16>,
  @as("SceneChangeDetect") sceneChangeDetect: option<h265SceneChangeDetect>,
  @as("ScanType") scanType: option<h265ScanType>,
  @as("RateControlMode") rateControlMode: option<h265RateControlMode>,
  @as("QvbrQualityLevel") qvbrQualityLevel: option<__integerMin1Max10>,
  @as("Profile") profile: option<h265Profile>,
  @as("ParNumerator") parNumerator: option<__integerMin1>,
  @as("ParDenominator") parDenominator: option<__integerMin1>,
  @as("MinIInterval") minIInterval: option<__integerMin0Max30>,
  @as("MaxBitrate") maxBitrate: option<__integerMin100000Max40000000>,
  @as("LookAheadRateControl") lookAheadRateControl: option<h265LookAheadRateControl>,
  @as("Level") level: option<h265Level>,
  @as("GopSizeUnits") gopSizeUnits: option<h265GopSizeUnits>,
  @as("GopSize") gopSize: option<__double>,
  @as("GopClosedCadence") gopClosedCadence: option<__integerMin0>,
  @as("FramerateNumerator") framerateNumerator: __integerMin1,
  @as("FramerateDenominator") framerateDenominator: __integerMin1Max3003,
  @as("FlickerAq") flickerAq: option<h265FlickerAq>,
  @as("FixedAfd") fixedAfd: option<fixedAfd>,
  @as("FilterSettings") filterSettings: option<h265FilterSettings>,
  @as("ColorSpaceSettings") colorSpaceSettings: option<h265ColorSpaceSettings>,
  @as("ColorMetadata") colorMetadata: option<h265ColorMetadata>,
  @as("BufSize") bufSize: option<__integerMin100000Max80000000>,
  @as("Bitrate") bitrate: option<__integerMin100000Max40000000>,
  @as("AlternativeTransferFunction")
  alternativeTransferFunction: option<h265AlternativeTransferFunction>,
  @as("AfdSignaling") afdSignaling: option<afdSignaling>,
  @as("AdaptiveQuantization") adaptiveQuantization: option<h265AdaptiveQuantization>,
}
type h264Settings = {
  @as("TimecodeInsertion") timecodeInsertion: option<h264TimecodeInsertionBehavior>,
  @as("TemporalAq") temporalAq: option<h264TemporalAq>,
  @as("Syntax") syntax: option<h264Syntax>,
  @as("SubgopLength") subgopLength: option<h264SubGopLength>,
  @as("SpatialAq") spatialAq: option<h264SpatialAq>,
  @as("Softness") softness: option<__integerMin0Max128>,
  @as("Slices") slices: option<__integerMin1Max32>,
  @as("SceneChangeDetect") sceneChangeDetect: option<h264SceneChangeDetect>,
  @as("ScanType") scanType: option<h264ScanType>,
  @as("RateControlMode") rateControlMode: option<h264RateControlMode>,
  @as("QvbrQualityLevel") qvbrQualityLevel: option<__integerMin1Max10>,
  @as("QualityLevel") qualityLevel: option<h264QualityLevel>,
  @as("Profile") profile: option<h264Profile>,
  @as("ParNumerator") parNumerator: option<__integerMin1>,
  @as("ParDenominator") parDenominator: option<__integerMin1>,
  @as("ParControl") parControl: option<h264ParControl>,
  @as("NumRefFrames") numRefFrames: option<__integerMin1Max6>,
  @as("MinIInterval") minIInterval: option<__integerMin0Max30>,
  @as("MaxBitrate") maxBitrate: option<__integerMin1000>,
  @as("LookAheadRateControl") lookAheadRateControl: option<h264LookAheadRateControl>,
  @as("Level") level: option<h264Level>,
  @as("GopSizeUnits") gopSizeUnits: option<h264GopSizeUnits>,
  @as("GopSize") gopSize: option<__double>,
  @as("GopNumBFrames") gopNumBFrames: option<__integerMin0Max7>,
  @as("GopClosedCadence") gopClosedCadence: option<__integerMin0>,
  @as("GopBReference") gopBReference: option<h264GopBReference>,
  @as("FramerateNumerator") framerateNumerator: option<__integerMin1>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1>,
  @as("FramerateControl") framerateControl: option<h264FramerateControl>,
  @as("ForceFieldPictures") forceFieldPictures: option<h264ForceFieldPictures>,
  @as("FlickerAq") flickerAq: option<h264FlickerAq>,
  @as("FixedAfd") fixedAfd: option<fixedAfd>,
  @as("FilterSettings") filterSettings: option<h264FilterSettings>,
  @as("EntropyEncoding") entropyEncoding: option<h264EntropyEncoding>,
  @as("ColorSpaceSettings") colorSpaceSettings: option<h264ColorSpaceSettings>,
  @as("ColorMetadata") colorMetadata: option<h264ColorMetadata>,
  @as("BufSize") bufSize: option<__integerMin0>,
  @as("BufFillPct") bufFillPct: option<__integerMin0Max100>,
  @as("Bitrate") bitrate: option<__integerMin1000>,
  @as("AfdSignaling") afdSignaling: option<afdSignaling>,
  @as("AdaptiveQuantization") adaptiveQuantization: option<h264AdaptiveQuantization>,
}
type globalConfiguration = {
  @as("SupportLowFramerateInputs")
  supportLowFramerateInputs: option<globalConfigurationLowFramerateInputs>,
  @as("OutputTimingSource") outputTimingSource: option<globalConfigurationOutputTimingSource>,
  @as("OutputLockingMode") outputLockingMode: option<globalConfigurationOutputLockingMode>,
  @as("InputLossBehavior") inputLossBehavior: option<inputLossBehavior>,
  @as("InputEndAction") inputEndAction: option<globalConfigurationInputEndAction>,
  @as("InitialAudioGain") initialAudioGain: option<__integerMinNegative60Max60>,
}
type frameCaptureGroupSettings = {
  @as("FrameCaptureCdnSettings") frameCaptureCdnSettings: option<frameCaptureCdnSettings>,
  @as("Destination") destination: outputLocationRef,
}
type failoverCondition = {
  @as("FailoverConditionSettings") failoverConditionSettings: option<failoverConditionSettings>,
}
type captionSelectorSettings = {
  @as("TeletextSourceSettings") teletextSourceSettings: option<teletextSourceSettings>,
  @as("Scte27SourceSettings") scte27SourceSettings: option<scte27SourceSettings>,
  @as("Scte20SourceSettings") scte20SourceSettings: option<scte20SourceSettings>,
  @as("EmbeddedSourceSettings") embeddedSourceSettings: option<embeddedSourceSettings>,
  @as("DvbSubSourceSettings") dvbSubSourceSettings: option<dvbSubSourceSettings>,
  @as("AribSourceSettings") aribSourceSettings: option<aribSourceSettings>,
  @as("AncillarySourceSettings") ancillarySourceSettings: option<ancillarySourceSettings>,
}
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
type availConfiguration = {@as("AvailSettings") availSettings: option<availSettings>}
type audioTrackSelection = {@as("Tracks") tracks: __listOfAudioTrack}
type audioChannelMapping = {
  @as("OutputChannel") outputChannel: __integerMin0Max7,
  @as("InputChannelLevels") inputChannelLevels: __listOfInputChannelLevel,
}
type archiveGroupSettings = {
  @as("RolloverInterval") rolloverInterval: option<__integerMin1>,
  @as("Destination") destination: outputLocationRef,
  @as("ArchiveCdnSettings") archiveCdnSettings: option<archiveCdnSettings>,
}
type archiveContainerSettings = {
  @as("RawSettings") rawSettings: option<rawSettings>,
  @as("M2tsSettings") m2tsSettings: option<m2tsSettings>,
}
type __listOfOutputDestination = array<outputDestination>
type __listOfInputSecurityGroup = array<inputSecurityGroup>
type __listOfInputDeviceSummary = array<inputDeviceSummary>
type __listOfFailoverCondition = array<failoverCondition>
type __listOfAudioChannelMapping = array<audioChannelMapping>
type videoCodecSettings = {
  @as("Mpeg2Settings") mpeg2Settings: option<mpeg2Settings>,
  @as("H265Settings") h265Settings: option<h265Settings>,
  @as("H264Settings") h264Settings: option<h264Settings>,
  @as("FrameCaptureSettings") frameCaptureSettings: option<frameCaptureSettings>,
}
type udpOutputSettings = {
  @as("FecOutputSettings") fecOutputSettings: option<fecOutputSettings>,
  @as("Destination") destination: outputLocationRef,
  @as("ContainerSettings") containerSettings: udpContainerSettings,
  @as("BufferMsec") bufferMsec: option<__integerMin0Max10000>,
}
type scte35Descriptor = {
  @as("Scte35DescriptorSettings") scte35DescriptorSettings: scte35DescriptorSettings,
}
type multiplexProgram = {
  @as("ProgramName") programName: option<__string>,
  @as("PipelineDetails") pipelineDetails: option<__listOfMultiplexProgramPipelineDetail>,
  @as("PacketIdentifiersMap") packetIdentifiersMap: option<multiplexProgramPacketIdentifiersMap>,
  @as("MultiplexProgramSettings") multiplexProgramSettings: option<multiplexProgramSettings>,
  @as("ChannelId") channelId: option<__string>,
}
type multiplex = {
  @as("Tags") tags: option<tags>,
  @as("State") state: option<multiplexState>,
  @as("ProgramCount") programCount: option<__integer>,
  @as("PipelinesRunningCount") pipelinesRunningCount: option<__integer>,
  @as("Name") name: option<__string>,
  @as("MultiplexSettings") multiplexSettings: option<multiplexSettings>,
  @as("Id") id: option<__string>,
  @as("Destinations") destinations: option<__listOfMultiplexOutputDestination>,
  @as("AvailabilityZones") availabilityZones: option<__listOf__string>,
  @as("Arn") arn: option<__string>,
}
type input = {
  @as("Type") type_: option<inputType>,
  @as("Tags") tags: option<tags>,
  @as("State") state: option<inputState>,
  @as("Sources") sources: option<__listOfInputSource>,
  @as("SecurityGroups") securityGroups: option<__listOf__string>,
  @as("RoleArn") roleArn: option<__string>,
  @as("Name") name: option<__string>,
  @as("MediaConnectFlows") mediaConnectFlows: option<__listOfMediaConnectFlow>,
  @as("InputSourceType") inputSourceType: option<inputSourceType>,
  @as("InputPartnerIds") inputPartnerIds: option<__listOf__string>,
  @as("InputDevices") inputDevices: option<__listOfInputDeviceSettings>,
  @as("InputClass") inputClass: option<inputClass>,
  @as("Id") id: option<__string>,
  @as("Destinations") destinations: option<__listOfInputDestination>,
  @as("AttachedChannels") attachedChannels: option<__listOf__string>,
  @as("Arn") arn: option<__string>,
}
type hlsOutputSettings = {
  @as("SegmentModifier") segmentModifier: option<__string>,
  @as("NameModifier") nameModifier: option<__stringMin1>,
  @as("HlsSettings") hlsSettings: hlsSettings,
  @as("H265PackagingType") h265PackagingType: option<hlsH265PackagingType>,
}
type hlsGroupSettings = {
  @as("TsFileMode") tsFileMode: option<hlsTsFileMode>,
  @as("TimestampDeltaMilliseconds") timestampDeltaMilliseconds: option<__integerMin0>,
  @as("TimedMetadataId3Period") timedMetadataId3Period: option<__integerMin0>,
  @as("TimedMetadataId3Frame") timedMetadataId3Frame: option<hlsTimedMetadataId3Frame>,
  @as("StreamInfResolution") streamInfResolution: option<hlsStreamInfResolution>,
  @as("SegmentsPerSubdirectory") segmentsPerSubdirectory: option<__integerMin1>,
  @as("SegmentationMode") segmentationMode: option<hlsSegmentationMode>,
  @as("SegmentLength") segmentLength: option<__integerMin1>,
  @as("RedundantManifest") redundantManifest: option<hlsRedundantManifest>,
  @as("ProgramDateTimePeriod") programDateTimePeriod: option<__integerMin0Max3600>,
  @as("ProgramDateTime") programDateTime: option<hlsProgramDateTime>,
  @as("OutputSelection") outputSelection: option<hlsOutputSelection>,
  @as("Mode") mode: option<hlsMode>,
  @as("MinSegmentLength") minSegmentLength: option<__integerMin0>,
  @as("ManifestDurationFormat") manifestDurationFormat: option<hlsManifestDurationFormat>,
  @as("ManifestCompression") manifestCompression: option<hlsManifestCompression>,
  @as("KeyProviderSettings") keyProviderSettings: option<keyProviderSettings>,
  @as("KeyFormatVersions") keyFormatVersions: option<__string>,
  @as("KeyFormat") keyFormat: option<__string>,
  @as("KeepSegments") keepSegments: option<__integerMin1>,
  @as("IvSource") ivSource: option<hlsIvSource>,
  @as("IvInManifest") ivInManifest: option<hlsIvInManifest>,
  @as("InputLossAction") inputLossAction: option<inputLossActionForHlsOut>,
  @as("IndexNSegments") indexNSegments: option<__integerMin3>,
  @as("IncompleteSegmentBehavior") incompleteSegmentBehavior: option<hlsIncompleteSegmentBehavior>,
  @as("IFrameOnlyPlaylists") iframeOnlyPlaylists: option<iframeOnlyPlaylistType>,
  @as("HlsId3SegmentTagging") hlsId3SegmentTagging: option<hlsId3SegmentTaggingState>,
  @as("HlsCdnSettings") hlsCdnSettings: option<hlsCdnSettings>,
  @as("EncryptionType") encryptionType: option<hlsEncryptionType>,
  @as("DiscontinuityTags") discontinuityTags: option<hlsDiscontinuityTags>,
  @as("DirectoryStructure") directoryStructure: option<hlsDirectoryStructure>,
  @as("Destination") destination: outputLocationRef,
  @as("ConstantIv") constantIv: option<__stringMin32Max32>,
  @as("CodecSpecification") codecSpecification: option<hlsCodecSpecification>,
  @as("ClientCache") clientCache: option<hlsClientCache>,
  @as("CaptionLanguageSetting") captionLanguageSetting: option<hlsCaptionLanguageSetting>,
  @as("CaptionLanguageMappings") captionLanguageMappings: option<__listOfCaptionLanguageMapping>,
  @as("BaseUrlManifest1") baseUrlManifest1: option<__string>,
  @as("BaseUrlManifest") baseUrlManifest: option<__string>,
  @as("BaseUrlContent1") baseUrlContent1: option<__string>,
  @as("BaseUrlContent") baseUrlContent: option<__string>,
  @as("AdMarkers") adMarkers: option<__listOfHlsAdMarkers>,
}
type captionSelector = {
  @as("SelectorSettings") selectorSettings: option<captionSelectorSettings>,
  @as("Name") name: __stringMin1,
  @as("LanguageCode") languageCode: option<__string>,
}
type captionDescription = {
  @as("Name") name: __string,
  @as("LanguageDescription") languageDescription: option<__string>,
  @as("LanguageCode") languageCode: option<__string>,
  @as("DestinationSettings") destinationSettings: option<captionDestinationSettings>,
  @as("CaptionSelectorName") captionSelectorName: __string,
}
type audioSelectorSettings = {
  @as("AudioTrackSelection") audioTrackSelection: option<audioTrackSelection>,
  @as("AudioPidSelection") audioPidSelection: option<audioPidSelection>,
  @as("AudioLanguageSelection") audioLanguageSelection: option<audioLanguageSelection>,
}
type archiveOutputSettings = {
  @as("NameModifier") nameModifier: option<__string>,
  @as("Extension") extension: option<__string>,
  @as("ContainerSettings") containerSettings: archiveContainerSettings,
}
type __listOfScte35Descriptor = array<scte35Descriptor>
type __listOfInput = array<input>
type __listOfCaptionSelector = array<captionSelector>
type __listOfCaptionDescription = array<captionDescription>
type videoDescription = {
  @as("Width") width: option<__integer>,
  @as("Sharpness") sharpness: option<__integerMin0Max100>,
  @as("ScalingBehavior") scalingBehavior: option<videoDescriptionScalingBehavior>,
  @as("RespondToAfd") respondToAfd: option<videoDescriptionRespondToAfd>,
  @as("Name") name: __string,
  @as("Height") height: option<__integer>,
  @as("CodecSettings") codecSettings: option<videoCodecSettings>,
}
type remixSettings = {
  @as("ChannelsOut") channelsOut: option<__integerMin1Max8>,
  @as("ChannelsIn") channelsIn: option<__integerMin1Max16>,
  @as("ChannelMappings") channelMappings: __listOfAudioChannelMapping,
}
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
type automaticInputFailoverSettings = {
  @as("SecondaryInputId") secondaryInputId: __string,
  @as("InputPreference") inputPreference: option<inputPreference>,
  @as("FailoverConditions") failoverConditions: option<__listOfFailoverCondition>,
  @as("ErrorClearTimeMsec") errorClearTimeMsec: option<__integerMin1>,
}
type audioSelector = {
  @as("SelectorSettings") selectorSettings: option<audioSelectorSettings>,
  @as("Name") name: __stringMin1,
}
type __listOfVideoDescription = array<videoDescription>
type __listOfAudioSelector = array<audioSelector>
type scte35TimeSignalScheduleActionSettings = {
  @as("Scte35Descriptors") scte35Descriptors: __listOfScte35Descriptor,
}
type output = {
  @as("VideoDescriptionName") videoDescriptionName: option<__string>,
  @as("OutputSettings") outputSettings: outputSettings,
  @as("OutputName") outputName: option<__stringMin1Max255>,
  @as("CaptionDescriptionNames") captionDescriptionNames: option<__listOf__string>,
  @as("AudioDescriptionNames") audioDescriptionNames: option<__listOf__string>,
}
type audioDescription = {
  @as("StreamName") streamName: option<__string>,
  @as("RemixSettings") remixSettings: option<remixSettings>,
  @as("Name") name: __string,
  @as("LanguageCodeControl") languageCodeControl: option<audioDescriptionLanguageCodeControl>,
  @as("LanguageCode") languageCode: option<__stringMin1Max35>,
  @as("CodecSettings") codecSettings: option<audioCodecSettings>,
  @as("AudioTypeControl") audioTypeControl: option<audioDescriptionAudioTypeControl>,
  @as("AudioType") audioType: option<audioType>,
  @as("AudioSelectorName") audioSelectorName: __string,
  @as("AudioNormalizationSettings") audioNormalizationSettings: option<audioNormalizationSettings>,
}
type __listOfOutput = array<output>
type __listOfAudioDescription = array<audioDescription>
type scheduleActionSettings = {
  @as("StaticImageDeactivateSettings")
  staticImageDeactivateSettings: option<staticImageDeactivateScheduleActionSettings>,
  @as("StaticImageActivateSettings")
  staticImageActivateSettings: option<staticImageActivateScheduleActionSettings>,
  @as("Scte35TimeSignalSettings")
  scte35TimeSignalSettings: option<scte35TimeSignalScheduleActionSettings>,
  @as("Scte35SpliceInsertSettings")
  scte35SpliceInsertSettings: option<scte35SpliceInsertScheduleActionSettings>,
  @as("Scte35ReturnToNetworkSettings")
  scte35ReturnToNetworkSettings: option<scte35ReturnToNetworkScheduleActionSettings>,
  @as("PauseStateSettings") pauseStateSettings: option<pauseStateScheduleActionSettings>,
  @as("MotionGraphicsImageDeactivateSettings")
  motionGraphicsImageDeactivateSettings: option<motionGraphicsDeactivateScheduleActionSettings>,
  @as("MotionGraphicsImageActivateSettings")
  motionGraphicsImageActivateSettings: option<motionGraphicsActivateScheduleActionSettings>,
  @as("InputSwitchSettings") inputSwitchSettings: option<inputSwitchScheduleActionSettings>,
  @as("InputPrepareSettings") inputPrepareSettings: option<inputPrepareScheduleActionSettings>,
  @as("HlsTimedMetadataSettings")
  hlsTimedMetadataSettings: option<hlsTimedMetadataScheduleActionSettings>,
  @as("HlsId3SegmentTaggingSettings")
  hlsId3SegmentTaggingSettings: option<hlsId3SegmentTaggingScheduleActionSettings>,
}
type inputSettings = {
  @as("VideoSelector") videoSelector: option<videoSelector>,
  @as("SourceEndBehavior") sourceEndBehavior: option<inputSourceEndBehavior>,
  @as("Smpte2038DataPreference") smpte2038DataPreference: option<smpte2038DataPreference>,
  @as("NetworkInputSettings") networkInputSettings: option<networkInputSettings>,
  @as("InputFilter") inputFilter: option<inputFilter>,
  @as("FilterStrength") filterStrength: option<__integerMin1Max5>,
  @as("DenoiseFilter") denoiseFilter: option<inputDenoiseFilter>,
  @as("DeblockFilter") deblockFilter: option<inputDeblockFilter>,
  @as("CaptionSelectors") captionSelectors: option<__listOfCaptionSelector>,
  @as("AudioSelectors") audioSelectors: option<__listOfAudioSelector>,
}
type scheduleAction = {
  @as("ScheduleActionStartSettings") scheduleActionStartSettings: scheduleActionStartSettings,
  @as("ScheduleActionSettings") scheduleActionSettings: scheduleActionSettings,
  @as("ActionName") actionName: __string,
}
type outputGroup = {
  @as("Outputs") outputs: __listOfOutput,
  @as("OutputGroupSettings") outputGroupSettings: outputGroupSettings,
  @as("Name") name: option<__stringMax32>,
}
type inputAttachment = {
  @as("InputSettings") inputSettings: option<inputSettings>,
  @as("InputId") inputId: option<__string>,
  @as("InputAttachmentName") inputAttachmentName: option<__string>,
  @as("AutomaticInputFailoverSettings")
  automaticInputFailoverSettings: option<automaticInputFailoverSettings>,
}
type __listOfScheduleAction = array<scheduleAction>
type __listOfOutputGroup = array<outputGroup>
type __listOfInputAttachment = array<inputAttachment>
type encoderSettings = {
  @as("VideoDescriptions") videoDescriptions: __listOfVideoDescription,
  @as("TimecodeConfig") timecodeConfig: timecodeConfig,
  @as("OutputGroups") outputGroups: __listOfOutputGroup,
  @as("NielsenConfiguration") nielsenConfiguration: option<nielsenConfiguration>,
  @as("MotionGraphicsConfiguration")
  motionGraphicsConfiguration: option<motionGraphicsConfiguration>,
  @as("GlobalConfiguration") globalConfiguration: option<globalConfiguration>,
  @as("FeatureActivations") featureActivations: option<featureActivations>,
  @as("CaptionDescriptions") captionDescriptions: option<__listOfCaptionDescription>,
  @as("BlackoutSlate") blackoutSlate: option<blackoutSlate>,
  @as("AvailConfiguration") availConfiguration: option<availConfiguration>,
  @as("AvailBlanking") availBlanking: option<availBlanking>,
  @as("AudioDescriptions") audioDescriptions: __listOfAudioDescription,
}
type channelSummary = {
  @as("Vpc") vpc: option<vpcOutputSettingsDescription>,
  @as("Tags") tags: option<tags>,
  @as("State") state: option<channelState>,
  @as("RoleArn") roleArn: option<__string>,
  @as("PipelinesRunningCount") pipelinesRunningCount: option<__integer>,
  @as("Name") name: option<__string>,
  @as("LogLevel") logLevel: option<logLevel>,
  @as("InputSpecification") inputSpecification: option<inputSpecification>,
  @as("InputAttachments") inputAttachments: option<__listOfInputAttachment>,
  @as("Id") id: option<__string>,
  @as("EgressEndpoints") egressEndpoints: option<__listOfChannelEgressEndpoint>,
  @as("Destinations") destinations: option<__listOfOutputDestination>,
  @as("ChannelClass") channelClass: option<channelClass>,
  @as("CdiInputSpecification") cdiInputSpecification: option<cdiInputSpecification>,
  @as("Arn") arn: option<__string>,
}
type batchScheduleActionDeleteResult = {
  @as("ScheduleActions") scheduleActions: __listOfScheduleAction,
}
type batchScheduleActionCreateResult = {
  @as("ScheduleActions") scheduleActions: __listOfScheduleAction,
}
type batchScheduleActionCreateRequest = {
  @as("ScheduleActions") scheduleActions: __listOfScheduleAction,
}
type __listOfChannelSummary = array<channelSummary>
type channel = {
  @as("Vpc") vpc: option<vpcOutputSettingsDescription>,
  @as("Tags") tags: option<tags>,
  @as("State") state: option<channelState>,
  @as("RoleArn") roleArn: option<__string>,
  @as("PipelinesRunningCount") pipelinesRunningCount: option<__integer>,
  @as("PipelineDetails") pipelineDetails: option<__listOfPipelineDetail>,
  @as("Name") name: option<__string>,
  @as("LogLevel") logLevel: option<logLevel>,
  @as("InputSpecification") inputSpecification: option<inputSpecification>,
  @as("InputAttachments") inputAttachments: option<__listOfInputAttachment>,
  @as("Id") id: option<__string>,
  @as("EncoderSettings") encoderSettings: option<encoderSettings>,
  @as("EgressEndpoints") egressEndpoints: option<__listOfChannelEgressEndpoint>,
  @as("Destinations") destinations: option<__listOfOutputDestination>,
  @as("ChannelClass") channelClass: option<channelClass>,
  @as("CdiInputSpecification") cdiInputSpecification: option<cdiInputSpecification>,
  @as("Arn") arn: option<__string>,
}

module DescribeInputDeviceThumbnail = {
  type t
  type request = {
    @as("Accept") accept: acceptHeader,
    @as("InputDeviceId") inputDeviceId: __string,
  }
  type response = {
    @as("LastModified") lastModified: option<__timestamp>,
    @as("ETag") etag: option<__string>,
    @as("ContentLength") contentLength: option<__long>,
    @as("ContentType") contentType: option<contentType>,
    @as("Body") body: option<inputDeviceThumbnail>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DescribeInputDeviceThumbnailCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSchedule = {
  type t
  type request = {@as("ChannelId") channelId: __string}
  type response = unit
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DeleteScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInputSecurityGroup = {
  type t
  type request = {@as("InputSecurityGroupId") inputSecurityGroupId: __string}
  type response = unit
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DeleteInputSecurityGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInput = {
  type t
  type request = {@as("InputId") inputId: __string}
  type response = unit
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DeleteInputCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: __string}
  type response = {@as("Tags") tags: option<tags>}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservation = {
  type t
  type request = {@as("ReservationId") reservationId: __string}
  type response = {
    @as("UsagePrice") usagePrice: option<__double>,
    @as("Tags") tags: option<tags>,
    @as("State") state: option<reservationState>,
    @as("Start") start: option<__string>,
    @as("ResourceSpecification") resourceSpecification: option<reservationResourceSpecification>,
    @as("ReservationId") reservationId: option<__string>,
    @as("Region") region: option<__string>,
    @as("OfferingType") offeringType: option<offeringType>,
    @as("OfferingId") offeringId: option<__string>,
    @as("OfferingDescription") offeringDescription: option<__string>,
    @as("Name") name: option<__string>,
    @as("FixedPrice") fixedPrice: option<__double>,
    @as("End") end: option<__string>,
    @as("DurationUnits") durationUnits: option<offeringDurationUnits>,
    @as("Duration") duration: option<__integer>,
    @as("CurrencyCode") currencyCode: option<__string>,
    @as("Count") count: option<__integer>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DescribeReservationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOffering = {
  type t
  type request = {@as("OfferingId") offeringId: __string}
  type response = {
    @as("UsagePrice") usagePrice: option<__double>,
    @as("ResourceSpecification") resourceSpecification: option<reservationResourceSpecification>,
    @as("Region") region: option<__string>,
    @as("OfferingType") offeringType: option<offeringType>,
    @as("OfferingId") offeringId: option<__string>,
    @as("OfferingDescription") offeringDescription: option<__string>,
    @as("FixedPrice") fixedPrice: option<__double>,
    @as("DurationUnits") durationUnits: option<offeringDurationUnits>,
    @as("Duration") duration: option<__integer>,
    @as("CurrencyCode") currencyCode: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DescribeOfferingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTags = {
  type t
  type request = {
    @as("TagKeys") tagKeys: __listOf__string,
    @as("ResourceArn") resourceArn: __string,
  }

  @module("@aws-sdk/client-medialive") @new external new: request => t = "DeleteTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteReservation = {
  type t
  type request = {@as("ReservationId") reservationId: __string}
  type response = {
    @as("UsagePrice") usagePrice: option<__double>,
    @as("Tags") tags: option<tags>,
    @as("State") state: option<reservationState>,
    @as("Start") start: option<__string>,
    @as("ResourceSpecification") resourceSpecification: option<reservationResourceSpecification>,
    @as("ReservationId") reservationId: option<__string>,
    @as("Region") region: option<__string>,
    @as("OfferingType") offeringType: option<offeringType>,
    @as("OfferingId") offeringId: option<__string>,
    @as("OfferingDescription") offeringDescription: option<__string>,
    @as("Name") name: option<__string>,
    @as("FixedPrice") fixedPrice: option<__double>,
    @as("End") end: option<__string>,
    @as("DurationUnits") durationUnits: option<offeringDurationUnits>,
    @as("Duration") duration: option<__integer>,
    @as("CurrencyCode") currencyCode: option<__string>,
    @as("Count") count: option<__integer>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DeleteReservationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTags = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("ResourceArn") resourceArn: __string,
  }

  @module("@aws-sdk/client-medialive") @new external new: request => t = "CreateTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateReservation = {
  type t
  type request = {
    @as("ReservationId") reservationId: __string,
    @as("Name") name: option<__string>,
  }
  type response = {@as("Reservation") reservation: option<reservation>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "UpdateReservationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInputDevice = {
  type t
  type request = {
    @as("UhdDeviceSettings") uhdDeviceSettings: option<inputDeviceConfigurableSettings>,
    @as("Name") name: option<__string>,
    @as("InputDeviceId") inputDeviceId: __string,
    @as("HdDeviceSettings") hdDeviceSettings: option<inputDeviceConfigurableSettings>,
  }
  type response = {
    @as("UhdDeviceSettings") uhdDeviceSettings: option<inputDeviceUhdSettings>,
    @as("Type") type_: option<inputDeviceType>,
    @as("SerialNumber") serialNumber: option<__string>,
    @as("NetworkSettings") networkSettings: option<inputDeviceNetworkSettings>,
    @as("Name") name: option<__string>,
    @as("MacAddress") macAddress: option<__string>,
    @as("Id") id: option<__string>,
    @as("HdDeviceSettings") hdDeviceSettings: option<inputDeviceHdSettings>,
    @as("DeviceUpdateStatus") deviceUpdateStatus: option<deviceUpdateStatus>,
    @as("DeviceSettingsSyncState") deviceSettingsSyncState: option<deviceSettingsSyncState>,
    @as("ConnectionState") connectionState: option<inputDeviceConnectionState>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "UpdateInputDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TransferInputDevice = {
  type t
  type request = {
    @as("TransferMessage") transferMessage: option<__string>,
    @as("TargetRegion") targetRegion: option<__string>,
    @as("TargetCustomerId") targetCustomerId: option<__string>,
    @as("InputDeviceId") inputDeviceId: __string,
  }
  type response = unit
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "TransferInputDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectInputDeviceTransfer = {
  type t
  type request = {@as("InputDeviceId") inputDeviceId: __string}
  type response = unit
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "RejectInputDeviceTransferCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PurchaseOffering = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("Start") start: option<__string>,
    @as("RequestId") requestId: option<__string>,
    @as("OfferingId") offeringId: __string,
    @as("Name") name: option<__string>,
    @as("Count") count: __integerMin1,
  }
  type response = {@as("Reservation") reservation: option<reservation>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "PurchaseOfferingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMultiplexPrograms = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MultiplexId") multiplexId: __string,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("MultiplexPrograms") multiplexPrograms: option<__listOfMultiplexProgramSummary>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "ListMultiplexProgramsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInputDeviceTransfers = {
  type t
  type request = {
    @as("TransferType") transferType: __string,
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("InputDeviceTransfers")
    inputDeviceTransfers: option<__listOfTransferringInputDeviceSummary>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "ListInputDeviceTransfersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInputSecurityGroup = {
  type t
  type request = {@as("InputSecurityGroupId") inputSecurityGroupId: __string}
  type response = {
    @as("WhitelistRules") whitelistRules: option<__listOfInputWhitelistRule>,
    @as("Tags") tags: option<tags>,
    @as("State") state: option<inputSecurityGroupState>,
    @as("Inputs") inputs: option<__listOf__string>,
    @as("Id") id: option<__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DescribeInputSecurityGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInputDevice = {
  type t
  type request = {@as("InputDeviceId") inputDeviceId: __string}
  type response = {
    @as("UhdDeviceSettings") uhdDeviceSettings: option<inputDeviceUhdSettings>,
    @as("Type") type_: option<inputDeviceType>,
    @as("SerialNumber") serialNumber: option<__string>,
    @as("NetworkSettings") networkSettings: option<inputDeviceNetworkSettings>,
    @as("Name") name: option<__string>,
    @as("MacAddress") macAddress: option<__string>,
    @as("Id") id: option<__string>,
    @as("HdDeviceSettings") hdDeviceSettings: option<inputDeviceHdSettings>,
    @as("DeviceUpdateStatus") deviceUpdateStatus: option<deviceUpdateStatus>,
    @as("DeviceSettingsSyncState") deviceSettingsSyncState: option<deviceSettingsSyncState>,
    @as("ConnectionState") connectionState: option<inputDeviceConnectionState>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DescribeInputDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelInputDeviceTransfer = {
  type t
  type request = {@as("InputDeviceId") inputDeviceId: __string}
  type response = unit
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "CancelInputDeviceTransferCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchStop = {
  type t
  type request = {
    @as("MultiplexIds") multiplexIds: option<__listOf__string>,
    @as("ChannelIds") channelIds: option<__listOf__string>,
  }
  type response = {
    @as("Successful") successful: option<__listOfBatchSuccessfulResultModel>,
    @as("Failed") failed: option<__listOfBatchFailedResultModel>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "BatchStopCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchStart = {
  type t
  type request = {
    @as("MultiplexIds") multiplexIds: option<__listOf__string>,
    @as("ChannelIds") channelIds: option<__listOf__string>,
  }
  type response = {
    @as("Successful") successful: option<__listOfBatchSuccessfulResultModel>,
    @as("Failed") failed: option<__listOfBatchFailedResultModel>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "BatchStartCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDelete = {
  type t
  type request = {
    @as("MultiplexIds") multiplexIds: option<__listOf__string>,
    @as("InputSecurityGroupIds") inputSecurityGroupIds: option<__listOf__string>,
    @as("InputIds") inputIds: option<__listOf__string>,
    @as("ChannelIds") channelIds: option<__listOf__string>,
  }
  type response = {
    @as("Successful") successful: option<__listOfBatchSuccessfulResultModel>,
    @as("Failed") failed: option<__listOfBatchFailedResultModel>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "BatchDeleteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptInputDeviceTransfer = {
  type t
  type request = {@as("InputDeviceId") inputDeviceId: __string}
  type response = unit
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "AcceptInputDeviceTransferCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInputSecurityGroup = {
  type t
  type request = {
    @as("WhitelistRules") whitelistRules: option<__listOfInputWhitelistRuleCidr>,
    @as("Tags") tags: option<tags>,
    @as("InputSecurityGroupId") inputSecurityGroupId: __string,
  }
  type response = {@as("SecurityGroup") securityGroup: option<inputSecurityGroup>}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "UpdateInputSecurityGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopMultiplex = {
  type t
  type request = {@as("MultiplexId") multiplexId: __string}
  type response = {
    @as("Tags") tags: option<tags>,
    @as("State") state: option<multiplexState>,
    @as("ProgramCount") programCount: option<__integer>,
    @as("PipelinesRunningCount") pipelinesRunningCount: option<__integer>,
    @as("Name") name: option<__string>,
    @as("MultiplexSettings") multiplexSettings: option<multiplexSettings>,
    @as("Id") id: option<__string>,
    @as("Destinations") destinations: option<__listOfMultiplexOutputDestination>,
    @as("AvailabilityZones") availabilityZones: option<__listOf__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "StopMultiplexCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMultiplex = {
  type t
  type request = {@as("MultiplexId") multiplexId: __string}
  type response = {
    @as("Tags") tags: option<tags>,
    @as("State") state: option<multiplexState>,
    @as("ProgramCount") programCount: option<__integer>,
    @as("PipelinesRunningCount") pipelinesRunningCount: option<__integer>,
    @as("Name") name: option<__string>,
    @as("MultiplexSettings") multiplexSettings: option<multiplexSettings>,
    @as("Id") id: option<__string>,
    @as("Destinations") destinations: option<__listOfMultiplexOutputDestination>,
    @as("AvailabilityZones") availabilityZones: option<__listOf__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "StartMultiplexCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReservations = {
  type t
  type request = {
    @as("VideoQuality") videoQuality: option<__string>,
    @as("SpecialFeature") specialFeature: option<__string>,
    @as("ResourceType") resourceType: option<__string>,
    @as("Resolution") resolution: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @as("MaximumFramerate") maximumFramerate: option<__string>,
    @as("MaximumBitrate") maximumBitrate: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Codec") codec: option<__string>,
    @as("ChannelClass") channelClass: option<__string>,
  }
  type response = {
    @as("Reservations") reservations: option<__listOfReservation>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ListReservationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOfferings = {
  type t
  type request = {
    @as("VideoQuality") videoQuality: option<__string>,
    @as("SpecialFeature") specialFeature: option<__string>,
    @as("ResourceType") resourceType: option<__string>,
    @as("Resolution") resolution: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @as("MaximumFramerate") maximumFramerate: option<__string>,
    @as("MaximumBitrate") maximumBitrate: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Duration") duration: option<__string>,
    @as("Codec") codec: option<__string>,
    @as("ChannelConfiguration") channelConfiguration: option<__string>,
    @as("ChannelClass") channelClass: option<__string>,
  }
  type response = {
    @as("Offerings") offerings: option<__listOfOffering>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ListOfferingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMultiplexes = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Multiplexes") multiplexes: option<__listOfMultiplexSummary>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ListMultiplexesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMultiplexProgram = {
  type t
  type request = {
    @as("ProgramName") programName: __string,
    @as("MultiplexId") multiplexId: __string,
  }
  type response = {
    @as("ProgramName") programName: option<__string>,
    @as("PipelineDetails") pipelineDetails: option<__listOfMultiplexProgramPipelineDetail>,
    @as("PacketIdentifiersMap") packetIdentifiersMap: option<multiplexProgramPacketIdentifiersMap>,
    @as("MultiplexProgramSettings") multiplexProgramSettings: option<multiplexProgramSettings>,
    @as("ChannelId") channelId: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DescribeMultiplexProgramCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMultiplex = {
  type t
  type request = {@as("MultiplexId") multiplexId: __string}
  type response = {
    @as("Tags") tags: option<tags>,
    @as("State") state: option<multiplexState>,
    @as("ProgramCount") programCount: option<__integer>,
    @as("PipelinesRunningCount") pipelinesRunningCount: option<__integer>,
    @as("Name") name: option<__string>,
    @as("MultiplexSettings") multiplexSettings: option<multiplexSettings>,
    @as("Id") id: option<__string>,
    @as("Destinations") destinations: option<__listOfMultiplexOutputDestination>,
    @as("AvailabilityZones") availabilityZones: option<__listOf__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DescribeMultiplexCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInput = {
  type t
  type request = {@as("InputId") inputId: __string}
  type response = {
    @as("Type") type_: option<inputType>,
    @as("Tags") tags: option<tags>,
    @as("State") state: option<inputState>,
    @as("Sources") sources: option<__listOfInputSource>,
    @as("SecurityGroups") securityGroups: option<__listOf__string>,
    @as("RoleArn") roleArn: option<__string>,
    @as("Name") name: option<__string>,
    @as("MediaConnectFlows") mediaConnectFlows: option<__listOfMediaConnectFlow>,
    @as("InputSourceType") inputSourceType: option<inputSourceType>,
    @as("InputPartnerIds") inputPartnerIds: option<__listOf__string>,
    @as("InputDevices") inputDevices: option<__listOfInputDeviceSettings>,
    @as("InputClass") inputClass: option<inputClass>,
    @as("Id") id: option<__string>,
    @as("Destinations") destinations: option<__listOfInputDestination>,
    @as("AttachedChannels") attachedChannels: option<__listOf__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DescribeInputCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMultiplexProgram = {
  type t
  type request = {
    @as("ProgramName") programName: __string,
    @as("MultiplexId") multiplexId: __string,
  }
  type response = {
    @as("ProgramName") programName: option<__string>,
    @as("PipelineDetails") pipelineDetails: option<__listOfMultiplexProgramPipelineDetail>,
    @as("PacketIdentifiersMap") packetIdentifiersMap: option<multiplexProgramPacketIdentifiersMap>,
    @as("MultiplexProgramSettings") multiplexProgramSettings: option<multiplexProgramSettings>,
    @as("ChannelId") channelId: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "DeleteMultiplexProgramCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMultiplex = {
  type t
  type request = {@as("MultiplexId") multiplexId: __string}
  type response = {
    @as("Tags") tags: option<tags>,
    @as("State") state: option<multiplexState>,
    @as("ProgramCount") programCount: option<__integer>,
    @as("PipelinesRunningCount") pipelinesRunningCount: option<__integer>,
    @as("Name") name: option<__string>,
    @as("MultiplexSettings") multiplexSettings: option<multiplexSettings>,
    @as("Id") id: option<__string>,
    @as("Destinations") destinations: option<__listOfMultiplexOutputDestination>,
    @as("AvailabilityZones") availabilityZones: option<__listOf__string>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DeleteMultiplexCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInputSecurityGroup = {
  type t
  type request = {
    @as("WhitelistRules") whitelistRules: option<__listOfInputWhitelistRuleCidr>,
    @as("Tags") tags: option<tags>,
  }
  type response = {@as("SecurityGroup") securityGroup: option<inputSecurityGroup>}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "CreateInputSecurityGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMultiplexProgram = {
  type t
  type request = {
    @as("ProgramName") programName: __string,
    @as("MultiplexProgramSettings") multiplexProgramSettings: option<multiplexProgramSettings>,
    @as("MultiplexId") multiplexId: __string,
  }
  type response = {@as("MultiplexProgram") multiplexProgram: option<multiplexProgram>}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "UpdateMultiplexProgramCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMultiplex = {
  type t
  type request = {
    @as("Name") name: option<__string>,
    @as("MultiplexSettings") multiplexSettings: option<multiplexSettings>,
    @as("MultiplexId") multiplexId: __string,
  }
  type response = {@as("Multiplex") multiplex: option<multiplex>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "UpdateMultiplexCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInput = {
  type t
  type request = {
    @as("Sources") sources: option<__listOfInputSourceRequest>,
    @as("RoleArn") roleArn: option<__string>,
    @as("Name") name: option<__string>,
    @as("MediaConnectFlows") mediaConnectFlows: option<__listOfMediaConnectFlowRequest>,
    @as("InputSecurityGroups") inputSecurityGroups: option<__listOf__string>,
    @as("InputId") inputId: __string,
    @as("InputDevices") inputDevices: option<__listOfInputDeviceRequest>,
    @as("Destinations") destinations: option<__listOfInputDestinationRequest>,
  }
  type response = {@as("Input") input: option<input>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "UpdateInputCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInputSecurityGroups = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("InputSecurityGroups") inputSecurityGroups: option<__listOfInputSecurityGroup>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "ListInputSecurityGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInputDevices = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("InputDevices") inputDevices: option<__listOfInputDeviceSummary>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ListInputDevicesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePartnerInput = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("RequestId") requestId: option<__string>,
    @as("InputId") inputId: __string,
  }
  type response = {@as("Input") input: option<input>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "CreatePartnerInputCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMultiplexProgram = {
  type t
  type request = {
    @as("RequestId") requestId: __string,
    @as("ProgramName") programName: __string,
    @as("MultiplexProgramSettings") multiplexProgramSettings: multiplexProgramSettings,
    @as("MultiplexId") multiplexId: __string,
  }
  type response = {@as("MultiplexProgram") multiplexProgram: option<multiplexProgram>}
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "CreateMultiplexProgramCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMultiplex = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("RequestId") requestId: __string,
    @as("Name") name: __string,
    @as("MultiplexSettings") multiplexSettings: multiplexSettings,
    @as("AvailabilityZones") availabilityZones: __listOf__string,
  }
  type response = {@as("Multiplex") multiplex: option<multiplex>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "CreateMultiplexCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInput = {
  type t
  type request = {
    @as("Vpc") vpc: option<inputVpcRequest>,
    @as("Type") type_: option<inputType>,
    @as("Tags") tags: option<tags>,
    @as("Sources") sources: option<__listOfInputSourceRequest>,
    @as("RoleArn") roleArn: option<__string>,
    @as("RequestId") requestId: option<__string>,
    @as("Name") name: option<__string>,
    @as("MediaConnectFlows") mediaConnectFlows: option<__listOfMediaConnectFlowRequest>,
    @as("InputSecurityGroups") inputSecurityGroups: option<__listOf__string>,
    @as("InputDevices") inputDevices: option<__listOfInputDeviceSettings>,
    @as("Destinations") destinations: option<__listOfInputDestinationRequest>,
  }
  type response = {@as("Input") input: option<input>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "CreateInputCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInputs = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Inputs") inputs: option<__listOfInput>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ListInputsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSchedule = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ChannelId") channelId: __string,
  }
  type response = {
    @as("ScheduleActions") scheduleActions: option<__listOfScheduleAction>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DescribeScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopChannel = {
  type t
  type request = {@as("ChannelId") channelId: __string}
  type response = {
    @as("Vpc") vpc: option<vpcOutputSettingsDescription>,
    @as("Tags") tags: option<tags>,
    @as("State") state: option<channelState>,
    @as("RoleArn") roleArn: option<__string>,
    @as("PipelinesRunningCount") pipelinesRunningCount: option<__integer>,
    @as("PipelineDetails") pipelineDetails: option<__listOfPipelineDetail>,
    @as("Name") name: option<__string>,
    @as("LogLevel") logLevel: option<logLevel>,
    @as("InputSpecification") inputSpecification: option<inputSpecification>,
    @as("InputAttachments") inputAttachments: option<__listOfInputAttachment>,
    @as("Id") id: option<__string>,
    @as("EncoderSettings") encoderSettings: option<encoderSettings>,
    @as("EgressEndpoints") egressEndpoints: option<__listOfChannelEgressEndpoint>,
    @as("Destinations") destinations: option<__listOfOutputDestination>,
    @as("ChannelClass") channelClass: option<channelClass>,
    @as("CdiInputSpecification") cdiInputSpecification: option<cdiInputSpecification>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "StopChannelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartChannel = {
  type t
  type request = {@as("ChannelId") channelId: __string}
  type response = {
    @as("Vpc") vpc: option<vpcOutputSettingsDescription>,
    @as("Tags") tags: option<tags>,
    @as("State") state: option<channelState>,
    @as("RoleArn") roleArn: option<__string>,
    @as("PipelinesRunningCount") pipelinesRunningCount: option<__integer>,
    @as("PipelineDetails") pipelineDetails: option<__listOfPipelineDetail>,
    @as("Name") name: option<__string>,
    @as("LogLevel") logLevel: option<logLevel>,
    @as("InputSpecification") inputSpecification: option<inputSpecification>,
    @as("InputAttachments") inputAttachments: option<__listOfInputAttachment>,
    @as("Id") id: option<__string>,
    @as("EncoderSettings") encoderSettings: option<encoderSettings>,
    @as("EgressEndpoints") egressEndpoints: option<__listOfChannelEgressEndpoint>,
    @as("Destinations") destinations: option<__listOfOutputDestination>,
    @as("ChannelClass") channelClass: option<channelClass>,
    @as("CdiInputSpecification") cdiInputSpecification: option<cdiInputSpecification>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "StartChannelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChannel = {
  type t
  type request = {@as("ChannelId") channelId: __string}
  type response = {
    @as("Vpc") vpc: option<vpcOutputSettingsDescription>,
    @as("Tags") tags: option<tags>,
    @as("State") state: option<channelState>,
    @as("RoleArn") roleArn: option<__string>,
    @as("PipelinesRunningCount") pipelinesRunningCount: option<__integer>,
    @as("PipelineDetails") pipelineDetails: option<__listOfPipelineDetail>,
    @as("Name") name: option<__string>,
    @as("LogLevel") logLevel: option<logLevel>,
    @as("InputSpecification") inputSpecification: option<inputSpecification>,
    @as("InputAttachments") inputAttachments: option<__listOfInputAttachment>,
    @as("Id") id: option<__string>,
    @as("EncoderSettings") encoderSettings: option<encoderSettings>,
    @as("EgressEndpoints") egressEndpoints: option<__listOfChannelEgressEndpoint>,
    @as("Destinations") destinations: option<__listOfOutputDestination>,
    @as("ChannelClass") channelClass: option<channelClass>,
    @as("CdiInputSpecification") cdiInputSpecification: option<cdiInputSpecification>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DescribeChannelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteChannel = {
  type t
  type request = {@as("ChannelId") channelId: __string}
  type response = {
    @as("Vpc") vpc: option<vpcOutputSettingsDescription>,
    @as("Tags") tags: option<tags>,
    @as("State") state: option<channelState>,
    @as("RoleArn") roleArn: option<__string>,
    @as("PipelinesRunningCount") pipelinesRunningCount: option<__integer>,
    @as("PipelineDetails") pipelineDetails: option<__listOfPipelineDetail>,
    @as("Name") name: option<__string>,
    @as("LogLevel") logLevel: option<logLevel>,
    @as("InputSpecification") inputSpecification: option<inputSpecification>,
    @as("InputAttachments") inputAttachments: option<__listOfInputAttachment>,
    @as("Id") id: option<__string>,
    @as("EncoderSettings") encoderSettings: option<encoderSettings>,
    @as("EgressEndpoints") egressEndpoints: option<__listOfChannelEgressEndpoint>,
    @as("Destinations") destinations: option<__listOfOutputDestination>,
    @as("ChannelClass") channelClass: option<channelClass>,
    @as("CdiInputSpecification") cdiInputSpecification: option<cdiInputSpecification>,
    @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "DeleteChannelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchUpdateSchedule = {
  type t
  type request = {
    @as("Deletes") deletes: option<batchScheduleActionDeleteRequest>,
    @as("Creates") creates: option<batchScheduleActionCreateRequest>,
    @as("ChannelId") channelId: __string,
  }
  type response = {
    @as("Deletes") deletes: option<batchScheduleActionDeleteResult>,
    @as("Creates") creates: option<batchScheduleActionCreateResult>,
  }
  @module("@aws-sdk/client-medialive") @new
  external new: request => t = "BatchUpdateScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChannelClass = {
  type t
  type request = {
    @as("Destinations") destinations: option<__listOfOutputDestination>,
    @as("ChannelId") channelId: __string,
    @as("ChannelClass") channelClass: channelClass,
  }
  type response = {@as("Channel") channel: option<channel>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "UpdateChannelClassCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChannel = {
  type t
  type request = {
    @as("RoleArn") roleArn: option<__string>,
    @as("Name") name: option<__string>,
    @as("LogLevel") logLevel: option<logLevel>,
    @as("InputSpecification") inputSpecification: option<inputSpecification>,
    @as("InputAttachments") inputAttachments: option<__listOfInputAttachment>,
    @as("EncoderSettings") encoderSettings: option<encoderSettings>,
    @as("Destinations") destinations: option<__listOfOutputDestination>,
    @as("ChannelId") channelId: __string,
    @as("CdiInputSpecification") cdiInputSpecification: option<cdiInputSpecification>,
  }
  type response = {@as("Channel") channel: option<channel>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "UpdateChannelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannels = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Channels") channels: option<__listOfChannelSummary>,
  }
  @module("@aws-sdk/client-medialive") @new external new: request => t = "ListChannelsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChannel = {
  type t
  type request = {
    @as("Vpc") vpc: option<vpcOutputSettings>,
    @as("Tags") tags: option<tags>,
    @as("RoleArn") roleArn: option<__string>,
    @as("Reserved") reserved: option<__string>,
    @as("RequestId") requestId: option<__string>,
    @as("Name") name: option<__string>,
    @as("LogLevel") logLevel: option<logLevel>,
    @as("InputSpecification") inputSpecification: option<inputSpecification>,
    @as("InputAttachments") inputAttachments: option<__listOfInputAttachment>,
    @as("EncoderSettings") encoderSettings: option<encoderSettings>,
    @as("Destinations") destinations: option<__listOfOutputDestination>,
    @as("ChannelClass") channelClass: option<channelClass>,
    @as("CdiInputSpecification") cdiInputSpecification: option<cdiInputSpecification>,
  }
  type response = {@as("Channel") channel: option<channel>}
  @module("@aws-sdk/client-medialive") @new external new: request => t = "CreateChannelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
