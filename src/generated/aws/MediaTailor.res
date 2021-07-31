type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-mediatailor") @new external createClient: unit => awsServiceClient = "MediaTailorClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type __timestampUnix = int;
type __string = string
type __long = float
type __integerMin1 = int
type __integer = int
type __boolean = bool
type type_ = [@as("HLS") #HLS | @as("DASH") #DASH]
type relativePosition = [@as("AFTER_PROGRAM") #AFTER_PROGRAM | @as("BEFORE_PROGRAM") #BEFORE_PROGRAM]
type playbackMode = [@as("LOOP") #LOOP]
type originManifestType = [@as("MULTI_PERIOD") #MULTI_PERIOD | @as("SINGLE_PERIOD") #SINGLE_PERIOD]
type mode = [@as("BEHIND_LIVE_EDGE") #BEHIND_LIVE_EDGE | @as("OFF") #OFF]
type messageType = [@as("SPLICE_INSERT") #SPLICE_INSERT]
type maxResults = int
type channelState = [@as("STOPPED") #STOPPED | @as("RUNNING") #RUNNING]
type accessType = [@as("S3_SIGV4") #S3_SIGV4]
type __mapOf__string = Js.Dict.t<__string>
type __listOf__string = array<__string>
type transition = {
@as("Type") type_: __string,
  @as("RelativeProgram") relativeProgram: option<__string>,
  @as("RelativePosition") relativePosition: relativePosition
}
type spliceInsertMessage = {
@as("UniqueProgramId") uniqueProgramId: option<__integer>,
  @as("SpliceEventId") spliceEventId: option<__integer>,
  @as("AvailsExpected") availsExpected: option<__integer>,
  @as("AvailNum") availNum: option<__integer>
}
type slateSource = {
@as("VodSourceName") vodSourceName: option<__string>,
  @as("SourceLocationName") sourceLocationName: option<__string>
}
type scheduleEntry = {
@as("VodSourceName") vodSourceName: __string,
  @as("SourceLocationName") sourceLocationName: __string,
  @as("ProgramName") programName: __string,
  @as("ChannelName") channelName: __string,
  @as("Arn") arn: __string,
  @as("ApproximateStartTime") approximateStartTime: option<__timestampUnix>,
  @as("ApproximateDurationSeconds") approximateDurationSeconds: option<__long>
}
type livePreRollConfiguration = {
@as("MaxDurationSeconds") maxDurationSeconds: option<__integer>,
  @as("AdDecisionServerUrl") adDecisionServerUrl: option<__string>
}
type httpPackageConfiguration = {
@as("Type") type_: type_,
  @as("SourceGroup") sourceGroup: __string,
  @as("Path") path: __string
}
type httpConfiguration = {
@as("BaseUrl") baseUrl: __string
}
type hlsPlaylistSettings = {
@as("ManifestWindowSeconds") manifestWindowSeconds: option<__integer>
}
type hlsConfiguration = {
@as("ManifestEndpointPrefix") manifestEndpointPrefix: option<__string>
}
type defaultSegmentDeliveryConfiguration = {
@as("BaseUrl") baseUrl: option<__string>
}
type dashPlaylistSettings = {
@as("SuggestedPresentationDelaySeconds") suggestedPresentationDelaySeconds: option<__integer>,
  @as("MinUpdatePeriodSeconds") minUpdatePeriodSeconds: option<__integer>,
  @as("MinBufferTimeSeconds") minBufferTimeSeconds: option<__integer>,
  @as("ManifestWindowSeconds") manifestWindowSeconds: option<__integer>
}
type dashConfigurationForPut = {
@as("OriginManifestType") originManifestType: option<originManifestType>,
  @as("MpdLocation") mpdLocation: option<__string>
}
type dashConfiguration = {
@as("OriginManifestType") originManifestType: option<originManifestType>,
  @as("MpdLocation") mpdLocation: option<__string>,
  @as("ManifestEndpointPrefix") manifestEndpointPrefix: option<__string>
}
type cdnConfiguration = {
@as("ContentSegmentUrlPrefix") contentSegmentUrlPrefix: option<__string>,
  @as("AdSegmentUrlPrefix") adSegmentUrlPrefix: option<__string>
}
type bumper = {
@as("StartUrl") startUrl: option<__string>,
  @as("EndUrl") endUrl: option<__string>
}
type availSuppression = {
@as("Value") value: option<__string>,
  @as("Mode") mode: option<mode>
}
type adMarkerPassthrough = {
@as("Enabled") enabled: option<__boolean>
}
type accessConfiguration = {
@as("AccessType") accessType: option<accessType>
}
type __listOfScheduleEntry = array<scheduleEntry>
type sourceLocation = {
@as("Tags") tags: option<__mapOf__string>,
  @as("SourceLocationName") sourceLocationName: __string,
  @as("LastModifiedTime") lastModifiedTime: option<__timestampUnix>,
  @as("HttpConfiguration") httpConfiguration: httpConfiguration,
  @as("DefaultSegmentDeliveryConfiguration") defaultSegmentDeliveryConfiguration: option<defaultSegmentDeliveryConfiguration>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("Arn") arn: __string,
  @as("AccessConfiguration") accessConfiguration: option<accessConfiguration>
}
type scheduleConfiguration = {
@as("Transition") transition: transition
}
type responseOutputItem = {
@as("SourceGroup") sourceGroup: __string,
  @as("PlaybackUrl") playbackUrl: __string,
  @as("ManifestName") manifestName: __string,
  @as("HlsPlaylistSettings") hlsPlaylistSettings: option<hlsPlaylistSettings>,
  @as("DashPlaylistSettings") dashPlaylistSettings: option<dashPlaylistSettings>
}
type requestOutputItem = {
@as("SourceGroup") sourceGroup: __string,
  @as("ManifestName") manifestName: __string,
  @as("HlsPlaylistSettings") hlsPlaylistSettings: option<hlsPlaylistSettings>,
  @as("DashPlaylistSettings") dashPlaylistSettings: option<dashPlaylistSettings>
}
type manifestProcessingRules = {
@as("AdMarkerPassthrough") adMarkerPassthrough: option<adMarkerPassthrough>
}
type httpPackageConfigurations = array<httpPackageConfiguration>
type configurationAliasesResponse = Js.Dict.t<__mapOf__string>
type configurationAliasesRequest = Js.Dict.t<__mapOf__string>
type adBreak = {
@as("SpliceInsertMessage") spliceInsertMessage: option<spliceInsertMessage>,
  @as("Slate") slate: option<slateSource>,
  @as("OffsetMillis") offsetMillis: option<__long>,
  @as("MessageType") messageType: option<messageType>
}
type __listOfSourceLocation = array<sourceLocation>
type __listOfAdBreak = array<adBreak>
type vodSource = {
@as("VodSourceName") vodSourceName: __string,
  @as("Tags") tags: option<__mapOf__string>,
  @as("SourceLocationName") sourceLocationName: __string,
  @as("LastModifiedTime") lastModifiedTime: option<__timestampUnix>,
  @as("HttpPackageConfigurations") httpPackageConfigurations: httpPackageConfigurations,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("Arn") arn: __string
}
type responseOutputs = array<responseOutputItem>
type requestOutputs = array<requestOutputItem>
type playbackConfiguration = {
@as("VideoContentSourceUrl") videoContentSourceUrl: option<__string>,
  @as("TranscodeProfileName") transcodeProfileName: option<__string>,
  @as("Tags") tags: option<__mapOf__string>,
  @as("SlateAdUrl") slateAdUrl: option<__string>,
  @as("SessionInitializationEndpointPrefix") sessionInitializationEndpointPrefix: option<__string>,
  @as("PlaybackEndpointPrefix") playbackEndpointPrefix: option<__string>,
  @as("PlaybackConfigurationArn") playbackConfigurationArn: option<__string>,
  @as("PersonalizationThresholdSeconds") personalizationThresholdSeconds: option<__integerMin1>,
  @as("Name") name: option<__string>,
  @as("ManifestProcessingRules") manifestProcessingRules: option<manifestProcessingRules>,
  @as("LivePreRollConfiguration") livePreRollConfiguration: option<livePreRollConfiguration>,
  @as("HlsConfiguration") hlsConfiguration: option<hlsConfiguration>,
  @as("DashConfiguration") dashConfiguration: option<dashConfiguration>,
  @as("ConfigurationAliases") configurationAliases: option<configurationAliasesResponse>,
  @as("CdnConfiguration") cdnConfiguration: option<cdnConfiguration>,
  @as("Bumper") bumper: option<bumper>,
  @as("AvailSuppression") availSuppression: option<availSuppression>,
  @as("AdDecisionServerUrl") adDecisionServerUrl: option<__string>
}
type __listOfVodSource = array<vodSource>
type __listOfPlaybackConfiguration = array<playbackConfiguration>
type channel = {
@as("Tags") tags: option<__mapOf__string>,
  @as("PlaybackMode") playbackMode: __string,
  @as("Outputs") outputs: responseOutputs,
  @as("LastModifiedTime") lastModifiedTime: option<__timestampUnix>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("ChannelState") channelState: __string,
  @as("ChannelName") channelName: __string,
  @as("Arn") arn: __string
}
type __listOfChannel = array<channel>

module StopChannel = {
  type t;
  type request = {
@as("ChannelName") channelName: __string
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "StopChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartChannel = {
  type t;
  type request = {
@as("ChannelName") channelName: __string
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "StartChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutChannelPolicy = {
  type t;
  type request = {
@as("Policy") policy: __string,
  @as("ChannelName") channelName: __string
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "PutChannelPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetChannelPolicy = {
  type t;
  type request = {
@as("ChannelName") channelName: __string
}
  type response = {
@as("Policy") policy: option<__string>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "GetChannelPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteVodSource = {
  type t;
  type request = {
@as("VodSourceName") vodSourceName: __string,
  @as("SourceLocationName") sourceLocationName: __string
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "DeleteVodSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSourceLocation = {
  type t;
  type request = {
@as("SourceLocationName") sourceLocationName: __string
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "DeleteSourceLocationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProgram = {
  type t;
  type request = {
@as("ProgramName") programName: __string,
  @as("ChannelName") channelName: __string
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "DeleteProgramCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePlaybackConfiguration = {
  type t;
  type request = {
@as("Name") name: __string
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "DeletePlaybackConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteChannelPolicy = {
  type t;
  type request = {
@as("ChannelName") channelName: __string
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "DeleteChannelPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteChannel = {
  type t;
  type request = {
@as("ChannelName") channelName: __string
}
  type response = unit
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "DeleteChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSourceLocation = {
  type t;
  type request = {
@as("SourceLocationName") sourceLocationName: __string,
  @as("HttpConfiguration") httpConfiguration: httpConfiguration,
  @as("DefaultSegmentDeliveryConfiguration") defaultSegmentDeliveryConfiguration: option<defaultSegmentDeliveryConfiguration>,
  @as("AccessConfiguration") accessConfiguration: option<accessConfiguration>
}
  type response = {
@as("Tags") tags: option<__mapOf__string>,
  @as("SourceLocationName") sourceLocationName: option<__string>,
  @as("LastModifiedTime") lastModifiedTime: option<__timestampUnix>,
  @as("HttpConfiguration") httpConfiguration: option<httpConfiguration>,
  @as("DefaultSegmentDeliveryConfiguration") defaultSegmentDeliveryConfiguration: option<defaultSegmentDeliveryConfiguration>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("Arn") arn: option<__string>,
  @as("AccessConfiguration") accessConfiguration: option<accessConfiguration>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "UpdateSourceLocationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: __listOf__string,
  @as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: __mapOf__string,
  @as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: __string
}
  type response = {
@as("Tags") tags: option<__mapOf__string>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSourceLocation = {
  type t;
  type request = {
@as("SourceLocationName") sourceLocationName: __string
}
  type response = {
@as("Tags") tags: option<__mapOf__string>,
  @as("SourceLocationName") sourceLocationName: option<__string>,
  @as("LastModifiedTime") lastModifiedTime: option<__timestampUnix>,
  @as("HttpConfiguration") httpConfiguration: option<httpConfiguration>,
  @as("DefaultSegmentDeliveryConfiguration") defaultSegmentDeliveryConfiguration: option<defaultSegmentDeliveryConfiguration>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("Arn") arn: option<__string>,
  @as("AccessConfiguration") accessConfiguration: option<accessConfiguration>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "DescribeSourceLocationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSourceLocation = {
  type t;
  type request = {
@as("Tags") tags: option<__mapOf__string>,
  @as("SourceLocationName") sourceLocationName: __string,
  @as("HttpConfiguration") httpConfiguration: httpConfiguration,
  @as("DefaultSegmentDeliveryConfiguration") defaultSegmentDeliveryConfiguration: option<defaultSegmentDeliveryConfiguration>,
  @as("AccessConfiguration") accessConfiguration: option<accessConfiguration>
}
  type response = {
@as("Tags") tags: option<__mapOf__string>,
  @as("SourceLocationName") sourceLocationName: option<__string>,
  @as("LastModifiedTime") lastModifiedTime: option<__timestampUnix>,
  @as("HttpConfiguration") httpConfiguration: option<httpConfiguration>,
  @as("DefaultSegmentDeliveryConfiguration") defaultSegmentDeliveryConfiguration: option<defaultSegmentDeliveryConfiguration>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("Arn") arn: option<__string>,
  @as("AccessConfiguration") accessConfiguration: option<accessConfiguration>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "CreateSourceLocationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateVodSource = {
  type t;
  type request = {
@as("VodSourceName") vodSourceName: __string,
  @as("SourceLocationName") sourceLocationName: __string,
  @as("HttpPackageConfigurations") httpPackageConfigurations: httpPackageConfigurations
}
  type response = {
@as("VodSourceName") vodSourceName: option<__string>,
  @as("Tags") tags: option<__mapOf__string>,
  @as("SourceLocationName") sourceLocationName: option<__string>,
  @as("LastModifiedTime") lastModifiedTime: option<__timestampUnix>,
  @as("HttpPackageConfigurations") httpPackageConfigurations: option<httpPackageConfigurations>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "UpdateVodSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutPlaybackConfiguration = {
  type t;
  type request = {
@as("VideoContentSourceUrl") videoContentSourceUrl: option<__string>,
  @as("TranscodeProfileName") transcodeProfileName: option<__string>,
  @as("Tags") tags: option<__mapOf__string>,
  @as("SlateAdUrl") slateAdUrl: option<__string>,
  @as("PersonalizationThresholdSeconds") personalizationThresholdSeconds: option<__integerMin1>,
  @as("Name") name: option<__string>,
  @as("ManifestProcessingRules") manifestProcessingRules: option<manifestProcessingRules>,
  @as("LivePreRollConfiguration") livePreRollConfiguration: option<livePreRollConfiguration>,
  @as("DashConfiguration") dashConfiguration: option<dashConfigurationForPut>,
  @as("ConfigurationAliases") configurationAliases: option<configurationAliasesRequest>,
  @as("CdnConfiguration") cdnConfiguration: option<cdnConfiguration>,
  @as("Bumper") bumper: option<bumper>,
  @as("AvailSuppression") availSuppression: option<availSuppression>,
  @as("AdDecisionServerUrl") adDecisionServerUrl: option<__string>
}
  type response = {
@as("VideoContentSourceUrl") videoContentSourceUrl: option<__string>,
  @as("TranscodeProfileName") transcodeProfileName: option<__string>,
  @as("Tags") tags: option<__mapOf__string>,
  @as("SlateAdUrl") slateAdUrl: option<__string>,
  @as("SessionInitializationEndpointPrefix") sessionInitializationEndpointPrefix: option<__string>,
  @as("PlaybackEndpointPrefix") playbackEndpointPrefix: option<__string>,
  @as("PlaybackConfigurationArn") playbackConfigurationArn: option<__string>,
  @as("PersonalizationThresholdSeconds") personalizationThresholdSeconds: option<__integerMin1>,
  @as("Name") name: option<__string>,
  @as("ManifestProcessingRules") manifestProcessingRules: option<manifestProcessingRules>,
  @as("LivePreRollConfiguration") livePreRollConfiguration: option<livePreRollConfiguration>,
  @as("HlsConfiguration") hlsConfiguration: option<hlsConfiguration>,
  @as("DashConfiguration") dashConfiguration: option<dashConfiguration>,
  @as("ConfigurationAliases") configurationAliases: option<configurationAliasesResponse>,
  @as("CdnConfiguration") cdnConfiguration: option<cdnConfiguration>,
  @as("Bumper") bumper: option<bumper>,
  @as("AvailSuppression") availSuppression: option<availSuppression>,
  @as("AdDecisionServerUrl") adDecisionServerUrl: option<__string>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "PutPlaybackConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPlaybackConfiguration = {
  type t;
  type request = {
@as("Name") name: __string
}
  type response = {
@as("VideoContentSourceUrl") videoContentSourceUrl: option<__string>,
  @as("TranscodeProfileName") transcodeProfileName: option<__string>,
  @as("Tags") tags: option<__mapOf__string>,
  @as("SlateAdUrl") slateAdUrl: option<__string>,
  @as("SessionInitializationEndpointPrefix") sessionInitializationEndpointPrefix: option<__string>,
  @as("PlaybackEndpointPrefix") playbackEndpointPrefix: option<__string>,
  @as("PlaybackConfigurationArn") playbackConfigurationArn: option<__string>,
  @as("PersonalizationThresholdSeconds") personalizationThresholdSeconds: option<__integerMin1>,
  @as("Name") name: option<__string>,
  @as("ManifestProcessingRules") manifestProcessingRules: option<manifestProcessingRules>,
  @as("LivePreRollConfiguration") livePreRollConfiguration: option<livePreRollConfiguration>,
  @as("HlsConfiguration") hlsConfiguration: option<hlsConfiguration>,
  @as("DashConfiguration") dashConfiguration: option<dashConfiguration>,
  @as("ConfigurationAliases") configurationAliases: option<configurationAliasesResponse>,
  @as("CdnConfiguration") cdnConfiguration: option<cdnConfiguration>,
  @as("Bumper") bumper: option<bumper>,
  @as("AvailSuppression") availSuppression: option<availSuppression>,
  @as("AdDecisionServerUrl") adDecisionServerUrl: option<__string>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "GetPlaybackConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetChannelSchedule = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("DurationMinutes") durationMinutes: option<__string>,
  @as("ChannelName") channelName: __string
}
  type response = {
@as("NextToken") nextToken: option<__string>,
  @as("Items") items: option<__listOfScheduleEntry>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "GetChannelScheduleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeVodSource = {
  type t;
  type request = {
@as("VodSourceName") vodSourceName: __string,
  @as("SourceLocationName") sourceLocationName: __string
}
  type response = {
@as("VodSourceName") vodSourceName: option<__string>,
  @as("Tags") tags: option<__mapOf__string>,
  @as("SourceLocationName") sourceLocationName: option<__string>,
  @as("LastModifiedTime") lastModifiedTime: option<__timestampUnix>,
  @as("HttpPackageConfigurations") httpPackageConfigurations: option<httpPackageConfigurations>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "DescribeVodSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateVodSource = {
  type t;
  type request = {
@as("VodSourceName") vodSourceName: __string,
  @as("Tags") tags: option<__mapOf__string>,
  @as("SourceLocationName") sourceLocationName: __string,
  @as("HttpPackageConfigurations") httpPackageConfigurations: httpPackageConfigurations
}
  type response = {
@as("VodSourceName") vodSourceName: option<__string>,
  @as("Tags") tags: option<__mapOf__string>,
  @as("SourceLocationName") sourceLocationName: option<__string>,
  @as("LastModifiedTime") lastModifiedTime: option<__timestampUnix>,
  @as("HttpPackageConfigurations") httpPackageConfigurations: option<httpPackageConfigurations>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "CreateVodSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateChannel = {
  type t;
  type request = {
@as("Outputs") outputs: requestOutputs,
  @as("ChannelName") channelName: __string
}
  type response = {
@as("Tags") tags: option<__mapOf__string>,
  @as("PlaybackMode") playbackMode: option<__string>,
  @as("Outputs") outputs: option<responseOutputs>,
  @as("LastModifiedTime") lastModifiedTime: option<__timestampUnix>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("ChannelState") channelState: option<channelState>,
  @as("ChannelName") channelName: option<__string>,
  @as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "UpdateChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSourceLocations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
  @as("Items") items: option<__listOfSourceLocation>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "ListSourceLocationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProgram = {
  type t;
  type request = {
@as("ProgramName") programName: __string,
  @as("ChannelName") channelName: __string
}
  type response = {
@as("VodSourceName") vodSourceName: option<__string>,
  @as("SourceLocationName") sourceLocationName: option<__string>,
  @as("ProgramName") programName: option<__string>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("ChannelName") channelName: option<__string>,
  @as("Arn") arn: option<__string>,
  @as("AdBreaks") adBreaks: option<__listOfAdBreak>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "DescribeProgramCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeChannel = {
  type t;
  type request = {
@as("ChannelName") channelName: __string
}
  type response = {
@as("Tags") tags: option<__mapOf__string>,
  @as("PlaybackMode") playbackMode: option<__string>,
  @as("Outputs") outputs: option<responseOutputs>,
  @as("LastModifiedTime") lastModifiedTime: option<__timestampUnix>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("ChannelState") channelState: option<channelState>,
  @as("ChannelName") channelName: option<__string>,
  @as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "DescribeChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateProgram = {
  type t;
  type request = {
@as("VodSourceName") vodSourceName: __string,
  @as("SourceLocationName") sourceLocationName: __string,
  @as("ScheduleConfiguration") scheduleConfiguration: scheduleConfiguration,
  @as("ProgramName") programName: __string,
  @as("ChannelName") channelName: __string,
  @as("AdBreaks") adBreaks: option<__listOfAdBreak>
}
  type response = {
@as("VodSourceName") vodSourceName: option<__string>,
  @as("SourceLocationName") sourceLocationName: option<__string>,
  @as("ProgramName") programName: option<__string>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("ChannelName") channelName: option<__string>,
  @as("Arn") arn: option<__string>,
  @as("AdBreaks") adBreaks: option<__listOfAdBreak>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "CreateProgramCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateChannel = {
  type t;
  type request = {
@as("Tags") tags: option<__mapOf__string>,
  @as("PlaybackMode") playbackMode: playbackMode,
  @as("Outputs") outputs: requestOutputs,
  @as("ChannelName") channelName: __string
}
  type response = {
@as("Tags") tags: option<__mapOf__string>,
  @as("PlaybackMode") playbackMode: option<__string>,
  @as("Outputs") outputs: option<responseOutputs>,
  @as("LastModifiedTime") lastModifiedTime: option<__timestampUnix>,
  @as("CreationTime") creationTime: option<__timestampUnix>,
  @as("ChannelState") channelState: option<channelState>,
  @as("ChannelName") channelName: option<__string>,
  @as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "CreateChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListVodSources = {
  type t;
  type request = {
@as("SourceLocationName") sourceLocationName: __string,
  @as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
  @as("Items") items: option<__listOfVodSource>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "ListVodSourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPlaybackConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
  @as("Items") items: option<__listOfPlaybackConfiguration>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "ListPlaybackConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListChannels = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
  @as("Items") items: option<__listOfChannel>
}
  @module("@aws-sdk/client-mediatailor") @new external new_: (request) => t = "ListChannelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
