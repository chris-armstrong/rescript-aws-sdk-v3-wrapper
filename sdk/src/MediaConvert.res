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
type __stringPatternS3MM2PPWWEEBBMMMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEEAATTMMOOSSOOGGGGaAHttpsMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEEAATTMMOOSSOOGGGGaA = string
type __stringPatternS3MM2PPMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLLOOGGGGaAAATTMMOOSSHttpsMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLLOOGGGGaAAATTMMOOSS = string
type __stringPatternS3ASSETMAPXml = string
type __stringPatternS3 = string
type __stringPatternIdentityAZaZ26AZaZ09163 = string
type __stringPatternHttpsKantarmediaCom = string
type __stringPatternHttps = string
type __stringPatternDD = string
type __stringPatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912MrkAFAF0932 = string
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
type __stringMin6Max8Pattern09aFAF609aFAF2 = string
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
type __stringMin14PatternS3XmlXMLHttpsXmlXML = string
type __stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMIVttVTTWebvttWEBVTTHttpsSccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMIVttVTTWebvttWEBVTT = string
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
type __integerMin8Max4096 = int
type __integerMin8Max12 = int
type __integerMin8000Max96000 = int
type __integerMin8000Max192000 = int
type __integerMin64000Max640000 = int
type __integerMin6000Max1024000 = int
type __integerMin4Max12 = int
type __integerMin48000Max48000 = int
type __integerMin3Max15 = int
type __integerMin384000Max1024000 = int
type __integerMin32Max8192 = int
type __integerMin32Max8182 = int
type __integerMin32000Max48000 = int
type __integerMin32000Max384000 = int
type __integerMin32000Max192000 = int
type __integerMin2Max4096 = int
type __integerMin2Max2147483647 = int
type __integerMin25Max2000 = int
type __integerMin25Max10000 = int
type __integerMin24Max60000 = int
type __integerMin22050Max48000 = int
type __integerMin1Max64 = int
type __integerMin1Max60000 = int
type __integerMin1Max6 = int
type __integerMin1Max512 = int
type __integerMin1Max4096 = int
type __integerMin1Max4 = int
type __integerMin1Max32 = int
type __integerMin1Max31 = int
type __integerMin1Max2147483647 = int
type __integerMin1Max2147483640 = int
type __integerMin1Max2048 = int
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
type __integerMin0Max4000 = int
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
@ocaml.doc(
  "The best way to set up adaptive quantization is to keep the default value, Auto (AUTO), for the setting Adaptive quantization (adaptiveQuantization). When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. For this setting, keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal adaptive quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization)."
)
type xavcTemporalAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "The best way to set up adaptive quantization is to keep the default value, Auto (AUTO), for the setting Adaptive quantization (adaptiveQuantization). When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. For this setting, keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher."
)
type xavcSpatialAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Frame rate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
)
type xavcSlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Specify the XAVC profile for this output. For more information, see the Sony documentation at https://www.xavc-info.org/. Note that MediaConvert doesn't support the interlaced video XAVC operating points for XAVC_HD_INTRA_CBG. To create an interlaced XAVC output, choose the profile XAVC_HD."
)
type xavcProfile = [
  | @as("XAVC_4K") #XAVC_4K
  | @as("XAVC_HD") #XAVC_HD
  | @as("XAVC_4K_INTRA_VBR") #XAVC_4K_INTRA_VBR
  | @as("XAVC_4K_INTRA_CBG") #XAVC_4K_INTRA_CBG
  | @as("XAVC_HD_INTRA_CBG") #XAVC_HD_INTRA_CBG
]
@ocaml.doc(
  "Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose."
)
type xavcInterlaceMode = [
  | @as("FOLLOW_BOTTOM_FIELD") #FOLLOW_BOTTOM_FIELD
  | @as("FOLLOW_TOP_FIELD") #FOLLOW_TOP_FIELD
  | @as("BOTTOM_FIELD") #BOTTOM_FIELD
  | @as("TOP_FIELD") #TOP_FIELD
  | @as("PROGRESSIVE") #PROGRESSIVE
]
@ocaml.doc(
  "Ignore this setting unless you set Frame rate (framerateNumerator divided by framerateDenominator) to 29.970. If your input framerate is 23.976, choose Hard (HARD). Otherwise, keep the default value None (NONE). For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-telecine-and-inverse-telecine.html."
)
type xavcHdProfileTelecine = [@as("HARD") #HARD | @as("NONE") #NONE]
@ocaml.doc(
  "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
)
type xavcHdProfileQualityTuningLevel = [
  | @as("MULTI_PASS_HQ") #MULTI_PASS_HQ
  | @as("SINGLE_PASS_HQ") #SINGLE_PASS_HQ
  | @as("SINGLE_PASS") #SINGLE_PASS
]
@ocaml.doc(
  "Specify the XAVC HD (Long GOP) Bitrate Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class."
)
type xavcHdProfileBitrateClass = [
  | @as("BITRATE_CLASS_50") #BITRATE_CLASS_50
  | @as("BITRATE_CLASS_35") #BITRATE_CLASS_35
  | @as("BITRATE_CLASS_25") #BITRATE_CLASS_25
]
@ocaml.doc(
  "Specify the XAVC Intra HD (CBG) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class."
)
type xavcHdIntraCbgProfileClass = [
  | @as("CLASS_200") #CLASS_200
  | @as("CLASS_100") #CLASS_100
  | @as("CLASS_50") #CLASS_50
]
@ocaml.doc(
  "Specify whether the encoder uses B-frames as reference frames for other pictures in the same GOP. Choose Allow (ENABLED) to allow the encoder to use B-frames as reference frames. Choose Don't allow (DISABLED) to prevent the encoder from using B-frames as reference frames."
)
type xavcGopBReference = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
)
type xavcFramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
@ocaml.doc(
  "If you are using the console, use the Frame rate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list. The framerates shown in the dropdown list are decimal approximations of fractions. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate that you specify in the settings FramerateNumerator and FramerateDenominator."
)
type xavcFramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "The best way to set up adaptive quantization is to keep the default value, Auto (AUTO), for the setting Adaptive quantization (XavcAdaptiveQuantization). When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set Adaptive quantization (adaptiveQuantization) to a value other than Off (OFF) or Auto (AUTO). Use Adaptive quantization to adjust the degree of smoothing that Flicker adaptive quantization provides."
)
type xavcFlickerAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Optional. Choose a specific entropy encoding mode only when you want to override XAVC recommendations. If you choose the value auto, MediaConvert uses the mode that the XAVC file format specifies given this output's operating point."
)
type xavcEntropyEncoding = [@as("CAVLC") #CAVLC | @as("CABAC") #CABAC | @as("AUTO") #AUTO]
@ocaml.doc(
  "Keep the default value, Auto (AUTO), for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set Adaptive quantization (adaptiveQuantization) to a value other than Auto (AUTO). Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization to Off (OFF). Related settings: The value that you choose here applies to the following settings: Flicker adaptive quantization (flickerAdaptiveQuantization), Spatial adaptive quantization (spatialAdaptiveQuantization), and Temporal adaptive quantization (temporalAdaptiveQuantization)."
)
type xavcAdaptiveQuantization = [
  | @as("MAX") #MAX
  | @as("HIGHER") #HIGHER
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("AUTO") #AUTO
  | @as("OFF") #OFF
]
@ocaml.doc(
  "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
)
type xavc4kProfileQualityTuningLevel = [
  | @as("MULTI_PASS_HQ") #MULTI_PASS_HQ
  | @as("SINGLE_PASS_HQ") #SINGLE_PASS_HQ
  | @as("SINGLE_PASS") #SINGLE_PASS
]
@ocaml.doc(
  "Specify the codec profile for this output. Choose High, 8-bit, 4:2:0 (HIGH) or High, 10-bit, 4:2:2 (HIGH_422). These profiles are specified in ITU-T H.264."
)
type xavc4kProfileCodecProfile = [@as("HIGH_422") #HIGH_422 | @as("HIGH") #HIGH]
@ocaml.doc(
  "Specify the XAVC 4k (Long GOP) Bitrate Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class."
)
type xavc4kProfileBitrateClass = [
  | @as("BITRATE_CLASS_200") #BITRATE_CLASS_200
  | @as("BITRATE_CLASS_140") #BITRATE_CLASS_140
  | @as("BITRATE_CLASS_100") #BITRATE_CLASS_100
]
@ocaml.doc(
  "Specify the XAVC Intra 4k (VBR) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class."
)
type xavc4kIntraVbrProfileClass = [
  | @as("CLASS_480") #CLASS_480
  | @as("CLASS_300") #CLASS_300
  | @as("CLASS_100") #CLASS_100
]
@ocaml.doc(
  "Specify the XAVC Intra 4k (CBG) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class."
)
type xavc4kIntraCbgProfileClass = [
  | @as("CLASS_480") #CLASS_480
  | @as("CLASS_300") #CLASS_300
  | @as("CLASS_100") #CLASS_100
]
@ocaml.doc(
  "Set Style passthrough (StylePassthrough) to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use simplified output captions."
)
type webvttStylePassthrough = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc(
  "Set Accessibility subtitles (Accessibility) to Enabled (ENABLED) if the ISMC or WebVTT captions track is intended to provide accessibility for people who are deaf or hard of hearing. When you enable this feature, MediaConvert adds the following attributes under EXT-X-MEDIA in the HLS or CMAF manifest for this track: CHARACTERISTICS=\"public.accessibility.describes-spoken-dialog,public.accessibility.describes-music-and-sound\" and AUTOSELECT=\"YES\". Keep the default value, Disabled (DISABLED), if the captions track is not intended to provide such accessibility. MediaConvert will not add the above attributes."
)
type webvttAccessibilitySubs = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "The service defaults to using RIFF for WAV outputs. If your output audio is likely to exceed 4 GB in file size, or if you otherwise need the extended support of the RF64 format, set your output WAV file format to RF64."
)
type wavFormat = [@as("RF64") #RF64 | @as("RIFF") #RIFF]
@ocaml.doc(
  "Optional. Ignore this setting unless Nagra support directs you to specify a value. When you don't specify a value here, the Nagra NexGuard library uses its default value."
)
type watermarkingStrength = [
  | @as("STRONGEST") #STRONGEST
  | @as("STRONGER") #STRONGER
  | @as("DEFAULT") #DEFAULT
  | @as("LIGHTER") #LIGHTER
  | @as("LIGHTEST") #LIGHTEST
]
@ocaml.doc("With the VP9 codec, you can use only the variable bitrate (VBR) rate control mode.")
type vp9RateControlMode = [@as("VBR") #VBR]
@ocaml.doc(
  "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding."
)
type vp9QualityTuningLevel = [@as("MULTI_PASS_HQ") #MULTI_PASS_HQ | @as("MULTI_PASS") #MULTI_PASS]
@ocaml.doc(
  "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
)
type vp9ParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
)
type vp9FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
@ocaml.doc(
  "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
)
type vp9FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc("With the VP8 codec, you can use only the variable bitrate (VBR) rate control mode.")
type vp8RateControlMode = [@as("VBR") #VBR]
@ocaml.doc(
  "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding."
)
type vp8QualityTuningLevel = [@as("MULTI_PASS_HQ") #MULTI_PASS_HQ | @as("MULTI_PASS") #MULTI_PASS]
@ocaml.doc(
  "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
)
type vp8ParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
)
type vp8FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
@ocaml.doc(
  "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
)
type vp8FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Applies only to H.264, H.265, MPEG2, and ProRes outputs. Only enable Timecode insertion when the input frame rate is identical to the output frame rate. To include timecodes in this output, set Timecode insertion (VideoTimecodeInsertion) to PIC_TIMING_SEI. To leave them out, set it to DISABLED. Default is DISABLED. When the service inserts timecodes in an output, by default, it uses any embedded timecodes from the input. If none are present, the service will set the timecode for the first output frame to zero. To change this default behavior, adjust the settings under Timecode configuration (TimecodeConfig). In the console, these settings are located under Job > Job settings > Timecode configuration. Note - Timecode source under input settings (InputTimecodeSource) does not affect the timecodes that are inserted in the output. Source under Job settings > Timecode configuration (TimecodeSource) does."
)
type videoTimecodeInsertion = [@as("PIC_TIMING_SEI") #PIC_TIMING_SEI | @as("DISABLED") #DISABLED]
@ocaml.doc("Type of video codec")
type videoCodec = [
  | @as("XAVC") #XAVC
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
@ocaml.doc(
  "The action to take on content advisory XDS packets.  If you select PASSTHROUGH, packets will not be changed. If you select STRIP, any packets will be removed in output captions."
)
type vchipAction = [@as("STRIP") #STRIP | @as("PASSTHROUGH") #PASSTHROUGH]
@ocaml.doc(
  "When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture."
)
type vc3Telecine = [@as("HARD") #HARD | @as("NONE") #NONE]
@ocaml.doc(
  "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
)
type vc3SlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE)."
)
type vc3ScanTypeConversionMode = [
  | @as("INTERLACED_OPTIMIZE") #INTERLACED_OPTIMIZE
  | @as("INTERLACED") #INTERLACED
]
@ocaml.doc(
  "Optional. Choose the scan line type for this output. If you don't specify a value, MediaConvert will create a progressive output."
)
type vc3InterlaceMode = [@as("PROGRESSIVE") #PROGRESSIVE | @as("INTERLACED") #INTERLACED]
@ocaml.doc(
  "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
)
type vc3FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
@ocaml.doc(
  "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
)
type vc3FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Specify the VC3 class to choose the quality characteristics for this output. VC3 class, together with the settings Framerate (framerateNumerator and framerateDenominator) and Resolution (height and width), determine your output bitrate. For example, say that your video resolution is 1920x1080 and your framerate is 29.97. Then Class 145 (CLASS_145) gives you an output with a bitrate of approximately 145 Mbps and Class 220 (CLASS_220) gives you and output with a bitrate of approximately 220 Mbps. VC3 class also specifies the color bit depth of your output."
)
type vc3Class = [
  | @as("CLASS_220_10BIT") #CLASS_220_10BIT
  | @as("CLASS_220_8BIT") #CLASS_220_8BIT
  | @as("CLASS_145_8BIT") #CLASS_145_8BIT
]
type type_ = [@as("CUSTOM") #CUSTOM | @as("SYSTEM") #SYSTEM]
@ocaml.doc(
  "Pass through style and position information from a TTML-like input source (TTML, IMSC, SMPTE-TT) to the TTML output."
)
type ttmlStylePassthrough = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc(
  "Set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH) to include ID3 metadata in this output. This includes ID3 metadata from the following features: ID3 timestamp period (timedMetadataId3Period), and Custom ID3 metadata inserter (timedMetadataInsertion). To exclude this ID3 metadata in this output: set ID3 metadata to None (NONE) or leave blank."
)
type timedMetadata = [@as("NONE") #NONE | @as("PASSTHROUGH") #PASSTHROUGH]
@ocaml.doc(
  "Use Source (TimecodeSource) to set how timecodes are handled within this job. To make sure that your video, audio, captions, and markers are synchronized and that time-based features, such as image inserter, work correctly, choose the Timecode source option that matches your assets. All timecodes are in a 24-hour format with frame number (HH:MM:SS:FF). * Embedded (EMBEDDED) - Use the timecode that is in the input video. If no embedded timecode is in the source, the service will use Start at 0 (ZEROBASED) instead. * Start at 0 (ZEROBASED) - Set the timecode of the initial frame to 00:00:00:00. * Specified Start (SPECIFIEDSTART) - Set the timecode of the initial frame to a value other than zero. You use Start timecode (Start) to provide this value."
)
type timecodeSource = [
  | @as("SPECIFIEDSTART") #SPECIFIEDSTART
  | @as("ZEROBASED") #ZEROBASED
  | @as("EMBEDDED") #EMBEDDED
]
@ocaml.doc(
  "Use Position (Position) under under Timecode burn-in (TimecodeBurnIn) to specify the location the burned-in timecode on output video."
)
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
@ocaml.doc("A page type as defined in the standard ETSI EN 300 468, Table 94")
type teletextPageType = [
  | @as("PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE") #PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE
  | @as("PAGE_TYPE_PROGRAM_SCHEDULE") #PAGE_TYPE_PROGRAM_SCHEDULE
  | @as("PAGE_TYPE_ADDL_INFO") #PAGE_TYPE_ADDL_INFO
  | @as("PAGE_TYPE_SUBTITLE") #PAGE_TYPE_SUBTITLE
  | @as("PAGE_TYPE_INITIAL") #PAGE_TYPE_INITIAL
]
@ocaml.doc(
  "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error."
)
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
@ocaml.doc(
  "Set Style passthrough (StylePassthrough) to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use simplified output captions."
)
type srtStylePassthrough = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc(
  "Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default."
)
type simulateReservedQueue = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Set Framerate (SccDestinationFramerate) to make sure that the captions and the video are synchronized in the output. Specify a frame rate that matches the frame rate of the associated video. If the video frame rate is 29.97, choose 29.97 dropframe (FRAMERATE_29_97_DROPFRAME) only if the video has video_insertion=true and drop_frame_timecode=true; otherwise, choose 29.97 non-dropframe (FRAMERATE_29_97_NON_DROPFRAME)."
)
type sccDestinationFramerate = [
  | @as("FRAMERATE_29_97_NON_DROPFRAME") #FRAMERATE_29_97_NON_DROPFRAME
  | @as("FRAMERATE_29_97_DROPFRAME") #FRAMERATE_29_97_DROPFRAME
  | @as("FRAMERATE_25") #FRAMERATE_25
  | @as("FRAMERATE_24") #FRAMERATE_24
  | @as("FRAMERATE_23_97") #FRAMERATE_23_97
]
@ocaml.doc(
  "Specify how the service handles outputs that have a different aspect ratio from the input aspect ratio. Choose Stretch to output (STRETCH_TO_OUTPUT) to have the service stretch your video image to fit. Keep the setting Default (DEFAULT) to have the service letterbox your video instead. This setting overrides any value that you specify for the setting Selection placement (position) in this output."
)
type scalingBehavior = [@as("STRETCH_TO_OUTPUT") #STRETCH_TO_OUTPUT | @as("DEFAULT") #DEFAULT]
@ocaml.doc(
  "Specify the video color sample range for this output. To create a full range output, you must start with a full range YUV input and keep the default value, None (NONE). To create a limited range output from a full range input, choose Limited range (LIMITED_RANGE_SQUEEZE). With RGB inputs, your output is always limited range, regardless of your choice here. When you create a limited range output from a full range input, MediaConvert limits the active pixel values in a way that depends on the output's bit depth: 8-bit outputs contain only values from 16 through 235 and 10-bit outputs contain only values from 64 through 940. With this conversion, MediaConvert also changes the output metadata to note the limited range."
)
type sampleRangeConversion = [
  | @as("NONE") #NONE
  | @as("LIMITED_RANGE_SQUEEZE") #LIMITED_RANGE_SQUEEZE
]
@ocaml.doc(
  "Specify how you want your data keys managed. AWS uses data keys to encrypt your content. AWS also encrypts the data keys themselves, using a customer master key (CMK), and then stores the encrypted data keys alongside your encrypted content. Use this setting to specify which AWS service manages the CMK. For simplest set up, choose Amazon S3 (SERVER_SIDE_ENCRYPTION_S3). If you want your master key to be managed by AWS Key Management Service (KMS), choose AWS KMS (SERVER_SIDE_ENCRYPTION_KMS). By default, when you choose AWS KMS, KMS uses the AWS managed customer master key (CMK) associated with Amazon S3 to encrypt your data keys. You can optionally choose to specify a different, customer managed CMK. Do so by specifying the Amazon Resource Name (ARN) of the key for the setting  KMS ARN (kmsKeyArn)."
)
type s3ServerSideEncryptionType = [
  | @as("SERVER_SIDE_ENCRYPTION_KMS") #SERVER_SIDE_ENCRYPTION_KMS
  | @as("SERVER_SIDE_ENCRYPTION_S3") #SERVER_SIDE_ENCRYPTION_S3
]
@ocaml.doc("Choose an Amazon S3 canned ACL for MediaConvert to apply to this output.")
type s3ObjectCannedAcl = [
  | @as("BUCKET_OWNER_FULL_CONTROL") #BUCKET_OWNER_FULL_CONTROL
  | @as("BUCKET_OWNER_READ") #BUCKET_OWNER_READ
  | @as("AUTHENTICATED_READ") #AUTHENTICATED_READ
  | @as("PUBLIC_READ") #PUBLIC_READ
]
@ocaml.doc(
  "Use Respond to AFD (RespondToAfd) to specify how the service changes the video itself in response to AFD values in the input. * Choose Respond to clip the input video frame according to the AFD value, input display aspect ratio, and output display aspect ratio. * Choose Passthrough to include the input AFD values. Do not choose this when AfdSignaling is set to (NONE). A preferred implementation of this workflow is to set RespondToAfd to (NONE) and set AfdSignaling to (AUTO). * Choose None to remove all input AFD values from this output."
)
type respondToAfd = [@as("PASSTHROUGH") #PASSTHROUGH | @as("RESPOND") #RESPOND | @as("NONE") #NONE]
@ocaml.doc("Specifies whether the pricing plan for your reserved queue is ACTIVE or EXPIRED.")
type reservationPlanStatus = [@as("EXPIRED") #EXPIRED | @as("ACTIVE") #ACTIVE]
@ocaml.doc(
  "Specifies whether the term of your reserved queue pricing plan is automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of the term."
)
type renewalType = [@as("EXPIRE") #EXPIRE | @as("AUTO_RENEW") #AUTO_RENEW]
@ocaml.doc(
  "Queues can be ACTIVE or PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause a queue continue to run until they finish or result in an error."
)
type queueStatus = [@as("PAUSED") #PAUSED | @as("ACTIVE") #ACTIVE]
@ocaml.doc(
  "Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date."
)
type queueListBy = [@as("CREATION_DATE") #CREATION_DATE | @as("NAME") #NAME]
@ocaml.doc(
  "When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture."
)
type proresTelecine = [@as("HARD") #HARD | @as("NONE") #NONE]
@ocaml.doc(
  "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
)
type proresSlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE)."
)
type proresScanTypeConversionMode = [
  | @as("INTERLACED_OPTIMIZE") #INTERLACED_OPTIMIZE
  | @as("INTERLACED") #INTERLACED
]
@ocaml.doc(
  "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
)
type proresParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose."
)
type proresInterlaceMode = [
  | @as("FOLLOW_BOTTOM_FIELD") #FOLLOW_BOTTOM_FIELD
  | @as("FOLLOW_TOP_FIELD") #FOLLOW_TOP_FIELD
  | @as("BOTTOM_FIELD") #BOTTOM_FIELD
  | @as("TOP_FIELD") #TOP_FIELD
  | @as("PROGRESSIVE") #PROGRESSIVE
]
@ocaml.doc(
  "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
)
type proresFramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
@ocaml.doc(
  "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
)
type proresFramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Use Profile (ProResCodecProfile) to specify the type of Apple ProRes codec to use for this output."
)
type proresCodecProfile = [
  | @as("APPLE_PRORES_4444_XQ") #APPLE_PRORES_4444_XQ
  | @as("APPLE_PRORES_4444") #APPLE_PRORES_4444
  | @as("APPLE_PRORES_422_PROXY") #APPLE_PRORES_422_PROXY
  | @as("APPLE_PRORES_422_LT") #APPLE_PRORES_422_LT
  | @as("APPLE_PRORES_422_HQ") #APPLE_PRORES_422_HQ
  | @as("APPLE_PRORES_422") #APPLE_PRORES_422
]
@ocaml.doc(
  "This setting applies only to ProRes 4444 and ProRes 4444 XQ outputs that you create from inputs that use 4:4:4 chroma sampling. Set Preserve 4:4:4 sampling (PRESERVE_444_SAMPLING) to allow outputs to also use 4:4:4 chroma sampling. You must specify a value for this setting when your output codec profile supports 4:4:4 chroma sampling. Related Settings: When you set Chroma sampling to Preserve 4:4:4 sampling (PRESERVE_444_SAMPLING), you must choose an output codec profile that supports 4:4:4 chroma sampling. These values for Profile (CodecProfile) support 4:4:4 chroma sampling: Apple ProRes 4444 (APPLE_PRORES_4444) or Apple ProRes 4444 XQ (APPLE_PRORES_4444_XQ). When you set Chroma sampling to Preserve 4:4:4 sampling, you must disable all video preprocessors except for Nexguard file marker (PartnerWatermarking). When you set Chroma sampling to Preserve 4:4:4 sampling and use framerate conversion, you must set Frame rate conversion algorithm (FramerateConversionAlgorithm) to Drop duplicate (DUPLICATE_DROP)."
)
type proresChromaSampling = [
  | @as("SUBSAMPLE_TO_422") #SUBSAMPLE_TO_422
  | @as("PRESERVE_444_SAMPLING") #PRESERVE_444_SAMPLING
]
@ocaml.doc(
  "Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment."
)
type pricingPlan = [@as("RESERVED") #RESERVED | @as("ON_DEMAND") #ON_DEMAND]
@ocaml.doc(
  "Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name."
)
type presetListBy = [
  | @as("SYSTEM") #SYSTEM
  | @as("CREATION_DATE") #CREATION_DATE
  | @as("NAME") #NAME
]
@ocaml.doc(
  "Selects method of inserting SDT information into output stream.  \"Follow input SDT\" copies SDT information from input stream to  output stream. \"Follow input SDT if present\" copies SDT information from  input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. Enter \"SDT  Manually\" means user will enter the SDT information. \"No SDT\" means output  stream will not contain SDT information."
)
type outputSdt = [
  | @as("SDT_NONE") #SDT_NONE
  | @as("SDT_MANUAL") #SDT_MANUAL
  | @as("SDT_FOLLOW_IF_PRESENT") #SDT_FOLLOW_IF_PRESENT
  | @as("SDT_FOLLOW") #SDT_FOLLOW
]
@ocaml.doc(
  "Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming, CMAF)"
)
type outputGroupType = [
  | @as("CMAF_GROUP_SETTINGS") #CMAF_GROUP_SETTINGS
  | @as("MS_SMOOTH_GROUP_SETTINGS") #MS_SMOOTH_GROUP_SETTINGS
  | @as("FILE_GROUP_SETTINGS") #FILE_GROUP_SETTINGS
  | @as("DASH_ISO_GROUP_SETTINGS") #DASH_ISO_GROUP_SETTINGS
  | @as("HLS_GROUP_SETTINGS") #HLS_GROUP_SETTINGS
]
@ocaml.doc(
  "Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource."
)
type order = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
@ocaml.doc(
  "Use Noise reducer filter (NoiseReducerFilter) to select one of the following spatial image filtering functions. To use this setting, you must also enable Noise reducer (NoiseReducer). * Bilateral preserves edges while reducing noise. * Mean (softest), Gaussian, Lanczos, and Sharpen (sharpest) do convolution filtering. * Conserve does min/max noise reduction. * Spatial does frequency-domain filtering based on JND principles. * Temporal optimizes video quality for complex motion."
)
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
@ocaml.doc(
  "Use Post temporal sharpening strength (postTemporalSharpeningStrength) to define the amount of sharpening the transcoder applies to your output. Set Post temporal sharpening strength to Low (LOW), Medium (MEDIUM), or High (HIGH) to indicate the amount of sharpening."
)
type noiseFilterPostTemporalSharpeningStrength = [
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
]
@ocaml.doc(
  "When you set Noise reducer (noiseReducer) to Temporal (TEMPORAL), the bandwidth and sharpness of your output is reduced. You can optionally use Post temporal sharpening (postTemporalSharpening) to apply sharpening to the edges of your output. Note that Post temporal sharpening will also make the bandwidth reduction from the Noise reducer smaller. The default behavior, Auto (AUTO), allows the transcoder to determine whether to apply sharpening, depending on your input type and quality. When you set Post temporal sharpening to Enabled (ENABLED), specify how much sharpening is applied using Post temporal sharpening strength (postTemporalSharpeningStrength). Set Post temporal sharpening to Disabled (DISABLED) to not apply sharpening."
)
type noiseFilterPostTemporalSharpening = [
  | @as("AUTO") #AUTO
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
@ocaml.doc(
  "To create assets that have the same TIC values in each audio track, keep the default value Share TICs (SAME_TICS_PER_TRACK). To create assets that have unique TIC values for each audio track, choose Use unique TICs (RESERVE_UNIQUE_TICS_PER_TRACK)."
)
type nielsenUniqueTicPerAudioTrackType = [
  | @as("SAME_TICS_PER_TRACK") #SAME_TICS_PER_TRACK
  | @as("RESERVE_UNIQUE_TICS_PER_TRACK") #RESERVE_UNIQUE_TICS_PER_TRACK
]
@ocaml.doc(
  "Required. Specify whether your source content already contains Nielsen non-linear watermarks. When you set this value to Watermarked (WATERMARKED), the service fails the job. Nielsen requires that you add non-linear watermarking to only clean content that doesn't already  have non-linear Nielsen watermarks."
)
type nielsenSourceWatermarkStatusType = [@as("WATERMARKED") #WATERMARKED | @as("CLEAN") #CLEAN]
@ocaml.doc(
  "Choose the type of Nielsen watermarks that you want in your outputs. When you choose NAES 2 and NW (NAES2_AND_NW), you must provide a value for the setting SID (sourceId). When you choose CBET (CBET), you must provide a value for the setting CSID (cbetSourceId). When you choose NAES 2, NW, and CBET (NAES2_AND_NW_AND_CBET), you must provide values for both of these settings."
)
type nielsenActiveWatermarkProcessType = [
  | @as("NAES2_AND_NW_AND_CBET") #NAES2_AND_NW_AND_CBET
  | @as("CBET") #CBET
  | @as("NAES2_AND_NW") #NAES2_AND_NW
]
@ocaml.doc(
  "To create an output that complies with the XAVC file format guidelines for interoperability, keep the default value, Drop frames for compliance (DROP_FRAMES_FOR_COMPLIANCE). To include all frames from your input in this output, keep the default setting, Allow any duration (ALLOW_ANY_DURATION). The number of frames that MediaConvert excludes when you set this to Drop frames for compliance depends on the output frame rate and duration."
)
type mxfXavcDurationMode = [
  | @as("DROP_FRAMES_FOR_COMPLIANCE") #DROP_FRAMES_FOR_COMPLIANCE
  | @as("ALLOW_ANY_DURATION") #ALLOW_ANY_DURATION
]
@ocaml.doc(
  "Specify the MXF profile, also called shim, for this output. When you choose Auto, MediaConvert chooses a profile based on the video codec and resolution. For a list of codecs supported with each MXF profile, see https://docs.aws.amazon.com/mediaconvert/latest/ug/codecs-supported-with-each-mxf-profile.html. For more information about the automatic selection behavior, see https://docs.aws.amazon.com/mediaconvert/latest/ug/default-automatic-selection-of-mxf-profiles.html."
)
type mxfProfile = [@as("XAVC") #XAVC | @as("OP1A") #OP1A | @as("XDCAM") #XDCAM | @as("D_10") #D_10]
@ocaml.doc(
  "Optional. When you have AFD signaling set up in your output video stream, use this setting to choose whether to also include it in the MXF wrapper. Choose Don't copy (NO_COPY) to exclude AFD signaling from the MXF wrapper. Choose Copy from video stream (COPY_FROM_VIDEO) to copy the AFD values from the video stream for this output to the MXF wrapper. Regardless of which option you choose, the AFD values remain in the video stream. Related settings: To set up your output to include or exclude AFD values, see AfdSignaling, under VideoDescription. On the console, find AFD signaling under the output's video encoding settings."
)
type mxfAfdSignaling = [@as("COPY_FROM_VIDEO") #COPY_FROM_VIDEO | @as("NO_COPY") #NO_COPY]
@ocaml.doc(
  "Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16."
)
type msSmoothManifestEncoding = [@as("UTF16") #UTF16 | @as("UTF8") #UTF8]
@ocaml.doc(
  "Specify how you want MediaConvert to determine the fragment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Fragment length (FragmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary."
)
type msSmoothFragmentLengthControl = [@as("GOP_MULTIPLE") #GOP_MULTIPLE | @as("EXACT") #EXACT]
@ocaml.doc(
  "COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream."
)
type msSmoothAudioDeduplication = [
  | @as("NONE") #NONE
  | @as("COMBINE_DUPLICATE_STREAMS") #COMBINE_DUPLICATE_STREAMS
]
@ocaml.doc(
  "Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization)."
)
type mpeg2TemporalAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine (HARD) produces a 29.97i output. Soft telecine (SOFT) produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture."
)
type mpeg2Telecine = [@as("HARD") #HARD | @as("SOFT") #SOFT | @as("NONE") #NONE]
@ocaml.doc(
  "Specify whether this output's video uses the D10 syntax. Keep the default value to  not use the syntax. Related settings: When you choose D10 (D_10) for your MXF  profile (profile), you must also set this value to to D10 (D_10)."
)
type mpeg2Syntax = [@as("D_10") #D_10 | @as("DEFAULT") #DEFAULT]
@ocaml.doc(
  "Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher."
)
type mpeg2SpatialAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
)
type mpeg2SlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default."
)
type mpeg2SceneChangeDetect = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE)."
)
type mpeg2ScanTypeConversionMode = [
  | @as("INTERLACED_OPTIMIZE") #INTERLACED_OPTIMIZE
  | @as("INTERLACED") #INTERLACED
]
@ocaml.doc(
  "Use Rate control mode (Mpeg2RateControlMode) to specify whether the bitrate is variable (vbr) or constant (cbr)."
)
type mpeg2RateControlMode = [@as("CBR") #CBR | @as("VBR") #VBR]
@ocaml.doc(
  "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
)
type mpeg2QualityTuningLevel = [@as("MULTI_PASS") #MULTI_PASS | @as("SINGLE_PASS") #SINGLE_PASS]
@ocaml.doc(
  "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
)
type mpeg2ParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio."
)
type mpeg2IntraDcPrecision = [
  | @as("INTRA_DC_PRECISION_11") #INTRA_DC_PRECISION_11
  | @as("INTRA_DC_PRECISION_10") #INTRA_DC_PRECISION_10
  | @as("INTRA_DC_PRECISION_9") #INTRA_DC_PRECISION_9
  | @as("INTRA_DC_PRECISION_8") #INTRA_DC_PRECISION_8
  | @as("AUTO") #AUTO
]
@ocaml.doc(
  "Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose."
)
type mpeg2InterlaceMode = [
  | @as("FOLLOW_BOTTOM_FIELD") #FOLLOW_BOTTOM_FIELD
  | @as("FOLLOW_TOP_FIELD") #FOLLOW_TOP_FIELD
  | @as("BOTTOM_FIELD") #BOTTOM_FIELD
  | @as("TOP_FIELD") #TOP_FIELD
  | @as("PROGRESSIVE") #PROGRESSIVE
]
@ocaml.doc(
  "Specify the units for GOP size (GopSize). If you don't specify a value here, by default the encoder measures GOP size in frames."
)
type mpeg2GopSizeUnits = [@as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
@ocaml.doc(
  "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
)
type mpeg2FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
@ocaml.doc(
  "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
)
type mpeg2FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames)."
)
type mpeg2DynamicSubGop = [@as("STATIC") #STATIC | @as("ADAPTIVE") #ADAPTIVE]
@ocaml.doc("Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video output.")
type mpeg2CodecProfile = [@as("PROFILE_422") #PROFILE_422 | @as("MAIN") #MAIN]
@ocaml.doc("Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video output.")
type mpeg2CodecLevel = [
  | @as("HIGH") #HIGH
  | @as("HIGH1440") #HIGH1440
  | @as("MAIN") #MAIN
  | @as("LOW") #LOW
  | @as("AUTO") #AUTO
]
@ocaml.doc(
  "Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to the following settings: Spatial adaptive quantization (spatialAdaptiveQuantization), and Temporal adaptive quantization (temporalAdaptiveQuantization)."
)
type mpeg2AdaptiveQuantization = [
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("OFF") #OFF
]
@ocaml.doc(
  "To include ID3 metadata in this output: Set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH). Specify this ID3 metadata in Custom ID3 metadata inserter (timedMetadataInsertion). MediaConvert writes each instance of ID3 metadata in a separate Event Message (eMSG) box. To exclude this ID3 metadata: Set ID3 metadata to None (NONE) or leave blank."
)
type mpdTimedMetadata = [@as("NONE") #NONE | @as("PASSTHROUGH") #PASSTHROUGH]
@ocaml.doc(
  "Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output."
)
type mpdScte35Source = [@as("NONE") #NONE | @as("PASSTHROUGH") #PASSTHROUGH]
@ocaml.doc(
  "Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml)."
)
type mpdScte35Esam = [@as("NONE") #NONE | @as("INSERT") #INSERT]
@ocaml.doc(
  "Use this setting only in DASH output groups that include sidecar TTML or IMSC captions.  You specify sidecar captions in a separate output from your audio and video. Choose Raw (RAW) for captions in a single XML file in a raw container. Choose Fragmented MPEG-4 (FRAGMENTED_MP4) for captions in XML format contained within fragmented MP4 files. This set of fragmented MP4 files is separate from your video and audio fragmented MP4 files."
)
type mpdCaptionContainerType = [@as("FRAGMENTED_MP4") #FRAGMENTED_MP4 | @as("RAW") #RAW]
@ocaml.doc(
  "Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec."
)
type mpdAudioDuration = [
  | @as("MATCH_VIDEO_DURATION") #MATCH_VIDEO_DURATION
  | @as("DEFAULT_CODEC_DURATION") #DEFAULT_CODEC_DURATION
]
@ocaml.doc(
  "Optional. Choose Include (INCLUDE) to have MediaConvert mark up your DASH manifest with <Accessibility> elements for embedded 608 captions. This markup isn't generally required, but some video players require it to discover and play embedded 608 captions. Keep the default value, Exclude (EXCLUDE), to leave these elements out. When you enable this setting, this is the markup that MediaConvert includes in your manifest: <Accessibility schemeIdUri=\"urn:scte:dash:cc:cea-608:2015\" value=\"CC1=eng\"/>"
)
type mpdAccessibilityCaptionHints = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc(
  "If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end."
)
type mp4MoovPlacement = [@as("NORMAL") #NORMAL | @as("PROGRESSIVE_DOWNLOAD") #PROGRESSIVE_DOWNLOAD]
@ocaml.doc("Inserts a free-space box immediately after the moov box.")
type mp4FreeSpaceBox = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc(
  "When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools."
)
type mp4CslgAtom = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc(
  "Specify whether the service encodes this MP3 audio output with a constant bitrate (CBR) or a variable bitrate (VBR)."
)
type mp3RateControlMode = [@as("VBR") #VBR | @as("CBR") #CBR]
@ocaml.doc("Always keep the default value (SELF_CONTAINED) for this setting.")
type movReference = [@as("EXTERNAL") #EXTERNAL | @as("SELF_CONTAINED") #SELF_CONTAINED]
@ocaml.doc(
  "To make this output compatible with Omenon, keep the default value, OMNEON. Unless you need Omneon compatibility, set this value to NONE. When you keep the default value, OMNEON, MediaConvert increases the length of the edit list atom. This might cause file rejections when a recipient of the output file doesn't expct this extra padding."
)
type movPaddingControl = [@as("NONE") #NONE | @as("OMNEON") #OMNEON]
@ocaml.doc(
  "When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2."
)
type movMpeg2FourCCControl = [@as("MPEG") #MPEG | @as("XDCAM") #XDCAM]
@ocaml.doc(
  "When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools."
)
type movCslgAtom = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc("When enabled, include 'clap' atom if appropriate for the video output settings.")
type movClapAtom = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc("Specify whether your motion graphic overlay repeats on a loop or plays only once.")
type motionImagePlayback = [@as("REPEAT") #REPEAT | @as("ONCE") #ONCE]
@ocaml.doc(
  "Choose the type of motion graphic asset that you are providing for your overlay. You can choose either a .mov file or a series of .png files."
)
type motionImageInsertionMode = [@as("PNG") #PNG | @as("MOV") #MOV]
@ocaml.doc(
  "For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE) if you don't want manifest conditioning. Choose Passthrough (PASSTHROUGH) and choose Ad markers (adMarkers) if you do want manifest conditioning. In both cases, also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml)."
)
type m3u8Scte35Source = [@as("NONE") #NONE | @as("PASSTHROUGH") #PASSTHROUGH]
@ocaml.doc(
  "When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream."
)
type m3u8PcrControl = [
  | @as("CONFIGURED_PCR_PERIOD") #CONFIGURED_PCR_PERIOD
  | @as("PCR_EVERY_PES_PACKET") #PCR_EVERY_PES_PACKET
]
@ocaml.doc(
  "If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output."
)
type m3u8NielsenId3 = [@as("NONE") #NONE | @as("INSERT") #INSERT]
@ocaml.doc(
  "If you select ALIGN_TO_VIDEO, MediaConvert writes captions and data packets with Presentation Timestamp (PTS) values greater than or equal to the first video packet PTS (MediaConvert drops captions and data packets with lesser PTS values). Keep the default value (AUTO) to allow all PTS values."
)
type m3u8DataPtsControl = [@as("ALIGN_TO_VIDEO") #ALIGN_TO_VIDEO | @as("AUTO") #AUTO]
@ocaml.doc(
  "Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec."
)
type m3u8AudioDuration = [
  | @as("MATCH_VIDEO_DURATION") #MATCH_VIDEO_DURATION
  | @as("DEFAULT_CODEC_DURATION") #DEFAULT_CODEC_DURATION
]
@ocaml.doc(
  "The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of \"reset_cadence\" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of of $segmentation_time seconds. When a segmentation style of \"maintain_cadence\" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentation_time seconds. Note that EBP lookahead is a slight exception to this rule."
)
type m2tsSegmentationStyle = [
  | @as("RESET_CADENCE") #RESET_CADENCE
  | @as("MAINTAIN_CADENCE") #MAINTAIN_CADENCE
]
@ocaml.doc(
  "Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format."
)
type m2tsSegmentationMarkers = [
  | @as("EBP_LEGACY") #EBP_LEGACY
  | @as("EBP") #EBP
  | @as("PSI_SEGSTART") #PSI_SEGSTART
  | @as("RAI_ADAPT") #RAI_ADAPT
  | @as("RAI_SEGSTART") #RAI_SEGSTART
  | @as("NONE") #NONE
]
@ocaml.doc(
  "For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE). Also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml). Also enable ESAM SCTE-35 (include the property scte35Esam)."
)
type m2tsScte35Source = [@as("NONE") #NONE | @as("PASSTHROUGH") #PASSTHROUGH]
@ocaml.doc(
  "When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate."
)
type m2tsRateMode = [@as("CBR") #CBR | @as("VBR") #VBR]
@ocaml.doc(
  "When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This is effective only when the PCR PID is the same as the video or audio elementary stream."
)
type m2tsPcrControl = [
  | @as("CONFIGURED_PCR_PERIOD") #CONFIGURED_PCR_PERIOD
  | @as("PCR_EVERY_PES_PACKET") #PCR_EVERY_PES_PACKET
]
@ocaml.doc(
  "If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output."
)
type m2tsNielsenId3 = [@as("NONE") #NONE | @as("INSERT") #INSERT]
@ocaml.doc(
  "Keep the default value (DEFAULT) unless you know that your audio EBP markers are incorrectly appearing before your video EBP markers. To correct this problem, set this value to Force (FORCE)."
)
type m2tsForceTsVideoEbpOrder = [@as("DEFAULT") #DEFAULT | @as("FORCE") #FORCE]
@ocaml.doc("Controls whether to include the ES Rate field in the PES header.")
type m2tsEsRateInPes = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc(
  "Selects which PIDs to place EBP markers on. They can either be placed only on the video PID, or on both the video PID and all audio PIDs. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY)."
)
type m2tsEbpPlacement = [
  | @as("VIDEO_PID") #VIDEO_PID
  | @as("VIDEO_AND_AUDIO_PIDS") #VIDEO_AND_AUDIO_PIDS
]
@ocaml.doc(
  "When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY)."
)
type m2tsEbpAudioInterval = [
  | @as("VIDEO_INTERVAL") #VIDEO_INTERVAL
  | @as("VIDEO_AND_FIXED_INTERVALS") #VIDEO_AND_FIXED_INTERVALS
]
@ocaml.doc(
  "If you select ALIGN_TO_VIDEO, MediaConvert writes captions and data packets with Presentation Timestamp (PTS) values greater than or equal to the first video packet PTS (MediaConvert drops captions and data packets with lesser PTS values). Keep the default value (AUTO) to allow all PTS values."
)
type m2tsDataPtsControl = [@as("ALIGN_TO_VIDEO") #ALIGN_TO_VIDEO | @as("AUTO") #AUTO]
@ocaml.doc(
  "Controls what buffer model to use for accurate interleaving. If set to MULTIPLEX, use multiplex  buffer model. If set to NONE, this can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions."
)
type m2tsBufferModel = [@as("NONE") #NONE | @as("MULTIPLEX") #MULTIPLEX]
@ocaml.doc(
  "Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec."
)
type m2tsAudioDuration = [
  | @as("MATCH_VIDEO_DURATION") #MATCH_VIDEO_DURATION
  | @as("DEFAULT_CODEC_DURATION") #DEFAULT_CODEC_DURATION
]
@ocaml.doc("Selects between the DVB and ATSC buffer models for Dolby Digital audio.")
type m2tsAudioBufferModel = [@as("ATSC") #ATSC | @as("DVB") #DVB]
@ocaml.doc(
  "Specify the language, using the ISO 639-2 three-letter code listed at https://www.loc.gov/standards/iso639-2/php/code_list.php."
)
type languageCode = [
  | @as("SRP") #SRP
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
@ocaml.doc(
  "Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name."
)
type jobTemplateListBy = [
  | @as("SYSTEM") #SYSTEM
  | @as("CREATION_DATE") #CREATION_DATE
  | @as("NAME") #NAME
]
@ocaml.doc("A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.")
type jobStatus = [
  | @as("ERROR") #ERROR
  | @as("CANCELED") #CANCELED
  | @as("COMPLETE") #COMPLETE
  | @as("PROGRESSING") #PROGRESSING
  | @as("SUBMITTED") #SUBMITTED
]
@ocaml.doc("A job's phase can be PROBING, TRANSCODING OR UPLOADING")
type jobPhase = [
  | @as("UPLOADING") #UPLOADING
  | @as("TRANSCODING") #TRANSCODING
  | @as("PROBING") #PROBING
]
@ocaml.doc(
  "Use this Timecode source setting, located under the input settings (InputTimecodeSource), to specify how the service counts input video frames. This input frame count affects only the behavior of features that apply to a single input at a time, such as input clipping and synchronizing some captions formats. Choose Embedded (EMBEDDED) to use the timecodes in your input video. Choose Start at zero (ZEROBASED) to start the first frame at zero. Choose Specified start (SPECIFIEDSTART) to start the first frame at the timecode that you specify in the setting Start timecode (timecodeStart). If you don't specify a value for Timecode source, the service will use Embedded by default. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode."
)
type inputTimecodeSource = [
  | @as("SPECIFIEDSTART") #SPECIFIEDSTART
  | @as("ZEROBASED") #ZEROBASED
  | @as("EMBEDDED") #EMBEDDED
]
@ocaml.doc(
  "When you have a progressive segmented frame (PsF) input, use this setting to flag the input as PsF. MediaConvert doesn't automatically detect PsF. Therefore, flagging your input as PsF results in better preservation of video quality when you do deinterlacing and frame rate conversion. If you don't specify, the default value is Auto (AUTO). Auto is the correct setting for all inputs that are not PsF. Don't set this value to PsF when your input is interlaced. Doing so creates horizontal interlacing artifacts."
)
type inputScanType = [@as("PSF") #PSF | @as("AUTO") #AUTO]
@ocaml.doc(
  "If the sample range metadata in your input video is accurate, or if you don't know about sample range, keep the default value, Follow (FOLLOW), for this setting. When you do, the service automatically detects your input sample range. If your input video has metadata indicating the wrong sample range, specify the accurate sample range here. When you do, MediaConvert ignores any sample range information in the input metadata. Regardless of whether MediaConvert uses the input sample range or the sample range that you specify, MediaConvert uses the sample range for transcoding and also writes it to the output metadata."
)
type inputSampleRange = [
  | @as("LIMITED_RANGE") #LIMITED_RANGE
  | @as("FULL_RANGE") #FULL_RANGE
  | @as("FOLLOW") #FOLLOW
]
@ocaml.doc(
  "Use Rotate (InputRotate) to specify how the service rotates your video. You can choose automatic rotation or specify a rotation. You can specify a clockwise rotation of 0, 90, 180, or 270 degrees. If your input video container is .mov or .mp4 and your input has rotation metadata, you can choose Automatic to have the service rotate your video according to the rotation specified in the metadata. The rotation must be within one degree of 90, 180, or 270 degrees. If the rotation metadata specifies any other rotation, the service will default to no rotation. By default, the service does no rotation, even if your input video has rotation metadata. The service doesn't pass through rotation metadata."
)
type inputRotate = [
  | @as("AUTO") #AUTO
  | @as("DEGREES_270") #DEGREES_270
  | @as("DEGREES_180") #DEGREES_180
  | @as("DEGREES_90") #DEGREES_90
  | @as("DEGREE_0") #DEGREE_0
]
@ocaml.doc(
  "Set PSI control (InputPsiControl) for transport stream inputs to specify which data the demux process to scans. * Ignore PSI - Scan all PIDs for audio and video. * Use PSI - Scan only PSI data."
)
type inputPsiControl = [@as("USE_PSI") #USE_PSI | @as("IGNORE_PSI") #IGNORE_PSI]
@ocaml.doc(
  "An input policy allows or disallows a job you submit to run based on the conditions that you specify."
)
type inputPolicy = [@as("DISALLOWED") #DISALLOWED | @as("ALLOWED") #ALLOWED]
@ocaml.doc(
  "Specify how the transcoding service applies the denoise and deblock filters. You must also enable the filters separately, with Denoise (InputDenoiseFilter) and Deblock (InputDeblockFilter). * Auto - The transcoding service determines whether to apply filtering, depending on input type and quality. * Disable - The input is not filtered. This is true even if you use the API to enable them in (InputDeblockFilter) and (InputDeblockFilter). * Force - The input is filtered regardless of input type."
)
type inputFilterEnable = [@as("FORCE") #FORCE | @as("DISABLE") #DISABLE | @as("AUTO") #AUTO]
@ocaml.doc(
  "Enable Denoise (InputDenoiseFilter) to filter noise from the input.  Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs."
)
type inputDenoiseFilter = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc(
  "Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manually controllable for MPEG2 and uncompressed video inputs."
)
type inputDeblockFilter = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc(
  "Keep this setting enabled to have MediaConvert use the font style and position information from the captions source in the output. This option is available only when your input captions are IMSC, SMPTE-TT, or TTML. Disable this setting for simplified output captions."
)
type imscStylePassthrough = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc(
  "Set Accessibility subtitles (Accessibility) to Enabled (ENABLED) if the ISMC or WebVTT captions track is intended to provide accessibility for people who are deaf or hard of hearing. When you enable this feature, MediaConvert adds the following attributes under EXT-X-MEDIA in the HLS or CMAF manifest for this track: CHARACTERISTICS=\"public.accessibility.describes-spoken-dialog,public.accessibility.describes-music-and-sound\" and AUTOSELECT=\"YES\". Keep the default value, Disabled (DISABLED), if the captions track is not intended to provide such accessibility. MediaConvert will not add the above attributes."
)
type imscAccessibilitySubs = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Specify the type of the ID3 frame (timedMetadataId3Frame) to use for ID3 timestamps (timedMetadataId3Period) in your output. To include ID3 timestamps: Specify PRIV (PRIV) or TDRL (TDRL) and set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH). To exclude ID3 timestamps: Set ID3 timestamp frame type to None (NONE)."
)
type hlsTimedMetadataId3Frame = [@as("TDRL") #TDRL | @as("PRIV") #PRIV | @as("NONE") #NONE]
@ocaml.doc(
  "When set to LEGACY, the segment target duration is always rounded up to the nearest integer value above its current value in seconds. When set to SPEC\\\\_COMPLIANT, the segment target duration is rounded up to the nearest integer value if fraction seconds are greater than or equal to 0.5 (>= 0.5) and rounded down if less than 0.5 (< 0.5). You may need to use LEGACY if your client needs to ensure that the target duration is always longer than the actual duration of the segment. Some older players may experience interrupted playback when the actual duration of a track in a segment is longer than the target duration."
)
type hlsTargetDurationCompatibilityMode = [
  | @as("SPEC_COMPLIANT") #SPEC_COMPLIANT
  | @as("LEGACY") #LEGACY
]
@ocaml.doc(
  "Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest."
)
type hlsStreamInfResolution = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc(
  "Specify how you want MediaConvert to determine the segment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Segment length (SegmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary."
)
type hlsSegmentLengthControl = [@as("GOP_MULTIPLE") #GOP_MULTIPLE | @as("EXACT") #EXACT]
@ocaml.doc(
  "When set to SINGLE_FILE, emits program as a single media resource (.ts) file, uses #EXT-X-BYTERANGE tags to index segment for playback."
)
type hlsSegmentControl = [@as("SEGMENTED_FILES") #SEGMENTED_FILES | @as("SINGLE_FILE") #SINGLE_FILE]
@ocaml.doc(
  "Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestamp_offset."
)
type hlsProgramDateTime = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc(
  "Indicates whether the .m3u8 manifest file should be generated for this HLS output group."
)
type hlsOutputSelection = [
  | @as("SEGMENTS_ONLY") #SEGMENTS_ONLY
  | @as("MANIFESTS_AND_SEGMENTS") #MANIFESTS_AND_SEGMENTS
]
@ocaml.doc(
  "Enable this setting to insert the EXT-X-SESSION-KEY element into the master playlist. This allows for offline Apple HLS FairPlay content protection."
)
type hlsOfflineEncrypted = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc(
  "Indicates whether the output manifest should use floating point values for segment duration."
)
type hlsManifestDurationFormat = [@as("INTEGER") #INTEGER | @as("FLOATING_POINT") #FLOATING_POINT]
@ocaml.doc("When set to GZIP, compresses HLS playlist.")
type hlsManifestCompression = [@as("NONE") #NONE | @as("GZIP") #GZIP]
@ocaml.doc(
  "Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html."
)
type hlsKeyProviderType = [@as("STATIC_KEY") #STATIC_KEY | @as("SPEKE") #SPEKE]
@ocaml.doc(
  "The cadence MediaConvert follows for generating thumbnails.  If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence).  If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval."
)
type hlsIntervalCadence = [
  | @as("FOLLOW_CUSTOM") #FOLLOW_CUSTOM
  | @as("FOLLOW_IFRAME") #FOLLOW_IFRAME
]
@ocaml.doc(
  "The Initialization Vector is a 128-bit number used in conjunction with the key for encrypting blocks. If set to INCLUDE, Initialization Vector is listed in the manifest. Otherwise Initialization Vector is not in the manifest."
)
type hlsInitializationVectorInManifest = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc(
  "Specify whether MediaConvert generates images for trick play. Keep the default value, None (NONE), to not generate any images. Choose Thumbnail (THUMBNAIL) to generate tiled thumbnails. Choose Thumbnail and full frame (THUMBNAIL_AND_FULLFRAME) to generate tiled thumbnails and full-resolution images of single frames. MediaConvert creates a child manifest for each set of images that you generate and adds corresponding entries to the parent manifest. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md"
)
type hlsImageBasedTrickPlay = [
  | @as("ADVANCED") #ADVANCED
  | @as("THUMBNAIL_AND_FULLFRAME") #THUMBNAIL_AND_FULLFRAME
  | @as("THUMBNAIL") #THUMBNAIL
  | @as("NONE") #NONE
]
@ocaml.doc(
  "Choose Include (INCLUDE) to have MediaConvert generate a child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude (EXCLUDE)."
)
type hlsIFrameOnlyManifest = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc(
  "Encrypts the segments with the given encryption scheme. Leave blank to disable. Selecting 'Disabled' in the web interface also disables encryption."
)
type hlsEncryptionType = [@as("SAMPLE_AES") #SAMPLE_AES | @as("AES128") #AES128]
@ocaml.doc("Indicates whether segments should be placed in subdirectories.")
type hlsDirectoryStructure = [
  | @as("SUBDIRECTORY_PER_STREAM") #SUBDIRECTORY_PER_STREAM
  | @as("SINGLE_DIRECTORY") #SINGLE_DIRECTORY
]
@ocaml.doc(
  "Specify whether to flag this audio track as descriptive video service (DVS) in your HLS parent manifest. When you choose Flag (FLAG), MediaConvert includes the parameter CHARACTERISTICS=\"public.accessibility.describes-video\" in the EXT-X-MEDIA entry for this track. When you keep the default choice, Don't flag (DONT_FLAG), MediaConvert leaves this parameter out. The DVS flag can help with accessibility on Apple devices. For more information, see the Apple documentation."
)
type hlsDescriptiveVideoServiceFlag = [@as("FLAG") #FLAG | @as("DONT_FLAG") #DONT_FLAG]
@ocaml.doc(
  "Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation."
)
type hlsCodecSpecification = [@as("RFC_4281") #RFC_4281 | @as("RFC_6381") #RFC_6381]
@ocaml.doc(
  "Disable this setting only when your workflow requires the #EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled (ENABLED) and control caching in your video distribution set up. For example, use the Cache-Control http header."
)
type hlsClientCache = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Set Caption segment length control (CaptionSegmentLengthControl) to Match video (MATCH_VIDEO) to create caption segments that align with the video segments from the first video output in this output group. For example, if the video segments are 2 seconds long, your WebVTT segments will also be 2 seconds long. Keep the default setting, Large segments (LARGE_SEGMENTS) to create caption segments that are 300 seconds long."
)
type hlsCaptionSegmentLengthControl = [
  | @as("MATCH_VIDEO") #MATCH_VIDEO
  | @as("LARGE_SEGMENTS") #LARGE_SEGMENTS
]
@ocaml.doc(
  "Applies only to 608 Embedded output captions. Insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. None: Include CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any CLOSED-CAPTIONS line from the manifest."
)
type hlsCaptionLanguageSetting = [@as("NONE") #NONE | @as("OMIT") #OMIT | @as("INSERT") #INSERT]
@ocaml.doc(
  "Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO"
)
type hlsAudioTrackType = [
  | @as("AUDIO_ONLY_VARIANT_STREAM") #AUDIO_ONLY_VARIANT_STREAM
  | @as("ALTERNATE_AUDIO_NOT_AUTO_SELECT") #ALTERNATE_AUDIO_NOT_AUTO_SELECT
  | @as("ALTERNATE_AUDIO_AUTO_SELECT") #ALTERNATE_AUDIO_AUTO_SELECT
  | @as("ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT") #ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT
]
@ocaml.doc(
  "Ignore this setting unless you are using FairPlay DRM with Verimatrix and you encounter playback issues. Keep the default value, Include (INCLUDE), to output audio-only headers. Choose Exclude (EXCLUDE) to remove the audio-only headers from your audio segments."
)
type hlsAudioOnlyHeader = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc(
  "Use this setting only in audio-only outputs. Choose MPEG-2 Transport Stream (M2TS) to create a file in an MPEG2-TS container. Keep the default value Automatic (AUTOMATIC) to create a raw audio-only file with no container. Regardless of the value that you specify here, if this output has video, the service will place outputs into an MPEG2-TS container."
)
type hlsAudioOnlyContainer = [@as("M2TS") #M2TS | @as("AUTOMATIC") #AUTOMATIC]
type hlsAdMarkers = [@as("ELEMENTAL_SCTE35") #ELEMENTAL_SCTE35 | @as("ELEMENTAL") #ELEMENTAL]
@ocaml.doc(
  "If the location of parameter set NAL units doesn't matter in your workflow, ignore this setting. Use this setting only with CMAF or DASH outputs, or with standalone file outputs in an MPEG-4 container (MP4 outputs). Choose HVC1 to mark your output as HVC1. This makes your output compliant with the following specification: ISO IECJTC1 SC29 N13798 Text ISO/IEC FDIS 14496-15 3rd Edition. For these outputs, the service stores parameter set NAL units in the sample headers but not in the samples directly. For MP4 outputs, when you choose HVC1, your output video might not work properly with some downstream systems and video players. The service defaults to marking your output as HEV1. For these outputs, the service writes parameter set NAL units directly into the samples."
)
type h265WriteMp4PackagingType = [@as("HEV1") #HEV1 | @as("HVC1") #HVC1]
@ocaml.doc("Inserts timecode for each frame as 4 bytes of an unregistered SEI message.")
type h265UnregisteredSeiTimecode = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures."
)
type h265Tiles = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Enables temporal layer identifiers in the encoded bitstream. Up to 3 layers are supported depending on GOP structure: I- and P-frames form one layer, reference B-frames can form a second layer and non-reference b-frames can form a third layer. Decoders can optionally decode only the lower temporal layers to generate a lower frame rate output. For example, given a bitstream with temporal IDs and with b-frames = 1 (i.e. IbPbPb display order), a decoder could decode all the frames for full frame rate output or only the I and P frames (lowest temporal layer) for a half frame rate output."
)
type h265TemporalIds = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization)."
)
type h265TemporalAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i."
)
type h265Telecine = [@as("HARD") #HARD | @as("SOFT") #SOFT | @as("NONE") #NONE]
@ocaml.doc(
  "Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher."
)
type h265SpatialAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
)
type h265SlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr."
)
type h265SceneChangeDetect = [
  | @as("TRANSITION_DETECTION") #TRANSITION_DETECTION
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
@ocaml.doc(
  "Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE)."
)
type h265ScanTypeConversionMode = [
  | @as("INTERLACED_OPTIMIZE") #INTERLACED_OPTIMIZE
  | @as("INTERLACED") #INTERLACED
]
@ocaml.doc(
  "Specify Sample Adaptive Offset (SAO) filter strength.  Adaptive mode dynamically selects best strength based on content"
)
type h265SampleAdaptiveOffsetFilterMode = [
  | @as("OFF") #OFF
  | @as("ADAPTIVE") #ADAPTIVE
  | @as("DEFAULT") #DEFAULT
]
@ocaml.doc(
  "Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR)."
)
type h265RateControlMode = [@as("QVBR") #QVBR | @as("CBR") #CBR | @as("VBR") #VBR]
@ocaml.doc(
  "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
)
type h265QualityTuningLevel = [
  | @as("MULTI_PASS_HQ") #MULTI_PASS_HQ
  | @as("SINGLE_PASS_HQ") #SINGLE_PASS_HQ
  | @as("SINGLE_PASS") #SINGLE_PASS
]
@ocaml.doc(
  "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
)
type h265ParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose."
)
type h265InterlaceMode = [
  | @as("FOLLOW_BOTTOM_FIELD") #FOLLOW_BOTTOM_FIELD
  | @as("FOLLOW_TOP_FIELD") #FOLLOW_TOP_FIELD
  | @as("BOTTOM_FIELD") #BOTTOM_FIELD
  | @as("TOP_FIELD") #TOP_FIELD
  | @as("PROGRESSIVE") #PROGRESSIVE
]
@ocaml.doc(
  "Specify how the transcoder determines GOP size for this output. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, choose Auto (AUTO) and and leave GOP size (GopSize) blank. By default, if you don't specify GOP mode control (GopSizeUnits), MediaConvert will use automatic behavior. If your output group specifies HLS, DASH, or CMAF, set GOP mode control to Auto and leave GOP size blank in each output in your output group. To explicitly specify the GOP length, choose Specified, frames (FRAMES) or Specified, seconds (SECONDS) and then provide the GOP length in the related setting GOP size (GopSize)."
)
type h265GopSizeUnits = [@as("AUTO") #AUTO | @as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
@ocaml.doc("If enable, use reference B frames for GOP structures that have B frames > 1.")
type h265GopBReference = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
)
type h265FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
@ocaml.doc(
  "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
)
type h265FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set adaptiveQuantization to a value other than Off (OFF)."
)
type h265FlickerAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames)."
)
type h265DynamicSubGop = [@as("STATIC") #STATIC | @as("ADAPTIVE") #ADAPTIVE]
@ocaml.doc(
  "Represents the Profile and Tier, per the HEVC (H.265) specification. Selections are grouped as [Profile] / [Tier], so \"Main/High\" represents Main Profile with High Tier. 4:2:2 profiles are only available with the HEVC 4:2:2 License."
)
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
@ocaml.doc("H.265 Level.")
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
@ocaml.doc(
  "Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF)."
)
type h265AlternateTransferFunctionSei = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "When you set Adaptive Quantization (H265AdaptiveQuantization) to Auto (AUTO), or leave blank, MediaConvert automatically applies quantization to improve the video quality of your output. Set Adaptive Quantization to Low (LOW), Medium (MEDIUM), High (HIGH), Higher (HIGHER), or Max (MAX) to manually control the strength of the quantization filter. When you do, you can specify a value for Spatial Adaptive Quantization (H265SpatialAdaptiveQuantization), Temporal Adaptive Quantization (H265TemporalAdaptiveQuantization), and Flicker Adaptive Quantization (H265FlickerAdaptiveQuantization), to further control the quantization filter. Set Adaptive Quantization to Off (OFF) to apply no quantization to your output."
)
type h265AdaptiveQuantization = [
  | @as("AUTO") #AUTO
  | @as("MAX") #MAX
  | @as("HIGHER") #HIGHER
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("OFF") #OFF
]
@ocaml.doc("Inserts timecode for each frame as 4 bytes of an unregistered SEI message.")
type h264UnregisteredSeiTimecode = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264TemporalAdaptiveQuantization is Enabled (ENABLED). Keep this default value to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to set H264TemporalAdaptiveQuantization to Disabled (DISABLED). Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization). To manually enable or disable H264TemporalAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO."
)
type h264TemporalAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine (HARD) produces a 29.97i output. Soft telecine (SOFT) produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture."
)
type h264Telecine = [@as("HARD") #HARD | @as("SOFT") #SOFT | @as("NONE") #NONE]
@ocaml.doc("Produces a bitstream compliant with SMPTE RP-2027.")
type h264Syntax = [@as("RP2027") #RP2027 | @as("DEFAULT") #DEFAULT]
@ocaml.doc(
  "Only use this setting when you change the default value, Auto (AUTO), for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264SpatialAdaptiveQuantization is Enabled (ENABLED). Keep this default value to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to set H264SpatialAdaptiveQuantization to Disabled (DISABLED). Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (H264AdaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher. To manually enable or disable H264SpatialAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO."
)
type h264SpatialAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
)
type h264SlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr."
)
type h264SceneChangeDetect = [
  | @as("TRANSITION_DETECTION") #TRANSITION_DETECTION
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
@ocaml.doc(
  "Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE)."
)
type h264ScanTypeConversionMode = [
  | @as("INTERLACED_OPTIMIZE") #INTERLACED_OPTIMIZE
  | @as("INTERLACED") #INTERLACED
]
@ocaml.doc("Places a PPS header on each encoded picture, even if repeated.")
type h264RepeatPps = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR)."
)
type h264RateControlMode = [@as("QVBR") #QVBR | @as("CBR") #CBR | @as("VBR") #VBR]
@ocaml.doc(
  "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
)
type h264QualityTuningLevel = [
  | @as("MULTI_PASS_HQ") #MULTI_PASS_HQ
  | @as("SINGLE_PASS_HQ") #SINGLE_PASS_HQ
  | @as("SINGLE_PASS") #SINGLE_PASS
]
@ocaml.doc(
  "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
)
type h264ParControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose."
)
type h264InterlaceMode = [
  | @as("FOLLOW_BOTTOM_FIELD") #FOLLOW_BOTTOM_FIELD
  | @as("FOLLOW_TOP_FIELD") #FOLLOW_TOP_FIELD
  | @as("BOTTOM_FIELD") #BOTTOM_FIELD
  | @as("TOP_FIELD") #TOP_FIELD
  | @as("PROGRESSIVE") #PROGRESSIVE
]
@ocaml.doc(
  "Specify how the transcoder determines GOP size for this output. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, choose Auto (AUTO) and and leave GOP size (GopSize) blank. By default, if you don't specify GOP mode control (GopSizeUnits), MediaConvert will use automatic behavior. If your output group specifies HLS, DASH, or CMAF, set GOP mode control to Auto and leave GOP size blank in each output in your output group. To explicitly specify the GOP length, choose Specified, frames (FRAMES) or Specified, seconds (SECONDS) and then provide the GOP length in the related setting GOP size (GopSize)."
)
type h264GopSizeUnits = [@as("AUTO") #AUTO | @as("SECONDS") #SECONDS | @as("FRAMES") #FRAMES]
@ocaml.doc("If enable, use reference B frames for GOP structures that have B frames > 1.")
type h264GopBReference = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
)
type h264FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
@ocaml.doc(
  "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
)
type h264FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264FlickerAdaptiveQuantization is Disabled (DISABLED). Change this value to Enabled (ENABLED) to reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. To manually enable or disable H264FlickerAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO."
)
type h264FlickerAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "The video encoding method for your MPEG-4 AVC output. Keep the default value, PAFF, to have MediaConvert use PAFF encoding for interlaced outputs. Choose Force field (FORCE_FIELD) to disable PAFF encoding and create separate interlaced fields. Choose MBAFF to disable PAFF and have MediaConvert use MBAFF encoding for interlaced outputs."
)
type h264FieldEncoding = [@as("MBAFF") #MBAFF | @as("FORCE_FIELD") #FORCE_FIELD | @as("PAFF") #PAFF]
@ocaml.doc("Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC.")
type h264EntropyEncoding = [@as("CAVLC") #CAVLC | @as("CABAC") #CABAC]
@ocaml.doc(
  "Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames)."
)
type h264DynamicSubGop = [@as("STATIC") #STATIC | @as("ADAPTIVE") #ADAPTIVE]
@ocaml.doc(
  "H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License."
)
type h264CodecProfile = [
  | @as("MAIN") #MAIN
  | @as("HIGH_422_10BIT") #HIGH_422_10BIT
  | @as("HIGH_422") #HIGH_422
  | @as("HIGH_10BIT") #HIGH_10BIT
  | @as("HIGH") #HIGH
  | @as("BASELINE") #BASELINE
]
@ocaml.doc(
  "Specify an H.264 level that is consistent with your output video settings. If you aren't sure what level to specify, choose Auto (AUTO)."
)
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
@ocaml.doc(
  "Keep the default value, Auto (AUTO), for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set H264AdaptiveQuantization to a value other than Auto (AUTO). Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization (H264AdaptiveQuantization) to Off (OFF). Related settings: The value that you choose here applies to the following settings: H264FlickerAdaptiveQuantization, H264SpatialAdaptiveQuantization, and H264TemporalAdaptiveQuantization."
)
type h264AdaptiveQuantization = [
  | @as("MAX") #MAX
  | @as("HIGHER") #HIGHER
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("AUTO") #AUTO
  | @as("OFF") #OFF
]
@ocaml.doc(
  "Provide the font script, using an ISO 15924 script code, if the LanguageCode is not sufficient for determining the script type. Where LanguageCode or CustomLanguageCode is sufficient, use \"AUTOMATIC\" or leave unset."
)
type fontScript = [@as("HANT") #HANT | @as("HANS") #HANS | @as("AUTOMATIC") #AUTOMATIC]
@ocaml.doc(
  "When you use the setting Time delta (TimeDelta) to adjust the sync between your sidecar captions and your video, use this setting to specify the units for the delta that you specify. When you don't specify a value for Time delta units (TimeDeltaUnits), MediaConvert uses seconds by default."
)
type fileSourceTimeDeltaUnits = [@as("MILLISECONDS") #MILLISECONDS | @as("SECONDS") #SECONDS]
@ocaml.doc(
  "Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708."
)
type fileSourceConvert608To708 = [@as("DISABLED") #DISABLED | @as("UPCONVERT") #UPCONVERT]
@ocaml.doc(
  "If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end."
)
type f4vMoovPlacement = [@as("NORMAL") #NORMAL | @as("PROGRESSIVE_DOWNLOAD") #PROGRESSIVE_DOWNLOAD]
@ocaml.doc(
  "Set Embedded timecode override (embeddedTimecodeOverride) to Use MDPM (USE_MDPM) when your AVCHD input contains timecode tag data in the Modified Digital Video Pack Metadata (MDPM). When you do, we recommend you also set Timecode source (inputTimecodeSource) to Embedded (EMBEDDED). Leave Embedded timecode override blank, or set to None (NONE), when your input does not contain MDPM timecode."
)
type embeddedTimecodeOverride = [@as("USE_MDPM") #USE_MDPM | @as("NONE") #NONE]
@ocaml.doc(
  "By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting."
)
type embeddedTerminateCaptions = [@as("DISABLED") #DISABLED | @as("END_OF_INPUT") #END_OF_INPUT]
@ocaml.doc(
  "Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708."
)
type embeddedConvert608To708 = [@as("DISABLED") #DISABLED | @as("UPCONVERT") #UPCONVERT]
@ocaml.doc(
  "When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels."
)
type eac3SurroundMode = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
  | @as("NOT_INDICATED") #NOT_INDICATED
]
@ocaml.doc(
  "When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels."
)
type eac3SurroundExMode = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
  | @as("NOT_INDICATED") #NOT_INDICATED
]
@ocaml.doc(
  "Choose how the service does stereo downmixing. This setting only applies if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Stereo downmix (Eac3StereoDownmix)."
)
type eac3StereoDownmix = [
  | @as("DPL2") #DPL2
  | @as("LT_RT") #LT_RT
  | @as("LO_RO") #LO_RO
  | @as("NOT_INDICATED") #NOT_INDICATED
]
@ocaml.doc(
  "Controls the amount of phase-shift applied to the surround channels. Only used for 3/2 coding mode."
)
type eac3PhaseControl = [@as("NO_SHIFT") #NO_SHIFT | @as("SHIFT_90_DEGREES") #SHIFT_90_DEGREES]
@ocaml.doc(
  "When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it is present on the input. this detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding."
)
type eac3PassthroughControl = [
  | @as("NO_PASSTHROUGH") #NO_PASSTHROUGH
  | @as("WHEN_POSSIBLE") #WHEN_POSSIBLE
]
@ocaml.doc(
  "When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used."
)
type eac3MetadataControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
@ocaml.doc(
  "Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode."
)
type eac3LfeFilter = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc("When encoding 3/2 audio, controls whether the LFE channel is enabled")
type eac3LfeControl = [@as("NO_LFE") #NO_LFE | @as("LFE") #LFE]
@ocaml.doc(
  "Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the RF operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile (DynamicRangeCompressionProfile). For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf."
)
type eac3DynamicRangeCompressionRf = [
  | @as("SPEECH") #SPEECH
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
  | @as("NONE") #NONE
]
@ocaml.doc(
  "Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the line operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile (DynamicRangeCompressionProfile). For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf."
)
type eac3DynamicRangeCompressionLine = [
  | @as("SPEECH") #SPEECH
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
  | @as("NONE") #NONE
]
@ocaml.doc("Activates a DC highpass filter for all input channels.")
type eac3DcFilter = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc("Dolby Digital Plus coding mode. Determines number of channels.")
type eac3CodingMode = [
  | @as("CODING_MODE_3_2") #CODING_MODE_3_2
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
]
@ocaml.doc(
  "Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E)."
)
type eac3BitstreamMode = [
  | @as("VISUALLY_IMPAIRED") #VISUALLY_IMPAIRED
  | @as("HEARING_IMPAIRED") #HEARING_IMPAIRED
  | @as("EMERGENCY") #EMERGENCY
  | @as("COMMENTARY") #COMMENTARY
  | @as("COMPLETE_MAIN") #COMPLETE_MAIN
]
@ocaml.doc(
  "If set to ATTENUATE_3_DB, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode."
)
type eac3AttenuationControl = [@as("NONE") #NONE | @as("ATTENUATE_3_DB") #ATTENUATE_3_DB]
@ocaml.doc(
  "Specify whether your input audio has an additional center rear surround channel matrix encoded into your left and right surround channels."
)
type eac3AtmosSurroundExMode = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
  | @as("NOT_INDICATED") #NOT_INDICATED
]
@ocaml.doc(
  "Choose how the service does stereo downmixing. Default value: Not indicated (ATMOS_STORAGE_DDP_DMIXMOD_NOT_INDICATED) Related setting: To have MediaConvert use this value, keep the default value, Custom (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise, MediaConvert ignores Stereo downmix (StereoDownmix)."
)
type eac3AtmosStereoDownmix = [
  | @as("DPL2") #DPL2
  | @as("SURROUND") #SURROUND
  | @as("STEREO") #STEREO
  | @as("NOT_INDICATED") #NOT_INDICATED
]
@ocaml.doc("Choose how the service meters the loudness of your audio.")
type eac3AtmosMeteringMode = [
  | @as("ITU_BS_1770_4") #ITU_BS_1770_4
  | @as("ITU_BS_1770_3") #ITU_BS_1770_3
  | @as("ITU_BS_1770_2") #ITU_BS_1770_2
  | @as("ITU_BS_1770_1") #ITU_BS_1770_1
  | @as("LEQ_A") #LEQ_A
]
@ocaml.doc(
  "Specify whether MediaConvert should use any dynamic range control metadata from your input file. Keep the default value, Custom (SPECIFIED), to provide dynamic range control values in your job settings. Choose Follow source (INITIALIZE_FROM_SOURCE) to use the metadata from your input. Related settings--Use these settings to specify your dynamic range control values: Dynamic range compression line (DynamicRangeCompressionLine) and Dynamic range compression RF (DynamicRangeCompressionRf). When you keep the value Custom (SPECIFIED) for Dynamic range control (DynamicRangeControl) and you don't specify values for the related settings, MediaConvert uses default values for those settings."
)
type eac3AtmosDynamicRangeControl = [
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
  | @as("SPECIFIED") #SPECIFIED
]
@ocaml.doc(
  "Choose the Dolby dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby stream for the RF operating mode. Default value: Film light (ATMOS_STORAGE_DDP_COMPR_FILM_LIGHT) Related setting: To have MediaConvert use the value you specify here, keep the default value, Custom (SPECIFIED) for the setting Dynamic range control (DynamicRangeControl). Otherwise, MediaConvert ignores Dynamic range compression RF (DynamicRangeCompressionRf). For information about the Dolby DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf."
)
type eac3AtmosDynamicRangeCompressionRf = [
  | @as("SPEECH") #SPEECH
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
  | @as("NONE") #NONE
]
@ocaml.doc(
  "Choose the Dolby dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby stream for the line operating mode. Default value: Film light (ATMOS_STORAGE_DDP_COMPR_FILM_LIGHT) Related setting: To have MediaConvert use the value you specify here, keep the default value, Custom (SPECIFIED) for the setting Dynamic range control (DynamicRangeControl). Otherwise, MediaConvert ignores Dynamic range compression line (DynamicRangeCompressionLine). For information about the Dolby DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf."
)
type eac3AtmosDynamicRangeCompressionLine = [
  | @as("SPEECH") #SPEECH
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
  | @as("NONE") #NONE
]
@ocaml.doc(
  "Specify whether MediaConvert should use any downmix metadata from your input file. Keep the default value, Custom (SPECIFIED) to provide downmix values in your job settings. Choose Follow source (INITIALIZE_FROM_SOURCE) to use the metadata from your input. Related settings--Use these settings to specify your downmix values: Left only/Right only surround (LoRoSurroundMixLevel), Left total/Right total surround (LtRtSurroundMixLevel), Left total/Right total center (LtRtCenterMixLevel), Left only/Right only center (LoRoCenterMixLevel),  and Stereo downmix (StereoDownmix). When you keep Custom (SPECIFIED) for Downmix control (DownmixControl) and you don't specify values for the related settings, MediaConvert uses default values for those settings."
)
type eac3AtmosDownmixControl = [
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
  | @as("SPECIFIED") #SPECIFIED
]
@ocaml.doc("Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue analysis.")
type eac3AtmosDialogueIntelligence = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc("The coding mode for Dolby Digital Plus JOC (Atmos).")
type eac3AtmosCodingMode = [
  | @as("CODING_MODE_9_1_6") #CODING_MODE_9_1_6
  | @as("CODING_MODE_7_1_4") #CODING_MODE_7_1_4
  | @as("CODING_MODE_5_1_4") #CODING_MODE_5_1_4
  | @as("CODING_MODE_AUTO") #CODING_MODE_AUTO
]
@ocaml.doc(
  "Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E)."
)
type eac3AtmosBitstreamMode = [@as("COMPLETE_MAIN") #COMPLETE_MAIN]
@ocaml.doc(
  "Specify how MediaConvert handles the display definition segment (DDS). Keep the default, None (NONE), to exclude the DDS from this set of captions. Choose No display window (NO_DISPLAY_WINDOW) to have MediaConvert include the DDS but not include display window data. In this case, MediaConvert writes that information to the page composition segment (PCS) instead. Choose Specify (SPECIFIED) to have MediaConvert set up the display window based on the values that you specify in related job settings. For video resolutions that are 576 pixels or smaller in height, MediaConvert doesn't include the DDS, regardless of the value you choose for DDS handling (ddsHandling). In this case, it doesn't write the display window data to the PCS either. Related settings: Use the settings DDS x-coordinate (ddsXCoordinate) and DDS y-coordinate (ddsYCoordinate) to specify the offset between the top left corner of the display window and the top left corner of the video frame. All burn-in and DVB-Sub font settings must match."
)
type dvbddsHandling = [
  | @as("NO_DISPLAY_WINDOW") #NO_DISPLAY_WINDOW
  | @as("SPECIFIED") #SPECIFIED
  | @as("NONE") #NONE
]
@ocaml.doc(
  "Specify whether your DVB subtitles are standard or for hearing impaired. Choose hearing impaired if your subtitles include audio descriptions and dialogue. Choose standard if your subtitles include only dialogue."
)
type dvbSubtitlingType = [@as("STANDARD") #STANDARD | @as("HEARING_IMPAIRED") #HEARING_IMPAIRED]
@ocaml.doc(
  "Specify whether the Text spacing (TeletextSpacing) in your captions is set by the captions grid, or varies depending on letter width. Choose fixed grid (FIXED_GRID) to conform to the spacing specified in the captions file more accurately. Choose proportional (PROPORTIONAL) to make the text easier to read for closed captions. Within your job settings, all of your DVB-Sub settings must be identical."
)
type dvbSubtitleTeletextSpacing = [
  | @as("AUTO") #AUTO
  | @as("PROPORTIONAL") #PROPORTIONAL
  | @as("FIXED_GRID") #FIXED_GRID
]
@ocaml.doc(
  "Set Style passthrough (StylePassthrough) to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use default settings: white text with black outlining, bottom-center positioning, and automatic sizing. Whether you set Style passthrough to enabled or not, you can also choose to manually override any of the individual style and position settings."
)
type dvbSubtitleStylePassthrough = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc(
  "Specify the color of the shadow cast by the captions. Leave Shadow color (ShadowColor) blank and set Style passthrough (StylePassthrough) to enabled to use the shadow color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical."
)
type dvbSubtitleShadowColor = [
  | @as("AUTO") #AUTO
  | @as("WHITE") #WHITE
  | @as("BLACK") #BLACK
  | @as("NONE") #NONE
]
@ocaml.doc(
  "Specify font outline color. Leave Outline color (OutlineColor) blank and set Style passthrough (StylePassthrough) to enabled to use the font outline color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical."
)
type dvbSubtitleOutlineColor = [
  | @as("AUTO") #AUTO
  | @as("BLUE") #BLUE
  | @as("GREEN") #GREEN
  | @as("RED") #RED
  | @as("YELLOW") #YELLOW
  | @as("WHITE") #WHITE
  | @as("BLACK") #BLACK
]
@ocaml.doc(
  "Specify the color of the captions text. Leave Font color (FontColor) blank and set Style passthrough (StylePassthrough) to enabled to use the font color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical."
)
type dvbSubtitleFontColor = [
  | @as("AUTO") #AUTO
  | @as("HEX") #HEX
  | @as("BLUE") #BLUE
  | @as("GREEN") #GREEN
  | @as("RED") #RED
  | @as("YELLOW") #YELLOW
  | @as("BLACK") #BLACK
  | @as("WHITE") #WHITE
]
@ocaml.doc(
  "Specify the color of the rectangle behind the captions. Leave background color (BackgroundColor) blank and set Style passthrough (StylePassthrough) to enabled to use the background color data from your input captions, if present."
)
type dvbSubtitleBackgroundColor = [
  | @as("AUTO") #AUTO
  | @as("WHITE") #WHITE
  | @as("BLACK") #BLACK
  | @as("NONE") #NONE
]
@ocaml.doc(
  "Ignore this setting unless Style Passthrough (StylePassthrough) is set to Enabled and Font color (FontColor) set to Black, Yellow, Red, Green, Blue, or Hex. Use Apply font color (ApplyFontColor) for additional font color controls. When you choose White text only (WHITE_TEXT_ONLY), or leave blank, your font color setting only applies to white text in your input captions. For example, if your font color setting is Yellow, and your input captions have red and white text, your output captions will have red and yellow text. When you choose ALL_TEXT, your font color setting applies to all of your output captions text."
)
type dvbSubtitleApplyFontColor = [
  | @as("ALL_TEXT") #ALL_TEXT
  | @as("WHITE_TEXT_ONLY") #WHITE_TEXT_ONLY
]
@ocaml.doc(
  "Specify the alignment of your captions. If no explicit x_position is provided, setting alignment to centered will placethe captions at the bottom center of the output. Similarly, setting a left alignment willalign captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Within your job settings, all of your DVB-Sub settings must be identical."
)
type dvbSubtitleAlignment = [@as("AUTO") #AUTO | @as("LEFT") #LEFT | @as("CENTERED") #CENTERED]
@ocaml.doc(
  "Specify the font that you want the service to use for your burn in captions when your input captions specify a font that MediaConvert doesn't support. When you set Fallback font (FallbackFont) to best match (BEST_MATCH), or leave blank, MediaConvert uses a supported font that most closely matches the font that your input captions specify. When there are multiple unsupported fonts in your input captions, MediaConvert matches each font with the supported font that matches best. When you explicitly choose a replacement font, MediaConvert uses that font to replace all unsupported fonts from your input."
)
type dvbSubSubtitleFallbackFont = [
  | @as("PROPORTIONAL_SERIF") #PROPORTIONAL_SERIF
  | @as("PROPORTIONAL_SANSSERIF") #PROPORTIONAL_SANSSERIF
  | @as("MONOSPACED_SERIF") #MONOSPACED_SERIF
  | @as("MONOSPACED_SANSSERIF") #MONOSPACED_SANSSERIF
  | @as("BEST_MATCH") #BEST_MATCH
]
@ocaml.doc(
  "Applies only to 29.97 fps outputs. When this feature is enabled, the service will use drop-frame timecode on outputs. If it is not possible to use drop-frame timecode, the system will fall back to non-drop-frame. This setting is enabled by default when Timecode insertion (TimecodeInsertion) is enabled."
)
type dropFrameTimecode = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "In the current MediaConvert implementation, the Dolby Vision profile is always 5 (PROFILE_5). Therefore, all of your inputs must contain Dolby Vision frame interleaved data."
)
type dolbyVisionProfile = [@as("PROFILE_5") #PROFILE_5]
@ocaml.doc(
  "Use Dolby Vision Mode to choose how the service will handle Dolby Vision MaxCLL and MaxFALL properies."
)
type dolbyVisionLevel6Mode = [
  | @as("SPECIFY") #SPECIFY
  | @as("RECALCULATE") #RECALCULATE
  | @as("PASSTHROUGH") #PASSTHROUGH
]
@ocaml.doc(
  "Optional field, defaults to DEFAULT. Specify DEFAULT for this operation to return your endpoints if any exist, or to create an endpoint for you and return it if one doesn't already exist. Specify GET_ONLY to return your endpoints if any exist, or an empty list if none exist."
)
type describeEndpointsMode = [@as("GET_ONLY") #GET_ONLY | @as("DEFAULT") #DEFAULT]
@ocaml.doc(
  "Use Deinterlacer (DeinterlaceMode) to choose how the service will do deinterlacing. Default is Deinterlace. - Deinterlace converts interlaced to progressive. - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p. - Adaptive auto-detects and converts to progressive."
)
type deinterlacerMode = [
  | @as("ADAPTIVE") #ADAPTIVE
  | @as("INVERSE_TELECINE") #INVERSE_TELECINE
  | @as("DEINTERLACE") #DEINTERLACE
]
@ocaml.doc(
  "- When set to NORMAL (default), the deinterlacer does not convert frames that are tagged  in metadata as progressive. It will only convert those that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the deinterlacer converts every frame to progressive - even those that are already tagged as progressive. Turn Force mode on only if there is  a good chance that the metadata has tagged frames as progressive when they are not  progressive. Do not turn on otherwise; processing frames that are already progressive  into progressive will probably result in lower quality video."
)
type deinterlacerControl = [@as("NORMAL") #NORMAL | @as("FORCE_ALL_FRAMES") #FORCE_ALL_FRAMES]
@ocaml.doc(
  "Only applies when you set Deinterlacer (DeinterlaceMode) to Deinterlace (DEINTERLACE) or Adaptive (ADAPTIVE). Motion adaptive interpolate (INTERPOLATE) produces sharper pictures, while blend (BLEND) produces smoother motion. Use (INTERPOLATE_TICKER) OR (BLEND_TICKER) if your source file includes a ticker, such as a scrolling headline at the bottom of the frame."
)
type deinterlaceAlgorithm = [
  | @as("BLEND_TICKER") #BLEND_TICKER
  | @as("BLEND") #BLEND
  | @as("INTERPOLATE_TICKER") #INTERPOLATE_TICKER
  | @as("INTERPOLATE") #INTERPOLATE
]
@ocaml.doc("Specify the encryption mode that you used to encrypt your input files.")
type decryptionMode = [@as("AES_GCM") #AES_GCM | @as("AES_CBC") #AES_CBC | @as("AES_CTR") #AES_CTR]
@ocaml.doc(
  "When you enable Precise segment duration in manifests (writeSegmentTimelineInRepresentation), your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element."
)
type dashIsoWriteSegmentTimelineInRepresentation = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
]
@ocaml.doc(
  "Specify how you want MediaConvert to determine the segment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Segment length (SegmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary."
)
type dashIsoSegmentLengthControl = [@as("GOP_MULTIPLE") #GOP_MULTIPLE | @as("EXACT") #EXACT]
@ocaml.doc(
  "When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created."
)
type dashIsoSegmentControl = [
  | @as("SEGMENTED_FILES") #SEGMENTED_FILES
  | @as("SINGLE_FILE") #SINGLE_FILE
]
@ocaml.doc(
  "Use this setting only when your output video stream has B-frames, which causes the initial presentation time stamp (PTS) to be offset from the initial decode time stamp (DTS). Specify how MediaConvert handles PTS when writing time stamps in output DASH manifests. Choose Match initial PTS (MATCH_INITIAL_PTS) when you want MediaConvert to use the initial PTS as the first time stamp in the manifest. Choose Zero-based (ZERO_BASED) to have MediaConvert ignore the initial PTS in the video stream and instead write the initial time stamp as zero in the manifest. For outputs that don't have B-frames, the time stamps in your DASH manifests start at zero regardless of your choice here."
)
type dashIsoPtsOffsetHandlingForBFrames = [
  | @as("MATCH_INITIAL_PTS") #MATCH_INITIAL_PTS
  | @as("ZERO_BASED") #ZERO_BASED
]
@ocaml.doc(
  "This setting can improve the compatibility of your output with video players on obsolete devices. It applies only to DASH H.264 outputs with DRM encryption. Choose Unencrypted SEI (UNENCRYPTED_SEI) only to correct problems with playback on older devices. Otherwise, keep the default setting CENC v1 (CENC_V1). If you choose Unencrypted SEI, for that output, the service will exclude the access unit delimiter and will leave the SEI NAL units unencrypted."
)
type dashIsoPlaybackDeviceCompatibility = [
  | @as("UNENCRYPTED_SEI") #UNENCRYPTED_SEI
  | @as("CENC_V1") #CENC_V1
]
@ocaml.doc(
  "Specify whether your DASH profile is on-demand or main. When you choose Main profile (MAIN_PROFILE), the service signals  urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand (ON_DEMAND_PROFILE), the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control (SegmentControl) to Single file (SINGLE_FILE)."
)
type dashIsoMpdProfile = [
  | @as("ON_DEMAND_PROFILE") #ON_DEMAND_PROFILE
  | @as("MAIN_PROFILE") #MAIN_PROFILE
]
@ocaml.doc(
  "The cadence MediaConvert follows for generating thumbnails.  If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence).  If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval."
)
type dashIsoIntervalCadence = [
  | @as("FOLLOW_CUSTOM") #FOLLOW_CUSTOM
  | @as("FOLLOW_IFRAME") #FOLLOW_IFRAME
]
@ocaml.doc(
  "Specify whether MediaConvert generates images for trick play. Keep the default value, None (NONE), to not generate any images. Choose Thumbnail (THUMBNAIL) to generate tiled thumbnails. Choose Thumbnail and full frame (THUMBNAIL_AND_FULLFRAME) to generate tiled thumbnails and full-resolution images of single frames. MediaConvert adds an entry in the .mpd manifest for each set of images that you generate. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md"
)
type dashIsoImageBasedTrickPlay = [
  | @as("ADVANCED") #ADVANCED
  | @as("THUMBNAIL_AND_FULLFRAME") #THUMBNAIL_AND_FULLFRAME
  | @as("THUMBNAIL") #THUMBNAIL
  | @as("NONE") #NONE
]
@ocaml.doc("Supports HbbTV specification as indicated")
type dashIsoHbbtvCompliance = [@as("NONE") #NONE | @as("HBBTV_1_5") #HBBTV_1_5]
@ocaml.doc(
  "Use this setting only when your audio codec is a Dolby one (AC3, EAC3, or Atmos) and your downstream workflow requires that your DASH manifest use the Dolby channel configuration tag, rather than the MPEG one. For example, you might need to use this to make dynamic ad insertion work. Specify which audio channel configuration scheme ID URI MediaConvert writes in your DASH manifest. Keep the default value, MPEG channel configuration (MPEG_CHANNEL_CONFIGURATION), to have MediaConvert write this: urn:mpeg:mpegB:cicp:ChannelConfiguration. Choose Dolby channel configuration (DOLBY_CHANNEL_CONFIGURATION) to have MediaConvert write this instead: tag:dolby.com,2014:dash:audio_channel_configuration:2011."
)
type dashIsoGroupAudioChannelConfigSchemeIdUri = [
  | @as("DOLBY_CHANNEL_CONFIGURATION") #DOLBY_CHANNEL_CONFIGURATION
  | @as("MPEG_CHANNEL_CONFIGURATION") #MPEG_CHANNEL_CONFIGURATION
]
@ocaml.doc(
  "The action to take on copy and redistribution control XDS packets.  If you select PASSTHROUGH, packets will not be changed. If you select STRIP, any packets will be removed in output captions."
)
type copyProtectionAction = [@as("STRIP") #STRIP | @as("PASSTHROUGH") #PASSTHROUGH]
@ocaml.doc(
  "Container for this output. Some containers require a container settings object. If not specified, the default object will be created."
)
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
@ocaml.doc("The length of the term of your reserved queue pricing plan commitment.")
type commitment = [@as("ONE_YEAR") #ONE_YEAR]
@ocaml.doc(
  "There are two sources for color metadata, the input file and the job input settings Color space (ColorSpace) and HDR master display information settings(Hdr10Metadata). The Color space usage setting determines which takes precedence. Choose Force (FORCE) to use color metadata from the input job settings. If you don't specify values for those settings, the service defaults to using metadata from your input. FALLBACK - Choose Fallback (FALLBACK) to use color metadata from the source when it is present. If there's no color metadata in your input file, the service defaults to using values you specify in the input settings."
)
type colorSpaceUsage = [@as("FALLBACK") #FALLBACK | @as("FORCE") #FORCE]
@ocaml.doc(
  "Specify the color space you want for this output. The service supports conversion between HDR formats, between SDR formats, from SDR to HDR, and from HDR to SDR. SDR to HDR conversion doesn't upgrade the dynamic range. The converted video has an HDR format, but visually appears the same as an unconverted output. HDR to SDR conversion uses Elemental tone mapping technology to approximate the outcome of manually regrading from HDR to SDR."
)
type colorSpaceConversion = [
  | @as("FORCE_HLG_2020") #FORCE_HLG_2020
  | @as("FORCE_HDR10") #FORCE_HDR10
  | @as("FORCE_709") #FORCE_709
  | @as("FORCE_601") #FORCE_601
  | @as("NONE") #NONE
]
@ocaml.doc(
  "If your input video has accurate color space metadata, or if you don't know about color space, leave this set to the default value Follow (FOLLOW). The service will automatically detect your input color space. If your input video has metadata indicating the wrong color space, specify the accurate color space here. If your input video is HDR 10 and the SMPTE ST 2086 Mastering Display Color Volume static metadata isn't present in your video stream, or if that metadata is present but not accurate, choose Force HDR 10 (FORCE_HDR10) here and specify correct values in the input HDR 10 metadata (Hdr10Metadata) settings. For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr."
)
type colorSpace = [
  | @as("HLG_2020") #HLG_2020
  | @as("HDR10") #HDR10
  | @as("REC_709") #REC_709
  | @as("REC_601") #REC_601
  | @as("FOLLOW") #FOLLOW
]
@ocaml.doc(
  "Choose Insert (INSERT) for this setting to include color metadata in this output. Choose Ignore (IGNORE) to exclude color metadata from this output. If you don't specify a value, the service sets this to Insert by default."
)
type colorMetadata = [@as("INSERT") #INSERT | @as("IGNORE") #IGNORE]
@ocaml.doc(
  "To include ID3 metadata in this output: Set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH). Specify this ID3 metadata in Custom ID3 metadata inserter (timedMetadataInsertion). MediaConvert writes each instance of ID3 metadata in a separate Event Message (eMSG) box. To exclude this ID3 metadata: Set ID3 metadata to None (NONE) or leave blank."
)
type cmfcTimedMetadata = [@as("NONE") #NONE | @as("PASSTHROUGH") #PASSTHROUGH]
@ocaml.doc(
  "Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output."
)
type cmfcScte35Source = [@as("NONE") #NONE | @as("PASSTHROUGH") #PASSTHROUGH]
@ocaml.doc(
  "Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml)."
)
type cmfcScte35Esam = [@as("NONE") #NONE | @as("INSERT") #INSERT]
@ocaml.doc(
  "Choose Include (INCLUDE) to have MediaConvert generate an HLS child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude (EXCLUDE)."
)
type cmfcIFrameOnlyManifest = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc(
  "Specify whether to flag this audio track as descriptive video service (DVS) in your HLS parent manifest. When you choose Flag (FLAG), MediaConvert includes the parameter CHARACTERISTICS=\"public.accessibility.describes-video\" in the EXT-X-MEDIA entry for this track. When you keep the default choice, Don't flag (DONT_FLAG), MediaConvert leaves this parameter out. The DVS flag can help with accessibility on Apple devices. For more information, see the Apple documentation."
)
type cmfcDescriptiveVideoServiceFlag = [@as("FLAG") #FLAG | @as("DONT_FLAG") #DONT_FLAG]
@ocaml.doc(
  "Use this setting to control the values that MediaConvert puts in your HLS parent playlist to control how the client player selects which audio track to play. The other options for this setting determine the values that MediaConvert writes for the DEFAULT and AUTOSELECT attributes of the EXT-X-MEDIA entry for the audio variant. For more information about these attributes, see the Apple documentation article https://developer.apple.com/documentation/http_live_streaming/example_playlists_for_http_live_streaming/adding_alternate_media_to_a_playlist. Choose Alternate audio, auto select, default (ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT) to set DEFAULT=YES and AUTOSELECT=YES. Choose this value for only one variant in your output group. Choose Alternate audio, auto select, not default (ALTERNATE_AUDIO_AUTO_SELECT) to set DEFAULT=NO and AUTOSELECT=YES. Choose Alternate Audio, Not Auto Select to set DEFAULT=NO and AUTOSELECT=NO. When you don't specify a value for this setting, MediaConvert defaults to Alternate audio, auto select, default. When there is more than one variant in your output group, you must explicitly choose a value for this setting."
)
type cmfcAudioTrackType = [
  | @as("ALTERNATE_AUDIO_NOT_AUTO_SELECT") #ALTERNATE_AUDIO_NOT_AUTO_SELECT
  | @as("ALTERNATE_AUDIO_AUTO_SELECT") #ALTERNATE_AUDIO_AUTO_SELECT
  | @as("ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT") #ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT
]
@ocaml.doc(
  "Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec."
)
type cmfcAudioDuration = [
  | @as("MATCH_VIDEO_DURATION") #MATCH_VIDEO_DURATION
  | @as("DEFAULT_CODEC_DURATION") #DEFAULT_CODEC_DURATION
]
@ocaml.doc(
  "When you enable Precise segment duration in DASH manifests (writeSegmentTimelineInRepresentation), your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element."
)
type cmafWriteSegmentTimelineInRepresentation = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
]
@ocaml.doc("When set to ENABLED, an Apple HLS manifest will be generated for this output.")
type cmafWriteHLSManifest = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc("When set to ENABLED, a DASH MPD manifest will be generated for this output.")
type cmafWriteDASHManifest = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "When set to LEGACY, the segment target duration is always rounded up to the nearest integer value above its current value in seconds. When set to SPEC\\\\_COMPLIANT, the segment target duration is rounded up to the nearest integer value if fraction seconds are greater than or equal to 0.5 (>= 0.5) and rounded down if less than 0.5 (< 0.5). You may need to use LEGACY if your client needs to ensure that the target duration is always longer than the actual duration of the segment. Some older players may experience interrupted playback when the actual duration of a track in a segment is longer than the target duration."
)
type cmafTargetDurationCompatibilityMode = [
  | @as("SPEC_COMPLIANT") #SPEC_COMPLIANT
  | @as("LEGACY") #LEGACY
]
@ocaml.doc(
  "Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest."
)
type cmafStreamInfResolution = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc(
  "Specify how you want MediaConvert to determine the segment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Segment length (SegmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary."
)
type cmafSegmentLengthControl = [@as("GOP_MULTIPLE") #GOP_MULTIPLE | @as("EXACT") #EXACT]
@ocaml.doc(
  "When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created."
)
type cmafSegmentControl = [
  | @as("SEGMENTED_FILES") #SEGMENTED_FILES
  | @as("SINGLE_FILE") #SINGLE_FILE
]
@ocaml.doc(
  "Use this setting only when your output video stream has B-frames, which causes the initial presentation time stamp (PTS) to be offset from the initial decode time stamp (DTS). Specify how MediaConvert handles PTS when writing time stamps in output DASH manifests. Choose Match initial PTS (MATCH_INITIAL_PTS) when you want MediaConvert to use the initial PTS as the first time stamp in the manifest. Choose Zero-based (ZERO_BASED) to have MediaConvert ignore the initial PTS in the video stream and instead write the initial time stamp as zero in the manifest. For outputs that don't have B-frames, the time stamps in your DASH manifests start at zero regardless of your choice here."
)
type cmafPtsOffsetHandlingForBFrames = [
  | @as("MATCH_INITIAL_PTS") #MATCH_INITIAL_PTS
  | @as("ZERO_BASED") #ZERO_BASED
]
@ocaml.doc(
  "Specify whether your DASH profile is on-demand or main. When you choose Main profile (MAIN_PROFILE), the service signals  urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand (ON_DEMAND_PROFILE), the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control (SegmentControl) to Single file (SINGLE_FILE)."
)
type cmafMpdProfile = [
  | @as("ON_DEMAND_PROFILE") #ON_DEMAND_PROFILE
  | @as("MAIN_PROFILE") #MAIN_PROFILE
]
@ocaml.doc(
  "Indicates whether the output manifest should use floating point values for segment duration."
)
type cmafManifestDurationFormat = [@as("INTEGER") #INTEGER | @as("FLOATING_POINT") #FLOATING_POINT]
@ocaml.doc("When set to GZIP, compresses HLS playlist.")
type cmafManifestCompression = [@as("NONE") #NONE | @as("GZIP") #GZIP]
@ocaml.doc(
  "Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html."
)
type cmafKeyProviderType = [@as("STATIC_KEY") #STATIC_KEY | @as("SPEKE") #SPEKE]
@ocaml.doc(
  "The cadence MediaConvert follows for generating thumbnails.  If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence).  If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval."
)
type cmafIntervalCadence = [
  | @as("FOLLOW_CUSTOM") #FOLLOW_CUSTOM
  | @as("FOLLOW_IFRAME") #FOLLOW_IFRAME
]
@ocaml.doc(
  "When you use DRM with CMAF outputs, choose whether the service writes the 128-bit encryption initialization vector in the HLS and DASH manifests."
)
type cmafInitializationVectorInManifest = [@as("EXCLUDE") #EXCLUDE | @as("INCLUDE") #INCLUDE]
@ocaml.doc(
  "Specify whether MediaConvert generates images for trick play. Keep the default value, None (NONE), to not generate any images. Choose Thumbnail (THUMBNAIL) to generate tiled thumbnails. Choose Thumbnail and full frame (THUMBNAIL_AND_FULLFRAME) to generate tiled thumbnails and full-resolution images of single frames. When you enable Write HLS manifest (WriteHlsManifest), MediaConvert creates a child manifest for each set of images that you generate and adds corresponding entries to the parent manifest. When you enable Write DASH manifest (WriteDashManifest), MediaConvert adds an entry in the .mpd manifest for each set of images that you generate. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md"
)
type cmafImageBasedTrickPlay = [
  | @as("ADVANCED") #ADVANCED
  | @as("THUMBNAIL_AND_FULLFRAME") #THUMBNAIL_AND_FULLFRAME
  | @as("THUMBNAIL") #THUMBNAIL
  | @as("NONE") #NONE
]
@ocaml.doc(
  "Specify the encryption scheme that you want the service to use when encrypting your CMAF segments. Choose AES-CBC subsample (SAMPLE-AES) or AES_CTR (AES-CTR)."
)
type cmafEncryptionType = [@as("AES_CTR") #AES_CTR | @as("SAMPLE_AES") #SAMPLE_AES]
@ocaml.doc(
  "Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation."
)
type cmafCodecSpecification = [@as("RFC_4281") #RFC_4281 | @as("RFC_6381") #RFC_6381]
@ocaml.doc(
  "Disable this setting only when your workflow requires the #EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled (ENABLED) and control caching in your video distribution set up. For example, use the Cache-Control http header."
)
type cmafClientCache = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Use Source (SourceType) to identify the format of your input captions.  The service cannot auto-detect caption format."
)
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
@ocaml.doc(
  "Specify the format for this set of captions on this output. The default format is embedded without SCTE-20. Note that your choice of video output container constrains your choice of output captions format. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/captions-support-tables.html. If you are using SCTE-20 and you want to create an output that complies with the SCTE-43 spec, choose SCTE-20 plus embedded (SCTE20_PLUS_EMBEDDED). To create a non-compliant output where the embedded captions come first, choose Embedded plus SCTE-20 (EMBEDDED_PLUS_SCTE20)."
)
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
@ocaml.doc(
  "Specify whether the text spacing (TeletextSpacing) in your captions is set by the captions grid, or varies depending on letter width. Choose fixed grid (FIXED_GRID) to conform to the spacing specified in the captions file more accurately. Choose proportional (PROPORTIONAL) to make the text easier to read for closed captions."
)
type burninSubtitleTeletextSpacing = [
  | @as("AUTO") #AUTO
  | @as("PROPORTIONAL") #PROPORTIONAL
  | @as("FIXED_GRID") #FIXED_GRID
]
@ocaml.doc(
  "Specify the color of the shadow cast by the captions. Leave Shadow color (ShadowColor) blank and set Style passthrough (StylePassthrough) to enabled to use the shadow color data from your input captions, if present."
)
type burninSubtitleShadowColor = [
  | @as("AUTO") #AUTO
  | @as("WHITE") #WHITE
  | @as("BLACK") #BLACK
  | @as("NONE") #NONE
]
@ocaml.doc(
  "Specify font outline color. Leave Outline color (OutlineColor) blank and set Style passthrough (StylePassthrough) to enabled to use the font outline color data from your input captions, if present."
)
type burninSubtitleOutlineColor = [
  | @as("AUTO") #AUTO
  | @as("BLUE") #BLUE
  | @as("GREEN") #GREEN
  | @as("RED") #RED
  | @as("YELLOW") #YELLOW
  | @as("WHITE") #WHITE
  | @as("BLACK") #BLACK
]
@ocaml.doc(
  "Specify the color of the burned-in captions text. Leave Font color (FontColor) blank and set Style passthrough (StylePassthrough) to enabled to use the font color data from your input captions, if present."
)
type burninSubtitleFontColor = [
  | @as("AUTO") #AUTO
  | @as("HEX") #HEX
  | @as("BLUE") #BLUE
  | @as("GREEN") #GREEN
  | @as("RED") #RED
  | @as("YELLOW") #YELLOW
  | @as("BLACK") #BLACK
  | @as("WHITE") #WHITE
]
@ocaml.doc(
  "Specify the font that you want the service to use for your burn in captions when your input captions specify a font that MediaConvert doesn't support. When you set Fallback font (FallbackFont) to best match (BEST_MATCH), or leave blank, MediaConvert uses a supported font that most closely matches the font that your input captions specify. When there are multiple unsupported fonts in your input captions, MediaConvert matches each font with the supported font that matches best. When you explicitly choose a replacement font, MediaConvert uses that font to replace all unsupported fonts from your input."
)
type burninSubtitleFallbackFont = [
  | @as("PROPORTIONAL_SERIF") #PROPORTIONAL_SERIF
  | @as("PROPORTIONAL_SANSSERIF") #PROPORTIONAL_SANSSERIF
  | @as("MONOSPACED_SERIF") #MONOSPACED_SERIF
  | @as("MONOSPACED_SANSSERIF") #MONOSPACED_SANSSERIF
  | @as("BEST_MATCH") #BEST_MATCH
]
@ocaml.doc(
  "Specify the color of the rectangle behind the captions. Leave background color (BackgroundColor) blank and set Style passthrough (StylePassthrough) to enabled to use the background color data from your input captions, if present."
)
type burninSubtitleBackgroundColor = [
  | @as("AUTO") #AUTO
  | @as("WHITE") #WHITE
  | @as("BLACK") #BLACK
  | @as("NONE") #NONE
]
@ocaml.doc(
  "Ignore this setting unless Style passthrough (StylePassthrough) is set to Enabled and Font color (FontColor) set to Black, Yellow, Red, Green, Blue, or Hex. Use Apply font color (ApplyFontColor) for additional font color controls. When you choose White text only (WHITE_TEXT_ONLY), or leave blank, your font color setting only applies to white text in your input captions. For example, if your font color setting is Yellow, and your input captions have red and white text, your output captions will have red and yellow text. When you choose ALL_TEXT, your font color setting applies to all of your output captions text."
)
type burninSubtitleApplyFontColor = [
  | @as("ALL_TEXT") #ALL_TEXT
  | @as("WHITE_TEXT_ONLY") #WHITE_TEXT_ONLY
]
@ocaml.doc(
  "Specify the alignment of your captions. If no explicit x_position is provided, setting alignment to centered will placethe captions at the bottom center of the output. Similarly, setting a left alignment willalign captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates."
)
type burninSubtitleAlignment = [@as("AUTO") #AUTO | @as("LEFT") #LEFT | @as("CENTERED") #CENTERED]
@ocaml.doc(
  "Set Style passthrough (StylePassthrough) to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use default settings: white text with black outlining, bottom-center positioning, and automatic sizing. Whether you set Style passthrough to enabled or not, you can also choose to manually override any of the individual style and position settings."
)
type burnInSubtitleStylePassthrough = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc(
  "The tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up."
)
type billingTagsSource = [
  | @as("JOB") #JOB
  | @as("JOB_TEMPLATE") #JOB_TEMPLATE
  | @as("PRESET") #PRESET
  | @as("QUEUE") #QUEUE
]
@ocaml.doc(
  "Optional. Use Quality tuning level (qualityTuningLevel) to choose how many transcoding passes MediaConvert does with your video. When you choose Multi-pass (MULTI_PASS), your video quality is better and your output bitrate is more accurate. That is, the actual bitrate of your output is closer to the target bitrate defined in the specification. When you choose Single-pass (SINGLE_PASS), your encoding time is faster. The default behavior is Single-pass (SINGLE_PASS)."
)
type avcIntraUhdQualityTuningLevel = [
  | @as("MULTI_PASS") #MULTI_PASS
  | @as("SINGLE_PASS") #SINGLE_PASS
]
@ocaml.doc(
  "When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture."
)
type avcIntraTelecine = [@as("HARD") #HARD | @as("NONE") #NONE]
@ocaml.doc(
  "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
)
type avcIntraSlowPal = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE)."
)
type avcIntraScanTypeConversionMode = [
  | @as("INTERLACED_OPTIMIZE") #INTERLACED_OPTIMIZE
  | @as("INTERLACED") #INTERLACED
]
@ocaml.doc(
  "Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose."
)
type avcIntraInterlaceMode = [
  | @as("FOLLOW_BOTTOM_FIELD") #FOLLOW_BOTTOM_FIELD
  | @as("FOLLOW_TOP_FIELD") #FOLLOW_TOP_FIELD
  | @as("BOTTOM_FIELD") #BOTTOM_FIELD
  | @as("TOP_FIELD") #TOP_FIELD
  | @as("PROGRESSIVE") #PROGRESSIVE
]
@ocaml.doc(
  "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
)
type avcIntraFramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
@ocaml.doc(
  "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
)
type avcIntraFramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc(
  "Specify the AVC-Intra class of your output. The AVC-Intra class selection determines the output video bit rate depending on the frame rate of the output. Outputs with higher class values have higher bitrates and improved image quality. Note that for Class 4K/2K, MediaConvert supports only 4:2:2 chroma subsampling."
)
type avcIntraClass = [
  | @as("CLASS_4K_2K") #CLASS_4K_2K
  | @as("CLASS_200") #CLASS_200
  | @as("CLASS_100") #CLASS_100
  | @as("CLASS_50") #CLASS_50
]
@ocaml.doc(
  "Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher."
)
type av1SpatialAdaptiveQuantization = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "'With AV1 outputs, for rate control mode, MediaConvert supports only quality-defined variable bitrate (QVBR). You can''t use CBR or VBR.'"
)
type av1RateControlMode = [@as("QVBR") #QVBR]
@ocaml.doc(
  "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
)
type av1FramerateConversionAlgorithm = [
  | @as("FRAMEFORMER") #FRAMEFORMER
  | @as("INTERPOLATE") #INTERPOLATE
  | @as("DUPLICATE_DROP") #DUPLICATE_DROP
]
@ocaml.doc(
  "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
)
type av1FramerateControl = [
  | @as("SPECIFIED") #SPECIFIED
  | @as("INITIALIZE_FROM_SOURCE") #INITIALIZE_FROM_SOURCE
]
@ocaml.doc("Specify the Bit depth (Av1BitDepth). You can choose 8-bit (BIT_8) or 10-bit (BIT_10).")
type av1BitDepth = [@as("BIT_10") #BIT_10 | @as("BIT_8") #BIT_8]
@ocaml.doc(
  "Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to Spatial adaptive quantization (spatialAdaptiveQuantization)."
)
type av1AdaptiveQuantization = [
  | @as("MAX") #MAX
  | @as("HIGHER") #HIGHER
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("OFF") #OFF
]
@ocaml.doc(
  "When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type, then that value is passed through to the output. If the input contains no ISO 639 audio_type, the value in Audio Type is included in the output. Otherwise the value in Audio Type is included in the output. Note that this field and audioType are both ignored if audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD."
)
type audioTypeControl = [@as("USE_CONFIGURED") #USE_CONFIGURED | @as("FOLLOW_INPUT") #FOLLOW_INPUT]
@ocaml.doc("Specifies the type of the audio selector.")
type audioSelectorType = [
  | @as("HLS_RENDITION_GROUP") #HLS_RENDITION_GROUP
  | @as("LANGUAGE_CODE") #LANGUAGE_CODE
  | @as("TRACK") #TRACK
  | @as("PID") #PID
]
@ocaml.doc(
  "If set to TRUE_PEAK, calculate and log the TruePeak for each output's audio track loudness."
)
type audioNormalizationPeakCalculation = [@as("NONE") #NONE | @as("TRUE_PEAK") #TRUE_PEAK]
@ocaml.doc("If set to LOG, log each output's audio track loudness to a CSV file.")
type audioNormalizationLoudnessLogging = [@as("DONT_LOG") #DONT_LOG | @as("LOG") #LOG]
@ocaml.doc(
  "When enabled the output audio is corrected using the chosen algorithm. If disabled, the audio will be measured but not adjusted."
)
type audioNormalizationAlgorithmControl = [
  | @as("MEASURE_ONLY") #MEASURE_ONLY
  | @as("CORRECT_AUDIO") #CORRECT_AUDIO
]
@ocaml.doc(
  "Choose one of the following audio normalization algorithms: ITU-R BS.1770-1: Ungated loudness. A measurement of ungated average loudness for an entire piece of content, suitable for measurement of short-form content under ATSC recommendation A/85. Supports up to 5.1 audio channels. ITU-R BS.1770-2: Gated loudness. A measurement of gated average loudness compliant with the requirements of EBU-R128. Supports up to 5.1 audio channels. ITU-R BS.1770-3: Modified peak. The same loudness measurement algorithm as 1770-2, with an updated true peak measurement. ITU-R BS.1770-4: Higher channel count. Allows for more audio channels than the other algorithms, including configurations such as 7.1."
)
type audioNormalizationAlgorithm = [
  | @as("ITU_BS_1770_4") #ITU_BS_1770_4
  | @as("ITU_BS_1770_3") #ITU_BS_1770_3
  | @as("ITU_BS_1770_2") #ITU_BS_1770_2
  | @as("ITU_BS_1770_1") #ITU_BS_1770_1
]
@ocaml.doc(
  "Specify which source for language code takes precedence for this audio track. When you choose Follow input (FOLLOW_INPUT), the service uses the language code from the input track if it's present. If there's no languge code on the input track, the service uses the code that you specify in the setting Language code (languageCode or customLanguageCode). When you choose Use configured (USE_CONFIGURED), the service uses the language code that you specify."
)
type audioLanguageCodeControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
@ocaml.doc(
  "Enable this setting on one audio selector to set it as the default for the job. The service uses this default for outputs where it can't find the specified input audio. If you don't set a default, those outputs have no audio."
)
type audioDefaultSelection = [@as("NOT_DEFAULT") #NOT_DEFAULT | @as("DEFAULT") #DEFAULT]
@ocaml.doc(
  "Choose the audio codec for this output. Note that the option Dolby Digital passthrough (PASSTHROUGH) applies only to Dolby Digital and Dolby Digital Plus audio inputs. Make sure that you choose a codec that's supported with your output container: https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers.html#reference-codecs-containers-output-audio For audio-only outputs, make sure that both your input audio codec and your output audio codec are supported for audio-only workflows. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers-input.html#reference-codecs-containers-input-audio-only and https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers.html#audio-only-output"
)
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
@ocaml.doc(
  "You can add a tag for this mono-channel audio track to mimic its placement in a multi-channel layout.  For example, if this track is the left surround channel, choose Left surround (LS)."
)
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
@ocaml.doc(
  "The anti-alias filter is automatically applied to all outputs. The service no longer accepts the value DISABLED for AntiAlias. If you specify that in your job, the service will ignore the setting."
)
type antiAlias = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
@ocaml.doc(
  "By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting."
)
type ancillaryTerminateCaptions = [@as("DISABLED") #DISABLED | @as("END_OF_INPUT") #END_OF_INPUT]
@ocaml.doc(
  "Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708."
)
type ancillaryConvert608To708 = [@as("DISABLED") #DISABLED | @as("UPCONVERT") #UPCONVERT]
@ocaml.doc(
  "Ignore this setting unless this input is a QuickTime animation with an alpha channel. Use this setting to create separate Key and Fill outputs. In each output, specify which part of the input MediaConvert uses. Leave this setting at the default value DISCARD to delete the alpha channel and preserve the video. Set it to REMAP_TO_LUMA to delete the video and map the alpha channel to the luma channel of your outputs."
)
type alphaBehavior = [@as("REMAP_TO_LUMA") #REMAP_TO_LUMA | @as("DISCARD") #DISCARD]
@ocaml.doc(
  "This setting only applies to H.264, H.265, and MPEG2 outputs. Use Insert AFD signaling (AfdSignaling) to specify whether the service includes AFD values in the output video data and what those values are. * Choose None to remove all AFD values from this output. * Choose Fixed to ignore input AFD values and instead encode the value specified in the job. * Choose Auto to calculate output AFD values based on the input AFD scaler data."
)
type afdSignaling = [@as("FIXED") #FIXED | @as("AUTO") #AUTO | @as("NONE") #NONE]
@ocaml.doc(
  "Describes whether the current job is running with accelerated transcoding. For jobs that have Acceleration (AccelerationMode) set to DISABLED, AccelerationStatus is always NOT_APPLICABLE. For jobs that have Acceleration (AccelerationMode) set to ENABLED or PREFERRED, AccelerationStatus is one of the other states. AccelerationStatus is IN_PROGRESS initially, while the service determines whether the input files and job settings are compatible with accelerated transcoding. If they are, AcclerationStatus is ACCELERATED. If your input files and job settings aren't compatible with accelerated transcoding, the service either fails your job or runs it without accelerated transcoding, depending on how you set Acceleration (AccelerationMode). When the service runs your job without accelerated transcoding, AccelerationStatus is NOT_ACCELERATED."
)
type accelerationStatus = [
  | @as("NOT_ACCELERATED") #NOT_ACCELERATED
  | @as("ACCELERATED") #ACCELERATED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("NOT_APPLICABLE") #NOT_APPLICABLE
]
@ocaml.doc(
  "Specify whether the service runs your job with accelerated transcoding. Choose DISABLED if you don't want accelerated transcoding. Choose ENABLED if you want your job to run with accelerated transcoding and to fail if your input files or your job settings aren't compatible with accelerated transcoding. Choose PREFERRED if you want your job to run with accelerated transcoding if the job is compatible with the feature and to run at standard speed if it's not."
)
type accelerationMode = [
  | @as("PREFERRED") #PREFERRED
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
@ocaml.doc(
  "When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used."
)
type ac3MetadataControl = [
  | @as("USE_CONFIGURED") #USE_CONFIGURED
  | @as("FOLLOW_INPUT") #FOLLOW_INPUT
]
@ocaml.doc(
  "Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode."
)
type ac3LfeFilter = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc(
  "Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the RF operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile (DynamicRangeCompressionProfile). For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf."
)
type ac3DynamicRangeCompressionRf = [
  | @as("NONE") #NONE
  | @as("SPEECH") #SPEECH
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
]
@ocaml.doc(
  "When you want to add Dolby dynamic range compression (DRC) signaling to your output stream, we recommend that you use the mode-specific settings instead of Dynamic range compression profile (DynamicRangeCompressionProfile). The mode-specific settings are Dynamic range compression profile, line mode (dynamicRangeCompressionLine) and Dynamic range compression profile, RF mode (dynamicRangeCompressionRf). Note that when you specify values for all three settings, MediaConvert ignores the value of this setting in favor of the mode-specific settings. If you do use this setting instead of the mode-specific settings, choose None (NONE) to leave out DRC signaling. Keep the default Film standard (FILM_STANDARD) to set the profile to Dolby's film standard profile for all operating modes."
)
type ac3DynamicRangeCompressionProfile = [@as("NONE") #NONE | @as("FILM_STANDARD") #FILM_STANDARD]
@ocaml.doc(
  "Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the line operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile (DynamicRangeCompressionProfile). For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf."
)
type ac3DynamicRangeCompressionLine = [
  | @as("NONE") #NONE
  | @as("SPEECH") #SPEECH
  | @as("MUSIC_LIGHT") #MUSIC_LIGHT
  | @as("MUSIC_STANDARD") #MUSIC_STANDARD
  | @as("FILM_LIGHT") #FILM_LIGHT
  | @as("FILM_STANDARD") #FILM_STANDARD
]
@ocaml.doc("Dolby Digital coding mode. Determines number of channels.")
type ac3CodingMode = [
  | @as("CODING_MODE_3_2_LFE") #CODING_MODE_3_2_LFE
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_1") #CODING_MODE_1_1
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
]
@ocaml.doc(
  "Specify the bitstream mode for the AC-3 stream that the encoder emits. For more information about the AC3 bitstream mode, see ATSC A/52-2012 (Annex E)."
)
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
@ocaml.doc("VBR Quality Level - Only used if rate_control_mode is VBR.")
type aacVbrQuality = [
  | @as("HIGH") #HIGH
  | @as("MEDIUM_HIGH") #MEDIUM_HIGH
  | @as("MEDIUM_LOW") #MEDIUM_LOW
  | @as("LOW") #LOW
]
@ocaml.doc(
  "Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers."
)
type aacSpecification = [@as("MPEG4") #MPEG4 | @as("MPEG2") #MPEG2]
@ocaml.doc(
  "Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an output, you must choose \"No container\" for the output container."
)
type aacRawFormat = [@as("NONE") #NONE | @as("LATM_LOAS") #LATM_LOAS]
@ocaml.doc("Rate Control Mode.") type aacRateControlMode = [@as("VBR") #VBR | @as("CBR") #CBR]
@ocaml.doc(
  "Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. \"1.0 - Audio Description (Receiver Mix)\" setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E."
)
type aacCodingMode = [
  | @as("CODING_MODE_5_1") #CODING_MODE_5_1
  | @as("CODING_MODE_2_0") #CODING_MODE_2_0
  | @as("CODING_MODE_1_1") #CODING_MODE_1_1
  | @as("CODING_MODE_1_0") #CODING_MODE_1_0
  | @as("AD_RECEIVER_MIX") #AD_RECEIVER_MIX
]
@ocaml.doc("AAC Profile.")
type aacCodecProfile = [@as("HEV2") #HEV2 | @as("HEV1") #HEV1 | @as("LC") #LC]
@ocaml.doc(
  "Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains \"broadcaster mixed AD\". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and  FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType."
)
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
@ocaml.doc(
  "Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_HD."
)
type xavcHdProfileSettings = {
  @ocaml.doc(
    "Ignore this setting unless you set Frame rate (framerateNumerator divided by framerateDenominator) to 29.970. If your input framerate is 23.976, choose Hard (HARD). Otherwise, keep the default value None (NONE). For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-telecine-and-inverse-telecine.html."
  )
  @as("Telecine")
  telecine: option<xavcHdProfileTelecine>,
  @ocaml.doc(
    "Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures."
  )
  @as("Slices")
  slices: option<__integerMin4Max12>,
  @ocaml.doc(
    "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
  )
  @as("QualityTuningLevel")
  qualityTuningLevel: option<xavcHdProfileQualityTuningLevel>,
  @ocaml.doc(
    "Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose."
  )
  @as("InterlaceMode")
  interlaceMode: option<xavcInterlaceMode>,
  @ocaml.doc(
    "Specify the size of the buffer that MediaConvert uses in the HRD buffer model for this output. Specify this value in bits; for example, enter five megabits as 5000000. When you don't set this value, or you set it to zero, MediaConvert calculates the default by doubling the bitrate of this output point."
  )
  @as("HrdBufferSize")
  hrdBufferSize: option<__integerMin0Max1152000000>,
  @ocaml.doc(
    "Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting."
  )
  @as("GopClosedCadence")
  gopClosedCadence: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify whether the encoder uses B-frames as reference frames for other pictures in the same GOP. Choose Allow (ENABLED) to allow the encoder to use B-frames as reference frames. Choose Don't allow (DISABLED) to prevent the encoder from using B-frames as reference frames."
  )
  @as("GopBReference")
  gopBReference: option<xavcGopBReference>,
  @ocaml.doc(
    "The best way to set up adaptive quantization is to keep the default value, Auto (AUTO), for the setting Adaptive quantization (XavcAdaptiveQuantization). When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set Adaptive quantization (adaptiveQuantization) to a value other than Off (OFF) or Auto (AUTO). Use Adaptive quantization to adjust the degree of smoothing that Flicker adaptive quantization provides."
  )
  @as("FlickerAdaptiveQuantization")
  flickerAdaptiveQuantization: option<xavcFlickerAdaptiveQuantization>,
  @ocaml.doc(
    "Specify the XAVC HD (Long GOP) Bitrate Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class."
  )
  @as("BitrateClass")
  bitrateClass: option<xavcHdProfileBitrateClass>,
}
@ocaml.doc(
  "Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_HD_INTRA_CBG."
)
type xavcHdIntraCbgProfileSettings = {
  @ocaml.doc(
    "Specify the XAVC Intra HD (CBG) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class."
  )
  @as("XavcClass")
  xavcClass: option<xavcHdIntraCbgProfileClass>,
}
@ocaml.doc(
  "Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_4K."
)
type xavc4kProfileSettings = {
  @ocaml.doc(
    "Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures."
  )
  @as("Slices")
  slices: option<__integerMin8Max12>,
  @ocaml.doc(
    "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
  )
  @as("QualityTuningLevel")
  qualityTuningLevel: option<xavc4kProfileQualityTuningLevel>,
  @ocaml.doc(
    "Specify the size of the buffer that MediaConvert uses in the HRD buffer model for this output. Specify this value in bits; for example, enter five megabits as 5000000. When you don't set this value, or you set it to zero, MediaConvert calculates the default by doubling the bitrate of this output point."
  )
  @as("HrdBufferSize")
  hrdBufferSize: option<__integerMin0Max1152000000>,
  @ocaml.doc(
    "Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting."
  )
  @as("GopClosedCadence")
  gopClosedCadence: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify whether the encoder uses B-frames as reference frames for other pictures in the same GOP. Choose Allow (ENABLED) to allow the encoder to use B-frames as reference frames. Choose Don't allow (DISABLED) to prevent the encoder from using B-frames as reference frames."
  )
  @as("GopBReference")
  gopBReference: option<xavcGopBReference>,
  @ocaml.doc(
    "The best way to set up adaptive quantization is to keep the default value, Auto (AUTO), for the setting Adaptive quantization (XavcAdaptiveQuantization). When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set Adaptive quantization (adaptiveQuantization) to a value other than Off (OFF) or Auto (AUTO). Use Adaptive quantization to adjust the degree of smoothing that Flicker adaptive quantization provides."
  )
  @as("FlickerAdaptiveQuantization")
  flickerAdaptiveQuantization: option<xavcFlickerAdaptiveQuantization>,
  @ocaml.doc(
    "Specify the codec profile for this output. Choose High, 8-bit, 4:2:0 (HIGH) or High, 10-bit, 4:2:2 (HIGH_422). These profiles are specified in ITU-T H.264."
  )
  @as("CodecProfile")
  codecProfile: option<xavc4kProfileCodecProfile>,
  @ocaml.doc(
    "Specify the XAVC 4k (Long GOP) Bitrate Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class."
  )
  @as("BitrateClass")
  bitrateClass: option<xavc4kProfileBitrateClass>,
}
@ocaml.doc(
  "Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_4K_INTRA_VBR."
)
type xavc4kIntraVbrProfileSettings = {
  @ocaml.doc(
    "Specify the XAVC Intra 4k (VBR) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class."
  )
  @as("XavcClass")
  xavcClass: option<xavc4kIntraVbrProfileClass>,
}
@ocaml.doc(
  "Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_4K_INTRA_CBG."
)
type xavc4kIntraCbgProfileSettings = {
  @ocaml.doc(
    "Specify the XAVC Intra 4k (CBG) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class."
  )
  @as("XavcClass")
  xavcClass: option<xavc4kIntraCbgProfileClass>,
}
@ocaml.doc(
  "Settings specific to WebVTT sources in HLS alternative rendition group. Specify the properties (renditionGroupId, renditionName or renditionLanguageCode) to identify the unique subtitle track among the alternative rendition groups present in the HLS manifest. If no unique track is found, or multiple tracks match the specified properties, the job fails. If there is only one subtitle track in the rendition group, the settings can be left empty and the default subtitle track will be chosen. If your caption source is a sidecar file, use FileSourceSettings instead of WebvttHlsSourceSettings."
)
type webvttHlsSourceSettings = {
  @ocaml.doc("Optional. Specify media name") @as("RenditionName") renditionName: option<__string>,
  @ocaml.doc("Optional. Specify ISO 639-2 or ISO 639-3 code in the language property")
  @as("RenditionLanguageCode")
  renditionLanguageCode: option<languageCode>,
  @ocaml.doc("Optional. Specify alternative group ID") @as("RenditionGroupId")
  renditionGroupId: option<__string>,
}
@ocaml.doc(
  "Settings related to WebVTT captions. WebVTT is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to WebVTT."
)
type webvttDestinationSettings = {
  @ocaml.doc(
    "Set Style passthrough (StylePassthrough) to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use simplified output captions."
  )
  @as("StylePassthrough")
  stylePassthrough: option<webvttStylePassthrough>,
  @ocaml.doc(
    "Set Accessibility subtitles (Accessibility) to Enabled (ENABLED) if the ISMC or WebVTT captions track is intended to provide accessibility for people who are deaf or hard of hearing. When you enable this feature, MediaConvert adds the following attributes under EXT-X-MEDIA in the HLS or CMAF manifest for this track: CHARACTERISTICS=\"public.accessibility.describes-spoken-dialog,public.accessibility.describes-music-and-sound\" and AUTOSELECT=\"YES\". Keep the default value, Disabled (DISABLED), if the captions track is not intended to provide such accessibility. MediaConvert will not add the above attributes."
  )
  @as("Accessibility")
  accessibility: option<webvttAccessibilitySubs>,
}
@ocaml.doc(
  "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value WAV."
)
type wavSettings = {
  @ocaml.doc("Sample rate in Hz.") @as("SampleRate") sampleRate: option<__integerMin8000Max192000>,
  @ocaml.doc(
    "The service defaults to using RIFF for WAV outputs. If your output audio is likely to exceed 4 GB in file size, or if you otherwise need the extended support of the RF64 format, set your output WAV file format to RF64."
  )
  @as("Format")
  format: option<wavFormat>,
  @ocaml.doc(
    "Specify the number of channels in this output audio track. Valid values are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up to 64."
  )
  @as("Channels")
  channels: option<__integerMin1Max64>,
  @ocaml.doc(
    "Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track."
  )
  @as("BitDepth")
  bitDepth: option<__integerMin16Max24>,
}
@ocaml.doc(
  "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP9."
)
type vp9Settings = {
  @ocaml.doc("With the VP9 codec, you can use only the variable bitrate (VBR) rate control mode.")
  @as("RateControlMode")
  rateControlMode: option<vp9RateControlMode>,
  @ocaml.doc(
    "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding."
  )
  @as("QualityTuningLevel")
  qualityTuningLevel: option<vp9QualityTuningLevel>,
  @ocaml.doc(
    "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40."
  )
  @as("ParNumerator")
  parNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33."
  )
  @as("ParDenominator")
  parDenominator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Optional. Specify how the service determines the pixel aspect ratio for this output. The default behavior is to use the same pixel aspect ratio as your input video."
  )
  @as("ParControl")
  parControl: option<vp9ParControl>,
  @ocaml.doc(
    "Ignore this setting unless you set qualityTuningLevel to MULTI_PASS. Optional. Specify the maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. The default behavior uses twice the target bitrate as the maximum bitrate."
  )
  @as("MaxBitrate")
  maxBitrate: option<__integerMin1000Max480000000>,
  @ocaml.doc(
    "Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000."
  )
  @as("HrdBufferSize")
  hrdBufferSize: option<__integerMin0Max47185920>,
  @ocaml.doc("GOP Length (keyframe interval) in frames. Must be greater than zero.") @as("GopSize")
  gopSize: option<__doubleMin0>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
  )
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<vp9FramerateConversionAlgorithm>,
  @ocaml.doc(
    "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
  )
  @as("FramerateControl")
  framerateControl: option<vp9FramerateControl>,
  @ocaml.doc(
    "Target bitrate in bits/second. For example, enter five megabits per second as 5000000."
  )
  @as("Bitrate")
  bitrate: option<__integerMin1000Max480000000>,
}
@ocaml.doc(
  "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP8."
)
type vp8Settings = {
  @ocaml.doc("With the VP8 codec, you can use only the variable bitrate (VBR) rate control mode.")
  @as("RateControlMode")
  rateControlMode: option<vp8RateControlMode>,
  @ocaml.doc(
    "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding."
  )
  @as("QualityTuningLevel")
  qualityTuningLevel: option<vp8QualityTuningLevel>,
  @ocaml.doc(
    "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40."
  )
  @as("ParNumerator")
  parNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33."
  )
  @as("ParDenominator")
  parDenominator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
  )
  @as("ParControl")
  parControl: option<vp8ParControl>,
  @ocaml.doc(
    "Ignore this setting unless you set qualityTuningLevel to MULTI_PASS. Optional. Specify the maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. The default behavior uses twice the target bitrate as the maximum bitrate."
  )
  @as("MaxBitrate")
  maxBitrate: option<__integerMin1000Max1152000000>,
  @ocaml.doc(
    "Optional. Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000."
  )
  @as("HrdBufferSize")
  hrdBufferSize: option<__integerMin0Max47185920>,
  @ocaml.doc("GOP Length (keyframe interval) in frames. Must be greater than zero.") @as("GopSize")
  gopSize: option<__doubleMin0>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
  )
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<vp8FramerateConversionAlgorithm>,
  @ocaml.doc(
    "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
  )
  @as("FramerateControl")
  framerateControl: option<vp8FramerateControl>,
  @ocaml.doc(
    "Target bitrate in bits/second. For example, enter five megabits per second as 5000000."
  )
  @as("Bitrate")
  bitrate: option<__integerMin1000Max1152000000>,
}
@ocaml.doc(
  "Required when you set Codec, under AudioDescriptions>CodecSettings, to the value Vorbis."
)
type vorbisSettings = {
  @ocaml.doc(
    "Optional. Specify the variable audio quality of this Vorbis output from -1 (lowest quality, ~45 kbit/s) to 10 (highest quality, ~500 kbit/s). The default value is 4 (~128 kbit/s). Values 5 and 6 are approximately 160 and 192 kbit/s, respectively."
  )
  @as("VbrQuality")
  vbrQuality: option<__integerMinNegative1Max10>,
  @ocaml.doc(
    "Optional. Specify the audio sample rate in Hz. Valid values are 22050, 32000, 44100, and 48000. The default value is 48000."
  )
  @as("SampleRate")
  sampleRate: option<__integerMin22050Max48000>,
  @ocaml.doc(
    "Optional. Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2. The default value is 2."
  )
  @as("Channels")
  channels: option<__integerMin1Max2>,
}
@ocaml.doc("Contains details about the output's video stream")
type videoDetail = {
  @ocaml.doc("Width in pixels for the output") @as("WidthInPx") widthInPx: option<__integer>,
  @ocaml.doc("Height in pixels for the output") @as("HeightInPx") heightInPx: option<__integer>,
}
@ocaml.doc(
  "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VC3"
)
type vc3Settings = {
  @ocaml.doc(
    "Specify the VC3 class to choose the quality characteristics for this output. VC3 class, together with the settings Framerate (framerateNumerator and framerateDenominator) and Resolution (height and width), determine your output bitrate. For example, say that your video resolution is 1920x1080 and your framerate is 29.97. Then Class 145 (CLASS_145) gives you an output with a bitrate of approximately 145 Mbps and Class 220 (CLASS_220) gives you and output with a bitrate of approximately 220 Mbps. VC3 class also specifies the color bit depth of your output."
  )
  @as("Vc3Class")
  vc3Class: option<vc3Class>,
  @ocaml.doc(
    "When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture."
  )
  @as("Telecine")
  telecine: option<vc3Telecine>,
  @ocaml.doc(
    "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
  )
  @as("SlowPal")
  slowPal: option<vc3SlowPal>,
  @ocaml.doc(
    "Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE)."
  )
  @as("ScanTypeConversionMode")
  scanTypeConversionMode: option<vc3ScanTypeConversionMode>,
  @ocaml.doc(
    "Optional. Choose the scan line type for this output. If you don't specify a value, MediaConvert will create a progressive output."
  )
  @as("InterlaceMode")
  interlaceMode: option<vc3InterlaceMode>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin24Max60000>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max1001>,
  @ocaml.doc(
    "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
  )
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<vc3FramerateConversionAlgorithm>,
  @ocaml.doc(
    "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
  )
  @as("FramerateControl")
  framerateControl: option<vc3FramerateControl>,
}
@ocaml.doc(
  "Settings related to TTML captions. TTML is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to TTML."
)
type ttmlDestinationSettings = {
  @ocaml.doc(
    "Pass through style and position information from a TTML-like input source (TTML, IMSC, SMPTE-TT) to the TTML output."
  )
  @as("StylePassthrough")
  stylePassthrough: option<ttmlStylePassthrough>,
}
@ocaml.doc(
  "Settings specific to caption sources that are specified by track number. Currently, this is only IMSC captions in an IMF package. If your caption source is IMSC 1.1 in a separate xml file, use FileSourceSettings instead of TrackSourceSettings."
)
type trackSourceSettings = {
  @ocaml.doc(
    "Use this setting to select a single captions track from a source. Track numbers correspond to the order in the captions source file. For IMF sources, track numbering is based on the order that the captions appear in the CPL. For example, use 1 to select the captions asset that is listed first in the CPL. To include more than one captions track in your job outputs, create multiple input captions selectors. Specify one track per selector."
  )
  @as("TrackNumber")
  trackNumber: option<__integerMin1Max2147483647>,
}
@ocaml.doc(
  "Information about when jobs are submitted, started, and finished is specified in Unix epoch format in seconds."
)
type timing = {
  @ocaml.doc("The time, in Unix epoch format, that you submitted the job.") @as("SubmitTime")
  submitTime: option<__timestampUnix>,
  @ocaml.doc("The time, in Unix epoch format, that transcoding for the job began.") @as("StartTime")
  startTime: option<__timestampUnix>,
  @ocaml.doc("The time, in Unix epoch format, that the transcoding job finished") @as("FinishTime")
  finishTime: option<__timestampUnix>,
}
@ocaml.doc(
  "These settings control how the service handles timecodes throughout the job. These settings don't affect input clipping."
)
type timecodeConfig = {
  @ocaml.doc(
    "Only applies to outputs that support program-date-time stamp. Use Timestamp offset (TimestampOffset) to overwrite the timecode date without affecting the time and frame number. Provide the new date as a string in the format \"yyyy-mm-dd\".  To use Time stamp offset, you must also enable Insert program-date-time (InsertProgramDateTime) in the output settings. For example, if the date part of your timecodes is 2002-1-25 and you want to change it to one year later, set Timestamp offset (TimestampOffset) to 2003-1-25."
  )
  @as("TimestampOffset")
  timestampOffset: option<__stringPattern0940191020191209301>,
  @ocaml.doc(
    "Only use when you set Source (TimecodeSource) to Specified start (SPECIFIEDSTART). Use Start timecode (Start) to specify the timecode for the initial frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF)."
  )
  @as("Start")
  start: option<__stringPattern010920405090509092>,
  @ocaml.doc(
    "Use Source (TimecodeSource) to set how timecodes are handled within this job. To make sure that your video, audio, captions, and markers are synchronized and that time-based features, such as image inserter, work correctly, choose the Timecode source option that matches your assets. All timecodes are in a 24-hour format with frame number (HH:MM:SS:FF). * Embedded (EMBEDDED) - Use the timecode that is in the input video. If no embedded timecode is in the source, the service will use Start at 0 (ZEROBASED) instead. * Start at 0 (ZEROBASED) - Set the timecode of the initial frame to 00:00:00:00. * Specified Start (SPECIFIEDSTART) - Set the timecode of the initial frame to a value other than zero. You use Start timecode (Start) to provide this value."
  )
  @as("Source")
  source: option<timecodeSource>,
  @ocaml.doc(
    "If you use an editing platform that relies on an anchor timecode, use Anchor Timecode (Anchor) to specify a timecode that will match the input video frame to the output video frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF). This setting ignores frame rate conversion. System behavior for Anchor Timecode varies depending on your setting for Source (TimecodeSource). * If Source (TimecodeSource) is set to Specified Start (SPECIFIEDSTART), the first input frame is the specified value in Start Timecode (Start). Anchor Timecode (Anchor) and Start Timecode (Start) are used calculate output timecode. * If Source (TimecodeSource) is set to Start at 0 (ZEROBASED)  the  first frame is 00:00:00:00. * If Source (TimecodeSource) is set to Embedded (EMBEDDED), the  first frame is the timecode value on the first input frame of the input."
  )
  @as("Anchor")
  anchor: option<__stringPattern010920405090509092>,
}
@ocaml.doc("Settings for burning the output timecode and specified prefix into the output.")
type timecodeBurnin = {
  @ocaml.doc(
    "Use Prefix (Prefix) to place ASCII characters before any burned-in timecode. For example, a prefix of \"EZ-\" will result in the timecode \"EZ-00:00:00:00\". Provide either the characters themselves or the ASCII code equivalents. The supported range of characters is 0x20 through 0x7e. This includes letters, numbers, and all special characters represented on a standard English keyboard."
  )
  @as("Prefix")
  prefix: option<__stringPattern>,
  @ocaml.doc(
    "Use Position (Position) under under Timecode burn-in (TimecodeBurnIn) to specify the location the burned-in timecode on output video."
  )
  @as("Position")
  position: option<timecodeBurninPosition>,
  @ocaml.doc(
    "Use Font Size (FontSize) to set the font size of any burned-in timecode. Valid values are 10, 16, 32, 48."
  )
  @as("FontSize")
  fontSize: option<__integerMin10Max48>,
}
@ocaml.doc("Settings specific to Teletext caption sources, including Page number.")
type teletextSourceSettings = {
  @ocaml.doc(
    "Use Page Number (PageNumber) to specify the three-digit hexadecimal page number that will be used for Teletext captions. Do not use this setting if you are passing through teletext from the input source to output."
  )
  @as("PageNumber")
  pageNumber: option<__stringMin3Max3Pattern1809aFAF09aEAE>,
}
@ocaml.doc("Use these settings to set up encryption with a static key provider.")
type staticKeyProvider = {
  @ocaml.doc(
    "Relates to DRM implementation. The location of the license server used for protecting content."
  )
  @as("Url")
  url: option<__string>,
  @ocaml.doc(
    "Relates to DRM implementation. Use a 32-character hexidecimal string to specify Key Value (StaticKeyValue)."
  )
  @as("StaticKeyValue")
  staticKeyValue: option<__stringPatternAZaZ0932>,
  @ocaml.doc(
    "Relates to DRM implementation. Either a single positive integer version value or a slash delimited list of version values (1/2/3)."
  )
  @as("KeyFormatVersions")
  keyFormatVersions: option<__stringPatternDD>,
  @ocaml.doc(
    "Relates to DRM implementation. Sets the value of the KEYFORMAT attribute. Must be 'identity' or a reverse DNS string. May be omitted to indicate an implicit value of 'identity'."
  )
  @as("KeyFormat")
  keyFormat: option<__stringPatternIdentityAZaZ26AZaZ09163>,
}
@ocaml.doc(
  "Settings related to SRT captions. SRT is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to SRT."
)
type srtDestinationSettings = {
  @ocaml.doc(
    "Set Style passthrough (StylePassthrough) to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use simplified output captions."
  )
  @as("StylePassthrough")
  stylePassthrough: option<srtStylePassthrough>,
}
@ocaml.doc(
  "Settings related to SCC captions. SCC is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/scc-srt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to SCC."
)
type sccDestinationSettings = {
  @ocaml.doc(
    "Set Framerate (SccDestinationFramerate) to make sure that the captions and the video are synchronized in the output. Specify a frame rate that matches the frame rate of the associated video. If the video frame rate is 29.97, choose 29.97 dropframe (FRAMERATE_29_97_DROPFRAME) only if the video has video_insertion=true and drop_frame_timecode=true; otherwise, choose 29.97 non-dropframe (FRAMERATE_29_97_NON_DROPFRAME)."
  )
  @as("Framerate")
  framerate: option<sccDestinationFramerate>,
}
@ocaml.doc("Settings for how your job outputs are encrypted as they are uploaded to Amazon S3.")
type s3EncryptionSettings = {
  @ocaml.doc(
    "Optionally, specify the customer master key (CMK) that you want to use to encrypt the data key that AWS uses to encrypt your output content. Enter the Amazon Resource Name (ARN) of the CMK. To use this setting, you must also set Server-side encryption (S3ServerSideEncryptionType) to AWS KMS (SERVER_SIDE_ENCRYPTION_KMS). If you set Server-side encryption to AWS KMS but don't specify a CMK here, AWS uses the AWS managed CMK associated with Amazon S3."
  )
  @as("KmsKeyArn")
  kmsKeyArn: option<
    __stringPatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912MrkAFAF0932,
  >,
  @ocaml.doc(
    "Optionally, specify the encryption context that you want to use alongside your KMS key. AWS KMS uses this encryption context as additional authenticated data (AAD) to support authenticated encryption. This value must be a base64-encoded UTF-8 string holding JSON which represents a string-string map. To use this setting, you must also set Server-side encryption (S3ServerSideEncryptionType) to AWS KMS (SERVER_SIDE_ENCRYPTION_KMS). For more information about encryption context, see: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context."
  )
  @as("KmsEncryptionContext")
  kmsEncryptionContext: option<__stringPatternAZaZ0902>,
  @ocaml.doc(
    "Specify how you want your data keys managed. AWS uses data keys to encrypt your content. AWS also encrypts the data keys themselves, using a customer master key (CMK), and then stores the encrypted data keys alongside your encrypted content. Use this setting to specify which AWS service manages the CMK. For simplest set up, choose Amazon S3 (SERVER_SIDE_ENCRYPTION_S3). If you want your master key to be managed by AWS Key Management Service (KMS), choose AWS KMS (SERVER_SIDE_ENCRYPTION_KMS). By default, when you choose AWS KMS, KMS uses the AWS managed customer master key (CMK) associated with Amazon S3 to encrypt your data keys. You can optionally choose to specify a different, customer managed CMK. Do so by specifying the Amazon Resource Name (ARN) of the key for the setting  KMS ARN (kmsKeyArn)."
  )
  @as("EncryptionType")
  encryptionType: option<s3ServerSideEncryptionType>,
}
@ocaml.doc(
  "Optional. Have MediaConvert automatically apply Amazon S3 access control for the outputs in this output group. When you don't use this setting, S3 automatically applies the default access control list PRIVATE."
)
type s3DestinationAccessControl = {
  @ocaml.doc("Choose an Amazon S3 canned ACL for MediaConvert to apply to this output.")
  @as("CannedAcl")
  cannedAcl: option<s3ObjectCannedAcl>,
}
@ocaml.doc(
  "Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues."
)
type reservationPlanSettings = {
  @ocaml.doc(
    "Specifies the number of reserved transcode slots (RTS) for this queue. The number of RTS determines how many jobs the queue can process in parallel; each RTS can process one job at a time. You can't decrease the number of RTS in your reserved queue. You can increase the number of RTS by extending your existing commitment with a new 12-month commitment for the larger number. The new commitment begins when you purchase the additional capacity. You can't cancel your commitment or revert to your original commitment after you increase the capacity."
  )
  @as("ReservedSlots")
  reservedSlots: __integer,
  @ocaml.doc(
    "Specifies whether the term of your reserved queue pricing plan is automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of the term. When your term is auto renewed, you extend your commitment by 12 months from the auto renew date. You can cancel this commitment."
  )
  @as("RenewalType")
  renewalType: renewalType,
  @ocaml.doc("The length of the term of your reserved queue pricing plan commitment.")
  @as("Commitment")
  commitment: commitment,
}
@ocaml.doc(
  "Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues."
)
type reservationPlan = {
  @ocaml.doc("Specifies whether the pricing plan for your reserved queue is ACTIVE or EXPIRED.")
  @as("Status")
  status: option<reservationPlanStatus>,
  @ocaml.doc(
    "Specifies the number of reserved transcode slots (RTS) for this queue. The number of RTS determines how many jobs the queue can process in parallel; each RTS can process one job at a time. When you increase this number, you extend your existing commitment with a new 12-month commitment for a larger number of RTS. The new commitment begins when you purchase the additional capacity. You can't decrease the number of RTS in your reserved queue."
  )
  @as("ReservedSlots")
  reservedSlots: option<__integer>,
  @ocaml.doc(
    "Specifies whether the term of your reserved queue pricing plan is automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of the term."
  )
  @as("RenewalType")
  renewalType: option<renewalType>,
  @ocaml.doc(
    "The timestamp in epoch seconds for when you set up the current pricing plan for this reserved queue."
  )
  @as("PurchasedAt")
  purchasedAt: option<__timestampUnix>,
  @ocaml.doc(
    "The timestamp in epoch seconds for when the current pricing plan term for this reserved queue expires."
  )
  @as("ExpiresAt")
  expiresAt: option<__timestampUnix>,
  @ocaml.doc("The length of the term of your reserved queue pricing plan commitment.")
  @as("Commitment")
  commitment: option<commitment>,
}
@ocaml.doc("Use Rectangle to identify a specific area of the video frame.")
type rectangle = {
  @ocaml.doc(
    "The distance, in pixels, between the rectangle and the top edge of the video frame. Specify only even numbers."
  )
  @as("Y")
  y: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "The distance, in pixels, between the rectangle and the left edge of the video frame. Specify only even numbers."
  )
  @as("X")
  x: option<__integerMin0Max2147483647>,
  @ocaml.doc("Width of rectangle in pixels. Specify only even numbers.") @as("Width")
  width: option<__integerMin2Max2147483647>,
  @ocaml.doc("Height of rectangle in pixels. Specify only even numbers.") @as("Height")
  height: option<__integerMin2Max2147483647>,
}
@ocaml.doc(
  "Description of the source and destination queues between which the job has moved, along with the timestamp of the move"
)
type queueTransition = {
  @ocaml.doc(
    "The time, in Unix epoch format, that the job moved from the source queue to the destination queue."
  )
  @as("Timestamp")
  timestamp_: option<__timestampUnix>,
  @ocaml.doc("The queue that the job was on before the transition.") @as("SourceQueue")
  sourceQueue: option<__string>,
  @ocaml.doc("The queue that the job was on after the transition.") @as("DestinationQueue")
  destinationQueue: option<__string>,
}
@ocaml.doc(
  "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value PRORES."
)
type proresSettings = {
  @ocaml.doc(
    "When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture."
  )
  @as("Telecine")
  telecine: option<proresTelecine>,
  @ocaml.doc(
    "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
  )
  @as("SlowPal")
  slowPal: option<proresSlowPal>,
  @ocaml.doc(
    "Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE)."
  )
  @as("ScanTypeConversionMode")
  scanTypeConversionMode: option<proresScanTypeConversionMode>,
  @ocaml.doc(
    "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40."
  )
  @as("ParNumerator")
  parNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33."
  )
  @as("ParDenominator")
  parDenominator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
  )
  @as("ParControl")
  parControl: option<proresParControl>,
  @ocaml.doc(
    "Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose."
  )
  @as("InterlaceMode")
  interlaceMode: option<proresInterlaceMode>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
  )
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<proresFramerateConversionAlgorithm>,
  @ocaml.doc(
    "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
  )
  @as("FramerateControl")
  framerateControl: option<proresFramerateControl>,
  @ocaml.doc(
    "Use Profile (ProResCodecProfile) to specify the type of Apple ProRes codec to use for this output."
  )
  @as("CodecProfile")
  codecProfile: option<proresCodecProfile>,
  @ocaml.doc(
    "This setting applies only to ProRes 4444 and ProRes 4444 XQ outputs that you create from inputs that use 4:4:4 chroma sampling. Set Preserve 4:4:4 sampling (PRESERVE_444_SAMPLING) to allow outputs to also use 4:4:4 chroma sampling. You must specify a value for this setting when your output codec profile supports 4:4:4 chroma sampling. Related Settings: When you set Chroma sampling to Preserve 4:4:4 sampling (PRESERVE_444_SAMPLING), you must choose an output codec profile that supports 4:4:4 chroma sampling. These values for Profile (CodecProfile) support 4:4:4 chroma sampling: Apple ProRes 4444 (APPLE_PRORES_4444) or Apple ProRes 4444 XQ (APPLE_PRORES_4444_XQ). When you set Chroma sampling to Preserve 4:4:4 sampling, you must disable all video preprocessors except for Nexguard file marker (PartnerWatermarking). When you set Chroma sampling to Preserve 4:4:4 sampling and use framerate conversion, you must set Frame rate conversion algorithm (FramerateConversionAlgorithm) to Drop duplicate (DUPLICATE_DROP)."
  )
  @as("ChromaSampling")
  chromaSampling: option<proresChromaSampling>,
}
@ocaml.doc(
  "A policy configures behavior that you allow or disallow for your account. For information about MediaConvert policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
)
type policy = {
  @ocaml.doc("Allow or disallow jobs that specify Amazon S3 inputs.") @as("S3Inputs")
  s3Inputs: option<inputPolicy>,
  @ocaml.doc("Allow or disallow jobs that specify HTTPS inputs.") @as("HttpsInputs")
  httpsInputs: option<inputPolicy>,
  @ocaml.doc("Allow or disallow jobs that specify HTTP inputs.") @as("HttpInputs")
  httpInputs: option<inputPolicy>,
}
@ocaml.doc("Required when you set Codec, under AudioDescriptions>CodecSettings, to the value OPUS.")
type opusSettings = {
  @ocaml.doc(
    "Optional. Sample rate in hz. Valid values are 16000, 24000, and 48000. The default value is 48000."
  )
  @as("SampleRate")
  sampleRate: option<__integerMin16000Max48000>,
  @ocaml.doc(
    "Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2."
  )
  @as("Channels")
  channels: option<__integerMin1Max2>,
  @ocaml.doc(
    "Optional. Specify the average bitrate in bits per second. Valid values are multiples of 8000, from 32000 through 192000. The default value is 96000, which we recommend for quality and bandwidth."
  )
  @as("Bitrate")
  bitrate: option<__integerMin32000Max192000>,
}
@ocaml.doc("Noise reducer filter settings for temporal filter.")
type noiseReducerTemporalFilterSettings = {
  @ocaml.doc(
    "Specify the strength of the noise reducing filter on this output. Higher values produce stronger filtering. We recommend the following value ranges, depending on the result that you want: * 0-2 for complexity reduction with minimal sharpness loss * 2-8 for complexity reduction with image preservation * 8-16 for a high level of complexity reduction"
  )
  @as("Strength")
  strength: option<__integerMin0Max16>,
  @ocaml.doc(
    "The speed of the filter (higher number is faster). Low setting reduces bit rate at the cost of transcode time, high setting improves transcode time at the cost of bit rate."
  )
  @as("Speed")
  speed: option<__integerMinNegative1Max3>,
  @ocaml.doc(
    "Use Post temporal sharpening strength (postTemporalSharpeningStrength) to define the amount of sharpening the transcoder applies to your output. Set Post temporal sharpening strength to Low (LOW), Medium (MEDIUM), or High (HIGH) to indicate the amount of sharpening."
  )
  @as("PostTemporalSharpeningStrength")
  postTemporalSharpeningStrength: option<noiseFilterPostTemporalSharpeningStrength>,
  @ocaml.doc(
    "When you set Noise reducer (noiseReducer) to Temporal (TEMPORAL), the bandwidth and sharpness of your output is reduced. You can optionally use Post temporal sharpening (postTemporalSharpening) to apply sharpening to the edges of your output. Note that Post temporal sharpening will also make the bandwidth reduction from the Noise reducer smaller. The default behavior, Auto (AUTO), allows the transcoder to determine whether to apply sharpening, depending on your input type and quality. When you set Post temporal sharpening to Enabled (ENABLED), specify how much sharpening is applied using Post temporal sharpening strength (postTemporalSharpeningStrength). Set Post temporal sharpening to Disabled (DISABLED) to not apply sharpening."
  )
  @as("PostTemporalSharpening")
  postTemporalSharpening: option<noiseFilterPostTemporalSharpening>,
  @ocaml.doc(
    "Use Aggressive mode for content that has complex motion. Higher values produce stronger temporal filtering. This filters highly complex scenes more aggressively and creates better VQ for low bitrate outputs."
  )
  @as("AggressiveMode")
  aggressiveMode: option<__integerMin0Max4>,
}
@ocaml.doc("Noise reducer filter settings for spatial filter.")
type noiseReducerSpatialFilterSettings = {
  @ocaml.doc(
    "Relative strength of noise reducing filter. Higher values produce stronger filtering."
  )
  @as("Strength")
  strength: option<__integerMin0Max16>,
  @ocaml.doc(
    "The speed of the filter, from -2 (lower speed) to 3 (higher speed), with 0 being the nominal value."
  )
  @as("Speed")
  speed: option<__integerMinNegative2Max3>,
  @ocaml.doc(
    "Specify strength of post noise reduction sharpening filter, with 0 disabling the filter and 3 enabling it at maximum strength."
  )
  @as("PostFilterSharpenStrength")
  postFilterSharpenStrength: option<__integerMin0Max3>,
}
@ocaml.doc("Settings for a noise reducer filter")
type noiseReducerFilterSettings = {
  @ocaml.doc(
    "Relative strength of noise reducing filter. Higher values produce stronger filtering."
  )
  @as("Strength")
  strength: option<__integerMin0Max3>,
}
@ocaml.doc(
  "Ignore these settings unless you are using Nielsen non-linear watermarking. Specify the values that  MediaConvert uses to generate and place Nielsen watermarks in your output audio. In addition to  specifying these values, you also need to set up your cloud TIC server. These settings apply to  every output in your job. The MediaConvert implementation is currently with the following Nielsen versions: Nielsen Watermark SDK Version 5.2.1 Nielsen NLM Watermark Engine Version 1.2.7 Nielsen Watermark Authenticator [SID_TIC] Version [5.0.0]"
)
type nielsenNonLinearWatermarkSettings = {
  @ocaml.doc(
    "To create assets that have the same TIC values in each audio track, keep the default value Share TICs (SAME_TICS_PER_TRACK). To create assets that have unique TIC values for each audio track, choose Use unique TICs (RESERVE_UNIQUE_TICS_PER_TRACK)."
  )
  @as("UniqueTicPerAudioTrack")
  uniqueTicPerAudioTrack: option<nielsenUniqueTicPerAudioTrackType>,
  @ocaml.doc(
    "Specify the endpoint for the TIC server that you have deployed and configured in the AWS Cloud. Required for all Nielsen non-linear watermarking. MediaConvert can't connect directly to a TIC server. Instead, you must use API Gateway to provide a RESTful interface between MediaConvert and a TIC server that you deploy in your AWS account. For more information on deploying a TIC server in your AWS account and the required API Gateway, contact Nielsen support."
  )
  @as("TicServerUrl")
  ticServerUrl: option<__stringPatternHttps>,
  @ocaml.doc(
    "Required. Specify whether your source content already contains Nielsen non-linear watermarks. When you set this value to Watermarked (WATERMARKED), the service fails the job. Nielsen requires that you add non-linear watermarking to only clean content that doesn't already  have non-linear Nielsen watermarks."
  )
  @as("SourceWatermarkStatus")
  sourceWatermarkStatus: option<nielsenSourceWatermarkStatusType>,
  @ocaml.doc(
    "Use the SID that Nielsen provides to you. This source ID should be unique to your Nielsen account but common to all of your output assets. Required for all Nielsen non-linear watermarking. This ID should be unique to your Nielsen account but common to all of your output assets. Required for all Nielsen non-linear watermarking."
  )
  @as("SourceId")
  sourceId: option<__integerMin0Max65534>,
  @ocaml.doc(
    "Specify the Amazon S3 location where you want MediaConvert to save your Nielsen non-linear metadata .zip file. This Amazon S3 bucket must be in the same Region as the one where you do your MediaConvert transcoding. If you want to include an ADI file in this .zip file, use the setting ADI file (adiFilename) to specify it. MediaConvert delivers the Nielsen metadata .zip files only to your metadata destination Amazon S3 bucket. It doesn't deliver the .zip files to Nielsen. You are responsible for delivering the metadata .zip files to Nielsen."
  )
  @as("MetadataDestination")
  metadataDestination: option<__stringPatternS3>,
  @ocaml.doc("Optional. If this asset uses an episode ID with Nielsen, provide it here.")
  @as("EpisodeId")
  episodeId: option<__stringMin1Max20>,
  @ocaml.doc(
    "Use the CSID that Nielsen provides to you. This CBET source ID should be unique to your Nielsen account but common to all of your output assets that have CBET watermarking. Required when you choose a value for the setting Watermark types (ActiveWatermarkProcess) that includes CBET."
  )
  @as("CbetSourceId")
  cbetSourceId: option<__stringPattern0xAFaF0908190908>,
  @ocaml.doc(
    "Use the asset name that you provide to Nielsen for this asset. Required for all Nielsen non-linear watermarking."
  )
  @as("AssetName")
  assetName: option<__stringMin1Max50>,
  @ocaml.doc(
    "Use the asset ID that you provide to Nielsen to uniquely identify this asset. Required for all Nielsen non-linear watermarking."
  )
  @as("AssetId")
  assetId: option<__stringMin1Max20>,
  @ocaml.doc(
    "Optional. Use this setting when you want the service to include an ADI file in the Nielsen  metadata .zip file. To provide an ADI file, store it in Amazon S3 and provide a URL to it  here. The URL should be in the following format: S3://bucket/path/ADI-file. For more information about the metadata .zip file, see the setting Metadata destination (metadataDestination)."
  )
  @as("AdiFilename")
  adiFilename: option<__stringPatternS3>,
  @ocaml.doc(
    "Choose the type of Nielsen watermarks that you want in your outputs. When you choose NAES 2 and NW (NAES2_AND_NW), you must provide a value for the setting SID (sourceId). When you choose CBET (CBET), you must provide a value for the setting CSID (cbetSourceId). When you choose NAES 2, NW, and CBET (NAES2_AND_NW_AND_CBET), you must provide values for both of these settings."
  )
  @as("ActiveWatermarkProcess")
  activeWatermarkProcess: option<nielsenActiveWatermarkProcessType>,
}
@ocaml.doc(
  "Settings for your Nielsen configuration. If you don't do Nielsen measurement and analytics, ignore these settings. When you enable Nielsen configuration (nielsenConfiguration), MediaConvert enables PCM to ID3 tagging for all outputs in the job. To enable Nielsen configuration programmatically, include an instance of nielsenConfiguration in your JSON job specification. Even if you don't include any children of nielsenConfiguration, you still enable the setting."
)
type nielsenConfiguration = {
  @ocaml.doc(
    "Use Distributor ID (DistributorID) to specify the distributor ID that is assigned to your organization by Neilsen."
  )
  @as("DistributorId")
  distributorId: option<__string>,
  @ocaml.doc(
    "Nielsen has discontinued the use of breakout code functionality. If you must include this property, set the value to zero."
  )
  @as("BreakoutCode")
  breakoutCode: option<__integerMin0Max0>,
}
@ocaml.doc(
  "For forensic video watermarking, MediaConvert supports Nagra NexGuard File Marker watermarking. MediaConvert supports both PreRelease Content (NGPR/G2) and OTT Streaming workflows."
)
type nexGuardFileMarkerSettings = {
  @ocaml.doc(
    "Optional. Ignore this setting unless Nagra support directs you to specify a value. When you don't specify a value here, the Nagra NexGuard library uses its default value."
  )
  @as("Strength")
  strength: option<watermarkingStrength>,
  @ocaml.doc(
    "Enter one of the watermarking preset strings that Nagra provides you. Required when you include Nagra NexGuard File Marker watermarking (NexGuardWatermarkingSettings) in your job."
  )
  @as("Preset")
  preset: option<__stringMin1Max256>,
  @ocaml.doc(
    "Specify the payload ID that you want associated with this output. Valid values vary depending on your Nagra NexGuard forensic watermarking workflow. Required when you include Nagra NexGuard File Marker watermarking (NexGuardWatermarkingSettings) in your job. For PreRelease Content (NGPR/G2), specify an integer from 1 through 4,194,303. You must generate a unique ID for each asset you watermark, and keep a record of which ID you have assigned to each asset. Neither Nagra nor MediaConvert keep track of the relationship between output files and your IDs. For OTT Streaming, create two adaptive bitrate (ABR) stacks for each asset. Do this by setting up two output groups. For one output group, set the value of Payload ID (payload) to 0 in every output. For the other output group, set Payload ID (payload) to 1 in every output."
  )
  @as("Payload")
  payload: option<__integerMin0Max4194303>,
  @ocaml.doc(
    "Use the base64 license string that Nagra provides you. Enter it directly in your JSON job specification or in the console. Required when you include Nagra NexGuard File Marker watermarking (NexGuardWatermarkingSettings) in your job."
  )
  @as("License")
  license: option<__stringMin1Max100000>,
}
@ocaml.doc(
  "Specify the XAVC profile settings for MXF outputs when you set your MXF profile to XAVC."
)
type mxfXavcProfileSettings = {
  @ocaml.doc(
    "Specify a value for this setting only for outputs that you set up with one of these two XAVC profiles: XAVC HD Intra CBG (XAVC_HD_INTRA_CBG) or XAVC 4K Intra CBG (XAVC_4K_INTRA_CBG). Specify the amount of space in each frame that the service reserves for ancillary data, such as teletext captions. The default value for this setting is 1492 bytes per frame. This should be sufficient to prevent overflow unless you have multiple pages of teletext captions data. If you have a large amount of teletext data, specify a larger number."
  )
  @as("MaxAncDataSize")
  maxAncDataSize: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "To create an output that complies with the XAVC file format guidelines for interoperability, keep the default value, Drop frames for compliance (DROP_FRAMES_FOR_COMPLIANCE). To include all frames from your input in this output, keep the default setting, Allow any duration (ALLOW_ANY_DURATION). The number of frames that MediaConvert excludes when you set this to Drop frames for compliance depends on the output frame rate and duration."
  )
  @as("DurationMode")
  durationMode: option<mxfXavcDurationMode>,
}
@ocaml.doc(
  "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2."
)
type mpeg2Settings = {
  @ocaml.doc(
    "Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization)."
  )
  @as("TemporalAdaptiveQuantization")
  temporalAdaptiveQuantization: option<mpeg2TemporalAdaptiveQuantization>,
  @ocaml.doc(
    "When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine (HARD) produces a 29.97i output. Soft telecine (SOFT) produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture."
  )
  @as("Telecine")
  telecine: option<mpeg2Telecine>,
  @ocaml.doc(
    "Specify whether this output's video uses the D10 syntax. Keep the default value to  not use the syntax. Related settings: When you choose D10 (D_10) for your MXF  profile (profile), you must also set this value to to D10 (D_10)."
  )
  @as("Syntax")
  syntax: option<mpeg2Syntax>,
  @ocaml.doc(
    "Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher."
  )
  @as("SpatialAdaptiveQuantization")
  spatialAdaptiveQuantization: option<mpeg2SpatialAdaptiveQuantization>,
  @ocaml.doc(
    "Ignore this setting unless you need to comply with a specification that requires a specific value. If you don't have a specification requirement, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness (sharpness) or by enabling a noise reducer filter (noiseReducerFilter). The Softness (softness) setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, to use the AWS Elemental default matrices. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video."
  )
  @as("Softness")
  softness: option<__integerMin0Max128>,
  @ocaml.doc(
    "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
  )
  @as("SlowPal")
  slowPal: option<mpeg2SlowPal>,
  @ocaml.doc(
    "Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default."
  )
  @as("SceneChangeDetect")
  sceneChangeDetect: option<mpeg2SceneChangeDetect>,
  @ocaml.doc(
    "Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE)."
  )
  @as("ScanTypeConversionMode")
  scanTypeConversionMode: option<mpeg2ScanTypeConversionMode>,
  @ocaml.doc(
    "Use Rate control mode (Mpeg2RateControlMode) to specify whether the bitrate is variable (vbr) or constant (cbr)."
  )
  @as("RateControlMode")
  rateControlMode: option<mpeg2RateControlMode>,
  @ocaml.doc(
    "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
  )
  @as("QualityTuningLevel")
  qualityTuningLevel: option<mpeg2QualityTuningLevel>,
  @ocaml.doc(
    "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40."
  )
  @as("ParNumerator")
  parNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33."
  )
  @as("ParDenominator")
  parDenominator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
  )
  @as("ParControl")
  parControl: option<mpeg2ParControl>,
  @ocaml.doc(
    "Specify the number of B-frames that MediaConvert puts between reference frames in this output. Valid values are whole numbers from 0 through 7. When you don't specify a value, MediaConvert defaults to 2."
  )
  @as("NumberBFramesBetweenReferenceFrames")
  numberBFramesBetweenReferenceFrames: option<__integerMin0Max7>,
  @ocaml.doc(
    "Use this setting only when you also enable Scene change detection (SceneChangeDetect). This setting determines how the encoder manages the spacing between I-frames that it inserts as part of the I-frame cadence and the I-frames that it inserts for Scene change detection. When you specify a value for this setting, the encoder determines whether to skip a cadence-driven I-frame by the value you set. For example, if you set Min I interval (minIInterval) to 5 and a cadence-driven I-frame would fall within 5 frames of a scene-change I-frame, then the encoder skips the cadence-driven I-frame. In this way, one GOP is shrunk slightly and one GOP is stretched slightly. When the cadence-driven I-frames are farther from the scene-change I-frame than the value you set, then the encoder leaves all I-frames in place and the GOPs surrounding the scene change are smaller than the usual cadence GOPs."
  )
  @as("MinIInterval")
  minIInterval: option<__integerMin0Max30>,
  @ocaml.doc(
    "Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000."
  )
  @as("MaxBitrate")
  maxBitrate: option<__integerMin1000Max300000000>,
  @ocaml.doc(
    "Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio."
  )
  @as("IntraDcPrecision")
  intraDcPrecision: option<mpeg2IntraDcPrecision>,
  @ocaml.doc(
    "Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose."
  )
  @as("InterlaceMode")
  interlaceMode: option<mpeg2InterlaceMode>,
  @ocaml.doc(
    "Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000."
  )
  @as("HrdBufferSize")
  hrdBufferSize: option<__integerMin0Max47185920>,
  @ocaml.doc("Percentage of the buffer that should initially be filled (HRD buffer model).")
  @as("HrdBufferInitialFillPercentage")
  hrdBufferInitialFillPercentage: option<__integerMin0Max100>,
  @ocaml.doc(
    "Specify the units for GOP size (GopSize). If you don't specify a value here, by default the encoder measures GOP size in frames."
  )
  @as("GopSizeUnits")
  gopSizeUnits: option<mpeg2GopSizeUnits>,
  @ocaml.doc(
    "Specify the interval between keyframes, in seconds or frames, for this output. Default: 12 Related settings: When you specify the GOP size in seconds, set GOP mode control (GopSizeUnits) to Specified, seconds (SECONDS). The default value for GOP mode control (GopSizeUnits) is Frames (FRAMES)."
  )
  @as("GopSize")
  gopSize: option<__doubleMin0>,
  @ocaml.doc(
    "Specify the relative frequency of open to closed GOPs in this output. For example, if you want to allow four open GOPs and then require a closed GOP, set this value to 5. When you create a streaming output, we recommend that you keep the default value, 1, so that players starting mid-stream receive an IDR frame as quickly as possible. Don't set this value to 0; that would break output segmenting."
  )
  @as("GopClosedCadence")
  gopClosedCadence: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin24Max60000>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max1001>,
  @ocaml.doc(
    "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
  )
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<mpeg2FramerateConversionAlgorithm>,
  @ocaml.doc(
    "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
  )
  @as("FramerateControl")
  framerateControl: option<mpeg2FramerateControl>,
  @ocaml.doc(
    "Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames)."
  )
  @as("DynamicSubGop")
  dynamicSubGop: option<mpeg2DynamicSubGop>,
  @ocaml.doc("Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video output.")
  @as("CodecProfile")
  codecProfile: option<mpeg2CodecProfile>,
  @ocaml.doc("Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video output.")
  @as("CodecLevel")
  codecLevel: option<mpeg2CodecLevel>,
  @ocaml.doc(
    "Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000."
  )
  @as("Bitrate")
  bitrate: option<__integerMin1000Max288000000>,
  @ocaml.doc(
    "Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to the following settings: Spatial adaptive quantization (spatialAdaptiveQuantization), and Temporal adaptive quantization (temporalAdaptiveQuantization)."
  )
  @as("AdaptiveQuantization")
  adaptiveQuantization: option<mpeg2AdaptiveQuantization>,
}
@ocaml.doc(
  "These settings relate to the fragmented MP4 container for the segments in your DASH outputs."
)
type mpdSettings = {
  @ocaml.doc(
    "To include ID3 metadata in this output: Set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH). Specify this ID3 metadata in Custom ID3 metadata inserter (timedMetadataInsertion). MediaConvert writes each instance of ID3 metadata in a separate Event Message (eMSG) box. To exclude this ID3 metadata: Set ID3 metadata to None (NONE) or leave blank."
  )
  @as("TimedMetadata")
  timedMetadata: option<mpdTimedMetadata>,
  @ocaml.doc(
    "Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output."
  )
  @as("Scte35Source")
  scte35Source: option<mpdScte35Source>,
  @ocaml.doc(
    "Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml)."
  )
  @as("Scte35Esam")
  scte35Esam: option<mpdScte35Esam>,
  @ocaml.doc(
    "Use this setting only in DASH output groups that include sidecar TTML or IMSC captions.  You specify sidecar captions in a separate output from your audio and video. Choose Raw (RAW) for captions in a single XML file in a raw container. Choose Fragmented MPEG-4 (FRAGMENTED_MP4) for captions in XML format contained within fragmented MP4 files. This set of fragmented MP4 files is separate from your video and audio fragmented MP4 files."
  )
  @as("CaptionContainerType")
  captionContainerType: option<mpdCaptionContainerType>,
  @ocaml.doc(
    "Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec."
  )
  @as("AudioDuration")
  audioDuration: option<mpdAudioDuration>,
  @ocaml.doc(
    "Optional. Choose Include (INCLUDE) to have MediaConvert mark up your DASH manifest with <Accessibility> elements for embedded 608 captions. This markup isn't generally required, but some video players require it to discover and play embedded 608 captions. Keep the default value, Exclude (EXCLUDE), to leave these elements out. When you enable this setting, this is the markup that MediaConvert includes in your manifest: <Accessibility schemeIdUri=\"urn:scte:dash:cc:cea-608:2015\" value=\"CC1=eng\"/>"
  )
  @as("AccessibilityCaptionHints")
  accessibilityCaptionHints: option<mpdAccessibilityCaptionHints>,
}
@ocaml.doc(
  "These settings relate to your MP4 output container. You can create audio only outputs with this container. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/supported-codecs-containers-audio-only.html#output-codecs-and-containers-supported-for-audio-only."
)
type mp4Settings = {
  @ocaml.doc(
    "Overrides the \"Major Brand\" field in the output file. Usually not necessary to specify."
  )
  @as("Mp4MajorBrand")
  mp4MajorBrand: option<__string>,
  @ocaml.doc(
    "If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end."
  )
  @as("MoovPlacement")
  moovPlacement: option<mp4MoovPlacement>,
  @ocaml.doc("Inserts a free-space box immediately after the moov box.") @as("FreeSpaceBox")
  freeSpaceBox: option<mp4FreeSpaceBox>,
  @ocaml.doc(
    "Ignore this setting unless compliance to the CTTS box version specification matters in your workflow. Specify a value of 1 to set your CTTS box version to 1 and make your output compliant with the specification. When you specify a value of 1, you must also set CSLG atom (cslgAtom) to the value INCLUDE. Keep the default value 0 to set your CTTS box version to 0. This can provide backward compatibility for some players and packagers."
  )
  @as("CttsVersion")
  cttsVersion: option<__integerMin0Max1>,
  @ocaml.doc(
    "When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools."
  )
  @as("CslgAtom")
  cslgAtom: option<mp4CslgAtom>,
  @ocaml.doc(
    "Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec."
  )
  @as("AudioDuration")
  audioDuration: option<cmfcAudioDuration>,
}
@ocaml.doc("Required when you set Codec, under AudioDescriptions>CodecSettings, to the value MP3.")
type mp3Settings = {
  @ocaml.doc(
    "Required when you set Bitrate control mode (rateControlMode) to VBR. Specify the audio quality of this MP3 output from 0 (highest quality) to 9 (lowest quality)."
  )
  @as("VbrQuality")
  vbrQuality: option<__integerMin0Max9>,
  @ocaml.doc("Sample rate in hz.") @as("SampleRate") sampleRate: option<__integerMin22050Max48000>,
  @ocaml.doc(
    "Specify whether the service encodes this MP3 audio output with a constant bitrate (CBR) or a variable bitrate (VBR)."
  )
  @as("RateControlMode")
  rateControlMode: option<mp3RateControlMode>,
  @ocaml.doc(
    "Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2."
  )
  @as("Channels")
  channels: option<__integerMin1Max2>,
  @ocaml.doc("Specify the average bitrate in bits per second.") @as("Bitrate")
  bitrate: option<__integerMin16000Max320000>,
}
@ocaml.doc(
  "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value MP2."
)
type mp2Settings = {
  @ocaml.doc("Sample rate in hz.") @as("SampleRate") sampleRate: option<__integerMin32000Max48000>,
  @ocaml.doc(
    "Set Channels to specify the number of channels in this output audio track. Choosing Mono in the console will give you 1 output channel; choosing Stereo will give you 2. In the API, valid values are 1 and 2."
  )
  @as("Channels")
  channels: option<__integerMin1Max2>,
  @ocaml.doc("Specify the average bitrate in bits per second.") @as("Bitrate")
  bitrate: option<__integerMin32000Max384000>,
}
@ocaml.doc("These settings relate to your QuickTime MOV output container.")
type movSettings = {
  @ocaml.doc("Always keep the default value (SELF_CONTAINED) for this setting.") @as("Reference")
  reference: option<movReference>,
  @ocaml.doc(
    "To make this output compatible with Omenon, keep the default value, OMNEON. Unless you need Omneon compatibility, set this value to NONE. When you keep the default value, OMNEON, MediaConvert increases the length of the edit list atom. This might cause file rejections when a recipient of the output file doesn't expct this extra padding."
  )
  @as("PaddingControl")
  paddingControl: option<movPaddingControl>,
  @ocaml.doc(
    "When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2."
  )
  @as("Mpeg2FourCCControl")
  mpeg2FourCCControl: option<movMpeg2FourCCControl>,
  @ocaml.doc(
    "When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools."
  )
  @as("CslgAtom")
  cslgAtom: option<movCslgAtom>,
  @ocaml.doc("When enabled, include 'clap' atom if appropriate for the video output settings.")
  @as("ClapAtom")
  clapAtom: option<movClapAtom>,
}
@ocaml.doc(
  "Specify the offset between the upper-left corner of the video frame and the top left corner of the overlay."
)
type motionImageInsertionOffset = {
  @ocaml.doc(
    "Set the distance, in pixels, between the overlay and the top edge of the video frame."
  )
  @as("ImageY")
  imageY: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Set the distance, in pixels, between the overlay and the left edge of the video frame."
  )
  @as("ImageX")
  imageX: option<__integerMin0Max2147483647>,
}
@ocaml.doc(
  "For motion overlays that don't have a built-in frame rate, specify the frame rate of the overlay in frames per second, as a fraction. For example, specify 24 fps as 24/1. The overlay frame rate doesn't need to match the frame rate of the underlying video."
)
type motionImageInsertionFramerate = {
  @ocaml.doc(
    "The top of the fraction that expresses your overlay frame rate. For example, if your frame rate is 24 fps, set this value to 24."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin1Max2147483640>,
  @ocaml.doc(
    "The bottom of the fraction that expresses your overlay frame rate. For example, if your frame rate is 24 fps, set this value to 1."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max17895697>,
}
@ocaml.doc(
  "Settings for SCTE-35 signals from ESAM. Include this in your job settings to put SCTE-35 markers in your HLS and transport stream outputs at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml)."
)
type m2tsScte35Esam = {
  @ocaml.doc(
    "Packet Identifier (PID) of the SCTE-35 stream in the transport stream generated by ESAM."
  )
  @as("Scte35EsamPid")
  scte35EsamPid: option<__integerMin32Max8182>,
}
@ocaml.doc(
  "Use these settings only when you use Kantar watermarking. Specify the values that MediaConvert uses to generate and place Kantar watermarks in your output audio. These settings apply to every output in your job. In addition to specifying these values, you also need to store your Kantar credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html."
)
type kantarWatermarkSettings = {
  @ocaml.doc(
    "Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters."
  )
  @as("Metadata8")
  metadata8: option<__stringMin1Max50>,
  @ocaml.doc(
    "Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters."
  )
  @as("Metadata7")
  metadata7: option<__stringMin1Max50>,
  @ocaml.doc(
    "Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters."
  )
  @as("Metadata6")
  metadata6: option<__stringMin1Max50>,
  @ocaml.doc(
    "Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters."
  )
  @as("Metadata5")
  metadata5: option<__stringMin1Max50>,
  @ocaml.doc(
    "Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters."
  )
  @as("Metadata4")
  metadata4: option<__stringMin1Max50>,
  @ocaml.doc(
    "You can optionally use this field to specify the first timestamp that Kantar embeds during watermarking. Kantar suggests that you be very cautious when using this Kantar feature, and that you use it only on channels that are managed specifically for use with this feature by your Audience Measurement Operator. For more information about this feature, contact Kantar technical support."
  )
  @as("Metadata3")
  metadata3: option<__stringMin1Max50>,
  @ocaml.doc(
    "Optional. Specify the Amazon S3 bucket where you want MediaConvert to store your Kantar watermark XML logs. When you don't specify a bucket, MediaConvert doesn't save these logs. Note that your MediaConvert service role must provide access to this location. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html"
  )
  @as("LogDestination")
  logDestination: option<__stringPatternS3>,
  @ocaml.doc(
    "Provide the HTTPS endpoint to the Kantar server. You should get this endpoint from Kantar."
  )
  @as("KantarServerUrl")
  kantarServerUrl: option<__stringPatternHttpsKantarmediaCom>,
  @ocaml.doc("Provide your Kantar license ID number. You should get this number from Kantar.")
  @as("KantarLicenseId")
  kantarLicenseId: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Optional. Specify an offset, in whole seconds, from the start of your output and the beginning of the watermarking. When you don't specify an offset, Kantar defaults to zero."
  )
  @as("FileOffset")
  fileOffset: option<__doubleMin0>,
  @ocaml.doc(
    "Provide the name of the AWS Secrets Manager secret where your Kantar credentials are stored. Note that your MediaConvert service role must provide access to this secret. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/granting-permissions-for-mediaconvert-to-access-secrets-manager-secret.html. For instructions on creating a secret, see https://docs.aws.amazon.com/secretsmanager/latest/userguide/tutorials_basic.html, in the AWS Secrets Manager User Guide."
  )
  @as("CredentialsSecretName")
  credentialsSecretName: option<__stringMin1Max512PatternAZAZ09>,
  @ocaml.doc("Specify a unique identifier for Kantar to use for this piece of content.")
  @as("ContentReference")
  contentReference: option<__stringMin1Max50PatternAZAZ09>,
  @ocaml.doc("Provide an audio channel name from your Kantar audio license.") @as("ChannelName")
  channelName: option<__stringMin1Max20>,
}
@ocaml.doc(
  "These settings apply to a specific graphic overlay. You can include multiple overlays in your job."
)
type insertableImage = {
  @ocaml.doc(
    "Specify the width of the inserted image in pixels. If you specify a value that's larger than the video resolution width, the service will crop your overlaid image to fit. To use the native width of the image, keep this setting blank."
  )
  @as("Width")
  width: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify the timecode of the frame that you want the overlay to first appear on. This must be in timecode (HH:MM:SS:FF or HH:MM:SS;FF) format. Remember to take into account your timecode source settings."
  )
  @as("StartTime")
  startTime: option<__stringPattern01D20305D205D>,
  @ocaml.doc(
    "Use Opacity (Opacity) to specify how much of the underlying video shows through the inserted image. 0 is transparent and 100 is fully opaque. Default is 50."
  )
  @as("Opacity")
  opacity: option<__integerMin0Max100>,
  @ocaml.doc(
    "Specify how overlapping inserted images appear. Images with higher values for Layer appear on top of images with lower values for Layer."
  )
  @as("Layer")
  layer: option<__integerMin0Max99>,
  @ocaml.doc(
    "Specify the distance, in pixels, between the overlaid image and the top edge of the video frame. Required for any image overlay that you specify."
  )
  @as("ImageY")
  imageY: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify the distance, in pixels, between the inserted image and the left edge of the video frame. Required for any image overlay that you specify."
  )
  @as("ImageX")
  imageX: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify the HTTP, HTTPS, or Amazon S3 location of the image that you want to overlay on the video. Use a PNG or TGA file."
  )
  @as("ImageInserterInput")
  imageInserterInput: option<__stringMin14PatternS3BmpBMPPngPNGTgaTGAHttpsBmpBMPPngPNGTgaTGA>,
  @ocaml.doc(
    "Specify the height of the inserted image in pixels. If you specify a value that's larger than the video resolution height, the service will crop your overlaid image to fit. To use the native height of the image, keep this setting blank."
  )
  @as("Height")
  height: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify the length of time, in milliseconds, between the end of the time that you have specified for the image overlay Duration and when the overlaid image has faded to total transparency. If you don't specify a value for Fade-out, the image will disappear abruptly at the end of the inserted image duration."
  )
  @as("FadeOut")
  fadeOut: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify the length of time, in milliseconds, between the Start time that you specify for the image insertion and the time that the image appears at full opacity. Full opacity is the level that you specify for the opacity setting. If you don't specify a value for Fade-in, the image will appear abruptly at the overlay start time."
  )
  @as("FadeIn")
  fadeIn: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify the time, in milliseconds, for the image to remain on the output video. This duration includes fade-in time but not fade-out time."
  )
  @as("Duration")
  duration: option<__integerMin0Max2147483647>,
}
@ocaml.doc(
  "Settings for decrypting any input files that you encrypt before you upload them to Amazon S3. MediaConvert can decrypt files only when you use AWS Key Management Service (KMS) to encrypt the data key that you use to encrypt your content."
)
type inputDecryptionSettings = {
  @ocaml.doc(
    "Specify the AWS Region for AWS Key Management Service (KMS) that you used to encrypt your data key, if that Region is different from the one you are using for AWS Elemental MediaConvert."
  )
  @as("KmsKeyRegion")
  kmsKeyRegion: option<__stringMin9Max19PatternAZ26EastWestCentralNorthSouthEastWest1912>,
  @ocaml.doc(
    "Specify the initialization vector that you used when you encrypted your content before uploading it to Amazon S3. You can use a 16-byte initialization vector with any encryption mode. Or, you can use a 12-byte initialization vector with GCM or CTR. MediaConvert accepts only initialization vectors that are base64-encoded."
  )
  @as("InitializationVector")
  initializationVector: option<__stringMin16Max24PatternAZaZ0922AZaZ0916>,
  @ocaml.doc(
    "Warning! Don't provide your encryption key in plaintext. Your job settings could be intercepted, making your encrypted content vulnerable. Specify the encrypted version of the data key that you used to encrypt your content. The data key must be encrypted by AWS Key Management Service (KMS). The key can be 128, 192, or 256 bits."
  )
  @as("EncryptedDecryptionKey")
  encryptedDecryptionKey: option<__stringMin24Max512PatternAZaZ0902>,
  @ocaml.doc("Specify the encryption mode that you used to encrypt your input files.")
  @as("DecryptionMode")
  decryptionMode: option<decryptionMode>,
}
@ocaml.doc(
  "To transcode only portions of your input, include one input clip for each part of your input that you want in your output. All input clips that you specify will be included in every output of the job. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/assembling-multiple-inputs-and-input-clips.html."
)
type inputClipping = {
  @ocaml.doc(
    "Set Start timecode (StartTimecode) to the beginning of the portion of the input you are clipping. The frame corresponding to the Start timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When choosing this value, take into account your setting for Input timecode source. For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to begin five minutes into the video, use 01:05:00:00."
  )
  @as("StartTimecode")
  startTimecode: option<__stringPattern010920405090509092>,
  @ocaml.doc(
    "Set End timecode (EndTimecode) to the end of the portion of the input you are clipping. The frame corresponding to the End timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When choosing this value, take into account your setting for timecode source under input settings (InputTimecodeSource). For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to end six minutes into the video, use 01:06:00:00."
  )
  @as("EndTimecode")
  endTimecode: option<__stringPattern010920405090509092>,
}
@ocaml.doc(
  "Settings related to IMSC captions. IMSC is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to IMSC."
)
type imscDestinationSettings = {
  @ocaml.doc(
    "Keep this setting enabled to have MediaConvert use the font style and position information from the captions source in the output. This option is available only when your input captions are IMSC, SMPTE-TT, or TTML. Disable this setting for simplified output captions."
  )
  @as("StylePassthrough")
  stylePassthrough: option<imscStylePassthrough>,
  @ocaml.doc(
    "Set Accessibility subtitles (Accessibility) to Enabled (ENABLED) if the ISMC or WebVTT captions track is intended to provide accessibility for people who are deaf or hard of hearing. When you enable this feature, MediaConvert adds the following attributes under EXT-X-MEDIA in the HLS or CMAF manifest for this track: CHARACTERISTICS=\"public.accessibility.describes-spoken-dialog,public.accessibility.describes-music-and-sound\" and AUTOSELECT=\"YES\". Keep the default value, Disabled (DISABLED), if the captions track is not intended to provide such accessibility. MediaConvert will not add the above attributes."
  )
  @as("Accessibility")
  accessibility: option<imscAccessibilitySubs>,
}
@ocaml.doc(
  "To insert ID3 tags in your output, specify two values. Use ID3 tag (Id3) to specify the base 64 encoded string and use Timecode (TimeCode) to specify the time when the tag should be inserted. To insert multiple ID3 tags in your output, create multiple instances of ID3 insertion (Id3Insertion)."
)
type id3Insertion = {
  @ocaml.doc("Provide a Timecode (TimeCode) in HH:MM:SS:FF or HH:MM:SS;FF format.") @as("Timecode")
  timecode: option<__stringPattern010920405090509092>,
  @ocaml.doc("Use ID3 tag (Id3) to provide a fully formed ID3 tag in base64-encode format.")
  @as("Id3")
  id3: option<__stringPatternAZaZ0902>,
}
@ocaml.doc(
  "Optional. Configuration for a destination queue to which the job can hop once a customer-defined minimum wait time has passed."
)
type hopDestination = {
  @ocaml.doc(
    "Required for setting up a job to use queue hopping. Minimum wait time in minutes until the job can hop to the destination queue. Valid range is 1 to 1440 minutes, inclusive."
  )
  @as("WaitMinutes")
  waitMinutes: option<__integer>,
  @ocaml.doc(
    "Optional unless the job is submitted on the default queue. When you set up a job to use queue hopping, you can specify a destination queue. This queue cannot be the original queue to which the job is submitted. If the original queue isn't the default queue and you don't specify the destination queue, the job will move to the default queue."
  )
  @as("Queue")
  queue: option<__string>,
  @ocaml.doc(
    "Optional. When you set up a job to use queue hopping, you can specify a different relative priority for the job in the destination queue. If you don't specify, the relative priority will remain the same as in the previous queue."
  )
  @as("Priority")
  priority: option<__integerMinNegative50Max50>,
}
@ocaml.doc("Settings for HLS output groups")
type hlsSettings = {
  @ocaml.doc(
    "Use this setting to add an identifying string to the filename of each segment. The service adds this string between the name modifier and segment index number. You can use format identifiers in the string. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/using-variables-in-your-job-settings.html"
  )
  @as("SegmentModifier")
  segmentModifier: option<__string>,
  @ocaml.doc(
    "Choose Include (INCLUDE) to have MediaConvert generate a child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude (EXCLUDE)."
  )
  @as("IFrameOnlyManifest")
  iframeOnlyManifest: option<hlsIFrameOnlyManifest>,
  @ocaml.doc(
    "Specify whether to flag this audio track as descriptive video service (DVS) in your HLS parent manifest. When you choose Flag (FLAG), MediaConvert includes the parameter CHARACTERISTICS=\"public.accessibility.describes-video\" in the EXT-X-MEDIA entry for this track. When you keep the default choice, Don't flag (DONT_FLAG), MediaConvert leaves this parameter out. The DVS flag can help with accessibility on Apple devices. For more information, see the Apple documentation."
  )
  @as("DescriptiveVideoServiceFlag")
  descriptiveVideoServiceFlag: option<hlsDescriptiveVideoServiceFlag>,
  @ocaml.doc(
    "Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO"
  )
  @as("AudioTrackType")
  audioTrackType: option<hlsAudioTrackType>,
  @ocaml.doc(
    "List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','."
  )
  @as("AudioRenditionSets")
  audioRenditionSets: option<__string>,
  @ocaml.doc(
    "Use this setting only in audio-only outputs. Choose MPEG-2 Transport Stream (M2TS) to create a file in an MPEG2-TS container. Keep the default value Automatic (AUTOMATIC) to create an audio-only file in a raw container. Regardless of the value that you specify here, if this output has video, the service will place the output into an MPEG2-TS container."
  )
  @as("AudioOnlyContainer")
  audioOnlyContainer: option<hlsAudioOnlyContainer>,
  @ocaml.doc("Specifies the group to which the audio rendition belongs.") @as("AudioGroupId")
  audioGroupId: option<__string>,
}
@ocaml.doc(
  "Settings specific to audio sources in an HLS alternate rendition group. Specify the properties (renditionGroupId, renditionName or renditionLanguageCode) to identify the unique audio track among the alternative rendition groups present in the HLS manifest. If no unique track is found, or multiple tracks match the properties provided, the job fails. If no properties in hlsRenditionGroupSettings are specified, the default audio track within the video segment is chosen. If there is no audio within video segment, the alternative audio with DEFAULT=YES is chosen instead."
)
type hlsRenditionGroupSettings = {
  @ocaml.doc("Optional. Specify media name") @as("RenditionName") renditionName: option<__string>,
  @ocaml.doc("Optional. Specify ISO 639-2 or ISO 639-3 code in the language property")
  @as("RenditionLanguageCode")
  renditionLanguageCode: option<languageCode>,
  @ocaml.doc("Optional. Specify alternative group ID") @as("RenditionGroupId")
  renditionGroupId: option<__string>,
}
@ocaml.doc("Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED")
type hlsImageBasedTrickPlaySettings = {
  @ocaml.doc("Number of thumbnails in each row of a tile image.  Set a value between 1 and 512.")
  @as("TileWidth")
  tileWidth: option<__integerMin1Max512>,
  @ocaml.doc(
    "Number of thumbnails in each column of a tile image. Set a value between 2 and 2048. Must be divisible by 2."
  )
  @as("TileHeight")
  tileHeight: option<__integerMin1Max2048>,
  @ocaml.doc(
    "Width of each thumbnail within each tile image, in pixels.  Default is 312.  Must be divisible by 8."
  )
  @as("ThumbnailWidth")
  thumbnailWidth: option<__integerMin8Max4096>,
  @ocaml.doc(
    "Enter the interval, in seconds, that MediaConvert uses to generate thumbnails.  If the interval you enter doesn't align with the output frame rate, MediaConvert automatically rounds the interval to align with the output frame rate.  For example, if the output frame rate is 29.97 frames per second and you enter 5, MediaConvert uses a 150 frame interval to generate thumbnails."
  )
  @as("ThumbnailInterval")
  thumbnailInterval: option<__doubleMin0Max2147483647>,
  @ocaml.doc(
    "Height of each thumbnail within each tile image, in pixels.  Leave blank to maintain aspect ratio with thumbnail width.  If following the aspect ratio would lead to a total tile height greater than 4096, then the job will be rejected.  Must be divisible by 2."
  )
  @as("ThumbnailHeight")
  thumbnailHeight: option<__integerMin2Max4096>,
  @ocaml.doc(
    "The cadence MediaConvert follows for generating thumbnails.  If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence).  If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval."
  )
  @as("IntervalCadence")
  intervalCadence: option<hlsIntervalCadence>,
}
@ocaml.doc("Caption Language Mapping")
type hlsCaptionLanguageMapping = {
  @ocaml.doc("Caption language description.") @as("LanguageDescription")
  languageDescription: option<__string>,
  @ocaml.doc(
    "Specify the language, using the ISO 639-2 three-letter code listed at https://www.loc.gov/standards/iso639-2/php/code_list.php."
  )
  @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc(
    "Specify the language for this captions channel, using the ISO 639-2 or ISO 639-3 three-letter language code"
  )
  @as("CustomLanguageCode")
  customLanguageCode: option<__stringMin3Max3PatternAZaZ3>,
  @ocaml.doc("Caption channel.") @as("CaptionChannel")
  captionChannel: option<__integerMinNegative2147483648Max2147483647>,
}
@ocaml.doc("Setting for HDR10+ metadata insertion")
type hdr10Plus = {
  @ocaml.doc(
    "Specify the HDR10+ target display nominal peak luminance, in nits. This is the nominal maximum luminance of the target display as defined by ST 2094-40."
  )
  @as("TargetMonitorNits")
  targetMonitorNits: option<__integerMin0Max4000>,
  @ocaml.doc(
    "Specify the HDR10+ mastering display normalized peak luminance, in nits. This is the normalized actual peak luminance of the mastering display, as defined by ST 2094-40."
  )
  @as("MasteringMonitorNits")
  masteringMonitorNits: option<__integerMin0Max4000>,
}
@ocaml.doc(
  "Use these settings to specify static color calibration metadata, as defined by SMPTE ST 2086. These values don't affect the pixel values that are encoded in the video stream. They are intended to help the downstream video player display content in a way that reflects the intentions of the the content creator."
)
type hdr10Metadata = {
  @ocaml.doc(
    "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
  )
  @as("WhitePointY")
  whitePointY: option<__integerMin0Max50000>,
  @ocaml.doc(
    "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
  )
  @as("WhitePointX")
  whitePointX: option<__integerMin0Max50000>,
  @ocaml.doc(
    "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
  )
  @as("RedPrimaryY")
  redPrimaryY: option<__integerMin0Max50000>,
  @ocaml.doc(
    "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
  )
  @as("RedPrimaryX")
  redPrimaryX: option<__integerMin0Max50000>,
  @ocaml.doc(
    "Nominal minimum mastering display luminance in units of of 0.0001 candelas per square meter"
  )
  @as("MinLuminance")
  minLuminance: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Nominal maximum mastering display luminance in units of of 0.0001 candelas per square meter."
  )
  @as("MaxLuminance")
  maxLuminance: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Maximum average light level of any frame in the coded video sequence, in units of candelas per square meter. This setting doesn't have a default value; you must specify a value that is suitable for the content."
  )
  @as("MaxFrameAverageLightLevel")
  maxFrameAverageLightLevel: option<__integerMin0Max65535>,
  @ocaml.doc(
    "Maximum light level among all samples in the coded video sequence, in units of candelas per square meter.  This setting doesn't have a default value; you must specify a value that is suitable for the content."
  )
  @as("MaxContentLightLevel")
  maxContentLightLevel: option<__integerMin0Max65535>,
  @ocaml.doc(
    "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
  )
  @as("GreenPrimaryY")
  greenPrimaryY: option<__integerMin0Max50000>,
  @ocaml.doc(
    "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
  )
  @as("GreenPrimaryX")
  greenPrimaryX: option<__integerMin0Max50000>,
  @ocaml.doc(
    "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
  )
  @as("BluePrimaryY")
  bluePrimaryY: option<__integerMin0Max50000>,
  @ocaml.doc(
    "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
  )
  @as("BluePrimaryX")
  bluePrimaryX: option<__integerMin0Max50000>,
}
@ocaml.doc(
  "Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode (RateControlMode)."
)
type h265QvbrSettings = {
  @ocaml.doc(
    "Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33."
  )
  @as("QvbrQualityLevelFineTune")
  qvbrQualityLevelFineTune: option<__doubleMin0Max1>,
  @ocaml.doc(
    "Use this setting only when you set Rate control mode (RateControlMode) to QVBR. Specify the target quality level for this output. MediaConvert determines the right number of bits to use for each part of the video to maintain the video quality that you specify. When you keep the default value, AUTO, MediaConvert picks a quality level for you, based on characteristics of your input video. If you prefer to specify a quality level, specify a number from 1 through 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33."
  )
  @as("QvbrQualityLevel")
  qvbrQualityLevel: option<__integerMin1Max10>,
  @ocaml.doc(
    "Use this setting only when Rate control mode is QVBR and Quality tuning level is Multi-pass HQ. For Max average bitrate values suited to the complexity of your input video, the service limits the average bitrate of the video part of this output to the value that you choose. That is, the total size of the video element is less than or equal to the value you set multiplied by the number of seconds of encoded output."
  )
  @as("MaxAverageBitrate")
  maxAverageBitrate: option<__integerMin1000Max1466400000>,
}
@ocaml.doc(
  "Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode (RateControlMode)."
)
type h264QvbrSettings = {
  @ocaml.doc(
    "Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33."
  )
  @as("QvbrQualityLevelFineTune")
  qvbrQualityLevelFineTune: option<__doubleMin0Max1>,
  @ocaml.doc(
    "Use this setting only when you set Rate control mode (RateControlMode) to QVBR. Specify the target quality level for this output. MediaConvert determines the right number of bits to use for each part of the video to maintain the video quality that you specify. When you keep the default value, AUTO, MediaConvert picks a quality level for you, based on characteristics of your input video. If you prefer to specify a quality level, specify a number from 1 through 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33."
  )
  @as("QvbrQualityLevel")
  qvbrQualityLevel: option<__integerMin1Max10>,
  @ocaml.doc(
    "Use this setting only when Rate control mode is QVBR and Quality tuning level is Multi-pass HQ. For Max average bitrate values suited to the complexity of your input video, the service limits the average bitrate of the video part of this output to the value that you choose. That is, the total size of the video element is less than or equal to the value you set multiplied by the number of seconds of encoded output."
  )
  @as("MaxAverageBitrate")
  maxAverageBitrate: option<__integerMin1000Max1152000000>,
}
@ocaml.doc(
  "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value FRAME_CAPTURE."
)
type frameCaptureSettings = {
  @ocaml.doc("JPEG Quality - a higher value equals higher quality.") @as("Quality")
  quality: option<__integerMin1Max100>,
  @ocaml.doc("Maximum number of captures (encoded jpg output files).") @as("MaxCaptures")
  maxCaptures: option<__integerMin1Max10000000>,
  @ocaml.doc(
    "Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.NNNNNNN.jpg where N is the 0-based frame sequence number zero padded to 7 decimal places."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.n.jpg where n is the 0-based sequence number of each Capture."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max2147483647>,
}
@ocaml.doc("Settings for F4v container")
type f4vSettings = {
  @ocaml.doc(
    "If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end."
  )
  @as("MoovPlacement")
  moovPlacement: option<f4vMoovPlacement>,
}
@ocaml.doc(
  "If your source content has EIA-608 Line 21 Data Services, enable this feature to specify what MediaConvert does with the Extended Data Services (XDS) packets. You can choose to pass through XDS packets, or remove them from the output. For more information about XDS, see EIA-608 Line Data Services, section 9.5.1.5 05h Content Advisory."
)
type extendedDataServices = {
  @ocaml.doc(
    "The action to take on content advisory XDS packets.  If you select PASSTHROUGH, packets will not be changed. If you select STRIP, any packets will be removed in output captions."
  )
  @as("VchipAction")
  vchipAction: option<vchipAction>,
  @ocaml.doc(
    "The action to take on copy and redistribution control XDS packets.  If you select PASSTHROUGH, packets will not be changed. If you select STRIP, any packets will be removed in output captions."
  )
  @as("CopyProtectionAction")
  copyProtectionAction: option<copyProtectionAction>,
}
@ocaml.doc("ESAM SignalProcessingNotification data defined by OC-SP-ESAM-API-I03-131025.")
type esamSignalProcessingNotification = {
  @ocaml.doc(
    "Provide your ESAM SignalProcessingNotification XML document inside your JSON job settings. Form the XML document as per OC-SP-ESAM-API-I03-131025. The transcoder will use the signal processing instructions in the message that you supply. Provide your ESAM SignalProcessingNotification XML document inside your JSON job settings. For your MPEG2-TS file outputs, if you want the service to place SCTE-35 markers at the insertion points you specify in the XML document, you must also enable SCTE-35 ESAM (scte35Esam). Note that you can either specify an ESAM XML document or enable SCTE-35 passthrough. You can't do both."
  )
  @as("SccXml")
  sccXml: option<__stringPatternSNSignalProcessingNotificationNS>,
}
@ocaml.doc("ESAM ManifestConfirmConditionNotification defined by OC-SP-ESAM-API-I03-131025.")
type esamManifestConfirmConditionNotification = {
  @ocaml.doc(
    "Provide your ESAM ManifestConfirmConditionNotification XML document inside your JSON job settings. Form the XML document as per OC-SP-ESAM-API-I03-131025. The transcoder will use the Manifest Conditioning instructions in the message that you supply."
  )
  @as("MccXml")
  mccXml: option<__stringPatternSNManifestConfirmConditionNotificationNS>,
}
@ocaml.doc("Describes an account-specific API endpoint.")
type endpoint = {@ocaml.doc("URL of endpoint") @as("Url") url: option<__string>}
@ocaml.doc("Settings for embedded captions Source")
type embeddedSourceSettings = {
  @ocaml.doc(
    "By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting."
  )
  @as("TerminateCaptions")
  terminateCaptions: option<embeddedTerminateCaptions>,
  @ocaml.doc(
    "Specifies the video track index used for extracting captions. The system only supports one input video track, so this should always be set to '1'."
  )
  @as("Source608TrackNumber")
  source608TrackNumber: option<__integerMin1Max1>,
  @ocaml.doc(
    "Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough."
  )
  @as("Source608ChannelNumber")
  source608ChannelNumber: option<__integerMin1Max4>,
  @ocaml.doc(
    "Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708."
  )
  @as("Convert608To708")
  convert608To708: option<embeddedConvert608To708>,
}
@ocaml.doc(
  "Settings related to CEA/EIA-608 and CEA/EIA-708 (also called embedded or ancillary) captions. Set up embedded captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/embedded-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to EMBEDDED, EMBEDDED_PLUS_SCTE20, or SCTE20_PLUS_EMBEDDED."
)
type embeddedDestinationSettings = {
  @ocaml.doc(
    "Ignore this setting unless your input captions are SCC format and you want both 608 and 708 captions embedded in your output stream. Optionally, specify the 708 service number for each output captions channel. Choose a different number for each channel. To use this setting, also set Force 608 to 708 upconvert (Convert608To708) to Upconvert (UPCONVERT) in your input captions selector settings. If you choose to upconvert but don't specify a 708 service number, MediaConvert uses the number that you specify for CC channel number (destination608ChannelNumber) for the 708 service number. For more information, see https://docs.aws.amazon.com/console/mediaconvert/dual-scc-to-embedded."
  )
  @as("Destination708ServiceNumber")
  destination708ServiceNumber: option<__integerMin1Max6>,
  @ocaml.doc(
    "Ignore this setting unless your input captions are SCC format and your output captions are embedded in the video stream. Specify a CC number for each captions channel in this output. If you have two channels, choose CC numbers that aren't in the same field. For example, choose 1 and 3. For more information, see https://docs.aws.amazon.com/console/mediaconvert/dual-scc-to-embedded."
  )
  @as("Destination608ChannelNumber")
  destination608ChannelNumber: option<__integerMin1Max4>,
}
@ocaml.doc(
  "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3."
)
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
  @ocaml.doc(
    "Choose how the service does stereo downmixing. This setting only applies if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Stereo downmix (Eac3StereoDownmix)."
  )
  @as("StereoDownmix")
  stereoDownmix: option<eac3StereoDownmix>,
  @ocaml.doc("This value is always 48000. It represents the sample rate in Hz.") @as("SampleRate")
  sampleRate: option<__integerMin48000Max48000>,
  @ocaml.doc(
    "Controls the amount of phase-shift applied to the surround channels. Only used for 3/2 coding mode."
  )
  @as("PhaseControl")
  phaseControl: option<eac3PhaseControl>,
  @ocaml.doc(
    "When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it is present on the input. this detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding."
  )
  @as("PassthroughControl")
  passthroughControl: option<eac3PassthroughControl>,
  @ocaml.doc(
    "When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used."
  )
  @as("MetadataControl")
  metadataControl: option<eac3MetadataControl>,
  @ocaml.doc(
    "Specify a value for the following Dolby Digital Plus setting: Left total/Right total surround mix (Lt/Rt surround). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3StereoDownmix). Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Left total/Right total surround (ltRtSurroundMixLevel)."
  )
  @as("LtRtSurroundMixLevel")
  ltRtSurroundMixLevel: option<__doubleMinNegative60MaxNegative1>,
  @ocaml.doc(
    "Specify a value for the following Dolby Digital Plus setting: Left total/Right total center mix (Lt/Rt center). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3StereoDownmix). Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Left total/Right total center (ltRtCenterMixLevel)."
  )
  @as("LtRtCenterMixLevel")
  ltRtCenterMixLevel: option<__doubleMinNegative60Max3>,
  @ocaml.doc(
    "Specify a value for the following Dolby Digital Plus setting: Left only/Right only (Lo/Ro surround). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3StereoDownmix). Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Left only/Right only surround (loRoSurroundMixLevel)."
  )
  @as("LoRoSurroundMixLevel")
  loRoSurroundMixLevel: option<__doubleMinNegative60MaxNegative1>,
  @ocaml.doc(
    "Specify a value for the following Dolby Digital Plus setting: Left only/Right only center mix (Lo/Ro center). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3StereoDownmix). Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Left only/Right only center (loRoCenterMixLevel)."
  )
  @as("LoRoCenterMixLevel")
  loRoCenterMixLevel: option<__doubleMinNegative60Max3>,
  @ocaml.doc(
    "Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode."
  )
  @as("LfeFilter")
  lfeFilter: option<eac3LfeFilter>,
  @ocaml.doc("When encoding 3/2 audio, controls whether the LFE channel is enabled")
  @as("LfeControl")
  lfeControl: option<eac3LfeControl>,
  @ocaml.doc(
    "Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the RF operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile (DynamicRangeCompressionProfile). For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf."
  )
  @as("DynamicRangeCompressionRf")
  dynamicRangeCompressionRf: option<eac3DynamicRangeCompressionRf>,
  @ocaml.doc(
    "Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the line operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile (DynamicRangeCompressionProfile). For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf."
  )
  @as("DynamicRangeCompressionLine")
  dynamicRangeCompressionLine: option<eac3DynamicRangeCompressionLine>,
  @ocaml.doc(
    "Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through."
  )
  @as("Dialnorm")
  dialnorm: option<__integerMin1Max31>,
  @ocaml.doc("Activates a DC highpass filter for all input channels.") @as("DcFilter")
  dcFilter: option<eac3DcFilter>,
  @ocaml.doc("Dolby Digital Plus coding mode. Determines number of channels.") @as("CodingMode")
  codingMode: option<eac3CodingMode>,
  @ocaml.doc(
    "Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E)."
  )
  @as("BitstreamMode")
  bitstreamMode: option<eac3BitstreamMode>,
  @ocaml.doc(
    "Specify the average bitrate in bits per second. Valid bitrates depend on the coding mode."
  )
  @as("Bitrate")
  bitrate: option<__integerMin64000Max640000>,
  @ocaml.doc(
    "If set to ATTENUATE_3_DB, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode."
  )
  @as("AttenuationControl")
  attenuationControl: option<eac3AttenuationControl>,
}
@ocaml.doc(
  "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3_ATMOS."
)
type eac3AtmosSettings = {
  @ocaml.doc(
    "Specify whether your input audio has an additional center rear surround channel matrix encoded into your left and right surround channels."
  )
  @as("SurroundExMode")
  surroundExMode: option<eac3AtmosSurroundExMode>,
  @ocaml.doc(
    "Choose how the service does stereo downmixing. Default value: Not indicated (ATMOS_STORAGE_DDP_DMIXMOD_NOT_INDICATED) Related setting: To have MediaConvert use this value, keep the default value, Custom (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise, MediaConvert ignores Stereo downmix (StereoDownmix)."
  )
  @as("StereoDownmix")
  stereoDownmix: option<eac3AtmosStereoDownmix>,
  @ocaml.doc(
    "Specify the percentage of audio content, from 0% to 100%, that must be speech in order for the encoder to use the measured speech loudness as the overall program loudness. Default value: 15%"
  )
  @as("SpeechThreshold")
  speechThreshold: option<__integerMin0Max100>,
  @ocaml.doc("This value is always 48000. It represents the sample rate in Hz.") @as("SampleRate")
  sampleRate: option<__integerMin48000Max48000>,
  @ocaml.doc("Choose how the service meters the loudness of your audio.") @as("MeteringMode")
  meteringMode: option<eac3AtmosMeteringMode>,
  @ocaml.doc(
    "Specify a value for the following Dolby Atmos setting: Left total/Right total surround mix (Lt/Rt surround). MediaConvert uses this value for downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB) Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. Related setting: How the service uses this value depends on the value that you choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To have MediaConvert use this value, keep the default value, Custom (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise, the service ignores Left total/Right total surround (LtRtSurroundMixLevel)."
  )
  @as("LtRtSurroundMixLevel")
  ltRtSurroundMixLevel: option<__doubleMinNegative60MaxNegative1>,
  @ocaml.doc(
    "Specify a value for the following Dolby Atmos setting: Left total/Right total center mix (Lt/Rt center). MediaConvert uses this value for downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB) Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0. Related setting: How the service uses this value depends on the value that you choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To have MediaConvert use this value, keep the default value, Custom (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise, MediaConvert ignores Left total/Right total center (LtRtCenterMixLevel)."
  )
  @as("LtRtCenterMixLevel")
  ltRtCenterMixLevel: option<__doubleMinNegative6Max3>,
  @ocaml.doc(
    "Specify a value for the following Dolby Atmos setting: Left only/Right only (Lo/Ro surround). MediaConvert uses this value for downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB). Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. Related setting: How the service uses this value depends on the value that you choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To have MediaConvert use this value, keep the default value, Custom (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise, MediaConvert ignores Left only/Right only surround (LoRoSurroundMixLevel)."
  )
  @as("LoRoSurroundMixLevel")
  loRoSurroundMixLevel: option<__doubleMinNegative60MaxNegative1>,
  @ocaml.doc(
    "Specify a value for the following Dolby Atmos setting: Left only/Right only center mix (Lo/Ro center). MediaConvert uses this value for downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB). Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0. Related setting: How the service uses this value depends on the value that you choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To have MediaConvert use this value, keep the default value, Custom (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise, MediaConvert ignores Left only/Right only center (LoRoCenterMixLevel)."
  )
  @as("LoRoCenterMixLevel")
  loRoCenterMixLevel: option<__doubleMinNegative6Max3>,
  @ocaml.doc(
    "Specify whether MediaConvert should use any dynamic range control metadata from your input file. Keep the default value, Custom (SPECIFIED), to provide dynamic range control values in your job settings. Choose Follow source (INITIALIZE_FROM_SOURCE) to use the metadata from your input. Related settings--Use these settings to specify your dynamic range control values: Dynamic range compression line (DynamicRangeCompressionLine) and Dynamic range compression RF (DynamicRangeCompressionRf). When you keep the value Custom (SPECIFIED) for Dynamic range control (DynamicRangeControl) and you don't specify values for the related settings, MediaConvert uses default values for those settings."
  )
  @as("DynamicRangeControl")
  dynamicRangeControl: option<eac3AtmosDynamicRangeControl>,
  @ocaml.doc(
    "Choose the Dolby dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby stream for the RF operating mode. Default value: Film light (ATMOS_STORAGE_DDP_COMPR_FILM_LIGHT) Related setting: To have MediaConvert use the value you specify here, keep the default value, Custom (SPECIFIED) for the setting Dynamic range control (DynamicRangeControl). Otherwise, MediaConvert ignores Dynamic range compression RF (DynamicRangeCompressionRf). For information about the Dolby DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf."
  )
  @as("DynamicRangeCompressionRf")
  dynamicRangeCompressionRf: option<eac3AtmosDynamicRangeCompressionRf>,
  @ocaml.doc(
    "Choose the Dolby dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby stream for the line operating mode. Default value: Film light (ATMOS_STORAGE_DDP_COMPR_FILM_LIGHT) Related setting: To have MediaConvert use the value you specify here, keep the default value, Custom (SPECIFIED) for the setting Dynamic range control (DynamicRangeControl). Otherwise, MediaConvert ignores Dynamic range compression line (DynamicRangeCompressionLine). For information about the Dolby DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf."
  )
  @as("DynamicRangeCompressionLine")
  dynamicRangeCompressionLine: option<eac3AtmosDynamicRangeCompressionLine>,
  @ocaml.doc(
    "Specify whether MediaConvert should use any downmix metadata from your input file. Keep the default value, Custom (SPECIFIED) to provide downmix values in your job settings. Choose Follow source (INITIALIZE_FROM_SOURCE) to use the metadata from your input. Related settings--Use these settings to specify your downmix values: Left only/Right only surround (LoRoSurroundMixLevel), Left total/Right total surround (LtRtSurroundMixLevel), Left total/Right total center (LtRtCenterMixLevel), Left only/Right only center (LoRoCenterMixLevel),  and Stereo downmix (StereoDownmix). When you keep Custom (SPECIFIED) for Downmix control (DownmixControl) and you don't specify values for the related settings, MediaConvert uses default values for those settings."
  )
  @as("DownmixControl")
  downmixControl: option<eac3AtmosDownmixControl>,
  @ocaml.doc("Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue analysis.")
  @as("DialogueIntelligence")
  dialogueIntelligence: option<eac3AtmosDialogueIntelligence>,
  @ocaml.doc("The coding mode for Dolby Digital Plus JOC (Atmos).") @as("CodingMode")
  codingMode: option<eac3AtmosCodingMode>,
  @ocaml.doc(
    "Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E)."
  )
  @as("BitstreamMode")
  bitstreamMode: option<eac3AtmosBitstreamMode>,
  @ocaml.doc(
    "Specify the average bitrate for this output in bits per second. Valid values: 384k, 448k, 576k, 640k, 768k, 1024k Default value: 448k Note that MediaConvert supports 384k only with channel-based immersive (CBI) 7.1.4 and 5.1.4 inputs. For CBI 9.1.6 and other input types, MediaConvert automatically increases your output bitrate to 448k."
  )
  @as("Bitrate")
  bitrate: option<__integerMin384000Max1024000>,
}
@ocaml.doc(
  "Use these settings to insert a DVB Time and Date Table (TDT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings."
)
type dvbTdtSettings = {
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream."
  )
  @as("TdtInterval")
  tdtInterval: option<__integerMin1000Max30000>,
}
@ocaml.doc("DVB Sub Source Settings")
type dvbSubSourceSettings = {
  @ocaml.doc(
    "When using DVB-Sub with Burn-In or SMPTE-TT, use this PID for the source content. Unused for DVB-Sub passthrough. All DVB-Sub content is passed through, regardless of selectors."
  )
  @as("Pid")
  pid: option<__integerMin1Max2147483647>,
}
@ocaml.doc(
  "Settings related to DVB-Sub captions. Set up DVB-Sub captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/dvb-sub-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to DVB_SUB."
)
type dvbSubDestinationSettings = {
  @ocaml.doc(
    "Specify the vertical position (YPosition) of the captions, relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("YPosition")
  yposition: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify the horizontal position (XPosition) of the captions, relative to the left side of the outputin pixels. A value of 10 would result in the captions starting 10 pixels from the left ofthe output. If no explicit x_position is provided, the horizontal caption position will bedetermined by the alignment parameter. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("XPosition")
  xposition: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify the width, in pixels, of this set of DVB-Sub captions. The default value is 720 pixels. Related setting: When you use this setting, you must set DDS handling (ddsHandling) to a value other than None (NONE). All burn-in and DVB-Sub font settings must match."
  )
  @as("Width")
  width: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Specify whether the Text spacing (TeletextSpacing) in your captions is set by the captions grid, or varies depending on letter width. Choose fixed grid (FIXED_GRID) to conform to the spacing specified in the captions file more accurately. Choose proportional (PROPORTIONAL) to make the text easier to read for closed captions. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("TeletextSpacing")
  teletextSpacing: option<dvbSubtitleTeletextSpacing>,
  @ocaml.doc(
    "Specify whether your DVB subtitles are standard or for hearing impaired. Choose hearing impaired if your subtitles include audio descriptions and dialogue. Choose standard if your subtitles include only dialogue."
  )
  @as("SubtitlingType")
  subtitlingType: option<dvbSubtitlingType>,
  @ocaml.doc(
    "Set Style passthrough (StylePassthrough) to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use default settings: white text with black outlining, bottom-center positioning, and automatic sizing. Whether you set Style passthrough to enabled or not, you can also choose to manually override any of the individual style and position settings."
  )
  @as("StylePassthrough")
  stylePassthrough: option<dvbSubtitleStylePassthrough>,
  @ocaml.doc(
    "Specify the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. Leave Shadow y-offset (ShadowYOffset) blank and set Style passthrough (StylePassthrough) to enabled to use the shadow y-offset data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("ShadowYOffset")
  shadowYOffset: option<__integerMinNegative2147483648Max2147483647>,
  @ocaml.doc(
    "Specify the horizontal offset of the shadow, relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("ShadowXOffset")
  shadowXOffset: option<__integerMinNegative2147483648Max2147483647>,
  @ocaml.doc(
    "Specify the opacity of the shadow. Enter a value from 0 to 255, where 0 is transparent and 255 is opaque. If Style passthrough (StylePassthrough) is set to Enabled, leave Shadow opacity (ShadowOpacity) blank to pass through the shadow style information in your input captions to your output captions. If Style passthrough is set to disabled, leave blank to use a value of 0 and remove all shadows from your output captions. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("ShadowOpacity")
  shadowOpacity: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specify the color of the shadow cast by the captions. Leave Shadow color (ShadowColor) blank and set Style passthrough (StylePassthrough) to enabled to use the shadow color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("ShadowColor")
  shadowColor: option<dvbSubtitleShadowColor>,
  @ocaml.doc(
    "Specify the Outline size (OutlineSize) of the caption text, in pixels. Leave Outline size blank and set Style passthrough (StylePassthrough) to enabled to use the outline size data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("OutlineSize")
  outlineSize: option<__integerMin0Max10>,
  @ocaml.doc(
    "Specify font outline color. Leave Outline color (OutlineColor) blank and set Style passthrough (StylePassthrough) to enabled to use the font outline color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("OutlineColor")
  outlineColor: option<dvbSubtitleOutlineColor>,
  @ocaml.doc(
    "Ignore this setting unless your Font color is set to Hex. Enter either six or eight hexidecimal digits, representing red, green, and blue, with two optional extra digits for alpha. For example a value of 1122AABB is a red value of 0x11, a green value of 0x22, a blue value of 0xAA, and an alpha value of 0xBB."
  )
  @as("HexFontColor")
  hexFontColor: option<__stringMin6Max8Pattern09aFAF609aFAF2>,
  @ocaml.doc(
    "Specify the height, in pixels, of this set of DVB-Sub captions. The default value is 576 pixels. Related setting: When you use this setting, you must set DDS handling (ddsHandling) to a value other than None (NONE). All burn-in and DVB-Sub font settings must match."
  )
  @as("Height")
  height: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Specify the Font size (FontSize) in pixels. Must be a positive integer. Set to 0, or leave blank, for automatic font size. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("FontSize")
  fontSize: option<__integerMin0Max96>,
  @ocaml.doc(
    "Set Font script (FontScript) to Automatically determined (AUTOMATIC), or leave blank, to automatically determine the font script in your input captions. Otherwise, set to Simplified Chinese (HANS) or Traditional Chinese (HANT) if your input font script uses Simplified or Traditional Chinese. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("FontScript")
  fontScript: option<fontScript>,
  @ocaml.doc("Specify the Font resolution (FontResolution) in DPI (dots per inch).
Within your job settings, all of your DVB-Sub settings must be identical.")
  @as("FontResolution")
  fontResolution: option<__integerMin96Max600>,
  @ocaml.doc("Specify the opacity of the burned-in captions. 255 is opaque; 0 is transparent.
Within your job settings, all of your DVB-Sub settings must be identical.")
  @as("FontOpacity")
  fontOpacity: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specify the color of the captions text. Leave Font color (FontColor) blank and set Style passthrough (StylePassthrough) to enabled to use the font color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("FontColor")
  fontColor: option<dvbSubtitleFontColor>,
  @ocaml.doc(
    "Specify the font that you want the service to use for your burn in captions when your input captions specify a font that MediaConvert doesn't support. When you set Fallback font (FallbackFont) to best match (BEST_MATCH), or leave blank, MediaConvert uses a supported font that most closely matches the font that your input captions specify. When there are multiple unsupported fonts in your input captions, MediaConvert matches each font with the supported font that matches best. When you explicitly choose a replacement font, MediaConvert uses that font to replace all unsupported fonts from your input."
  )
  @as("FallbackFont")
  fallbackFont: option<dvbSubSubtitleFallbackFont>,
  @ocaml.doc(
    "Use this setting, along with DDS x-coordinate (ddsXCoordinate), to specify the upper left corner of the display definition segment (DDS) display window. With this setting, specify the distance, in pixels, between the top of the frame and the top of the DDS display window. Keep the default value, 0, to have MediaConvert automatically choose this offset. Related setting: When you use this setting, you must set DDS handling (ddsHandling) to a value other than None (NONE). MediaConvert uses these values to determine whether to write page position data to the DDS or to the page composition segment (PCS). All burn-in and DVB-Sub font settings must match."
  )
  @as("DdsYCoordinate")
  ddsYCoordinate: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Use this setting, along with DDS y-coordinate (ddsYCoordinate), to specify the upper left corner of the display definition segment (DDS) display window. With this setting, specify the distance, in pixels, between the left side of the frame and the left side of the DDS display window. Keep the default value, 0, to have MediaConvert automatically choose this offset. Related setting: When you use this setting, you must set DDS handling (ddsHandling) to a value other than None (NONE). MediaConvert uses these values to determine whether to write page position data to the DDS or to the page composition segment (PCS). All burn-in and DVB-Sub font settings must match."
  )
  @as("DdsXCoordinate")
  ddsXCoordinate: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify how MediaConvert handles the display definition segment (DDS). Keep the default, None (NONE), to exclude the DDS from this set of captions. Choose No display window (NO_DISPLAY_WINDOW) to have MediaConvert include the DDS but not include display window data. In this case, MediaConvert writes that information to the page composition segment (PCS) instead. Choose Specify (SPECIFIED) to have MediaConvert set up the display window based on the values that you specify in related job settings. For video resolutions that are 576 pixels or smaller in height, MediaConvert doesn't include the DDS, regardless of the value you choose for DDS handling (ddsHandling). In this case, it doesn't write the display window data to the PCS either. Related settings: Use the settings DDS x-coordinate (ddsXCoordinate) and DDS y-coordinate (ddsYCoordinate) to specify the offset between the top left corner of the display window and the top left corner of the video frame. All burn-in and DVB-Sub font settings must match."
  )
  @as("DdsHandling")
  ddsHandling: option<dvbddsHandling>,
  @ocaml.doc(
    "Specify the opacity of the background rectangle. Enter a value from 0 to 255, where 0 is transparent and 255 is opaque. If Style passthrough (StylePassthrough) is set to enabled, leave blank to pass through the background style information in your input captions to your output captions. If Style passthrough is set to disabled, leave blank to use a value of 0 and remove all backgrounds from your output captions. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("BackgroundOpacity")
  backgroundOpacity: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specify the color of the rectangle behind the captions. Leave background color (BackgroundColor) blank and set Style passthrough (StylePassthrough) to enabled to use the background color data from your input captions, if present."
  )
  @as("BackgroundColor")
  backgroundColor: option<dvbSubtitleBackgroundColor>,
  @ocaml.doc(
    "Ignore this setting unless Style Passthrough (StylePassthrough) is set to Enabled and Font color (FontColor) set to Black, Yellow, Red, Green, Blue, or Hex. Use Apply font color (ApplyFontColor) for additional font color controls. When you choose White text only (WHITE_TEXT_ONLY), or leave blank, your font color setting only applies to white text in your input captions. For example, if your font color setting is Yellow, and your input captions have red and white text, your output captions will have red and yellow text. When you choose ALL_TEXT, your font color setting applies to all of your output captions text."
  )
  @as("ApplyFontColor")
  applyFontColor: option<dvbSubtitleApplyFontColor>,
  @ocaml.doc(
    "Specify the alignment of your captions. If no explicit x_position is provided, setting alignment to centered will placethe captions at the bottom center of the output. Similarly, setting a left alignment willalign captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Within your job settings, all of your DVB-Sub settings must be identical."
  )
  @as("Alignment")
  alignment: option<dvbSubtitleAlignment>,
}
@ocaml.doc(
  "Use these settings to insert a DVB Service Description Table (SDT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings."
)
type dvbSdtSettings = {
  @ocaml.doc(
    "The service provider name placed in the service_descriptor in the Service Description Table. Maximum length is 256 characters."
  )
  @as("ServiceProviderName")
  serviceProviderName: option<__stringMin1Max256>,
  @ocaml.doc(
    "The service name placed in the service_descriptor in the Service Description Table. Maximum length is 256 characters."
  )
  @as("ServiceName")
  serviceName: option<__stringMin1Max256>,
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream."
  )
  @as("SdtInterval")
  sdtInterval: option<__integerMin25Max2000>,
  @ocaml.doc(
    "Selects method of inserting SDT information into output stream.  \"Follow input SDT\" copies SDT information from input stream to  output stream. \"Follow input SDT if present\" copies SDT information from  input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. Enter \"SDT  Manually\" means user will enter the SDT information. \"No SDT\" means output  stream will not contain SDT information."
  )
  @as("OutputSdt")
  outputSdt: option<outputSdt>,
}
@ocaml.doc(
  "Use these settings to insert a DVB Network Information Table (NIT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings."
)
type dvbNitSettings = {
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream."
  )
  @as("NitInterval")
  nitInterval: option<__integerMin25Max10000>,
  @ocaml.doc(
    "The network name text placed in the network_name_descriptor inside the Network Information Table. Maximum length is 256 characters."
  )
  @as("NetworkName")
  networkName: option<__stringMin1Max256>,
  @ocaml.doc("The numeric value placed in the Network Information Table (NIT).") @as("NetworkId")
  networkId: option<__integerMin0Max65535>,
}
@ocaml.doc(
  "Use these settings when you set DolbyVisionLevel6Mode to SPECIFY to override the MaxCLL and MaxFALL values in your input with new values."
)
type dolbyVisionLevel6Metadata = {
  @ocaml.doc(
    "Maximum Frame-Average Light Level. Static HDR metadata that corresponds to the highest frame-average brightness in the entire stream. Measured in nits."
  )
  @as("MaxFall")
  maxFall: option<__integerMin0Max65535>,
  @ocaml.doc(
    "Maximum Content Light Level. Static HDR metadata that corresponds to the brightest pixel in the entire stream. Measured in nits."
  )
  @as("MaxCll")
  maxCll: option<__integerMin0Max65535>,
}
@ocaml.doc("Settings for deinterlacer")
type deinterlacer = {
  @ocaml.doc(
    "Use Deinterlacer (DeinterlaceMode) to choose how the service will do deinterlacing. Default is Deinterlace. - Deinterlace converts interlaced to progressive. - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p. - Adaptive auto-detects and converts to progressive."
  )
  @as("Mode")
  mode: option<deinterlacerMode>,
  @ocaml.doc(
    "- When set to NORMAL (default), the deinterlacer does not convert frames that are tagged  in metadata as progressive. It will only convert those that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the deinterlacer converts every frame to progressive - even those that are already tagged as progressive. Turn Force mode on only if there is  a good chance that the metadata has tagged frames as progressive when they are not  progressive. Do not turn on otherwise; processing frames that are already progressive  into progressive will probably result in lower quality video."
  )
  @as("Control")
  control: option<deinterlacerControl>,
  @ocaml.doc(
    "Only applies when you set Deinterlacer (DeinterlaceMode) to Deinterlace (DEINTERLACE) or Adaptive (ADAPTIVE). Motion adaptive interpolate (INTERPOLATE) produces sharper pictures, while blend (BLEND) produces smoother motion. Use (INTERPOLATE_TICKER) OR (BLEND_TICKER) if your source file includes a ticker, such as a scrolling headline at the bottom of the frame."
  )
  @as("Algorithm")
  algorithm: option<deinterlaceAlgorithm>,
}
@ocaml.doc("Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED")
type dashIsoImageBasedTrickPlaySettings = {
  @ocaml.doc("Number of thumbnails in each row of a tile image.  Set a value between 1 and 512.")
  @as("TileWidth")
  tileWidth: option<__integerMin1Max512>,
  @ocaml.doc(
    "Number of thumbnails in each column of a tile image. Set a value between 2 and 2048. Must be divisible by 2."
  )
  @as("TileHeight")
  tileHeight: option<__integerMin1Max2048>,
  @ocaml.doc(
    "Width of each thumbnail within each tile image, in pixels.  Default is 312.  Must be divisible by 8."
  )
  @as("ThumbnailWidth")
  thumbnailWidth: option<__integerMin8Max4096>,
  @ocaml.doc(
    "Enter the interval, in seconds, that MediaConvert uses to generate thumbnails.  If the interval you enter doesn't align with the output frame rate, MediaConvert automatically rounds the interval to align with the output frame rate.  For example, if the output frame rate is 29.97 frames per second and you enter 5, MediaConvert uses a 150 frame interval to generate thumbnails."
  )
  @as("ThumbnailInterval")
  thumbnailInterval: option<__doubleMin0Max2147483647>,
  @ocaml.doc(
    "Height of each thumbnail within each tile image, in pixels.  Leave blank to maintain aspect ratio with thumbnail width.  If following the aspect ratio would lead to a total tile height greater than 4096, then the job will be rejected.  Must be divisible by 2."
  )
  @as("ThumbnailHeight")
  thumbnailHeight: option<__integerMin1Max4096>,
  @ocaml.doc(
    "The cadence MediaConvert follows for generating thumbnails.  If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence).  If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval."
  )
  @as("IntervalCadence")
  intervalCadence: option<dashIsoIntervalCadence>,
}
@ocaml.doc(
  "These settings relate to the fragmented MP4 container for the segments in your CMAF outputs."
)
type cmfcSettings = {
  @ocaml.doc(
    "To include ID3 metadata in this output: Set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH). Specify this ID3 metadata in Custom ID3 metadata inserter (timedMetadataInsertion). MediaConvert writes each instance of ID3 metadata in a separate Event Message (eMSG) box. To exclude this ID3 metadata: Set ID3 metadata to None (NONE) or leave blank."
  )
  @as("TimedMetadata")
  timedMetadata: option<cmfcTimedMetadata>,
  @ocaml.doc(
    "Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output."
  )
  @as("Scte35Source")
  scte35Source: option<cmfcScte35Source>,
  @ocaml.doc(
    "Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml)."
  )
  @as("Scte35Esam")
  scte35Esam: option<cmfcScte35Esam>,
  @ocaml.doc(
    "Choose Include (INCLUDE) to have MediaConvert generate an HLS child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude (EXCLUDE)."
  )
  @as("IFrameOnlyManifest")
  iframeOnlyManifest: option<cmfcIFrameOnlyManifest>,
  @ocaml.doc(
    "Specify whether to flag this audio track as descriptive video service (DVS) in your HLS parent manifest. When you choose Flag (FLAG), MediaConvert includes the parameter CHARACTERISTICS=\"public.accessibility.describes-video\" in the EXT-X-MEDIA entry for this track. When you keep the default choice, Don't flag (DONT_FLAG), MediaConvert leaves this parameter out. The DVS flag can help with accessibility on Apple devices. For more information, see the Apple documentation."
  )
  @as("DescriptiveVideoServiceFlag")
  descriptiveVideoServiceFlag: option<cmfcDescriptiveVideoServiceFlag>,
  @ocaml.doc(
    "Use this setting to control the values that MediaConvert puts in your HLS parent playlist to control how the client player selects which audio track to play. The other options for this setting determine the values that MediaConvert writes for the DEFAULT and AUTOSELECT attributes of the EXT-X-MEDIA entry for the audio variant. For more information about these attributes, see the Apple documentation article https://developer.apple.com/documentation/http_live_streaming/example_playlists_for_http_live_streaming/adding_alternate_media_to_a_playlist. Choose Alternate audio, auto select, default (ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT) to set DEFAULT=YES and AUTOSELECT=YES. Choose this value for only one variant in your output group. Choose Alternate audio, auto select, not default (ALTERNATE_AUDIO_AUTO_SELECT) to set DEFAULT=NO and AUTOSELECT=YES. Choose Alternate Audio, Not Auto Select to set DEFAULT=NO and AUTOSELECT=NO. When you don't specify a value for this setting, MediaConvert defaults to Alternate audio, auto select, default. When there is more than one variant in your output group, you must explicitly choose a value for this setting."
  )
  @as("AudioTrackType")
  audioTrackType: option<cmfcAudioTrackType>,
  @ocaml.doc(
    "List the audio rendition groups that you want included with this video rendition. Use a comma-separated list. For example, say you want to include the audio rendition groups that have the audio group IDs \"audio_aac_1\" and \"audio_dolby\". Then you would specify this value: \"audio_aac_1,audio_dolby\". Related setting: The rendition groups that you include in your comma-separated list should all match values that you specify in the setting Audio group ID (AudioGroupId) for audio renditions in the same output group as this video rendition. Default behavior: If you don't specify anything here and for Audio group ID, MediaConvert puts each audio variant in its own audio rendition group and associates it with every video variant. Each value in your list appears in your HLS parent manifest in the EXT-X-STREAM-INF tag as the value for the AUDIO attribute. To continue the previous example, say that the file name for the child manifest for your video rendition is \"amazing_video_1.m3u8\". Then, in your parent manifest, each value will appear on separate lines, like this: #EXT-X-STREAM-INF:AUDIO=\"audio_aac_1\"... amazing_video_1.m3u8 #EXT-X-STREAM-INF:AUDIO=\"audio_dolby\"... amazing_video_1.m3u8"
  )
  @as("AudioRenditionSets")
  audioRenditionSets: option<__string>,
  @ocaml.doc(
    "Specify the audio rendition group for this audio rendition. Specify up to one value for each audio output in your output group. This value appears in your HLS parent manifest in the EXT-X-MEDIA tag of TYPE=AUDIO, as the value for the GROUP-ID attribute. For example, if you specify \"audio_aac_1\" for Audio group ID, it appears in your manifest like this: #EXT-X-MEDIA:TYPE=AUDIO,GROUP-ID=\"audio_aac_1\". Related setting: To associate the rendition group that this audio track belongs to with a video rendition, include the same value that you provide here for that video output's setting Audio rendition sets (audioRenditionSets)."
  )
  @as("AudioGroupId")
  audioGroupId: option<__string>,
  @ocaml.doc(
    "Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec."
  )
  @as("AudioDuration")
  audioDuration: option<cmfcAudioDuration>,
}
@ocaml.doc("Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED")
type cmafImageBasedTrickPlaySettings = {
  @ocaml.doc("Number of thumbnails in each row of a tile image.  Set a value between 1 and 512.")
  @as("TileWidth")
  tileWidth: option<__integerMin1Max512>,
  @ocaml.doc(
    "Number of thumbnails in each column of a tile image. Set a value between 2 and 2048. Must be divisible by 2."
  )
  @as("TileHeight")
  tileHeight: option<__integerMin1Max2048>,
  @ocaml.doc(
    "Width of each thumbnail within each tile image, in pixels.  Default is 312.  Must be divisible by 8."
  )
  @as("ThumbnailWidth")
  thumbnailWidth: option<__integerMin8Max4096>,
  @ocaml.doc(
    "Enter the interval, in seconds, that MediaConvert uses to generate thumbnails.  If the interval you enter doesn't align with the output frame rate, MediaConvert automatically rounds the interval to align with the output frame rate.  For example, if the output frame rate is 29.97 frames per second and you enter 5, MediaConvert uses a 150 frame interval to generate thumbnails."
  )
  @as("ThumbnailInterval")
  thumbnailInterval: option<__doubleMin0Max2147483647>,
  @ocaml.doc(
    "Height of each thumbnail within each tile image, in pixels.  Leave blank to maintain aspect ratio with thumbnail width.  If following the aspect ratio would lead to a total tile height greater than 4096, then the job will be rejected.  Must be divisible by 2."
  )
  @as("ThumbnailHeight")
  thumbnailHeight: option<__integerMin2Max4096>,
  @ocaml.doc(
    "The cadence MediaConvert follows for generating thumbnails.  If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence).  If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval."
  )
  @as("IntervalCadence")
  intervalCadence: option<cmafIntervalCadence>,
}
@ocaml.doc(
  "Ignore this setting unless your input captions format is SCC. To have the service compensate for differing frame rates between your input captions and input video, specify the frame rate of the captions file. Specify this value as a fraction. When you work directly in your JSON job specification, use the settings framerateNumerator and framerateDenominator. For example, you might specify 24 / 1 for 24 fps, 25 / 1 for 25 fps, 24000 / 1001 for 23.976 fps, or 30000 / 1001 for 29.97 fps."
)
type captionSourceFramerate = {
  @ocaml.doc(
    "Specify the numerator of the fraction that represents the frame rate for the setting Caption source frame rate (CaptionSourceFramerate). Use this setting along with the setting Framerate denominator (framerateDenominator)."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin1Max60000>,
  @ocaml.doc(
    "Specify the denominator of the fraction that represents the frame rate for the setting Caption source frame rate (CaptionSourceFramerate). Use this setting along with the setting Framerate numerator (framerateNumerator)."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max1001>,
}
@ocaml.doc(
  "Burn-in is a captions delivery method, rather than a captions format. Burn-in writes the captions directly on your video frames, replacing pixels of video content with the captions. Set up burn-in captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/burn-in-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to BURN_IN."
)
type burninDestinationSettings = {
  @ocaml.doc(
    "Specify the vertical position (YPosition) of the captions, relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output."
  )
  @as("YPosition")
  yposition: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify the horizontal position (XPosition) of the captions, relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit x_position is provided, the horizontal caption position will be determined by the alignment parameter."
  )
  @as("XPosition")
  xposition: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify whether the text spacing (TeletextSpacing) in your captions is set by the captions grid, or varies depending on letter width. Choose fixed grid (FIXED_GRID) to conform to the spacing specified in the captions file more accurately. Choose proportional (PROPORTIONAL) to make the text easier to read for closed captions."
  )
  @as("TeletextSpacing")
  teletextSpacing: option<burninSubtitleTeletextSpacing>,
  @ocaml.doc(
    "Set Style passthrough (StylePassthrough) to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use default settings: white text with black outlining, bottom-center positioning, and automatic sizing. Whether you set Style passthrough to enabled or not, you can also choose to manually override any of the individual style and position settings."
  )
  @as("StylePassthrough")
  stylePassthrough: option<burnInSubtitleStylePassthrough>,
  @ocaml.doc(
    "Specify the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. Leave Shadow y-offset (ShadowYOffset) blank and set Style passthrough (StylePassthrough) to enabled to use the shadow y-offset data from your input captions, if present."
  )
  @as("ShadowYOffset")
  shadowYOffset: option<__integerMinNegative2147483648Max2147483647>,
  @ocaml.doc(
    "Specify the horizontal offset of the shadow, relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left."
  )
  @as("ShadowXOffset")
  shadowXOffset: option<__integerMinNegative2147483648Max2147483647>,
  @ocaml.doc(
    "Specify the opacity of the shadow. Enter a value from 0 to 255, where 0 is transparent and 255 is opaque. If Style passthrough (StylePassthrough) is set to Enabled, leave Shadow opacity (ShadowOpacity) blank to pass through the shadow style information in your input captions to your output captions. If Style passthrough is set to disabled, leave blank to use a value of 0 and remove all shadows from your output captions."
  )
  @as("ShadowOpacity")
  shadowOpacity: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specify the color of the shadow cast by the captions. Leave Shadow color (ShadowColor) blank and set Style passthrough (StylePassthrough) to enabled to use the shadow color data from your input captions, if present."
  )
  @as("ShadowColor")
  shadowColor: option<burninSubtitleShadowColor>,
  @ocaml.doc(
    "Specify the Outline size (OutlineSize) of the caption text, in pixels. Leave Outline size blank and set Style passthrough (StylePassthrough) to enabled to use the outline size data from your input captions, if present."
  )
  @as("OutlineSize")
  outlineSize: option<__integerMin0Max10>,
  @ocaml.doc(
    "Specify font outline color. Leave Outline color (OutlineColor) blank and set Style passthrough (StylePassthrough) to enabled to use the font outline color data from your input captions, if present."
  )
  @as("OutlineColor")
  outlineColor: option<burninSubtitleOutlineColor>,
  @ocaml.doc(
    "Ignore this setting unless your Font color is set to Hex. Enter either six or eight hexidecimal digits, representing red, green, and blue, with two optional extra digits for alpha. For example a value of 1122AABB is a red value of 0x11, a green value of 0x22, a blue value of 0xAA, and an alpha value of 0xBB."
  )
  @as("HexFontColor")
  hexFontColor: option<__stringMin6Max8Pattern09aFAF609aFAF2>,
  @ocaml.doc(
    "Specify the Font size (FontSize) in pixels. Must be a positive integer. Set to 0, or leave blank, for automatic font size."
  )
  @as("FontSize")
  fontSize: option<__integerMin0Max96>,
  @ocaml.doc(
    "Set Font script (FontScript) to Automatically determined (AUTOMATIC), or leave blank, to automatically determine the font script in your input captions. Otherwise, set to Simplified Chinese (HANS) or Traditional Chinese (HANT) if your input font script uses Simplified or Traditional Chinese."
  )
  @as("FontScript")
  fontScript: option<fontScript>,
  @ocaml.doc("Specify the Font resolution (FontResolution) in DPI (dots per inch).")
  @as("FontResolution")
  fontResolution: option<__integerMin96Max600>,
  @ocaml.doc("Specify the opacity of the burned-in captions. 255 is opaque; 0 is transparent.")
  @as("FontOpacity")
  fontOpacity: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specify the color of the burned-in captions text. Leave Font color (FontColor) blank and set Style passthrough (StylePassthrough) to enabled to use the font color data from your input captions, if present."
  )
  @as("FontColor")
  fontColor: option<burninSubtitleFontColor>,
  @ocaml.doc(
    "Specify the font that you want the service to use for your burn in captions when your input captions specify a font that MediaConvert doesn't support. When you set Fallback font (FallbackFont) to best match (BEST_MATCH), or leave blank, MediaConvert uses a supported font that most closely matches the font that your input captions specify. When there are multiple unsupported fonts in your input captions, MediaConvert matches each font with the supported font that matches best. When you explicitly choose a replacement font, MediaConvert uses that font to replace all unsupported fonts from your input."
  )
  @as("FallbackFont")
  fallbackFont: option<burninSubtitleFallbackFont>,
  @ocaml.doc(
    "Specify the opacity of the background rectangle. Enter a value from 0 to 255, where 0 is transparent and 255 is opaque. If Style passthrough (StylePassthrough) is set to enabled, leave blank to pass through the background style information in your input captions to your output captions. If Style passthrough is set to disabled, leave blank to use a value of 0 and remove all backgrounds from your output captions."
  )
  @as("BackgroundOpacity")
  backgroundOpacity: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specify the color of the rectangle behind the captions. Leave background color (BackgroundColor) blank and set Style passthrough (StylePassthrough) to enabled to use the background color data from your input captions, if present."
  )
  @as("BackgroundColor")
  backgroundColor: option<burninSubtitleBackgroundColor>,
  @ocaml.doc(
    "Ignore this setting unless Style passthrough (StylePassthrough) is set to Enabled and Font color (FontColor) set to Black, Yellow, Red, Green, Blue, or Hex. Use Apply font color (ApplyFontColor) for additional font color controls. When you choose White text only (WHITE_TEXT_ONLY), or leave blank, your font color setting only applies to white text in your input captions. For example, if your font color setting is Yellow, and your input captions have red and white text, your output captions will have red and yellow text. When you choose ALL_TEXT, your font color setting applies to all of your output captions text."
  )
  @as("ApplyFontColor")
  applyFontColor: option<burninSubtitleApplyFontColor>,
  @ocaml.doc(
    "Specify the alignment of your captions. If no explicit x_position is provided, setting alignment to centered will placethe captions at the bottom center of the output. Similarly, setting a left alignment willalign captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates."
  )
  @as("Alignment")
  alignment: option<burninSubtitleAlignment>,
}
@ocaml.doc(
  "Optional when you set AVC-Intra class (avcIntraClass) to Class 4K/2K (CLASS_4K_2K). When you set AVC-Intra class to a different value, this object isn't allowed."
)
type avcIntraUhdSettings = {
  @ocaml.doc(
    "Optional. Use Quality tuning level (qualityTuningLevel) to choose how many transcoding passes MediaConvert does with your video. When you choose Multi-pass (MULTI_PASS), your video quality is better and your output bitrate is more accurate. That is, the actual bitrate of your output is closer to the target bitrate defined in the specification. When you choose Single-pass (SINGLE_PASS), your encoding time is faster. The default behavior is Single-pass (SINGLE_PASS)."
  )
  @as("QualityTuningLevel")
  qualityTuningLevel: option<avcIntraUhdQualityTuningLevel>,
}
@ocaml.doc(
  "Use ad avail blanking settings to specify your output content during SCTE-35 triggered ad avails. You can blank your video or overlay it with an image. MediaConvert also removes any audio and embedded captions during the ad avail. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ad-avail-blanking.html."
)
type availBlanking = {
  @ocaml.doc(
    "Blanking image to be used. Leave empty for solid black. Only bmp and png images are supported."
  )
  @as("AvailBlankingImage")
  availBlankingImage: option<__stringMin14PatternS3BmpBMPPngPNGHttpsBmpBMPPngPNG>,
}
@ocaml.doc(
  "Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode (RateControlMode)."
)
type av1QvbrSettings = {
  @ocaml.doc(
    "Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33."
  )
  @as("QvbrQualityLevelFineTune")
  qvbrQualityLevelFineTune: option<__doubleMin0Max1>,
  @ocaml.doc(
    "Use this setting only when you set Rate control mode (RateControlMode) to QVBR. Specify the target quality level for this output. MediaConvert determines the right number of bits to use for each part of the video to maintain the video quality that you specify. When you keep the default value, AUTO, MediaConvert picks a quality level for you, based on characteristics of your input video. If you prefer to specify a quality level, specify a number from 1 through 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33."
  )
  @as("QvbrQualityLevel")
  qvbrQualityLevel: option<__integerMin1Max10>,
}
@ocaml.doc(
  "Use automated ABR to have MediaConvert set up the renditions in your ABR package for you automatically, based on characteristics of your input video. This feature optimizes video quality while minimizing the overall size of your ABR package."
)
type automatedAbrSettings = {
  @ocaml.doc(
    "Optional. The minimum target bitrate used in your automated ABR stack. Use this value to set a lower limit on the bitrate of video delivered to viewers with slow internet connections. If you don't specify a value, MediaConvert uses 600,000 (600 kb/s) by default."
  )
  @as("MinAbrBitrate")
  minAbrBitrate: option<__integerMin100000Max100000000>,
  @ocaml.doc(
    "Optional. The maximum number of renditions that MediaConvert will create in your automated ABR stack. The number of renditions is determined automatically, based on analysis of each job, but will never exceed this limit. When you set this to Auto in the console, which is equivalent to excluding it from your JSON job specification, MediaConvert defaults to a limit of 15."
  )
  @as("MaxRenditions")
  maxRenditions: option<__integerMin3Max15>,
  @ocaml.doc(
    "Optional. The maximum target bit rate used in your automated ABR stack. Use this value to set an upper limit on the bandwidth consumed by the highest-quality rendition. This is the rendition that is delivered to viewers with the fastest internet connections. If you don't specify a value, MediaConvert uses 8,000,000 (8 mb/s) by default."
  )
  @as("MaxAbrBitrate")
  maxAbrBitrate: option<__integerMin100000Max100000000>,
}
@ocaml.doc(
  "Advanced audio normalization settings. Ignore these settings unless you need to comply with a loudness standard."
)
type audioNormalizationSettings = {
  @ocaml.doc(
    "When you use Audio normalization (AudioNormalizationSettings), optionally use this setting to specify a target loudness. If you don't specify a value here, the encoder chooses a value for you, based on the algorithm that you choose for Algorithm (algorithm). If you choose algorithm 1770-1, the encoder will choose -24 LKFS; otherwise, the encoder will choose -23 LKFS."
  )
  @as("TargetLkfs")
  targetLkfs: option<__doubleMinNegative59Max0>,
  @ocaml.doc(
    "If set to TRUE_PEAK, calculate and log the TruePeak for each output's audio track loudness."
  )
  @as("PeakCalculation")
  peakCalculation: option<audioNormalizationPeakCalculation>,
  @ocaml.doc("If set to LOG, log each output's audio track loudness to a CSV file.")
  @as("LoudnessLogging")
  loudnessLogging: option<audioNormalizationLoudnessLogging>,
  @ocaml.doc(
    "Content measuring above this level will be corrected to the target level. Content measuring below this level will not be corrected."
  )
  @as("CorrectionGateLevel")
  correctionGateLevel: option<__integerMinNegative70Max0>,
  @ocaml.doc(
    "When enabled the output audio is corrected using the chosen algorithm. If disabled, the audio will be measured but not adjusted."
  )
  @as("AlgorithmControl")
  algorithmControl: option<audioNormalizationAlgorithmControl>,
  @ocaml.doc(
    "Choose one of the following audio normalization algorithms: ITU-R BS.1770-1: Ungated loudness. A measurement of ungated average loudness for an entire piece of content, suitable for measurement of short-form content under ATSC recommendation A/85. Supports up to 5.1 audio channels. ITU-R BS.1770-2: Gated loudness. A measurement of gated average loudness compliant with the requirements of EBU-R128. Supports up to 5.1 audio channels. ITU-R BS.1770-3: Modified peak. The same loudness measurement algorithm as 1770-2, with an updated true peak measurement. ITU-R BS.1770-4: Higher channel count. Allows for more audio channels than the other algorithms, including configurations such as 7.1."
  )
  @as("Algorithm")
  algorithm: option<audioNormalizationAlgorithm>,
}
@ocaml.doc(
  "When you mimic a multi-channel audio layout with multiple mono-channel tracks, you can tag each channel layout manually. For example, you would tag the tracks that contain your left, right, and center audio with Left (L), Right (R), and Center (C), respectively. When you don't specify a value, MediaConvert labels your track as Center (C) by default. To use audio layout tagging, your output must be in a QuickTime (.mov) container; your audio codec must be AAC, WAV, or AIFF; and you must set up your audio track to have only one channel."
)
type audioChannelTaggingSettings = {
  @ocaml.doc(
    "You can add a tag for this mono-channel audio track to mimic its placement in a multi-channel layout.  For example, if this track is the left surround channel, choose Left surround (LS)."
  )
  @as("ChannelTag")
  channelTag: option<audioChannelTag>,
}
@ocaml.doc("Settings for ancillary captions source.")
type ancillarySourceSettings = {
  @ocaml.doc(
    "By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting."
  )
  @as("TerminateCaptions")
  terminateCaptions: option<ancillaryTerminateCaptions>,
  @ocaml.doc(
    "Specifies the 608 channel number in the ancillary data track from which to extract captions. Unused for passthrough."
  )
  @as("SourceAncillaryChannelNumber")
  sourceAncillaryChannelNumber: option<__integerMin1Max4>,
  @ocaml.doc(
    "Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708."
  )
  @as("Convert608To708")
  convert608To708: option<ancillaryConvert608To708>,
}
@ocaml.doc(
  "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AIFF."
)
type aiffSettings = {
  @ocaml.doc("Sample rate in hz.") @as("SampleRate") sampleRate: option<__integerMin8000Max192000>,
  @ocaml.doc(
    "Specify the number of channels in this output audio track. Valid values are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up to 64."
  )
  @as("Channels")
  channels: option<__integerMin1Max64>,
  @ocaml.doc(
    "Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track."
  )
  @as("BitDepth")
  bitDepth: option<__integerMin16Max24>,
}
@ocaml.doc(
  "Accelerated transcoding can significantly speed up jobs with long, visually complex content."
)
type accelerationSettings = {
  @ocaml.doc(
    "Specify the conditions when the service will run your job with accelerated transcoding."
  )
  @as("Mode")
  mode: accelerationMode,
}
@ocaml.doc(
  "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AC3."
)
type ac3Settings = {
  @ocaml.doc("This value is always 48000. It represents the sample rate in Hz.") @as("SampleRate")
  sampleRate: option<__integerMin48000Max48000>,
  @ocaml.doc(
    "When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used."
  )
  @as("MetadataControl")
  metadataControl: option<ac3MetadataControl>,
  @ocaml.doc(
    "Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode."
  )
  @as("LfeFilter")
  lfeFilter: option<ac3LfeFilter>,
  @ocaml.doc(
    "Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the RF operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile (DynamicRangeCompressionProfile). For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf."
  )
  @as("DynamicRangeCompressionRf")
  dynamicRangeCompressionRf: option<ac3DynamicRangeCompressionRf>,
  @ocaml.doc(
    "When you want to add Dolby dynamic range compression (DRC) signaling to your output stream, we recommend that you use the mode-specific settings instead of Dynamic range compression profile (DynamicRangeCompressionProfile). The mode-specific settings are Dynamic range compression profile, line mode (dynamicRangeCompressionLine) and Dynamic range compression profile, RF mode (dynamicRangeCompressionRf). Note that when you specify values for all three settings, MediaConvert ignores the value of this setting in favor of the mode-specific settings. If you do use this setting instead of the mode-specific settings, choose None (NONE) to leave out DRC signaling. Keep the default Film standard (FILM_STANDARD) to set the profile to Dolby's film standard profile for all operating modes."
  )
  @as("DynamicRangeCompressionProfile")
  dynamicRangeCompressionProfile: option<ac3DynamicRangeCompressionProfile>,
  @ocaml.doc(
    "Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the line operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile (DynamicRangeCompressionProfile). For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf."
  )
  @as("DynamicRangeCompressionLine")
  dynamicRangeCompressionLine: option<ac3DynamicRangeCompressionLine>,
  @ocaml.doc(
    "Sets the dialnorm for the output. If blank and input audio is Dolby Digital, dialnorm will be passed through."
  )
  @as("Dialnorm")
  dialnorm: option<__integerMin1Max31>,
  @ocaml.doc("Dolby Digital coding mode. Determines number of channels.") @as("CodingMode")
  codingMode: option<ac3CodingMode>,
  @ocaml.doc(
    "Specify the bitstream mode for the AC-3 stream that the encoder emits. For more information about the AC3 bitstream mode, see ATSC A/52-2012 (Annex E)."
  )
  @as("BitstreamMode")
  bitstreamMode: option<ac3BitstreamMode>,
  @ocaml.doc(
    "Specify the average bitrate in bits per second. Valid bitrates depend on the coding mode."
  )
  @as("Bitrate")
  bitrate: option<__integerMin64000Max640000>,
}
@ocaml.doc(
  "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AAC. The service accepts one of two mutually exclusive groups of AAC settings--VBR and CBR. To select one of these modes, set the value of Bitrate control mode (rateControlMode) to \"VBR\" or \"CBR\".  In VBR mode, you control the audio quality with the setting VBR quality (vbrQuality). In CBR mode, you use the setting Bitrate (bitrate). Defaults and valid values depend on the rate control mode."
)
type aacSettings = {
  @ocaml.doc("VBR Quality Level - Only used if rate_control_mode is VBR.") @as("VbrQuality")
  vbrQuality: option<aacVbrQuality>,
  @ocaml.doc(
    "Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers."
  )
  @as("Specification")
  specification: option<aacSpecification>,
  @ocaml.doc("Sample rate in Hz. Valid values depend on rate control mode and profile.")
  @as("SampleRate")
  sampleRate: option<__integerMin8000Max96000>,
  @ocaml.doc(
    "Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an output, you must choose \"No container\" for the output container."
  )
  @as("RawFormat")
  rawFormat: option<aacRawFormat>,
  @ocaml.doc("Rate Control Mode.") @as("RateControlMode")
  rateControlMode: option<aacRateControlMode>,
  @ocaml.doc(
    "Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. \"1.0 - Audio Description (Receiver Mix)\" setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E."
  )
  @as("CodingMode")
  codingMode: option<aacCodingMode>,
  @ocaml.doc("AAC Profile.") @as("CodecProfile") codecProfile: option<aacCodecProfile>,
  @ocaml.doc(
    "Specify the average bitrate in bits per second. The set of valid values for this setting is: 6000, 8000, 10000, 12000, 14000, 16000, 20000, 24000, 28000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 384000, 448000, 512000, 576000, 640000, 768000, 896000, 1024000. The value you set is also constrained by the values that you choose for Profile (codecProfile), Bitrate control mode (codingMode), and Sample rate (sampleRate). Default values depend on Bitrate control mode and Profile."
  )
  @as("Bitrate")
  bitrate: option<__integerMin6000Max1024000>,
  @ocaml.doc(
    "Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains \"broadcaster mixed AD\". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and  FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType."
  )
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
@ocaml.doc(
  "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value XAVC."
)
type xavcSettings = {
  @ocaml.doc(
    "Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_HD."
  )
  @as("XavcHdProfileSettings")
  xavcHdProfileSettings: option<xavcHdProfileSettings>,
  @ocaml.doc(
    "Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_HD_INTRA_CBG."
  )
  @as("XavcHdIntraCbgProfileSettings")
  xavcHdIntraCbgProfileSettings: option<xavcHdIntraCbgProfileSettings>,
  @ocaml.doc(
    "Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_4K."
  )
  @as("Xavc4kProfileSettings")
  xavc4kProfileSettings: option<xavc4kProfileSettings>,
  @ocaml.doc(
    "Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_4K_INTRA_VBR."
  )
  @as("Xavc4kIntraVbrProfileSettings")
  xavc4kIntraVbrProfileSettings: option<xavc4kIntraVbrProfileSettings>,
  @ocaml.doc(
    "Required when you set (Profile) under (VideoDescription)>(CodecSettings)>(XavcSettings) to the value XAVC_4K_INTRA_CBG."
  )
  @as("Xavc4kIntraCbgProfileSettings")
  xavc4kIntraCbgProfileSettings: option<xavc4kIntraCbgProfileSettings>,
  @ocaml.doc(
    "The best way to set up adaptive quantization is to keep the default value, Auto (AUTO), for the setting Adaptive quantization (adaptiveQuantization). When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. For this setting, keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal adaptive quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization)."
  )
  @as("TemporalAdaptiveQuantization")
  temporalAdaptiveQuantization: option<xavcTemporalAdaptiveQuantization>,
  @ocaml.doc(
    "The best way to set up adaptive quantization is to keep the default value, Auto (AUTO), for the setting Adaptive quantization (adaptiveQuantization). When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. For this setting, keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher."
  )
  @as("SpatialAdaptiveQuantization")
  spatialAdaptiveQuantization: option<xavcSpatialAdaptiveQuantization>,
  @ocaml.doc(
    "Ignore this setting unless your downstream workflow requires that you specify it explicitly. Otherwise, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness (sharpness) or by enabling a noise reducer filter (noiseReducerFilter). The Softness (softness) setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, for flat quantization. Choose the value 1 or 16 to use the default JVT softening quantization matricies from the H.264 specification. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video."
  )
  @as("Softness")
  softness: option<__integerMin0Max128>,
  @ocaml.doc(
    "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Frame rate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
  )
  @as("SlowPal")
  slowPal: option<xavcSlowPal>,
  @ocaml.doc(
    "Specify the XAVC profile for this output. For more information, see the Sony documentation at https://www.xavc-info.org/. Note that MediaConvert doesn't support the interlaced video XAVC operating points for XAVC_HD_INTRA_CBG. To create an interlaced XAVC output, choose the profile XAVC_HD."
  )
  @as("Profile")
  profile: option<xavcProfile>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin24Max60000>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Frame rate. In this example, specify 23.976."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max1001>,
  @ocaml.doc(
    "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
  )
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<xavcFramerateConversionAlgorithm>,
  @ocaml.doc(
    "If you are using the console, use the Frame rate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list. The framerates shown in the dropdown list are decimal approximations of fractions. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate that you specify in the settings FramerateNumerator and FramerateDenominator."
  )
  @as("FramerateControl")
  framerateControl: option<xavcFramerateControl>,
  @ocaml.doc(
    "Optional. Choose a specific entropy encoding mode only when you want to override XAVC recommendations. If you choose the value auto, MediaConvert uses the mode that the XAVC file format specifies given this output's operating point."
  )
  @as("EntropyEncoding")
  entropyEncoding: option<xavcEntropyEncoding>,
  @ocaml.doc(
    "Keep the default value, Auto (AUTO), for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set Adaptive quantization (adaptiveQuantization) to a value other than Auto (AUTO). Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization to Off (OFF). Related settings: The value that you choose here applies to the following settings: Flicker adaptive quantization (flickerAdaptiveQuantization), Spatial adaptive quantization (spatialAdaptiveQuantization), and Temporal adaptive quantization (temporalAdaptiveQuantization)."
  )
  @as("AdaptiveQuantization")
  adaptiveQuantization: option<xavcAdaptiveQuantization>,
}
@ocaml.doc(
  "Input video selectors contain the video settings for the input. Each of your inputs can have up to one video selector."
)
type videoSelector = {
  @ocaml.doc(
    "If the sample range metadata in your input video is accurate, or if you don't know about sample range, keep the default value, Follow (FOLLOW), for this setting. When you do, the service automatically detects your input sample range. If your input video has metadata indicating the wrong sample range, specify the accurate sample range here. When you do, MediaConvert ignores any sample range information in the input metadata. Regardless of whether MediaConvert uses the input sample range or the sample range that you specify, MediaConvert uses the sample range for transcoding and also writes it to the output metadata."
  )
  @as("SampleRange")
  sampleRange: option<inputSampleRange>,
  @ocaml.doc(
    "Use Rotate (InputRotate) to specify how the service rotates your video. You can choose automatic rotation or specify a rotation. You can specify a clockwise rotation of 0, 90, 180, or 270 degrees. If your input video container is .mov or .mp4 and your input has rotation metadata, you can choose Automatic to have the service rotate your video according to the rotation specified in the metadata. The rotation must be within one degree of 90, 180, or 270 degrees. If the rotation metadata specifies any other rotation, the service will default to no rotation. By default, the service does no rotation, even if your input video has rotation metadata. The service doesn't pass through rotation metadata."
  )
  @as("Rotate")
  rotate: option<inputRotate>,
  @ocaml.doc(
    "Selects a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported."
  )
  @as("ProgramNumber")
  programNumber: option<__integerMinNegative2147483648Max2147483647>,
  @ocaml.doc(
    "Use PID (Pid) to select specific video data from an input file. Specify this value as an integer; the system automatically converts it to the hexidecimal value. For example, 257 selects PID 0x101. A PID, or packet identifier, is an identifier for a set of data in an MPEG-2 transport stream container."
  )
  @as("Pid")
  pid: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Use these settings to provide HDR 10 metadata that is missing or inaccurate in your input video. Appropriate values vary depending on the input video and must be provided by a color grader. The color grader generates these values during the HDR 10 mastering process. The valid range for each of these settings is 0 to 50,000. Each increment represents 0.00002 in CIE1931 color coordinate. Related settings - When you specify these values, you must also set Color space (ColorSpace) to HDR 10 (HDR10). To specify whether the the values you specify here take precedence over the values in the metadata of your input file, set Color space usage (ColorSpaceUsage). To specify whether color metadata is included in an output, set Color metadata (ColorMetadata). For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr."
  )
  @as("Hdr10Metadata")
  hdr10Metadata: option<hdr10Metadata>,
  @ocaml.doc(
    "Set Embedded timecode override (embeddedTimecodeOverride) to Use MDPM (USE_MDPM) when your AVCHD input contains timecode tag data in the Modified Digital Video Pack Metadata (MDPM). When you do, we recommend you also set Timecode source (inputTimecodeSource) to Embedded (EMBEDDED). Leave Embedded timecode override blank, or set to None (NONE), when your input does not contain MDPM timecode."
  )
  @as("EmbeddedTimecodeOverride")
  embeddedTimecodeOverride: option<embeddedTimecodeOverride>,
  @ocaml.doc(
    "There are two sources for color metadata, the input file and the job input settings Color space (ColorSpace) and HDR master display information settings(Hdr10Metadata). The Color space usage setting determines which takes precedence. Choose Force (FORCE) to use color metadata from the input job settings. If you don't specify values for those settings, the service defaults to using metadata from your input. FALLBACK - Choose Fallback (FALLBACK) to use color metadata from the source when it is present. If there's no color metadata in your input file, the service defaults to using values you specify in the input settings."
  )
  @as("ColorSpaceUsage")
  colorSpaceUsage: option<colorSpaceUsage>,
  @ocaml.doc(
    "If your input video has accurate color space metadata, or if you don't know about color space, leave this set to the default value Follow (FOLLOW). The service will automatically detect your input color space. If your input video has metadata indicating the wrong color space, specify the accurate color space here. If your input video is HDR 10 and the SMPTE ST 2086 Mastering Display Color Volume static metadata isn't present in your video stream, or if that metadata is present but not accurate, choose Force HDR 10 (FORCE_HDR10) here and specify correct values in the input HDR 10 metadata (Hdr10Metadata) settings. For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr."
  )
  @as("ColorSpace")
  colorSpace: option<colorSpace>,
  @ocaml.doc(
    "Ignore this setting unless this input is a QuickTime animation with an alpha channel. Use this setting to create separate Key and Fill outputs. In each output, specify which part of the input MediaConvert uses. Leave this setting at the default value DISCARD to delete the alpha channel and preserve the video. Set it to REMAP_TO_LUMA to delete the video and map the alpha channel to the luma channel of your outputs."
  )
  @as("AlphaBehavior")
  alphaBehavior: option<alphaBehavior>,
}
@ocaml.doc(
  "Settings related to teletext captions. Set up teletext captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/teletext-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to TELETEXT."
)
type teletextDestinationSettings = {
  @ocaml.doc(
    "Specify the page types for this Teletext page. If you don't specify a value here, the service sets the page type to the default value Subtitle (PAGE_TYPE_SUBTITLE). If you pass through the entire set of Teletext data, don't use this field. When you pass through a set of Teletext pages, your output has the same page types as your input."
  )
  @as("PageTypes")
  pageTypes: option<__listOfTeletextPageType>,
  @ocaml.doc(
    "Set pageNumber to the Teletext page number for the destination captions for this output. This value must be a three-digit hexadecimal string; strings ending in -FF are invalid. If you are passing through the entire set of Teletext data, do not use this field."
  )
  @as("PageNumber")
  pageNumber: option<__stringMin3Max3Pattern1809aFAF09aEAE>,
}
@ocaml.doc(
  "If your output group type is CMAF, use these settings when doing DRM encryption with a SPEKE-compliant key provider. If your output group type is HLS, DASH, or Microsoft Smooth, use the SpekeKeyProvider settings instead."
)
type spekeKeyProviderCmaf = {
  @ocaml.doc(
    "Specify the URL to the key server that your SPEKE-compliant DRM key provider uses to provide keys for encrypting your content."
  )
  @as("Url")
  url: option<__stringPatternHttps>,
  @ocaml.doc(
    "Specify the resource ID that your SPEKE-compliant key provider uses to identify this content."
  )
  @as("ResourceId")
  resourceId: option<__stringPatternW>,
  @ocaml.doc(
    "Specify the DRM system ID that you want signaled in the HLS manifest that MediaConvert creates as part of this CMAF package. The HLS manifest can currently signal only one system ID. For more information, see https://dashif.org/identifiers/content_protection/."
  )
  @as("HlsSignaledSystemIds")
  hlsSignaledSystemIds: option<
    __listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12,
  >,
  @ocaml.doc(
    "Specify the DRM system IDs that you want signaled in the DASH manifest that MediaConvert creates as part of this CMAF package. The DASH manifest can currently signal up to three system IDs. For more information, see https://dashif.org/identifiers/content_protection/."
  )
  @as("DashSignaledSystemIds")
  dashSignaledSystemIds: option<
    __listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12,
  >,
  @ocaml.doc(
    "If you want your key provider to encrypt the content keys that it provides to MediaConvert, set up a certificate with a master key using AWS Certificate Manager. Specify the certificate's Amazon Resource Name (ARN) here."
  )
  @as("CertificateArn")
  certificateArn: option<__stringPatternArnAwsUsGovAcm>,
}
@ocaml.doc(
  "If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead."
)
type spekeKeyProvider = {
  @ocaml.doc(
    "Specify the URL to the key server that your SPEKE-compliant DRM key provider uses to provide keys for encrypting your content."
  )
  @as("Url")
  url: option<__stringPatternHttps>,
  @ocaml.doc("Relates to SPEKE implementation. DRM system identifiers. DASH output groups support a max of two system ids. Other group types support one system id. See
 https://dashif.org/identifiers/content_protection/ for more details.")
  @as("SystemIds")
  systemIds: option<__listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12>,
  @ocaml.doc(
    "Specify the resource ID that your SPEKE-compliant key provider uses to identify this content."
  )
  @as("ResourceId")
  resourceId: option<__string>,
  @ocaml.doc(
    "If you want your key provider to encrypt the content keys that it provides to MediaConvert, set up a certificate with a master key using AWS Certificate Manager. Specify the certificate's Amazon Resource Name (ARN) here."
  )
  @as("CertificateArn")
  certificateArn: option<__stringPatternArnAwsUsGovAcm>,
}
@ocaml.doc("Settings associated with S3 destination")
type s3DestinationSettings = {
  @ocaml.doc("Settings for how your job outputs are encrypted as they are uploaded to Amazon S3.")
  @as("Encryption")
  encryption: option<s3EncryptionSettings>,
  @ocaml.doc(
    "Optional. Have MediaConvert automatically apply Amazon S3 access control for the outputs in this output group. When you don't use this setting, S3 automatically applies the default access control list PRIVATE."
  )
  @as("AccessControl")
  accessControl: option<s3DestinationAccessControl>,
}
@ocaml.doc("The Amazon Resource Name (ARN) and tags for an AWS Elemental MediaConvert resource.")
type resourceTags = {
  @ocaml.doc("The tags for the resource.") @as("Tags") tags: option<__mapOf__string>,
  @ocaml.doc("The Amazon Resource Name (ARN) of the resource.") @as("Arn") arn: option<__string>,
}
@ocaml.doc(
  "You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html."
)
type queue = {
  @ocaml.doc(
    "Specifies whether this on-demand queue is system or custom. System queues are built in. You can't modify or delete system queues. You can create and modify custom queues."
  )
  @as("Type")
  type_: option<type_>,
  @ocaml.doc("The estimated number of jobs with a SUBMITTED status.") @as("SubmittedJobsCount")
  submittedJobsCount: option<__integer>,
  @ocaml.doc(
    "Queues can be ACTIVE or PAUSED. If you pause a queue, the service won't begin processing jobs in that queue. Jobs that are running when you pause the queue continue to run until they finish or result in an error."
  )
  @as("Status")
  status: option<queueStatus>,
  @ocaml.doc(
    "Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues."
  )
  @as("ReservationPlan")
  reservationPlan: option<reservationPlan>,
  @ocaml.doc("The estimated number of jobs with a PROGRESSING status.") @as("ProgressingJobsCount")
  progressingJobsCount: option<__integer>,
  @ocaml.doc(
    "Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment."
  )
  @as("PricingPlan")
  pricingPlan: option<pricingPlan>,
  @ocaml.doc("A name that you create for each queue. Each name must be unique within your account.")
  @as("Name")
  name: __string,
  @ocaml.doc("The timestamp in epoch seconds for when you most recently updated the queue.")
  @as("LastUpdated")
  lastUpdated: option<__timestampUnix>,
  @ocaml.doc("An optional description that you create for each queue.") @as("Description")
  description: option<__string>,
  @ocaml.doc("The timestamp in epoch seconds for when you created the queue.") @as("CreatedAt")
  createdAt: option<__timestampUnix>,
  @ocaml.doc("An identifier for this resource that is unique within all of AWS.") @as("Arn")
  arn: option<__string>,
}
@ocaml.doc(
  "If you work with a third party video watermarking partner, use the group of settings that correspond with your watermarking partner to include watermarks in your output."
)
type partnerWatermarking = {
  @ocaml.doc(
    "For forensic video watermarking, MediaConvert supports Nagra NexGuard File Marker watermarking. MediaConvert supports both PreRelease Content (NGPR/G2) and OTT Streaming workflows."
  )
  @as("NexguardFileMarkerSettings")
  nexguardFileMarkerSettings: option<nexGuardFileMarkerSettings>,
}
@ocaml.doc("Specific settings for this type of output.")
type outputSettings = {
  @ocaml.doc("Settings for HLS output groups") @as("HlsSettings") hlsSettings: option<hlsSettings>,
}
@ocaml.doc("Details regarding output")
type outputDetail = {
  @ocaml.doc("Contains details about the output's video stream") @as("VideoDetails")
  videoDetails: option<videoDetail>,
  @ocaml.doc("Duration in milliseconds") @as("DurationInMs") durationInMs: option<__integer>,
}
@ocaml.doc("OutputChannel mapping settings.")
type outputChannelMapping = {
  @ocaml.doc(
    "Use this setting to specify your remix values when they have a decimal component, such as -10.312, 0.08, or 4.9. MediaConvert rounds your remixing values to the nearest thousandth."
  )
  @as("InputChannelsFineTune")
  inputChannelsFineTune: option<__listOf__doubleMinNegative60Max6>,
  @ocaml.doc(
    "Use this setting to specify your remix values when they are integers, such as -10, 0, or 4."
  )
  @as("InputChannels")
  inputChannels: option<__listOf__integerMinNegative60Max6>,
}
@ocaml.doc(
  "Enable the Noise reducer (NoiseReducer) feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default. When you enable Noise reducer (NoiseReducer), you must also select a value for Noise reducer filter (NoiseReducerFilter)."
)
type noiseReducer = {
  @ocaml.doc("Noise reducer filter settings for temporal filter.") @as("TemporalFilterSettings")
  temporalFilterSettings: option<noiseReducerTemporalFilterSettings>,
  @ocaml.doc("Noise reducer filter settings for spatial filter.") @as("SpatialFilterSettings")
  spatialFilterSettings: option<noiseReducerSpatialFilterSettings>,
  @ocaml.doc("Settings for a noise reducer filter") @as("FilterSettings")
  filterSettings: option<noiseReducerFilterSettings>,
  @ocaml.doc(
    "Use Noise reducer filter (NoiseReducerFilter) to select one of the following spatial image filtering functions. To use this setting, you must also enable Noise reducer (NoiseReducer). * Bilateral preserves edges while reducing noise. * Mean (softest), Gaussian, Lanczos, and Sharpen (sharpest) do convolution filtering. * Conserve does min/max noise reduction. * Spatial does frequency-domain filtering based on JND principles. * Temporal optimizes video quality for complex motion."
  )
  @as("Filter")
  filter: option<noiseReducerFilter>,
}
@ocaml.doc("These settings relate to your MXF output container.")
type mxfSettings = {
  @ocaml.doc(
    "Specify the XAVC profile settings for MXF outputs when you set your MXF profile to XAVC."
  )
  @as("XavcProfileSettings")
  xavcProfileSettings: option<mxfXavcProfileSettings>,
  @ocaml.doc(
    "Specify the MXF profile, also called shim, for this output. When you choose Auto, MediaConvert chooses a profile based on the video codec and resolution. For a list of codecs supported with each MXF profile, see https://docs.aws.amazon.com/mediaconvert/latest/ug/codecs-supported-with-each-mxf-profile.html. For more information about the automatic selection behavior, see https://docs.aws.amazon.com/mediaconvert/latest/ug/default-automatic-selection-of-mxf-profiles.html."
  )
  @as("Profile")
  profile: option<mxfProfile>,
  @ocaml.doc(
    "Optional. When you have AFD signaling set up in your output video stream, use this setting to choose whether to also include it in the MXF wrapper. Choose Don't copy (NO_COPY) to exclude AFD signaling from the MXF wrapper. Choose Copy from video stream (COPY_FROM_VIDEO) to copy the AFD values from the video stream for this output to the MXF wrapper. Regardless of which option you choose, the AFD values remain in the video stream. Related settings: To set up your output to include or exclude AFD values, see AfdSignaling, under VideoDescription. On the console, find AFD signaling under the output's video encoding settings."
  )
  @as("AfdSignaling")
  afdSignaling: option<mxfAfdSignaling>,
}
@ocaml.doc(
  "Specify the details for each additional Microsoft Smooth Streaming manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group."
)
type msSmoothAdditionalManifest = {
  @ocaml.doc("Specify the outputs that you want this additional top-level manifest to reference.")
  @as("SelectedOutputs")
  selectedOutputs: option<__listOf__stringMin1>,
  @ocaml.doc(
    "Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your Microsoft Smooth group is film-name.ismv. If you enter \"-no-premium\" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.ismv."
  )
  @as("ManifestNameModifier")
  manifestNameModifier: option<__stringMin1>,
}
@ocaml.doc(
  "Overlay motion graphics on top of your video. The motion graphics that you specify here appear on all outputs in all output groups. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/motion-graphic-overlay.html."
)
type motionImageInserter = {
  @ocaml.doc(
    "Specify when the motion overlay begins. Use timecode format (HH:MM:SS:FF or HH:MM:SS;FF). Make sure that the timecode you provide here takes into account how you have set up your timecode configuration under both job settings and input settings. The simplest way to do that is to set both to start at 0. If you need to set up your job to follow timecodes embedded in your source that don't start at zero, make sure that you specify a start time that is after the first embedded timecode. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/setting-up-timecode.html Find job-wide and input timecode configuration settings in your JSON job settings specification at settings>timecodeConfig>source and settings>inputs>timecodeSource."
  )
  @as("StartTime")
  startTime: option<__stringMin11Max11Pattern01D20305D205D>,
  @ocaml.doc("Specify whether your motion graphic overlay repeats on a loop or plays only once.")
  @as("Playback")
  playback: option<motionImagePlayback>,
  @ocaml.doc(
    "Use Offset to specify the placement of your motion graphic overlay on the video frame. Specify in pixels, from the upper-left corner of the frame. If you don't specify an offset, the service scales your overlay to the full size of the frame. Otherwise, the service inserts the overlay at its native resolution and scales the size up or down with any video scaling."
  )
  @as("Offset")
  offset: option<motionImageInsertionOffset>,
  @ocaml.doc(
    "Choose the type of motion graphic asset that you are providing for your overlay. You can choose either a .mov file or a series of .png files."
  )
  @as("InsertionMode")
  insertionMode: option<motionImageInsertionMode>,
  @ocaml.doc(
    "Specify the .mov file or series of .png files that you want to overlay on your video. For .png files, provide the file name of the first file in the series. Make sure that the names of the .png files end with sequential numbers that specify the order that they are played in. For example, overlay_000.png, overlay_001.png, overlay_002.png, and so on. The sequence must start at zero, and each image file name must have the same number of digits. Pad your initial file names with enough zeros to complete the sequence. For example, if the first image is overlay_0.png, there can be only 10 images in the sequence, with the last image being overlay_9.png. But if the first image is overlay_00.png, there can be 100 images in the sequence."
  )
  @as("Input")
  input: option<__stringMin14PatternS3Mov09PngHttpsMov09Png>,
  @ocaml.doc(
    "If your motion graphic asset is a .mov file, keep this setting unspecified. If your motion graphic asset is a series of .png files, specify the frame rate of the overlay in frames per second, as a fraction. For example, specify 24 fps as 24/1. Make sure that the number of images in your series matches the frame rate and your intended overlay duration. For example, if you want a 30-second overlay at 30 fps, you should have 900 .png images. This overlay frame rate doesn't need to match the frame rate of the underlying video."
  )
  @as("Framerate")
  framerate: option<motionImageInsertionFramerate>,
}
@ocaml.doc(
  "These settings relate to the MPEG-2 transport stream (MPEG2-TS) container for the MPEG2-TS segments in your HLS outputs."
)
type m3u8Settings = {
  @ocaml.doc("Packet Identifier (PID) of the elementary video stream in the transport stream.")
  @as("VideoPid")
  videoPid: option<__integerMin32Max8182>,
  @ocaml.doc("The value of the transport stream ID field in the Program Map Table.")
  @as("TransportStreamId")
  transportStreamId: option<__integerMin0Max65535>,
  @ocaml.doc("Packet Identifier (PID) of the ID3 metadata stream in the transport stream.")
  @as("TimedMetadataPid")
  timedMetadataPid: option<__integerMin32Max8182>,
  @ocaml.doc(
    "Set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH) to include ID3 metadata in this output. This includes ID3 metadata from the following features: ID3 timestamp period (timedMetadataId3Period), and Custom ID3 metadata inserter (timedMetadataInsertion). To exclude this ID3 metadata in this output: set ID3 metadata to None (NONE) or leave blank."
  )
  @as("TimedMetadata")
  timedMetadata: option<timedMetadata>,
  @ocaml.doc(
    "For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE) if you don't want manifest conditioning. Choose Passthrough (PASSTHROUGH) and choose Ad markers (adMarkers) if you do want manifest conditioning. In both cases, also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml)."
  )
  @as("Scte35Source")
  scte35Source: option<m3u8Scte35Source>,
  @ocaml.doc("Packet Identifier (PID) of the SCTE-35 stream in the transport stream.")
  @as("Scte35Pid")
  scte35Pid: option<__integerMin32Max8182>,
  @ocaml.doc("The value of the program number field in the Program Map Table.") @as("ProgramNumber")
  programNumber: option<__integerMin0Max65535>,
  @ocaml.doc("Packet Identifier (PID) of the private metadata stream in the transport stream.")
  @as("PrivateMetadataPid")
  privateMetadataPid: option<__integerMin32Max8182>,
  @ocaml.doc("Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream.")
  @as("PmtPid")
  pmtPid: option<__integerMin32Max8182>,
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream."
  )
  @as("PmtInterval")
  pmtInterval: option<__integerMin0Max1000>,
  @ocaml.doc(
    "Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID."
  )
  @as("PcrPid")
  pcrPid: option<__integerMin32Max8182>,
  @ocaml.doc(
    "When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream."
  )
  @as("PcrControl")
  pcrControl: option<m3u8PcrControl>,
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream."
  )
  @as("PatInterval")
  patInterval: option<__integerMin0Max1000>,
  @ocaml.doc(
    "If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output."
  )
  @as("NielsenId3")
  nielsenId3: option<m3u8NielsenId3>,
  @ocaml.doc(
    "Specify the maximum time, in milliseconds, between Program Clock References (PCRs) inserted into the transport stream."
  )
  @as("MaxPcrInterval")
  maxPcrInterval: option<__integerMin0Max500>,
  @ocaml.doc(
    "If you select ALIGN_TO_VIDEO, MediaConvert writes captions and data packets with Presentation Timestamp (PTS) values greater than or equal to the first video packet PTS (MediaConvert drops captions and data packets with lesser PTS values). Keep the default value (AUTO) to allow all PTS values."
  )
  @as("DataPTSControl")
  dataPTSControl: option<m3u8DataPtsControl>,
  @ocaml.doc(
    "Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation."
  )
  @as("AudioPids")
  audioPids: option<__listOf__integerMin32Max8182>,
  @ocaml.doc("The number of audio frames to insert for each PES packet.") @as("AudioFramesPerPes")
  audioFramesPerPes: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec."
  )
  @as("AudioDuration")
  audioDuration: option<m3u8AudioDuration>,
}
@ocaml.doc(
  "MPEG-2 TS container settings. These apply to outputs in a File output group when the output's container (ContainerType) is MPEG-2 Transport Stream (M2TS). In these assets, data is organized by the program map table (PMT). Each transport stream program contains subsets of data, including audio, video, and metadata. Each of these subsets of data has a numerical label called a packet identifier (PID). Each transport stream program corresponds to one MediaConvert output. The PMT lists the types of data in a program along with their PID. Downstream systems and players use the program map table to look up the PID for each type of data it accesses and then uses the PIDs to locate specific data within the asset."
)
type m2tsSettings = {
  @ocaml.doc(
    "Specify the packet identifier (PID) of the elementary video stream in the transport stream."
  )
  @as("VideoPid")
  videoPid: option<__integerMin32Max8182>,
  @ocaml.doc(
    "Specify the ID for the transport stream itself in the program map table for this output. Transport stream IDs and program map tables are parts of MPEG-2 transport stream containers, used for organizing data."
  )
  @as("TransportStreamId")
  transportStreamId: option<__integerMin0Max65535>,
  @ocaml.doc(
    "Specify the packet identifier (PID) for timed metadata in this output. Default is 502."
  )
  @as("TimedMetadataPid")
  timedMetadataPid: option<__integerMin32Max8182>,
  @ocaml.doc(
    "Specify the length, in seconds, of each segment. Required unless markers is set to _none_."
  )
  @as("SegmentationTime")
  segmentationTime: option<__doubleMin0>,
  @ocaml.doc(
    "The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of \"reset_cadence\" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of of $segmentation_time seconds. When a segmentation style of \"maintain_cadence\" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentation_time seconds. Note that EBP lookahead is a slight exception to this rule."
  )
  @as("SegmentationStyle")
  segmentationStyle: option<m2tsSegmentationStyle>,
  @ocaml.doc(
    "Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format."
  )
  @as("SegmentationMarkers")
  segmentationMarkers: option<m2tsSegmentationMarkers>,
  @ocaml.doc(
    "For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE). Also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml). Also enable ESAM SCTE-35 (include the property scte35Esam)."
  )
  @as("Scte35Source")
  scte35Source: option<m2tsScte35Source>,
  @ocaml.doc("Specify the packet identifier (PID) of the SCTE-35 stream in the transport stream.")
  @as("Scte35Pid")
  scte35Pid: option<__integerMin32Max8182>,
  @ocaml.doc(
    "Include this in your job settings to put SCTE-35 markers in your HLS and transport stream outputs at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml)."
  )
  @as("Scte35Esam")
  scte35Esam: option<m2tsScte35Esam>,
  @ocaml.doc(
    "When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate."
  )
  @as("RateMode")
  rateMode: option<m2tsRateMode>,
  @ocaml.doc(
    "Use Program number (programNumber) to specify the program number used in the program map table (PMT) for this output. Default is 1. Program numbers and program map tables are parts of MPEG-2 transport stream containers, used for organizing data."
  )
  @as("ProgramNumber")
  programNumber: option<__integerMin0Max65535>,
  @ocaml.doc("Specify the packet identifier (PID) of the private metadata stream. Default is 503.")
  @as("PrivateMetadataPid")
  privateMetadataPid: option<__integerMin32Max8182>,
  @ocaml.doc(
    "Specify the packet identifier (PID) for the program map table (PMT) itself. Default is 480."
  )
  @as("PmtPid")
  pmtPid: option<__integerMin32Max8182>,
  @ocaml.doc(
    "Specify the number of milliseconds between instances of the program map table (PMT) in the output transport stream."
  )
  @as("PmtInterval")
  pmtInterval: option<__integerMin0Max1000>,
  @ocaml.doc(
    "Specify the packet identifier (PID) for the program clock reference (PCR) in this output. If you do not specify a value, the service will use the value for Video PID (VideoPid)."
  )
  @as("PcrPid")
  pcrPid: option<__integerMin32Max8182>,
  @ocaml.doc(
    "When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This is effective only when the PCR PID is the same as the video or audio elementary stream."
  )
  @as("PcrControl")
  pcrControl: option<m2tsPcrControl>,
  @ocaml.doc(
    "The number of milliseconds between instances of this table in the output transport stream."
  )
  @as("PatInterval")
  patInterval: option<__integerMin0Max1000>,
  @ocaml.doc(
    "Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets."
  )
  @as("NullPacketBitrate")
  nullPacketBitrate: option<__doubleMin0>,
  @ocaml.doc(
    "If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output."
  )
  @as("NielsenId3")
  nielsenId3: option<m2tsNielsenId3>,
  @ocaml.doc(
    "When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is \"stretched\" to the next marker. The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate."
  )
  @as("MinEbpInterval")
  minEbpInterval: option<__integerMin0Max10000>,
  @ocaml.doc(
    "Specify the maximum time, in milliseconds, between Program Clock References (PCRs) inserted into the transport stream."
  )
  @as("MaxPcrInterval")
  maxPcrInterval: option<__integerMin0Max500>,
  @ocaml.doc("The length, in seconds, of each fragment. Only used with EBP markers.")
  @as("FragmentTime")
  fragmentTime: option<__doubleMin0>,
  @ocaml.doc(
    "Keep the default value (DEFAULT) unless you know that your audio EBP markers are incorrectly appearing before your video EBP markers. To correct this problem, set this value to Force (FORCE)."
  )
  @as("ForceTsVideoEbpOrder")
  forceTsVideoEbpOrder: option<m2tsForceTsVideoEbpOrder>,
  @ocaml.doc("Controls whether to include the ES Rate field in the PES header.") @as("EsRateInPes")
  esRateInPes: option<m2tsEsRateInPes>,
  @ocaml.doc(
    "Selects which PIDs to place EBP markers on. They can either be placed only on the video PID, or on both the video PID and all audio PIDs. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY)."
  )
  @as("EbpPlacement")
  ebpPlacement: option<m2tsEbpPlacement>,
  @ocaml.doc(
    "When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY)."
  )
  @as("EbpAudioInterval")
  ebpAudioInterval: option<m2tsEbpAudioInterval>,
  @ocaml.doc(
    "Specify the packet identifier (PID) for DVB teletext data you include in this output. Default is 499."
  )
  @as("DvbTeletextPid")
  dvbTeletextPid: option<__integerMin32Max8182>,
  @ocaml.doc(
    "Use these settings to insert a DVB Time and Date Table (TDT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings."
  )
  @as("DvbTdtSettings")
  dvbTdtSettings: option<dvbTdtSettings>,
  @ocaml.doc(
    "Specify the packet identifiers (PIDs) for DVB subtitle data included in this output. Specify multiple PIDs as a JSON array. Default is the range 460-479."
  )
  @as("DvbSubPids")
  dvbSubPids: option<__listOf__integerMin32Max8182>,
  @ocaml.doc(
    "Use these settings to insert a DVB Service Description Table (SDT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings."
  )
  @as("DvbSdtSettings")
  dvbSdtSettings: option<dvbSdtSettings>,
  @ocaml.doc(
    "Use these settings to insert a DVB Network Information Table (NIT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings."
  )
  @as("DvbNitSettings")
  dvbNitSettings: option<dvbNitSettings>,
  @ocaml.doc(
    "If you select ALIGN_TO_VIDEO, MediaConvert writes captions and data packets with Presentation Timestamp (PTS) values greater than or equal to the first video packet PTS (MediaConvert drops captions and data packets with lesser PTS values). Keep the default value (AUTO) to allow all PTS values."
  )
  @as("DataPTSControl")
  dataPTSControl: option<m2tsDataPtsControl>,
  @ocaml.doc(
    "Controls what buffer model to use for accurate interleaving. If set to MULTIPLEX, use multiplex  buffer model. If set to NONE, this can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions."
  )
  @as("BufferModel")
  bufferModel: option<m2tsBufferModel>,
  @ocaml.doc(
    "Specify the output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate. Other common values are 3750000, 7500000, and 15000000."
  )
  @as("Bitrate")
  bitrate: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify the packet identifiers (PIDs) for any elementary audio streams you include in this output. Specify multiple PIDs as a JSON array. Default is the range 482-492."
  )
  @as("AudioPids")
  audioPids: option<__listOf__integerMin32Max8182>,
  @ocaml.doc("The number of audio frames to insert for each PES packet.") @as("AudioFramesPerPes")
  audioFramesPerPes: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec."
  )
  @as("AudioDuration")
  audioDuration: option<m2tsAudioDuration>,
  @ocaml.doc("Selects between the DVB and ATSC buffer models for Dolby Digital audio.")
  @as("AudioBufferModel")
  audioBufferModel: option<m2tsAudioBufferModel>,
}
@ocaml.doc(
  "Provides messages from the service about jobs that you have already successfully submitted."
)
type jobMessages = {
  @ocaml.doc(
    "List of messages that warn about conditions that might cause your job not to run or to fail."
  )
  @as("Warning")
  warning: option<__listOf__string>,
  @ocaml.doc(
    "List of messages that are informational only and don't indicate a problem with your job."
  )
  @as("Info")
  info: option<__listOf__string>,
}
@ocaml.doc(
  "Specify the details for each additional HLS manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group."
)
type hlsAdditionalManifest = {
  @ocaml.doc("Specify the outputs that you want this additional top-level manifest to reference.")
  @as("SelectedOutputs")
  selectedOutputs: option<__listOf__stringMin1>,
  @ocaml.doc(
    "Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your HLS group is film-name.m3u8. If you enter \"-no-premium\" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.m3u8. For HLS output groups, specify a manifestNameModifier that is different from the nameModifier of the output. The service uses the output name modifier to create unique names for the individual variant manifests."
  )
  @as("ManifestNameModifier")
  manifestNameModifier: option<__stringMin1>,
}
@ocaml.doc("Settings for H265 codec")
type h265Settings = {
  @ocaml.doc(
    "If the location of parameter set NAL units doesn't matter in your workflow, ignore this setting. Use this setting only with CMAF or DASH outputs, or with standalone file outputs in an MPEG-4 container (MP4 outputs). Choose HVC1 to mark your output as HVC1. This makes your output compliant with the following specification: ISO IECJTC1 SC29 N13798 Text ISO/IEC FDIS 14496-15 3rd Edition. For these outputs, the service stores parameter set NAL units in the sample headers but not in the samples directly. For MP4 outputs, when you choose HVC1, your output video might not work properly with some downstream systems and video players. The service defaults to marking your output as HEV1. For these outputs, the service writes parameter set NAL units directly into the samples."
  )
  @as("WriteMp4PackagingType")
  writeMp4PackagingType: option<h265WriteMp4PackagingType>,
  @ocaml.doc("Inserts timecode for each frame as 4 bytes of an unregistered SEI message.")
  @as("UnregisteredSeiTimecode")
  unregisteredSeiTimecode: option<h265UnregisteredSeiTimecode>,
  @ocaml.doc(
    "Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures."
  )
  @as("Tiles")
  tiles: option<h265Tiles>,
  @ocaml.doc(
    "Enables temporal layer identifiers in the encoded bitstream. Up to 3 layers are supported depending on GOP structure: I- and P-frames form one layer, reference B-frames can form a second layer and non-reference b-frames can form a third layer. Decoders can optionally decode only the lower temporal layers to generate a lower frame rate output. For example, given a bitstream with temporal IDs and with b-frames = 1 (i.e. IbPbPb display order), a decoder could decode all the frames for full frame rate output or only the I and P frames (lowest temporal layer) for a half frame rate output."
  )
  @as("TemporalIds")
  temporalIds: option<h265TemporalIds>,
  @ocaml.doc(
    "Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization)."
  )
  @as("TemporalAdaptiveQuantization")
  temporalAdaptiveQuantization: option<h265TemporalAdaptiveQuantization>,
  @ocaml.doc(
    "This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i."
  )
  @as("Telecine")
  telecine: option<h265Telecine>,
  @ocaml.doc(
    "Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher."
  )
  @as("SpatialAdaptiveQuantization")
  spatialAdaptiveQuantization: option<h265SpatialAdaptiveQuantization>,
  @ocaml.doc(
    "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
  )
  @as("SlowPal")
  slowPal: option<h265SlowPal>,
  @ocaml.doc(
    "Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures."
  )
  @as("Slices")
  slices: option<__integerMin1Max32>,
  @ocaml.doc(
    "Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr."
  )
  @as("SceneChangeDetect")
  sceneChangeDetect: option<h265SceneChangeDetect>,
  @ocaml.doc(
    "Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE)."
  )
  @as("ScanTypeConversionMode")
  scanTypeConversionMode: option<h265ScanTypeConversionMode>,
  @ocaml.doc(
    "Specify Sample Adaptive Offset (SAO) filter strength.  Adaptive mode dynamically selects best strength based on content"
  )
  @as("SampleAdaptiveOffsetFilterMode")
  sampleAdaptiveOffsetFilterMode: option<h265SampleAdaptiveOffsetFilterMode>,
  @ocaml.doc(
    "Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR)."
  )
  @as("RateControlMode")
  rateControlMode: option<h265RateControlMode>,
  @ocaml.doc(
    "Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode (RateControlMode)."
  )
  @as("QvbrSettings")
  qvbrSettings: option<h265QvbrSettings>,
  @ocaml.doc(
    "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
  )
  @as("QualityTuningLevel")
  qualityTuningLevel: option<h265QualityTuningLevel>,
  @ocaml.doc(
    "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40."
  )
  @as("ParNumerator")
  parNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33."
  )
  @as("ParDenominator")
  parDenominator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
  )
  @as("ParControl")
  parControl: option<h265ParControl>,
  @ocaml.doc(
    "Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding."
  )
  @as("NumberReferenceFrames")
  numberReferenceFrames: option<__integerMin1Max6>,
  @ocaml.doc(
    "Specify the number of B-frames that MediaConvert puts between reference frames in this output. Valid values are whole numbers from 0 through 7. When you don't specify a value, MediaConvert defaults to 2."
  )
  @as("NumberBFramesBetweenReferenceFrames")
  numberBFramesBetweenReferenceFrames: option<__integerMin0Max7>,
  @ocaml.doc(
    "Use this setting only when you also enable Scene change detection (SceneChangeDetect). This setting determines how the encoder manages the spacing between I-frames that it inserts as part of the I-frame cadence and the I-frames that it inserts for Scene change detection. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, keep the default value by leaving this setting out of your JSON job specification. In the console, do this by keeping the default empty value. When you explicitly specify a value for this setting, the encoder determines whether to skip a cadence-driven I-frame by the value you set. For example, if you set Min I interval (minIInterval) to 5 and a cadence-driven I-frame would fall within 5 frames of a scene-change I-frame, then the encoder skips the cadence-driven I-frame. In this way, one GOP is shrunk slightly and one GOP is stretched slightly. When the cadence-driven I-frames are farther from the scene-change I-frame than the value you set, then the encoder leaves all I-frames in place and the GOPs surrounding the scene change are smaller than the usual cadence GOPs."
  )
  @as("MinIInterval")
  minIInterval: option<__integerMin0Max30>,
  @ocaml.doc(
    "Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR."
  )
  @as("MaxBitrate")
  maxBitrate: option<__integerMin1000Max1466400000>,
  @ocaml.doc(
    "Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose."
  )
  @as("InterlaceMode")
  interlaceMode: option<h265InterlaceMode>,
  @ocaml.doc(
    "Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000."
  )
  @as("HrdBufferSize")
  hrdBufferSize: option<__integerMin0Max1466400000>,
  @ocaml.doc("Percentage of the buffer that should initially be filled (HRD buffer model).")
  @as("HrdBufferInitialFillPercentage")
  hrdBufferInitialFillPercentage: option<__integerMin0Max100>,
  @ocaml.doc(
    "Specify how the transcoder determines GOP size for this output. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, choose Auto (AUTO) and and leave GOP size (GopSize) blank. By default, if you don't specify GOP mode control (GopSizeUnits), MediaConvert will use automatic behavior. If your output group specifies HLS, DASH, or CMAF, set GOP mode control to Auto and leave GOP size blank in each output in your output group. To explicitly specify the GOP length, choose Specified, frames (FRAMES) or Specified, seconds (SECONDS) and then provide the GOP length in the related setting GOP size (GopSize)."
  )
  @as("GopSizeUnits")
  gopSizeUnits: option<h265GopSizeUnits>,
  @ocaml.doc(
    "Use this setting only when you set GOP mode control (GopSizeUnits) to Specified, frames (FRAMES) or Specified, seconds (SECONDS). Specify the GOP length using a whole number of frames or a decimal value of seconds. MediaConvert will interpret this value as frames or seconds depending on the value you choose for GOP mode control (GopSizeUnits). If you want to allow MediaConvert to automatically determine GOP size, leave GOP size blank and set GOP mode control to Auto (AUTO). If your output group specifies HLS, DASH, or CMAF, leave GOP size blank and set GOP mode control to Auto in each output in your output group."
  )
  @as("GopSize")
  gopSize: option<__doubleMin0>,
  @ocaml.doc(
    "Specify the relative frequency of open to closed GOPs in this output. For example, if you want to allow four open GOPs and then require a closed GOP, set this value to 5. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, keep the default value by leaving this setting out of your JSON job specification. In the console, do this by keeping the default empty value. If you do explicitly specify a value, for segmented outputs, don't set this value to 0."
  )
  @as("GopClosedCadence")
  gopClosedCadence: option<__integerMin0Max2147483647>,
  @ocaml.doc("If enable, use reference B frames for GOP structures that have B frames > 1.")
  @as("GopBReference")
  gopBReference: option<h265GopBReference>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
  )
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<h265FramerateConversionAlgorithm>,
  @ocaml.doc(
    "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
  )
  @as("FramerateControl")
  framerateControl: option<h265FramerateControl>,
  @ocaml.doc(
    "Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set adaptiveQuantization to a value other than Off (OFF)."
  )
  @as("FlickerAdaptiveQuantization")
  flickerAdaptiveQuantization: option<h265FlickerAdaptiveQuantization>,
  @ocaml.doc(
    "Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames)."
  )
  @as("DynamicSubGop")
  dynamicSubGop: option<h265DynamicSubGop>,
  @ocaml.doc(
    "Represents the Profile and Tier, per the HEVC (H.265) specification. Selections are grouped as [Profile] / [Tier], so \"Main/High\" represents Main Profile with High Tier. 4:2:2 profiles are only available with the HEVC 4:2:2 License."
  )
  @as("CodecProfile")
  codecProfile: option<h265CodecProfile>,
  @ocaml.doc("H.265 Level.") @as("CodecLevel") codecLevel: option<h265CodecLevel>,
  @ocaml.doc(
    "Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000."
  )
  @as("Bitrate")
  bitrate: option<__integerMin1000Max1466400000>,
  @ocaml.doc(
    "Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF)."
  )
  @as("AlternateTransferFunctionSei")
  alternateTransferFunctionSei: option<h265AlternateTransferFunctionSei>,
  @ocaml.doc(
    "When you set Adaptive Quantization (H265AdaptiveQuantization) to Auto (AUTO), or leave blank, MediaConvert automatically applies quantization to improve the video quality of your output. Set Adaptive Quantization to Low (LOW), Medium (MEDIUM), High (HIGH), Higher (HIGHER), or Max (MAX) to manually control the strength of the quantization filter. When you do, you can specify a value for Spatial Adaptive Quantization (H265SpatialAdaptiveQuantization), Temporal Adaptive Quantization (H265TemporalAdaptiveQuantization), and Flicker Adaptive Quantization (H265FlickerAdaptiveQuantization), to further control the quantization filter. Set Adaptive Quantization to Off (OFF) to apply no quantization to your output."
  )
  @as("AdaptiveQuantization")
  adaptiveQuantization: option<h265AdaptiveQuantization>,
}
@ocaml.doc(
  "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264."
)
type h264Settings = {
  @ocaml.doc("Inserts timecode for each frame as 4 bytes of an unregistered SEI message.")
  @as("UnregisteredSeiTimecode")
  unregisteredSeiTimecode: option<h264UnregisteredSeiTimecode>,
  @ocaml.doc(
    "Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264TemporalAdaptiveQuantization is Enabled (ENABLED). Keep this default value to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to set H264TemporalAdaptiveQuantization to Disabled (DISABLED). Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization). To manually enable or disable H264TemporalAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO."
  )
  @as("TemporalAdaptiveQuantization")
  temporalAdaptiveQuantization: option<h264TemporalAdaptiveQuantization>,
  @ocaml.doc(
    "When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine (HARD) produces a 29.97i output. Soft telecine (SOFT) produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture."
  )
  @as("Telecine")
  telecine: option<h264Telecine>,
  @ocaml.doc("Produces a bitstream compliant with SMPTE RP-2027.") @as("Syntax")
  syntax: option<h264Syntax>,
  @ocaml.doc(
    "Only use this setting when you change the default value, Auto (AUTO), for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264SpatialAdaptiveQuantization is Enabled (ENABLED). Keep this default value to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to set H264SpatialAdaptiveQuantization to Disabled (DISABLED). Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (H264AdaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher. To manually enable or disable H264SpatialAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO."
  )
  @as("SpatialAdaptiveQuantization")
  spatialAdaptiveQuantization: option<h264SpatialAdaptiveQuantization>,
  @ocaml.doc(
    "Ignore this setting unless you need to comply with a specification that requires a specific value. If you don't have a specification requirement, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness (sharpness) or by enabling a noise reducer filter (noiseReducerFilter). The Softness (softness) setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, for flat quantization. Choose the value 1 or 16 to use the default JVT softening quantization matricies from the H.264 specification. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video."
  )
  @as("Softness")
  softness: option<__integerMin0Max128>,
  @ocaml.doc(
    "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
  )
  @as("SlowPal")
  slowPal: option<h264SlowPal>,
  @ocaml.doc(
    "Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures."
  )
  @as("Slices")
  slices: option<__integerMin1Max32>,
  @ocaml.doc(
    "Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr."
  )
  @as("SceneChangeDetect")
  sceneChangeDetect: option<h264SceneChangeDetect>,
  @ocaml.doc(
    "Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE)."
  )
  @as("ScanTypeConversionMode")
  scanTypeConversionMode: option<h264ScanTypeConversionMode>,
  @ocaml.doc("Places a PPS header on each encoded picture, even if repeated.") @as("RepeatPps")
  repeatPps: option<h264RepeatPps>,
  @ocaml.doc(
    "Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR)."
  )
  @as("RateControlMode")
  rateControlMode: option<h264RateControlMode>,
  @ocaml.doc(
    "Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode (RateControlMode)."
  )
  @as("QvbrSettings")
  qvbrSettings: option<h264QvbrSettings>,
  @ocaml.doc(
    "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
  )
  @as("QualityTuningLevel")
  qualityTuningLevel: option<h264QualityTuningLevel>,
  @ocaml.doc(
    "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40."
  )
  @as("ParNumerator")
  parNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33."
  )
  @as("ParDenominator")
  parDenominator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
  )
  @as("ParControl")
  parControl: option<h264ParControl>,
  @ocaml.doc(
    "Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding."
  )
  @as("NumberReferenceFrames")
  numberReferenceFrames: option<__integerMin1Max6>,
  @ocaml.doc(
    "This setting to determines the number of B-frames that MediaConvert puts between reference frames in this output. We recommend that you use automatic behavior to allow the transcoder to choose the best value based on characteristics of your input video. In the console, choose AUTO to select this automatic behavior. When you manually edit your JSON job specification, leave this setting out to choose automatic behavior. When you want to specify this number explicitly, choose a whole number from 0 through 7."
  )
  @as("NumberBFramesBetweenReferenceFrames")
  numberBFramesBetweenReferenceFrames: option<__integerMin0Max7>,
  @ocaml.doc(
    "Use this setting only when you also enable Scene change detection (SceneChangeDetect). This setting determines how the encoder manages the spacing between I-frames that it inserts as part of the I-frame cadence and the I-frames that it inserts for Scene change detection. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, keep the default value by leaving this setting out of your JSON job specification. In the console, do this by keeping the default empty value. When you explicitly specify a value for this setting, the encoder determines whether to skip a cadence-driven I-frame by the value you set. For example, if you set Min I interval (minIInterval) to 5 and a cadence-driven I-frame would fall within 5 frames of a scene-change I-frame, then the encoder skips the cadence-driven I-frame. In this way, one GOP is shrunk slightly and one GOP is stretched slightly. When the cadence-driven I-frames are farther from the scene-change I-frame than the value you set, then the encoder leaves all I-frames in place and the GOPs surrounding the scene change are smaller than the usual cadence GOPs."
  )
  @as("MinIInterval")
  minIInterval: option<__integerMin0Max30>,
  @ocaml.doc(
    "Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR."
  )
  @as("MaxBitrate")
  maxBitrate: option<__integerMin1000Max1152000000>,
  @ocaml.doc(
    "Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose."
  )
  @as("InterlaceMode")
  interlaceMode: option<h264InterlaceMode>,
  @ocaml.doc(
    "Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000."
  )
  @as("HrdBufferSize")
  hrdBufferSize: option<__integerMin0Max1152000000>,
  @ocaml.doc("Percentage of the buffer that should initially be filled (HRD buffer model).")
  @as("HrdBufferInitialFillPercentage")
  hrdBufferInitialFillPercentage: option<__integerMin0Max100>,
  @ocaml.doc(
    "Specify how the transcoder determines GOP size for this output. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, choose Auto (AUTO) and and leave GOP size (GopSize) blank. By default, if you don't specify GOP mode control (GopSizeUnits), MediaConvert will use automatic behavior. If your output group specifies HLS, DASH, or CMAF, set GOP mode control to Auto and leave GOP size blank in each output in your output group. To explicitly specify the GOP length, choose Specified, frames (FRAMES) or Specified, seconds (SECONDS) and then provide the GOP length in the related setting GOP size (GopSize)."
  )
  @as("GopSizeUnits")
  gopSizeUnits: option<h264GopSizeUnits>,
  @ocaml.doc(
    "Use this setting only when you set GOP mode control (GopSizeUnits) to Specified, frames (FRAMES) or Specified, seconds (SECONDS). Specify the GOP length using a whole number of frames or a decimal value of seconds. MediaConvert will interpret this value as frames or seconds depending on the value you choose for GOP mode control (GopSizeUnits). If you want to allow MediaConvert to automatically determine GOP size, leave GOP size blank and set GOP mode control to Auto (AUTO). If your output group specifies HLS, DASH, or CMAF, leave GOP size blank and set GOP mode control to Auto in each output in your output group."
  )
  @as("GopSize")
  gopSize: option<__doubleMin0>,
  @ocaml.doc(
    "Specify the relative frequency of open to closed GOPs in this output. For example, if you want to allow four open GOPs and then require a closed GOP, set this value to 5. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, keep the default value by leaving this setting out of your JSON job specification. In the console, do this by keeping the default empty value. If you do explicitly specify a value, for segmented outputs, don't set this value to 0."
  )
  @as("GopClosedCadence")
  gopClosedCadence: option<__integerMin0Max2147483647>,
  @ocaml.doc("If enable, use reference B frames for GOP structures that have B frames > 1.")
  @as("GopBReference")
  gopBReference: option<h264GopBReference>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
  )
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<h264FramerateConversionAlgorithm>,
  @ocaml.doc(
    "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
  )
  @as("FramerateControl")
  framerateControl: option<h264FramerateControl>,
  @ocaml.doc(
    "Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264FlickerAdaptiveQuantization is Disabled (DISABLED). Change this value to Enabled (ENABLED) to reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. To manually enable or disable H264FlickerAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO."
  )
  @as("FlickerAdaptiveQuantization")
  flickerAdaptiveQuantization: option<h264FlickerAdaptiveQuantization>,
  @ocaml.doc(
    "The video encoding method for your MPEG-4 AVC output. Keep the default value, PAFF, to have MediaConvert use PAFF encoding for interlaced outputs. Choose Force field (FORCE_FIELD) to disable PAFF encoding and create separate interlaced fields. Choose MBAFF to disable PAFF and have MediaConvert use MBAFF encoding for interlaced outputs."
  )
  @as("FieldEncoding")
  fieldEncoding: option<h264FieldEncoding>,
  @ocaml.doc("Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC.")
  @as("EntropyEncoding")
  entropyEncoding: option<h264EntropyEncoding>,
  @ocaml.doc(
    "Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames)."
  )
  @as("DynamicSubGop")
  dynamicSubGop: option<h264DynamicSubGop>,
  @ocaml.doc(
    "H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License."
  )
  @as("CodecProfile")
  codecProfile: option<h264CodecProfile>,
  @ocaml.doc(
    "Specify an H.264 level that is consistent with your output video settings. If you aren't sure what level to specify, choose Auto (AUTO)."
  )
  @as("CodecLevel")
  codecLevel: option<h264CodecLevel>,
  @ocaml.doc(
    "Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000."
  )
  @as("Bitrate")
  bitrate: option<__integerMin1000Max1152000000>,
  @ocaml.doc(
    "Keep the default value, Auto (AUTO), for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set H264AdaptiveQuantization to a value other than Auto (AUTO). Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization (H264AdaptiveQuantization) to Off (OFF). Related settings: The value that you choose here applies to the following settings: H264FlickerAdaptiveQuantization, H264SpatialAdaptiveQuantization, and H264TemporalAdaptiveQuantization."
  )
  @as("AdaptiveQuantization")
  adaptiveQuantization: option<h264AdaptiveQuantization>,
}
@ocaml.doc(
  "If your input captions are SCC, SMI, SRT, STL, TTML, WebVTT, or IMSC 1.1 in an xml file, specify the URI of the input caption source file. If your caption source is IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings."
)
type fileSourceSettings = {
  @ocaml.doc(
    "When you use the setting Time delta (TimeDelta) to adjust the sync between your sidecar captions and your video, use this setting to specify the units for the delta that you specify. When you don't specify a value for Time delta units (TimeDeltaUnits), MediaConvert uses seconds by default."
  )
  @as("TimeDeltaUnits")
  timeDeltaUnits: option<fileSourceTimeDeltaUnits>,
  @ocaml.doc(
    "Optional. Use this setting when you need to adjust the sync between your sidecar captions and your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/time-delta-use-cases.html. Enter a positive or negative number to modify the times in the captions file. For example, type 15 to add 15 seconds to all the times in the captions file. Type -5 to subtract 5 seconds from the times in the captions file. You can optionally specify your time delta in milliseconds instead of seconds. When you do so, set the related setting, Time delta units (TimeDeltaUnits) to Milliseconds (MILLISECONDS). Note that, when you specify a time delta for timecode-based caption sources, such as SCC and STL, and your time delta isn't a multiple of the input frame rate, MediaConvert snaps the captions to the nearest frame. For example, when your input video frame rate is 25 fps and you specify 1010ms for time delta, MediaConvert delays your captions by 1000 ms."
  )
  @as("TimeDelta")
  timeDelta: option<__integerMinNegative2147483648Max2147483647>,
  @ocaml.doc(
    "External caption file used for loading captions. Accepted file extensions are 'scc', 'ttml', 'dfxp', 'stl', 'srt', 'xml', 'smi', 'webvtt', and 'vtt'."
  )
  @as("SourceFile")
  sourceFile: option<
    __stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMIVttVTTWebvttWEBVTTHttpsSccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMIVttVTTWebvttWEBVTT,
  >,
  @ocaml.doc(
    "Ignore this setting unless your input captions format is SCC. To have the service compensate for differing frame rates between your input captions and input video, specify the frame rate of the captions file. Specify this value as a fraction. When you work directly in your JSON job specification, use the settings framerateNumerator and framerateDenominator. For example, you might specify 24 / 1 for 24 fps, 25 / 1 for 25 fps, 24000 / 1001 for 23.976 fps, or 30000 / 1001 for 29.97 fps."
  )
  @as("Framerate")
  framerate: option<captionSourceFramerate>,
  @ocaml.doc(
    "Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708."
  )
  @as("Convert608To708")
  convert608To708: option<fileSourceConvert608To708>,
}
@ocaml.doc(
  "Settings for Event Signaling And Messaging (ESAM). If you don't do ad insertion, you can ignore these settings."
)
type esamSettings = {
  @ocaml.doc(
    "Specifies an ESAM SignalProcessingNotification XML as per OC-SP-ESAM-API-I03-131025. The transcoder uses the signal processing instructions that you provide in the setting SCC XML (sccXml)."
  )
  @as("SignalProcessingNotification")
  signalProcessingNotification: option<esamSignalProcessingNotification>,
  @ocaml.doc(
    "Specifies the stream distance, in milliseconds, between the SCTE 35 messages that the transcoder places and the splice points that they refer to. If the time between the start of the asset and the SCTE-35 message is less than this value, then the transcoder places the SCTE-35 marker at the beginning of the stream."
  )
  @as("ResponseSignalPreroll")
  responseSignalPreroll: option<__integerMin0Max30000>,
  @ocaml.doc(
    "Specifies an ESAM ManifestConfirmConditionNotification XML as per OC-SP-ESAM-API-I03-131025. The transcoder uses the manifest conditioning instructions that you provide in the setting MCC XML (mccXml)."
  )
  @as("ManifestConfirmConditionNotification")
  manifestConfirmConditionNotification: option<esamManifestConfirmConditionNotification>,
}
@ocaml.doc(
  "With AWS Elemental MediaConvert, you can create profile 5 Dolby Vision outputs from MXF and IMF sources that contain mastering information as frame-interleaved Dolby Vision metadata."
)
type dolbyVision = {
  @ocaml.doc(
    "In the current MediaConvert implementation, the Dolby Vision profile is always 5 (PROFILE_5). Therefore, all of your inputs must contain Dolby Vision frame interleaved data."
  )
  @as("Profile")
  profile: option<dolbyVisionProfile>,
  @ocaml.doc(
    "Use Dolby Vision Mode to choose how the service will handle Dolby Vision MaxCLL and MaxFALL properies."
  )
  @as("L6Mode")
  l6Mode: option<dolbyVisionLevel6Mode>,
  @ocaml.doc(
    "Use these settings when you set DolbyVisionLevel6Mode to SPECIFY to override the MaxCLL and MaxFALL values in your input with new values."
  )
  @as("L6Metadata")
  l6Metadata: option<dolbyVisionLevel6Metadata>,
}
@ocaml.doc(
  "Specify the details for each additional DASH manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group."
)
type dashAdditionalManifest = {
  @ocaml.doc("Specify the outputs that you want this additional top-level manifest to reference.")
  @as("SelectedOutputs")
  selectedOutputs: option<__listOf__stringMin1>,
  @ocaml.doc(
    "Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your DASH group is film-name.mpd. If you enter \"-no-premium\" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.mpd."
  )
  @as("ManifestNameModifier")
  manifestNameModifier: option<__stringMin1>,
}
@ocaml.doc("Settings for color correction.")
type colorCorrector = {
  @ocaml.doc("Saturation level.") @as("Saturation") saturation: option<__integerMin1Max100>,
  @ocaml.doc(
    "Specify the video color sample range for this output. To create a full range output, you must start with a full range YUV input and keep the default value, None (NONE). To create a limited range output from a full range input, choose Limited range (LIMITED_RANGE_SQUEEZE). With RGB inputs, your output is always limited range, regardless of your choice here. When you create a limited range output from a full range input, MediaConvert limits the active pixel values in a way that depends on the output's bit depth: 8-bit outputs contain only values from 16 through 235 and 10-bit outputs contain only values from 64 through 940. With this conversion, MediaConvert also changes the output metadata to note the limited range."
  )
  @as("SampleRangeConversion")
  sampleRangeConversion: option<sampleRangeConversion>,
  @ocaml.doc("Hue in degrees.") @as("Hue") hue: option<__integerMinNegative180Max180>,
  @ocaml.doc(
    "Use these settings when you convert to the HDR 10 color space. Specify the SMPTE ST 2086 Mastering Display Color Volume static metadata that you want signaled in the output. These values don't affect the pixel values that are encoded in the video stream. They are intended to help the downstream video player display content in a way that reflects the intentions of the the content creator. When you set Color space conversion (ColorSpaceConversion) to HDR 10 (FORCE_HDR10), these settings are required. You must set values for Max frame average light level (maxFrameAverageLightLevel) and Max content light level (maxContentLightLevel); these settings don't have a default value. The default values for the other HDR 10 metadata settings are defined by the P3D65 color space. For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr."
  )
  @as("Hdr10Metadata")
  hdr10Metadata: option<hdr10Metadata>,
  @ocaml.doc("Contrast level.") @as("Contrast") contrast: option<__integerMin1Max100>,
  @ocaml.doc(
    "Specify the color space you want for this output. The service supports conversion between HDR formats, between SDR formats, from SDR to HDR, and from HDR to SDR. SDR to HDR conversion doesn't upgrade the dynamic range. The converted video has an HDR format, but visually appears the same as an unconverted output. HDR to SDR conversion uses Elemental tone mapping technology to approximate the outcome of manually regrading from HDR to SDR."
  )
  @as("ColorSpaceConversion")
  colorSpaceConversion: option<colorSpaceConversion>,
  @ocaml.doc("Brightness level.") @as("Brightness") brightness: option<__integerMin1Max100>,
}
@ocaml.doc(
  "Specify the details for each pair of HLS and DASH additional manifests that you want the service to generate for this CMAF output group. Each pair of manifests can reference a different subset of outputs in the group."
)
type cmafAdditionalManifest = {
  @ocaml.doc("Specify the outputs that you want this additional top-level manifest to reference.")
  @as("SelectedOutputs")
  selectedOutputs: option<__listOf__stringMin1>,
  @ocaml.doc(
    "Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your HLS group is film-name.m3u8. If you enter \"-no-premium\" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.m3u8. For HLS output groups, specify a manifestNameModifier that is different from the nameModifier of the output. The service uses the output name modifier to create unique names for the individual variant manifests."
  )
  @as("ManifestNameModifier")
  manifestNameModifier: option<__stringMin1>,
}
@ocaml.doc(
  "Required when you choose AVC-Intra for your output video codec. For more information about the AVC-Intra settings, see the relevant specification. For detailed information about SD and HD in AVC-Intra, see https://ieeexplore.ieee.org/document/7290936. For information about 4K/2K in AVC-Intra, see https://pro-av.panasonic.net/en/avc-ultra/AVC-ULTRAoverview.pdf."
)
type avcIntraSettings = {
  @ocaml.doc(
    "When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture."
  )
  @as("Telecine")
  telecine: option<avcIntraTelecine>,
  @ocaml.doc(
    "Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1."
  )
  @as("SlowPal")
  slowPal: option<avcIntraSlowPal>,
  @ocaml.doc(
    "Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE)."
  )
  @as("ScanTypeConversionMode")
  scanTypeConversionMode: option<avcIntraScanTypeConversionMode>,
  @ocaml.doc(
    "Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose."
  )
  @as("InterlaceMode")
  interlaceMode: option<avcIntraInterlaceMode>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin24Max60000>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max1001>,
  @ocaml.doc(
    "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
  )
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<avcIntraFramerateConversionAlgorithm>,
  @ocaml.doc(
    "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
  )
  @as("FramerateControl")
  framerateControl: option<avcIntraFramerateControl>,
  @ocaml.doc(
    "Optional when you set AVC-Intra class (avcIntraClass) to Class 4K/2K (CLASS_4K_2K). When you set AVC-Intra class to a different value, this object isn't allowed."
  )
  @as("AvcIntraUhdSettings")
  avcIntraUhdSettings: option<avcIntraUhdSettings>,
  @ocaml.doc(
    "Specify the AVC-Intra class of your output. The AVC-Intra class selection determines the output video bit rate depending on the frame rate of the output. Outputs with higher class values have higher bitrates and improved image quality. Note that for Class 4K/2K, MediaConvert supports only 4:2:2 chroma subsampling."
  )
  @as("AvcIntraClass")
  avcIntraClass: option<avcIntraClass>,
}
@ocaml.doc("Required when you set Codec, under VideoDescription>CodecSettings to the value AV1.")
type av1Settings = {
  @ocaml.doc(
    "Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher."
  )
  @as("SpatialAdaptiveQuantization")
  spatialAdaptiveQuantization: option<av1SpatialAdaptiveQuantization>,
  @ocaml.doc(
    "Specify the number of slices per picture. This value must be 1, 2, 4, 8, 16, or 32. For progressive pictures, this value must be less than or equal to the number of macroblock rows. For interlaced pictures, this value must be less than or equal to half the number of macroblock rows."
  )
  @as("Slices")
  slices: option<__integerMin1Max32>,
  @ocaml.doc(
    "'With AV1 outputs, for rate control mode, MediaConvert supports only quality-defined variable bitrate (QVBR). You can''t use CBR or VBR.'"
  )
  @as("RateControlMode")
  rateControlMode: option<av1RateControlMode>,
  @ocaml.doc(
    "Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode (RateControlMode)."
  )
  @as("QvbrSettings")
  qvbrSettings: option<av1QvbrSettings>,
  @ocaml.doc(
    "Specify from the number of B-frames, in the range of 0-15. For AV1 encoding, we recommend using 7 or 15. Choose a larger number for a lower bitrate and smaller file size; choose a smaller number for better video quality."
  )
  @as("NumberBFramesBetweenReferenceFrames")
  numberBFramesBetweenReferenceFrames: option<__integerMin0Max15>,
  @ocaml.doc(
    "Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR."
  )
  @as("MaxBitrate")
  maxBitrate: option<__integerMin1000Max1152000000>,
  @ocaml.doc(
    "Specify the GOP length (keyframe interval) in frames. With AV1, MediaConvert doesn't support GOP length in seconds. This value must be greater than zero and preferably equal to 1 + ((numberBFrames + 1) * x), where x is an integer value."
  )
  @as("GopSize")
  gopSize: option<__doubleMin0>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateNumerator")
  framerateNumerator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
  )
  @as("FramerateDenominator")
  framerateDenominator: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost."
  )
  @as("FramerateConversionAlgorithm")
  framerateConversionAlgorithm: option<av1FramerateConversionAlgorithm>,
  @ocaml.doc(
    "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
  )
  @as("FramerateControl")
  framerateControl: option<av1FramerateControl>,
  @ocaml.doc(
    "Specify the Bit depth (Av1BitDepth). You can choose 8-bit (BIT_8) or 10-bit (BIT_10)."
  )
  @as("BitDepth")
  bitDepth: option<av1BitDepth>,
  @ocaml.doc(
    "Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to Spatial adaptive quantization (spatialAdaptiveQuantization)."
  )
  @as("AdaptiveQuantization")
  adaptiveQuantization: option<av1AdaptiveQuantization>,
}
@ocaml.doc(
  "Use automated encoding to have MediaConvert choose your encoding settings for you, based on characteristics of your input video."
)
type automatedEncodingSettings = {
  @ocaml.doc(
    "Use automated ABR to have MediaConvert set up the renditions in your ABR package for you automatically, based on characteristics of your input video. This feature optimizes video quality while minimizing the overall size of your ABR package."
  )
  @as("AbrSettings")
  abrSettings: option<automatedAbrSettings>,
}
@ocaml.doc(
  "Use audio selector groups to combine multiple sidecar audio inputs so that you can assign them to a single output audio tab (AudioDescription). Note that, if you're working with embedded audio, it's simpler to assign multiple input tracks into a single audio selector rather than use an audio selector group."
)
type audioSelectorGroup = {
  @ocaml.doc(
    "Name of an Audio Selector within the same input to include in the group.  Audio selector names are standardized, based on their order within the input (e.g., \"Audio Selector 1\"). The audio selector name parameter can be repeated to add any number of audio selectors to the group."
  )
  @as("AudioSelectorNames")
  audioSelectorNames: option<__listOf__stringMin1>,
}
@ocaml.doc(
  "Settings related to audio encoding. The settings in this group vary depending on the value that you choose for your audio codec."
)
type audioCodecSettings = {
  @ocaml.doc(
    "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value WAV."
  )
  @as("WavSettings")
  wavSettings: option<wavSettings>,
  @ocaml.doc(
    "Required when you set Codec, under AudioDescriptions>CodecSettings, to the value Vorbis."
  )
  @as("VorbisSettings")
  vorbisSettings: option<vorbisSettings>,
  @ocaml.doc(
    "Required when you set Codec, under AudioDescriptions>CodecSettings, to the value OPUS."
  )
  @as("OpusSettings")
  opusSettings: option<opusSettings>,
  @ocaml.doc(
    "Required when you set Codec, under AudioDescriptions>CodecSettings, to the value MP3."
  )
  @as("Mp3Settings")
  mp3Settings: option<mp3Settings>,
  @ocaml.doc(
    "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value MP2."
  )
  @as("Mp2Settings")
  mp2Settings: option<mp2Settings>,
  @ocaml.doc(
    "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3."
  )
  @as("Eac3Settings")
  eac3Settings: option<eac3Settings>,
  @ocaml.doc(
    "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3_ATMOS."
  )
  @as("Eac3AtmosSettings")
  eac3AtmosSettings: option<eac3AtmosSettings>,
  @ocaml.doc(
    "Choose the audio codec for this output. Note that the option Dolby Digital passthrough (PASSTHROUGH) applies only to Dolby Digital and Dolby Digital Plus audio inputs. Make sure that you choose a codec that's supported with your output container: https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers.html#reference-codecs-containers-output-audio For audio-only outputs, make sure that both your input audio codec and your output audio codec are supported for audio-only workflows. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers-input.html#reference-codecs-containers-input-audio-only and https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers.html#audio-only-output"
  )
  @as("Codec")
  codec: option<audioCodec>,
  @ocaml.doc(
    "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AIFF."
  )
  @as("AiffSettings")
  aiffSettings: option<aiffSettings>,
  @ocaml.doc(
    "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AC3."
  )
  @as("Ac3Settings")
  ac3Settings: option<ac3Settings>,
  @ocaml.doc(
    "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AAC. The service accepts one of two mutually exclusive groups of AAC settings--VBR and CBR. To select one of these modes, set the value of Bitrate control mode (rateControlMode) to \"VBR\" or \"CBR\".  In VBR mode, you control the audio quality with the setting VBR quality (vbrQuality). In CBR mode, you use the setting Bitrate (bitrate). Defaults and valid values depend on the rate control mode."
  )
  @as("AacSettings")
  aacSettings: option<aacSettings>,
}
type __mapOfAudioSelectorGroup = Js.Dict.t<audioSelectorGroup>
type __listOfQueue = array<queue>
type __listOfOutputDetail = array<outputDetail>
type __listOfOutputChannelMapping = array<outputChannelMapping>
type __listOfMsSmoothAdditionalManifest = array<msSmoothAdditionalManifest>
type __listOfHlsAdditionalManifest = array<hlsAdditionalManifest>
type __listOfDashAdditionalManifest = array<dashAdditionalManifest>
type __listOfCmafAdditionalManifest = array<cmafAdditionalManifest>
@ocaml.doc(
  "Video codec settings, (CodecSettings) under (VideoDescription), contains the group of settings related to video encoding. The settings in this group vary depending on the value that you choose for Video codec (Codec). For each codec enum that you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * AV1, Av1Settings * AVC_INTRA, AvcIntraSettings * FRAME_CAPTURE, FrameCaptureSettings * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * VC3, Vc3Settings * VP8, Vp8Settings * VP9, Vp9Settings * XAVC, XavcSettings"
)
type videoCodecSettings = {
  @ocaml.doc(
    "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value XAVC."
  )
  @as("XavcSettings")
  xavcSettings: option<xavcSettings>,
  @ocaml.doc(
    "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP9."
  )
  @as("Vp9Settings")
  vp9Settings: option<vp9Settings>,
  @ocaml.doc(
    "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP8."
  )
  @as("Vp8Settings")
  vp8Settings: option<vp8Settings>,
  @ocaml.doc(
    "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VC3"
  )
  @as("Vc3Settings")
  vc3Settings: option<vc3Settings>,
  @ocaml.doc(
    "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value PRORES."
  )
  @as("ProresSettings")
  proresSettings: option<proresSettings>,
  @ocaml.doc(
    "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2."
  )
  @as("Mpeg2Settings")
  mpeg2Settings: option<mpeg2Settings>,
  @ocaml.doc("Settings for H265 codec") @as("H265Settings") h265Settings: option<h265Settings>,
  @ocaml.doc(
    "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264."
  )
  @as("H264Settings")
  h264Settings: option<h264Settings>,
  @ocaml.doc(
    "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value FRAME_CAPTURE."
  )
  @as("FrameCaptureSettings")
  frameCaptureSettings: option<frameCaptureSettings>,
  @ocaml.doc(
    "Specifies the video codec. This must be equal to one of the enum values defined by the object  VideoCodec."
  )
  @as("Codec")
  codec: option<videoCodec>,
  @ocaml.doc(
    "Required when you choose AVC-Intra for your output video codec. For more information about the AVC-Intra settings, see the relevant specification. For detailed information about SD and HD in AVC-Intra, see https://ieeexplore.ieee.org/document/7290936. For information about 4K/2K in AVC-Intra, see https://pro-av.panasonic.net/en/avc-ultra/AVC-ULTRAoverview.pdf."
  )
  @as("AvcIntraSettings")
  avcIntraSettings: option<avcIntraSettings>,
  @ocaml.doc("Required when you set Codec, under VideoDescription>CodecSettings to the value AV1.")
  @as("Av1Settings")
  av1Settings: option<av1Settings>,
}
@ocaml.doc(
  "Insert user-defined custom ID3 metadata (id3) at timecodes (timecode) that you specify. In each output that you want to include this metadata, you must set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH)."
)
type timedMetadataInsertion = {
  @ocaml.doc("Id3Insertions contains the array of Id3Insertion instances.") @as("Id3Insertions")
  id3Insertions: option<__listOfId3Insertion>,
}
@ocaml.doc(
  "If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to specify the value SpekeKeyProvider."
)
type msSmoothEncryptionSettings = {
  @ocaml.doc(
    "If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead."
  )
  @as("SpekeKeyProvider")
  spekeKeyProvider: option<spekeKeyProvider>,
}
@ocaml.doc(
  "Use the image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each input or output individually. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/graphic-overlay.html. This setting is disabled by default."
)
type imageInserter = {
  @ocaml.doc(
    "Specify the images that you want to overlay on your video. The images must be PNG or TGA files."
  )
  @as("InsertableImages")
  insertableImages: option<__listOfInsertableImage>,
}
@ocaml.doc("Settings for HLS encryption")
type hlsEncryptionSettings = {
  @ocaml.doc(
    "Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html."
  )
  @as("Type")
  type_: option<hlsKeyProviderType>,
  @ocaml.doc("Use these settings to set up encryption with a static key provider.")
  @as("StaticKeyProvider")
  staticKeyProvider: option<staticKeyProvider>,
  @ocaml.doc(
    "If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead."
  )
  @as("SpekeKeyProvider")
  spekeKeyProvider: option<spekeKeyProvider>,
  @ocaml.doc(
    "Enable this setting to insert the EXT-X-SESSION-KEY element into the master playlist. This allows for offline Apple HLS FairPlay content protection."
  )
  @as("OfflineEncrypted")
  offlineEncrypted: option<hlsOfflineEncrypted>,
  @ocaml.doc(
    "The Initialization Vector is a 128-bit number used in conjunction with the key for encrypting blocks. If set to INCLUDE, Initialization Vector is listed in the manifest. Otherwise Initialization Vector is not in the manifest."
  )
  @as("InitializationVectorInManifest")
  initializationVectorInManifest: option<hlsInitializationVectorInManifest>,
  @ocaml.doc(
    "Encrypts the segments with the given encryption scheme. Leave blank to disable. Selecting 'Disabled' in the web interface also disables encryption."
  )
  @as("EncryptionMethod")
  encryptionMethod: option<hlsEncryptionType>,
  @ocaml.doc(
    "This is a 128-bit, 16-byte hex value represented by a 32-character text string. If this parameter is not set then the Initialization Vector will follow the segment number by default."
  )
  @as("ConstantInitializationVector")
  constantInitializationVector: option<__stringMin32Max32Pattern09aFAF32>,
}
@ocaml.doc("Settings associated with the destination. Will vary based on the type of destination")
type destinationSettings = {
  @ocaml.doc("Settings associated with S3 destination") @as("S3Settings")
  s3Settings: option<s3DestinationSettings>,
}
@ocaml.doc("Specifies DRM settings for DASH outputs.")
type dashIsoEncryptionSettings = {
  @ocaml.doc(
    "If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead."
  )
  @as("SpekeKeyProvider")
  spekeKeyProvider: option<spekeKeyProvider>,
  @ocaml.doc(
    "This setting can improve the compatibility of your output with video players on obsolete devices. It applies only to DASH H.264 outputs with DRM encryption. Choose Unencrypted SEI (UNENCRYPTED_SEI) only to correct problems with playback on older devices. Otherwise, keep the default setting CENC v1 (CENC_V1). If you choose Unencrypted SEI, for that output, the service will exclude the access unit delimiter and will leave the SEI NAL units unencrypted."
  )
  @as("PlaybackDeviceCompatibility")
  playbackDeviceCompatibility: option<dashIsoPlaybackDeviceCompatibility>,
}
@ocaml.doc("Container specific settings.")
type containerSettings = {
  @ocaml.doc("These settings relate to your MXF output container.") @as("MxfSettings")
  mxfSettings: option<mxfSettings>,
  @ocaml.doc(
    "These settings relate to the fragmented MP4 container for the segments in your DASH outputs."
  )
  @as("MpdSettings")
  mpdSettings: option<mpdSettings>,
  @ocaml.doc(
    "These settings relate to your MP4 output container. You can create audio only outputs with this container. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/supported-codecs-containers-audio-only.html#output-codecs-and-containers-supported-for-audio-only."
  )
  @as("Mp4Settings")
  mp4Settings: option<mp4Settings>,
  @ocaml.doc("These settings relate to your QuickTime MOV output container.") @as("MovSettings")
  movSettings: option<movSettings>,
  @ocaml.doc(
    "These settings relate to the MPEG-2 transport stream (MPEG2-TS) container for the MPEG2-TS segments in your HLS outputs."
  )
  @as("M3u8Settings")
  m3u8Settings: option<m3u8Settings>,
  @ocaml.doc(
    "MPEG-2 TS container settings. These apply to outputs in a File output group when the output's container (ContainerType) is MPEG-2 Transport Stream (M2TS). In these assets, data is organized by the program map table (PMT). Each transport stream program contains subsets of data, including audio, video, and metadata. Each of these subsets of data has a numerical label called a packet identifier (PID). Each transport stream program corresponds to one MediaConvert output. The PMT lists the types of data in a program along with their PID. Downstream systems and players use the program map table to look up the PID for each type of data it accesses and then uses the PIDs to locate specific data within the asset."
  )
  @as("M2tsSettings")
  m2tsSettings: option<m2tsSettings>,
  @ocaml.doc("Settings for F4v container") @as("F4vSettings") f4vSettings: option<f4vSettings>,
  @ocaml.doc(
    "Container for this output. Some containers require a container settings object. If not specified, the default object will be created."
  )
  @as("Container")
  container: option<containerType>,
  @ocaml.doc(
    "These settings relate to the fragmented MP4 container for the segments in your CMAF outputs."
  )
  @as("CmfcSettings")
  cmfcSettings: option<cmfcSettings>,
}
@ocaml.doc("Settings for CMAF encryption")
type cmafEncryptionSettings = {
  @ocaml.doc(
    "Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html."
  )
  @as("Type")
  type_: option<cmafKeyProviderType>,
  @ocaml.doc("Use these settings to set up encryption with a static key provider.")
  @as("StaticKeyProvider")
  staticKeyProvider: option<staticKeyProvider>,
  @ocaml.doc(
    "If your output group type is CMAF, use these settings when doing DRM encryption with a SPEKE-compliant key provider. If your output group type is HLS, DASH, or Microsoft Smooth, use the SpekeKeyProvider settings instead."
  )
  @as("SpekeKeyProvider")
  spekeKeyProvider: option<spekeKeyProviderCmaf>,
  @ocaml.doc(
    "When you use DRM with CMAF outputs, choose whether the service writes the 128-bit encryption initialization vector in the HLS and DASH manifests."
  )
  @as("InitializationVectorInManifest")
  initializationVectorInManifest: option<cmafInitializationVectorInManifest>,
  @ocaml.doc(
    "Specify the encryption scheme that you want the service to use when encrypting your CMAF segments. Choose AES-CBC subsample (SAMPLE-AES) or AES_CTR (AES-CTR)."
  )
  @as("EncryptionMethod")
  encryptionMethod: option<cmafEncryptionType>,
  @ocaml.doc(
    "This is a 128-bit, 16-byte hex value represented by a 32-character text string. If this parameter is not set then the Initialization Vector will follow the segment number by default."
  )
  @as("ConstantInitializationVector")
  constantInitializationVector: option<__stringMin32Max32Pattern09aFAF32>,
}
@ocaml.doc(
  "If your input captions are SCC, TTML, STL, SMI, SRT, or IMSC in an xml file, specify the URI of the input captions source file. If your input captions are IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings."
)
type captionSourceSettings = {
  @ocaml.doc(
    "Settings specific to WebVTT sources in HLS alternative rendition group. Specify the properties (renditionGroupId, renditionName or renditionLanguageCode) to identify the unique subtitle track among the alternative rendition groups present in the HLS manifest. If no unique track is found, or multiple tracks match the specified properties, the job fails. If there is only one subtitle track in the rendition group, the settings can be left empty and the default subtitle track will be chosen. If your caption source is a sidecar file, use FileSourceSettings instead of WebvttHlsSourceSettings."
  )
  @as("WebvttHlsSourceSettings")
  webvttHlsSourceSettings: option<webvttHlsSourceSettings>,
  @ocaml.doc(
    "Settings specific to caption sources that are specified by track number. Currently, this is only IMSC captions in an IMF package. If your caption source is IMSC 1.1 in a separate xml file, use FileSourceSettings instead of TrackSourceSettings."
  )
  @as("TrackSourceSettings")
  trackSourceSettings: option<trackSourceSettings>,
  @ocaml.doc("Settings specific to Teletext caption sources, including Page number.")
  @as("TeletextSourceSettings")
  teletextSourceSettings: option<teletextSourceSettings>,
  @ocaml.doc(
    "Use Source (SourceType) to identify the format of your input captions.  The service cannot auto-detect caption format."
  )
  @as("SourceType")
  sourceType: option<captionSourceType>,
  @ocaml.doc(
    "If your input captions are SCC, SMI, SRT, STL, TTML, WebVTT, or IMSC 1.1 in an xml file, specify the URI of the input caption source file. If your caption source is IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings."
  )
  @as("FileSourceSettings")
  fileSourceSettings: option<fileSourceSettings>,
  @ocaml.doc("Settings for embedded captions Source") @as("EmbeddedSourceSettings")
  embeddedSourceSettings: option<embeddedSourceSettings>,
  @ocaml.doc("DVB Sub Source Settings") @as("DvbSubSourceSettings")
  dvbSubSourceSettings: option<dvbSubSourceSettings>,
  @ocaml.doc("Settings for ancillary captions source.") @as("AncillarySourceSettings")
  ancillarySourceSettings: option<ancillarySourceSettings>,
}
@ocaml.doc(
  "Settings related to one captions tab on the MediaConvert console. In your job JSON, an instance of captions DestinationSettings is equivalent to one captions tab in the console. Usually, one captions tab corresponds to one output captions track. Depending on your output captions format, one tab might correspond to a set of output captions tracks. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/including-captions.html."
)
type captionDestinationSettings = {
  @ocaml.doc(
    "Settings related to WebVTT captions. WebVTT is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to WebVTT."
  )
  @as("WebvttDestinationSettings")
  webvttDestinationSettings: option<webvttDestinationSettings>,
  @ocaml.doc(
    "Settings related to TTML captions. TTML is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to TTML."
  )
  @as("TtmlDestinationSettings")
  ttmlDestinationSettings: option<ttmlDestinationSettings>,
  @ocaml.doc(
    "Settings related to teletext captions. Set up teletext captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/teletext-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to TELETEXT."
  )
  @as("TeletextDestinationSettings")
  teletextDestinationSettings: option<teletextDestinationSettings>,
  @ocaml.doc(
    "Settings related to SRT captions. SRT is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to SRT."
  )
  @as("SrtDestinationSettings")
  srtDestinationSettings: option<srtDestinationSettings>,
  @ocaml.doc(
    "Settings related to SCC captions. SCC is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/scc-srt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to SCC."
  )
  @as("SccDestinationSettings")
  sccDestinationSettings: option<sccDestinationSettings>,
  @ocaml.doc(
    "Settings related to IMSC captions. IMSC is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to IMSC."
  )
  @as("ImscDestinationSettings")
  imscDestinationSettings: option<imscDestinationSettings>,
  @ocaml.doc(
    "Settings related to CEA/EIA-608 and CEA/EIA-708 (also called embedded or ancillary) captions. Set up embedded captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/embedded-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to EMBEDDED, EMBEDDED_PLUS_SCTE20, or SCTE20_PLUS_EMBEDDED."
  )
  @as("EmbeddedDestinationSettings")
  embeddedDestinationSettings: option<embeddedDestinationSettings>,
  @ocaml.doc(
    "Settings related to DVB-Sub captions. Set up DVB-Sub captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/dvb-sub-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to DVB_SUB."
  )
  @as("DvbSubDestinationSettings")
  dvbSubDestinationSettings: option<dvbSubDestinationSettings>,
  @ocaml.doc(
    "Specify the format for this set of captions on this output. The default format is embedded without SCTE-20. Note that your choice of video output container constrains your choice of output captions format. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/captions-support-tables.html. If you are using SCTE-20 and you want to create an output that complies with the SCTE-43 spec, choose SCTE-20 plus embedded (SCTE20_PLUS_EMBEDDED). To create a non-compliant output where the embedded captions come first, choose Embedded plus SCTE-20 (EMBEDDED_PLUS_SCTE20)."
  )
  @as("DestinationType")
  destinationType: option<captionDestinationType>,
  @ocaml.doc(
    "Burn-in is a captions delivery method, rather than a captions format. Burn-in writes the captions directly on your video frames, replacing pixels of video content with the captions. Set up burn-in captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/burn-in-output-captions.html. When you work directly in your JSON job specification, include this object and any required children when you set destinationType to BURN_IN."
  )
  @as("BurninDestinationSettings")
  burninDestinationSettings: option<burninDestinationSettings>,
}
@ocaml.doc(
  "Find additional transcoding features under Preprocessors (VideoPreprocessors). Enable the features at each output individually. These features are disabled by default."
)
type videoPreprocessor = {
  @ocaml.doc("Settings for burning the output timecode and specified prefix into the output.")
  @as("TimecodeBurnin")
  timecodeBurnin: option<timecodeBurnin>,
  @ocaml.doc(
    "If you work with a third party video watermarking partner, use the group of settings that correspond with your watermarking partner to include watermarks in your output."
  )
  @as("PartnerWatermarking")
  partnerWatermarking: option<partnerWatermarking>,
  @ocaml.doc(
    "Enable the Noise reducer (NoiseReducer) feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default."
  )
  @as("NoiseReducer")
  noiseReducer: option<noiseReducer>,
  @ocaml.doc(
    "Enable the Image inserter (ImageInserter) feature to include a graphic overlay on your video. Enable or disable this feature for each output individually. This setting is disabled by default."
  )
  @as("ImageInserter")
  imageInserter: option<imageInserter>,
  @ocaml.doc("Enable HDR10+ analyis and metadata injection. Compatible with HEVC only.")
  @as("Hdr10Plus")
  hdr10Plus: option<hdr10Plus>,
  @ocaml.doc("Enable Dolby Vision feature to produce Dolby Vision compatible video output.")
  @as("DolbyVision")
  dolbyVision: option<dolbyVision>,
  @ocaml.doc(
    "Use the deinterlacer to produce smoother motion and a clearer picture. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-scan-type.html."
  )
  @as("Deinterlacer")
  deinterlacer: option<deinterlacer>,
  @ocaml.doc(
    "Use these settings to convert the color space or to modify properties such as hue and contrast for this output. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/converting-the-color-space.html."
  )
  @as("ColorCorrector")
  colorCorrector: option<colorCorrector>,
}
@ocaml.doc("Contains details about the output groups specified in the job settings.")
type outputGroupDetail = {
  @ocaml.doc("Details about the output") @as("OutputDetails")
  outputDetails: option<__listOfOutputDetail>,
}
@ocaml.doc(
  "Settings related to your Microsoft Smooth Streaming output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to MS_SMOOTH_GROUP_SETTINGS."
)
type msSmoothGroupSettings = {
  @ocaml.doc(
    "Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16."
  )
  @as("ManifestEncoding")
  manifestEncoding: option<msSmoothManifestEncoding>,
  @ocaml.doc(
    "Specify how you want MediaConvert to determine the fragment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Fragment length (FragmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary."
  )
  @as("FragmentLengthControl")
  fragmentLengthControl: option<msSmoothFragmentLengthControl>,
  @ocaml.doc(
    "Specify how you want MediaConvert to determine the fragment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Fragment length (FragmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary."
  )
  @as("FragmentLength")
  fragmentLength: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to specify the value SpekeKeyProvider."
  )
  @as("Encryption")
  encryption: option<msSmoothEncryptionSettings>,
  @ocaml.doc("Settings associated with the destination. Will vary based on the type of destination")
  @as("DestinationSettings")
  destinationSettings: option<destinationSettings>,
  @ocaml.doc(
    "Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file."
  )
  @as("Destination")
  destination: option<__stringPatternS3>,
  @ocaml.doc(
    "COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream."
  )
  @as("AudioDeduplication")
  audioDeduplication: option<msSmoothAudioDeduplication>,
  @ocaml.doc(
    "By default, the service creates one .ism Microsoft Smooth Streaming manifest for each Microsoft Smooth Streaming output group in your job. This default manifest references every output in the output group. To create additional manifests that reference a subset of the outputs in the output group, specify a list of them here."
  )
  @as("AdditionalManifests")
  additionalManifests: option<__listOfMsSmoothAdditionalManifest>,
}
@ocaml.doc(
  "Settings related to your HLS output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to HLS_GROUP_SETTINGS."
)
type hlsGroupSettings = {
  @ocaml.doc("Provides an extra millisecond delta offset to fine tune the timestamps.")
  @as("TimestampDeltaMilliseconds")
  timestampDeltaMilliseconds: option<__integerMinNegative2147483648Max2147483647>,
  @ocaml.doc(
    "Specify the interval in seconds to write ID3 timestamps in your output. The first timestamp starts at the output timecode and date, and increases incrementally with each ID3 timestamp. To use the default interval of 10 seconds: Leave blank. To include this metadata in your output: Set ID3 timestamp frame type (timedMetadataId3Frame) to PRIV (PRIV) or TDRL (TDRL), and set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH)."
  )
  @as("TimedMetadataId3Period")
  timedMetadataId3Period: option<__integerMinNegative2147483648Max2147483647>,
  @ocaml.doc(
    "Specify the type of the ID3 frame (timedMetadataId3Frame) to use for ID3 timestamps (timedMetadataId3Period) in your output. To include ID3 timestamps: Specify PRIV (PRIV) or TDRL (TDRL) and set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH). To exclude ID3 timestamps: Set ID3 timestamp frame type to None (NONE)."
  )
  @as("TimedMetadataId3Frame")
  timedMetadataId3Frame: option<hlsTimedMetadataId3Frame>,
  @ocaml.doc(
    "When set to LEGACY, the segment target duration is always rounded up to the nearest integer value above its current value in seconds. When set to SPEC\\\\_COMPLIANT, the segment target duration is rounded up to the nearest integer value if fraction seconds are greater than or equal to 0.5 (>= 0.5) and rounded down if less than 0.5 (< 0.5). You may need to use LEGACY if your client needs to ensure that the target duration is always longer than the actual duration of the segment. Some older players may experience interrupted playback when the actual duration of a track in a segment is longer than the target duration."
  )
  @as("TargetDurationCompatibilityMode")
  targetDurationCompatibilityMode: option<hlsTargetDurationCompatibilityMode>,
  @ocaml.doc(
    "Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest."
  )
  @as("StreamInfResolution")
  streamInfResolution: option<hlsStreamInfResolution>,
  @ocaml.doc(
    "Number of segments to write to a subdirectory before starting a new one. directoryStructure must be SINGLE_DIRECTORY for this setting to have an effect."
  )
  @as("SegmentsPerSubdirectory")
  segmentsPerSubdirectory: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Specify how you want MediaConvert to determine the segment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Segment length (SegmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary."
  )
  @as("SegmentLengthControl")
  segmentLengthControl: option<hlsSegmentLengthControl>,
  @ocaml.doc(
    "Specify the length, in whole seconds, of each segment. When you don't specify a value, MediaConvert defaults to 10. Related settings: Use Segment length control (SegmentLengthControl) to specify whether the encoder enforces this value strictly. Use Segment control (HlsSegmentControl) to specify whether MediaConvert creates separate segment files or one content file that has metadata to mark the segment boundaries."
  )
  @as("SegmentLength")
  segmentLength: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "When set to SINGLE_FILE, emits program as a single media resource (.ts) file, uses #EXT-X-BYTERANGE tags to index segment for playback."
  )
  @as("SegmentControl")
  segmentControl: option<hlsSegmentControl>,
  @ocaml.doc("Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.")
  @as("ProgramDateTimePeriod")
  programDateTimePeriod: option<__integerMin0Max3600>,
  @ocaml.doc(
    "Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestamp_offset."
  )
  @as("ProgramDateTime")
  programDateTime: option<hlsProgramDateTime>,
  @ocaml.doc(
    "Indicates whether the .m3u8 manifest file should be generated for this HLS output group."
  )
  @as("OutputSelection")
  outputSelection: option<hlsOutputSelection>,
  @ocaml.doc(
    "When set, Minimum Segment Size is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed."
  )
  @as("MinSegmentLength")
  minSegmentLength: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds."
  )
  @as("MinFinalSegmentLength")
  minFinalSegmentLength: option<__doubleMin0Max2147483647>,
  @ocaml.doc(
    "Indicates whether the output manifest should use floating point values for segment duration."
  )
  @as("ManifestDurationFormat")
  manifestDurationFormat: option<hlsManifestDurationFormat>,
  @ocaml.doc("When set to GZIP, compresses HLS playlist.") @as("ManifestCompression")
  manifestCompression: option<hlsManifestCompression>,
  @ocaml.doc("Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED")
  @as("ImageBasedTrickPlaySettings")
  imageBasedTrickPlaySettings: option<hlsImageBasedTrickPlaySettings>,
  @ocaml.doc(
    "Specify whether MediaConvert generates images for trick play. Keep the default value, None (NONE), to not generate any images. Choose Thumbnail (THUMBNAIL) to generate tiled thumbnails. Choose Thumbnail and full frame (THUMBNAIL_AND_FULLFRAME) to generate tiled thumbnails and full-resolution images of single frames. MediaConvert creates a child manifest for each set of images that you generate and adds corresponding entries to the parent manifest. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md"
  )
  @as("ImageBasedTrickPlay")
  imageBasedTrickPlay: option<hlsImageBasedTrickPlay>,
  @ocaml.doc("DRM settings.") @as("Encryption") encryption: option<hlsEncryptionSettings>,
  @ocaml.doc("Indicates whether segments should be placed in subdirectories.")
  @as("DirectoryStructure")
  directoryStructure: option<hlsDirectoryStructure>,
  @ocaml.doc("Settings associated with the destination. Will vary based on the type of destination")
  @as("DestinationSettings")
  destinationSettings: option<destinationSettings>,
  @ocaml.doc(
    "Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file."
  )
  @as("Destination")
  destination: option<__stringPatternS3>,
  @ocaml.doc(
    "Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation."
  )
  @as("CodecSpecification")
  codecSpecification: option<hlsCodecSpecification>,
  @ocaml.doc(
    "Disable this setting only when your workflow requires the #EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled (ENABLED) and control caching in your video distribution set up. For example, use the Cache-Control http header."
  )
  @as("ClientCache")
  clientCache: option<hlsClientCache>,
  @ocaml.doc(
    "Set Caption segment length control (CaptionSegmentLengthControl) to Match video (MATCH_VIDEO) to create caption segments that align with the video segments from the first video output in this output group. For example, if the video segments are 2 seconds long, your WebVTT segments will also be 2 seconds long. Keep the default setting, Large segments (LARGE_SEGMENTS) to create caption segments that are 300 seconds long."
  )
  @as("CaptionSegmentLengthControl")
  captionSegmentLengthControl: option<hlsCaptionSegmentLengthControl>,
  @ocaml.doc(
    "Applies only to 608 Embedded output captions. Insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. None: Include CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any CLOSED-CAPTIONS line from the manifest."
  )
  @as("CaptionLanguageSetting")
  captionLanguageSetting: option<hlsCaptionLanguageSetting>,
  @ocaml.doc("Language to be used on Caption outputs") @as("CaptionLanguageMappings")
  captionLanguageMappings: option<__listOfHlsCaptionLanguageMapping>,
  @ocaml.doc(
    "A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file."
  )
  @as("BaseUrl")
  baseUrl: option<__string>,
  @ocaml.doc(
    "Ignore this setting unless you are using FairPlay DRM with Verimatrix and you encounter playback issues. Keep the default value, Include (INCLUDE), to output audio-only headers. Choose Exclude (EXCLUDE) to remove the audio-only headers from your audio segments."
  )
  @as("AudioOnlyHeader")
  audioOnlyHeader: option<hlsAudioOnlyHeader>,
  @ocaml.doc(
    "By default, the service creates one top-level .m3u8 HLS manifest for each HLS output group in your job. This default manifest references every output in the output group. To create additional top-level manifests that reference a subset of the outputs in the output group, specify a list of them here."
  )
  @as("AdditionalManifests")
  additionalManifests: option<__listOfHlsAdditionalManifest>,
  @ocaml.doc(
    "Choose one or more ad marker types to decorate your Apple HLS manifest. This setting does not determine whether SCTE-35 markers appear in the outputs themselves."
  )
  @as("AdMarkers")
  adMarkers: option<__listOfHlsAdMarkers>,
}
@ocaml.doc(
  "Settings related to your File output group. MediaConvert uses this group of settings to generate a single standalone file, rather than a streaming package. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to FILE_GROUP_SETTINGS."
)
type fileGroupSettings = {
  @ocaml.doc("Settings associated with the destination. Will vary based on the type of destination")
  @as("DestinationSettings")
  destinationSettings: option<destinationSettings>,
  @ocaml.doc(
    "Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file."
  )
  @as("Destination")
  destination: option<__stringPatternS3>,
}
@ocaml.doc(
  "Settings related to your DASH output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to DASH_ISO_GROUP_SETTINGS."
)
type dashIsoGroupSettings = {
  @ocaml.doc(
    "If you get an HTTP error in the 400 range when you play back your DASH output, enable this setting and run your transcoding job again. When you enable this setting, the service writes precise segment durations in the DASH manifest. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When you don't enable this setting, the service writes approximate segment durations in your DASH manifest."
  )
  @as("WriteSegmentTimelineInRepresentation")
  writeSegmentTimelineInRepresentation: option<dashIsoWriteSegmentTimelineInRepresentation>,
  @ocaml.doc(
    "Specify how you want MediaConvert to determine the segment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Segment length (SegmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary."
  )
  @as("SegmentLengthControl")
  segmentLengthControl: option<dashIsoSegmentLengthControl>,
  @ocaml.doc(
    "Specify the length, in whole seconds, of each segment. When you don't specify a value, MediaConvert defaults to 30. Related settings: Use Segment length control (SegmentLengthControl) to specify whether the encoder enforces this value strictly. Use Segment control (DashIsoSegmentControl) to specify whether MediaConvert creates separate segment files or one content file that has metadata to mark the segment boundaries."
  )
  @as("SegmentLength")
  segmentLength: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created."
  )
  @as("SegmentControl")
  segmentControl: option<dashIsoSegmentControl>,
  @ocaml.doc(
    "Use this setting only when your output video stream has B-frames, which causes the initial presentation time stamp (PTS) to be offset from the initial decode time stamp (DTS). Specify how MediaConvert handles PTS when writing time stamps in output DASH manifests. Choose Match initial PTS (MATCH_INITIAL_PTS) when you want MediaConvert to use the initial PTS as the first time stamp in the manifest. Choose Zero-based (ZERO_BASED) to have MediaConvert ignore the initial PTS in the video stream and instead write the initial time stamp as zero in the manifest. For outputs that don't have B-frames, the time stamps in your DASH manifests start at zero regardless of your choice here."
  )
  @as("PtsOffsetHandlingForBFrames")
  ptsOffsetHandlingForBFrames: option<dashIsoPtsOffsetHandlingForBFrames>,
  @ocaml.doc(
    "Specify whether your DASH profile is on-demand or main. When you choose Main profile (MAIN_PROFILE), the service signals  urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand (ON_DEMAND_PROFILE), the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control (SegmentControl) to Single file (SINGLE_FILE)."
  )
  @as("MpdProfile")
  mpdProfile: option<dashIsoMpdProfile>,
  @ocaml.doc(
    "Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds."
  )
  @as("MinFinalSegmentLength")
  minFinalSegmentLength: option<__doubleMin0Max2147483647>,
  @ocaml.doc("Minimum time of initially buffered media that is needed to ensure smooth playout.")
  @as("MinBufferTime")
  minBufferTime: option<__integerMin0Max2147483647>,
  @ocaml.doc("Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED")
  @as("ImageBasedTrickPlaySettings")
  imageBasedTrickPlaySettings: option<dashIsoImageBasedTrickPlaySettings>,
  @ocaml.doc(
    "Specify whether MediaConvert generates images for trick play. Keep the default value, None (NONE), to not generate any images. Choose Thumbnail (THUMBNAIL) to generate tiled thumbnails. Choose Thumbnail and full frame (THUMBNAIL_AND_FULLFRAME) to generate tiled thumbnails and full-resolution images of single frames. MediaConvert adds an entry in the .mpd manifest for each set of images that you generate. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md"
  )
  @as("ImageBasedTrickPlay")
  imageBasedTrickPlay: option<dashIsoImageBasedTrickPlay>,
  @ocaml.doc("Supports HbbTV specification as indicated") @as("HbbtvCompliance")
  hbbtvCompliance: option<dashIsoHbbtvCompliance>,
  @ocaml.doc(
    "Length of fragments to generate (in seconds). Fragment length must be compatible with GOP size and Framerate. Note that fragments will end on the next keyframe after this number of seconds, so actual fragment length may be longer. When Emit Single File is checked, the fragmentation is internal to a single output file and it does not cause the creation of many output files as in other output types."
  )
  @as("FragmentLength")
  fragmentLength: option<__integerMin1Max2147483647>,
  @ocaml.doc("DRM settings.") @as("Encryption") encryption: option<dashIsoEncryptionSettings>,
  @ocaml.doc("Settings associated with the destination. Will vary based on the type of destination")
  @as("DestinationSettings")
  destinationSettings: option<destinationSettings>,
  @ocaml.doc(
    "Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file."
  )
  @as("Destination")
  destination: option<__stringPatternS3>,
  @ocaml.doc(
    "A partial URI prefix that will be put in the manifest (.mpd) file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file."
  )
  @as("BaseUrl")
  baseUrl: option<__string>,
  @ocaml.doc(
    "Use this setting only when your audio codec is a Dolby one (AC3, EAC3, or Atmos) and your downstream workflow requires that your DASH manifest use the Dolby channel configuration tag, rather than the MPEG one. For example, you might need to use this to make dynamic ad insertion work. Specify which audio channel configuration scheme ID URI MediaConvert writes in your DASH manifest. Keep the default value, MPEG channel configuration (MPEG_CHANNEL_CONFIGURATION), to have MediaConvert write this: urn:mpeg:mpegB:cicp:ChannelConfiguration. Choose Dolby channel configuration (DOLBY_CHANNEL_CONFIGURATION) to have MediaConvert write this instead: tag:dolby.com,2014:dash:audio_channel_configuration:2011."
  )
  @as("AudioChannelConfigSchemeIdUri")
  audioChannelConfigSchemeIdUri: option<dashIsoGroupAudioChannelConfigSchemeIdUri>,
  @ocaml.doc(
    "By default, the service creates one .mpd DASH manifest for each DASH ISO output group in your job. This default manifest references every output in the output group. To create additional DASH manifests that reference a subset of the outputs in the output group, specify a list of them here."
  )
  @as("AdditionalManifests")
  additionalManifests: option<__listOfDashAdditionalManifest>,
}
@ocaml.doc(
  "Settings related to your CMAF output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to CMAF_GROUP_SETTINGS."
)
type cmafGroupSettings = {
  @ocaml.doc(
    "When you enable Precise segment duration in DASH manifests (writeSegmentTimelineInRepresentation), your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element."
  )
  @as("WriteSegmentTimelineInRepresentation")
  writeSegmentTimelineInRepresentation: option<cmafWriteSegmentTimelineInRepresentation>,
  @ocaml.doc("When set to ENABLED, an Apple HLS manifest will be generated for this output.")
  @as("WriteHlsManifest")
  writeHlsManifest: option<cmafWriteHLSManifest>,
  @ocaml.doc("When set to ENABLED, a DASH MPD manifest will be generated for this output.")
  @as("WriteDashManifest")
  writeDashManifest: option<cmafWriteDASHManifest>,
  @ocaml.doc(
    "When set to LEGACY, the segment target duration is always rounded up to the nearest integer value above its current value in seconds. When set to SPEC\\\\_COMPLIANT, the segment target duration is rounded up to the nearest integer value if fraction seconds are greater than or equal to 0.5 (>= 0.5) and rounded down if less than 0.5 (< 0.5). You may need to use LEGACY if your client needs to ensure that the target duration is always longer than the actual duration of the segment. Some older players may experience interrupted playback when the actual duration of a track in a segment is longer than the target duration."
  )
  @as("TargetDurationCompatibilityMode")
  targetDurationCompatibilityMode: option<cmafTargetDurationCompatibilityMode>,
  @ocaml.doc(
    "Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest."
  )
  @as("StreamInfResolution")
  streamInfResolution: option<cmafStreamInfResolution>,
  @ocaml.doc(
    "Specify how you want MediaConvert to determine the segment length. Choose Exact (EXACT) to have the encoder use the exact length that you specify with the setting Segment length (SegmentLength). This might result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have the encoder round up the segment lengths to match the next GOP boundary."
  )
  @as("SegmentLengthControl")
  segmentLengthControl: option<cmafSegmentLengthControl>,
  @ocaml.doc(
    "Specify the length, in whole seconds, of each segment. When you don't specify a value, MediaConvert defaults to 10. Related settings: Use Segment length control (SegmentLengthControl) to specify whether the encoder enforces this value strictly. Use Segment control (CmafSegmentControl) to specify whether MediaConvert creates separate segment files or one content file that has metadata to mark the segment boundaries."
  )
  @as("SegmentLength")
  segmentLength: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created."
  )
  @as("SegmentControl")
  segmentControl: option<cmafSegmentControl>,
  @ocaml.doc(
    "Use this setting only when your output video stream has B-frames, which causes the initial presentation time stamp (PTS) to be offset from the initial decode time stamp (DTS). Specify how MediaConvert handles PTS when writing time stamps in output DASH manifests. Choose Match initial PTS (MATCH_INITIAL_PTS) when you want MediaConvert to use the initial PTS as the first time stamp in the manifest. Choose Zero-based (ZERO_BASED) to have MediaConvert ignore the initial PTS in the video stream and instead write the initial time stamp as zero in the manifest. For outputs that don't have B-frames, the time stamps in your DASH manifests start at zero regardless of your choice here."
  )
  @as("PtsOffsetHandlingForBFrames")
  ptsOffsetHandlingForBFrames: option<cmafPtsOffsetHandlingForBFrames>,
  @ocaml.doc(
    "Specify whether your DASH profile is on-demand or main. When you choose Main profile (MAIN_PROFILE), the service signals  urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand (ON_DEMAND_PROFILE), the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control (SegmentControl) to Single file (SINGLE_FILE)."
  )
  @as("MpdProfile")
  mpdProfile: option<cmafMpdProfile>,
  @ocaml.doc(
    "Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds."
  )
  @as("MinFinalSegmentLength")
  minFinalSegmentLength: option<__doubleMin0Max2147483647>,
  @ocaml.doc("Minimum time of initially buffered media that is needed to ensure smooth playout.")
  @as("MinBufferTime")
  minBufferTime: option<__integerMin0Max2147483647>,
  @ocaml.doc(
    "Indicates whether the output manifest should use floating point values for segment duration."
  )
  @as("ManifestDurationFormat")
  manifestDurationFormat: option<cmafManifestDurationFormat>,
  @ocaml.doc("When set to GZIP, compresses HLS playlist.") @as("ManifestCompression")
  manifestCompression: option<cmafManifestCompression>,
  @ocaml.doc("Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED")
  @as("ImageBasedTrickPlaySettings")
  imageBasedTrickPlaySettings: option<cmafImageBasedTrickPlaySettings>,
  @ocaml.doc(
    "Specify whether MediaConvert generates images for trick play. Keep the default value, None (NONE), to not generate any images. Choose Thumbnail (THUMBNAIL) to generate tiled thumbnails. Choose Thumbnail and full frame (THUMBNAIL_AND_FULLFRAME) to generate tiled thumbnails and full-resolution images of single frames. When you enable Write HLS manifest (WriteHlsManifest), MediaConvert creates a child manifest for each set of images that you generate and adds corresponding entries to the parent manifest. When you enable Write DASH manifest (WriteDashManifest), MediaConvert adds an entry in the .mpd manifest for each set of images that you generate. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md"
  )
  @as("ImageBasedTrickPlay")
  imageBasedTrickPlay: option<cmafImageBasedTrickPlay>,
  @ocaml.doc(
    "Specify the length, in whole seconds, of the mp4 fragments. When you don't specify a value, MediaConvert defaults to 2. Related setting: Use Fragment length control (FragmentLengthControl) to specify whether the encoder enforces this value strictly."
  )
  @as("FragmentLength")
  fragmentLength: option<__integerMin1Max2147483647>,
  @ocaml.doc("DRM settings.") @as("Encryption") encryption: option<cmafEncryptionSettings>,
  @ocaml.doc("Settings associated with the destination. Will vary based on the type of destination")
  @as("DestinationSettings")
  destinationSettings: option<destinationSettings>,
  @ocaml.doc(
    "Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file."
  )
  @as("Destination")
  destination: option<__stringPatternS3>,
  @ocaml.doc(
    "Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation."
  )
  @as("CodecSpecification")
  codecSpecification: option<cmafCodecSpecification>,
  @ocaml.doc(
    "Disable this setting only when your workflow requires the #EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled (ENABLED) and control caching in your video distribution set up. For example, use the Cache-Control http header."
  )
  @as("ClientCache")
  clientCache: option<cmafClientCache>,
  @ocaml.doc(
    "A partial URI prefix that will be put in the manifest file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file."
  )
  @as("BaseUrl")
  baseUrl: option<__string>,
  @ocaml.doc(
    "By default, the service creates one top-level .m3u8 HLS manifest and one top -level .mpd DASH manifest for each CMAF output group in your job. These default manifests reference every output in the output group. To create additional top-level manifests that reference a subset of the outputs in the output group, specify a list of them here. For each additional manifest that you specify, the service creates one HLS manifest and one DASH manifest."
  )
  @as("AdditionalManifests")
  additionalManifests: option<__listOfCmafAdditionalManifest>,
}
@ocaml.doc(
  "Channel mapping (ChannelMapping) contains the group of fields that hold the remixing value for each channel, in dB. Specify remix values to indicate how much of the content from your input audio channel you want in your output audio channels. Each instance of the InputChannels or InputChannelsFineTune array specifies these values for one output channel. Use one instance of this array for each output channel. In the console, each array corresponds to a column in the graphical depiction of the mapping matrix. The rows of the graphical matrix correspond to input channels. Valid values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification). Use InputChannels or InputChannelsFineTune to specify your remix values. Don't use both."
)
type channelMapping = {
  @ocaml.doc(
    "In your JSON job specification, include one child of OutputChannels for each audio channel that you want in your output. Each child should contain one instance of InputChannels or InputChannelsFineTune."
  )
  @as("OutputChannels")
  outputChannels: option<__listOfOutputChannelMapping>,
}
@ocaml.doc(
  "Use captions selectors to specify the captions data from your input that you use in your outputs. You can use up to 20 captions selectors per input."
)
type captionSelector = {
  @ocaml.doc(
    "If your input captions are SCC, TTML, STL, SMI, SRT, or IMSC in an xml file, specify the URI of the input captions source file. If your input captions are IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings."
  )
  @as("SourceSettings")
  sourceSettings: option<captionSourceSettings>,
  @ocaml.doc(
    "The specific language to extract from source. If input is SCTE-27, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub and output is Burn-in or SMPTE-TT, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub that is being passed through, omit this field (and PID field); there is no way to extract a specific language with pass-through captions."
  )
  @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc(
    "The specific language to extract from source, using the ISO 639-2 or ISO 639-3 three-letter language code. If input is SCTE-27, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub and output is Burn-in or SMPTE-TT, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub that is being passed through, omit this field (and PID field); there is no way to extract a specific language with pass-through captions."
  )
  @as("CustomLanguageCode")
  customLanguageCode: option<__stringMin3Max3PatternAZaZ3>,
}
@ocaml.doc("Caption Description for preset")
type captionDescriptionPreset = {
  @ocaml.doc(
    "Specify a label for this set of output captions. For example, \"English\", \"Director commentary\", or \"track_2\". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting."
  )
  @as("LanguageDescription")
  languageDescription: option<__string>,
  @ocaml.doc(
    "Specify the language of this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information to choose the font language for rendering the captions text."
  )
  @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc(
    "Settings related to one captions tab on the MediaConvert console. In your job JSON, an instance of captions DestinationSettings is equivalent to one captions tab in the console. Usually, one captions tab corresponds to one output captions track. Depending on your output captions format, one tab might correspond to a set of output captions tracks. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/including-captions.html."
  )
  @as("DestinationSettings")
  destinationSettings: option<captionDestinationSettings>,
  @ocaml.doc(
    "Specify the language for this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information when automatically selecting the font script for rendering the captions text. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming."
  )
  @as("CustomLanguageCode")
  customLanguageCode: option<__stringPatternAZaZ23AZaZ>,
}
@ocaml.doc(
  "This object holds groups of settings related to captions for one output. For each output that has captions, include one instance of CaptionDescriptions."
)
type captionDescription = {
  @ocaml.doc(
    "Specify a label for this set of output captions. For example, \"English\", \"Director commentary\", or \"track_2\". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting."
  )
  @as("LanguageDescription")
  languageDescription: option<__string>,
  @ocaml.doc(
    "Specify the language of this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information to choose the font language for rendering the captions text."
  )
  @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc(
    "Settings related to one captions tab on the MediaConvert console. In your job JSON, an instance of captions DestinationSettings is equivalent to one captions tab in the console. Usually, one captions tab corresponds to one output captions track. Depending on your output captions format, one tab might correspond to a set of output captions tracks. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/including-captions.html."
  )
  @as("DestinationSettings")
  destinationSettings: option<captionDestinationSettings>,
  @ocaml.doc(
    "Specify the language for this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information when automatically selecting the font script for rendering the captions text. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming."
  )
  @as("CustomLanguageCode")
  customLanguageCode: option<__stringPatternAZaZ23AZaZ>,
  @ocaml.doc(
    "Specifies which \"Caption Selector\":#inputs-caption_selector to use from each input when generating captions. The name should be of the format \"Caption Selector <N>\", which denotes that the Nth Caption Selector will be used from each input."
  )
  @as("CaptionSelectorName")
  captionSelectorName: option<__stringMin1>,
}
type __mapOfCaptionSelector = Js.Dict.t<captionSelector>
type __listOfOutputGroupDetail = array<outputGroupDetail>
type __listOfCaptionDescriptionPreset = array<captionDescriptionPreset>
type __listOfCaptionDescription = array<captionDescription>
@ocaml.doc(
  "Settings related to video encoding of your output. The specific video settings depend on the video codec that you choose. When you work directly in your JSON job specification, include one instance of Video description (VideoDescription) per output."
)
type videoDescription = {
  @ocaml.doc(
    "Use Width (Width) to define the video resolution width, in pixels, for this output. If you don't provide a value here, the service will use the input width."
  )
  @as("Width")
  width: option<__integerMin32Max8192>,
  @ocaml.doc(
    "Find additional transcoding features under Preprocessors (VideoPreprocessors). Enable the features at each output individually. These features are disabled by default."
  )
  @as("VideoPreprocessors")
  videoPreprocessors: option<videoPreprocessor>,
  @ocaml.doc(
    "Applies only to H.264, H.265, MPEG2, and ProRes outputs. Only enable Timecode insertion when the input frame rate is identical to the output frame rate. To include timecodes in this output, set Timecode insertion (VideoTimecodeInsertion) to PIC_TIMING_SEI. To leave them out, set it to DISABLED. Default is DISABLED. When the service inserts timecodes in an output, by default, it uses any embedded timecodes from the input. If none are present, the service will set the timecode for the first output frame to zero. To change this default behavior, adjust the settings under Timecode configuration (TimecodeConfig). In the console, these settings are located under Job > Job settings > Timecode configuration. Note - Timecode source under input settings (InputTimecodeSource) does not affect the timecodes that are inserted in the output. Source under Job settings > Timecode configuration (TimecodeSource) does."
  )
  @as("TimecodeInsertion")
  timecodeInsertion: option<videoTimecodeInsertion>,
  @ocaml.doc(
    "Use Sharpness (Sharpness) setting to specify the strength of anti-aliasing. This setting changes the width of the anti-alias filter kernel used for scaling. Sharpness only applies if your output resolution is different from your input resolution. 0 is the softest setting, 100 the sharpest, and 50 recommended for most content."
  )
  @as("Sharpness")
  sharpness: option<__integerMin0Max100>,
  @ocaml.doc(
    "Specify how the service handles outputs that have a different aspect ratio from the input aspect ratio. Choose Stretch to output (STRETCH_TO_OUTPUT) to have the service stretch your video image to fit. Keep the setting Default (DEFAULT) to have the service letterbox your video instead. This setting overrides any value that you specify for the setting Selection placement (position) in this output."
  )
  @as("ScalingBehavior")
  scalingBehavior: option<scalingBehavior>,
  @ocaml.doc(
    "Use Respond to AFD (RespondToAfd) to specify how the service changes the video itself in response to AFD values in the input. * Choose Respond to clip the input video frame according to the AFD value, input display aspect ratio, and output display aspect ratio. * Choose Passthrough to include the input AFD values. Do not choose this when AfdSignaling is set to (NONE). A preferred implementation of this workflow is to set RespondToAfd to (NONE) and set AfdSignaling to (AUTO). * Choose None to remove all input AFD values from this output."
  )
  @as("RespondToAfd")
  respondToAfd: option<respondToAfd>,
  @ocaml.doc(
    "Use Selection placement (position) to define the video area in your output frame. The area outside of the rectangle that you specify here is black."
  )
  @as("Position")
  position: option<rectangle>,
  @ocaml.doc(
    "Use the Height (Height) setting to define the video resolution height for this output. Specify in pixels. If you don't provide a value here, the service will use the input height."
  )
  @as("Height")
  height: option<__integerMin32Max8192>,
  @ocaml.doc(
    "Applies only if you set AFD Signaling(AfdSignaling) to Fixed (FIXED). Use Fixed (FixedAfd) to specify a four-bit AFD value which the service will write on all  frames of this video output."
  )
  @as("FixedAfd")
  fixedAfd: option<__integerMin0Max15>,
  @ocaml.doc(
    "Applies only to 29.97 fps outputs. When this feature is enabled, the service will use drop-frame timecode on outputs. If it is not possible to use drop-frame timecode, the system will fall back to non-drop-frame. This setting is enabled by default when Timecode insertion (TimecodeInsertion) is enabled."
  )
  @as("DropFrameTimecode")
  dropFrameTimecode: option<dropFrameTimecode>,
  @ocaml.doc(
    "Use Cropping selection (crop) to specify the video area that the service will include in the output video frame."
  )
  @as("Crop")
  crop: option<rectangle>,
  @ocaml.doc(
    "Choose Insert (INSERT) for this setting to include color metadata in this output. Choose Ignore (IGNORE) to exclude color metadata from this output. If you don't specify a value, the service sets this to Insert by default."
  )
  @as("ColorMetadata")
  colorMetadata: option<colorMetadata>,
  @ocaml.doc(
    "Video codec settings, (CodecSettings) under (VideoDescription), contains the group of settings related to video encoding. The settings in this group vary depending on the value that you choose for Video codec (Codec). For each codec enum that you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * AV1, Av1Settings * AVC_INTRA, AvcIntraSettings * FRAME_CAPTURE, FrameCaptureSettings * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * VC3, Vc3Settings * VP8, Vp8Settings * VP9, Vp9Settings * XAVC, XavcSettings"
  )
  @as("CodecSettings")
  codecSettings: option<videoCodecSettings>,
  @ocaml.doc(
    "The anti-alias filter is automatically applied to all outputs. The service no longer accepts the value DISABLED for AntiAlias. If you specify that in your job, the service will ignore the setting."
  )
  @as("AntiAlias")
  antiAlias: option<antiAlias>,
  @ocaml.doc(
    "This setting only applies to H.264, H.265, and MPEG2 outputs. Use Insert AFD signaling (AfdSignaling) to specify whether the service includes AFD values in the output video data and what those values are. * Choose None to remove all AFD values from this output. * Choose Fixed to ignore input AFD values and instead encode the value specified in the job. * Choose Auto to calculate output AFD values based on the input AFD scaler data."
  )
  @as("AfdSignaling")
  afdSignaling: option<afdSignaling>,
}
@ocaml.doc(
  "Use Manual audio remixing (RemixSettings) to adjust audio levels for each audio channel in each output of your job. With audio remixing, you can output more or fewer audio channels than your input audio source provides."
)
type remixSettings = {
  @ocaml.doc(
    "Specify the number of channels in this output after remixing. Valid values: 1, 2, 4, 6, 8... 64. (1 and even numbers to 64.) If you are doing both input channel mapping and output channel mapping, the number of output channels in your input mapping must be the same as the number of input channels in your output mapping."
  )
  @as("ChannelsOut")
  channelsOut: option<__integerMin1Max64>,
  @ocaml.doc(
    "Specify the number of audio channels from your input that you want to use in your output. With remixing, you might combine or split the data in these channels, so the number of channels in your final output might be different. If you are doing both input channel mapping and output channel mapping, the number of output channels in your input mapping must be the same as the number of input channels in your output mapping."
  )
  @as("ChannelsIn")
  channelsIn: option<__integerMin1Max64>,
  @ocaml.doc(
    "Channel mapping (ChannelMapping) contains the group of fields that hold the remixing value for each channel, in dB. Specify remix values to indicate how much of the content from your input audio channel you want in your output audio channels. Each instance of the InputChannels or InputChannelsFineTune array specifies these values for one output channel. Use one instance of this array for each output channel. In the console, each array corresponds to a column in the graphical depiction of the mapping matrix. The rows of the graphical matrix correspond to input channels. Valid values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification). Use InputChannels or InputChannelsFineTune to specify your remix values. Don't use both."
  )
  @as("ChannelMapping")
  channelMapping: option<channelMapping>,
}
@ocaml.doc("Output Group settings, including type")
type outputGroupSettings = {
  @ocaml.doc(
    "Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming, CMAF)"
  )
  @as("Type")
  type_: option<outputGroupType>,
  @ocaml.doc(
    "Settings related to your Microsoft Smooth Streaming output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to MS_SMOOTH_GROUP_SETTINGS."
  )
  @as("MsSmoothGroupSettings")
  msSmoothGroupSettings: option<msSmoothGroupSettings>,
  @ocaml.doc(
    "Settings related to your HLS output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to HLS_GROUP_SETTINGS."
  )
  @as("HlsGroupSettings")
  hlsGroupSettings: option<hlsGroupSettings>,
  @ocaml.doc(
    "Settings related to your File output group. MediaConvert uses this group of settings to generate a single standalone file, rather than a streaming package. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to FILE_GROUP_SETTINGS."
  )
  @as("FileGroupSettings")
  fileGroupSettings: option<fileGroupSettings>,
  @ocaml.doc(
    "Settings related to your DASH output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to DASH_ISO_GROUP_SETTINGS."
  )
  @as("DashIsoGroupSettings")
  dashIsoGroupSettings: option<dashIsoGroupSettings>,
  @ocaml.doc(
    "Settings related to your CMAF output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html. When you work directly in your JSON job specification, include this object and any required children when you set Type, under OutputGroupSettings, to CMAF_GROUP_SETTINGS."
  )
  @as("CmafGroupSettings")
  cmafGroupSettings: option<cmafGroupSettings>,
}
@ocaml.doc(
  "Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use multiple Audio selectors per input."
)
type audioSelector = {
  @ocaml.doc(
    "Identify a track from the input audio to include in this selector by entering the track index number. To include several tracks in a single audio selector, specify multiple tracks as follows. Using the console, enter a comma-separated list. For examle, type \"1,2,3\" to include tracks 1 through 3. Specifying directly in your JSON job file, provide the track numbers in an array. For example, \"tracks\": [1,2,3]."
  )
  @as("Tracks")
  tracks: option<__listOf__integerMin1Max2147483647>,
  @ocaml.doc("Specifies the type of the audio selector.") @as("SelectorType")
  selectorType: option<audioSelectorType>,
  @ocaml.doc(
    "Use these settings to reorder the audio channels of one input to match those of another input. This allows you to combine the two files into a single output, one after the other."
  )
  @as("RemixSettings")
  remixSettings: option<remixSettings>,
  @ocaml.doc(
    "Use this setting for input streams that contain Dolby E, to have the service extract specific program data from the track. To select multiple programs, create multiple selectors with the same Track and different Program numbers. In the console, this setting is visible when you set Selector type to Track. Choose the program number from the dropdown list. If you are sending a JSON file, provide the program ID, which is part of the audio metadata. If your input file has incorrect metadata, you can choose All channels instead of a program number to have the service ignore the program IDs and include all the programs in the track."
  )
  @as("ProgramSelection")
  programSelection: option<__integerMin0Max8>,
  @ocaml.doc("Selects a specific PID from within an audio source (e.g. 257 selects PID 0x101).")
  @as("Pids")
  pids: option<__listOf__integerMin1Max2147483647>,
  @ocaml.doc("Specifies a time delta in milliseconds to offset the audio from the input video.")
  @as("Offset")
  offset: option<__integerMinNegative2147483648Max2147483647>,
  @ocaml.doc("Selects a specific language code from within an audio source.") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc(
    "Settings specific to audio sources in an HLS alternate rendition group. Specify the properties (renditionGroupId, renditionName or renditionLanguageCode) to identify the unique audio track among the alternative rendition groups present in the HLS manifest. If no unique track is found, or multiple tracks match the properties provided, the job fails. If no properties in hlsRenditionGroupSettings are specified, the default audio track within the video segment is chosen. If there is no audio within video segment, the alternative audio with DEFAULT=YES is chosen instead."
  )
  @as("HlsRenditionGroupSettings")
  hlsRenditionGroupSettings: option<hlsRenditionGroupSettings>,
  @ocaml.doc("Specifies audio data from an external file source.") @as("ExternalAudioFileInput")
  externalAudioFileInput: option<
    __stringPatternS3MM2PPWWEEBBMMMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEEAATTMMOOSSOOGGGGaAHttpsMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEEAATTMMOOSSOOGGGGaA,
  >,
  @ocaml.doc(
    "Enable this setting on one audio selector to set it as the default for the job. The service uses this default for outputs where it can't find the specified input audio. If you don't set a default, those outputs have no audio."
  )
  @as("DefaultSelection")
  defaultSelection: option<audioDefaultSelection>,
  @ocaml.doc(
    "Selects a specific language code from within an audio source, using the ISO 639-2 or ISO 639-3 three-letter language code"
  )
  @as("CustomLanguageCode")
  customLanguageCode: option<__stringMin3Max3PatternAZaZ3>,
}
@ocaml.doc(
  "Settings related to one audio tab on the MediaConvert console. In your job JSON, an instance of AudioDescription is equivalent to one audio tab in the console. Usually, one audio tab corresponds to one output audio track. Depending on how you set up your input audio selectors and whether you use audio selector groups, one audio tab can correspond to a group of output audio tracks."
)
type audioDescription = {
  @ocaml.doc(
    "Specify a label for this output audio stream. For example, \"English\", \"Director commentary\", or \"track_2\". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting."
  )
  @as("StreamName")
  streamName: option<__stringPatternWS>,
  @ocaml.doc("Advanced audio remixing settings.") @as("RemixSettings")
  remixSettings: option<remixSettings>,
  @ocaml.doc(
    "Specify which source for language code takes precedence for this audio track. When you choose Follow input (FOLLOW_INPUT), the service uses the language code from the input track if it's present. If there's no languge code on the input track, the service uses the code that you specify in the setting Language code (languageCode or customLanguageCode). When you choose Use configured (USE_CONFIGURED), the service uses the language code that you specify."
  )
  @as("LanguageCodeControl")
  languageCodeControl: option<audioLanguageCodeControl>,
  @ocaml.doc(
    "Indicates the language of the audio output track. The ISO 639 language specified in the 'Language Code' drop down will be used when 'Follow Input Language Code' is not selected or when 'Follow Input Language Code' is selected but there is no ISO 639 language code specified by the input."
  )
  @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc(
    "Specify the language for this audio output track. The service puts this language code into your output audio track when you set Language code control (AudioLanguageCodeControl) to Use configured (USE_CONFIGURED). The service also uses your specified custom language code when you set Language code control (AudioLanguageCodeControl) to Follow input (FOLLOW_INPUT), but your input file doesn't specify a language code. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming."
  )
  @as("CustomLanguageCode")
  customLanguageCode: option<__stringPatternAZaZ23AZaZ>,
  @ocaml.doc(
    "Settings related to audio encoding. The settings in this group vary depending on the value that you choose for your audio codec."
  )
  @as("CodecSettings")
  codecSettings: option<audioCodecSettings>,
  @ocaml.doc(
    "When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type, then that value is passed through to the output. If the input contains no ISO 639 audio_type, the value in Audio Type is included in the output. Otherwise the value in Audio Type is included in the output. Note that this field and audioType are both ignored if audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD."
  )
  @as("AudioTypeControl")
  audioTypeControl: option<audioTypeControl>,
  @ocaml.doc(
    "Applies only if Follow Input Audio Type is unchecked (false). A number between 0 and 255. The following are defined in ISO-IEC 13818-1: 0 = Undefined, 1 = Clean Effects, 2 = Hearing Impaired, 3 = Visually Impaired Commentary, 4-255 = Reserved."
  )
  @as("AudioType")
  audioType: option<__integerMin0Max255>,
  @ocaml.doc(
    "Specifies which audio data to use from each input. In the simplest case, specify an \"Audio Selector\":#inputs-audio_selector by name based on its order within each input. For example if you specify \"Audio Selector 3\", then the third audio selector will be used from each input. If an input does not have an \"Audio Selector 3\", then the audio selector marked as \"default\" in that input will be used. If there is no audio selector marked as \"default\", silence will be inserted for the duration of that input. Alternatively, an \"Audio Selector Group\":#inputs-audio_selector_group name may be specified, with similar default/silence behavior. If no audio_source_name is specified, then \"Audio Selector 1\" will be chosen automatically."
  )
  @as("AudioSourceName")
  audioSourceName: option<__string>,
  @ocaml.doc(
    "Advanced audio normalization settings. Ignore these settings unless you need to comply with a loudness standard."
  )
  @as("AudioNormalizationSettings")
  audioNormalizationSettings: option<audioNormalizationSettings>,
  @ocaml.doc(
    "When you mimic a multi-channel audio layout with multiple mono-channel tracks, you can tag each channel layout manually. For example, you would tag the tracks that contain your left, right, and center audio with Left (L), Right (R), and Center (C), respectively. When you don't specify a value, MediaConvert labels your track as Center (C) by default. To use audio layout tagging, your output must be in a QuickTime (.mov) container; your audio codec must be AAC, WAV, or AIFF; and you must set up your audio track to have only one channel."
  )
  @as("AudioChannelTaggingSettings")
  audioChannelTaggingSettings: option<audioChannelTaggingSettings>,
}
type __mapOfAudioSelector = Js.Dict.t<audioSelector>
type __listOfAudioDescription = array<audioDescription>
@ocaml.doc("Settings for preset")
type presetSettings = {
  @ocaml.doc(
    "VideoDescription contains a group of video encoding settings. The specific video settings depend on the video codec that you choose for the property codec. Include one instance of VideoDescription per output."
  )
  @as("VideoDescription")
  videoDescription: option<videoDescription>,
  @ocaml.doc("Container specific settings.") @as("ContainerSettings")
  containerSettings: option<containerSettings>,
  @ocaml.doc(
    "This object holds groups of settings related to captions for one output. For each output that has captions, include one instance of CaptionDescriptions."
  )
  @as("CaptionDescriptions")
  captionDescriptions: option<__listOfCaptionDescriptionPreset>,
  @ocaml.doc(
    "(AudioDescriptions) contains groups of audio encoding settings organized by audio codec. Include one instance of (AudioDescriptions) per output. (AudioDescriptions) can contain multiple groups of encoding settings."
  )
  @as("AudioDescriptions")
  audioDescriptions: option<__listOfAudioDescription>,
}
@ocaml.doc(
  "Each output in your job is a collection of settings that describes how you want MediaConvert to encode a single output file or stream. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/create-outputs.html."
)
type output = {
  @ocaml.doc(
    "VideoDescription contains a group of video encoding settings. The specific video settings depend on the video codec that you choose for the property codec. Include one instance of VideoDescription per output."
  )
  @as("VideoDescription")
  videoDescription: option<videoDescription>,
  @ocaml.doc(
    "Use Preset (Preset) to specify a preset for your transcoding settings. Provide the system or custom preset name. You can specify either Preset (Preset) or Container settings (ContainerSettings), but not both."
  )
  @as("Preset")
  preset: option<__stringMin0>,
  @ocaml.doc("Specific settings for this type of output.") @as("OutputSettings")
  outputSettings: option<outputSettings>,
  @ocaml.doc(
    "Use Name modifier (NameModifier) to have the service add a string to the end of each output filename. You specify the base filename as part of your destination URI. When you create multiple outputs in the same output group, Name modifier (NameModifier) is required. Name modifier also accepts format identifiers. For DASH ISO outputs, if you use the format identifiers $Number$ or $Time$ in one output, you must use them in the same way in all outputs of the output group."
  )
  @as("NameModifier")
  nameModifier: option<__stringMin1>,
  @ocaml.doc(
    "Use Extension (Extension) to specify the file extension for outputs in File output groups. If you do not specify a value, the service will use default extensions by container type as follows * MPEG-2 transport stream, m2ts * Quicktime, mov * MXF container, mxf * MPEG-4 container, mp4 * WebM container, webm * No Container, the service will use codec extensions (e.g. AAC, H265, H265, AC3)"
  )
  @as("Extension")
  extension: option<__string>,
  @ocaml.doc("Container specific settings.") @as("ContainerSettings")
  containerSettings: option<containerSettings>,
  @ocaml.doc(
    "(CaptionDescriptions) contains groups of captions settings. For each output that has captions, include one instance of (CaptionDescriptions). (CaptionDescriptions) can contain multiple groups of captions settings."
  )
  @as("CaptionDescriptions")
  captionDescriptions: option<__listOfCaptionDescription>,
  @ocaml.doc(
    "(AudioDescriptions) contains groups of audio encoding settings organized by audio codec. Include one instance of (AudioDescriptions) per output. (AudioDescriptions) can contain multiple groups of encoding settings."
  )
  @as("AudioDescriptions")
  audioDescriptions: option<__listOfAudioDescription>,
}
@ocaml.doc("Specified video input in a template.")
type inputTemplate = {
  @ocaml.doc(
    "Input video selectors contain the video settings for the input. Each of your inputs can have up to one video selector."
  )
  @as("VideoSelector")
  videoSelector: option<videoSelector>,
  @ocaml.doc(
    "Specify the timecode that you want the service to use for this input's initial frame. To use this setting, you must set the Timecode source setting, located under the input settings (InputTimecodeSource), to Specified start (SPECIFIEDSTART). For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode."
  )
  @as("TimecodeStart")
  timecodeStart: option<__stringMin11Max11Pattern01D20305D205D>,
  @ocaml.doc(
    "Use this Timecode source setting, located under the input settings (InputTimecodeSource), to specify how the service counts input video frames. This input frame count affects only the behavior of features that apply to a single input at a time, such as input clipping and synchronizing some captions formats. Choose Embedded (EMBEDDED) to use the timecodes in your input video. Choose Start at zero (ZEROBASED) to start the first frame at zero. Choose Specified start (SPECIFIEDSTART) to start the first frame at the timecode that you specify in the setting Start timecode (timecodeStart). If you don't specify a value for Timecode source, the service will use Embedded by default. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode."
  )
  @as("TimecodeSource")
  timecodeSource: option<inputTimecodeSource>,
  @ocaml.doc(
    "Set PSI control (InputPsiControl) for transport stream inputs to specify which data the demux process to scans. * Ignore PSI - Scan all PIDs for audio and video. * Use PSI - Scan only PSI data."
  )
  @as("PsiControl")
  psiControl: option<inputPsiControl>,
  @ocaml.doc(
    "Use Program (programNumber) to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default."
  )
  @as("ProgramNumber")
  programNumber: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Use Selection placement (position) to define the video area in your output frame. The area outside of the rectangle that you specify here is black. If you specify a value here, it will override any value that you specify in the output setting Selection placement (position). If you specify a value here, this will override any AFD values in your input, even if you set Respond to AFD (RespondToAfd) to Respond (RESPOND). If you specify a value here, this will ignore anything that you specify for the setting Scaling Behavior (scalingBehavior)."
  )
  @as("Position")
  position: option<rectangle>,
  @ocaml.doc(
    "When you have a progressive segmented frame (PsF) input, use this setting to flag the input as PsF. MediaConvert doesn't automatically detect PsF. Therefore, flagging your input as PsF results in better preservation of video quality when you do deinterlacing and frame rate conversion. If you don't specify, the default value is Auto (AUTO). Auto is the correct setting for all inputs that are not PsF. Don't set this value to PsF when your input is interlaced. Doing so creates horizontal interlacing artifacts."
  )
  @as("InputScanType")
  inputScanType: option<inputScanType>,
  @ocaml.doc(
    "(InputClippings) contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them."
  )
  @as("InputClippings")
  inputClippings: option<__listOfInputClipping>,
  @ocaml.doc(
    "Enable the image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each input individually. This setting is disabled by default."
  )
  @as("ImageInserter")
  imageInserter: option<imageInserter>,
  @ocaml.doc(
    "Use Filter strength (FilterStrength) to adjust the magnitude the input filter settings (Deblock and Denoise). The range is -5 to 5. Default is 0."
  )
  @as("FilterStrength")
  filterStrength: option<__integerMinNegative5Max5>,
  @ocaml.doc(
    "Specify how the transcoding service applies the denoise and deblock filters. You must also enable the filters separately, with Denoise (InputDenoiseFilter) and Deblock (InputDeblockFilter). * Auto - The transcoding service determines whether to apply filtering, depending on input type and quality. * Disable - The input is not filtered. This is true even if you use the API to enable them in (InputDeblockFilter) and (InputDeblockFilter). * Force - The input is filtered regardless of input type."
  )
  @as("FilterEnable")
  filterEnable: option<inputFilterEnable>,
  @ocaml.doc(
    "Use this setting only when your video source has Dolby Vision studio mastering metadata that is carried in a separate XML file. Specify the Amazon S3 location for the metadata XML file. MediaConvert uses this file to provide global and frame-level metadata for Dolby Vision preprocessing. When you specify a file here and your input also has interleaved global and frame level metadata, MediaConvert ignores the interleaved metadata and uses only the the metadata from this external XML file. Note that your IAM service role must grant MediaConvert read permissions to this file. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html."
  )
  @as("DolbyVisionMetadataXml")
  dolbyVisionMetadataXml: option<__stringMin14PatternS3XmlXMLHttpsXmlXML>,
  @ocaml.doc(
    "Enable Denoise (InputDenoiseFilter) to filter noise from the input.  Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs."
  )
  @as("DenoiseFilter")
  denoiseFilter: option<inputDenoiseFilter>,
  @ocaml.doc(
    "Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manually controllable for MPEG2 and uncompressed video inputs."
  )
  @as("DeblockFilter")
  deblockFilter: option<inputDeblockFilter>,
  @ocaml.doc(
    "Use Cropping selection (crop) to specify the video area that the service will include in the output video frame. If you specify a value here, it will override any value that you specify in the output setting Cropping selection (crop)."
  )
  @as("Crop")
  crop: option<rectangle>,
  @ocaml.doc(
    "Use captions selectors to specify the captions data from your input that you use in your outputs. You can use up to 20 captions selectors per input."
  )
  @as("CaptionSelectors")
  captionSelectors: option<__mapOfCaptionSelector>,
  @ocaml.doc(
    "Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use multiple Audio selectors per input."
  )
  @as("AudioSelectors")
  audioSelectors: option<__mapOfAudioSelector>,
  @ocaml.doc(
    "Use audio selector groups to combine multiple sidecar audio inputs so that you can assign them to a single output audio tab (AudioDescription). Note that, if you're working with embedded audio, it's simpler to assign multiple input tracks into a single audio selector rather than use an audio selector group."
  )
  @as("AudioSelectorGroups")
  audioSelectorGroups: option<__mapOfAudioSelectorGroup>,
}
@ocaml.doc(
  "Use inputs to define the source files used in your transcoding job. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/specify-input-settings.html. You can use multiple video inputs to do input stitching. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/assembling-multiple-inputs-and-input-clips.html"
)
type input = {
  @ocaml.doc(
    "Input video selectors contain the video settings for the input. Each of your inputs can have up to one video selector."
  )
  @as("VideoSelector")
  videoSelector: option<videoSelector>,
  @ocaml.doc(
    "Specify the timecode that you want the service to use for this input's initial frame. To use this setting, you must set the Timecode source setting, located under the input settings (InputTimecodeSource), to Specified start (SPECIFIEDSTART). For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode."
  )
  @as("TimecodeStart")
  timecodeStart: option<__stringMin11Max11Pattern01D20305D205D>,
  @ocaml.doc(
    "Use this Timecode source setting, located under the input settings (InputTimecodeSource), to specify how the service counts input video frames. This input frame count affects only the behavior of features that apply to a single input at a time, such as input clipping and synchronizing some captions formats. Choose Embedded (EMBEDDED) to use the timecodes in your input video. Choose Start at zero (ZEROBASED) to start the first frame at zero. Choose Specified start (SPECIFIEDSTART) to start the first frame at the timecode that you specify in the setting Start timecode (timecodeStart). If you don't specify a value for Timecode source, the service will use Embedded by default. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode."
  )
  @as("TimecodeSource")
  timecodeSource: option<inputTimecodeSource>,
  @ocaml.doc(
    "Provide a list of any necessary supplemental IMPs. You need supplemental IMPs if the CPL that you're using for your input is in an incomplete IMP. Specify either the supplemental IMP directories with a trailing slash or the ASSETMAP.xml files. For example [\"s3://bucket/ov/\", \"s3://bucket/vf2/ASSETMAP.xml\"]. You don't need to specify the IMP that contains your input CPL, because the service automatically detects it."
  )
  @as("SupplementalImps")
  supplementalImps: option<__listOf__stringPatternS3ASSETMAPXml>,
  @ocaml.doc(
    "Set PSI control (InputPsiControl) for transport stream inputs to specify which data the demux process to scans. * Ignore PSI - Scan all PIDs for audio and video. * Use PSI - Scan only PSI data."
  )
  @as("PsiControl")
  psiControl: option<inputPsiControl>,
  @ocaml.doc(
    "Use Program (programNumber) to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default."
  )
  @as("ProgramNumber")
  programNumber: option<__integerMin1Max2147483647>,
  @ocaml.doc(
    "Use Selection placement (position) to define the video area in your output frame. The area outside of the rectangle that you specify here is black. If you specify a value here, it will override any value that you specify in the output setting Selection placement (position). If you specify a value here, this will override any AFD values in your input, even if you set Respond to AFD (RespondToAfd) to Respond (RESPOND). If you specify a value here, this will ignore anything that you specify for the setting Scaling Behavior (scalingBehavior)."
  )
  @as("Position")
  position: option<rectangle>,
  @ocaml.doc(
    "When you have a progressive segmented frame (PsF) input, use this setting to flag the input as PsF. MediaConvert doesn't automatically detect PsF. Therefore, flagging your input as PsF results in better preservation of video quality when you do deinterlacing and frame rate conversion. If you don't specify, the default value is Auto (AUTO). Auto is the correct setting for all inputs that are not PsF. Don't set this value to PsF when your input is interlaced. Doing so creates horizontal interlacing artifacts."
  )
  @as("InputScanType")
  inputScanType: option<inputScanType>,
  @ocaml.doc(
    "(InputClippings) contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them."
  )
  @as("InputClippings")
  inputClippings: option<__listOfInputClipping>,
  @ocaml.doc(
    "Enable the image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each input individually. This setting is disabled by default."
  )
  @as("ImageInserter")
  imageInserter: option<imageInserter>,
  @ocaml.doc(
    "Use Filter strength (FilterStrength) to adjust the magnitude the input filter settings (Deblock and Denoise). The range is -5 to 5. Default is 0."
  )
  @as("FilterStrength")
  filterStrength: option<__integerMinNegative5Max5>,
  @ocaml.doc(
    "Specify how the transcoding service applies the denoise and deblock filters. You must also enable the filters separately, with Denoise (InputDenoiseFilter) and Deblock (InputDeblockFilter). * Auto - The transcoding service determines whether to apply filtering, depending on input type and quality. * Disable - The input is not filtered. This is true even if you use the API to enable them in (InputDeblockFilter) and (InputDeblockFilter). * Force - The input is filtered regardless of input type."
  )
  @as("FilterEnable")
  filterEnable: option<inputFilterEnable>,
  @ocaml.doc(
    "Specify the source file for your transcoding job. You can use multiple inputs in a single job. The service concatenates these inputs, in the order that you specify them in the job, to create the outputs. If your input format is IMF, specify your input by providing the path to your CPL. For example, \"s3://bucket/vf/cpl.xml\". If the CPL is in an incomplete IMP, make sure to use *Supplemental IMPs* (SupplementalImps) to specify any supplemental IMPs that contain assets referenced by the CPL."
  )
  @as("FileInput")
  fileInput: option<
    __stringPatternS3MM2PPMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLLOOGGGGaAAATTMMOOSSHttpsMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVaAAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLLOOGGGGaAAATTMMOOSS,
  >,
  @ocaml.doc(
    "Use this setting only when your video source has Dolby Vision studio mastering metadata that is carried in a separate XML file. Specify the Amazon S3 location for the metadata XML file. MediaConvert uses this file to provide global and frame-level metadata for Dolby Vision preprocessing. When you specify a file here and your input also has interleaved global and frame level metadata, MediaConvert ignores the interleaved metadata and uses only the the metadata from this external XML file. Note that your IAM service role must grant MediaConvert read permissions to this file. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html."
  )
  @as("DolbyVisionMetadataXml")
  dolbyVisionMetadataXml: option<__stringMin14PatternS3XmlXMLHttpsXmlXML>,
  @ocaml.doc(
    "Enable Denoise (InputDenoiseFilter) to filter noise from the input.  Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs."
  )
  @as("DenoiseFilter")
  denoiseFilter: option<inputDenoiseFilter>,
  @ocaml.doc(
    "Settings for decrypting any input files that you encrypt before you upload them to Amazon S3. MediaConvert can decrypt files only when you use AWS Key Management Service (KMS) to encrypt the data key that you use to encrypt your content."
  )
  @as("DecryptionSettings")
  decryptionSettings: option<inputDecryptionSettings>,
  @ocaml.doc(
    "Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manually controllable for MPEG2 and uncompressed video inputs."
  )
  @as("DeblockFilter")
  deblockFilter: option<inputDeblockFilter>,
  @ocaml.doc(
    "Use Cropping selection (crop) to specify the video area that the service will include in the output video frame. If you specify a value here, it will override any value that you specify in the output setting Cropping selection (crop)."
  )
  @as("Crop")
  crop: option<rectangle>,
  @ocaml.doc(
    "Use captions selectors to specify the captions data from your input that you use in your outputs. You can use up to 20 captions selectors per input."
  )
  @as("CaptionSelectors")
  captionSelectors: option<__mapOfCaptionSelector>,
  @ocaml.doc(
    "Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use multiple Audio selectors per input."
  )
  @as("AudioSelectors")
  audioSelectors: option<__mapOfAudioSelector>,
  @ocaml.doc(
    "Use audio selector groups to combine multiple sidecar audio inputs so that you can assign them to a single output audio tab (AudioDescription). Note that, if you're working with embedded audio, it's simpler to assign multiple input tracks into a single audio selector rather than use an audio selector group."
  )
  @as("AudioSelectorGroups")
  audioSelectorGroups: option<__mapOfAudioSelectorGroup>,
}
type __listOfOutput = array<output>
type __listOfInputTemplate = array<inputTemplate>
type __listOfInput = array<input>
@ocaml.doc(
  "A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process."
)
type preset = {
  @ocaml.doc(
    "A preset can be of two types: system or custom. System or built-in preset can't be modified or deleted by the user."
  )
  @as("Type")
  type_: option<type_>,
  @ocaml.doc("Settings for preset") @as("Settings") settings: presetSettings,
  @ocaml.doc("A name you create for each preset. Each name must be unique within your account.")
  @as("Name")
  name: __string,
  @ocaml.doc("The timestamp in epoch seconds when the preset was last updated.") @as("LastUpdated")
  lastUpdated: option<__timestampUnix>,
  @ocaml.doc("An optional description you create for each preset.") @as("Description")
  description: option<__string>,
  @ocaml.doc("The timestamp in epoch seconds for preset creation.") @as("CreatedAt")
  createdAt: option<__timestampUnix>,
  @ocaml.doc("An optional category you create to organize your presets.") @as("Category")
  category: option<__string>,
  @ocaml.doc("An identifier for this resource that is unique within all of AWS.") @as("Arn")
  arn: option<__string>,
}
type __listOfPreset = array<preset>
@ocaml.doc("Group of outputs")
type outputGroup = {
  @ocaml.doc("This object holds groups of encoding settings, one group of settings per output.")
  @as("Outputs")
  outputs: option<__listOfOutput>,
  @ocaml.doc("Output Group settings, including type") @as("OutputGroupSettings")
  outputGroupSettings: option<outputGroupSettings>,
  @ocaml.doc("Name of the output group") @as("Name") name: option<__string>,
  @ocaml.doc(
    "Use Custom Group Name (CustomName) to specify a name for the output group. This value is displayed on the console and can make your job settings JSON more human-readable. It does not affect your outputs. Use up to twelve characters that are either letters, numbers, spaces, or underscores."
  )
  @as("CustomName")
  customName: option<__string>,
  @ocaml.doc(
    "Use automated encoding to have MediaConvert choose your encoding settings for you, based on characteristics of your input video."
  )
  @as("AutomatedEncodingSettings")
  automatedEncodingSettings: option<automatedEncodingSettings>,
}
type __listOfOutputGroup = array<outputGroup>
@ocaml.doc(
  "JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it."
)
type jobTemplateSettings = {
  @ocaml.doc(
    "Insert user-defined custom ID3 metadata (id3) at timecodes (timecode) that you specify. In each output that you want to include this metadata, you must set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH)."
  )
  @as("TimedMetadataInsertion")
  timedMetadataInsertion: option<timedMetadataInsertion>,
  @ocaml.doc(
    "These settings control how the service handles timecodes throughout the job. These settings don't affect input clipping."
  )
  @as("TimecodeConfig")
  timecodeConfig: option<timecodeConfig>,
  @ocaml.doc(
    "(OutputGroups) contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in (OutputGroups) is a group of settings that apply to the whole group. This required object depends on the value you set for (Type) under (OutputGroups)>(OutputGroupSettings). Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings * CMAF_GROUP_SETTINGS, CmafGroupSettings"
  )
  @as("OutputGroups")
  outputGroups: option<__listOfOutputGroup>,
  @ocaml.doc(
    "Ignore these settings unless you are using Nielsen non-linear watermarking. Specify the values that  MediaConvert uses to generate and place Nielsen watermarks in your output audio. In addition to  specifying these values, you also need to set up your cloud TIC server. These settings apply to  every output in your job. The MediaConvert implementation is currently with the following Nielsen versions: Nielsen Watermark SDK Version 5.2.1 Nielsen NLM Watermark Engine Version 1.2.7 Nielsen Watermark Authenticator [SID_TIC] Version [5.0.0]"
  )
  @as("NielsenNonLinearWatermark")
  nielsenNonLinearWatermark: option<nielsenNonLinearWatermarkSettings>,
  @ocaml.doc(
    "Settings for your Nielsen configuration. If you don't do Nielsen measurement and analytics, ignore these settings. When you enable Nielsen configuration (nielsenConfiguration), MediaConvert enables PCM to ID3 tagging for all outputs in the job. To enable Nielsen configuration programmatically, include an instance of nielsenConfiguration in your JSON job specification. Even if you don't include any children of nielsenConfiguration, you still enable the setting."
  )
  @as("NielsenConfiguration")
  nielsenConfiguration: option<nielsenConfiguration>,
  @ocaml.doc(
    "Overlay motion graphics on top of your video. The motion graphics that you specify here appear on all outputs in all output groups. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/motion-graphic-overlay.html."
  )
  @as("MotionImageInserter")
  motionImageInserter: option<motionImageInserter>,
  @ocaml.doc(
    "Use these settings only when you use Kantar watermarking. Specify the values that MediaConvert uses to generate and place Kantar watermarks in your output audio. These settings apply to every output in your job. In addition to specifying these values, you also need to store your Kantar credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html."
  )
  @as("KantarWatermark")
  kantarWatermark: option<kantarWatermarkSettings>,
  @ocaml.doc(
    "Use Inputs (inputs) to define the source file used in the transcode job. There can only be one input in a job template.  Using the API, you can include multiple inputs when referencing a job template."
  )
  @as("Inputs")
  inputs: option<__listOfInputTemplate>,
  @ocaml.doc(
    "If your source content has EIA-608 Line 21 Data Services, enable this feature to specify what MediaConvert does with the Extended Data Services (XDS) packets. You can choose to pass through XDS packets, or remove them from the output. For more information about XDS, see EIA-608 Line Data Services, section 9.5.1.5 05h Content Advisory."
  )
  @as("ExtendedDataServices")
  extendedDataServices: option<extendedDataServices>,
  @ocaml.doc(
    "Settings for Event Signaling And Messaging (ESAM). If you don't do ad insertion, you can ignore these settings."
  )
  @as("Esam")
  esam: option<esamSettings>,
  @ocaml.doc(
    "Settings for ad avail blanking.  Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails."
  )
  @as("AvailBlanking")
  availBlanking: option<availBlanking>,
  @ocaml.doc(
    "When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time."
  )
  @as("AdAvailOffset")
  adAvailOffset: option<__integerMinNegative1000Max1000>,
}
@ocaml.doc("JobSettings contains all the transcode settings for a job.")
type jobSettings = {
  @ocaml.doc(
    "Insert user-defined custom ID3 metadata (id3) at timecodes (timecode) that you specify. In each output that you want to include this metadata, you must set ID3 metadata (timedMetadata) to Passthrough (PASSTHROUGH)."
  )
  @as("TimedMetadataInsertion")
  timedMetadataInsertion: option<timedMetadataInsertion>,
  @ocaml.doc(
    "These settings control how the service handles timecodes throughout the job. These settings don't affect input clipping."
  )
  @as("TimecodeConfig")
  timecodeConfig: option<timecodeConfig>,
  @ocaml.doc(
    "(OutputGroups) contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in (OutputGroups) is a group of settings that apply to the whole group. This required object depends on the value you set for (Type) under (OutputGroups)>(OutputGroupSettings). Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings * CMAF_GROUP_SETTINGS, CmafGroupSettings"
  )
  @as("OutputGroups")
  outputGroups: option<__listOfOutputGroup>,
  @ocaml.doc(
    "Ignore these settings unless you are using Nielsen non-linear watermarking. Specify the values that  MediaConvert uses to generate and place Nielsen watermarks in your output audio. In addition to  specifying these values, you also need to set up your cloud TIC server. These settings apply to  every output in your job. The MediaConvert implementation is currently with the following Nielsen versions: Nielsen Watermark SDK Version 5.2.1 Nielsen NLM Watermark Engine Version 1.2.7 Nielsen Watermark Authenticator [SID_TIC] Version [5.0.0]"
  )
  @as("NielsenNonLinearWatermark")
  nielsenNonLinearWatermark: option<nielsenNonLinearWatermarkSettings>,
  @ocaml.doc(
    "Settings for your Nielsen configuration. If you don't do Nielsen measurement and analytics, ignore these settings. When you enable Nielsen configuration (nielsenConfiguration), MediaConvert enables PCM to ID3 tagging for all outputs in the job. To enable Nielsen configuration programmatically, include an instance of nielsenConfiguration in your JSON job specification. Even if you don't include any children of nielsenConfiguration, you still enable the setting."
  )
  @as("NielsenConfiguration")
  nielsenConfiguration: option<nielsenConfiguration>,
  @ocaml.doc(
    "Overlay motion graphics on top of your video. The motion graphics that you specify here appear on all outputs in all output groups. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/motion-graphic-overlay.html."
  )
  @as("MotionImageInserter")
  motionImageInserter: option<motionImageInserter>,
  @ocaml.doc(
    "Use these settings only when you use Kantar watermarking. Specify the values that MediaConvert uses to generate and place Kantar watermarks in your output audio. These settings apply to every output in your job. In addition to specifying these values, you also need to store your Kantar credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html."
  )
  @as("KantarWatermark")
  kantarWatermark: option<kantarWatermarkSettings>,
  @ocaml.doc(
    "Use Inputs (inputs) to define source file used in the transcode job. There can be multiple inputs add in a job. These inputs will be concantenated together to create the output."
  )
  @as("Inputs")
  inputs: option<__listOfInput>,
  @ocaml.doc(
    "If your source content has EIA-608 Line 21 Data Services, enable this feature to specify what MediaConvert does with the Extended Data Services (XDS) packets. You can choose to pass through XDS packets, or remove them from the output. For more information about XDS, see EIA-608 Line Data Services, section 9.5.1.5 05h Content Advisory."
  )
  @as("ExtendedDataServices")
  extendedDataServices: option<extendedDataServices>,
  @ocaml.doc(
    "Settings for Event Signaling And Messaging (ESAM). If you don't do ad insertion, you can ignore these settings."
  )
  @as("Esam")
  esam: option<esamSettings>,
  @ocaml.doc(
    "Settings for ad avail blanking.  Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails."
  )
  @as("AvailBlanking")
  availBlanking: option<availBlanking>,
  @ocaml.doc(
    "When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time."
  )
  @as("AdAvailOffset")
  adAvailOffset: option<__integerMinNegative1000Max1000>,
}
@ocaml.doc(
  "A job template is a pre-made set of encoding instructions that you can use to quickly create a job."
)
type jobTemplate = {
  @ocaml.doc(
    "A job template can be of two types: system or custom. System or built-in job templates can't be modified or deleted by the user."
  )
  @as("Type")
  type_: option<type_>,
  @ocaml.doc(
    "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error."
  )
  @as("StatusUpdateInterval")
  statusUpdateInterval: option<statusUpdateInterval>,
  @ocaml.doc(
    "JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it."
  )
  @as("Settings")
  settings: jobTemplateSettings,
  @ocaml.doc(
    "Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue."
  )
  @as("Queue")
  queue: option<__string>,
  @ocaml.doc("Relative priority on the job.") @as("Priority")
  priority: option<__integerMinNegative50Max50>,
  @ocaml.doc(
    "A name you create for each job template. Each name must be unique within your account."
  )
  @as("Name")
  name: __string,
  @ocaml.doc("The timestamp in epoch seconds when the Job template was last updated.")
  @as("LastUpdated")
  lastUpdated: option<__timestampUnix>,
  @ocaml.doc("Optional list of hop destinations.") @as("HopDestinations")
  hopDestinations: option<__listOfHopDestination>,
  @ocaml.doc("An optional description you create for each job template.") @as("Description")
  description: option<__string>,
  @ocaml.doc("The timestamp in epoch seconds for Job template creation.") @as("CreatedAt")
  createdAt: option<__timestampUnix>,
  @ocaml.doc("An optional category you create to organize your job templates.") @as("Category")
  category: option<__string>,
  @ocaml.doc("An identifier for this resource that is unique within all of AWS.") @as("Arn")
  arn: option<__string>,
  @ocaml.doc(
    "Accelerated transcoding can significantly speed up jobs with long, visually complex content."
  )
  @as("AccelerationSettings")
  accelerationSettings: option<accelerationSettings>,
}
@ocaml.doc(
  "Each job converts an input file into an output file or files. For more information, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
)
type job = {
  @ocaml.doc(
    "User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs."
  )
  @as("UserMetadata")
  userMetadata: option<__mapOf__string>,
  @ocaml.doc(
    "Information about when jobs are submitted, started, and finished is specified in Unix epoch format in seconds."
  )
  @as("Timing")
  timing: option<timing>,
  @ocaml.doc(
    "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error."
  )
  @as("StatusUpdateInterval")
  statusUpdateInterval: option<statusUpdateInterval>,
  @ocaml.doc("A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.")
  @as("Status")
  status: option<jobStatus>,
  @ocaml.doc(
    "Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default."
  )
  @as("SimulateReservedQueue")
  simulateReservedQueue: option<simulateReservedQueue>,
  @ocaml.doc("JobSettings contains all the transcode settings for a job.") @as("Settings")
  settings: jobSettings,
  @ocaml.doc(
    "The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html"
  )
  @as("Role")
  role: __string,
  @ocaml.doc(
    "The number of times that the service automatically attempted to process your job after encountering an error."
  )
  @as("RetryCount")
  retryCount: option<__integer>,
  @ocaml.doc("The job's queue hopping history.") @as("QueueTransitions")
  queueTransitions: option<__listOfQueueTransition>,
  @ocaml.doc(
    "When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
  )
  @as("Queue")
  queue: option<__string>,
  @ocaml.doc("Relative priority on the job.") @as("Priority")
  priority: option<__integerMinNegative50Max50>,
  @ocaml.doc("List of output group details") @as("OutputGroupDetails")
  outputGroupDetails: option<__listOfOutputGroupDetail>,
  @ocaml.doc(
    "Provides messages from the service about jobs that you have already successfully submitted."
  )
  @as("Messages")
  messages: option<jobMessages>,
  @ocaml.doc("The job template that the job is created from, if it is created from a job template.")
  @as("JobTemplate")
  jobTemplate: option<__string>,
  @ocaml.doc(
    "An estimate of how far your job has progressed. This estimate is shown as a percentage of the total time from when your job leaves its queue to when your output files appear in your output Amazon S3 bucket. AWS Elemental MediaConvert provides jobPercentComplete in CloudWatch STATUS_UPDATE events and in the response to GetJob and ListJobs requests. The jobPercentComplete estimate is reliable for the following input containers: Quicktime, Transport Stream, MP4, and MXF. For some jobs, the service can't provide information about job progress. In those cases, jobPercentComplete returns a null value."
  )
  @as("JobPercentComplete")
  jobPercentComplete: option<__integer>,
  @ocaml.doc("A portion of the job's ARN, unique within your AWS Elemental MediaConvert resources")
  @as("Id")
  id: option<__string>,
  @ocaml.doc("Optional list of hop destinations.") @as("HopDestinations")
  hopDestinations: option<__listOfHopDestination>,
  @ocaml.doc("Error message of Job") @as("ErrorMessage") errorMessage: option<__string>,
  @ocaml.doc("Error code for the job") @as("ErrorCode") errorCode: option<__integer>,
  @ocaml.doc("A job's phase can be PROBING, TRANSCODING OR UPLOADING") @as("CurrentPhase")
  currentPhase: option<jobPhase>,
  @ocaml.doc("The time, in Unix epoch format in seconds, when the job got created.")
  @as("CreatedAt")
  createdAt: option<__timestampUnix>,
  @ocaml.doc(
    "The tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up."
  )
  @as("BillingTagsSource")
  billingTagsSource: option<billingTagsSource>,
  @ocaml.doc("An identifier for this resource that is unique within all of AWS.") @as("Arn")
  arn: option<__string>,
  @ocaml.doc(
    "Describes whether the current job is running with accelerated transcoding. For jobs that have Acceleration (AccelerationMode) set to DISABLED, AccelerationStatus is always NOT_APPLICABLE. For jobs that have Acceleration (AccelerationMode) set to ENABLED or PREFERRED, AccelerationStatus is one of the other states. AccelerationStatus is IN_PROGRESS initially, while the service determines whether the input files and job settings are compatible with accelerated transcoding. If they are, AcclerationStatus is ACCELERATED. If your input files and job settings aren't compatible with accelerated transcoding, the service either fails your job or runs it without accelerated transcoding, depending on how you set Acceleration (AccelerationMode). When the service runs your job without accelerated transcoding, AccelerationStatus is NOT_ACCELERATED."
  )
  @as("AccelerationStatus")
  accelerationStatus: option<accelerationStatus>,
  @ocaml.doc(
    "Accelerated transcoding can significantly speed up jobs with long, visually complex content."
  )
  @as("AccelerationSettings")
  accelerationSettings: option<accelerationSettings>,
}
type __listOfJobTemplate = array<jobTemplate>
type __listOfJob = array<job>
@ocaml.doc("AWS Elemental MediaConvert")
module DisassociateCertificate = {
  type t
  type request = {
    @ocaml.doc(
      "The ARN of the ACM certificate that you want to disassociate from your MediaConvert resource."
    )
    @as("Arn")
    arn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "DisassociateCertificateCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteQueue = {
  type t
  type request = {
    @ocaml.doc("The name of the queue that you want to delete.") @as("Name") name: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "DeleteQueueCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeletePreset = {
  type t
  type request = {@ocaml.doc("The name of the preset to be deleted.") @as("Name") name: __string}
  type response = {.}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "DeletePresetCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeletePolicy = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "DeletePolicyCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteJobTemplate = {
  type t
  type request = {
    @ocaml.doc("The name of the job template to be deleted.") @as("Name") name: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "DeleteJobTemplateCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CancelJob = {
  type t
  type request = {@ocaml.doc("The Job ID of the job to be cancelled.") @as("Id") id: __string}
  type response = {.}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "CancelJobCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AssociateCertificate = {
  type t
  type request = {
    @ocaml.doc(
      "The ARN of the ACM certificate that you want to associate with your MediaConvert resource."
    )
    @as("Arn")
    arn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "AssociateCertificateCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("The keys of the tags that you want to remove from the resource.") @as("TagKeys")
    tagKeys: option<__listOf__string>,
    @ocaml.doc(
      "The Amazon Resource Name (ARN) of the resource that you want to remove tags from. To get the ARN, send a GET request with the resource name."
    )
    @as("Arn")
    arn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "UntagResourceCommand"
  let make = (~arn, ~tagKeys=?, ()) => new({tagKeys, arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc(
      "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key."
    )
    @as("Tags")
    tags: __mapOf__string,
    @ocaml.doc(
      "The Amazon Resource Name (ARN) of the resource that you want to tag. To get the ARN, send a GET request with the resource name."
    )
    @as("Arn")
    arn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~arn, ()) => new({tags, arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "A policy configures behavior that you allow or disallow for your account. For information about MediaConvert policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
    )
    @as("Policy")
    policy: policy,
  }
  type response = {
    @ocaml.doc(
      "A policy configures behavior that you allow or disallow for your account. For information about MediaConvert policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
    )
    @as("Policy")
    policy: option<policy>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "PutPolicyCommand"
  let make = (~policy, ()) => new({policy: policy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPolicy = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc(
      "A policy configures behavior that you allow or disallow for your account. For information about MediaConvert policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
    )
    @as("Policy")
    policy: option<policy>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "GetPolicyCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateQueue = {
  type t
  type request = {
    @ocaml.doc(
      "Pause or activate a queue by changing its status between ACTIVE and PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause the queue continue to run until they finish or result in an error."
    )
    @as("Status")
    status: option<queueStatus>,
    @ocaml.doc(
      "The new details of your pricing plan for your reserved queue. When you set up a new pricing plan to replace an expired one, you enter into another 12-month commitment. When you add capacity to your queue by increasing the number of RTS, you extend the term of your commitment to 12 months from when you add capacity. After you make these commitments, you can't cancel them."
    )
    @as("ReservationPlanSettings")
    reservationPlanSettings: option<reservationPlanSettings>,
    @ocaml.doc("The name of the queue that you are modifying.") @as("Name") name: __string,
    @ocaml.doc("The new description for the queue, if you are changing it.") @as("Description")
    description: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html."
    )
    @as("Queue")
    queue: option<queue>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "UpdateQueueCommand"
  let make = (~name, ~status=?, ~reservationPlanSettings=?, ~description=?, ()) =>
    new({status, reservationPlanSettings, name, description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "The Amazon Resource Name (ARN) of the resource that you want to list tags for. To get the ARN, send a GET request with the resource name."
    )
    @as("Arn")
    arn: __string,
  }
  type response = {
    @ocaml.doc(
      "The Amazon Resource Name (ARN) and tags for an AWS Elemental MediaConvert resource."
    )
    @as("ResourceTags")
    resourceTags: option<resourceTags>,
  }
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetQueue = {
  type t
  type request = {
    @ocaml.doc("The name of the queue that you want information about.") @as("Name") name: __string,
  }
  type response = {
    @ocaml.doc(
      "You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html."
    )
    @as("Queue")
    queue: option<queue>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "GetQueueCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeEndpoints = {
  type t
  @ocaml.doc("DescribeEndpointsRequest")
  type request = {
    @ocaml.doc(
      "Use this string, provided with the response to a previous request, to request the next batch of endpoints."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "Optional field, defaults to DEFAULT. Specify DEFAULT for this operation to return your endpoints if any exist, or to create an endpoint for you and return it if one doesn't already exist. Specify GET_ONLY to return your endpoints if any exist, or an empty list if none exist."
    )
    @as("Mode")
    mode: option<describeEndpointsMode>,
    @ocaml.doc(
      "Optional. Max number of endpoints, up to twenty, that will be returned at one time."
    )
    @as("MaxResults")
    maxResults: option<__integer>,
  }
  type response = {
    @ocaml.doc("Use this string to request the next batch of endpoints.") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("List of endpoints") @as("Endpoints") endpoints: option<__listOfEndpoint>,
  }
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "DescribeEndpointsCommand"
  let make = (~nextToken=?, ~mode=?, ~maxResults=?, ()) => new({nextToken, mode, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateQueue = {
  type t
  type request = {
    @ocaml.doc(
      "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key."
    )
    @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "Initial state of the queue. If you create a paused queue, then jobs in that queue won't begin."
    )
    @as("Status")
    status: option<queueStatus>,
    @ocaml.doc(
      "Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues."
    )
    @as("ReservationPlanSettings")
    reservationPlanSettings: option<reservationPlanSettings>,
    @ocaml.doc(
      "Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment. When you use the API to create a queue, the default is on-demand."
    )
    @as("PricingPlan")
    pricingPlan: option<pricingPlan>,
    @ocaml.doc("The name of the queue that you are creating.") @as("Name") name: __string,
    @ocaml.doc("Optional. A description of the queue that you are creating.") @as("Description")
    description: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html."
    )
    @as("Queue")
    queue: option<queue>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "CreateQueueCommand"
  let make = (
    ~name,
    ~tags=?,
    ~status=?,
    ~reservationPlanSettings=?,
    ~pricingPlan=?,
    ~description=?,
    (),
  ) => new({tags, status, reservationPlanSettings, pricingPlan, name, description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListQueues = {
  type t
  type request = {
    @ocaml.doc(
      "Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource."
    )
    @as("Order")
    order: option<order>,
    @ocaml.doc(
      "Use this string, provided with the response to a previous request, to request the next batch of queues."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Optional. Number of queues, up to twenty, that will be returned at one time.")
    @as("MaxResults")
    maxResults: option<__integerMin1Max20>,
    @ocaml.doc(
      "Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date."
    )
    @as("ListBy")
    listBy: option<queueListBy>,
  }
  type response = {
    @ocaml.doc("List of queues.") @as("Queues") queues: option<__listOfQueue>,
    @ocaml.doc("Use this string to request the next batch of queues.") @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "ListQueuesCommand"
  let make = (~order=?, ~nextToken=?, ~maxResults=?, ~listBy=?, ()) =>
    new({order, nextToken, maxResults, listBy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdatePreset = {
  type t
  type request = {
    @ocaml.doc("Settings for preset") @as("Settings") settings: option<presetSettings>,
    @ocaml.doc("The name of the preset you are modifying.") @as("Name") name: __string,
    @ocaml.doc("The new description for the preset, if you are changing it.") @as("Description")
    description: option<__string>,
    @ocaml.doc("The new category for the preset, if you are changing it.") @as("Category")
    category: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process."
    )
    @as("Preset")
    preset: option<preset>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "UpdatePresetCommand"
  let make = (~name, ~settings=?, ~description=?, ~category=?, ()) =>
    new({settings, name, description, category})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPreset = {
  type t
  type request = {@ocaml.doc("The name of the preset.") @as("Name") name: __string}
  type response = {
    @ocaml.doc(
      "A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process."
    )
    @as("Preset")
    preset: option<preset>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "GetPresetCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePreset = {
  type t
  type request = {
    @ocaml.doc(
      "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key."
    )
    @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("Settings for preset") @as("Settings") settings: presetSettings,
    @ocaml.doc("The name of the preset you are creating.") @as("Name") name: __string,
    @ocaml.doc("Optional. A description of the preset you are creating.") @as("Description")
    description: option<__string>,
    @ocaml.doc("Optional. A category for the preset you are creating.") @as("Category")
    category: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process."
    )
    @as("Preset")
    preset: option<preset>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "CreatePresetCommand"
  let make = (~settings, ~name, ~tags=?, ~description=?, ~category=?, ()) =>
    new({tags, settings, name, description, category})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPresets = {
  type t
  type request = {
    @ocaml.doc(
      "Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource."
    )
    @as("Order")
    order: option<order>,
    @ocaml.doc(
      "Use this string, provided with the response to a previous request, to request the next batch of presets."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Optional. Number of presets, up to twenty, that will be returned at one time")
    @as("MaxResults")
    maxResults: option<__integerMin1Max20>,
    @ocaml.doc(
      "Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name."
    )
    @as("ListBy")
    listBy: option<presetListBy>,
    @ocaml.doc(
      "Optionally, specify a preset category to limit responses to only presets from that category."
    )
    @as("Category")
    category: option<__string>,
  }
  type response = {
    @ocaml.doc("List of presets") @as("Presets") presets: option<__listOfPreset>,
    @ocaml.doc("Use this string to request the next batch of presets.") @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "ListPresetsCommand"
  let make = (~order=?, ~nextToken=?, ~maxResults=?, ~listBy=?, ~category=?, ()) =>
    new({order, nextToken, maxResults, listBy, category})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateJobTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error."
    )
    @as("StatusUpdateInterval")
    statusUpdateInterval: option<statusUpdateInterval>,
    @ocaml.doc(
      "JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it."
    )
    @as("Settings")
    settings: option<jobTemplateSettings>,
    @ocaml.doc("The new queue for the job template, if you are changing it.") @as("Queue")
    queue: option<__string>,
    @ocaml.doc(
      "Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0."
    )
    @as("Priority")
    priority: option<__integerMinNegative50Max50>,
    @ocaml.doc("The name of the job template you are modifying") @as("Name") name: __string,
    @ocaml.doc("Optional list of hop destinations.") @as("HopDestinations")
    hopDestinations: option<__listOfHopDestination>,
    @ocaml.doc("The new description for the job template, if you are changing it.")
    @as("Description")
    description: option<__string>,
    @ocaml.doc("The new category for the job template, if you are changing it.") @as("Category")
    category: option<__string>,
    @ocaml.doc(
      "Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide."
    )
    @as("AccelerationSettings")
    accelerationSettings: option<accelerationSettings>,
  }
  type response = {
    @ocaml.doc(
      "A job template is a pre-made set of encoding instructions that you can use to quickly create a job."
    )
    @as("JobTemplate")
    jobTemplate: option<jobTemplate>,
  }
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "UpdateJobTemplateCommand"
  let make = (
    ~name,
    ~statusUpdateInterval=?,
    ~settings=?,
    ~queue=?,
    ~priority=?,
    ~hopDestinations=?,
    ~description=?,
    ~category=?,
    ~accelerationSettings=?,
    (),
  ) =>
    new({
      statusUpdateInterval,
      settings,
      queue,
      priority,
      name,
      hopDestinations,
      description,
      category,
      accelerationSettings,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetJobTemplate = {
  type t
  type request = {@ocaml.doc("The name of the job template.") @as("Name") name: __string}
  type response = {
    @ocaml.doc(
      "A job template is a pre-made set of encoding instructions that you can use to quickly create a job."
    )
    @as("JobTemplate")
    jobTemplate: option<jobTemplate>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "GetJobTemplateCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetJob = {
  type t
  type request = {@ocaml.doc("the job ID of the job.") @as("Id") id: __string}
  type response = {
    @ocaml.doc(
      "Each job converts an input file into an output file or files. For more information, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
    )
    @as("Job")
    job: option<job>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "GetJobCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateJobTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key."
    )
    @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error."
    )
    @as("StatusUpdateInterval")
    statusUpdateInterval: option<statusUpdateInterval>,
    @ocaml.doc(
      "JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it."
    )
    @as("Settings")
    settings: jobTemplateSettings,
    @ocaml.doc(
      "Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue."
    )
    @as("Queue")
    queue: option<__string>,
    @ocaml.doc(
      "Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0."
    )
    @as("Priority")
    priority: option<__integerMinNegative50Max50>,
    @ocaml.doc("The name of the job template you are creating.") @as("Name") name: __string,
    @ocaml.doc(
      "Optional. Use queue hopping to avoid overly long waits in the backlog of the queue that you submit your job to. Specify an alternate queue and the maximum time that your job will wait in the initial queue before hopping. For more information about this feature, see the AWS Elemental MediaConvert User Guide."
    )
    @as("HopDestinations")
    hopDestinations: option<__listOfHopDestination>,
    @ocaml.doc("Optional. A description of the job template you are creating.") @as("Description")
    description: option<__string>,
    @ocaml.doc("Optional. A category for the job template you are creating") @as("Category")
    category: option<__string>,
    @ocaml.doc(
      "Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide."
    )
    @as("AccelerationSettings")
    accelerationSettings: option<accelerationSettings>,
  }
  type response = {
    @ocaml.doc(
      "A job template is a pre-made set of encoding instructions that you can use to quickly create a job."
    )
    @as("JobTemplate")
    jobTemplate: option<jobTemplate>,
  }
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "CreateJobTemplateCommand"
  let make = (
    ~settings,
    ~name,
    ~tags=?,
    ~statusUpdateInterval=?,
    ~queue=?,
    ~priority=?,
    ~hopDestinations=?,
    ~description=?,
    ~category=?,
    ~accelerationSettings=?,
    (),
  ) =>
    new({
      tags,
      statusUpdateInterval,
      settings,
      queue,
      priority,
      name,
      hopDestinations,
      description,
      category,
      accelerationSettings,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateJob = {
  type t
  type request = {
    @ocaml.doc(
      "Optional. User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.  Use only for existing integrations or workflows that rely on job metadata tags. Otherwise, we recommend that you use standard AWS tags."
    )
    @as("UserMetadata")
    userMetadata: option<__mapOf__string>,
    @ocaml.doc(
      "Optional. The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.  Use standard AWS tags on your job for automatic integration with AWS services and for custom integrations and workflows."
    )
    @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "Optional. Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error."
    )
    @as("StatusUpdateInterval")
    statusUpdateInterval: option<statusUpdateInterval>,
    @ocaml.doc(
      "Optional. Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default."
    )
    @as("SimulateReservedQueue")
    simulateReservedQueue: option<simulateReservedQueue>,
    @ocaml.doc("JobSettings contains all the transcode settings for a job.") @as("Settings")
    settings: jobSettings,
    @ocaml.doc(
      "Required. The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html."
    )
    @as("Role")
    role: __string,
    @ocaml.doc(
      "Optional. When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html."
    )
    @as("Queue")
    queue: option<__string>,
    @ocaml.doc(
      "Optional. Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0."
    )
    @as("Priority")
    priority: option<__integerMinNegative50Max50>,
    @ocaml.doc(
      "Optional. When you create a job, you can either specify a job template or specify the transcoding settings individually."
    )
    @as("JobTemplate")
    jobTemplate: option<__string>,
    @ocaml.doc(
      "Optional. Use queue hopping to avoid overly long waits in the backlog of the queue that you submit your job to. Specify an alternate queue and the maximum time that your job will wait in the initial queue before hopping. For more information about this feature, see the AWS Elemental MediaConvert User Guide."
    )
    @as("HopDestinations")
    hopDestinations: option<__listOfHopDestination>,
    @ocaml.doc("Optional. Idempotency token for CreateJob operation.") @as("ClientRequestToken")
    clientRequestToken: option<__string>,
    @ocaml.doc(
      "Optional. Choose a tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up. Any transcoding outputs that don't have an associated tag will appear in your billing report unsorted. If you don't choose a valid value for this field, your job outputs will appear on the billing report unsorted."
    )
    @as("BillingTagsSource")
    billingTagsSource: option<billingTagsSource>,
    @ocaml.doc(
      "Optional. Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide."
    )
    @as("AccelerationSettings")
    accelerationSettings: option<accelerationSettings>,
  }
  type response = {
    @ocaml.doc(
      "Each job converts an input file into an output file or files. For more information, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
    )
    @as("Job")
    job: option<job>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "CreateJobCommand"
  let make = (
    ~settings,
    ~role,
    ~userMetadata=?,
    ~tags=?,
    ~statusUpdateInterval=?,
    ~simulateReservedQueue=?,
    ~queue=?,
    ~priority=?,
    ~jobTemplate=?,
    ~hopDestinations=?,
    ~clientRequestToken=?,
    ~billingTagsSource=?,
    ~accelerationSettings=?,
    (),
  ) =>
    new({
      userMetadata,
      tags,
      statusUpdateInterval,
      simulateReservedQueue,
      settings,
      role,
      queue,
      priority,
      jobTemplate,
      hopDestinations,
      clientRequestToken,
      billingTagsSource,
      accelerationSettings,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListJobs = {
  type t
  type request = {
    @ocaml.doc(
      "Optional. A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR."
    )
    @as("Status")
    status: option<jobStatus>,
    @ocaml.doc("Optional. Provide a queue name to get back only jobs from that queue.") @as("Queue")
    queue: option<__string>,
    @ocaml.doc(
      "Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource."
    )
    @as("Order")
    order: option<order>,
    @ocaml.doc(
      "Optional. Use this string, provided with the response to a previous request, to request the next batch of jobs."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Optional. Number of jobs, up to twenty, that will be returned at one time.")
    @as("MaxResults")
    maxResults: option<__integerMin1Max20>,
  }
  type response = {
    @ocaml.doc("Use this string to request the next batch of jobs.") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("List of jobs") @as("Jobs") jobs: option<__listOfJob>,
  }
  @module("@aws-sdk/client-mediaconvert") @new external new: request => t = "ListJobsCommand"
  let make = (~status=?, ~queue=?, ~order=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({status, queue, order, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListJobTemplates = {
  type t
  type request = {
    @ocaml.doc(
      "Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource."
    )
    @as("Order")
    order: option<order>,
    @ocaml.doc(
      "Use this string, provided with the response to a previous request, to request the next batch of job templates."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "Optional. Number of job templates, up to twenty, that will be returned at one time."
    )
    @as("MaxResults")
    maxResults: option<__integerMin1Max20>,
    @ocaml.doc(
      "Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name."
    )
    @as("ListBy")
    listBy: option<jobTemplateListBy>,
    @ocaml.doc(
      "Optionally, specify a job template category to limit responses to only job templates from that category."
    )
    @as("Category")
    category: option<__string>,
  }
  type response = {
    @ocaml.doc("Use this string to request the next batch of job templates.") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("List of Job templates.") @as("JobTemplates")
    jobTemplates: option<__listOfJobTemplate>,
  }
  @module("@aws-sdk/client-mediaconvert") @new
  external new: request => t = "ListJobTemplatesCommand"
  let make = (~order=?, ~nextToken=?, ~maxResults=?, ~listBy=?, ~category=?, ()) =>
    new({order, nextToken, maxResults, listBy, category})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
