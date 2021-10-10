type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-kinesisvideo") @new
external createClient: unit => awsServiceClient = "KinesisVideoClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type version = string
type updateDataRetentionOperation = [
  | @as("DECREASE_DATA_RETENTION") #DECREASE_DATA_RETENTION
  | @as("INCREASE_DATA_RETENTION") #INCREASE_DATA_RETENTION
]
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type streamName = string
type status = [
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
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
type comparisonOperator = [@as("BEGINS_WITH") #BEGINS_WITH]
type channelType = [@as("SINGLE_MASTER") #SINGLE_MASTER]
type channelRole = [@as("VIEWER") #VIEWER | @as("MASTER") #MASTER]
type channelProtocol = [@as("HTTPS") #HTTPS | @as("WSS") #WSS]
type channelName = string
type apiname = [
  | @as("GET_CLIP") #GET_CLIP
  | @as("GET_DASH_STREAMING_SESSION_URL") #GET_DASH_STREAMING_SESSION_URL
  | @as("GET_HLS_STREAMING_SESSION_URL") #GET_HLS_STREAMING_SESSION_URL
  | @as("GET_MEDIA_FOR_FRAGMENT_LIST") #GET_MEDIA_FOR_FRAGMENT_LIST
  | @as("LIST_FRAGMENTS") #LIST_FRAGMENTS
  | @as("GET_MEDIA") #GET_MEDIA
  | @as("PUT_MEDIA") #PUT_MEDIA
]
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A key and value pair that is associated with the specified signaling channel.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag that is associated with the specified signaling channel.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>The key of the tag that is associated with the specified signaling channel.</p>")
  @as("Key")
  key: tagKey,
}
@ocaml.doc("<p>Specifies the condition that streams must satisfy to be returned when you list
            streams (see the <code>ListStreams</code> API). A condition has a comparison operation
            and a value. Currently, you can specify only the <code>BEGINS_WITH</code> operator,
            which finds streams whose names start with a given prefix. </p>")
type streamNameCondition = {
  @ocaml.doc("<p>A value to compare.</p>") @as("ComparisonValue")
  comparisonValue: option<streamName>,
  @ocaml.doc("<p>A comparison operator. Currently, you can specify only the <code>BEGINS_WITH</code>
            operator, which finds streams whose names start with a given prefix.</p>")
  @as("ComparisonOperator")
  comparisonOperator: option<comparisonOperator>,
}
@ocaml.doc("<p>An object describing a Kinesis video stream.</p>")
type streamInfo = {
  @ocaml.doc("<p>How long the stream retains data, in hours.</p>") @as("DataRetentionInHours")
  dataRetentionInHours: option<dataRetentionInHours>,
  @ocaml.doc("<p>A time stamp that indicates when the stream was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the stream.</p>") @as("Status") status: option<status>,
  @ocaml.doc("<p>The version of the stream.</p>") @as("Version") version: option<version>,
  @ocaml.doc("<p>The ID of the AWS Key Management Service (AWS KMS) key that Kinesis Video Streams
            uses to encrypt data on the stream.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The <code>MediaType</code> of the stream. </p>") @as("MediaType")
  mediaType: option<mediaType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stream.</p>") @as("StreamARN")
  streamARN: option<resourceARN>,
  @ocaml.doc("<p>The name of the stream.</p>") @as("StreamName") streamName: option<streamName>,
  @ocaml.doc("<p>The name of the device that is associated with the stream.</p>") @as("DeviceName")
  deviceName: option<deviceName>,
}
@ocaml.doc("<p>A structure that contains the configuration for the <code>SINGLE_MASTER</code> channel
            type.</p>")
type singleMasterConfiguration = {
  @ocaml.doc("<p>The period of time a signaling channel retains underlivered messages before they are
            discarded.</p>")
  @as("MessageTtlSeconds")
  messageTtlSeconds: option<messageTtlSeconds>,
}
type resourceTags = Js.Dict.t<tagValue>
@ocaml.doc("<p>An object that describes the endpoint of the signaling channel returned by the
                <code>GetSignalingChannelEndpoint</code> API.</p>")
type resourceEndpointListItem = {
  @ocaml.doc("<p>The endpoint of the signaling channel returned by the
                <code>GetSignalingChannelEndpoint</code> API.</p>")
  @as("ResourceEndpoint")
  resourceEndpoint: option<resourceEndpoint>,
  @ocaml.doc("<p>The protocol of the signaling channel returned by the
                <code>GetSignalingChannelEndpoint</code> API.</p>")
  @as("Protocol")
  protocol: option<channelProtocol>,
}
type listOfProtocols = array<channelProtocol>
@ocaml.doc("<p>An optional input parameter for the <code>ListSignalingChannels</code> API. When this
            parameter is specified while invoking <code>ListSignalingChannels</code>, the API
            returns only the channels that satisfy a condition specified in
                <code>ChannelNameCondition</code>.</p>")
type channelNameCondition = {
  @ocaml.doc("<p>A value to compare.</p>") @as("ComparisonValue")
  comparisonValue: option<channelName>,
  @ocaml.doc("<p>A comparison operator. Currently, you can only specify the <code>BEGINS_WITH</code>
            operator, which finds signaling channels whose names begin with a given prefix.</p>")
  @as("ComparisonOperator")
  comparisonOperator: option<comparisonOperator>,
}
type tagOnCreateList = array<tag>
type tagList_ = array<tag>
type streamInfoList = array<streamInfo>
@ocaml.doc("<p>An object that contains the endpoint configuration for the <code>SINGLE_MASTER</code>
            channel type. </p>")
type singleMasterChannelEndpointConfiguration = {
  @ocaml.doc("<p>This property is used to determine messaging permissions in this
                <code>SINGLE_MASTER</code> signaling channel. If <code>MASTER</code> is specified,
            this API returns an endpoint that a client can use to receive offers from and send
            answers to any of the viewers on this signaling channel. If <code>VIEWER</code> is
            specified, this API returns an endpoint that a client can use only to send offers to
            another <code>MASTER</code> client on this signaling channel. </p>")
  @as("Role")
  role: option<channelRole>,
  @ocaml.doc("<p>This property is used to determine the nature of communication over this
                <code>SINGLE_MASTER</code> signaling channel. If <code>WSS</code> is specified, this
            API returns a websocket endpoint. If <code>HTTPS</code> is specified, this API returns
            an <code>HTTPS</code> endpoint.</p>")
  @as("Protocols")
  protocols: option<listOfProtocols>,
}
type resourceEndpointList = array<resourceEndpointListItem>
@ocaml.doc("<p>A structure that encapsulates a signaling channel's metadata and properties.</p>")
type channelInfo = {
  @ocaml.doc("<p>The current version of the signaling channel.</p>") @as("Version")
  version: option<version>,
  @ocaml.doc("<p>A structure that contains the configuration for the <code>SINGLE_MASTER</code> channel
            type.</p>")
  @as("SingleMasterConfiguration")
  singleMasterConfiguration: option<singleMasterConfiguration>,
  @ocaml.doc("<p>The time at which the signaling channel was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>Current status of the signaling channel.</p>") @as("ChannelStatus")
  channelStatus: option<status>,
  @ocaml.doc("<p>The type of the signaling channel.</p>") @as("ChannelType")
  channelType: option<channelType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the signaling channel.</p>") @as("ChannelARN")
  channelARN: option<resourceARN>,
  @ocaml.doc("<p>The name of the signaling channel.</p>") @as("ChannelName")
  channelName: option<channelName>,
}
type channelInfoList = array<channelInfo>
@ocaml.doc("<p></p>")
module UpdateStream = {
  type t
  type request = {
    @ocaml.doc("<p>The stream's media type. Use <code>MediaType</code> to specify the type of content
            that the stream contains to the consumers of the stream. For more information about
            media types, see <a href=\"http://www.iana.org/assignments/media-types/media-types.xhtml\">Media
                Types</a>. If you choose to specify the <code>MediaType</code>, see <a href=\"https://tools.ietf.org/html/rfc6838#section-4.2\">Naming
            Requirements</a>.</p>
        <p>To play video on the console, you must specify the correct video type. For example,
            if the video in the stream is H.264, specify <code>video/h264</code> as the
                <code>MediaType</code>.</p>")
    @as("MediaType")
    mediaType: option<mediaType>,
    @ocaml.doc("<p>The name of the device that is writing to the stream. </p>
        <note>
            <p> In the current implementation, Kinesis Video Streams does not use this name.
            </p>
        </note>")
    @as("DeviceName")
    deviceName: option<deviceName>,
    @ocaml.doc("<p>The version of the stream whose metadata you want to update.</p>")
    @as("CurrentVersion")
    currentVersion: version,
    @ocaml.doc("<p>The ARN of the stream whose metadata you want to update.</p>") @as("StreamARN")
    streamARN: option<resourceARN>,
    @ocaml.doc("<p>The name of the stream whose metadata you want to update.</p>
        <p>The stream name is an identifier for the stream, and must be unique for each
            account and region.</p>")
    @as("StreamName")
    streamName: option<streamName>,
  }

  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "UpdateStreamCommand"
  let make = (~currentVersion, ~mediaType=?, ~deviceName=?, ~streamARN=?, ~streamName=?, ()) =>
    new({
      mediaType: mediaType,
      deviceName: deviceName,
      currentVersion: currentVersion,
      streamARN: streamARN,
      streamName: streamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDataRetention = {
  type t
  type request = {
    @ocaml.doc("<p>The retention period, in hours. The value you specify replaces the current value.
            The maximum value for this parameter is 87600 (ten years).</p>")
    @as("DataRetentionChangeInHours")
    dataRetentionChangeInHours: dataRetentionChangeInHours,
    @ocaml.doc("<p>Indicates whether you want to increase or decrease the retention period.</p>")
    @as("Operation")
    operation: updateDataRetentionOperation,
    @ocaml.doc("<p>The version of the stream whose retention period you want to change. To get the
            version, call either the <code>DescribeStream</code> or the <code>ListStreams</code>
            API.</p>")
    @as("CurrentVersion")
    currentVersion: version,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stream whose retention period you want to
            change.</p>")
    @as("StreamARN")
    streamARN: option<resourceARN>,
    @ocaml.doc("<p>The name of the stream whose retention period you want to change.</p>")
    @as("StreamName")
    streamName: option<streamName>,
  }

  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "UpdateDataRetentionCommand"
  let make = (
    ~dataRetentionChangeInHours,
    ~operation,
    ~currentVersion,
    ~streamARN=?,
    ~streamName=?,
    (),
  ) =>
    new({
      dataRetentionChangeInHours: dataRetentionChangeInHours,
      operation: operation,
      currentVersion: currentVersion,
      streamARN: streamARN,
      streamName: streamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetDataEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the API action for which to get an endpoint.</p>") @as("APIName")
    apiname: apiname,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stream that you want to get the endpoint for.
            You must specify either this parameter or a <code>StreamName</code> in the request.
        </p>")
    @as("StreamARN")
    streamARN: option<resourceARN>,
    @ocaml.doc("<p>The name of the stream that you want to get the endpoint for. You must specify
            either this parameter or a <code>StreamARN</code> in the request.</p>")
    @as("StreamName")
    streamName: option<streamName>,
  }
  type response = {
    @ocaml.doc("<p>The endpoint value. To read data from the stream or to write data to it, specify
            this endpoint in your application.</p>")
    @as("DataEndpoint")
    dataEndpoint: option<dataEndpoint>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "GetDataEndpointCommand"
  let make = (~apiname, ~streamARN=?, ~streamName=?, ()) =>
    new({apiname: apiname, streamARN: streamARN, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStream = {
  type t
  type request = {
    @ocaml.doc("<p>Optional: The version of the stream that you want to delete. </p>
        <p>Specify the version as a safeguard to ensure that your are deleting the correct
            stream. To get the stream version, use the <code>DescribeStream</code> API.</p>
        <p>If not specified, only the <code>CreationTime</code> is checked before deleting the
            stream.</p>")
    @as("CurrentVersion")
    currentVersion: option<version>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stream that you want to delete. </p>")
    @as("StreamARN")
    streamARN: resourceARN,
  }

  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "DeleteStreamCommand"
  let make = (~streamARN, ~currentVersion=?, ()) =>
    new({currentVersion: currentVersion, streamARN: streamARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSignalingChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The current version of the signaling channel that you want to delete. You can obtain
            the current version by invoking the <code>DescribeSignalingChannel</code> or
                <code>ListSignalingChannels</code> API operations.</p>")
    @as("CurrentVersion")
    currentVersion: option<version>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the signaling channel that you want to
            delete.</p>")
    @as("ChannelARN")
    channelARN: resourceARN,
  }

  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "DeleteSignalingChannelCommand"
  let make = (~channelARN, ~currentVersion=?, ()) =>
    new({currentVersion: currentVersion, channelARN: channelARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateSignalingChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The structure containing the configuration for the <code>SINGLE_MASTER</code> type of
            the signaling channel that you want to update. </p>")
    @as("SingleMasterConfiguration")
    singleMasterConfiguration: option<singleMasterConfiguration>,
    @ocaml.doc("<p>The current version of the signaling channel that you want to update.</p>")
    @as("CurrentVersion")
    currentVersion: version,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the signaling channel that you want to
            update.</p>")
    @as("ChannelARN")
    channelARN: resourceARN,
  }

  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "UpdateSignalingChannelCommand"
  let make = (~currentVersion, ~channelARN, ~singleMasterConfiguration=?, ()) =>
    new({
      singleMasterConfiguration: singleMasterConfiguration,
      currentVersion: currentVersion,
      channelARN: channelARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagStream = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the keys of the tags that you want to remove.</p>") @as("TagKeyList")
    tagKeyList: tagKeyList,
    @ocaml.doc("<p>The name of the stream that you want to remove tags from.</p>") @as("StreamName")
    streamName: option<streamName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stream that you want to remove tags
            from.</p>")
    @as("StreamARN")
    streamARN: option<resourceARN>,
  }

  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "UntagStreamCommand"
  let make = (~tagKeyList, ~streamName=?, ~streamARN=?, ()) =>
    new({tagKeyList: tagKeyList, streamName: streamName, streamARN: streamARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the keys of the tags that you want to remove.</p>") @as("TagKeyList")
    tagKeyList: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the signaling channel from which you want to remove
            tags.</p>")
    @as("ResourceARN")
    resourceARN: resourceARN,
  }

  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeyList, ~resourceARN, ()) =>
    new({tagKeyList: tagKeyList, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagStream = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to associate with the specified stream. Each tag is a key-value pair
            (the value is optional).</p>")
    @as("Tags")
    tags: resourceTags,
    @ocaml.doc("<p>The name of the stream that you want to add the tag or tags to.</p>")
    @as("StreamName")
    streamName: option<streamName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that you want to add the tag or tags
            to.</p>")
    @as("StreamARN")
    streamARN: option<resourceARN>,
  }

  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "TagStreamCommand"
  let make = (~tags, ~streamName=?, ~streamARN=?, ()) =>
    new({tags: tags, streamName: streamName, streamARN: streamARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForStream = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the stream that you want to list tags for.</p>") @as("StreamName")
    streamName: option<streamName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stream that you want to list tags
            for.</p>")
    @as("StreamARN")
    streamARN: option<resourceARN>,
    @ocaml.doc("<p>If you specify this parameter and the result of a <code>ListTagsForStream</code>
            call is truncated, the response includes a token that you can use in the next request to
            fetch the next batch of tags.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A map of tag keys and values associated with the specified stream.</p>")
    @as("Tags")
    tags: option<resourceTags>,
    @ocaml.doc("<p>If you specify this parameter and the result of a <code>ListTags</code> call is
            truncated, the response includes a token that you can use in the next request to fetch
            the next set of tags.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "ListTagsForStreamCommand"
  let make = (~streamName=?, ~streamARN=?, ~nextToken=?, ()) =>
    new({streamName: streamName, streamARN: streamARN, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the signaling channel for which you want to list
            tags.</p>")
    @as("ResourceARN")
    resourceARN: resourceARN,
    @ocaml.doc("<p>If you specify this parameter and the result of a <code>ListTagsForResource</code>
            call is truncated, the response includes a token that you can use in the next request to
            fetch the next batch of tags. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>A map of tag keys and values associated with the specified signaling channel.</p>"
    )
    @as("Tags")
    tags: option<resourceTags>,
    @ocaml.doc("<p>If you specify this parameter and the result of a <code>ListTagsForResource</code>
            call is truncated, the response includes a token that you can use in the next request to
            fetch the next set of tags. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ~nextToken=?, ()) =>
    new({resourceARN: resourceARN, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStream = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stream.</p>") @as("StreamARN")
    streamARN: option<resourceARN>,
    @ocaml.doc("<p>The name of the stream.</p>") @as("StreamName") streamName: option<streamName>,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the stream.</p>") @as("StreamInfo")
    streamInfo: option<streamInfo>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "DescribeStreamCommand"
  let make = (~streamARN=?, ~streamName=?, ()) =>
    new({streamARN: streamARN, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStream = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to associate with the specified stream. Each tag is a key-value pair
            (the value is optional).</p>")
    @as("Tags")
    tags: option<resourceTags>,
    @ocaml.doc("<p>The number of hours that you want to retain the data in the stream. Kinesis Video
            Streams retains the data in a data store that is associated with the stream.</p>
        <p>The default value is 0, indicating that the stream does not persist data.</p>
        <p>When the <code>DataRetentionInHours</code> value is 0, consumers can still consume
            the fragments that remain in the service host buffer, which has a retention time limit
            of 5 minutes and a retention memory limit of 200 MB. Fragments are removed from the
            buffer when either limit is reached.</p>")
    @as("DataRetentionInHours")
    dataRetentionInHours: option<dataRetentionInHours>,
    @ocaml.doc("<p>The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video
            Streams to use to encrypt stream data.</p>
        <p>If no key ID is specified, the default, Kinesis Video-managed key
                (<code>aws/kinesisvideo</code>) is used.</p>
        <p> For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters\">DescribeKey</a>. </p>")
    @as("KmsKeyId")
    kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>The media type of the stream. Consumers of the stream can use this information when
            processing the stream. For more information about media types, see <a href=\"http://www.iana.org/assignments/media-types/media-types.xhtml\">Media
                Types</a>. If you choose to specify the <code>MediaType</code>, see <a href=\"https://tools.ietf.org/html/rfc6838#section-4.2\">Naming Requirements</a>
            for guidelines.</p>

        <p>Example valid values include \"video/h264\" and \"video/h264,audio/aac\".</p>
        <p>This parameter is optional; the default value is <code>null</code> (or empty in
            JSON).</p>")
    @as("MediaType")
    mediaType: option<mediaType>,
    @ocaml.doc("<p>A name for the stream that you are creating.</p>
        <p>The stream name is an identifier for the stream, and must be unique for each
            account and region.</p>")
    @as("StreamName")
    streamName: streamName,
    @ocaml.doc("<p>The name of the device that is writing to the stream. </p>
        <note>
            <p>In the current implementation, Kinesis Video Streams does not use this
                name.</p>
        </note>")
    @as("DeviceName")
    deviceName: option<deviceName>,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stream.</p>") @as("StreamARN")
    streamARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "CreateStreamCommand"
  let make = (
    ~streamName,
    ~tags=?,
    ~dataRetentionInHours=?,
    ~kmsKeyId=?,
    ~mediaType=?,
    ~deviceName=?,
    (),
  ) =>
    new({
      tags: tags,
      dataRetentionInHours: dataRetentionInHours,
      kmsKeyId: kmsKeyId,
      mediaType: mediaType,
      streamName: streamName,
      deviceName: deviceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to associate with the specified signaling channel. Each tag is a
            key-value pair.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the signaling channel to which you want to add
            tags.</p>")
    @as("ResourceARN")
    resourceARN: resourceARN,
  }

  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListStreams = {
  type t
  type request = {
    @ocaml.doc("<p>Optional: Returns only streams that satisfy a specific condition. Currently, you
            can specify only the prefix of a stream name as a condition. </p>")
    @as("StreamNameCondition")
    streamNameCondition: option<streamNameCondition>,
    @ocaml.doc("<p>If you specify this parameter, when the result of a <code>ListStreams</code>
            operation is truncated, the call returns the <code>NextToken</code> in the response. To
            get another batch of streams, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of streams to return in the response. The default is
            10,000.</p>")
    @as("MaxResults")
    maxResults: option<listStreamsInputLimit>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, the call returns this element with a token. To get
            the next batch of streams, use this token in your next request. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>StreamInfo</code> objects.</p>") @as("StreamInfoList")
    streamInfoList: option<streamInfoList>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new external new: request => t = "ListStreamsCommand"
  let make = (~streamNameCondition=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({streamNameCondition: streamNameCondition, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSignalingChannelEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>A structure containing the endpoint configuration for the <code>SINGLE_MASTER</code>
            channel type.</p>")
    @as("SingleMasterChannelEndpointConfiguration")
    singleMasterChannelEndpointConfiguration: option<singleMasterChannelEndpointConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the signalling channel for which you want to get an
            endpoint.</p>")
    @as("ChannelARN")
    channelARN: resourceARN,
  }
  type response = {
    @ocaml.doc("<p>A list of endpoints for the specified signaling channel.</p>")
    @as("ResourceEndpointList")
    resourceEndpointList: option<resourceEndpointList>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "GetSignalingChannelEndpointCommand"
  let make = (~channelARN, ~singleMasterChannelEndpointConfiguration=?, ()) =>
    new({
      singleMasterChannelEndpointConfiguration: singleMasterChannelEndpointConfiguration,
      channelARN: channelARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSignalingChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the signaling channel that you want to describe.</p>")
    @as("ChannelARN")
    channelARN: option<resourceARN>,
    @ocaml.doc("<p>The name of the signaling channel that you want to describe.</p>")
    @as("ChannelName")
    channelName: option<channelName>,
  }
  type response = {
    @ocaml.doc("<p>A structure that encapsulates the specified signaling channel's metadata and
            properties.</p>")
    @as("ChannelInfo")
    channelInfo: option<channelInfo>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "DescribeSignalingChannelCommand"
  let make = (~channelARN=?, ~channelName=?, ()) =>
    new({channelARN: channelARN, channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSignalingChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A set of tags (key-value pairs) that you want to associate with this channel.</p>"
    )
    @as("Tags")
    tags: option<tagOnCreateList>,
    @ocaml.doc("<p>A structure containing the configuration for the <code>SINGLE_MASTER</code> channel
            type. </p>")
    @as("SingleMasterConfiguration")
    singleMasterConfiguration: option<singleMasterConfiguration>,
    @ocaml.doc("<p>A type of the signaling channel that you are creating. Currently,
                <code>SINGLE_MASTER</code> is the only supported channel type. </p>")
    @as("ChannelType")
    channelType: option<channelType>,
    @ocaml.doc("<p>A name for the signaling channel that you are creating. It must be unique for each AWS
            account and AWS Region.</p>")
    @as("ChannelName")
    channelName: channelName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the created channel.</p>") @as("ChannelARN")
    channelARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "CreateSignalingChannelCommand"
  let make = (~channelName, ~tags=?, ~singleMasterConfiguration=?, ~channelType=?, ()) =>
    new({
      tags: tags,
      singleMasterConfiguration: singleMasterConfiguration,
      channelType: channelType,
      channelName: channelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSignalingChannels = {
  type t
  type request = {
    @ocaml.doc("<p>Optional: Returns only the channels that satisfy a specific condition.</p>")
    @as("ChannelNameCondition")
    channelNameCondition: option<channelNameCondition>,
    @ocaml.doc("<p>If you specify this parameter, when the result of a <code>ListSignalingChannels</code>
            operation is truncated, the call returns the <code>NextToken</code> in the response. To
            get another batch of channels, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of channels to return in the response. The default is 500.</p>"
    )
    @as("MaxResults")
    maxResults: option<listStreamsInputLimit>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, the call returns this element with a token. To get the
            next batch of streams, use this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>ChannelInfo</code> objects.</p>") @as("ChannelInfoList")
    channelInfoList: option<channelInfoList>,
  }
  @module("@aws-sdk/client-kinesisvideo") @new
  external new: request => t = "ListSignalingChannelsCommand"
  let make = (~channelNameCondition=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({channelNameCondition: channelNameCondition, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
