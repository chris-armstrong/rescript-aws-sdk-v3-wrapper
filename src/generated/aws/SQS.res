type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type token = string
type tagValue = string
type tagKey = string
type amazonawsString = string
type queueAttributeName = [@as("FifoThroughputLimit") #FifoThroughputLimit | @as("DeduplicationScope") #DeduplicationScope | @as("KmsDataKeyReusePeriodSeconds") #KmsDataKeyReusePeriodSeconds | @as("KmsMasterKeyId") #KmsMasterKeyId | @as("ContentBasedDeduplication") #ContentBasedDeduplication | @as("FifoQueue") #FifoQueue | @as("RedrivePolicy") #RedrivePolicy | @as("ReceiveMessageWaitTimeSeconds") #ReceiveMessageWaitTimeSeconds | @as("DelaySeconds") #DelaySeconds | @as("ApproximateNumberOfMessagesDelayed") #ApproximateNumberOfMessagesDelayed | @as("QueueArn") #QueueArn | @as("LastModifiedTimestamp") #LastModifiedTimestamp | @as("CreatedTimestamp") #CreatedTimestamp | @as("ApproximateNumberOfMessagesNotVisible") #ApproximateNumberOfMessagesNotVisible | @as("ApproximateNumberOfMessages") #ApproximateNumberOfMessages | @as("MessageRetentionPeriod") #MessageRetentionPeriod | @as("MaximumMessageSize") #MaximumMessageSize | @as("VisibilityTimeout") #VisibilityTimeout | @as("Policy") #Policy | @as("All") #All]
type messageSystemAttributeNameForSends = [@as("AWSTraceHeader") #AWSTraceHeader]
type messageSystemAttributeName = [@as("AWSTraceHeader") #AWSTraceHeader | @as("MessageGroupId") #MessageGroupId | @as("MessageDeduplicationId") #MessageDeduplicationId | @as("SequenceNumber") #SequenceNumber | @as("ApproximateFirstReceiveTimestamp") #ApproximateFirstReceiveTimestamp | @as("ApproximateReceiveCount") #ApproximateReceiveCount | @as("SentTimestamp") #SentTimestamp | @as("SenderId") #SenderId]
type messageAttributeName = string
type amazonawsInteger = int;
type boxedInteger = int;
type amazonawsBoolean = bool;
type binary = NodeJs.Buffer.t;
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type stringList = array<amazonawsString>
type sendMessageBatchResultEntry = {
@as("SequenceNumber") sequenceNumber: amazonawsString,
@as("MD5OfMessageSystemAttributes") mD5OfMessageSystemAttributes: amazonawsString,
@as("MD5OfMessageAttributes") mD5OfMessageAttributes: amazonawsString,
@as("MD5OfMessageBody") mD5OfMessageBody: option<amazonawsString>,
@as("MessageId") messageId: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type queueUrlList = array<amazonawsString>
type queueAttributeMap = Js.Dict.t< amazonawsString>
type messageSystemAttributeMap = Js.Dict.t< amazonawsString>
type messageAttributeNameList = array<messageAttributeName>
type deleteMessageBatchResultEntry = {
@as("Id") id: option<amazonawsString>
}
type deleteMessageBatchRequestEntry = {
@as("ReceiptHandle") receiptHandle: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type changeMessageVisibilityBatchResultEntry = {
@as("Id") id: option<amazonawsString>
}
type changeMessageVisibilityBatchRequestEntry = {
@as("VisibilityTimeout") visibilityTimeout: amazonawsInteger,
@as("ReceiptHandle") receiptHandle: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type binaryList = array<binary>
type batchResultErrorEntry = {
@as("Message") message: amazonawsString,
@as("Code") code: option<amazonawsString>,
@as("SenderFault") senderFault: option<amazonawsBoolean>,
@as("Id") id: option<amazonawsString>
}
type attributeNameList = array<queueAttributeName>
type actionNameList = array<amazonawsString>
type aWSAccountIdList = array<amazonawsString>
type sendMessageBatchResultEntryList = array<sendMessageBatchResultEntry>
type messageSystemAttributeValue = {
@as("DataType") dataType: option<amazonawsString>,
@as("BinaryListValues") binaryListValues: binaryList,
@as("StringListValues") stringListValues: stringList,
@as("BinaryValue") binaryValue: binary,
@as("StringValue") stringValue: amazonawsString
}
type messageAttributeValue = {
@as("DataType") dataType: option<amazonawsString>,
@as("BinaryListValues") binaryListValues: binaryList,
@as("StringListValues") stringListValues: stringList,
@as("BinaryValue") binaryValue: binary,
@as("StringValue") stringValue: amazonawsString
}
type deleteMessageBatchResultEntryList = array<deleteMessageBatchResultEntry>
type deleteMessageBatchRequestEntryList = array<deleteMessageBatchRequestEntry>
type changeMessageVisibilityBatchResultEntryList = array<changeMessageVisibilityBatchResultEntry>
type changeMessageVisibilityBatchRequestEntryList = array<changeMessageVisibilityBatchRequestEntry>
type batchResultErrorEntryList = array<batchResultErrorEntry>
type messageBodySystemAttributeMap = Js.Dict.t< messageSystemAttributeValue>
type messageBodyAttributeMap = Js.Dict.t< messageAttributeValue>
type sendMessageBatchRequestEntry = {
@as("MessageGroupId") messageGroupId: amazonawsString,
@as("MessageDeduplicationId") messageDeduplicationId: amazonawsString,
@as("MessageSystemAttributes") messageSystemAttributes: messageBodySystemAttributeMap,
@as("MessageAttributes") messageAttributes: messageBodyAttributeMap,
@as("DelaySeconds") delaySeconds: amazonawsInteger,
@as("MessageBody") messageBody: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type message = {
@as("MessageAttributes") messageAttributes: messageBodyAttributeMap,
@as("MD5OfMessageAttributes") mD5OfMessageAttributes: amazonawsString,
@as("Attributes") attributes: messageSystemAttributeMap,
@as("Body") body: amazonawsString,
@as("MD5OfBody") mD5OfBody: amazonawsString,
@as("ReceiptHandle") receiptHandle: amazonawsString,
@as("MessageId") messageId: amazonawsString
}
type sendMessageBatchRequestEntryList = array<sendMessageBatchRequestEntry>
type messageList = array<message>
type clientType;
@module("@aws-sdk/client-sqs") @new external createClient: unit => clientType = "SQSClient";
module RemovePermission = {
  type t;
  type request = {
@as("Label") label: option<amazonawsString>,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "RemovePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PurgeQueue = {
  type t;
  type request = {
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "PurgeQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetQueueUrl = {
  type t;
  type request = {
@as("QueueOwnerAWSAccountId") queueOwnerAWSAccountId: amazonawsString,
@as("QueueName") queueName: option<amazonawsString>
}
  type response = {
@as("QueueUrl") queueUrl: amazonawsString
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "GetQueueUrlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteQueue = {
  type t;
  type request = {
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "DeleteQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteMessage = {
  type t;
  type request = {
@as("ReceiptHandle") receiptHandle: option<amazonawsString>,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "DeleteMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ChangeMessageVisibility = {
  type t;
  type request = {
@as("VisibilityTimeout") visibilityTimeout: option<amazonawsInteger>,
@as("ReceiptHandle") receiptHandle: option<amazonawsString>,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "ChangeMessageVisibilityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagQueue = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "UntagQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagQueue = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "TagQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetQueueAttributes = {
  type t;
  type request = {
@as("Attributes") attributes: option<queueAttributeMap>,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "SetQueueAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListQueues = {
  type t;
  type request = {
@as("MaxResults") maxResults: boxedInteger,
@as("NextToken") nextToken: token,
@as("QueueNamePrefix") queueNamePrefix: amazonawsString
}
  type response = {
@as("QueueUrls") queueUrls: queueUrlList,
@as("NextToken") nextToken: token
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "ListQueuesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListQueueTags = {
  type t;
  type request = {
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "ListQueueTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeadLetterSourceQueues = {
  type t;
  type request = {
@as("MaxResults") maxResults: boxedInteger,
@as("NextToken") nextToken: token,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: token,
@as("queueUrls") queueUrls: option<queueUrlList>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "ListDeadLetterSourceQueuesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetQueueAttributes = {
  type t;
  type request = {
@as("AttributeNames") attributeNames: attributeNameList,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  type response = {
@as("Attributes") attributes: queueAttributeMap
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "GetQueueAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateQueue = {
  type t;
  type request = {
@as("Attributes") attributes: queueAttributeMap,
@as("tags") tags: tagMap,
@as("QueueName") queueName: option<amazonawsString>
}
  type response = {
@as("QueueUrl") queueUrl: amazonawsString
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "CreateQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddPermission = {
  type t;
  type request = {
@as("Actions") actions: option<actionNameList>,
@as("AWSAccountIds") aWSAccountIds: option<aWSAccountIdList>,
@as("Label") label: option<amazonawsString>,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "AddPermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteMessageBatch = {
  type t;
  type request = {
@as("Entries") entries: option<deleteMessageBatchRequestEntryList>,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  type response = {
@as("Failed") failed: option<batchResultErrorEntryList>,
@as("Successful") successful: option<deleteMessageBatchResultEntryList>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "DeleteMessageBatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ChangeMessageVisibilityBatch = {
  type t;
  type request = {
@as("Entries") entries: option<changeMessageVisibilityBatchRequestEntryList>,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  type response = {
@as("Failed") failed: option<batchResultErrorEntryList>,
@as("Successful") successful: option<changeMessageVisibilityBatchResultEntryList>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "ChangeMessageVisibilityBatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendMessage = {
  type t;
  type request = {
@as("MessageGroupId") messageGroupId: amazonawsString,
@as("MessageDeduplicationId") messageDeduplicationId: amazonawsString,
@as("MessageSystemAttributes") messageSystemAttributes: messageBodySystemAttributeMap,
@as("MessageAttributes") messageAttributes: messageBodyAttributeMap,
@as("DelaySeconds") delaySeconds: amazonawsInteger,
@as("MessageBody") messageBody: option<amazonawsString>,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  type response = {
@as("SequenceNumber") sequenceNumber: amazonawsString,
@as("MessageId") messageId: amazonawsString,
@as("MD5OfMessageSystemAttributes") mD5OfMessageSystemAttributes: amazonawsString,
@as("MD5OfMessageAttributes") mD5OfMessageAttributes: amazonawsString,
@as("MD5OfMessageBody") mD5OfMessageBody: amazonawsString
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "SendMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendMessageBatch = {
  type t;
  type request = {
@as("Entries") entries: option<sendMessageBatchRequestEntryList>,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  type response = {
@as("Failed") failed: option<batchResultErrorEntryList>,
@as("Successful") successful: option<sendMessageBatchResultEntryList>
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "SendMessageBatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReceiveMessage = {
  type t;
  type request = {
@as("ReceiveRequestAttemptId") receiveRequestAttemptId: amazonawsString,
@as("WaitTimeSeconds") waitTimeSeconds: amazonawsInteger,
@as("VisibilityTimeout") visibilityTimeout: amazonawsInteger,
@as("MaxNumberOfMessages") maxNumberOfMessages: amazonawsInteger,
@as("MessageAttributeNames") messageAttributeNames: messageAttributeNameList,
@as("AttributeNames") attributeNames: attributeNameList,
@as("QueueUrl") queueUrl: option<amazonawsString>
}
  type response = {
@as("Messages") messages: messageList
}
  @module("@aws-sdk/client-sqs") @new external new_: (request) => t = "ReceiveMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
