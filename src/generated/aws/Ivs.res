type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type errorMessage = string
type errorCode = string
type tagValue = string
type tagKey = string
type amazonawsString = string
type streamViewerCount = float;
type streamState = [@as("OFFLINE") #OFFLINE | @as("LIVE") #LIVE]
type streamStartTime = Js.Date.t;
type streamMetadata = string
type streamKeyValue = string
type streamKeyArn = string
type streamHealth = [@as("UNKNOWN") #UNKNOWN | @as("STARVING") #STARVING | @as("HEALTHY") #HEALTHY]
type s3DestinationBucketName = string
type resourceArn = string
type recordingConfigurationState = [@as("ACTIVE") #ACTIVE | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATING") #CREATING]
type recordingConfigurationName = string
type recordingConfigurationArn = string
type playbackURL = string
type playbackPublicKeyMaterial = string
type playbackKeyPairName = string
type playbackKeyPairFingerprint = string
type playbackKeyPairArn = string
type paginationToken = string
type maxTagResults = int;
type maxStreamResults = int;
type maxStreamKeyResults = int;
type maxRecordingConfigurationResults = int;
type maxPlaybackKeyPairResults = int;
type maxChannelResults = int;
type isAuthorized = bool;
type ingestEndpoint = string
type channelType = [@as("STANDARD") #STANDARD | @as("BASIC") #BASIC]
type channelRecordingConfigurationArn = string
type channelName = string
type channelLatencyMode = [@as("LOW") #LOW | @as("NORMAL") #NORMAL]
type channelArn = string
type amazonawsBoolean = bool;
type tags = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type streamSummary = {
@as("startTime") startTime: streamStartTime,
@as("viewerCount") viewerCount: streamViewerCount,
@as("health") health: streamHealth,
@as("state") state: streamState,
@as("channelArn") channelArn: channelArn
}
type streamKeyArnList = array<streamKeyArn>
type stream = {
@as("viewerCount") viewerCount: streamViewerCount,
@as("health") health: streamHealth,
@as("state") state: streamState,
@as("startTime") startTime: streamStartTime,
@as("playbackUrl") playbackUrl: playbackURL,
@as("channelArn") channelArn: channelArn
}
type s3DestinationConfiguration = {
@as("bucketName") bucketName: option<s3DestinationBucketName>
}
type channelArnList = array<channelArn>
type batchError = {
@as("message") message: errorMessage,
@as("code") code: errorCode,
@as("arn") arn: resourceArn
}
type streamList = array<streamSummary>
type streamKeySummary = {
@as("tags") tags: tags,
@as("channelArn") channelArn: channelArn,
@as("arn") arn: streamKeyArn
}
type streamKey = {
@as("tags") tags: tags,
@as("channelArn") channelArn: channelArn,
@as("value") value: streamKeyValue,
@as("arn") arn: streamKeyArn
}
type playbackKeyPairSummary = {
@as("tags") tags: tags,
@as("name") name: playbackKeyPairName,
@as("arn") arn: playbackKeyPairArn
}
type playbackKeyPair = {
@as("tags") tags: tags,
@as("fingerprint") fingerprint: playbackKeyPairFingerprint,
@as("name") name: playbackKeyPairName,
@as("arn") arn: playbackKeyPairArn
}
type destinationConfiguration = {
@as("s3") s3: s3DestinationConfiguration
}
type channelSummary = {
@as("tags") tags: tags,
@as("recordingConfigurationArn") recordingConfigurationArn: channelRecordingConfigurationArn,
@as("authorized") authorized: isAuthorized,
@as("latencyMode") latencyMode: channelLatencyMode,
@as("name") name: channelName,
@as("arn") arn: channelArn
}
type channel = {
@as("tags") tags: tags,
@as("authorized") authorized: isAuthorized,
@as("playbackUrl") playbackUrl: playbackURL,
@as("ingestEndpoint") ingestEndpoint: ingestEndpoint,
@as("recordingConfigurationArn") recordingConfigurationArn: channelRecordingConfigurationArn,
@as("type") type_: channelType,
@as("latencyMode") latencyMode: channelLatencyMode,
@as("name") name: channelName,
@as("arn") arn: channelArn
}
type batchErrors = array<batchError>
type streamKeys = array<streamKey>
type streamKeyList = array<streamKeySummary>
type recordingConfigurationSummary = {
@as("tags") tags: tags,
@as("state") state: option<recordingConfigurationState>,
@as("destinationConfiguration") destinationConfiguration: option<destinationConfiguration>,
@as("name") name: recordingConfigurationName,
@as("arn") arn: option<recordingConfigurationArn>
}
type recordingConfiguration = {
@as("tags") tags: tags,
@as("state") state: option<recordingConfigurationState>,
@as("destinationConfiguration") destinationConfiguration: option<destinationConfiguration>,
@as("name") name: recordingConfigurationName,
@as("arn") arn: option<recordingConfigurationArn>
}
type playbackKeyPairList = array<playbackKeyPairSummary>
type channels = array<channel>
type channelList = array<channelSummary>
type recordingConfigurationList = array<recordingConfigurationSummary>
type clientType;
@module("@aws-sdk/client-ivs") @new external createClient: unit => clientType = "IvsClient";
module StopStream = {
  type t;
  type request = {
@as("channelArn") channelArn: option<channelArn>
}
  type response = unit
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "StopStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutMetadata = {
  type t;
  type request = {
@as("metadata") metadata: option<streamMetadata>,
@as("channelArn") channelArn: option<channelArn>
}
  
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "PutMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteStreamKey = {
  type t;
  type request = {
@as("arn") arn: option<streamKeyArn>
}
  
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "DeleteStreamKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRecordingConfiguration = {
  type t;
  type request = {
@as("arn") arn: option<recordingConfigurationArn>
}
  
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "DeleteRecordingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePlaybackKeyPair = {
  type t;
  type request = {
@as("arn") arn: option<playbackKeyPairArn>
}
  type response = unit
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "DeletePlaybackKeyPairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteChannel = {
  type t;
  type request = {
@as("arn") arn: option<channelArn>
}
  
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "DeleteChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tags>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("maxResults") maxResults: maxTagResults,
@as("nextToken") nextToken: amazonawsString,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("tags") tags: option<tags>
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStream = {
  type t;
  type request = {
@as("channelArn") channelArn: option<channelArn>
}
  type response = {
@as("stream") stream: stream
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "GetStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateChannel = {
  type t;
  type request = {
@as("recordingConfigurationArn") recordingConfigurationArn: channelRecordingConfigurationArn,
@as("authorized") authorized: amazonawsBoolean,
@as("type") type_: channelType,
@as("latencyMode") latencyMode: channelLatencyMode,
@as("name") name: channelName,
@as("arn") arn: option<channelArn>
}
  type response = {
@as("channel") channel: channel
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "UpdateChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStreams = {
  type t;
  type request = {
@as("maxResults") maxResults: maxStreamResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("streams") streams: option<streamList>
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "ListStreamsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportPlaybackKeyPair = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("name") name: playbackKeyPairName,
@as("publicKeyMaterial") publicKeyMaterial: option<playbackPublicKeyMaterial>
}
  type response = {
@as("keyPair") keyPair: playbackKeyPair
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "ImportPlaybackKeyPairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStreamKey = {
  type t;
  type request = {
@as("arn") arn: option<streamKeyArn>
}
  type response = {
@as("streamKey") streamKey: streamKey
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "GetStreamKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPlaybackKeyPair = {
  type t;
  type request = {
@as("arn") arn: option<playbackKeyPairArn>
}
  type response = {
@as("keyPair") keyPair: playbackKeyPair
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "GetPlaybackKeyPairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetChannel = {
  type t;
  type request = {
@as("arn") arn: option<channelArn>
}
  type response = {
@as("channel") channel: channel
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "GetChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStreamKey = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("channelArn") channelArn: option<channelArn>
}
  type response = {
@as("streamKey") streamKey: streamKey
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "CreateStreamKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateChannel = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("recordingConfigurationArn") recordingConfigurationArn: channelRecordingConfigurationArn,
@as("authorized") authorized: amazonawsBoolean,
@as("type") type_: channelType,
@as("latencyMode") latencyMode: channelLatencyMode,
@as("name") name: channelName
}
  type response = {
@as("streamKey") streamKey: streamKey,
@as("channel") channel: channel
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "CreateChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStreamKeys = {
  type t;
  type request = {
@as("maxResults") maxResults: maxStreamKeyResults,
@as("nextToken") nextToken: paginationToken,
@as("channelArn") channelArn: option<channelArn>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("streamKeys") streamKeys: option<streamKeyList>
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "ListStreamKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPlaybackKeyPairs = {
  type t;
  type request = {
@as("maxResults") maxResults: maxPlaybackKeyPairResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("keyPairs") keyPairs: option<playbackKeyPairList>
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "ListPlaybackKeyPairsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChannels = {
  type t;
  type request = {
@as("maxResults") maxResults: maxChannelResults,
@as("nextToken") nextToken: paginationToken,
@as("filterByRecordingConfigurationArn") filterByRecordingConfigurationArn: channelRecordingConfigurationArn,
@as("filterByName") filterByName: channelName
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("channels") channels: option<channelList>
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "ListChannelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRecordingConfiguration = {
  type t;
  type request = {
@as("arn") arn: option<recordingConfigurationArn>
}
  type response = {
@as("recordingConfiguration") recordingConfiguration: recordingConfiguration
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "GetRecordingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRecordingConfiguration = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("destinationConfiguration") destinationConfiguration: option<destinationConfiguration>,
@as("name") name: recordingConfigurationName
}
  type response = {
@as("recordingConfiguration") recordingConfiguration: recordingConfiguration
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "CreateRecordingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetStreamKey = {
  type t;
  type request = {
@as("arns") arns: option<streamKeyArnList>
}
  type response = {
@as("errors") errors: batchErrors,
@as("streamKeys") streamKeys: streamKeys
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "BatchGetStreamKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetChannel = {
  type t;
  type request = {
@as("arns") arns: option<channelArnList>
}
  type response = {
@as("errors") errors: batchErrors,
@as("channels") channels: channels
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "BatchGetChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRecordingConfigurations = {
  type t;
  type request = {
@as("maxResults") maxResults: maxRecordingConfigurationResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("recordingConfigurations") recordingConfigurations: option<recordingConfigurationList>
}
  @module("@aws-sdk/client-ivs") @new external new_: (request) => t = "ListRecordingConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
