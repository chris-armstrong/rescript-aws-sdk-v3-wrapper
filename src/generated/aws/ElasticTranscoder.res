type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
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
type amazonawsString = string
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
type nullableLong = float;
type nullableInteger = int;
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
@as("Message") message: amazonawsString,
@as("Code") code: amazonawsString
}
type userMetadata = Js.Dict.t< amazonawsString>
type timing = {
@as("FinishTimeMillis") finishTimeMillis: nullableLong,
@as("StartTimeMillis") startTimeMillis: nullableLong,
@as("SubmitTimeMillis") submitTimeMillis: nullableLong
}
type timeSpan = {
@as("Duration") duration: time,
@as("StartTime") startTime: time
}
type thumbnails = {
@as("PaddingPolicy") paddingPolicy: paddingPolicy,
@as("SizingPolicy") sizingPolicy: sizingPolicy,
@as("MaxHeight") maxHeight: digitsOrAuto,
@as("MaxWidth") maxWidth: digitsOrAuto,
@as("AspectRatio") aspectRatio: aspectRatio,
@as("Resolution") resolution: thumbnailResolution,
@as("Interval") interval: digits,
@as("Format") format: jpgOrPng
}
type snsTopics = array<snsTopic>
type presetWatermark = {
@as("Target") target: target,
@as("Opacity") opacity: opacity,
@as("VerticalOffset") verticalOffset: pixelsOrPercent,
@as("VerticalAlign") verticalAlign: verticalAlign,
@as("HorizontalOffset") horizontalOffset: pixelsOrPercent,
@as("HorizontalAlign") horizontalAlign: horizontalAlign,
@as("SizingPolicy") sizingPolicy: watermarkSizingPolicy,
@as("MaxHeight") maxHeight: pixelsOrPercent,
@as("MaxWidth") maxWidth: pixelsOrPercent,
@as("Id") id: presetWatermarkId
}
type playReadyDrm = {
@as("LicenseAcquisitionUrl") licenseAcquisitionUrl: oneTo512String,
@as("InitializationVector") initializationVector: zeroTo255String,
@as("KeyId") keyId: keyIdGuid,
@as("KeyMd5") keyMd5: nonEmptyBase64EncodedString,
@as("Key") key: nonEmptyBase64EncodedString,
@as("Format") format: playReadyDrmFormatString
}
type outputKeys = array<key>
type notifications = {
@as("Error") error: snsTopic,
@as("Warning") warning: snsTopic,
@as("Completed") completed: snsTopic,
@as("Progressing") progressing: snsTopic
}
type hlsContentProtection = {
@as("KeyStoragePolicy") keyStoragePolicy: keyStoragePolicy,
@as("LicenseAcquisitionUrl") licenseAcquisitionUrl: zeroTo512String,
@as("InitializationVector") initializationVector: zeroTo255String,
@as("KeyMd5") keyMd5: base64EncodedString,
@as("Key") key: base64EncodedString,
@as("Method") method: hlsContentProtectionMethod
}
type exceptionMessages = array<amazonawsString>
type encryption = {
@as("InitializationVector") initializationVector: zeroTo255String,
@as("KeyMd5") keyMd5: base64EncodedString,
@as("Key") key: base64EncodedString,
@as("Mode") mode: encryptionMode
}
type detectedProperties = {
@as("DurationMillis") durationMillis: nullableLong,
@as("FileSize") fileSize: nullableLong,
@as("FrameRate") frameRate: floatString,
@as("Height") height: nullableInteger,
@as("Width") width: nullableInteger
}
type codecOptions = Js.Dict.t< codecOption>
type audioCodecOptions = {
@as("Signed") signed: audioSigned,
@as("BitOrder") bitOrder: audioBitOrder,
@as("BitDepth") bitDepth: audioBitDepth,
@as("Profile") profile: audioCodecProfile
}
type accessControls = array<accessControl>
type warnings = array<warning>
type presetWatermarks = array<presetWatermark>
type playlist = {
@as("StatusDetail") statusDetail: description,
@as("Status") status: jobStatus,
@as("PlayReadyDrm") playReadyDrm: playReadyDrm,
@as("HlsContentProtection") hlsContentProtection: hlsContentProtection,
@as("OutputKeys") outputKeys: outputKeys,
@as("Format") format: playlistFormat,
@as("Name") name: filename
}
type permission = {
@as("Access") access: accessControls,
@as("Grantee") grantee: grantee,
@as("GranteeType") granteeType: granteeType
}
type jobWatermark = {
@as("Encryption") encryption: encryption,
@as("InputKey") inputKey: watermarkKey,
@as("PresetWatermarkId") presetWatermarkId: presetWatermarkId
}
type createJobPlaylist = {
@as("PlayReadyDrm") playReadyDrm: playReadyDrm,
@as("HlsContentProtection") hlsContentProtection: hlsContentProtection,
@as("OutputKeys") outputKeys: outputKeys,
@as("Format") format: playlistFormat,
@as("Name") name: filename
}
type clip = {
@as("TimeSpan") timeSpan: timeSpan
}
type captionSource = {
@as("Encryption") encryption: encryption,
@as("Label") label: name,
@as("TimeOffset") timeOffset: timeOffset,
@as("Language") language: key,
@as("Key") key: longKey
}
type captionFormat = {
@as("Encryption") encryption: encryption,
@as("Pattern") pattern: captionFormatPattern,
@as("Format") format: captionFormatFormat
}
type audioParameters = {
@as("CodecOptions") codecOptions: audioCodecOptions,
@as("AudioPackingMode") audioPackingMode: audioPackingMode,
@as("Channels") channels: audioChannels,
@as("BitRate") bitRate: audioBitRate,
@as("SampleRate") sampleRate: audioSampleRate,
@as("Codec") codec: audioCodec
}
type artwork = {
@as("Encryption") encryption: encryption,
@as("AlbumArtFormat") albumArtFormat: jpgOrPng,
@as("PaddingPolicy") paddingPolicy: paddingPolicy,
@as("SizingPolicy") sizingPolicy: sizingPolicy,
@as("MaxHeight") maxHeight: digitsOrAuto,
@as("MaxWidth") maxWidth: digitsOrAuto,
@as("InputKey") inputKey: watermarkKey
}
type videoParameters = {
@as("Watermarks") watermarks: presetWatermarks,
@as("PaddingPolicy") paddingPolicy: paddingPolicy,
@as("SizingPolicy") sizingPolicy: sizingPolicy,
@as("DisplayAspectRatio") displayAspectRatio: aspectRatio,
@as("MaxHeight") maxHeight: digitsOrAuto,
@as("MaxWidth") maxWidth: digitsOrAuto,
@as("AspectRatio") aspectRatio: aspectRatio,
@as("Resolution") resolution: resolution,
@as("MaxFrameRate") maxFrameRate: maxFrameRate,
@as("FrameRate") frameRate: frameRate,
@as("BitRate") bitRate: videoBitRate,
@as("FixedGOP") fixedGOP: fixedGOP,
@as("KeyframesMaxDist") keyframesMaxDist: keyframesMaxDist,
@as("CodecOptions") codecOptions: codecOptions,
@as("Codec") codec: videoCodec
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
@as("Type") type_: presetType,
@as("Thumbnails") thumbnails: thumbnails,
@as("Video") video: videoParameters,
@as("Audio") audio: audioParameters,
@as("Container") container: presetContainer,
@as("Description") description: description,
@as("Name") name: name,
@as("Arn") arn: amazonawsString,
@as("Id") id: id
}
type pipelineOutputConfig = {
@as("Permissions") permissions: permissions,
@as("StorageClass") storageClass: storageClass,
@as("Bucket") bucket: bucketName
}
type jobAlbumArt = {
@as("Artwork") artwork: artworks,
@as("MergePolicy") mergePolicy: mergePolicy
}
type inputCaptions = {
@as("CaptionSources") captionSources: captionSources,
@as("MergePolicy") mergePolicy: captionMergePolicy
}
type captions = {
@as("CaptionFormats") captionFormats: captionFormats,
@as("CaptionSources") captionSources: captionSources,
@as("MergePolicy") mergePolicy: captionMergePolicy
}
type presets = array<preset>
type pipeline = {
@as("ThumbnailConfig") thumbnailConfig: pipelineOutputConfig,
@as("ContentConfig") contentConfig: pipelineOutputConfig,
@as("Notifications") notifications: notifications,
@as("AwsKmsKeyArn") awsKmsKeyArn: keyArn,
@as("Role") role: role,
@as("OutputBucket") outputBucket: bucketName,
@as("InputBucket") inputBucket: bucketName,
@as("Status") status: pipelineStatus,
@as("Name") name: name,
@as("Arn") arn: amazonawsString,
@as("Id") id: id
}
type jobOutput = {
@as("AppliedColorSpaceConversion") appliedColorSpaceConversion: amazonawsString,
@as("Encryption") encryption: encryption,
@as("Captions") captions: captions,
@as("Composition") composition: composition,
@as("AlbumArt") albumArt: jobAlbumArt,
@as("Watermarks") watermarks: jobWatermarks,
@as("DurationMillis") durationMillis: nullableLong,
@as("FileSize") fileSize: nullableLong,
@as("FrameRate") frameRate: floatString,
@as("Height") height: nullableInteger,
@as("Width") width: nullableInteger,
@as("Duration") duration: nullableLong,
@as("StatusDetail") statusDetail: description,
@as("Status") status: jobStatus,
@as("SegmentDuration") segmentDuration: floatString,
@as("PresetId") presetId: id,
@as("Rotate") rotate: rotate,
@as("ThumbnailEncryption") thumbnailEncryption: encryption,
@as("ThumbnailPattern") thumbnailPattern: thumbnailPattern,
@as("Key") key: key,
@as("Id") id: amazonawsString
}
type jobInput = {
@as("DetectedProperties") detectedProperties: detectedProperties,
@as("InputCaptions") inputCaptions: inputCaptions,
@as("TimeSpan") timeSpan: timeSpan,
@as("Encryption") encryption: encryption,
@as("Container") container: jobContainer,
@as("Interlaced") interlaced: interlaced,
@as("AspectRatio") aspectRatio: aspectRatio,
@as("Resolution") resolution: resolution,
@as("FrameRate") frameRate: frameRate,
@as("Key") key: longKey
}
type createJobOutput = {
@as("Encryption") encryption: encryption,
@as("Captions") captions: captions,
@as("Composition") composition: composition,
@as("AlbumArt") albumArt: jobAlbumArt,
@as("Watermarks") watermarks: jobWatermarks,
@as("SegmentDuration") segmentDuration: floatString,
@as("PresetId") presetId: id,
@as("Rotate") rotate: rotate,
@as("ThumbnailEncryption") thumbnailEncryption: encryption,
@as("ThumbnailPattern") thumbnailPattern: thumbnailPattern,
@as("Key") key: key
}
type pipelines = array<pipeline>
type jobOutputs = array<jobOutput>
type jobInputs = array<jobInput>
type createJobOutputs = array<createJobOutput>
type job = {
@as("Timing") timing: timing,
@as("UserMetadata") userMetadata: userMetadata,
@as("Status") status: jobStatus,
@as("Playlists") playlists: playlists,
@as("OutputKeyPrefix") outputKeyPrefix: key,
@as("Outputs") outputs: jobOutputs,
@as("Output") output: jobOutput,
@as("Inputs") inputs: jobInputs,
@as("Input") input: jobInput,
@as("PipelineId") pipelineId: id,
@as("Arn") arn: amazonawsString,
@as("Id") id: id
}
type jobs = array<job>
type clientType;
@module("@aws-sdk/client-elastictranscoder") @new external createClient: unit => clientType = "ElasticTranscoderClient";
module DeletePreset = {
  type t;
  type request = {
@as("Id") id: option<id>
}
  type response = unit
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "DeletePresetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePipeline = {
  type t;
  type request = {
@as("Id") id: option<id>
}
  type response = unit
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "DeletePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelJob = {
  type t;
  type request = {
@as("Id") id: option<id>
}
  type response = unit
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "CancelJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestRole = {
  type t;
  type request = {
@as("Topics") topics: option<snsTopics>,
@as("OutputBucket") outputBucket: option<bucketName>,
@as("InputBucket") inputBucket: option<bucketName>,
@as("Role") role: option<role>
}
  type response = {
@as("Messages") messages: exceptionMessages,
@as("Success") success: success
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "TestRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReadPreset = {
  type t;
  type request = {
@as("Id") id: option<id>
}
  type response = {
@as("Preset") preset: preset
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ReadPresetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePreset = {
  type t;
  type request = {
@as("Thumbnails") thumbnails: thumbnails,
@as("Audio") audio: audioParameters,
@as("Video") video: videoParameters,
@as("Container") container: option<presetContainer>,
@as("Description") description: description,
@as("Name") name: option<name>
}
  type response = {
@as("Warning") warning: amazonawsString,
@as("Preset") preset: preset
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "CreatePresetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePipelineStatus = {
  type t;
  type request = {
@as("Status") status: option<pipelineStatus>,
@as("Id") id: option<id>
}
  type response = {
@as("Pipeline") pipeline: pipeline
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "UpdatePipelineStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePipelineNotifications = {
  type t;
  type request = {
@as("Notifications") notifications: option<notifications>,
@as("Id") id: option<id>
}
  type response = {
@as("Pipeline") pipeline: pipeline
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "UpdatePipelineNotificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePipeline = {
  type t;
  type request = {
@as("ThumbnailConfig") thumbnailConfig: pipelineOutputConfig,
@as("ContentConfig") contentConfig: pipelineOutputConfig,
@as("Notifications") notifications: notifications,
@as("AwsKmsKeyArn") awsKmsKeyArn: keyArn,
@as("Role") role: role,
@as("InputBucket") inputBucket: bucketName,
@as("Name") name: name,
@as("Id") id: option<id>
}
  type response = {
@as("Warnings") warnings: warnings,
@as("Pipeline") pipeline: pipeline
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "UpdatePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReadPipeline = {
  type t;
  type request = {
@as("Id") id: option<id>
}
  type response = {
@as("Warnings") warnings: warnings,
@as("Pipeline") pipeline: pipeline
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ReadPipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPresets = {
  type t;
  type request = {
@as("PageToken") pageToken: id,
@as("Ascending") ascending: ascending
}
  type response = {
@as("NextPageToken") nextPageToken: id,
@as("Presets") presets: presets
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ListPresetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePipeline = {
  type t;
  type request = {
@as("ThumbnailConfig") thumbnailConfig: pipelineOutputConfig,
@as("ContentConfig") contentConfig: pipelineOutputConfig,
@as("Notifications") notifications: notifications,
@as("AwsKmsKeyArn") awsKmsKeyArn: keyArn,
@as("Role") role: option<role>,
@as("OutputBucket") outputBucket: bucketName,
@as("InputBucket") inputBucket: option<bucketName>,
@as("Name") name: option<name>
}
  type response = {
@as("Warnings") warnings: warnings,
@as("Pipeline") pipeline: pipeline
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "CreatePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPipelines = {
  type t;
  type request = {
@as("PageToken") pageToken: id,
@as("Ascending") ascending: ascending
}
  type response = {
@as("NextPageToken") nextPageToken: id,
@as("Pipelines") pipelines: pipelines
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ListPipelinesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReadJob = {
  type t;
  type request = {
@as("Id") id: option<id>
}
  type response = {
@as("Job") job: job
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ReadJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateJob = {
  type t;
  type request = {
@as("UserMetadata") userMetadata: userMetadata,
@as("Playlists") playlists: createJobPlaylists,
@as("OutputKeyPrefix") outputKeyPrefix: key,
@as("Outputs") outputs: createJobOutputs,
@as("Output") output: createJobOutput,
@as("Inputs") inputs: jobInputs,
@as("Input") input: jobInput,
@as("PipelineId") pipelineId: option<id>
}
  type response = {
@as("Job") job: job
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "CreateJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobsByStatus = {
  type t;
  type request = {
@as("PageToken") pageToken: id,
@as("Ascending") ascending: ascending,
@as("Status") status: option<jobStatus>
}
  type response = {
@as("NextPageToken") nextPageToken: id,
@as("Jobs") jobs: jobs
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ListJobsByStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobsByPipeline = {
  type t;
  type request = {
@as("PageToken") pageToken: id,
@as("Ascending") ascending: ascending,
@as("PipelineId") pipelineId: option<id>
}
  type response = {
@as("NextPageToken") nextPageToken: id,
@as("Jobs") jobs: jobs
}
  @module("@aws-sdk/client-elastictranscoder") @new external new_: (request) => t = "ListJobsByPipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
