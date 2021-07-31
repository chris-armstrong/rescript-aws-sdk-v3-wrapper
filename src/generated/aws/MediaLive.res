type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __timestamp = Js.Date.t;
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
type __longMin0Max86400000 = float;
type __longMin0Max8589934591 = float;
type __longMin0Max4294967295 = float;
type __longMin0Max1099511627775 = float;
type __long = float;
type __integerMinNegative60Max60 = int;
type __integerMinNegative60Max6 = int;
type __integerMinNegative5Max5 = int;
type __integerMinNegative1000Max1000 = int;
type __integerMin96Max600 = int;
type __integerMin800Max3000 = int;
type __integerMin4Max20 = int;
type __integerMin30 = int;
type __integerMin3 = int;
type __integerMin25Max2000 = int;
type __integerMin25Max10000 = int;
type __integerMin1Max8 = int;
type __integerMin1Max6 = int;
type __integerMin1Max5 = int;
type __integerMin1Max4 = int;
type __integerMin1Max3600000 = int;
type __integerMin1Max32 = int;
type __integerMin1Max31 = int;
type __integerMin1Max3003 = int;
type __integerMin1Max20 = int;
type __integerMin1Max16 = int;
type __integerMin1Max1000000 = int;
type __integerMin1Max10 = int;
type __integerMin1000Max30000 = int;
type __integerMin100000Max80000000 = int;
type __integerMin100000Max40000000 = int;
type __integerMin100000Max100000000 = int;
type __integerMin1000000Max100000000 = int;
type __integerMin1000 = int;
type __integerMin100 = int;
type __integerMin1 = int;
type __integerMin0Max8191 = int;
type __integerMin0Max7 = int;
type __integerMin0Max65536 = int;
type __integerMin0Max65535 = int;
type __integerMin0Max600 = int;
type __integerMin0Max500 = int;
type __integerMin0Max3600 = int;
type __integerMin0Max32768 = int;
type __integerMin0Max30 = int;
type __integerMin0Max255 = int;
type __integerMin0Max15 = int;
type __integerMin0Max128 = int;
type __integerMin0Max100000000 = int;
type __integerMin0Max1000000 = int;
type __integerMin0Max10000 = int;
type __integerMin0Max1000 = int;
type __integerMin0Max100 = int;
type __integerMin0Max10 = int;
type __integerMin0 = int;
type __integer = int;
type __doubleMinNegative59Max0 = float;
type __doubleMin1 = float;
type __doubleMin0Max100 = float;
type __doubleMin0Max1 = float;
type __doubleMin0 = float;
type __double = float;
type webvttDestinationSettings = unit
type wavCodingMode = [@as("CODING_MODE_8_0") #CODING_MODE_8_0 | @as("CODING_MODE_4_0") #CODING_MODE_4_0 | @as("CODING_MODE_2_0") #CODING_MODE_2_0 | @as("CODING_MODE_1_0") #CODING_MODE_1_0]
type videoSelectorColorSpaceUsage = [@as("FORCE") #FORCE | @as("FALLBACK") #FALLBACK]
type videoSelectorColorSpace = [@as("REC_709") #REC_709 | @as("REC_601") #REC_601 | @as("HLG_2020") #HLG_2020 | @as("HDR10") #HDR10 | @as("FOLLOW") #FOLLOW]
type videoDescriptionScalingBehavior = [@as("STRETCH_TO_OUTPUT") #STRETCH_TO_OUTPUT | @as("DEFAULT") #DEFAULT]
type videoDescriptionRespondToAfd = [@as("RESPOND") #RESPOND | @as("PASSTHROUGH") #PASSTHROUGH | @as("NONE") #NONE]
type udpTimedMetadataId3Frame = [@as("TDRL") #TDRL | @as("PRIV") #PRIV | @as("NONE") #NONE]
type ttmlDestinationStyleControl = [@as("USE_CONFIGURED") #USE_CONFIGURED | @as("PASSTHROUGH") #PASSTHROUGH]
type timecodeConfigSource = [@as("ZEROBASED") #ZEROBASED | @as("SYSTEMCLOCK") #SYSTEMCLOCK | @as("EMBEDDED") #EMBEDDED]
type temporalFilterStrength = [@as("STRENGTH_16") #STRENGTH_16 | @as("STRENGTH_15") #STRENGTH_15 | @as("STRENGTH_14") #STRENGTH_14 | @as("STRENGTH_13") #STRENGTH_13 | @as("STRENGTH_12") #STRENGTH_12 | @as("STRENGTH_11") #STRENGTH_11 | @as("STRENGTH_10") #STRENGTH_10 | @as("STRENGTH_9") #STRENGTH_9 | @as("STRENGTH_8") #STRENGTH_8 | @as("STRENGTH_7") #STRENGTH_7 | @as("STRENGTH_6") #STRENGTH_6 | @as("STRENGTH_5") #STRENGTH_5 | @as("STRENGTH_4") #STRENGTH_4 | @as("STRENGTH_3") #STRENGTH_3 | @as("STRENGTH_2") #STRENGTH_2 | @as("STRENGTH_1") #STRENGTH_1 | @as("AUTO") #AUTO]
type temporalFilterPostFilterSharpening = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED | @as("AUTO") #AUTO]
type teletextDestinationSettings = unit
type smpteTtDestinationSettings = unit
type smpte2038DataPreference = [@as("PREFER") #PREFER | @as("IGNORE") #IGNORE]
type smoothGroupTimestampOffsetMode = [@as("USE_EVENT_START_DATE") #USE_EVENT_START_DATE | @as("USE_CONFIGURED_OFFSET") #USE_CONFIGURED_OFFSET]
type smoothGroupStreamManifestBehavior = [@as("SEND") #SEND | @as("DO_NOT_SEND") #DO_NOT_SEND]
type smoothGroupSparseTrackType = [@as("SCTE_35_WITHOUT_SEGMENTATION") #SCTE_35_WITHOUT_SEGMENTATION | @as("SCTE_35") #SCTE_35 | @as("NONE") #NONE]
type smoothGroupSegmentationMode = [@as("USE_SEGMENT_DURATION") #USE_SEGMENT_DURATION | @as("USE_INPUT_SEGMENTATION") #USE_INPUT_SEGMENTATION]
type smoothGroupEventStopBehavior = [@as("SEND_EOS") #SEND_EOS | @as("NONE") #NONE]
type smoothGroupEventIdMode = [@as("USE_TIMESTAMP") #USE_TIMESTAMP | @as("USE_CONFIGURED") #USE_CONFIGURED | @as("NO_EVENT_ID") #NO_EVENT_ID]
type smoothGroupCertificateMode = [@as("VERIFY_AUTHENTICITY") #VERIFY_AUTHENTICITY | @as("SELF_SIGNED") #SELF_SIGNED]
type smoothGroupAudioOnlyTimecodeControl = [@as("USE_CONFIGURED_CLOCK") #USE_CONFIGURED_CLOCK | @as("PASSTHROUGH") #PASSTHROUGH]
type scte35WebDeliveryAllowedFlag = [@as("WEB_DELIVERY_ALLOWED") #WEB_DELIVERY_ALLOWED | @as("WEB_DELIVERY_NOT_ALLOWED") #WEB_DELIVERY_NOT_ALLOWED]
type scte35SpliceInsertWebDeliveryAllowedBehavior = [@as("IGNORE") #IGNORE | @as("FOLLOW") #FOLLOW]
type scte35SpliceInsertNoRegionalBlackoutBehavior = [@as("IGNORE") #IGNORE | @as("FOLLOW") #FOLLOW]
type scte35SegmentationCancelIndicator = [@as("SEGMENTATION_EVENT_CANCELED") #SEGMENTATION_EVENT_CANCELED | @as("SEGMENTATION_EVENT_NOT_CANCELED") #SEGMENTATION_EVENT_NOT_CANCELED]
type scte35NoRegionalBlackoutFlag = [@as("NO_REGIONAL_BLACKOUT") #NO_REGIONAL_BLACKOUT | @as("REGIONAL_BLACKOUT") #REGIONAL_BLACKOUT]
type scte35DeviceRestrictions = [@as("RESTRICT_GROUP2") #RESTRICT_GROUP2 | @as("RESTRICT_GROUP1") #RESTRICT_GROUP1 | @as("RESTRICT_GROUP0") #RESTRICT_GROUP0 | @as("NONE") #NONE]
type scte35ArchiveAllowedFlag = [@as("ARCHIVE_ALLOWED") #ARCHIVE_ALLOWED | @as("ARCHIVE_NOT_ALLOWED") #ARCHIVE_NOT_ALLOWED]
type scte35AposWebDeliveryAllowedBehavior = [@as("IGNORE") #IGNORE | @as("FOLLOW") #FOLLOW]
type scte35AposNoRegionalBlackoutBehavior = [@as("IGNORE") #IGNORE | @as("FOLLOW") #FOLLOW]
type scte27DestinationSettings = unit
type scte20PlusEmbeddedDestinationSettings = unit
type scte20Convert608To708 = [@as("UPCONVERT") #UPCONVERT | @as("DISABLED") #DISABLED]
type s3CannedAcl = [@as("PUBLIC_READ") #PUBLIC_READ | @as("BUCKET_OWNER_READ") #BUCKET_OWNER_READ | @as("BUCKET_OWNER_FULL_CONTROL") #BUCKET_OWNER_FULL_CONTROL | @as("AUTHENTICATED_READ") #AUTHENTICATED_READ]
type rtmpOutputCertificateMode = [@as("VERIFY_AUTHENTICITY") #VERIFY_AUTHENTICITY | @as("SELF_SIGNED") #SELF_SIGNED]
type rtmpCaptionInfoDestinationSettings = unit
type rtmpCaptionData = [@as("FIELD1_AND_FIELD2_608") #FIELD1_AND_FIELD2_608 | @as("FIELD1_608") #FIELD1_608 | @as("ALL") #ALL]
type rtmpCacheFullBehavior = [@as("WAIT_FOR_SERVER") #WAIT_FOR_SERVER | @as("DISCONNECT_IMMEDIATELY") #DISCONNECT_IMMEDIATELY]
type rtmpAdMarkers = [@as("ON_CUE_POINT_SCTE35") #ON_CUE_POINT_SCTE35]
type reservationVideoQuality = [@as("PREMIUM") #PREMIUM | @as("ENHANCED") #ENHANCED | @as("STANDARD") #STANDARD]
type reservationState = [@as("DELETED") #DELETED | @as("CANCELED") #CANCELED | @as("EXPIRED") #EXPIRED | @as("ACTIVE") #ACTIVE]
type reservationSpecialFeature = [@as("AUDIO_NORMALIZATION") #AUDIO_NORMALIZATION | @as("ADVANCED_AUDIO") #ADVANCED_AUDIO]
type reservationResourceType = [@as("CHANNEL") #CHANNEL | @as("MULTIPLEX") #MULTIPLEX | @as("OUTPUT") #OUTPUT | @as("INPUT") #INPUT]
type reservationResolution = [@as("UHD") #UHD | @as("FHD") #FHD | @as("HD") #HD | @as("SD") #SD]
type reservationMaximumFramerate = [@as("MAX_60_FPS") #MAX_60_FPS | @as("MAX_30_FPS") #MAX_30_FPS]
type reservationMaximumBitrate = [@as("MAX_50_MBPS") #MAX_50_MBPS | @as("MAX_20_MBPS") #MAX_20_MBPS | @as("MAX_10_MBPS") #MAX_10_MBPS]
type reservationCodec = [@as("LINK") #LINK | @as("AUDIO") #AUDIO | @as("HEVC") #HEVC | @as("AVC") #AVC | @as("MPEG2") #MPEG2]
type rec709Settings = unit
type rec601Settings = unit
type rawSettings = unit
type preferredChannelPipeline = [@as("PIPELINE_1") #PIPELINE_1 | @as("PIPELINE_0") #PIPELINE_0 | @as("CURRENTLY_ACTIVE") #CURRENTLY_ACTIVE]
type pipelineId = [@as("PIPELINE_1") #PIPELINE_1 | @as("PIPELINE_0") #PIPELINE_0]
type passThroughSettings = unit
type offeringType = [@as("NO_UPFRONT") #NO_UPFRONT]
type offeringDurationUnits = [@as("MONTHS") #MONTHS]
type nielsenPcmToId3TaggingState = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type networkInputServerValidation = [@as("CHECK_CRYPTOGRAPHY_ONLY") #CHECK_CRYPTOGRAPHY_ONLY | @as("CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME") #CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME]
type multiplexState = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("STOPPING") #STOPPING | @as("RECOVERING") #RECOVERING | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING | @as("IDLE") #IDLE | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATING") #CREATING]
type multiplexGroupSettings = unit
type msSmoothH265PackagingType = [@as("HVC1") #HVC1 | @as("HEV1") #HEV1]
type mpeg2TimecodeInsertionBehavior = [@as("GOP_TIMECODE") #GOP_TIMECODE | @as("DISABLED") #DISABLED]
type mpeg2SubGopLength = [@as("FIXED") #FIXED | @as("DYNAMIC") #DYNAMIC]
type mpeg2ScanType = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
type mpeg2GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
type mpeg2DisplayRatio = [@as("DISPLAYRATIO4X3") #DISPLAYRATIO4X3 | @as("DISPLAYRATIO16X9") #DISPLAYRATIO16X9]
type mpeg2ColorSpace = [@as("PASSTHROUGH") #PASSTHROUGH | @as("AUTO") #AUTO]
type mpeg2ColorMetadata = [@as("INSERT") #INSERT | @as("IGNORE") #IGNORE]
type mpeg2AdaptiveQuantization = [@as("OFF") #OFF | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW | @as("HIGH") #HIGH | @as("AUTO") #AUTO]
type mp2CodingMode = [@as("CODING_MODE_2_0") #CODING_MODE_2_0 | @as("CODING_MODE_1_0") #CODING_MODE_1_0]
type motionGraphicsInsertion = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type motionGraphicsDeactivateScheduleActionSettings = unit
type mediaPackageOutputSettings = unit
type maxResults = int;
type m3u8TimedMetadataBehavior = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH]
type m3u8Scte35Behavior = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH]
type m3u8PcrControl = [@as("PCR_EVERY_PES_PACKET") #PCR_EVERY_PES_PACKET | @as("CONFIGURED_PCR_PERIOD") #CONFIGURED_PCR_PERIOD]
type m3u8NielsenId3Behavior = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH]
type m2tsTimedMetadataBehavior = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH]
type m2tsSegmentationStyle = [@as("RESET_CADENCE") #RESET_CADENCE | @as("MAINTAIN_CADENCE") #MAINTAIN_CADENCE]
type m2tsSegmentationMarkers = [@as("RAI_SEGSTART") #RAI_SEGSTART | @as("RAI_ADAPT") #RAI_ADAPT | @as("PSI_SEGSTART") #PSI_SEGSTART | @as("NONE") #NONE | @as("EBP_LEGACY") #EBP_LEGACY | @as("EBP") #EBP]
type m2tsScte35Control = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NONE") #NONE]
type m2tsRateMode = [@as("VBR") #VBR | @as("CBR") #CBR]
type m2tsPcrControl = [@as("PCR_EVERY_PES_PACKET") #PCR_EVERY_PES_PACKET | @as("CONFIGURED_PCR_PERIOD") #CONFIGURED_PCR_PERIOD]
type m2tsNielsenId3Behavior = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH]
type m2tsKlv = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NONE") #NONE]
type m2tsEsRateInPes = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
type m2tsEbpPlacement = [@as("VIDEO_PID") #VIDEO_PID | @as("VIDEO_AND_AUDIO_PIDS") #VIDEO_AND_AUDIO_PIDS]
type m2tsEbifControl = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NONE") #NONE]
type m2tsCcDescriptor = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type m2tsBufferModel = [@as("NONE") #NONE | @as("MULTIPLEX") #MULTIPLEX]
type m2tsAudioStreamType = [@as("DVB") #DVB | @as("ATSC") #ATSC]
type m2tsAudioInterval = [@as("VIDEO_INTERVAL") #VIDEO_INTERVAL | @as("VIDEO_AND_FIXED_INTERVALS") #VIDEO_AND_FIXED_INTERVALS]
type m2tsAudioBufferModel = [@as("DVB") #DVB | @as("ATSC") #ATSC]
type m2tsAribCaptionsPidControl = [@as("USE_CONFIGURED") #USE_CONFIGURED | @as("AUTO") #AUTO]
type m2tsArib = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type m2tsAbsentInputAudioBehavior = [@as("ENCODE_SILENCE") #ENCODE_SILENCE | @as("DROP") #DROP]
type logLevel = [@as("DISABLED") #DISABLED | @as("DEBUG") #DEBUG | @as("INFO") #INFO | @as("WARNING") #WARNING | @as("ERROR") #ERROR]
type lastFrameClippingBehavior = [@as("INCLUDE_LAST_FRAME") #INCLUDE_LAST_FRAME | @as("EXCLUDE_LAST_FRAME") #EXCLUDE_LAST_FRAME]
type inputType = [@as("AWS_CDI") #AWS_CDI | @as("INPUT_DEVICE") #INPUT_DEVICE | @as("MEDIACONNECT") #MEDIACONNECT | @as("MP4_FILE") #MP4_FILE | @as("URL_PULL") #URL_PULL | @as("RTMP_PULL") #RTMP_PULL | @as("RTMP_PUSH") #RTMP_PUSH | @as("RTP_PUSH") #RTP_PUSH | @as("UDP_PUSH") #UDP_PUSH]
type inputTimecodeSource = [@as("EMBEDDED") #EMBEDDED | @as("ZEROBASED") #ZEROBASED]
type inputState = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("ATTACHED") #ATTACHED | @as("DETACHED") #DETACHED | @as("CREATING") #CREATING]
type inputSourceType = [@as("DYNAMIC") #DYNAMIC | @as("STATIC") #STATIC]
type inputSourceEndBehavior = [@as("LOOP") #LOOP | @as("CONTINUE") #CONTINUE]
type inputSecurityGroupState = [@as("DELETED") #DELETED | @as("UPDATING") #UPDATING | @as("IN_USE") #IN_USE | @as("IDLE") #IDLE]
type inputResolution = [@as("UHD") #UHD | @as("HD") #HD | @as("SD") #SD]
type inputPreference = [@as("PRIMARY_INPUT_PREFERRED") #PRIMARY_INPUT_PREFERRED | @as("EQUAL_INPUT_PREFERENCE") #EQUAL_INPUT_PREFERENCE]
type inputMaximumBitrate = [@as("MAX_50_MBPS") #MAX_50_MBPS | @as("MAX_20_MBPS") #MAX_20_MBPS | @as("MAX_10_MBPS") #MAX_10_MBPS]
type inputLossImageType = [@as("SLATE") #SLATE | @as("COLOR") #COLOR]
type inputLossActionForUdpOut = [@as("EMIT_PROGRAM") #EMIT_PROGRAM | @as("DROP_TS") #DROP_TS | @as("DROP_PROGRAM") #DROP_PROGRAM]
type inputLossActionForRtmpOut = [@as("PAUSE_OUTPUT") #PAUSE_OUTPUT | @as("EMIT_OUTPUT") #EMIT_OUTPUT]
type inputLossActionForMsSmoothOut = [@as("PAUSE_OUTPUT") #PAUSE_OUTPUT | @as("EMIT_OUTPUT") #EMIT_OUTPUT]
type inputLossActionForHlsOut = [@as("PAUSE_OUTPUT") #PAUSE_OUTPUT | @as("EMIT_OUTPUT") #EMIT_OUTPUT]
type inputFilter = [@as("FORCED") #FORCED | @as("DISABLED") #DISABLED | @as("AUTO") #AUTO]
type inputDeviceType = [@as("HD") #HD]
type inputDeviceTransferType = [@as("INCOMING") #INCOMING | @as("OUTGOING") #OUTGOING]
type inputDeviceThumbnail = NodeJs.Buffer.t;
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
type iFrameOnlyPlaylistType = [@as("STANDARD") #STANDARD | @as("DISABLED") #DISABLED]
type htmlMotionGraphicsSettings = unit
type hlsWebdavHttpTransferMode = [@as("NON_CHUNKED") #NON_CHUNKED | @as("CHUNKED") #CHUNKED]
type hlsTsFileMode = [@as("SINGLE_FILE") #SINGLE_FILE | @as("SEGMENTED_FILES") #SEGMENTED_FILES]
type hlsTimedMetadataId3Frame = [@as("TDRL") #TDRL | @as("PRIV") #PRIV | @as("NONE") #NONE]
type hlsStreamInfResolution = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
type hlsSegmentationMode = [@as("USE_SEGMENT_DURATION") #USE_SEGMENT_DURATION | @as("USE_INPUT_SEGMENTATION") #USE_INPUT_SEGMENTATION]
type hlsRedundantManifest = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type hlsProgramDateTime = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
type hlsOutputSelection = [@as("VARIANT_MANIFESTS_AND_SEGMENTS") #VARIANT_MANIFESTS_AND_SEGMENTS | @as("SEGMENTS_ONLY") #SEGMENTS_ONLY | @as("MANIFESTS_AND_SEGMENTS") #MANIFESTS_AND_SEGMENTS]
type hlsMode = [@as("VOD") #VOD | @as("LIVE") #LIVE]
type hlsMediaStoreStorageClass = [@as("TEMPORAL") #TEMPORAL]
type hlsManifestDurationFormat = [@as("INTEGER") #INTEGER | @as("FLOATING_POINT") #FLOATING_POINT]
type hlsManifestCompression = [@as("NONE") #NONE | @as("GZIP") #GZIP]
type hlsIvSource = [@as("FOLLOWS_SEGMENT_NUMBER") #FOLLOWS_SEGMENT_NUMBER | @as("EXPLICIT") #EXPLICIT]
type hlsIvInManifest = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
type hlsIncompleteSegmentBehavior = [@as("SUPPRESS") #SUPPRESS | @as("AUTO") #AUTO]
type hlsId3SegmentTaggingState = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type hlsH265PackagingType = [@as("HVC1") #HVC1 | @as("HEV1") #HEV1]
type hlsEncryptionType = [@as("SAMPLE_AES") #SAMPLE_AES | @as("AES128") #AES128]
type hlsDiscontinuityTags = [@as("NEVER_INSERT") #NEVER_INSERT | @as("INSERT") #INSERT]
type hlsDirectoryStructure = [@as("SUBDIRECTORY_PER_STREAM") #SUBDIRECTORY_PER_STREAM | @as("SINGLE_DIRECTORY") #SINGLE_DIRECTORY]
type hlsCodecSpecification = [@as("RFC_6381") #RFC_6381 | @as("RFC_4281") #RFC_4281]
type hlsClientCache = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type hlsCaptionLanguageSetting = [@as("OMIT") #OMIT | @as("NONE") #NONE | @as("INSERT") #INSERT]
type hlsAkamaiHttpTransferMode = [@as("NON_CHUNKED") #NON_CHUNKED | @as("CHUNKED") #CHUNKED]
type hlsAdMarkers = [@as("ELEMENTAL_SCTE35") #ELEMENTAL_SCTE35 | @as("ELEMENTAL") #ELEMENTAL | @as("ADOBE") #ADOBE]
type h265TimecodeInsertionBehavior = [@as("PIC_TIMING_SEI") #PIC_TIMING_SEI | @as("DISABLED") #DISABLED]
type h265Tier = [@as("MAIN") #MAIN | @as("HIGH") #HIGH]
type h265SceneChangeDetect = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265ScanType = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
type h265RateControlMode = [@as("QVBR") #QVBR | @as("MULTIPLEX") #MULTIPLEX | @as("CBR") #CBR]
type h265Profile = [@as("MAIN_10BIT") #MAIN_10BIT | @as("MAIN") #MAIN]
type h265LookAheadRateControl = [@as("MEDIUM") #MEDIUM | @as("LOW") #LOW | @as("HIGH") #HIGH]
type h265Level = [@as("H265_LEVEL_AUTO") #H265_LEVEL_AUTO | @as("H265_LEVEL_6_2") #H265_LEVEL_6_2 | @as("H265_LEVEL_6_1") #H265_LEVEL_6_1 | @as("H265_LEVEL_6") #H265_LEVEL_6 | @as("H265_LEVEL_5_2") #H265_LEVEL_5_2 | @as("H265_LEVEL_5_1") #H265_LEVEL_5_1 | @as("H265_LEVEL_5") #H265_LEVEL_5 | @as("H265_LEVEL_4_1") #H265_LEVEL_4_1 | @as("H265_LEVEL_4") #H265_LEVEL_4 | @as("H265_LEVEL_3_1") #H265_LEVEL_3_1 | @as("H265_LEVEL_3") #H265_LEVEL_3 | @as("H265_LEVEL_2_1") #H265_LEVEL_2_1 | @as("H265_LEVEL_2") #H265_LEVEL_2 | @as("H265_LEVEL_1") #H265_LEVEL_1]
type h265GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
type h265FlickerAq = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265ColorMetadata = [@as("INSERT") #INSERT | @as("IGNORE") #IGNORE]
type h265AlternativeTransferFunction = [@as("OMIT") #OMIT | @as("INSERT") #INSERT]
type h265AdaptiveQuantization = [@as("OFF") #OFF | @as("MEDIUM") #MEDIUM | @as("MAX") #MAX | @as("LOW") #LOW | @as("HIGHER") #HIGHER | @as("HIGH") #HIGH]
type h264TimecodeInsertionBehavior = [@as("PIC_TIMING_SEI") #PIC_TIMING_SEI | @as("DISABLED") #DISABLED]
type h264TemporalAq = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264Syntax = [@as("RP2027") #RP2027 | @as("DEFAULT") #DEFAULT]
type h264SubGopLength = [@as("FIXED") #FIXED | @as("DYNAMIC") #DYNAMIC]
type h264SpatialAq = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264SceneChangeDetect = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264ScanType = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
type h264RateControlMode = [@as("VBR") #VBR | @as("QVBR") #QVBR | @as("MULTIPLEX") #MULTIPLEX | @as("CBR") #CBR]
type h264QualityLevel = [@as("STANDARD_QUALITY") #STANDARD_QUALITY | @as("ENHANCED_QUALITY") #ENHANCED_QUALITY]
type h264Profile = [@as("MAIN") #MAIN | @as("HIGH_422_10BIT") #HIGH_422_10BIT | @as("HIGH_422") #HIGH_422 | @as("HIGH_10BIT") #HIGH_10BIT | @as("HIGH") #HIGH | @as("BASELINE") #BASELINE]
type h264ParControl = [@as("SPECIFIED") #SPECIFIED | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE]
type h264LookAheadRateControl = [@as("MEDIUM") #MEDIUM | @as("LOW") #LOW | @as("HIGH") #HIGH]
type h264Level = [@as("H264_LEVEL_AUTO") #H264_LEVEL_AUTO | @as("H264_LEVEL_5_2") #H264_LEVEL_5_2 | @as("H264_LEVEL_5_1") #H264_LEVEL_5_1 | @as("H264_LEVEL_5") #H264_LEVEL_5 | @as("H264_LEVEL_4_2") #H264_LEVEL_4_2 | @as("H264_LEVEL_4_1") #H264_LEVEL_4_1 | @as("H264_LEVEL_4") #H264_LEVEL_4 | @as("H264_LEVEL_3_2") #H264_LEVEL_3_2 | @as("H264_LEVEL_3_1") #H264_LEVEL_3_1 | @as("H264_LEVEL_3") #H264_LEVEL_3 | @as("H264_LEVEL_2_2") #H264_LEVEL_2_2 | @as("H264_LEVEL_2_1") #H264_LEVEL_2_1 | @as("H264_LEVEL_2") #H264_LEVEL_2 | @as("H264_LEVEL_1_3") #H264_LEVEL_1_3 | @as("H264_LEVEL_1_2") #H264_LEVEL_1_2 | @as("H264_LEVEL_1_1") #H264_LEVEL_1_1 | @as("H264_LEVEL_1") #H264_LEVEL_1]
type h264GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
type h264GopBReference = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264FramerateControl = [@as("SPECIFIED") #SPECIFIED | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE]
type h264ForceFieldPictures = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264FlickerAq = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264EntropyEncoding = [@as("CAVLC") #CAVLC | @as("CABAC") #CABAC]
type h264ColorMetadata = [@as("INSERT") #INSERT | @as("IGNORE") #IGNORE]
type h264AdaptiveQuantization = [@as("OFF") #OFF | @as("MEDIUM") #MEDIUM | @as("MAX") #MAX | @as("LOW") #LOW | @as("HIGHER") #HIGHER | @as("HIGH") #HIGH]
type globalConfigurationOutputTimingSource = [@as("SYSTEM_CLOCK") #SYSTEM_CLOCK | @as("INPUT_CLOCK") #INPUT_CLOCK]
type globalConfigurationOutputLockingMode = [@as("PIPELINE_LOCKING") #PIPELINE_LOCKING | @as("EPOCH_LOCKING") #EPOCH_LOCKING]
type globalConfigurationLowFramerateInputs = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type globalConfigurationInputEndAction = [@as("SWITCH_AND_LOOP_INPUTS") #SWITCH_AND_LOOP_INPUTS | @as("NONE") #NONE]
type frameCaptureIntervalUnit = [@as("SECONDS") #SECONDS | @as("MILLISECONDS") #MILLISECONDS]
type frameCaptureHlsSettings = unit
type followPoint = [@as("START") #START | @as("END") #END]
type fmp4TimedMetadataBehavior = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH]
type fmp4NielsenId3Behavior = [@as("PASSTHROUGH") #PASSTHROUGH | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH]
type fixedAfd = [@as("AFD_1111") #AFD_1111 | @as("AFD_1110") #AFD_1110 | @as("AFD_1101") #AFD_1101 | @as("AFD_1011") #AFD_1011 | @as("AFD_1010") #AFD_1010 | @as("AFD_1001") #AFD_1001 | @as("AFD_1000") #AFD_1000 | @as("AFD_0100") #AFD_0100 | @as("AFD_0011") #AFD_0011 | @as("AFD_0010") #AFD_0010 | @as("AFD_0000") #AFD_0000]
type fecOutputIncludeFec = [@as("COLUMN_AND_ROW") #COLUMN_AND_ROW | @as("COLUMN") #COLUMN]
type featureActivationsInputPrepareScheduleActions = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type embeddedScte20Detection = [@as("OFF") #OFF | @as("AUTO") #AUTO]
type embeddedPlusScte20DestinationSettings = unit
type embeddedDestinationSettings = unit
type embeddedConvert608To708 = [@as("UPCONVERT") #UPCONVERT | @as("DISABLED") #DISABLED]
type ebuTtDFillLineGapControl = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type ebuTtDDestinationStyleControl = [@as("INCLUDE") #INCLUDE | @as("EXCLUDE") #EXCLUDE]
type eac3SurroundMode = [@as("NOT_INDICATED") #NOT_INDICATED | @as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type eac3SurroundExMode = [@as("NOT_INDICATED") #NOT_INDICATED | @as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type eac3StereoDownmix = [@as("NOT_INDICATED") #NOT_INDICATED | @as("LT_RT") #LT_RT | @as("LO_RO") #LO_RO | @as("DPL2") #DPL2]
type eac3PhaseControl = [@as("SHIFT_90_DEGREES") #SHIFT_90_DEGREES | @as("NO_SHIFT") #NO_SHIFT]
type eac3PassthroughControl = [@as("WHEN_POSSIBLE") #WHEN_POSSIBLE | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH]
type eac3MetadataControl = [@as("USE_CONFIGURED") #USE_CONFIGURED | @as("FOLLOW_INPUT") #FOLLOW_INPUT]
type eac3LfeFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type eac3LfeControl = [@as("NO_LFE") #NO_LFE | @as("LFE") #LFE]
type eac3DrcRf = [@as("SPEECH") #SPEECH | @as("NONE") #NONE | @as("MUSIC_STANDARD") #MUSIC_STANDARD | @as("MUSIC_LIGHT") #MUSIC_LIGHT | @as("FILM_STANDARD") #FILM_STANDARD | @as("FILM_LIGHT") #FILM_LIGHT]
type eac3DrcLine = [@as("SPEECH") #SPEECH | @as("NONE") #NONE | @as("MUSIC_STANDARD") #MUSIC_STANDARD | @as("MUSIC_LIGHT") #MUSIC_LIGHT | @as("FILM_STANDARD") #FILM_STANDARD | @as("FILM_LIGHT") #FILM_LIGHT]
type eac3DcFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type eac3CodingMode = [@as("CODING_MODE_3_2") #CODING_MODE_3_2 | @as("CODING_MODE_2_0") #CODING_MODE_2_0 | @as("CODING_MODE_1_0") #CODING_MODE_1_0]
type eac3BitstreamMode = [@as("VISUALLY_IMPAIRED") #VISUALLY_IMPAIRED | @as("HEARING_IMPAIRED") #HEARING_IMPAIRED | @as("EMERGENCY") #EMERGENCY | @as("COMPLETE_MAIN") #COMPLETE_MAIN | @as("COMMENTARY") #COMMENTARY]
type eac3AttenuationControl = [@as("NONE") #NONE | @as("ATTENUATE_3_DB") #ATTENUATE_3_DB]
type dvbSubDestinationTeletextGridControl = [@as("SCALED") #SCALED | @as("FIXED") #FIXED]
type dvbSubDestinationShadowColor = [@as("WHITE") #WHITE | @as("NONE") #NONE | @as("BLACK") #BLACK]
type dvbSubDestinationOutlineColor = [@as("YELLOW") #YELLOW | @as("WHITE") #WHITE | @as("RED") #RED | @as("GREEN") #GREEN | @as("BLUE") #BLUE | @as("BLACK") #BLACK]
type dvbSubDestinationFontColor = [@as("YELLOW") #YELLOW | @as("WHITE") #WHITE | @as("RED") #RED | @as("GREEN") #GREEN | @as("BLUE") #BLUE | @as("BLACK") #BLACK]
type dvbSubDestinationBackgroundColor = [@as("WHITE") #WHITE | @as("NONE") #NONE | @as("BLACK") #BLACK]
type dvbSubDestinationAlignment = [@as("SMART") #SMART | @as("LEFT") #LEFT | @as("CENTERED") #CENTERED]
type dvbSdtOutputSdt = [@as("SDT_NONE") #SDT_NONE | @as("SDT_MANUAL") #SDT_MANUAL | @as("SDT_FOLLOW_IF_PRESENT") #SDT_FOLLOW_IF_PRESENT | @as("SDT_FOLLOW") #SDT_FOLLOW]
type deviceUpdateStatus = [@as("NOT_UP_TO_DATE") #NOT_UP_TO_DATE | @as("UP_TO_DATE") #UP_TO_DATE]
type deviceSettingsSyncState = [@as("SYNCING") #SYNCING | @as("SYNCED") #SYNCED]
type contentType = [@as("image/jpeg") #image_jpeg]
type colorSpacePassthroughSettings = unit
type channelState = [@as("UPDATE_FAILED") #UPDATE_FAILED | @as("UPDATING") #UPDATING | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("STOPPING") #STOPPING | @as("RECOVERING") #RECOVERING | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING | @as("IDLE") #IDLE | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATING") #CREATING]
type channelClass = [@as("SINGLE_PIPELINE") #SINGLE_PIPELINE | @as("STANDARD") #STANDARD]
type cdiInputResolution = [@as("UHD") #UHD | @as("FHD") #FHD | @as("HD") #HD | @as("SD") #SD]
type burnInTeletextGridControl = [@as("SCALED") #SCALED | @as("FIXED") #FIXED]
type burnInShadowColor = [@as("WHITE") #WHITE | @as("NONE") #NONE | @as("BLACK") #BLACK]
type burnInOutlineColor = [@as("YELLOW") #YELLOW | @as("WHITE") #WHITE | @as("RED") #RED | @as("GREEN") #GREEN | @as("BLUE") #BLUE | @as("BLACK") #BLACK]
type burnInFontColor = [@as("YELLOW") #YELLOW | @as("WHITE") #WHITE | @as("RED") #RED | @as("GREEN") #GREEN | @as("BLUE") #BLUE | @as("BLACK") #BLACK]
type burnInBackgroundColor = [@as("WHITE") #WHITE | @as("NONE") #NONE | @as("BLACK") #BLACK]
type burnInAlignment = [@as("SMART") #SMART | @as("LEFT") #LEFT | @as("CENTERED") #CENTERED]
type blackoutSlateState = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type blackoutSlateNetworkEndBlackout = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type availBlankingState = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type authenticationScheme = [@as("COMMON") #COMMON | @as("AKAMAI") #AKAMAI]
type audioType = [@as("VISUAL_IMPAIRED_COMMENTARY") #VISUAL_IMPAIRED_COMMENTARY | @as("UNDEFINED") #UNDEFINED | @as("HEARING_IMPAIRED") #HEARING_IMPAIRED | @as("CLEAN_EFFECTS") #CLEAN_EFFECTS]
type audioOnlyHlsTrackType = [@as("AUDIO_ONLY_VARIANT_STREAM") #AUDIO_ONLY_VARIANT_STREAM | @as("ALTERNATE_AUDIO_NOT_AUTO_SELECT") #ALTERNATE_AUDIO_NOT_AUTO_SELECT | @as("ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT") #ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT | @as("ALTERNATE_AUDIO_AUTO_SELECT") #ALTERNATE_AUDIO_AUTO_SELECT]
type audioOnlyHlsSegmentType = [@as("FMP4") #FMP4 | @as("AAC") #AAC]
type audioNormalizationAlgorithmControl = [@as("CORRECT_AUDIO") #CORRECT_AUDIO]
type audioNormalizationAlgorithm = [@as("ITU_1770_2") #ITU_1770_2 | @as("ITU_1770_1") #ITU_1770_1]
type audioLanguageSelectionPolicy = [@as("STRICT") #STRICT | @as("LOOSE") #LOOSE]
type audioDescriptionLanguageCodeControl = [@as("USE_CONFIGURED") #USE_CONFIGURED | @as("FOLLOW_INPUT") #FOLLOW_INPUT]
type audioDescriptionAudioTypeControl = [@as("USE_CONFIGURED") #USE_CONFIGURED | @as("FOLLOW_INPUT") #FOLLOW_INPUT]
type aribSourceSettings = unit
type aribDestinationSettings = unit
type afdSignaling = [@as("NONE") #NONE | @as("FIXED") #FIXED | @as("AUTO") #AUTO]
type acceptHeader = [@as("image/jpeg") #image_jpeg]
type ac3MetadataControl = [@as("USE_CONFIGURED") #USE_CONFIGURED | @as("FOLLOW_INPUT") #FOLLOW_INPUT]
type ac3LfeFilter = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type ac3DrcProfile = [@as("NONE") #NONE | @as("FILM_STANDARD") #FILM_STANDARD]
type ac3CodingMode = [@as("CODING_MODE_3_2_LFE") #CODING_MODE_3_2_LFE | @as("CODING_MODE_2_0") #CODING_MODE_2_0 | @as("CODING_MODE_1_1") #CODING_MODE_1_1 | @as("CODING_MODE_1_0") #CODING_MODE_1_0]
type ac3BitstreamMode = [@as("VOICE_OVER") #VOICE_OVER | @as("VISUALLY_IMPAIRED") #VISUALLY_IMPAIRED | @as("MUSIC_AND_EFFECTS") #MUSIC_AND_EFFECTS | @as("HEARING_IMPAIRED") #HEARING_IMPAIRED | @as("EMERGENCY") #EMERGENCY | @as("DIALOGUE") #DIALOGUE | @as("COMPLETE_MAIN") #COMPLETE_MAIN | @as("COMMENTARY") #COMMENTARY]
type aacVbrQuality = [@as("MEDIUM_LOW") #MEDIUM_LOW | @as("MEDIUM_HIGH") #MEDIUM_HIGH | @as("LOW") #LOW | @as("HIGH") #HIGH]
type aacSpec = [@as("MPEG4") #MPEG4 | @as("MPEG2") #MPEG2]
type aacRawFormat = [@as("NONE") #NONE | @as("LATM_LOAS") #LATM_LOAS]
type aacRateControlMode = [@as("VBR") #VBR | @as("CBR") #CBR]
type aacProfile = [@as("LC") #LC | @as("HEV2") #HEV2 | @as("HEV1") #HEV1]
type aacInputType = [@as("NORMAL") #NORMAL | @as("BROADCASTER_MIXED_AD") #BROADCASTER_MIXED_AD]
type aacCodingMode = [@as("CODING_MODE_5_1") #CODING_MODE_5_1 | @as("CODING_MODE_2_0") #CODING_MODE_2_0 | @as("CODING_MODE_1_1") #CODING_MODE_1_1 | @as("CODING_MODE_1_0") #CODING_MODE_1_0 | @as("AD_RECEIVER_MIX") #AD_RECEIVER_MIX]
type __listOf__string = array<__string>
type __listOf__integer = array<__integer>
type __listOfRtmpAdMarkers = array<rtmpAdMarkers>
type __listOfHlsAdMarkers = array<hlsAdMarkers>
type wavSettings = {
@as("SampleRate") sampleRate: __double,
@as("CodingMode") codingMode: wavCodingMode,
@as("BitDepth") bitDepth: __double
}
type videoSelectorProgramId = {
@as("ProgramId") programId: __integerMin0Max65536
}
type videoSelectorPid = {
@as("Pid") pid: __integerMin0Max8191
}
type videoBlackFailoverSettings = {
@as("VideoBlackThresholdMsec") videoBlackThresholdMsec: __integerMin1000,
@as("BlackDetectThreshold") blackDetectThreshold: __doubleMin0Max1
}
type validationError = {
@as("ErrorMessage") errorMessage: __string,
@as("ElementPath") elementPath: __string
}
type udpGroupSettings = {
@as("TimedMetadataId3Period") timedMetadataId3Period: __integerMin0,
@as("TimedMetadataId3Frame") timedMetadataId3Frame: udpTimedMetadataId3Frame,
@as("InputLossAction") inputLossAction: inputLossActionForUdpOut
}
type ttmlDestinationSettings = {
@as("StyleControl") styleControl: ttmlDestinationStyleControl
}
type transferringInputDeviceSummary = {
@as("TransferType") transferType: inputDeviceTransferType,
@as("TargetCustomerId") targetCustomerId: __string,
@as("Message") message: __string,
@as("Id") id: __string
}
type timecodeConfig = {
@as("SyncThreshold") syncThreshold: __integerMin1Max1000000,
@as("Source") source: option<timecodeConfigSource>
}
type temporalFilterSettings = {
@as("Strength") strength: temporalFilterStrength,
@as("PostFilterSharpening") postFilterSharpening: temporalFilterPostFilterSharpening
}
type tags = Js.Dict.t< __string>
type stopTimecode = {
@as("Timecode") timecode: __string,
@as("LastFrameClippingBehavior") lastFrameClippingBehavior: lastFrameClippingBehavior
}
type staticImageDeactivateScheduleActionSettings = {
@as("Layer") layer: __integerMin0Max7,
@as("FadeOut") fadeOut: __integerMin0
}
type startTimecode = {
@as("Timecode") timecode: __string
}
type scte35TimeSignalApos = {
@as("WebDeliveryAllowedFlag") webDeliveryAllowedFlag: scte35AposWebDeliveryAllowedBehavior,
@as("NoRegionalBlackoutFlag") noRegionalBlackoutFlag: scte35AposNoRegionalBlackoutBehavior,
@as("AdAvailOffset") adAvailOffset: __integerMinNegative1000Max1000
}
type scte35SpliceInsertScheduleActionSettings = {
@as("SpliceEventId") spliceEventId: option<__longMin0Max4294967295>,
@as("Duration") duration: __longMin0Max8589934591
}
type scte35SpliceInsert = {
@as("WebDeliveryAllowedFlag") webDeliveryAllowedFlag: scte35SpliceInsertWebDeliveryAllowedBehavior,
@as("NoRegionalBlackoutFlag") noRegionalBlackoutFlag: scte35SpliceInsertNoRegionalBlackoutBehavior,
@as("AdAvailOffset") adAvailOffset: __integerMinNegative1000Max1000
}
type scte35ReturnToNetworkScheduleActionSettings = {
@as("SpliceEventId") spliceEventId: option<__longMin0Max4294967295>
}
type scte35DeliveryRestrictions = {
@as("WebDeliveryAllowedFlag") webDeliveryAllowedFlag: option<scte35WebDeliveryAllowedFlag>,
@as("NoRegionalBlackoutFlag") noRegionalBlackoutFlag: option<scte35NoRegionalBlackoutFlag>,
@as("DeviceRestrictions") deviceRestrictions: option<scte35DeviceRestrictions>,
@as("ArchiveAllowedFlag") archiveAllowedFlag: option<scte35ArchiveAllowedFlag>
}
type scte27SourceSettings = {
@as("Pid") pid: __integerMin1
}
type scte20SourceSettings = {
@as("Source608ChannelNumber") source608ChannelNumber: __integerMin1Max4,
@as("Convert608To708") convert608To708: scte20Convert608To708
}
type reservationResourceSpecification = {
@as("VideoQuality") videoQuality: reservationVideoQuality,
@as("SpecialFeature") specialFeature: reservationSpecialFeature,
@as("ResourceType") resourceType: reservationResourceType,
@as("Resolution") resolution: reservationResolution,
@as("MaximumFramerate") maximumFramerate: reservationMaximumFramerate,
@as("MaximumBitrate") maximumBitrate: reservationMaximumBitrate,
@as("Codec") codec: reservationCodec,
@as("ChannelClass") channelClass: channelClass
}
type pipelinePauseStateSettings = {
@as("PipelineId") pipelineId: option<pipelineId>
}
type pipelineDetail = {
@as("PipelineId") pipelineId: __string,
@as("ActiveMotionGraphicsUri") activeMotionGraphicsUri: __string,
@as("ActiveMotionGraphicsActionName") activeMotionGraphicsActionName: __string,
@as("ActiveInputSwitchActionName") activeInputSwitchActionName: __string,
@as("ActiveInputAttachmentName") activeInputAttachmentName: __string
}
type outputLocationRef = {
@as("DestinationRefId") destinationRefId: __string
}
type outputDestinationSettings = {
@as("Username") username: __string,
@as("Url") url: __string,
@as("StreamName") streamName: __string,
@as("PasswordParam") passwordParam: __string
}
type nielsenConfiguration = {
@as("NielsenPcmToId3Tagging") nielsenPcmToId3Tagging: nielsenPcmToId3TaggingState,
@as("DistributorId") distributorId: __string
}
type multiplexStatmuxVideoSettings = {
@as("Priority") priority: __integerMinNegative5Max5,
@as("MinimumBitrate") minimumBitrate: __integerMin100000Max100000000,
@as("MaximumBitrate") maximumBitrate: __integerMin100000Max100000000
}
type multiplexSettingsSummary = {
@as("TransportStreamBitrate") transportStreamBitrate: __integerMin1000000Max100000000
}
type multiplexSettings = {
@as("TransportStreamReservedBitrate") transportStreamReservedBitrate: __integerMin0Max100000000,
@as("TransportStreamId") transportStreamId: option<__integerMin0Max65535>,
@as("TransportStreamBitrate") transportStreamBitrate: option<__integerMin1000000Max100000000>,
@as("MaximumVideoBufferDelayMilliseconds") maximumVideoBufferDelayMilliseconds: __integerMin800Max3000
}
type multiplexProgramSummary = {
@as("ProgramName") programName: __string,
@as("ChannelId") channelId: __string
}
type multiplexProgramServiceDescriptor = {
@as("ServiceName") serviceName: option<__stringMax256>,
@as("ProviderName") providerName: option<__stringMax256>
}
type multiplexProgramPipelineDetail = {
@as("PipelineId") pipelineId: __string,
@as("ActiveChannelPipeline") activeChannelPipeline: __string
}
type multiplexProgramChannelDestinationSettings = {
@as("ProgramName") programName: __stringMin1,
@as("MultiplexId") multiplexId: __stringMin1
}
type multiplexMediaConnectOutputDestinationSettings = {
@as("EntitlementArn") entitlementArn: __stringMin1
}
type msSmoothOutputSettings = {
@as("NameModifier") nameModifier: __string,
@as("H265PackagingType") h265PackagingType: msSmoothH265PackagingType
}
type mp2Settings = {
@as("SampleRate") sampleRate: __double,
@as("CodingMode") codingMode: mp2CodingMode,
@as("Bitrate") bitrate: __double
}
type motionGraphicsSettings = {
@as("HtmlMotionGraphicsSettings") htmlMotionGraphicsSettings: htmlMotionGraphicsSettings
}
type motionGraphicsActivateScheduleActionSettings = {
@as("Username") username: __string,
@as("Url") url: __string,
@as("PasswordParam") passwordParam: __string,
@as("Duration") duration: __longMin0Max86400000
}
type mediaPackageOutputDestinationSettings = {
@as("ChannelId") channelId: __stringMin1
}
type mediaConnectFlowRequest = {
@as("FlowArn") flowArn: __string
}
type mediaConnectFlow = {
@as("FlowArn") flowArn: __string
}
type m3u8Settings = {
@as("VideoPid") videoPid: __string,
@as("TransportStreamId") transportStreamId: __integerMin0Max65535,
@as("TimedMetadataPid") timedMetadataPid: __string,
@as("TimedMetadataBehavior") timedMetadataBehavior: m3u8TimedMetadataBehavior,
@as("Scte35Pid") scte35Pid: __string,
@as("Scte35Behavior") scte35Behavior: m3u8Scte35Behavior,
@as("ProgramNum") programNum: __integerMin0Max65535,
@as("PmtPid") pmtPid: __string,
@as("PmtInterval") pmtInterval: __integerMin0Max1000,
@as("PcrPid") pcrPid: __string,
@as("PcrPeriod") pcrPeriod: __integerMin0Max500,
@as("PcrControl") pcrControl: m3u8PcrControl,
@as("PatInterval") patInterval: __integerMin0Max1000,
@as("NielsenId3Behavior") nielsenId3Behavior: m3u8NielsenId3Behavior,
@as("EcmPid") ecmPid: __string,
@as("AudioPids") audioPids: __string,
@as("AudioFramesPerPes") audioFramesPerPes: __integerMin0
}
type inputWhitelistRuleCidr = {
@as("Cidr") cidr: __string
}
type inputWhitelistRule = {
@as("Cidr") cidr: __string
}
type inputSpecification = {
@as("Resolution") resolution: inputResolution,
@as("MaximumBitrate") maximumBitrate: inputMaximumBitrate,
@as("Codec") codec: inputCodec
}
type inputSourceRequest = {
@as("Username") username: __string,
@as("Url") url: __string,
@as("PasswordParam") passwordParam: __string
}
type inputSource = {
@as("Username") username: __string,
@as("Url") url: __string,
@as("PasswordParam") passwordParam: __string
}
type inputLossFailoverSettings = {
@as("InputLossThresholdMsec") inputLossThresholdMsec: __integerMin100
}
type inputLocation = {
@as("Username") username: __string,
@as("Uri") uri: option<__string>,
@as("PasswordParam") passwordParam: __string
}
type inputDeviceUhdSettings = {
@as("Width") width: __integer,
@as("ScanType") scanType: inputDeviceScanType,
@as("MaxBitrate") maxBitrate: __integer,
@as("Height") height: __integer,
@as("Framerate") framerate: __double,
@as("DeviceState") deviceState: inputDeviceState,
@as("ConfiguredInput") configuredInput: inputDeviceConfiguredInput,
@as("ActiveInput") activeInput: inputDeviceActiveInput
}
type inputDeviceSettings = {
@as("Id") id: __string
}
type inputDeviceRequest = {
@as("Id") id: __string
}
type inputDeviceHdSettings = {
@as("Width") width: __integer,
@as("ScanType") scanType: inputDeviceScanType,
@as("MaxBitrate") maxBitrate: __integer,
@as("Height") height: __integer,
@as("Framerate") framerate: __double,
@as("DeviceState") deviceState: inputDeviceState,
@as("ConfiguredInput") configuredInput: inputDeviceConfiguredInput,
@as("ActiveInput") activeInput: inputDeviceActiveInput
}
type inputDeviceConfigurableSettings = {
@as("MaxBitrate") maxBitrate: __integer,
@as("ConfiguredInput") configuredInput: inputDeviceConfiguredInput
}
type inputDestinationVpc = {
@as("NetworkInterfaceId") networkInterfaceId: __string,
@as("AvailabilityZone") availabilityZone: __string
}
type inputDestinationRequest = {
@as("StreamName") streamName: __string
}
type inputChannelLevel = {
@as("InputChannel") inputChannel: option<__integerMin0Max15>,
@as("Gain") gain: option<__integerMinNegative60Max6>
}
type hlsWebdavSettings = {
@as("RestartDelay") restartDelay: __integerMin0Max15,
@as("NumRetries") numRetries: __integerMin0,
@as("HttpTransferMode") httpTransferMode: hlsWebdavHttpTransferMode,
@as("FilecacheDuration") filecacheDuration: __integerMin0Max600,
@as("ConnectionRetryInterval") connectionRetryInterval: __integerMin0
}
type hlsTimedMetadataScheduleActionSettings = {
@as("Id3") id3: option<__string>
}
type hlsS3Settings = {
@as("CannedAcl") cannedAcl: s3CannedAcl
}
type hlsMediaStoreSettings = {
@as("RestartDelay") restartDelay: __integerMin0Max15,
@as("NumRetries") numRetries: __integerMin0,
@as("MediaStoreStorageClass") mediaStoreStorageClass: hlsMediaStoreStorageClass,
@as("FilecacheDuration") filecacheDuration: __integerMin0Max600,
@as("ConnectionRetryInterval") connectionRetryInterval: __integerMin0
}
type hlsInputSettings = {
@as("RetryInterval") retryInterval: __integerMin0,
@as("Retries") retries: __integerMin0,
@as("BufferSegments") bufferSegments: __integerMin0,
@as("Bandwidth") bandwidth: __integerMin0
}
type hlsId3SegmentTaggingScheduleActionSettings = {
@as("Tag") tag: option<__string>
}
type hlsBasicPutSettings = {
@as("RestartDelay") restartDelay: __integerMin0Max15,
@as("NumRetries") numRetries: __integerMin0,
@as("FilecacheDuration") filecacheDuration: __integerMin0Max600,
@as("ConnectionRetryInterval") connectionRetryInterval: __integerMin0
}
type hlsAkamaiSettings = {
@as("Token") token: __string,
@as("Salt") salt: __string,
@as("RestartDelay") restartDelay: __integerMin0Max15,
@as("NumRetries") numRetries: __integerMin0,
@as("HttpTransferMode") httpTransferMode: hlsAkamaiHttpTransferMode,
@as("FilecacheDuration") filecacheDuration: __integerMin0Max600,
@as("ConnectionRetryInterval") connectionRetryInterval: __integerMin0
}
type hdr10Settings = {
@as("MaxFall") maxFall: __integerMin0Max32768,
@as("MaxCll") maxCll: __integerMin0Max32768
}
type h264ColorSpaceSettings = {
@as("Rec709Settings") rec709Settings: rec709Settings,
@as("Rec601Settings") rec601Settings: rec601Settings,
@as("ColorSpacePassthroughSettings") colorSpacePassthroughSettings: colorSpacePassthroughSettings
}
type frameCaptureSettings = {
@as("CaptureIntervalUnits") captureIntervalUnits: frameCaptureIntervalUnit,
@as("CaptureInterval") captureInterval: __integerMin1Max3600000
}
type frameCaptureS3Settings = {
@as("CannedAcl") cannedAcl: s3CannedAcl
}
type frameCaptureOutputSettings = {
@as("NameModifier") nameModifier: __string
}
type followModeScheduleActionStartSettings = {
@as("ReferenceActionName") referenceActionName: option<__string>,
@as("FollowPoint") followPoint: option<followPoint>
}
type fmp4HlsSettings = {
@as("TimedMetadataBehavior") timedMetadataBehavior: fmp4TimedMetadataBehavior,
@as("NielsenId3Behavior") nielsenId3Behavior: fmp4NielsenId3Behavior,
@as("AudioRenditionSets") audioRenditionSets: __string
}
type fixedModeScheduleActionStartSettings = {
@as("Time") time: option<__string>
}
type fecOutputSettings = {
@as("RowLength") rowLength: __integerMin1Max20,
@as("IncludeFec") includeFec: fecOutputIncludeFec,
@as("ColumnDepth") columnDepth: __integerMin4Max20
}
type featureActivations = {
@as("InputPrepareScheduleActions") inputPrepareScheduleActions: featureActivationsInputPrepareScheduleActions
}
type embeddedSourceSettings = {
@as("Source608TrackNumber") source608TrackNumber: __integerMin1Max5,
@as("Source608ChannelNumber") source608ChannelNumber: __integerMin1Max4,
@as("Scte20Detection") scte20Detection: embeddedScte20Detection,
@as("Convert608To708") convert608To708: embeddedConvert608To708
}
type ebuTtDDestinationSettings = {
@as("StyleControl") styleControl: ebuTtDDestinationStyleControl,
@as("FontFamily") fontFamily: __string,
@as("FillLineGap") fillLineGap: ebuTtDFillLineGapControl,
@as("CopyrightHolder") copyrightHolder: __stringMax1000
}
type eac3Settings = {
@as("SurroundMode") surroundMode: eac3SurroundMode,
@as("SurroundExMode") surroundExMode: eac3SurroundExMode,
@as("StereoDownmix") stereoDownmix: eac3StereoDownmix,
@as("PhaseControl") phaseControl: eac3PhaseControl,
@as("PassthroughControl") passthroughControl: eac3PassthroughControl,
@as("MetadataControl") metadataControl: eac3MetadataControl,
@as("LtRtSurroundMixLevel") ltRtSurroundMixLevel: __double,
@as("LtRtCenterMixLevel") ltRtCenterMixLevel: __double,
@as("LoRoSurroundMixLevel") loRoSurroundMixLevel: __double,
@as("LoRoCenterMixLevel") loRoCenterMixLevel: __double,
@as("LfeFilter") lfeFilter: eac3LfeFilter,
@as("LfeControl") lfeControl: eac3LfeControl,
@as("DrcRf") drcRf: eac3DrcRf,
@as("DrcLine") drcLine: eac3DrcLine,
@as("Dialnorm") dialnorm: __integerMin1Max31,
@as("DcFilter") dcFilter: eac3DcFilter,
@as("CodingMode") codingMode: eac3CodingMode,
@as("BitstreamMode") bitstreamMode: eac3BitstreamMode,
@as("Bitrate") bitrate: __double,
@as("AttenuationControl") attenuationControl: eac3AttenuationControl
}
type dvbTdtSettings = {
@as("RepInterval") repInterval: __integerMin1000Max30000
}
type dvbSubSourceSettings = {
@as("Pid") pid: __integerMin1
}
type dvbSdtSettings = {
@as("ServiceProviderName") serviceProviderName: __stringMin1Max256,
@as("ServiceName") serviceName: __stringMin1Max256,
@as("RepInterval") repInterval: __integerMin25Max2000,
@as("OutputSdt") outputSdt: dvbSdtOutputSdt
}
type dvbNitSettings = {
@as("RepInterval") repInterval: __integerMin25Max10000,
@as("NetworkName") networkName: option<__stringMin1Max256>,
@as("NetworkId") networkId: option<__integerMin0Max65536>
}
type channelEgressEndpoint = {
@as("SourceIp") sourceIp: __string
}
type cdiInputSpecification = {
@as("Resolution") resolution: cdiInputResolution
}
type captionRectangle = {
@as("Width") width: option<__doubleMin0Max100>,
@as("TopOffset") topOffset: option<__doubleMin0Max100>,
@as("LeftOffset") leftOffset: option<__doubleMin0Max100>,
@as("Height") height: option<__doubleMin0Max100>
}
type captionLanguageMapping = {
@as("LanguageDescription") languageDescription: option<__stringMin1>,
@as("LanguageCode") languageCode: option<__stringMin3Max3>,
@as("CaptionChannel") captionChannel: option<__integerMin1Max4>
}
type batchSuccessfulResultModel = {
@as("State") state: __string,
@as("Id") id: __string,
@as("Arn") arn: __string
}
type batchFailedResultModel = {
@as("Message") message: __string,
@as("Id") id: __string,
@as("Code") code: __string,
@as("Arn") arn: __string
}
type audioTrack = {
@as("Track") track: option<__integerMin1>
}
type audioSilenceFailoverSettings = {
@as("AudioSilenceThresholdMsec") audioSilenceThresholdMsec: __integerMin1000,
@as("AudioSelectorName") audioSelectorName: option<__string>
}
type audioPidSelection = {
@as("Pid") pid: option<__integerMin0Max8191>
}
type audioNormalizationSettings = {
@as("TargetLkfs") targetLkfs: __doubleMinNegative59Max0,
@as("AlgorithmControl") algorithmControl: audioNormalizationAlgorithmControl,
@as("Algorithm") algorithm: audioNormalizationAlgorithm
}
type audioLanguageSelection = {
@as("LanguageSelectionPolicy") languageSelectionPolicy: audioLanguageSelectionPolicy,
@as("LanguageCode") languageCode: option<__string>
}
type archiveS3Settings = {
@as("CannedAcl") cannedAcl: s3CannedAcl
}
type ancillarySourceSettings = {
@as("SourceAncillaryChannelNumber") sourceAncillaryChannelNumber: __integerMin1Max4
}
type ac3Settings = {
@as("MetadataControl") metadataControl: ac3MetadataControl,
@as("LfeFilter") lfeFilter: ac3LfeFilter,
@as("DrcProfile") drcProfile: ac3DrcProfile,
@as("Dialnorm") dialnorm: __integerMin1Max31,
@as("CodingMode") codingMode: ac3CodingMode,
@as("BitstreamMode") bitstreamMode: ac3BitstreamMode,
@as("Bitrate") bitrate: __double
}
type aacSettings = {
@as("VbrQuality") vbrQuality: aacVbrQuality,
@as("Spec") spec: aacSpec,
@as("SampleRate") sampleRate: __double,
@as("RawFormat") rawFormat: aacRawFormat,
@as("RateControlMode") rateControlMode: aacRateControlMode,
@as("Profile") profile: aacProfile,
@as("InputType") inputType: aacInputType,
@as("CodingMode") codingMode: aacCodingMode,
@as("Bitrate") bitrate: __double
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
@as("SubnetIds") subnetIds: __listOf__string,
@as("SecurityGroupIds") securityGroupIds: __listOf__string,
@as("NetworkInterfaceIds") networkInterfaceIds: __listOf__string,
@as("AvailabilityZones") availabilityZones: __listOf__string
}
type vpcOutputSettings = {
@as("SubnetIds") subnetIds: option<__listOf__string>,
@as("SecurityGroupIds") securityGroupIds: __listOf__string,
@as("PublicAddressAllocationIds") publicAddressAllocationIds: __listOf__string
}
type videoSelectorSettings = {
@as("VideoSelectorProgramId") videoSelectorProgramId: videoSelectorProgramId,
@as("VideoSelectorPid") videoSelectorPid: videoSelectorPid
}
type videoSelectorColorSpaceSettings = {
@as("Hdr10Settings") hdr10Settings: hdr10Settings
}
type teletextSourceSettings = {
@as("PageNumber") pageNumber: __string,
@as("OutputRectangle") outputRectangle: captionRectangle
}
type staticKeySettings = {
@as("StaticKeyValue") staticKeyValue: option<__stringMin32Max32>,
@as("KeyProviderServer") keyProviderServer: inputLocation
}
type staticImageActivateScheduleActionSettings = {
@as("Width") width: __integerMin1,
@as("Opacity") opacity: __integerMin0Max100,
@as("Layer") layer: __integerMin0Max7,
@as("ImageY") imageY: __integerMin0,
@as("ImageX") imageX: __integerMin0,
@as("Image") image: option<inputLocation>,
@as("Height") height: __integerMin1,
@as("FadeOut") fadeOut: __integerMin0,
@as("FadeIn") fadeIn: __integerMin0,
@as("Duration") duration: __integerMin0
}
type standardHlsSettings = {
@as("M3u8Settings") m3u8Settings: option<m3u8Settings>,
@as("AudioRenditionSets") audioRenditionSets: __string
}
type scte35SegmentationDescriptor = {
@as("SubSegmentsExpected") subSegmentsExpected: __integerMin0Max255,
@as("SubSegmentNum") subSegmentNum: __integerMin0Max255,
@as("SegmentsExpected") segmentsExpected: __integerMin0Max255,
@as("SegmentationUpidType") segmentationUpidType: __integerMin0Max255,
@as("SegmentationUpid") segmentationUpid: __string,
@as("SegmentationTypeId") segmentationTypeId: __integerMin0Max255,
@as("SegmentationEventId") segmentationEventId: option<__longMin0Max4294967295>,
@as("SegmentationDuration") segmentationDuration: __longMin0Max1099511627775,
@as("SegmentationCancelIndicator") segmentationCancelIndicator: option<scte35SegmentationCancelIndicator>,
@as("SegmentNum") segmentNum: __integerMin0Max255,
@as("DeliveryRestrictions") deliveryRestrictions: scte35DeliveryRestrictions
}
type scheduleActionStartSettings = {
@as("ImmediateModeScheduleActionStartSettings") immediateModeScheduleActionStartSettings: immediateModeScheduleActionStartSettings,
@as("FollowModeScheduleActionStartSettings") followModeScheduleActionStartSettings: followModeScheduleActionStartSettings,
@as("FixedModeScheduleActionStartSettings") fixedModeScheduleActionStartSettings: fixedModeScheduleActionStartSettings
}
type rtmpOutputSettings = {
@as("NumRetries") numRetries: __integerMin0,
@as("Destination") destination: option<outputLocationRef>,
@as("ConnectionRetryInterval") connectionRetryInterval: __integerMin1,
@as("CertificateMode") certificateMode: rtmpOutputCertificateMode
}
type rtmpGroupSettings = {
@as("RestartDelay") restartDelay: __integerMin0,
@as("InputLossAction") inputLossAction: inputLossActionForRtmpOut,
@as("CaptionData") captionData: rtmpCaptionData,
@as("CacheLength") cacheLength: __integerMin30,
@as("CacheFullBehavior") cacheFullBehavior: rtmpCacheFullBehavior,
@as("AuthenticationScheme") authenticationScheme: authenticationScheme,
@as("AdMarkers") adMarkers: __listOfRtmpAdMarkers
}
type reservation = {
@as("UsagePrice") usagePrice: __double,
@as("Tags") tags: tags,
@as("State") state: reservationState,
@as("Start") start: __string,
@as("ResourceSpecification") resourceSpecification: reservationResourceSpecification,
@as("ReservationId") reservationId: __string,
@as("Region") region: __string,
@as("OfferingType") offeringType: offeringType,
@as("OfferingId") offeringId: __string,
@as("OfferingDescription") offeringDescription: __string,
@as("Name") name: __string,
@as("FixedPrice") fixedPrice: __double,
@as("End") end: __string,
@as("DurationUnits") durationUnits: offeringDurationUnits,
@as("Duration") duration: __integer,
@as("CurrencyCode") currencyCode: __string,
@as("Count") count: __integer,
@as("Arn") arn: __string
}
type offering = {
@as("UsagePrice") usagePrice: __double,
@as("ResourceSpecification") resourceSpecification: reservationResourceSpecification,
@as("Region") region: __string,
@as("OfferingType") offeringType: offeringType,
@as("OfferingId") offeringId: __string,
@as("OfferingDescription") offeringDescription: __string,
@as("FixedPrice") fixedPrice: __double,
@as("DurationUnits") durationUnits: offeringDurationUnits,
@as("Duration") duration: __integer,
@as("CurrencyCode") currencyCode: __string,
@as("Arn") arn: __string
}
type networkInputSettings = {
@as("ServerValidation") serverValidation: networkInputServerValidation,
@as("HlsInputSettings") hlsInputSettings: hlsInputSettings
}
type multiplexVideoSettings = {
@as("StatmuxSettings") statmuxSettings: multiplexStatmuxVideoSettings,
@as("ConstantBitrate") constantBitrate: __integerMin100000Max100000000
}
type multiplexSummary = {
@as("Tags") tags: tags,
@as("State") state: multiplexState,
@as("ProgramCount") programCount: __integer,
@as("PipelinesRunningCount") pipelinesRunningCount: __integer,
@as("Name") name: __string,
@as("MultiplexSettings") multiplexSettings: multiplexSettingsSummary,
@as("Id") id: __string,
@as("AvailabilityZones") availabilityZones: __listOf__string,
@as("Arn") arn: __string
}
type multiplexProgramPacketIdentifiersMap = {
@as("VideoPid") videoPid: __integer,
@as("TimedMetadataPid") timedMetadataPid: __integer,
@as("Scte35Pid") scte35Pid: __integer,
@as("Scte27Pids") scte27Pids: __listOf__integer,
@as("PrivateMetadataPid") privateMetadataPid: __integer,
@as("PmtPid") pmtPid: __integer,
@as("PcrPid") pcrPid: __integer,
@as("KlvDataPids") klvDataPids: __listOf__integer,
@as("EtvSignalPid") etvSignalPid: __integer,
@as("EtvPlatformPid") etvPlatformPid: __integer,
@as("DvbTeletextPid") dvbTeletextPid: __integer,
@as("DvbSubPids") dvbSubPids: __listOf__integer,
@as("AudioPids") audioPids: __listOf__integer
}
type multiplexOutputSettings = {
@as("Destination") destination: option<outputLocationRef>
}
type multiplexOutputDestination = {
@as("MediaConnectSettings") mediaConnectSettings: multiplexMediaConnectOutputDestinationSettings
}
type msSmoothGroupSettings = {
@as("TimestampOffsetMode") timestampOffsetMode: smoothGroupTimestampOffsetMode,
@as("TimestampOffset") timestampOffset: __string,
@as("StreamManifestBehavior") streamManifestBehavior: smoothGroupStreamManifestBehavior,
@as("SparseTrackType") sparseTrackType: smoothGroupSparseTrackType,
@as("SendDelayMs") sendDelayMs: __integerMin0Max10000,
@as("SegmentationMode") segmentationMode: smoothGroupSegmentationMode,
@as("RestartDelay") restartDelay: __integerMin0,
@as("NumRetries") numRetries: __integerMin0,
@as("InputLossAction") inputLossAction: inputLossActionForMsSmoothOut,
@as("FragmentLength") fragmentLength: __integerMin1,
@as("FilecacheDuration") filecacheDuration: __integerMin0,
@as("EventStopBehavior") eventStopBehavior: smoothGroupEventStopBehavior,
@as("EventIdMode") eventIdMode: smoothGroupEventIdMode,
@as("EventId") eventId: __string,
@as("Destination") destination: option<outputLocationRef>,
@as("ConnectionRetryInterval") connectionRetryInterval: __integerMin0,
@as("CertificateMode") certificateMode: smoothGroupCertificateMode,
@as("AudioOnlyTimecodeControl") audioOnlyTimecodeControl: smoothGroupAudioOnlyTimecodeControl,
@as("AcquisitionPointId") acquisitionPointId: __string
}
type mpeg2FilterSettings = {
@as("TemporalFilterSettings") temporalFilterSettings: temporalFilterSettings
}
type motionGraphicsConfiguration = {
@as("MotionGraphicsSettings") motionGraphicsSettings: option<motionGraphicsSettings>,
@as("MotionGraphicsInsertion") motionGraphicsInsertion: motionGraphicsInsertion
}
type mediaPackageGroupSettings = {
@as("Destination") destination: option<outputLocationRef>
}
type m2tsSettings = {
@as("VideoPid") videoPid: __string,
@as("TransportStreamId") transportStreamId: __integerMin0Max65535,
@as("TimedMetadataPid") timedMetadataPid: __string,
@as("TimedMetadataBehavior") timedMetadataBehavior: m2tsTimedMetadataBehavior,
@as("SegmentationTime") segmentationTime: __doubleMin1,
@as("SegmentationStyle") segmentationStyle: m2tsSegmentationStyle,
@as("SegmentationMarkers") segmentationMarkers: m2tsSegmentationMarkers,
@as("Scte35Pid") scte35Pid: __string,
@as("Scte35Control") scte35Control: m2tsScte35Control,
@as("Scte27Pids") scte27Pids: __string,
@as("RateMode") rateMode: m2tsRateMode,
@as("ProgramNum") programNum: __integerMin0Max65535,
@as("PmtPid") pmtPid: __string,
@as("PmtInterval") pmtInterval: __integerMin0Max1000,
@as("PcrPid") pcrPid: __string,
@as("PcrPeriod") pcrPeriod: __integerMin0Max500,
@as("PcrControl") pcrControl: m2tsPcrControl,
@as("PatInterval") patInterval: __integerMin0Max1000,
@as("NullPacketBitrate") nullPacketBitrate: __doubleMin0,
@as("NielsenId3Behavior") nielsenId3Behavior: m2tsNielsenId3Behavior,
@as("KlvDataPids") klvDataPids: __string,
@as("Klv") klv: m2tsKlv,
@as("FragmentTime") fragmentTime: __doubleMin0,
@as("EtvSignalPid") etvSignalPid: __string,
@as("EtvPlatformPid") etvPlatformPid: __string,
@as("EsRateInPes") esRateInPes: m2tsEsRateInPes,
@as("EcmPid") ecmPid: __string,
@as("EbpPlacement") ebpPlacement: m2tsEbpPlacement,
@as("EbpLookaheadMs") ebpLookaheadMs: __integerMin0Max10000,
@as("EbpAudioInterval") ebpAudioInterval: m2tsAudioInterval,
@as("Ebif") ebif: m2tsEbifControl,
@as("DvbTeletextPid") dvbTeletextPid: __string,
@as("DvbTdtSettings") dvbTdtSettings: dvbTdtSettings,
@as("DvbSubPids") dvbSubPids: __string,
@as("DvbSdtSettings") dvbSdtSettings: dvbSdtSettings,
@as("DvbNitSettings") dvbNitSettings: dvbNitSettings,
@as("CcDescriptor") ccDescriptor: m2tsCcDescriptor,
@as("BufferModel") bufferModel: m2tsBufferModel,
@as("Bitrate") bitrate: __integerMin0,
@as("AudioStreamType") audioStreamType: m2tsAudioStreamType,
@as("AudioPids") audioPids: __string,
@as("AudioFramesPerPes") audioFramesPerPes: __integerMin0,
@as("AudioBufferModel") audioBufferModel: m2tsAudioBufferModel,
@as("AribCaptionsPidControl") aribCaptionsPidControl: m2tsAribCaptionsPidControl,
@as("AribCaptionsPid") aribCaptionsPid: __string,
@as("Arib") arib: m2tsArib,
@as("AbsentInputAudioBehavior") absentInputAudioBehavior: m2tsAbsentInputAudioBehavior
}
type inputVpcRequest = {
@as("SubnetIds") subnetIds: option<__listOf__string>,
@as("SecurityGroupIds") securityGroupIds: __listOf__string
}
type inputLossBehavior = {
@as("RepeatFrameMsec") repeatFrameMsec: __integerMin0Max1000000,
@as("InputLossImageType") inputLossImageType: inputLossImageType,
@as("InputLossImageSlate") inputLossImageSlate: inputLocation,
@as("InputLossImageColor") inputLossImageColor: __stringMin6Max6,
@as("BlackFrameMsec") blackFrameMsec: __integerMin0Max1000000
}
type inputDeviceNetworkSettings = {
@as("SubnetMask") subnetMask: __string,
@as("IpScheme") ipScheme: inputDeviceIpScheme,
@as("IpAddress") ipAddress: __string,
@as("Gateway") gateway: __string,
@as("DnsAddresses") dnsAddresses: __listOf__string
}
type inputDestination = {
@as("Vpc") vpc: inputDestinationVpc,
@as("Url") url: __string,
@as("Port") port: __string,
@as("Ip") ip: __string
}
type inputClippingSettings = {
@as("StopTimecode") stopTimecode: stopTimecode,
@as("StartTimecode") startTimecode: startTimecode,
@as("InputTimecodeSource") inputTimecodeSource: option<inputTimecodeSource>
}
type hlsCdnSettings = {
@as("HlsWebdavSettings") hlsWebdavSettings: hlsWebdavSettings,
@as("HlsS3Settings") hlsS3Settings: hlsS3Settings,
@as("HlsMediaStoreSettings") hlsMediaStoreSettings: hlsMediaStoreSettings,
@as("HlsBasicPutSettings") hlsBasicPutSettings: hlsBasicPutSettings,
@as("HlsAkamaiSettings") hlsAkamaiSettings: hlsAkamaiSettings
}
type h265FilterSettings = {
@as("TemporalFilterSettings") temporalFilterSettings: temporalFilterSettings
}
type h265ColorSpaceSettings = {
@as("Rec709Settings") rec709Settings: rec709Settings,
@as("Rec601Settings") rec601Settings: rec601Settings,
@as("Hdr10Settings") hdr10Settings: hdr10Settings,
@as("ColorSpacePassthroughSettings") colorSpacePassthroughSettings: colorSpacePassthroughSettings
}
type h264FilterSettings = {
@as("TemporalFilterSettings") temporalFilterSettings: temporalFilterSettings
}
type frameCaptureCdnSettings = {
@as("FrameCaptureS3Settings") frameCaptureS3Settings: frameCaptureS3Settings
}
type failoverConditionSettings = {
@as("VideoBlackSettings") videoBlackSettings: videoBlackFailoverSettings,
@as("InputLossSettings") inputLossSettings: inputLossFailoverSettings,
@as("AudioSilenceSettings") audioSilenceSettings: audioSilenceFailoverSettings
}
type dvbSubDestinationSettings = {
@as("YPosition") yPosition: __integerMin0,
@as("XPosition") xPosition: __integerMin0,
@as("TeletextGridControl") teletextGridControl: dvbSubDestinationTeletextGridControl,
@as("ShadowYOffset") shadowYOffset: __integer,
@as("ShadowXOffset") shadowXOffset: __integer,
@as("ShadowOpacity") shadowOpacity: __integerMin0Max255,
@as("ShadowColor") shadowColor: dvbSubDestinationShadowColor,
@as("OutlineSize") outlineSize: __integerMin0Max10,
@as("OutlineColor") outlineColor: dvbSubDestinationOutlineColor,
@as("FontSize") fontSize: __string,
@as("FontResolution") fontResolution: __integerMin96Max600,
@as("FontOpacity") fontOpacity: __integerMin0Max255,
@as("FontColor") fontColor: dvbSubDestinationFontColor,
@as("Font") font: inputLocation,
@as("BackgroundOpacity") backgroundOpacity: __integerMin0Max255,
@as("BackgroundColor") backgroundColor: dvbSubDestinationBackgroundColor,
@as("Alignment") alignment: dvbSubDestinationAlignment
}
type burnInDestinationSettings = {
@as("YPosition") yPosition: __integerMin0,
@as("XPosition") xPosition: __integerMin0,
@as("TeletextGridControl") teletextGridControl: burnInTeletextGridControl,
@as("ShadowYOffset") shadowYOffset: __integer,
@as("ShadowXOffset") shadowXOffset: __integer,
@as("ShadowOpacity") shadowOpacity: __integerMin0Max255,
@as("ShadowColor") shadowColor: burnInShadowColor,
@as("OutlineSize") outlineSize: __integerMin0Max10,
@as("OutlineColor") outlineColor: burnInOutlineColor,
@as("FontSize") fontSize: __string,
@as("FontResolution") fontResolution: __integerMin96Max600,
@as("FontOpacity") fontOpacity: __integerMin0Max255,
@as("FontColor") fontColor: burnInFontColor,
@as("Font") font: inputLocation,
@as("BackgroundOpacity") backgroundOpacity: __integerMin0Max255,
@as("BackgroundColor") backgroundColor: burnInBackgroundColor,
@as("Alignment") alignment: burnInAlignment
}
type blackoutSlate = {
@as("State") state: blackoutSlateState,
@as("NetworkId") networkId: __stringMin34Max34,
@as("NetworkEndBlackoutImage") networkEndBlackoutImage: inputLocation,
@as("NetworkEndBlackout") networkEndBlackout: blackoutSlateNetworkEndBlackout,
@as("BlackoutSlateImage") blackoutSlateImage: inputLocation
}
type batchScheduleActionDeleteRequest = {
@as("ActionNames") actionNames: option<__listOf__string>
}
type availSettings = {
@as("Scte35TimeSignalApos") scte35TimeSignalApos: scte35TimeSignalApos,
@as("Scte35SpliceInsert") scte35SpliceInsert: scte35SpliceInsert
}
type availBlanking = {
@as("State") state: availBlankingState,
@as("AvailBlankingImage") availBlankingImage: inputLocation
}
type audioOnlyHlsSettings = {
@as("SegmentType") segmentType: audioOnlyHlsSegmentType,
@as("AudioTrackType") audioTrackType: audioOnlyHlsTrackType,
@as("AudioOnlyImage") audioOnlyImage: inputLocation,
@as("AudioGroupId") audioGroupId: __string
}
type audioCodecSettings = {
@as("WavSettings") wavSettings: wavSettings,
@as("PassThroughSettings") passThroughSettings: passThroughSettings,
@as("Mp2Settings") mp2Settings: mp2Settings,
@as("Eac3Settings") eac3Settings: eac3Settings,
@as("Ac3Settings") ac3Settings: ac3Settings,
@as("AacSettings") aacSettings: aacSettings
}
type archiveCdnSettings = {
@as("ArchiveS3Settings") archiveS3Settings: archiveS3Settings
}
type __listOfReservation = array<reservation>
type __listOfOffering = array<offering>
type __listOfMultiplexSummary = array<multiplexSummary>
type __listOfMultiplexOutputDestination = array<multiplexOutputDestination>
type __listOfInputDestination = array<inputDestination>
type videoSelector = {
@as("SelectorSettings") selectorSettings: videoSelectorSettings,
@as("ColorSpaceUsage") colorSpaceUsage: videoSelectorColorSpaceUsage,
@as("ColorSpaceSettings") colorSpaceSettings: videoSelectorColorSpaceSettings,
@as("ColorSpace") colorSpace: videoSelectorColorSpace
}
type udpContainerSettings = {
@as("M2tsSettings") m2tsSettings: m2tsSettings
}
type scte35DescriptorSettings = {
@as("SegmentationDescriptorScte35DescriptorSettings") segmentationDescriptorScte35DescriptorSettings: option<scte35SegmentationDescriptor>
}
type pauseStateScheduleActionSettings = {
@as("Pipelines") pipelines: __listOfPipelinePauseStateSettings
}
type outputDestination = {
@as("Settings") settings: __listOfOutputDestinationSettings,
@as("MultiplexSettings") multiplexSettings: multiplexProgramChannelDestinationSettings,
@as("MediaPackageSettings") mediaPackageSettings: __listOfMediaPackageOutputDestinationSettings,
@as("Id") id: __string
}
type multiplexProgramSettings = {
@as("VideoSettings") videoSettings: multiplexVideoSettings,
@as("ServiceDescriptor") serviceDescriptor: multiplexProgramServiceDescriptor,
@as("ProgramNumber") programNumber: option<__integerMin0Max65535>,
@as("PreferredChannelPipeline") preferredChannelPipeline: preferredChannelPipeline
}
type mpeg2Settings = {
@as("TimecodeInsertion") timecodeInsertion: mpeg2TimecodeInsertionBehavior,
@as("SubgopLength") subgopLength: mpeg2SubGopLength,
@as("ScanType") scanType: mpeg2ScanType,
@as("GopSizeUnits") gopSizeUnits: mpeg2GopSizeUnits,
@as("GopSize") gopSize: __double,
@as("GopNumBFrames") gopNumBFrames: __integerMin0Max7,
@as("GopClosedCadence") gopClosedCadence: __integerMin0,
@as("FramerateNumerator") framerateNumerator: option<__integerMin1>,
@as("FramerateDenominator") framerateDenominator: option<__integerMin1>,
@as("FixedAfd") fixedAfd: fixedAfd,
@as("FilterSettings") filterSettings: mpeg2FilterSettings,
@as("DisplayAspectRatio") displayAspectRatio: mpeg2DisplayRatio,
@as("ColorSpace") colorSpace: mpeg2ColorSpace,
@as("ColorMetadata") colorMetadata: mpeg2ColorMetadata,
@as("AfdSignaling") afdSignaling: afdSignaling,
@as("AdaptiveQuantization") adaptiveQuantization: mpeg2AdaptiveQuantization
}
type keyProviderSettings = {
@as("StaticKeySettings") staticKeySettings: staticKeySettings
}
type inputSwitchScheduleActionSettings = {
@as("UrlPath") urlPath: __listOf__string,
@as("InputClippingSettings") inputClippingSettings: inputClippingSettings,
@as("InputAttachmentNameReference") inputAttachmentNameReference: option<__string>
}
type inputSecurityGroup = {
@as("WhitelistRules") whitelistRules: __listOfInputWhitelistRule,
@as("Tags") tags: tags,
@as("State") state: inputSecurityGroupState,
@as("Inputs") inputs: __listOf__string,
@as("Id") id: __string,
@as("Arn") arn: __string
}
type inputPrepareScheduleActionSettings = {
@as("UrlPath") urlPath: __listOf__string,
@as("InputClippingSettings") inputClippingSettings: inputClippingSettings,
@as("InputAttachmentNameReference") inputAttachmentNameReference: __string
}
type inputDeviceSummary = {
@as("UhdDeviceSettings") uhdDeviceSettings: inputDeviceUhdSettings,
@as("Type") type_: inputDeviceType,
@as("SerialNumber") serialNumber: __string,
@as("NetworkSettings") networkSettings: inputDeviceNetworkSettings,
@as("Name") name: __string,
@as("MacAddress") macAddress: __string,
@as("Id") id: __string,
@as("HdDeviceSettings") hdDeviceSettings: inputDeviceHdSettings,
@as("DeviceUpdateStatus") deviceUpdateStatus: deviceUpdateStatus,
@as("DeviceSettingsSyncState") deviceSettingsSyncState: deviceSettingsSyncState,
@as("ConnectionState") connectionState: inputDeviceConnectionState,
@as("Arn") arn: __string
}
type hlsSettings = {
@as("StandardHlsSettings") standardHlsSettings: standardHlsSettings,
@as("FrameCaptureHlsSettings") frameCaptureHlsSettings: frameCaptureHlsSettings,
@as("Fmp4HlsSettings") fmp4HlsSettings: fmp4HlsSettings,
@as("AudioOnlyHlsSettings") audioOnlyHlsSettings: audioOnlyHlsSettings
}
type h265Settings = {
@as("TimecodeInsertion") timecodeInsertion: h265TimecodeInsertionBehavior,
@as("Tier") tier: h265Tier,
@as("Slices") slices: __integerMin1Max16,
@as("SceneChangeDetect") sceneChangeDetect: h265SceneChangeDetect,
@as("ScanType") scanType: h265ScanType,
@as("RateControlMode") rateControlMode: h265RateControlMode,
@as("QvbrQualityLevel") qvbrQualityLevel: __integerMin1Max10,
@as("Profile") profile: h265Profile,
@as("ParNumerator") parNumerator: __integerMin1,
@as("ParDenominator") parDenominator: __integerMin1,
@as("MinIInterval") minIInterval: __integerMin0Max30,
@as("MaxBitrate") maxBitrate: __integerMin100000Max40000000,
@as("LookAheadRateControl") lookAheadRateControl: h265LookAheadRateControl,
@as("Level") level: h265Level,
@as("GopSizeUnits") gopSizeUnits: h265GopSizeUnits,
@as("GopSize") gopSize: __double,
@as("GopClosedCadence") gopClosedCadence: __integerMin0,
@as("FramerateNumerator") framerateNumerator: option<__integerMin1>,
@as("FramerateDenominator") framerateDenominator: option<__integerMin1Max3003>,
@as("FlickerAq") flickerAq: h265FlickerAq,
@as("FixedAfd") fixedAfd: fixedAfd,
@as("FilterSettings") filterSettings: h265FilterSettings,
@as("ColorSpaceSettings") colorSpaceSettings: h265ColorSpaceSettings,
@as("ColorMetadata") colorMetadata: h265ColorMetadata,
@as("BufSize") bufSize: __integerMin100000Max80000000,
@as("Bitrate") bitrate: __integerMin100000Max40000000,
@as("AlternativeTransferFunction") alternativeTransferFunction: h265AlternativeTransferFunction,
@as("AfdSignaling") afdSignaling: afdSignaling,
@as("AdaptiveQuantization") adaptiveQuantization: h265AdaptiveQuantization
}
type h264Settings = {
@as("TimecodeInsertion") timecodeInsertion: h264TimecodeInsertionBehavior,
@as("TemporalAq") temporalAq: h264TemporalAq,
@as("Syntax") syntax: h264Syntax,
@as("SubgopLength") subgopLength: h264SubGopLength,
@as("SpatialAq") spatialAq: h264SpatialAq,
@as("Softness") softness: __integerMin0Max128,
@as("Slices") slices: __integerMin1Max32,
@as("SceneChangeDetect") sceneChangeDetect: h264SceneChangeDetect,
@as("ScanType") scanType: h264ScanType,
@as("RateControlMode") rateControlMode: h264RateControlMode,
@as("QvbrQualityLevel") qvbrQualityLevel: __integerMin1Max10,
@as("QualityLevel") qualityLevel: h264QualityLevel,
@as("Profile") profile: h264Profile,
@as("ParNumerator") parNumerator: __integerMin1,
@as("ParDenominator") parDenominator: __integerMin1,
@as("ParControl") parControl: h264ParControl,
@as("NumRefFrames") numRefFrames: __integerMin1Max6,
@as("MinIInterval") minIInterval: __integerMin0Max30,
@as("MaxBitrate") maxBitrate: __integerMin1000,
@as("LookAheadRateControl") lookAheadRateControl: h264LookAheadRateControl,
@as("Level") level: h264Level,
@as("GopSizeUnits") gopSizeUnits: h264GopSizeUnits,
@as("GopSize") gopSize: __double,
@as("GopNumBFrames") gopNumBFrames: __integerMin0Max7,
@as("GopClosedCadence") gopClosedCadence: __integerMin0,
@as("GopBReference") gopBReference: h264GopBReference,
@as("FramerateNumerator") framerateNumerator: __integerMin1,
@as("FramerateDenominator") framerateDenominator: __integerMin1,
@as("FramerateControl") framerateControl: h264FramerateControl,
@as("ForceFieldPictures") forceFieldPictures: h264ForceFieldPictures,
@as("FlickerAq") flickerAq: h264FlickerAq,
@as("FixedAfd") fixedAfd: fixedAfd,
@as("FilterSettings") filterSettings: h264FilterSettings,
@as("EntropyEncoding") entropyEncoding: h264EntropyEncoding,
@as("ColorSpaceSettings") colorSpaceSettings: h264ColorSpaceSettings,
@as("ColorMetadata") colorMetadata: h264ColorMetadata,
@as("BufSize") bufSize: __integerMin0,
@as("BufFillPct") bufFillPct: __integerMin0Max100,
@as("Bitrate") bitrate: __integerMin1000,
@as("AfdSignaling") afdSignaling: afdSignaling,
@as("AdaptiveQuantization") adaptiveQuantization: h264AdaptiveQuantization
}
type globalConfiguration = {
@as("SupportLowFramerateInputs") supportLowFramerateInputs: globalConfigurationLowFramerateInputs,
@as("OutputTimingSource") outputTimingSource: globalConfigurationOutputTimingSource,
@as("OutputLockingMode") outputLockingMode: globalConfigurationOutputLockingMode,
@as("InputLossBehavior") inputLossBehavior: inputLossBehavior,
@as("InputEndAction") inputEndAction: globalConfigurationInputEndAction,
@as("InitialAudioGain") initialAudioGain: __integerMinNegative60Max60
}
type frameCaptureGroupSettings = {
@as("FrameCaptureCdnSettings") frameCaptureCdnSettings: frameCaptureCdnSettings,
@as("Destination") destination: option<outputLocationRef>
}
type failoverCondition = {
@as("FailoverConditionSettings") failoverConditionSettings: failoverConditionSettings
}
type captionSelectorSettings = {
@as("TeletextSourceSettings") teletextSourceSettings: teletextSourceSettings,
@as("Scte27SourceSettings") scte27SourceSettings: scte27SourceSettings,
@as("Scte20SourceSettings") scte20SourceSettings: scte20SourceSettings,
@as("EmbeddedSourceSettings") embeddedSourceSettings: embeddedSourceSettings,
@as("DvbSubSourceSettings") dvbSubSourceSettings: dvbSubSourceSettings,
@as("AribSourceSettings") aribSourceSettings: aribSourceSettings,
@as("AncillarySourceSettings") ancillarySourceSettings: ancillarySourceSettings
}
type captionDestinationSettings = {
@as("WebvttDestinationSettings") webvttDestinationSettings: webvttDestinationSettings,
@as("TtmlDestinationSettings") ttmlDestinationSettings: ttmlDestinationSettings,
@as("TeletextDestinationSettings") teletextDestinationSettings: teletextDestinationSettings,
@as("SmpteTtDestinationSettings") smpteTtDestinationSettings: smpteTtDestinationSettings,
@as("Scte27DestinationSettings") scte27DestinationSettings: scte27DestinationSettings,
@as("Scte20PlusEmbeddedDestinationSettings") scte20PlusEmbeddedDestinationSettings: scte20PlusEmbeddedDestinationSettings,
@as("RtmpCaptionInfoDestinationSettings") rtmpCaptionInfoDestinationSettings: rtmpCaptionInfoDestinationSettings,
@as("EmbeddedPlusScte20DestinationSettings") embeddedPlusScte20DestinationSettings: embeddedPlusScte20DestinationSettings,
@as("EmbeddedDestinationSettings") embeddedDestinationSettings: embeddedDestinationSettings,
@as("EbuTtDDestinationSettings") ebuTtDDestinationSettings: ebuTtDDestinationSettings,
@as("DvbSubDestinationSettings") dvbSubDestinationSettings: dvbSubDestinationSettings,
@as("BurnInDestinationSettings") burnInDestinationSettings: burnInDestinationSettings,
@as("AribDestinationSettings") aribDestinationSettings: aribDestinationSettings
}
type availConfiguration = {
@as("AvailSettings") availSettings: availSettings
}
type audioTrackSelection = {
@as("Tracks") tracks: option<__listOfAudioTrack>
}
type audioChannelMapping = {
@as("OutputChannel") outputChannel: option<__integerMin0Max7>,
@as("InputChannelLevels") inputChannelLevels: option<__listOfInputChannelLevel>
}
type archiveGroupSettings = {
@as("RolloverInterval") rolloverInterval: __integerMin1,
@as("Destination") destination: option<outputLocationRef>,
@as("ArchiveCdnSettings") archiveCdnSettings: archiveCdnSettings
}
type archiveContainerSettings = {
@as("RawSettings") rawSettings: rawSettings,
@as("M2tsSettings") m2tsSettings: m2tsSettings
}
type __listOfOutputDestination = array<outputDestination>
type __listOfInputSecurityGroup = array<inputSecurityGroup>
type __listOfInputDeviceSummary = array<inputDeviceSummary>
type __listOfFailoverCondition = array<failoverCondition>
type __listOfAudioChannelMapping = array<audioChannelMapping>
type videoCodecSettings = {
@as("Mpeg2Settings") mpeg2Settings: mpeg2Settings,
@as("H265Settings") h265Settings: h265Settings,
@as("H264Settings") h264Settings: h264Settings,
@as("FrameCaptureSettings") frameCaptureSettings: frameCaptureSettings
}
type udpOutputSettings = {
@as("FecOutputSettings") fecOutputSettings: fecOutputSettings,
@as("Destination") destination: option<outputLocationRef>,
@as("ContainerSettings") containerSettings: option<udpContainerSettings>,
@as("BufferMsec") bufferMsec: __integerMin0Max10000
}
type scte35Descriptor = {
@as("Scte35DescriptorSettings") scte35DescriptorSettings: option<scte35DescriptorSettings>
}
type multiplexProgram = {
@as("ProgramName") programName: __string,
@as("PipelineDetails") pipelineDetails: __listOfMultiplexProgramPipelineDetail,
@as("PacketIdentifiersMap") packetIdentifiersMap: multiplexProgramPacketIdentifiersMap,
@as("MultiplexProgramSettings") multiplexProgramSettings: multiplexProgramSettings,
@as("ChannelId") channelId: __string
}
type multiplex = {
@as("Tags") tags: tags,
@as("State") state: multiplexState,
@as("ProgramCount") programCount: __integer,
@as("PipelinesRunningCount") pipelinesRunningCount: __integer,
@as("Name") name: __string,
@as("MultiplexSettings") multiplexSettings: multiplexSettings,
@as("Id") id: __string,
@as("Destinations") destinations: __listOfMultiplexOutputDestination,
@as("AvailabilityZones") availabilityZones: __listOf__string,
@as("Arn") arn: __string
}
type input = {
@as("Type") type_: inputType,
@as("Tags") tags: tags,
@as("State") state: inputState,
@as("Sources") sources: __listOfInputSource,
@as("SecurityGroups") securityGroups: __listOf__string,
@as("RoleArn") roleArn: __string,
@as("Name") name: __string,
@as("MediaConnectFlows") mediaConnectFlows: __listOfMediaConnectFlow,
@as("InputSourceType") inputSourceType: inputSourceType,
@as("InputPartnerIds") inputPartnerIds: __listOf__string,
@as("InputDevices") inputDevices: __listOfInputDeviceSettings,
@as("InputClass") inputClass: inputClass,
@as("Id") id: __string,
@as("Destinations") destinations: __listOfInputDestination,
@as("AttachedChannels") attachedChannels: __listOf__string,
@as("Arn") arn: __string
}
type hlsOutputSettings = {
@as("SegmentModifier") segmentModifier: __string,
@as("NameModifier") nameModifier: __stringMin1,
@as("HlsSettings") hlsSettings: option<hlsSettings>,
@as("H265PackagingType") h265PackagingType: hlsH265PackagingType
}
type hlsGroupSettings = {
@as("TsFileMode") tsFileMode: hlsTsFileMode,
@as("TimestampDeltaMilliseconds") timestampDeltaMilliseconds: __integerMin0,
@as("TimedMetadataId3Period") timedMetadataId3Period: __integerMin0,
@as("TimedMetadataId3Frame") timedMetadataId3Frame: hlsTimedMetadataId3Frame,
@as("StreamInfResolution") streamInfResolution: hlsStreamInfResolution,
@as("SegmentsPerSubdirectory") segmentsPerSubdirectory: __integerMin1,
@as("SegmentationMode") segmentationMode: hlsSegmentationMode,
@as("SegmentLength") segmentLength: __integerMin1,
@as("RedundantManifest") redundantManifest: hlsRedundantManifest,
@as("ProgramDateTimePeriod") programDateTimePeriod: __integerMin0Max3600,
@as("ProgramDateTime") programDateTime: hlsProgramDateTime,
@as("OutputSelection") outputSelection: hlsOutputSelection,
@as("Mode") mode: hlsMode,
@as("MinSegmentLength") minSegmentLength: __integerMin0,
@as("ManifestDurationFormat") manifestDurationFormat: hlsManifestDurationFormat,
@as("ManifestCompression") manifestCompression: hlsManifestCompression,
@as("KeyProviderSettings") keyProviderSettings: keyProviderSettings,
@as("KeyFormatVersions") keyFormatVersions: __string,
@as("KeyFormat") keyFormat: __string,
@as("KeepSegments") keepSegments: __integerMin1,
@as("IvSource") ivSource: hlsIvSource,
@as("IvInManifest") ivInManifest: hlsIvInManifest,
@as("InputLossAction") inputLossAction: inputLossActionForHlsOut,
@as("IndexNSegments") indexNSegments: __integerMin3,
@as("IncompleteSegmentBehavior") incompleteSegmentBehavior: hlsIncompleteSegmentBehavior,
@as("IFrameOnlyPlaylists") iFrameOnlyPlaylists: iFrameOnlyPlaylistType,
@as("HlsId3SegmentTagging") hlsId3SegmentTagging: hlsId3SegmentTaggingState,
@as("HlsCdnSettings") hlsCdnSettings: hlsCdnSettings,
@as("EncryptionType") encryptionType: hlsEncryptionType,
@as("DiscontinuityTags") discontinuityTags: hlsDiscontinuityTags,
@as("DirectoryStructure") directoryStructure: hlsDirectoryStructure,
@as("Destination") destination: option<outputLocationRef>,
@as("ConstantIv") constantIv: __stringMin32Max32,
@as("CodecSpecification") codecSpecification: hlsCodecSpecification,
@as("ClientCache") clientCache: hlsClientCache,
@as("CaptionLanguageSetting") captionLanguageSetting: hlsCaptionLanguageSetting,
@as("CaptionLanguageMappings") captionLanguageMappings: __listOfCaptionLanguageMapping,
@as("BaseUrlManifest1") baseUrlManifest1: __string,
@as("BaseUrlManifest") baseUrlManifest: __string,
@as("BaseUrlContent1") baseUrlContent1: __string,
@as("BaseUrlContent") baseUrlContent: __string,
@as("AdMarkers") adMarkers: __listOfHlsAdMarkers
}
type captionSelector = {
@as("SelectorSettings") selectorSettings: captionSelectorSettings,
@as("Name") name: option<__stringMin1>,
@as("LanguageCode") languageCode: __string
}
type captionDescription = {
@as("Name") name: option<__string>,
@as("LanguageDescription") languageDescription: __string,
@as("LanguageCode") languageCode: __string,
@as("DestinationSettings") destinationSettings: captionDestinationSettings,
@as("CaptionSelectorName") captionSelectorName: option<__string>
}
type audioSelectorSettings = {
@as("AudioTrackSelection") audioTrackSelection: audioTrackSelection,
@as("AudioPidSelection") audioPidSelection: audioPidSelection,
@as("AudioLanguageSelection") audioLanguageSelection: audioLanguageSelection
}
type archiveOutputSettings = {
@as("NameModifier") nameModifier: __string,
@as("Extension") extension: __string,
@as("ContainerSettings") containerSettings: option<archiveContainerSettings>
}
type __listOfScte35Descriptor = array<scte35Descriptor>
type __listOfInput = array<input>
type __listOfCaptionSelector = array<captionSelector>
type __listOfCaptionDescription = array<captionDescription>
type videoDescription = {
@as("Width") width: __integer,
@as("Sharpness") sharpness: __integerMin0Max100,
@as("ScalingBehavior") scalingBehavior: videoDescriptionScalingBehavior,
@as("RespondToAfd") respondToAfd: videoDescriptionRespondToAfd,
@as("Name") name: option<__string>,
@as("Height") height: __integer,
@as("CodecSettings") codecSettings: videoCodecSettings
}
type remixSettings = {
@as("ChannelsOut") channelsOut: __integerMin1Max8,
@as("ChannelsIn") channelsIn: __integerMin1Max16,
@as("ChannelMappings") channelMappings: option<__listOfAudioChannelMapping>
}
type outputSettings = {
@as("UdpOutputSettings") udpOutputSettings: udpOutputSettings,
@as("RtmpOutputSettings") rtmpOutputSettings: rtmpOutputSettings,
@as("MultiplexOutputSettings") multiplexOutputSettings: multiplexOutputSettings,
@as("MsSmoothOutputSettings") msSmoothOutputSettings: msSmoothOutputSettings,
@as("MediaPackageOutputSettings") mediaPackageOutputSettings: mediaPackageOutputSettings,
@as("HlsOutputSettings") hlsOutputSettings: hlsOutputSettings,
@as("FrameCaptureOutputSettings") frameCaptureOutputSettings: frameCaptureOutputSettings,
@as("ArchiveOutputSettings") archiveOutputSettings: archiveOutputSettings
}
type outputGroupSettings = {
@as("UdpGroupSettings") udpGroupSettings: udpGroupSettings,
@as("RtmpGroupSettings") rtmpGroupSettings: rtmpGroupSettings,
@as("MultiplexGroupSettings") multiplexGroupSettings: multiplexGroupSettings,
@as("MsSmoothGroupSettings") msSmoothGroupSettings: msSmoothGroupSettings,
@as("MediaPackageGroupSettings") mediaPackageGroupSettings: mediaPackageGroupSettings,
@as("HlsGroupSettings") hlsGroupSettings: hlsGroupSettings,
@as("FrameCaptureGroupSettings") frameCaptureGroupSettings: frameCaptureGroupSettings,
@as("ArchiveGroupSettings") archiveGroupSettings: archiveGroupSettings
}
type automaticInputFailoverSettings = {
@as("SecondaryInputId") secondaryInputId: option<__string>,
@as("InputPreference") inputPreference: inputPreference,
@as("FailoverConditions") failoverConditions: __listOfFailoverCondition,
@as("ErrorClearTimeMsec") errorClearTimeMsec: __integerMin1
}
type audioSelector = {
@as("SelectorSettings") selectorSettings: audioSelectorSettings,
@as("Name") name: option<__stringMin1>
}
type __listOfVideoDescription = array<videoDescription>
type __listOfAudioSelector = array<audioSelector>
type scte35TimeSignalScheduleActionSettings = {
@as("Scte35Descriptors") scte35Descriptors: option<__listOfScte35Descriptor>
}
type output = {
@as("VideoDescriptionName") videoDescriptionName: __string,
@as("OutputSettings") outputSettings: option<outputSettings>,
@as("OutputName") outputName: __stringMin1Max255,
@as("CaptionDescriptionNames") captionDescriptionNames: __listOf__string,
@as("AudioDescriptionNames") audioDescriptionNames: __listOf__string
}
type audioDescription = {
@as("StreamName") streamName: __string,
@as("RemixSettings") remixSettings: remixSettings,
@as("Name") name: option<__string>,
@as("LanguageCodeControl") languageCodeControl: audioDescriptionLanguageCodeControl,
@as("LanguageCode") languageCode: __stringMin1Max35,
@as("CodecSettings") codecSettings: audioCodecSettings,
@as("AudioTypeControl") audioTypeControl: audioDescriptionAudioTypeControl,
@as("AudioType") audioType: audioType,
@as("AudioSelectorName") audioSelectorName: option<__string>,
@as("AudioNormalizationSettings") audioNormalizationSettings: audioNormalizationSettings
}
type __listOfOutput = array<output>
type __listOfAudioDescription = array<audioDescription>
type scheduleActionSettings = {
@as("StaticImageDeactivateSettings") staticImageDeactivateSettings: staticImageDeactivateScheduleActionSettings,
@as("StaticImageActivateSettings") staticImageActivateSettings: staticImageActivateScheduleActionSettings,
@as("Scte35TimeSignalSettings") scte35TimeSignalSettings: scte35TimeSignalScheduleActionSettings,
@as("Scte35SpliceInsertSettings") scte35SpliceInsertSettings: scte35SpliceInsertScheduleActionSettings,
@as("Scte35ReturnToNetworkSettings") scte35ReturnToNetworkSettings: scte35ReturnToNetworkScheduleActionSettings,
@as("PauseStateSettings") pauseStateSettings: pauseStateScheduleActionSettings,
@as("MotionGraphicsImageDeactivateSettings") motionGraphicsImageDeactivateSettings: motionGraphicsDeactivateScheduleActionSettings,
@as("MotionGraphicsImageActivateSettings") motionGraphicsImageActivateSettings: motionGraphicsActivateScheduleActionSettings,
@as("InputSwitchSettings") inputSwitchSettings: inputSwitchScheduleActionSettings,
@as("InputPrepareSettings") inputPrepareSettings: inputPrepareScheduleActionSettings,
@as("HlsTimedMetadataSettings") hlsTimedMetadataSettings: hlsTimedMetadataScheduleActionSettings,
@as("HlsId3SegmentTaggingSettings") hlsId3SegmentTaggingSettings: hlsId3SegmentTaggingScheduleActionSettings
}
type inputSettings = {
@as("VideoSelector") videoSelector: videoSelector,
@as("SourceEndBehavior") sourceEndBehavior: inputSourceEndBehavior,
@as("Smpte2038DataPreference") smpte2038DataPreference: smpte2038DataPreference,
@as("NetworkInputSettings") networkInputSettings: networkInputSettings,
@as("InputFilter") inputFilter: inputFilter,
@as("FilterStrength") filterStrength: __integerMin1Max5,
@as("DenoiseFilter") denoiseFilter: inputDenoiseFilter,
@as("DeblockFilter") deblockFilter: inputDeblockFilter,
@as("CaptionSelectors") captionSelectors: __listOfCaptionSelector,
@as("AudioSelectors") audioSelectors: __listOfAudioSelector
}
type scheduleAction = {
@as("ScheduleActionStartSettings") scheduleActionStartSettings: option<scheduleActionStartSettings>,
@as("ScheduleActionSettings") scheduleActionSettings: option<scheduleActionSettings>,
@as("ActionName") actionName: option<__string>
}
type outputGroup = {
@as("Outputs") outputs: option<__listOfOutput>,
@as("OutputGroupSettings") outputGroupSettings: option<outputGroupSettings>,
@as("Name") name: __stringMax32
}
type inputAttachment = {
@as("InputSettings") inputSettings: inputSettings,
@as("InputId") inputId: __string,
@as("InputAttachmentName") inputAttachmentName: __string,
@as("AutomaticInputFailoverSettings") automaticInputFailoverSettings: automaticInputFailoverSettings
}
type __listOfScheduleAction = array<scheduleAction>
type __listOfOutputGroup = array<outputGroup>
type __listOfInputAttachment = array<inputAttachment>
type encoderSettings = {
@as("VideoDescriptions") videoDescriptions: option<__listOfVideoDescription>,
@as("TimecodeConfig") timecodeConfig: option<timecodeConfig>,
@as("OutputGroups") outputGroups: option<__listOfOutputGroup>,
@as("NielsenConfiguration") nielsenConfiguration: nielsenConfiguration,
@as("MotionGraphicsConfiguration") motionGraphicsConfiguration: motionGraphicsConfiguration,
@as("GlobalConfiguration") globalConfiguration: globalConfiguration,
@as("FeatureActivations") featureActivations: featureActivations,
@as("CaptionDescriptions") captionDescriptions: __listOfCaptionDescription,
@as("BlackoutSlate") blackoutSlate: blackoutSlate,
@as("AvailConfiguration") availConfiguration: availConfiguration,
@as("AvailBlanking") availBlanking: availBlanking,
@as("AudioDescriptions") audioDescriptions: option<__listOfAudioDescription>
}
type channelSummary = {
@as("Vpc") vpc: vpcOutputSettingsDescription,
@as("Tags") tags: tags,
@as("State") state: channelState,
@as("RoleArn") roleArn: __string,
@as("PipelinesRunningCount") pipelinesRunningCount: __integer,
@as("Name") name: __string,
@as("LogLevel") logLevel: logLevel,
@as("InputSpecification") inputSpecification: inputSpecification,
@as("InputAttachments") inputAttachments: __listOfInputAttachment,
@as("Id") id: __string,
@as("EgressEndpoints") egressEndpoints: __listOfChannelEgressEndpoint,
@as("Destinations") destinations: __listOfOutputDestination,
@as("ChannelClass") channelClass: channelClass,
@as("CdiInputSpecification") cdiInputSpecification: cdiInputSpecification,
@as("Arn") arn: __string
}
type batchScheduleActionDeleteResult = {
@as("ScheduleActions") scheduleActions: option<__listOfScheduleAction>
}
type batchScheduleActionCreateResult = {
@as("ScheduleActions") scheduleActions: option<__listOfScheduleAction>
}
type batchScheduleActionCreateRequest = {
@as("ScheduleActions") scheduleActions: option<__listOfScheduleAction>
}
type __listOfChannelSummary = array<channelSummary>
type channel = {
@as("Vpc") vpc: vpcOutputSettingsDescription,
@as("Tags") tags: tags,
@as("State") state: channelState,
@as("RoleArn") roleArn: __string,
@as("PipelinesRunningCount") pipelinesRunningCount: __integer,
@as("PipelineDetails") pipelineDetails: __listOfPipelineDetail,
@as("Name") name: __string,
@as("LogLevel") logLevel: logLevel,
@as("InputSpecification") inputSpecification: inputSpecification,
@as("InputAttachments") inputAttachments: __listOfInputAttachment,
@as("Id") id: __string,
@as("EncoderSettings") encoderSettings: encoderSettings,
@as("EgressEndpoints") egressEndpoints: __listOfChannelEgressEndpoint,
@as("Destinations") destinations: __listOfOutputDestination,
@as("ChannelClass") channelClass: channelClass,
@as("CdiInputSpecification") cdiInputSpecification: cdiInputSpecification,
@as("Arn") arn: __string
}
type clientType;
@module("@aws-sdk/client-medialive") @new external createClient: unit => clientType = "MediaLiveClient";
module DescribeInputDeviceThumbnail = {
  type t;
  type request = {
@as("Accept") accept: option<acceptHeader>,
@as("InputDeviceId") inputDeviceId: option<__string>
}
  type response = {
@as("LastModified") lastModified: __timestamp,
@as("ETag") eTag: __string,
@as("ContentLength") contentLength: __long,
@as("ContentType") contentType: contentType,
@as("Body") body: inputDeviceThumbnail
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DescribeInputDeviceThumbnailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSchedule = {
  type t;
  type request = {
@as("ChannelId") channelId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DeleteScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInputSecurityGroup = {
  type t;
  type request = {
@as("InputSecurityGroupId") inputSecurityGroupId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DeleteInputSecurityGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInput = {
  type t;
  type request = {
@as("InputId") inputId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DeleteInputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<__string>
}
  type response = {
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservation = {
  type t;
  type request = {
@as("ReservationId") reservationId: option<__string>
}
  type response = {
@as("UsagePrice") usagePrice: __double,
@as("Tags") tags: tags,
@as("State") state: reservationState,
@as("Start") start: __string,
@as("ResourceSpecification") resourceSpecification: reservationResourceSpecification,
@as("ReservationId") reservationId: __string,
@as("Region") region: __string,
@as("OfferingType") offeringType: offeringType,
@as("OfferingId") offeringId: __string,
@as("OfferingDescription") offeringDescription: __string,
@as("Name") name: __string,
@as("FixedPrice") fixedPrice: __double,
@as("End") end: __string,
@as("DurationUnits") durationUnits: offeringDurationUnits,
@as("Duration") duration: __integer,
@as("CurrencyCode") currencyCode: __string,
@as("Count") count: __integer,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DescribeReservationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOffering = {
  type t;
  type request = {
@as("OfferingId") offeringId: option<__string>
}
  type response = {
@as("UsagePrice") usagePrice: __double,
@as("ResourceSpecification") resourceSpecification: reservationResourceSpecification,
@as("Region") region: __string,
@as("OfferingType") offeringType: offeringType,
@as("OfferingId") offeringId: __string,
@as("OfferingDescription") offeringDescription: __string,
@as("FixedPrice") fixedPrice: __double,
@as("DurationUnits") durationUnits: offeringDurationUnits,
@as("Duration") duration: __integer,
@as("CurrencyCode") currencyCode: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DescribeOfferingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<__listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DeleteTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteReservation = {
  type t;
  type request = {
@as("ReservationId") reservationId: option<__string>
}
  type response = {
@as("UsagePrice") usagePrice: __double,
@as("Tags") tags: tags,
@as("State") state: reservationState,
@as("Start") start: __string,
@as("ResourceSpecification") resourceSpecification: reservationResourceSpecification,
@as("ReservationId") reservationId: __string,
@as("Region") region: __string,
@as("OfferingType") offeringType: offeringType,
@as("OfferingId") offeringId: __string,
@as("OfferingDescription") offeringDescription: __string,
@as("Name") name: __string,
@as("FixedPrice") fixedPrice: __double,
@as("End") end: __string,
@as("DurationUnits") durationUnits: offeringDurationUnits,
@as("Duration") duration: __integer,
@as("CurrencyCode") currencyCode: __string,
@as("Count") count: __integer,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DeleteReservationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTags = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "CreateTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateReservation = {
  type t;
  type request = {
@as("ReservationId") reservationId: option<__string>,
@as("Name") name: __string
}
  type response = {
@as("Reservation") reservation: reservation
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "UpdateReservationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateInputDevice = {
  type t;
  type request = {
@as("UhdDeviceSettings") uhdDeviceSettings: inputDeviceConfigurableSettings,
@as("Name") name: __string,
@as("InputDeviceId") inputDeviceId: option<__string>,
@as("HdDeviceSettings") hdDeviceSettings: inputDeviceConfigurableSettings
}
  type response = {
@as("UhdDeviceSettings") uhdDeviceSettings: inputDeviceUhdSettings,
@as("Type") type_: inputDeviceType,
@as("SerialNumber") serialNumber: __string,
@as("NetworkSettings") networkSettings: inputDeviceNetworkSettings,
@as("Name") name: __string,
@as("MacAddress") macAddress: __string,
@as("Id") id: __string,
@as("HdDeviceSettings") hdDeviceSettings: inputDeviceHdSettings,
@as("DeviceUpdateStatus") deviceUpdateStatus: deviceUpdateStatus,
@as("DeviceSettingsSyncState") deviceSettingsSyncState: deviceSettingsSyncState,
@as("ConnectionState") connectionState: inputDeviceConnectionState,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "UpdateInputDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TransferInputDevice = {
  type t;
  type request = {
@as("TransferMessage") transferMessage: __string,
@as("TargetRegion") targetRegion: __string,
@as("TargetCustomerId") targetCustomerId: __string,
@as("InputDeviceId") inputDeviceId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "TransferInputDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectInputDeviceTransfer = {
  type t;
  type request = {
@as("InputDeviceId") inputDeviceId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "RejectInputDeviceTransferCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PurchaseOffering = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("Start") start: __string,
@as("RequestId") requestId: __string,
@as("OfferingId") offeringId: option<__string>,
@as("Name") name: __string,
@as("Count") count: option<__integerMin1>
}
  type response = {
@as("Reservation") reservation: reservation
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "PurchaseOfferingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMultiplexPrograms = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MultiplexId") multiplexId: option<__string>,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("MultiplexPrograms") multiplexPrograms: __listOfMultiplexProgramSummary
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "ListMultiplexProgramsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInputDeviceTransfers = {
  type t;
  type request = {
@as("TransferType") transferType: option<__string>,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("InputDeviceTransfers") inputDeviceTransfers: __listOfTransferringInputDeviceSummary
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "ListInputDeviceTransfersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInputSecurityGroup = {
  type t;
  type request = {
@as("InputSecurityGroupId") inputSecurityGroupId: option<__string>
}
  type response = {
@as("WhitelistRules") whitelistRules: __listOfInputWhitelistRule,
@as("Tags") tags: tags,
@as("State") state: inputSecurityGroupState,
@as("Inputs") inputs: __listOf__string,
@as("Id") id: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DescribeInputSecurityGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInputDevice = {
  type t;
  type request = {
@as("InputDeviceId") inputDeviceId: option<__string>
}
  type response = {
@as("UhdDeviceSettings") uhdDeviceSettings: inputDeviceUhdSettings,
@as("Type") type_: inputDeviceType,
@as("SerialNumber") serialNumber: __string,
@as("NetworkSettings") networkSettings: inputDeviceNetworkSettings,
@as("Name") name: __string,
@as("MacAddress") macAddress: __string,
@as("Id") id: __string,
@as("HdDeviceSettings") hdDeviceSettings: inputDeviceHdSettings,
@as("DeviceUpdateStatus") deviceUpdateStatus: deviceUpdateStatus,
@as("DeviceSettingsSyncState") deviceSettingsSyncState: deviceSettingsSyncState,
@as("ConnectionState") connectionState: inputDeviceConnectionState,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DescribeInputDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelInputDeviceTransfer = {
  type t;
  type request = {
@as("InputDeviceId") inputDeviceId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "CancelInputDeviceTransferCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchStop = {
  type t;
  type request = {
@as("MultiplexIds") multiplexIds: __listOf__string,
@as("ChannelIds") channelIds: __listOf__string
}
  type response = {
@as("Successful") successful: __listOfBatchSuccessfulResultModel,
@as("Failed") failed: __listOfBatchFailedResultModel
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "BatchStopCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchStart = {
  type t;
  type request = {
@as("MultiplexIds") multiplexIds: __listOf__string,
@as("ChannelIds") channelIds: __listOf__string
}
  type response = {
@as("Successful") successful: __listOfBatchSuccessfulResultModel,
@as("Failed") failed: __listOfBatchFailedResultModel
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "BatchStartCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDelete = {
  type t;
  type request = {
@as("MultiplexIds") multiplexIds: __listOf__string,
@as("InputSecurityGroupIds") inputSecurityGroupIds: __listOf__string,
@as("InputIds") inputIds: __listOf__string,
@as("ChannelIds") channelIds: __listOf__string
}
  type response = {
@as("Successful") successful: __listOfBatchSuccessfulResultModel,
@as("Failed") failed: __listOfBatchFailedResultModel
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "BatchDeleteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptInputDeviceTransfer = {
  type t;
  type request = {
@as("InputDeviceId") inputDeviceId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "AcceptInputDeviceTransferCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateInputSecurityGroup = {
  type t;
  type request = {
@as("WhitelistRules") whitelistRules: __listOfInputWhitelistRuleCidr,
@as("Tags") tags: tags,
@as("InputSecurityGroupId") inputSecurityGroupId: option<__string>
}
  type response = {
@as("SecurityGroup") securityGroup: inputSecurityGroup
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "UpdateInputSecurityGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopMultiplex = {
  type t;
  type request = {
@as("MultiplexId") multiplexId: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("State") state: multiplexState,
@as("ProgramCount") programCount: __integer,
@as("PipelinesRunningCount") pipelinesRunningCount: __integer,
@as("Name") name: __string,
@as("MultiplexSettings") multiplexSettings: multiplexSettings,
@as("Id") id: __string,
@as("Destinations") destinations: __listOfMultiplexOutputDestination,
@as("AvailabilityZones") availabilityZones: __listOf__string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "StopMultiplexCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartMultiplex = {
  type t;
  type request = {
@as("MultiplexId") multiplexId: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("State") state: multiplexState,
@as("ProgramCount") programCount: __integer,
@as("PipelinesRunningCount") pipelinesRunningCount: __integer,
@as("Name") name: __string,
@as("MultiplexSettings") multiplexSettings: multiplexSettings,
@as("Id") id: __string,
@as("Destinations") destinations: __listOfMultiplexOutputDestination,
@as("AvailabilityZones") availabilityZones: __listOf__string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "StartMultiplexCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReservations = {
  type t;
  type request = {
@as("VideoQuality") videoQuality: __string,
@as("SpecialFeature") specialFeature: __string,
@as("ResourceType") resourceType: __string,
@as("Resolution") resolution: __string,
@as("NextToken") nextToken: __string,
@as("MaximumFramerate") maximumFramerate: __string,
@as("MaximumBitrate") maximumBitrate: __string,
@as("MaxResults") maxResults: maxResults,
@as("Codec") codec: __string,
@as("ChannelClass") channelClass: __string
}
  type response = {
@as("Reservations") reservations: __listOfReservation,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "ListReservationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOfferings = {
  type t;
  type request = {
@as("VideoQuality") videoQuality: __string,
@as("SpecialFeature") specialFeature: __string,
@as("ResourceType") resourceType: __string,
@as("Resolution") resolution: __string,
@as("NextToken") nextToken: __string,
@as("MaximumFramerate") maximumFramerate: __string,
@as("MaximumBitrate") maximumBitrate: __string,
@as("MaxResults") maxResults: maxResults,
@as("Duration") duration: __string,
@as("Codec") codec: __string,
@as("ChannelConfiguration") channelConfiguration: __string,
@as("ChannelClass") channelClass: __string
}
  type response = {
@as("Offerings") offerings: __listOfOffering,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "ListOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMultiplexes = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Multiplexes") multiplexes: __listOfMultiplexSummary
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "ListMultiplexesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMultiplexProgram = {
  type t;
  type request = {
@as("ProgramName") programName: option<__string>,
@as("MultiplexId") multiplexId: option<__string>
}
  type response = {
@as("ProgramName") programName: __string,
@as("PipelineDetails") pipelineDetails: __listOfMultiplexProgramPipelineDetail,
@as("PacketIdentifiersMap") packetIdentifiersMap: multiplexProgramPacketIdentifiersMap,
@as("MultiplexProgramSettings") multiplexProgramSettings: multiplexProgramSettings,
@as("ChannelId") channelId: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DescribeMultiplexProgramCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMultiplex = {
  type t;
  type request = {
@as("MultiplexId") multiplexId: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("State") state: multiplexState,
@as("ProgramCount") programCount: __integer,
@as("PipelinesRunningCount") pipelinesRunningCount: __integer,
@as("Name") name: __string,
@as("MultiplexSettings") multiplexSettings: multiplexSettings,
@as("Id") id: __string,
@as("Destinations") destinations: __listOfMultiplexOutputDestination,
@as("AvailabilityZones") availabilityZones: __listOf__string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DescribeMultiplexCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInput = {
  type t;
  type request = {
@as("InputId") inputId: option<__string>
}
  type response = {
@as("Type") type_: inputType,
@as("Tags") tags: tags,
@as("State") state: inputState,
@as("Sources") sources: __listOfInputSource,
@as("SecurityGroups") securityGroups: __listOf__string,
@as("RoleArn") roleArn: __string,
@as("Name") name: __string,
@as("MediaConnectFlows") mediaConnectFlows: __listOfMediaConnectFlow,
@as("InputSourceType") inputSourceType: inputSourceType,
@as("InputPartnerIds") inputPartnerIds: __listOf__string,
@as("InputDevices") inputDevices: __listOfInputDeviceSettings,
@as("InputClass") inputClass: inputClass,
@as("Id") id: __string,
@as("Destinations") destinations: __listOfInputDestination,
@as("AttachedChannels") attachedChannels: __listOf__string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DescribeInputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMultiplexProgram = {
  type t;
  type request = {
@as("ProgramName") programName: option<__string>,
@as("MultiplexId") multiplexId: option<__string>
}
  type response = {
@as("ProgramName") programName: __string,
@as("PipelineDetails") pipelineDetails: __listOfMultiplexProgramPipelineDetail,
@as("PacketIdentifiersMap") packetIdentifiersMap: multiplexProgramPacketIdentifiersMap,
@as("MultiplexProgramSettings") multiplexProgramSettings: multiplexProgramSettings,
@as("ChannelId") channelId: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DeleteMultiplexProgramCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMultiplex = {
  type t;
  type request = {
@as("MultiplexId") multiplexId: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("State") state: multiplexState,
@as("ProgramCount") programCount: __integer,
@as("PipelinesRunningCount") pipelinesRunningCount: __integer,
@as("Name") name: __string,
@as("MultiplexSettings") multiplexSettings: multiplexSettings,
@as("Id") id: __string,
@as("Destinations") destinations: __listOfMultiplexOutputDestination,
@as("AvailabilityZones") availabilityZones: __listOf__string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DeleteMultiplexCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInputSecurityGroup = {
  type t;
  type request = {
@as("WhitelistRules") whitelistRules: __listOfInputWhitelistRuleCidr,
@as("Tags") tags: tags
}
  type response = {
@as("SecurityGroup") securityGroup: inputSecurityGroup
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "CreateInputSecurityGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMultiplexProgram = {
  type t;
  type request = {
@as("ProgramName") programName: option<__string>,
@as("MultiplexProgramSettings") multiplexProgramSettings: multiplexProgramSettings,
@as("MultiplexId") multiplexId: option<__string>
}
  type response = {
@as("MultiplexProgram") multiplexProgram: multiplexProgram
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "UpdateMultiplexProgramCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMultiplex = {
  type t;
  type request = {
@as("Name") name: __string,
@as("MultiplexSettings") multiplexSettings: multiplexSettings,
@as("MultiplexId") multiplexId: option<__string>
}
  type response = {
@as("Multiplex") multiplex: multiplex
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "UpdateMultiplexCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateInput = {
  type t;
  type request = {
@as("Sources") sources: __listOfInputSourceRequest,
@as("RoleArn") roleArn: __string,
@as("Name") name: __string,
@as("MediaConnectFlows") mediaConnectFlows: __listOfMediaConnectFlowRequest,
@as("InputSecurityGroups") inputSecurityGroups: __listOf__string,
@as("InputId") inputId: option<__string>,
@as("InputDevices") inputDevices: __listOfInputDeviceRequest,
@as("Destinations") destinations: __listOfInputDestinationRequest
}
  type response = {
@as("Input") input: input
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "UpdateInputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInputSecurityGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("InputSecurityGroups") inputSecurityGroups: __listOfInputSecurityGroup
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "ListInputSecurityGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInputDevices = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("InputDevices") inputDevices: __listOfInputDeviceSummary
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "ListInputDevicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePartnerInput = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("RequestId") requestId: __string,
@as("InputId") inputId: option<__string>
}
  type response = {
@as("Input") input: input
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "CreatePartnerInputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMultiplexProgram = {
  type t;
  type request = {
@as("RequestId") requestId: option<__string>,
@as("ProgramName") programName: option<__string>,
@as("MultiplexProgramSettings") multiplexProgramSettings: option<multiplexProgramSettings>,
@as("MultiplexId") multiplexId: option<__string>
}
  type response = {
@as("MultiplexProgram") multiplexProgram: multiplexProgram
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "CreateMultiplexProgramCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMultiplex = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("RequestId") requestId: option<__string>,
@as("Name") name: option<__string>,
@as("MultiplexSettings") multiplexSettings: option<multiplexSettings>,
@as("AvailabilityZones") availabilityZones: option<__listOf__string>
}
  type response = {
@as("Multiplex") multiplex: multiplex
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "CreateMultiplexCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInput = {
  type t;
  type request = {
@as("Vpc") vpc: inputVpcRequest,
@as("Type") type_: inputType,
@as("Tags") tags: tags,
@as("Sources") sources: __listOfInputSourceRequest,
@as("RoleArn") roleArn: __string,
@as("RequestId") requestId: __string,
@as("Name") name: __string,
@as("MediaConnectFlows") mediaConnectFlows: __listOfMediaConnectFlowRequest,
@as("InputSecurityGroups") inputSecurityGroups: __listOf__string,
@as("InputDevices") inputDevices: __listOfInputDeviceSettings,
@as("Destinations") destinations: __listOfInputDestinationRequest
}
  type response = {
@as("Input") input: input
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "CreateInputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInputs = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Inputs") inputs: __listOfInput
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "ListInputsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSchedule = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("ChannelId") channelId: option<__string>
}
  type response = {
@as("ScheduleActions") scheduleActions: __listOfScheduleAction,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DescribeScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopChannel = {
  type t;
  type request = {
@as("ChannelId") channelId: option<__string>
}
  type response = {
@as("Vpc") vpc: vpcOutputSettingsDescription,
@as("Tags") tags: tags,
@as("State") state: channelState,
@as("RoleArn") roleArn: __string,
@as("PipelinesRunningCount") pipelinesRunningCount: __integer,
@as("PipelineDetails") pipelineDetails: __listOfPipelineDetail,
@as("Name") name: __string,
@as("LogLevel") logLevel: logLevel,
@as("InputSpecification") inputSpecification: inputSpecification,
@as("InputAttachments") inputAttachments: __listOfInputAttachment,
@as("Id") id: __string,
@as("EncoderSettings") encoderSettings: encoderSettings,
@as("EgressEndpoints") egressEndpoints: __listOfChannelEgressEndpoint,
@as("Destinations") destinations: __listOfOutputDestination,
@as("ChannelClass") channelClass: channelClass,
@as("CdiInputSpecification") cdiInputSpecification: cdiInputSpecification,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "StopChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartChannel = {
  type t;
  type request = {
@as("ChannelId") channelId: option<__string>
}
  type response = {
@as("Vpc") vpc: vpcOutputSettingsDescription,
@as("Tags") tags: tags,
@as("State") state: channelState,
@as("RoleArn") roleArn: __string,
@as("PipelinesRunningCount") pipelinesRunningCount: __integer,
@as("PipelineDetails") pipelineDetails: __listOfPipelineDetail,
@as("Name") name: __string,
@as("LogLevel") logLevel: logLevel,
@as("InputSpecification") inputSpecification: inputSpecification,
@as("InputAttachments") inputAttachments: __listOfInputAttachment,
@as("Id") id: __string,
@as("EncoderSettings") encoderSettings: encoderSettings,
@as("EgressEndpoints") egressEndpoints: __listOfChannelEgressEndpoint,
@as("Destinations") destinations: __listOfOutputDestination,
@as("ChannelClass") channelClass: channelClass,
@as("CdiInputSpecification") cdiInputSpecification: cdiInputSpecification,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "StartChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChannel = {
  type t;
  type request = {
@as("ChannelId") channelId: option<__string>
}
  type response = {
@as("Vpc") vpc: vpcOutputSettingsDescription,
@as("Tags") tags: tags,
@as("State") state: channelState,
@as("RoleArn") roleArn: __string,
@as("PipelinesRunningCount") pipelinesRunningCount: __integer,
@as("PipelineDetails") pipelineDetails: __listOfPipelineDetail,
@as("Name") name: __string,
@as("LogLevel") logLevel: logLevel,
@as("InputSpecification") inputSpecification: inputSpecification,
@as("InputAttachments") inputAttachments: __listOfInputAttachment,
@as("Id") id: __string,
@as("EncoderSettings") encoderSettings: encoderSettings,
@as("EgressEndpoints") egressEndpoints: __listOfChannelEgressEndpoint,
@as("Destinations") destinations: __listOfOutputDestination,
@as("ChannelClass") channelClass: channelClass,
@as("CdiInputSpecification") cdiInputSpecification: cdiInputSpecification,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DescribeChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteChannel = {
  type t;
  type request = {
@as("ChannelId") channelId: option<__string>
}
  type response = {
@as("Vpc") vpc: vpcOutputSettingsDescription,
@as("Tags") tags: tags,
@as("State") state: channelState,
@as("RoleArn") roleArn: __string,
@as("PipelinesRunningCount") pipelinesRunningCount: __integer,
@as("PipelineDetails") pipelineDetails: __listOfPipelineDetail,
@as("Name") name: __string,
@as("LogLevel") logLevel: logLevel,
@as("InputSpecification") inputSpecification: inputSpecification,
@as("InputAttachments") inputAttachments: __listOfInputAttachment,
@as("Id") id: __string,
@as("EncoderSettings") encoderSettings: encoderSettings,
@as("EgressEndpoints") egressEndpoints: __listOfChannelEgressEndpoint,
@as("Destinations") destinations: __listOfOutputDestination,
@as("ChannelClass") channelClass: channelClass,
@as("CdiInputSpecification") cdiInputSpecification: cdiInputSpecification,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "DeleteChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchUpdateSchedule = {
  type t;
  type request = {
@as("Deletes") deletes: batchScheduleActionDeleteRequest,
@as("Creates") creates: batchScheduleActionCreateRequest,
@as("ChannelId") channelId: option<__string>
}
  type response = {
@as("Deletes") deletes: batchScheduleActionDeleteResult,
@as("Creates") creates: batchScheduleActionCreateResult
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "BatchUpdateScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateChannelClass = {
  type t;
  type request = {
@as("Destinations") destinations: __listOfOutputDestination,
@as("ChannelId") channelId: option<__string>,
@as("ChannelClass") channelClass: option<channelClass>
}
  type response = {
@as("Channel") channel: channel
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "UpdateChannelClassCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateChannel = {
  type t;
  type request = {
@as("RoleArn") roleArn: __string,
@as("Name") name: __string,
@as("LogLevel") logLevel: logLevel,
@as("InputSpecification") inputSpecification: inputSpecification,
@as("InputAttachments") inputAttachments: __listOfInputAttachment,
@as("EncoderSettings") encoderSettings: encoderSettings,
@as("Destinations") destinations: __listOfOutputDestination,
@as("ChannelId") channelId: option<__string>,
@as("CdiInputSpecification") cdiInputSpecification: cdiInputSpecification
}
  type response = {
@as("Channel") channel: channel
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "UpdateChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChannels = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Channels") channels: __listOfChannelSummary
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "ListChannelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateChannel = {
  type t;
  type request = {
@as("Vpc") vpc: vpcOutputSettings,
@as("Tags") tags: tags,
@as("RoleArn") roleArn: __string,
@as("Reserved") reserved: __string,
@as("RequestId") requestId: __string,
@as("Name") name: __string,
@as("LogLevel") logLevel: logLevel,
@as("InputSpecification") inputSpecification: inputSpecification,
@as("InputAttachments") inputAttachments: __listOfInputAttachment,
@as("EncoderSettings") encoderSettings: encoderSettings,
@as("Destinations") destinations: __listOfOutputDestination,
@as("ChannelClass") channelClass: channelClass,
@as("CdiInputSpecification") cdiInputSpecification: cdiInputSpecification
}
  type response = {
@as("Channel") channel: channel
}
  @module("@aws-sdk/client-medialive") @new external new_: (request) => t = "CreateChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
