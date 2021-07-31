type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mediaconvert") @new
external createClient: unit => awsServiceClient = "MediaConvertClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __timestampUnix = int
type __stringPatternWS = string
type __stringPatternW = string
type __stringPatternSNSignalProcessingNotificationNS = string
type __stringPatternSNManifestConfirmConditionNotificationNS = string
type __stringPatternS3MM2PPWWEEBBMMMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEEHttpsMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE = string
type __stringPatternS3MM2PPMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLLOOGGGGaAHttpsMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLLOOGGGGaA = string
type __stringPatternS3ASSETMAPXml = string
type __stringPatternS3 = string
type __stringPatternIdentityAZaZ26AZaZ09163 = string
type __stringPatternHttpsKantarmediaCom = string
type __stringPatternHttps = string
type __stringPatternDD = string
type __stringPatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912 = string
type __stringPatternArnAwsUsGovAcm = string
type __stringPatternAZaZ23AZaZ = string
type __stringPatternAZaZ0932 = string
type __stringPatternAZaZ0902 = string
type __stringPattern0xAFaF0908190908 = string
type __stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12 = string
type __stringPattern0940191020191209301 = string
type __stringPattern01D20305D205D = string
type __stringPattern010920405090509092 = string
type __stringPattern = string
type __stringMin9Max19PatternAZ26EastWestCentralNorthSouthEastWest1912 = string
type __stringMin3Max3PatternAZaZ3 = string
type __stringMin3Max3Pattern1809aFAF09aEAE = string
type __stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12 = string
type __stringMin32Max32Pattern09aFAF32 = string
type __stringMin24Max512PatternAZaZ0902 = string
type __stringMin1Max512PatternAZAZ09 = string
type __stringMin1Max50PatternAZAZ09 = string
type __stringMin1Max50 = string
type __stringMin1Max256 = string
type __stringMin1Max20 = string
type __stringMin1Max100000 = string
type __stringMin16Max24PatternAZaZ0922AZaZ0916 = string
type __stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMIVttVTTHttpsSccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMIVttVTT = string
type __stringMin14PatternS3Mov09PngHttpsMov09Png = string
type __stringMin14PatternS3BmpBMPPngPNGTgaTGAHttpsBmpBMPPngPNGTgaTGA = string
type __stringMin14PatternS3BmpBMPPngPNGHttpsBmpBMPPngPNG = string
type __stringMin11Max11Pattern01D20305D205D = string
type __stringMin1 = string
type __stringMin0 = string
type __string = string
type __integerMinNegative70Max0 = int
type __integerMinNegative60Max6 = int
type __integerMinNegative5Max5 = int
type __integerMinNegative50Max50 = int
type __integerMinNegative2Max3 = int
type __integerMinNegative2147483648Max2147483647 = int
type __integerMinNegative1Max3 = int
type __integerMinNegative1Max10 = int
type __integerMinNegative180Max180 = int
type __integerMinNegative1000Max1000 = int
type __integerMin96Max600 = int
type __integerMin8000Max96000 = int
type __integerMin8000Max192000 = int
type __integerMin64000Max640000 = int
type __integerMin6000Max1024000 = int
type __integerMin48000Max48000 = int
type __integerMin3Max15 = int
type __integerMin384000Max768000 = int
type __integerMin32Max8192 = int
type __integerMin32Max8182 = int
type __integerMin32000Max48000 = int
type __integerMin32000Max384000 = int
type __integerMin32000Max192000 = int
type __integerMin2Max2147483647 = int
type __integerMin25Max2000 = int
type __integerMin25Max10000 = int
type __integerMin24Max60000 = int
type __integerMin22050Max48000 = int
type __integerMin1Max64 = int
type __integerMin1Max60000 = int
type __integerMin1Max6 = int
type __integerMin1Max4 = int
type __integerMin1Max32 = int
type __integerMin1Max31 = int
type __integerMin1Max2147483647 = int
type __integerMin1Max2147483640 = int
type __integerMin1Max20 = int
type __integerMin1Max2 = int
type __integerMin1Max17895697 = int
type __integerMin1Max1001 = int
type __integerMin1Max10000000 = int
type __integerMin1Max100 = int
type __integerMin1Max10 = int
type __integerMin1Max1 = int
type __integerMin16Max24 = int
type __integerMin16000Max48000 = int
type __integerMin16000Max320000 = int
type __integerMin10Max48 = int
type __integerMin1000Max480000000 = int
type __integerMin1000Max300000000 = int
type __integerMin1000Max30000 = int
type __integerMin1000Max288000000 = int
type __integerMin1000Max1466400000 = int
type __integerMin1000Max1152000000 = int
type __integerMin100000Max100000000 = int
type __integerMin0Max99 = int
type __integerMin0Max96 = int
type __integerMin0Max9 = int
type __integerMin0Max8 = int
type __integerMin0Max7 = int
type __integerMin0Max65535 = int
type __integerMin0Max65534 = int
type __integerMin0Max50000 = int
type __integerMin0Max500 = int
type __integerMin0Max47185920 = int
type __integerMin0Max4194303 = int
type __integerMin0Max4 = int
type __integerMin0Max3600 = int
type __integerMin0Max30000 = int
type __integerMin0Max30 = int
type __integerMin0Max3 = int
type __integerMin0Max255 = int
type __integerMin0Max2147483647 = int
type __integerMin0Max16 = int
type __integerMin0Max15 = int
type __integerMin0Max1466400000 = int
type __integerMin0Max128 = int
type __integerMin0Max1152000000 = int
type __integerMin0Max10000 = int
type __integerMin0Max1000 = int
type __integerMin0Max100 = int
type __integerMin0Max10 = int
type __integerMin0Max1 = int
type __integerMin0Max0 = int
type __integer = int
type __doubleMinNegative6Max3 = float
type __doubleMinNegative60MaxNegative1 = float
type __doubleMinNegative60Max6 = float
type __doubleMinNegative60Max3 = float
type __doubleMinNegative59Max0 = float
type __doubleMin0Max2147483647 = float
type __doubleMin0Max1 = float
type __doubleMin0 = float
type webvttStylePassthrough = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type wavFormat = [@as("RF64") #RF64 | @as("RIFF") #RIFF]
type watermarkingStrength = [
  | @as("STRONGEST") #STRONGEST
  | @as("STRONGER") #STRONGER
  | @as("DEFAULT") #DEFAULT
  | @as("LIGHTER") #LIGHTER
  | @as("LIGHTEST") #LIGHTEST
]
type vp9RateControlMode = [@as("VBR") #VBR]
type vp9QualityTuningLevel = [@as("MULTI_PASS_HQ") #MULTI_PASS_HQ | @as("MULTI_PASS") #MULTI_PASS]
type vp9ParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type vp9FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
type vp9FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type vp8RateControlMode = [@as("VBR") #VBR]
type vp8QualityTuningLevel = [@as("MULTI_PASS_HQ") #MULTI_PASS_HQ | @as("MULTI_PASS") #MULTI_PASS]
type vp8ParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type vp8FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
type vp8FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type videoTimecodeInsertion = [@as("PIC_TIMING_SEI") #PIC_TIMING_SEI | @as("DISABLED") #DISABLED]
type videoCodec = [
  | @as("VP9") #VP9
  | @as("VP8") #VP8
  | @as("VC3") #VC3
  | @as("PRORES") #PRORES
  | @as("MPEG2") #MPEG2
  | @as("H_265") #H_265
  | @as("H_264") #H_264
  | @as("FRAME_CAPTURE") #FRAME_CAPTURE
  | @as("AVC_INTRA") #AVC_INTRA
  | @as("AV1") #AV1
]
type vc3Telecine = [@as("HARD") #HARD | @as("NONE") #NONE]
type vc3SlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type vc3ScanTypeConversionMode = [
  | @as("INTERLACED_OPTIMIZE") #INTERLACED_OPTIMIZE
  | @as("INTERLACED") #INTERLACED
]
type vc3InterlaceMode = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
type vc3FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
type vc3FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type vc3Class = [
  | @as("CLASS_220_10BIT") #CLASS_220_10BIT
  | @as("CLASS_220_8BIT") #CLASS_220_8BIT
  | @as("CLASS_145_8BIT") #CLASS_145_8BIT
]
type type_ = [@as("CUSTOM") #CUSTOM | @as("SYSTEM") #SYSTEM]
type ttmlStylePassthrough = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type timedMetadata = [@as("NONE") #NONE | @as("PASSTHROUGH") #PASSTHROUGH]
type timecodeSource = [
  | @as("SPECIFIEDSTART") #SPECIFIEDSTART
  | @as("ZEROBASED") #ZEROBASED
  | @as("EMBEDDED") #EMBEDDED
]
type timecodeBurninPosition = [
  | @as("BOTTOM_RIGHT") #BOTTOM_RIGHT
  | @as("BOTTOM_CENTER") #BOTTOM_CENTER
  | @as("BOTTOM_LEFT") #BOTTOM_LEFT
  | @as("MIDDLE_RIGHT") #MIDDLE_RIGHT
  | @as("MIDDLE_CENTER") #MIDDLE_CENTER
  | @as("MIDDLE_LEFT") #MIDDLE_LEFT
  | @as("TOP_RIGHT") #TOP_RIGHT
  | @as("TOP_LEFT") #TOP_LEFT
  | @as("TOP_CENTER") #TOP_CENTER
]
type teletextPageType = [
  | @as("PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE") #PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE
  | @as("PAGE_TYPE_PROGRAM_SCHEDULE") #PAGE_TYPE_PROGRAM_SCHEDULE
  | @as("PAGE_TYPE_ADDL_INFO") #PAGE_TYPE_ADDL_INFO
  | @as("PAGE_TYPE_SUBTITLE") #PAGE_TYPE_SUBTITLE
  | @as("PAGE_TYPE_INITIAL") #PAGE_TYPE_INITIAL
]
type statusUpdateInterval = [
  | @as("SECONDS_600") #SECONDS_600
  | @as("SECONDS_540") #SECONDS_540
  | @as("SECONDS_480") #SECONDS_480
  | @as("SECONDS_420") #SECONDS_420
  | @as("SECONDS_360") #SECONDS_360
  | @as("SECONDS_300") #SECONDS_300
  | @as("SECONDS_240") #SECONDS_240
  | @as("SECONDS_180") #SECONDS_180
  | @as("SECONDS_120") #SECONDS_120
  | @as("SECONDS_60") #SECONDS_60
  | @as("SECONDS_30") #SECONDS_30
  | @as("SECONDS_20") #SECONDS_20
  | @as("SECONDS_15") #SECONDS_15
  | @as("SECONDS_12") #SECONDS_12
  | @as("SECONDS_10") #SECONDS_10
]
type simulateReservedQueue = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type sccDestinationFramerate = [
  | @as("FRAMERATE_29_97_NON_DROPFRAME") #FRAMERATE_29_97_NON_DROPFRAME
  | @as("FRAMERATE_29_97_DROPFRAME") #FRAMERATE_29_97_DROPFRAME
  | @as("FRAMERATE_25") #FRAMERATE_25
  | @as("FRAMERATE_24") #FRAMERATE_24
  | @as("FRAMERATE_23_97") #FRAMERATE_23_97
]
type scalingBehavior = [@as("STRETCH_TO_OUTPUT") #STRETCH_TO_OUTPUT | @as("DEFAULT") #DEFAULT]
type s3ServerSideEncryptionType = [
  | @as("SERVER_SIDE_ENCRYPTION_KMS") #SERVER_SIDE_ENCRYPTION_KMS
  | @as("SERVER_SIDE_ENCRYPTION_S3") #SERVER_SIDE_ENCRYPTION_S3
]
type s3ObjectCannedAcl = [
  | @as("BUCKET_OWNER_FULL_CONTROL") #BUCKET_OWNER_FULL_CONTROL
  | @as("BUCKET_OWNER_READ") #BUCKET_OWNER_READ
  | @as("AUTHENTICATED_READ") #AUTHENTICATED_READ
  | @as("PUBLIC_READ") #PUBLIC_READ
]
type respondToAfd = [@as("PASSTHROUGH") #PASSTHROUGH | @as("RESPOND") #RESPOND | @as("NONE") #NONE]
type reservationPlanStatus = [@as("EXPIRED") #EXPIRED | @as("ACTIVE") #ACTIVE]
type renewalType = [@as("EXPIRE") #EXPIRE | @as("AUTO_RENEW") #AUTO_RENEW]
type queueStatus = [@as("PAUSED") #PAUSED | @as("ACTIVE") #ACTIVE]
type queueListBy = [@as("CREATION_DATE") #CREATION_DATE | @as("NAME") #NAME]
type proresTelecine = [@as("HARD") #HARD | @as("NONE") #NONE]
type proresSlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type proresScanTypeConversionMode = [
  | @as("INTERLACED_OPTIMIZE") #INTERLACED_OPTIMIZE
  | @as("INTERLACED") #INTERLACED
]
type proresParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type proresInterlaceMode = [
  | @as("FOLLOW_BOTTOM_FIELD") #FOLLOW_BOTTOM_FIELD
  | @as("FOLLOW_TOP_FIELD") #FOLLOW_TOP_FIELD
  | @as("BOTTOM_FIELD") #BOTTOM_FIELD
  | @as("TOP_FIELD") #TOP_FIELD
  | @as("PROGRESSIVE") #PROGRESSIVE
]
type proresFramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
type proresFramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type proresCodecProfile = [
  | @as("APPLE_PRORES_422_PROXY") #APPLE_PRORES_422_PROXY
  | @as("APPLE_PRORES_422_LT") #APPLE_PRORES_422_LT
  | @as("APPLE_PRORES_422_HQ") #APPLE_PRORES_422_HQ
  | @as("APPLE_PRORES_422") #APPLE_PRORES_422
]
type pricingPlan = [@as("RESERVED") #RESERVED | @as("ON_DEMAND") #ON_DEMAND]
type presetListBy = [
  | @as("SYSTEM") #SYSTEM
  | @as("CREATION_DATE") #CREATION_DATE
  | @as("NAME") #NAME
]
type outputSdt = [
  | @as("SDT_NONE") #SDT_NONE
  | @as("SDT_MANUAL") #SDT_MANUAL
  | @as("SDT_FOLLOW_IF_PRESENT") #SDT_FOLLOW_IF_PRESENT
  | @as("SDT_FOLLOW") #SDT_FOLLOW
]
type outputGroupType = [
  | @as("CMAF_GROUP_SETTINGS") #CMAF_GROUP_SETTINGS
  | @as("MS_SMOOTH_GROUP_SETTINGS") #MS_SMOOTH_GROUP_SETTINGS
  | @as("FILE_GROUP_SETTINGS") #FILE_GROUP_SETTINGS
  | @as("DASH_ISO_GROUP_SETTINGS") #DASH_ISO_GROUP_SETTINGS
  | @as("HLS_GROUP_SETTINGS") #HLS_GROUP_SETTINGS
]
type order = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type noiseReducerFilter = [
  | @as("TEMPORAL") #TEMPORAL
  | @as("SPATIAL") #SPATIAL
  | @as("CONSERVE") #CONSERVE
  | @as("SHARPEN") #SHARPEN
  | @as("LANCZOS") #LANCZOS
  | @as("GAUSSIAN") #GAUSSIAN
  | @as("MEAN") #MEAN
  | @as("BILATERAL") #BILATERAL
]
type noiseFilterPostTemporalSharpening = [
  | @as("AUTO") #AUTO
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
type nielsenUniqueTicPerAudioTrackType = [
  | @as("SAME_TICS_PER_TRACK") #SAME_TICS_PER_TRACK
  | @as("RESERVE_UNIQUE_TICS_PER_TRACK") #RESERVE_UNIQUE_TICS_PER_TRACK
]
type nielsenSourceWatermarkStatusType = [@as("WATERMARKED") #WATERMARKED | @as("CLEAN") #CLEAN]
type nielsenActiveWatermarkProcessType = [
  | @as("NAES2_AND_NW_AND_CBET") #NAES2_AND_NW_AND_CBET
  | @as("CBET") #CBET
  | @as("NAES2_AND_NW") #NAES2_AND_NW
]
type mxfProfile = [@as("OP1A") #OP1A | @as("XDCAM") #XDCAM | @as("D_10") #D_10]
type mxfAfdSignaling = [@as("COPY_FROM_VIDEO") #COPY_FROM_VIDEO | @as("NO_COPY") #NO_COPY]
type msSmoothManifestEncoding = [@as("UTF16") #UTF16 | @as("UTF8") #UTF8]
type msSmoothAudioDeduplication = [
  | @as("NONE") #NONE
  | @as("COMBINE_DUPLICATE_STREAMS") #COMBINE_DUPLICATE_STREAMS
]
type mpeg2TemporalAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type mpeg2Telecine = [@as("HARD") #HARD | @as("SOFT") #SOFT | @as("NONE") #NONE]
type mpeg2Syntax = [@as("D_10") #D_10 | @as("DEFAULT") #DEFAULT]
type mpeg2SpatialAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type mpeg2SlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type mpeg2SceneChangeDetect = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type mpeg2ScanTypeConversionMode = [
  | @as("INTERLACED_OPTIMIZE") #INTERLACED_OPTIMIZE
  | @as("INTERLACED") #INTERLACED
]
type mpeg2RateControlMode = [@as("CBR") #CBR | @as("VBR") #VBR]
type mpeg2QualityTuningLevel = [@as("MULTI_PASS") #MULTI_PASS | @as("SINGLE_PASS") #SINGLE_PASS]
type mpeg2ParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type mpeg2IntraDcPrecision = [
  | @as("INTRA_DC_PRECISION_11") #INTRA_DC_PRECISION_11
  | @as("INTRA_DC_PRECISION_10") #INTRA_DC_PRECISION_10
  | @as("INTRA_DC_PRECISION_9") #INTRA_DC_PRECISION_9
  | @as("INTRA_DC_PRECISION_8") #INTRA_DC_PRECISION_8
  | @as("AUTO") #AUTO
]
type mpeg2InterlaceMode = [
  | @as("FOLLOW_BOTTOM_FIELD") #FOLLOW_BOTTOM_FIELD
  | @as("FOLLOW_TOP_FIELD") #FOLLOW_TOP_FIELD
  | @as("BOTTOM_FIELD") #BOTTOM_FIELD
  | @as("TOP_FIELD") #TOP_FIELD
  | @as("PROGRESSIVE") #PROGRESSIVE
]
type mpeg2GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
type mpeg2FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
type mpeg2FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type mpeg2DynamicSubGop = [@as("STATIC") #STATIC | @as("ADAPTIVE") #ADAPTIVE]
type mpeg2CodecProfile = [@as("PROFILE_422") #PROFILE_422 | @as("MAIN") #MAIN]
type mpeg2CodecLevel = [
  | @as("HIGH") #HIGH
  | @as("HIGH1440") #HIGH1440
  | @as("MAIN") #MAIN
  | @as("LOW") #LOW
  | @as("AUTO") #AUTO
]
type mpeg2AdaptiveQuantization = [
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("OFF") #OFF
]
type mpdScte35Source = [@as("NONE") #NONE | @as("PASSTHROUGH") #PASSTHROUGH]
type mpdScte35Esam = [@as("NONE") #NONE | @as("INSERT") #INSERT]
type mpdCaptionContainerType = [@as("FRAGMENTED_MP4") #FRAGMENTED_MP4 | @as("RAW") #RAW]
type mpdAudioDuration = [
  | @as("MATCH_VIDEO_DURATION") #MATCH_VIDEO_DURATION
  | @as("DEFAULT_CODEC_DURATION") #DEFAULT_CODEC_DURATION
]
type mpdAccessibilityCaptionHints = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type mp4MoovPlacement = [@as("NORMAL") #NORMAL | @as("PROGRESSIVE_DOWNLOAD") #PROGRESSIVE_DOWNLOAD]
type mp4FreeSpaceBox = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type mp4CslgAtom = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type mp3RateControlMode = [@as("VBR") #VBR | @as("CBR") #CBR]
type movReference = [@as("EXTERNAL") #EXTERNAL | @as("SELF_CONTAINED") #SELF_CONTAINED]
type movPaddingControl = [@as("NONE") #NONE | @as("OMNEON") #OMNEON]
type movMpeg2FourCCControl = [@as("MPEG") #MPEG | @as("XDCAM") #XDCAM]
type movCslgAtom = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type movClapAtom = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type motionImagePlayback = [@as("REPEAT") #REPEAT | @as("ONCE") #ONCE]
type motionImageInsertionMode = [@as("PNG") #PNG | @as("MOV") #MOV]
type m3u8Scte35Source = [@as("NONE") #NONE | @as("PASSTHROUGH") #PASSTHROUGH]
type m3u8PcrControl = [
  | @as("CONFIGURED_PCR_PERIOD") #CONFIGURED_PCR_PERIOD
  | @as("PCR_EVERY_PES_PACKET") #PCR_EVERY_PES_PACKET
]
type m3u8NielsenId3 = [@as("NONE") #NONE | @as("INSERT") #INSERT]
type m3u8AudioDuration = [
  | @as("MATCH_VIDEO_DURATION") #MATCH_VIDEO_DURATION
  | @as("DEFAULT_CODEC_DURATION") #DEFAULT_CODEC_DURATION
]
type m2tsSegmentationStyle = [
  | @as("RESET_CADENCE") #RESET_CADENCE
  | @as("MAINTAIN_CADENCE") #MAINTAIN_CADENCE
]
type m2tsSegmentationMarkers = [
  | @as("EBP_LEGACY") #EBP_LEGACY
  | @as("EBP") #EBP
  | @as("PSI_SEGSTART") #PSI_SEGSTART
  | @as("RAI_ADAPT") #RAI_ADAPT
  | @as("RAI_SEGSTART") #RAI_SEGSTART
  | @as("NONE") #NONE
]
type m2tsScte35Source = [@as("NONE") #NONE | @as("PASSTHROUGH") #PASSTHROUGH]
type m2tsRateMode = [@as("CBR") #CBR | @as("VBR") #VBR]
type m2tsPcrControl = [
  | @as("CONFIGURED_PCR_PERIOD") #CONFIGURED_PCR_PERIOD
  | @as("PCR_EVERY_PES_PACKET") #PCR_EVERY_PES_PACKET
]
type m2tsNielsenId3 = [@as("NONE") #NONE | @as("INSERT") #INSERT]
type m2tsForceTsVideoEbpOrder = [@as("DEFAULT") #DEFAULT | @as("FORCE") #FORCE]
type m2tsEsRateInPes = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type m2tsEbpPlacement = [
  | @as("VIDEO_PID") #VIDEO_PID
  | @as("VIDEO_AND_AUDIO_PIDS") #VIDEO_AND_AUDIO_PIDS
]
type m2tsEbpAudioInterval = [
  | @as("VIDEO_INTERVAL") #VIDEO_INTERVAL
  | @as("VIDEO_AND_FIXED_INTERVALS") #VIDEO_AND_FIXED_INTERVALS
]
type m2tsBufferModel = [@as("NONE") #NONE | @as("MULTIPLEX") #MULTIPLEX]
type m2tsAudioDuration = [
  | @as("MATCH_VIDEO_DURATION") #MATCH_VIDEO_DURATION
  | @as("DEFAULT_CODEC_DURATION") #DEFAULT_CODEC_DURATION
]
type m2tsAudioBufferModel = [@as("ATSC") #ATSC | @as("DVB") #DVB]
type languageCode = [
  | @as("TNG") #TNG
  | @as("QPC") #QPC
  | @as("ORJ") #ORJ
  | @as("ZUL") #ZUL
  | @as("ZHA") #ZHA
  | @as("YOR") #YOR
  | @as("YID") #YID
  | @as("XHO") #XHO
  | @as("WOL") #WOL
  | @as("FRY") #FRY
  | @as("CYM") #CYM
  | @as("WLN") #WLN
  | @as("VOL") #VOL
  | @as("VEN") #VEN
  | @as("UZB") #UZB
  | @as("UKR") #UKR
  | @as("UIG") #UIG
  | @as("TWI") #TWI
  | @as("TUK") #TUK
  | @as("TUR") #TUR
  | @as("TSN") #TSN
  | @as("TSO") #TSO
  | @as("TON") #TON
  | @as("TIR") #TIR
  | @as("BOD") #BOD
  | @as("THA") #THA
  | @as("TEL") #TEL
  | @as("TAT") #TAT
  | @as("TAM") #TAM
  | @as("TGK") #TGK
  | @as("TAH") #TAH
  | @as("TGL") #TGL
  | @as("SWE") #SWE
  | @as("SSW") #SSW
  | @as("SWA") #SWA
  | @as("SUN") #SUN
  | @as("SOT") #SOT
  | @as("SOM") #SOM
  | @as("SLV") #SLV
  | @as("SLK") #SLK
  | @as("SIN") #SIN
  | @as("SND") #SND
  | @as("III") #III
  | @as("SNA") #SNA
  | @as("SRB") #SRB
  | @as("SRD") #SRD
  | @as("SAN") #SAN
  | @as("SAG") #SAG
  | @as("SMO") #SMO
  | @as("RUN") #RUN
  | @as("ROH") #ROH
  | @as("RON") #RON
  | @as("QAA") #QAA
  | @as("QUE") #QUE
  | @as("PUS") #PUS
  | @as("POL") #POL
  | @as("FAS") #FAS
  | @as("PLI") #PLI
  | @as("OSS") #OSS
  | @as("ORM") #ORM
  | @as("ORI") #ORI
  | @as("OJI") #OJI
  | @as("OCI") #OCI
  | @as("NNO") #NNO
  | @as("NOB") #NOB
  | @as("NOR") #NOR
  | @as("SME") #SME
  | @as("NEP") #NEP
  | @as("NDO") #NDO
  | @as("NBL") #NBL
  | @as("NDE") #NDE
  | @as("NAV") #NAV
  | @as("NAU") #NAU
  | @as("MON") #MON
  | @as("MAH") #MAH
  | @as("MAR") #MAR
  | @as("MRI") #MRI
  | @as("GLV") #GLV
  | @as("MLT") #MLT
  | @as("MAL") #MAL
  | @as("MSA") #MSA
  | @as("MLG") #MLG
  | @as("MKD") #MKD
  | @as("LTZ") #LTZ
  | @as("LUB") #LUB
  | @as("LIT") #LIT
  | @as("LIN") #LIN
  | @as("LIM") #LIM
  | @as("LAV") #LAV
  | @as("LAT") #LAT
  | @as("LAO") #LAO
  | @as("KUR") #KUR
  | @as("KUA") #KUA
  | @as("KON") #KON
  | @as("KOM") #KOM
  | @as("KIR") #KIR
  | @as("KIN") #KIN
  | @as("KIK") #KIK
  | @as("KAZ") #KAZ
  | @as("KAS") #KAS
  | @as("KAU") #KAU
  | @as("KAN") #KAN
  | @as("KAL") #KAL
  | @as("JAV") #JAV
  | @as("GLE") #GLE
  | @as("IPK") #IPK
  | @as("IKU") #IKU
  | @as("ILE") #ILE
  | @as("INA") #INA
  | @as("IND") #IND
  | @as("IBO") #IBO
  | @as("IDO") #IDO
  | @as("ISL") #ISL
  | @as("HUN") #HUN
  | @as("HMO") #HMO
  | @as("HER") #HER
  | @as("HEB") #HEB
  | @as("HAU") #HAU
  | @as("HAT") #HAT
  | @as("GUJ") #GUJ
  | @as("GRN") #GRN
  | @as("ELL") #ELL
  | @as("KAT") #KAT
  | @as("LUG") #LUG
  | @as("GLG") #GLG
  | @as("GLA") #GLA
  | @as("FUL") #FUL
  | @as("FRM") #FRM
  | @as("FIN") #FIN
  | @as("FIJ") #FIJ
  | @as("FAO") #FAO
  | @as("EWE") #EWE
  | @as("EST") #EST
  | @as("EPO") #EPO
  | @as("ENM") #ENM
  | @as("DZO") #DZO
  | @as("NLD") #NLD
  | @as("DIV") #DIV
  | @as("DAN") #DAN
  | @as("CES") #CES
  | @as("HRV") #HRV
  | @as("CRE") #CRE
  | @as("COS") #COS
  | @as("COR") #COR
  | @as("CHV") #CHV
  | @as("CHU") #CHU
  | @as("NYA") #NYA
  | @as("CHE") #CHE
  | @as("CHA") #CHA
  | @as("KHM") #KHM
  | @as("CAT") #CAT
  | @as("MYA") #MYA
  | @as("BUL") #BUL
  | @as("BRE") #BRE
  | @as("BOS") #BOS
  | @as("BIS") #BIS
  | @as("BIH") #BIH
  | @as("BEN") #BEN
  | @as("BEL") #BEL
  | @as("EUS") #EUS
  | @as("BAK") #BAK
  | @as("BAM") #BAM
  | @as("AZE") #AZE
  | @as("AYM") #AYM
  | @as("AVE") #AVE
  | @as("AVA") #AVA
  | @as("ASM") #ASM
  | @as("HYE") #HYE
  | @as("ARG") #ARG
  | @as("AMH") #AMH
  | @as("SQI") #SQI
  | @as("AKA") #AKA
  | @as("AFR") #AFR
  | @as("AAR") #AAR
  | @as("ABK") #ABK
  | @as("PAN") #PAN
  | @as("KOR") #KOR
  | @as("VIE") #VIE
  | @as("URD") #URD
  | @as("ITA") #ITA
  | @as("POR") #POR
  | @as("RUS") #RUS
  | @as("JPN") #JPN
  | @as("HIN") #HIN
  | @as("ARA") #ARA
  | @as("ZHO") #ZHO
  | @as("GER") #GER
  | @as("DEU") #DEU
  | @as("FRA") #FRA
  | @as("SPA") #SPA
  | @as("ENG") #ENG
]
type jobTemplateListBy = [
  | @as("SYSTEM") #SYSTEM
  | @as("CREATION_DATE") #CREATION_DATE
  | @as("NAME") #NAME
]
type jobStatus = [
  | @as("ERROR") #ERROR
  | @as("CANCELED") #CANCELED
  | @as("COMPLETE") #COMPLETE
  | @as("PROGRESSING") #PROGRESSING
  | @as("SUBMITTED") #SUBMITTED
]
type jobPhase = [
  | @as("UPLOADING") #UPLOADING
  | @as("TRANSCODING") #TRANSCODING
  | @as("PROBING") #PROBING
]
type inputTimecodeSource = [
  | @as("SPECIFIEDSTART") #SPECIFIEDSTART
  | @as("ZEROBASED") #ZEROBASED
  | @as("EMBEDDED") #EMBEDDED
]
type inputScanType = [@as("PSF") #PSF | @as("AUTO") #AUTO]
type inputSampleRange = [
  | @as("LIMITED_RANGE") #LIMITED_RANGE
  | @as("FULL_RANGE") #FULL_RANGE
  | @as("FOLLOW") #FOLLOW
]
type inputRotate = [
  | @as("AUTO") #AUTO
  | @as("DEGREES_270") #DEGREES_270
  | @as("DEGREES_180") #DEGREES_180
  | @as("DEGREES_90") #DEGREES_90
  | @as("DEGREE_0") #DEGREE_0
]
type inputPsiControl = [@as("USE_PSI") #USE_PSI | @as("IGNORE_PSI") #IGNORE_PSI]
type inputFilterEnable = [@as("FORCE") #FORCE | @as("DISABLE") #DISABLE | @as("AUTO") #AUTO]
type inputDenoiseFilter = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type inputDeblockFilter = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type imscStylePassthrough = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type hlsTimedMetadataId3Frame = [@as("TDRL") #TDRL | @as("PRIV") #PRIV | @as("NONE") #NONE]
type hlsStreamInfResolution = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type hlsSegmentControl = [@as("SEGMENTED_FILES") #SEGMENTED_FILES | @as("SINGLE_FILE") #SINGLE_FILE]
type hlsProgramDateTime = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type hlsOutputSelection = [
  | @as("SEGMENTS_ONLY") #SEGMENTS_ONLY
  | @as("MANIFESTS_AND_SEGMENTS") #MANIFESTS_AND_SEGMENTS
]
type hlsOfflineEncrypted = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type hlsManifestDurationFormat = [@as("INTEGER") #INTEGER | @as("FLOATING_POINT") #FLOATING_POINT]
type hlsManifestCompression = [@as("NONE") #NONE | @as("GZIP") #GZIP]
type hlsKeyProviderType = [@as("STATIC_KEY") #STATIC_KEY | @as("SPEKE") #SPEKE]
type hlsInitializationVectorInManifest = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type hlsIFrameOnlyManifest = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type hlsEncryptionType = [@as("SAMPLE_AES") #SAMPLE_AES | @as("AES128") #AES128]
type hlsDirectoryStructure = [
  | @as("SUBDIRECTORY_PER_STREAM") #SUBDIRECTORY_PER_STREAM
  | @as("SINGLE_DIRECTORY") #SINGLE_DIRECTORY
]
type hlsDescriptiveVideoServiceFlag = [@as("FLAG") #FLAG | @as("DONT_FLAG") #DONT_FLAG]
type hlsCodecSpecification = [@as("RFC_4281") #RFC_4281 | @as("RFC_6381") #RFC_6381]
type hlsClientCache = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type hlsCaptionLanguageSetting = [@as("NONE") #NONE | @as("OMIT") #OMIT | @as("INSERT") #INSERT]
type hlsAudioTrackType = [
  | @as("AUDIO_ONLY_VARIANT_STREAM") #AUDIO_ONLY_VARIANT_STREAM
  | @as("ALTERNATE_AUDIO_NOT_AUTO_SELECT") #ALTERNATE_AUDIO_NOT_AUTO_SELECT
  | @as("ALTERNATE_AUDIO_AUTO_SELECT") #ALTERNATE_AUDIO_AUTO_SELECT
  | @as("ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT") #ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT
]
type hlsAudioOnlyHeader = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type hlsAudioOnlyContainer = [@as("M2TS") #M2TS | @as("AUTOMATIC") #AUTOMATIC]
type hlsAdMarkers = [@as("ELEMENTAL_SCTE35") #ELEMENTAL_SCTE35 | @as("ELEMENTAL") #ELEMENTAL]
type h265WriteMp4PackagingType = [@as("HEV1") #HEV1 | @as("HVC1") #HVC1]
type h265UnregisteredSeiTimecode = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265Tiles = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265TemporalIds = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265TemporalAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265Telecine = [@as("HARD") #HARD | @as("SOFT") #SOFT | @as("NONE") #NONE]
type h265SpatialAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265SlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265SceneChangeDetect = [
  | @as("TRANSITION_DETECTION") #TRANSITION_DETECTION
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
type h265ScanTypeConversionMode = [
  | @as("INTERLACED_OPTIMIZE") #INTERLACED_OPTIMIZE
  | @as("INTERLACED") #INTERLACED
]
type h265SampleAdaptiveOffsetFilterMode = [
  | @as("OFF") #OFF
  | @as("ADAPTIVE") #ADAPTIVE
  | @as("DEFAULT") #DEFAULT
]
type h265RateControlMode = [@as("QVBR") #QVBR | @as("CBR") #CBR | @as("VBR") #VBR]
type h265QualityTuningLevel = [
  | @as("MULTI_PASS_HQ") #MULTI_PASS_HQ
  | @as("SINGLE_PASS_HQ") #SINGLE_PASS_HQ
  | @as("SINGLE_PASS") #SINGLE_PASS
]
type h265ParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type h265InterlaceMode = [
  | @as("FOLLOW_BOTTOM_FIELD") #FOLLOW_BOTTOM_FIELD
  | @as("FOLLOW_TOP_FIELD") #FOLLOW_TOP_FIELD
  | @as("BOTTOM_FIELD") #BOTTOM_FIELD
  | @as("TOP_FIELD") #TOP_FIELD
  | @as("PROGRESSIVE") #PROGRESSIVE
]
type h265GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
type h265GopBReference = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
type h265FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type h265FlickerAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265DynamicSubGop = [@as("STATIC") #STATIC | @as("ADAPTIVE") #ADAPTIVE]
type h265CodecProfile = [
  | @as("MAIN_422_10BIT_HIGH") #MAIN_422_10BIT_HIGH
  | @as("MAIN_422_10BIT_MAIN") #MAIN_422_10BIT_MAIN
  | @as("MAIN_422_8BIT_HIGH") #MAIN_422_8BIT_HIGH
  | @as("MAIN_422_8BIT_MAIN") #MAIN_422_8BIT_MAIN
  | @as("MAIN10_HIGH") #MAIN10_HIGH
  | @as("MAIN10_MAIN") #MAIN10_MAIN
  | @as("MAIN_HIGH") #MAIN_HIGH
  | @as("MAIN_MAIN") #MAIN_MAIN
]
type h265CodecLevel = [
  | @as("LEVEL_6_2") #LEVEL_6_2
  | @as("LEVEL_6_1") #LEVEL_6_1
  | @as("LEVEL_6") #LEVEL_6
  | @as("LEVEL_5_2") #LEVEL_5_2
  | @as("LEVEL_5_1") #LEVEL_5_1
  | @as("LEVEL_5") #LEVEL_5
  | @as("LEVEL_4_1") #LEVEL_4_1
  | @as("LEVEL_4") #LEVEL_4
  | @as("LEVEL_3_1") #LEVEL_3_1
  | @as("LEVEL_3") #LEVEL_3
  | @as("LEVEL_2_1") #LEVEL_2_1
  | @as("LEVEL_2") #LEVEL_2
  | @as("LEVEL_1") #LEVEL_1
  | @as("AUTO") #AUTO
]
type h265AlternateTransferFunctionSei = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h265AdaptiveQuantization = [
  | @as("MAX") #MAX
  | @as("HIGHER") #HIGHER
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("OFF") #OFF
]
type h264UnregisteredSeiTimecode = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264TemporalAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264Telecine = [@as("HARD") #HARD | @as("SOFT") #SOFT | @as("NONE") #NONE]
type h264Syntax = [@as("RP2027") #RP2027 | @as("DEFAULT") #DEFAULT]
type h264SpatialAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264SlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264SceneChangeDetect = [
  | @as("TRANSITION_DETECTION") #TRANSITION_DETECTION
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
type h264ScanTypeConversionMode = [
  | @as("INTERLACED_OPTIMIZE") #INTERLACED_OPTIMIZE
  | @as("INTERLACED") #INTERLACED
]
type h264RepeatPps = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264RateControlMode = [@as("QVBR") #QVBR | @as("CBR") #CBR | @as("VBR") #VBR]
type h264QualityTuningLevel = [
  | @as("MULTI_PASS_HQ") #MULTI_PASS_HQ
  | @as("SINGLE_PASS_HQ") #SINGLE_PASS_HQ
  | @as("SINGLE_PASS") #SINGLE_PASS
]
type h264ParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type h264InterlaceMode = [
  | @as("FOLLOW_BOTTOM_FIELD") #FOLLOW_BOTTOM_FIELD
  | @as("FOLLOW_TOP_FIELD") #FOLLOW_TOP_FIELD
  | @as("BOTTOM_FIELD") #BOTTOM_FIELD
  | @as("TOP_FIELD") #TOP_FIELD
  | @as("PROGRESSIVE") #PROGRESSIVE
]
type h264GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
type h264GopBReference = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
type h264FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type h264FlickerAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type h264FieldEncoding = [@as("FORCE_FIELD") #FORCE_FIELD | @as("PAFF") #PAFF]
type h264EntropyEncoding = [@as("CAVLC") #CAVLC | @as("CABAC") #CABAC]
type h264DynamicSubGop = [@as("STATIC") #STATIC | @as("ADAPTIVE") #ADAPTIVE]
type h264CodecProfile = [
  | @as("MAIN") #MAIN
  | @as("HIGH_422_10BIT") #HIGH_422_10BIT
  | @as("HIGH_422") #HIGH_422
  | @as("HIGH_10BIT") #HIGH_10BIT
  | @as("HIGH") #HIGH
  | @as("BASELINE") #BASELINE
]
type h264CodecLevel = [
  | @as("LEVEL_5_2") #LEVEL_5_2
  | @as("LEVEL_5_1") #LEVEL_5_1
  | @as("LEVEL_5") #LEVEL_5
  | @as("LEVEL_4_2") #LEVEL_4_2
  | @as("LEVEL_4_1") #LEVEL_4_1
  | @as("LEVEL_4") #LEVEL_4
  | @as("LEVEL_3_2") #LEVEL_3_2
  | @as("LEVEL_3_1") #LEVEL_3_1
  | @as("LEVEL_3") #LEVEL_3
  | @as("LEVEL_2_2") #LEVEL_2_2
  | @as("LEVEL_2_1") #LEVEL_2_1
  | @as("LEVEL_2") #LEVEL_2
  | @as("LEVEL_1_3") #LEVEL_1_3
  | @as("LEVEL_1_2") #LEVEL_1_2
  | @as("LEVEL_1_1") #LEVEL_1_1
  | @as("LEVEL_1") #LEVEL_1
  | @as("AUTO") #AUTO
]
type h264AdaptiveQuantization = [
  | @as("MAX") #MAX
  | @as("HIGHER") #HIGHER
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("AUTO") #AUTO
  | @as("OFF") #OFF
]
type fontScript = [@as("HANT") #HANT | @as("HANS") #HANS | @as("AUTOMATIC") #AUTOMATIC]
type fileSourceConvert608To708 = [@as("DISABLED") #DISABLED | @as("UPCONVERT") #UPCONVERT]
type f4vMoovPlacement = [@as("NORMAL") #NORMAL | @as("PROGRESSIVE_DOWNLOAD") #PROGRESSIVE_DOWNLOAD]
type embeddedTerminateCaptions = [@as("DISABLED") #DISABLED | @as("END_OF_INPUT") #END_OF_INPUT]
type embeddedConvert608To708 = [@as("DISABLED") #DISABLED | @as("UPCONVERT") #UPCONVERT]
type eac3SurroundMode = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
  | @as("NOT_INDICATED") #NOT_INDICATED
]
type eac3SurroundExMode = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
  | @as("NOT_INDICATED") #NOT_INDICATED
]
type eac3StereoDownmix = [
  | @as("DPL2") #DPL2
  | @as("LT_RT") #LT_RT
  | @as("LO_RO") #LO_RO
  | @as("NOT_INDICATED") #NOT_INDICATED
]
type eac3PhaseControl = [@as("NO_SHIFT") #NO_SHIFT | @as("SHIFT_90_DEGREES") #SHIFT_90_DEGREES]
type eac3PassthroughControl = [
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
  | @as("WHEN_POSSIBLE") #WHEN_POSSIBLE
]
type eac3MetadataControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
type eac3LfeFilter = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type eac3LfeControl = [@as("NO_LFE") #NO_LFE | @as("LFE") #LFE]
type eac3DynamicRangeCompressionRf = [
  | @as("SPEECH") #SPEECH
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
  | @as("NONE") #NONE
]
type eac3DynamicRangeCompressionLine = [
  | @as("SPEECH") #SPEECH
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
  | @as("NONE") #NONE
]
type eac3DcFilter = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type eac3CodingMode = [
  | @as("CODING_MODE_3_2") #CODING_MODE_3_2
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
]
type eac3BitstreamMode = [
  | @as("VISUALLY_IMPAIRED") #VISUALLY_IMPAIRED
  | @as("HEARING_IMPAIRED") #HEARING_IMPAIRED
  | @as("EMERGENCY") #EMERGENCY
  | @as("COMMENTARY") #COMMENTARY
  | @as("COMPLETE_MAIN") #COMPLETE_MAIN
]
type eac3AttenuationControl = [@as("NONE") #NONE | @as("ATTENUATE_3_DB") #ATTENUATE_3_DB]
type eac3AtmosSurroundExMode = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
  | @as("NOT_INDICATED") #NOT_INDICATED
]
type eac3AtmosStereoDownmix = [
  | @as("DPL2") #DPL2
  | @as("SURROUND") #SURROUND
  | @as("STEREO") #STEREO
  | @as("NOT_INDICATED") #NOT_INDICATED
]
type eac3AtmosMeteringMode = [
  | @as("ITU_BS_1770_4") #ITU_BS_1770_4
  | @as("ITU_BS_1770_3") #ITU_BS_1770_3
  | @as("ITU_BS_1770_2") #ITU_BS_1770_2
  | @as("ITU_BS_1770_1") #ITU_BS_1770_1
  | @as("LEQ_A") #LEQ_A
]
type eac3AtmosDynamicRangeCompressionRf = [
  | @as("SPEECH") #SPEECH
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
  | @as("NONE") #NONE
]
type eac3AtmosDynamicRangeCompressionLine = [
  | @as("SPEECH") #SPEECH
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
  | @as("NONE") #NONE
]
type eac3AtmosDialogueIntelligence = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type eac3AtmosCodingMode = [@as("CODING_MODE_9_1_6") #CODING_MODE_9_1_6]
type eac3AtmosBitstreamMode = [@as("COMPLETE_MAIN") #COMPLETE_MAIN]
type dvbddsHandling = [
  | @as("NO_DISPLAY_WINDOW") #NO_DISPLAY_WINDOW
  | @as("SPECIFIED") #SPECIFIED
  | @as("NONE") #NONE
]
type dvbSubtitlingType = [@as("STANDARD") #STANDARD | @as("HEARING_IMPAIRED") #HEARING_IMPAIRED]
type dvbSubtitleTeletextSpacing = [
  | @as("PROPORTIONAL") #PROPORTIONAL
  | @as("FIXED_GRID") #FIXED_GRID
]
type dvbSubtitleShadowColor = [@as("WHITE") #WHITE | @as("BLACK") #BLACK | @as("NONE") #NONE]
type dvbSubtitleOutlineColor = [
  | @as("BLUE") #BLUE
  | @as("GREEN") #GREEN
  | @as("RED") #RED
  | @as("YELLOW") #YELLOW
  | @as("WHITE") #WHITE
  | @as("BLACK") #BLACK
]
type dvbSubtitleFontColor = [
  | @as("BLUE") #BLUE
  | @as("GREEN") #GREEN
  | @as("RED") #RED
  | @as("YELLOW") #YELLOW
  | @as("BLACK") #BLACK
  | @as("WHITE") #WHITE
]
type dvbSubtitleBackgroundColor = [@as("WHITE") #WHITE | @as("BLACK") #BLACK | @as("NONE") #NONE]
type dvbSubtitleAlignment = [@as("LEFT") #LEFT | @as("CENTERED") #CENTERED]
type dropFrameTimecode = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type dolbyVisionProfile = [@as("PROFILE_5") #PROFILE_5]
type dolbyVisionLevel6Mode = [
  | @as("SPECIFY") #SPECIFY
  | @as("RECALCULATE") #RECALCULATE
  | @as("PASSTHROUGH") #PASSTHROUGH
]
type describeEndpointsMode = [@as("GET_ONLY") #GET_ONLY | @as("DEFAULT") #DEFAULT]
type deinterlacerMode = [
  | @as("ADAPTIVE") #ADAPTIVE
  | @as("INVERSE_TELECINE") #INVERSE_TELECINE
  | @as("DEINTERLACE") #DEINTERLACE
]
type deinterlacerControl = [@as("NORMAL") #NORMAL | @as("FORCE_ALL_FRAMES") #FORCE_ALL_FRAMES]
type deinterlaceAlgorithm = [
  | @as("BLEND_TICKER") #BLEND_TICKER
  | @as("BLEND") #BLEND
  | @as("INTERPOLATE_TICKER") #INTERPOLATE_TICKER
  | @as("INTERPOLATE") #INTERPOLATE
]
type decryptionMode = [@as("AES_GCM") #AES_GCM | @as("AES_CBC") #AES_CBC | @as("AES_CTR") #AES_CTR]
type dashIsoWriteSegmentTimelineInRepresentation = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
]
type dashIsoSegmentControl = [
  | @as("SEGMENTED_FILES") #SEGMENTED_FILES
  | @as("SINGLE_FILE") #SINGLE_FILE
]
type dashIsoPtsOffsetHandlingForBFrames = [
  | @as("MATCH_INITIAL_PTS") #MATCH_INITIAL_PTS
  | @as("ZERO_BASED") #ZERO_BASED
]
type dashIsoPlaybackDeviceCompatibility = [
  | @as("UNENCRYPTED_SEI") #UNENCRYPTED_SEI
  | @as("CENC_V1") #CENC_V1
]
type dashIsoMpdProfile = [
  | @as("ON_DEMAND_PROFILE") #ON_DEMAND_PROFILE
  | @as("MAIN_PROFILE") #MAIN_PROFILE
]
type dashIsoHbbtvCompliance = [@as("NONE") #NONE | @as("HBBTV_1_5") #HBBTV_1_5]
type dashIsoGroupAudioChannelConfigSchemeIdUri = [
  | @as("DOLBY_CHANNEL_CONFIGURATION") #DOLBY_CHANNEL_CONFIGURATION
  | @as("MPEG_CHANNEL_CONFIGURATION") #MPEG_CHANNEL_CONFIGURATION
]
type containerType = [
  | @as("RAW") #RAW
  | @as("WEBM") #WEBM
  | @as("MXF") #MXF
  | @as("MPD") #MPD
  | @as("MP4") #MP4
  | @as("MOV") #MOV
  | @as("CMFC") #CMFC
  | @as("M3U8") #M3U8
  | @as("M2TS") #M2TS
  | @as("ISMV") #ISMV
  | @as("F4V") #F4V
]
type commitment = [@as("ONE_YEAR") #ONE_YEAR]
type colorSpaceUsage = [@as("FALLBACK") #FALLBACK | @as("FORCE") #FORCE]
type colorSpaceConversion = [
  | @as("FORCE_HLG_2020") #FORCE_HLG_2020
  | @as("FORCE_HDR10") #FORCE_HDR10
  | @as("FORCE_709") #FORCE_709
  | @as("FORCE_601") #FORCE_601
  | @as("NONE") #NONE
]
type colorSpace = [
  | @as("HLG_2020") #HLG_2020
  | @as("HDR10") #HDR10
  | @as("REC_709") #REC_709
  | @as("REC_601") #REC_601
  | @as("FOLLOW") #FOLLOW
]
type colorMetadata = [@as("INSERT") #INSERT | @as("IGNORE") #IGNORE]
type cmfcScte35Source = [@as("NONE") #NONE | @as("PASSTHROUGH") #PASSTHROUGH]
type cmfcScte35Esam = [@as("NONE") #NONE | @as("INSERT") #INSERT]
type cmfcIFrameOnlyManifest = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type cmfcDescriptiveVideoServiceFlag = [@as("FLAG") #FLAG | @as("DONT_FLAG") #DONT_FLAG]
type cmfcAudioTrackType = [
  | @as("ALTERNATE_AUDIO_NOT_AUTO_SELECT") #ALTERNATE_AUDIO_NOT_AUTO_SELECT
  | @as("ALTERNATE_AUDIO_AUTO_SELECT") #ALTERNATE_AUDIO_AUTO_SELECT
  | @as("ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT") #ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT
]
type cmfcAudioDuration = [
  | @as("MATCH_VIDEO_DURATION") #MATCH_VIDEO_DURATION
  | @as("DEFAULT_CODEC_DURATION") #DEFAULT_CODEC_DURATION
]
type cmafWriteSegmentTimelineInRepresentation = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
]
type cmafWriteHLSManifest = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type cmafWriteDASHManifest = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type cmafStreamInfResolution = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type cmafSegmentControl = [
  | @as("SEGMENTED_FILES") #SEGMENTED_FILES
  | @as("SINGLE_FILE") #SINGLE_FILE
]
type cmafPtsOffsetHandlingForBFrames = [
  | @as("MATCH_INITIAL_PTS") #MATCH_INITIAL_PTS
  | @as("ZERO_BASED") #ZERO_BASED
]
type cmafMpdProfile = [
  | @as("ON_DEMAND_PROFILE") #ON_DEMAND_PROFILE
  | @as("MAIN_PROFILE") #MAIN_PROFILE
]
type cmafManifestDurationFormat = [@as("INTEGER") #INTEGER | @as("FLOATING_POINT") #FLOATING_POINT]
type cmafManifestCompression = [@as("NONE") #NONE | @as("GZIP") #GZIP]
type cmafKeyProviderType = [@as("STATIC_KEY") #STATIC_KEY | @as("SPEKE") #SPEKE]
type cmafInitializationVectorInManifest = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
type cmafEncryptionType = [@as("AES_CTR") #AES_CTR | @as("SAMPLE_AES") #SAMPLE_AES]
type cmafCodecSpecification = [@as("RFC_4281") #RFC_4281 | @as("RFC_6381") #RFC_6381]
type cmafClientCache = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type captionSourceType = [
  | @as("WEBVTT") #WEBVTT
  | @as("IMSC") #IMSC
  | @as("NULL_SOURCE") #NULL_SOURCE
  | @as("TELETEXT") #TELETEXT
  | @as("SMPTE_TT") #SMPTE_TT
  | @as("SMI") #SMI
  | @as("SRT") #SRT
  | @as("STL") #STL
  | @as("TTML") #TTML
  | @as("SCC") #SCC
  | @as("SCTE20") #SCTE20
  | @as("EMBEDDED") #EMBEDDED
  | @as("DVB_SUB") #DVB_SUB
  | @as("ANCILLARY") #ANCILLARY
]
type captionDestinationType = [
  | @as("WEBVTT") #WEBVTT
  | @as("TTML") #TTML
  | @as("TELETEXT") #TELETEXT
  | @as("SMI") #SMI
  | @as("SRT") #SRT
  | @as("SCC") #SCC
  | @as("SCTE20_PLUS_EMBEDDED") #SCTE20_PLUS_EMBEDDED
  | @as("IMSC") #IMSC
  | @as("EMBEDDED_PLUS_SCTE20") #EMBEDDED_PLUS_SCTE20
  | @as("EMBEDDED") #EMBEDDED
  | @as("DVB_SUB") #DVB_SUB
  | @as("BURN_IN") #BURN_IN
]
type burninSubtitleTeletextSpacing = [
  | @as("PROPORTIONAL") #PROPORTIONAL
  | @as("FIXED_GRID") #FIXED_GRID
]
type burninSubtitleShadowColor = [@as("WHITE") #WHITE | @as("BLACK") #BLACK | @as("NONE") #NONE]
type burninSubtitleOutlineColor = [
  | @as("BLUE") #BLUE
  | @as("GREEN") #GREEN
  | @as("RED") #RED
  | @as("YELLOW") #YELLOW
  | @as("WHITE") #WHITE
  | @as("BLACK") #BLACK
]
type burninSubtitleFontColor = [
  | @as("BLUE") #BLUE
  | @as("GREEN") #GREEN
  | @as("RED") #RED
  | @as("YELLOW") #YELLOW
  | @as("BLACK") #BLACK
  | @as("WHITE") #WHITE
]
type burninSubtitleBackgroundColor = [@as("WHITE") #WHITE | @as("BLACK") #BLACK | @as("NONE") #NONE]
type burninSubtitleAlignment = [@as("LEFT") #LEFT | @as("CENTERED") #CENTERED]
type billingTagsSource = [
  | @as("JOB") #JOB
  | @as("JOB_TEMPLATE") #JOB_TEMPLATE
  | @as("PRESET") #PRESET
  | @as("QUEUE") #QUEUE
]
type avcIntraUhdQualityTuningLevel = [
  | @as("MULTI_PASS") #MULTI_PASS
  | @as("SINGLE_PASS") #SINGLE_PASS
]
type avcIntraTelecine = [@as("HARD") #HARD | @as("NONE") #NONE]
type avcIntraSlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type avcIntraScanTypeConversionMode = [
  | @as("INTERLACED_OPTIMIZE") #INTERLACED_OPTIMIZE
  | @as("INTERLACED") #INTERLACED
]
type avcIntraInterlaceMode = [
  | @as("FOLLOW_BOTTOM_FIELD") #FOLLOW_BOTTOM_FIELD
  | @as("FOLLOW_TOP_FIELD") #FOLLOW_TOP_FIELD
  | @as("BOTTOM_FIELD") #BOTTOM_FIELD
  | @as("TOP_FIELD") #TOP_FIELD
  | @as("PROGRESSIVE") #PROGRESSIVE
]
type avcIntraFramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
type avcIntraFramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type avcIntraClass = [
  | @as("CLASS_4K_2K") #CLASS_4K_2K
  | @as("CLASS_200") #CLASS_200
  | @as("CLASS_100") #CLASS_100
  | @as("CLASS_50") #CLASS_50
]
type av1SpatialAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type av1RateControlMode = [@as("QVBR") #QVBR]
type av1FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
type av1FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
type av1AdaptiveQuantization = [
  | @as("MAX") #MAX
  | @as("HIGHER") #HIGHER
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("OFF") #OFF
]
type audioTypeControl = [@as("USE_CONFIGURED") #USE_CONFIGURED | @as("FOLLOW_INPUT") #FOLLOW_INPUT]
type audioSelectorType = [
  | @as("LANGUAGE_CODE") #LANGUAGE_CODE
  | @as("TRACK") #TRACK
  | @as("PID") #PID
]
type audioNormalizationPeakCalculation = [@as("NONE") #NONE | @as("TRUE_PEAK") #TRUE_PEAK]
type audioNormalizationLoudnessLogging = [@as("DONT_LOG") #DONT_LOG | @as("LOG") #LOG]
type audioNormalizationAlgorithmControl = [
  | @as("MEASURE_ONLY") #MEASURE_ONLY
  | @as("CORRECT_AUDIO") #CORRECT_AUDIO
]
type audioNormalizationAlgorithm = [
  | @as("ITU_BS_1770_4") #ITU_BS_1770_4
  | @as("ITU_BS_1770_3") #ITU_BS_1770_3
  | @as("ITU_BS_1770_2") #ITU_BS_1770_2
  | @as("ITU_BS_1770_1") #ITU_BS_1770_1
]
type audioLanguageCodeControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
type audioDefaultSelection = [@as("NOT_DEFAULT") #NOT_DEFAULT | @as("DEFAULT") #DEFAULT]
type audioCodec = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("OPUS") #OPUS
  | @as("VORBIS") #VORBIS
  | @as("EAC3_ATMOS") #EAC3_ATMOS
  | @as("EAC3") #EAC3
  | @as("AC3") #AC3
  | @as("AIFF") #AIFF
  | @as("WAV") #WAV
  | @as("MP3") #MP3
  | @as("MP2") #MP2
  | @as("AAC") #AAC
]
type audioChannelTag = [
  | @as("VHR") #VHR
  | @as("VHC") #VHC
  | @as("VHL") #VHL
  | @as("TCS") #TCS
  | @as("RSD") #RSD
  | @as("LSD") #LSD
  | @as("CS") #CS
  | @as("RC") #RC
  | @as("LC") #LC
  | @as("RS") #RS
  | @as("LS") #LS
  | @as("LFE") #LFE
  | @as("C") #C
  | @as("R") #R
  | @as("L") #L
]
type antiAlias = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type ancillaryTerminateCaptions = [@as("DISABLED") #DISABLED | @as("END_OF_INPUT") #END_OF_INPUT]
type ancillaryConvert608To708 = [@as("DISABLED") #DISABLED | @as("UPCONVERT") #UPCONVERT]
type alphaBehavior = [@as("REMAP_TO_LUMA") #REMAP_TO_LUMA | @as("DISCARD") #DISCARD]
type afdSignaling = [@as("FIXED") #FIXED | @as("AUTO") #AUTO | @as("NONE") #NONE]
type accelerationStatus = [
  | @as("NOT_ACCELERATED") #NOT_ACCELERATED
  | @as("ACCELERATED") #ACCELERATED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("NOT_APPLICABLE") #NOT_APPLICABLE
]
type accelerationMode = [
  | @as("PREFERRED") #PREFERRED
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
type ac3MetadataControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
type ac3LfeFilter = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type ac3DynamicRangeCompressionRf = [
  | @as("NONE") #NONE
  | @as("SPEECH") #SPEECH
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
]
type ac3DynamicRangeCompressionProfile = [@as("NONE") #NONE | @as("FILM_STANDARD") #FILM_STANDARD]
type ac3DynamicRangeCompressionLine = [
  | @as("NONE") #NONE
  | @as("SPEECH") #SPEECH
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
]
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
  | @as("COMMENTARY") #COMMENTARY
  | @as("COMPLETE_MAIN") #COMPLETE_MAIN
]
type aacVbrQuality = [
  | @as("HIGH") #HIGH
  | @as("MEDIUM_HIGH") #MEDIUM_HIGH
  | @as("MEDIUM_LOW") #MEDIUM_LOW
  | @as("LOW") #LOW
]
type aacSpecification = [@as("MPEG4") #MPEG4 | @as("MPEG2") #MPEG2]
type aacRawFormat = [@as("NONE") #NONE | @as("LATM_LOAS") #LATM_LOAS]
type aacRateControlMode = [@as("VBR") #VBR | @as("CBR") #CBR]
type aacCodingMode = [
  | @as("CODING_MODE_5_1") #CODING_MODE_5_1
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_1") #CODING_MODE_1_1
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
  | @as("AD_RECEIVER_MIX") #AD_RECEIVER_MIX
]
type aacCodecProfile = [@as("HEV2") #HEV2 | @as("HEV1") #HEV1 | @as("LC") #LC]
type aacAudioDescriptionBroadcasterMix = [
  | @as("NORMAL") #NORMAL
  | @as("BROADCASTER_MIXED_AD") #BROADCASTER_MIXED_AD
]
type __mapOf__string = Js.Dict.t<__string>
type __listOf__stringPatternS3ASSETMAPXml = array<__stringPatternS3ASSETMAPXml>
type __listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12 = array<
  __stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12,
>
type __listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12 = array<
  __stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12,
>
type __listOf__stringMin1 = array<__stringMin1>
type __listOf__string = array<__string>
type __listOf__integerMinNegative60Max6 = array<__integerMinNegative60Max6>
type __listOf__integerMin32Max8182 = array<__integerMin32Max8182>
type __listOf__integerMin1Max2147483647 = array<__integerMin1Max2147483647>
type __listOf__doubleMinNegative60Max6 = array<__doubleMinNegative60Max6>
type __listOfTeletextPageType = array<teletextPageType>
type __listOfHlsAdMarkers = array<hlsAdMarkers>
type webvttDestinationSettings = {
  @as("StylePassthrough") stylePassthrough: option<webvttStylePassthrough>,
}
type wavSettings = {
  @as("SampleRate") sampleRate: option<__integerMin8000Max192000>,
  @as("Format") format: option<wavFormat>,
  @as("Channels") channels: option<__integerMin1Max64>,
  @as("BitDepth") bitDepth: option<__integerMin16Max24>,
}
type vp9Settings = {
  @as("RateControlMode") rateControlMode: option<vp9RateControlMode>,
  @as("QualityTuningLevel") qualityTuningLevel: option<vp9QualityTuningLevel>,
  @as("ParNumerator") parNumerator: option<__integerMin1Max2147483647>,
  @as("ParDenominator") parDenominator: option<__integerMin1Max2147483647>,
  @as("ParControl") parControl: option<vp9ParControl>,
  @as("MaxBitrate") maxBitrate: option<__integerMin1000Max480000000>,
  @as("HrdBufferSize") hrdBufferSize: option<__integerMin0Max47185920>,
  @as("GopSize") gopSize: option<__doubleMin0>,
  @as("FramerateNumerator") framerateNumerator: option<__integerMin1Max2147483647>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1Max2147483647>,
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<vp9FramerateConversionAlgorithm>,
  @as("FramerateControl") framerateControl: option<vp9FramerateControl>,
  @as("Bitrate") bitrate: option<__integerMin1000Max480000000>,
}
type vp8Settings = {
  @as("RateControlMode") rateControlMode: option<vp8RateControlMode>,
  @as("QualityTuningLevel") qualityTuningLevel: option<vp8QualityTuningLevel>,
  @as("ParNumerator") parNumerator: option<__integerMin1Max2147483647>,
  @as("ParDenominator") parDenominator: option<__integerMin1Max2147483647>,
  @as("ParControl") parControl: option<vp8ParControl>,
  @as("MaxBitrate") maxBitrate: option<__integerMin1000Max1152000000>,
  @as("HrdBufferSize") hrdBufferSize: option<__integerMin0Max47185920>,
  @as("GopSize") gopSize: option<__doubleMin0>,
  @as("FramerateNumerator") framerateNumerator: option<__integerMin1Max2147483647>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1Max2147483647>,
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<vp8FramerateConversionAlgorithm>,
  @as("FramerateControl") framerateControl: option<vp8FramerateControl>,
  @as("Bitrate") bitrate: option<__integerMin1000Max1152000000>,
}
type vorbisSettings = {
  @as("VbrQuality") vbrQuality: option<__integerMinNegative1Max10>,
  @as("SampleRate") sampleRate: option<__integerMin22050Max48000>,
  @as("Channels") channels: option<__integerMin1Max2>,
}
type videoDetail = {
  @as("WidthInPx") widthInPx: option<__integer>,
  @as("HeightInPx") heightInPx: option<__integer>,
}
type vc3Settings = {
  @as("Vc3Class") vc3Class: option<vc3Class>,
  @as("Telecine") telecine: option<vc3Telecine>,
  @as("SlowPal") slowPal: option<vc3SlowPal>,
  @as("ScanTypeConversionMode") scanTypeConversionMode: option<vc3ScanTypeConversionMode>,
  @as("InterlaceMode") interlaceMode: option<vc3InterlaceMode>,
  @as("FramerateNumerator") framerateNumerator: option<__integerMin24Max60000>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1Max1001>,
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<vc3FramerateConversionAlgorithm>,
  @as("FramerateControl") framerateControl: option<vc3FramerateControl>,
}
type ttmlDestinationSettings = {
  @as("StylePassthrough") stylePassthrough: option<ttmlStylePassthrough>,
}
type trackSourceSettings = {@as("TrackNumber") trackNumber: option<__integerMin1Max2147483647>}
type timing = {
  @as("SubmitTime") submitTime: option<__timestampUnix>,
  @as("StartTime") startTime: option<__timestampUnix>,
  @as("FinishTime") finishTime: option<__timestampUnix>,
}
type timecodeConfig = {
  @as("TimestampOffset") timestampOffset: option<__stringPattern0940191020191209301>,
  @as("Start") start: option<__stringPattern010920405090509092>,
  @as("Source") source: option<timecodeSource>,
  @as("Anchor") anchor: option<__stringPattern010920405090509092>,
}
type timecodeBurnin = {
  @as("Prefix") prefix: option<__stringPattern>,
  @as("Position") position: option<timecodeBurninPosition>,
  @as("FontSize") fontSize: option<__integerMin10Max48>,
}
type teletextSourceSettings = {
  @as("PageNumber") pageNumber: option<__stringMin3Max3Pattern1809aFAF09aEAE>,
}
type staticKeyProvider = {
  @as("Url") url: option<__string>,
  @as("StaticKeyValue") staticKeyValue: option<__stringPatternAZaZ0932>,
  @as("KeyFormatVersions") keyFormatVersions: option<__stringPatternDD>,
  @as("KeyFormat") keyFormat: option<__stringPatternIdentityAZaZ26AZaZ09163>,
}
type sccDestinationSettings = {@as("Framerate") framerate: option<sccDestinationFramerate>}
type s3EncryptionSettings = {
  @as("KmsKeyArn")
  kmsKeyArn: option<
    __stringPatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912,
  >,
  @as("EncryptionType") encryptionType: option<s3ServerSideEncryptionType>,
}
type s3DestinationAccessControl = {@as("CannedAcl") cannedAcl: option<s3ObjectCannedAcl>}
type reservationPlanSettings = {
  @as("ReservedSlots") reservedSlots: __integer,
  @as("RenewalType") renewalType: renewalType,
  @as("Commitment") commitment: commitment,
}
type reservationPlan = {
  @as("Status") status: option<reservationPlanStatus>,
  @as("ReservedSlots") reservedSlots: option<__integer>,
  @as("RenewalType") renewalType: option<renewalType>,
  @as("PurchasedAt") purchasedAt: option<__timestampUnix>,
  @as("ExpiresAt") expiresAt: option<__timestampUnix>,
  @as("Commitment") commitment: option<commitment>,
}
type rectangle = {
  @as("Y") y: option<__integerMin0Max2147483647>,
  @as("X") x: option<__integerMin0Max2147483647>,
  @as("Width") width: option<__integerMin2Max2147483647>,
  @as("Height") height: option<__integerMin2Max2147483647>,
}
type queueTransition = {
  @as("Timestamp") timestamp_: option<__timestampUnix>,
  @as("SourceQueue") sourceQueue: option<__string>,
  @as("DestinationQueue") destinationQueue: option<__string>,
}
type proresSettings = {
  @as("Telecine") telecine: option<proresTelecine>,
  @as("SlowPal") slowPal: option<proresSlowPal>,
  @as("ScanTypeConversionMode") scanTypeConversionMode: option<proresScanTypeConversionMode>,
  @as("ParNumerator") parNumerator: option<__integerMin1Max2147483647>,
  @as("ParDenominator") parDenominator: option<__integerMin1Max2147483647>,
  @as("ParControl") parControl: option<proresParControl>,
  @as("InterlaceMode") interlaceMode: option<proresInterlaceMode>,
  @as("FramerateNumerator") framerateNumerator: option<__integerMin1Max2147483647>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1Max2147483647>,
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<proresFramerateConversionAlgorithm>,
  @as("FramerateControl") framerateControl: option<proresFramerateControl>,
  @as("CodecProfile") codecProfile: option<proresCodecProfile>,
}
type opusSettings = {
  @as("SampleRate") sampleRate: option<__integerMin16000Max48000>,
  @as("Channels") channels: option<__integerMin1Max2>,
  @as("Bitrate") bitrate: option<__integerMin32000Max192000>,
}
type noiseReducerTemporalFilterSettings = {
  @as("Strength") strength: option<__integerMin0Max16>,
  @as("Speed") speed: option<__integerMinNegative1Max3>,
  @as("PostTemporalSharpening") postTemporalSharpening: option<noiseFilterPostTemporalSharpening>,
  @as("AggressiveMode") aggressiveMode: option<__integerMin0Max4>,
}
type noiseReducerSpatialFilterSettings = {
  @as("Strength") strength: option<__integerMin0Max16>,
  @as("Speed") speed: option<__integerMinNegative2Max3>,
  @as("PostFilterSharpenStrength") postFilterSharpenStrength: option<__integerMin0Max3>,
}
type noiseReducerFilterSettings = {@as("Strength") strength: option<__integerMin0Max3>}
type nielsenNonLinearWatermarkSettings = {
  @as("UniqueTicPerAudioTrack") uniqueTicPerAudioTrack: option<nielsenUniqueTicPerAudioTrackType>,
  @as("TicServerUrl") ticServerUrl: option<__stringPatternHttps>,
  @as("SourceWatermarkStatus") sourceWatermarkStatus: option<nielsenSourceWatermarkStatusType>,
  @as("SourceId") sourceId: option<__integerMin0Max65534>,
  @as("MetadataDestination") metadataDestination: option<__stringPatternS3>,
  @as("EpisodeId") episodeId: option<__stringMin1Max20>,
  @as("CbetSourceId") cbetSourceId: option<__stringPattern0xAFaF0908190908>,
  @as("AssetName") assetName: option<__stringMin1Max50>,
  @as("AssetId") assetId: option<__stringMin1Max20>,
  @as("AdiFilename") adiFilename: option<__stringPatternS3>,
  @as("ActiveWatermarkProcess") activeWatermarkProcess: option<nielsenActiveWatermarkProcessType>,
}
type nielsenConfiguration = {
  @as("DistributorId") distributorId: option<__string>,
  @as("BreakoutCode") breakoutCode: option<__integerMin0Max0>,
}
type nexGuardFileMarkerSettings = {
  @as("Strength") strength: option<watermarkingStrength>,
  @as("Preset") preset: option<__stringMin1Max256>,
  @as("Payload") payload: option<__integerMin0Max4194303>,
  @as("License") license: option<__stringMin1Max100000>,
}
type mxfSettings = {
  @as("Profile") profile: option<mxfProfile>,
  @as("AfdSignaling") afdSignaling: option<mxfAfdSignaling>,
}
type mpeg2Settings = {
  @as("TemporalAdaptiveQuantization")
  temporalAdaptiveQuantization: option<mpeg2TemporalAdaptiveQuantization>,
  @as("Telecine") telecine: option<mpeg2Telecine>,
  @as("Syntax") syntax: option<mpeg2Syntax>,
  @as("SpatialAdaptiveQuantization")
  spatialAdaptiveQuantization: option<mpeg2SpatialAdaptiveQuantization>,
  @as("Softness") softness: option<__integerMin0Max128>,
  @as("SlowPal") slowPal: option<mpeg2SlowPal>,
  @as("SceneChangeDetect") sceneChangeDetect: option<mpeg2SceneChangeDetect>,
  @as("ScanTypeConversionMode") scanTypeConversionMode: option<mpeg2ScanTypeConversionMode>,
  @as("RateControlMode") rateControlMode: option<mpeg2RateControlMode>,
  @as("QualityTuningLevel") qualityTuningLevel: option<mpeg2QualityTuningLevel>,
  @as("ParNumerator") parNumerator: option<__integerMin1Max2147483647>,
  @as("ParDenominator") parDenominator: option<__integerMin1Max2147483647>,
  @as("ParControl") parControl: option<mpeg2ParControl>,
  @as("NumberBFramesBetweenReferenceFrames")
  numberBFramesBetweenReferenceFrames: option<__integerMin0Max7>,
  @as("MinIInterval") minIInterval: option<__integerMin0Max30>,
  @as("MaxBitrate") maxBitrate: option<__integerMin1000Max300000000>,
  @as("IntraDcPrecision") intraDcPrecision: option<mpeg2IntraDcPrecision>,
  @as("InterlaceMode") interlaceMode: option<mpeg2InterlaceMode>,
  @as("HrdBufferSize") hrdBufferSize: option<__integerMin0Max47185920>,
  @as("HrdBufferInitialFillPercentage") hrdBufferInitialFillPercentage: option<__integerMin0Max100>,
  @as("GopSizeUnits") gopSizeUnits: option<mpeg2GopSizeUnits>,
  @as("GopSize") gopSize: option<__doubleMin0>,
  @as("GopClosedCadence") gopClosedCadence: option<__integerMin0Max2147483647>,
  @as("FramerateNumerator") framerateNumerator: option<__integerMin24Max60000>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1Max1001>,
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<mpeg2FramerateConversionAlgorithm>,
  @as("FramerateControl") framerateControl: option<mpeg2FramerateControl>,
  @as("DynamicSubGop") dynamicSubGop: option<mpeg2DynamicSubGop>,
  @as("CodecProfile") codecProfile: option<mpeg2CodecProfile>,
  @as("CodecLevel") codecLevel: option<mpeg2CodecLevel>,
  @as("Bitrate") bitrate: option<__integerMin1000Max288000000>,
  @as("AdaptiveQuantization") adaptiveQuantization: option<mpeg2AdaptiveQuantization>,
}
type mpdSettings = {
  @as("Scte35Source") scte35Source: option<mpdScte35Source>,
  @as("Scte35Esam") scte35Esam: option<mpdScte35Esam>,
  @as("CaptionContainerType") captionContainerType: option<mpdCaptionContainerType>,
  @as("AudioDuration") audioDuration: option<mpdAudioDuration>,
  @as("AccessibilityCaptionHints") accessibilityCaptionHints: option<mpdAccessibilityCaptionHints>,
}
type mp4Settings = {
  @as("Mp4MajorBrand") mp4MajorBrand: option<__string>,
  @as("MoovPlacement") moovPlacement: option<mp4MoovPlacement>,
  @as("FreeSpaceBox") freeSpaceBox: option<mp4FreeSpaceBox>,
  @as("CttsVersion") cttsVersion: option<__integerMin0Max1>,
  @as("CslgAtom") cslgAtom: option<mp4CslgAtom>,
  @as("AudioDuration") audioDuration: option<cmfcAudioDuration>,
}
type mp3Settings = {
  @as("VbrQuality") vbrQuality: option<__integerMin0Max9>,
  @as("SampleRate") sampleRate: option<__integerMin22050Max48000>,
  @as("RateControlMode") rateControlMode: option<mp3RateControlMode>,
  @as("Channels") channels: option<__integerMin1Max2>,
  @as("Bitrate") bitrate: option<__integerMin16000Max320000>,
}
type mp2Settings = {
  @as("SampleRate") sampleRate: option<__integerMin32000Max48000>,
  @as("Channels") channels: option<__integerMin1Max2>,
  @as("Bitrate") bitrate: option<__integerMin32000Max384000>,
}
type movSettings = {
  @as("Reference") reference: option<movReference>,
  @as("PaddingControl") paddingControl: option<movPaddingControl>,
  @as("Mpeg2FourCCControl") mpeg2FourCCControl: option<movMpeg2FourCCControl>,
  @as("CslgAtom") cslgAtom: option<movCslgAtom>,
  @as("ClapAtom") clapAtom: option<movClapAtom>,
}
type motionImageInsertionOffset = {
  @as("ImageY") imageY: option<__integerMin0Max2147483647>,
  @as("ImageX") imageX: option<__integerMin0Max2147483647>,
}
type motionImageInsertionFramerate = {
  @as("FramerateNumerator") framerateNumerator: option<__integerMin1Max2147483640>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1Max17895697>,
}
type m2tsScte35Esam = {@as("Scte35EsamPid") scte35EsamPid: option<__integerMin32Max8182>}
type kantarWatermarkSettings = {
  @as("Metadata8") metadata8: option<__stringMin1Max50>,
  @as("Metadata7") metadata7: option<__stringMin1Max50>,
  @as("Metadata6") metadata6: option<__stringMin1Max50>,
  @as("Metadata5") metadata5: option<__stringMin1Max50>,
  @as("Metadata4") metadata4: option<__stringMin1Max50>,
  @as("Metadata3") metadata3: option<__stringMin1Max50>,
  @as("LogDestination") logDestination: option<__stringPatternS3>,
  @as("KantarServerUrl") kantarServerUrl: option<__stringPatternHttpsKantarmediaCom>,
  @as("KantarLicenseId") kantarLicenseId: option<__integerMin0Max2147483647>,
  @as("FileOffset") fileOffset: option<__doubleMin0>,
  @as("CredentialsSecretName") credentialsSecretName: option<__stringMin1Max512PatternAZAZ09>,
  @as("ContentReference") contentReference: option<__stringMin1Max50PatternAZAZ09>,
  @as("ChannelName") channelName: option<__stringMin1Max20>,
}
type insertableImage = {
  @as("Width") width: option<__integerMin0Max2147483647>,
  @as("StartTime") startTime: option<__stringPattern01D20305D205D>,
  @as("Opacity") opacity: option<__integerMin0Max100>,
  @as("Layer") layer: option<__integerMin0Max99>,
  @as("ImageY") imageY: option<__integerMin0Max2147483647>,
  @as("ImageX") imageX: option<__integerMin0Max2147483647>,
  @as("ImageInserterInput")
  imageInserterInput: option<__stringMin14PatternS3BmpBMPPngPNGTgaTGAHttpsBmpBMPPngPNGTgaTGA>,
  @as("Height") height: option<__integerMin0Max2147483647>,
  @as("FadeOut") fadeOut: option<__integerMin0Max2147483647>,
  @as("FadeIn") fadeIn: option<__integerMin0Max2147483647>,
  @as("Duration") duration: option<__integerMin0Max2147483647>,
}
type inputDecryptionSettings = {
  @as("KmsKeyRegion")
  kmsKeyRegion: option<__stringMin9Max19PatternAZ26EastWestCentralNorthSouthEastWest1912>,
  @as("InitializationVector")
  initializationVector: option<__stringMin16Max24PatternAZaZ0922AZaZ0916>,
  @as("EncryptedDecryptionKey") encryptedDecryptionKey: option<__stringMin24Max512PatternAZaZ0902>,
  @as("DecryptionMode") decryptionMode: option<decryptionMode>,
}
type inputClipping = {
  @as("StartTimecode") startTimecode: option<__stringPattern010920405090509092>,
  @as("EndTimecode") endTimecode: option<__stringPattern010920405090509092>,
}
type imscDestinationSettings = {
  @as("StylePassthrough") stylePassthrough: option<imscStylePassthrough>,
}
type id3Insertion = {
  @as("Timecode") timecode: option<__stringPattern010920405090509092>,
  @as("Id3") id3: option<__stringPatternAZaZ0902>,
}
type hopDestination = {
  @as("WaitMinutes") waitMinutes: option<__integer>,
  @as("Queue") queue: option<__string>,
  @as("Priority") priority: option<__integerMinNegative50Max50>,
}
type hlsSettings = {
  @as("SegmentModifier") segmentModifier: option<__string>,
  @as("IFrameOnlyManifest") iframeOnlyManifest: option<hlsIFrameOnlyManifest>,
  @as("DescriptiveVideoServiceFlag")
  descriptiveVideoServiceFlag: option<hlsDescriptiveVideoServiceFlag>,
  @as("AudioTrackType") audioTrackType: option<hlsAudioTrackType>,
  @as("AudioRenditionSets") audioRenditionSets: option<__string>,
  @as("AudioOnlyContainer") audioOnlyContainer: option<hlsAudioOnlyContainer>,
  @as("AudioGroupId") audioGroupId: option<__string>,
}
type hlsCaptionLanguageMapping = {
  @as("LanguageDescription") languageDescription: option<__string>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("CustomLanguageCode") customLanguageCode: option<__stringMin3Max3PatternAZaZ3>,
  @as("CaptionChannel") captionChannel: option<__integerMinNegative2147483648Max2147483647>,
}
type hdr10Metadata = {
  @as("WhitePointY") whitePointY: option<__integerMin0Max50000>,
  @as("WhitePointX") whitePointX: option<__integerMin0Max50000>,
  @as("RedPrimaryY") redPrimaryY: option<__integerMin0Max50000>,
  @as("RedPrimaryX") redPrimaryX: option<__integerMin0Max50000>,
  @as("MinLuminance") minLuminance: option<__integerMin0Max2147483647>,
  @as("MaxLuminance") maxLuminance: option<__integerMin0Max2147483647>,
  @as("MaxFrameAverageLightLevel") maxFrameAverageLightLevel: option<__integerMin0Max65535>,
  @as("MaxContentLightLevel") maxContentLightLevel: option<__integerMin0Max65535>,
  @as("GreenPrimaryY") greenPrimaryY: option<__integerMin0Max50000>,
  @as("GreenPrimaryX") greenPrimaryX: option<__integerMin0Max50000>,
  @as("BluePrimaryY") bluePrimaryY: option<__integerMin0Max50000>,
  @as("BluePrimaryX") bluePrimaryX: option<__integerMin0Max50000>,
}
type h265QvbrSettings = {
  @as("QvbrQualityLevelFineTune") qvbrQualityLevelFineTune: option<__doubleMin0Max1>,
  @as("QvbrQualityLevel") qvbrQualityLevel: option<__integerMin1Max10>,
  @as("MaxAverageBitrate") maxAverageBitrate: option<__integerMin1000Max1466400000>,
}
type h264QvbrSettings = {
  @as("QvbrQualityLevelFineTune") qvbrQualityLevelFineTune: option<__doubleMin0Max1>,
  @as("QvbrQualityLevel") qvbrQualityLevel: option<__integerMin1Max10>,
  @as("MaxAverageBitrate") maxAverageBitrate: option<__integerMin1000Max1152000000>,
}
type frameCaptureSettings = {
  @as("Quality") quality: option<__integerMin1Max100>,
  @as("MaxCaptures") maxCaptures: option<__integerMin1Max10000000>,
  @as("FramerateNumerator") framerateNumerator: option<__integerMin1Max2147483647>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1Max2147483647>,
}
type f4vSettings = {@as("MoovPlacement") moovPlacement: option<f4vMoovPlacement>}
type esamSignalProcessingNotification = {
  @as("SccXml") sccXml: option<__stringPatternSNSignalProcessingNotificationNS>,
}
type esamManifestConfirmConditionNotification = {
  @as("MccXml") mccXml: option<__stringPatternSNManifestConfirmConditionNotificationNS>,
}
type endpoint = {@as("Url") url: option<__string>}
type embeddedSourceSettings = {
  @as("TerminateCaptions") terminateCaptions: option<embeddedTerminateCaptions>,
  @as("Source608TrackNumber") source608TrackNumber: option<__integerMin1Max1>,
  @as("Source608ChannelNumber") source608ChannelNumber: option<__integerMin1Max4>,
  @as("Convert608To708") convert608To708: option<embeddedConvert608To708>,
}
type embeddedDestinationSettings = {
  @as("Destination708ServiceNumber") destination708ServiceNumber: option<__integerMin1Max6>,
  @as("Destination608ChannelNumber") destination608ChannelNumber: option<__integerMin1Max4>,
}
type eac3Settings = {
  @as("SurroundMode") surroundMode: option<eac3SurroundMode>,
  @as("SurroundExMode") surroundExMode: option<eac3SurroundExMode>,
  @as("StereoDownmix") stereoDownmix: option<eac3StereoDownmix>,
  @as("SampleRate") sampleRate: option<__integerMin48000Max48000>,
  @as("PhaseControl") phaseControl: option<eac3PhaseControl>,
  @as("PassthroughControl") passthroughControl: option<eac3PassthroughControl>,
  @as("MetadataControl") metadataControl: option<eac3MetadataControl>,
  @as("LtRtSurroundMixLevel") ltRtSurroundMixLevel: option<__doubleMinNegative60MaxNegative1>,
  @as("LtRtCenterMixLevel") ltRtCenterMixLevel: option<__doubleMinNegative60Max3>,
  @as("LoRoSurroundMixLevel") loRoSurroundMixLevel: option<__doubleMinNegative60MaxNegative1>,
  @as("LoRoCenterMixLevel") loRoCenterMixLevel: option<__doubleMinNegative60Max3>,
  @as("LfeFilter") lfeFilter: option<eac3LfeFilter>,
  @as("LfeControl") lfeControl: option<eac3LfeControl>,
  @as("DynamicRangeCompressionRf") dynamicRangeCompressionRf: option<eac3DynamicRangeCompressionRf>,
  @as("DynamicRangeCompressionLine")
  dynamicRangeCompressionLine: option<eac3DynamicRangeCompressionLine>,
  @as("Dialnorm") dialnorm: option<__integerMin1Max31>,
  @as("DcFilter") dcFilter: option<eac3DcFilter>,
  @as("CodingMode") codingMode: option<eac3CodingMode>,
  @as("BitstreamMode") bitstreamMode: option<eac3BitstreamMode>,
  @as("Bitrate") bitrate: option<__integerMin64000Max640000>,
  @as("AttenuationControl") attenuationControl: option<eac3AttenuationControl>,
}
type eac3AtmosSettings = {
  @as("SurroundExMode") surroundExMode: option<eac3AtmosSurroundExMode>,
  @as("StereoDownmix") stereoDownmix: option<eac3AtmosStereoDownmix>,
  @as("SpeechThreshold") speechThreshold: option<__integerMin1Max100>,
  @as("SampleRate") sampleRate: option<__integerMin48000Max48000>,
  @as("MeteringMode") meteringMode: option<eac3AtmosMeteringMode>,
  @as("LtRtSurroundMixLevel") ltRtSurroundMixLevel: option<__doubleMinNegative60MaxNegative1>,
  @as("LtRtCenterMixLevel") ltRtCenterMixLevel: option<__doubleMinNegative6Max3>,
  @as("LoRoSurroundMixLevel") loRoSurroundMixLevel: option<__doubleMinNegative60MaxNegative1>,
  @as("LoRoCenterMixLevel") loRoCenterMixLevel: option<__doubleMinNegative6Max3>,
  @as("DynamicRangeCompressionRf")
  dynamicRangeCompressionRf: option<eac3AtmosDynamicRangeCompressionRf>,
  @as("DynamicRangeCompressionLine")
  dynamicRangeCompressionLine: option<eac3AtmosDynamicRangeCompressionLine>,
  @as("DialogueIntelligence") dialogueIntelligence: option<eac3AtmosDialogueIntelligence>,
  @as("CodingMode") codingMode: option<eac3AtmosCodingMode>,
  @as("BitstreamMode") bitstreamMode: option<eac3AtmosBitstreamMode>,
  @as("Bitrate") bitrate: option<__integerMin384000Max768000>,
}
type dvbTdtSettings = {@as("TdtInterval") tdtInterval: option<__integerMin1000Max30000>}
type dvbSubSourceSettings = {@as("Pid") pid: option<__integerMin1Max2147483647>}
type dvbSubDestinationSettings = {
  @as("YPosition") yposition: option<__integerMin0Max2147483647>,
  @as("XPosition") xposition: option<__integerMin0Max2147483647>,
  @as("Width") width: option<__integerMin1Max2147483647>,
  @as("TeletextSpacing") teletextSpacing: option<dvbSubtitleTeletextSpacing>,
  @as("SubtitlingType") subtitlingType: option<dvbSubtitlingType>,
  @as("ShadowYOffset") shadowYOffset: option<__integerMinNegative2147483648Max2147483647>,
  @as("ShadowXOffset") shadowXOffset: option<__integerMinNegative2147483648Max2147483647>,
  @as("ShadowOpacity") shadowOpacity: option<__integerMin0Max255>,
  @as("ShadowColor") shadowColor: option<dvbSubtitleShadowColor>,
  @as("OutlineSize") outlineSize: option<__integerMin0Max10>,
  @as("OutlineColor") outlineColor: option<dvbSubtitleOutlineColor>,
  @as("Height") height: option<__integerMin1Max2147483647>,
  @as("FontSize") fontSize: option<__integerMin0Max96>,
  @as("FontScript") fontScript: option<fontScript>,
  @as("FontResolution") fontResolution: option<__integerMin96Max600>,
  @as("FontOpacity") fontOpacity: option<__integerMin0Max255>,
  @as("FontColor") fontColor: option<dvbSubtitleFontColor>,
  @as("DdsYCoordinate") ddsYCoordinate: option<__integerMin0Max2147483647>,
  @as("DdsXCoordinate") ddsXCoordinate: option<__integerMin0Max2147483647>,
  @as("DdsHandling") ddsHandling: option<dvbddsHandling>,
  @as("BackgroundOpacity") backgroundOpacity: option<__integerMin0Max255>,
  @as("BackgroundColor") backgroundColor: option<dvbSubtitleBackgroundColor>,
  @as("Alignment") alignment: option<dvbSubtitleAlignment>,
}
type dvbSdtSettings = {
  @as("ServiceProviderName") serviceProviderName: option<__stringMin1Max256>,
  @as("ServiceName") serviceName: option<__stringMin1Max256>,
  @as("SdtInterval") sdtInterval: option<__integerMin25Max2000>,
  @as("OutputSdt") outputSdt: option<outputSdt>,
}
type dvbNitSettings = {
  @as("NitInterval") nitInterval: option<__integerMin25Max10000>,
  @as("NetworkName") networkName: option<__stringMin1Max256>,
  @as("NetworkId") networkId: option<__integerMin0Max65535>,
}
type dolbyVisionLevel6Metadata = {
  @as("MaxFall") maxFall: option<__integerMin0Max65535>,
  @as("MaxCll") maxCll: option<__integerMin0Max65535>,
}
type deinterlacer = {
  @as("Mode") mode: option<deinterlacerMode>,
  @as("Control") control: option<deinterlacerControl>,
  @as("Algorithm") algorithm: option<deinterlaceAlgorithm>,
}
type cmfcSettings = {
  @as("Scte35Source") scte35Source: option<cmfcScte35Source>,
  @as("Scte35Esam") scte35Esam: option<cmfcScte35Esam>,
  @as("IFrameOnlyManifest") iframeOnlyManifest: option<cmfcIFrameOnlyManifest>,
  @as("DescriptiveVideoServiceFlag")
  descriptiveVideoServiceFlag: option<cmfcDescriptiveVideoServiceFlag>,
  @as("AudioTrackType") audioTrackType: option<cmfcAudioTrackType>,
  @as("AudioRenditionSets") audioRenditionSets: option<__string>,
  @as("AudioGroupId") audioGroupId: option<__string>,
  @as("AudioDuration") audioDuration: option<cmfcAudioDuration>,
}
type captionSourceFramerate = {
  @as("FramerateNumerator") framerateNumerator: option<__integerMin1Max60000>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1Max1001>,
}
type burninDestinationSettings = {
  @as("YPosition") yposition: option<__integerMin0Max2147483647>,
  @as("XPosition") xposition: option<__integerMin0Max2147483647>,
  @as("TeletextSpacing") teletextSpacing: option<burninSubtitleTeletextSpacing>,
  @as("ShadowYOffset") shadowYOffset: option<__integerMinNegative2147483648Max2147483647>,
  @as("ShadowXOffset") shadowXOffset: option<__integerMinNegative2147483648Max2147483647>,
  @as("ShadowOpacity") shadowOpacity: option<__integerMin0Max255>,
  @as("ShadowColor") shadowColor: option<burninSubtitleShadowColor>,
  @as("OutlineSize") outlineSize: option<__integerMin0Max10>,
  @as("OutlineColor") outlineColor: option<burninSubtitleOutlineColor>,
  @as("FontSize") fontSize: option<__integerMin0Max96>,
  @as("FontScript") fontScript: option<fontScript>,
  @as("FontResolution") fontResolution: option<__integerMin96Max600>,
  @as("FontOpacity") fontOpacity: option<__integerMin0Max255>,
  @as("FontColor") fontColor: option<burninSubtitleFontColor>,
  @as("BackgroundOpacity") backgroundOpacity: option<__integerMin0Max255>,
  @as("BackgroundColor") backgroundColor: option<burninSubtitleBackgroundColor>,
  @as("Alignment") alignment: option<burninSubtitleAlignment>,
}
type avcIntraUhdSettings = {
  @as("QualityTuningLevel") qualityTuningLevel: option<avcIntraUhdQualityTuningLevel>,
}
type availBlanking = {
  @as("AvailBlankingImage")
  availBlankingImage: option<__stringMin14PatternS3BmpBMPPngPNGHttpsBmpBMPPngPNG>,
}
type av1QvbrSettings = {
  @as("QvbrQualityLevelFineTune") qvbrQualityLevelFineTune: option<__doubleMin0Max1>,
  @as("QvbrQualityLevel") qvbrQualityLevel: option<__integerMin1Max10>,
}
type automatedAbrSettings = {
  @as("MinAbrBitrate") minAbrBitrate: option<__integerMin100000Max100000000>,
  @as("MaxRenditions") maxRenditions: option<__integerMin3Max15>,
  @as("MaxAbrBitrate") maxAbrBitrate: option<__integerMin100000Max100000000>,
}
type audioNormalizationSettings = {
  @as("TargetLkfs") targetLkfs: option<__doubleMinNegative59Max0>,
  @as("PeakCalculation") peakCalculation: option<audioNormalizationPeakCalculation>,
  @as("LoudnessLogging") loudnessLogging: option<audioNormalizationLoudnessLogging>,
  @as("CorrectionGateLevel") correctionGateLevel: option<__integerMinNegative70Max0>,
  @as("AlgorithmControl") algorithmControl: option<audioNormalizationAlgorithmControl>,
  @as("Algorithm") algorithm: option<audioNormalizationAlgorithm>,
}
type audioChannelTaggingSettings = {@as("ChannelTag") channelTag: option<audioChannelTag>}
type ancillarySourceSettings = {
  @as("TerminateCaptions") terminateCaptions: option<ancillaryTerminateCaptions>,
  @as("SourceAncillaryChannelNumber") sourceAncillaryChannelNumber: option<__integerMin1Max4>,
  @as("Convert608To708") convert608To708: option<ancillaryConvert608To708>,
}
type aiffSettings = {
  @as("SampleRate") sampleRate: option<__integerMin8000Max192000>,
  @as("Channels") channels: option<__integerMin1Max64>,
  @as("BitDepth") bitDepth: option<__integerMin16Max24>,
}
type accelerationSettings = {@as("Mode") mode: accelerationMode}
type ac3Settings = {
  @as("SampleRate") sampleRate: option<__integerMin48000Max48000>,
  @as("MetadataControl") metadataControl: option<ac3MetadataControl>,
  @as("LfeFilter") lfeFilter: option<ac3LfeFilter>,
  @as("DynamicRangeCompressionRf") dynamicRangeCompressionRf: option<ac3DynamicRangeCompressionRf>,
  @as("DynamicRangeCompressionProfile")
  dynamicRangeCompressionProfile: option<ac3DynamicRangeCompressionProfile>,
  @as("DynamicRangeCompressionLine")
  dynamicRangeCompressionLine: option<ac3DynamicRangeCompressionLine>,
  @as("Dialnorm") dialnorm: option<__integerMin1Max31>,
  @as("CodingMode") codingMode: option<ac3CodingMode>,
  @as("BitstreamMode") bitstreamMode: option<ac3BitstreamMode>,
  @as("Bitrate") bitrate: option<__integerMin64000Max640000>,
}
type aacSettings = {
  @as("VbrQuality") vbrQuality: option<aacVbrQuality>,
  @as("Specification") specification: option<aacSpecification>,
  @as("SampleRate") sampleRate: option<__integerMin8000Max96000>,
  @as("RawFormat") rawFormat: option<aacRawFormat>,
  @as("RateControlMode") rateControlMode: option<aacRateControlMode>,
  @as("CodingMode") codingMode: option<aacCodingMode>,
  @as("CodecProfile") codecProfile: option<aacCodecProfile>,
  @as("Bitrate") bitrate: option<__integerMin6000Max1024000>,
  @as("AudioDescriptionBroadcasterMix")
  audioDescriptionBroadcasterMix: option<aacAudioDescriptionBroadcasterMix>,
}
type __listOfQueueTransition = array<queueTransition>
type __listOfInsertableImage = array<insertableImage>
type __listOfInputClipping = array<inputClipping>
type __listOfId3Insertion = array<id3Insertion>
type __listOfHopDestination = array<hopDestination>
type __listOfHlsCaptionLanguageMapping = array<hlsCaptionLanguageMapping>
type __listOfEndpoint = array<endpoint>
type videoSelector = {
  @as("SampleRange") sampleRange: option<inputSampleRange>,
  @as("Rotate") rotate: option<inputRotate>,
  @as("ProgramNumber") programNumber: option<__integerMinNegative2147483648Max2147483647>,
  @as("Pid") pid: option<__integerMin1Max2147483647>,
  @as("Hdr10Metadata") hdr10Metadata: option<hdr10Metadata>,
  @as("ColorSpaceUsage") colorSpaceUsage: option<colorSpaceUsage>,
  @as("ColorSpace") colorSpace: option<colorSpace>,
  @as("AlphaBehavior") alphaBehavior: option<alphaBehavior>,
}
type teletextDestinationSettings = {
  @as("PageTypes") pageTypes: option<__listOfTeletextPageType>,
  @as("PageNumber") pageNumber: option<__stringMin3Max3Pattern1809aFAF09aEAE>,
}
type spekeKeyProviderCmaf = {
  @as("Url") url: option<__stringPatternHttps>,
  @as("ResourceId") resourceId: option<__stringPatternW>,
  @as("HlsSignaledSystemIds")
  hlsSignaledSystemIds: option<
    __listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12,
  >,
  @as("DashSignaledSystemIds")
  dashSignaledSystemIds: option<
    __listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12,
  >,
  @as("CertificateArn") certificateArn: option<__stringPatternArnAwsUsGovAcm>,
}
type spekeKeyProvider = {
  @as("Url") url: option<__stringPatternHttps>,
  @as("SystemIds") systemIds: option<__listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12>,
  @as("ResourceId") resourceId: option<__string>,
  @as("CertificateArn") certificateArn: option<__stringPatternArnAwsUsGovAcm>,
}
type s3DestinationSettings = {
  @as("Encryption") encryption: option<s3EncryptionSettings>,
  @as("AccessControl") accessControl: option<s3DestinationAccessControl>,
}
type resourceTags = {
  @as("Tags") tags: option<__mapOf__string>,
  @as("Arn") arn: option<__string>,
}
type queue = {
  @as("Type") type_: option<type_>,
  @as("SubmittedJobsCount") submittedJobsCount: option<__integer>,
  @as("Status") status: option<queueStatus>,
  @as("ReservationPlan") reservationPlan: option<reservationPlan>,
  @as("ProgressingJobsCount") progressingJobsCount: option<__integer>,
  @as("PricingPlan") pricingPlan: option<pricingPlan>,
  @as("Name") name: __string,
  @as("LastUpdated") lastUpdated: option<__timestampUnix>,
  @as("Description") description: option<__string>,
  @as("CreatedAt") createdAt: option<__timestampUnix>,
  @as("Arn") arn: option<__string>,
}
type partnerWatermarking = {
  @as("NexguardFileMarkerSettings") nexguardFileMarkerSettings: option<nexGuardFileMarkerSettings>,
}
type outputSettings = {@as("HlsSettings") hlsSettings: option<hlsSettings>}
type outputDetail = {
  @as("VideoDetails") videoDetails: option<videoDetail>,
  @as("DurationInMs") durationInMs: option<__integer>,
}
type outputChannelMapping = {
  @as("InputChannelsFineTune") inputChannelsFineTune: option<__listOf__doubleMinNegative60Max6>,
  @as("InputChannels") inputChannels: option<__listOf__integerMinNegative60Max6>,
}
type noiseReducer = {
  @as("TemporalFilterSettings") temporalFilterSettings: option<noiseReducerTemporalFilterSettings>,
  @as("SpatialFilterSettings") spatialFilterSettings: option<noiseReducerSpatialFilterSettings>,
  @as("FilterSettings") filterSettings: option<noiseReducerFilterSettings>,
  @as("Filter") filter: option<noiseReducerFilter>,
}
type msSmoothAdditionalManifest = {
  @as("SelectedOutputs") selectedOutputs: option<__listOf__stringMin1>,
  @as("ManifestNameModifier") manifestNameModifier: option<__stringMin1>,
}
type motionImageInserter = {
  @as("StartTime") startTime: option<__stringMin11Max11Pattern01D20305D205D>,
  @as("Playback") playback: option<motionImagePlayback>,
  @as("Offset") offset: option<motionImageInsertionOffset>,
  @as("InsertionMode") insertionMode: option<motionImageInsertionMode>,
  @as("Input") input: option<__stringMin14PatternS3Mov09PngHttpsMov09Png>,
  @as("Framerate") framerate: option<motionImageInsertionFramerate>,
}
type m3u8Settings = {
  @as("VideoPid") videoPid: option<__integerMin32Max8182>,
  @as("TransportStreamId") transportStreamId: option<__integerMin0Max65535>,
  @as("TimedMetadataPid") timedMetadataPid: option<__integerMin32Max8182>,
  @as("TimedMetadata") timedMetadata: option<timedMetadata>,
  @as("Scte35Source") scte35Source: option<m3u8Scte35Source>,
  @as("Scte35Pid") scte35Pid: option<__integerMin32Max8182>,
  @as("ProgramNumber") programNumber: option<__integerMin0Max65535>,
  @as("PrivateMetadataPid") privateMetadataPid: option<__integerMin32Max8182>,
  @as("PmtPid") pmtPid: option<__integerMin32Max8182>,
  @as("PmtInterval") pmtInterval: option<__integerMin0Max1000>,
  @as("PcrPid") pcrPid: option<__integerMin32Max8182>,
  @as("PcrControl") pcrControl: option<m3u8PcrControl>,
  @as("PatInterval") patInterval: option<__integerMin0Max1000>,
  @as("NielsenId3") nielsenId3: option<m3u8NielsenId3>,
  @as("MaxPcrInterval") maxPcrInterval: option<__integerMin0Max500>,
  @as("AudioPids") audioPids: option<__listOf__integerMin32Max8182>,
  @as("AudioFramesPerPes") audioFramesPerPes: option<__integerMin0Max2147483647>,
  @as("AudioDuration") audioDuration: option<m3u8AudioDuration>,
}
type m2tsSettings = {
  @as("VideoPid") videoPid: option<__integerMin32Max8182>,
  @as("TransportStreamId") transportStreamId: option<__integerMin0Max65535>,
  @as("TimedMetadataPid") timedMetadataPid: option<__integerMin32Max8182>,
  @as("SegmentationTime") segmentationTime: option<__doubleMin0>,
  @as("SegmentationStyle") segmentationStyle: option<m2tsSegmentationStyle>,
  @as("SegmentationMarkers") segmentationMarkers: option<m2tsSegmentationMarkers>,
  @as("Scte35Source") scte35Source: option<m2tsScte35Source>,
  @as("Scte35Pid") scte35Pid: option<__integerMin32Max8182>,
  @as("Scte35Esam") scte35Esam: option<m2tsScte35Esam>,
  @as("RateMode") rateMode: option<m2tsRateMode>,
  @as("ProgramNumber") programNumber: option<__integerMin0Max65535>,
  @as("PrivateMetadataPid") privateMetadataPid: option<__integerMin32Max8182>,
  @as("PmtPid") pmtPid: option<__integerMin32Max8182>,
  @as("PmtInterval") pmtInterval: option<__integerMin0Max1000>,
  @as("PcrPid") pcrPid: option<__integerMin32Max8182>,
  @as("PcrControl") pcrControl: option<m2tsPcrControl>,
  @as("PatInterval") patInterval: option<__integerMin0Max1000>,
  @as("NullPacketBitrate") nullPacketBitrate: option<__doubleMin0>,
  @as("NielsenId3") nielsenId3: option<m2tsNielsenId3>,
  @as("MinEbpInterval") minEbpInterval: option<__integerMin0Max10000>,
  @as("MaxPcrInterval") maxPcrInterval: option<__integerMin0Max500>,
  @as("FragmentTime") fragmentTime: option<__doubleMin0>,
  @as("ForceTsVideoEbpOrder") forceTsVideoEbpOrder: option<m2tsForceTsVideoEbpOrder>,
  @as("EsRateInPes") esRateInPes: option<m2tsEsRateInPes>,
  @as("EbpPlacement") ebpPlacement: option<m2tsEbpPlacement>,
  @as("EbpAudioInterval") ebpAudioInterval: option<m2tsEbpAudioInterval>,
  @as("DvbTeletextPid") dvbTeletextPid: option<__integerMin32Max8182>,
  @as("DvbTdtSettings") dvbTdtSettings: option<dvbTdtSettings>,
  @as("DvbSubPids") dvbSubPids: option<__listOf__integerMin32Max8182>,
  @as("DvbSdtSettings") dvbSdtSettings: option<dvbSdtSettings>,
  @as("DvbNitSettings") dvbNitSettings: option<dvbNitSettings>,
  @as("BufferModel") bufferModel: option<m2tsBufferModel>,
  @as("Bitrate") bitrate: option<__integerMin0Max2147483647>,
  @as("AudioPids") audioPids: option<__listOf__integerMin32Max8182>,
  @as("AudioFramesPerPes") audioFramesPerPes: option<__integerMin0Max2147483647>,
  @as("AudioDuration") audioDuration: option<m2tsAudioDuration>,
  @as("AudioBufferModel") audioBufferModel: option<m2tsAudioBufferModel>,
}
type jobMessages = {
  @as("Warning") warning: option<__listOf__string>,
  @as("Info") info: option<__listOf__string>,
}
type hlsAdditionalManifest = {
  @as("SelectedOutputs") selectedOutputs: option<__listOf__stringMin1>,
  @as("ManifestNameModifier") manifestNameModifier: option<__stringMin1>,
}
type h265Settings = {
  @as("WriteMp4PackagingType") writeMp4PackagingType: option<h265WriteMp4PackagingType>,
  @as("UnregisteredSeiTimecode") unregisteredSeiTimecode: option<h265UnregisteredSeiTimecode>,
  @as("Tiles") tiles: option<h265Tiles>,
  @as("TemporalIds") temporalIds: option<h265TemporalIds>,
  @as("TemporalAdaptiveQuantization")
  temporalAdaptiveQuantization: option<h265TemporalAdaptiveQuantization>,
  @as("Telecine") telecine: option<h265Telecine>,
  @as("SpatialAdaptiveQuantization")
  spatialAdaptiveQuantization: option<h265SpatialAdaptiveQuantization>,
  @as("SlowPal") slowPal: option<h265SlowPal>,
  @as("Slices") slices: option<__integerMin1Max32>,
  @as("SceneChangeDetect") sceneChangeDetect: option<h265SceneChangeDetect>,
  @as("ScanTypeConversionMode") scanTypeConversionMode: option<h265ScanTypeConversionMode>,
  @as("SampleAdaptiveOffsetFilterMode")
  sampleAdaptiveOffsetFilterMode: option<h265SampleAdaptiveOffsetFilterMode>,
  @as("RateControlMode") rateControlMode: option<h265RateControlMode>,
  @as("QvbrSettings") qvbrSettings: option<h265QvbrSettings>,
  @as("QualityTuningLevel") qualityTuningLevel: option<h265QualityTuningLevel>,
  @as("ParNumerator") parNumerator: option<__integerMin1Max2147483647>,
  @as("ParDenominator") parDenominator: option<__integerMin1Max2147483647>,
  @as("ParControl") parControl: option<h265ParControl>,
  @as("NumberReferenceFrames") numberReferenceFrames: option<__integerMin1Max6>,
  @as("NumberBFramesBetweenReferenceFrames")
  numberBFramesBetweenReferenceFrames: option<__integerMin0Max7>,
  @as("MinIInterval") minIInterval: option<__integerMin0Max30>,
  @as("MaxBitrate") maxBitrate: option<__integerMin1000Max1466400000>,
  @as("InterlaceMode") interlaceMode: option<h265InterlaceMode>,
  @as("HrdBufferSize") hrdBufferSize: option<__integerMin0Max1466400000>,
  @as("HrdBufferInitialFillPercentage") hrdBufferInitialFillPercentage: option<__integerMin0Max100>,
  @as("GopSizeUnits") gopSizeUnits: option<h265GopSizeUnits>,
  @as("GopSize") gopSize: option<__doubleMin0>,
  @as("GopClosedCadence") gopClosedCadence: option<__integerMin0Max2147483647>,
  @as("GopBReference") gopBReference: option<h265GopBReference>,
  @as("FramerateNumerator") framerateNumerator: option<__integerMin1Max2147483647>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1Max2147483647>,
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<h265FramerateConversionAlgorithm>,
  @as("FramerateControl") framerateControl: option<h265FramerateControl>,
  @as("FlickerAdaptiveQuantization")
  flickerAdaptiveQuantization: option<h265FlickerAdaptiveQuantization>,
  @as("DynamicSubGop") dynamicSubGop: option<h265DynamicSubGop>,
  @as("CodecProfile") codecProfile: option<h265CodecProfile>,
  @as("CodecLevel") codecLevel: option<h265CodecLevel>,
  @as("Bitrate") bitrate: option<__integerMin1000Max1466400000>,
  @as("AlternateTransferFunctionSei")
  alternateTransferFunctionSei: option<h265AlternateTransferFunctionSei>,
  @as("AdaptiveQuantization") adaptiveQuantization: option<h265AdaptiveQuantization>,
}
type h264Settings = {
  @as("UnregisteredSeiTimecode") unregisteredSeiTimecode: option<h264UnregisteredSeiTimecode>,
  @as("TemporalAdaptiveQuantization")
  temporalAdaptiveQuantization: option<h264TemporalAdaptiveQuantization>,
  @as("Telecine") telecine: option<h264Telecine>,
  @as("Syntax") syntax: option<h264Syntax>,
  @as("SpatialAdaptiveQuantization")
  spatialAdaptiveQuantization: option<h264SpatialAdaptiveQuantization>,
  @as("Softness") softness: option<__integerMin0Max128>,
  @as("SlowPal") slowPal: option<h264SlowPal>,
  @as("Slices") slices: option<__integerMin1Max32>,
  @as("SceneChangeDetect") sceneChangeDetect: option<h264SceneChangeDetect>,
  @as("ScanTypeConversionMode") scanTypeConversionMode: option<h264ScanTypeConversionMode>,
  @as("RepeatPps") repeatPps: option<h264RepeatPps>,
  @as("RateControlMode") rateControlMode: option<h264RateControlMode>,
  @as("QvbrSettings") qvbrSettings: option<h264QvbrSettings>,
  @as("QualityTuningLevel") qualityTuningLevel: option<h264QualityTuningLevel>,
  @as("ParNumerator") parNumerator: option<__integerMin1Max2147483647>,
  @as("ParDenominator") parDenominator: option<__integerMin1Max2147483647>,
  @as("ParControl") parControl: option<h264ParControl>,
  @as("NumberReferenceFrames") numberReferenceFrames: option<__integerMin1Max6>,
  @as("NumberBFramesBetweenReferenceFrames")
  numberBFramesBetweenReferenceFrames: option<__integerMin0Max7>,
  @as("MinIInterval") minIInterval: option<__integerMin0Max30>,
  @as("MaxBitrate") maxBitrate: option<__integerMin1000Max1152000000>,
  @as("InterlaceMode") interlaceMode: option<h264InterlaceMode>,
  @as("HrdBufferSize") hrdBufferSize: option<__integerMin0Max1152000000>,
  @as("HrdBufferInitialFillPercentage") hrdBufferInitialFillPercentage: option<__integerMin0Max100>,
  @as("GopSizeUnits") gopSizeUnits: option<h264GopSizeUnits>,
  @as("GopSize") gopSize: option<__doubleMin0>,
  @as("GopClosedCadence") gopClosedCadence: option<__integerMin0Max2147483647>,
  @as("GopBReference") gopBReference: option<h264GopBReference>,
  @as("FramerateNumerator") framerateNumerator: option<__integerMin1Max2147483647>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1Max2147483647>,
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<h264FramerateConversionAlgorithm>,
  @as("FramerateControl") framerateControl: option<h264FramerateControl>,
  @as("FlickerAdaptiveQuantization")
  flickerAdaptiveQuantization: option<h264FlickerAdaptiveQuantization>,
  @as("FieldEncoding") fieldEncoding: option<h264FieldEncoding>,
  @as("EntropyEncoding") entropyEncoding: option<h264EntropyEncoding>,
  @as("DynamicSubGop") dynamicSubGop: option<h264DynamicSubGop>,
  @as("CodecProfile") codecProfile: option<h264CodecProfile>,
  @as("CodecLevel") codecLevel: option<h264CodecLevel>,
  @as("Bitrate") bitrate: option<__integerMin1000Max1152000000>,
  @as("AdaptiveQuantization") adaptiveQuantization: option<h264AdaptiveQuantization>,
}
type fileSourceSettings = {
  @as("TimeDelta") timeDelta: option<__integerMinNegative2147483648Max2147483647>,
  @as("SourceFile")
  sourceFile: option<
    __stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMIVttVTTHttpsSccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMIVttVTT,
  >,
  @as("Framerate") framerate: option<captionSourceFramerate>,
  @as("Convert608To708") convert608To708: option<fileSourceConvert608To708>,
}
type esamSettings = {
  @as("SignalProcessingNotification")
  signalProcessingNotification: option<esamSignalProcessingNotification>,
  @as("ResponseSignalPreroll") responseSignalPreroll: option<__integerMin0Max30000>,
  @as("ManifestConfirmConditionNotification")
  manifestConfirmConditionNotification: option<esamManifestConfirmConditionNotification>,
}
type dolbyVision = {
  @as("Profile") profile: option<dolbyVisionProfile>,
  @as("L6Mode") l6Mode: option<dolbyVisionLevel6Mode>,
  @as("L6Metadata") l6Metadata: option<dolbyVisionLevel6Metadata>,
}
type dashAdditionalManifest = {
  @as("SelectedOutputs") selectedOutputs: option<__listOf__stringMin1>,
  @as("ManifestNameModifier") manifestNameModifier: option<__stringMin1>,
}
type colorCorrector = {
  @as("Saturation") saturation: option<__integerMin1Max100>,
  @as("Hue") hue: option<__integerMinNegative180Max180>,
  @as("Hdr10Metadata") hdr10Metadata: option<hdr10Metadata>,
  @as("Contrast") contrast: option<__integerMin1Max100>,
  @as("ColorSpaceConversion") colorSpaceConversion: option<colorSpaceConversion>,
  @as("Brightness") brightness: option<__integerMin1Max100>,
}
type cmafAdditionalManifest = {
  @as("SelectedOutputs") selectedOutputs: option<__listOf__stringMin1>,
  @as("ManifestNameModifier") manifestNameModifier: option<__stringMin1>,
}
type avcIntraSettings = {
  @as("Telecine") telecine: option<avcIntraTelecine>,
  @as("SlowPal") slowPal: option<avcIntraSlowPal>,
  @as("ScanTypeConversionMode") scanTypeConversionMode: option<avcIntraScanTypeConversionMode>,
  @as("InterlaceMode") interlaceMode: option<avcIntraInterlaceMode>,
  @as("FramerateNumerator") framerateNumerator: option<__integerMin24Max60000>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1Max1001>,
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<avcIntraFramerateConversionAlgorithm>,
  @as("FramerateControl") framerateControl: option<avcIntraFramerateControl>,
  @as("AvcIntraUhdSettings") avcIntraUhdSettings: option<avcIntraUhdSettings>,
  @as("AvcIntraClass") avcIntraClass: option<avcIntraClass>,
}
type av1Settings = {
  @as("SpatialAdaptiveQuantization")
  spatialAdaptiveQuantization: option<av1SpatialAdaptiveQuantization>,
  @as("Slices") slices: option<__integerMin1Max32>,
  @as("RateControlMode") rateControlMode: option<av1RateControlMode>,
  @as("QvbrSettings") qvbrSettings: option<av1QvbrSettings>,
  @as("NumberBFramesBetweenReferenceFrames")
  numberBFramesBetweenReferenceFrames: option<__integerMin0Max15>,
  @as("MaxBitrate") maxBitrate: option<__integerMin1000Max1152000000>,
  @as("GopSize") gopSize: option<__doubleMin0>,
  @as("FramerateNumerator") framerateNumerator: option<__integerMin1Max2147483647>,
  @as("FramerateDenominator") framerateDenominator: option<__integerMin1Max2147483647>,
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<av1FramerateConversionAlgorithm>,
  @as("FramerateControl") framerateControl: option<av1FramerateControl>,
  @as("AdaptiveQuantization") adaptiveQuantization: option<av1AdaptiveQuantization>,
}
type automatedEncodingSettings = {@as("AbrSettings") abrSettings: option<automatedAbrSettings>}
type audioSelectorGroup = {
  @as("AudioSelectorNames") audioSelectorNames: option<__listOf__stringMin1>,
}
type audioCodecSettings = {
  @as("WavSettings") wavSettings: option<wavSettings>,
  @as("VorbisSettings") vorbisSettings: option<vorbisSettings>,
  @as("OpusSettings") opusSettings: option<opusSettings>,
  @as("Mp3Settings") mp3Settings: option<mp3Settings>,
  @as("Mp2Settings") mp2Settings: option<mp2Settings>,
  @as("Eac3Settings") eac3Settings: option<eac3Settings>,
  @as("Eac3AtmosSettings") eac3AtmosSettings: option<eac3AtmosSettings>,
  @as("Codec") codec: option<audioCodec>,
  @as("AiffSettings") aiffSettings: option<aiffSettings>,
  @as("Ac3Settings") ac3Settings: option<ac3Settings>,
  @as("AacSettings") aacSettings: option<aacSettings>,
}
type __mapOfAudioSelectorGroup = Js.Dict.t<audioSelectorGroup>
type __listOfQueue = array<queue>
type __listOfOutputDetail = array<outputDetail>
type __listOfOutputChannelMapping = array<outputChannelMapping>
type __listOfMsSmoothAdditionalManifest = array<msSmoothAdditionalManifest>
type __listOfHlsAdditionalManifest = array<hlsAdditionalManifest>
type __listOfDashAdditionalManifest = array<dashAdditionalManifest>
type __listOfCmafAdditionalManifest = array<cmafAdditionalManifest>
type videoCodecSettings = {
  @as("Vp9Settings") vp9Settings: option<vp9Settings>,
  @as("Vp8Settings") vp8Settings: option<vp8Settings>,
  @as("Vc3Settings") vc3Settings: option<vc3Settings>,
  @as("ProresSettings") proresSettings: option<proresSettings>,
  @as("Mpeg2Settings") mpeg2Settings: option<mpeg2Settings>,
  @as("H265Settings") h265Settings: option<h265Settings>,
  @as("H264Settings") h264Settings: option<h264Settings>,
  @as("FrameCaptureSettings") frameCaptureSettings: option<frameCaptureSettings>,
  @as("Codec") codec: option<videoCodec>,
  @as("AvcIntraSettings") avcIntraSettings: option<avcIntraSettings>,
  @as("Av1Settings") av1Settings: option<av1Settings>,
}
type timedMetadataInsertion = {@as("Id3Insertions") id3Insertions: option<__listOfId3Insertion>}
type msSmoothEncryptionSettings = {
  @as("SpekeKeyProvider") spekeKeyProvider: option<spekeKeyProvider>,
}
type imageInserter = {@as("InsertableImages") insertableImages: option<__listOfInsertableImage>}
type hlsEncryptionSettings = {
  @as("Type") type_: option<hlsKeyProviderType>,
  @as("StaticKeyProvider") staticKeyProvider: option<staticKeyProvider>,
  @as("SpekeKeyProvider") spekeKeyProvider: option<spekeKeyProvider>,
  @as("OfflineEncrypted") offlineEncrypted: option<hlsOfflineEncrypted>,
  @as("InitializationVectorInManifest")
  initializationVectorInManifest: option<hlsInitializationVectorInManifest>,
  @as("EncryptionMethod") encryptionMethod: option<hlsEncryptionType>,
  @as("ConstantInitializationVector")
  constantInitializationVector: option<__stringMin32Max32Pattern09aFAF32>,
}
type destinationSettings = {@as("S3Settings") s3Settings: option<s3DestinationSettings>}
type dashIsoEncryptionSettings = {
  @as("SpekeKeyProvider") spekeKeyProvider: option<spekeKeyProvider>,
  @as("PlaybackDeviceCompatibility")
  playbackDeviceCompatibility: option<dashIsoPlaybackDeviceCompatibility>,
}
type containerSettings = {
  @as("MxfSettings") mxfSettings: option<mxfSettings>,
  @as("MpdSettings") mpdSettings: option<mpdSettings>,
  @as("Mp4Settings") mp4Settings: option<mp4Settings>,
  @as("MovSettings") movSettings: option<movSettings>,
  @as("M3u8Settings") m3u8Settings: option<m3u8Settings>,
  @as("M2tsSettings") m2tsSettings: option<m2tsSettings>,
  @as("F4vSettings") f4vSettings: option<f4vSettings>,
  @as("Container") container: option<containerType>,
  @as("CmfcSettings") cmfcSettings: option<cmfcSettings>,
}
type cmafEncryptionSettings = {
  @as("Type") type_: option<cmafKeyProviderType>,
  @as("StaticKeyProvider") staticKeyProvider: option<staticKeyProvider>,
  @as("SpekeKeyProvider") spekeKeyProvider: option<spekeKeyProviderCmaf>,
  @as("InitializationVectorInManifest")
  initializationVectorInManifest: option<cmafInitializationVectorInManifest>,
  @as("EncryptionMethod") encryptionMethod: option<cmafEncryptionType>,
  @as("ConstantInitializationVector")
  constantInitializationVector: option<__stringMin32Max32Pattern09aFAF32>,
}
type captionSourceSettings = {
  @as("TrackSourceSettings") trackSourceSettings: option<trackSourceSettings>,
  @as("TeletextSourceSettings") teletextSourceSettings: option<teletextSourceSettings>,
  @as("SourceType") sourceType: option<captionSourceType>,
  @as("FileSourceSettings") fileSourceSettings: option<fileSourceSettings>,
  @as("EmbeddedSourceSettings") embeddedSourceSettings: option<embeddedSourceSettings>,
  @as("DvbSubSourceSettings") dvbSubSourceSettings: option<dvbSubSourceSettings>,
  @as("AncillarySourceSettings") ancillarySourceSettings: option<ancillarySourceSettings>,
}
type captionDestinationSettings = {
  @as("WebvttDestinationSettings") webvttDestinationSettings: option<webvttDestinationSettings>,
  @as("TtmlDestinationSettings") ttmlDestinationSettings: option<ttmlDestinationSettings>,
  @as("TeletextDestinationSettings")
  teletextDestinationSettings: option<teletextDestinationSettings>,
  @as("SccDestinationSettings") sccDestinationSettings: option<sccDestinationSettings>,
  @as("ImscDestinationSettings") imscDestinationSettings: option<imscDestinationSettings>,
  @as("EmbeddedDestinationSettings")
  embeddedDestinationSettings: option<embeddedDestinationSettings>,
  @as("DvbSubDestinationSettings") dvbSubDestinationSettings: option<dvbSubDestinationSettings>,
  @as("DestinationType") destinationType: option<captionDestinationType>,
  @as("BurninDestinationSettings") burninDestinationSettings: option<burninDestinationSettings>,
}
type videoPreprocessor = {
  @as("TimecodeBurnin") timecodeBurnin: option<timecodeBurnin>,
  @as("PartnerWatermarking") partnerWatermarking: option<partnerWatermarking>,
  @as("NoiseReducer") noiseReducer: option<noiseReducer>,
  @as("ImageInserter") imageInserter: option<imageInserter>,
  @as("DolbyVision") dolbyVision: option<dolbyVision>,
  @as("Deinterlacer") deinterlacer: option<deinterlacer>,
  @as("ColorCorrector") colorCorrector: option<colorCorrector>,
}
type outputGroupDetail = {@as("OutputDetails") outputDetails: option<__listOfOutputDetail>}
type msSmoothGroupSettings = {
  @as("ManifestEncoding") manifestEncoding: option<msSmoothManifestEncoding>,
  @as("FragmentLength") fragmentLength: option<__integerMin1Max2147483647>,
  @as("Encryption") encryption: option<msSmoothEncryptionSettings>,
  @as("DestinationSettings") destinationSettings: option<destinationSettings>,
  @as("Destination") destination: option<__stringPatternS3>,
  @as("AudioDeduplication") audioDeduplication: option<msSmoothAudioDeduplication>,
  @as("AdditionalManifests") additionalManifests: option<__listOfMsSmoothAdditionalManifest>,
}
type hlsGroupSettings = {
  @as("TimestampDeltaMilliseconds")
  timestampDeltaMilliseconds: option<__integerMinNegative2147483648Max2147483647>,
  @as("TimedMetadataId3Period")
  timedMetadataId3Period: option<__integerMinNegative2147483648Max2147483647>,
  @as("TimedMetadataId3Frame") timedMetadataId3Frame: option<hlsTimedMetadataId3Frame>,
  @as("StreamInfResolution") streamInfResolution: option<hlsStreamInfResolution>,
  @as("SegmentsPerSubdirectory") segmentsPerSubdirectory: option<__integerMin1Max2147483647>,
  @as("SegmentLength") segmentLength: option<__integerMin1Max2147483647>,
  @as("SegmentControl") segmentControl: option<hlsSegmentControl>,
  @as("ProgramDateTimePeriod") programDateTimePeriod: option<__integerMin0Max3600>,
  @as("ProgramDateTime") programDateTime: option<hlsProgramDateTime>,
  @as("OutputSelection") outputSelection: option<hlsOutputSelection>,
  @as("MinSegmentLength") minSegmentLength: option<__integerMin0Max2147483647>,
  @as("MinFinalSegmentLength") minFinalSegmentLength: option<__doubleMin0Max2147483647>,
  @as("ManifestDurationFormat") manifestDurationFormat: option<hlsManifestDurationFormat>,
  @as("ManifestCompression") manifestCompression: option<hlsManifestCompression>,
  @as("Encryption") encryption: option<hlsEncryptionSettings>,
  @as("DirectoryStructure") directoryStructure: option<hlsDirectoryStructure>,
  @as("DestinationSettings") destinationSettings: option<destinationSettings>,
  @as("Destination") destination: option<__stringPatternS3>,
  @as("CodecSpecification") codecSpecification: option<hlsCodecSpecification>,
  @as("ClientCache") clientCache: option<hlsClientCache>,
  @as("CaptionLanguageSetting") captionLanguageSetting: option<hlsCaptionLanguageSetting>,
  @as("CaptionLanguageMappings") captionLanguageMappings: option<__listOfHlsCaptionLanguageMapping>,
  @as("BaseUrl") baseUrl: option<__string>,
  @as("AudioOnlyHeader") audioOnlyHeader: option<hlsAudioOnlyHeader>,
  @as("AdditionalManifests") additionalManifests: option<__listOfHlsAdditionalManifest>,
  @as("AdMarkers") adMarkers: option<__listOfHlsAdMarkers>,
}
type fileGroupSettings = {
  @as("DestinationSettings") destinationSettings: option<destinationSettings>,
  @as("Destination") destination: option<__stringPatternS3>,
}
type dashIsoGroupSettings = {
  @as("WriteSegmentTimelineInRepresentation")
  writeSegmentTimelineInRepresentation: option<dashIsoWriteSegmentTimelineInRepresentation>,
  @as("SegmentLength") segmentLength: option<__integerMin1Max2147483647>,
  @as("SegmentControl") segmentControl: option<dashIsoSegmentControl>,
  @as("PtsOffsetHandlingForBFrames")
  ptsOffsetHandlingForBFrames: option<dashIsoPtsOffsetHandlingForBFrames>,
  @as("MpdProfile") mpdProfile: option<dashIsoMpdProfile>,
  @as("MinFinalSegmentLength") minFinalSegmentLength: option<__doubleMin0Max2147483647>,
  @as("MinBufferTime") minBufferTime: option<__integerMin0Max2147483647>,
  @as("HbbtvCompliance") hbbtvCompliance: option<dashIsoHbbtvCompliance>,
  @as("FragmentLength") fragmentLength: option<__integerMin1Max2147483647>,
  @as("Encryption") encryption: option<dashIsoEncryptionSettings>,
  @as("DestinationSettings") destinationSettings: option<destinationSettings>,
  @as("Destination") destination: option<__stringPatternS3>,
  @as("BaseUrl") baseUrl: option<__string>,
  @as("AudioChannelConfigSchemeIdUri")
  audioChannelConfigSchemeIdUri: option<dashIsoGroupAudioChannelConfigSchemeIdUri>,
  @as("AdditionalManifests") additionalManifests: option<__listOfDashAdditionalManifest>,
}
type cmafGroupSettings = {
  @as("WriteSegmentTimelineInRepresentation")
  writeSegmentTimelineInRepresentation: option<cmafWriteSegmentTimelineInRepresentation>,
  @as("WriteHlsManifest") writeHlsManifest: option<cmafWriteHLSManifest>,
  @as("WriteDashManifest") writeDashManifest: option<cmafWriteDASHManifest>,
  @as("StreamInfResolution") streamInfResolution: option<cmafStreamInfResolution>,
  @as("SegmentLength") segmentLength: option<__integerMin1Max2147483647>,
  @as("SegmentControl") segmentControl: option<cmafSegmentControl>,
  @as("PtsOffsetHandlingForBFrames")
  ptsOffsetHandlingForBFrames: option<cmafPtsOffsetHandlingForBFrames>,
  @as("MpdProfile") mpdProfile: option<cmafMpdProfile>,
  @as("MinFinalSegmentLength") minFinalSegmentLength: option<__doubleMin0Max2147483647>,
  @as("MinBufferTime") minBufferTime: option<__integerMin0Max2147483647>,
  @as("ManifestDurationFormat") manifestDurationFormat: option<cmafManifestDurationFormat>,
  @as("ManifestCompression") manifestCompression: option<cmafManifestCompression>,
  @as("FragmentLength") fragmentLength: option<__integerMin1Max2147483647>,
  @as("Encryption") encryption: option<cmafEncryptionSettings>,
  @as("DestinationSettings") destinationSettings: option<destinationSettings>,
  @as("Destination") destination: option<__stringPatternS3>,
  @as("CodecSpecification") codecSpecification: option<cmafCodecSpecification>,
  @as("ClientCache") clientCache: option<cmafClientCache>,
  @as("BaseUrl") baseUrl: option<__string>,
  @as("AdditionalManifests") additionalManifests: option<__listOfCmafAdditionalManifest>,
}
type channelMapping = {@as("OutputChannels") outputChannels: option<__listOfOutputChannelMapping>}
type captionSelector = {
  @as("SourceSettings") sourceSettings: option<captionSourceSettings>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("CustomLanguageCode") customLanguageCode: option<__stringMin3Max3PatternAZaZ3>,
}
type captionDescriptionPreset = {
  @as("LanguageDescription") languageDescription: option<__string>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("DestinationSettings") destinationSettings: option<captionDestinationSettings>,
  @as("CustomLanguageCode") customLanguageCode: option<__stringPatternAZaZ23AZaZ>,
}
type captionDescription = {
  @as("LanguageDescription") languageDescription: option<__string>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("DestinationSettings") destinationSettings: option<captionDestinationSettings>,
  @as("CustomLanguageCode") customLanguageCode: option<__stringPatternAZaZ23AZaZ>,
  @as("CaptionSelectorName") captionSelectorName: option<__stringMin1>,
}
type __mapOfCaptionSelector = Js.Dict.t<captionSelector>
type __listOfOutputGroupDetail = array<outputGroupDetail>
type __listOfCaptionDescriptionPreset = array<captionDescriptionPreset>
type __listOfCaptionDescription = array<captionDescription>
type videoDescription = {
  @as("Width") width: option<__integerMin32Max8192>,
  @as("VideoPreprocessors") videoPreprocessors: option<videoPreprocessor>,
  @as("TimecodeInsertion") timecodeInsertion: option<videoTimecodeInsertion>,
  @as("Sharpness") sharpness: option<__integerMin0Max100>,
  @as("ScalingBehavior") scalingBehavior: option<scalingBehavior>,
  @as("RespondToAfd") respondToAfd: option<respondToAfd>,
  @as("Position") position: option<rectangle>,
  @as("Height") height: option<__integerMin32Max8192>,
  @as("FixedAfd") fixedAfd: option<__integerMin0Max15>,
  @as("DropFrameTimecode") dropFrameTimecode: option<dropFrameTimecode>,
  @as("Crop") crop: option<rectangle>,
  @as("ColorMetadata") colorMetadata: option<colorMetadata>,
  @as("CodecSettings") codecSettings: option<videoCodecSettings>,
  @as("AntiAlias") antiAlias: option<antiAlias>,
  @as("AfdSignaling") afdSignaling: option<afdSignaling>,
}
type remixSettings = {
  @as("ChannelsOut") channelsOut: option<__integerMin1Max64>,
  @as("ChannelsIn") channelsIn: option<__integerMin1Max64>,
  @as("ChannelMapping") channelMapping: option<channelMapping>,
}
type outputGroupSettings = {
  @as("Type") type_: option<outputGroupType>,
  @as("MsSmoothGroupSettings") msSmoothGroupSettings: option<msSmoothGroupSettings>,
  @as("HlsGroupSettings") hlsGroupSettings: option<hlsGroupSettings>,
  @as("FileGroupSettings") fileGroupSettings: option<fileGroupSettings>,
  @as("DashIsoGroupSettings") dashIsoGroupSettings: option<dashIsoGroupSettings>,
  @as("CmafGroupSettings") cmafGroupSettings: option<cmafGroupSettings>,
}
type audioSelector = {
  @as("Tracks") tracks: option<__listOf__integerMin1Max2147483647>,
  @as("SelectorType") selectorType: option<audioSelectorType>,
  @as("RemixSettings") remixSettings: option<remixSettings>,
  @as("ProgramSelection") programSelection: option<__integerMin0Max8>,
  @as("Pids") pids: option<__listOf__integerMin1Max2147483647>,
  @as("Offset") offset: option<__integerMinNegative2147483648Max2147483647>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("ExternalAudioFileInput")
  externalAudioFileInput: option<
    __stringPatternS3MM2PPWWEEBBMMMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEEHttpsMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE,
  >,
  @as("DefaultSelection") defaultSelection: option<audioDefaultSelection>,
  @as("CustomLanguageCode") customLanguageCode: option<__stringMin3Max3PatternAZaZ3>,
}
type audioDescription = {
  @as("StreamName") streamName: option<__stringPatternWS>,
  @as("RemixSettings") remixSettings: option<remixSettings>,
  @as("LanguageCodeControl") languageCodeControl: option<audioLanguageCodeControl>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("CustomLanguageCode") customLanguageCode: option<__stringPatternAZaZ23AZaZ>,
  @as("CodecSettings") codecSettings: option<audioCodecSettings>,
  @as("AudioTypeControl") audioTypeControl: option<audioTypeControl>,
  @as("AudioType") audioType: option<__integerMin0Max255>,
  @as("AudioSourceName") audioSourceName: option<__string>,
  @as("AudioNormalizationSettings") audioNormalizationSettings: option<audioNormalizationSettings>,
  @as("AudioChannelTaggingSettings")
  audioChannelTaggingSettings: option<audioChannelTaggingSettings>,
}
type __mapOfAudioSelector = Js.Dict.t<audioSelector>
type __listOfAudioDescription = array<audioDescription>
type presetSettings = {
  @as("VideoDescription") videoDescription: option<videoDescription>,
  @as("ContainerSettings") containerSettings: option<containerSettings>,
  @as("CaptionDescriptions") captionDescriptions: option<__listOfCaptionDescriptionPreset>,
  @as("AudioDescriptions") audioDescriptions: option<__listOfAudioDescription>,
}
type output = {
  @as("VideoDescription") videoDescription: option<videoDescription>,
  @as("Preset") preset: option<__stringMin0>,
  @as("OutputSettings") outputSettings: option<outputSettings>,
  @as("NameModifier") nameModifier: option<__stringMin1>,
  @as("Extension") extension: option<__string>,
  @as("ContainerSettings") containerSettings: option<containerSettings>,
  @as("CaptionDescriptions") captionDescriptions: option<__listOfCaptionDescription>,
  @as("AudioDescriptions") audioDescriptions: option<__listOfAudioDescription>,
}
type inputTemplate = {
  @as("VideoSelector") videoSelector: option<videoSelector>,
  @as("TimecodeStart") timecodeStart: option<__stringMin11Max11Pattern01D20305D205D>,
  @as("TimecodeSource") timecodeSource: option<inputTimecodeSource>,
  @as("PsiControl") psiControl: option<inputPsiControl>,
  @as("ProgramNumber") programNumber: option<__integerMin1Max2147483647>,
  @as("Position") position: option<rectangle>,
  @as("InputScanType") inputScanType: option<inputScanType>,
  @as("InputClippings") inputClippings: option<__listOfInputClipping>,
  @as("ImageInserter") imageInserter: option<imageInserter>,
  @as("FilterStrength") filterStrength: option<__integerMinNegative5Max5>,
  @as("FilterEnable") filterEnable: option<inputFilterEnable>,
  @as("DenoiseFilter") denoiseFilter: option<inputDenoiseFilter>,
  @as("DeblockFilter") deblockFilter: option<inputDeblockFilter>,
  @as("Crop") crop: option<rectangle>,
  @as("CaptionSelectors") captionSelectors: option<__mapOfCaptionSelector>,
  @as("AudioSelectors") audioSelectors: option<__mapOfAudioSelector>,
  @as("AudioSelectorGroups") audioSelectorGroups: option<__mapOfAudioSelectorGroup>,
}
type input = {
  @as("VideoSelector") videoSelector: option<videoSelector>,
  @as("TimecodeStart") timecodeStart: option<__stringMin11Max11Pattern01D20305D205D>,
  @as("TimecodeSource") timecodeSource: option<inputTimecodeSource>,
  @as("SupplementalImps") supplementalImps: option<__listOf__stringPatternS3ASSETMAPXml>,
  @as("PsiControl") psiControl: option<inputPsiControl>,
  @as("ProgramNumber") programNumber: option<__integerMin1Max2147483647>,
  @as("Position") position: option<rectangle>,
  @as("InputScanType") inputScanType: option<inputScanType>,
  @as("InputClippings") inputClippings: option<__listOfInputClipping>,
  @as("ImageInserter") imageInserter: option<imageInserter>,
  @as("FilterStrength") filterStrength: option<__integerMinNegative5Max5>,
  @as("FilterEnable") filterEnable: option<inputFilterEnable>,
  @as("FileInput")
  fileInput: option<
    __stringPatternS3MM2PPMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLLOOGGGGaAHttpsMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLLOOGGGGaA,
  >,
  @as("DenoiseFilter") denoiseFilter: option<inputDenoiseFilter>,
  @as("DecryptionSettings") decryptionSettings: option<inputDecryptionSettings>,
  @as("DeblockFilter") deblockFilter: option<inputDeblockFilter>,
  @as("Crop") crop: option<rectangle>,
  @as("CaptionSelectors") captionSelectors: option<__mapOfCaptionSelector>,
  @as("AudioSelectors") audioSelectors: option<__mapOfAudioSelector>,
  @as("AudioSelectorGroups") audioSelectorGroups: option<__mapOfAudioSelectorGroup>,
}
type __listOfOutput = array<output>
type __listOfInputTemplate = array<inputTemplate>
type __listOfInput = array<input>
type preset = {
  @as("Type") type_: option<type_>,
  @as("Settings") settings: presetSettings,
  @as("Name") name: __string,
  @as("LastUpdated") lastUpdated: option<__timestampUnix>,
  @as("Description") description: option<__string>,
  @as("CreatedAt") createdAt: option<__timestampUnix>,
  @as("Category") category: option<__string>,
  @as("Arn") arn: option<__string>,
}
type __listOfPreset = array<preset>
type outputGroup = {
  @as("Outputs") outputs: option<__listOfOutput>,
  @as("OutputGroupSettings") outputGroupSettings: option<outputGroupSettings>,
  @as("Name") name: option<__string>,
  @as("CustomName") customName: option<__string>,
  @as("AutomatedEncodingSettings") automatedEncodingSettings: option<automatedEncodingSettings>,
}
type __listOfOutputGroup = array<outputGroup>
type jobTemplateSettings = {
  @as("TimedMetadataInsertion") timedMetadataInsertion: option<timedMetadataInsertion>,
  @as("TimecodeConfig") timecodeConfig: option<timecodeConfig>,
  @as("OutputGroups") outputGroups: option<__listOfOutputGroup>,
  @as("NielsenNonLinearWatermark")
  nielsenNonLinearWatermark: option<nielsenNonLinearWatermarkSettings>,
  @as("NielsenConfiguration") nielsenConfiguration: option<nielsenConfiguration>,
  @as("MotionImageInserter") motionImageInserter: option<motionImageInserter>,
  @as("KantarWatermark") kantarWatermark: option<kantarWatermarkSettings>,
  @as("Inputs") inputs: option<__listOfInputTemplate>,
  @as("Esam") esam: option<esamSettings>,
  @as("AvailBlanking") availBlanking: option<availBlanking>,
  @as("AdAvailOffset") adAvailOffset: option<__integerMinNegative1000Max1000>,
}
type jobSettings = {
  @as("TimedMetadataInsertion") timedMetadataInsertion: option<timedMetadataInsertion>,
  @as("TimecodeConfig") timecodeConfig: option<timecodeConfig>,
  @as("OutputGroups") outputGroups: option<__listOfOutputGroup>,
  @as("NielsenNonLinearWatermark")
  nielsenNonLinearWatermark: option<nielsenNonLinearWatermarkSettings>,
  @as("NielsenConfiguration") nielsenConfiguration: option<nielsenConfiguration>,
  @as("MotionImageInserter") motionImageInserter: option<motionImageInserter>,
  @as("KantarWatermark") kantarWatermark: option<kantarWatermarkSettings>,
  @as("Inputs") inputs: option<__listOfInput>,
  @as("Esam") esam: option<esamSettings>,
  @as("AvailBlanking") availBlanking: option<availBlanking>,
  @as("AdAvailOffset") adAvailOffset: option<__integerMinNegative1000Max1000>,
}
type jobTemplate = {
  @as("Type") type_: option<type_>,
  @as("StatusUpdateInterval") statusUpdateInterval: option<statusUpdateInterval>,
  @as("Settings") settings: jobTemplateSettings,
  @as("Queue") queue: option<__string>,
  @as("Priority") priority: option<__integerMinNegative50Max50>,
  @as("Name") name: __string,
  @as("LastUpdated") lastUpdated: option<__timestampUnix>,
  @as("HopDestinations") hopDestinations: option<__listOfHopDestination>,
  @as("Description") description: option<__string>,
  @as("CreatedAt") createdAt: option<__timestampUnix>,
  @as("Category") category: option<__string>,
  @as("Arn") arn: option<__string>,
  @as("AccelerationSettings") accelerationSettings: option<accelerationSettings>,
}
type job = {
  @as("UserMetadata") userMetadata: option<__mapOf__string>,
  @as("Timing") timing: option<timing>,
  @as("StatusUpdateInterval") statusUpdateInterval: option<statusUpdateInterval>,
  @as("Status") status: option<jobStatus>,
  @as("SimulateReservedQueue") simulateReservedQueue: option<simulateReservedQueue>,
  @as("Settings") settings: jobSettings,
  @as("Role") role: __string,
  @as("RetryCount") retryCount: option<__integer>,
  @as("QueueTransitions") queueTransitions: option<__listOfQueueTransition>,
  @as("Queue") queue: option<__string>,
  @as("Priority") priority: option<__integerMinNegative50Max50>,
  @as("OutputGroupDetails") outputGroupDetails: option<__listOfOutputGroupDetail>,
  @as("Messages") messages: option<jobMessages>,
  @as("JobTemplate") jobTemplate: option<__string>,
  @as("JobPercentComplete") jobPercentComplete: option<__integer>,
  @as("Id") id: option<__string>,
  @as("HopDestinations") hopDestinations: option<__listOfHopDestination>,
  @as("ErrorMessage") errorMessage: option<__string>,
  @as("ErrorCode") errorCode: option<__integer>,
  @as("CurrentPhase") currentPhase: option<jobPhase>,
  @as("CreatedAt") createdAt: option<__timestampUnix>,
  @as("BillingTagsSource") billingTagsSource: option<billingTagsSource>,
  @as("Arn") arn: option<__string>,
  @as("AccelerationStatus") accelerationStatus: option<accelerationStatus>,
  @as("AccelerationSettings") accelerationSettings: option<accelerationSettings>,
}
type __listOfJobTemplate = array<jobTemplate>
type __listOfJob = array<job>

module DisassociateCertificate = {
  type t
  type request = {@as("Arn") arn: __string}
  type response = unit
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "DisassociateCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteQueue = {
  type t
  type request = {@as("Name") name: __string}
  type response = unit
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "DeleteQueueCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePreset = {
  type t
  type request = {@as("Name") name: __string}
  type response = unit
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "DeletePresetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteJobTemplate = {
  type t
  type request = {@as("Name") name: __string}
  type response = unit
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "DeleteJobTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelJob = {
  type t
  type request = {@as("Id") id: __string}
  type response = unit
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "CancelJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateCertificate = {
  type t
  type request = {@as("Arn") arn: __string}
  type response = unit
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "AssociateCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: option<__listOf__string>,
    @as("Arn") arn: __string,
  }
  type response = unit
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: __mapOf__string,
    @as("Arn") arn: __string,
  }
  type response = unit
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateQueue = {
  type t
  type request = {
    @as("Status") status: option<queueStatus>,
    @as("ReservationPlanSettings") reservationPlanSettings: option<reservationPlanSettings>,
    @as("Name") name: __string,
    @as("Description") description: option<__string>,
  }
  type response = {@as("Queue") queue: option<queue>}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "UpdateQueueCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("Arn") arn: __string}
  type response = {@as("ResourceTags") resourceTags: option<resourceTags>}
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQueue = {
  type t
  type request = {@as("Name") name: __string}
  type response = {@as("Queue") queue: option<queue>}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "GetQueueCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpoints = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("Mode") mode: option<describeEndpointsMode>,
    @as("MaxResults") maxResults: option<__integer>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Endpoints") endpoints: option<__listOfEndpoint>,
  }
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "DescribeEndpointsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateQueue = {
  type t
  type request = {
    @as("Tags") tags: option<__mapOf__string>,
    @as("Status") status: option<queueStatus>,
    @as("ReservationPlanSettings") reservationPlanSettings: option<reservationPlanSettings>,
    @as("PricingPlan") pricingPlan: option<pricingPlan>,
    @as("Name") name: __string,
    @as("Description") description: option<__string>,
  }
  type response = {@as("Queue") queue: option<queue>}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "CreateQueueCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQueues = {
  type t
  type request = {
    @as("Order") order: option<order>,
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__integerMin1Max20>,
    @as("ListBy") listBy: option<queueListBy>,
  }
  type response = {
    @as("Queues") queues: option<__listOfQueue>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "ListQueuesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePreset = {
  type t
  type request = {
    @as("Settings") settings: option<presetSettings>,
    @as("Name") name: __string,
    @as("Description") description: option<__string>,
    @as("Category") category: option<__string>,
  }
  type response = {@as("Preset") preset: option<preset>}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "UpdatePresetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPreset = {
  type t
  type request = {@as("Name") name: __string}
  type response = {@as("Preset") preset: option<preset>}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "GetPresetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePreset = {
  type t
  type request = {
    @as("Tags") tags: option<__mapOf__string>,
    @as("Settings") settings: presetSettings,
    @as("Name") name: __string,
    @as("Description") description: option<__string>,
    @as("Category") category: option<__string>,
  }
  type response = {@as("Preset") preset: option<preset>}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "CreatePresetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPresets = {
  type t
  type request = {
    @as("Order") order: option<order>,
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__integerMin1Max20>,
    @as("ListBy") listBy: option<presetListBy>,
    @as("Category") category: option<__string>,
  }
  type response = {
    @as("Presets") presets: option<__listOfPreset>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "ListPresetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateJobTemplate = {
  type t
  type request = {
    @as("StatusUpdateInterval") statusUpdateInterval: option<statusUpdateInterval>,
    @as("Settings") settings: option<jobTemplateSettings>,
    @as("Queue") queue: option<__string>,
    @as("Priority") priority: option<__integerMinNegative50Max50>,
    @as("Name") name: __string,
    @as("HopDestinations") hopDestinations: option<__listOfHopDestination>,
    @as("Description") description: option<__string>,
    @as("Category") category: option<__string>,
    @as("AccelerationSettings") accelerationSettings: option<accelerationSettings>,
  }
  type response = {@as("JobTemplate") jobTemplate: option<jobTemplate>}
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "UpdateJobTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobTemplate = {
  type t
  type request = {@as("Name") name: __string}
  type response = {@as("JobTemplate") jobTemplate: option<jobTemplate>}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "GetJobTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJob = {
  type t
  type request = {@as("Id") id: __string}
  type response = {@as("Job") job: option<job>}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "GetJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJobTemplate = {
  type t
  type request = {
    @as("Tags") tags: option<__mapOf__string>,
    @as("StatusUpdateInterval") statusUpdateInterval: option<statusUpdateInterval>,
    @as("Settings") settings: jobTemplateSettings,
    @as("Queue") queue: option<__string>,
    @as("Priority") priority: option<__integerMinNegative50Max50>,
    @as("Name") name: __string,
    @as("HopDestinations") hopDestinations: option<__listOfHopDestination>,
    @as("Description") description: option<__string>,
    @as("Category") category: option<__string>,
    @as("AccelerationSettings") accelerationSettings: option<accelerationSettings>,
  }
  type response = {@as("JobTemplate") jobTemplate: option<jobTemplate>}
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "CreateJobTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJob = {
  type t
  type request = {
    @as("UserMetadata") userMetadata: option<__mapOf__string>,
    @as("Tags") tags: option<__mapOf__string>,
    @as("StatusUpdateInterval") statusUpdateInterval: option<statusUpdateInterval>,
    @as("SimulateReservedQueue") simulateReservedQueue: option<simulateReservedQueue>,
    @as("Settings") settings: jobSettings,
    @as("Role") role: __string,
    @as("Queue") queue: option<__string>,
    @as("Priority") priority: option<__integerMinNegative50Max50>,
    @as("JobTemplate") jobTemplate: option<__string>,
    @as("HopDestinations") hopDestinations: option<__listOfHopDestination>,
    @as("ClientRequestToken") clientRequestToken: option<__string>,
    @as("BillingTagsSource") billingTagsSource: option<billingTagsSource>,
    @as("AccelerationSettings") accelerationSettings: option<accelerationSettings>,
  }
  type response = {@as("Job") job: option<job>}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "CreateJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  type request = {
    @as("Status") status: option<jobStatus>,
    @as("Queue") queue: option<__string>,
    @as("Order") order: option<order>,
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__integerMin1Max20>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Jobs") jobs: option<__listOfJob>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "ListJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobTemplates = {
  type t
  type request = {
    @as("Order") order: option<order>,
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<__integerMin1Max20>,
    @as("ListBy") listBy: option<jobTemplateListBy>,
    @as("Category") category: option<__string>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("JobTemplates") jobTemplates: option<__listOfJobTemplate>,
  }
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "ListJobTemplatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
