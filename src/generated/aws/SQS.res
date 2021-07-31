type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-sqs") @new external createClient: unit => awsServiceClient = "SQSClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type token = string
type tagValue = string
type tagKey = string
type string_ = string
type queueAttributeName = [
  | @as("FifoThroughputLimit") #FifoThroughputLimit
  | @as("DeduplicationScope") #DeduplicationScope
  | @as("KmsDataKeyReusePeriodSeconds") #KmsDataKeyReusePeriodSeconds
  | @as("KmsMasterKeyId") #KmsMasterKeyId
  | @as("ContentBasedDeduplication") #ContentBasedDeduplication
  | @as("FifoQueue") #FifoQueue
  | @as("RedrivePolicy") #RedrivePolicy
  | @as("ReceiveMessageWaitTimeSeconds") #ReceiveMessageWaitTimeSeconds
  | @as("DelaySeconds") #DelaySeconds
  | @as("ApproximateNumberOfMessagesDelayed") #ApproximateNumberOfMessagesDelayed
  | @as("QueueArn") #QueueArn
  | @as("LastModifiedTimestamp") #LastModifiedTimestamp
  | @as("CreatedTimestamp") #CreatedTimestamp
  | @as("ApproximateNumberOfMessagesNotVisible") #ApproximateNumberOfMessagesNotVisible
  | @as("ApproximateNumberOfMessages") #ApproximateNumberOfMessages
  | @as("MessageRetentionPeriod") #MessageRetentionPeriod
  | @as("MaximumMessageSize") #MaximumMessageSize
  | @as("VisibilityTimeout") #VisibilityTimeout
  | @as("Policy") #Policy
  | @as("All") #All
]
type messageSystemAttributeNameForSends = [@as("AWSTraceHeader") #AWSTraceHeader]
type messageSystemAttributeName = [
  | @as("AWSTraceHeader") #AWSTraceHeader
  | @as("MessageGroupId") #MessageGroupId
  | @as("MessageDeduplicationId") #MessageDeduplicationId
  | @as("SequenceNumber") #SequenceNumber
  | @as("ApproximateFirstReceiveTimestamp") #ApproximateFirstReceiveTimestamp
  | @as("ApproximateReceiveCount") #ApproximateReceiveCount
  | @as("SentTimestamp") #SentTimestamp
  | @as("SenderId") #SenderId
]
type messageAttributeName = string
type integer_ = int
type boxedInteger = int
type boolean_ = bool
type binary = NodeJs.Buffer.t
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type stringList = array<string_>
type sendMessageBatchResultEntry = {
  @as("SequenceNumber") sequenceNumber: option<string_>,
  @as("MD5OfMessageSystemAttributes") md5OfMessageSystemAttributes: option<string_>,
  @as("MD5OfMessageAttributes") md5OfMessageAttributes: option<string_>,
  @as("MD5OfMessageBody") md5OfMessageBody: string_,
  @as("MessageId") messageId: string_,
  @as("Id") id: string_,
}
type queueUrlList = array<string_>
type queueAttributeMap = Js.Dict.t<string_>
type messageSystemAttributeMap = Js.Dict.t<string_>
type messageAttributeNameList = array<messageAttributeName>
type deleteMessageBatchResultEntry = {@as("Id") id: string_}
type deleteMessageBatchRequestEntry = {
  @as("ReceiptHandle") receiptHandle: string_,
  @as("Id") id: string_,
}
type changeMessageVisibilityBatchResultEntry = {@as("Id") id: string_}
type changeMessageVisibilityBatchRequestEntry = {
  @as("VisibilityTimeout") visibilityTimeout: option<integer_>,
  @as("ReceiptHandle") receiptHandle: string_,
  @as("Id") id: string_,
}
type binaryList = array<binary>
type batchResultErrorEntry = {
  @as("Message") message: option<string_>,
  @as("Code") code: string_,
  @as("SenderFault") senderFault: boolean_,
  @as("Id") id: string_,
}
type attributeNameList = array<queueAttributeName>
type actionNameList = array<string_>
type awsaccountIdList = array<string_>
type sendMessageBatchResultEntryList = array<sendMessageBatchResultEntry>
type messageSystemAttributeValue = {
  @as("DataType") dataType: string_,
  @as("BinaryListValues") binaryListValues: option<binaryList>,
  @as("StringListValues") stringListValues: option<stringList>,
  @as("BinaryValue") binaryValue: option<binary>,
  @as("StringValue") stringValue: option<string_>,
}
type messageAttributeValue = {
  @as("DataType") dataType: string_,
  @as("BinaryListValues") binaryListValues: option<binaryList>,
  @as("StringListValues") stringListValues: option<stringList>,
  @as("BinaryValue") binaryValue: option<binary>,
  @as("StringValue") stringValue: option<string_>,
}
type deleteMessageBatchResultEntryList = array<deleteMessageBatchResultEntry>
type deleteMessageBatchRequestEntryList = array<deleteMessageBatchRequestEntry>
type changeMessageVisibilityBatchResultEntryList = array<changeMessageVisibilityBatchResultEntry>
type changeMessageVisibilityBatchRequestEntryList = array<changeMessageVisibilityBatchRequestEntry>
type batchResultErrorEntryList = array<batchResultErrorEntry>
type messageBodySystemAttributeMap = Js.Dict.t<messageSystemAttributeValue>
type messageBodyAttributeMap = Js.Dict.t<messageAttributeValue>
type sendMessageBatchRequestEntry = {
  @as("MessageGroupId") messageGroupId: option<string_>,
  @as("MessageDeduplicationId") messageDeduplicationId: option<string_>,
  @as("MessageSystemAttributes") messageSystemAttributes: option<messageBodySystemAttributeMap>,
  @as("MessageAttributes") messageAttributes: option<messageBodyAttributeMap>,
  @as("DelaySeconds") delaySeconds: option<integer_>,
  @as("MessageBody") messageBody: string_,
  @as("Id") id: string_,
}
type message = {
  @as("MessageAttributes") messageAttributes: option<messageBodyAttributeMap>,
  @as("MD5OfMessageAttributes") md5OfMessageAttributes: option<string_>,
  @as("Attributes") attributes: option<messageSystemAttributeMap>,
  @as("Body") body: option<string_>,
  @as("MD5OfBody") md5OfBody: option<string_>,
  @as("ReceiptHandle") receiptHandle: option<string_>,
  @as("MessageId") messageId: option<string_>,
}
type sendMessageBatchRequestEntryList = array<sendMessageBatchRequestEntry>
type messageList = array<message>

module RemovePermission = {
  type t
  type request = {
    @as("Label") label: string_,
    @as("QueueUrl") queueUrl: string_,
  }

  @module("@aws-sdk/client-sqs") @new external new: request => t = "RemovePermissionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PurgeQueue = {
  type t
  type request = {@as("QueueUrl") queueUrl: string_}

  @module("@aws-sdk/client-sqs") @new external new: request => t = "PurgeQueueCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetQueueUrl = {
  type t
  type request = {
    @as("QueueOwnerAWSAccountId") queueOwnerAWSAccountId: option<string_>,
    @as("QueueName") queueName: string_,
  }
  type response = {@as("QueueUrl") queueUrl: option<string_>}
  @module("@aws-sdk/client-sqs") @new external new: request => t = "GetQueueUrlCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteQueue = {
  type t
  type request = {@as("QueueUrl") queueUrl: string_}

  @module("@aws-sdk/client-sqs") @new external new: request => t = "DeleteQueueCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMessage = {
  type t
  type request = {
    @as("ReceiptHandle") receiptHandle: string_,
    @as("QueueUrl") queueUrl: string_,
  }

  @module("@aws-sdk/client-sqs") @new external new: request => t = "DeleteMessageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ChangeMessageVisibility = {
  type t
  type request = {
    @as("VisibilityTimeout") visibilityTimeout: integer_,
    @as("ReceiptHandle") receiptHandle: string_,
    @as("QueueUrl") queueUrl: string_,
  }

  @module("@aws-sdk/client-sqs") @new external new: request => t = "ChangeMessageVisibilityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagQueue = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("QueueUrl") queueUrl: string_,
  }

  @module("@aws-sdk/client-sqs") @new external new: request => t = "UntagQueueCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagQueue = {
  type t
  type request = {
    @as("Tags") tags: tagMap,
    @as("QueueUrl") queueUrl: string_,
  }

  @module("@aws-sdk/client-sqs") @new external new: request => t = "TagQueueCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetQueueAttributes = {
  type t
  type request = {
    @as("Attributes") attributes: queueAttributeMap,
    @as("QueueUrl") queueUrl: string_,
  }

  @module("@aws-sdk/client-sqs") @new external new: request => t = "SetQueueAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListQueues = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<boxedInteger>,
    @as("NextToken") nextToken: option<token>,
    @as("QueueNamePrefix") queueNamePrefix: option<string_>,
  }
  type response = {
    @as("QueueUrls") queueUrls: option<queueUrlList>,
    @as("NextToken") nextToken: option<token>,
  }
  @module("@aws-sdk/client-sqs") @new external new: request => t = "ListQueuesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQueueTags = {
  type t
  type request = {@as("QueueUrl") queueUrl: string_}
  type response = {@as("Tags") tags: option<tagMap>}
  @module("@aws-sdk/client-sqs") @new external new: request => t = "ListQueueTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeadLetterSourceQueues = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<boxedInteger>,
    @as("NextToken") nextToken: option<token>,
    @as("QueueUrl") queueUrl: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    queueUrls: queueUrlList,
  }
  @module("@aws-sdk/client-sqs") @new
  external new: request => t = "ListDeadLetterSourceQueuesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQueueAttributes = {
  type t
  type request = {
    @as("AttributeNames") attributeNames: option<attributeNameList>,
    @as("QueueUrl") queueUrl: string_,
  }
  type response = {@as("Attributes") attributes: option<queueAttributeMap>}
  @module("@aws-sdk/client-sqs") @new external new: request => t = "GetQueueAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateQueue = {
  type t
  type request = {
    @as("Attributes") attributes: option<queueAttributeMap>,
    tags: option<tagMap>,
    @as("QueueName") queueName: string_,
  }
  type response = {@as("QueueUrl") queueUrl: option<string_>}
  @module("@aws-sdk/client-sqs") @new external new: request => t = "CreateQueueCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddPermission = {
  type t
  type request = {
    @as("Actions") actions: actionNameList,
    @as("AWSAccountIds") awsaccountIds: awsaccountIdList,
    @as("Label") label: string_,
    @as("QueueUrl") queueUrl: string_,
  }

  @module("@aws-sdk/client-sqs") @new external new: request => t = "AddPermissionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMessageBatch = {
  type t
  type request = {
    @as("Entries") entries: deleteMessageBatchRequestEntryList,
    @as("QueueUrl") queueUrl: string_,
  }
  type response = {
    @as("Failed") failed: batchResultErrorEntryList,
    @as("Successful") successful: deleteMessageBatchResultEntryList,
  }
  @module("@aws-sdk/client-sqs") @new external new: request => t = "DeleteMessageBatchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ChangeMessageVisibilityBatch = {
  type t
  type request = {
    @as("Entries") entries: changeMessageVisibilityBatchRequestEntryList,
    @as("QueueUrl") queueUrl: string_,
  }
  type response = {
    @as("Failed") failed: batchResultErrorEntryList,
    @as("Successful") successful: changeMessageVisibilityBatchResultEntryList,
  }
  @module("@aws-sdk/client-sqs") @new
  external new: request => t = "ChangeMessageVisibilityBatchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendMessage = {
  type t
  type request = {
    @as("MessageGroupId") messageGroupId: option<string_>,
    @as("MessageDeduplicationId") messageDeduplicationId: option<string_>,
    @as("MessageSystemAttributes") messageSystemAttributes: option<messageBodySystemAttributeMap>,
    @as("MessageAttributes") messageAttributes: option<messageBodyAttributeMap>,
    @as("DelaySeconds") delaySeconds: option<integer_>,
    @as("MessageBody") messageBody: string_,
    @as("QueueUrl") queueUrl: string_,
  }
  type response = {
    @as("SequenceNumber") sequenceNumber: option<string_>,
    @as("MessageId") messageId: option<string_>,
    @as("MD5OfMessageSystemAttributes") md5OfMessageSystemAttributes: option<string_>,
    @as("MD5OfMessageAttributes") md5OfMessageAttributes: option<string_>,
    @as("MD5OfMessageBody") md5OfMessageBody: option<string_>,
  }
  @module("@aws-sdk/client-sqs") @new external new: request => t = "SendMessageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendMessageBatch = {
  type t
  type request = {
    @as("Entries") entries: sendMessageBatchRequestEntryList,
    @as("QueueUrl") queueUrl: string_,
  }
  type response = {
    @as("Failed") failed: batchResultErrorEntryList,
    @as("Successful") successful: sendMessageBatchResultEntryList,
  }
  @module("@aws-sdk/client-sqs") @new external new: request => t = "SendMessageBatchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReceiveMessage = {
  type t
  type request = {
    @as("ReceiveRequestAttemptId") receiveRequestAttemptId: option<string_>,
    @as("WaitTimeSeconds") waitTimeSeconds: option<integer_>,
    @as("VisibilityTimeout") visibilityTimeout: option<integer_>,
    @as("MaxNumberOfMessages") maxNumberOfMessages: option<integer_>,
    @as("MessageAttributeNames") messageAttributeNames: option<messageAttributeNameList>,
    @as("AttributeNames") attributeNames: option<attributeNameList>,
    @as("QueueUrl") queueUrl: string_,
  }
  type response = {@as("Messages") messages: option<messageList>}
  @module("@aws-sdk/client-sqs") @new external new: request => t = "ReceiveMessageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
