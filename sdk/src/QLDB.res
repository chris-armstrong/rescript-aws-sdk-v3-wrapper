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
@ocaml.doc("<p>A structure that can contain a value in multiple encoding formats.</p>")
type valueHolder = {
  @ocaml.doc(
    "<p>An Amazon Ion plaintext value contained in a <code>ValueHolder</code> structure.</p>"
  )
  @as("IonText")
  ionText: option<ionText>,
}
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The encryption settings that are used by a journal export job to write data in an
         Amazon Simple Storage Service (Amazon S3) bucket.</p>")
type s3EncryptionConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for a symmetric customer master key (CMK) in AWS Key
         Management Service (AWS KMS). Amazon QLDB does not support asymmetric CMKs.</p>
         <p>You must provide a <code>KmsKeyArn</code> if you specify <code>SSE_KMS</code> as the
            <code>ObjectEncryptionType</code>.</p>
         <p>
            <code>KmsKeyArn</code> is not required if you specify <code>SSE_S3</code> as the
            <code>ObjectEncryptionType</code>.</p>")
  @as("KmsKeyArn")
  kmsKeyArn: option<arn>,
  @ocaml.doc("<p>The Amazon S3 object encryption type.</p>
         <p>To learn more about server-side encryption options in Amazon S3, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html\">Protecting Data
            Using Server-Side Encryption</a> in the <i>Amazon S3 Developer
         Guide</i>.</p>")
  @as("ObjectEncryptionType")
  objectEncryptionType: s3ObjectEncryptionType,
}
@ocaml.doc("<p>Information about a ledger, including its name, state, and when it was created.</p>")
type ledgerSummary = {
  @ocaml.doc("<p>The date and time, in epoch time format, when the ledger was created. (Epoch time format
         is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>")
  @as("CreationDateTime")
  creationDateTime: option<timestamp_>,
  @ocaml.doc("<p>The current status of the ledger.</p>") @as("State") state: option<ledgerState>,
  @ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: option<ledgerName>,
}
@ocaml.doc("<p>The configuration settings of the Amazon Kinesis Data Streams destination for your Amazon QLDB journal
         stream.</p>")
type kinesisConfiguration = {
  @ocaml.doc("<p>Enables QLDB to publish multiple data records in a single Kinesis Data Streams record. To learn more,
         see <a href=\"https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-concepts.html\">KPL Key
            Concepts</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>")
  @as("AggregationEnabled")
  aggregationEnabled: option<boolean_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Kinesis data stream resource.</p>")
  @as("StreamArn")
  streamArn: arn,
}
@ocaml.doc("<p>The Amazon Simple Storage Service (Amazon S3) bucket location in which a journal export job writes the journal
         contents.</p>")
type s3ExportConfiguration = {
  @ocaml.doc("<p>The encryption settings that are used by a journal export job to write data in an Amazon S3
         bucket.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: s3EncryptionConfiguration,
  @ocaml.doc("<p>The prefix for the Amazon S3 bucket in which a journal export job writes the journal
         contents.</p>
         <p>The prefix must comply with Amazon S3 key naming rules and restrictions. For more
         information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html\">Object Key and Metadata</a> in the <i>Amazon S3 Developer
         Guide</i>.</p>
         <p>The following are examples of valid <code>Prefix</code> values:</p>
         <ul>
            <li>
               <p>
                  <code>JournalExports-ForMyLedger/Testing/</code>
               </p>
            </li>
            <li>
               <p>
                  <code>JournalExports</code>
               </p>
            </li>
            <li>
               <p>
                  <code>My:Tests/</code>
               </p>
            </li>
         </ul>")
  @as("Prefix")
  prefix: s3Prefix,
  @ocaml.doc("<p>The Amazon S3 bucket name in which a journal export job writes the journal contents.</p>
         <p>The bucket name must comply with the Amazon S3 bucket naming conventions. For more
         information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html\">Bucket Restrictions and
            Limitations</a> in the <i>Amazon S3 Developer Guide</i>.</p>")
  @as("Bucket")
  bucket: s3Bucket,
}
type ledgerList = array<ledgerSummary>
@ocaml.doc("<p>The information about an Amazon QLDB journal stream, including the Amazon Resource Name
         (ARN), stream name, creation time, current status, and the parameters of your original
         stream creation request.</p>")
type journalKinesisStreamDescription = {
  @ocaml.doc("<p>The user-defined name of the QLDB journal stream.</p>") @as("StreamName")
  streamName: streamName,
  @ocaml.doc("<p>The error message that describes the reason that a stream has a status of
            <code>IMPAIRED</code> or <code>FAILED</code>. This is not applicable to streams that
         have other status values.</p>")
  @as("ErrorCause")
  errorCause: option<errorCause>,
  @ocaml.doc("<p>The configuration settings of the Amazon Kinesis Data Streams destination for your QLDB journal
         stream.</p>")
  @as("KinesisConfiguration")
  kinesisConfiguration: kinesisConfiguration,
  @ocaml.doc("<p>The current state of the QLDB journal stream.</p>") @as("Status")
  status: streamStatus,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the QLDB journal stream.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The unique ID that QLDB assigns to each QLDB journal stream.</p>") @as("StreamId")
  streamId: uniqueId,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a
         journal stream to write data records to a Kinesis Data Streams resource.</p>")
  @as("RoleArn")
  roleArn: arn,
  @ocaml.doc("<p>The exclusive date and time that specifies when the stream ends. If this parameter is
         blank, the stream runs indefinitely until you cancel it.</p>")
  @as("ExclusiveEndTime")
  exclusiveEndTime: option<timestamp_>,
  @ocaml.doc("<p>The inclusive start date and time from which to start streaming journal data.</p>")
  @as("InclusiveStartTime")
  inclusiveStartTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time, in epoch time format, when the QLDB journal stream was created.
         (Epoch time format is the number of seconds elapsed since 12:00:00 AM January 1, 1970
         UTC.)</p>")
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The name of the ledger.</p>") @as("LedgerName") ledgerName: ledgerName,
}
@ocaml.doc("<p>The information about a journal export job, including the ledger name, export ID, when
         it was created, current status, and its start and end time export parameters.</p>")
type journalS3ExportDescription = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a
         journal export job to do the following:</p>
         <ul>
            <li>
               <p>Write objects into your Amazon Simple Storage Service (Amazon S3) bucket.</p>
            </li>
            <li>
               <p>(Optional) Use your customer master key (CMK) in AWS Key Management Service (AWS
               KMS) for server-side encryption of your exported data.</p>
            </li>
         </ul>")
  @as("RoleArn")
  roleArn: arn,
  @as("S3ExportConfiguration") s3ExportConfiguration: s3ExportConfiguration,
  @ocaml.doc("<p>The exclusive end date and time for the range of journal contents that are specified in
         the original export request.</p>")
  @as("ExclusiveEndTime")
  exclusiveEndTime: timestamp_,
  @ocaml.doc("<p>The inclusive start date and time for the range of journal contents that are specified
         in the original export request.</p>")
  @as("InclusiveStartTime")
  inclusiveStartTime: timestamp_,
  @ocaml.doc("<p>The current state of the journal export job.</p>") @as("Status")
  status: exportStatus,
  @ocaml.doc("<p>The date and time, in epoch time format, when the export job was created. (Epoch time
         format is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>")
  @as("ExportCreationTime")
  exportCreationTime: timestamp_,
  @ocaml.doc("<p>The unique ID of the journal export job.</p>") @as("ExportId") exportId: uniqueId,
  @ocaml.doc("<p>The name of the ledger.</p>") @as("LedgerName") ledgerName: ledgerName,
}
type journalKinesisStreamDescriptionList = array<journalKinesisStreamDescription>
type journalS3ExportList = array<journalS3ExportDescription>
@ocaml.doc("<p>The control plane for Amazon QLDB</p>")
module UpdateLedgerPermissionsMode = {
  type t
  type request = {
    @ocaml.doc("<p>The permissions mode to assign to the ledger. This parameter can have one of the
         following values:</p>
         <ul>
            <li>
               <p>
                  <code>ALLOW_ALL</code>: A legacy permissions mode that enables access control with
               API-level granularity for ledgers.</p>
               <p>This mode allows users who have <code>SendCommand</code> permissions for this
               ledger to run all PartiQL commands (hence, <code>ALLOW_ALL</code>) on any tables in
               the specified ledger. This mode disregards any table-level or command-level IAM
               permissions policies that you create for the ledger.</p>
            </li>
            <li>
               <p>
                  <code>STANDARD</code>: (<i>Recommended</i>) A permissions mode that
               enables access control with finer granularity for ledgers, tables, and PartiQL
               commands.</p>
               <p>By default, this mode denies all user requests to run any PartiQL commands on any
               tables in this ledger. To allow PartiQL commands to run, you must create IAM
               permissions policies for specific table resources and PartiQL actions, in addition to
                  <code>SendCommand</code> API permissions for the ledger.</p>
            </li>
         </ul>
         <note>
            <p>We strongly recommend using the <code>STANDARD</code> permissions mode to maximize
            the security of your ledger data.</p>
         </note>")
    @as("PermissionsMode")
    permissionsMode: permissionsMode,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: ledgerName,
  }
  type response = {
    @ocaml.doc("<p>The current permissions mode of the ledger.</p>") @as("PermissionsMode")
    permissionsMode: option<permissionsMode>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the ledger.</p>") @as("Arn") arn: option<arn>,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: option<ledgerName>,
  }
  @module("@aws-sdk/client-qldb") @new
  external new: request => t = "UpdateLedgerPermissionsModeCommand"
  let make = (~permissionsMode, ~name, ()) => new({permissionsMode: permissionsMode, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLedger = {
  type t
  type request = {
    @ocaml.doc("<p>The flag that prevents a ledger from being deleted by any user. If not provided on
         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
         <p>If deletion protection is enabled, you must first disable it before you can delete the
         ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the
            <code>UpdateLedger</code> operation to set the flag to <code>false</code>. The QLDB
         console disables deletion protection for you when you use it to delete a ledger.</p>")
    @as("DeletionProtection")
    deletionProtection: option<deletionProtection>,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: ledgerName,
  }
  type response = {
    @ocaml.doc("<p>The flag that prevents a ledger from being deleted by any user. If not provided on
         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
         <p>If deletion protection is enabled, you must first disable it before you can delete the
         ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the
            <code>UpdateLedger</code> operation to set the flag to <code>false</code>. The QLDB
         console disables deletion protection for you when you use it to delete a ledger.</p>")
    @as("DeletionProtection")
    deletionProtection: option<deletionProtection>,
    @ocaml.doc("<p>The date and time, in epoch time format, when the ledger was created. (Epoch time format
         is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>")
    @as("CreationDateTime")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The current status of the ledger.</p>") @as("State") state: option<ledgerState>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the ledger.</p>") @as("Arn") arn: option<arn>,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: option<ledgerName>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "UpdateLedgerCommand"
  let make = (~name, ~deletionProtection=?, ()) =>
    new({deletionProtection: deletionProtection, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLedger = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the ledger that you want to describe.</p>") @as("Name")
    name: ledgerName,
  }
  type response = {
    @ocaml.doc("<p>The flag that prevents a ledger from being deleted by any user. If not provided on
         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
         <p>If deletion protection is enabled, you must first disable it before you can delete the
         ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the
            <code>UpdateLedger</code> operation to set the flag to <code>false</code>. The QLDB
         console disables deletion protection for you when you use it to delete a ledger.</p>")
    @as("DeletionProtection")
    deletionProtection: option<deletionProtection>,
    @ocaml.doc("<p>The permissions mode of the ledger.</p>") @as("PermissionsMode")
    permissionsMode: option<permissionsMode>,
    @ocaml.doc("<p>The date and time, in epoch time format, when the ledger was created. (Epoch time format
         is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>")
    @as("CreationDateTime")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The current status of the ledger.</p>") @as("State") state: option<ledgerState>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the ledger.</p>") @as("Arn") arn: option<arn>,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: option<ledgerName>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "DescribeLedgerCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLedger = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the ledger that you want to delete.</p>") @as("Name")
    name: ledgerName,
  }

  @module("@aws-sdk/client-qldb") @new external new: request => t = "DeleteLedgerCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelJournalKinesisStream = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID that QLDB assigns to each QLDB journal stream.</p>")
    @as("StreamId")
    streamId: uniqueId,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("LedgerName") ledgerName: ledgerName,
  }
  type response = {
    @ocaml.doc("<p>The unique ID that QLDB assigns to each QLDB journal stream.</p>")
    @as("StreamId")
    streamId: option<uniqueId>,
  }
  @module("@aws-sdk/client-qldb") @new
  external new: request => t = "CancelJournalKinesisStreamCommand"
  let make = (~streamId, ~ledgerName, ()) => new({streamId: streamId, ledgerName: ledgerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tag keys that you want to remove.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) from which you want to remove the tags. For
         example:</p>
         <p>
            <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
         </p>")
    @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-qldb") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The key-value pairs to add as tags to the specified QLDB resource. Tag keys are case
         sensitive. If you specify a key that already exists for the resource, your request fails
         and returns an error. Tag values are case sensitive and can be null.</p>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) to which you want to add the tags. For example:</p>
         <p>
            <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
         </p>")
    @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-qldb") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StreamJournalToKinesis = {
  type t
  type request = {
    @ocaml.doc("<p>The name that you want to assign to the QLDB journal stream. User-defined names can
         help identify and indicate the purpose of a stream.</p>
         <p>Your stream name must be unique among other <i>active</i> streams for a
         given ledger. Stream names have the same naming constraints as ledger names, as defined in
            <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming\">Quotas in Amazon QLDB</a> in the <i>Amazon QLDB Developer
         Guide</i>.</p>")
    @as("StreamName")
    streamName: streamName,
    @ocaml.doc(
      "<p>The configuration settings of the Kinesis Data Streams destination for your stream request.</p>"
    )
    @as("KinesisConfiguration")
    kinesisConfiguration: kinesisConfiguration,
    @ocaml.doc("<p>The exclusive date and time that specifies when the stream ends. If you don't define
         this parameter, the stream runs indefinitely until you cancel it.</p>
         <p>The <code>ExclusiveEndTime</code> must be in <code>ISO 8601</code> date and time format
         and in Universal Coordinated Time (UTC). For example:
         <code>2019-06-13T21:36:34Z</code>
         </p>")
    @as("ExclusiveEndTime")
    exclusiveEndTime: option<timestamp_>,
    @ocaml.doc("<p>The inclusive start date and time from which to start streaming journal data. This
         parameter must be in <code>ISO 8601</code> date and time format and in Universal
         Coordinated Time (UTC). For example: <code>2019-06-13T21:36:34Z</code>
         </p>
         <p>The <code>InclusiveStartTime</code> cannot be in the future and must be before
            <code>ExclusiveEndTime</code>.</p>
         <p>If you provide an <code>InclusiveStartTime</code> that is before the ledger's
            <code>CreationDateTime</code>, QLDB effectively defaults it to the ledger's
            <code>CreationDateTime</code>.</p>")
    @as("InclusiveStartTime")
    inclusiveStartTime: timestamp_,
    @ocaml.doc("<p>The key-value pairs to add as tags to the stream that you want to create. Tag keys are
         case sensitive. Tag values are case sensitive and can be null.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a
         journal stream to write data records to a Kinesis Data Streams resource.</p>")
    @as("RoleArn")
    roleArn: arn,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("LedgerName") ledgerName: ledgerName,
  }
  type response = {
    @ocaml.doc("<p>The unique ID that QLDB assigns to each QLDB journal stream.</p>")
    @as("StreamId")
    streamId: option<uniqueId>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "StreamJournalToKinesisCommand"
  let make = (
    ~streamName,
    ~kinesisConfiguration,
    ~inclusiveStartTime,
    ~roleArn,
    ~ledgerName,
    ~exclusiveEndTime=?,
    ~tags=?,
    (),
  ) =>
    new({
      streamName: streamName,
      kinesisConfiguration: kinesisConfiguration,
      exclusiveEndTime: exclusiveEndTime,
      inclusiveStartTime: inclusiveStartTime,
      tags: tags,
      roleArn: roleArn,
      ledgerName: ledgerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for which you want to list the tags. For example:</p>
         <p>
            <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
         </p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The tags that are currently associated with the specified Amazon QLDB resource.</p>"
    )
    @as("Tags")
    tags: option<tags>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRevision = {
  type t
  type request = {
    @ocaml.doc("<p>The latest block location covered by the digest for which to request a proof. An address
         is an Amazon Ion structure that has two fields: <code>strandId</code> and
            <code>sequenceNo</code>.</p>
         <p>For example: <code>{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:49}</code>
         </p>")
    @as("DigestTipAddress")
    digestTipAddress: option<valueHolder>,
    @ocaml.doc("<p>The unique ID of the document to be verified.</p>") @as("DocumentId")
    documentId: uniqueId,
    @ocaml.doc("<p>The block location of the document revision to be verified. An address is an Amazon Ion
         structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p>
         <p>For example: <code>{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:14}</code>
         </p>")
    @as("BlockAddress")
    blockAddress: valueHolder,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: ledgerName,
  }
  type response = {
    @ocaml.doc("<p>The document revision data object in Amazon Ion format.</p>") @as("Revision")
    revision: valueHolder,
    @ocaml.doc("<p>The proof object in Amazon Ion format returned by a <code>GetRevision</code> request. A
         proof contains the list of hash values that are required to recalculate the specified
         digest using a Merkle tree, starting with the specified document revision.</p>")
    @as("Proof")
    proof: option<valueHolder>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "GetRevisionCommand"
  let make = (~documentId, ~blockAddress, ~name, ~digestTipAddress=?, ()) =>
    new({
      digestTipAddress: digestTipAddress,
      documentId: documentId,
      blockAddress: blockAddress,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDigest = {
  type t
  type request = {@ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: ledgerName}
  type response = {
    @ocaml.doc("<p>The latest block location covered by the digest that you requested. An address is an
         Amazon Ion structure that has two fields: <code>strandId</code> and
         <code>sequenceNo</code>.</p>")
    @as("DigestTipAddress")
    digestTipAddress: valueHolder,
    @ocaml.doc("<p>The 256-bit hash value representing the digest returned by a <code>GetDigest</code>
         request.</p>")
    @as("Digest")
    digest: digest,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "GetDigestCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBlock = {
  type t
  type request = {
    @ocaml.doc("<p>The latest block location covered by the digest for which to request a proof. An address
         is an Amazon Ion structure that has two fields: <code>strandId</code> and
            <code>sequenceNo</code>.</p>
         <p>For example: <code>{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:49}</code>
         </p>")
    @as("DigestTipAddress")
    digestTipAddress: option<valueHolder>,
    @ocaml.doc("<p>The location of the block that you want to request. An address is an Amazon Ion
         structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p>
         <p>For example: <code>{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:14}</code>
         </p>")
    @as("BlockAddress")
    blockAddress: valueHolder,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: ledgerName,
  }
  type response = {
    @ocaml.doc("<p>The proof object in Amazon Ion format returned by a <code>GetBlock</code> request. A
         proof contains the list of hash values required to recalculate the specified digest using a
         Merkle tree, starting with the specified block.</p>")
    @as("Proof")
    proof: option<valueHolder>,
    @ocaml.doc("<p>The block data object in Amazon Ion format.</p>") @as("Block")
    block: valueHolder,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "GetBlockCommand"
  let make = (~blockAddress, ~name, ~digestTipAddress=?, ()) =>
    new({digestTipAddress: digestTipAddress, blockAddress: blockAddress, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLedger = {
  type t
  type request = {
    @ocaml.doc("<p>The flag that prevents a ledger from being deleted by any user. If not provided on
         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
         <p>If deletion protection is enabled, you must first disable it before you can delete the
         ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the
            <code>UpdateLedger</code> operation to set the flag to <code>false</code>. The QLDB
         console disables deletion protection for you when you use it to delete a ledger.</p>")
    @as("DeletionProtection")
    deletionProtection: option<deletionProtection>,
    @ocaml.doc("<p>The permissions mode to assign to the ledger that you want to create. This parameter can
         have one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>ALLOW_ALL</code>: A legacy permissions mode that enables access control with
               API-level granularity for ledgers.</p>
               <p>This mode allows users who have <code>SendCommand</code> permissions for this
               ledger to run all PartiQL commands (hence, <code>ALLOW_ALL</code>) on any tables in
               the specified ledger. This mode disregards any table-level or command-level IAM
               permissions policies that you create for the ledger.</p>
            </li>
            <li>
               <p>
                  <code>STANDARD</code>: (<i>Recommended</i>) A permissions mode that
               enables access control with finer granularity for ledgers, tables, and PartiQL
               commands.</p>
               <p>By default, this mode denies all user requests to run any PartiQL commands on any
               tables in this ledger. To allow PartiQL commands to run, you must create IAM
               permissions policies for specific table resources and PartiQL actions, in addition to
                  <code>SendCommand</code> API permissions for the ledger.</p>
            </li>
         </ul>
         <note>
            <p>We strongly recommend using the <code>STANDARD</code> permissions mode to maximize
            the security of your ledger data.</p>
         </note>")
    @as("PermissionsMode")
    permissionsMode: permissionsMode,
    @ocaml.doc("<p>The key-value pairs to add as tags to the ledger that you want to create. Tag keys are
         case sensitive. Tag values are case sensitive and can be null.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The name of the ledger that you want to create. The name must be unique among all of
         your ledgers in the current AWS Region.</p>
         <p>Naming constraints for ledger names are defined in <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming\">Quotas in Amazon QLDB</a>
         in the <i>Amazon QLDB Developer Guide</i>.</p>")
    @as("Name")
    name: ledgerName,
  }
  type response = {
    @ocaml.doc("<p>The flag that prevents a ledger from being deleted by any user. If not provided on
         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
         <p>If deletion protection is enabled, you must first disable it before you can delete the
         ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the
            <code>UpdateLedger</code> operation to set the flag to <code>false</code>. The QLDB
         console disables deletion protection for you when you use it to delete a ledger.</p>")
    @as("DeletionProtection")
    deletionProtection: option<deletionProtection>,
    @ocaml.doc("<p>The permissions mode of the ledger that you created.</p>") @as("PermissionsMode")
    permissionsMode: option<permissionsMode>,
    @ocaml.doc("<p>The date and time, in epoch time format, when the ledger was created. (Epoch time format
         is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>")
    @as("CreationDateTime")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The current status of the ledger.</p>") @as("State") state: option<ledgerState>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the ledger.</p>") @as("Arn") arn: option<arn>,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: option<ledgerName>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "CreateLedgerCommand"
  let make = (~permissionsMode, ~name, ~deletionProtection=?, ~tags=?, ()) =>
    new({
      deletionProtection: deletionProtection,
      permissionsMode: permissionsMode,
      tags: tags,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLedgers = {
  type t
  type request = {
    @ocaml.doc("<p>A pagination token, indicating that you want to retrieve the next page of results. If
         you received a value for <code>NextToken</code> in the response from a previous
            <code>ListLedgers</code> call, then you should use that value as input here.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single <code>ListLedgers</code> request.
         (The actual number of results returned might be fewer.)</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token, indicating whether there are more results available:</p>
         <ul>
            <li>
               <p>If <code>NextToken</code> is empty, then the last page of results has been
               processed and there are no more results to be retrieved.</p>
            </li>
            <li>
               <p>If <code>NextToken</code> is <i>not</i> empty, then there are more
               results available. To retrieve the next page of results, use the value of
                  <code>NextToken</code> in a subsequent <code>ListLedgers</code> call.</p>
            </li>
         </ul>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The array of ledger summaries that are associated with the current AWS account and
         Region.</p>")
    @as("Ledgers")
    ledgers: option<ledgerList>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "ListLedgersCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportJournalToS3 = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a
         journal export job to do the following:</p>
         <ul>
            <li>
               <p>Write objects into your Amazon Simple Storage Service (Amazon S3) bucket.</p>
            </li>
            <li>
               <p>(Optional) Use your customer master key (CMK) in AWS Key Management Service (AWS
               KMS) for server-side encryption of your exported data.</p>
            </li>
         </ul>")
    @as("RoleArn")
    roleArn: arn,
    @ocaml.doc("<p>The configuration settings of the Amazon S3 bucket destination for your export
         request.</p>")
    @as("S3ExportConfiguration")
    s3ExportConfiguration: s3ExportConfiguration,
    @ocaml.doc("<p>The exclusive end date and time for the range of journal contents that you want to
         export.</p>
         <p>The <code>ExclusiveEndTime</code> must be in <code>ISO 8601</code> date and time format
         and in Universal Coordinated Time (UTC). For example:
         <code>2019-06-13T21:36:34Z</code>
         </p>
         <p>The <code>ExclusiveEndTime</code> must be less than or equal to the current UTC date and
         time.</p>")
    @as("ExclusiveEndTime")
    exclusiveEndTime: timestamp_,
    @ocaml.doc("<p>The inclusive start date and time for the range of journal contents that you want to
         export.</p>
         <p>The <code>InclusiveStartTime</code> must be in <code>ISO 8601</code> date and time
         format and in Universal Coordinated Time (UTC). For example:
            <code>2019-06-13T21:36:34Z</code>
         </p>
         <p>The <code>InclusiveStartTime</code> must be before <code>ExclusiveEndTime</code>.</p>
         <p>If you provide an <code>InclusiveStartTime</code> that is before the ledger's
            <code>CreationDateTime</code>, Amazon QLDB defaults it to the ledger's
            <code>CreationDateTime</code>.</p>")
    @as("InclusiveStartTime")
    inclusiveStartTime: timestamp_,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: ledgerName,
  }
  type response = {
    @ocaml.doc("<p>The unique ID that QLDB assigns to each journal export job.</p>
         <p>To describe your export request and check the status of the job, you can use
            <code>ExportId</code> to call <code>DescribeJournalS3Export</code>.</p>")
    @as("ExportId")
    exportId: uniqueId,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "ExportJournalToS3Command"
  let make = (
    ~roleArn,
    ~s3ExportConfiguration,
    ~exclusiveEndTime,
    ~inclusiveStartTime,
    ~name,
    (),
  ) =>
    new({
      roleArn: roleArn,
      s3ExportConfiguration: s3ExportConfiguration,
      exclusiveEndTime: exclusiveEndTime,
      inclusiveStartTime: inclusiveStartTime,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJournalKinesisStream = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID that QLDB assigns to each QLDB journal stream.</p>")
    @as("StreamId")
    streamId: uniqueId,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("LedgerName") ledgerName: ledgerName,
  }
  type response = {
    @ocaml.doc("<p>Information about the QLDB journal stream returned by a
            <code>DescribeJournalS3Export</code> request.</p>")
    @as("Stream")
    stream: option<journalKinesisStreamDescription>,
  }
  @module("@aws-sdk/client-qldb") @new
  external new: request => t = "DescribeJournalKinesisStreamCommand"
  let make = (~streamId, ~ledgerName, ()) => new({streamId: streamId, ledgerName: ledgerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJournalKinesisStreamsForLedger = {
  type t
  type request = {
    @ocaml.doc("<p>A pagination token, indicating that you want to retrieve the next page of results. If
         you received a value for <code>NextToken</code> in the response from a previous
            <code>ListJournalKinesisStreamsForLedger</code> call, you should use that value as input
         here.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single
            <code>ListJournalKinesisStreamsForLedger</code> request. (The actual number of results
         returned might be fewer.)</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("LedgerName") ledgerName: ledgerName,
  }
  type response = {
    @ocaml.doc("<ul>
            <li>
               <p>If <code>NextToken</code> is empty, the last page of results has been processed
               and there are no more results to be retrieved.</p>
            </li>
            <li>
               <p>If <code>NextToken</code> is <i>not</i> empty, more results are
               available. To retrieve the next page of results, use the value of
                  <code>NextToken</code> in a subsequent
                  <code>ListJournalKinesisStreamsForLedger</code> call.</p>
            </li>
         </ul>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The array of QLDB journal stream descriptors that are associated with the given
         ledger.</p>")
    @as("Streams")
    streams: option<journalKinesisStreamDescriptionList>,
  }
  @module("@aws-sdk/client-qldb") @new
  external new: request => t = "ListJournalKinesisStreamsForLedgerCommand"
  let make = (~ledgerName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, ledgerName: ledgerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJournalS3Export = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the journal export job that you want to describe.</p>")
    @as("ExportId")
    exportId: uniqueId,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: ledgerName,
  }
  type response = {
    @ocaml.doc("<p>Information about the journal export job returned by a
            <code>DescribeJournalS3Export</code> request.</p>")
    @as("ExportDescription")
    exportDescription: journalS3ExportDescription,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "DescribeJournalS3ExportCommand"
  let make = (~exportId, ~name, ()) => new({exportId: exportId, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJournalS3ExportsForLedger = {
  type t
  type request = {
    @ocaml.doc("<p>A pagination token, indicating that you want to retrieve the next page of results. If
         you received a value for <code>NextToken</code> in the response from a previous
            <code>ListJournalS3ExportsForLedger</code> call, then you should use that value as input
         here.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single
            <code>ListJournalS3ExportsForLedger</code> request. (The actual number of results
         returned might be fewer.)</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The name of the ledger.</p>") @as("Name") name: ledgerName,
  }
  type response = {
    @ocaml.doc("<ul>
            <li>
               <p>If <code>NextToken</code> is empty, then the last page of results has been
               processed and there are no more results to be retrieved.</p>
            </li>
            <li>
               <p>If <code>NextToken</code> is <i>not</i> empty, then there are more
               results available. To retrieve the next page of results, use the value of
                  <code>NextToken</code> in a subsequent <code>ListJournalS3ExportsForLedger</code>
               call.</p>
            </li>
         </ul>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The array of journal export job descriptions that are associated with the specified
         ledger.</p>")
    @as("JournalS3Exports")
    journalS3Exports: option<journalS3ExportList>,
  }
  @module("@aws-sdk/client-qldb") @new
  external new: request => t = "ListJournalS3ExportsForLedgerCommand"
  let make = (~name, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJournalS3Exports = {
  type t
  type request = {
    @ocaml.doc("<p>A pagination token, indicating that you want to retrieve the next page of results. If
         you received a value for <code>NextToken</code> in the response from a previous
            <code>ListJournalS3Exports</code> call, then you should use that value as input
         here.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single <code>ListJournalS3Exports</code>
         request. (The actual number of results returned might be fewer.)</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<ul>
            <li>
               <p>If <code>NextToken</code> is empty, then the last page of results has been
               processed and there are no more results to be retrieved.</p>
            </li>
            <li>
               <p>If <code>NextToken</code> is <i>not</i> empty, then there are more
               results available. To retrieve the next page of results, use the value of
                  <code>NextToken</code> in a subsequent <code>ListJournalS3Exports</code>
               call.</p>
            </li>
         </ul>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The array of journal export job descriptions for all ledgers that are associated with
         the current AWS account and Region.</p>")
    @as("JournalS3Exports")
    journalS3Exports: option<journalS3ExportList>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "ListJournalS3ExportsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
