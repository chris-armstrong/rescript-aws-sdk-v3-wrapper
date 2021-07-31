type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ivs") @new external createClient: unit => awsServiceClient = "IvsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type errorMessage = string
type errorCode = string
type tagValue = string
type tagKey = string
type string_ = string
type streamViewerCount = float
type streamState = [@as("OFFLINE") #OFFLINE | @as("LIVE") #LIVE]
type streamStartTime = Js.Date.t
type streamMetadata = string
type streamKeyValue = string
type streamKeyArn = string
type streamHealth = [@as("UNKNOWN") #UNKNOWN | @as("STARVING") #STARVING | @as("HEALTHY") #HEALTHY]
type s3DestinationBucketName = string
type resourceArn = string
type recordingConfigurationState = [
  | @as("ACTIVE") #ACTIVE
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATING") #CREATING
]
type recordingConfigurationName = string
type recordingConfigurationArn = string
type playbackURL = string
type playbackPublicKeyMaterial = string
type playbackKeyPairName = string
type playbackKeyPairFingerprint = string
type playbackKeyPairArn = string
type paginationToken = string
type maxTagResults = int
type maxStreamResults = int
type maxStreamKeyResults = int
type maxRecordingConfigurationResults = int
type maxPlaybackKeyPairResults = int
type maxChannelResults = int
type isAuthorized = bool
type ingestEndpoint = string
type channelType = [@as("STANDARD") #STANDARD | @as("BASIC") #BASIC]
type channelRecordingConfigurationArn = string
type channelName = string
type channelLatencyMode = [@as("LOW") #LOW | @as("NORMAL") #NORMAL]
type channelArn = string
type boolean_ = bool
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type streamSummary = {
  startTime: option<streamStartTime>,
  viewerCount: option<streamViewerCount>,
  health: option<streamHealth>,
  state: option<streamState>,
  channelArn: option<channelArn>,
}
type streamKeyArnList = array<streamKeyArn>
type stream = {
  viewerCount: option<streamViewerCount>,
  health: option<streamHealth>,
  state: option<streamState>,
  startTime: option<streamStartTime>,
  playbackUrl: option<playbackURL>,
  channelArn: option<channelArn>,
}
type s3DestinationConfiguration = {bucketName: s3DestinationBucketName}
type channelArnList = array<channelArn>
type batchError = {
  message: option<errorMessage>,
  code: option<errorCode>,
  arn: option<resourceArn>,
}
type streamList = array<streamSummary>
type streamKeySummary = {
  tags: option<tags>,
  channelArn: option<channelArn>,
  arn: option<streamKeyArn>,
}
type streamKey = {
  tags: option<tags>,
  channelArn: option<channelArn>,
  value: option<streamKeyValue>,
  arn: option<streamKeyArn>,
}
type playbackKeyPairSummary = {
  tags: option<tags>,
  name: option<playbackKeyPairName>,
  arn: option<playbackKeyPairArn>,
}
type playbackKeyPair = {
  tags: option<tags>,
  fingerprint: option<playbackKeyPairFingerprint>,
  name: option<playbackKeyPairName>,
  arn: option<playbackKeyPairArn>,
}
type destinationConfiguration = {s3: option<s3DestinationConfiguration>}
type channelSummary = {
  tags: option<tags>,
  recordingConfigurationArn: option<channelRecordingConfigurationArn>,
  authorized: option<isAuthorized>,
  latencyMode: option<channelLatencyMode>,
  name: option<channelName>,
  arn: option<channelArn>,
}
type channel = {
  tags: option<tags>,
  authorized: option<isAuthorized>,
  playbackUrl: option<playbackURL>,
  ingestEndpoint: option<ingestEndpoint>,
  recordingConfigurationArn: option<channelRecordingConfigurationArn>,
  @as("type") type_: option<channelType>,
  latencyMode: option<channelLatencyMode>,
  name: option<channelName>,
  arn: option<channelArn>,
}
type batchErrors = array<batchError>
type streamKeys = array<streamKey>
type streamKeyList = array<streamKeySummary>
type recordingConfigurationSummary = {
  tags: option<tags>,
  state: recordingConfigurationState,
  destinationConfiguration: destinationConfiguration,
  name: option<recordingConfigurationName>,
  arn: recordingConfigurationArn,
}
type recordingConfiguration = {
  tags: option<tags>,
  state: recordingConfigurationState,
  destinationConfiguration: destinationConfiguration,
  name: option<recordingConfigurationName>,
  arn: recordingConfigurationArn,
}
type playbackKeyPairList = array<playbackKeyPairSummary>
type channels = array<channel>
type channelList = array<channelSummary>
type recordingConfigurationList = array<recordingConfigurationSummary>

module StopStream = {
  type t
  type request = {channelArn: channelArn}
  type response = unit
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "StopStreamCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutMetadata = {
  type t
  type request = {
    metadata: streamMetadata,
    channelArn: channelArn,
  }

  @module("@aws-sdk/client-ivs") @new external new_: request => t = "PutMetadataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteStreamKey = {
  type t
  type request = {arn: streamKeyArn}

  @module("@aws-sdk/client-ivs") @new external new_: request => t = "DeleteStreamKeyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRecordingConfiguration = {
  type t
  type request = {arn: recordingConfigurationArn}

  @module("@aws-sdk/client-ivs") @new
  external new_: request => t = "DeleteRecordingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePlaybackKeyPair = {
  type t
  type request = {arn: playbackKeyPairArn}
  type response = unit
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "DeletePlaybackKeyPairCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteChannel = {
  type t
  type request = {arn: channelArn}

  @module("@aws-sdk/client-ivs") @new external new_: request => t = "DeleteChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tags,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    maxResults: option<maxTagResults>,
    nextToken: option<string_>,
    resourceArn: resourceArn,
  }
  type response = {
    nextToken: option<string_>,
    tags: tags,
  }
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStream = {
  type t
  type request = {channelArn: channelArn}
  type response = {stream: option<stream>}
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "GetStreamCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChannel = {
  type t
  type request = {
    recordingConfigurationArn: option<channelRecordingConfigurationArn>,
    authorized: option<boolean_>,
    @as("type") type_: option<channelType>,
    latencyMode: option<channelLatencyMode>,
    name: option<channelName>,
    arn: channelArn,
  }
  type response = {channel: option<channel>}
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "UpdateChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreams = {
  type t
  type request = {
    maxResults: option<maxStreamResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    streams: streamList,
  }
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "ListStreamsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportPlaybackKeyPair = {
  type t
  type request = {
    tags: option<tags>,
    name: option<playbackKeyPairName>,
    publicKeyMaterial: playbackPublicKeyMaterial,
  }
  type response = {keyPair: option<playbackKeyPair>}
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "ImportPlaybackKeyPairCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStreamKey = {
  type t
  type request = {arn: streamKeyArn}
  type response = {streamKey: option<streamKey>}
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "GetStreamKeyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPlaybackKeyPair = {
  type t
  type request = {arn: playbackKeyPairArn}
  type response = {keyPair: option<playbackKeyPair>}
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "GetPlaybackKeyPairCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetChannel = {
  type t
  type request = {arn: channelArn}
  type response = {channel: option<channel>}
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "GetChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStreamKey = {
  type t
  type request = {
    tags: option<tags>,
    channelArn: channelArn,
  }
  type response = {streamKey: option<streamKey>}
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "CreateStreamKeyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChannel = {
  type t
  type request = {
    tags: option<tags>,
    recordingConfigurationArn: option<channelRecordingConfigurationArn>,
    authorized: option<boolean_>,
    @as("type") type_: option<channelType>,
    latencyMode: option<channelLatencyMode>,
    name: option<channelName>,
  }
  type response = {
    streamKey: option<streamKey>,
    channel: option<channel>,
  }
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "CreateChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreamKeys = {
  type t
  type request = {
    maxResults: option<maxStreamKeyResults>,
    nextToken: option<paginationToken>,
    channelArn: channelArn,
  }
  type response = {
    nextToken: option<paginationToken>,
    streamKeys: streamKeyList,
  }
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "ListStreamKeysCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPlaybackKeyPairs = {
  type t
  type request = {
    maxResults: option<maxPlaybackKeyPairResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    keyPairs: playbackKeyPairList,
  }
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "ListPlaybackKeyPairsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannels = {
  type t
  type request = {
    maxResults: option<maxChannelResults>,
    nextToken: option<paginationToken>,
    filterByRecordingConfigurationArn: option<channelRecordingConfigurationArn>,
    filterByName: option<channelName>,
  }
  type response = {
    nextToken: option<paginationToken>,
    channels: channelList,
  }
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "ListChannelsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRecordingConfiguration = {
  type t
  type request = {arn: recordingConfigurationArn}
  type response = {recordingConfiguration: option<recordingConfiguration>}
  @module("@aws-sdk/client-ivs") @new
  external new_: request => t = "GetRecordingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRecordingConfiguration = {
  type t
  type request = {
    tags: option<tags>,
    destinationConfiguration: destinationConfiguration,
    name: option<recordingConfigurationName>,
  }
  type response = {recordingConfiguration: option<recordingConfiguration>}
  @module("@aws-sdk/client-ivs") @new
  external new_: request => t = "CreateRecordingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetStreamKey = {
  type t
  type request = {arns: streamKeyArnList}
  type response = {
    errors: option<batchErrors>,
    streamKeys: option<streamKeys>,
  }
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "BatchGetStreamKeyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetChannel = {
  type t
  type request = {arns: channelArnList}
  type response = {
    errors: option<batchErrors>,
    channels: option<channels>,
  }
  @module("@aws-sdk/client-ivs") @new external new_: request => t = "BatchGetChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecordingConfigurations = {
  type t
  type request = {
    maxResults: option<maxRecordingConfigurationResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    recordingConfigurations: recordingConfigurationList,
  }
  @module("@aws-sdk/client-ivs") @new
  external new_: request => t = "ListRecordingConfigurationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
