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
type long = float
type version = string
type updateDataRetentionOperation = [@as("DECREASE_DATA_RETENTION") #DECREASEDATARETENTION | @as("INCREASE_DATA_RETENTION") #INCREASEDATARETENTION]
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type streamName = string
type status = [@as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type resourceEndpoint = string
type resourceARN = string
type nextToken = string
type messageTtlSeconds = int
type mediaType = string
type listStreamsInputLimit = int
type kmsKeyId = string
type errorMessage = string
type deviceName = string
type dataRetentionInHours = int
type dataRetentionChangeInHours = int
type dataEndpoint = string
type comparisonOperator = [@as("BEGINS_WITH") #BEGINSWITH]
type channelType = [@as("SINGLE_MASTER") #SINGLEMASTER]
type channelRole = [@as("VIEWER") #VIEWER | @as("MASTER") #MASTER]
type channelProtocol = [@as("HTTPS") #HTTPS | @as("WSS") #WSS]
type channelName = string
type apiname = [@as("GET_CLIP") #GETCLIP | @as("GET_DASH_STREAMING_SESSION_URL") #GETDASHSTREAMINGSESSIONURL | @as("GET_HLS_STREAMING_SESSION_URL") #GETHLSSTREAMINGSESSIONURL | @as("GET_MEDIA_FOR_FRAGMENT_LIST") #GETMEDIAFORFRAGMENTLIST | @as("LIST_FRAGMENTS") #LISTFRAGMENTS | @as("GET_MEDIA") #GETMEDIA | @as("PUT_MEDIA") #PUTMEDIA]
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type streamNameCondition = {
@as("ComparisonValue") comparisonValue: option<streamName>,
@as("ComparisonOperator") comparisonOperator: option<comparisonOperator>
}
type streamInfo = {
@as("DataRetentionInHours") dataRetentionInHours: option<dataRetentionInHours>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Status") status: option<status>,
@as("Version") version: option<version>,
@as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
@as("MediaType") mediaType: option<mediaType>,
@as("StreamARN") streamARN: option<resourceARN>,
@as("StreamName") streamName: option<streamName>,
@as("DeviceName") deviceName: option<deviceName>
}
type singleMasterConfiguration = {
@as("MessageTtlSeconds") messageTtlSeconds: option<messageTtlSeconds>
}
type resourceTags = Js.Dict.t< tagValue>
type resourceEndpointListItem = {
@as("ResourceEndpoint") resourceEndpoint: option<resourceEndpoint>,
@as("Protocol") protocol: option<channelProtocol>
}
type listOfProtocols = array<channelProtocol>
type channelNameCondition = {
@as("ComparisonValue") comparisonValue: option<channelName>,
@as("ComparisonOperator") comparisonOperator: option<comparisonOperator>
}
type tagOnCreateList = array<tag>
type tagList_ = array<tag>
type streamInfoList = array<streamInfo>
type singleMasterChannelEndpointConfiguration = {
@as("Role") role: option<channelRole>,
@as("Protocols") protocols: option<listOfProtocols>
}
type resourceEndpointList = array<resourceEndpointListItem>
type channelInfo = {
@as("Version") version: option<version>,
@as("SingleMasterConfiguration") singleMasterConfiguration: option<singleMasterConfiguration>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("ChannelStatus") channelStatus: option<status>,
@as("ChannelType") channelType: option<channelType>,
@as("ChannelARN") channelARN: option<resourceARN>,
@as("ChannelName") channelName: option<channelName>
}
type channelInfoList = array<channelInfo>
type awsServiceClient;
@module("@aws-sdk/client-kinesisvideo") @new external createClient: unit => awsServiceClient = "KinesisVideoClient";
module UpdateStream = {
  type t;
  type request = {
@as("MediaType") mediaType: option<mediaType>,
@as("DeviceName") deviceName: option<deviceName>,
@as("CurrentVersion") currentVersion: version,
@as("StreamARN") streamARN: option<resourceARN>,
@as("StreamName") streamName: option<streamName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "UpdateStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDataRetention = {
  type t;
  type request = {
@as("DataRetentionChangeInHours") dataRetentionChangeInHours: dataRetentionChangeInHours,
@as("Operation") operation: updateDataRetentionOperation,
@as("CurrentVersion") currentVersion: version,
@as("StreamARN") streamARN: option<resourceARN>,
@as("StreamName") streamName: option<streamName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "UpdateDataRetentionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDataEndpoint = {
  type t;
  type request = {
@as("APIName") apiname: apiname,
@as("StreamARN") streamARN: option<resourceARN>,
@as("StreamName") streamName: option<streamName>
}
  type response = {
@as("DataEndpoint") dataEndpoint: option<dataEndpoint>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "GetDataEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStream = {
  type t;
  type request = {
@as("CurrentVersion") currentVersion: option<version>,
@as("StreamARN") streamARN: resourceARN
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "DeleteStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSignalingChannel = {
  type t;
  type request = {
@as("CurrentVersion") currentVersion: option<version>,
@as("ChannelARN") channelARN: resourceARN
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "DeleteSignalingChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSignalingChannel = {
  type t;
  type request = {
@as("SingleMasterConfiguration") singleMasterConfiguration: option<singleMasterConfiguration>,
@as("CurrentVersion") currentVersion: version,
@as("ChannelARN") channelARN: resourceARN
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "UpdateSignalingChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagStream = {
  type t;
  type request = {
@as("TagKeyList") tagKeyList: tagKeyList,
@as("StreamName") streamName: option<streamName>,
@as("StreamARN") streamARN: option<resourceARN>
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "UntagStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeyList") tagKeyList: tagKeyList,
@as("ResourceARN") resourceARN: resourceARN
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagStream = {
  type t;
  type request = {
@as("Tags") tags: resourceTags,
@as("StreamName") streamName: option<streamName>,
@as("StreamARN") streamARN: option<resourceARN>
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "TagStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForStream = {
  type t;
  type request = {
@as("StreamName") streamName: option<streamName>,
@as("StreamARN") streamARN: option<resourceARN>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("Tags") tags: option<resourceTags>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "ListTagsForStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: resourceARN,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("Tags") tags: option<resourceTags>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStream = {
  type t;
  type request = {
@as("StreamARN") streamARN: option<resourceARN>,
@as("StreamName") streamName: option<streamName>
}
  type response = {
@as("StreamInfo") streamInfo: option<streamInfo>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "DescribeStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStream = {
  type t;
  type request = {
@as("Tags") tags: option<resourceTags>,
@as("DataRetentionInHours") dataRetentionInHours: option<dataRetentionInHours>,
@as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
@as("MediaType") mediaType: option<mediaType>,
@as("StreamName") streamName: streamName,
@as("DeviceName") deviceName: option<deviceName>
}
  type response = {
@as("StreamARN") streamARN: option<resourceARN>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "CreateStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceARN") resourceARN: resourceARN
}
  type response = unit
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStreams = {
  type t;
  type request = {
@as("StreamNameCondition") streamNameCondition: option<streamNameCondition>,
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<listStreamsInputLimit>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("StreamInfoList") streamInfoList: option<streamInfoList>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "ListStreamsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSignalingChannelEndpoint = {
  type t;
  type request = {
@as("SingleMasterChannelEndpointConfiguration") singleMasterChannelEndpointConfiguration: option<singleMasterChannelEndpointConfiguration>,
@as("ChannelARN") channelARN: resourceARN
}
  type response = {
@as("ResourceEndpointList") resourceEndpointList: option<resourceEndpointList>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "GetSignalingChannelEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSignalingChannel = {
  type t;
  type request = {
@as("ChannelARN") channelARN: option<resourceARN>,
@as("ChannelName") channelName: option<channelName>
}
  type response = {
@as("ChannelInfo") channelInfo: option<channelInfo>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "DescribeSignalingChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSignalingChannel = {
  type t;
  type request = {
@as("Tags") tags: option<tagOnCreateList>,
@as("SingleMasterConfiguration") singleMasterConfiguration: option<singleMasterConfiguration>,
@as("ChannelType") channelType: option<channelType>,
@as("ChannelName") channelName: channelName
}
  type response = {
@as("ChannelARN") channelARN: option<resourceARN>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "CreateSignalingChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSignalingChannels = {
  type t;
  type request = {
@as("ChannelNameCondition") channelNameCondition: option<channelNameCondition>,
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<listStreamsInputLimit>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ChannelInfoList") channelInfoList: option<channelInfoList>
}
  @module("@aws-sdk/client-kinesisvideo") @new external new_: (request) => t = "ListSignalingChannelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
