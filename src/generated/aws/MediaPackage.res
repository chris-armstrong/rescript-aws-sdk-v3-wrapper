type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type __string = string
type __integer = int
type __boolean = bool
type __PeriodTriggersElement = [@as("ADS") #ADS]
type __AdTriggersElement = [@as("DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY") #DISTRIBUTOROVERLAYPLACEMENTOPPORTUNITY | @as("PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY") #PROVIDEROVERLAYPLACEMENTOPPORTUNITY | @as("DISTRIBUTOR_PLACEMENT_OPPORTUNITY") #DISTRIBUTORPLACEMENTOPPORTUNITY | @as("PROVIDER_PLACEMENT_OPPORTUNITY") #PROVIDERPLACEMENTOPPORTUNITY | @as("DISTRIBUTOR_ADVERTISEMENT") #DISTRIBUTORADVERTISEMENT | @as("PROVIDER_ADVERTISEMENT") #PROVIDERADVERTISEMENT | @as("BREAK") #BREAK | @as("SPLICE_INSERT") #SPLICEINSERT]
type utcTiming = [@as("HTTP-ISO") #HTTPISO | @as("HTTP-HEAD") #HTTPHEAD | @as("NONE") #NONE]
type streamOrder = [@as("VIDEO_BITRATE_DESCENDING") #VIDEOBITRATEDESCENDING | @as("VIDEO_BITRATE_ASCENDING") #VIDEOBITRATEASCENDING | @as("ORIGINAL") #ORIGINAL]
type status = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #INPROGRESS]
type segmentTemplateFormat = [@as("NUMBER_WITH_DURATION") #NUMBERWITHDURATION | @as("TIME_WITH_TIMELINE") #TIMEWITHTIMELINE | @as("NUMBER_WITH_TIMELINE") #NUMBERWITHTIMELINE]
type profile = [@as("HBBTV_1_5") #HBBTV15 | @as("NONE") #NONE]
type presetSpeke20Video = [@as("PRESET-VIDEO-1") #PRESETVIDEO1]
type presetSpeke20Audio = [@as("PRESET-AUDIO-1") #PRESETAUDIO1]
type playlistType = [@as("VOD") #VOD | @as("EVENT") #EVENT | @as("NONE") #NONE]
type origination = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type maxResults = int
type manifestLayout = [@as("COMPACT") #COMPACT | @as("FULL") #FULL]
type encryptionMethod = [@as("SAMPLE_AES") #SAMPLEAES | @as("AES_128") #AES128]
type adsOnDeliveryRestrictions = [@as("BOTH") #BOTH | @as("UNRESTRICTED") #UNRESTRICTED | @as("RESTRICTED") #RESTRICTED | @as("NONE") #NONE]
type adMarkers = [@as("DATERANGE") #DATERANGE | @as("PASSTHROUGH") #PASSTHROUGH | @as("SCTE35_ENHANCED") #SCTE35ENHANCED | @as("NONE") #NONE]
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type __listOf__PeriodTriggersElement = array<__PeriodTriggersElement>
type tags = Js.Dict.t< __string>
type streamSelection = {
@as("StreamOrder") streamOrder: option<streamOrder>,
@as("MinVideoBitsPerSecond") minVideoBitsPerSecond: option<__integer>,
@as("MaxVideoBitsPerSecond") maxVideoBitsPerSecond: option<__integer>
}
type s3Destination = {
@as("RoleArn") roleArn: __string,
@as("ManifestKey") manifestKey: __string,
@as("BucketName") bucketName: __string
}
type ingressAccessLogs = {
@as("LogGroupName") logGroupName: option<__string>
}
type ingestEndpoint = {
@as("Username") username: option<__string>,
@as("Url") url: option<__string>,
@as("Password") password: option<__string>,
@as("Id") id: option<__string>
}
type hlsManifest = {
@as("Url") url: option<__string>,
@as("ProgramDateTimeIntervalSeconds") programDateTimeIntervalSeconds: option<__integer>,
@as("PlaylistWindowSeconds") playlistWindowSeconds: option<__integer>,
@as("PlaylistType") playlistType: option<playlistType>,
@as("ManifestName") manifestName: option<__string>,
@as("IncludeIframeOnlyStream") includeIframeOnlyStream: option<__boolean>,
@as("Id") id: __string,
@as("AdMarkers") adMarkers: option<adMarkers>
}
type encryptionContractConfiguration = {
@as("PresetSpeke20Video") presetSpeke20Video: presetSpeke20Video,
@as("PresetSpeke20Audio") presetSpeke20Audio: presetSpeke20Audio
}
type egressAccessLogs = {
@as("LogGroupName") logGroupName: option<__string>
}
type authorization = {
@as("SecretsRoleArn") secretsRoleArn: __string,
@as("CdnIdentifierSecret") cdnIdentifierSecret: __string
}
type adTriggers = array<__AdTriggersElement>
type __listOfIngestEndpoint = array<ingestEndpoint>
type __listOfHlsManifest = array<hlsManifest>
type spekeKeyProvider = {
@as("Url") url: __string,
@as("SystemIds") systemIds: __listOf__string,
@as("RoleArn") roleArn: __string,
@as("ResourceId") resourceId: __string,
@as("EncryptionContractConfiguration") encryptionContractConfiguration: option<encryptionContractConfiguration>,
@as("CertificateArn") certificateArn: option<__string>
}
type hlsManifestCreateOrUpdateParameters = {
@as("ProgramDateTimeIntervalSeconds") programDateTimeIntervalSeconds: option<__integer>,
@as("PlaylistWindowSeconds") playlistWindowSeconds: option<__integer>,
@as("PlaylistType") playlistType: option<playlistType>,
@as("ManifestName") manifestName: option<__string>,
@as("IncludeIframeOnlyStream") includeIframeOnlyStream: option<__boolean>,
@as("Id") id: __string,
@as("AdsOnDeliveryRestrictions") adsOnDeliveryRestrictions: option<adsOnDeliveryRestrictions>,
@as("AdTriggers") adTriggers: option<adTriggers>,
@as("AdMarkers") adMarkers: option<adMarkers>
}
type harvestJob = {
@as("Status") status: option<status>,
@as("StartTime") startTime: option<__string>,
@as("S3Destination") s3Destination: option<s3Destination>,
@as("OriginEndpointId") originEndpointId: option<__string>,
@as("Id") id: option<__string>,
@as("EndTime") endTime: option<__string>,
@as("CreatedAt") createdAt: option<__string>,
@as("ChannelId") channelId: option<__string>,
@as("Arn") arn: option<__string>
}
type __listOfHlsManifestCreateOrUpdateParameters = array<hlsManifestCreateOrUpdateParameters>
type __listOfHarvestJob = array<harvestJob>
type mssEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider
}
type hlsIngest = {
@as("IngestEndpoints") ingestEndpoints: option<__listOfIngestEndpoint>
}
type hlsEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider,
@as("RepeatExtXKey") repeatExtXKey: option<__boolean>,
@as("KeyRotationIntervalSeconds") keyRotationIntervalSeconds: option<__integer>,
@as("EncryptionMethod") encryptionMethod: option<encryptionMethod>,
@as("ConstantInitializationVector") constantInitializationVector: option<__string>
}
type dashEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider,
@as("KeyRotationIntervalSeconds") keyRotationIntervalSeconds: option<__integer>
}
type cmafEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider,
@as("KeyRotationIntervalSeconds") keyRotationIntervalSeconds: option<__integer>,
@as("ConstantInitializationVector") constantInitializationVector: option<__string>
}
type mssPackage = {
@as("StreamSelection") streamSelection: option<streamSelection>,
@as("SegmentDurationSeconds") segmentDurationSeconds: option<__integer>,
@as("ManifestWindowSeconds") manifestWindowSeconds: option<__integer>,
@as("Encryption") encryption: option<mssEncryption>
}
type hlsPackage = {
@as("UseAudioRenditionGroup") useAudioRenditionGroup: option<__boolean>,
@as("StreamSelection") streamSelection: option<streamSelection>,
@as("SegmentDurationSeconds") segmentDurationSeconds: option<__integer>,
@as("ProgramDateTimeIntervalSeconds") programDateTimeIntervalSeconds: option<__integer>,
@as("PlaylistWindowSeconds") playlistWindowSeconds: option<__integer>,
@as("PlaylistType") playlistType: option<playlistType>,
@as("IncludeIframeOnlyStream") includeIframeOnlyStream: option<__boolean>,
@as("Encryption") encryption: option<hlsEncryption>,
@as("AdsOnDeliveryRestrictions") adsOnDeliveryRestrictions: option<adsOnDeliveryRestrictions>,
@as("AdTriggers") adTriggers: option<adTriggers>,
@as("AdMarkers") adMarkers: option<adMarkers>
}
type dashPackage = {
@as("UtcTimingUri") utcTimingUri: option<__string>,
@as("UtcTiming") utcTiming: option<utcTiming>,
@as("SuggestedPresentationDelaySeconds") suggestedPresentationDelaySeconds: option<__integer>,
@as("StreamSelection") streamSelection: option<streamSelection>,
@as("SegmentTemplateFormat") segmentTemplateFormat: option<segmentTemplateFormat>,
@as("SegmentDurationSeconds") segmentDurationSeconds: option<__integer>,
@as("Profile") profile: option<profile>,
@as("PeriodTriggers") periodTriggers: option<__listOf__PeriodTriggersElement>,
@as("MinUpdatePeriodSeconds") minUpdatePeriodSeconds: option<__integer>,
@as("MinBufferTimeSeconds") minBufferTimeSeconds: option<__integer>,
@as("ManifestWindowSeconds") manifestWindowSeconds: option<__integer>,
@as("ManifestLayout") manifestLayout: option<manifestLayout>,
@as("Encryption") encryption: option<dashEncryption>,
@as("AdsOnDeliveryRestrictions") adsOnDeliveryRestrictions: option<adsOnDeliveryRestrictions>,
@as("AdTriggers") adTriggers: option<adTriggers>
}
type cmafPackageCreateOrUpdateParameters = {
@as("StreamSelection") streamSelection: option<streamSelection>,
@as("SegmentPrefix") segmentPrefix: option<__string>,
@as("SegmentDurationSeconds") segmentDurationSeconds: option<__integer>,
@as("HlsManifests") hlsManifests: option<__listOfHlsManifestCreateOrUpdateParameters>,
@as("Encryption") encryption: option<cmafEncryption>
}
type cmafPackage = {
@as("StreamSelection") streamSelection: option<streamSelection>,
@as("SegmentPrefix") segmentPrefix: option<__string>,
@as("SegmentDurationSeconds") segmentDurationSeconds: option<__integer>,
@as("HlsManifests") hlsManifests: option<__listOfHlsManifest>,
@as("Encryption") encryption: option<cmafEncryption>
}
type channel = {
@as("Tags") tags: option<tags>,
@as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
@as("Id") id: option<__string>,
@as("HlsIngest") hlsIngest: option<hlsIngest>,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("Description") description: option<__string>,
@as("Arn") arn: option<__string>
}
type __listOfChannel = array<channel>
type originEndpoint = {
@as("Whitelist") whitelist: option<__listOf__string>,
@as("Url") url: option<__string>,
@as("TimeDelaySeconds") timeDelaySeconds: option<__integer>,
@as("Tags") tags: option<tags>,
@as("StartoverWindowSeconds") startoverWindowSeconds: option<__integer>,
@as("Origination") origination: option<origination>,
@as("MssPackage") mssPackage: option<mssPackage>,
@as("ManifestName") manifestName: option<__string>,
@as("Id") id: option<__string>,
@as("HlsPackage") hlsPackage: option<hlsPackage>,
@as("Description") description: option<__string>,
@as("DashPackage") dashPackage: option<dashPackage>,
@as("CmafPackage") cmafPackage: option<cmafPackage>,
@as("ChannelId") channelId: option<__string>,
@as("Authorization") authorization: option<authorization>,
@as("Arn") arn: option<__string>
}
type __listOfOriginEndpoint = array<originEndpoint>
type awsServiceClient;
@module("@aws-sdk/client-mediapackage") @new external createClient: unit => awsServiceClient = "MediaPackageClient";
module DeleteOriginEndpoint = {
  type t;
  type request = {
@as("Id") id: __string
}
  type response = unit
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "DeleteOriginEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteChannel = {
  type t;
  type request = {
@as("Id") id: __string
}
  type response = unit
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "DeleteChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: __listOf__string,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: __mapOf__string,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "TagResourceCommand";
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
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeHarvestJob = {
  type t;
  type request = {
@as("Id") id: __string
}
  type response = {
@as("Status") status: option<status>,
@as("StartTime") startTime: option<__string>,
@as("S3Destination") s3Destination: option<s3Destination>,
@as("OriginEndpointId") originEndpointId: option<__string>,
@as("Id") id: option<__string>,
@as("EndTime") endTime: option<__string>,
@as("CreatedAt") createdAt: option<__string>,
@as("ChannelId") channelId: option<__string>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "DescribeHarvestJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateHarvestJob = {
  type t;
  type request = {
@as("StartTime") startTime: __string,
@as("S3Destination") s3Destination: s3Destination,
@as("OriginEndpointId") originEndpointId: __string,
@as("Id") id: __string,
@as("EndTime") endTime: __string
}
  type response = {
@as("Status") status: option<status>,
@as("StartTime") startTime: option<__string>,
@as("S3Destination") s3Destination: option<s3Destination>,
@as("OriginEndpointId") originEndpointId: option<__string>,
@as("Id") id: option<__string>,
@as("EndTime") endTime: option<__string>,
@as("CreatedAt") createdAt: option<__string>,
@as("ChannelId") channelId: option<__string>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "CreateHarvestJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateChannel = {
  type t;
  type request = {
@as("Id") id: __string,
@as("Description") description: option<__string>
}
  type response = {
@as("Tags") tags: option<tags>,
@as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
@as("Id") id: option<__string>,
@as("HlsIngest") hlsIngest: option<hlsIngest>,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("Description") description: option<__string>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "UpdateChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RotateIngestEndpointCredentials = {
  type t;
  type request = {
@as("IngestEndpointId") ingestEndpointId: __string,
@as("Id") id: __string
}
  type response = {
@as("Tags") tags: option<tags>,
@as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
@as("Id") id: option<__string>,
@as("HlsIngest") hlsIngest: option<hlsIngest>,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("Description") description: option<__string>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "RotateIngestEndpointCredentialsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RotateChannelCredentials = {
  type t;
  type request = {
@as("Id") id: __string
}
  type response = {
@as("Tags") tags: option<tags>,
@as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
@as("Id") id: option<__string>,
@as("HlsIngest") hlsIngest: option<hlsIngest>,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("Description") description: option<__string>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "RotateChannelCredentialsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListHarvestJobs = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("IncludeStatus") includeStatus: option<__string>,
@as("IncludeChannelId") includeChannelId: option<__string>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("HarvestJobs") harvestJobs: option<__listOfHarvestJob>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "ListHarvestJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeChannel = {
  type t;
  type request = {
@as("Id") id: __string
}
  type response = {
@as("Tags") tags: option<tags>,
@as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
@as("Id") id: option<__string>,
@as("HlsIngest") hlsIngest: option<hlsIngest>,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("Description") description: option<__string>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "DescribeChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateChannel = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("Id") id: __string,
@as("Description") description: option<__string>
}
  type response = {
@as("Tags") tags: option<tags>,
@as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
@as("Id") id: option<__string>,
@as("HlsIngest") hlsIngest: option<hlsIngest>,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("Description") description: option<__string>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "CreateChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ConfigureLogs = {
  type t;
  type request = {
@as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
@as("Id") id: __string,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>
}
  type response = {
@as("Tags") tags: option<tags>,
@as("IngressAccessLogs") ingressAccessLogs: option<ingressAccessLogs>,
@as("Id") id: option<__string>,
@as("HlsIngest") hlsIngest: option<hlsIngest>,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("Description") description: option<__string>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "ConfigureLogsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateOriginEndpoint = {
  type t;
  type request = {
@as("Whitelist") whitelist: option<__listOf__string>,
@as("TimeDelaySeconds") timeDelaySeconds: option<__integer>,
@as("StartoverWindowSeconds") startoverWindowSeconds: option<__integer>,
@as("Origination") origination: option<origination>,
@as("MssPackage") mssPackage: option<mssPackage>,
@as("ManifestName") manifestName: option<__string>,
@as("Id") id: __string,
@as("HlsPackage") hlsPackage: option<hlsPackage>,
@as("Description") description: option<__string>,
@as("DashPackage") dashPackage: option<dashPackage>,
@as("CmafPackage") cmafPackage: option<cmafPackageCreateOrUpdateParameters>,
@as("Authorization") authorization: option<authorization>
}
  type response = {
@as("Whitelist") whitelist: option<__listOf__string>,
@as("Url") url: option<__string>,
@as("TimeDelaySeconds") timeDelaySeconds: option<__integer>,
@as("Tags") tags: option<tags>,
@as("StartoverWindowSeconds") startoverWindowSeconds: option<__integer>,
@as("Origination") origination: option<origination>,
@as("MssPackage") mssPackage: option<mssPackage>,
@as("ManifestName") manifestName: option<__string>,
@as("Id") id: option<__string>,
@as("HlsPackage") hlsPackage: option<hlsPackage>,
@as("Description") description: option<__string>,
@as("DashPackage") dashPackage: option<dashPackage>,
@as("CmafPackage") cmafPackage: option<cmafPackage>,
@as("ChannelId") channelId: option<__string>,
@as("Authorization") authorization: option<authorization>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "UpdateOriginEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeOriginEndpoint = {
  type t;
  type request = {
@as("Id") id: __string
}
  type response = {
@as("Whitelist") whitelist: option<__listOf__string>,
@as("Url") url: option<__string>,
@as("TimeDelaySeconds") timeDelaySeconds: option<__integer>,
@as("Tags") tags: option<tags>,
@as("StartoverWindowSeconds") startoverWindowSeconds: option<__integer>,
@as("Origination") origination: option<origination>,
@as("MssPackage") mssPackage: option<mssPackage>,
@as("ManifestName") manifestName: option<__string>,
@as("Id") id: option<__string>,
@as("HlsPackage") hlsPackage: option<hlsPackage>,
@as("Description") description: option<__string>,
@as("DashPackage") dashPackage: option<dashPackage>,
@as("CmafPackage") cmafPackage: option<cmafPackage>,
@as("ChannelId") channelId: option<__string>,
@as("Authorization") authorization: option<authorization>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "DescribeOriginEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateOriginEndpoint = {
  type t;
  type request = {
@as("Whitelist") whitelist: option<__listOf__string>,
@as("TimeDelaySeconds") timeDelaySeconds: option<__integer>,
@as("Tags") tags: option<tags>,
@as("StartoverWindowSeconds") startoverWindowSeconds: option<__integer>,
@as("Origination") origination: option<origination>,
@as("MssPackage") mssPackage: option<mssPackage>,
@as("ManifestName") manifestName: option<__string>,
@as("Id") id: __string,
@as("HlsPackage") hlsPackage: option<hlsPackage>,
@as("Description") description: option<__string>,
@as("DashPackage") dashPackage: option<dashPackage>,
@as("CmafPackage") cmafPackage: option<cmafPackageCreateOrUpdateParameters>,
@as("ChannelId") channelId: __string,
@as("Authorization") authorization: option<authorization>
}
  type response = {
@as("Whitelist") whitelist: option<__listOf__string>,
@as("Url") url: option<__string>,
@as("TimeDelaySeconds") timeDelaySeconds: option<__integer>,
@as("Tags") tags: option<tags>,
@as("StartoverWindowSeconds") startoverWindowSeconds: option<__integer>,
@as("Origination") origination: option<origination>,
@as("MssPackage") mssPackage: option<mssPackage>,
@as("ManifestName") manifestName: option<__string>,
@as("Id") id: option<__string>,
@as("HlsPackage") hlsPackage: option<hlsPackage>,
@as("Description") description: option<__string>,
@as("DashPackage") dashPackage: option<dashPackage>,
@as("CmafPackage") cmafPackage: option<cmafPackage>,
@as("ChannelId") channelId: option<__string>,
@as("Authorization") authorization: option<authorization>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "CreateOriginEndpointCommand";
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
@as("Channels") channels: option<__listOfChannel>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "ListChannelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOriginEndpoints = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ChannelId") channelId: option<__string>
}
  type response = {
@as("OriginEndpoints") originEndpoints: option<__listOfOriginEndpoint>,
@as("NextToken") nextToken: option<__string>
}
  @module("@aws-sdk/client-mediapackage") @new external new_: (request) => t = "ListOriginEndpointsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
