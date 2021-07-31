type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-qldb") @new external createClient: unit => awsServiceClient = "QLDBClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type uniqueId = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type streamStatus = [
  | @as("IMPAIRED") #IMPAIRED
  | @as("FAILED") #FAILED
  | @as("CANCELED") #CANCELED
  | @as("COMPLETED") #COMPLETED
  | @as("ACTIVE") #ACTIVE
]
type streamName = string
type s3Prefix = string
type s3ObjectEncryptionType = [
  | @as("NO_ENCRYPTION") #NO_ENCRYPTION
  | @as("SSE_S3") #SSE_S3
  | @as("SSE_KMS") #SSE_KMS
]
type s3Bucket = string
type resourceType = string
type resourceName = string
type permissionsMode = [@as("STANDARD") #STANDARD | @as("ALLOW_ALL") #ALLOW_ALL]
type parameterName = string
type nextToken = string
type maxResults = int
type ledgerState = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type ledgerName = string
type ionText = string
type exportStatus = [
  | @as("CANCELLED") #CANCELLED
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type errorMessage = string
type errorCause = [
  | @as("IAM_PERMISSION_REVOKED") #IAM_PERMISSION_REVOKED
  | @as("KINESIS_STREAM_NOT_FOUND") #KINESIS_STREAM_NOT_FOUND
]
type digest = NodeJs.Buffer.t
type deletionProtection = bool
type boolean_ = bool
type arn = string
type valueHolder = {@as("IonText") ionText: option<ionText>}
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type s3EncryptionConfiguration = {
  @as("KmsKeyArn") kmsKeyArn: option<arn>,
  @as("ObjectEncryptionType") objectEncryptionType: s3ObjectEncryptionType,
}
type ledgerSummary = {
  @as("CreationDateTime") creationDateTime: option<timestamp_>,
  @as("State") state: option<ledgerState>,
  @as("Name") name: option<ledgerName>,
}
type kinesisConfiguration = {
  @as("AggregationEnabled") aggregationEnabled: option<boolean_>,
  @as("StreamArn") streamArn: arn,
}
type s3ExportConfiguration = {
  @as("EncryptionConfiguration") encryptionConfiguration: s3EncryptionConfiguration,
  @as("Prefix") prefix: s3Prefix,
  @as("Bucket") bucket: s3Bucket,
}
type ledgerList = array<ledgerSummary>
type journalKinesisStreamDescription = {
  @as("StreamName") streamName: streamName,
  @as("ErrorCause") errorCause: option<errorCause>,
  @as("KinesisConfiguration") kinesisConfiguration: kinesisConfiguration,
  @as("Status") status: streamStatus,
  @as("Arn") arn: option<arn>,
  @as("StreamId") streamId: uniqueId,
  @as("RoleArn") roleArn: arn,
  @as("ExclusiveEndTime") exclusiveEndTime: option<timestamp_>,
  @as("InclusiveStartTime") inclusiveStartTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("LedgerName") ledgerName: ledgerName,
}
type journalS3ExportDescription = {
  @as("RoleArn") roleArn: arn,
  @as("S3ExportConfiguration") s3ExportConfiguration: s3ExportConfiguration,
  @as("ExclusiveEndTime") exclusiveEndTime: timestamp_,
  @as("InclusiveStartTime") inclusiveStartTime: timestamp_,
  @as("Status") status: exportStatus,
  @as("ExportCreationTime") exportCreationTime: timestamp_,
  @as("ExportId") exportId: uniqueId,
  @as("LedgerName") ledgerName: ledgerName,
}
type journalKinesisStreamDescriptionList = array<journalKinesisStreamDescription>
type journalS3ExportList = array<journalS3ExportDescription>

module UpdateLedgerPermissionsMode = {
  type t
  type request = {
    @as("PermissionsMode") permissionsMode: permissionsMode,
    @as("Name") name: ledgerName,
  }
  type response = {
    @as("PermissionsMode") permissionsMode: option<permissionsMode>,
    @as("Arn") arn: option<arn>,
    @as("Name") name: option<ledgerName>,
  }
  @module("@aws-sdk/client-qldb") @new
  external new: request => t = "UpdateLedgerPermissionsModeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLedger = {
  type t
  type request = {
    @as("DeletionProtection") deletionProtection: option<deletionProtection>,
    @as("Name") name: ledgerName,
  }
  type response = {
    @as("DeletionProtection") deletionProtection: option<deletionProtection>,
    @as("CreationDateTime") creationDateTime: option<timestamp_>,
    @as("State") state: option<ledgerState>,
    @as("Arn") arn: option<arn>,
    @as("Name") name: option<ledgerName>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "UpdateLedgerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLedger = {
  type t
  type request = {@as("Name") name: ledgerName}
  type response = {
    @as("DeletionProtection") deletionProtection: option<deletionProtection>,
    @as("PermissionsMode") permissionsMode: option<permissionsMode>,
    @as("CreationDateTime") creationDateTime: option<timestamp_>,
    @as("State") state: option<ledgerState>,
    @as("Arn") arn: option<arn>,
    @as("Name") name: option<ledgerName>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "DescribeLedgerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLedger = {
  type t
  type request = {@as("Name") name: ledgerName}

  @module("@aws-sdk/client-qldb") @new external new: request => t = "DeleteLedgerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelJournalKinesisStream = {
  type t
  type request = {
    @as("StreamId") streamId: uniqueId,
    @as("LedgerName") ledgerName: ledgerName,
  }
  type response = {@as("StreamId") streamId: option<uniqueId>}
  @module("@aws-sdk/client-qldb") @new
  external new: request => t = "CancelJournalKinesisStreamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-qldb") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tags,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-qldb") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StreamJournalToKinesis = {
  type t
  type request = {
    @as("StreamName") streamName: streamName,
    @as("KinesisConfiguration") kinesisConfiguration: kinesisConfiguration,
    @as("ExclusiveEndTime") exclusiveEndTime: option<timestamp_>,
    @as("InclusiveStartTime") inclusiveStartTime: timestamp_,
    @as("Tags") tags: option<tags>,
    @as("RoleArn") roleArn: arn,
    @as("LedgerName") ledgerName: ledgerName,
  }
  type response = {@as("StreamId") streamId: option<uniqueId>}
  @module("@aws-sdk/client-qldb") @new external new: request => t = "StreamJournalToKinesisCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: arn}
  type response = {@as("Tags") tags: option<tags>}
  @module("@aws-sdk/client-qldb") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRevision = {
  type t
  type request = {
    @as("DigestTipAddress") digestTipAddress: option<valueHolder>,
    @as("DocumentId") documentId: uniqueId,
    @as("BlockAddress") blockAddress: valueHolder,
    @as("Name") name: ledgerName,
  }
  type response = {
    @as("Revision") revision: valueHolder,
    @as("Proof") proof: option<valueHolder>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "GetRevisionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDigest = {
  type t
  type request = {@as("Name") name: ledgerName}
  type response = {
    @as("DigestTipAddress") digestTipAddress: valueHolder,
    @as("Digest") digest: digest,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "GetDigestCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBlock = {
  type t
  type request = {
    @as("DigestTipAddress") digestTipAddress: option<valueHolder>,
    @as("BlockAddress") blockAddress: valueHolder,
    @as("Name") name: ledgerName,
  }
  type response = {
    @as("Proof") proof: option<valueHolder>,
    @as("Block") block: valueHolder,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "GetBlockCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLedger = {
  type t
  type request = {
    @as("DeletionProtection") deletionProtection: option<deletionProtection>,
    @as("PermissionsMode") permissionsMode: permissionsMode,
    @as("Tags") tags: option<tags>,
    @as("Name") name: ledgerName,
  }
  type response = {
    @as("DeletionProtection") deletionProtection: option<deletionProtection>,
    @as("PermissionsMode") permissionsMode: option<permissionsMode>,
    @as("CreationDateTime") creationDateTime: option<timestamp_>,
    @as("State") state: option<ledgerState>,
    @as("Arn") arn: option<arn>,
    @as("Name") name: option<ledgerName>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "CreateLedgerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLedgers = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Ledgers") ledgers: option<ledgerList>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "ListLedgersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportJournalToS3 = {
  type t
  type request = {
    @as("RoleArn") roleArn: arn,
    @as("S3ExportConfiguration") s3ExportConfiguration: s3ExportConfiguration,
    @as("ExclusiveEndTime") exclusiveEndTime: timestamp_,
    @as("InclusiveStartTime") inclusiveStartTime: timestamp_,
    @as("Name") name: ledgerName,
  }
  type response = {@as("ExportId") exportId: uniqueId}
  @module("@aws-sdk/client-qldb") @new external new: request => t = "ExportJournalToS3Command"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJournalKinesisStream = {
  type t
  type request = {
    @as("StreamId") streamId: uniqueId,
    @as("LedgerName") ledgerName: ledgerName,
  }
  type response = {@as("Stream") stream: option<journalKinesisStreamDescription>}
  @module("@aws-sdk/client-qldb") @new
  external new: request => t = "DescribeJournalKinesisStreamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJournalKinesisStreamsForLedger = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("LedgerName") ledgerName: ledgerName,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Streams") streams: option<journalKinesisStreamDescriptionList>,
  }
  @module("@aws-sdk/client-qldb") @new
  external new: request => t = "ListJournalKinesisStreamsForLedgerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJournalS3Export = {
  type t
  type request = {
    @as("ExportId") exportId: uniqueId,
    @as("Name") name: ledgerName,
  }
  type response = {@as("ExportDescription") exportDescription: journalS3ExportDescription}
  @module("@aws-sdk/client-qldb") @new external new: request => t = "DescribeJournalS3ExportCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJournalS3ExportsForLedger = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Name") name: ledgerName,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("JournalS3Exports") journalS3Exports: option<journalS3ExportList>,
  }
  @module("@aws-sdk/client-qldb") @new
  external new: request => t = "ListJournalS3ExportsForLedgerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJournalS3Exports = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("JournalS3Exports") journalS3Exports: option<journalS3ExportList>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "ListJournalS3ExportsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
