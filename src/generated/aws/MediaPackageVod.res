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
type streamOrder = [@as("VIDEO_BITRATE_DESCENDING") #VIDEOBITRATEDESCENDING | @as("VIDEO_BITRATE_ASCENDING") #VIDEOBITRATEASCENDING | @as("ORIGINAL") #ORIGINAL]
type segmentTemplateFormat = [@as("NUMBER_WITH_DURATION") #NUMBERWITHDURATION | @as("TIME_WITH_TIMELINE") #TIMEWITHTIMELINE | @as("NUMBER_WITH_TIMELINE") #NUMBERWITHTIMELINE]
type profile = [@as("HBBTV_1_5") #HBBTV15 | @as("NONE") #NONE]
type maxResults = int
type manifestLayout = [@as("COMPACT") #COMPACT | @as("FULL") #FULL]
type encryptionMethod = [@as("SAMPLE_AES") #SAMPLEAES | @as("AES_128") #AES128]
type adMarkers = [@as("PASSTHROUGH") #PASSTHROUGH | @as("SCTE35_ENHANCED") #SCTE35ENHANCED | @as("NONE") #NONE]
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type __listOf__PeriodTriggersElement = array<__PeriodTriggersElement>
type tags = Js.Dict.t< __string>
type streamSelection = {
@as("StreamOrder") streamOrder: option<streamOrder>,
@as("MinVideoBitsPerSecond") minVideoBitsPerSecond: option<__integer>,
@as("MaxVideoBitsPerSecond") maxVideoBitsPerSecond: option<__integer>
}
type egressEndpoint = {
@as("Url") url: option<__string>,
@as("PackagingConfigurationId") packagingConfigurationId: option<__string>
}
type egressAccessLogs = {
@as("LogGroupName") logGroupName: option<__string>
}
type authorization = {
@as("SecretsRoleArn") secretsRoleArn: __string,
@as("CdnIdentifierSecret") cdnIdentifierSecret: __string
}
type __listOfEgressEndpoint = array<egressEndpoint>
type spekeKeyProvider = {
@as("Url") url: __string,
@as("SystemIds") systemIds: __listOf__string,
@as("RoleArn") roleArn: __string
}
type packagingGroup = {
@as("Tags") tags: option<tags>,
@as("Id") id: option<__string>,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("DomainName") domainName: option<__string>,
@as("Authorization") authorization: option<authorization>,
@as("Arn") arn: option<__string>
}
type mssManifest = {
@as("StreamSelection") streamSelection: option<streamSelection>,
@as("ManifestName") manifestName: option<__string>
}
type hlsManifest = {
@as("StreamSelection") streamSelection: option<streamSelection>,
@as("RepeatExtXKey") repeatExtXKey: option<__boolean>,
@as("ProgramDateTimeIntervalSeconds") programDateTimeIntervalSeconds: option<__integer>,
@as("ManifestName") manifestName: option<__string>,
@as("IncludeIframeOnlyStream") includeIframeOnlyStream: option<__boolean>,
@as("AdMarkers") adMarkers: option<adMarkers>
}
type dashManifest = {
@as("StreamSelection") streamSelection: option<streamSelection>,
@as("Profile") profile: option<profile>,
@as("MinBufferTimeSeconds") minBufferTimeSeconds: option<__integer>,
@as("ManifestName") manifestName: option<__string>,
@as("ManifestLayout") manifestLayout: option<manifestLayout>
}
type assetShallow = {
@as("Tags") tags: option<tags>,
@as("SourceRoleArn") sourceRoleArn: option<__string>,
@as("SourceArn") sourceArn: option<__string>,
@as("ResourceId") resourceId: option<__string>,
@as("PackagingGroupId") packagingGroupId: option<__string>,
@as("Id") id: option<__string>,
@as("CreatedAt") createdAt: option<__string>,
@as("Arn") arn: option<__string>
}
type __listOfPackagingGroup = array<packagingGroup>
type __listOfMssManifest = array<mssManifest>
type __listOfHlsManifest = array<hlsManifest>
type __listOfDashManifest = array<dashManifest>
type __listOfAssetShallow = array<assetShallow>
type mssEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider
}
type hlsEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider,
@as("EncryptionMethod") encryptionMethod: option<encryptionMethod>,
@as("ConstantInitializationVector") constantInitializationVector: option<__string>
}
type dashEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider
}
type cmafEncryption = {
@as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider
}
type mssPackage = {
@as("SegmentDurationSeconds") segmentDurationSeconds: option<__integer>,
@as("MssManifests") mssManifests: __listOfMssManifest,
@as("Encryption") encryption: option<mssEncryption>
}
type hlsPackage = {
@as("UseAudioRenditionGroup") useAudioRenditionGroup: option<__boolean>,
@as("SegmentDurationSeconds") segmentDurationSeconds: option<__integer>,
@as("HlsManifests") hlsManifests: __listOfHlsManifest,
@as("Encryption") encryption: option<hlsEncryption>
}
type dashPackage = {
@as("SegmentTemplateFormat") segmentTemplateFormat: option<segmentTemplateFormat>,
@as("SegmentDurationSeconds") segmentDurationSeconds: option<__integer>,
@as("PeriodTriggers") periodTriggers: option<__listOf__PeriodTriggersElement>,
@as("IncludeEncoderConfigurationInSegments") includeEncoderConfigurationInSegments: option<__boolean>,
@as("Encryption") encryption: option<dashEncryption>,
@as("DashManifests") dashManifests: __listOfDashManifest
}
type cmafPackage = {
@as("SegmentDurationSeconds") segmentDurationSeconds: option<__integer>,
@as("IncludeEncoderConfigurationInSegments") includeEncoderConfigurationInSegments: option<__boolean>,
@as("HlsManifests") hlsManifests: __listOfHlsManifest,
@as("Encryption") encryption: option<cmafEncryption>
}
type packagingConfiguration = {
@as("Tags") tags: option<tags>,
@as("PackagingGroupId") packagingGroupId: option<__string>,
@as("MssPackage") mssPackage: option<mssPackage>,
@as("Id") id: option<__string>,
@as("HlsPackage") hlsPackage: option<hlsPackage>,
@as("DashPackage") dashPackage: option<dashPackage>,
@as("CmafPackage") cmafPackage: option<cmafPackage>,
@as("Arn") arn: option<__string>
}
type __listOfPackagingConfiguration = array<packagingConfiguration>
type awsServiceClient;
@module("@aws-sdk/client-mediapackage-vod") @new external createClient: unit => awsServiceClient = "MediaPackageVodClient";
module DeletePackagingGroup = {
  type t;
  type request = {
@as("Id") id: __string
}
  type response = unit
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "DeletePackagingGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePackagingConfiguration = {
  type t;
  type request = {
@as("Id") id: __string
}
  type response = unit
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "DeletePackagingConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAsset = {
  type t;
  type request = {
@as("Id") id: __string
}
  type response = unit
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "DeleteAssetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePackagingGroup = {
  type t;
  type request = {
@as("Id") id: __string,
@as("Authorization") authorization: option<authorization>
}
  type response = {
@as("Tags") tags: option<tags>,
@as("Id") id: option<__string>,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("DomainName") domainName: option<__string>,
@as("Authorization") authorization: option<authorization>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "UpdatePackagingGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: __listOf__string,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: __mapOf__string,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "TagResourceCommand";
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
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePackagingGroup = {
  type t;
  type request = {
@as("Id") id: __string
}
  type response = {
@as("Tags") tags: option<tags>,
@as("Id") id: option<__string>,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("DomainName") domainName: option<__string>,
@as("Authorization") authorization: option<authorization>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "DescribePackagingGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePackagingGroup = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("Id") id: __string,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("Authorization") authorization: option<authorization>
}
  type response = {
@as("Tags") tags: option<tags>,
@as("Id") id: option<__string>,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("DomainName") domainName: option<__string>,
@as("Authorization") authorization: option<authorization>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "CreatePackagingGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ConfigureLogs = {
  type t;
  type request = {
@as("Id") id: __string,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>
}
  type response = {
@as("Tags") tags: option<tags>,
@as("Id") id: option<__string>,
@as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
@as("DomainName") domainName: option<__string>,
@as("Authorization") authorization: option<authorization>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "ConfigureLogsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAsset = {
  type t;
  type request = {
@as("Id") id: __string
}
  type response = {
@as("Tags") tags: option<tags>,
@as("SourceRoleArn") sourceRoleArn: option<__string>,
@as("SourceArn") sourceArn: option<__string>,
@as("ResourceId") resourceId: option<__string>,
@as("PackagingGroupId") packagingGroupId: option<__string>,
@as("Id") id: option<__string>,
@as("EgressEndpoints") egressEndpoints: option<__listOfEgressEndpoint>,
@as("CreatedAt") createdAt: option<__string>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "DescribeAssetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAsset = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("SourceRoleArn") sourceRoleArn: __string,
@as("SourceArn") sourceArn: __string,
@as("ResourceId") resourceId: option<__string>,
@as("PackagingGroupId") packagingGroupId: __string,
@as("Id") id: __string
}
  type response = {
@as("Tags") tags: option<tags>,
@as("SourceRoleArn") sourceRoleArn: option<__string>,
@as("SourceArn") sourceArn: option<__string>,
@as("ResourceId") resourceId: option<__string>,
@as("PackagingGroupId") packagingGroupId: option<__string>,
@as("Id") id: option<__string>,
@as("EgressEndpoints") egressEndpoints: option<__listOfEgressEndpoint>,
@as("CreatedAt") createdAt: option<__string>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "CreateAssetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPackagingGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("PackagingGroups") packagingGroups: option<__listOfPackagingGroup>,
@as("NextToken") nextToken: option<__string>
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "ListPackagingGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssets = {
  type t;
  type request = {
@as("PackagingGroupId") packagingGroupId: option<__string>,
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("Assets") assets: option<__listOfAssetShallow>
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "ListAssetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePackagingConfiguration = {
  type t;
  type request = {
@as("Id") id: __string
}
  type response = {
@as("Tags") tags: option<tags>,
@as("PackagingGroupId") packagingGroupId: option<__string>,
@as("MssPackage") mssPackage: option<mssPackage>,
@as("Id") id: option<__string>,
@as("HlsPackage") hlsPackage: option<hlsPackage>,
@as("DashPackage") dashPackage: option<dashPackage>,
@as("CmafPackage") cmafPackage: option<cmafPackage>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "DescribePackagingConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePackagingConfiguration = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("PackagingGroupId") packagingGroupId: __string,
@as("MssPackage") mssPackage: option<mssPackage>,
@as("Id") id: __string,
@as("HlsPackage") hlsPackage: option<hlsPackage>,
@as("DashPackage") dashPackage: option<dashPackage>,
@as("CmafPackage") cmafPackage: option<cmafPackage>
}
  type response = {
@as("Tags") tags: option<tags>,
@as("PackagingGroupId") packagingGroupId: option<__string>,
@as("MssPackage") mssPackage: option<mssPackage>,
@as("Id") id: option<__string>,
@as("HlsPackage") hlsPackage: option<hlsPackage>,
@as("DashPackage") dashPackage: option<dashPackage>,
@as("CmafPackage") cmafPackage: option<cmafPackage>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "CreatePackagingConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPackagingConfigurations = {
  type t;
  type request = {
@as("PackagingGroupId") packagingGroupId: option<__string>,
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("PackagingConfigurations") packagingConfigurations: option<__listOfPackagingConfiguration>,
@as("NextToken") nextToken: option<__string>
}
  @module("@aws-sdk/client-mediapackage-vod") @new external new_: (request) => t = "ListPackagingConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
