type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __string = string
type __integer = int;
type __boolean = bool;
type __PeriodTriggersElement = [@as("ADS") #ADS]
type __AdTriggersElement = [@as("DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY") #DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY | @as("PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY") #PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY | @as("DISTRIBUTOR_PLACEMENT_OPPORTUNITY") #DISTRIBUTOR_PLACEMENT_OPPORTUNITY | @as("PROVIDER_PLACEMENT_OPPORTUNITY") #PROVIDER_PLACEMENT_OPPORTUNITY | @as("DISTRIBUTOR_ADVERTISEMENT") #DISTRIBUTOR_ADVERTISEMENT | @as("PROVIDER_ADVERTISEMENT") #PROVIDER_ADVERTISEMENT | @as("BREAK") #BREAK | @as("SPLICE_INSERT") #SPLICE_INSERT]
type utcTiming = [@as("HTTP-ISO") #HTTP_ISO | @as("HTTP-HEAD") #HTTP_HEAD | @as("NONE") #NONE]
type streamOrder = [@as("VIDEO_BITRATE_DESCENDING") #VIDEO_BITRATE_DESCENDING | @as("VIDEO_BITRATE_ASCENDING") #VIDEO_BITRATE_ASCENDING | @as("ORIGINAL") #ORIGINAL]
type status = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS]
type segmentTemplateFormat = [@as("NUMBER_WITH_DURATION") #NUMBER_WITH_DURATION | @as("TIME_WITH_TIMELINE") #TIME_WITH_TIMELINE | @as("NUMBER_WITH_TIMELINE") #NUMBER_WITH_TIMELINE]
type profile = [@as("HBBTV_1_5") #HBBTV_1_5 | @as("NONE") #NONE]
type presetSpeke20Video = [@as("PRESET-VIDEO-1") #PRESET_VIDEO_1]
type presetSpeke20Audio = [@as("PRESET-AUDIO-1") #PRESET_AUDIO_1]
type playlistType = [@as("VOD") #VOD | @as("EVENT") #EVENT | @as("NONE") #NONE]
type origination = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type maxResults = int;
type manifestLayout = [@as("COMPACT") #COMPACT | @as("FULL") #FULL]
type encryptionMethod = [@as("SAMPLE_AES") #SAMPLE_AES | @as("AES_128") #AES_128]
type adsOnDeliveryRestrictions = [@as("BOTH") #BOTH | @as("UNRESTRICTED") #UNRESTRICTED | @as("RESTRICTED") #RESTRICTED | @as("NONE") #NONE]
type adMarkers = [@as("DATERANGE") #DATERANGE | @as("PASSTHROUGH") #PASSTHROUGH | @as("SCTE35_ENHANCED") #SCTE35_ENHANCED | @as("NONE") #NONE]
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type __listOf__PeriodTriggersElement = array<__PeriodTriggersElement>
type tags = Js.Dict.t< __string>
type streamSelection = {
@as("StreamOrder") streamOrder: streamOrder,
@as("MinVideoBitsPerSecond") minVideoBitsPerSecond: __integer,
@as("MaxVideoBitsPerSecond") maxVideoBitsPerSecond: __integer
}
type s3Destination = {
@as("RoleArn") roleArn: option<__string>,
@as("ManifestKey") manifestKey: option<__string>,
@as("BucketName") bucketName: option<__string>
}
type ingressAccessLogs = {
@as("LogGroupName") logGroupName: __string
}
type ingestEndpoint = {
@as("Username") username: __string,
@as("Url") url: __string,
@as("Password") password: __string,
@as("Id") id: __string
}
type hlsManifest = {
@as("Url") url: __string,
@as("ProgramDateTimeIntervalSeconds") programDateTimeIntervalSeconds: __integer,
@as("PlaylistWindowSeconds") playlistWindowSeconds: __integer,
@as("PlaylistType") playlistType: playlistType,
@as("ManifestName") manifestName: __string,
@as("IncludeIframeOnlyStream") includeIframeOnlyStream: __boolean,
@as("Id") id: option<__string>,
@as("AdMarkers") adMarkers: adMarkers
}
type encryptionContractConfiguration = {
@as("PresetSpeke20Video") presetSpeke20Video: option<presetSpeke20Video>,
@as("PresetSpeke20Audio") presetSpeke20Audio: option<presetSpeke20Audio>
}
type egressAccessLogs = {
@as("LogGroupName") logGroupName: __string
}
type authorization = {
@as("SecretsRoleArn") secretsRoleArn: option<__string>,
@as("CdnIdentifierSecret") cdnIdentifierSecret: option<__string>
}
type adTriggers = array<__AdTriggersElement>
type __listOfIngestEndpoint = array<ingestEndpoint>
type __listOfHlsManifest = array<hlsManifest>
type spekeKeyProvider = {
@as("Url") url: option<__string>,
@as("SystemIds") systemIds: option<__listOf__string>,
@as("RoleArn") roleArn: option<__string>,
@as("ResourceId") resourceId: option<__string>,
@as("EncryptionContractConfiguration") encryptionContractConfiguration: encryptionContractConfiguration,
@as("CertificateArn") certificateArn: __string
}
type hlsManifestCreateOrUpdateParameters = {
@as("ProgramDateTimeIntervalSeconds") programDateTimeIntervalSeconds: __integer,
@as("PlaylistWindowSeconds") playlistWindowSeconds: __integer,
@as("PlaylistType") playlistType: playlistType,
@as("ManifestName") manifestName: __string,
@as("IncludeIframeOnlyStream") includeIframeOnlyStream: __boolean,
@as("Id") id: option<__string>,
@as("AdsOnDeliveryRestrictions") adsOnDeliveryRestrictions: adsOnDeliveryRestrictions,
@as("AdTriggers") adTriggers: adTriggers,
@as("AdMarkers") adMarkers: adMarkers
}
type harvestJob = {
@as("Status") status: status,
@as("StartTime") startTime: __string,
@as("S3Destination") s3Destination: s3Destination,
@as("OriginEndpointId") originEndpointId: __string,
@as("Id") id: __string,
@as("EndTime") endTime: __string,
@as("CreatedAt") createdAt: __string,
@as("ChannelId") channelId: __string,
@as("Arn") arn: __string
}
type __listOfHlsManifestCreateOrUpdateParameters = array<hlsManifestCreateOrUpdateParameters>
type __listOfHarvestJob = array<harvestJob>
type mssEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: option<spekeKeyProvider>
}
type hlsIngest = {
@as("IngestEndpoints") ingestEndpoints: __listOfIngestEndpoint
}
type hlsEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: option<spekeKeyProvider>,
@as("RepeatExtXKey") repeatExtXKey: __boolean,
@as("KeyRotationIntervalSeconds") keyRotationIntervalSeconds: __integer,
@as("EncryptionMethod") encryptionMethod: encryptionMethod,
@as("ConstantInitializationVector") constantInitializationVector: __string
}
type dashEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: option<spekeKeyProvider>,
@as("KeyRotationIntervalSeconds") keyRotationIntervalSeconds: __integer
}
type cmafEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: option<spekeKeyProvider>,
@as("KeyRotationIntervalSeconds") keyRotationIntervalSeconds: __integer,
@as("ConstantInitializationVector") constantInitializationVector: __string
}
type mssPackage = {
@as("StreamSelection") streamSelection: streamSelection,
@as("SegmentDurationSeconds") segmentDurationSeconds: __integer,
@as("ManifestWindowSeconds") manifestWindowSeconds: __integer,
@as("Encryption") encryption: mssEncryption
}
type hlsPackage = {
@as("UseAudioRenditionGroup") useAudioRenditionGroup: __boolean,
@as("StreamSelection") streamSelection: streamSelection,
@as("SegmentDurationSeconds") segmentDurationSeconds: __integer,
@as("ProgramDateTimeIntervalSeconds") programDateTimeIntervalSeconds: __integer,
@as("PlaylistWindowSeconds") playlistWindowSeconds: __integer,
@as("PlaylistType") playlistType: playlistType,
@as("IncludeIframeOnlyStream") includeIframeOnlyStream: __boolean,
@as("Encryption") encryption: hlsEncryption,
@as("AdsOnDeliveryRestrictions") adsOnDeliveryRestrictions: adsOnDeliveryRestrictions,
@as("AdTriggers") adTriggers: adTriggers,
@as("AdMarkers") adMarkers: adMarkers
}
type dashPackage = {
@as("UtcTimingUri") utcTimingUri: __string,
@as("UtcTiming") utcTiming: utcTiming,
@as("SuggestedPresentationDelaySeconds") suggestedPresentationDelaySeconds: __integer,
@as("StreamSelection") streamSelection: streamSelection,
@as("SegmentTemplateFormat") segmentTemplateFormat: segmentTemplateFormat,
@as("SegmentDurationSeconds") segmentDurationSeconds: __integer,
@as("Profile") profile: profile,
@as("PeriodTriggers") periodTriggers: __listOf__PeriodTriggersElement,
@as("MinUpdatePeriodSeconds") minUpdatePeriodSeconds: __integer,
@as("MinBufferTimeSeconds") minBufferTimeSeconds: __integer,
@as("ManifestWindowSeconds") manifestWindowSeconds: __integer,
@as("ManifestLayout") manifestLayout: manifestLayout,
@as("Encryption") encryption: dashEncryption,
@as("AdsOnDeliveryRestrictions") adsOnDeliveryRestrictions: adsOnDeliveryRestrictions,
@as("AdTriggers") adTriggers: adTriggers
}
type cmafPackageCreateOrUpdateParameters = {
@as("StreamSelection") streamSelection: streamSelection,
@as("SegmentPrefix") segmentPrefix: __string,
@as("SegmentDurationSeconds") segmentDurationSeconds: __integer,
@as("HlsManifests") hlsManifests: __listOfHlsManifestCreateOrUpdateParameters,
@as("Encryption") encryption: cmafEncryption
}
type cmafPackage = {
@as("StreamSelection") streamSelection: streamSelection,
@as("SegmentPrefix") segmentPrefix: __string,
@as("SegmentDurationSeconds") segmentDurationSeconds: __integer,
@as("HlsManifests") hlsManifests: __listOfHlsManifest,
@as("Encryption") encryption: cmafEncryption
}
type channel = {
@as("Tags") tags: tags,
@as("IngressAccessLogs") ingressAccessLogs: ingressAccessLogs,
@as("Id") id: __string,
@as("HlsIngest") hlsIngest: hlsIngest,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("Description") description: __string,
@as("Arn") arn: __string
}
type __listOfChannel = array<channel>
type originEndpoint = {
@as("Whitelist") whitelist: __listOf__string,
@as("Url") url: __string,
@as("TimeDelaySeconds") timeDelaySeconds: __integer,
@as("Tags") tags: tags,
@as("StartoverWindowSeconds") startoverWindowSeconds: __integer,
@as("Origination") origination: origination,
@as("MssPackage") mssPackage: mssPackage,
@as("ManifestName") manifestName: __string,
@as("Id") id: __string,
@as("HlsPackage") hlsPackage: hlsPackage,
@as("Description") description: __string,
@as("DashPackage") dashPackage: dashPackage,
@as("CmafPackage") cmafPackage: cmafPackage,
@as("ChannelId") channelId: __string,
@as("Authorization") authorization: authorization,
@as("Arn") arn: __string
}
type __listOfOriginEndpoint = array<originEndpoint>
type clientType;
@module("@aws-sdk/client-mediapackage") @new external createClient: unit => clientType = "MediaPackageClient";
module DeleteOriginEndpoint = {
  type t;
  type request = {
@as("Id") id: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "DeleteOriginEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteChannel = {
  type t;
  type request = {
@as("Id") id: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "DeleteChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<__listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<__mapOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
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
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHarvestJob = {
  type t;
  type request = {
@as("Id") id: option<__string>
}
  type response = {
@as("Status") status: status,
@as("StartTime") startTime: __string,
@as("S3Destination") s3Destination: s3Destination,
@as("OriginEndpointId") originEndpointId: __string,
@as("Id") id: __string,
@as("EndTime") endTime: __string,
@as("CreatedAt") createdAt: __string,
@as("ChannelId") channelId: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "DescribeHarvestJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHarvestJob = {
  type t;
  type request = {
@as("StartTime") startTime: option<__string>,
@as("S3Destination") s3Destination: option<s3Destination>,
@as("OriginEndpointId") originEndpointId: option<__string>,
@as("Id") id: option<__string>,
@as("EndTime") endTime: option<__string>
}
  type response = {
@as("Status") status: status,
@as("StartTime") startTime: __string,
@as("S3Destination") s3Destination: s3Destination,
@as("OriginEndpointId") originEndpointId: __string,
@as("Id") id: __string,
@as("EndTime") endTime: __string,
@as("CreatedAt") createdAt: __string,
@as("ChannelId") channelId: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "CreateHarvestJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateChannel = {
  type t;
  type request = {
@as("Id") id: option<__string>,
@as("Description") description: __string
}
  type response = {
@as("Tags") tags: tags,
@as("IngressAccessLogs") ingressAccessLogs: ingressAccessLogs,
@as("Id") id: __string,
@as("HlsIngest") hlsIngest: hlsIngest,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("Description") description: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "UpdateChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RotateIngestEndpointCredentials = {
  type t;
  type request = {
@as("IngestEndpointId") ingestEndpointId: option<__string>,
@as("Id") id: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("IngressAccessLogs") ingressAccessLogs: ingressAccessLogs,
@as("Id") id: __string,
@as("HlsIngest") hlsIngest: hlsIngest,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("Description") description: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "RotateIngestEndpointCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RotateChannelCredentials = {
  type t;
  type request = {
@as("Id") id: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("IngressAccessLogs") ingressAccessLogs: ingressAccessLogs,
@as("Id") id: __string,
@as("HlsIngest") hlsIngest: hlsIngest,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("Description") description: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "RotateChannelCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHarvestJobs = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("IncludeStatus") includeStatus: __string,
@as("IncludeChannelId") includeChannelId: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("HarvestJobs") harvestJobs: __listOfHarvestJob
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "ListHarvestJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChannel = {
  type t;
  type request = {
@as("Id") id: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("IngressAccessLogs") ingressAccessLogs: ingressAccessLogs,
@as("Id") id: __string,
@as("HlsIngest") hlsIngest: hlsIngest,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("Description") description: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "DescribeChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateChannel = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("Id") id: option<__string>,
@as("Description") description: __string
}
  type response = {
@as("Tags") tags: tags,
@as("IngressAccessLogs") ingressAccessLogs: ingressAccessLogs,
@as("Id") id: __string,
@as("HlsIngest") hlsIngest: hlsIngest,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("Description") description: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "CreateChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ConfigureLogs = {
  type t;
  type request = {
@as("IngressAccessLogs") ingressAccessLogs: ingressAccessLogs,
@as("Id") id: option<__string>,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs
}
  type response = {
@as("Tags") tags: tags,
@as("IngressAccessLogs") ingressAccessLogs: ingressAccessLogs,
@as("Id") id: __string,
@as("HlsIngest") hlsIngest: hlsIngest,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("Description") description: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "ConfigureLogsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateOriginEndpoint = {
  type t;
  type request = {
@as("Whitelist") whitelist: __listOf__string,
@as("TimeDelaySeconds") timeDelaySeconds: __integer,
@as("StartoverWindowSeconds") startoverWindowSeconds: __integer,
@as("Origination") origination: origination,
@as("MssPackage") mssPackage: mssPackage,
@as("ManifestName") manifestName: __string,
@as("Id") id: option<__string>,
@as("HlsPackage") hlsPackage: hlsPackage,
@as("Description") description: __string,
@as("DashPackage") dashPackage: dashPackage,
@as("CmafPackage") cmafPackage: cmafPackageCreateOrUpdateParameters,
@as("Authorization") authorization: authorization
}
  type response = {
@as("Whitelist") whitelist: __listOf__string,
@as("Url") url: __string,
@as("TimeDelaySeconds") timeDelaySeconds: __integer,
@as("Tags") tags: tags,
@as("StartoverWindowSeconds") startoverWindowSeconds: __integer,
@as("Origination") origination: origination,
@as("MssPackage") mssPackage: mssPackage,
@as("ManifestName") manifestName: __string,
@as("Id") id: __string,
@as("HlsPackage") hlsPackage: hlsPackage,
@as("Description") description: __string,
@as("DashPackage") dashPackage: dashPackage,
@as("CmafPackage") cmafPackage: cmafPackage,
@as("ChannelId") channelId: __string,
@as("Authorization") authorization: authorization,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "UpdateOriginEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOriginEndpoint = {
  type t;
  type request = {
@as("Id") id: option<__string>
}
  type response = {
@as("Whitelist") whitelist: __listOf__string,
@as("Url") url: __string,
@as("TimeDelaySeconds") timeDelaySeconds: __integer,
@as("Tags") tags: tags,
@as("StartoverWindowSeconds") startoverWindowSeconds: __integer,
@as("Origination") origination: origination,
@as("MssPackage") mssPackage: mssPackage,
@as("ManifestName") manifestName: __string,
@as("Id") id: __string,
@as("HlsPackage") hlsPackage: hlsPackage,
@as("Description") description: __string,
@as("DashPackage") dashPackage: dashPackage,
@as("CmafPackage") cmafPackage: cmafPackage,
@as("ChannelId") channelId: __string,
@as("Authorization") authorization: authorization,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "DescribeOriginEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateOriginEndpoint = {
  type t;
  type request = {
@as("Whitelist") whitelist: __listOf__string,
@as("TimeDelaySeconds") timeDelaySeconds: __integer,
@as("Tags") tags: tags,
@as("StartoverWindowSeconds") startoverWindowSeconds: __integer,
@as("Origination") origination: origination,
@as("MssPackage") mssPackage: mssPackage,
@as("ManifestName") manifestName: __string,
@as("Id") id: option<__string>,
@as("HlsPackage") hlsPackage: hlsPackage,
@as("Description") description: __string,
@as("DashPackage") dashPackage: dashPackage,
@as("CmafPackage") cmafPackage: cmafPackageCreateOrUpdateParameters,
@as("ChannelId") channelId: option<__string>,
@as("Authorization") authorization: authorization
}
  type response = {
@as("Whitelist") whitelist: __listOf__string,
@as("Url") url: __string,
@as("TimeDelaySeconds") timeDelaySeconds: __integer,
@as("Tags") tags: tags,
@as("StartoverWindowSeconds") startoverWindowSeconds: __integer,
@as("Origination") origination: origination,
@as("MssPackage") mssPackage: mssPackage,
@as("ManifestName") manifestName: __string,
@as("Id") id: __string,
@as("HlsPackage") hlsPackage: hlsPackage,
@as("Description") description: __string,
@as("DashPackage") dashPackage: dashPackage,
@as("CmafPackage") cmafPackage: cmafPackage,
@as("ChannelId") channelId: __string,
@as("Authorization") authorization: authorization,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "CreateOriginEndpointCommand";
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
@as("Channels") channels: __listOfChannel
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "ListChannelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOriginEndpoints = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("ChannelId") channelId: __string
}
  type response = {
@as("OriginEndpoints") originEndpoints: __listOfOriginEndpoint,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (Js.Promise.t<request>) => t = "ListOriginEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
