type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-dynamodb") @new
external createClient: unit => awsServiceClient = "DynamoDBStreamsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tableName = string
type stringAttributeValue = string
type string_ = string
type streamViewType = [
  | @as("KEYS_ONLY") #KEYS_ONLY
  | @as("NEW_AND_OLD_IMAGES") #NEW_AND_OLD_IMAGES
  | @as("OLD_IMAGE") #OLD_IMAGE
  | @as("NEW_IMAGE") #NEW_IMAGE
]
type streamStatus = [
  | @as("DISABLED") #DISABLED
  | @as("DISABLING") #DISABLING
  | @as("ENABLED") #ENABLED
  | @as("ENABLING") #ENABLING
]
type streamArn = string
type shardIteratorType = [
  | @as("AFTER_SEQUENCE_NUMBER") #AFTER_SEQUENCE_NUMBER
  | @as("AT_SEQUENCE_NUMBER") #AT_SEQUENCE_NUMBER
  | @as("LATEST") #LATEST
  | @as("TRIM_HORIZON") #TRIM_HORIZON
]
type shardIterator = string
type shardId = string
type sequenceNumber = string
type positiveLongObject = float
type positiveIntegerObject = int
type operationType = [@as("REMOVE") #REMOVE | @as("MODIFY") #MODIFY | @as("INSERT") #INSERT]
type numberAttributeValue = string
type nullAttributeValue = bool
type keyType = [@as("RANGE") #RANGE | @as("HASH") #HASH]
type keySchemaAttributeName = string
type errorMessage = string
type date = Js.Date.t
type booleanAttributeValue = bool
type binaryAttributeValue = NodeJs.Buffer.t
type attributeName = string
type stringSetAttributeValue = array<stringAttributeValue>
type stream = {
  @as("StreamLabel") streamLabel: option<string_>,
  @as("TableName") tableName: option<tableName>,
  @as("StreamArn") streamArn: option<streamArn>,
}
type sequenceNumberRange = {
  @as("EndingSequenceNumber") endingSequenceNumber: option<sequenceNumber>,
  @as("StartingSequenceNumber") startingSequenceNumber: option<sequenceNumber>,
}
type numberSetAttributeValue = array<numberAttributeValue>
type keySchemaElement = {
  @as("KeyType") keyType: keyType,
  @as("AttributeName") attributeName: keySchemaAttributeName,
}
type identity = {
  @as("Type") type_: option<string_>,
  @as("PrincipalId") principalId: option<string_>,
}
type binarySetAttributeValue = array<binaryAttributeValue>
type streamList = array<stream>
type shard = {
  @as("ParentShardId") parentShardId: option<shardId>,
  @as("SequenceNumberRange") sequenceNumberRange: option<sequenceNumberRange>,
  @as("ShardId") shardId: option<shardId>,
}
type keySchema = array<keySchemaElement>
type shardDescriptionList = array<shard>
type streamDescription = {
  @as("LastEvaluatedShardId") lastEvaluatedShardId: option<shardId>,
  @as("Shards") shards: option<shardDescriptionList>,
  @as("KeySchema") keySchema: option<keySchema>,
  @as("TableName") tableName: option<tableName>,
  @as("CreationRequestDateTime") creationRequestDateTime: option<date>,
  @as("StreamViewType") streamViewType: option<streamViewType>,
  @as("StreamStatus") streamStatus: option<streamStatus>,
  @as("StreamLabel") streamLabel: option<string_>,
  @as("StreamArn") streamArn: option<streamArn>,
}
type rec attributeValue = {
  @as("BOOL") bool_: option<booleanAttributeValue>,
  @as("NULL") null: option<nullAttributeValue>,
  @as("L") l: option<listAttributeValue>,
  @as("M") m: option<mapAttributeValue>,
  @as("BS") bs: option<binarySetAttributeValue>,
  @as("NS") ns: option<numberSetAttributeValue>,
  @as("SS") ss: option<stringSetAttributeValue>,
  @as("B") b: option<binaryAttributeValue>,
  @as("N") n: option<numberAttributeValue>,
  @as("S") s: option<stringAttributeValue>,
}
and mapAttributeValue = Js.Dict.t<attributeValue>
and listAttributeValue = array<attributeValue>
type attributeMap = Js.Dict.t<attributeValue>
type streamRecord = {
  @as("StreamViewType") streamViewType: option<streamViewType>,
  @as("SizeBytes") sizeBytes: option<positiveLongObject>,
  @as("SequenceNumber") sequenceNumber: option<sequenceNumber>,
  @as("OldImage") oldImage: option<attributeMap>,
  @as("NewImage") newImage: option<attributeMap>,
  @as("Keys") keys: option<attributeMap>,
  @as("ApproximateCreationDateTime") approximateCreationDateTime: option<date>,
}
type record = {
  userIdentity: option<identity>,
  dynamodb: option<streamRecord>,
  awsRegion: option<string_>,
  eventSource: option<string_>,
  eventVersion: option<string_>,
  eventName: option<operationType>,
  eventID: option<string_>,
}
type recordList = array<record>

module GetShardIterator = {
  type t
  type request = {
    @as("SequenceNumber") sequenceNumber: option<sequenceNumber>,
    @as("ShardIteratorType") shardIteratorType: shardIteratorType,
    @as("ShardId") shardId: shardId,
    @as("StreamArn") streamArn: streamArn,
  }
  type response = {@as("ShardIterator") shardIterator: option<shardIterator>}
  @module("@aws-sdk/client-dynamodb") @new external new_: request => t = "GetShardIteratorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreams = {
  type t
  type request = {
    @as("ExclusiveStartStreamArn") exclusiveStartStreamArn: option<streamArn>,
    @as("Limit") limit: option<positiveIntegerObject>,
    @as("TableName") tableName: option<tableName>,
  }
  type response = {
    @as("LastEvaluatedStreamArn") lastEvaluatedStreamArn: option<streamArn>,
    @as("Streams") streams: option<streamList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new_: request => t = "ListStreamsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStream = {
  type t
  type request = {
    @as("ExclusiveStartShardId") exclusiveStartShardId: option<shardId>,
    @as("Limit") limit: option<positiveIntegerObject>,
    @as("StreamArn") streamArn: streamArn,
  }
  type response = {@as("StreamDescription") streamDescription: option<streamDescription>}
  @module("@aws-sdk/client-dynamodb") @new external new_: request => t = "DescribeStreamCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRecords = {
  type t
  type request = {
    @as("Limit") limit: option<positiveIntegerObject>,
    @as("ShardIterator") shardIterator: shardIterator,
  }
  type response = {
    @as("NextShardIterator") nextShardIterator: option<shardIterator>,
    @as("Records") records: option<recordList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new_: request => t = "GetRecordsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
