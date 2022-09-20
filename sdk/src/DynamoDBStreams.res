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
@ocaml.doc("<p>Represents all of the data describing a particular stream.</p>")
type stream = {
  @ocaml.doc("<p>A timestamp, in ISO 8601 format, for this stream.</p>
         <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is
      possible that a stream from another table might have the same timestamp. However, the
      combination of the following three elements is guaranteed to be unique:</p>
         <ul>
            <li>
               <p>the AWS customer ID.</p>
            </li>
            <li>
               <p>the table name</p>
            </li>
            <li>
               <p>the <code>StreamLabel</code>
               </p>
            </li>
         </ul>")
  @as("StreamLabel")
  streamLabel: option<string_>,
  @ocaml.doc("<p>The DynamoDB table with which the stream is associated.</p>") @as("TableName")
  tableName: option<tableName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the stream.</p>") @as("StreamArn")
  streamArn: option<streamArn>,
}
@ocaml.doc(
  "<p>The beginning and ending sequence numbers for the stream records contained within a shard.</p>"
)
type sequenceNumberRange = {
  @ocaml.doc(
    "<p>The last sequence number for the stream records contained within a shard. String contains numeric characters only.</p>"
  )
  @as("EndingSequenceNumber")
  endingSequenceNumber: option<sequenceNumber>,
  @ocaml.doc(
    "<p>The first sequence number for the stream records contained within a shard. String contains numeric characters only.</p>"
  )
  @as("StartingSequenceNumber")
  startingSequenceNumber: option<sequenceNumber>,
}
type numberSetAttributeValue = array<numberAttributeValue>
@ocaml.doc("<p>Represents <i>a single element</i> of a key schema. A key schema specifies
            the attributes that make up the primary key of a table, or the key attributes of an
            index.</p>
         <p>A <code>KeySchemaElement</code> represents exactly one attribute of the primary key. For
            example, a simple primary key would be represented by one <code>KeySchemaElement</code>
            (for the partition key). A composite primary key would require one
                <code>KeySchemaElement</code> for the partition key, and another
                <code>KeySchemaElement</code> for the sort key.</p>
         <p>A <code>KeySchemaElement</code> must be a scalar, top-level attribute (not a nested
            attribute). The data type must be one of String, Number, or Binary. The attribute cannot
            be nested within a List or a Map.</p>")
type keySchemaElement = {
  @ocaml.doc("<p>The role that this key attribute will assume:</p>
         <ul>
            <li>
              <p>
                  <code>HASH</code> - partition key</p>
            </li>
            <li>
              <p>
                  <code>RANGE</code> - sort key</p>
            </li>
         </ul>
         <note>
            <p>The partition key of an item is also known as its <i>hash
                    attribute</i>. The term \"hash attribute\" derives from DynamoDB's usage of
                an internal hash function to evenly distribute data items across partitions, based
                on their partition key values.</p>
            <p>The sort key of an item is also known as its <i>range
                attribute</i>. The term \"range attribute\" derives from the way DynamoDB
                stores items with the same partition key physically close together, in sorted order
                by the sort key value.</p>
         </note>")
  @as("KeyType")
  keyType: keyType,
  @ocaml.doc("<p>The name of a key attribute.</p>") @as("AttributeName")
  attributeName: keySchemaAttributeName,
}
@ocaml.doc("<p>Contains details about the type of identity that made the request.</p>")
type identity = {
  @ocaml.doc("<p>The type of the identity. For Time To Live, the type is \"Service\".</p>")
  @as("Type")
  type_: option<string_>,
  @ocaml.doc("<p>A unique identifier for the entity that made the call. For Time To Live, the
      principalId is \"dynamodb.amazonaws.com\".</p>")
  @as("PrincipalId")
  principalId: option<string_>,
}
type binarySetAttributeValue = array<binaryAttributeValue>
type streamList = array<stream>
@ocaml.doc("<p>A uniquely identified group of stream records within a stream.</p>")
type shard = {
  @ocaml.doc("<p>The shard ID of the current shard's parent.</p>") @as("ParentShardId")
  parentShardId: option<shardId>,
  @ocaml.doc("<p>The range of possible sequence numbers for the shard.</p>")
  @as("SequenceNumberRange")
  sequenceNumberRange: option<sequenceNumberRange>,
  @ocaml.doc("<p>The system-generated identifier for this shard.</p>") @as("ShardId")
  shardId: option<shardId>,
}
type keySchema = array<keySchemaElement>
type shardDescriptionList = array<shard>
@ocaml.doc("<p>Represents all of the data describing a particular stream.</p>")
type streamDescription = {
  @ocaml.doc("<p>The shard ID of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p>
         <p>If <code>LastEvaluatedShardId</code> is empty, then the \"last page\" of results has been
      processed and there is currently no more data to be retrieved.</p>
         <p>If <code>LastEvaluatedShardId</code> is not empty, it does not necessarily mean that there is
      more data in the result set. The only way to know when you have reached the end of the result
      set is when <code>LastEvaluatedShardId</code> is empty.</p>")
  @as("LastEvaluatedShardId")
  lastEvaluatedShardId: option<shardId>,
  @ocaml.doc("<p>The shards that comprise the stream.</p>") @as("Shards")
  shards: option<shardDescriptionList>,
  @ocaml.doc("<p>The key attribute(s) of the stream's DynamoDB table.</p>") @as("KeySchema")
  keySchema: option<keySchema>,
  @ocaml.doc("<p>The DynamoDB table with which the stream is associated.</p>") @as("TableName")
  tableName: option<tableName>,
  @ocaml.doc("<p>The date and time when the request to create this stream was issued.</p>")
  @as("CreationRequestDateTime")
  creationRequestDateTime: option<date>,
  @ocaml.doc("<p>Indicates the format of the records within this stream:</p>
         <ul>
            <li>
               <p>
                  <code>KEYS_ONLY</code> - only the key attributes of items that were modified in the DynamoDB table.</p>
            </li>
            <li>
               <p>
                  <code>NEW_IMAGE</code> - entire items from the table, as they appeared after they were modified.</p>
            </li>
            <li>
               <p>
                  <code>OLD_IMAGE</code> - entire items from the table, as they appeared before they were modified.</p>
            </li>
            <li>
               <p>
                  <code>NEW_AND_OLD_IMAGES</code> - both the new and the old images of the items from the table.</p>
            </li>
         </ul>")
  @as("StreamViewType")
  streamViewType: option<streamViewType>,
  @ocaml.doc("<p>Indicates the current status of the stream:</p>
         <ul>
            <li>
               <p>
                  <code>ENABLING</code> - Streams is currently being enabled on the DynamoDB table.</p>
            </li>
            <li>
               <p>
                  <code>ENABLED</code> - the stream is enabled.</p>
            </li>
            <li>
               <p>
                  <code>DISABLING</code> - Streams is currently being disabled on the DynamoDB table.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> - the stream is disabled.</p>
            </li>
         </ul>")
  @as("StreamStatus")
  streamStatus: option<streamStatus>,
  @ocaml.doc("<p>A timestamp, in ISO 8601 format, for this stream.</p>
         <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is
      possible that a stream from another table might have the same timestamp. However, the
      combination of the following three elements is guaranteed to be unique:</p>
         <ul>
            <li>
               <p>the AWS customer ID.</p>
            </li>
            <li>
               <p>the table name</p>
            </li>
            <li>
               <p>the <code>StreamLabel</code>
               </p>
            </li>
         </ul>")
  @as("StreamLabel")
  streamLabel: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the stream.</p>") @as("StreamArn")
  streamArn: option<streamArn>,
}
type rec attributeValue = {
  @ocaml.doc("<p>An attribute of type Boolean.  For example:</p>
         <p>
            <code>\"BOOL\": true</code>
         </p>")
  @as("BOOL")
  bool_: option<booleanAttributeValue>,
  @ocaml.doc("<p>An attribute of type Null.  For example:</p>
         <p>
            <code>\"NULL\": true</code>
         </p>")
  @as("NULL")
  null: option<nullAttributeValue>,
  @ocaml.doc("<p>An attribute of type List.  For example:</p>
         <p>
            <code>\"L\": [ {\"S\": \"Cookies\"} , {\"S\": \"Coffee\"}, {\"N\", \"3.14159\"}]</code>
         </p>")
  @as("L")
  l: option<listAttributeValue>,
  @ocaml.doc("<p>An attribute of type Map.  For example:</p>
         <p>
            <code>\"M\": {\"Name\": {\"S\": \"Joe\"}, \"Age\": {\"N\": \"35\"}}</code>
         </p>")
  @as("M")
  m: option<mapAttributeValue>,
  @ocaml.doc("<p>An attribute of type Binary Set.  For example:</p>
         <p>
            <code>\"BS\": [\"U3Vubnk=\", \"UmFpbnk=\", \"U25vd3k=\"]</code>
         </p>")
  @as("BS")
  bs: option<binarySetAttributeValue>,
  @ocaml.doc("<p>An attribute of type Number Set.  For example:</p>
         <p>
            <code>\"NS\": [\"42.2\", \"-19\", \"7.5\", \"3.14\"]</code>
         </p>
         <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.</p>")
  @as("NS")
  ns: option<numberSetAttributeValue>,
  @ocaml.doc("<p>An attribute of type String Set.  For example:</p>
         <p>
            <code>\"SS\": [\"Giraffe\", \"Hippo\" ,\"Zebra\"]</code>
         </p>")
  @as("SS")
  ss: option<stringSetAttributeValue>,
  @ocaml.doc("<p>An attribute of type Binary.  For example:</p>
         <p>
            <code>\"B\": \"dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk\"</code>
         </p>")
  @as("B")
  b: option<binaryAttributeValue>,
  @ocaml.doc("<p>An attribute of type Number. For example:</p>
         <p>
            <code>\"N\": \"123.45\"</code>
         </p>
         <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.</p>")
  @as("N")
  n: option<numberAttributeValue>,
  @ocaml.doc("<p>An attribute of type  String. For example:</p>
         <p>
            <code>\"S\": \"Hello\"</code>
         </p>")
  @as("S")
  s: option<stringAttributeValue>,
}
and mapAttributeValue = Js.Dict.t<attributeValue>
and listAttributeValue = array<attributeValue>
type attributeMap = Js.Dict.t<attributeValue>
@ocaml.doc(
  "<p>A description of a single data modification that was performed on an item in a DynamoDB table.</p>"
)
type streamRecord = {
  @ocaml.doc("<p>The type of data from the modified DynamoDB item that was captured in this stream record:</p>
         <ul>
            <li>
               <p>
                  <code>KEYS_ONLY</code> - only the key attributes of the modified item.</p>
            </li>
            <li>
               <p>
                  <code>NEW_IMAGE</code> - the entire item, as it appeared after it was modified.</p>
            </li>
            <li>
               <p>
                  <code>OLD_IMAGE</code> - the entire item, as it appeared before it was modified.</p>
            </li>
            <li>
               <p>
                  <code>NEW_AND_OLD_IMAGES</code> - both the new and the old item images of the item.</p>
            </li>
         </ul>")
  @as("StreamViewType")
  streamViewType: option<streamViewType>,
  @ocaml.doc("<p>The size of the stream record, in bytes.</p>") @as("SizeBytes")
  sizeBytes: option<positiveLongObject>,
  @ocaml.doc("<p>The sequence number of the stream record.</p>") @as("SequenceNumber")
  sequenceNumber: option<sequenceNumber>,
  @ocaml.doc("<p>The item in the DynamoDB table as it appeared before it was modified.</p>")
  @as("OldImage")
  oldImage: option<attributeMap>,
  @ocaml.doc("<p>The item in the DynamoDB table as it appeared after it was modified.</p>")
  @as("NewImage")
  newImage: option<attributeMap>,
  @ocaml.doc("<p>The primary key attribute(s) for the DynamoDB item that was modified.</p>")
  @as("Keys")
  keys: option<attributeMap>,
  @ocaml.doc(
    "<p>The approximate date and time when the stream record was created, in <a href=\"http://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"
  )
  @as("ApproximateCreationDateTime")
  approximateCreationDateTime: option<date>,
}
@ocaml.doc("<p>A description of a unique event within a stream.</p>")
type record = {
  @ocaml.doc("<p>Items that are deleted by the Time to Live process after expiration have the following fields: </p>
         <ul>
            <li>
               <p>Records[].userIdentity.type</p>
               <p>\"Service\"</p>
            </li>
            <li>
               <p>Records[].userIdentity.principalId</p>
               <p>\"dynamodb.amazonaws.com\"</p>
            </li>
         </ul>")
  userIdentity: option<identity>,
  @ocaml.doc(
    "<p>The main body of the stream record, containing all of the DynamoDB-specific fields.</p>"
  )
  dynamodb: option<streamRecord>,
  @ocaml.doc("<p>The region in which the <code>GetRecords</code> request was received.</p>")
  awsRegion: option<string_>,
  @ocaml.doc(
    "<p>The AWS service from which the stream record originated.  For DynamoDB Streams, this is <code>aws:dynamodb</code>.</p>"
  )
  eventSource: option<string_>,
  @ocaml.doc("<p>The version number of the stream record format.  This number is updated whenever the structure of <code>Record</code> is modified.</p>
         <p>Client applications must not assume that <code>eventVersion</code> will remain at a particular
      value, as this number is subject to change at any time. In general, <code>eventVersion</code> will
      only increase as the low-level DynamoDB Streams API evolves.</p>")
  eventVersion: option<string_>,
  @ocaml.doc("<p>The type of data modification that was performed on the DynamoDB table:</p>
         <ul>
            <li>
               <p>
                  <code>INSERT</code> - a new item was added to the table.</p>
            </li>
            <li>
               <p>
                  <code>MODIFY</code> - one or more of an existing item's attributes were modified.</p>
            </li>
            <li>
               <p>
                  <code>REMOVE</code> - the item was deleted from the table</p>
            </li>
         </ul>")
  eventName: option<operationType>,
  @ocaml.doc(
    "<p>A globally unique identifier for the event that was recorded in this stream record.</p>"
  )
  eventID: option<string_>,
}
type recordList = array<record>
@ocaml.doc("<fullname>Amazon DynamoDB</fullname>

         <p>Amazon DynamoDB Streams provides API actions for accessing streams and processing
         stream records. To learn more about application development with Streams, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html\">Capturing
            Table Activity with DynamoDB Streams</a> in the Amazon DynamoDB Developer
         Guide.</p>")
module GetShardIterator = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetShardIterator</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>The sequence number of a stream record in the shard from which to start reading.</p>"
    )
    @as("SequenceNumber")
    sequenceNumber: option<sequenceNumber>,
    @ocaml.doc("<p>Determines how the shard iterator is used to start reading stream records from the shard:</p>
         <ul>
            <li>
               <p>
                  <code>AT_SEQUENCE_NUMBER</code> - Start reading exactly from the position denoted by a
          specific sequence number.</p>
            </li>
            <li>
               <p>
                  <code>AFTER_SEQUENCE_NUMBER</code> - Start reading right after the position denoted by a
          specific sequence number.</p>
            </li>
            <li>
               <p>
                  <code>TRIM_HORIZON</code> - Start reading at the last (untrimmed) stream record, which is
          the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention.
          Stream records whose age exceeds this limit are subject to removal (trimming) from the
          stream.</p>
            </li>
            <li>
               <p>
                  <code>LATEST</code> - Start reading just after the most recent stream record in the
          shard, so that you always read the most recent data in the shard.</p>
            </li>
         </ul>")
    @as("ShardIteratorType")
    shardIteratorType: shardIteratorType,
    @ocaml.doc(
      "<p>The identifier of the shard. The iterator will be returned for this shard ID.</p>"
    )
    @as("ShardId")
    shardId: shardId,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the stream.</p>") @as("StreamArn")
    streamArn: streamArn,
  }
  @ocaml.doc("<p>Represents the output of a <code>GetShardIterator</code> operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>The position in the shard from which to start reading stream records sequentially. A shard iterator specifies this position using the sequence number of a stream record in a shard.</p>"
    )
    @as("ShardIterator")
    shardIterator: option<shardIterator>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "GetShardIteratorCommand"
  let make = (~shardIteratorType, ~shardId, ~streamArn, ~sequenceNumber=?, ()) =>
    new({sequenceNumber, shardIteratorType, shardId, streamArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListStreams = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ListStreams</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the
      value that was returned for <code>LastEvaluatedStreamArn</code> in the previous operation.
    </p>")
    @as("ExclusiveStartStreamArn")
    exclusiveStartStreamArn: option<streamArn>,
    @ocaml.doc("<p>The maximum number of streams to return. The upper limit is 100.</p>")
    @as("Limit")
    limit: option<positiveIntegerObject>,
    @ocaml.doc(
      "<p>If this parameter is provided, then only the streams associated with this table name are returned.</p>"
    )
    @as("TableName")
    tableName: option<tableName>,
  }
  @ocaml.doc("<p>Represents the output of a <code>ListStreams</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p>
         <p>If <code>LastEvaluatedStreamArn</code> is empty, then the \"last page\" of results has been
      processed and there is no more data to be retrieved.</p>
         <p>If <code>LastEvaluatedStreamArn</code> is not empty, it does not necessarily mean that there
      is more data in the result set. The only way to know when you have reached the end of the
      result set is when <code>LastEvaluatedStreamArn</code> is empty.</p>")
    @as("LastEvaluatedStreamArn")
    lastEvaluatedStreamArn: option<streamArn>,
    @ocaml.doc(
      "<p>A list of stream descriptors associated with the current account and endpoint.</p>"
    )
    @as("Streams")
    streams: option<streamList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ListStreamsCommand"
  let make = (~exclusiveStartStreamArn=?, ~limit=?, ~tableName=?, ()) =>
    new({exclusiveStartStreamArn, limit, tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeStream = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DescribeStream</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The shard ID of the first item that this operation will evaluate. Use the value that was
      returned for <code>LastEvaluatedShardId</code> in the previous operation. </p>")
    @as("ExclusiveStartShardId")
    exclusiveStartShardId: option<shardId>,
    @ocaml.doc("<p>The maximum number of shard objects to return. The upper limit is 100.</p>")
    @as("Limit")
    limit: option<positiveIntegerObject>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the stream.</p>") @as("StreamArn")
    streamArn: streamArn,
  }
  @ocaml.doc("<p>Represents the output of a <code>DescribeStream</code> operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A complete description of the stream, including its creation date and time, the DynamoDB table associated with the stream, the shard IDs within the stream, and the beginning and ending sequence numbers of stream records within the shards.</p>"
    )
    @as("StreamDescription")
    streamDescription: option<streamDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeStreamCommand"
  let make = (~streamArn, ~exclusiveStartShardId=?, ~limit=?, ()) =>
    new({exclusiveStartShardId, limit, streamArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRecords = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetRecords</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>The maximum number of records to return from the shard. The upper limit is 1000.</p>"
    )
    @as("Limit")
    limit: option<positiveIntegerObject>,
    @ocaml.doc(
      "<p>A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.</p>"
    )
    @as("ShardIterator")
    shardIterator: shardIterator,
  }
  @ocaml.doc("<p>Represents the output of a <code>GetRecords</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The next position in the shard from which to start sequentially reading stream records. If
      set to <code>null</code>, the shard has been closed and the requested iterator will not return
      any more data.</p>")
    @as("NextShardIterator")
    nextShardIterator: option<shardIterator>,
    @ocaml.doc(
      "<p>The stream records from the shard, which were retrieved using the shard iterator.</p>"
    )
    @as("Records")
    records: option<recordList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "GetRecordsCommand"
  let make = (~shardIterator, ~limit=?, ()) => new({limit, shardIterator})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
