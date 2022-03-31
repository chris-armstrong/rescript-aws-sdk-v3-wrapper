type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-kinesis") @new
external createClient: unit => awsServiceClient = "KinesisClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type streamStatus = [
  | @as("UPDATING") #UPDATING
  | @as("ACTIVE") #ACTIVE
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
]
type streamName = string
type streamMode = [@as("ON_DEMAND") #ON_DEMAND | @as("PROVISIONED") #PROVISIONED]
type streamARN = string
type shardIteratorType = [
  | @as("AT_TIMESTAMP") #AT_TIMESTAMP
  | @as("LATEST") #LATEST
  | @as("TRIM_HORIZON") #TRIM_HORIZON
  | @as("AFTER_SEQUENCE_NUMBER") #AFTER_SEQUENCE_NUMBER
  | @as("AT_SEQUENCE_NUMBER") #AT_SEQUENCE_NUMBER
]
type shardIterator = string
type shardId = string
type shardFilterType = [
  | @as("FROM_TIMESTAMP") #FROM_TIMESTAMP
  | @as("AT_TIMESTAMP") #AT_TIMESTAMP
  | @as("AT_LATEST") #AT_LATEST
  | @as("FROM_TRIM_HORIZON") #FROM_TRIM_HORIZON
  | @as("AT_TRIM_HORIZON") #AT_TRIM_HORIZON
  | @as("AFTER_SHARD_ID") #AFTER_SHARD_ID
]
type shardCountObject = int
type sequenceNumber = string
type scalingType = [@as("UNIFORM_SCALING") #UNIFORM_SCALING]
type retentionPeriodHours = int
type positiveIntegerObject = int
type partitionKey = string
type onDemandStreamCountObject = int
type onDemandStreamCountLimitObject = int
type nextToken = string
type millisBehindLatest = float
type metricsName = [
  | @as("ALL") #ALL
  | @as("IteratorAgeMilliseconds") #IteratorAgeMilliseconds
  | @as("ReadProvisionedThroughputExceeded") #ReadProvisionedThroughputExceeded
  | @as("WriteProvisionedThroughputExceeded") #WriteProvisionedThroughputExceeded
  | @as("OutgoingRecords") #OutgoingRecords
  | @as("OutgoingBytes") #OutgoingBytes
  | @as("IncomingRecords") #IncomingRecords
  | @as("IncomingBytes") #IncomingBytes
]
type listTagsForStreamInputLimit = int
type listStreamsInputLimit = int
type listStreamConsumersInputLimit = int
type listShardsInputLimit = int
type keyId = string
type hashKey = string
type getRecordsInputLimit = int
type errorMessage = string
type errorCode = string
type encryptionType = [@as("KMS") #KMS | @as("NONE") #NONE]
type describeStreamInputLimit = int
type data = NodeJs.Buffer.t
type consumerStatus = [
  | @as("ACTIVE") #ACTIVE
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
]
type consumerName = string
type consumerCountObject = int
type consumerARN = string
type booleanObject = bool
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Metadata assigned to the stream, consisting of a key-value pair.</p>")
type tag = {
  @ocaml.doc("<p>An optional string, typically used to describe or define the tag. Maximum length: 256
            characters. Valid characters: Unicode letters, digits, white space, _ . / = + - %
            @</p>")
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>A unique identifier for the tag. Maximum length: 128 characters. Valid characters:
            Unicode letters, digits, white space, _ . / = + - % @</p>")
  @as("Key")
  key: tagKey,
}
type streamNameList = array<streamName>
@ocaml.doc("<p> Specifies the capacity mode to which you want to set your data stream. Currently, in
            Kinesis Data Streams, you can choose between an <b>on-demand</b> capacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>")
type streamModeDetails = {
  @ocaml.doc("<p> Specifies the capacity mode to which you want to set your data stream. Currently, in
            Kinesis Data Streams, you can choose between an <b>on-demand</b> capacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>")
  @as("StreamMode")
  streamMode: streamMode,
}
@ocaml.doc("<p>The starting position in the data stream from which to start streaming.</p>")
type startingPosition = {
  @ocaml.doc("<p>The time stamp of the data record from which to start reading. To specify a time
            stamp, set <code>StartingPosition</code> to <code>Type AT_TIMESTAMP</code>. A time stamp
            is the Unix epoch date with precision in milliseconds. For example,
                <code>2016-04-04T19:58:46.480-00:00</code> or <code>1459799926.480</code>. If a
            record with this exact time stamp does not exist, records will be streamed from the next
            (later) record. If the time stamp is older than the current trim horizon, records will
            be streamed from the oldest untrimmed data record (<code>TRIM_HORIZON</code>).</p>")
  @as("Timestamp")
  timestamp_: option<timestamp_>,
  @ocaml.doc("<p>The sequence number of the data record in the shard from which to start streaming. To
            specify a sequence number, set <code>StartingPosition</code> to
                <code>AT_SEQUENCE_NUMBER</code> or <code>AFTER_SEQUENCE_NUMBER</code>.</p>")
  @as("SequenceNumber")
  sequenceNumber: option<sequenceNumber>,
  @ocaml.doc("<p>You can set the starting position to one of the following values:</p>
        <p>
            <code>AT_SEQUENCE_NUMBER</code>: Start streaming from the position denoted by the
            sequence number specified in the <code>SequenceNumber</code> field.</p>
        <p>
            <code>AFTER_SEQUENCE_NUMBER</code>: Start streaming right after the position denoted
            by the sequence number specified in the <code>SequenceNumber</code> field.</p>
        <p>
            <code>AT_TIMESTAMP</code>: Start streaming from the position denoted by the time stamp
            specified in the <code>Timestamp</code> field.</p>
        <p>
            <code>TRIM_HORIZON</code>: Start streaming at the last untrimmed record in the shard,
            which is the oldest data record in the shard.</p>
        <p>
            <code>LATEST</code>: Start streaming just after the most recent record in the shard,
            so that you always read the most recent data in the shard.</p>")
  @as("Type")
  type_: shardIteratorType,
}
type shardIdList = array<shardId>
@ocaml.doc("<p>The request parameter used to filter out the response of the <code>ListShards</code>
            API.</p>")
type shardFilter = {
  @ocaml.doc("<p>The timestamps specified in the <code>ShardFilter</code> parameter. A timestamp is a
            Unix epoch date with precision in milliseconds. For example,
            2016-04-04T19:58:46.480-00:00 or 1459799926.480. This property can only be used if
                <code>FROM_TIMESTAMP</code> or <code>AT_TIMESTAMP</code> shard types are
            specified.</p>")
  @as("Timestamp")
  timestamp_: option<timestamp_>,
  @ocaml.doc("<p>The exclusive start <code>shardID</code> speified in the <code>ShardFilter</code>
            parameter. This property can only be used if the <code>AFTER_SHARD_ID</code> shard type
            is specified.</p>")
  @as("ShardId")
  shardId: option<shardId>,
  @ocaml.doc("<p>The shard type specified in the <code>ShardFilter</code> parameter. This is a required
            property of the <code>ShardFilter</code> parameter.</p>
        <p>You can specify the following valid values: </p>
        <ul>
            <li>
                <p>
                  <code>AFTER_SHARD_ID</code> - the response includes all the shards, starting
                    with the shard whose ID immediately follows the <code>ShardId</code> that you
                    provided. </p>
            </li>
            <li>
                <p>
                  <code>AT_TRIM_HORIZON</code> - the response includes all the shards that were
                    open at <code>TRIM_HORIZON</code>.</p>
            </li>
            <li>
                <p>
                  <code>FROM_TRIM_HORIZON</code> - (default), the response includes all the
                    shards within the retention period of the data stream (trim to tip).</p>
            </li>
            <li>
                <p>
                  <code>AT_LATEST</code> - the response includes only the currently open shards
                    of the data stream.</p>
            </li>
            <li>
                <p>
                  <code>AT_TIMESTAMP</code> - the response includes all shards whose start
                    timestamp is less than or equal to the given timestamp and end timestamp is
                    greater than or equal to the given timestamp or still open. </p>
            </li>
            <li>
                <p>
                  <code>FROM_TIMESTAMP</code> - the response incldues all closed shards whose
                    end timestamp is greater than or equal to the given timestamp and also all open
                    shards. Corrected to <code>TRIM_HORIZON</code> of the data stream if
                        <code>FROM_TIMESTAMP</code> is less than the <code>TRIM_HORIZON</code>
                    value.</p>
            </li>
         </ul>")
  @as("Type")
  type_: shardFilterType,
}
@ocaml.doc("<p>The range of possible sequence numbers for the shard.</p>")
type sequenceNumberRange = {
  @ocaml.doc("<p>The ending sequence number for the range. Shards that are in the OPEN state have an
            ending sequence number of <code>null</code>.</p>")
  @as("EndingSequenceNumber")
  endingSequenceNumber: option<sequenceNumber>,
  @ocaml.doc("<p>The starting sequence number for the range.</p>") @as("StartingSequenceNumber")
  startingSequenceNumber: sequenceNumber,
}
@ocaml.doc("<p>The requested resource could not be found. The stream might not be specified
            correctly.</p>")
type resourceNotFoundException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @ocaml.doc("<p>A message that provides information about the error.</p>")
  message: option<errorMessage>,
}
@ocaml.doc("<p>The resource is not available for this operation. For successful operation, the
            resource must be in the <code>ACTIVE</code> state.</p>")
type resourceInUseException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @ocaml.doc("<p>A message that provides information about the error.</p>")
  message: option<errorMessage>,
}
@ocaml.doc("<p>The unit of data of the Kinesis data stream, which is composed of a sequence number, a
            partition key, and a data blob.</p>")
type record = {
  @ocaml.doc("<p>The encryption type used on the record. This parameter can be one of the following
            values:</p>
        <ul>
            <li>
                <p>
                  <code>NONE</code>: Do not encrypt the records in the stream.</p>
            </li>
            <li>
                <p>
                  <code>KMS</code>: Use server-side encryption on the records in the stream
                    using a customer-managed Amazon Web Services KMS key.</p>
            </li>
         </ul>")
  @as("EncryptionType")
  encryptionType: option<encryptionType>,
  @ocaml.doc("<p>Identifies which shard in the stream the data record is assigned to.</p>")
  @as("PartitionKey")
  partitionKey: partitionKey,
  @ocaml.doc("<p>The data blob. The data in the blob is both opaque and immutable to Kinesis Data
            Streams, which does not inspect, interpret, or change the data in the blob in any way.
            When the data blob (the payload before base64-encoding) is added to the partition key
            size, the total size must not exceed the maximum record size (1 MiB).</p>")
  @as("Data")
  data: data,
  @ocaml.doc("<p>The approximate time that the record was inserted into the stream.</p>")
  @as("ApproximateArrivalTimestamp")
  approximateArrivalTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The unique identifier of the record within its shard.</p>") @as("SequenceNumber")
  sequenceNumber: sequenceNumber,
}
@ocaml.doc("<p>Represents the result of an individual record from a <code>PutRecords</code> request.
            A record that is successfully added to a stream includes <code>SequenceNumber</code> and
                <code>ShardId</code> in the result. A record that fails to be added to the stream
            includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>")
type putRecordsResultEntry = {
  @ocaml.doc("<p>The error message for an individual record result. An <code>ErrorCode</code> value of
                <code>ProvisionedThroughputExceededException</code> has an error message that
            includes the account ID, stream name, and shard ID. An <code>ErrorCode</code> value of
                <code>InternalFailure</code> has the error message <code>\"Internal Service
                Failure\"</code>.</p>")
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The error code for an individual record result. <code>ErrorCodes</code> can be either
                <code>ProvisionedThroughputExceededException</code> or
            <code>InternalFailure</code>.</p>")
  @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The shard ID for an individual record result.</p>") @as("ShardId")
  shardId: option<shardId>,
  @ocaml.doc("<p>The sequence number for an individual record result.</p>") @as("SequenceNumber")
  sequenceNumber: option<sequenceNumber>,
}
@ocaml.doc("<p>Represents the output for <code>PutRecords</code>.</p>")
type putRecordsRequestEntry = {
  @ocaml.doc("<p>Determines which shard in the stream the data record is assigned to. Partition keys
            are Unicode strings with a maximum length limit of 256 characters for each key. Amazon
            Kinesis Data Streams uses the partition key as input to a hash function that maps the
            partition key and associated data to a specific shard. Specifically, an MD5 hash
            function is used to map partition keys to 128-bit integer values and to map associated
            data records to shards. As a result of this hashing mechanism, all data records with the
            same partition key map to the same shard within the stream.</p>")
  @as("PartitionKey")
  partitionKey: partitionKey,
  @ocaml.doc("<p>The hash value used to determine explicitly the shard that the data record is assigned
            to by overriding the partition key hash.</p>")
  @as("ExplicitHashKey")
  explicitHashKey: option<hashKey>,
  @ocaml.doc("<p>The data blob to put into the record, which is base64-encoded when the blob is
            serialized. When the data blob (the payload before base64-encoding) is added to the
            partition key size, the total size must not exceed the maximum record size (1
            MiB).</p>")
  @as("Data")
  data: data,
}
type metricsNameList = array<metricsName>
@ocaml.doc("<p>The request was denied due to request throttling. For more information about
            throttling, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second\">Limits</a> in
            the <i>Amazon Web Services Key Management Service Developer
            Guide</i>.</p>")
type kmsthrottlingException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @ocaml.doc("<p>A message that provides information about the error.</p>")
  message: option<errorMessage>,
}
@ocaml.doc("<p>The Amazon Web Services access key ID needs a subscription for the service.</p>")
type kmsoptInRequired = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @ocaml.doc("<p>A message that provides information about the error.</p>")
  message: option<errorMessage>,
}
@ocaml.doc("<p>The request was rejected because the specified entity or resource can't be
            found.</p>")
type kmsnotFoundException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @ocaml.doc("<p>A message that provides information about the error.</p>")
  message: option<errorMessage>,
}
@ocaml.doc("<p>The request was rejected because the state of the specified resource isn't valid for
            this request. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html\">How Key State Affects Use of a
                Customer Master Key</a> in the <i>Amazon Web Services Key Management
                Service Developer Guide</i>.</p>")
type kmsinvalidStateException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @ocaml.doc("<p>A message that provides information about the error.</p>")
  message: option<errorMessage>,
}
@ocaml.doc("<p>The request was rejected because the specified customer master key (CMK) isn't
            enabled.</p>")
type kmsdisabledException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @ocaml.doc("<p>A message that provides information about the error.</p>")
  message: option<errorMessage>,
}
@ocaml.doc("<p>The ciphertext references a key that doesn't exist or that you don't have access
            to.</p>")
type kmsaccessDeniedException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @ocaml.doc("<p>A message that provides information about the error.</p>")
  message: option<errorMessage>,
}
@ocaml.doc("<p>The processing of the request failed because of an unknown error, exception, or
            failure.</p>")
type internalFailureException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: option<errorMessage>,
}
@ocaml.doc("<p>The range of possible hash key values for the shard, which is a set of ordered
            contiguous positive integers.</p>")
type hashKeyRange = {
  @ocaml.doc("<p>The ending hash key of the hash key range.</p>") @as("EndingHashKey")
  endingHashKey: hashKey,
  @ocaml.doc("<p>The starting hash key of the hash key range.</p>") @as("StartingHashKey")
  startingHashKey: hashKey,
}
@ocaml.doc("<p>An object that represents the details of a registered consumer. This type of object is
            returned by <a>DescribeStreamConsumer</a>.</p>")
type consumerDescription = {
  @ocaml.doc("<p>The ARN of the stream with which you registered the consumer.</p>")
  @as("StreamARN")
  streamARN: streamARN,
  @ocaml.doc("<p></p>") @as("ConsumerCreationTimestamp") consumerCreationTimestamp: timestamp_,
  @ocaml.doc("<p>A consumer can't read data while in the <code>CREATING</code> or <code>DELETING</code>
            states.</p>")
  @as("ConsumerStatus")
  consumerStatus: consumerStatus,
  @ocaml.doc("<p>When you register a consumer, Kinesis Data Streams generates an ARN for it. You need
            this ARN to be able to call <a>SubscribeToShard</a>.</p>
        <p>If you delete a consumer and then create a new one with the same name, it won't have
            the same ARN. That's because consumer ARNs contain the creation timestamp. This is
            important to keep in mind if you have IAM policies that reference consumer ARNs.</p>")
  @as("ConsumerARN")
  consumerARN: consumerARN,
  @ocaml.doc("<p>The name of the consumer is something you choose when you register the
            consumer.</p>")
  @as("ConsumerName")
  consumerName: consumerName,
}
@ocaml.doc("<p>An object that represents the details of the consumer you registered. This type of
            object is returned by <a>RegisterStreamConsumer</a>.</p>")
type consumer = {
  @ocaml.doc("<p></p>") @as("ConsumerCreationTimestamp") consumerCreationTimestamp: timestamp_,
  @ocaml.doc("<p>A consumer can't read data while in the <code>CREATING</code> or <code>DELETING</code>
            states.</p>")
  @as("ConsumerStatus")
  consumerStatus: consumerStatus,
  @ocaml.doc("<p>When you register a consumer, Kinesis Data Streams generates an ARN for it. You need
            this ARN to be able to call <a>SubscribeToShard</a>.</p>
        <p>If you delete a consumer and then create a new one with the same name, it won't have
            the same ARN. That's because consumer ARNs contain the creation timestamp. This is
            important to keep in mind if you have IAM policies that reference consumer ARNs.</p>")
  @as("ConsumerARN")
  consumerARN: consumerARN,
  @ocaml.doc("<p>The name of the consumer is something you choose when you register the
            consumer.</p>")
  @as("ConsumerName")
  consumerName: consumerName,
}
type tagList_ = array<tag>
@ocaml.doc("<p>A uniquely identified group of data records in a Kinesis data stream.</p>")
type shard = {
  @ocaml.doc("<p>The range of possible sequence numbers for the shard.</p>")
  @as("SequenceNumberRange")
  sequenceNumberRange: sequenceNumberRange,
  @ocaml.doc("<p>The range of possible hash key values for the shard, which is a set of ordered
            contiguous positive integers.</p>")
  @as("HashKeyRange")
  hashKeyRange: hashKeyRange,
  @ocaml.doc("<p>The shard ID of the shard adjacent to the shard's parent.</p>")
  @as("AdjacentParentShardId")
  adjacentParentShardId: option<shardId>,
  @ocaml.doc("<p>The shard ID of the shard's parent.</p>") @as("ParentShardId")
  parentShardId: option<shardId>,
  @ocaml.doc("<p>The unique identifier of the shard within the stream.</p>") @as("ShardId")
  shardId: shardId,
}
type recordList = array<record>
type putRecordsResultEntryList = array<putRecordsResultEntry>
type putRecordsRequestEntryList = array<putRecordsRequestEntry>
@ocaml.doc("<p>Represents enhanced metrics types.</p>")
type enhancedMetrics = {
  @ocaml.doc("<p>List of shard-level metrics.</p>
        <p>The following are the valid shard-level metrics. The value \"<code>ALL</code>\" enhances
            every metric.</p>
        <ul>
            <li>
                <p>
                    <code>IncomingBytes</code>
                </p>
            </li>
            <li>
                <p>
                    <code>IncomingRecords</code>
                </p>
            </li>
            <li>
                <p>
                    <code>OutgoingBytes</code>
                </p>
            </li>
            <li>
                <p>
                    <code>OutgoingRecords</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WriteProvisionedThroughputExceeded</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ReadProvisionedThroughputExceeded</code>
                </p>
            </li>
            <li>
                <p>
                    <code>IteratorAgeMilliseconds</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ALL</code>
                </p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html\">Monitoring the Amazon
                Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon
                Kinesis Data Streams Developer Guide</i>.</p>")
  @as("ShardLevelMetrics")
  shardLevelMetrics: option<metricsNameList>,
}
type consumerList = array<consumer>
@ocaml.doc("<p>Output parameter of the GetRecords API. The existing child shard of the current
            shard.</p>")
type childShard = {
  @as("HashKeyRange") hashKeyRange: hashKeyRange,
  @ocaml.doc("<p>The current shard that is the parent of the existing child shard.</p>")
  @as("ParentShards")
  parentShards: shardIdList,
  @ocaml.doc("<p>The shard ID of the existing child shard of the current shard.</p>") @as("ShardId")
  shardId: shardId,
}
type shardList = array<shard>
type enhancedMonitoringList = array<enhancedMetrics>
type childShardList = array<childShard>
@ocaml.doc("<p>After you call <a>SubscribeToShard</a>, Kinesis Data Streams sends events
            of this type over an HTTP/2 connection to your consumer.</p>")
type subscribeToShardEvent = {
  @ocaml.doc("<p>The list of the child shards of the current shard, returned only at the end of the
            current shard.</p>")
  @as("ChildShards")
  childShards: option<childShardList>,
  @ocaml.doc("<p>The number of milliseconds the read records are from the tip of the stream, indicating
            how far behind current time the consumer is. A value of zero indicates that record
            processing is caught up, and there are no new records to process at this moment.</p>")
  @as("MillisBehindLatest")
  millisBehindLatest: millisBehindLatest,
  @ocaml.doc("<p>Use this as <code>SequenceNumber</code> in the next call to <a>SubscribeToShard</a>, with <code>StartingPosition</code> set to
                <code>AT_SEQUENCE_NUMBER</code> or <code>AFTER_SEQUENCE_NUMBER</code>. Use
                <code>ContinuationSequenceNumber</code> for checkpointing because it captures your
            shard progress even when no data is written to the shard.</p>")
  @as("ContinuationSequenceNumber")
  continuationSequenceNumber: sequenceNumber,
  @ocaml.doc("<p></p>") @as("Records") records: recordList,
}
@ocaml.doc("<p>Represents the output for <a>DescribeStreamSummary</a>
         </p>")
type streamDescriptionSummary = {
  @ocaml.doc("<p>The number of enhanced fan-out consumers registered with the stream.</p>")
  @as("ConsumerCount")
  consumerCount: option<consumerCountObject>,
  @ocaml.doc("<p>The number of open shards in the stream.</p>") @as("OpenShardCount")
  openShardCount: shardCountObject,
  @ocaml.doc("<p>The GUID for the customer-managed Amazon Web Services KMS key to use for encryption.
            This value can be a globally unique identifier, a fully specified ARN to either an alias
            or a key, or an alias name prefixed by \"alias/\".You can also use a master key owned by
            Kinesis Data Streams by specifying the alias <code>aws/kinesis</code>.</p>
        <ul>
            <li>
                <p>Key ARN example:
                        <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code>
               </p>
            </li>
            <li>
                <p>Alias ARN example: <code>
                        arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code>
               </p>
            </li>
            <li>
                <p>Globally unique key ID example:
                        <code>12345678-1234-1234-1234-123456789012</code>
               </p>
            </li>
            <li>
                <p>Alias name example: <code>alias/MyAliasName</code>
               </p>
            </li>
            <li>
                <p>Master key owned by Kinesis Data Streams:
                    <code>alias/aws/kinesis</code>
               </p>
            </li>
         </ul>")
  @as("KeyId")
  keyId: option<keyId>,
  @ocaml.doc("<p>The encryption type used. This value is one of the following:</p>
        <ul>
            <li>
                <p>
                  <code>KMS</code>
               </p>
            </li>
            <li>
                <p>
                  <code>NONE</code>
               </p>
            </li>
         </ul>")
  @as("EncryptionType")
  encryptionType: option<encryptionType>,
  @ocaml.doc("<p>Represents the current enhanced monitoring settings of the stream.</p>")
  @as("EnhancedMonitoring")
  enhancedMonitoring: enhancedMonitoringList,
  @ocaml.doc("<p>The approximate time that the stream was created.</p>")
  @as("StreamCreationTimestamp")
  streamCreationTimestamp: timestamp_,
  @ocaml.doc("<p>The current retention period, in hours.</p>") @as("RetentionPeriodHours")
  retentionPeriodHours: retentionPeriodHours,
  @ocaml.doc("<p> Specifies the capacity mode to which you want to set your data stream. Currently, in
            Kinesis Data Streams, you can choose between an <b>on-demand</b> ycapacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>")
  @as("StreamModeDetails")
  streamModeDetails: option<streamModeDetails>,
  @ocaml.doc("<p>The current status of the stream being described. The stream status is one of the
            following states:</p>
        <ul>
            <li>
                <p>
                    <code>CREATING</code> - The stream is being created. Kinesis Data Streams
                    immediately returns and sets <code>StreamStatus</code> to
                    <code>CREATING</code>.</p>
            </li>
            <li>
                <p>
                    <code>DELETING</code> - The stream is being deleted. The specified stream is in
                    the <code>DELETING</code> state until Kinesis Data Streams completes the
                    deletion.</p>
            </li>
            <li>
                <p>
                    <code>ACTIVE</code> - The stream exists and is ready for read and write
                    operations or deletion. You should perform read and write operations only on an
                        <code>ACTIVE</code> stream.</p>
            </li>
            <li>
                <p>
                    <code>UPDATING</code> - Shards in the stream are being merged or split. Read and
                    write operations continue to work while the stream is in the
                        <code>UPDATING</code> state.</p>
            </li>
         </ul>")
  @as("StreamStatus")
  streamStatus: streamStatus,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the stream being described.</p>")
  @as("StreamARN")
  streamARN: streamARN,
  @ocaml.doc("<p>The name of the stream being described.</p>") @as("StreamName")
  streamName: streamName,
}
@ocaml.doc("<p>Represents the output for <a>DescribeStream</a>.</p>")
type streamDescription = {
  @ocaml.doc("<p>The GUID for the customer-managed Amazon Web Services KMS key to use for encryption.
            This value can be a globally unique identifier, a fully specified ARN to either an alias
            or a key, or an alias name prefixed by \"alias/\".You can also use a master key owned by
            Kinesis Data Streams by specifying the alias <code>aws/kinesis</code>.</p>
        <ul>
            <li>
                <p>Key ARN example:
                        <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code>
               </p>
            </li>
            <li>
                <p>Alias ARN example:
                        <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code>
               </p>
            </li>
            <li>
                <p>Globally unique key ID example:
                        <code>12345678-1234-1234-1234-123456789012</code>
               </p>
            </li>
            <li>
                <p>Alias name example: <code>alias/MyAliasName</code>
               </p>
            </li>
            <li>
                <p>Master key owned by Kinesis Data Streams:
                    <code>alias/aws/kinesis</code>
               </p>
            </li>
         </ul>")
  @as("KeyId")
  keyId: option<keyId>,
  @ocaml.doc("<p>The server-side encryption type used on the stream. This parameter can be one of the
            following values:</p>
        <ul>
            <li>
                <p>
                  <code>NONE</code>: Do not encrypt the records in the stream.</p>
            </li>
            <li>
                <p>
                  <code>KMS</code>: Use server-side encryption on the records in the stream
                    using a customer-managed Amazon Web Services KMS key.</p>
            </li>
         </ul>")
  @as("EncryptionType")
  encryptionType: option<encryptionType>,
  @ocaml.doc("<p>Represents the current enhanced monitoring settings of the stream.</p>")
  @as("EnhancedMonitoring")
  enhancedMonitoring: enhancedMonitoringList,
  @ocaml.doc("<p>The approximate time that the stream was created.</p>")
  @as("StreamCreationTimestamp")
  streamCreationTimestamp: timestamp_,
  @ocaml.doc("<p>The current retention period, in hours. Minimum value of 24. Maximum value of
            168.</p>")
  @as("RetentionPeriodHours")
  retentionPeriodHours: retentionPeriodHours,
  @ocaml.doc("<p>If set to <code>true</code>, more shards in the stream are available to
            describe.</p>")
  @as("HasMoreShards")
  hasMoreShards: booleanObject,
  @ocaml.doc("<p>The shards that comprise the stream.</p>") @as("Shards") shards: shardList,
  @ocaml.doc("<p> Specifies the capacity mode to which you want to set your data stream. Currently, in
            Kinesis Data Streams, you can choose between an <b>on-demand</b> capacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>")
  @as("StreamModeDetails")
  streamModeDetails: option<streamModeDetails>,
  @ocaml.doc("<p>The current status of the stream being described. The stream status is one of the
            following states:</p>
        <ul>
            <li>
                <p>
                    <code>CREATING</code> - The stream is being created. Kinesis Data Streams
                    immediately returns and sets <code>StreamStatus</code> to
                    <code>CREATING</code>.</p>
            </li>
            <li>
                <p>
                    <code>DELETING</code> - The stream is being deleted. The specified stream is in
                    the <code>DELETING</code> state until Kinesis Data Streams completes the
                    deletion.</p>
            </li>
            <li>
                <p>
                    <code>ACTIVE</code> - The stream exists and is ready for read and write
                    operations or deletion. You should perform read and write operations only on an
                        <code>ACTIVE</code> stream.</p>
            </li>
            <li>
                <p>
                    <code>UPDATING</code> - Shards in the stream are being merged or split. Read and
                    write operations continue to work while the stream is in the
                        <code>UPDATING</code> state.</p>
            </li>
         </ul>")
  @as("StreamStatus")
  streamStatus: streamStatus,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the stream being described.</p>")
  @as("StreamARN")
  streamARN: streamARN,
  @ocaml.doc("<p>The name of the stream being described.</p>") @as("StreamName")
  streamName: streamName,
}
@ocaml.doc("<p>This is a tagged union for all of the types of events an enhanced fan-out consumer can
            receive over HTTP/2 after a call to <a>SubscribeToShard</a>.</p>")
type subscribeToShardEventStream = {
  @ocaml.doc("<p>The processing of the request failed because of an unknown error, exception, or
            failure.</p>")
  @as("InternalFailureException")
  internalFailureException: option<internalFailureException>,
  @as("KMSThrottlingException") kmsthrottlingException: option<kmsthrottlingException>,
  @as("KMSOptInRequired") kmsoptInRequired: option<kmsoptInRequired>,
  @as("KMSNotFoundException") kmsnotFoundException: option<kmsnotFoundException>,
  @as("KMSAccessDeniedException") kmsaccessDeniedException: option<kmsaccessDeniedException>,
  @as("KMSInvalidStateException") kmsinvalidStateException: option<kmsinvalidStateException>,
  @as("KMSDisabledException") kmsdisabledException: option<kmsdisabledException>,
  @as("ResourceInUseException") resourceInUseException: option<resourceInUseException>,
  @as("ResourceNotFoundException") resourceNotFoundException: option<resourceNotFoundException>,
  @ocaml.doc("<p>After you call <a>SubscribeToShard</a>, Kinesis Data Streams sends events
            of this type to your consumer. For an example of how to handle these events, see <a href=\"/streams/latest/dev/building-enhanced-consumers-api.html\">Enhanced Fan-Out
                Using the Kinesis Data Streams API</a>.</p>")
  @as("SubscribeToShardEvent")
  subscribeToShardEvent: option<subscribeToShardEvent>,
}
module SubscribeToShardEventStream = {
  type t =
    | InternalFailureException(internalFailureException)
    | KMSThrottlingException(kmsthrottlingException)
    | KMSOptInRequired(kmsoptInRequired)
    | KMSNotFoundException(kmsnotFoundException)
    | KMSAccessDeniedException(kmsaccessDeniedException)
    | KMSInvalidStateException(kmsinvalidStateException)
    | KMSDisabledException(kmsdisabledException)
    | ResourceInUseException(resourceInUseException)
    | ResourceNotFoundException(resourceNotFoundException)
    | SubscribeToShardEvent(subscribeToShardEvent)
  exception SubscribeToShardEventStreamUnspecified
  let classify = value =>
    switch value {
    | {internalFailureException: Some(x)} => InternalFailureException(x)
    | {kmsthrottlingException: Some(x)} => KMSThrottlingException(x)
    | {kmsoptInRequired: Some(x)} => KMSOptInRequired(x)
    | {kmsnotFoundException: Some(x)} => KMSNotFoundException(x)
    | {kmsaccessDeniedException: Some(x)} => KMSAccessDeniedException(x)
    | {kmsinvalidStateException: Some(x)} => KMSInvalidStateException(x)
    | {kmsdisabledException: Some(x)} => KMSDisabledException(x)
    | {resourceInUseException: Some(x)} => ResourceInUseException(x)
    | {resourceNotFoundException: Some(x)} => ResourceNotFoundException(x)
    | {subscribeToShardEvent: Some(x)} => SubscribeToShardEvent(x)
    | _ => raise(SubscribeToShardEventStreamUnspecified)
    }

  let make = value =>
    switch value {
    | InternalFailureException(x) => {
        internalFailureException: Some(x),
        kmsthrottlingException: None,
        kmsoptInRequired: None,
        kmsnotFoundException: None,
        kmsaccessDeniedException: None,
        kmsinvalidStateException: None,
        kmsdisabledException: None,
        resourceInUseException: None,
        resourceNotFoundException: None,
        subscribeToShardEvent: None,
      }
    | KMSThrottlingException(x) => {
        kmsthrottlingException: Some(x),
        internalFailureException: None,
        kmsoptInRequired: None,
        kmsnotFoundException: None,
        kmsaccessDeniedException: None,
        kmsinvalidStateException: None,
        kmsdisabledException: None,
        resourceInUseException: None,
        resourceNotFoundException: None,
        subscribeToShardEvent: None,
      }
    | KMSOptInRequired(x) => {
        kmsoptInRequired: Some(x),
        internalFailureException: None,
        kmsthrottlingException: None,
        kmsnotFoundException: None,
        kmsaccessDeniedException: None,
        kmsinvalidStateException: None,
        kmsdisabledException: None,
        resourceInUseException: None,
        resourceNotFoundException: None,
        subscribeToShardEvent: None,
      }
    | KMSNotFoundException(x) => {
        kmsnotFoundException: Some(x),
        internalFailureException: None,
        kmsthrottlingException: None,
        kmsoptInRequired: None,
        kmsaccessDeniedException: None,
        kmsinvalidStateException: None,
        kmsdisabledException: None,
        resourceInUseException: None,
        resourceNotFoundException: None,
        subscribeToShardEvent: None,
      }
    | KMSAccessDeniedException(x) => {
        kmsaccessDeniedException: Some(x),
        internalFailureException: None,
        kmsthrottlingException: None,
        kmsoptInRequired: None,
        kmsnotFoundException: None,
        kmsinvalidStateException: None,
        kmsdisabledException: None,
        resourceInUseException: None,
        resourceNotFoundException: None,
        subscribeToShardEvent: None,
      }
    | KMSInvalidStateException(x) => {
        kmsinvalidStateException: Some(x),
        internalFailureException: None,
        kmsthrottlingException: None,
        kmsoptInRequired: None,
        kmsnotFoundException: None,
        kmsaccessDeniedException: None,
        kmsdisabledException: None,
        resourceInUseException: None,
        resourceNotFoundException: None,
        subscribeToShardEvent: None,
      }
    | KMSDisabledException(x) => {
        kmsdisabledException: Some(x),
        internalFailureException: None,
        kmsthrottlingException: None,
        kmsoptInRequired: None,
        kmsnotFoundException: None,
        kmsaccessDeniedException: None,
        kmsinvalidStateException: None,
        resourceInUseException: None,
        resourceNotFoundException: None,
        subscribeToShardEvent: None,
      }
    | ResourceInUseException(x) => {
        resourceInUseException: Some(x),
        internalFailureException: None,
        kmsthrottlingException: None,
        kmsoptInRequired: None,
        kmsnotFoundException: None,
        kmsaccessDeniedException: None,
        kmsinvalidStateException: None,
        kmsdisabledException: None,
        resourceNotFoundException: None,
        subscribeToShardEvent: None,
      }
    | ResourceNotFoundException(x) => {
        resourceNotFoundException: Some(x),
        internalFailureException: None,
        kmsthrottlingException: None,
        kmsoptInRequired: None,
        kmsnotFoundException: None,
        kmsaccessDeniedException: None,
        kmsinvalidStateException: None,
        kmsdisabledException: None,
        resourceInUseException: None,
        subscribeToShardEvent: None,
      }
    | SubscribeToShardEvent(x) => {
        subscribeToShardEvent: Some(x),
        internalFailureException: None,
        kmsthrottlingException: None,
        kmsoptInRequired: None,
        kmsnotFoundException: None,
        kmsaccessDeniedException: None,
        kmsinvalidStateException: None,
        kmsdisabledException: None,
        resourceInUseException: None,
        resourceNotFoundException: None,
      }
    }
}
@ocaml.doc("<fullname>Amazon Kinesis Data Streams Service API Reference</fullname>
        <p>Amazon Kinesis Data Streams is a managed service that scales elastically for real-time
            processing of streaming big data.</p>")
module UpdateShardCount = {
  type t
  type request = {
    @ocaml.doc("<p>The scaling type. Uniform scaling creates shards of equal size.</p>")
    @as("ScalingType")
    scalingType: scalingType,
    @ocaml.doc("<p>The new number of shards. This value has the following default limits. By default, you
            cannot do the following: </p>
        <ul>
            <li>
                <p>Set this value to more than double your current shard count for a
                    stream.</p>
            </li>
            <li>
                <p>Set this value below half your current shard count for a stream.</p>
            </li>
            <li>
                <p>Set this value to more than 10000 shards in a stream (the default limit for
                    shard count per stream is 10000 per account per region), unless you request a
                    limit increase.</p>
            </li>
            <li>
                <p>Scale a stream with more than 10000 shards down unless you set this value to
                    less than 10000 shards.</p>
            </li>
         </ul>")
    @as("TargetShardCount")
    targetShardCount: positiveIntegerObject,
    @ocaml.doc("<p>The name of the stream.</p>") @as("StreamName") streamName: streamName,
  }
  type response = {
    @ocaml.doc("<p>The updated number of shards.</p>") @as("TargetShardCount")
    targetShardCount: option<positiveIntegerObject>,
    @ocaml.doc("<p>The current number of shards.</p>") @as("CurrentShardCount")
    currentShardCount: option<positiveIntegerObject>,
    @ocaml.doc("<p>The name of the stream.</p>") @as("StreamName") streamName: option<streamName>,
  }
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "UpdateShardCountCommand"
  let make = (~scalingType, ~targetShardCount, ~streamName, ()) =>
    new({scalingType: scalingType, targetShardCount: targetShardCount, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopStreamEncryption = {
  type t
  type request = {
    @ocaml.doc("<p>The GUID for the customer-managed Amazon Web Services KMS key to use for encryption.
            This value can be a globally unique identifier, a fully specified Amazon Resource Name
            (ARN) to either an alias or a key, or an alias name prefixed by \"alias/\".You can also
            use a master key owned by Kinesis Data Streams by specifying the alias
                <code>aws/kinesis</code>.</p>
        <ul>
            <li>
                <p>Key ARN example:
                        <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code>
               </p>
            </li>
            <li>
                <p>Alias ARN example:
                        <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code>
               </p>
            </li>
            <li>
                <p>Globally unique key ID example:
                        <code>12345678-1234-1234-1234-123456789012</code>
               </p>
            </li>
            <li>
                <p>Alias name example: <code>alias/MyAliasName</code>
               </p>
            </li>
            <li>
                <p>Master key owned by Kinesis Data Streams:
                    <code>alias/aws/kinesis</code>
               </p>
            </li>
         </ul>")
    @as("KeyId")
    keyId: keyId,
    @ocaml.doc("<p>The encryption type. The only valid value is <code>KMS</code>.</p>")
    @as("EncryptionType")
    encryptionType: encryptionType,
    @ocaml.doc("<p>The name of the stream on which to stop encrypting records.</p>")
    @as("StreamName")
    streamName: streamName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "StopStreamEncryptionCommand"
  let make = (~keyId, ~encryptionType, ~streamName, ()) =>
    new({keyId: keyId, encryptionType: encryptionType, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartStreamEncryption = {
  type t
  type request = {
    @ocaml.doc("<p>The GUID for the customer-managed Amazon Web Services KMS key to use for encryption.
            This value can be a globally unique identifier, a fully specified Amazon Resource Name
            (ARN) to either an alias or a key, or an alias name prefixed by \"alias/\".You can also
            use a master key owned by Kinesis Data Streams by specifying the alias
                <code>aws/kinesis</code>.</p>
        <ul>
            <li>
                <p>Key ARN example:
                        <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code>
               </p>
            </li>
            <li>
                <p>Alias ARN example:
                        <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code>
               </p>
            </li>
            <li>
                <p>Globally unique key ID example:
                        <code>12345678-1234-1234-1234-123456789012</code>
               </p>
            </li>
            <li>
                <p>Alias name example: <code>alias/MyAliasName</code>
               </p>
            </li>
            <li>
                <p>Master key owned by Kinesis Data Streams:
                    <code>alias/aws/kinesis</code>
               </p>
            </li>
         </ul>")
    @as("KeyId")
    keyId: keyId,
    @ocaml.doc("<p>The encryption type to use. The only valid value is <code>KMS</code>.</p>")
    @as("EncryptionType")
    encryptionType: encryptionType,
    @ocaml.doc("<p>The name of the stream for which to start encrypting records.</p>")
    @as("StreamName")
    streamName: streamName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesis") @new
  external new: request => t = "StartStreamEncryptionCommand"
  let make = (~keyId, ~encryptionType, ~streamName, ()) =>
    new({keyId: keyId, encryptionType: encryptionType, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SplitShard = {
  type t
  @ocaml.doc("<p>Represents the input for <code>SplitShard</code>.</p>")
  type request = {
    @ocaml.doc("<p>A hash key value for the starting hash key of one of the child shards created by the
            split. The hash key range for a given shard constitutes a set of ordered contiguous
            positive integers. The value for <code>NewStartingHashKey</code> must be in the range of
            hash keys being mapped into the shard. The <code>NewStartingHashKey</code> hash key
            value and all higher hash key values in hash key range are distributed to one of the
            child shards. All the lower hash key values in the range are distributed to the other
            child shard.</p>")
    @as("NewStartingHashKey")
    newStartingHashKey: hashKey,
    @ocaml.doc("<p>The shard ID of the shard to split.</p>") @as("ShardToSplit")
    shardToSplit: shardId,
    @ocaml.doc("<p>The name of the stream for the shard split.</p>") @as("StreamName")
    streamName: streamName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "SplitShardCommand"
  let make = (~newStartingHashKey, ~shardToSplit, ~streamName, ()) =>
    new({
      newStartingHashKey: newStartingHashKey,
      shardToSplit: shardToSplit,
      streamName: streamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutRecord = {
  type t
  @ocaml.doc("<p>Represents the input for <code>PutRecord</code>.</p>")
  type request = {
    @ocaml.doc("<p>Guarantees strictly increasing sequence numbers, for puts from the same client and to
            the same partition key. Usage: set the <code>SequenceNumberForOrdering</code> of record
                <i>n</i> to the sequence number of record <i>n-1</i> (as
            returned in the result when putting record <i>n-1</i>). If this parameter
            is not set, records are coarsely ordered based on arrival time.</p>")
    @as("SequenceNumberForOrdering")
    sequenceNumberForOrdering: option<sequenceNumber>,
    @ocaml.doc("<p>The hash value used to explicitly determine the shard the data record is assigned to
            by overriding the partition key hash.</p>")
    @as("ExplicitHashKey")
    explicitHashKey: option<hashKey>,
    @ocaml.doc("<p>Determines which shard in the stream the data record is assigned to. Partition keys
            are Unicode strings with a maximum length limit of 256 characters for each key. Amazon
            Kinesis Data Streams uses the partition key as input to a hash function that maps the
            partition key and associated data to a specific shard. Specifically, an MD5 hash
            function is used to map partition keys to 128-bit integer values and to map associated
            data records to shards. As a result of this hashing mechanism, all data records with the
            same partition key map to the same shard within the stream.</p>")
    @as("PartitionKey")
    partitionKey: partitionKey,
    @ocaml.doc("<p>The data blob to put into the record, which is base64-encoded when the blob is
            serialized. When the data blob (the payload before base64-encoding) is added to the
            partition key size, the total size must not exceed the maximum record size (1
            MiB).</p>")
    @as("Data")
    data: data,
    @ocaml.doc("<p>The name of the stream to put the data record into.</p>") @as("StreamName")
    streamName: streamName,
  }
  @ocaml.doc("<p>Represents the output for <code>PutRecord</code>.</p>")
  type response = {
    @ocaml.doc("<p>The encryption type to use on the record. This parameter can be one of the following
            values:</p>
        <ul>
            <li>
                <p>
                  <code>NONE</code>: Do not encrypt the records in the stream.</p>
            </li>
            <li>
                <p>
                  <code>KMS</code>: Use server-side encryption on the records in the stream
                    using a customer-managed Amazon Web Services KMS key.</p>
            </li>
         </ul>")
    @as("EncryptionType")
    encryptionType: option<encryptionType>,
    @ocaml.doc("<p>The sequence number identifier that was assigned to the put data record. The sequence
            number for the record is unique across all records in the stream. A sequence number is
            the identifier associated with every record put into the stream.</p>")
    @as("SequenceNumber")
    sequenceNumber: sequenceNumber,
    @ocaml.doc("<p>The shard ID of the shard where the data record was placed.</p>") @as("ShardId")
    shardId: shardId,
  }
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "PutRecordCommand"
  let make = (
    ~partitionKey,
    ~data,
    ~streamName,
    ~sequenceNumberForOrdering=?,
    ~explicitHashKey=?,
    (),
  ) =>
    new({
      sequenceNumberForOrdering: sequenceNumberForOrdering,
      explicitHashKey: explicitHashKey,
      partitionKey: partitionKey,
      data: data,
      streamName: streamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module MergeShards = {
  type t
  @ocaml.doc("<p>Represents the input for <code>MergeShards</code>.</p>")
  type request = {
    @ocaml.doc("<p>The shard ID of the adjacent shard for the merge.</p>")
    @as("AdjacentShardToMerge")
    adjacentShardToMerge: shardId,
    @ocaml.doc("<p>The shard ID of the shard to combine with the adjacent shard for the merge.</p>")
    @as("ShardToMerge")
    shardToMerge: shardId,
    @ocaml.doc("<p>The name of the stream for the merge.</p>") @as("StreamName")
    streamName: streamName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "MergeShardsCommand"
  let make = (~adjacentShardToMerge, ~shardToMerge, ~streamName, ()) =>
    new({
      adjacentShardToMerge: adjacentShardToMerge,
      shardToMerge: shardToMerge,
      streamName: streamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module IncreaseStreamRetentionPeriod = {
  type t
  @ocaml.doc("<p>Represents the input for <a>IncreaseStreamRetentionPeriod</a>.</p>")
  type request = {
    @ocaml.doc("<p>The new retention period of the stream, in hours. Must be more than the current
            retention period.</p>")
    @as("RetentionPeriodHours")
    retentionPeriodHours: retentionPeriodHours,
    @ocaml.doc("<p>The name of the stream to modify.</p>") @as("StreamName") streamName: streamName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesis") @new
  external new: request => t = "IncreaseStreamRetentionPeriodCommand"
  let make = (~retentionPeriodHours, ~streamName, ()) =>
    new({retentionPeriodHours: retentionPeriodHours, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetShardIterator = {
  type t
  @ocaml.doc("<p>Represents the input for <code>GetShardIterator</code>.</p>")
  type request = {
    @ocaml.doc("<p>The time stamp of the data record from which to start reading. Used with shard
            iterator type AT_TIMESTAMP. A time stamp is the Unix epoch date with precision in
            milliseconds. For example, <code>2016-04-04T19:58:46.480-00:00</code> or
                <code>1459799926.480</code>. If a record with this exact time stamp does not exist,
            the iterator returned is for the next (later) record. If the time stamp is older than
            the current trim horizon, the iterator returned is for the oldest untrimmed data record
            (TRIM_HORIZON).</p>")
    @as("Timestamp")
    timestamp_: option<timestamp_>,
    @ocaml.doc("<p>The sequence number of the data record in the shard from which to start reading. Used
            with shard iterator type AT_SEQUENCE_NUMBER and AFTER_SEQUENCE_NUMBER.</p>")
    @as("StartingSequenceNumber")
    startingSequenceNumber: option<sequenceNumber>,
    @ocaml.doc("<p>Determines how the shard iterator is used to start reading data records from the
            shard.</p>
        <p>The following are the valid Amazon Kinesis shard iterator types:</p>
        <ul>
            <li>
                
                <p>AT_SEQUENCE_NUMBER - Start reading from the position denoted by a specific
                    sequence number, provided in the value
                    <code>StartingSequenceNumber</code>.</p>
            </li>
            <li>
                
                <p>AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted by a
                    specific sequence number, provided in the value
                        <code>StartingSequenceNumber</code>.</p>
            </li>
            <li>
                
                <p>AT_TIMESTAMP - Start reading from the position denoted by a specific time
                    stamp, provided in the value <code>Timestamp</code>.</p>
            </li>
            <li>
                
                <p>TRIM_HORIZON - Start reading at the last untrimmed record in the shard in the
                    system, which is the oldest data record in the shard.</p>
            </li>
            <li>
                
                <p>LATEST - Start reading just after the most recent record in the shard, so that
                    you always read the most recent data in the shard.</p>
            </li>
         </ul>")
    @as("ShardIteratorType")
    shardIteratorType: shardIteratorType,
    @ocaml.doc("<p>The shard ID of the Kinesis Data Streams shard to get the iterator for.</p>")
    @as("ShardId")
    shardId: shardId,
    @ocaml.doc("<p>The name of the Amazon Kinesis data stream.</p>") @as("StreamName")
    streamName: streamName,
  }
  @ocaml.doc("<p>Represents the output for <code>GetShardIterator</code>.</p>")
  type response = {
    @ocaml.doc("<p>The position in the shard from which to start reading data records sequentially. A
            shard iterator specifies this position using the sequence number of a data record in a
            shard.</p>")
    @as("ShardIterator")
    shardIterator: option<shardIterator>,
  }
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "GetShardIteratorCommand"
  let make = (
    ~shardIteratorType,
    ~shardId,
    ~streamName,
    ~timestamp_=?,
    ~startingSequenceNumber=?,
    (),
  ) =>
    new({
      timestamp_: timestamp_,
      startingSequenceNumber: startingSequenceNumber,
      shardIteratorType: shardIteratorType,
      shardId: shardId,
      streamName: streamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLimits = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p> The maximum number of data streams with the on-demand capacity mode. </p>")
    @as("OnDemandStreamCountLimit")
    onDemandStreamCountLimit: onDemandStreamCountLimitObject,
    @ocaml.doc("<p> Indicates the number of data streams with the on-demand capacity mode.</p>")
    @as("OnDemandStreamCount")
    onDemandStreamCount: onDemandStreamCountObject,
    @ocaml.doc("<p>The number of open shards.</p>") @as("OpenShardCount")
    openShardCount: shardCountObject,
    @ocaml.doc("<p>The maximum number of shards.</p>") @as("ShardLimit")
    shardLimit: shardCountObject,
  }
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "DescribeLimitsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterStreamConsumer = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN returned by Kinesis Data Streams when you registered the consumer. If you
            don't know the ARN of the consumer that you want to deregister, you can use the
            ListStreamConsumers operation to get a list of the descriptions of all the consumers
            that are currently registered with a given data stream. The description of a consumer
            contains its ARN.</p>")
    @as("ConsumerARN")
    consumerARN: option<consumerARN>,
    @ocaml.doc("<p>The name that you gave to the consumer.</p>") @as("ConsumerName")
    consumerName: option<consumerName>,
    @ocaml.doc("<p>The ARN of the Kinesis data stream that the consumer is registered with. For more
            information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams\">Amazon Resource Names (ARNs) and Amazon Web Services Service
            Namespaces</a>.</p>")
    @as("StreamARN")
    streamARN: option<streamARN>,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesis") @new
  external new: request => t = "DeregisterStreamConsumerCommand"
  let make = (~consumerARN=?, ~consumerName=?, ~streamARN=?, ()) =>
    new({consumerARN: consumerARN, consumerName: consumerName, streamARN: streamARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteStream = {
  type t
  @ocaml.doc("<p>Represents the input for <a>DeleteStream</a>.</p>")
  type request = {
    @ocaml.doc("<p>If this parameter is unset (<code>null</code>) or if you set it to <code>false</code>,
            and the stream has registered consumers, the call to <code>DeleteStream</code> fails
            with a <code>ResourceInUseException</code>. </p>")
    @as("EnforceConsumerDeletion")
    enforceConsumerDeletion: option<booleanObject>,
    @ocaml.doc("<p>The name of the stream to delete.</p>") @as("StreamName") streamName: streamName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "DeleteStreamCommand"
  let make = (~streamName, ~enforceConsumerDeletion=?, ()) =>
    new({enforceConsumerDeletion: enforceConsumerDeletion, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DecreaseStreamRetentionPeriod = {
  type t
  @ocaml.doc("<p>Represents the input for <a>DecreaseStreamRetentionPeriod</a>.</p>")
  type request = {
    @ocaml.doc("<p>The new retention period of the stream, in hours. Must be less than the current
            retention period.</p>")
    @as("RetentionPeriodHours")
    retentionPeriodHours: retentionPeriodHours,
    @ocaml.doc("<p>The name of the stream to modify.</p>") @as("StreamName") streamName: streamName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesis") @new
  external new: request => t = "DecreaseStreamRetentionPeriodCommand"
  let make = (~retentionPeriodHours, ~streamName, ()) =>
    new({retentionPeriodHours: retentionPeriodHours, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateStreamMode = {
  type t
  type request = {
    @ocaml.doc("<p> Specifies the capacity mode to which you want to set your data stream. Currently, in
            Kinesis Data Streams, you can choose between an <b>on-demand</b> capacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>")
    @as("StreamModeDetails")
    streamModeDetails: streamModeDetails,
    @ocaml.doc(
      "<p> Specifies the ARN of the data stream whose capacity mode you want to update. </p>"
    )
    @as("StreamARN")
    streamARN: streamARN,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "UpdateStreamModeCommand"
  let make = (~streamModeDetails, ~streamARN, ()) =>
    new({streamModeDetails: streamModeDetails, streamARN: streamARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveTagsFromStream = {
  type t
  @ocaml.doc("<p>Represents the input for <code>RemoveTagsFromStream</code>.</p>")
  type request = {
    @ocaml.doc("<p>A list of tag keys. Each corresponding tag is removed from the stream.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The name of the stream.</p>") @as("StreamName") streamName: streamName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "RemoveTagsFromStreamCommand"
  let make = (~tagKeys, ~streamName, ()) => new({tagKeys: tagKeys, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterStreamConsumer = {
  type t
  type request = {
    @ocaml.doc("<p>For a given Kinesis data stream, each consumer must have a unique name. However,
            consumer names don't have to be unique across data streams.</p>")
    @as("ConsumerName")
    consumerName: consumerName,
    @ocaml.doc("<p>The ARN of the Kinesis data stream that you want to register the consumer with. For
            more info, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams\">Amazon Resource Names (ARNs) and Amazon Web Services Service
            Namespaces</a>.</p>")
    @as("StreamARN")
    streamARN: streamARN,
  }
  type response = {
    @ocaml.doc("<p>An object that represents the details of the consumer you registered. When you
            register a consumer, it gets an ARN that is generated by Kinesis Data Streams.</p>")
    @as("Consumer")
    consumer: consumer,
  }
  @module("@aws-sdk/client-kinesis") @new
  external new: request => t = "RegisterStreamConsumerCommand"
  let make = (~consumerName, ~streamARN, ()) =>
    new({consumerName: consumerName, streamARN: streamARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreams = {
  type t
  @ocaml.doc("<p>Represents the input for <code>ListStreams</code>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the stream to start the list with.</p>")
    @as("ExclusiveStartStreamName")
    exclusiveStartStreamName: option<streamName>,
    @ocaml.doc("<p>The maximum number of streams to list. The default value is 100. If you specify a
            value greater than 100, at most 100 results are returned.</p>")
    @as("Limit")
    limit: option<listStreamsInputLimit>,
  }
  @ocaml.doc("<p>Represents the output for <code>ListStreams</code>.</p>")
  type response = {
    @ocaml.doc("<p>If set to <code>true</code>, there are more streams available to list.</p>")
    @as("HasMoreStreams")
    hasMoreStreams: booleanObject,
    @ocaml.doc("<p>The names of the streams that are associated with the Amazon Web Services account
            making the <code>ListStreams</code> request.</p>")
    @as("StreamNames")
    streamNames: streamNameList,
  }
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "ListStreamsCommand"
  let make = (~exclusiveStartStreamName=?, ~limit=?, ()) =>
    new({exclusiveStartStreamName: exclusiveStartStreamName, limit: limit})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableEnhancedMonitoring = {
  type t
  @ocaml.doc("<p>Represents the input for <a>EnableEnhancedMonitoring</a>.</p>")
  type request = {
    @ocaml.doc("<p>List of shard-level metrics to enable.</p>
        <p>The following are the valid shard-level metrics. The value \"<code>ALL</code>\" enables
            every metric.</p>
        <ul>
            <li>
                <p>
                    <code>IncomingBytes</code>
                </p>
            </li>
            <li>
                <p>
                    <code>IncomingRecords</code>
                </p>
            </li>
            <li>
                <p>
                    <code>OutgoingBytes</code>
                </p>
            </li>
            <li>
                <p>
                    <code>OutgoingRecords</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WriteProvisionedThroughputExceeded</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ReadProvisionedThroughputExceeded</code>
                </p>
            </li>
            <li>
                <p>
                    <code>IteratorAgeMilliseconds</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ALL</code>
                </p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html\">Monitoring the Amazon
                Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon
                Kinesis Data Streams Developer Guide</i>.</p>")
    @as("ShardLevelMetrics")
    shardLevelMetrics: metricsNameList,
    @ocaml.doc("<p>The name of the stream for which to enable enhanced monitoring.</p>")
    @as("StreamName")
    streamName: streamName,
  }
  @ocaml.doc(
    "<p>Represents the output for <a>EnableEnhancedMonitoring</a> and <a>DisableEnhancedMonitoring</a>.</p>"
  )
  type response = {
    @ocaml.doc("<p>Represents the list of all the metrics that would be in the enhanced state after the
            operation.</p>")
    @as("DesiredShardLevelMetrics")
    desiredShardLevelMetrics: option<metricsNameList>,
    @ocaml.doc("<p>Represents the current state of the metrics that are in the enhanced state before the
            operation.</p>")
    @as("CurrentShardLevelMetrics")
    currentShardLevelMetrics: option<metricsNameList>,
    @ocaml.doc("<p>The name of the Kinesis data stream.</p>") @as("StreamName")
    streamName: option<streamName>,
  }
  @module("@aws-sdk/client-kinesis") @new
  external new: request => t = "EnableEnhancedMonitoringCommand"
  let make = (~shardLevelMetrics, ~streamName, ()) =>
    new({shardLevelMetrics: shardLevelMetrics, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableEnhancedMonitoring = {
  type t
  @ocaml.doc("<p>Represents the input for <a>DisableEnhancedMonitoring</a>.</p>")
  type request = {
    @ocaml.doc("<p>List of shard-level metrics to disable.</p>
        <p>The following are the valid shard-level metrics. The value \"<code>ALL</code>\" disables
            every metric.</p>
        <ul>
            <li>
                <p>
                    <code>IncomingBytes</code>
                </p>
            </li>
            <li>
                <p>
                    <code>IncomingRecords</code>
                </p>
            </li>
            <li>
                <p>
                    <code>OutgoingBytes</code>
                </p>
            </li>
            <li>
                <p>
                    <code>OutgoingRecords</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WriteProvisionedThroughputExceeded</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ReadProvisionedThroughputExceeded</code>
                </p>
            </li>
            <li>
                <p>
                    <code>IteratorAgeMilliseconds</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ALL</code>
                </p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html\">Monitoring the Amazon
                Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon
                Kinesis Data Streams Developer Guide</i>.</p>")
    @as("ShardLevelMetrics")
    shardLevelMetrics: metricsNameList,
    @ocaml.doc(
      "<p>The name of the Kinesis data stream for which to disable enhanced monitoring.</p>"
    )
    @as("StreamName")
    streamName: streamName,
  }
  @ocaml.doc(
    "<p>Represents the output for <a>EnableEnhancedMonitoring</a> and <a>DisableEnhancedMonitoring</a>.</p>"
  )
  type response = {
    @ocaml.doc("<p>Represents the list of all the metrics that would be in the enhanced state after the
            operation.</p>")
    @as("DesiredShardLevelMetrics")
    desiredShardLevelMetrics: option<metricsNameList>,
    @ocaml.doc("<p>Represents the current state of the metrics that are in the enhanced state before the
            operation.</p>")
    @as("CurrentShardLevelMetrics")
    currentShardLevelMetrics: option<metricsNameList>,
    @ocaml.doc("<p>The name of the Kinesis data stream.</p>") @as("StreamName")
    streamName: option<streamName>,
  }
  @module("@aws-sdk/client-kinesis") @new
  external new: request => t = "DisableEnhancedMonitoringCommand"
  let make = (~shardLevelMetrics, ~streamName, ()) =>
    new({shardLevelMetrics: shardLevelMetrics, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStreamConsumer = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN returned by Kinesis Data Streams when you registered the consumer.</p>")
    @as("ConsumerARN")
    consumerARN: option<consumerARN>,
    @ocaml.doc("<p>The name that you gave to the consumer.</p>") @as("ConsumerName")
    consumerName: option<consumerName>,
    @ocaml.doc("<p>The ARN of the Kinesis data stream that the consumer is registered with. For more
            information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams\">Amazon Resource Names (ARNs) and Amazon Web Services Service
            Namespaces</a>.</p>")
    @as("StreamARN")
    streamARN: option<streamARN>,
  }
  type response = {
    @ocaml.doc("<p>An object that represents the details of the consumer.</p>")
    @as("ConsumerDescription")
    consumerDescription: consumerDescription,
  }
  @module("@aws-sdk/client-kinesis") @new
  external new: request => t = "DescribeStreamConsumerCommand"
  let make = (~consumerARN=?, ~consumerName=?, ~streamARN=?, ()) =>
    new({consumerARN: consumerARN, consumerName: consumerName, streamARN: streamARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStream = {
  type t
  @ocaml.doc("<p>Represents the input for <code>CreateStream</code>.</p>")
  type request = {
    @ocaml.doc("<p> Indicates the capacity mode of the data stream. Currently, in Kinesis Data Streams,
            you can choose between an <b>on-demand</b> capacity mode and a
                <b>provisioned</b> capacity mode for your data
            streams.</p>")
    @as("StreamModeDetails")
    streamModeDetails: option<streamModeDetails>,
    @ocaml.doc("<p>The number of shards that the stream will use. The throughput of the stream is a
            function of the number of shards; more shards are required for greater provisioned
            throughput.</p>")
    @as("ShardCount")
    shardCount: option<positiveIntegerObject>,
    @ocaml.doc("<p>A name to identify the stream. The stream name is scoped to the Amazon Web Services
            account used by the application that creates the stream. It is also scoped by Amazon Web Services Region. That is, two streams in two different Amazon Web Services accounts
            can have the same name. Two streams in the same Amazon Web Services account but in two
            different Regions can also have the same name.</p>")
    @as("StreamName")
    streamName: streamName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "CreateStreamCommand"
  let make = (~streamName, ~streamModeDetails=?, ~shardCount=?, ()) =>
    new({streamModeDetails: streamModeDetails, shardCount: shardCount, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddTagsToStream = {
  type t
  @ocaml.doc("<p>Represents the input for <code>AddTagsToStream</code>.</p>")
  type request = {
    @ocaml.doc("<p>A set of up to 10 key-value pairs to use to create the tags.</p>") @as("Tags")
    tags: tagMap,
    @ocaml.doc("<p>The name of the stream.</p>") @as("StreamName") streamName: streamName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "AddTagsToStreamCommand"
  let make = (~tags, ~streamName, ()) => new({tags: tags, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutRecords = {
  type t
  @ocaml.doc("<p>A <code>PutRecords</code> request.</p>")
  type request = {
    @ocaml.doc("<p>The stream name associated with the request.</p>") @as("StreamName")
    streamName: streamName,
    @ocaml.doc("<p>The records associated with the request.</p>") @as("Records")
    records: putRecordsRequestEntryList,
  }
  @ocaml.doc("<p>
            <code>PutRecords</code> results.</p>")
  type response = {
    @ocaml.doc("<p>The encryption type used on the records. This parameter can be one of the following
            values:</p>
        <ul>
            <li>
                <p>
                  <code>NONE</code>: Do not encrypt the records.</p>
            </li>
            <li>
                <p>
                  <code>KMS</code>: Use server-side encryption on the records using a
                    customer-managed Amazon Web Services KMS key.</p>
            </li>
         </ul>")
    @as("EncryptionType")
    encryptionType: option<encryptionType>,
    @ocaml.doc("<p>An array of successfully and unsuccessfully processed record results. A record that is
            successfully added to a stream includes <code>SequenceNumber</code> and
                <code>ShardId</code> in the result. A record that fails to be added to a stream
            includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>")
    @as("Records")
    records: putRecordsResultEntryList,
    @ocaml.doc("<p>The number of unsuccessfully processed records in a <code>PutRecords</code>
            request.</p>")
    @as("FailedRecordCount")
    failedRecordCount: option<positiveIntegerObject>,
  }
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "PutRecordsCommand"
  let make = (~streamName, ~records, ()) => new({streamName: streamName, records: records})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForStream = {
  type t
  @ocaml.doc("<p>Represents the input for <code>ListTagsForStream</code>.</p>")
  type request = {
    @ocaml.doc("<p>The number of tags to return. If this number is less than the total number of tags
            associated with the stream, <code>HasMoreTags</code> is set to <code>true</code>. To
            list additional tags, set <code>ExclusiveStartTagKey</code> to the last key in the
            response.</p>")
    @as("Limit")
    limit: option<listTagsForStreamInputLimit>,
    @ocaml.doc("<p>The key to use as the starting point for the list of tags. If this parameter is set,
                <code>ListTagsForStream</code> gets all tags that occur after
                <code>ExclusiveStartTagKey</code>. </p>")
    @as("ExclusiveStartTagKey")
    exclusiveStartTagKey: option<tagKey>,
    @ocaml.doc("<p>The name of the stream.</p>") @as("StreamName") streamName: streamName,
  }
  @ocaml.doc("<p>Represents the output for <code>ListTagsForStream</code>.</p>")
  type response = {
    @ocaml.doc("<p>If set to <code>true</code>, more tags are available. To request additional tags, set
                <code>ExclusiveStartTagKey</code> to the key of the last tag returned.</p>")
    @as("HasMoreTags")
    hasMoreTags: booleanObject,
    @ocaml.doc("<p>A list of tags associated with <code>StreamName</code>, starting with the first tag
            after <code>ExclusiveStartTagKey</code> and up to the specified <code>Limit</code>.
        </p>")
    @as("Tags")
    tags: tagList_,
  }
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "ListTagsForStreamCommand"
  let make = (~streamName, ~limit=?, ~exclusiveStartTagKey=?, ()) =>
    new({limit: limit, exclusiveStartTagKey: exclusiveStartTagKey, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreamConsumers = {
  type t
  type request = {
    @ocaml.doc("<p>Specify this input parameter to distinguish data streams that have the same name. For
            example, if you create a data stream and then delete it, and you later create another
            data stream with the same name, you can use this input parameter to specify which of the
            two streams you want to list the consumers for. </p>
        <p>You can't specify this parameter if you specify the NextToken parameter. </p>")
    @as("StreamCreationTimestamp")
    streamCreationTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The maximum number of consumers that you want a single call of
                <code>ListStreamConsumers</code> to return. The default value is 100. If you specify
            a value greater than 100, at most 100 results are returned. </p>")
    @as("MaxResults")
    maxResults: option<listStreamConsumersInputLimit>,
    @ocaml.doc("<p>When the number of consumers that are registered with the data stream is greater than
            the default value for the <code>MaxResults</code> parameter, or if you explicitly
            specify a value for <code>MaxResults</code> that is less than the number of consumers
            that are registered with the data stream, the response includes a pagination token named
                <code>NextToken</code>. You can specify this <code>NextToken</code> value in a
            subsequent call to <code>ListStreamConsumers</code> to list the next set of registered
            consumers.</p>
        <p>Don't specify <code>StreamName</code> or <code>StreamCreationTimestamp</code> if you
            specify <code>NextToken</code> because the latter unambiguously identifies the
            stream.</p>
        <p>You can optionally specify a value for the <code>MaxResults</code> parameter when you
            specify <code>NextToken</code>. If you specify a <code>MaxResults</code> value that is
            less than the number of consumers that the operation returns if you don't specify
                <code>MaxResults</code>, the response will contain a new <code>NextToken</code>
            value. You can use the new <code>NextToken</code> value in a subsequent call to the
                <code>ListStreamConsumers</code> operation to list the next set of consumers.</p>
        <important>
            <p>Tokens expire after 300 seconds. When you obtain a value for
                    <code>NextToken</code> in the response to a call to
                    <code>ListStreamConsumers</code>, you have 300 seconds to use that value. If you
                specify an expired token in a call to <code>ListStreamConsumers</code>, you get
                    <code>ExpiredNextTokenException</code>.</p>
        </important>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the Kinesis data stream for which you want to list the registered
            consumers. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams\">Amazon Resource Names (ARNs) and Amazon Web Services Service
            Namespaces</a>.</p>")
    @as("StreamARN")
    streamARN: streamARN,
  }
  type response = {
    @ocaml.doc("<p>When the number of consumers that are registered with the data stream is greater than
            the default value for the <code>MaxResults</code> parameter, or if you explicitly
            specify a value for <code>MaxResults</code> that is less than the number of registered
            consumers, the response includes a pagination token named <code>NextToken</code>. You
            can specify this <code>NextToken</code> value in a subsequent call to
                <code>ListStreamConsumers</code> to list the next set of registered consumers. For
            more information about the use of this pagination token when calling the
                <code>ListStreamConsumers</code> operation, see <a>ListStreamConsumersInput$NextToken</a>.</p>
        <important>
            <p>Tokens expire after 300 seconds. When you obtain a value for
                    <code>NextToken</code> in the response to a call to
                    <code>ListStreamConsumers</code>, you have 300 seconds to use that value. If you
                specify an expired token in a call to <code>ListStreamConsumers</code>, you get
                    <code>ExpiredNextTokenException</code>.</p>
        </important>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of JSON objects. Each object represents one registered consumer.</p>")
    @as("Consumers")
    consumers: option<consumerList>,
  }
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "ListStreamConsumersCommand"
  let make = (~streamARN, ~streamCreationTimestamp=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      streamCreationTimestamp: streamCreationTimestamp,
      maxResults: maxResults,
      nextToken: nextToken,
      streamARN: streamARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListShards = {
  type t
  type request = {
    @ocaml.doc("<p>Enables you to filter out the response of the <code>ListShards</code> API. You can
            only specify one filter at a time. </p>
        <p>If you use the <code>ShardFilter</code> parameter when invoking the ListShards API,
            the <code>Type</code> is the required property and must be specified. If you specify the
                <code>AT_TRIM_HORIZON</code>, <code>FROM_TRIM_HORIZON</code>, or
                <code>AT_LATEST</code> types, you do not need to specify either the
                <code>ShardId</code> or the <code>Timestamp</code> optional properties. </p>
        <p>If you specify the <code>AFTER_SHARD_ID</code> type, you must also provide the value
            for the optional <code>ShardId</code> property. The <code>ShardId</code> property is
            identical in fuctionality to the <code>ExclusiveStartShardId</code> parameter of the
                <code>ListShards</code> API. When <code>ShardId</code> property is specified, the
            response includes the shards starting with the shard whose ID immediately follows the
                <code>ShardId</code> that you provided. </p>
        <p>If you specify the <code>AT_TIMESTAMP</code> or <code>FROM_TIMESTAMP_ID</code> type,
            you must also provide the value for the optional <code>Timestamp</code> property. If you
            specify the AT_TIMESTAMP type, then all shards that were open at the provided timestamp
            are returned. If you specify the FROM_TIMESTAMP type, then all shards starting from the
            provided timestamp to TIP are returned. </p>")
    @as("ShardFilter")
    shardFilter: option<shardFilter>,
    @ocaml.doc("<p>Specify this input parameter to distinguish data streams that have the same name. For
            example, if you create a data stream and then delete it, and you later create another
            data stream with the same name, you can use this input parameter to specify which of the
            two streams you want to list the shards for.</p>
        <p>You cannot specify this parameter if you specify the <code>NextToken</code>
            parameter.</p>")
    @as("StreamCreationTimestamp")
    streamCreationTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The maximum number of shards to return in a single call to <code>ListShards</code>.
            The maximum number of shards to return in a single call. The default value is 1000. If
            you specify a value greater than 1000, at most 1000 results are returned. </p>
        <p>When the number of shards to be listed is greater than the value of
                <code>MaxResults</code>, the response contains a <code>NextToken</code> value that
            you can use in a subsequent call to <code>ListShards</code> to list the next set of
            shards.</p>")
    @as("MaxResults")
    maxResults: option<listShardsInputLimit>,
    @ocaml.doc("<p>Specify this parameter to indicate that you want to list the shards starting with the
            shard whose ID immediately follows <code>ExclusiveStartShardId</code>.</p>
        <p>If you don't specify this parameter, the default behavior is for
                <code>ListShards</code> to list the shards starting with the first one in the
            stream.</p>
        <p>You cannot specify this parameter if you specify <code>NextToken</code>.</p>")
    @as("ExclusiveStartShardId")
    exclusiveStartShardId: option<shardId>,
    @ocaml.doc("<p>When the number of shards in the data stream is greater than the default value for the
                <code>MaxResults</code> parameter, or if you explicitly specify a value for
                <code>MaxResults</code> that is less than the number of shards in the data stream,
            the response includes a pagination token named <code>NextToken</code>. You can specify
            this <code>NextToken</code> value in a subsequent call to <code>ListShards</code> to
            list the next set of shards.</p>
        <p>Don't specify <code>StreamName</code> or <code>StreamCreationTimestamp</code> if you
            specify <code>NextToken</code> because the latter unambiguously identifies the
            stream.</p>
        <p>You can optionally specify a value for the <code>MaxResults</code> parameter when you
            specify <code>NextToken</code>. If you specify a <code>MaxResults</code> value that is
            less than the number of shards that the operation returns if you don't specify
                <code>MaxResults</code>, the response will contain a new <code>NextToken</code>
            value. You can use the new <code>NextToken</code> value in a subsequent call to the
                <code>ListShards</code> operation.</p>
        <important>
            <p>Tokens expire after 300 seconds. When you obtain a value for
                    <code>NextToken</code> in the response to a call to <code>ListShards</code>, you
                have 300 seconds to use that value. If you specify an expired token in a call to
                    <code>ListShards</code>, you get <code>ExpiredNextTokenException</code>.</p>
        </important>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the data stream whose shards you want to list. </p>
        <p>You cannot specify this parameter if you specify the <code>NextToken</code>
            parameter.</p>")
    @as("StreamName")
    streamName: option<streamName>,
  }
  type response = {
    @ocaml.doc("<p>When the number of shards in the data stream is greater than the default value for the
                <code>MaxResults</code> parameter, or if you explicitly specify a value for
                <code>MaxResults</code> that is less than the number of shards in the data stream,
            the response includes a pagination token named <code>NextToken</code>. You can specify
            this <code>NextToken</code> value in a subsequent call to <code>ListShards</code> to
            list the next set of shards. For more information about the use of this pagination token
            when calling the <code>ListShards</code> operation, see <a>ListShardsInput$NextToken</a>.</p>
        <important>
            <p>Tokens expire after 300 seconds. When you obtain a value for
                    <code>NextToken</code> in the response to a call to <code>ListShards</code>, you
                have 300 seconds to use that value. If you specify an expired token in a call to
                    <code>ListShards</code>, you get <code>ExpiredNextTokenException</code>.</p>
        </important>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of JSON objects. Each object represents one shard and specifies the IDs of
            the shard, the shard's parent, and the shard that's adjacent to the shard's parent. Each
            object also contains the starting and ending hash keys and the starting and ending
            sequence numbers for the shard.</p>")
    @as("Shards")
    shards: option<shardList>,
  }
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "ListShardsCommand"
  let make = (
    ~shardFilter=?,
    ~streamCreationTimestamp=?,
    ~maxResults=?,
    ~exclusiveStartShardId=?,
    ~nextToken=?,
    ~streamName=?,
    (),
  ) =>
    new({
      shardFilter: shardFilter,
      streamCreationTimestamp: streamCreationTimestamp,
      maxResults: maxResults,
      exclusiveStartShardId: exclusiveStartShardId,
      nextToken: nextToken,
      streamName: streamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRecords = {
  type t
  @ocaml.doc("<p>Represents the input for <a>GetRecords</a>.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of records to return. Specify a value of up to 10,000. If you
            specify a value that is greater than 10,000, <a>GetRecords</a> throws
                <code>InvalidArgumentException</code>. The default value is 10,000.</p>")
    @as("Limit")
    limit: option<getRecordsInputLimit>,
    @ocaml.doc("<p>The position in the shard from which you want to start sequentially reading data
            records. A shard iterator specifies this position using the sequence number of a data
            record in the shard.</p>")
    @as("ShardIterator")
    shardIterator: shardIterator,
  }
  @ocaml.doc("<p>Represents the output for <a>GetRecords</a>.</p>")
  type response = {
    @ocaml.doc("<p>The list of the current shard's child shards, returned in the <code>GetRecords</code>
            API's response only when the end of the current shard is reached.</p>")
    @as("ChildShards")
    childShards: option<childShardList>,
    @ocaml.doc("<p>The number of milliseconds the <a>GetRecords</a> response is from the tip
            of the stream, indicating how far behind current time the consumer is. A value of zero
            indicates that record processing is caught up, and there are no new records to process
            at this moment.</p>")
    @as("MillisBehindLatest")
    millisBehindLatest: option<millisBehindLatest>,
    @ocaml.doc("<p>The next position in the shard from which to start sequentially reading data records.
            If set to <code>null</code>, the shard has been closed and the requested iterator does
            not return any more data. </p>")
    @as("NextShardIterator")
    nextShardIterator: option<shardIterator>,
    @ocaml.doc("<p>The data records retrieved from the shard.</p>") @as("Records")
    records: recordList,
  }
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "GetRecordsCommand"
  let make = (~shardIterator, ~limit=?, ()) => new({limit: limit, shardIterator: shardIterator})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStreamSummary = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the stream to describe.</p>") @as("StreamName")
    streamName: streamName,
  }
  type response = {
    @ocaml.doc("<p>A <a>StreamDescriptionSummary</a> containing information about the
            stream.</p>")
    @as("StreamDescriptionSummary")
    streamDescriptionSummary: streamDescriptionSummary,
  }
  @module("@aws-sdk/client-kinesis") @new
  external new: request => t = "DescribeStreamSummaryCommand"
  let make = (~streamName, ()) => new({streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStream = {
  type t
  @ocaml.doc("<p>Represents the input for <code>DescribeStream</code>.</p>")
  type request = {
    @ocaml.doc("<p>The shard ID of the shard to start with.</p>
        <p>Specify this parameter to indicate that you want to describe the stream starting with
            the shard whose ID immediately follows <code>ExclusiveStartShardId</code>.</p>
        <p>If you don't specify this parameter, the default behavior for
                <code>DescribeStream</code> is to describe the stream starting with the first shard
            in the stream.</p>")
    @as("ExclusiveStartShardId")
    exclusiveStartShardId: option<shardId>,
    @ocaml.doc("<p>The maximum number of shards to return in a single call. The default value is 100. If
            you specify a value greater than 100, at most 100 results are returned.</p>")
    @as("Limit")
    limit: option<describeStreamInputLimit>,
    @ocaml.doc("<p>The name of the stream to describe.</p>") @as("StreamName")
    streamName: streamName,
  }
  @ocaml.doc("<p>Represents the output for <code>DescribeStream</code>.</p>")
  type response = {
    @ocaml.doc("<p>The current status of the stream, the stream Amazon Resource Name (ARN), an array of
            shard objects that comprise the stream, and whether there are more shards
            available.</p>")
    @as("StreamDescription")
    streamDescription: streamDescription,
  }
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "DescribeStreamCommand"
  let make = (~streamName, ~exclusiveStartShardId=?, ~limit=?, ()) =>
    new({exclusiveStartShardId: exclusiveStartShardId, limit: limit, streamName: streamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SubscribeToShard = {
  type t
  type request = {
    @ocaml.doc("<p>The starting position in the data stream from which to start streaming.</p>")
    @as("StartingPosition")
    startingPosition: startingPosition,
    @ocaml.doc("<p>The ID of the shard you want to subscribe to. To see a list of all the shards for a
            given stream, use <a>ListShards</a>.</p>")
    @as("ShardId")
    shardId: shardId,
    @ocaml.doc(
      "<p>For this parameter, use the value you obtained when you called <a>RegisterStreamConsumer</a>.</p>"
    )
    @as("ConsumerARN")
    consumerARN: consumerARN,
  }
  type response = {
    @ocaml.doc("<p>The event stream that your consumer can use to read records from the shard.</p>")
    @as("EventStream")
    eventStream: subscribeToShardEventStream,
  }
  @module("@aws-sdk/client-kinesis") @new external new: request => t = "SubscribeToShardCommand"
  let make = (~startingPosition, ~shardId, ~consumerARN, ()) =>
    new({startingPosition: startingPosition, shardId: shardId, consumerARN: consumerARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
