type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __string = string
type __integer = int;
type __boolean = bool;
type __PeriodTriggersElement = [@as("ADS") #ADS]
type streamOrder = [@as("VIDEO_BITRATE_DESCENDING") #VIDEO_BITRATE_DESCENDING | @as("VIDEO_BITRATE_ASCENDING") #VIDEO_BITRATE_ASCENDING | @as("ORIGINAL") #ORIGINAL]
type segmentTemplateFormat = [@as("NUMBER_WITH_DURATION") #NUMBER_WITH_DURATION | @as("TIME_WITH_TIMELINE") #TIME_WITH_TIMELINE | @as("NUMBER_WITH_TIMELINE") #NUMBER_WITH_TIMELINE]
type profile = [@as("HBBTV_1_5") #HBBTV_1_5 | @as("NONE") #NONE]
type maxResults = int;
type manifestLayout = [@as("COMPACT") #COMPACT | @as("FULL") #FULL]
type encryptionMethod = [@as("SAMPLE_AES") #SAMPLE_AES | @as("AES_128") #AES_128]
type adMarkers = [@as("PASSTHROUGH") #PASSTHROUGH | @as("SCTE35_ENHANCED") #SCTE35_ENHANCED | @as("NONE") #NONE]
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type __listOf__PeriodTriggersElement = array<__PeriodTriggersElement>
type tags = Js.Dict.t< __string>
type streamSelection = {
@as("StreamOrder") streamOrder: streamOrder,
@as("MinVideoBitsPerSecond") minVideoBitsPerSecond: __integer,
@as("MaxVideoBitsPerSecond") maxVideoBitsPerSecond: __integer
}
type egressEndpoint = {
@as("Url") url: __string,
@as("PackagingConfigurationId") packagingConfigurationId: __string
}
type egressAccessLogs = {
@as("LogGroupName") logGroupName: __string
}
type authorization = {
@as("SecretsRoleArn") secretsRoleArn: option<__string>,
@as("CdnIdentifierSecret") cdnIdentifierSecret: option<__string>
}
type __listOfEgressEndpoint = array<egressEndpoint>
type spekeKeyProvider = {
@as("Url") url: option<__string>,
@as("SystemIds") systemIds: option<__listOf__string>,
@as("RoleArn") roleArn: option<__string>
}
type packagingGroup = {
@as("Tags") tags: tags,
@as("Id") id: __string,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("DomainName") domainName: __string,
@as("Authorization") authorization: authorization,
@as("Arn") arn: __string
}
type mssManifest = {
@as("StreamSelection") streamSelection: streamSelection,
@as("ManifestName") manifestName: __string
}
type hlsManifest = {
@as("StreamSelection") streamSelection: streamSelection,
@as("RepeatExtXKey") repeatExtXKey: __boolean,
@as("ProgramDateTimeIntervalSeconds") programDateTimeIntervalSeconds: __integer,
@as("ManifestName") manifestName: __string,
@as("IncludeIframeOnlyStream") includeIframeOnlyStream: __boolean,
@as("AdMarkers") adMarkers: adMarkers
}
type dashManifest = {
@as("StreamSelection") streamSelection: streamSelection,
@as("Profile") profile: profile,
@as("MinBufferTimeSeconds") minBufferTimeSeconds: __integer,
@as("ManifestName") manifestName: __string,
@as("ManifestLayout") manifestLayout: manifestLayout
}
type assetShallow = {
@as("Tags") tags: tags,
@as("SourceRoleArn") sourceRoleArn: __string,
@as("SourceArn") sourceArn: __string,
@as("ResourceId") resourceId: __string,
@as("PackagingGroupId") packagingGroupId: __string,
@as("Id") id: __string,
@as("CreatedAt") createdAt: __string,
@as("Arn") arn: __string
}
type __listOfPackagingGroup = array<packagingGroup>
type __listOfMssManifest = array<mssManifest>
type __listOfHlsManifest = array<hlsManifest>
type __listOfDashManifest = array<dashManifest>
type __listOfAssetShallow = array<assetShallow>
type mssEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: option<spekeKeyProvider>
}
type hlsEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: option<spekeKeyProvider>,
@as("EncryptionMethod") encryptionMethod: encryptionMethod,
@as("ConstantInitializationVector") constantInitializationVector: __string
}
type dashEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: option<spekeKeyProvider>
}
type cmafEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: option<spekeKeyProvider>
}
type mssPackage = {
@as("SegmentDurationSeconds") segmentDurationSeconds: __integer,
@as("MssManifests") mssManifests: option<__listOfMssManifest>,
@as("Encryption") encryption: mssEncryption
}
type hlsPackage = {
@as("UseAudioRenditionGroup") useAudioRenditionGroup: __boolean,
@as("SegmentDurationSeconds") segmentDurationSeconds: __integer,
@as("HlsManifests") hlsManifests: option<__listOfHlsManifest>,
@as("Encryption") encryption: hlsEncryption
}
type dashPackage = {
@as("SegmentTemplateFormat") segmentTemplateFormat: segmentTemplateFormat,
@as("SegmentDurationSeconds") segmentDurationSeconds: __integer,
@as("PeriodTriggers") periodTriggers: __listOf__PeriodTriggersElement,
@as("IncludeEncoderConfigurationInSegments") includeEncoderConfigurationInSegments: __boolean,
@as("Encryption") encryption: dashEncryption,
@as("DashManifests") dashManifests: option<__listOfDashManifest>
}
type cmafPackage = {
@as("SegmentDurationSeconds") segmentDurationSeconds: __integer,
@as("IncludeEncoderConfigurationInSegments") includeEncoderConfigurationInSegments: __boolean,
@as("HlsManifests") hlsManifests: option<__listOfHlsManifest>,
@as("Encryption") encryption: cmafEncryption
}
type packagingConfiguration = {
@as("Tags") tags: tags,
@as("PackagingGroupId") packagingGroupId: __string,
@as("MssPackage") mssPackage: mssPackage,
@as("Id") id: __string,
@as("HlsPackage") hlsPackage: hlsPackage,
@as("DashPackage") dashPackage: dashPackage,
@as("CmafPackage") cmafPackage: cmafPackage,
@as("Arn") arn: __string
}
type __listOfPackagingConfiguration = array<packagingConfiguration>
type clientType;
@module("@aws-sdk/client-mediapackage-vod") @new external createClient: unit => clientType = "MediaPackageVodClient";
module DeletePackagingGroup = {
  type t;
  type request = {
@as("Id") id: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "DeletePackagingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePackagingConfiguration = {
  type t;
  type request = {
@as("Id") id: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "DeletePackagingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAsset = {
  type t;
  type request = {
@as("Id") id: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "DeleteAssetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePackagingGroup = {
  type t;
  type request = {
@as("Id") id: option<__string>,
@as("Authorization") authorization: authorization
}
  type response = {
@as("Tags") tags: tags,
@as("Id") id: __string,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("DomainName") domainName: __string,
@as("Authorization") authorization: authorization,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "UpdatePackagingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<__listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<__mapOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "TagResourceCommand";
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
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePackagingGroup = {
  type t;
  type request = {
@as("Id") id: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("Id") id: __string,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("DomainName") domainName: __string,
@as("Authorization") authorization: authorization,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "DescribePackagingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePackagingGroup = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("Id") id: option<__string>,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("Authorization") authorization: authorization
}
  type response = {
@as("Tags") tags: tags,
@as("Id") id: __string,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("DomainName") domainName: __string,
@as("Authorization") authorization: authorization,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "CreatePackagingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ConfigureLogs = {
  type t;
  type request = {
@as("Id") id: option<__string>,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs
}
  type response = {
@as("Tags") tags: tags,
@as("Id") id: __string,
@as("EgressAccessLogs") egressAccessLogs: egressAccessLogs,
@as("DomainName") domainName: __string,
@as("Authorization") authorization: authorization,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "ConfigureLogsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAsset = {
  type t;
  type request = {
@as("Id") id: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("SourceRoleArn") sourceRoleArn: __string,
@as("SourceArn") sourceArn: __string,
@as("ResourceId") resourceId: __string,
@as("PackagingGroupId") packagingGroupId: __string,
@as("Id") id: __string,
@as("EgressEndpoints") egressEndpoints: __listOfEgressEndpoint,
@as("CreatedAt") createdAt: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "DescribeAssetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAsset = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("SourceRoleArn") sourceRoleArn: option<__string>,
@as("SourceArn") sourceArn: option<__string>,
@as("ResourceId") resourceId: __string,
@as("PackagingGroupId") packagingGroupId: option<__string>,
@as("Id") id: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("SourceRoleArn") sourceRoleArn: __string,
@as("SourceArn") sourceArn: __string,
@as("ResourceId") resourceId: __string,
@as("PackagingGroupId") packagingGroupId: __string,
@as("Id") id: __string,
@as("EgressEndpoints") egressEndpoints: __listOfEgressEndpoint,
@as("CreatedAt") createdAt: __string,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "CreateAssetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPackagingGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("PackagingGroups") packagingGroups: __listOfPackagingGroup,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "ListPackagingGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssets = {
  type t;
  type request = {
@as("PackagingGroupId") packagingGroupId: __string,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Assets") assets: __listOfAssetShallow
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "ListAssetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePackagingConfiguration = {
  type t;
  type request = {
@as("Id") id: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("PackagingGroupId") packagingGroupId: __string,
@as("MssPackage") mssPackage: mssPackage,
@as("Id") id: __string,
@as("HlsPackage") hlsPackage: hlsPackage,
@as("DashPackage") dashPackage: dashPackage,
@as("CmafPackage") cmafPackage: cmafPackage,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "DescribePackagingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePackagingConfiguration = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("PackagingGroupId") packagingGroupId: option<__string>,
@as("MssPackage") mssPackage: mssPackage,
@as("Id") id: option<__string>,
@as("HlsPackage") hlsPackage: hlsPackage,
@as("DashPackage") dashPackage: dashPackage,
@as("CmafPackage") cmafPackage: cmafPackage
}
  type response = {
@as("Tags") tags: tags,
@as("PackagingGroupId") packagingGroupId: __string,
@as("MssPackage") mssPackage: mssPackage,
@as("Id") id: __string,
@as("HlsPackage") hlsPackage: hlsPackage,
@as("DashPackage") dashPackage: dashPackage,
@as("CmafPackage") cmafPackage: cmafPackage,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "CreatePackagingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPackagingConfigurations = {
  type t;
  type request = {
@as("PackagingGroupId") packagingGroupId: __string,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("PackagingConfigurations") packagingConfigurations: __listOfPackagingConfiguration,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "ListPackagingConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
