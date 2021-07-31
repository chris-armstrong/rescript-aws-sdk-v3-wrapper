type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __timestampUnix = int;
type __string = string
type __long = float;
type __integerMin1 = int;
type __integer = int;
type __boolean = bool;
type type_ = [@as("HLS") #HLS | @as("DASH") #DASH]
type relativePosition = [@as("AFTER_PROGRAM") #AFTER_PROGRAM | @as("BEFORE_PROGRAM") #BEFORE_PROGRAM]
type playbackMode = [@as("LOOP") #LOOP]
type originManifestType = [@as("MULTI_PERIOD") #MULTI_PERIOD | @as("SINGLE_PERIOD") #SINGLE_PERIOD]
type mode = [@as("BEHIND_LIVE_EDGE") #BEHIND_LIVE_EDGE | @as("OFF") #OFF]
type messageType = [@as("SPLICE_INSERT") #SPLICE_INSERT]
type maxResults = int;
type channelState = [@as("STOPPED") #STOPPED | @as("RUNNING") #RUNNING]
type accessType = [@as("S3_SIGV4") #S3_SIGV4]
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type transition = {
@as("Type") type_: option<__string>,
@as("RelativeProgram") relativeProgram: __string,
@as("RelativePosition") relativePosition: option<relativePosition>
}
type spliceInsertMessage = {
@as("UniqueProgramId") uniqueProgramId: __integer,
@as("SpliceEventId") spliceEventId: __integer,
@as("AvailsExpected") availsExpected: __integer,
@as("AvailNum") availNum: __integer
}
type slateSource = {
@as("VodSourceName") vodSourceName: __string,
@as("SourceLocationName") sourceLocationName: __string
}
type scheduleEntry = {
@as("VodSourceName") vodSourceName: option<__string>,
@as("SourceLocationName") sourceLocationName: option<__string>,
@as("ProgramName") programName: option<__string>,
@as("ChannelName") channelName: option<__string>,
@as("Arn") arn: option<__string>,
@as("ApproximateStartTime") approximateStartTime: __timestampUnix,
@as("ApproximateDurationSeconds") approximateDurationSeconds: __long
}
type livePreRollConfiguration = {
@as("MaxDurationSeconds") maxDurationSeconds: __integer,
@as("AdDecisionServerUrl") adDecisionServerUrl: __string
}
type httpPackageConfiguration = {
@as("Type") type_: option<type_>,
@as("SourceGroup") sourceGroup: option<__string>,
@as("Path") path: option<__string>
}
type httpConfiguration = {
@as("BaseUrl") baseUrl: option<__string>
}
type hlsPlaylistSettings = {
@as("ManifestWindowSeconds") manifestWindowSeconds: __integer
}
type hlsConfiguration = {
@as("ManifestEndpointPrefix") manifestEndpointPrefix: __string
}
type defaultSegmentDeliveryConfiguration = {
@as("BaseUrl") baseUrl: __string
}
type dashPlaylistSettings = {
@as("SuggestedPresentationDelaySeconds") suggestedPresentationDelaySeconds: __integer,
@as("MinUpdatePeriodSeconds") minUpdatePeriodSeconds: __integer,
@as("MinBufferTimeSeconds") minBufferTimeSeconds: __integer,
@as("ManifestWindowSeconds") manifestWindowSeconds: __integer
}
type dashConfigurationForPut = {
@as("OriginManifestType") originManifestType: originManifestType,
@as("MpdLocation") mpdLocation: __string
}
type dashConfiguration = {
@as("OriginManifestType") originManifestType: originManifestType,
@as("MpdLocation") mpdLocation: __string,
@as("ManifestEndpointPrefix") manifestEndpointPrefix: __string
}
type cdnConfiguration = {
@as("ContentSegmentUrlPrefix") contentSegmentUrlPrefix: __string,
@as("AdSegmentUrlPrefix") adSegmentUrlPrefix: __string
}
type bumper = {
@as("StartUrl") startUrl: __string,
@as("EndUrl") endUrl: __string
}
type availSuppression = {
@as("Value") value: __string,
@as("Mode") mode: mode
}
type adMarkerPassthrough = {
@as("Enabled") enabled: __boolean
}
type accessConfiguration = {
@as("AccessType") accessType: accessType
}
type __listOfScheduleEntry = array<scheduleEntry>
type sourceLocation = {
@as("Tags") tags: __mapOf__string,
@as("SourceLocationName") sourceLocationName: option<__string>,
@as("LastModifiedTime") lastModifiedTime: __timestampUnix,
@as("HttpConfiguration") httpConfiguration: option<httpConfiguration>,
@as("DefaultSegmentDeliveryConfiguration") defaultSegmentDeliveryConfiguration: defaultSegmentDeliveryConfiguration,
@as("CreationTime") creationTime: __timestampUnix,
@as("Arn") arn: option<__string>,
@as("AccessConfiguration") accessConfiguration: accessConfiguration
}
type scheduleConfiguration = {
@as("Transition") transition: option<transition>
}
type responseOutputItem = {
@as("SourceGroup") sourceGroup: option<__string>,
@as("PlaybackUrl") playbackUrl: option<__string>,
@as("ManifestName") manifestName: option<__string>,
@as("HlsPlaylistSettings") hlsPlaylistSettings: hlsPlaylistSettings,
@as("DashPlaylistSettings") dashPlaylistSettings: dashPlaylistSettings
}
type requestOutputItem = {
@as("SourceGroup") sourceGroup: option<__string>,
@as("ManifestName") manifestName: option<__string>,
@as("HlsPlaylistSettings") hlsPlaylistSettings: hlsPlaylistSettings,
@as("DashPlaylistSettings") dashPlaylistSettings: dashPlaylistSettings
}
type manifestProcessingRules = {
@as("AdMarkerPassthrough") adMarkerPassthrough: adMarkerPassthrough
}
type httpPackageConfigurations = array<httpPackageConfiguration>
type configurationAliasesResponse = Js.Dict.t< __mapOf__string>
type configurationAliasesRequest = Js.Dict.t< __mapOf__string>
type adBreak = {
@as("SpliceInsertMessage") spliceInsertMessage: spliceInsertMessage,
@as("Slate") slate: slateSource,
@as("OffsetMillis") offsetMillis: __long,
@as("MessageType") messageType: messageType
}
type __listOfSourceLocation = array<sourceLocation>
type __listOfAdBreak = array<adBreak>
type vodSource = {
@as("VodSourceName") vodSourceName: option<__string>,
@as("Tags") tags: __mapOf__string,
@as("SourceLocationName") sourceLocationName: option<__string>,
@as("LastModifiedTime") lastModifiedTime: __timestampUnix,
@as("HttpPackageConfigurations") httpPackageConfigurations: option<httpPackageConfigurations>,
@as("CreationTime") creationTime: __timestampUnix,
@as("Arn") arn: option<__string>
}
type responseOutputs = array<responseOutputItem>
type requestOutputs = array<requestOutputItem>
type playbackConfiguration = {
@as("VideoContentSourceUrl") videoContentSourceUrl: __string,
@as("TranscodeProfileName") transcodeProfileName: __string,
@as("Tags") tags: __mapOf__string,
@as("SlateAdUrl") slateAdUrl: __string,
@as("SessionInitializationEndpointPrefix") sessionInitializationEndpointPrefix: __string,
@as("PlaybackEndpointPrefix") playbackEndpointPrefix: __string,
@as("PlaybackConfigurationArn") playbackConfigurationArn: __string,
@as("PersonalizationThresholdSeconds") personalizationThresholdSeconds: __integerMin1,
@as("Name") name: __string,
@as("ManifestProcessingRules") manifestProcessingRules: manifestProcessingRules,
@as("LivePreRollConfiguration") livePreRollConfiguration: livePreRollConfiguration,
@as("HlsConfiguration") hlsConfiguration: hlsConfiguration,
@as("DashConfiguration") dashConfiguration: dashConfiguration,
@as("ConfigurationAliases") configurationAliases: configurationAliasesResponse,
@as("CdnConfiguration") cdnConfiguration: cdnConfiguration,
@as("Bumper") bumper: bumper,
@as("AvailSuppression") availSuppression: availSuppression,
@as("AdDecisionServerUrl") adDecisionServerUrl: __string
}
type __listOfVodSource = array<vodSource>
type __listOfPlaybackConfiguration = array<playbackConfiguration>
type channel = {
@as("Tags") tags: __mapOf__string,
@as("PlaybackMode") playbackMode: option<__string>,
@as("Outputs") outputs: option<responseOutputs>,
@as("LastModifiedTime") lastModifiedTime: __timestampUnix,
@as("CreationTime") creationTime: __timestampUnix,
@as("ChannelState") channelState: option<__string>,
@as("ChannelName") channelName: option<__string>,
@as("Arn") arn: option<__string>
}
type __listOfChannel = array<channel>
type clientType;
@module("@aws-sdk/client-mediatailor") @new external createClient: unit => clientType = "MediaTailorClient";
module StopChannel = {
  type t;
  type request = {
@as("ChannelName") channelName: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "StopChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartChannel = {
  type t;
  type request = {
@as("ChannelName") channelName: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "StartChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutChannelPolicy = {
  type t;
  type request = {
@as("Policy") policy: option<__string>,
@as("ChannelName") channelName: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "PutChannelPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetChannelPolicy = {
  type t;
  type request = {
@as("ChannelName") channelName: option<__string>
}
  type response = {
@as("Policy") policy: __string
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "GetChannelPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVodSource = {
  type t;
  type request = {
@as("VodSourceName") vodSourceName: option<__string>,
@as("SourceLocationName") sourceLocationName: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "DeleteVodSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSourceLocation = {
  type t;
  type request = {
@as("SourceLocationName") sourceLocationName: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "DeleteSourceLocationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProgram = {
  type t;
  type request = {
@as("ProgramName") programName: option<__string>,
@as("ChannelName") channelName: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "DeleteProgramCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePlaybackConfiguration = {
  type t;
  type request = {
@as("Name") name: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "DeletePlaybackConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteChannelPolicy = {
  type t;
  type request = {
@as("ChannelName") channelName: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "DeleteChannelPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteChannel = {
  type t;
  type request = {
@as("ChannelName") channelName: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "DeleteChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSourceLocation = {
  type t;
  type request = {
@as("SourceLocationName") sourceLocationName: option<__string>,
@as("HttpConfiguration") httpConfiguration: option<httpConfiguration>,
@as("DefaultSegmentDeliveryConfiguration") defaultSegmentDeliveryConfiguration: defaultSegmentDeliveryConfiguration,
@as("AccessConfiguration") accessConfiguration: accessConfiguration
}
  type response = {
@as("Tags") tags: __mapOf__string,
@as("SourceLocationName") sourceLocationName: __string,
@as("LastModifiedTime") lastModifiedTime: __timestampUnix,
@as("HttpConfiguration") httpConfiguration: httpConfiguration,
@as("DefaultSegmentDeliveryConfiguration") defaultSegmentDeliveryConfiguration: defaultSegmentDeliveryConfiguration,
@as("CreationTime") creationTime: __timestampUnix,
@as("Arn") arn: __string,
@as("AccessConfiguration") accessConfiguration: accessConfiguration
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "UpdateSourceLocationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<__listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<__mapOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<__string>
}
  type response = {
@as("Tags") tags: __mapOf__string
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSourceLocation = {
  type t;
  type request = {
@as("SourceLocationName") sourceLocationName: option<__string>
}
  type response = {
@as("Tags") tags: __mapOf__string,
@as("SourceLocationName") sourceLocationName: __string,
@as("LastModifiedTime") lastModifiedTime: __timestampUnix,
@as("HttpConfiguration") httpConfiguration: httpConfiguration,
@as("DefaultSegmentDeliveryConfiguration") defaultSegmentDeliveryConfiguration: defaultSegmentDeliveryConfiguration,
@as("CreationTime") creationTime: __timestampUnix,
@as("Arn") arn: __string,
@as("AccessConfiguration") accessConfiguration: accessConfiguration
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "DescribeSourceLocationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSourceLocation = {
  type t;
  type request = {
@as("Tags") tags: __mapOf__string,
@as("SourceLocationName") sourceLocationName: option<__string>,
@as("HttpConfiguration") httpConfiguration: option<httpConfiguration>,
@as("DefaultSegmentDeliveryConfiguration") defaultSegmentDeliveryConfiguration: defaultSegmentDeliveryConfiguration,
@as("AccessConfiguration") accessConfiguration: accessConfiguration
}
  type response = {
@as("Tags") tags: __mapOf__string,
@as("SourceLocationName") sourceLocationName: __string,
@as("LastModifiedTime") lastModifiedTime: __timestampUnix,
@as("HttpConfiguration") httpConfiguration: httpConfiguration,
@as("DefaultSegmentDeliveryConfiguration") defaultSegmentDeliveryConfiguration: defaultSegmentDeliveryConfiguration,
@as("CreationTime") creationTime: __timestampUnix,
@as("Arn") arn: __string,
@as("AccessConfiguration") accessConfiguration: accessConfiguration
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "CreateSourceLocationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVodSource = {
  type t;
  type request = {
@as("VodSourceName") vodSourceName: option<__string>,
@as("SourceLocationName") sourceLocationName: option<__string>,
@as("HttpPackageConfigurations") httpPackageConfigurations: option<httpPackageConfigurations>
}
  type response = {
@as("VodSourceName") vodSourceName: __string,
@as("Tags") tags: __mapOf__string,
@as("SourceLocationName") sourceLocationName: __string,
@as("LastModifiedTime") lastModifiedTime: __timestampUnix,
@as("HttpPackageConfigurations") httpPackageConfigurations: httpPackageConfigurations,
@as("CreationTime") creationTime: __timestampUnix,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "UpdateVodSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutPlaybackConfiguration = {
  type t;
  type request = {
@as("VideoContentSourceUrl") videoContentSourceUrl: __string,
@as("TranscodeProfileName") transcodeProfileName: __string,
@as("Tags") tags: __mapOf__string,
@as("SlateAdUrl") slateAdUrl: __string,
@as("PersonalizationThresholdSeconds") personalizationThresholdSeconds: __integerMin1,
@as("Name") name: __string,
@as("ManifestProcessingRules") manifestProcessingRules: manifestProcessingRules,
@as("LivePreRollConfiguration") livePreRollConfiguration: livePreRollConfiguration,
@as("DashConfiguration") dashConfiguration: dashConfigurationForPut,
@as("ConfigurationAliases") configurationAliases: configurationAliasesRequest,
@as("CdnConfiguration") cdnConfiguration: cdnConfiguration,
@as("Bumper") bumper: bumper,
@as("AvailSuppression") availSuppression: availSuppression,
@as("AdDecisionServerUrl") adDecisionServerUrl: __string
}
  type response = {
@as("VideoContentSourceUrl") videoContentSourceUrl: __string,
@as("TranscodeProfileName") transcodeProfileName: __string,
@as("Tags") tags: __mapOf__string,
@as("SlateAdUrl") slateAdUrl: __string,
@as("SessionInitializationEndpointPrefix") sessionInitializationEndpointPrefix: __string,
@as("PlaybackEndpointPrefix") playbackEndpointPrefix: __string,
@as("PlaybackConfigurationArn") playbackConfigurationArn: __string,
@as("PersonalizationThresholdSeconds") personalizationThresholdSeconds: __integerMin1,
@as("Name") name: __string,
@as("ManifestProcessingRules") manifestProcessingRules: manifestProcessingRules,
@as("LivePreRollConfiguration") livePreRollConfiguration: livePreRollConfiguration,
@as("HlsConfiguration") hlsConfiguration: hlsConfiguration,
@as("DashConfiguration") dashConfiguration: dashConfiguration,
@as("ConfigurationAliases") configurationAliases: configurationAliasesResponse,
@as("CdnConfiguration") cdnConfiguration: cdnConfiguration,
@as("Bumper") bumper: bumper,
@as("AvailSuppression") availSuppression: availSuppression,
@as("AdDecisionServerUrl") adDecisionServerUrl: __string
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "PutPlaybackConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPlaybackConfiguration = {
  type t;
  type request = {
@as("Name") name: option<__string>
}
  type response = {
@as("VideoContentSourceUrl") videoContentSourceUrl: __string,
@as("TranscodeProfileName") transcodeProfileName: __string,
@as("Tags") tags: __mapOf__string,
@as("SlateAdUrl") slateAdUrl: __string,
@as("SessionInitializationEndpointPrefix") sessionInitializationEndpointPrefix: __string,
@as("PlaybackEndpointPrefix") playbackEndpointPrefix: __string,
@as("PlaybackConfigurationArn") playbackConfigurationArn: __string,
@as("PersonalizationThresholdSeconds") personalizationThresholdSeconds: __integerMin1,
@as("Name") name: __string,
@as("ManifestProcessingRules") manifestProcessingRules: manifestProcessingRules,
@as("LivePreRollConfiguration") livePreRollConfiguration: livePreRollConfiguration,
@as("HlsConfiguration") hlsConfiguration: hlsConfiguration,
@as("DashConfiguration") dashConfiguration: dashConfiguration,
@as("ConfigurationAliases") configurationAliases: configurationAliasesResponse,
@as("CdnConfiguration") cdnConfiguration: cdnConfiguration,
@as("Bumper") bumper: bumper,
@as("AvailSuppression") availSuppression: availSuppression,
@as("AdDecisionServerUrl") adDecisionServerUrl: __string
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "GetPlaybackConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetChannelSchedule = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("DurationMinutes") durationMinutes: __string,
@as("ChannelName") channelName: option<__string>
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Items") items: __listOfScheduleEntry
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "GetChannelScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVodSource = {
  type t;
  type request = {
@as("VodSourceName") vodSourceName: option<__string>,
@as("SourceLocationName") sourceLocationName: option<__string>
}
  type response = {
@as("VodSourceName") vodSourceName: __string,
@as("Tags") tags: __mapOf__string,
@as("SourceLocationName") sourceLocationName: __string,
@as("LastModifiedTime") lastModifiedTime: __timestampUnix,
@as("HttpPackageConfigurations") httpPackageConfigurations: httpPackageConfigurations,
@as("CreationTime") creationTime: __timestampUnix,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "DescribeVodSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVodSource = {
  type t;
  type request = {
@as("VodSourceName") vodSourceName: option<__string>,
@as("Tags") tags: __mapOf__string,
@as("SourceLocationName") sourceLocationName: option<__string>,
@as("HttpPackageConfigurations") httpPackageConfigurations: option<httpPackageConfigurations>
}
  type response = {
@as("VodSourceName") vodSourceName: __string,
@as("Tags") tags: __mapOf__string,
@as("SourceLocationName") sourceLocationName: __string,
@as("LastModifiedTime") lastModifiedTime: __timestampUnix,
@as("HttpPackageConfigurations") httpPackageConfigurations: httpPackageConfigurations,
@as("CreationTime") creationTime: __timestampUnix,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "CreateVodSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateChannel = {
  type t;
  type request = {
@as("Outputs") outputs: option<requestOutputs>,
@as("ChannelName") channelName: option<__string>
}
  type response = {
@as("Tags") tags: __mapOf__string,
@as("PlaybackMode") playbackMode: __string,
@as("Outputs") outputs: responseOutputs,
@as("LastModifiedTime") lastModifiedTime: __timestampUnix,
@as("CreationTime") creationTime: __timestampUnix,
@as("ChannelState") channelState: channelState,
@as("ChannelName") channelName: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "UpdateChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSourceLocations = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Items") items: __listOfSourceLocation
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "ListSourceLocationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProgram = {
  type t;
  type request = {
@as("ProgramName") programName: option<__string>,
@as("ChannelName") channelName: option<__string>
}
  type response = {
@as("VodSourceName") vodSourceName: __string,
@as("SourceLocationName") sourceLocationName: __string,
@as("ProgramName") programName: __string,
@as("CreationTime") creationTime: __timestampUnix,
@as("ChannelName") channelName: __string,
@as("Arn") arn: __string,
@as("AdBreaks") adBreaks: __listOfAdBreak
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "DescribeProgramCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChannel = {
  type t;
  type request = {
@as("ChannelName") channelName: option<__string>
}
  type response = {
@as("Tags") tags: __mapOf__string,
@as("PlaybackMode") playbackMode: __string,
@as("Outputs") outputs: responseOutputs,
@as("LastModifiedTime") lastModifiedTime: __timestampUnix,
@as("CreationTime") creationTime: __timestampUnix,
@as("ChannelState") channelState: channelState,
@as("ChannelName") channelName: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "DescribeChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProgram = {
  type t;
  type request = {
@as("VodSourceName") vodSourceName: option<__string>,
@as("SourceLocationName") sourceLocationName: option<__string>,
@as("ScheduleConfiguration") scheduleConfiguration: option<scheduleConfiguration>,
@as("ProgramName") programName: option<__string>,
@as("ChannelName") channelName: option<__string>,
@as("AdBreaks") adBreaks: __listOfAdBreak
}
  type response = {
@as("VodSourceName") vodSourceName: __string,
@as("SourceLocationName") sourceLocationName: __string,
@as("ProgramName") programName: __string,
@as("CreationTime") creationTime: __timestampUnix,
@as("ChannelName") channelName: __string,
@as("Arn") arn: __string,
@as("AdBreaks") adBreaks: __listOfAdBreak
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "CreateProgramCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateChannel = {
  type t;
  type request = {
@as("Tags") tags: __mapOf__string,
@as("PlaybackMode") playbackMode: option<playbackMode>,
@as("Outputs") outputs: option<requestOutputs>,
@as("ChannelName") channelName: option<__string>
}
  type response = {
@as("Tags") tags: __mapOf__string,
@as("PlaybackMode") playbackMode: __string,
@as("Outputs") outputs: responseOutputs,
@as("LastModifiedTime") lastModifiedTime: __timestampUnix,
@as("CreationTime") creationTime: __timestampUnix,
@as("ChannelState") channelState: channelState,
@as("ChannelName") channelName: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "CreateChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVodSources = {
  type t;
  type request = {
@as("SourceLocationName") sourceLocationName: option<__string>,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Items") items: __listOfVodSource
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "ListVodSourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPlaybackConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Items") items: __listOfPlaybackConfiguration
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "ListPlaybackConfigurationsCommand";
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
@as("Items") items: __listOfChannel
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (Js.Promise.t<request>) => t = "ListChannelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
