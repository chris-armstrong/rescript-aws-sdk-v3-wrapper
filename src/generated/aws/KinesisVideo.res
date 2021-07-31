type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type version = string
type updateDataRetentionOperation = [@as("DECREASE_DATA_RETENTION") #DECREASE_DATA_RETENTION | @as("INCREASE_DATA_RETENTION") #INCREASE_DATA_RETENTION]
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type streamName = string
type status = [@as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type resourceEndpoint = string
type resourceARN = string
type nextToken = string
type messageTtlSeconds = int;
type mediaType = string
type listStreamsInputLimit = int;
type kmsKeyId = string
type errorMessage = string
type deviceName = string
type dataRetentionInHours = int;
type dataRetentionChangeInHours = int;
type dataEndpoint = string
type comparisonOperator = [@as("BEGINS_WITH") #BEGINS_WITH]
type channelType = [@as("SINGLE_MASTER") #SINGLE_MASTER]
type channelRole = [@as("VIEWER") #VIEWER | @as("MASTER") #MASTER]
type channelProtocol = [@as("HTTPS") #HTTPS | @as("WSS") #WSS]
type channelName = string
type aPIName = [@as("GET_CLIP") #GET_CLIP | @as("GET_DASH_STREAMING_SESSION_URL") #GET_DASH_STREAMING_SESSION_URL | @as("GET_HLS_STREAMING_SESSION_URL") #GET_HLS_STREAMING_SESSION_URL | @as("GET_MEDIA_FOR_FRAGMENT_LIST") #GET_MEDIA_FOR_FRAGMENT_LIST | @as("LIST_FRAGMENTS") #LIST_FRAGMENTS | @as("GET_MEDIA") #GET_MEDIA | @as("PUT_MEDIA") #PUT_MEDIA]
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type streamNameCondition = {
@as("ComparisonValue") comparisonValue: streamName,
@as("ComparisonOperator") comparisonOperator: comparisonOperator
}
type streamInfo = {
@as("DataRetentionInHours") dataRetentionInHours: dataRetentionInHours,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Status") status: status,
@as("Version") version: version,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("MediaType") mediaType: mediaType,
@as("StreamARN") streamARN: resourceARN,
@as("StreamName") streamName: streamName,
@as("DeviceName") deviceName: deviceName
}
type singleMasterConfiguration = {
@as("MessageTtlSeconds") messageTtlSeconds: messageTtlSeconds
}
type resourceTags = Js.Dict.t< tagValue>
type resourceEndpointListItem = {
@as("ResourceEndpoint") resourceEndpoint: resourceEndpoint,
@as("Protocol") protocol: channelProtocol
}
type listOfProtocols = array<channelProtocol>
type channelNameCondition = {
@as("ComparisonValue") comparisonValue: channelName,
@as("ComparisonOperator") comparisonOperator: comparisonOperator
}
type tagOnCreateList = array<tag>
type tagList = array<tag>
type streamInfoList = array<streamInfo>
type singleMasterChannelEndpointConfiguration = {
@as("Role") role: channelRole,
@as("Protocols") protocols: listOfProtocols
}
type resourceEndpointList = array<resourceEndpointListItem>
type channelInfo = {
@as("Version") version: version,
@as("SingleMasterConfiguration") singleMasterConfiguration: singleMasterConfiguration,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("ChannelStatus") channelStatus: status,
@as("ChannelType") channelType: channelType,
@as("ChannelARN") channelARN: resourceARN,
@as("ChannelName") channelName: channelName
}
type channelInfoList = array<channelInfo>
type clientType;
@module("@aws-sdk/client-kinesisvideo") @new external createClient: unit => clientType = "KinesisVideoClient";
module UpdateStream = {
  type t;
  type request = {
@as("MediaType") mediaType: mediaType,
@as("DeviceName") deviceName: deviceName,
@as("CurrentVersion") currentVersion: option<version>,
@as("StreamARN") streamARN: resourceARN,
@as("StreamName") streamName: streamName
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "UpdateStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDataRetention = {
  type t;
  type request = {
@as("DataRetentionChangeInHours") dataRetentionChangeInHours: option<dataRetentionChangeInHours>,
@as("Operation") operation: option<updateDataRetentionOperation>,
@as("CurrentVersion") currentVersion: option<version>,
@as("StreamARN") streamARN: resourceARN,
@as("StreamName") streamName: streamName
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "UpdateDataRetentionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDataEndpoint = {
  type t;
  type request = {
@as("APIName") aPIName: option<aPIName>,
@as("StreamARN") streamARN: resourceARN,
@as("StreamName") streamName: streamName
}
  type response = {
@as("DataEndpoint") dataEndpoint: dataEndpoint
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "GetDataEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStream = {
  type t;
  type request = {
@as("CurrentVersion") currentVersion: version,
@as("StreamARN") streamARN: option<resourceARN>
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "DeleteStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSignalingChannel = {
  type t;
  type request = {
@as("CurrentVersion") currentVersion: version,
@as("ChannelARN") channelARN: option<resourceARN>
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "DeleteSignalingChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSignalingChannel = {
  type t;
  type request = {
@as("SingleMasterConfiguration") singleMasterConfiguration: singleMasterConfiguration,
@as("CurrentVersion") currentVersion: option<version>,
@as("ChannelARN") channelARN: option<resourceARN>
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "UpdateSignalingChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagStream = {
  type t;
  type request = {
@as("TagKeyList") tagKeyList: option<tagKeyList>,
@as("StreamName") streamName: streamName,
@as("StreamARN") streamARN: resourceARN
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "UntagStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeyList") tagKeyList: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagStream = {
  type t;
  type request = {
@as("Tags") tags: option<resourceTags>,
@as("StreamName") streamName: streamName,
@as("StreamARN") streamARN: resourceARN
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "TagStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForStream = {
  type t;
  type request = {
@as("StreamName") streamName: streamName,
@as("StreamARN") streamARN: resourceARN,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("Tags") tags: resourceTags,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "ListTagsForStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<resourceARN>,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("Tags") tags: resourceTags,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStream = {
  type t;
  type request = {
@as("StreamARN") streamARN: resourceARN,
@as("StreamName") streamName: streamName
}
  type response = {
@as("StreamInfo") streamInfo: streamInfo
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "DescribeStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStream = {
  type t;
  type request = {
@as("Tags") tags: resourceTags,
@as("DataRetentionInHours") dataRetentionInHours: dataRetentionInHours,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("MediaType") mediaType: mediaType,
@as("StreamName") streamName: option<streamName>,
@as("DeviceName") deviceName: deviceName
}
  type response = {
@as("StreamARN") streamARN: resourceARN
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "CreateStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStreams = {
  type t;
  type request = {
@as("StreamNameCondition") streamNameCondition: streamNameCondition,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: listStreamsInputLimit
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("StreamInfoList") streamInfoList: streamInfoList
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "ListStreamsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSignalingChannelEndpoint = {
  type t;
  type request = {
@as("SingleMasterChannelEndpointConfiguration") singleMasterChannelEndpointConfiguration: singleMasterChannelEndpointConfiguration,
@as("ChannelARN") channelARN: option<resourceARN>
}
  type response = {
@as("ResourceEndpointList") resourceEndpointList: resourceEndpointList
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "GetSignalingChannelEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSignalingChannel = {
  type t;
  type request = {
@as("ChannelARN") channelARN: resourceARN,
@as("ChannelName") channelName: channelName
}
  type response = {
@as("ChannelInfo") channelInfo: channelInfo
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "DescribeSignalingChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSignalingChannel = {
  type t;
  type request = {
@as("Tags") tags: tagOnCreateList,
@as("SingleMasterConfiguration") singleMasterConfiguration: singleMasterConfiguration,
@as("ChannelType") channelType: channelType,
@as("ChannelName") channelName: option<channelName>
}
  type response = {
@as("ChannelARN") channelARN: resourceARN
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "CreateSignalingChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSignalingChannels = {
  type t;
  type request = {
@as("ChannelNameCondition") channelNameCondition: channelNameCondition,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: listStreamsInputLimit
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ChannelInfoList") channelInfoList: channelInfoList
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "ListSignalingChannelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
