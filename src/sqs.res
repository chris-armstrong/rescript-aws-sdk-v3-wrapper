exception UnsupportedOperation;
exception TooManyEntriesInBatchRequest;
type token = string
type tagValue = string
type tagKey = string
type amazonString = string
exception ReceiptHandleIsInvalid;
exception QueueNameExists;
exception QueueDoesNotExist;
exception QueueDeletedRecently;
type queueAttributeName = [#FifoThroughputLimit | #DeduplicationScope | #KmsDataKeyReusePeriodSeconds | #KmsMasterKeyId | #ContentBasedDeduplication | #FifoQueue | #RedrivePolicy | #ReceiveMessageWaitTimeSeconds | #DelaySeconds | #ApproximateNumberOfMessagesDelayed | #QueueArn | #LastModifiedTimestamp | #CreatedTimestamp | #ApproximateNumberOfMessagesNotVisible | #ApproximateNumberOfMessages | #MessageRetentionPeriod | #MaximumMessageSize | #VisibilityTimeout | #Policy | #All]
exception PurgeQueueInProgress;
exception OverLimit;
type messageSystemAttributeNameForSends = [#AWSTraceHeader]
type messageSystemAttributeName = [#AWSTraceHeader | #MessageGroupId | #MessageDeduplicationId | #SequenceNumber | #ApproximateFirstReceiveTimestamp | #ApproximateReceiveCount | #SentTimestamp | #SenderId]
exception MessageNotInflight;
type messageAttributeName = string
exception InvalidMessageContents;
exception InvalidIdFormat;
exception InvalidBatchEntryId;
exception InvalidAttributeName;
type amazonInteger = int;
exception EmptyBatchRequest;
type boxedInteger = int;
type boolean = bool;
type binary = NodeJs.Buffer.t;
exception BatchRequestTooLong;
exception BatchEntryIdsNotDistinct;
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type stringList = array<amazonString>
type sendMessageBatchResultEntry = {
	@as("SequenceNumber") sequenceNumber: amazonString,
	@as("MD5OfMessageSystemAttributes") mD5OfMessageSystemAttributes: amazonString,
	@as("MD5OfMessageAttributes") mD5OfMessageAttributes: amazonString,
	@as("MD5OfMessageBody") mD5OfMessageBody: option<amazonString>,
	@as("MessageId") messageId: option<amazonString>,
	@as("Id") id: option<amazonString>
}
type queueUrlList = array<amazonString>
type queueAttributeMap = Js.Dict.t<amazonString>
type messageSystemAttributeMap = Js.Dict.t<amazonString>
type messageAttributeNameList = array<messageAttributeName>
type deleteMessageBatchResultEntry = {
	@as("Id") id: option<amazonString>
}
type deleteMessageBatchRequestEntry = {
	@as("ReceiptHandle") receiptHandle: option<amazonString>,
	@as("Id") id: option<amazonString>
}
type changeMessageVisibilityBatchResultEntry = {
	@as("Id") id: option<amazonString>
}
type changeMessageVisibilityBatchRequestEntry = {
	@as("VisibilityTimeout") visibilityTimeout: amazonInteger,
	@as("ReceiptHandle") receiptHandle: option<amazonString>,
	@as("Id") id: option<amazonString>
}
type binaryList = array<binary>
type batchResultErrorEntry = {
	@as("Message") message: amazonString,
	@as("Code") code: option<amazonString>,
	@as("SenderFault") senderFault: option<boolean>,
	@as("Id") id: option<amazonString>
}
type attributeNameList = array<queueAttributeName>
type actionNameList = array<amazonString>
type aWSAccountIdList = array<amazonString>
type sendMessageBatchResultEntryList = array<sendMessageBatchResultEntry>
type messageSystemAttributeValue = {
	@as("DataType") dataType: option<amazonString>,
	@as("BinaryListValues") binaryListValues: binaryList,
	@as("StringListValues") stringListValues: stringList,
	@as("BinaryValue") binaryValue: binary,
	@as("StringValue") stringValue: amazonString
}
type messageAttributeValue = {
	@as("DataType") dataType: option<amazonString>,
	@as("BinaryListValues") binaryListValues: binaryList,
	@as("StringListValues") stringListValues: stringList,
	@as("BinaryValue") binaryValue: binary,
	@as("StringValue") stringValue: amazonString
}
type deleteMessageBatchResultEntryList = array<deleteMessageBatchResultEntry>
type deleteMessageBatchRequestEntryList = array<deleteMessageBatchRequestEntry>
type changeMessageVisibilityBatchResultEntryList = array<changeMessageVisibilityBatchResultEntry>
type changeMessageVisibilityBatchRequestEntryList = array<changeMessageVisibilityBatchRequestEntry>
type batchResultErrorEntryList = array<batchResultErrorEntry>
type messageBodySystemAttributeMap = Js.Dict.t<messageSystemAttributeValue>
type messageBodyAttributeMap = Js.Dict.t<messageAttributeValue>
type sendMessageBatchRequestEntry = {
	@as("MessageGroupId") messageGroupId: amazonString,
	@as("MessageDeduplicationId") messageDeduplicationId: amazonString,
	@as("MessageSystemAttributes") messageSystemAttributes: messageBodySystemAttributeMap,
	@as("MessageAttributes") messageAttributes: messageBodyAttributeMap,
	@as("DelaySeconds") delaySeconds: amazonInteger,
	@as("MessageBody") messageBody: option<amazonString>,
	@as("Id") id: option<amazonString>
}
type message = {
	@as("MessageAttributes") messageAttributes: messageBodyAttributeMap,
	@as("MD5OfMessageAttributes") mD5OfMessageAttributes: amazonString,
	@as("Attributes") attributes: messageSystemAttributeMap,
	@as("Body") body: amazonString,
	@as("MD5OfBody") mD5OfBody: amazonString,
	@as("ReceiptHandle") receiptHandle: amazonString,
	@as("MessageId") messageId: amazonString
}
type sendMessageBatchRequestEntryList = array<sendMessageBatchRequestEntry>
type messageList = array<message>
type clientType;
@module("@aws-sdk/client-sqs") @new external createClient: unit => clientType = "SQSClient";
module RemovePermission = {
  type t;
  type request = {
	@as("Label") label: option<amazonString>,
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "RemovePermissionCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
  
}
module PurgeQueue = {
  type t;
  type request = {
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "PurgeQueueCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
  
}
module GetQueueUrl = {
  type t;
  type response = {
	@as("QueueUrl") queueUrl: amazonString
}
type request = {
	@as("QueueOwnerAWSAccountId") queueOwnerAWSAccountId: amazonString,
	@as("QueueName") queueName: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "GetQueueUrlCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
  
}
module DeleteQueue = {
  type t;
  type request = {
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "DeleteQueueCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
  
}
module DeleteMessage = {
  type t;
  type request = {
	@as("ReceiptHandle") receiptHandle: option<amazonString>,
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "DeleteMessageCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
  
}
module ChangeMessageVisibility = {
  type t;
  type request = {
	@as("VisibilityTimeout") visibilityTimeout: option<amazonInteger>,
	@as("ReceiptHandle") receiptHandle: option<amazonString>,
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "ChangeMessageVisibilityCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
  
}
module UntagQueue = {
  type t;
  type request = {
	@as("TagKeys") tagKeys: option<tagKeyList>,
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "UntagQueueCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
  
}
module TagQueue = {
  type t;
  type request = {
	@as("Tags") tags: option<tagMap>,
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "TagQueueCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
  
}
module SetQueueAttributes = {
  type t;
  type request = {
	@as("Attributes") attributes: option<queueAttributeMap>,
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "SetQueueAttributesCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
  
}
module ListQueues = {
  type t;
  type request = {
	@as("MaxResults") maxResults: boxedInteger,
	@as("NextToken") nextToken: token,
	@as("QueueNamePrefix") queueNamePrefix: amazonString
}
type response = {
	@as("QueueUrls") queueUrls: queueUrlList,
	@as("NextToken") nextToken: token
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "ListQueuesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
  
}
module ListQueueTags = {
  type t;
  type request = {
	@as("QueueUrl") queueUrl: option<amazonString>
}
type response = {
	@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "ListQueueTagsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
  
}
module ListDeadLetterSourceQueues = {
  type t;
  type request = {
	@as("MaxResults") maxResults: boxedInteger,
	@as("NextToken") nextToken: token,
	@as("QueueUrl") queueUrl: option<amazonString>
}
type response = {
	@as("NextToken") nextToken: token,
	@as("queueUrls") queueUrls: option<queueUrlList>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "ListDeadLetterSourceQueuesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
  
}
module GetQueueAttributes = {
  type t;
  type response = {
	@as("Attributes") attributes: queueAttributeMap
}
type request = {
	@as("AttributeNames") attributeNames: attributeNameList,
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "GetQueueAttributesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
  
}
module CreateQueue = {
  type t;
  type response = {
	@as("QueueUrl") queueUrl: amazonString
}
type request = {
	@as("Attributes") attributes: queueAttributeMap,
	@as("tags") tags: tagMap,
	@as("QueueName") queueName: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "CreateQueueCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
  
}
module AddPermission = {
  type t;
  type request = {
	@as("Actions") actions: option<actionNameList>,
	@as("AWSAccountIds") aWSAccountIds: option<aWSAccountIdList>,
	@as("Label") label: option<amazonString>,
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "AddPermissionCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
  
}
module DeleteMessageBatch = {
  type t;
  type response = {
	@as("Failed") failed: option<batchResultErrorEntryList>,
	@as("Successful") successful: option<deleteMessageBatchResultEntryList>
}
type request = {
	@as("Entries") entries: option<deleteMessageBatchRequestEntryList>,
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "DeleteMessageBatchCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
  
}
module ChangeMessageVisibilityBatch = {
  type t;
  type response = {
	@as("Failed") failed: option<batchResultErrorEntryList>,
	@as("Successful") successful: option<changeMessageVisibilityBatchResultEntryList>
}
type request = {
	@as("Entries") entries: option<changeMessageVisibilityBatchRequestEntryList>,
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "ChangeMessageVisibilityBatchCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
  
}
module SendMessage = {
  type t;
  type response = {
	@as("SequenceNumber") sequenceNumber: amazonString,
	@as("MessageId") messageId: amazonString,
	@as("MD5OfMessageSystemAttributes") mD5OfMessageSystemAttributes: amazonString,
	@as("MD5OfMessageAttributes") mD5OfMessageAttributes: amazonString,
	@as("MD5OfMessageBody") mD5OfMessageBody: amazonString
}
type request = {
	@as("MessageGroupId") messageGroupId: amazonString,
	@as("MessageDeduplicationId") messageDeduplicationId: amazonString,
	@as("MessageSystemAttributes") messageSystemAttributes: messageBodySystemAttributeMap,
	@as("MessageAttributes") messageAttributes: messageBodyAttributeMap,
	@as("DelaySeconds") delaySeconds: amazonInteger,
	@as("MessageBody") messageBody: option<amazonString>,
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "SendMessageCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
  
}
module SendMessageBatch = {
  type t;
  type response = {
	@as("Failed") failed: option<batchResultErrorEntryList>,
	@as("Successful") successful: option<sendMessageBatchResultEntryList>
}
type request = {
	@as("Entries") entries: option<sendMessageBatchRequestEntryList>,
	@as("QueueUrl") queueUrl: option<amazonString>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "SendMessageBatchCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
  
}
module ReceiveMessage = {
  type t;
  type request = {
	@as("ReceiveRequestAttemptId") receiveRequestAttemptId: amazonString,
	@as("WaitTimeSeconds") waitTimeSeconds: amazonInteger,
	@as("VisibilityTimeout") visibilityTimeout: amazonInteger,
	@as("MaxNumberOfMessages") maxNumberOfMessages: amazonInteger,
	@as("MessageAttributeNames") messageAttributeNames: messageAttributeNameList,
	@as("AttributeNames") attributeNames: attributeNameList,
	@as("QueueUrl") queueUrl: option<amazonString>
}
type response = {
	@as("Messages") messages: messageList
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "ReceiveMessageCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
  
}
