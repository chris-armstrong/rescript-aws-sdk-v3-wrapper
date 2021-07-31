type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type streamStatus = [@as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("DELETING") #DELETING | @as("CREATING") #CREATING]
type streamName = string
type streamARN = string
type shardIteratorType = [@as("AT_TIMESTAMP") #AT_TIMESTAMP | @as("LATEST") #LATEST | @as("TRIM_HORIZON") #TRIM_HORIZON | @as("AFTER_SEQUENCE_NUMBER") #AFTER_SEQUENCE_NUMBER | @as("AT_SEQUENCE_NUMBER") #AT_SEQUENCE_NUMBER]
type shardIterator = string
type shardId = string
type shardFilterType = [@as("FROM_TIMESTAMP") #FROM_TIMESTAMP | @as("AT_TIMESTAMP") #AT_TIMESTAMP | @as("AT_LATEST") #AT_LATEST | @as("FROM_TRIM_HORIZON") #FROM_TRIM_HORIZON | @as("AT_TRIM_HORIZON") #AT_TRIM_HORIZON | @as("AFTER_SHARD_ID") #AFTER_SHARD_ID]
type shardCountObject = int;
type sequenceNumber = string
type scalingType = [@as("UNIFORM_SCALING") #UNIFORM_SCALING]
type retentionPeriodHours = int;
type positiveIntegerObject = int;
type partitionKey = string
type nextToken = string
type millisBehindLatest = float;
type metricsName = [@as("ALL") #ALL | @as("IteratorAgeMilliseconds") #IteratorAgeMilliseconds | @as("ReadProvisionedThroughputExceeded") #ReadProvisionedThroughputExceeded | @as("WriteProvisionedThroughputExceeded") #WriteProvisionedThroughputExceeded | @as("OutgoingRecords") #OutgoingRecords | @as("OutgoingBytes") #OutgoingBytes | @as("IncomingRecords") #IncomingRecords | @as("IncomingBytes") #IncomingBytes]
type listTagsForStreamInputLimit = int;
type listStreamsInputLimit = int;
type listStreamConsumersInputLimit = int;
type listShardsInputLimit = int;
type keyId = string
type hashKey = string
type getRecordsInputLimit = int;
type errorMessage = string
type errorCode = string
type encryptionType = [@as("KMS") #KMS | @as("NONE") #NONE]
type describeStreamInputLimit = int;
type data = NodeJs.Buffer.t;
type consumerStatus = [@as("ACTIVE") #ACTIVE | @as("DELETING") #DELETING | @as("CREATING") #CREATING]
type consumerName = string
type consumerCountObject = int;
type consumerARN = string
type booleanObject = bool;
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type streamNameList = array<streamName>
type startingPosition = {
@as("Timestamp") timestamp: amazonawsTimestamp,
@as("SequenceNumber") sequenceNumber: sequenceNumber,
@as("Type") type_: option<shardIteratorType>
}
type shardIdList = array<shardId>
type shardFilter = {
@as("Timestamp") timestamp: amazonawsTimestamp,
@as("ShardId") shardId: shardId,
@as("Type") type_: option<shardFilterType>
}
type sequenceNumberRange = {
@as("EndingSequenceNumber") endingSequenceNumber: sequenceNumber,
@as("StartingSequenceNumber") startingSequenceNumber: option<sequenceNumber>
}
exception ResourceNotFoundException;
exception ResourceInUseException;
type record = {
@as("EncryptionType") encryptionType: encryptionType,
@as("PartitionKey") partitionKey: option<partitionKey>,
@as("Data") data: option<data>,
@as("ApproximateArrivalTimestamp") approximateArrivalTimestamp: amazonawsTimestamp,
@as("SequenceNumber") sequenceNumber: option<sequenceNumber>
}
type putRecordsResultEntry = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("ErrorCode") errorCode: errorCode,
@as("ShardId") shardId: shardId,
@as("SequenceNumber") sequenceNumber: sequenceNumber
}
type putRecordsRequestEntry = {
@as("PartitionKey") partitionKey: option<partitionKey>,
@as("ExplicitHashKey") explicitHashKey: hashKey,
@as("Data") data: option<data>
}
type metricsNameList = array<metricsName>
exception KMSThrottlingException;
exception KMSOptInRequired;
exception KMSNotFoundException;
exception KMSInvalidStateException;
exception KMSDisabledException;
exception KMSAccessDeniedException;
exception InternalFailureException;
type hashKeyRange = {
@as("EndingHashKey") endingHashKey: option<hashKey>,
@as("StartingHashKey") startingHashKey: option<hashKey>
}
type consumerDescription = {
@as("StreamARN") streamARN: option<streamARN>,
@as("ConsumerCreationTimestamp") consumerCreationTimestamp: option<amazonawsTimestamp>,
@as("ConsumerStatus") consumerStatus: option<consumerStatus>,
@as("ConsumerARN") consumerARN: option<consumerARN>,
@as("ConsumerName") consumerName: option<consumerName>
}
type consumer = {
@as("ConsumerCreationTimestamp") consumerCreationTimestamp: option<amazonawsTimestamp>,
@as("ConsumerStatus") consumerStatus: option<consumerStatus>,
@as("ConsumerARN") consumerARN: option<consumerARN>,
@as("ConsumerName") consumerName: option<consumerName>
}
type tagList = array<tag>
type shard = {
@as("SequenceNumberRange") sequenceNumberRange: option<sequenceNumberRange>,
@as("HashKeyRange") hashKeyRange: option<hashKeyRange>,
@as("AdjacentParentShardId") adjacentParentShardId: shardId,
@as("ParentShardId") parentShardId: shardId,
@as("ShardId") shardId: option<shardId>
}
type recordList = array<record>
type putRecordsResultEntryList = array<putRecordsResultEntry>
type putRecordsRequestEntryList = array<putRecordsRequestEntry>
type enhancedMetrics = {
@as("ShardLevelMetrics") shardLevelMetrics: metricsNameList
}
type consumerList = array<consumer>
type childShard = {
@as("HashKeyRange") hashKeyRange: option<hashKeyRange>,
@as("ParentShards") parentShards: option<shardIdList>,
@as("ShardId") shardId: option<shardId>
}
type shardList = array<shard>
type enhancedMonitoringList = array<enhancedMetrics>
type childShardList = array<childShard>
type subscribeToShardEvent = {
@as("ChildShards") childShards: childShardList,
@as("MillisBehindLatest") millisBehindLatest: option<millisBehindLatest>,
@as("ContinuationSequenceNumber") continuationSequenceNumber: option<sequenceNumber>,
@as("Records") records: option<recordList>
}
type streamDescriptionSummary = {
@as("ConsumerCount") consumerCount: consumerCountObject,
@as("OpenShardCount") openShardCount: option<shardCountObject>,
@as("KeyId") keyId: keyId,
@as("EncryptionType") encryptionType: encryptionType,
@as("EnhancedMonitoring") enhancedMonitoring: option<enhancedMonitoringList>,
@as("StreamCreationTimestamp") streamCreationTimestamp: option<amazonawsTimestamp>,
@as("RetentionPeriodHours") retentionPeriodHours: option<retentionPeriodHours>,
@as("StreamStatus") streamStatus: option<streamStatus>,
@as("StreamARN") streamARN: option<streamARN>,
@as("StreamName") streamName: option<streamName>
}
type streamDescription = {
@as("KeyId") keyId: keyId,
@as("EncryptionType") encryptionType: encryptionType,
@as("EnhancedMonitoring") enhancedMonitoring: option<enhancedMonitoringList>,
@as("StreamCreationTimestamp") streamCreationTimestamp: option<amazonawsTimestamp>,
@as("RetentionPeriodHours") retentionPeriodHours: option<retentionPeriodHours>,
@as("HasMoreShards") hasMoreShards: option<booleanObject>,
@as("Shards") shards: option<shardList>,
@as("StreamStatus") streamStatus: option<streamStatus>,
@as("StreamARN") streamARN: option<streamARN>,
@as("StreamName") streamName: option<streamName>
}
type subscribeToShardEventStream = InternalFailureException(internalFailureException) | KMSThrottlingException(kMSThrottlingException) | KMSOptInRequired(kMSOptInRequired) | KMSNotFoundException(kMSNotFoundException) | KMSAccessDeniedException(kMSAccessDeniedException) | KMSInvalidStateException(kMSInvalidStateException) | KMSDisabledException(kMSDisabledException) | ResourceInUseException(resourceInUseException) | ResourceNotFoundException(resourceNotFoundException) | SubscribeToShardEvent(subscribeToShardEvent);
type clientType;
@module("@aws-sdk/client-kinesis") @new external createClient: unit => clientType = "KinesisClient";
module UpdateShardCount = {
  type t;
  type request = {
@as("ScalingType") scalingType: option<scalingType>,
@as("TargetShardCount") targetShardCount: option<positiveIntegerObject>,
@as("StreamName") streamName: option<streamName>
}
  type response = {
@as("TargetShardCount") targetShardCount: positiveIntegerObject,
@as("CurrentShardCount") currentShardCount: positiveIntegerObject,
@as("StreamName") streamName: streamName
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "UpdateShardCountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopStreamEncryption = {
  type t;
  type request = {
@as("KeyId") keyId: option<keyId>,
@as("EncryptionType") encryptionType: option<encryptionType>,
@as("StreamName") streamName: option<streamName>
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "StopStreamEncryptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartStreamEncryption = {
  type t;
  type request = {
@as("KeyId") keyId: option<keyId>,
@as("EncryptionType") encryptionType: option<encryptionType>,
@as("StreamName") streamName: option<streamName>
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "StartStreamEncryptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SplitShard = {
  type t;
  type request = {
@as("NewStartingHashKey") newStartingHashKey: option<hashKey>,
@as("ShardToSplit") shardToSplit: option<shardId>,
@as("StreamName") streamName: option<streamName>
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "SplitShardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutRecord = {
  type t;
  type request = {
@as("SequenceNumberForOrdering") sequenceNumberForOrdering: sequenceNumber,
@as("ExplicitHashKey") explicitHashKey: hashKey,
@as("PartitionKey") partitionKey: option<partitionKey>,
@as("Data") data: option<data>,
@as("StreamName") streamName: option<streamName>
}
  type response = {
@as("EncryptionType") encryptionType: encryptionType,
@as("SequenceNumber") sequenceNumber: option<sequenceNumber>,
@as("ShardId") shardId: option<shardId>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "PutRecordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MergeShards = {
  type t;
  type request = {
@as("AdjacentShardToMerge") adjacentShardToMerge: option<shardId>,
@as("ShardToMerge") shardToMerge: option<shardId>,
@as("StreamName") streamName: option<streamName>
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "MergeShardsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module IncreaseStreamRetentionPeriod = {
  type t;
  type request = {
@as("RetentionPeriodHours") retentionPeriodHours: option<retentionPeriodHours>,
@as("StreamName") streamName: option<streamName>
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "IncreaseStreamRetentionPeriodCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetShardIterator = {
  type t;
  type request = {
@as("Timestamp") timestamp: amazonawsTimestamp,
@as("StartingSequenceNumber") startingSequenceNumber: sequenceNumber,
@as("ShardIteratorType") shardIteratorType: option<shardIteratorType>,
@as("ShardId") shardId: option<shardId>,
@as("StreamName") streamName: option<streamName>
}
  type response = {
@as("ShardIterator") shardIterator: shardIterator
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "GetShardIteratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLimits = {
  type t;
  type request = unit
  type response = {
@as("OpenShardCount") openShardCount: option<shardCountObject>,
@as("ShardLimit") shardLimit: option<shardCountObject>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DescribeLimitsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterStreamConsumer = {
  type t;
  type request = {
@as("ConsumerARN") consumerARN: consumerARN,
@as("ConsumerName") consumerName: consumerName,
@as("StreamARN") streamARN: streamARN
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DeregisterStreamConsumerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteStream = {
  type t;
  type request = {
@as("EnforceConsumerDeletion") enforceConsumerDeletion: booleanObject,
@as("StreamName") streamName: option<streamName>
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DeleteStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DecreaseStreamRetentionPeriod = {
  type t;
  type request = {
@as("RetentionPeriodHours") retentionPeriodHours: option<retentionPeriodHours>,
@as("StreamName") streamName: option<streamName>
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DecreaseStreamRetentionPeriodCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateStream = {
  type t;
  type request = {
@as("ShardCount") shardCount: option<positiveIntegerObject>,
@as("StreamName") streamName: option<streamName>
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "CreateStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveTagsFromStream = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("StreamName") streamName: option<streamName>
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "RemoveTagsFromStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RegisterStreamConsumer = {
  type t;
  type request = {
@as("ConsumerName") consumerName: option<consumerName>,
@as("StreamARN") streamARN: option<streamARN>
}
  type response = {
@as("Consumer") consumer: option<consumer>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "RegisterStreamConsumerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStreams = {
  type t;
  type request = {
@as("ExclusiveStartStreamName") exclusiveStartStreamName: streamName,
@as("Limit") limit: listStreamsInputLimit
}
  type response = {
@as("HasMoreStreams") hasMoreStreams: option<booleanObject>,
@as("StreamNames") streamNames: option<streamNameList>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "ListStreamsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableEnhancedMonitoring = {
  type t;
  type request = {
@as("ShardLevelMetrics") shardLevelMetrics: option<metricsNameList>,
@as("StreamName") streamName: option<streamName>
}
  type response = {
@as("DesiredShardLevelMetrics") desiredShardLevelMetrics: metricsNameList,
@as("CurrentShardLevelMetrics") currentShardLevelMetrics: metricsNameList,
@as("StreamName") streamName: streamName
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "EnableEnhancedMonitoringCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableEnhancedMonitoring = {
  type t;
  type request = {
@as("ShardLevelMetrics") shardLevelMetrics: option<metricsNameList>,
@as("StreamName") streamName: option<streamName>
}
  type response = {
@as("DesiredShardLevelMetrics") desiredShardLevelMetrics: metricsNameList,
@as("CurrentShardLevelMetrics") currentShardLevelMetrics: metricsNameList,
@as("StreamName") streamName: streamName
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DisableEnhancedMonitoringCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStreamConsumer = {
  type t;
  type request = {
@as("ConsumerARN") consumerARN: consumerARN,
@as("ConsumerName") consumerName: consumerName,
@as("StreamARN") streamARN: streamARN
}
  type response = {
@as("ConsumerDescription") consumerDescription: option<consumerDescription>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DescribeStreamConsumerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTagsToStream = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("StreamName") streamName: option<streamName>
}
  
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "AddTagsToStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutRecords = {
  type t;
  type request = {
@as("StreamName") streamName: option<streamName>,
@as("Records") records: option<putRecordsRequestEntryList>
}
  type response = {
@as("EncryptionType") encryptionType: encryptionType,
@as("Records") records: option<putRecordsResultEntryList>,
@as("FailedRecordCount") failedRecordCount: positiveIntegerObject
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "PutRecordsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForStream = {
  type t;
  type request = {
@as("Limit") limit: listTagsForStreamInputLimit,
@as("ExclusiveStartTagKey") exclusiveStartTagKey: tagKey,
@as("StreamName") streamName: option<streamName>
}
  type response = {
@as("HasMoreTags") hasMoreTags: option<booleanObject>,
@as("Tags") tags: option<tagList>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "ListTagsForStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStreamConsumers = {
  type t;
  type request = {
@as("StreamCreationTimestamp") streamCreationTimestamp: amazonawsTimestamp,
@as("MaxResults") maxResults: listStreamConsumersInputLimit,
@as("NextToken") nextToken: nextToken,
@as("StreamARN") streamARN: option<streamARN>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Consumers") consumers: consumerList
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "ListStreamConsumersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListShards = {
  type t;
  type request = {
@as("ShardFilter") shardFilter: shardFilter,
@as("StreamCreationTimestamp") streamCreationTimestamp: amazonawsTimestamp,
@as("MaxResults") maxResults: listShardsInputLimit,
@as("ExclusiveStartShardId") exclusiveStartShardId: shardId,
@as("NextToken") nextToken: nextToken,
@as("StreamName") streamName: streamName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Shards") shards: shardList
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "ListShardsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRecords = {
  type t;
  type request = {
@as("Limit") limit: getRecordsInputLimit,
@as("ShardIterator") shardIterator: option<shardIterator>
}
  type response = {
@as("ChildShards") childShards: childShardList,
@as("MillisBehindLatest") millisBehindLatest: millisBehindLatest,
@as("NextShardIterator") nextShardIterator: shardIterator,
@as("Records") records: option<recordList>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "GetRecordsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStreamSummary = {
  type t;
  type request = {
@as("StreamName") streamName: option<streamName>
}
  type response = {
@as("StreamDescriptionSummary") streamDescriptionSummary: option<streamDescriptionSummary>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DescribeStreamSummaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStream = {
  type t;
  type request = {
@as("ExclusiveStartShardId") exclusiveStartShardId: shardId,
@as("Limit") limit: describeStreamInputLimit,
@as("StreamName") streamName: option<streamName>
}
  type response = {
@as("StreamDescription") streamDescription: option<streamDescription>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "DescribeStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SubscribeToShard = {
  type t;
  type request = {
@as("StartingPosition") startingPosition: option<startingPosition>,
@as("ShardId") shardId: option<shardId>,
@as("ConsumerARN") consumerARN: option<consumerARN>
}
  type response = {
@as("EventStream") eventStream: option<subscribeToShardEventStream>
}
  @module("@aws-sdk/client-kinesis") @new external new_: (request) => t = "SubscribeToShardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
