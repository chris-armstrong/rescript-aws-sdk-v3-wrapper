type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type uniqueId = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type streamStatus = [@as("IMPAIRED") #IMPAIRED | @as("FAILED") #FAILED | @as("CANCELED") #CANCELED | @as("COMPLETED") #COMPLETED | @as("ACTIVE") #ACTIVE]
type streamName = string
type s3Prefix = string
type s3ObjectEncryptionType = [@as("NO_ENCRYPTION") #NO_ENCRYPTION | @as("SSE_S3") #SSE_S3 | @as("SSE_KMS") #SSE_KMS]
type s3Bucket = string
type resourceType = string
type resourceName = string
type permissionsMode = [@as("STANDARD") #STANDARD | @as("ALLOW_ALL") #ALLOW_ALL]
type parameterName = string
type nextToken = string
type maxResults = int;
type ledgerState = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type ledgerName = string
type ionText = string
type exportStatus = [@as("CANCELLED") #CANCELLED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS]
type errorMessage = string
type errorCause = [@as("IAM_PERMISSION_REVOKED") #IAM_PERMISSION_REVOKED | @as("KINESIS_STREAM_NOT_FOUND") #KINESIS_STREAM_NOT_FOUND]
type digest = NodeJs.Buffer.t;
type deletionProtection = bool;
type amazonawsBoolean = bool;
type arn = string
type valueHolder = {
@as("IonText") ionText: ionText
}
type tags = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type s3EncryptionConfiguration = {
@as("KmsKeyArn") kmsKeyArn: arn,
@as("ObjectEncryptionType") objectEncryptionType: option<s3ObjectEncryptionType>
}
type ledgerSummary = {
@as("CreationDateTime") creationDateTime: amazonawsTimestamp,
@as("State") state: ledgerState,
@as("Name") name: ledgerName
}
type kinesisConfiguration = {
@as("AggregationEnabled") aggregationEnabled: amazonawsBoolean,
@as("StreamArn") streamArn: option<arn>
}
type s3ExportConfiguration = {
@as("EncryptionConfiguration") encryptionConfiguration: option<s3EncryptionConfiguration>,
@as("Prefix") prefix: option<s3Prefix>,
@as("Bucket") bucket: option<s3Bucket>
}
type ledgerList = array<ledgerSummary>
type journalKinesisStreamDescription = {
@as("StreamName") streamName: option<streamName>,
@as("ErrorCause") errorCause: errorCause,
@as("KinesisConfiguration") kinesisConfiguration: option<kinesisConfiguration>,
@as("Status") status: option<streamStatus>,
@as("Arn") arn: arn,
@as("StreamId") streamId: option<uniqueId>,
@as("RoleArn") roleArn: option<arn>,
@as("ExclusiveEndTime") exclusiveEndTime: amazonawsTimestamp,
@as("InclusiveStartTime") inclusiveStartTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("LedgerName") ledgerName: option<ledgerName>
}
type journalS3ExportDescription = {
@as("RoleArn") roleArn: option<arn>,
@as("S3ExportConfiguration") s3ExportConfiguration: option<s3ExportConfiguration>,
@as("ExclusiveEndTime") exclusiveEndTime: option<amazonawsTimestamp>,
@as("InclusiveStartTime") inclusiveStartTime: option<amazonawsTimestamp>,
@as("Status") status: option<exportStatus>,
@as("ExportCreationTime") exportCreationTime: option<amazonawsTimestamp>,
@as("ExportId") exportId: option<uniqueId>,
@as("LedgerName") ledgerName: option<ledgerName>
}
type journalKinesisStreamDescriptionList = array<journalKinesisStreamDescription>
type journalS3ExportList = array<journalS3ExportDescription>
type clientType;
@module("@aws-sdk/client-qldb") @new external createClient: unit => clientType = "QLDBClient";
module UpdateLedgerPermissionsMode = {
  type t;
  type request = {
@as("PermissionsMode") permissionsMode: option<permissionsMode>,
@as("Name") name: option<ledgerName>
}
  type response = {
@as("PermissionsMode") permissionsMode: permissionsMode,
@as("Arn") arn: arn,
@as("Name") name: ledgerName
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "UpdateLedgerPermissionsModeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLedger = {
  type t;
  type request = {
@as("DeletionProtection") deletionProtection: deletionProtection,
@as("Name") name: option<ledgerName>
}
  type response = {
@as("DeletionProtection") deletionProtection: deletionProtection,
@as("CreationDateTime") creationDateTime: amazonawsTimestamp,
@as("State") state: ledgerState,
@as("Arn") arn: arn,
@as("Name") name: ledgerName
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "UpdateLedgerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLedger = {
  type t;
  type request = {
@as("Name") name: option<ledgerName>
}
  type response = {
@as("DeletionProtection") deletionProtection: deletionProtection,
@as("PermissionsMode") permissionsMode: permissionsMode,
@as("CreationDateTime") creationDateTime: amazonawsTimestamp,
@as("State") state: ledgerState,
@as("Arn") arn: arn,
@as("Name") name: ledgerName
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "DescribeLedgerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLedger = {
  type t;
  type request = {
@as("Name") name: option<ledgerName>
}
  
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "DeleteLedgerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CancelJournalKinesisStream = {
  type t;
  type request = {
@as("StreamId") streamId: option<uniqueId>,
@as("LedgerName") ledgerName: option<ledgerName>
}
  type response = {
@as("StreamId") streamId: uniqueId
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "CancelJournalKinesisStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StreamJournalToKinesis = {
  type t;
  type request = {
@as("StreamName") streamName: option<streamName>,
@as("KinesisConfiguration") kinesisConfiguration: option<kinesisConfiguration>,
@as("ExclusiveEndTime") exclusiveEndTime: amazonawsTimestamp,
@as("InclusiveStartTime") inclusiveStartTime: option<amazonawsTimestamp>,
@as("Tags") tags: tags,
@as("RoleArn") roleArn: option<arn>,
@as("LedgerName") ledgerName: option<ledgerName>
}
  type response = {
@as("StreamId") streamId: uniqueId
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "StreamJournalToKinesisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRevision = {
  type t;
  type request = {
@as("DigestTipAddress") digestTipAddress: valueHolder,
@as("DocumentId") documentId: option<uniqueId>,
@as("BlockAddress") blockAddress: option<valueHolder>,
@as("Name") name: option<ledgerName>
}
  type response = {
@as("Revision") revision: option<valueHolder>,
@as("Proof") proof: valueHolder
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "GetRevisionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDigest = {
  type t;
  type request = {
@as("Name") name: option<ledgerName>
}
  type response = {
@as("DigestTipAddress") digestTipAddress: option<valueHolder>,
@as("Digest") digest: option<digest>
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "GetDigestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBlock = {
  type t;
  type request = {
@as("DigestTipAddress") digestTipAddress: valueHolder,
@as("BlockAddress") blockAddress: option<valueHolder>,
@as("Name") name: option<ledgerName>
}
  type response = {
@as("Proof") proof: valueHolder,
@as("Block") block: option<valueHolder>
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "GetBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLedger = {
  type t;
  type request = {
@as("DeletionProtection") deletionProtection: deletionProtection,
@as("PermissionsMode") permissionsMode: option<permissionsMode>,
@as("Tags") tags: tags,
@as("Name") name: option<ledgerName>
}
  type response = {
@as("DeletionProtection") deletionProtection: deletionProtection,
@as("PermissionsMode") permissionsMode: permissionsMode,
@as("CreationDateTime") creationDateTime: amazonawsTimestamp,
@as("State") state: ledgerState,
@as("Arn") arn: arn,
@as("Name") name: ledgerName
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "CreateLedgerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLedgers = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Ledgers") ledgers: ledgerList
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "ListLedgersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportJournalToS3 = {
  type t;
  type request = {
@as("RoleArn") roleArn: option<arn>,
@as("S3ExportConfiguration") s3ExportConfiguration: option<s3ExportConfiguration>,
@as("ExclusiveEndTime") exclusiveEndTime: option<amazonawsTimestamp>,
@as("InclusiveStartTime") inclusiveStartTime: option<amazonawsTimestamp>,
@as("Name") name: option<ledgerName>
}
  type response = {
@as("ExportId") exportId: option<uniqueId>
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "ExportJournalToS3Command";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJournalKinesisStream = {
  type t;
  type request = {
@as("StreamId") streamId: option<uniqueId>,
@as("LedgerName") ledgerName: option<ledgerName>
}
  type response = {
@as("Stream") stream: journalKinesisStreamDescription
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "DescribeJournalKinesisStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJournalKinesisStreamsForLedger = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("LedgerName") ledgerName: option<ledgerName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Streams") streams: journalKinesisStreamDescriptionList
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "ListJournalKinesisStreamsForLedgerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJournalS3Export = {
  type t;
  type request = {
@as("ExportId") exportId: option<uniqueId>,
@as("Name") name: option<ledgerName>
}
  type response = {
@as("ExportDescription") exportDescription: option<journalS3ExportDescription>
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "DescribeJournalS3ExportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJournalS3ExportsForLedger = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Name") name: option<ledgerName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("JournalS3Exports") journalS3Exports: journalS3ExportList
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "ListJournalS3ExportsForLedgerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJournalS3Exports = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("JournalS3Exports") journalS3Exports: journalS3ExportList
}
  @module("@aws-sdk/client-qldb") @new external new_: (request) => t = "ListJournalS3ExportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
