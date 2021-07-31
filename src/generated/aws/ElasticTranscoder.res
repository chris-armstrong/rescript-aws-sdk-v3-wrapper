type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type zeroTo512String = string
type zeroTo255String = string
type watermarkSizingPolicy = string
type watermarkKey = string
type videoCodec = string
type videoBitRate = string
type verticalAlign = string
type timeOffset = string
type time = string
type thumbnailResolution = string
type thumbnailPattern = string
type target = string
type success = string
type string_ = string
type storageClass = string
type snsTopic = string
type sizingPolicy = string
type rotate = string
type role = string
type resolution = string
type presetWatermarkId = string
type presetType = string
type presetContainer = string
type playlistFormat = string
type playReadyDrmFormatString = string
type pixelsOrPercent = string
type pipelineStatus = string
type paddingPolicy = string
type opacity = string
type oneTo512String = string
type nullableLong = float
type nullableInteger = int
type nonEmptyBase64EncodedString = string
type name = string
type mergePolicy = string
type maxFrameRate = string
type longKey = string
type keyframesMaxDist = string
type keyStoragePolicy = string
type keyIdGuid = string
type keyArn = string
type key = string
type jpgOrPng = string
type jobStatus = string
type jobContainer = string
type interlaced = string
type id = string
type horizontalAlign = string
type hlsContentProtectionMethod = string
type granteeType = string
type grantee = string
type frameRate = string
type floatString = string
type fixedGOP = string
type filename = string
type exceptionMessage = string
type encryptionMode = string
type digitsOrAuto = string
type digits = string
type description = string
type codecOption = string
type captionMergePolicy = string
type captionFormatPattern = string
type captionFormatFormat = string
type bucketName = string
type base64EncodedString = string
type audioSigned = string
type audioSampleRate = string
type audioPackingMode = string
type audioCodecProfile = string
type audioCodec = string
type audioChannels = string
type audioBitRate = string
type audioBitOrder = string
type audioBitDepth = string
type aspectRatio = string
type ascending = string
type accessControl = string
type warning = {
@as("Message") message: option<string_>,
@as("Code") code: option<string_>
}
type userMetadata = Js.Dict.t< string_>
type timing = {
@as("FinishTimeMillis") finishTimeMillis: option<nullableLong>,
@as("StartTimeMillis") startTimeMillis: option<nullableLong>,
@as("SubmitTimeMillis") submitTimeMillis: option<nullableLong>
}
type timeSpan = {
@as("Duration") duration: option<time>,
@as("StartTime") startTime: option<time>
}
type thumbnails = {
@as("PaddingPolicy") paddingPolicy: option<paddingPolicy>,
@as("SizingPolicy") sizingPolicy: option<sizingPolicy>,
@as("MaxHeight") maxHeight: option<digitsOrAuto>,
@as("MaxWidth") maxWidth: option<digitsOrAuto>,
@as("AspectRatio") aspectRatio: option<aspectRatio>,
@as("Resolution") resolution: option<thumbnailResolution>,
@as("Interval") interval: option<digits>,
@as("Format") format: option<jpgOrPng>
}
type snsTopics = array<snsTopic>
type presetWatermark = {
@as("Target") target: option<target>,
@as("Opacity") opacity: option<opacity>,
@as("VerticalOffset") verticalOffset: option<pixelsOrPercent>,
@as("VerticalAlign") verticalAlign: option<verticalAlign>,
@as("HorizontalOffset") horizontalOffset: option<pixelsOrPercent>,
@as("HorizontalAlign") horizontalAlign: option<horizontalAlign>,
@as("SizingPolicy") sizingPolicy: option<watermarkSizingPolicy>,
@as("MaxHeight") maxHeight: option<pixelsOrPercent>,
@as("MaxWidth") maxWidth: option<pixelsOrPercent>,
@as("Id") id: option<presetWatermarkId>
}
type playReadyDrm = {
@as("LicenseAcquisitionUrl") licenseAcquisitionUrl: option<oneTo512String>,
@as("InitializationVector") initializationVector: option<zeroTo255String>,
@as("KeyId") keyId: option<keyIdGuid>,
@as("KeyMd5") keyMd5: option<nonEmptyBase64EncodedString>,
@as("Key") key: option<nonEmptyBase64EncodedString>,
@as("Format") format: option<playReadyDrmFormatString>
}
type outputKeys = array<key>
type notifications = {
@as("Error") error: option<snsTopic>,
@as("Warning") warning: option<snsTopic>,
@as("Completed") completed: option<snsTopic>,
@as("Progressing") progressing: option<snsTopic>
}
type hlsContentProtection = {
@as("KeyStoragePolicy") keyStoragePolicy: option<keyStoragePolicy>,
@as("LicenseAcquisitionUrl") licenseAcquisitionUrl: option<zeroTo512String>,
@as("InitializationVector") initializationVector: option<zeroTo255String>,
@as("KeyMd5") keyMd5: option<base64EncodedString>,
@as("Key") key: option<base64EncodedString>,
@as("Method") method: option<hlsContentProtectionMethod>
}
type exceptionMessages = array<string_>
type encryption = {
@as("InitializationVector") initializationVector: option<zeroTo255String>,
@as("KeyMd5") keyMd5: option<base64EncodedString>,
@as("Key") key: option<base64EncodedString>,
@as("Mode") mode: option<encryptionMode>
}
type detectedProperties = {
@as("DurationMillis") durationMillis: option<nullableLong>,
@as("FileSize") fileSize: option<nullableLong>,
@as("FrameRate") frameRate: option<floatString>,
@as("Height") height: option<nullableInteger>,
@as("Width") width: option<nullableInteger>
}
type codecOptions = Js.Dict.t< codecOption>
type audioCodecOptions = {
@as("Signed") signed: option<audioSigned>,
@as("BitOrder") bitOrder: option<audioBitOrder>,
@as("BitDepth") bitDepth: option<audioBitDepth>,
@as("Profile") profile: option<audioCodecProfile>
}
type accessControls = array<accessControl>
type warnings = array<warning>
type presetWatermarks = array<presetWatermark>
type playlist = {
@as("StatusDetail") statusDetail: option<description>,
@as("Status") status: option<jobStatus>,
@as("PlayReadyDrm") playReadyDrm: option<playReadyDrm>,
@as("HlsContentProtection") hlsContentProtection: option<hlsContentProtection>,
@as("OutputKeys") outputKeys: option<outputKeys>,
@as("Format") format: option<playlistFormat>,
@as("Name") name: option<filename>
}
type permission = {
@as("Access") access: option<accessControls>,
@as("Grantee") grantee: option<grantee>,
@as("GranteeType") granteeType: option<granteeType>
}
type jobWatermark = {
@as("Encryption") encryption: option<encryption>,
@as("InputKey") inputKey: option<watermarkKey>,
@as("PresetWatermarkId") presetWatermarkId: option<presetWatermarkId>
}
type createJobPlaylist = {
@as("PlayReadyDrm") playReadyDrm: option<playReadyDrm>,
@as("HlsContentProtection") hlsContentProtection: option<hlsContentProtection>,
@as("OutputKeys") outputKeys: option<outputKeys>,
@as("Format") format: option<playlistFormat>,
@as("Name") name: option<filename>
}
type clip = {
@as("TimeSpan") timeSpan: option<timeSpan>
}
type captionSource = {
@as("Encryption") encryption: option<encryption>,
@as("Label") label: option<name>,
@as("TimeOffset") timeOffset: option<timeOffset>,
@as("Language") language: option<key>,
@as("Key") key: option<longKey>
}
type captionFormat = {
@as("Encryption") encryption: option<encryption>,
@as("Pattern") pattern: option<captionFormatPattern>,
@as("Format") format: option<captionFormatFormat>
}
type audioParameters = {
@as("CodecOptions") codecOptions: option<audioCodecOptions>,
@as("AudioPackingMode") audioPackingMode: option<audioPackingMode>,
@as("Channels") channels: option<audioChannels>,
@as("BitRate") bitRate: option<audioBitRate>,
@as("SampleRate") sampleRate: option<audioSampleRate>,
@as("Codec") codec: option<audioCodec>
}
type artwork = {
@as("Encryption") encryption: option<encryption>,
@as("AlbumArtFormat") albumArtFormat: option<jpgOrPng>,
@as("PaddingPolicy") paddingPolicy: option<paddingPolicy>,
@as("SizingPolicy") sizingPolicy: option<sizingPolicy>,
@as("MaxHeight") maxHeight: option<digitsOrAuto>,
@as("MaxWidth") maxWidth: option<digitsOrAuto>,
@as("InputKey") inputKey: option<watermarkKey>
}
type videoParameters = {
@as("Watermarks") watermarks: option<presetWatermarks>,
@as("PaddingPolicy") paddingPolicy: option<paddingPolicy>,
@as("SizingPolicy") sizingPolicy: option<sizingPolicy>,
@as("DisplayAspectRatio") displayAspectRatio: option<aspectRatio>,
@as("MaxHeight") maxHeight: option<digitsOrAuto>,
@as("MaxWidth") maxWidth: option<digitsOrAuto>,
@as("AspectRatio") aspectRatio: option<aspectRatio>,
@as("Resolution") resolution: option<resolution>,
@as("MaxFrameRate") maxFrameRate: option<maxFrameRate>,
@as("FrameRate") frameRate: option<frameRate>,
@as("BitRate") bitRate: option<videoBitRate>,
@as("FixedGOP") fixedGOP: option<fixedGOP>,
@as("KeyframesMaxDist") keyframesMaxDist: option<keyframesMaxDist>,
@as("CodecOptions") codecOptions: option<codecOptions>,
@as("Codec") codec: option<videoCodec>
}
type playlists = array<playlist>
type permissions = array<permission>
type jobWatermarks = array<jobWatermark>
type createJobPlaylists = array<createJobPlaylist>
type composition = array<clip>
type captionSources = array<captionSource>
type captionFormats = array<captionFormat>
type artworks = array<artwork>
type preset = {
@as("Type") type_: option<presetType>,
@as("Thumbnails") thumbnails: option<thumbnails>,
@as("Video") video: option<videoParameters>,
@as("Audio") audio: option<audioParameters>,
@as("Container") container: option<presetContainer>,
@as("Description") description: option<description>,
@as("Name") name: option<name>,
@as("Arn") arn: option<string_>,
@as("Id") id: option<id>
}
type pipelineOutputConfig = {
@as("Permissions") permissions: option<permissions>,
@as("StorageClass") storageClass: option<storageClass>,
@as("Bucket") bucket: option<bucketName>
}
type jobAlbumArt = {
@as("Artwork") artwork: option<artworks>,
@as("MergePolicy") mergePolicy: option<mergePolicy>
}
type inputCaptions = {
@as("CaptionSources") captionSources: option<captionSources>,
@as("MergePolicy") mergePolicy: option<captionMergePolicy>
}
type captions = {
@as("CaptionFormats") captionFormats: option<captionFormats>,
@as("CaptionSources") captionSources: option<captionSources>,
@as("MergePolicy") mergePolicy: option<captionMergePolicy>
}
type presets = array<preset>
type pipeline = {
@as("ThumbnailConfig") thumbnailConfig: option<pipelineOutputConfig>,
@as("ContentConfig") contentConfig: option<pipelineOutputConfig>,
@as("Notifications") notifications: option<notifications>,
@as("AwsKmsKeyArn") awsKmsKeyArn: option<keyArn>,
@as("Role") role: option<role>,
@as("OutputBucket") outputBucket: option<bucketName>,
@as("InputBucket") inputBucket: option<bucketName>,
@as("Status") status: option<pipelineStatus>,
@as("Name") name: option<name>,
@as("Arn") arn: option<string_>,
@as("Id") id: option<id>
}
type jobOutput = {
@as("AppliedColorSpaceConversion") appliedColorSpaceConversion: option<string_>,
@as("Encryption") encryption: option<encryption>,
@as("Captions") captions: option<captions>,
@as("Composition") composition: option<composition>,
@as("AlbumArt") albumArt: option<jobAlbumArt>,
@as("Watermarks") watermarks: option<jobWatermarks>,
@as("DurationMillis") durationMillis: option<nullableLong>,
@as("FileSize") fileSize: option<nullableLong>,
@as("FrameRate") frameRate: option<floatString>,
@as("Height") height: option<nullableInteger>,
@as("Width") width: option<nullableInteger>,
@as("Duration") duration: option<nullableLong>,
@as("StatusDetail") statusDetail: option<description>,
@as("Status") status: option<jobStatus>,
@as("SegmentDuration") segmentDuration: option<floatString>,
@as("PresetId") presetId: option<id>,
@as("Rotate") rotate: option<rotate>,
@as("ThumbnailEncryption") thumbnailEncryption: option<encryption>,
@as("ThumbnailPattern") thumbnailPattern: option<thumbnailPattern>,
@as("Key") key: option<key>,
@as("Id") id: option<string_>
}
type jobInput = {
@as("DetectedProperties") detectedProperties: option<detectedProperties>,
@as("InputCaptions") inputCaptions: option<inputCaptions>,
@as("TimeSpan") timeSpan: option<timeSpan>,
@as("Encryption") encryption: option<encryption>,
@as("Container") container: option<jobContainer>,
@as("Interlaced") interlaced: option<interlaced>,
@as("AspectRatio") aspectRatio: option<aspectRatio>,
@as("Resolution") resolution: option<resolution>,
@as("FrameRate") frameRate: option<frameRate>,
@as("Key") key: option<longKey>
}
type createJobOutput = {
@as("Encryption") encryption: option<encryption>,
@as("Captions") captions: option<captions>,
@as("Composition") composition: option<composition>,
@as("AlbumArt") albumArt: option<jobAlbumArt>,
@as("Watermarks") watermarks: option<jobWatermarks>,
@as("SegmentDuration") segmentDuration: option<floatString>,
@as("PresetId") presetId: option<id>,
@as("Rotate") rotate: option<rotate>,
@as("ThumbnailEncryption") thumbnailEncryption: option<encryption>,
@as("ThumbnailPattern") thumbnailPattern: option<thumbnailPattern>,
@as("Key") key: option<key>
}
type pipelines = array<pipeline>
type jobOutputs = array<jobOutput>
type jobInputs = array<jobInput>
type createJobOutputs = array<createJobOutput>
type job = {
@as("Timing") timing: option<timing>,
@as("UserMetadata") userMetadata: option<userMetadata>,
@as("Status") status: option<jobStatus>,
@as("Playlists") playlists: option<playlists>,
@as("OutputKeyPrefix") outputKeyPrefix: option<key>,
@as("Outputs") outputs: option<jobOutputs>,
@as("Output") output: option<jobOutput>,
@as("Inputs") inputs: option<jobInputs>,
@as("Input") input: option<jobInput>,
@as("PipelineId") pipelineId: option<id>,
@as("Arn") arn: option<string_>,
@as("Id") id: option<id>
}
type jobs = array<job>
type awsServiceClient;
@module("@aws-sdk/client-elastictranscoder") @new external createClient: unit => awsServiceClient = "ElasticTranscoderClient";
module DeletePreset = {
  type t;
  type request = {
@as("Id") id: id
}
  type response = unit
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "DeletePresetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePipeline = {
  type t;
  type request = {
@as("Id") id: id
}
  type response = unit
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "DeletePipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelJob = {
  type t;
  type request = {
@as("Id") id: id
}
  type response = unit
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "CancelJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TestRole = {
  type t;
  type request = {
@as("Topics") topics: snsTopics,
@as("OutputBucket") outputBucket: bucketName,
@as("InputBucket") inputBucket: bucketName,
@as("Role") role: role
}
  type response = {
@as("Messages") messages: option<exceptionMessages>,
@as("Success") success: option<success>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "TestRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ReadPreset = {
  type t;
  type request = {
@as("Id") id: id
}
  type response = {
@as("Preset") preset: option<preset>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ReadPresetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePreset = {
  type t;
  type request = {
@as("Thumbnails") thumbnails: option<thumbnails>,
@as("Audio") audio: option<audioParameters>,
@as("Video") video: option<videoParameters>,
@as("Container") container: presetContainer,
@as("Description") description: option<description>,
@as("Name") name: name
}
  type response = {
@as("Warning") warning: option<string_>,
@as("Preset") preset: option<preset>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "CreatePresetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePipelineStatus = {
  type t;
  type request = {
@as("Status") status: pipelineStatus,
@as("Id") id: id
}
  type response = {
@as("Pipeline") pipeline: option<pipeline>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "UpdatePipelineStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePipelineNotifications = {
  type t;
  type request = {
@as("Notifications") notifications: notifications,
@as("Id") id: id
}
  type response = {
@as("Pipeline") pipeline: option<pipeline>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "UpdatePipelineNotificationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePipeline = {
  type t;
  type request = {
@as("ThumbnailConfig") thumbnailConfig: option<pipelineOutputConfig>,
@as("ContentConfig") contentConfig: option<pipelineOutputConfig>,
@as("Notifications") notifications: option<notifications>,
@as("AwsKmsKeyArn") awsKmsKeyArn: option<keyArn>,
@as("Role") role: option<role>,
@as("InputBucket") inputBucket: option<bucketName>,
@as("Name") name: option<name>,
@as("Id") id: id
}
  type response = {
@as("Warnings") warnings: option<warnings>,
@as("Pipeline") pipeline: option<pipeline>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "UpdatePipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ReadPipeline = {
  type t;
  type request = {
@as("Id") id: id
}
  type response = {
@as("Warnings") warnings: option<warnings>,
@as("Pipeline") pipeline: option<pipeline>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ReadPipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPresets = {
  type t;
  type request = {
@as("PageToken") pageToken: option<id>,
@as("Ascending") ascending: option<ascending>
}
  type response = {
@as("NextPageToken") nextPageToken: option<id>,
@as("Presets") presets: option<presets>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ListPresetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePipeline = {
  type t;
  type request = {
@as("ThumbnailConfig") thumbnailConfig: option<pipelineOutputConfig>,
@as("ContentConfig") contentConfig: option<pipelineOutputConfig>,
@as("Notifications") notifications: option<notifications>,
@as("AwsKmsKeyArn") awsKmsKeyArn: option<keyArn>,
@as("Role") role: role,
@as("OutputBucket") outputBucket: option<bucketName>,
@as("InputBucket") inputBucket: bucketName,
@as("Name") name: name
}
  type response = {
@as("Warnings") warnings: option<warnings>,
@as("Pipeline") pipeline: option<pipeline>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "CreatePipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPipelines = {
  type t;
  type request = {
@as("PageToken") pageToken: option<id>,
@as("Ascending") ascending: option<ascending>
}
  type response = {
@as("NextPageToken") nextPageToken: option<id>,
@as("Pipelines") pipelines: option<pipelines>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ListPipelinesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ReadJob = {
  type t;
  type request = {
@as("Id") id: id
}
  type response = {
@as("Job") job: option<job>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ReadJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateJob = {
  type t;
  type request = {
@as("UserMetadata") userMetadata: option<userMetadata>,
@as("Playlists") playlists: option<createJobPlaylists>,
@as("OutputKeyPrefix") outputKeyPrefix: option<key>,
@as("Outputs") outputs: option<createJobOutputs>,
@as("Output") output: option<createJobOutput>,
@as("Inputs") inputs: option<jobInputs>,
@as("Input") input: option<jobInput>,
@as("PipelineId") pipelineId: id
}
  type response = {
@as("Job") job: option<job>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "CreateJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListJobsByStatus = {
  type t;
  type request = {
@as("PageToken") pageToken: option<id>,
@as("Ascending") ascending: option<ascending>,
@as("Status") status: jobStatus
}
  type response = {
@as("NextPageToken") nextPageToken: option<id>,
@as("Jobs") jobs: option<jobs>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ListJobsByStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListJobsByPipeline = {
  type t;
  type request = {
@as("PageToken") pageToken: option<id>,
@as("Ascending") ascending: option<ascending>,
@as("PipelineId") pipelineId: id
}
  type response = {
@as("NextPageToken") nextPageToken: option<id>,
@as("Jobs") jobs: option<jobs>
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ListJobsByPipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
