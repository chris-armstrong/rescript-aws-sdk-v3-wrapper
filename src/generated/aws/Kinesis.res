type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-kinesis") @new external createClient: unit => awsServiceClient = "KinesisClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type streamStatus = [@as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("DELETING") #DELETING | @as("CREATING") #CREATING]
type streamName = string
type streamARN = string
type shardIteratorType = [@as("AT_TIMESTAMP") #AT_TIMESTAMP | @as("LATEST") #LATEST | @as("TRIM_HORIZON") #TRIM_HORIZON | @as("AFTER_SEQUENCE_NUMBER") #AFTER_SEQUENCE_NUMBER | @as("AT_SEQUENCE_NUMBER") #AT_SEQUENCE_NUMBER]
type shardIterator = string
type shardId = string
type shardFilterType = [@as("FROM_TIMESTAMP") #FROM_TIMESTAMP | @as("AT_TIMESTAMP") #AT_TIMESTAMP | @as("AT_LATEST") #AT_LATEST | @as("FROM_TRIM_HORIZON") #FROM_TRIM_HORIZON | @as("AT_TRIM_HORIZON") #AT_TRIM_HORIZON | @as("AFTER_SHARD_ID") #AFTER_SHARD_ID]
type shardCountObject = int
type sequenceNumber = string
type scalingType = [@as("UNIFORM_SCALING") #UNIFORM_SCALING]
type retentionPeriodHours = int
type positiveIntegerObject = int
type partitionKey = string
type nextToken = string
type millisBehindLatest = float
type metricsName = [@as("ALL") #ALL | @as("IteratorAgeMilliseconds") #IteratorAgeMilliseconds | @as("ReadProvisionedThroughputExceeded") #ReadProvisionedThroughputExceeded | @as("WriteProvisionedThroughputExceeded") #WriteProvisionedThroughputExceeded | @as("OutgoingRecords") #OutgoingRecords | @as("OutgoingBytes") #OutgoingBytes | @as("IncomingRecords") #IncomingRecords | @as("IncomingBytes") #IncomingBytes]
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
type consumerStatus = [@as("ACTIVE") #ACTIVE | @as("DELETING") #DELETING | @as("CREATING") #CREATING]
type consumerName = string
type consumerCountObject = int
type consumerARN = string
type booleanObject = bool
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
  @as("Key") key: tagKey
}
type streamNameList = array<streamName>
type startingPosition = {
@as("Timestamp") timestamp_: option<timestamp_>,
  @as("SequenceNumber") sequenceNumber: option<sequenceNumber>,
  @as("Type") type_: shardIteratorType
}
type shardIdList = array<shardId>
type shardFilter = {
@as("Timestamp") timestamp_: option<timestamp_>,
  @as("ShardId") shardId: option<shardId>,
  @as("Type") type_: shardFilterType
}
type sequenceNumberRange = {
@as("EndingSequenceNumber") endingSequenceNumber: option<sequenceNumber>,
  @as("StartingSequenceNumber") startingSequenceNumber: sequenceNumber
}
type resourceNotFoundException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: option<errorMessage>
}
type resourceInUseException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: option<errorMessage>
}
type record = {
@as("EncryptionType") encryptionType: option<encryptionType>,
  @as("PartitionKey") partitionKey: partitionKey,
  @as("Data") data: data,
  @as("ApproximateArrivalTimestamp") approximateArrivalTimestamp: option<timestamp_>,
  @as("SequenceNumber") sequenceNumber: sequenceNumber
}
type putRecordsResultEntry = {
@as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("ShardId") shardId: option<shardId>,
  @as("SequenceNumber") sequenceNumber: option<sequenceNumber>
}
type putRecordsRequestEntry = {
@as("PartitionKey") partitionKey: partitionKey,
  @as("ExplicitHashKey") explicitHashKey: option<hashKey>,
  @as("Data") data: data
}
type metricsNameList = array<metricsName>
type kmsthrottlingException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: option<errorMessage>
}
type kmsoptInRequired = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: option<errorMessage>
}
type kmsnotFoundException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: option<errorMessage>
}
type kmsinvalidStateException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: option<errorMessage>
}
type kmsdisabledException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: option<errorMessage>
}
type kmsaccessDeniedException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: option<errorMessage>
}
type internalFailureException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: option<errorMessage>
}
type hashKeyRange = {
@as("EndingHashKey") endingHashKey: hashKey,
  @as("StartingHashKey") startingHashKey: hashKey
}
type consumerDescription = {
@as("StreamARN") streamARN: streamARN,
  @as("ConsumerCreationTimestamp") consumerCreationTimestamp: timestamp_,
  @as("ConsumerStatus") consumerStatus: consumerStatus,
  @as("ConsumerARN") consumerARN: consumerARN,
  @as("ConsumerName") consumerName: consumerName
}
type consumer = {
@as("ConsumerCreationTimestamp") consumerCreationTimestamp: timestamp_,
  @as("ConsumerStatus") consumerStatus: consumerStatus,
  @as("ConsumerARN") consumerARN: consumerARN,
  @as("ConsumerName") consumerName: consumerName
}
type tagList_ = array<tag>
type shard = {
@as("SequenceNumberRange") sequenceNumberRange: sequenceNumberRange,
  @as("HashKeyRange") hashKeyRange: hashKeyRange,
  @as("AdjacentParentShardId") adjacentParentShardId: option<shardId>,
  @as("ParentShardId") parentShardId: option<shardId>,
  @as("ShardId") shardId: shardId
}
type recordList = array<record>
type putRecordsResultEntryList = array<putRecordsResultEntry>
type putRecordsRequestEntryList = array<putRecordsRequestEntry>
type enhancedMetrics = {
@as("ShardLevelMetrics") shardLevelMetrics: option<metricsNameList>
}
type consumerList = array<consumer>
type childShard = {
@as("HashKeyRange") hashKeyRange: hashKeyRange,
  @as("ParentShards") parentShards: shardIdList,
  @as("ShardId") shardId: shardId
}
type shardList = array<shard>
type enhancedMonitoringList = array<enhancedMetrics>
type childShardList = array<childShard>
type subscribeToShardEvent = {
@as("ChildShards") childShards: option<childShardList>,
  @as("MillisBehindLatest") millisBehindLatest: millisBehindLatest,
  @as("ContinuationSequenceNumber") continuationSequenceNumber: sequenceNumber,
  @as("Records") records: recordList
}
type streamDescriptionSummary = {
@as("ConsumerCount") consumerCount: option<consumerCountObject>,
  @as("OpenShardCount") openShardCount: shardCountObject,
  @as("KeyId") keyId: option<keyId>,
  @as("EncryptionType") encryptionType: option<encryptionType>,
  @as("EnhancedMonitoring") enhancedMonitoring: enhancedMonitoringList,
  @as("StreamCreationTimestamp") streamCreationTimestamp: timestamp_,
  @as("RetentionPeriodHours") retentionPeriodHours: retentionPeriodHours,
  @as("StreamStatus") streamStatus: streamStatus,
  @as("StreamARN") streamARN: streamARN,
  @as("StreamName") streamName: streamName
}
type streamDescription = {
@as("KeyId") keyId: option<keyId>,
  @as("EncryptionType") encryptionType: option<encryptionType>,
  @as("EnhancedMonitoring") enhancedMonitoring: enhancedMonitoringList,
  @as("StreamCreationTimestamp") streamCreationTimestamp: timestamp_,
  @as("RetentionPeriodHours") retentionPeriodHours: retentionPeriodHours,
  @as("HasMoreShards") hasMoreShards: booleanObject,
  @as("Shards") shards: shardList,
  @as("StreamStatus") streamStatus: streamStatus,
  @as("StreamARN") streamARN: streamARN,
  @as("StreamName") streamName: streamName
}
type subscribeToShardEventStream = {
@as("InternalFailureException") internalFailureException: option<internalFailureException>,
  @as("KMSThrottlingException") kmsthrottlingException: option<kmsthrottlingException>,
  @as("KMSOptInRequired") kmsoptInRequired: option<kmsoptInRequired>,
  @as("KMSNotFoundException") kmsnotFoundException: option<kmsnotFoundException>,
  @as("KMSAccessDeniedException") kmsaccessDeniedException: option<kmsaccessDeniedException>,
  @as("KMSInvalidStateException") kmsinvalidStateException: option<kmsinvalidStateException>,
  @as("KMSDisabledException") kmsdisabledException: option<kmsdisabledException>,
  @as("ResourceInUseException") resourceInUseException: option<resourceInUseException>,
  @as("ResourceNotFoundException") resourceNotFoundException: option<resourceNotFoundException>,
  @as("SubscribeToShardEvent") subscribeToShardEvent: option<subscribeToShardEvent>
}

module UpdateShardCount = {
  type t;
  type request = {
@as("ScalingType") scalingType: scalingType,
  @as("TargetShardCount") targetShardCount: positiveIntegerObject,
  @as("StreamName") streamName: streamName
}
  type response = {
@as("TargetShardCount") targetShardCount: option<positiveIntegerObject>,
  @as("CurrentShardCount") currentShardCount: option<positiveIntegerObject>,
  @as("StreamName") streamName: option<streamName>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "UpdateShardCountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopStreamEncryption = {
  type t;
  type request = {
@as("KeyId") keyId: keyId,
  @as("EncryptionType") encryptionType: encryptionType,
  @as("StreamName") streamName: streamName
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "StopStreamEncryptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StartStreamEncryption = {
  type t;
  type request = {
@as("KeyId") keyId: keyId,
  @as("EncryptionType") encryptionType: encryptionType,
  @as("StreamName") streamName: streamName
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "StartStreamEncryptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SplitShard = {
  type t;
  type request = {
@as("NewStartingHashKey") newStartingHashKey: hashKey,
  @as("ShardToSplit") shardToSplit: shardId,
  @as("StreamName") streamName: streamName
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "SplitShardCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutRecord = {
  type t;
  type request = {
@as("SequenceNumberForOrdering") sequenceNumberForOrdering: option<sequenceNumber>,
  @as("ExplicitHashKey") explicitHashKey: option<hashKey>,
  @as("PartitionKey") partitionKey: partitionKey,
  @as("Data") data: data,
  @as("StreamName") streamName: streamName
}
  type response = {
@as("EncryptionType") encryptionType: option<encryptionType>,
  @as("SequenceNumber") sequenceNumber: sequenceNumber,
  @as("ShardId") shardId: shardId
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "PutRecordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module MergeShards = {
  type t;
  type request = {
@as("AdjacentShardToMerge") adjacentShardToMerge: shardId,
  @as("ShardToMerge") shardToMerge: shardId,
  @as("StreamName") streamName: streamName
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "MergeShardsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module IncreaseStreamRetentionPeriod = {
  type t;
  type request = {
@as("RetentionPeriodHours") retentionPeriodHours: retentionPeriodHours,
  @as("StreamName") streamName: streamName
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "IncreaseStreamRetentionPeriodCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module GetShardIterator = {
  type t;
  type request = {
@as("Timestamp") timestamp_: option<timestamp_>,
  @as("StartingSequenceNumber") startingSequenceNumber: option<sequenceNumber>,
  @as("ShardIteratorType") shardIteratorType: shardIteratorType,
  @as("ShardId") shardId: shardId,
  @as("StreamName") streamName: streamName
}
  type response = {
@as("ShardIterator") shardIterator: option<shardIterator>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "GetShardIteratorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLimits = {
  type t;
  type request = unit
  type response = {
@as("OpenShardCount") openShardCount: shardCountObject,
  @as("ShardLimit") shardLimit: shardCountObject
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DescribeLimitsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeregisterStreamConsumer = {
  type t;
  type request = {
@as("ConsumerARN") consumerARN: option<consumerARN>,
  @as("ConsumerName") consumerName: option<consumerName>,
  @as("StreamARN") streamARN: option<streamARN>
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DeregisterStreamConsumerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteStream = {
  type t;
  type request = {
@as("EnforceConsumerDeletion") enforceConsumerDeletion: option<booleanObject>,
  @as("StreamName") streamName: streamName
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DeleteStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DecreaseStreamRetentionPeriod = {
  type t;
  type request = {
@as("RetentionPeriodHours") retentionPeriodHours: retentionPeriodHours,
  @as("StreamName") streamName: streamName
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DecreaseStreamRetentionPeriodCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateStream = {
  type t;
  type request = {
@as("ShardCount") shardCount: positiveIntegerObject,
  @as("StreamName") streamName: streamName
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "CreateStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RemoveTagsFromStream = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
  @as("StreamName") streamName: streamName
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "RemoveTagsFromStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RegisterStreamConsumer = {
  type t;
  type request = {
@as("ConsumerName") consumerName: consumerName,
  @as("StreamARN") streamARN: streamARN
}
  type response = {
@as("Consumer") consumer: consumer
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "RegisterStreamConsumerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStreams = {
  type t;
  type request = {
@as("ExclusiveStartStreamName") exclusiveStartStreamName: option<streamName>,
  @as("Limit") limit: option<listStreamsInputLimit>
}
  type response = {
@as("HasMoreStreams") hasMoreStreams: booleanObject,
  @as("StreamNames") streamNames: streamNameList
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "ListStreamsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableEnhancedMonitoring = {
  type t;
  type request = {
@as("ShardLevelMetrics") shardLevelMetrics: metricsNameList,
  @as("StreamName") streamName: streamName
}
  type response = {
@as("DesiredShardLevelMetrics") desiredShardLevelMetrics: option<metricsNameList>,
  @as("CurrentShardLevelMetrics") currentShardLevelMetrics: option<metricsNameList>,
  @as("StreamName") streamName: option<streamName>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "EnableEnhancedMonitoringCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableEnhancedMonitoring = {
  type t;
  type request = {
@as("ShardLevelMetrics") shardLevelMetrics: metricsNameList,
  @as("StreamName") streamName: streamName
}
  type response = {
@as("DesiredShardLevelMetrics") desiredShardLevelMetrics: option<metricsNameList>,
  @as("CurrentShardLevelMetrics") currentShardLevelMetrics: option<metricsNameList>,
  @as("StreamName") streamName: option<streamName>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DisableEnhancedMonitoringCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStreamConsumer = {
  type t;
  type request = {
@as("ConsumerARN") consumerARN: option<consumerARN>,
  @as("ConsumerName") consumerName: option<consumerName>,
  @as("StreamARN") streamARN: option<streamARN>
}
  type response = {
@as("ConsumerDescription") consumerDescription: consumerDescription
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DescribeStreamConsumerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddTagsToStream = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
  @as("StreamName") streamName: streamName
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "AddTagsToStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutRecords = {
  type t;
  type request = {
@as("StreamName") streamName: streamName,
  @as("Records") records: putRecordsRequestEntryList
}
  type response = {
@as("EncryptionType") encryptionType: option<encryptionType>,
  @as("Records") records: putRecordsResultEntryList,
  @as("FailedRecordCount") failedRecordCount: option<positiveIntegerObject>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "PutRecordsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForStream = {
  type t;
  type request = {
@as("Limit") limit: option<listTagsForStreamInputLimit>,
  @as("ExclusiveStartTagKey") exclusiveStartTagKey: option<tagKey>,
  @as("StreamName") streamName: streamName
}
  type response = {
@as("HasMoreTags") hasMoreTags: booleanObject,
  @as("Tags") tags: tagList_
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "ListTagsForStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStreamConsumers = {
  type t;
  type request = {
@as("StreamCreationTimestamp") streamCreationTimestamp: option<timestamp_>,
  @as("MaxResults") maxResults: option<listStreamConsumersInputLimit>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("StreamARN") streamARN: streamARN
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Consumers") consumers: option<consumerList>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "ListStreamConsumersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListShards = {
  type t;
  type request = {
@as("ShardFilter") shardFilter: option<shardFilter>,
  @as("StreamCreationTimestamp") streamCreationTimestamp: option<timestamp_>,
  @as("MaxResults") maxResults: option<listShardsInputLimit>,
  @as("ExclusiveStartShardId") exclusiveStartShardId: option<shardId>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("StreamName") streamName: option<streamName>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Shards") shards: option<shardList>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "ListShardsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRecords = {
  type t;
  type request = {
@as("Limit") limit: option<getRecordsInputLimit>,
  @as("ShardIterator") shardIterator: shardIterator
}
  type response = {
@as("ChildShards") childShards: option<childShardList>,
  @as("MillisBehindLatest") millisBehindLatest: option<millisBehindLatest>,
  @as("NextShardIterator") nextShardIterator: option<shardIterator>,
  @as("Records") records: recordList
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "GetRecordsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStreamSummary = {
  type t;
  type request = {
@as("StreamName") streamName: streamName
}
  type response = {
@as("StreamDescriptionSummary") streamDescriptionSummary: streamDescriptionSummary
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DescribeStreamSummaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStream = {
  type t;
  type request = {
@as("ExclusiveStartShardId") exclusiveStartShardId: option<shardId>,
  @as("Limit") limit: option<describeStreamInputLimit>,
  @as("StreamName") streamName: streamName
}
  type response = {
@as("StreamDescription") streamDescription: streamDescription
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DescribeStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SubscribeToShard = {
  type t;
  type request = {
@as("StartingPosition") startingPosition: startingPosition,
  @as("ShardId") shardId: shardId,
  @as("ConsumerARN") consumerARN: consumerARN
}
  type response = {
@as("EventStream") eventStream: subscribeToShardEventStream
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "SubscribeToShardCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
