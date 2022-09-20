type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mediapackage-vod") @new
external createClient: unit => awsServiceClient = "MediaPackageVodClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __string = string
type __integer = int
type __boolean = bool
type __PeriodTriggersElement = [@as("ADS") #ADS]
type streamOrder = [
  | @as("VIDEO_BITRATE_DESCENDING") #VIDEO_BITRATE_DESCENDING
  | @as("VIDEO_BITRATE_ASCENDING") #VIDEO_BITRATE_ASCENDING
  | @as("ORIGINAL") #ORIGINAL
]
type segmentTemplateFormat = [
  | @as("NUMBER_WITH_DURATION") #NUMBER_WITH_DURATION
  | @as("TIME_WITH_TIMELINE") #TIME_WITH_TIMELINE
  | @as("NUMBER_WITH_TIMELINE") #NUMBER_WITH_TIMELINE
]
type profile = [@as("HBBTV_1_5") #HBBTV_1_5 | @as("NONE") #NONE]
type maxResults = int
type manifestLayout = [@as("COMPACT") #COMPACT | @as("FULL") #FULL]
type encryptionMethod = [@as("SAMPLE_AES") #SAMPLE_AES | @as("AES_128") #AES_128]
type adMarkers = [
  | @as("PASSTHROUGH") #PASSTHROUGH
  | @as("SCTE35_ENHANCED") #SCTE35_ENHANCED
  | @as("NONE") #NONE
]
type __mapOf__string = Js.Dict.t<__string>
type __listOf__string = array<__string>
type __listOf__PeriodTriggersElement = array<__PeriodTriggersElement>
@ocaml.doc("A collection of tags associated with a resource") type tags = Js.Dict.t<__string>
@ocaml.doc("A StreamSelection configuration.")
type streamSelection = {
  @ocaml.doc("A directive that determines the order of streams in the output.") @as("StreamOrder")
  streamOrder: option<streamOrder>,
  @ocaml.doc("The minimum video bitrate (bps) to include in output.") @as("MinVideoBitsPerSecond")
  minVideoBitsPerSecond: option<__integer>,
  @ocaml.doc("The maximum video bitrate (bps) to include in output.") @as("MaxVideoBitsPerSecond")
  maxVideoBitsPerSecond: option<__integer>,
}
@ocaml.doc("The endpoint URL used to access an Asset using one PackagingConfiguration.")
type egressEndpoint = {
  @ocaml.doc("The URL of the parent manifest for the repackaged Asset.") @as("Url")
  url: option<__string>,
  @ocaml.doc(
    "The current processing status of the asset used for the packaging configuration. The status can be either QUEUED, PROCESSING, PLAYABLE, or FAILED. Status information won't be available for most assets ingested before 2021-09-30."
  )
  @as("Status")
  status: option<__string>,
  @ocaml.doc("The ID of the PackagingConfiguration being applied to the Asset.")
  @as("PackagingConfigurationId")
  packagingConfigurationId: option<__string>,
}
@ocaml.doc("Configure egress access logging.")
type egressAccessLogs = {
  @ocaml.doc("Customize the log group name.") @as("LogGroupName") logGroupName: option<__string>,
}
@ocaml.doc("CDN Authorization credentials")
type authorization = {
  @ocaml.doc(
    "The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage to communicate with AWS Secrets Manager."
  )
  @as("SecretsRoleArn")
  secretsRoleArn: __string,
  @ocaml.doc(
    "The Amazon Resource Name (ARN) for the secret in AWS Secrets Manager that is used for CDN authorization."
  )
  @as("CdnIdentifierSecret")
  cdnIdentifierSecret: __string,
}
type __listOfEgressEndpoint = array<egressEndpoint>
@ocaml.doc(
  "A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys."
)
type spekeKeyProvider = {
  @ocaml.doc("The URL of the external key provider service.") @as("Url") url: __string,
  @ocaml.doc("The system IDs to include in key requests.") @as("SystemIds")
  systemIds: __listOf__string,
  @ocaml.doc("An Amazon Resource Name (ARN) of an IAM role that AWS Elemental
MediaPackage will assume when accessing the key provider service.")
  @as("RoleArn")
  roleArn: __string,
}
@ocaml.doc("A MediaPackage VOD PackagingGroup resource.")
type packagingGroup = {
  @as("Tags") tags: option<tags>,
  @ocaml.doc("The ID of the PackagingGroup.") @as("Id") id: option<__string>,
  @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
  @ocaml.doc("The fully qualified domain name for Assets in the PackagingGroup.") @as("DomainName")
  domainName: option<__string>,
  @as("Authorization") authorization: option<authorization>,
  @ocaml.doc("The ARN of the PackagingGroup.") @as("Arn") arn: option<__string>,
}
@ocaml.doc("A Microsoft Smooth Streaming (MSS) manifest configuration.")
type mssManifest = {
  @as("StreamSelection") streamSelection: option<streamSelection>,
  @ocaml.doc("An optional string to include in the name of the manifest.") @as("ManifestName")
  manifestName: option<__string>,
}
@ocaml.doc("An HTTP Live Streaming (HLS) manifest configuration.")
type hlsManifest = {
  @as("StreamSelection") streamSelection: option<streamSelection>,
  @ocaml.doc("When enabled, the EXT-X-KEY tag will be repeated in output manifests.")
  @as("RepeatExtXKey")
  repeatExtXKey: option<__boolean>,
  @ocaml.doc("The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
inserted into manifests. Additionally, when an interval is specified
ID3Timed Metadata messages will be generated every 5 seconds using the
ingest time of the content.
If the interval is not specified, or set to 0, then
no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
ID3Timed Metadata messages will be generated. Note that irrespective
of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
it will be passed through to HLS output.")
  @as("ProgramDateTimeIntervalSeconds")
  programDateTimeIntervalSeconds: option<__integer>,
  @ocaml.doc("An optional string to include in the name of the manifest.") @as("ManifestName")
  manifestName: option<__string>,
  @ocaml.doc("When enabled, an I-Frame only stream will be included in the output.")
  @as("IncludeIframeOnlyStream")
  includeIframeOnlyStream: option<__boolean>,
  @ocaml.doc("This setting controls how ad markers are included in the packaged OriginEndpoint.
\"NONE\" will omit all SCTE-35 ad markers from the output.
\"PASSTHROUGH\" causes the manifest to contain a copy of the SCTE-35 ad
markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
\"SCTE35_ENHANCED\" generates ad markers and blackout tags based on SCTE-35
messages in the input source.")
  @as("AdMarkers")
  adMarkers: option<adMarkers>,
}
@ocaml.doc("A DASH manifest configuration.")
type dashManifest = {
  @as("StreamSelection") streamSelection: option<streamSelection>,
  @ocaml.doc(
    "The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to \"HBBTV_1_5\", HbbTV 1.5 compliant output is enabled."
  )
  @as("Profile")
  profile: option<profile>,
  @ocaml.doc(
    "Minimum duration (in seconds) that a player will buffer media before starting the presentation."
  )
  @as("MinBufferTimeSeconds")
  minBufferTimeSeconds: option<__integer>,
  @ocaml.doc("An optional string to include in the name of the manifest.") @as("ManifestName")
  manifestName: option<__string>,
  @ocaml.doc(
    "Determines the position of some tags in the Media Presentation Description (MPD).  When set to FULL, elements like SegmentTemplate and ContentProtection are included in each Representation.  When set to COMPACT, duplicate elements are combined and presented at the AdaptationSet level."
  )
  @as("ManifestLayout")
  manifestLayout: option<manifestLayout>,
}
@ocaml.doc("A MediaPackage VOD Asset resource.")
type assetShallow = {
  @as("Tags") tags: option<tags>,
  @ocaml.doc("The IAM role ARN used to access the source S3 bucket.") @as("SourceRoleArn")
  sourceRoleArn: option<__string>,
  @ocaml.doc("ARN of the source object in S3.") @as("SourceArn") sourceArn: option<__string>,
  @ocaml.doc("The resource ID to include in SPEKE key requests.") @as("ResourceId")
  resourceId: option<__string>,
  @ocaml.doc("The ID of the PackagingGroup for the Asset.") @as("PackagingGroupId")
  packagingGroupId: option<__string>,
  @ocaml.doc("The unique identifier for the Asset.") @as("Id") id: option<__string>,
  @ocaml.doc("The time the Asset was initially submitted for Ingest.") @as("CreatedAt")
  createdAt: option<__string>,
  @ocaml.doc("The ARN of the Asset.") @as("Arn") arn: option<__string>,
}
type __listOfPackagingGroup = array<packagingGroup>
type __listOfMssManifest = array<mssManifest>
type __listOfHlsManifest = array<hlsManifest>
type __listOfDashManifest = array<dashManifest>
type __listOfAssetShallow = array<assetShallow>
@ocaml.doc("A Microsoft Smooth Streaming (MSS) encryption configuration.")
type mssEncryption = {@as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider}
@ocaml.doc("An HTTP Live Streaming (HLS) encryption configuration.")
type hlsEncryption = {
  @as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider,
  @ocaml.doc("The encryption method to use.") @as("EncryptionMethod")
  encryptionMethod: option<encryptionMethod>,
  @ocaml.doc("A constant initialization vector for encryption (optional).
When not specified the initialization vector will be periodically rotated.")
  @as("ConstantInitializationVector")
  constantInitializationVector: option<__string>,
}
@ocaml.doc("A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.")
type dashEncryption = {@as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider}
@ocaml.doc("A CMAF encryption configuration.")
type cmafEncryption = {
  @as("SpekeKeyProvider") spekeKeyProvider: spekeKeyProvider,
  @ocaml.doc(
    "An optional 128-bit, 16-byte hex value represented by a 32-character string, used in conjunction with the key for encrypting blocks. If you don't specify a value, then MediaPackage creates the constant initialization vector (IV)."
  )
  @as("ConstantInitializationVector")
  constantInitializationVector: option<__string>,
}
@ocaml.doc("A Microsoft Smooth Streaming (MSS) PackagingConfiguration.")
type mssPackage = {
  @ocaml.doc("The duration (in seconds) of each segment.") @as("SegmentDurationSeconds")
  segmentDurationSeconds: option<__integer>,
  @ocaml.doc("A list of MSS manifest configurations.") @as("MssManifests")
  mssManifests: __listOfMssManifest,
  @as("Encryption") encryption: option<mssEncryption>,
}
@ocaml.doc("An HTTP Live Streaming (HLS) packaging configuration.")
type hlsPackage = {
  @ocaml.doc("When enabled, audio streams will be placed in rendition groups in the output.")
  @as("UseAudioRenditionGroup")
  useAudioRenditionGroup: option<__boolean>,
  @ocaml.doc("Duration (in seconds) of each fragment. Actual fragments will be
rounded to the nearest multiple of the source fragment duration.")
  @as("SegmentDurationSeconds")
  segmentDurationSeconds: option<__integer>,
  @ocaml.doc(
    "When enabled, MediaPackage passes through digital video broadcasting (DVB) subtitles into the output."
  )
  @as("IncludeDvbSubtitles")
  includeDvbSubtitles: option<__boolean>,
  @ocaml.doc("A list of HLS manifest configurations.") @as("HlsManifests")
  hlsManifests: __listOfHlsManifest,
  @as("Encryption") encryption: option<hlsEncryption>,
}
@ocaml.doc("A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.")
type dashPackage = {
  @ocaml.doc(
    "Determines the type of SegmentTemplate included in the Media Presentation Description (MPD).  When set to NUMBER_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Number$ media URLs.  When set to TIME_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Time$ media URLs. When set to NUMBER_WITH_DURATION, only a duration is included in each SegmentTemplate, with $Number$ media URLs."
  )
  @as("SegmentTemplateFormat")
  segmentTemplateFormat: option<segmentTemplateFormat>,
  @ocaml.doc("Duration (in seconds) of each segment. Actual segments will be
rounded to the nearest multiple of the source segment duration.")
  @as("SegmentDurationSeconds")
  segmentDurationSeconds: option<__integer>,
  @ocaml.doc("A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH)
Media Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not
be partitioned into more than one period. If the list contains \"ADS\", new periods will be created where
the Asset contains SCTE-35 ad markers.")
  @as("PeriodTriggers")
  periodTriggers: option<__listOf__PeriodTriggersElement>,
  @ocaml.doc(
    "When includeEncoderConfigurationInSegments is set to true, MediaPackage places your encoder's Sequence Parameter Set (SPS), Picture Parameter Set (PPS), and Video Parameter Set (VPS) metadata in every video segment instead of in the init fragment. This lets you use different SPS/PPS/VPS settings for your assets during content playback."
  )
  @as("IncludeEncoderConfigurationInSegments")
  includeEncoderConfigurationInSegments: option<__boolean>,
  @as("Encryption") encryption: option<dashEncryption>,
  @ocaml.doc("A list of DASH manifest configurations.") @as("DashManifests")
  dashManifests: __listOfDashManifest,
}
@ocaml.doc("A CMAF packaging configuration.")
type cmafPackage = {
  @ocaml.doc("Duration (in seconds) of each fragment. Actual fragments will be
rounded to the nearest multiple of the source fragment duration.")
  @as("SegmentDurationSeconds")
  segmentDurationSeconds: option<__integer>,
  @ocaml.doc(
    "When includeEncoderConfigurationInSegments is set to true, MediaPackage places your encoder's Sequence Parameter Set (SPS), Picture Parameter Set (PPS), and Video Parameter Set (VPS) metadata in every video segment instead of in the init fragment. This lets you use different SPS/PPS/VPS settings for your assets during content playback."
  )
  @as("IncludeEncoderConfigurationInSegments")
  includeEncoderConfigurationInSegments: option<__boolean>,
  @ocaml.doc("A list of HLS manifest configurations.") @as("HlsManifests")
  hlsManifests: __listOfHlsManifest,
  @as("Encryption") encryption: option<cmafEncryption>,
}
@ocaml.doc("A MediaPackage VOD PackagingConfiguration resource.")
type packagingConfiguration = {
  @as("Tags") tags: option<tags>,
  @ocaml.doc("The ID of a PackagingGroup.") @as("PackagingGroupId")
  packagingGroupId: option<__string>,
  @as("MssPackage") mssPackage: option<mssPackage>,
  @ocaml.doc("The ID of the PackagingConfiguration.") @as("Id") id: option<__string>,
  @as("HlsPackage") hlsPackage: option<hlsPackage>,
  @as("DashPackage") dashPackage: option<dashPackage>,
  @as("CmafPackage") cmafPackage: option<cmafPackage>,
  @ocaml.doc("The ARN of the PackagingConfiguration.") @as("Arn") arn: option<__string>,
}
type __listOfPackagingConfiguration = array<packagingConfiguration>
@ocaml.doc("AWS Elemental MediaPackage VOD")
module DeletePackagingGroup = {
  type t
  type request = {
    @ocaml.doc("The ID of the MediaPackage VOD PackagingGroup resource to delete.") @as("Id")
    id: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "DeletePackagingGroupCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeletePackagingConfiguration = {
  type t
  type request = {
    @ocaml.doc("The ID of the MediaPackage VOD PackagingConfiguration resource to delete.")
    @as("Id")
    id: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "DeletePackagingConfigurationCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAsset = {
  type t
  type request = {
    @ocaml.doc("The ID of the MediaPackage VOD Asset resource to delete.") @as("Id") id: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediapackage-vod") @new external new: request => t = "DeleteAssetCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdatePackagingGroup = {
  type t
  @ocaml.doc("A MediaPackage VOD PackagingGroup resource configuration.")
  type request = {
    @ocaml.doc("The ID of a MediaPackage VOD PackagingGroup resource.") @as("Id") id: __string,
    @as("Authorization") authorization: option<authorization>,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("The ID of the PackagingGroup.") @as("Id") id: option<__string>,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
    @ocaml.doc("The fully qualified domain name for Assets in the PackagingGroup.")
    @as("DomainName")
    domainName: option<__string>,
    @as("Authorization") authorization: option<authorization>,
    @ocaml.doc("The ARN of the PackagingGroup.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "UpdatePackagingGroupCommand"
  let make = (~id, ~authorization=?, ()) => new({id, authorization})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("A comma-separated list of the tag keys to remove from the resource.") @as("TagKeys")
    tagKeys: __listOf__string,
    @ocaml.doc(
      "The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource."
    )
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("A collection of tags associated with a resource") @as("Tags") tags: __mapOf__string,
    @ocaml.doc(
      "The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource."
    )
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediapackage-vod") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource."
    )
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {
    @ocaml.doc("A collection of tags associated with a resource") @as("Tags")
    tags: option<__mapOf__string>,
  }
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribePackagingGroup = {
  type t
  type request = {
    @ocaml.doc("The ID of a MediaPackage VOD PackagingGroup resource.") @as("Id") id: __string,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("The ID of the PackagingGroup.") @as("Id") id: option<__string>,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
    @ocaml.doc("The fully qualified domain name for Assets in the PackagingGroup.")
    @as("DomainName")
    domainName: option<__string>,
    @as("Authorization") authorization: option<authorization>,
    @ocaml.doc("The ARN of the PackagingGroup.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "DescribePackagingGroupCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePackagingGroup = {
  type t
  @ocaml.doc("A new MediaPackage VOD PackagingGroup resource configuration.")
  type request = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("The ID of the PackagingGroup.") @as("Id") id: __string,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
    @as("Authorization") authorization: option<authorization>,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("The ID of the PackagingGroup.") @as("Id") id: option<__string>,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
    @ocaml.doc("The fully qualified domain name for Assets in the PackagingGroup.")
    @as("DomainName")
    domainName: option<__string>,
    @as("Authorization") authorization: option<authorization>,
    @ocaml.doc("The ARN of the PackagingGroup.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "CreatePackagingGroupCommand"
  let make = (~id, ~tags=?, ~egressAccessLogs=?, ~authorization=?, ()) =>
    new({tags, id, egressAccessLogs, authorization})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ConfigureLogs = {
  type t
  @ocaml.doc("The option to configure log subscription.")
  type request = {
    @ocaml.doc("The ID of a MediaPackage VOD PackagingGroup resource.") @as("Id") id: __string,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("The ID of the PackagingGroup.") @as("Id") id: option<__string>,
    @as("EgressAccessLogs") egressAccessLogs: option<egressAccessLogs>,
    @ocaml.doc("The fully qualified domain name for Assets in the PackagingGroup.")
    @as("DomainName")
    domainName: option<__string>,
    @as("Authorization") authorization: option<authorization>,
    @ocaml.doc("The ARN of the PackagingGroup.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "ConfigureLogsCommand"
  let make = (~id, ~egressAccessLogs=?, ()) => new({id, egressAccessLogs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAsset = {
  type t
  type request = {
    @ocaml.doc("The ID of an MediaPackage VOD Asset resource.") @as("Id") id: __string,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("The IAM role_arn used to access the source S3 bucket.") @as("SourceRoleArn")
    sourceRoleArn: option<__string>,
    @ocaml.doc("ARN of the source object in S3.") @as("SourceArn") sourceArn: option<__string>,
    @ocaml.doc("The resource ID to include in SPEKE key requests.") @as("ResourceId")
    resourceId: option<__string>,
    @ocaml.doc("The ID of the PackagingGroup for the Asset.") @as("PackagingGroupId")
    packagingGroupId: option<__string>,
    @ocaml.doc("The unique identifier for the Asset.") @as("Id") id: option<__string>,
    @ocaml.doc("The list of egress endpoints available for the Asset.") @as("EgressEndpoints")
    egressEndpoints: option<__listOfEgressEndpoint>,
    @ocaml.doc("The time the Asset was initially submitted for Ingest.") @as("CreatedAt")
    createdAt: option<__string>,
    @ocaml.doc("The ARN of the Asset.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "DescribeAssetCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAsset = {
  type t
  @ocaml.doc("A new MediaPackage VOD Asset configuration.")
  type request = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("The IAM role ARN used to access the source S3 bucket.") @as("SourceRoleArn")
    sourceRoleArn: __string,
    @ocaml.doc("ARN of the source object in S3.") @as("SourceArn") sourceArn: __string,
    @ocaml.doc("The resource ID to include in SPEKE key requests.") @as("ResourceId")
    resourceId: option<__string>,
    @ocaml.doc("The ID of the PackagingGroup for the Asset.") @as("PackagingGroupId")
    packagingGroupId: __string,
    @ocaml.doc("The unique identifier for the Asset.") @as("Id") id: __string,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("The IAM role_arn used to access the source S3 bucket.") @as("SourceRoleArn")
    sourceRoleArn: option<__string>,
    @ocaml.doc("ARN of the source object in S3.") @as("SourceArn") sourceArn: option<__string>,
    @ocaml.doc("The resource ID to include in SPEKE key requests.") @as("ResourceId")
    resourceId: option<__string>,
    @ocaml.doc("The ID of the PackagingGroup for the Asset.") @as("PackagingGroupId")
    packagingGroupId: option<__string>,
    @ocaml.doc("The unique identifier for the Asset.") @as("Id") id: option<__string>,
    @ocaml.doc("The list of egress endpoints available for the Asset.") @as("EgressEndpoints")
    egressEndpoints: option<__listOfEgressEndpoint>,
    @ocaml.doc("The time the Asset was initially submitted for Ingest.") @as("CreatedAt")
    createdAt: option<__string>,
    @ocaml.doc("The ARN of the Asset.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage-vod") @new external new: request => t = "CreateAssetCommand"
  let make = (~sourceRoleArn, ~sourceArn, ~packagingGroupId, ~id, ~tags=?, ~resourceId=?, ()) =>
    new({tags, sourceRoleArn, sourceArn, resourceId, packagingGroupId, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPackagingGroups = {
  type t
  type request = {
    @ocaml.doc("A token used to resume pagination from the end of a previous request.")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Upper bound on number of records to return.") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("A list of MediaPackage VOD PackagingGroup resources.") @as("PackagingGroups")
    packagingGroups: option<__listOfPackagingGroup>,
    @ocaml.doc("A token that can be used to resume pagination from the end of the collection.")
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "ListPackagingGroupsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAssets = {
  type t
  type request = {
    @ocaml.doc("Returns Assets associated with the specified PackagingGroup.")
    @as("PackagingGroupId")
    packagingGroupId: option<__string>,
    @ocaml.doc("A token used to resume pagination from the end of a previous request.")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Upper bound on number of records to return.") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("A token that can be used to resume pagination from the end of the collection.")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("A list of MediaPackage VOD Asset resources.") @as("Assets")
    assets: option<__listOfAssetShallow>,
  }
  @module("@aws-sdk/client-mediapackage-vod") @new external new: request => t = "ListAssetsCommand"
  let make = (~packagingGroupId=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({packagingGroupId, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribePackagingConfiguration = {
  type t
  type request = {
    @ocaml.doc("The ID of a MediaPackage VOD PackagingConfiguration resource.") @as("Id")
    id: __string,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("The ID of a PackagingGroup.") @as("PackagingGroupId")
    packagingGroupId: option<__string>,
    @as("MssPackage") mssPackage: option<mssPackage>,
    @ocaml.doc("The ID of the PackagingConfiguration.") @as("Id") id: option<__string>,
    @as("HlsPackage") hlsPackage: option<hlsPackage>,
    @as("DashPackage") dashPackage: option<dashPackage>,
    @as("CmafPackage") cmafPackage: option<cmafPackage>,
    @ocaml.doc("The ARN of the PackagingConfiguration.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "DescribePackagingConfigurationCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePackagingConfiguration = {
  type t
  @ocaml.doc("A new MediaPackage VOD PackagingConfiguration resource configuration.")
  type request = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("The ID of a PackagingGroup.") @as("PackagingGroupId") packagingGroupId: __string,
    @as("MssPackage") mssPackage: option<mssPackage>,
    @ocaml.doc("The ID of the PackagingConfiguration.") @as("Id") id: __string,
    @as("HlsPackage") hlsPackage: option<hlsPackage>,
    @as("DashPackage") dashPackage: option<dashPackage>,
    @as("CmafPackage") cmafPackage: option<cmafPackage>,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("The ID of a PackagingGroup.") @as("PackagingGroupId")
    packagingGroupId: option<__string>,
    @as("MssPackage") mssPackage: option<mssPackage>,
    @ocaml.doc("The ID of the PackagingConfiguration.") @as("Id") id: option<__string>,
    @as("HlsPackage") hlsPackage: option<hlsPackage>,
    @as("DashPackage") dashPackage: option<dashPackage>,
    @as("CmafPackage") cmafPackage: option<cmafPackage>,
    @ocaml.doc("The ARN of the PackagingConfiguration.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "CreatePackagingConfigurationCommand"
  let make = (
    ~packagingGroupId,
    ~id,
    ~tags=?,
    ~mssPackage=?,
    ~hlsPackage=?,
    ~dashPackage=?,
    ~cmafPackage=?,
    (),
  ) => new({tags, packagingGroupId, mssPackage, id, hlsPackage, dashPackage, cmafPackage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPackagingConfigurations = {
  type t
  type request = {
    @ocaml.doc(
      "Returns MediaPackage VOD PackagingConfigurations associated with the specified PackagingGroup."
    )
    @as("PackagingGroupId")
    packagingGroupId: option<__string>,
    @ocaml.doc("A token used to resume pagination from the end of a previous request.")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("Upper bound on number of records to return.") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("A list of MediaPackage VOD PackagingConfiguration resources.")
    @as("PackagingConfigurations")
    packagingConfigurations: option<__listOfPackagingConfiguration>,
    @ocaml.doc("A token that can be used to resume pagination from the end of the collection.")
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-mediapackage-vod") @new
  external new: request => t = "ListPackagingConfigurationsCommand"
  let make = (~packagingGroupId=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({packagingGroupId, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
