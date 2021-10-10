type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-s3") @new external createClient: unit => awsServiceClient = "S3Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type years = int
type websiteRedirectLocation = string
type versionIdMarker = string
type value = string
type uploadIdMarker = string
type uri = string
type type_ = [
  | @as("Group") #Group
  | @as("AmazonCustomerByEmail") #AmazonCustomerByEmail
  | @as("CanonicalUser") #CanonicalUser
]
type transitionStorageClass = [
  | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE
  | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING
  | @as("ONEZONE_IA") #ONEZONE_IA
  | @as("STANDARD_IA") #STANDARD_IA
  | @as("GLACIER") #GLACIER
]
type topicArn = string
type token = string
type tier = [@as("Expedited") #Expedited | @as("Bulk") #Bulk | @as("Standard") #Standard]
type targetPrefix = string
type targetBucket = string
type taggingHeader = string
type taggingDirective = [@as("REPLACE") #REPLACE | @as("COPY") #COPY]
type tagCount = int
type suffix = string
type streamingBlob = NodeJs.Buffer.t
type storageClassAnalysisSchemaVersion = [@as("V_1") #V_1]
type storageClass = [
  | @as("OUTPOSTS") #OUTPOSTS
  | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE
  | @as("GLACIER") #GLACIER
  | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING
  | @as("ONEZONE_IA") #ONEZONE_IA
  | @as("STANDARD_IA") #STANDARD_IA
  | @as("REDUCED_REDUNDANCY") #REDUCED_REDUNDANCY
  | @as("STANDARD") #STANDARD
]
type startAfter = string
type start = float
type sseKmsEncryptedObjectsStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type size = int
type setting = bool
type serverSideEncryption = [@as("aws:kms") #Aws_Kms | @as("AES256") #AES256]
@ocaml.doc("<p>Specifies the use of SSE-S3 to encrypt delivered inventory reports.</p>")
type sses3 = unit
type ssekmskeyId = string
type ssekmsencryptionContext = string
type ssecustomerKeyMD5 = string
type ssecustomerKey = string
type ssecustomerAlgorithm = string
type role = string
type restoreRequestType = [@as("SELECT") #SELECT]
type restoreOutputPath = string
type restore = string
type responseExpires = Js.Date.t
type responseContentType = string
type responseContentLanguage = string
type responseContentEncoding = string
type responseContentDisposition = string
type responseCacheControl = string
type requestToken = string
type requestRoute = string
@ocaml.doc("<p>Confirms that the requester knows that they will be charged for the request. Bucket
         owners need not specify this parameter in their requests. For information about downloading
         objects from requester pays buckets, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html\">Downloading Objects in
            Requestor Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>")
type requestPayer = [@as("requester") #Requester]
@ocaml.doc("<p>If present, indicates that the requester was successfully charged for the
         request.</p>")
type requestCharged = [@as("requester") #Requester]
type replicationTimeStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type replicationStatus = [
  | @as("REPLICA") #REPLICA
  | @as("FAILED") #FAILED
  | @as("PENDING") #PENDING
  | @as("COMPLETE") #COMPLETE
]
type replicationRuleStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type replicaModificationsStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type replicaKmsKeyID = string
type replaceKeyWith = string
type replaceKeyPrefixWith = string
type recordDelimiter = string
type range = string
type quoteFields = [@as("ASNEEDED") #ASNEEDED | @as("ALWAYS") #ALWAYS]
type quoteEscapeCharacter = string
type quoteCharacter = string
type quiet = bool
type queueArn = string
type protocol = [@as("https") #Https | @as("http") #Http]
type priority = int
type prefix = string
type policy = string
type permission = [
  | @as("READ_ACP") #READ_ACP
  | @as("READ") #READ
  | @as("WRITE_ACP") #WRITE_ACP
  | @as("WRITE") #WRITE
  | @as("FULL_CONTROL") #FULL_CONTROL
]
type payer = [@as("BucketOwner") #BucketOwner | @as("Requester") #Requester]
type partsCount = int
type partNumberMarker = string
type partNumber = int
@ocaml.doc("<p>Container for Parquet.</p>") type parquetInput = unit
type ownerOverride = [@as("Destination") #Destination]
type objectVersionStorageClass = [@as("STANDARD") #STANDARD]
type objectVersionId = string
type objectStorageClass = [
  | @as("OUTPOSTS") #OUTPOSTS
  | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE
  | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING
  | @as("ONEZONE_IA") #ONEZONE_IA
  | @as("STANDARD_IA") #STANDARD_IA
  | @as("GLACIER") #GLACIER
  | @as("REDUCED_REDUNDANCY") #REDUCED_REDUNDANCY
  | @as("STANDARD") #STANDARD
]
@ocaml.doc("<p>The container element for object ownership for a bucket's ownership controls.</p>
         <p>BucketOwnerPreferred - Objects uploaded to the bucket change ownership to the bucket
         owner if the objects are uploaded with the <code>bucket-owner-full-control</code> canned
         ACL.</p>
         <p>ObjectWriter - The uploading account will own the object if the object is uploaded with
         the <code>bucket-owner-full-control</code> canned ACL.</p>")
type objectOwnership = [
  | @as("ObjectWriter") #ObjectWriter
  | @as("BucketOwnerPreferred") #BucketOwnerPreferred
]
type objectLockToken = string
type objectLockRetentionMode = [@as("COMPLIANCE") #COMPLIANCE | @as("GOVERNANCE") #GOVERNANCE]
type objectLockRetainUntilDate = Js.Date.t
type objectLockMode = [@as("COMPLIANCE") #COMPLIANCE | @as("GOVERNANCE") #GOVERNANCE]
type objectLockLegalHoldStatus = [@as("OFF") #OFF | @as("ON") #ON]
type objectLockEnabledForBucket = bool
type objectLockEnabled = [@as("Enabled") #Enabled]
type objectKey = string
type objectCannedACL = [
  | @as("bucket-owner-full-control") #Bucket_Owner_Full_Control
  | @as("bucket-owner-read") #Bucket_Owner_Read
  | @as("aws-exec-read") #Aws_Exec_Read
  | @as("authenticated-read") #Authenticated_Read
  | @as("public-read-write") #Public_Read_Write
  | @as("public-read") #Public_Read
  | @as("private") #Private
]
@ocaml.doc("<p>An optional unique identifier for configurations in a notification configuration. If you
         don't provide one, Amazon S3 will assign an ID.</p>")
type notificationId = string
type nextVersionIdMarker = string
type nextUploadIdMarker = string
type nextToken = string
type nextPartNumberMarker = string
type nextMarker = string
type nextKeyMarker = string
type multipartUploadId = string
type missingMeta = int
type minutes = int
type metricsStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type metricsId = string
type metadataValue = string
type metadataKey = string
type metadataDirective = [@as("REPLACE") #REPLACE | @as("COPY") #COPY]
type message = string
type maxUploads = int
type maxParts = int
type maxKeys = int
type maxAgeSeconds = int
type marker = string
type mfadeleteStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type mfadelete = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type mfa = string
type locationPrefix = string
type location = string
type lastModified = Js.Date.t
type lambdaFunctionArn = string
type keyPrefixEquals = string
type keyMarker = string
type keyCount = int
type kmscontext = string
type jsontype = [@as("LINES") #LINES | @as("DOCUMENT") #DOCUMENT]
type isTruncated = bool
type isPublic = bool
type isLatest = bool
type isEnabled = bool
type inventoryOptionalField = [
  | @as("BucketKeyStatus") #BucketKeyStatus
  | @as("IntelligentTieringAccessTier") #IntelligentTieringAccessTier
  | @as("ObjectLockLegalHoldStatus") #ObjectLockLegalHoldStatus
  | @as("ObjectLockMode") #ObjectLockMode
  | @as("ObjectLockRetainUntilDate") #ObjectLockRetainUntilDate
  | @as("EncryptionStatus") #EncryptionStatus
  | @as("ReplicationStatus") #ReplicationStatus
  | @as("IsMultipartUploaded") #IsMultipartUploaded
  | @as("ETag") #ETag
  | @as("StorageClass") #StorageClass
  | @as("LastModifiedDate") #LastModifiedDate
  | @as("Size") #Size
]
type inventoryIncludedObjectVersions = [@as("Current") #Current | @as("All") #All]
type inventoryId = string
type inventoryFrequency = [@as("Weekly") #Weekly | @as("Daily") #Daily]
type inventoryFormat = [@as("Parquet") #Parquet | @as("ORC") #ORC | @as("CSV") #CSV]
type intelligentTieringStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type intelligentTieringId = string
type intelligentTieringDays = int
type intelligentTieringAccessTier = [
  | @as("DEEP_ARCHIVE_ACCESS") #DEEP_ARCHIVE_ACCESS
  | @as("ARCHIVE_ACCESS") #ARCHIVE_ACCESS
]
type initiated = Js.Date.t
type ifUnmodifiedSince = Js.Date.t
type ifNoneMatch = string
type ifModifiedSince = Js.Date.t
type ifMatch = string
type id = string
type httpRedirectCode = string
type httpErrorCodeReturnedEquals = string
type hostName = string
type grantWriteACP = string
type grantWrite = string
type grantReadACP = string
type grantRead = string
type grantFullControl = string
type getObjectResponseStatusCode = int
type filterRuleValue = string
type filterRuleName = [@as("suffix") #Suffix | @as("prefix") #Prefix]
type fileHeaderInfo = [@as("NONE") #NONE | @as("IGNORE") #IGNORE | @as("USE") #USE]
type fieldDelimiter = string
type fetchOwner = bool
type expressionType = [@as("SQL") #SQL]
type expression = string
type exposeHeader = string
type expires = Js.Date.t
type expiredObjectDeleteMarker = bool
type expirationStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type expiration = string
type existingObjectReplicationStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
@ocaml.doc("<p>The bucket event for which to send notifications.</p>")
type event = [
  | @as("s3:Replication:OperationReplicatedAfterThreshold")
  #S3_Replication_OperationReplicatedAfterThreshold
  | @as("s3:Replication:OperationMissedThreshold") #S3_Replication_OperationMissedThreshold
  | @as("s3:Replication:OperationNotTracked") #S3_Replication_OperationNotTracked
  | @as("s3:Replication:OperationFailedReplication") #S3_Replication_OperationFailedReplication
  | @as("s3:Replication:*") #S3_Replication_Star
  | @as("s3:ObjectRestore:Completed") #S3_ObjectRestore_Completed
  | @as("s3:ObjectRestore:Post") #S3_ObjectRestore_Post
  | @as("s3:ObjectRestore:*") #S3_ObjectRestore_Star
  | @as("s3:ObjectRemoved:DeleteMarkerCreated") #S3_ObjectRemoved_DeleteMarkerCreated
  | @as("s3:ObjectRemoved:Delete") #S3_ObjectRemoved_Delete
  | @as("s3:ObjectRemoved:*") #S3_ObjectRemoved_Star
  | @as("s3:ObjectCreated:CompleteMultipartUpload") #S3_ObjectCreated_CompleteMultipartUpload
  | @as("s3:ObjectCreated:Copy") #S3_ObjectCreated_Copy
  | @as("s3:ObjectCreated:Post") #S3_ObjectCreated_Post
  | @as("s3:ObjectCreated:Put") #S3_ObjectCreated_Put
  | @as("s3:ObjectCreated:*") #S3_ObjectCreated_Star
  | @as("s3:ReducedRedundancyLostObject") #S3_ReducedRedundancyLostObject
]
type errorMessage = string
type errorCode = string
@ocaml.doc("<p>A message that indicates the request is complete and no more messages will be sent. You
         should not assume that the request is complete until the client receives an
            <code>EndEvent</code>.</p>")
type endEvent = unit
type end = float
@ocaml.doc("<p>Requests Amazon S3 to encode the object keys in the response and specifies the encoding
         method to use. An object key may contain any Unicode character; however, XML 1.0 parser
         cannot parse some characters, such as characters with an ASCII value from 0 to 10. For
         characters that are not supported in XML 1.0, you can add this parameter to request that
         Amazon S3 encode the keys in the response.</p>")
type encodingType = [@as("url") #Url]
type enableRequestProgress = bool
type emailAddress = string
type etag = string
type displayName = string
type description = string
type delimiter = string
type deleteMarkerVersionId = string
type deleteMarkerReplicationStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type deleteMarker = bool
type daysAfterInitiation = int
type days = int
type date = Js.Date.t
type creationDate = Js.Date.t
type copySourceVersionId = string
type copySourceSSECustomerKeyMD5 = string
type copySourceSSECustomerKey = string
type copySourceSSECustomerAlgorithm = string
type copySourceRange = string
type copySourceIfUnmodifiedSince = Js.Date.t
type copySourceIfNoneMatch = string
type copySourceIfModifiedSince = Js.Date.t
type copySourceIfMatch = string
type copySource = string
@ocaml.doc("<p></p>") type continuationEvent = unit
type contentType = string
type contentRange = string
type contentMD5 = string
type contentLength = float
type contentLanguage = string
type contentEncoding = string
type contentDisposition = string
type confirmRemoveSelfBucketAccess = bool
type compressionType = [@as("BZIP2") #BZIP2 | @as("GZIP") #GZIP | @as("NONE") #NONE]
type comments = string
type code = string
type cacheControl = string
type bytesScanned = float
type bytesReturned = float
type bytesProcessed = float
type bypassGovernanceRetention = bool
type bucketVersioningStatus = [@as("Suspended") #Suspended | @as("Enabled") #Enabled]
type bucketName = string
type bucketLogsPermission = [
  | @as("WRITE") #WRITE
  | @as("READ") #READ
  | @as("FULL_CONTROL") #FULL_CONTROL
]
type bucketLocationConstraint = [
  | @as("us-west-2") #Us_West_2
  | @as("us-west-1") #Us_West_1
  | @as("us-gov-west-1") #Us_Gov_West_1
  | @as("us-gov-east-1") #Us_Gov_East_1
  | @as("us-east-2") #Us_East_2
  | @as("sa-east-1") #Sa_East_1
  | @as("me-south-1") #Me_South_1
  | @as("eu-west-3") #Eu_West_3
  | @as("eu-west-2") #Eu_West_2
  | @as("eu-west-1") #Eu_West_1
  | @as("eu-south-1") #Eu_South_1
  | @as("eu-north-1") #Eu_North_1
  | @as("eu-central-1") #Eu_Central_1
  | @as("EU") #EU
  | @as("cn-northwest-1") #Cn_Northwest_1
  | @as("cn-north-1") #Cn_North_1
  | @as("ca-central-1") #Ca_Central_1
  | @as("ap-southeast-2") #Ap_Southeast_2
  | @as("ap-southeast-1") #Ap_Southeast_1
  | @as("ap-south-1") #Ap_South_1
  | @as("ap-northeast-3") #Ap_Northeast_3
  | @as("ap-northeast-2") #Ap_Northeast_2
  | @as("ap-northeast-1") #Ap_Northeast_1
  | @as("ap-east-1") #Ap_East_1
  | @as("af-south-1") #Af_South_1
]
type bucketKeyEnabled = bool
type bucketCannedACL = [
  | @as("authenticated-read") #Authenticated_Read
  | @as("public-read-write") #Public_Read_Write
  | @as("public-read") #Public_Read
  | @as("private") #Private
]
type bucketAccelerateStatus = [@as("Suspended") #Suspended | @as("Enabled") #Enabled]
type body = NodeJs.Buffer.t
type archiveStatus = [
  | @as("DEEP_ARCHIVE_ACCESS") #DEEP_ARCHIVE_ACCESS
  | @as("ARCHIVE_ACCESS") #ARCHIVE_ACCESS
]
type analyticsS3ExportFileFormat = [@as("CSV") #CSV]
type analyticsId = string
type allowedOrigin = string
type allowedMethod = string
type allowedHeader = string
type allowQuotedRecordDelimiter = bool
type accountId = string
type acceptRanges = string
type abortRuleId = string
type abortDate = Js.Date.t
@ocaml.doc("<p>Describes the versioning state of an Amazon S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTVersioningStatus.html\">PUT
            Bucket versioning</a> in the <i>Amazon S3 API Reference</i>.</p>")
type versioningConfiguration = {
  @ocaml.doc("<p>The versioning state of the bucket.</p>") @as("Status")
  status: option<bucketVersioningStatus>,
  @ocaml.doc("<p>Specifies whether MFA delete is enabled in the bucket versioning configuration. This
         element is only returned if the bucket has been configured with MFA delete. If the bucket
         has never been so configured, this element is not returned.</p>")
  @as("MFADelete")
  mfadelete: option<mfadelete>,
}
@ocaml.doc("<p>Specifies when an object transitions to a specified storage class. For more information
         about Amazon S3 lifecycle configuration rules, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html\">Transitioning
            Objects Using Amazon S3 Lifecycle</a> in the <i>Amazon S3 User Guide</i>.</p>")
type transition = {
  @ocaml.doc("<p>The storage class to which you want the object to transition.</p>")
  @as("StorageClass")
  storageClass: option<transitionStorageClass>,
  @ocaml.doc("<p>Indicates the number of days after creation when objects are transitioned to the
         specified storage class. The value must be a positive integer.</p>")
  @as("Days")
  days: option<days>,
  @ocaml.doc("<p>Indicates when objects are transitioned to the specified storage class. The date value
         must be in ISO 8601 format. The time is always midnight UTC.</p>")
  @as("Date")
  date: option<date>,
}
@ocaml.doc("<p>The S3 Intelligent-Tiering storage class is designed to optimize storage costs by
         automatically moving data to the most cost-effective storage access tier, without
         additional operational overhead.</p>")
type tiering = {
  @ocaml.doc("<p>S3 Intelligent-Tiering access tier. See <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access\">Storage class for
            automatically optimizing frequently and infrequently accessed objects</a> for a list
         of access tiers in the S3 Intelligent-Tiering storage class.</p>")
  @as("AccessTier")
  accessTier: intelligentTieringAccessTier,
  @ocaml.doc("<p>The number of consecutive days of no access after which an object will be eligible to be
         transitioned to the corresponding tier. The minimum number of days specified for
         Archive Access tier must be at least 90 days and Deep Archive Access tier must be at least
         180 days. The maximum can be up to 2 years (730 days).</p>")
  @as("Days")
  days: intelligentTieringDays,
}
@ocaml.doc("<p>A container of a key value name pair.</p>")
type tag = {
  @ocaml.doc("<p>Value of the tag.</p>") @as("Value") value: value,
  @ocaml.doc("<p>Name of the object key.</p>") @as("Key") key: objectKey,
}
@ocaml.doc("<p>Container for the stats details.</p>")
type stats = {
  @ocaml.doc("<p>The total number of bytes of records payload data returned.</p>")
  @as("BytesReturned")
  bytesReturned: option<bytesReturned>,
  @ocaml.doc("<p>The total number of uncompressed object bytes processed.</p>")
  @as("BytesProcessed")
  bytesProcessed: option<bytesProcessed>,
  @ocaml.doc("<p>The total number of object bytes scanned.</p>") @as("BytesScanned")
  bytesScanned: option<bytesScanned>,
}
@ocaml.doc("<p>A container for filter information for the selection of S3 objects encrypted with AWS
         KMS.</p>")
type sseKmsEncryptedObjects = {
  @ocaml.doc("<p>Specifies whether Amazon S3 replicates objects created with server-side encryption using an
         AWS KMS key stored in AWS Key Management Service.</p>")
  @as("Status")
  status: sseKmsEncryptedObjectsStatus,
}
@ocaml.doc("<p>Describes the default server-side encryption to apply to new objects in the bucket. If a
         PUT Object request doesn't specify any server-side encryption, this default encryption will
         be applied. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTencryption.html\">PUT Bucket encryption</a> in
         the <i>Amazon S3 API Reference</i>.</p>")
type serverSideEncryptionByDefault = {
  @ocaml.doc("<p>AWS Key Management Service (KMS) customer AWS KMS key ID to use for the default
        encryption. This parameter is allowed if and only if <code>SSEAlgorithm</code> is set to
        <code>aws:kms</code>.</p>
         <p>You can specify the key ID or the Amazon Resource Name (ARN) of the KMS key. However, if you
        are using encryption with cross-account operations, you must use a fully qualified KMS key ARN.
        For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html#bucket-encryption-update-bucket-policy\">Using encryption for cross-account operations</a>. </p>
         <p>
            <b>For example:</b>
         </p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN:
                  <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <important>
            <p>Amazon S3 only supports symmetric KMS keys and not asymmetric KMS keys. For more information, see
           <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Using symmetric and
           asymmetric keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
         </important>")
  @as("KMSMasterKeyID")
  kmsmasterKeyID: option<ssekmskeyId>,
  @ocaml.doc("<p>Server-side encryption algorithm to use for the default encryption.</p>")
  @as("SSEAlgorithm")
  ssealgorithm: serverSideEncryption,
}
@ocaml.doc("<p>Specifies the byte range of the object to get the records from. A record is processed
         when its first byte is contained by the range. This parameter is optional, but when
         specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the
         start and end of the range.</p>")
type scanRange = {
  @ocaml.doc("<p>Specifies the end of the byte range. This parameter is optional. Valid values:
         non-negative integers. The default value is one less than the size of the object being
         queried. If only the End parameter is supplied, it is interpreted to mean scan the last N
         bytes of the file. For example,
            <code><scanrange><end>50</end></scanrange></code> means scan the
         last 50 bytes.</p>")
  @as("End")
  end: option<end>,
  @ocaml.doc("<p>Specifies the start of the byte range. This parameter is optional. Valid values:
         non-negative integers. The default value is 0. If only start is supplied, it means scan
         from that point to the end of the file.For example;
            <code><scanrange><start>50</start></scanrange></code> means scan
         from byte 50 until the end of the file.</p>")
  @as("Start")
  start: option<start>,
}
@ocaml.doc("<p>Specifies the use of SSE-KMS to encrypt delivered inventory reports.</p>")
type ssekms = {
  @ocaml.doc("<p>Specifies the ID of the AWS Key Management Service (AWS KMS) symmetric customer managed
         customer master key (CMK) to use for encrypting inventory reports.</p>")
  @as("KeyId")
  keyId: ssekmskeyId,
}
@ocaml.doc("<p>Container for specifying if periodic <code>QueryProgress</code> messages should be
         sent.</p>")
type requestProgress = {
  @ocaml.doc("<p>Specifies whether periodic QueryProgress frames should be sent. Valid values: TRUE,
         FALSE. Default value: FALSE.</p>")
  @as("Enabled")
  enabled: option<enableRequestProgress>,
}
@ocaml.doc("<p>Container for Payer.</p>")
type requestPaymentConfiguration = {
  @ocaml.doc("<p>Specifies who pays for the download and request fees.</p>") @as("Payer")
  payer: payer,
}
@ocaml.doc("<p> A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics
            <code>EventThreshold</code>. </p>")
type replicationTimeValue = {
  @ocaml.doc("<p> Contains an integer specifying time in minutes. </p>
         <p> Valid values: 15 minutes. </p>")
  @as("Minutes")
  minutes: option<minutes>,
}
@ocaml.doc("<p>A filter that you can specify for selection for modifications on replicas. Amazon S3 doesn't
         replicate replica modifications by default. In the latest version of replication
         configuration (when <code>Filter</code> is specified), you can specify this element and set
         the status to <code>Enabled</code> to replicate modifications on replicas. </p>
         <note>
            <p> If you don't specify the <code>Filter</code> element, Amazon S3 assumes that the
            replication configuration is the earlier version, V1. In the earlier version, this
            element is not allowed.</p>
         </note>")
type replicaModifications = {
  @ocaml.doc("<p>Specifies whether Amazon S3 replicates modifications on replicas.</p>")
  @as("Status")
  status: replicaModificationsStatus,
}
@ocaml.doc("<p>Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3
         bucket.</p>")
type redirectAllRequestsTo = {
  @ocaml.doc("<p>Protocol to use when redirecting requests. The default is the protocol that is used in
         the original request.</p>")
  @as("Protocol")
  protocol: option<protocol>,
  @ocaml.doc("<p>Name of the host where requests are redirected.</p>") @as("HostName")
  hostName: hostName,
}
@ocaml.doc("<p>Specifies how requests are redirected. In the event of an error, you can specify a
         different error code to return.</p>")
type redirect = {
  @ocaml.doc("<p>The specific object key to use in the redirect request. For example, redirect request to
            <code>error.html</code>. Not required if one of the siblings is present. Can be present
         only if <code>ReplaceKeyPrefixWith</code> is not provided.</p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("ReplaceKeyWith")
  replaceKeyWith: option<replaceKeyWith>,
  @ocaml.doc("<p>The object key prefix to use in the redirect request. For example, to redirect requests
         for all pages with prefix <code>docs/</code> (objects in the <code>docs/</code> folder) to
            <code>documents/</code>, you can set a condition block with <code>KeyPrefixEquals</code>
         set to <code>docs/</code> and in the Redirect set <code>ReplaceKeyPrefixWith</code> to
            <code>/documents</code>. Not required if one of the siblings is present. Can be present
         only if <code>ReplaceKeyWith</code> is not provided.</p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("ReplaceKeyPrefixWith")
  replaceKeyPrefixWith: option<replaceKeyPrefixWith>,
  @ocaml.doc("<p>Protocol to use when redirecting requests. The default is the protocol that is used in
         the original request.</p>")
  @as("Protocol")
  protocol: option<protocol>,
  @ocaml.doc("<p>The HTTP redirect code to use on the response. Not required if one of the siblings is
         present.</p>")
  @as("HttpRedirectCode")
  httpRedirectCode: option<httpRedirectCode>,
  @ocaml.doc("<p>The host name to use in the redirect request.</p>") @as("HostName")
  hostName: option<hostName>,
}
@ocaml.doc("<p>The container for the records event.</p>")
type recordsEvent = {
  @ocaml.doc("<p>The byte array of partial, one or more result records.</p>") @as("Payload")
  payload: option<body>,
}
@ocaml.doc("<p>The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can
         enable the configuration options in any combination. For more information about when Amazon S3
         considers a bucket or object public, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status\">The Meaning of \"Public\"</a> in the <i>Amazon S3 User Guide</i>. </p>")
type publicAccessBlockConfiguration = {
  @ocaml.doc("<p>Specifies whether Amazon S3 should restrict public bucket policies for this bucket. Setting
         this element to <code>TRUE</code> restricts access to this bucket to only AWS service
         principals and authorized users within this account if the bucket has a public
         policy.</p>
         <p>Enabling this setting doesn't affect previously stored bucket policies, except that
         public and cross-account access within any public bucket policy, including non-public
         delegation to specific accounts, is blocked.</p>")
  @as("RestrictPublicBuckets")
  restrictPublicBuckets: option<setting>,
  @ocaml.doc("<p>Specifies whether Amazon S3 should block public bucket policies for this bucket. Setting this
         element to <code>TRUE</code> causes Amazon S3 to reject calls to PUT Bucket policy if the
         specified bucket policy allows public access. </p>
         <p>Enabling this setting doesn't affect existing bucket policies.</p>")
  @as("BlockPublicPolicy")
  blockPublicPolicy: option<setting>,
  @ocaml.doc("<p>Specifies whether Amazon S3 should ignore public ACLs for this bucket and objects in this
         bucket. Setting this element to <code>TRUE</code> causes Amazon S3 to ignore all public ACLs on
         this bucket and objects in this bucket.</p>
         <p>Enabling this setting doesn't affect the persistence of any existing ACLs and doesn't
         prevent new public ACLs from being set.</p>")
  @as("IgnorePublicAcls")
  ignorePublicAcls: option<setting>,
  @ocaml.doc("<p>Specifies whether Amazon S3 should block public access control lists (ACLs) for this bucket
         and objects in this bucket. Setting this element to <code>TRUE</code> causes the following
         behavior:</p>
         <ul>
            <li>
               <p>PUT Bucket acl and PUT Object acl calls fail if the specified ACL is
               public.</p>
            </li>
            <li>
               <p>PUT Object calls fail if the request includes a public ACL.</p>
            </li>
            <li>
               <p>PUT Bucket calls fail if the request includes a public ACL.</p>
            </li>
         </ul>
         <p>Enabling this setting doesn't affect existing policies or ACLs.</p>")
  @as("BlockPublicAcls")
  blockPublicAcls: option<setting>,
}
@ocaml.doc("<p>This data type contains information about progress of an operation.</p>")
type progress = {
  @ocaml.doc("<p>The current number of bytes of records payload data returned.</p>")
  @as("BytesReturned")
  bytesReturned: option<bytesReturned>,
  @ocaml.doc("<p>The current number of uncompressed object bytes processed.</p>")
  @as("BytesProcessed")
  bytesProcessed: option<bytesProcessed>,
  @ocaml.doc("<p>The current number of object bytes scanned.</p>") @as("BytesScanned")
  bytesScanned: option<bytesScanned>,
}
@ocaml.doc("<p>The container element for a bucket's policy status.</p>")
type policyStatus = {
  @ocaml.doc("<p>The policy status for this bucket. <code>TRUE</code> indicates that this bucket is
         public. <code>FALSE</code> indicates that the bucket is not public.</p>")
  @as("IsPublic")
  isPublic: option<isPublic>,
}
@ocaml.doc("<p>Container for elements related to a part.</p>")
type part = {
  @ocaml.doc("<p>Size in bytes of the uploaded part data.</p>") @as("Size") size: option<size>,
  @ocaml.doc("<p>Entity tag returned when the part was uploaded.</p>") @as("ETag")
  etag: option<etag>,
  @ocaml.doc("<p>Date and time at which the part was uploaded.</p>") @as("LastModified")
  lastModified: option<lastModified>,
  @ocaml.doc("<p>Part number identifying the part. This is a positive integer between 1 and
         10,000.</p>")
  @as("PartNumber")
  partNumber: option<partNumber>,
}
@ocaml.doc("<p>The container element for an ownership control rule.</p>")
type ownershipControlsRule = {@as("ObjectOwnership") objectOwnership: objectOwnership}
@ocaml.doc("<p>Container for the owner's display name and ID.</p>")
type owner = {
  @ocaml.doc("<p>Container for the ID of the owner.</p>") @as("ID") id: option<id>,
  @ocaml.doc("<p>Container for the display name of the owner.</p>") @as("DisplayName")
  displayName: option<displayName>,
}
@ocaml.doc("<p>A Retention configuration for an object.</p>")
type objectLockRetention = {
  @ocaml.doc("<p>The date on which this Object Lock Retention will expire.</p>")
  @as("RetainUntilDate")
  retainUntilDate: option<date>,
  @ocaml.doc("<p>Indicates the Retention mode for the specified object.</p>") @as("Mode")
  mode: option<objectLockRetentionMode>,
}
@ocaml.doc("<p>A Legal Hold configuration for an object.</p>")
type objectLockLegalHold = {
  @ocaml.doc("<p>Indicates whether the specified object has a Legal Hold in place.</p>")
  @as("Status")
  status: option<objectLockLegalHoldStatus>,
}
@ocaml.doc("<p>Object Identifier is unique value to identify objects.</p>")
type objectIdentifier = {
  @ocaml.doc("<p>VersionId for the specific version of the object to delete.</p>") @as("VersionId")
  versionId: option<objectVersionId>,
  @ocaml.doc("<p>Key name of the object.</p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("Key")
  key: objectKey,
}
@ocaml.doc("<p>Container for the transition rule that describes when noncurrent objects transition to
         the <code>STANDARD_IA</code>, <code>ONEZONE_IA</code>, <code>INTELLIGENT_TIERING</code>,
            <code>GLACIER</code>, or <code>DEEP_ARCHIVE</code> storage class. If your bucket is
         versioning-enabled (or versioning is suspended), you can set this action to request that
         Amazon S3 transition noncurrent object versions to the <code>STANDARD_IA</code>,
            <code>ONEZONE_IA</code>, <code>INTELLIGENT_TIERING</code>, <code>GLACIER</code>, or
            <code>DEEP_ARCHIVE</code> storage class at a specific period in the object's
         lifetime.</p>")
type noncurrentVersionTransition = {
  @ocaml.doc("<p>The class of storage used to store the object.</p>") @as("StorageClass")
  storageClass: option<transitionStorageClass>,
  @ocaml.doc("<p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the
         associated action. For information about the noncurrent days calculations, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations\">How
            Amazon S3 Calculates How Long an Object Has Been Noncurrent</a> in the
            <i>Amazon S3 User Guide</i>.</p>")
  @as("NoncurrentDays")
  noncurrentDays: option<days>,
}
@ocaml.doc("<p>Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently
         deletes the noncurrent object versions. You set this lifecycle configuration action on a
         bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent
         object versions at a specific period in the object's lifetime.</p>")
type noncurrentVersionExpiration = {
  @ocaml.doc("<p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the
         associated action. For information about the noncurrent days calculations, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations\">How
            Amazon S3 Calculates When an Object Became Noncurrent</a> in the <i>Amazon S3 User Guide</i>.</p>")
  @as("NoncurrentDays")
  noncurrentDays: option<days>,
}
@ocaml.doc("<p>A metadata key-value pair to store with an object.</p>")
type metadataEntry = {
  @ocaml.doc("<p>Value of the Object.</p>") @as("Value") value: option<metadataValue>,
  @ocaml.doc("<p>Name of the Object.</p>") @as("Name") name: option<metadataKey>,
}
type metadata = Js.Dict.t<metadataValue>
@ocaml.doc("<p>Container for the expiration for the lifecycle of the object.</p>")
type lifecycleExpiration = {
  @ocaml.doc("<p>Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set
         to true, the delete marker will be expired; if set to false the policy takes no action.
         This cannot be specified with Days or Date in a Lifecycle Expiration Policy.</p>")
  @as("ExpiredObjectDeleteMarker")
  expiredObjectDeleteMarker: option<expiredObjectDeleteMarker>,
  @ocaml.doc("<p>Indicates the lifetime, in days, of the objects that are subject to the rule. The value
         must be a non-zero positive integer.</p>")
  @as("Days")
  days: option<days>,
  @ocaml.doc("<p>Indicates at what date the object is to be moved or deleted. Should be in GMT ISO 8601
         Format.</p>")
  @as("Date")
  date: option<date>,
}
@ocaml.doc("<p>Specifies JSON as request's output serialization format.</p>")
type jsonoutput = {
  @ocaml.doc("<p>The value used to separate individual records in the output. If no value is specified,
         Amazon S3 uses a newline character ('\\n').</p>")
  @as("RecordDelimiter")
  recordDelimiter: option<recordDelimiter>,
}
@ocaml.doc("<p>Specifies JSON as object's input serialization format.</p>")
type jsoninput = {
  @ocaml.doc("<p>The type of JSON. Valid values: Document, Lines.</p>") @as("Type")
  type_: option<jsontype>,
}
@ocaml.doc("<p>Specifies the schedule for generating inventory results.</p>")
type inventorySchedule = {
  @ocaml.doc("<p>Specifies how frequently inventory results are produced.</p>") @as("Frequency")
  frequency: inventoryFrequency,
}
type inventoryOptionalFields = array<inventoryOptionalField>
@ocaml.doc("<p>Specifies an inventory filter. The inventory only includes objects that meet the
         filter's criteria.</p>")
type inventoryFilter = {
  @ocaml.doc("<p>The prefix that an object must have to be included in the inventory results.</p>")
  @as("Prefix")
  prefix: prefix,
}
@ocaml.doc("<p>Container element that identifies who initiated the multipart upload. </p>")
type initiator = {
  @ocaml.doc("<p>Name of the Principal.</p>") @as("DisplayName") displayName: option<displayName>,
  @ocaml.doc("<p>If the principal is an AWS account, it provides the Canonical User ID. If the principal
         is an IAM User, it provides a user ARN value.</p>")
  @as("ID")
  id: option<id>,
}
@ocaml.doc("<p>Container for the <code>Suffix</code> element.</p>")
type indexDocument = {
  @ocaml.doc("<p>A suffix that is appended to a request that is for a directory on the website endpoint
         (for example,if the suffix is index.html and you make a request to samplebucket/images/ the
         data that is returned will be for the object with the key name images/index.html) The
         suffix must not be empty and must not include a slash character.</p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("Suffix")
  suffix: suffix,
}
@ocaml.doc("<p>Container for the person being granted permissions.</p>")
type grantee = {
  @ocaml.doc("<p>Type of grantee</p>") @as("Type") type_: type_,
  @ocaml.doc("<p>URI of the grantee group.</p>") @as("URI") uri: option<uri>,
  @ocaml.doc("<p>The canonical user ID of the grantee.</p>") @as("ID") id: option<id>,
  @ocaml.doc("<p>Email address of the grantee.</p>
         <note>
            <p>Using email addresses to specify a grantee is only supported in the following AWS Regions: </p> 
            <ul>
               <li>
                  <p>US East (N. Virginia)</p>
               </li>
               <li>
                  <p>US West (N. California)</p>
               </li>
               <li>
                  <p> US West (Oregon)</p>
               </li>
               <li>
                  <p> Asia Pacific (Singapore)</p>
               </li>
               <li>
                  <p>Asia Pacific (Sydney)</p>
               </li>
               <li>
                  <p>Asia Pacific (Tokyo)</p>
               </li>
               <li>
                  <p>Europe (Ireland)</p>
               </li>
               <li>
                  <p>South America (São Paulo)</p>
               </li>
            </ul> 
            <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region\">Regions and Endpoints</a> in the AWS General Reference.</p>
         </note>")
  @as("EmailAddress")
  emailAddress: option<emailAddress>,
  @ocaml.doc("<p>Screen name of the grantee.</p>") @as("DisplayName")
  displayName: option<displayName>,
}
@ocaml.doc("<p>Container for S3 Glacier job parameters.</p>")
type glacierJobParameters = {
  @ocaml.doc("<p>Retrieval tier at which the restore will be processed.</p>") @as("Tier")
  tier: tier,
}
@ocaml.doc("<p>Specifies the Amazon S3 object key name to filter on and whether to filter on the suffix or
         prefix of the key name.</p>")
type filterRule = {
  @ocaml.doc("<p>The value that the filter searches for in object key names.</p>") @as("Value")
  value: option<filterRuleValue>,
  @ocaml.doc("<p>The object key name prefix or suffix identifying one or more objects to which the
         filtering rule applies. The maximum length is 1,024 characters. Overlapping prefixes and
         suffixes are not supported. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html\">Configuring Event Notifications</a>
         in the <i>Amazon S3 User Guide</i>.</p>")
  @as("Name")
  name: option<filterRuleName>,
}
type exposeHeaders = array<exposeHeader>
@ocaml.doc("<p>Optional configuration to replicate existing source bucket objects. For more
         information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-what-is-isnot-replicated.html#existing-object-replication\">Replicating Existing Objects</a> in the <i>Amazon S3 User Guide</i>.
      </p>")
type existingObjectReplication = {
  @ocaml.doc("<p></p>") @as("Status") status: existingObjectReplicationStatus,
}
type eventList = array<event>
@ocaml.doc("<p>The error information.</p>")
type errorDocument = {
  @ocaml.doc("<p>The object key name to use when a 4XX class error occurs.</p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("Key")
  key: objectKey,
}
@ocaml.doc("<p>Container for all error elements.</p>")
type error = {
  @ocaml.doc("<p>The error message contains a generic description of the error condition in English. It
         is intended for a human audience. Simple programs display the message directly to the end
         user if they encounter an error condition they don't know how or don't care to handle.
         Sophisticated programs with more exhaustive error handling and proper internationalization
         are more likely to ignore the error message.</p>")
  @as("Message")
  message: option<message>,
  @ocaml.doc("<p>The error code is a string that uniquely identifies an error condition. It is meant to
         be read and understood by programs that detect and handle errors by type. </p>
         <p class=\"title\">
            <b>Amazon S3 error codes</b>
         </p>
         <ul>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> AccessDenied </p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Access Denied</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 403 Forbidden</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> AccountProblem</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> There is a problem with your AWS account
                     that prevents the action from completing successfully. Contact AWS Support
                     for further assistance.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 403 Forbidden</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> AllAccessDisabled</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> All access to this Amazon S3 resource has been
                     disabled. Contact AWS Support for further assistance.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 403 Forbidden</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> AmbiguousGrantByEmailAddress</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The email address you provided is
                     associated with more than one account.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> AuthorizationHeaderMalformed</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The authorization header you provided is
                     invalid.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> N/A</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> BadDigest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The Content-MD5 you specified did not
                     match what we received.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> BucketAlreadyExists</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The requested bucket name is not
                     available. The bucket namespace is shared by all users of the system. Please
                     select a different name and try again.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 409 Conflict</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> BucketAlreadyOwnedByYou</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The bucket you tried to create already
                     exists, and you own it. Amazon S3 returns this error in all AWS Regions except in
                     the North Virginia Region. For legacy compatibility, if you re-create an
                     existing bucket that you already own in the North Virginia Region, Amazon S3 returns
                     200 OK and resets the bucket access control lists (ACLs).</p>
                  </li>
                  <li>
                     <p>
                        <i>Code:</i> 409 Conflict (in all Regions except the North
                     Virginia Region) </p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> BucketNotEmpty</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The bucket you tried to delete is not
                     empty.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 409 Conflict</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> CredentialsNotSupported</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> This request does not support
                     credentials.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> CrossLocationLoggingProhibited</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Cross-location logging not allowed.
                     Buckets in one geographic location cannot log information to a bucket in
                     another location.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 403 Forbidden</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> EntityTooSmall</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Your proposed upload is smaller than the
                     minimum allowed object size.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> EntityTooLarge</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Your proposed upload exceeds the maximum
                     allowed object size.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> ExpiredToken</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The provided token has expired.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> IllegalVersioningConfigurationException </p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Indicates that the versioning
                     configuration specified in the request is invalid.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> IncompleteBody</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> You did not provide the number of bytes
                     specified by the Content-Length HTTP header</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> IncorrectNumberOfFilesInPostRequest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> POST requires exactly one file upload per
                     request.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InlineDataTooLarge</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Inline data exceeds the maximum allowed
                     size.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InternalError</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> We encountered an internal error. Please
                     try again.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 500 Internal Server Error</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Server</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidAccessKeyId</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The AWS access key ID you provided does
                     not exist in our records.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 403 Forbidden</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidAddressingHeader</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> You must specify the Anonymous
                     role.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> N/A</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidArgument</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Invalid Argument</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidBucketName</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The specified bucket is not valid.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidBucketState</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The request is not valid with the current
                     state of the bucket.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 409 Conflict</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidDigest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The Content-MD5 you specified is not
                     valid.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidEncryptionAlgorithmError</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The encryption request you specified is
                     not valid. The valid value is AES256.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidLocationConstraint</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The specified location constraint is not
                     valid. For more information about Regions, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro\">How to Select a
                        Region for Your Buckets</a>. </p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidObjectState</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The action is not valid for the current
                     state of the object.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 403 Forbidden</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidPart</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> One or more of the specified parts could
                     not be found. The part might not have been uploaded, or the specified entity
                     tag might not have matched the part's entity tag.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidPartOrder</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The list of parts was not in ascending
                     order. Parts list must be specified in order by part number.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidPayer</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> All access to this object has been
                     disabled. Please contact AWS Support for further assistance.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 403 Forbidden</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidPolicyDocument</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The content of the form does not meet the
                     conditions specified in the policy document.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidRange</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The requested range cannot be
                     satisfied.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 416 Requested Range Not
                     Satisfiable</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidRequest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Please use AWS4-HMAC-SHA256.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>Code:</i> N/A</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidRequest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> SOAP requests must be made over an HTTPS
                     connection.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidRequest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Amazon S3 Transfer Acceleration is not
                     supported for buckets with non-DNS compliant names.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>Code:</i> N/A</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidRequest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Amazon S3 Transfer Acceleration is not
                     supported for buckets with periods (.) in their names.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>Code:</i> N/A</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidRequest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Amazon S3 Transfer Accelerate endpoint only
                     supports virtual style requests.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>Code:</i> N/A</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidRequest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Amazon S3 Transfer Accelerate is not configured
                     on this bucket.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>Code:</i> N/A</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidRequest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Amazon S3 Transfer Accelerate is disabled on
                     this bucket.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>Code:</i> N/A</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidRequest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Amazon S3 Transfer Acceleration is not
                     supported on this bucket. Contact AWS Support for more information.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>Code:</i> N/A</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidRequest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Amazon S3 Transfer Acceleration cannot be
                     enabled on this bucket. Contact AWS Support for more information.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>Code:</i> N/A</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidSecurity</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The provided security credentials are not
                     valid.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 403 Forbidden</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidSOAPRequest</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The SOAP request body is invalid.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidStorageClass</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The storage class you specified is not
                     valid.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidTargetBucketForLogging</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The target bucket for logging does not
                     exist, is not owned by you, or does not have the appropriate grants for the
                     log-delivery group. </p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidToken</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The provided token is malformed or
                     otherwise invalid.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> InvalidURI</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Couldn't parse the specified URI.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> KeyTooLongError</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Your key is too long.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> MalformedACLError</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The XML you provided was not well-formed
                     or did not validate against our published schema.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> MalformedPOSTRequest </p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The body of your POST request is not
                     well-formed multipart/form-data.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> MalformedXML</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> This happens when the user sends malformed
                     XML (XML that doesn't conform to the published XSD) for the configuration. The
                     error message is, \"The XML you provided was not well-formed or did not validate
                     against our published schema.\" </p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> MaxMessageLengthExceeded</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Your request was too big.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> MaxPostPreDataLengthExceededError</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Your POST request fields preceding the
                     upload file were too large.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> MetadataTooLarge</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Your metadata headers exceed the maximum
                     allowed metadata size.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> MethodNotAllowed</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The specified method is not allowed
                     against this resource.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 405 Method Not Allowed</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> MissingAttachment</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> A SOAP attachment was expected, but none
                     were found.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> N/A</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> MissingContentLength</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> You must provide the Content-Length HTTP
                     header.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 411 Length Required</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> MissingRequestBodyError</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> This happens when the user sends an empty
                     XML document as a request. The error message is, \"Request body is empty.\"
                  </p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> MissingSecurityElement</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The SOAP 1.1 request is missing a security
                     element.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> MissingSecurityHeader</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Your request is missing a required
                     header.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> NoLoggingStatusForKey</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> There is no such thing as a logging status
                     subresource for a key.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> NoSuchBucket</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The specified bucket does not
                     exist.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 404 Not Found</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> NoSuchBucketPolicy</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The specified bucket does not have a
                     bucket policy.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 404 Not Found</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> NoSuchKey</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The specified key does not exist.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 404 Not Found</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> NoSuchLifecycleConfiguration</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The lifecycle configuration does not
                     exist. </p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 404 Not Found</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> NoSuchUpload</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The specified multipart upload does not
                     exist. The upload ID might be invalid, or the multipart upload might have been
                     aborted or completed.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 404 Not Found</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> NoSuchVersion </p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Indicates that the version ID specified in
                     the request does not match an existing version.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 404 Not Found</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> NotImplemented</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> A header you provided implies
                     functionality that is not implemented.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 501 Not Implemented</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Server</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> NotSignedUp</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Your account is not signed up for the Amazon S3
                     service. You must sign up before you can use Amazon S3. You can sign up at the
                     following URL: https://aws.amazon.com/s3</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 403 Forbidden</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> OperationAborted</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> A conflicting conditional action is
                     currently in progress against this resource. Try again.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 409 Conflict</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> PermanentRedirect</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The bucket you are attempting to access
                     must be addressed using the specified endpoint. Send all future requests to
                     this endpoint.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 301 Moved Permanently</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> PreconditionFailed</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> At least one of the preconditions you
                     specified did not hold.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 412 Precondition Failed</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> Redirect</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Temporary redirect.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 307 Moved Temporarily</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> RestoreAlreadyInProgress</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Object restore is already in
                     progress.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 409 Conflict</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> RequestIsNotMultiPartContent</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Bucket POST must be of the enclosure-type
                     multipart/form-data.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> RequestTimeout</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Your socket connection to the server was
                     not read from or written to within the timeout period.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> RequestTimeTooSkewed</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The difference between the request time
                     and the server's time is too large.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 403 Forbidden</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> RequestTorrentOfBucketError</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Requesting the torrent file of a bucket is
                     not permitted.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> SignatureDoesNotMatch</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The request signature we calculated does
                     not match the signature you provided. Check your AWS secret access key and
                     signing method. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html\">REST Authentication</a> and
                        <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/SOAPAuthentication.html\">SOAP Authentication</a>
                     for details.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 403 Forbidden</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> ServiceUnavailable</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Reduce your request rate.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 503 Service Unavailable</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Server</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> SlowDown</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> Reduce your request rate.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 503 Slow Down</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Server</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> TemporaryRedirect</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> You are being redirected to the bucket
                     while DNS updates.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 307 Moved Temporarily</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> TokenRefreshRequired</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The provided token must be
                     refreshed.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> TooManyBuckets</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> You have attempted to create more buckets
                     than allowed.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> UnexpectedContent</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> This request does not support
                     content.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> UnresolvableGrantByEmailAddress</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The email address you provided does not
                     match any account on record.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
            <li>
               <ul>
                  <li>
                     <p>
                        <i>Code:</i> UserKeyMustBeSpecified</p>
                  </li>
                  <li>
                     <p>
                        <i>Description:</i> The bucket POST must contain the specified
                     field name. If it is specified, check the order of the fields.</p>
                  </li>
                  <li>
                     <p>
                        <i>HTTP Status Code:</i> 400 Bad Request</p>
                  </li>
                  <li>
                     <p>
                        <i>SOAP Fault Code Prefix:</i> Client</p>
                  </li>
               </ul>
            </li>
         </ul>
         <p></p>")
  @as("Code")
  code: option<code>,
  @ocaml.doc("<p>The version ID of the error.</p>") @as("VersionId")
  versionId: option<objectVersionId>,
  @ocaml.doc("<p>The error key.</p>") @as("Key") key: option<objectKey>,
}
@ocaml.doc("<p>Specifies encryption-related information for an Amazon S3 bucket that is a destination for
         replicated objects.</p>")
type encryptionConfiguration = {
  @ocaml.doc("<p>Specifies the ID (Key ARN or Alias ARN) of the customer managed AWS KMS key
         stored in AWS Key Management Service (KMS) for the destination bucket. Amazon S3 uses
         this key to encrypt replica objects. Amazon S3 only supports symmetric, customer managed KMS keys.
         For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Using symmetric and
            asymmetric keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>")
  @as("ReplicaKmsKeyID")
  replicaKmsKeyID: option<replicaKmsKeyID>,
}
@ocaml.doc("<p>Contains the type of server-side encryption used.</p>")
type encryption = {
  @ocaml.doc("<p>If the encryption type is <code>aws:kms</code>, this optional value can be used to
         specify the encryption context for the restore results.</p>")
  @as("KMSContext")
  kmscontext: option<kmscontext>,
  @ocaml.doc("<p>If the encryption type is <code>aws:kms</code>, this optional value specifies the ID of
         the symmetric customer managed AWS KMS CMK to use for encryption of job results. Amazon S3 only
         supports symmetric CMKs. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Using symmetric and
            asymmetric keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>")
  @as("KMSKeyId")
  kmskeyId: option<ssekmskeyId>,
  @ocaml.doc("<p>The server-side encryption algorithm used when storing job results in Amazon S3 (for example,
         AES256, aws:kms).</p>")
  @as("EncryptionType")
  encryptionType: serverSideEncryption,
}
@ocaml.doc("<p>Information about the deleted object.</p>")
type deletedObject = {
  @ocaml.doc("<p>The version ID of the delete marker created as a result of the DELETE operation. If you
         delete a specific object version, the value returned by this header is the version ID of
         the object version deleted.</p>")
  @as("DeleteMarkerVersionId")
  deleteMarkerVersionId: option<deleteMarkerVersionId>,
  @ocaml.doc("<p>Specifies whether the versioned object that was permanently deleted was (true) or was
         not (false) a delete marker. In a simple DELETE, this header indicates whether (true) or
         not (false) a delete marker was created.</p>")
  @as("DeleteMarker")
  deleteMarker: option<deleteMarker>,
  @ocaml.doc("<p>The version ID of the deleted object.</p>") @as("VersionId")
  versionId: option<objectVersionId>,
  @ocaml.doc("<p>The name of the deleted object.</p>") @as("Key") key: option<objectKey>,
}
@ocaml.doc("<p>Specifies whether Amazon S3 replicates delete markers. If you specify a <code>Filter</code>
         in your replication configuration, you must also include a
            <code>DeleteMarkerReplication</code> element. If your <code>Filter</code> includes a
            <code>Tag</code> element, the <code>DeleteMarkerReplication</code>
            <code>Status</code> must be set to Disabled, because Amazon S3 does not support replicating
         delete markers for tag-based rules. For an example configuration, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-config-min-rule-config\">Basic Rule Configuration</a>. </p>
         <p>For more information about delete marker replication, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/delete-marker-replication.html\">Basic Rule
            Configuration</a>. </p>
         <note>
            <p>If you are using an earlier version of the replication configuration, Amazon S3 handles
            replication of delete markers differently. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations\">Backward Compatibility</a>.</p>
         </note>")
type deleteMarkerReplication = {
  @ocaml.doc("<p>Indicates whether to replicate delete markers.</p>
         <note>
            <p>Indicates whether to replicate delete markers.</p>
         </note>")
  @as("Status")
  status: option<deleteMarkerReplicationStatus>,
}
@ocaml.doc("<p>The container element for specifying the default Object Lock retention settings for new
         objects placed in the specified bucket.</p>
         <note>
            <ul>
               <li>
                  <p>The <code>DefaultRetention</code> settings require both a mode and a
               period.</p>
               </li>
               <li>
                  <p>The <code>DefaultRetention</code> period can be either <code>Days</code>
               or <code>Years</code> but you must select one. You cannot specify <code>Days</code>
               and <code>Years</code> at the same time.</p>
               </li>
            </ul>
         </note>")
type defaultRetention = {
  @ocaml.doc("<p>The number of years that you want to specify for the default retention period. Must be
         used with <code>Mode</code>.</p>")
  @as("Years")
  years: option<years>,
  @ocaml.doc("<p>The number of days that you want to specify for the default retention period. Must be
         used with <code>Mode</code>.</p>")
  @as("Days")
  days: option<days>,
  @ocaml.doc("<p>The default Object Lock retention mode you want to apply to new objects placed in the
         specified bucket. Must be used with either <code>Days</code> or <code>Years</code>.</p>")
  @as("Mode")
  mode: option<objectLockRetentionMode>,
}
@ocaml.doc("<p>The configuration information for the bucket.</p>")
type createBucketConfiguration = {
  @ocaml.doc("<p>Specifies the Region where the bucket will be created. If you don't specify a Region,
         the bucket is created in the US East (N. Virginia) Region (us-east-1).</p>")
  @as("LocationConstraint")
  locationConstraint: option<bucketLocationConstraint>,
}
@ocaml.doc("<p>Container for all response elements.</p>")
type copyPartResult = {
  @ocaml.doc("<p>Date and time at which the object was uploaded.</p>") @as("LastModified")
  lastModified: option<lastModified>,
  @ocaml.doc("<p>Entity tag of the object.</p>") @as("ETag") etag: option<etag>,
}
@ocaml.doc("<p>Container for all response elements.</p>")
type copyObjectResult = {
  @ocaml.doc("<p>Creation date of the object.</p>") @as("LastModified")
  lastModified: option<lastModified>,
  @ocaml.doc("<p>Returns the ETag of the new object. The ETag reflects only changes to the contents of an
         object, not its metadata. The source and destination ETag is identical for a successfully
         copied non-multipart object.</p>")
  @as("ETag")
  etag: option<etag>,
}
@ocaml.doc("<p>A container for describing a condition that must be met for the specified redirect to
         apply. For example, 1. If request is for pages in the <code>/docs</code> folder, redirect
         to the <code>/documents</code> folder. 2. If request results in HTTP error 4xx, redirect
         request to another host where you might process the error.</p>")
type condition = {
  @ocaml.doc("<p>The object key name prefix when the redirect is applied. For example, to redirect
         requests for <code>ExamplePage.html</code>, the key prefix will be
            <code>ExamplePage.html</code>. To redirect request for all pages with the prefix
            <code>docs/</code>, the key prefix will be <code>/docs</code>, which identifies all
         objects in the <code>docs/</code> folder. Required when the parent element
            <code>Condition</code> is specified and sibling <code>HttpErrorCodeReturnedEquals</code>
         is not specified. If both conditions are specified, both must be true for the redirect to
         be applied.</p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("KeyPrefixEquals")
  keyPrefixEquals: option<keyPrefixEquals>,
  @ocaml.doc("<p>The HTTP error code when the redirect is applied. In the event of an error, if the error
         code equals this value, then the specified redirect is applied. Required when parent
         element <code>Condition</code> is specified and sibling <code>KeyPrefixEquals</code> is not
         specified. If both are specified, then both must be true for the redirect to be
         applied.</p>")
  @as("HttpErrorCodeReturnedEquals")
  httpErrorCodeReturnedEquals: option<httpErrorCodeReturnedEquals>,
}
@ocaml.doc("<p>Details of the parts that were uploaded.</p>")
type completedPart = {
  @ocaml.doc("<p>Part number that identifies the part. This is a positive integer between 1 and
         10,000.</p>")
  @as("PartNumber")
  partNumber: option<partNumber>,
  @ocaml.doc("<p>Entity tag returned when the part was uploaded.</p>") @as("ETag")
  etag: option<etag>,
}
@ocaml.doc("<p>Container for all (if there are any) keys between Prefix and the next occurrence of the
         string specified by a delimiter. CommonPrefixes lists keys that act like subdirectories in
         the directory specified by Prefix. For example, if the prefix is notes/ and the delimiter
         is a slash (/) as in notes/summer/july, the common prefix is notes/summer/. </p>")
type commonPrefix = {
  @ocaml.doc("<p>Container for the specified common prefix.</p>") @as("Prefix")
  prefix: option<prefix>,
}
@ocaml.doc("<p>Describes how uncompressed comma-separated values (CSV)-formatted results are
         formatted.</p>")
type csvoutput = {
  @ocaml.doc("<p>A single character used for escaping when the field delimiter is part of the value. For
         example, if the value is <code>a, b</code>, Amazon S3 wraps this field value in quotation marks,
         as follows: <code>\" a , b \"</code>.</p>")
  @as("QuoteCharacter")
  quoteCharacter: option<quoteCharacter>,
  @ocaml.doc("<p>The value used to separate individual fields in a record. You can specify an arbitrary
         delimiter.</p>")
  @as("FieldDelimiter")
  fieldDelimiter: option<fieldDelimiter>,
  @ocaml.doc("<p>A single character used to separate individual records in the output. Instead of the
         default value, you can specify an arbitrary delimiter.</p>")
  @as("RecordDelimiter")
  recordDelimiter: option<recordDelimiter>,
  @ocaml.doc("<p>The single character used for escaping the quote character inside an already escaped
         value.</p>")
  @as("QuoteEscapeCharacter")
  quoteEscapeCharacter: option<quoteEscapeCharacter>,
  @ocaml.doc("<p>Indicates whether to use quotation marks around output fields. </p>
         <ul>
            <li>
               <p>
                  <code>ALWAYS</code>: Always use quotation marks for output fields.</p>
            </li>
            <li>
               <p>
                  <code>ASNEEDED</code>: Use quotation marks for output fields when needed.</p>
            </li>
         </ul>")
  @as("QuoteFields")
  quoteFields: option<quoteFields>,
}
@ocaml.doc("<p>Describes how an uncompressed comma-separated values (CSV)-formatted input object is
         formatted.</p>")
type csvinput = {
  @ocaml.doc("<p>Specifies that CSV field values may contain quoted record delimiters and such records
         should be allowed. Default value is FALSE. Setting this value to TRUE may lower
         performance.</p>")
  @as("AllowQuotedRecordDelimiter")
  allowQuotedRecordDelimiter: option<allowQuotedRecordDelimiter>,
  @ocaml.doc("<p>A single character used for escaping when the field delimiter is part of the value. For
         example, if the value is <code>a, b</code>, Amazon S3 wraps this field value in quotation marks,
         as follows: <code>\" a , b \"</code>.</p>
         <p>Type: String</p>
         <p>Default: <code>\"</code>
         </p>
         <p>Ancestors: <code>CSV</code>
         </p>")
  @as("QuoteCharacter")
  quoteCharacter: option<quoteCharacter>,
  @ocaml.doc("<p>A single character used to separate individual fields in a record. You can specify an
         arbitrary delimiter.</p>")
  @as("FieldDelimiter")
  fieldDelimiter: option<fieldDelimiter>,
  @ocaml.doc("<p>A single character used to separate individual records in the input. Instead of the
         default value, you can specify an arbitrary delimiter.</p>")
  @as("RecordDelimiter")
  recordDelimiter: option<recordDelimiter>,
  @ocaml.doc("<p>A single character used for escaping the quotation mark character inside an already
         escaped value. For example, the value \"\"\" a , b \"\"\" is parsed as \" a , b \".</p>")
  @as("QuoteEscapeCharacter")
  quoteEscapeCharacter: option<quoteEscapeCharacter>,
  @ocaml.doc("<p>A single character used to indicate that a row should be ignored when the character is
         present at the start of that row. You can specify any character to indicate a comment
         line.</p>")
  @as("Comments")
  comments: option<comments>,
  @ocaml.doc("<p>Describes the first line of input. Valid values are:</p>
         <ul>
            <li>
               <p>
                  <code>NONE</code>: First line is not a header.</p>
            </li>
            <li>
               <p>
                  <code>IGNORE</code>: First line is a header, but you can't use the header values
               to indicate the column in an expression. You can use column position (such as _1, _2,
               …) to indicate the column (<code>SELECT s._1 FROM OBJECT s</code>).</p>
            </li>
            <li>
               <p>
                  <code>Use</code>: First line is a header, and you can use the header value to
               identify a column in an expression (<code>SELECT \"name\" FROM OBJECT</code>). </p>
            </li>
         </ul>")
  @as("FileHeaderInfo")
  fileHeaderInfo: option<fileHeaderInfo>,
}
@ocaml.doc("<p> In terms of implementation, a Bucket is a resource. An Amazon S3 bucket name is globally
         unique, and the namespace is shared by all AWS accounts. </p>")
type bucket = {
  @ocaml.doc(
    "<p>Date the bucket was created. This date can change when making changes to your bucket, such as editing its bucket policy.</p>"
  )
  @as("CreationDate")
  creationDate: option<creationDate>,
  @ocaml.doc("<p>The name of the bucket.</p>") @as("Name") name: option<bucketName>,
}
@ocaml.doc("<p>Contains information about where to publish the analytics results.</p>")
type analyticsS3BucketDestination = {
  @ocaml.doc(
    "<p>The prefix to use when exporting data. The prefix is prepended to all results.</p>"
  )
  @as("Prefix")
  prefix: option<prefix>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bucket to which data is exported.</p>")
  @as("Bucket")
  bucket: bucketName,
  @ocaml.doc("<p>The account ID that owns the destination S3 bucket. If no account ID is provided, the
         owner is not validated before exporting data.</p>
         <note>
            <p> Although this value is optional, we strongly recommend that you set it to help
            prevent problems if the destination bucket ownership changes. </p>
         </note>")
  @as("BucketAccountId")
  bucketAccountId: option<accountId>,
  @ocaml.doc("<p>Specifies the file format used when exporting data to Amazon S3.</p>")
  @as("Format")
  format: analyticsS3ExportFileFormat,
}
type allowedOrigins = array<allowedOrigin>
type allowedMethods = array<allowedMethod>
type allowedHeaders = array<allowedHeader>
@ocaml.doc("<p>A container for information about access control for replicas.</p>")
type accessControlTranslation = {
  @ocaml.doc("<p>Specifies the replica ownership. For default and valid values, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html\">PUT bucket
            replication</a> in the <i>Amazon S3 API Reference</i>.</p>")
  @as("Owner")
  owner: ownerOverride,
}
@ocaml.doc("<p>Configures the transfer acceleration state for an Amazon S3 bucket. For more information, see
            <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html\">Amazon S3
            Transfer Acceleration</a> in the <i>Amazon S3 User Guide</i>.</p>")
type accelerateConfiguration = {
  @ocaml.doc("<p>Specifies the transfer acceleration status of the bucket.</p>") @as("Status")
  status: option<bucketAccelerateStatus>,
}
@ocaml.doc("<p>Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will
         wait before permanently removing all parts of the upload. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config\">
            Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy</a> in the
            <i>Amazon S3 User Guide</i>.</p>")
type abortIncompleteMultipartUpload = {
  @ocaml.doc("<p>Specifies the number of days after which Amazon S3 aborts an incomplete multipart
         upload.</p>")
  @as("DaysAfterInitiation")
  daysAfterInitiation: option<daysAfterInitiation>,
}
type userMetadata = array<metadataEntry>
type transitionList = array<transition>
type tieringList = array<tiering>
@ocaml.doc("<p>Container for granting information.</p>")
type targetGrant = {
  @ocaml.doc("<p>Logging permissions assigned to the grantee for the bucket.</p>") @as("Permission")
  permission: option<bucketLogsPermission>,
  @ocaml.doc("<p>Container for the person being granted permissions.</p>") @as("Grantee")
  grantee: option<grantee>,
}
type tagSet = array<tag>
@ocaml.doc("<p>Container for the Stats Event.</p>")
type statsEvent = {
  @ocaml.doc("<p>The Stats event details.</p>") @as("Details") details: option<stats>,
}
@ocaml.doc("<p>A container that describes additional filters for identifying the source objects that
         you want to replicate. You can choose to enable or disable the replication of these
         objects. Currently, Amazon S3 supports only the filter that you can specify for objects created
         with server-side encryption using a customer master key (CMK) stored in AWS Key Management
         Service (SSE-KMS).</p>")
type sourceSelectionCriteria = {
  @ocaml.doc("<p>A filter that you can specify for selections for modifications on replicas. Amazon S3 doesn't
         replicate replica modifications by default. In the latest version of replication
         configuration (when <code>Filter</code> is specified), you can specify this element and set
         the status to <code>Enabled</code> to replicate modifications on replicas. </p>
         <note>
            <p> If you don't specify the <code>Filter</code> element, Amazon S3 assumes that the
            replication configuration is the earlier version, V1. In the earlier version, this
            element is not allowed</p>
         </note>")
  @as("ReplicaModifications")
  replicaModifications: option<replicaModifications>,
  @ocaml.doc("<p> A container for filter information for the selection of Amazon S3 objects encrypted with AWS
         KMS. If you include <code>SourceSelectionCriteria</code> in the replication configuration,
         this element is required. </p>")
  @as("SseKmsEncryptedObjects")
  sseKmsEncryptedObjects: option<sseKmsEncryptedObjects>,
}
@ocaml.doc("<p>Specifies the default server-side encryption configuration.</p>")
type serverSideEncryptionRule = {
  @ocaml.doc("<p>Specifies whether Amazon S3 should use an S3 Bucket Key with server-side encryption using KMS (SSE-KMS) for new objects in the bucket. Existing objects are not affected. Setting the <code>BucketKeyEnabled</code> element to <code>true</code> causes Amazon S3 to use an S3 Bucket Key. By default, S3 Bucket Key is not enabled.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html\">Amazon S3 Bucket Keys</a> in the <i>Amazon S3 User Guide</i>.</p>")
  @as("BucketKeyEnabled")
  bucketKeyEnabled: option<bucketKeyEnabled>,
  @ocaml.doc("<p>Specifies the default server-side encryption to apply to new objects in the bucket. If a
         PUT Object request doesn't specify any server-side encryption, this default encryption will
         be applied.</p>")
  @as("ApplyServerSideEncryptionByDefault")
  applyServerSideEncryptionByDefault: option<serverSideEncryptionByDefault>,
}
@ocaml.doc("<p>Specifies the redirect behavior and when a redirect is applied. For more information
         about routing rules, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html#advanced-conditional-redirects\">Configuring advanced conditional redirects</a> in the
            <i>Amazon S3 User Guide</i>.</p>")
type routingRule = {
  @ocaml.doc("<p>Container for redirect information. You can redirect requests to another host, to
         another page, or with another protocol. In the event of an error, you can specify a
         different error code to return.</p>")
  @as("Redirect")
  redirect: redirect,
  @ocaml.doc("<p>A container for describing a condition that must be met for the specified redirect to
         apply. For example, 1. If request is for pages in the <code>/docs</code> folder, redirect
         to the <code>/documents</code> folder. 2. If request results in HTTP error 4xx, redirect
         request to another host where you might process the error.</p>")
  @as("Condition")
  condition: option<condition>,
}
@ocaml.doc("<p> A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is
         enabled and the time when all objects and operations on objects must be replicated. Must be
         specified together with a <code>Metrics</code> block. </p>")
type replicationTime = {
  @ocaml.doc("<p> A container specifying the time by which replication should be complete for all objects
         and operations on objects. </p>")
  @as("Time")
  time: replicationTimeValue,
  @ocaml.doc("<p> Specifies whether the replication time is enabled. </p>") @as("Status")
  status: replicationTimeStatus,
}
@ocaml.doc("<p>This data type contains information about the progress event of an operation.</p>")
type progressEvent = {
  @ocaml.doc("<p>The Progress event details.</p>") @as("Details") details: option<progress>,
}
type parts = array<part>
type ownershipControlsRules = array<ownershipControlsRule>
@ocaml.doc("<p>Describes how results of the Select job are serialized.</p>")
type outputSerialization = {
  @ocaml.doc("<p>Specifies JSON as request's output serialization format.</p>") @as("JSON")
  json: option<jsonoutput>,
  @ocaml.doc("<p>Describes the serialization of CSV-encoded Select results.</p>") @as("CSV")
  csv: option<csvoutput>,
}
@ocaml.doc("<p>The version of an object.</p>")
type objectVersion = {
  @ocaml.doc("<p>Specifies the owner of the object.</p>") @as("Owner") owner: option<owner>,
  @ocaml.doc("<p>Date and time the object was last modified.</p>") @as("LastModified")
  lastModified: option<lastModified>,
  @ocaml.doc("<p>Specifies whether the object is (true) or is not (false) the latest version of an
         object.</p>")
  @as("IsLatest")
  isLatest: option<isLatest>,
  @ocaml.doc("<p>Version ID of an object.</p>") @as("VersionId") versionId: option<objectVersionId>,
  @ocaml.doc("<p>The object key.</p>") @as("Key") key: option<objectKey>,
  @ocaml.doc("<p>The class of storage used to store the object.</p>") @as("StorageClass")
  storageClass: option<objectVersionStorageClass>,
  @ocaml.doc("<p>Size in bytes of the object.</p>") @as("Size") size: option<size>,
  @ocaml.doc("<p>The entity tag is an MD5 hash of that version of the object.</p>") @as("ETag")
  etag: option<etag>,
}
@ocaml.doc("<p>The container element for an Object Lock rule.</p>")
type objectLockRule = {
  @ocaml.doc("<p>The default Object Lock retention mode and period that you want to apply to new objects
         placed in the specified bucket. Bucket settings require both a mode and a period.
         The period can be either <code>Days</code> or <code>Years</code> but you must select one.
         You cannot specify <code>Days</code> and <code>Years</code> at the same time.</p>")
  @as("DefaultRetention")
  defaultRetention: option<defaultRetention>,
}
type objectIdentifierList = array<objectIdentifier>
@ocaml.doc("<p>An object consists of data and its descriptive metadata.</p>")
type object_ = {
  @ocaml.doc("<p>The owner of the object</p>") @as("Owner") owner: option<owner>,
  @ocaml.doc("<p>The class of storage used to store the object.</p>") @as("StorageClass")
  storageClass: option<objectStorageClass>,
  @ocaml.doc("<p>Size in bytes of the object</p>") @as("Size") size: option<size>,
  @ocaml.doc("<p>The entity tag is a hash of the object. The ETag reflects changes only to the contents
         of an object, not its metadata. The ETag may or may not be an MD5 digest of the object
         data. Whether or not it is depends on how the object was created and how it is encrypted as
         described below:</p>
         <ul>
            <li>
               <p>Objects created by the PUT Object, POST Object, or Copy operation, or through the
               AWS Management Console, and are encrypted by SSE-S3 or plaintext, have ETags that are
               an MD5 digest of their object data.</p>
            </li>
            <li>
               <p>Objects created by the PUT Object, POST Object, or Copy operation, or through the
               AWS Management Console, and are encrypted by SSE-C or SSE-KMS, have ETags that are
               not an MD5 digest of their object data.</p>
            </li>
            <li>
               <p>If an object is created by either the Multipart Upload or Part Copy operation, the
               ETag is not an MD5 digest, regardless of the method of encryption.</p>
            </li>
         </ul>")
  @as("ETag")
  etag: option<etag>,
  @ocaml.doc("<p>Creation date of the object.</p>") @as("LastModified")
  lastModified: option<lastModified>,
  @ocaml.doc("<p>The name that you assign to an object. You use the object key to retrieve the
         object.</p>")
  @as("Key")
  key: option<objectKey>,
}
type noncurrentVersionTransitionList = array<noncurrentVersionTransition>
@ocaml.doc("<p>Container for the <code>MultipartUpload</code> for the Amazon S3 object.</p>")
type multipartUpload = {
  @ocaml.doc("<p>Identifies who initiated the multipart upload.</p>") @as("Initiator")
  initiator: option<initiator>,
  @ocaml.doc("<p>Specifies the owner of the object that is part of the multipart upload. </p>")
  @as("Owner")
  owner: option<owner>,
  @ocaml.doc("<p>The class of storage used to store the object.</p>") @as("StorageClass")
  storageClass: option<storageClass>,
  @ocaml.doc("<p>Date and time at which the multipart upload was initiated.</p>") @as("Initiated")
  initiated: option<initiated>,
  @ocaml.doc("<p>Key of the object for which the multipart upload was initiated.</p>") @as("Key")
  key: option<objectKey>,
  @ocaml.doc("<p>Upload ID that identifies the multipart upload.</p>") @as("UploadId")
  uploadId: option<multipartUploadId>,
}
@ocaml.doc("<p> A container specifying replication metrics-related settings enabling replication
         metrics and events.</p>")
type metrics = {
  @ocaml.doc("<p> A container specifying the time threshold for emitting the
            <code>s3:Replication:OperationMissedThreshold</code> event. </p>")
  @as("EventThreshold")
  eventThreshold: option<replicationTimeValue>,
  @ocaml.doc("<p> Specifies whether the replication metrics are enabled. </p>") @as("Status")
  status: metricsStatus,
}
@ocaml.doc("<p>Contains the type of server-side encryption used to encrypt the inventory
         results.</p>")
type inventoryEncryption = {
  @ocaml.doc("<p>Specifies the use of SSE-KMS to encrypt delivered inventory reports.</p>")
  @as("SSEKMS")
  ssekms: option<ssekms>,
  @ocaml.doc("<p>Specifies the use of SSE-S3 to encrypt delivered inventory reports.</p>")
  @as("SSES3")
  sses3: option<sses3>,
}
@ocaml.doc("<p>Describes the serialization format of the object.</p>")
type inputSerialization = {
  @ocaml.doc("<p>Specifies Parquet as object's input serialization format.</p>") @as("Parquet")
  parquet: option<parquetInput>,
  @ocaml.doc("<p>Specifies JSON as object's input serialization format.</p>") @as("JSON")
  json: option<jsoninput>,
  @ocaml.doc("<p>Specifies object's compression format. Valid values: NONE, GZIP, BZIP2. Default Value:
         NONE.</p>")
  @as("CompressionType")
  compressionType: option<compressionType>,
  @ocaml.doc("<p>Describes the serialization of a CSV-encoded object.</p>") @as("CSV")
  csv: option<csvinput>,
}
@ocaml.doc("<p>Container for grant information.</p>")
type grant = {
  @ocaml.doc("<p>Specifies the permission given to the grantee.</p>") @as("Permission")
  permission: option<permission>,
  @ocaml.doc("<p>The person being granted permissions.</p>") @as("Grantee")
  grantee: option<grantee>,
}
@ocaml.doc("<p>A list of containers for the key-value pair that defines the criteria for the filter
         rule.</p>")
type filterRuleList = array<filterRule>
type errors = array<error>
type deletedObjects = array<deletedObject>
@ocaml.doc("<p>Information about the delete marker.</p>")
type deleteMarkerEntry = {
  @ocaml.doc("<p>Date and time the object was last modified.</p>") @as("LastModified")
  lastModified: option<lastModified>,
  @ocaml.doc("<p>Specifies whether the object is (true) or is not (false) the latest version of an
         object.</p>")
  @as("IsLatest")
  isLatest: option<isLatest>,
  @ocaml.doc("<p>Version ID of an object.</p>") @as("VersionId") versionId: option<objectVersionId>,
  @ocaml.doc("<p>The object key.</p>") @as("Key") key: option<objectKey>,
  @ocaml.doc("<p>The account that created the delete marker.></p>") @as("Owner")
  owner: option<owner>,
}
type completedPartList = array<completedPart>
type commonPrefixList = array<commonPrefix>
@ocaml.doc("<p>Specifies a cross-origin access rule for an Amazon S3 bucket.</p>")
type corsrule = {
  @ocaml.doc("<p>The time in seconds that your browser is to cache the preflight response for the
         specified resource.</p>")
  @as("MaxAgeSeconds")
  maxAgeSeconds: option<maxAgeSeconds>,
  @ocaml.doc("<p>One or more headers in the response that you want customers to be able to access from
         their applications (for example, from a JavaScript <code>XMLHttpRequest</code>
         object).</p>")
  @as("ExposeHeaders")
  exposeHeaders: option<exposeHeaders>,
  @ocaml.doc("<p>One or more origins you want customers to be able to access the bucket from.</p>")
  @as("AllowedOrigins")
  allowedOrigins: allowedOrigins,
  @ocaml.doc("<p>An HTTP method that you allow the origin to execute. Valid values are <code>GET</code>,
            <code>PUT</code>, <code>HEAD</code>, <code>POST</code>, and <code>DELETE</code>.</p>")
  @as("AllowedMethods")
  allowedMethods: allowedMethods,
  @ocaml.doc("<p>Headers that are specified in the <code>Access-Control-Request-Headers</code> header.
         These headers are allowed in a preflight OPTIONS request. In response to any preflight
         OPTIONS request, Amazon S3 returns any requested headers that are allowed.</p>")
  @as("AllowedHeaders")
  allowedHeaders: option<allowedHeaders>,
  @ocaml.doc(
    "<p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>"
  )
  @as("ID")
  id: option<id>,
}
type buckets = array<bucket>
@ocaml.doc("<p>Where to publish the analytics results.</p>")
type analyticsExportDestination = {
  @ocaml.doc("<p>A destination signifying output to an S3 bucket.</p>") @as("S3BucketDestination")
  s3BucketDestination: analyticsS3BucketDestination,
}
type targetGrants = array<targetGrant>
@ocaml.doc("<p>Container for <code>TagSet</code> elements.</p>")
type tagging = {@ocaml.doc("<p>A collection for a set of tags</p>") @as("TagSet") tagSet: tagSet}
@ocaml.doc("<p>Container for data related to the storage class analysis for an Amazon S3 bucket for
         export.</p>")
type storageClassAnalysisDataExport = {
  @ocaml.doc("<p>The place to store the data for an analysis.</p>") @as("Destination")
  destination: analyticsExportDestination,
  @ocaml.doc("<p>The version of the output schema to use when exporting data. Must be
         <code>V_1</code>.</p>")
  @as("OutputSchemaVersion")
  outputSchemaVersion: storageClassAnalysisSchemaVersion,
}
type serverSideEncryptionRules = array<serverSideEncryptionRule>
@ocaml.doc("<p>Describes the parameters for Select job types.</p>")
type selectParameters = {
  @ocaml.doc("<p>Describes how the results of the Select job are serialized.</p>")
  @as("OutputSerialization")
  outputSerialization: outputSerialization,
  @ocaml.doc("<p>The expression that is used to query the object.</p>") @as("Expression")
  expression: expression,
  @ocaml.doc("<p>The type of the provided expression (for example, SQL).</p>") @as("ExpressionType")
  expressionType: expressionType,
  @ocaml.doc("<p>Describes the serialization format of the object.</p>") @as("InputSerialization")
  inputSerialization: inputSerialization,
}
@ocaml.doc("<p>The container for selecting objects from a content event stream.</p>")
type selectObjectContentEventStream = {
  @ocaml.doc("<p>The End Event.</p>") @as("End") end: option<endEvent>,
  @ocaml.doc("<p>The Continuation Event.</p>") @as("Cont") cont: option<continuationEvent>,
  @ocaml.doc("<p>The Progress Event.</p>") @as("Progress") progress: option<progressEvent>,
  @ocaml.doc("<p>The Stats Event.</p>") @as("Stats") stats: option<statsEvent>,
  @ocaml.doc("<p>The Records Event.</p>") @as("Records") records: option<recordsEvent>,
}
module SelectObjectContentEventStream = {
  type t =
    | End(endEvent)
    | Cont(continuationEvent)
    | Progress(progressEvent)
    | Stats(statsEvent)
    | Records(recordsEvent)
  exception SelectObjectContentEventStreamUnspecified
  let classify = value =>
    switch value {
    | {end: Some(x)} => End(x)
    | {cont: Some(x)} => Cont(x)
    | {progress: Some(x)} => Progress(x)
    | {stats: Some(x)} => Stats(x)
    | {records: Some(x)} => Records(x)
    | _ => raise(SelectObjectContentEventStreamUnspecified)
    }

  let make = value =>
    switch value {
    | End(x) => {end: Some(x), cont: None, progress: None, stats: None, records: None}
    | Cont(x) => {cont: Some(x), end: None, progress: None, stats: None, records: None}
    | Progress(x) => {progress: Some(x), end: None, cont: None, stats: None, records: None}
    | Stats(x) => {stats: Some(x), end: None, cont: None, progress: None, records: None}
    | Records(x) => {records: Some(x), end: None, cont: None, progress: None, stats: None}
    }
}
@ocaml.doc("<p>A container for object key name prefix and suffix filtering rules.</p>")
type s3KeyFilter = {@as("FilterRules") filterRules: option<filterRuleList>}
type routingRules = array<routingRule>
@ocaml.doc("<p>A container for specifying rule filters. The filters determine the subset of objects to
         which the rule applies. This element is required only if you specify more than one filter. </p>
         <p>For example:</p>
         <ul>
            <li>
               <p>If you specify both a <code>Prefix</code> and a <code>Tag</code> filter, wrap
               these filters in an <code>And</code> tag. </p>
            </li>
            <li>
               <p>If you specify a filter based on multiple tags, wrap the <code>Tag</code> elements
               in an <code>And</code> tag.</p>
            </li>
         </ul>")
type replicationRuleAndOperator = {
  @ocaml.doc("<p>An array of tags containing key and value pairs.</p>") @as("Tags")
  tags: option<tagSet>,
  @ocaml.doc("<p>An object key name prefix that identifies the subset of objects to which the rule
         applies.</p>")
  @as("Prefix")
  prefix: option<prefix>,
}
@ocaml.doc("<p>The container element for a bucket's ownership controls.</p>")
type ownershipControls = {
  @ocaml.doc("<p>The container element for an ownership control rule.</p>") @as("Rules")
  rules: ownershipControlsRules,
}
type objectVersionList = array<objectVersion>
@ocaml.doc("<p>The container element for Object Lock configuration parameters.</p>")
type objectLockConfiguration = {
  @ocaml.doc("<p>Specifies the Object Lock rule for the specified object. Enable the this rule when you apply
         <code>ObjectLockConfiguration</code> to a bucket. Bucket settings require both a mode and a period.
         The period can be either <code>Days</code> or <code>Years</code> but you must select one.
         You cannot specify <code>Days</code> and <code>Years</code> at the same time.</p>")
  @as("Rule")
  rule: option<objectLockRule>,
  @ocaml.doc("<p>Indicates whether this bucket has an Object Lock configuration enabled.
         Enable <code>ObjectLockEnabled</code> when you apply <code>ObjectLockConfiguration</code>
         to a bucket. </p>")
  @as("ObjectLockEnabled")
  objectLockEnabled: option<objectLockEnabled>,
}
type objectList = array<object_>
type multipartUploadList = array<multipartUpload>
@ocaml.doc("<p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter.
         The operator must have at least two predicates, and an object must match all of the
         predicates in order for the filter to apply.</p>")
type metricsAndOperator = {
  @ocaml.doc("<p>The list of tags used when evaluating an AND predicate.</p>") @as("Tags")
  tags: option<tagSet>,
  @ocaml.doc("<p>The prefix used when evaluating an AND predicate.</p>") @as("Prefix")
  prefix: option<prefix>,
}
@ocaml.doc("<p>This is used in a Lifecycle Rule Filter to apply a logical AND to two or more
         predicates. The Lifecycle Rule will apply to any object matching all of the predicates
         configured inside the And operator.</p>")
type lifecycleRuleAndOperator = {
  @ocaml.doc("<p>All of these tags must exist in the object's tag set in order for the rule to
         apply.</p>")
  @as("Tags")
  tags: option<tagSet>,
  @ocaml.doc("<p>Prefix identifying one or more objects to which the rule applies.</p>")
  @as("Prefix")
  prefix: option<prefix>,
}
@ocaml.doc("<p>Contains the bucket name, file format, bucket owner (optional), and prefix (optional)
         where inventory results are published.</p>")
type inventoryS3BucketDestination = {
  @ocaml.doc("<p>Contains the type of server-side encryption used to encrypt the inventory
         results.</p>")
  @as("Encryption")
  encryption: option<inventoryEncryption>,
  @ocaml.doc("<p>The prefix that is prepended to all inventory results.</p>") @as("Prefix")
  prefix: option<prefix>,
  @ocaml.doc("<p>Specifies the output format of the inventory results.</p>") @as("Format")
  format: inventoryFormat,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bucket where inventory results will be
         published.</p>")
  @as("Bucket")
  bucket: bucketName,
  @ocaml.doc("<p>The account ID that owns the destination S3 bucket. If no account ID is provided, the
         owner is not validated before exporting data. </p>
         <note>
            <p> Although this value is optional, we strongly recommend that you set it to help
            prevent problems if the destination bucket ownership changes. </p>
         </note>")
  @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc("<p>A container for specifying S3 Intelligent-Tiering filters. The filters determine the
         subset of objects to which the rule applies.</p>")
type intelligentTieringAndOperator = {
  @ocaml.doc("<p>All of these tags must exist in the object's tag set in order for the configuration to
         apply.</p>")
  @as("Tags")
  tags: option<tagSet>,
  @ocaml.doc("<p>An object key name prefix that identifies the subset of objects to which the
         configuration applies.</p>")
  @as("Prefix")
  prefix: option<prefix>,
}
type grants = array<grant>
@ocaml.doc("<p>Specifies information about where to publish analysis or configuration results for an
         Amazon S3 bucket and S3 Replication Time Control (S3 RTC).</p>")
type destination = {
  @ocaml.doc("<p> A container specifying replication metrics-related settings enabling replication
         metrics and events. </p>")
  @as("Metrics")
  metrics: option<metrics>,
  @ocaml.doc("<p> A container specifying S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time
         when all objects and operations on objects must be replicated. Must be specified together
         with a <code>Metrics</code> block. </p>")
  @as("ReplicationTime")
  replicationTime: option<replicationTime>,
  @ocaml.doc("<p>A container that provides information about encryption. If
            <code>SourceSelectionCriteria</code> is specified, you must specify this element.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: option<encryptionConfiguration>,
  @ocaml.doc("<p>Specify this only in a cross-account scenario (where source and destination bucket
         owners are not the same), and you want to change replica ownership to the AWS account that
         owns the destination bucket. If this is not specified in the replication configuration, the
         replicas are owned by same AWS account that owns the source object.</p>")
  @as("AccessControlTranslation")
  accessControlTranslation: option<accessControlTranslation>,
  @ocaml.doc("<p> The storage class to use when replicating objects, such as S3 Standard or reduced
         redundancy. By default, Amazon S3 uses the storage class of the source object to create the
         object replica. </p>
         <p>For valid values, see the <code>StorageClass</code> element of the <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html\">PUT Bucket
            replication</a> action in the <i>Amazon S3 API Reference</i>.</p>")
  @as("StorageClass")
  storageClass: option<storageClass>,
  @ocaml.doc("<p>Destination bucket owner account ID. In a cross-account scenario, if you direct Amazon S3 to
         change replica ownership to the AWS account that owns the destination bucket by specifying
         the <code>AccessControlTranslation</code> property, this is the account ID of the
         destination bucket owner. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-change-owner.html\">Replication Additional
            Configuration: Changing the Replica Owner</a> in the <i>Amazon S3 User Guide</i>.</p>")
  @as("Account")
  account: option<accountId>,
  @ocaml.doc(
    "<p> The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to store the results.</p>"
  )
  @as("Bucket")
  bucket: bucketName,
}
type deleteMarkers = array<deleteMarkerEntry>
@ocaml.doc("<p>Container for the objects to delete.</p>")
type delete = {
  @ocaml.doc("<p>Element to enable quiet mode for the request. When you add this element, you must set
         its value to true.</p>")
  @as("Quiet")
  quiet: option<quiet>,
  @ocaml.doc("<p>The objects to delete.</p>") @as("Objects") objects: objectIdentifierList,
}
@ocaml.doc("<p>The container for the completed multipart upload details.</p>")
type completedMultipartUpload = {
  @ocaml.doc("<p>Array of CompletedPart data types.</p>") @as("Parts")
  parts: option<completedPartList>,
}
type corsrules = array<corsrule>
@ocaml.doc("<p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter.
         The operator must have at least two predicates in any combination, and an object must match
         all of the predicates for the filter to apply.</p>")
type analyticsAndOperator = {
  @ocaml.doc("<p>The list of tags to use when evaluating an AND predicate.</p>") @as("Tags")
  tags: option<tagSet>,
  @ocaml.doc("<p>The prefix to use when evaluating an AND predicate: The prefix that an object must have
         to be included in the metrics results.</p>")
  @as("Prefix")
  prefix: option<prefix>,
}
@ocaml.doc("<p>Specifies website configuration parameters for an Amazon S3 bucket.</p>")
type websiteConfiguration = {
  @ocaml.doc("<p>Rules that define when a redirect is applied and the redirect behavior.</p>")
  @as("RoutingRules")
  routingRules: option<routingRules>,
  @ocaml.doc("<p>The redirect behavior for every request to this bucket's website endpoint.</p>
         <important>
            <p>If you specify this property, you can't specify any other property.</p>
         </important>")
  @as("RedirectAllRequestsTo")
  redirectAllRequestsTo: option<redirectAllRequestsTo>,
  @ocaml.doc("<p>The name of the index document for the website.</p>") @as("IndexDocument")
  indexDocument: option<indexDocument>,
  @ocaml.doc("<p>The name of the error document for the website.</p>") @as("ErrorDocument")
  errorDocument: option<errorDocument>,
}
@ocaml.doc("<p>Specifies data related to access patterns to be collected and made available to analyze
         the tradeoffs between different storage classes for an Amazon S3 bucket.</p>")
type storageClassAnalysis = {
  @ocaml.doc("<p>Specifies how data related to the storage class analysis for an Amazon S3 bucket should be
         exported.</p>")
  @as("DataExport")
  dataExport: option<storageClassAnalysisDataExport>,
}
@ocaml.doc("<p>Specifies the default server-side-encryption configuration.</p>")
type serverSideEncryptionConfiguration = {
  @ocaml.doc("<p>Container for information about a particular server-side encryption configuration
         rule.</p>")
  @as("Rules")
  rules: serverSideEncryptionRules,
}
@ocaml.doc(
  "<p>Describes an Amazon S3 location that will receive the results of the restore request.</p>"
)
type s3Location = {
  @ocaml.doc("<p>The class of storage used to store the restore results.</p>") @as("StorageClass")
  storageClass: option<storageClass>,
  @ocaml.doc("<p>A list of metadata to store with the restore results in S3.</p>")
  @as("UserMetadata")
  userMetadata: option<userMetadata>,
  @ocaml.doc("<p>The tag-set that is applied to the restore results.</p>") @as("Tagging")
  tagging: option<tagging>,
  @ocaml.doc("<p>A list of grants that control access to the staged results.</p>")
  @as("AccessControlList")
  accessControlList: option<grants>,
  @ocaml.doc("<p>The canned ACL to apply to the restore results.</p>") @as("CannedACL")
  cannedACL: option<objectCannedACL>,
  @as("Encryption") encryption: option<encryption>,
  @ocaml.doc("<p>The prefix that is prepended to the restore results for this request.</p>")
  @as("Prefix")
  prefix: locationPrefix,
  @ocaml.doc("<p>The name of the bucket where the restore results will be placed.</p>")
  @as("BucketName")
  bucketName: bucketName,
}
@ocaml.doc("<p>A filter that identifies the subset of objects to which the replication rule applies. A
            <code>Filter</code> must specify exactly one <code>Prefix</code>, <code>Tag</code>, or
         an <code>And</code> child element.</p>")
type replicationRuleFilter = {
  @ocaml.doc("<p>A container for specifying rule filters. The filters determine the subset of objects to
         which the rule applies. This element is required only if you specify more than one filter.
         For example: </p>
         <ul>
            <li>
               <p>If you specify both a <code>Prefix</code> and a <code>Tag</code> filter, wrap
               these filters in an <code>And</code> tag.</p>
            </li>
            <li>
               <p>If you specify a filter based on multiple tags, wrap the <code>Tag</code> elements
               in an <code>And</code> tag.</p>
            </li>
         </ul>")
  @as("And")
  and_: option<replicationRuleAndOperator>,
  @ocaml.doc("<p>A container for specifying a tag key and value. </p>
         <p>The rule applies only to objects that have the tag in their tag set.</p>")
  @as("Tag")
  tag: option<tag>,
  @ocaml.doc("<p>An object key name prefix that identifies the subset of objects to which the rule
         applies.</p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("Prefix")
  prefix: option<prefix>,
}
module ReplicationRuleFilter = {
  type t = And(replicationRuleAndOperator) | Tag(tag) | Prefix(prefix)
  exception ReplicationRuleFilterUnspecified
  let classify = value =>
    switch value {
    | {and_: Some(x)} => And(x)
    | {tag: Some(x)} => Tag(x)
    | {prefix: Some(x)} => Prefix(x)
    | _ => raise(ReplicationRuleFilterUnspecified)
    }

  let make = value =>
    switch value {
    | And(x) => {and_: Some(x), tag: None, prefix: None}
    | Tag(x) => {tag: Some(x), and_: None, prefix: None}
    | Prefix(x) => {prefix: Some(x), and_: None, tag: None}
    }
}
@ocaml.doc("<p>Specifies object key name filtering rules. For information about key name filtering, see
            <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html\">Configuring
            Event Notifications</a> in the <i>Amazon S3 User Guide</i>.</p>")
type notificationConfigurationFilter = {@as("Key") key: option<s3KeyFilter>}
@ocaml.doc("<p>Specifies a metrics configuration filter. The metrics configuration only includes
         objects that meet the filter's criteria. A filter must be a prefix, a tag, or a conjunction
         (MetricsAndOperator).</p>")
type metricsFilter = {
  @ocaml.doc("<p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter.
         The operator must have at least two predicates, and an object must match all of the
         predicates in order for the filter to apply.</p>")
  @as("And")
  and_: option<metricsAndOperator>,
  @ocaml.doc("<p>The tag used when evaluating a metrics filter.</p>") @as("Tag") tag: option<tag>,
  @ocaml.doc("<p>The prefix used when evaluating a metrics filter.</p>") @as("Prefix")
  prefix: option<prefix>,
}
module MetricsFilter = {
  type t = And(metricsAndOperator) | Tag(tag) | Prefix(prefix)
  exception MetricsFilterUnspecified
  let classify = value =>
    switch value {
    | {and_: Some(x)} => And(x)
    | {tag: Some(x)} => Tag(x)
    | {prefix: Some(x)} => Prefix(x)
    | _ => raise(MetricsFilterUnspecified)
    }

  let make = value =>
    switch value {
    | And(x) => {and_: Some(x), tag: None, prefix: None}
    | Tag(x) => {tag: Some(x), and_: None, prefix: None}
    | Prefix(x) => {prefix: Some(x), and_: None, tag: None}
    }
}
@ocaml.doc("<p>Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys
         for a bucket. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html\">PUT Bucket logging</a> in the
            <i>Amazon S3 API Reference</i>.</p>")
type loggingEnabled = {
  @ocaml.doc("<p>A prefix for all log object keys. If you store log files from multiple Amazon S3 buckets in a
         single bucket, you can use a prefix to distinguish which log files came from which
         bucket.</p>")
  @as("TargetPrefix")
  targetPrefix: targetPrefix,
  @ocaml.doc("<p>Container for granting information.</p>") @as("TargetGrants")
  targetGrants: option<targetGrants>,
  @ocaml.doc("<p>Specifies the bucket where you want Amazon S3 to store server access logs. You can have your
         logs delivered to any bucket that you own, including the same bucket that is being logged.
         You can also configure multiple buckets to deliver their logs to the same target bucket. In
         this case, you should choose a different <code>TargetPrefix</code> for each source bucket
         so that the delivered log files can be distinguished by key.</p>")
  @as("TargetBucket")
  targetBucket: targetBucket,
}
@ocaml.doc("<p>The <code>Filter</code> is used to identify objects that a Lifecycle Rule applies to. A
            <code>Filter</code> must have exactly one of <code>Prefix</code>, <code>Tag</code>, or
            <code>And</code> specified.</p>")
type lifecycleRuleFilter = {
  @as("And") and_: option<lifecycleRuleAndOperator>,
  @ocaml.doc("<p>This tag must exist in the object's tag set in order for the rule to apply.</p>")
  @as("Tag")
  tag: option<tag>,
  @ocaml.doc("<p>Prefix identifying one or more objects to which the rule applies.</p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("Prefix")
  prefix: option<prefix>,
}
module LifecycleRuleFilter = {
  type t = And(lifecycleRuleAndOperator) | Tag(tag) | Prefix(prefix)
  exception LifecycleRuleFilterUnspecified
  let classify = value =>
    switch value {
    | {and_: Some(x)} => And(x)
    | {tag: Some(x)} => Tag(x)
    | {prefix: Some(x)} => Prefix(x)
    | _ => raise(LifecycleRuleFilterUnspecified)
    }

  let make = value =>
    switch value {
    | And(x) => {and_: Some(x), tag: None, prefix: None}
    | Tag(x) => {tag: Some(x), and_: None, prefix: None}
    | Prefix(x) => {prefix: Some(x), and_: None, tag: None}
    }
}
@ocaml.doc("<p>Specifies the inventory configuration for an Amazon S3 bucket.</p>")
type inventoryDestination = {
  @ocaml.doc("<p>Contains the bucket name, file format, bucket owner (optional), and prefix (optional)
         where inventory results are published.</p>")
  @as("S3BucketDestination")
  s3BucketDestination: inventoryS3BucketDestination,
}
@ocaml.doc("<p>The <code>Filter</code> is used to identify objects that the S3 Intelligent-Tiering
         configuration applies to.</p>")
type intelligentTieringFilter = {
  @ocaml.doc("<p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter.
         The operator must have at least two predicates, and an object must match all of the
         predicates in order for the filter to apply.</p>")
  @as("And")
  and_: option<intelligentTieringAndOperator>,
  @as("Tag") tag: option<tag>,
  @ocaml.doc("<p>An object key name prefix that identifies the subset of objects to which the rule
         applies.</p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("Prefix")
  prefix: option<prefix>,
}
@ocaml.doc("<p>Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more
         information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html\">Enabling
            Cross-Origin Resource Sharing</a> in the <i>Amazon S3 User Guide</i>.</p>")
type corsconfiguration = {
  @ocaml.doc("<p>A set of origins and methods (cross-origin access that you want to allow). You can add
         up to 100 rules to the configuration.</p>")
  @as("CORSRules")
  corsrules: corsrules,
}
@ocaml.doc("<p>The filter used to describe a set of objects for analyses. A filter must have exactly
         one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided,
         all objects will be considered in any analysis.</p>")
type analyticsFilter = {
  @ocaml.doc("<p>A conjunction (logical AND) of predicates, which is used in evaluating an analytics
         filter. The operator must have at least two predicates.</p>")
  @as("And")
  and_: option<analyticsAndOperator>,
  @ocaml.doc("<p>The tag to use when evaluating an analytics filter.</p>") @as("Tag")
  tag: option<tag>,
  @ocaml.doc("<p>The prefix to use when evaluating an analytics filter.</p>") @as("Prefix")
  prefix: option<prefix>,
}
module AnalyticsFilter = {
  type t = And(analyticsAndOperator) | Tag(tag) | Prefix(prefix)
  exception AnalyticsFilterUnspecified
  let classify = value =>
    switch value {
    | {and_: Some(x)} => And(x)
    | {tag: Some(x)} => Tag(x)
    | {prefix: Some(x)} => Prefix(x)
    | _ => raise(AnalyticsFilterUnspecified)
    }

  let make = value =>
    switch value {
    | And(x) => {and_: Some(x), tag: None, prefix: None}
    | Tag(x) => {tag: Some(x), and_: None, prefix: None}
    | Prefix(x) => {prefix: Some(x), and_: None, tag: None}
    }
}
@ocaml.doc("<p>Contains the elements that set the ACL permissions for an object per grantee.</p>")
type accessControlPolicy = {
  @ocaml.doc("<p>Container for the bucket owner's display name and ID.</p>") @as("Owner")
  owner: option<owner>,
  @ocaml.doc("<p>A list of grants.</p>") @as("Grants") grants: option<grants>,
}
@ocaml.doc("<p>A container for specifying the configuration for publication of messages to an Amazon
         Simple Notification Service (Amazon SNS) topic when Amazon S3 detects specified events.</p>")
type topicConfiguration = {
  @as("Filter") filter: option<notificationConfigurationFilter>,
  @ocaml.doc("<p>The Amazon S3 bucket event about which to send notifications. For more information, see
            <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html\">Supported
            Event Types</a> in the <i>Amazon S3 User Guide</i>.</p>")
  @as("Events")
  events: eventList,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which Amazon S3 publishes a message
         when it detects events of the specified type.</p>")
  @as("TopicArn")
  topicArn: topicArn,
  @as("Id") id: option<notificationId>,
}
@ocaml.doc("<p>Specifies which Amazon S3 objects to replicate and where to store the replicas.</p>")
type replicationRule = {
  @as("DeleteMarkerReplication") deleteMarkerReplication: option<deleteMarkerReplication>,
  @ocaml.doc("<p>A container for information about the replication destination and its configurations
         including enabling the S3 Replication Time Control (S3 RTC).</p>")
  @as("Destination")
  destination: destination,
  @ocaml.doc("<p></p>") @as("ExistingObjectReplication")
  existingObjectReplication: option<existingObjectReplication>,
  @ocaml.doc("<p>A container that describes additional filters for identifying the source objects that
         you want to replicate. You can choose to enable or disable the replication of these
         objects. Currently, Amazon S3 supports only the filter that you can specify for objects created
         with server-side encryption using a customer master key (CMK) stored in AWS Key Management
         Service (SSE-KMS).</p>")
  @as("SourceSelectionCriteria")
  sourceSelectionCriteria: option<sourceSelectionCriteria>,
  @ocaml.doc("<p>Specifies whether the rule is enabled.</p>") @as("Status")
  status: replicationRuleStatus,
  @as("Filter") filter: option<replicationRuleFilter>,
  @ocaml.doc("<p>An object key name prefix that identifies the object or objects to which the rule
         applies. The maximum prefix length is 1,024 characters. To include all objects in a bucket,
         specify an empty string. </p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("Prefix")
  prefix: option<prefix>,
  @ocaml.doc("<p>The priority indicates which rule has precedence whenever two or more replication rules
         conflict. Amazon S3 will attempt to replicate objects according to all replication rules.
         However, if there are two or more rules with the same destination bucket, then objects will
         be replicated according to the rule with the highest priority. The higher the number, the
         higher the priority. </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html\">Replication</a> in the
            <i>Amazon S3 User Guide</i>.</p>")
  @as("Priority")
  priority: option<priority>,
  @ocaml.doc("<p>A unique identifier for the rule. The maximum value is 255 characters.</p>")
  @as("ID")
  id: option<id>,
}
@ocaml.doc("<p>Specifies the configuration for publishing messages to an Amazon Simple Queue Service
         (Amazon SQS) queue when Amazon S3 detects specified events.</p>")
type queueConfiguration = {
  @as("Filter") filter: option<notificationConfigurationFilter>,
  @ocaml.doc("<p>A collection of bucket events for which to send notifications</p>") @as("Events")
  events: eventList,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3 publishes a message
         when it detects events of the specified type.</p>")
  @as("QueueArn")
  queueArn: queueArn,
  @as("Id") id: option<notificationId>,
}
@ocaml.doc("<p>Describes the location where the restore job's output is stored.</p>")
type outputLocation = {
  @ocaml.doc(
    "<p>Describes an S3 location that will receive the results of the restore request.</p>"
  )
  @as("S3")
  s3: option<s3Location>,
}
@ocaml.doc("<p>Specifies a metrics configuration for the CloudWatch request metrics (specified by the
         metrics configuration ID) from an Amazon S3 bucket. If you're updating an existing metrics
         configuration, note that this is a full replacement of the existing metrics configuration.
         If you don't include the elements you want to keep, they are erased. For more information,
         see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html\"> PUT Bucket
            metrics</a> in the <i>Amazon S3 API Reference</i>.</p>")
type metricsConfiguration = {
  @ocaml.doc("<p>Specifies a metrics configuration filter. The metrics configuration will only include
         objects that meet the filter's criteria. A filter must be a prefix, a tag, or a conjunction
         (MetricsAndOperator).</p>")
  @as("Filter")
  filter: option<metricsFilter>,
  @ocaml.doc("<p>The ID used to identify the metrics configuration.</p>") @as("Id") id: metricsId,
}
@ocaml.doc("<p>A lifecycle rule for individual objects in an Amazon S3 bucket.</p>")
type lifecycleRule = {
  @as("AbortIncompleteMultipartUpload")
  abortIncompleteMultipartUpload: option<abortIncompleteMultipartUpload>,
  @as("NoncurrentVersionExpiration")
  noncurrentVersionExpiration: option<noncurrentVersionExpiration>,
  @ocaml.doc("<p> Specifies the transition rule for the lifecycle rule that describes when noncurrent
         objects transition to a specific storage class. If your bucket is versioning-enabled (or
         versioning is suspended), you can set this action to request that Amazon S3 transition
         noncurrent object versions to a specific storage class at a set period in the object's
         lifetime. </p>")
  @as("NoncurrentVersionTransitions")
  noncurrentVersionTransitions: option<noncurrentVersionTransitionList>,
  @ocaml.doc("<p>Specifies when an Amazon S3 object transitions to a specified storage class.</p>")
  @as("Transitions")
  transitions: option<transitionList>,
  @ocaml.doc("<p>If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not
         currently being applied.</p>")
  @as("Status")
  status: expirationStatus,
  @ocaml.doc("<p>The <code>Filter</code> is used to identify objects that a Lifecycle Rule applies to. A
         <code>Filter</code> must have exactly one of <code>Prefix</code>, <code>Tag</code>, or
         <code>And</code> specified. <code>Filter</code> is required if the <code>LifecycleRule</code>
         does not containt a <code>Prefix</code> element.</p>")
  @as("Filter")
  filter: option<lifecycleRuleFilter>,
  @ocaml.doc("<p>Prefix identifying one or more objects to which the rule applies. This is
         no longer used; use <code>Filter</code> instead.</p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("Prefix")
  prefix: option<prefix>,
  @ocaml.doc(
    "<p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>"
  )
  @as("ID")
  id: option<id>,
  @ocaml.doc("<p>Specifies the expiration for the lifecycle of the object in the form of date, days and,
         whether the object has a delete marker.</p>")
  @as("Expiration")
  expiration: option<lifecycleExpiration>,
}
@ocaml.doc("<p>A container for specifying the configuration for AWS Lambda notifications.</p>")
type lambdaFunctionConfiguration = {
  @as("Filter") filter: option<notificationConfigurationFilter>,
  @ocaml.doc("<p>The Amazon S3 bucket event for which to invoke the AWS Lambda function. For more information,
         see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html\">Supported
            Event Types</a> in the <i>Amazon S3 User Guide</i>.</p>")
  @as("Events")
  events: eventList,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Lambda function that Amazon S3 invokes when the
         specified event type occurs.</p>")
  @as("LambdaFunctionArn")
  lambdaFunctionArn: lambdaFunctionArn,
  @as("Id") id: option<notificationId>,
}
@ocaml.doc("<p>Specifies the inventory configuration for an Amazon S3 bucket. For more information, see
            <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html\">GET Bucket inventory</a> in the <i>Amazon S3 API Reference</i>.
      </p>")
type inventoryConfiguration = {
  @ocaml.doc("<p>Specifies the schedule for generating inventory results.</p>") @as("Schedule")
  schedule: inventorySchedule,
  @ocaml.doc("<p>Contains the optional fields that are included in the inventory results.</p>")
  @as("OptionalFields")
  optionalFields: option<inventoryOptionalFields>,
  @ocaml.doc("<p>Object versions to include in the inventory list. If set to <code>All</code>, the list
         includes all the object versions, which adds the version-related fields
            <code>VersionId</code>, <code>IsLatest</code>, and <code>DeleteMarker</code> to the
         list. If set to <code>Current</code>, the list does not contain these version-related
         fields.</p>")
  @as("IncludedObjectVersions")
  includedObjectVersions: inventoryIncludedObjectVersions,
  @ocaml.doc("<p>The ID used to identify the inventory configuration.</p>") @as("Id")
  id: inventoryId,
  @ocaml.doc("<p>Specifies an inventory filter. The inventory only includes objects that meet the
         filter's criteria.</p>")
  @as("Filter")
  filter: option<inventoryFilter>,
  @ocaml.doc("<p>Specifies whether the inventory is enabled or disabled. If set to <code>True</code>, an
         inventory list is generated. If set to <code>False</code>, no inventory list is
         generated.</p>")
  @as("IsEnabled")
  isEnabled: isEnabled,
  @ocaml.doc("<p>Contains information about where to publish the inventory results.</p>")
  @as("Destination")
  destination: inventoryDestination,
}
@ocaml.doc("<p>Specifies the S3 Intelligent-Tiering configuration for an Amazon S3 bucket.</p>
         <p>For information about the S3 Intelligent-Tiering storage class, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access\">Storage class for
            automatically optimizing frequently and infrequently accessed objects</a>.</p>")
type intelligentTieringConfiguration = {
  @ocaml.doc("<p>Specifies the S3 Intelligent-Tiering storage class tier of the configuration.</p>")
  @as("Tierings")
  tierings: tieringList,
  @ocaml.doc("<p>Specifies the status of the configuration.</p>") @as("Status")
  status: intelligentTieringStatus,
  @ocaml.doc("<p>Specifies a bucket filter. The configuration only includes objects that meet the
         filter's criteria.</p>")
  @as("Filter")
  filter: option<intelligentTieringFilter>,
  @ocaml.doc("<p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>") @as("Id")
  id: intelligentTieringId,
}
@ocaml.doc("<p>Container for logging status information.</p>")
type bucketLoggingStatus = {@as("LoggingEnabled") loggingEnabled: option<loggingEnabled>}
@ocaml.doc(
  "<p>Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.</p>"
)
type analyticsConfiguration = {
  @ocaml.doc("<p> Contains data related to access patterns to be collected and made available to analyze
         the tradeoffs between different storage classes. </p>")
  @as("StorageClassAnalysis")
  storageClassAnalysis: storageClassAnalysis,
  @ocaml.doc("<p>The filter used to describe a set of objects for analyses. A filter must have exactly
         one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided,
         all objects will be considered in any analysis.</p>")
  @as("Filter")
  filter: option<analyticsFilter>,
  @ocaml.doc("<p>The ID that identifies the analytics configuration.</p>") @as("Id")
  id: analyticsId,
}
type topicConfigurationList = array<topicConfiguration>
@ocaml.doc("<p>Container for restore job parameters.</p>")
type restoreRequest = {
  @ocaml.doc("<p>Describes the location where the restore job's output is stored.</p>")
  @as("OutputLocation")
  outputLocation: option<outputLocation>,
  @ocaml.doc("<p>Describes the parameters for Select job types.</p>") @as("SelectParameters")
  selectParameters: option<selectParameters>,
  @ocaml.doc("<p>The optional description for the job.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>Retrieval tier at which the restore will be processed.</p>") @as("Tier")
  tier: option<tier>,
  @ocaml.doc("<p>Type of restore request.</p>") @as("Type") type_: option<restoreRequestType>,
  @ocaml.doc("<p>S3 Glacier related parameters pertaining to this job. Do not use with restores that
         specify <code>OutputLocation</code>.</p>")
  @as("GlacierJobParameters")
  glacierJobParameters: option<glacierJobParameters>,
  @ocaml.doc("<p>Lifetime of the active copy in days. Do not use with restores that specify
            <code>OutputLocation</code>.</p>
         <p>The Days element is required for regular restores, and must not be provided for select
         requests.</p>")
  @as("Days")
  days: option<days>,
}
type replicationRules = array<replicationRule>
type queueConfigurationList = array<queueConfiguration>
type metricsConfigurationList = array<metricsConfiguration>
type lifecycleRules = array<lifecycleRule>
type lambdaFunctionConfigurationList = array<lambdaFunctionConfiguration>
type inventoryConfigurationList = array<inventoryConfiguration>
type intelligentTieringConfigurationList = array<intelligentTieringConfiguration>
type analyticsConfigurationList = array<analyticsConfiguration>
@ocaml.doc("<p>A container for replication rules. You can add up to 1,000 rules. The maximum size of a
         replication configuration is 2 MB.</p>")
type replicationConfiguration = {
  @ocaml.doc("<p>A container for one or more replication rules. A replication configuration must have at
         least one rule and can contain a maximum of 1,000 rules. </p>")
  @as("Rules")
  rules: replicationRules,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
         Amazon S3 assumes when replicating objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html\">How to Set Up
            Replication</a> in the <i>Amazon S3 User Guide</i>.</p>")
  @as("Role")
  role: role,
}
@ocaml.doc("<p>A container for specifying the notification configuration of the bucket. If this element
         is empty, notifications are turned off for the bucket.</p>")
type notificationConfiguration = {
  @ocaml.doc("<p>Describes the AWS Lambda functions to invoke and the events for which to invoke
         them.</p>")
  @as("LambdaFunctionConfigurations")
  lambdaFunctionConfigurations: option<lambdaFunctionConfigurationList>,
  @ocaml.doc("<p>The Amazon Simple Queue Service queues to publish messages to and the events for which
         to publish messages.</p>")
  @as("QueueConfigurations")
  queueConfigurations: option<queueConfigurationList>,
  @ocaml.doc("<p>The topic to which notifications are sent and the events for which notifications are
         generated.</p>")
  @as("TopicConfigurations")
  topicConfigurations: option<topicConfigurationList>,
}
@ocaml.doc("<p>Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more
         information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html\">Object Lifecycle Management</a>
         in the <i>Amazon S3 User Guide</i>.</p>")
type bucketLifecycleConfiguration = {
  @ocaml.doc("<p>A lifecycle rule for individual objects in an Amazon S3 bucket.</p>") @as("Rules")
  rules: lifecycleRules,
}
@ocaml.doc("<p></p>")
module UploadPart = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
         this header for a message integrity check to ensure that the encryption key was transmitted
         without error.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
         value is used to store the object and then it is discarded; Amazon S3 does not store the
         encryption key. The key must be appropriate for use with the algorithm specified in the
            <code>x-amz-server-side-encryption-customer-algorithm header</code>. This must be the
         same encryption key specified in the initiate multipart upload request.</p>")
    @as("SSECustomerKey")
    ssecustomerKey: option<ssecustomerKey>,
    @ocaml.doc("<p>Specifies the algorithm to use to when encrypting the object (for example,
         AES256).</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>Upload ID identifying the multipart upload whose part is being uploaded.</p>")
    @as("UploadId")
    uploadId: multipartUploadId,
    @ocaml.doc("<p>Part number of part being uploaded. This is a positive integer between 1 and
         10,000.</p>")
    @as("PartNumber")
    partNumber: partNumber,
    @ocaml.doc("<p>Object key for which the multipart upload was initiated.</p>") @as("Key")
    key: objectKey,
    @ocaml.doc("<p>The base64-encoded 128-bit MD5 digest of the part data. This parameter is auto-populated
         when using the command from the CLI. This parameter is required if object lock parameters
         are specified.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>Size of the body in bytes. This parameter is useful when the size of the body cannot be
         determined automatically.</p>")
    @as("ContentLength")
    contentLength: option<contentLength>,
    @ocaml.doc("<p>The name of the bucket to which the multipart upload was initiated.</p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>Object data.</p>") @as("Body") body: option<streamingBlob>,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc(
      "<p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).</p>"
    )
    @as("BucketKeyEnabled")
    bucketKeyEnabled: option<bucketKeyEnabled>,
    @ocaml.doc("<p>If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric
         customer managed customer master key (CMK) was used for the object.</p>")
    @as("SSEKMSKeyId")
    ssekmskeyId: option<ssekmskeyId>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header to provide round-trip message integrity verification of
         the customer-provided encryption key.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header confirming the encryption algorithm used.</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>Entity tag for the uploaded object.</p>") @as("ETag") etag: option<etag>,
    @ocaml.doc("<p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
         AES256, aws:kms).</p>")
    @as("ServerSideEncryption")
    serverSideEncryption: option<serverSideEncryption>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "UploadPartCommand"
  let make = (
    ~uploadId,
    ~partNumber,
    ~key,
    ~bucket,
    ~expectedBucketOwner=?,
    ~requestPayer=?,
    ~ssecustomerKeyMD5=?,
    ~ssecustomerKey=?,
    ~ssecustomerAlgorithm=?,
    ~contentMD5=?,
    ~contentLength=?,
    ~body=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      ssecustomerKeyMD5: ssecustomerKeyMD5,
      ssecustomerKey: ssecustomerKey,
      ssecustomerAlgorithm: ssecustomerAlgorithm,
      uploadId: uploadId,
      partNumber: partNumber,
      key: key,
      contentMD5: contentMD5,
      contentLength: contentLength,
      bucket: bucket,
      body: body,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The bucket policy as a JSON document.</p>") @as("Policy") policy: policy,
    @ocaml.doc("<p>Set this parameter to true to confirm that you want to remove your permissions to change
         this bucket policy in the future.</p>")
    @as("ConfirmRemoveSelfBucketAccess")
    confirmRemoveSelfBucketAccess: option<confirmRemoveSelfBucketAccess>,
    @ocaml.doc("<p>The MD5 hash of the request body.</p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>The name of the bucket.</p>") @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketPolicyCommand"
  let make = (
    ~policy,
    ~bucket,
    ~expectedBucketOwner=?,
    ~confirmRemoveSelfBucketAccess=?,
    ~contentMD5=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      policy: policy,
      confirmRemoveSelfBucketAccess: confirmRemoveSelfBucketAccess,
      contentMD5: contentMD5,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module HeadBucket = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The bucket name.</p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "HeadBucketCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetObjectTorrent = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>The object key for which to get the information.</p>") @as("Key") key: objectKey,
    @ocaml.doc(
      "<p>The name of the bucket containing the object for which to get the torrent files.</p>"
    )
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc("<p>A Bencoded dictionary as defined by the BitTorrent specification</p>")
    @as("Body")
    body: option<streamingBlob>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetObjectTorrentCommand"
  let make = (~key, ~bucket, ~expectedBucketOwner=?, ~requestPayer=?, ()) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketVersioning = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the bucket for which to get the versioning information.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Specifies whether MFA delete is enabled in the bucket versioning configuration. This
         element is only returned if the bucket has been configured with MFA delete. If the bucket
         has never been so configured, this element is not returned.</p>")
    @as("MFADelete")
    mfadelete: option<mfadeleteStatus>,
    @ocaml.doc("<p>The versioning state of the bucket.</p>") @as("Status")
    status: option<bucketVersioningStatus>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketVersioningCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketRequestPayment = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the bucket for which to get the payment request configuration</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Specifies who pays for the download and request fees.</p>") @as("Payer")
    payer: option<payer>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketRequestPaymentCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The bucket name for which to get the bucket policy.</p>") @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The bucket policy as a JSON document.</p>") @as("Policy") policy: option<policy>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketPolicyCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketLocation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the bucket for which to get the location.</p>") @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Specifies the Region where the bucket resides. For a list of all the Amazon S3 supported
         location constraints by Region, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region\">Regions and Endpoints</a>.
         Buckets in Region <code>us-east-1</code> have a LocationConstraint of
         <code>null</code>.</p>")
    @as("LocationConstraint")
    locationConstraint: option<bucketLocationConstraint>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketLocationCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketAccelerateConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the bucket for which the accelerate configuration is retrieved.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The accelerate configuration of the bucket.</p>") @as("Status")
    status: option<bucketAccelerateStatus>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketAccelerateConfigurationCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePublicAccessBlock = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want to delete.
      </p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeletePublicAccessBlockCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteObjectTagging = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The versionId of the object that the tag-set will be removed from.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc(
      "<p>The key that identifies the object in the bucket from which to remove all tags.</p>"
    )
    @as("Key")
    key: objectKey,
    @ocaml.doc("<p>The bucket name containing the objects from which to remove the tags. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The versionId of the object the tag-set was removed from.</p>") @as("VersionId")
    versionId: option<objectVersionId>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteObjectTaggingCommand"
  let make = (~key, ~bucket, ~expectedBucketOwner=?, ~versionId=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, versionId: versionId, key: key, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteObject = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Indicates whether S3 Object Lock should bypass Governance-mode restrictions to process
         this operation.</p>")
    @as("BypassGovernanceRetention")
    bypassGovernanceRetention: option<bypassGovernanceRetention>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>VersionId used to reference a specific version of the object.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>The concatenation of the authentication device's serial number, a space, and the value
         that is displayed on your authentication device. Required to permanently delete a versioned
         object if versioning is configured with MFA delete enabled.</p>")
    @as("MFA")
    mfa: option<mfa>,
    @ocaml.doc("<p>Key name of the object to delete.</p>") @as("Key") key: objectKey,
    @ocaml.doc("<p>The bucket name of the bucket containing the object. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc("<p>Returns the version ID of the delete marker created as a result of the DELETE
         operation.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>Specifies whether the versioned object that was permanently deleted was (true) or was
         not (false) a delete marker.</p>")
    @as("DeleteMarker")
    deleteMarker: option<deleteMarker>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteObjectCommand"
  let make = (
    ~key,
    ~bucket,
    ~expectedBucketOwner=?,
    ~bypassGovernanceRetention=?,
    ~requestPayer=?,
    ~versionId=?,
    ~mfa=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      bypassGovernanceRetention: bypassGovernanceRetention,
      requestPayer: requestPayer,
      versionId: versionId,
      mfa: mfa,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBucketWebsite = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The bucket name for which you want to remove the website configuration. </p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketWebsiteCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketTagging = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The bucket that has the tag set to be removed.</p>") @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketTaggingCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketReplication = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p> The bucket name. </p>") @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketReplicationCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The bucket name.</p>") @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketPolicyCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketOwnershipControls = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc(
      "<p>The Amazon S3 bucket whose <code>OwnershipControls</code> you want to delete. </p>"
    )
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteBucketOwnershipControlsCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketMetricsConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The ID used to identify the metrics configuration.</p>") @as("Id") id: metricsId,
    @ocaml.doc("<p>The name of the bucket containing the metrics configuration to delete.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteBucketMetricsConfigurationCommand"
  let make = (~id, ~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, id: id, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketLifecycle = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The bucket name of the lifecycle to delete.</p>") @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketLifecycleCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketInventoryConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The ID used to identify the inventory configuration.</p>") @as("Id")
    id: inventoryId,
    @ocaml.doc("<p>The name of the bucket containing the inventory configuration to delete.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteBucketInventoryConfigurationCommand"
  let make = (~id, ~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, id: id, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketIntelligentTieringConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>") @as("Id")
    id: intelligentTieringId,
    @ocaml.doc(
      "<p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>"
    )
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteBucketIntelligentTieringConfigurationCommand"
  let make = (~id, ~bucket, ()) => new({id: id, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketEncryption = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the bucket containing the server-side encryption configuration to
         delete.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketEncryptionCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketCors = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc(
      "<p>Specifies the bucket whose <code>cors</code> configuration is being deleted.</p>"
    )
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketCorsCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketAnalyticsConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The ID that identifies the analytics configuration.</p>") @as("Id")
    id: analyticsId,
    @ocaml.doc("<p>The name of the bucket from which an analytics configuration is deleted.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteBucketAnalyticsConfigurationCommand"
  let make = (~id, ~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, id: id, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucket = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Specifies the bucket being deleted.</p>") @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AbortMultipartUpload = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>Upload ID that identifies the multipart upload.</p>") @as("UploadId")
    uploadId: multipartUploadId,
    @ocaml.doc("<p>Key of the object for which the multipart upload was initiated.</p>") @as("Key")
    key: objectKey,
    @ocaml.doc("<p>The bucket name to which the upload was taking place. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {@as("RequestCharged") requestCharged: option<requestCharged>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "AbortMultipartUploadCommand"
  let make = (~uploadId, ~key, ~bucket, ~expectedBucketOwner=?, ~requestPayer=?, ()) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      uploadId: uploadId,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module WriteGetObjectResponse = {
  type t
  type request = {
    @ocaml.doc("<p> Indicates whether the object stored in Amazon S3 uses an S3 bucket key for server-side
         encryption with AWS KMS (SSE-KMS).</p>")
    @as("BucketKeyEnabled")
    bucketKeyEnabled: option<bucketKeyEnabled>,
    @ocaml.doc("<p>An ID used to reference a specific version of the object.</p>") @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>The number of tags, if any, on the object.</p>") @as("TagCount")
    tagCount: option<tagCount>,
    @ocaml.doc("<p> The class of storage used to store object in Amazon S3.</p>")
    @as("StorageClass")
    storageClass: option<storageClass>,
    @ocaml.doc("<p> 128-bit MD5 digest of customer-provided encryption key used in Amazon S3 to encrypt data
         stored in S3. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html\">Protecting data
            using server-side encryption with customer-provided encryption keys
         (SSE-C)</a>.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc(
      "<p> If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric customer managed customer master key (CMK) that was used for stored in Amazon S3 object. </p>"
    )
    @as("SSEKMSKeyId")
    ssekmskeyId: option<ssekmskeyId>,
    @ocaml.doc(
      "<p>Encryption algorithm used if server-side encryption with a customer-provided encryption key was specified for object stored in Amazon S3.</p>"
    )
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc(
      "<p> The server-side encryption algorithm used when storing requested object in Amazon S3 (for example, AES256, aws:kms).</p>"
    )
    @as("ServerSideEncryption")
    serverSideEncryption: option<serverSideEncryption>,
    @ocaml.doc("<p>Provides information about object restoration operation and expiration time of the
          restored object copy.</p>")
    @as("Restore")
    restore: option<restore>,
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc("<p>Indicates if request involves bucket that is either a source or destination in a Replication rule. For more
          information about S3 Replication, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html\">Replication</a>.</p>")
    @as("ReplicationStatus")
    replicationStatus: option<replicationStatus>,
    @ocaml.doc("<p>The count of parts this object has.</p>") @as("PartsCount")
    partsCount: option<partsCount>,
    @ocaml.doc("<p>The date and time when Object Lock is configured to expire.</p>")
    @as("ObjectLockRetainUntilDate")
    objectLockRetainUntilDate: option<objectLockRetainUntilDate>,
    @ocaml.doc("<p>Indicates whether an object stored in Amazon S3 has an active legal hold.</p>")
    @as("ObjectLockLegalHoldStatus")
    objectLockLegalHoldStatus: option<objectLockLegalHoldStatus>,
    @ocaml.doc("<p>Indicates whether an object stored in Amazon S3 has Object Lock enabled. For more
          information about S3 Object Lock, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html\">Object Lock</a>.</p>")
    @as("ObjectLockMode")
    objectLockMode: option<objectLockMode>,
    @ocaml.doc("<p>A map of metadata to store with the object in S3.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>Set to the number of metadata entries not returned in <code>x-amz-meta</code> headers.
         This can happen if you create metadata using an API like SOAP that supports more flexible
         metadata than the REST API. For example, using SOAP, you can create metadata whose values
         are not legal HTTP headers.</p>")
    @as("MissingMeta")
    missingMeta: option<missingMeta>,
    @ocaml.doc("<p>The date and time that the object was last modified.</p>") @as("LastModified")
    lastModified: option<lastModified>,
    @ocaml.doc(
      "<p>If object stored in Amazon S3 expiration is configured (see PUT Bucket lifecycle) it includes expiry-date and rule-id key-value pairs providing object expiration information. The value of the rule-id is URL encoded. </p>"
    )
    @as("Expiration")
    expiration: option<expiration>,
    @ocaml.doc("<p>The date and time at which the object is no longer cacheable.</p>")
    @as("Expires")
    expires: option<expires>,
    @ocaml.doc("<p>An opaque identifier assigned by a web server to a specific version of a resource found
         at a URL. </p>")
    @as("ETag")
    etag: option<etag>,
    @ocaml.doc("<p>Specifies whether an object stored in Amazon S3 is (<code>true</code>) or is not
            (<code>false</code>) a delete marker. </p>")
    @as("DeleteMarker")
    deleteMarker: option<deleteMarker>,
    @ocaml.doc("<p>A standard MIME type describing the format of the object data.</p>")
    @as("ContentType")
    contentType: option<contentType>,
    @ocaml.doc("<p>The portion of the object returned in the response.</p>") @as("ContentRange")
    contentRange: option<contentRange>,
    @ocaml.doc("<p>The size of the content body in bytes.</p>") @as("ContentLength")
    contentLength: option<contentLength>,
    @ocaml.doc("<p>The language the content is in.</p>") @as("ContentLanguage")
    contentLanguage: option<contentLanguage>,
    @ocaml.doc("<p>Specifies what content encodings have been applied to the object and thus what decoding
          mechanisms must be applied to obtain the media-type referenced by the Content-Type header
          field.</p>")
    @as("ContentEncoding")
    contentEncoding: option<contentEncoding>,
    @ocaml.doc("<p>Specifies presentational information for the object.</p>")
    @as("ContentDisposition")
    contentDisposition: option<contentDisposition>,
    @ocaml.doc("<p>Specifies caching behavior along the request/reply chain.</p>")
    @as("CacheControl")
    cacheControl: option<cacheControl>,
    @ocaml.doc("<p>Indicates that a range of bytes was specified.</p>") @as("AcceptRanges")
    acceptRanges: option<acceptRanges>,
    @ocaml.doc("<p>Contains a generic description of the error condition. Returned in the <Message>
         tag of the error XML response for a corresponding <code>GetObject</code> call. Cannot be
         used with a successful <code>StatusCode</code> header or when the transformed object is
         provided in body.</p>")
    @as("ErrorMessage")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>A string that uniquely identifies an error condition. Returned in the <Code> tag
         of the error XML response for a corresponding <code>GetObject</code> call. Cannot be used
         with a successful <code>StatusCode</code> header or when the transformed object is provided
          in the body. All error codes from S3 are sentence-cased. Regex value is \"^[A-Z][a-zA-Z]+$\".</p>")
    @as("ErrorCode")
    errorCode: option<errorCode>,
    @ocaml.doc("<p>The integer status code for an HTTP response of a corresponding <code>GetObject</code>
         request.</p>
             <p class=\"title\">
            <b>Status Codes</b>
         </p>
         <ul>
            <li>
                   <p>
                  <i>200 - OK</i>
               </p>
                </li>
            <li>
                   <p>
                  <i>206 - Partial Content</i>
               </p>
                </li>
            <li>
                   <p>
                  <i>304 - Not Modified</i>
               </p>
                </li>
            <li>
                   <p>
                  <i>400 - Bad Request</i>
                   </p>
                </li>
            <li>
                   <p>
                  <i>401 - Unauthorized</i>
                   </p>
                </li>
            <li>
                   <p>
                  <i>403 - Forbidden</i>
                   </p>
                </li>
            <li>
                   <p>
                  <i>404 - Not Found</i>
                   </p>
                </li>
            <li>
                   <p>
                  <i>405 - Method Not Allowed</i>
                   </p>
                </li>
            <li>
                   <p>
                  <i>409 - Conflict</i>
                   </p>
                </li>
            <li>
                   <p>
                  <i>411 - Length Required</i>
                   </p>
                </li>
            <li>
                   <p>
                  <i>412 - Precondition Failed</i>
                   </p>
                </li>
            <li>
                   <p>
                  <i>416 - Range Not Satisfiable</i>
                   </p>
                </li>
            <li>
                   <p>
                  <i>500 - Internal Server Error</i>
                   </p>
                </li>
            <li>
                   <p>
                  <i>503 - Service Unavailable</i>
                   </p>
                </li>
         </ul>")
    @as("StatusCode")
    statusCode: option<getObjectResponseStatusCode>,
    @ocaml.doc("<p>The object data.</p>") @as("Body") body: option<streamingBlob>,
    @ocaml.doc("<p>A single use encrypted token that maps <code>WriteGetObjectResponse</code> to the end
         user <code>GetObject</code> request.</p>")
    @as("RequestToken")
    requestToken: requestToken,
    @ocaml.doc("<p>Route prefix to the HTTP URL generated.</p>") @as("RequestRoute")
    requestRoute: requestRoute,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "WriteGetObjectResponseCommand"
  let make = (
    ~requestToken,
    ~requestRoute,
    ~bucketKeyEnabled=?,
    ~versionId=?,
    ~tagCount=?,
    ~storageClass=?,
    ~ssecustomerKeyMD5=?,
    ~ssekmskeyId=?,
    ~ssecustomerAlgorithm=?,
    ~serverSideEncryption=?,
    ~restore=?,
    ~requestCharged=?,
    ~replicationStatus=?,
    ~partsCount=?,
    ~objectLockRetainUntilDate=?,
    ~objectLockLegalHoldStatus=?,
    ~objectLockMode=?,
    ~metadata=?,
    ~missingMeta=?,
    ~lastModified=?,
    ~expiration=?,
    ~expires=?,
    ~etag=?,
    ~deleteMarker=?,
    ~contentType=?,
    ~contentRange=?,
    ~contentLength=?,
    ~contentLanguage=?,
    ~contentEncoding=?,
    ~contentDisposition=?,
    ~cacheControl=?,
    ~acceptRanges=?,
    ~errorMessage=?,
    ~errorCode=?,
    ~statusCode=?,
    ~body=?,
    (),
  ) =>
    new({
      bucketKeyEnabled: bucketKeyEnabled,
      versionId: versionId,
      tagCount: tagCount,
      storageClass: storageClass,
      ssecustomerKeyMD5: ssecustomerKeyMD5,
      ssekmskeyId: ssekmskeyId,
      ssecustomerAlgorithm: ssecustomerAlgorithm,
      serverSideEncryption: serverSideEncryption,
      restore: restore,
      requestCharged: requestCharged,
      replicationStatus: replicationStatus,
      partsCount: partsCount,
      objectLockRetainUntilDate: objectLockRetainUntilDate,
      objectLockLegalHoldStatus: objectLockLegalHoldStatus,
      objectLockMode: objectLockMode,
      metadata: metadata,
      missingMeta: missingMeta,
      lastModified: lastModified,
      expiration: expiration,
      expires: expires,
      etag: etag,
      deleteMarker: deleteMarker,
      contentType: contentType,
      contentRange: contentRange,
      contentLength: contentLength,
      contentLanguage: contentLanguage,
      contentEncoding: contentEncoding,
      contentDisposition: contentDisposition,
      cacheControl: cacheControl,
      acceptRanges: acceptRanges,
      errorMessage: errorMessage,
      errorCode: errorCode,
      statusCode: statusCode,
      body: body,
      requestToken: requestToken,
      requestRoute: requestRoute,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UploadPartCopy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected source bucket owner. If the source bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedSourceBucketOwner")
    expectedSourceBucketOwner: option<accountId>,
    @ocaml.doc(
      "<p>The account ID of the expected destination bucket owner. If the destination bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
         this header for a message integrity check to ensure that the encryption key was transmitted
         without error.</p>")
    @as("CopySourceSSECustomerKeyMD5")
    copySourceSSECustomerKeyMD5: option<copySourceSSECustomerKeyMD5>,
    @ocaml.doc("<p>Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source
         object. The encryption key provided in this header must be one that was used when the
         source object was created.</p>")
    @as("CopySourceSSECustomerKey")
    copySourceSSECustomerKey: option<copySourceSSECustomerKey>,
    @ocaml.doc("<p>Specifies the algorithm to use when decrypting the source object (for example,
         AES256).</p>")
    @as("CopySourceSSECustomerAlgorithm")
    copySourceSSECustomerAlgorithm: option<copySourceSSECustomerAlgorithm>,
    @ocaml.doc("<p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
         this header for a message integrity check to ensure that the encryption key was transmitted
         without error.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
         value is used to store the object and then it is discarded; Amazon S3 does not store the
         encryption key. The key must be appropriate for use with the algorithm specified in the
            <code>x-amz-server-side-encryption-customer-algorithm</code> header. This must be the
         same encryption key specified in the initiate multipart upload request.</p>")
    @as("SSECustomerKey")
    ssecustomerKey: option<ssecustomerKey>,
    @ocaml.doc("<p>Specifies the algorithm to use to when encrypting the object (for example,
         AES256).</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>Upload ID identifying the multipart upload whose part is being copied.</p>")
    @as("UploadId")
    uploadId: multipartUploadId,
    @ocaml.doc("<p>Part number of part being copied. This is a positive integer between 1 and
         10,000.</p>")
    @as("PartNumber")
    partNumber: partNumber,
    @ocaml.doc("<p>Object key for which the multipart upload was initiated.</p>") @as("Key")
    key: objectKey,
    @ocaml.doc("<p>The range of bytes to copy from the source object. The range value must use the form
         bytes=first-last, where the first and last are the zero-based byte offsets to copy. For
         example, bytes=0-9 indicates that you want to copy the first 10 bytes of the source. You
         can copy a range only if the source object is greater than 5 MB.</p>")
    @as("CopySourceRange")
    copySourceRange: option<copySourceRange>,
    @ocaml.doc("<p>Copies the object if it hasn't been modified since the specified time.</p>")
    @as("CopySourceIfUnmodifiedSince")
    copySourceIfUnmodifiedSince: option<copySourceIfUnmodifiedSince>,
    @ocaml.doc(
      "<p>Copies the object if its entity tag (ETag) is different than the specified ETag.</p>"
    )
    @as("CopySourceIfNoneMatch")
    copySourceIfNoneMatch: option<copySourceIfNoneMatch>,
    @ocaml.doc("<p>Copies the object if it has been modified since the specified time.</p>")
    @as("CopySourceIfModifiedSince")
    copySourceIfModifiedSince: option<copySourceIfModifiedSince>,
    @ocaml.doc("<p>Copies the object if its entity tag (ETag) matches the specified tag.</p>")
    @as("CopySourceIfMatch")
    copySourceIfMatch: option<copySourceIfMatch>,
    @ocaml.doc("<p>Specifies the source object for the copy operation. You specify the value in one of two
         formats, depending on whether you want to access the source object through an <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html\">access point</a>:</p>
         <ul>
            <li>
               <p>For objects not accessed through an access point, specify the name of the source
               bucket and key of the source object, separated by a slash (/). For example, to copy
               the object <code>reports/january.pdf</code> from the bucket
                  <code>awsexamplebucket</code>, use
                  <code>awsexamplebucket/reports/january.pdf</code>. The value must be URL
               encoded.</p>
            </li>
            <li> 
               <p>For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format <code>arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through access point <code>my-access-point</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf</code>. The value must be URL encoded.</p> 
               <note>
                  <p>Amazon S3 supports copy operations using access points only when the source and destination buckets are in the same AWS Region.</p>
               </note> 
               <p>Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf</code>. The value must be URL encoded.  </p> 
            </li>
         </ul>
         <p>To copy a specific version of an object, append <code>?versionId=<version-id></code>
         to the value (for example,
            <code>awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893</code>).
         If you don't specify a version ID, Amazon S3 copies the latest version of the source
         object.</p>")
    @as("CopySource")
    copySource: copySource,
    @ocaml.doc("<p>The bucket name.</p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc(
      "<p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).</p>"
    )
    @as("BucketKeyEnabled")
    bucketKeyEnabled: option<bucketKeyEnabled>,
    @ocaml.doc("<p>If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric
         customer managed customer master key (CMK) that was used for the object.</p>")
    @as("SSEKMSKeyId")
    ssekmskeyId: option<ssekmskeyId>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header to provide round-trip message integrity verification of
         the customer-provided encryption key.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header confirming the encryption algorithm used.</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
         AES256, aws:kms).</p>")
    @as("ServerSideEncryption")
    serverSideEncryption: option<serverSideEncryption>,
    @ocaml.doc("<p>Container for all response elements.</p>") @as("CopyPartResult")
    copyPartResult: option<copyPartResult>,
    @ocaml.doc("<p>The version of the source object that was copied, if you have enabled versioning on the
         source bucket.</p>")
    @as("CopySourceVersionId")
    copySourceVersionId: option<copySourceVersionId>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "UploadPartCopyCommand"
  let make = (
    ~uploadId,
    ~partNumber,
    ~key,
    ~copySource,
    ~bucket,
    ~expectedSourceBucketOwner=?,
    ~expectedBucketOwner=?,
    ~requestPayer=?,
    ~copySourceSSECustomerKeyMD5=?,
    ~copySourceSSECustomerKey=?,
    ~copySourceSSECustomerAlgorithm=?,
    ~ssecustomerKeyMD5=?,
    ~ssecustomerKey=?,
    ~ssecustomerAlgorithm=?,
    ~copySourceRange=?,
    ~copySourceIfUnmodifiedSince=?,
    ~copySourceIfNoneMatch=?,
    ~copySourceIfModifiedSince=?,
    ~copySourceIfMatch=?,
    (),
  ) =>
    new({
      expectedSourceBucketOwner: expectedSourceBucketOwner,
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      copySourceSSECustomerKeyMD5: copySourceSSECustomerKeyMD5,
      copySourceSSECustomerKey: copySourceSSECustomerKey,
      copySourceSSECustomerAlgorithm: copySourceSSECustomerAlgorithm,
      ssecustomerKeyMD5: ssecustomerKeyMD5,
      ssecustomerKey: ssecustomerKey,
      ssecustomerAlgorithm: ssecustomerAlgorithm,
      uploadId: uploadId,
      partNumber: partNumber,
      key: key,
      copySourceRange: copySourceRange,
      copySourceIfUnmodifiedSince: copySourceIfUnmodifiedSince,
      copySourceIfNoneMatch: copySourceIfNoneMatch,
      copySourceIfModifiedSince: copySourceIfModifiedSince,
      copySourceIfMatch: copySourceIfMatch,
      copySource: copySource,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutPublicAccessBlock = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
         bucket. You can enable the configuration options in any combination. For more information
         about when Amazon S3 considers a bucket or object public, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status\">The Meaning of \"Public\"</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: publicAccessBlockConfiguration,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The MD5 hash of the <code>PutPublicAccessBlock</code> request body. </p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>The name of the Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want
         to set.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutPublicAccessBlockCommand"
  let make = (
    ~publicAccessBlockConfiguration,
    ~bucket,
    ~expectedBucketOwner=?,
    ~contentMD5=?,
    (),
  ) =>
    new({
      publicAccessBlockConfiguration: publicAccessBlockConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      contentMD5: contentMD5,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutObjectRetention = {
  type t
  type request = {
    @ocaml.doc("<p>The container element for the Object Retention configuration.</p>")
    @as("Retention")
    retention: option<objectLockRetention>,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The MD5 hash for the request body.</p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>Indicates whether this action should bypass Governance-mode restrictions.</p>")
    @as("BypassGovernanceRetention")
    bypassGovernanceRetention: option<bypassGovernanceRetention>,
    @ocaml.doc("<p>The version ID for the object that you want to apply this Object Retention configuration
         to.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>The key name for the object that you want to apply this Object Retention configuration
         to.</p>")
    @as("Key")
    key: objectKey,
    @ocaml.doc("<p>The bucket name that contains the object you want to apply this Object Retention
         configuration to. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {@as("RequestCharged") requestCharged: option<requestCharged>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutObjectRetentionCommand"
  let make = (
    ~key,
    ~bucket,
    ~retention=?,
    ~expectedBucketOwner=?,
    ~contentMD5=?,
    ~bypassGovernanceRetention=?,
    ~versionId=?,
    ~requestPayer=?,
    (),
  ) =>
    new({
      retention: retention,
      expectedBucketOwner: expectedBucketOwner,
      contentMD5: contentMD5,
      bypassGovernanceRetention: bypassGovernanceRetention,
      versionId: versionId,
      requestPayer: requestPayer,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutObjectLegalHold = {
  type t
  type request = {
    @ocaml.doc("<p>Container element for the Legal Hold configuration you want to apply to the specified
         object.</p>")
    @as("LegalHold")
    legalHold: option<objectLockLegalHold>,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The MD5 hash for the request body.</p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>The version ID of the object that you want to place a Legal Hold on.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>The key name for the object that you want to place a Legal Hold on.</p>")
    @as("Key")
    key: objectKey,
    @ocaml.doc("<p>The bucket name containing the object that you want to place a Legal Hold on. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {@as("RequestCharged") requestCharged: option<requestCharged>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutObjectLegalHoldCommand"
  let make = (
    ~key,
    ~bucket,
    ~legalHold=?,
    ~expectedBucketOwner=?,
    ~contentMD5=?,
    ~versionId=?,
    ~requestPayer=?,
    (),
  ) =>
    new({
      legalHold: legalHold,
      expectedBucketOwner: expectedBucketOwner,
      contentMD5: contentMD5,
      versionId: versionId,
      requestPayer: requestPayer,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutObject = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Specifies whether a legal hold will be applied to this object. For more information
         about S3 Object Lock, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html\">Object
         Lock</a>.</p>")
    @as("ObjectLockLegalHoldStatus")
    objectLockLegalHoldStatus: option<objectLockLegalHoldStatus>,
    @ocaml.doc("<p>The date and time when you want this object's Object Lock to expire. Must be formatted
         as a timestamp parameter.</p>")
    @as("ObjectLockRetainUntilDate")
    objectLockRetainUntilDate: option<objectLockRetainUntilDate>,
    @ocaml.doc("<p>The Object Lock mode that you want to apply to this object.</p>")
    @as("ObjectLockMode")
    objectLockMode: option<objectLockMode>,
    @ocaml.doc("<p>The tag-set for the object. The tag-set must be encoded as URL Query parameters. (For
         example, \"Key1=Value1\")</p>")
    @as("Tagging")
    tagging: option<taggingHeader>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption using AWS KMS (SSE-KMS). Setting this header to <code>true</code> causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.</p>
         <p>Specifying this header with a PUT action doesn’t affect bucket-level settings for S3 Bucket Key.</p>")
    @as("BucketKeyEnabled")
    bucketKeyEnabled: option<bucketKeyEnabled>,
    @ocaml.doc("<p>Specifies the AWS KMS Encryption Context to use for object encryption. The value of this
         header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value
         pairs.</p>")
    @as("SSEKMSEncryptionContext")
    ssekmsencryptionContext: option<ssekmsencryptionContext>,
    @ocaml.doc("<p>If <code>x-amz-server-side-encryption</code> is present and has the value of
         <code>aws:kms</code>, this header specifies the ID of the AWS Key Management Service
         (AWS KMS) symmetrical customer managed customer master key (CMK) that was used for the
         object. If you specify <code>x-amz-server-side-encryption:aws:kms</code>, but do not
         provide<code> x-amz-server-side-encryption-aws-kms-key-id</code>, Amazon S3 uses the AWS
         managed CMK in AWS to protect the data. If the KMS key does not exist in the same account
         issuing the command, you must use the full ARN and not just the ID.
      </p>")
    @as("SSEKMSKeyId")
    ssekmskeyId: option<ssekmskeyId>,
    @ocaml.doc("<p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
         this header for a message integrity check to ensure that the encryption key was transmitted
         without error.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
         value is used to store the object and then it is discarded; Amazon S3 does not store the
         encryption key. The key must be appropriate for use with the algorithm specified in the
            <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>")
    @as("SSECustomerKey")
    ssecustomerKey: option<ssecustomerKey>,
    @ocaml.doc("<p>Specifies the algorithm to use to when encrypting the object (for example,
         AES256).</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>If the bucket is configured as a website, redirects requests for this object to another
         object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
         the object metadata. For information about object metadata, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html\">Object Key and Metadata</a>.</p>

         <p>In the following example, the request header sets the redirect to an object
         (anotherPage.html) in the same bucket:</p>

         <p>
            <code>x-amz-website-redirect-location: /anotherPage.html</code>
         </p>

         <p>In the following example, the request header sets the object redirect to another
         website:</p>

         <p>
            <code>x-amz-website-redirect-location: http://www.example.com/</code>
         </p>

         <p>For more information about website hosting in Amazon S3, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html\">Hosting Websites on Amazon S3</a> and <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html\">How to Configure Website Page
            Redirects</a>. </p>")
    @as("WebsiteRedirectLocation")
    websiteRedirectLocation: option<websiteRedirectLocation>,
    @ocaml.doc("<p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The
         STANDARD storage class provides high durability and high availability. Depending on
         performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses
         the OUTPOSTS Storage Class. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html\">Storage Classes</a> in the
         <i>Amazon S3 User Guide</i>.</p>")
    @as("StorageClass")
    storageClass: option<storageClass>,
    @ocaml.doc("<p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
         AES256, aws:kms).</p>")
    @as("ServerSideEncryption")
    serverSideEncryption: option<serverSideEncryption>,
    @ocaml.doc("<p>A map of metadata to store with the object in S3.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>Object key for which the PUT action was initiated.</p>") @as("Key")
    key: objectKey,
    @ocaml.doc("<p>Allows grantee to write the ACL for the applicable
      object.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantWriteACP")
    grantWriteACP: option<grantWriteACP>,
    @ocaml.doc("<p>Allows grantee to read the object ACL.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantReadACP")
    grantReadACP: option<grantReadACP>,
    @ocaml.doc("<p>Allows grantee to read the object data and its
      metadata.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantRead")
    grantRead: option<grantRead>,
    @ocaml.doc("<p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the
      object.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantFullControl")
    grantFullControl: option<grantFullControl>,
    @ocaml.doc("<p>The date and time at which the object is no longer cacheable. For more information, see
            <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.21\">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.21</a>.</p>")
    @as("Expires")
    expires: option<expires>,
    @ocaml.doc("<p>A standard MIME type describing the format of the contents. For more information, see
            <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17\">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17</a>.</p>")
    @as("ContentType")
    contentType: option<contentType>,
    @ocaml.doc("<p>The base64-encoded 128-bit MD5 digest of the message (without the headers) according to
         RFC 1864. This header can be used as a message integrity check to verify that the data is
         the same data that was originally sent. Although it is optional, we recommend using the
         Content-MD5 mechanism as an end-to-end integrity check. For more information about REST
         request authentication, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html\">REST
            Authentication</a>.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>Size of the body in bytes. This parameter is useful when the size of the body cannot be
         determined automatically. For more information, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.13\">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.13</a>.</p>")
    @as("ContentLength")
    contentLength: option<contentLength>,
    @ocaml.doc("<p>The language the content is in.</p>") @as("ContentLanguage")
    contentLanguage: option<contentLanguage>,
    @ocaml.doc("<p>Specifies what content encodings have been applied to the object and thus what decoding
         mechanisms must be applied to obtain the media-type referenced by the Content-Type header
         field. For more information, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11\">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11</a>.</p>")
    @as("ContentEncoding")
    contentEncoding: option<contentEncoding>,
    @ocaml.doc(
      "<p>Specifies presentational information for the object. For more information, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1\">http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1</a>.</p>"
    )
    @as("ContentDisposition")
    contentDisposition: option<contentDisposition>,
    @ocaml.doc("<p> Can be used to specify caching behavior along the request/reply chain. For more
         information, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9\">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p>")
    @as("CacheControl")
    cacheControl: option<cacheControl>,
    @ocaml.doc("<p>The bucket name to which the PUT action was initiated. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>Object data.</p>") @as("Body") body: option<streamingBlob>,
    @ocaml.doc("<p>The canned ACL to apply to the object. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL\">Canned
      ACL</a>.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("ACL")
    acl: option<objectCannedACL>,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc(
      "<p>Indicates whether the uploaded object uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).</p>"
    )
    @as("BucketKeyEnabled")
    bucketKeyEnabled: option<bucketKeyEnabled>,
    @ocaml.doc("<p>If present, specifies the AWS KMS Encryption Context to use for object encryption. The
         value of this header is a base64-encoded UTF-8 string holding JSON with the encryption
         context key-value pairs.</p>")
    @as("SSEKMSEncryptionContext")
    ssekmsencryptionContext: option<ssekmsencryptionContext>,
    @ocaml.doc("<p>If <code>x-amz-server-side-encryption</code> is present and has the value of
            <code>aws:kms</code>, this header specifies the ID of the AWS Key Management Service
         (AWS KMS) symmetric customer managed customer master key (CMK) that was used for the
         object. </p>")
    @as("SSEKMSKeyId")
    ssekmskeyId: option<ssekmskeyId>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header to provide round-trip message integrity verification of
         the customer-provided encryption key.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header confirming the encryption algorithm used.</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>Version of the object.</p>") @as("VersionId") versionId: option<objectVersionId>,
    @ocaml.doc("<p>If you specified server-side encryption either with an AWS KMS customer master key (CMK)
         or Amazon S3-managed encryption key in your PUT request, the response includes this header. It
         confirms the encryption algorithm that Amazon S3 used to encrypt the object.</p>")
    @as("ServerSideEncryption")
    serverSideEncryption: option<serverSideEncryption>,
    @ocaml.doc("<p>Entity tag for the uploaded object.</p>") @as("ETag") etag: option<etag>,
    @ocaml.doc("<p> If the expiration is configured for the object (see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html\">PutBucketLifecycleConfiguration</a>), the response includes this header. It
         includes the expiry-date and rule-id key-value pairs that provide information about object
         expiration. The value of the rule-id is URL encoded.</p>")
    @as("Expiration")
    expiration: option<expiration>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutObjectCommand"
  let make = (
    ~key,
    ~bucket,
    ~expectedBucketOwner=?,
    ~objectLockLegalHoldStatus=?,
    ~objectLockRetainUntilDate=?,
    ~objectLockMode=?,
    ~tagging=?,
    ~requestPayer=?,
    ~bucketKeyEnabled=?,
    ~ssekmsencryptionContext=?,
    ~ssekmskeyId=?,
    ~ssecustomerKeyMD5=?,
    ~ssecustomerKey=?,
    ~ssecustomerAlgorithm=?,
    ~websiteRedirectLocation=?,
    ~storageClass=?,
    ~serverSideEncryption=?,
    ~metadata=?,
    ~grantWriteACP=?,
    ~grantReadACP=?,
    ~grantRead=?,
    ~grantFullControl=?,
    ~expires=?,
    ~contentType=?,
    ~contentMD5=?,
    ~contentLength=?,
    ~contentLanguage=?,
    ~contentEncoding=?,
    ~contentDisposition=?,
    ~cacheControl=?,
    ~body=?,
    ~acl=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      objectLockLegalHoldStatus: objectLockLegalHoldStatus,
      objectLockRetainUntilDate: objectLockRetainUntilDate,
      objectLockMode: objectLockMode,
      tagging: tagging,
      requestPayer: requestPayer,
      bucketKeyEnabled: bucketKeyEnabled,
      ssekmsencryptionContext: ssekmsencryptionContext,
      ssekmskeyId: ssekmskeyId,
      ssecustomerKeyMD5: ssecustomerKeyMD5,
      ssecustomerKey: ssecustomerKey,
      ssecustomerAlgorithm: ssecustomerAlgorithm,
      websiteRedirectLocation: websiteRedirectLocation,
      storageClass: storageClass,
      serverSideEncryption: serverSideEncryption,
      metadata: metadata,
      key: key,
      grantWriteACP: grantWriteACP,
      grantReadACP: grantReadACP,
      grantRead: grantRead,
      grantFullControl: grantFullControl,
      expires: expires,
      contentType: contentType,
      contentMD5: contentMD5,
      contentLength: contentLength,
      contentLanguage: contentLanguage,
      contentEncoding: contentEncoding,
      contentDisposition: contentDisposition,
      cacheControl: cacheControl,
      bucket: bucket,
      body: body,
      acl: acl,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketVersioning = {
  type t
  type request = {
    @ocaml.doc("<p>Container for setting the versioning state.</p>") @as("VersioningConfiguration")
    versioningConfiguration: versioningConfiguration,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The concatenation of the authentication device's serial number, a space, and the value
         that is displayed on your authentication device.</p>")
    @as("MFA")
    mfa: option<mfa>,
    @ocaml.doc("<p>>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a
         message integrity check to verify that the request body was not corrupted in transit. For
         more information, see <a href=\"http://www.ietf.org/rfc/rfc1864.txt\">RFC
         1864</a>.</p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>The bucket name.</p>") @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketVersioningCommand"
  let make = (
    ~versioningConfiguration,
    ~bucket,
    ~expectedBucketOwner=?,
    ~mfa=?,
    ~contentMD5=?,
    (),
  ) =>
    new({
      versioningConfiguration: versioningConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      mfa: mfa,
      contentMD5: contentMD5,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketRequestPayment = {
  type t
  type request = {
    @ocaml.doc("<p>Container for Payer.</p>") @as("RequestPaymentConfiguration")
    requestPaymentConfiguration: requestPaymentConfiguration,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a
         message integrity check to verify that the request body was not corrupted in transit. For
         more information, see <a href=\"http://www.ietf.org/rfc/rfc1864.txt\">RFC
         1864</a>.</p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>The bucket name.</p>") @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketRequestPaymentCommand"
  let make = (~requestPaymentConfiguration, ~bucket, ~expectedBucketOwner=?, ~contentMD5=?, ()) =>
    new({
      requestPaymentConfiguration: requestPaymentConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      contentMD5: contentMD5,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketAccelerateConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Container for setting the transfer acceleration state.</p>")
    @as("AccelerateConfiguration")
    accelerateConfiguration: accelerateConfiguration,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the bucket for which the accelerate configuration is set.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketAccelerateConfigurationCommand"
  let make = (~accelerateConfiguration, ~bucket, ~expectedBucketOwner=?, ()) =>
    new({
      accelerateConfiguration: accelerateConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module HeadObject = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Part number of the object being read. This is a positive integer between 1 and 10,000.
         Effectively performs a 'ranged' HEAD request for the part specified. Useful querying about
         the size of the part and the number of parts in this object.</p>")
    @as("PartNumber")
    partNumber: option<partNumber>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
         this header for a message integrity check to ensure that the encryption key was transmitted
         without error.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
         value is used to store the object and then it is discarded; Amazon S3 does not store the
         encryption key. The key must be appropriate for use with the algorithm specified in the
            <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>")
    @as("SSECustomerKey")
    ssecustomerKey: option<ssecustomerKey>,
    @ocaml.doc("<p>Specifies the algorithm to use to when encrypting the object (for example,
         AES256).</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>VersionId used to reference a specific version of the object.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>Downloads the specified range bytes of an object. For more information about the HTTP
         Range header, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35\">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35</a>.</p>
         <note>
            <p>Amazon S3 doesn't support retrieving multiple ranges of data per <code>GET</code>
            request.</p>
         </note>")
    @as("Range")
    range: option<range>,
    @ocaml.doc("<p>The object key.</p>") @as("Key") key: objectKey,
    @ocaml.doc("<p>Return the object only if it has not been modified since the specified time, otherwise
         return a 412 (precondition failed).</p>")
    @as("IfUnmodifiedSince")
    ifUnmodifiedSince: option<ifUnmodifiedSince>,
    @ocaml.doc("<p>Return the object only if its entity tag (ETag) is different from the one specified,
         otherwise return a 304 (not modified).</p>")
    @as("IfNoneMatch")
    ifNoneMatch: option<ifNoneMatch>,
    @ocaml.doc("<p>Return the object only if it has been modified since the specified time, otherwise
         return a 304 (not modified).</p>")
    @as("IfModifiedSince")
    ifModifiedSince: option<ifModifiedSince>,
    @ocaml.doc("<p>Return the object only if its entity tag (ETag) is the same as the one specified,
         otherwise return a 412 (precondition failed).</p>")
    @as("IfMatch")
    ifMatch: option<ifMatch>,
    @ocaml.doc("<p>The name of the bucket containing the object.</p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Specifies whether a legal hold is in effect for this object. This header is only
         returned if the requester has the <code>s3:GetObjectLegalHold</code> permission. This
         header is not returned if the specified version of this object has never had a legal hold
         applied. For more information about S3 Object Lock, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html\">Object Lock</a>.</p>")
    @as("ObjectLockLegalHoldStatus")
    objectLockLegalHoldStatus: option<objectLockLegalHoldStatus>,
    @ocaml.doc("<p>The date and time when the Object Lock retention period expires. This header is only
         returned if the requester has the <code>s3:GetObjectRetention</code> permission.</p>")
    @as("ObjectLockRetainUntilDate")
    objectLockRetainUntilDate: option<objectLockRetainUntilDate>,
    @ocaml.doc("<p>The Object Lock mode, if any, that's in effect for this object. This header is only
         returned if the requester has the <code>s3:GetObjectRetention</code> permission. For more
         information about S3 Object Lock, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html\">Object
            Lock</a>. </p>")
    @as("ObjectLockMode")
    objectLockMode: option<objectLockMode>,
    @ocaml.doc("<p>The count of parts this object has.</p>") @as("PartsCount")
    partsCount: option<partsCount>,
    @ocaml.doc("<p>Amazon S3 can return this header if your request involves a bucket that is either a source or
         a destination in a replication rule.</p>

         <p>In replication, you have a source bucket on which you configure replication and
         destination bucket or buckets where Amazon S3 stores object replicas. When you request an object
            (<code>GetObject</code>) or object metadata (<code>HeadObject</code>) from these
         buckets, Amazon S3 will return the <code>x-amz-replication-status</code> header in the response
         as follows:</p>
         <ul>
            <li>
               <p>If requesting an object from the source bucket — Amazon S3 will return the
                  <code>x-amz-replication-status</code> header if the object in your request is
               eligible for replication.</p>
               <p> For example, suppose that in your replication configuration, you specify object
               prefix <code>TaxDocs</code> requesting Amazon S3 to replicate objects with key prefix
                  <code>TaxDocs</code>. Any objects you upload with this key name prefix, for
               example <code>TaxDocs/document1.pdf</code>, are eligible for replication. For any
               object request with this key name prefix, Amazon S3 will return the
                  <code>x-amz-replication-status</code> header with value PENDING, COMPLETED or
               FAILED indicating object replication status.</p>
            </li>
            <li>
               <p>If requesting an object from a destination bucket — Amazon S3 will return the
                  <code>x-amz-replication-status</code> header with value REPLICA if the object in
               your request is a replica that Amazon S3 created and there is no replica modification
               replication in progress.</p>
            </li>
            <li>
               <p>When replicating objects to multiple destination buckets the
                  <code>x-amz-replication-status</code> header acts differently. The header of the
               source object will only return a value of COMPLETED when replication is successful to
               all destinations. The header will remain at value PENDING until replication has
               completed for all destinations. If one or more destinations fails replication the
               header will return FAILED. </p>
            </li>
         </ul>

         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html\">Replication</a>.</p>")
    @as("ReplicationStatus")
    replicationStatus: option<replicationStatus>,
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc("<p>Provides storage class information of the object. Amazon S3 returns this header for all
         objects except for S3 Standard storage class objects.</p>

         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html\">Storage
            Classes</a>.</p>")
    @as("StorageClass")
    storageClass: option<storageClass>,
    @ocaml.doc(
      "<p>Indicates whether the object uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).</p>"
    )
    @as("BucketKeyEnabled")
    bucketKeyEnabled: option<bucketKeyEnabled>,
    @ocaml.doc("<p>If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric
         customer managed customer master key (CMK) that was used for the object.</p>")
    @as("SSEKMSKeyId")
    ssekmskeyId: option<ssekmskeyId>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header to provide round-trip message integrity verification of
         the customer-provided encryption key.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header confirming the encryption algorithm used.</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>A map of metadata to store with the object in S3.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>If the object is stored using server-side encryption either with an AWS KMS customer
         master key (CMK) or an Amazon S3-managed encryption key, the response includes this header with
         the value of the server-side encryption algorithm used when storing this object in Amazon
         S3 (for example, AES256, aws:kms).</p>")
    @as("ServerSideEncryption")
    serverSideEncryption: option<serverSideEncryption>,
    @ocaml.doc("<p>If the bucket is configured as a website, redirects requests for this object to another
         object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
         the object metadata.</p>")
    @as("WebsiteRedirectLocation")
    websiteRedirectLocation: option<websiteRedirectLocation>,
    @ocaml.doc("<p>The date and time at which the object is no longer cacheable.</p>")
    @as("Expires")
    expires: option<expires>,
    @ocaml.doc("<p>A standard MIME type describing the format of the object data.</p>")
    @as("ContentType")
    contentType: option<contentType>,
    @ocaml.doc("<p>The language the content is in.</p>") @as("ContentLanguage")
    contentLanguage: option<contentLanguage>,
    @ocaml.doc("<p>Specifies what content encodings have been applied to the object and thus what decoding
         mechanisms must be applied to obtain the media-type referenced by the Content-Type header
         field.</p>")
    @as("ContentEncoding")
    contentEncoding: option<contentEncoding>,
    @ocaml.doc("<p>Specifies presentational information for the object.</p>")
    @as("ContentDisposition")
    contentDisposition: option<contentDisposition>,
    @ocaml.doc("<p>Specifies caching behavior along the request/reply chain.</p>")
    @as("CacheControl")
    cacheControl: option<cacheControl>,
    @ocaml.doc("<p>Version of the object.</p>") @as("VersionId") versionId: option<objectVersionId>,
    @ocaml.doc("<p>This is set to the number of metadata entries not returned in <code>x-amz-meta</code>
         headers. This can happen if you create metadata using an API like SOAP that supports more
         flexible metadata than the REST API. For example, using SOAP, you can create metadata whose
         values are not legal HTTP headers.</p>")
    @as("MissingMeta")
    missingMeta: option<missingMeta>,
    @ocaml.doc("<p>An ETag is an opaque identifier assigned by a web server to a specific version of a
         resource found at a URL.</p>")
    @as("ETag")
    etag: option<etag>,
    @ocaml.doc("<p>Size of the body in bytes.</p>") @as("ContentLength")
    contentLength: option<contentLength>,
    @ocaml.doc("<p>Creation date of the object.</p>") @as("LastModified")
    lastModified: option<lastModified>,
    @ocaml.doc("<p>The archive state of the head object.</p>") @as("ArchiveStatus")
    archiveStatus: option<archiveStatus>,
    @ocaml.doc("<p>If the object is an archived object (an object whose storage class is GLACIER), the
         response includes this header if either the archive restoration is in progress (see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html\">RestoreObject</a> or an archive copy is already restored.</p>

         <p> If an archive copy is already restored, the header value indicates when Amazon S3 is
         scheduled to delete the object copy. For example:</p>

         <p>
            <code>x-amz-restore: ongoing-request=\"false\", expiry-date=\"Fri, 21 Dec 2012 00:00:00
            GMT\"</code>
         </p>

         <p>If the object restoration is in progress, the header returns the value
            <code>ongoing-request=\"true\"</code>.</p>

         <p>For more information about archiving objects, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-transition-general-considerations\">Transitioning Objects: General Considerations</a>.</p>")
    @as("Restore")
    restore: option<restore>,
    @ocaml.doc("<p>If the object expiration is configured (see PUT Bucket lifecycle), the response includes
         this header. It includes the expiry-date and rule-id key-value pairs providing object
         expiration information. The value of the rule-id is URL encoded.</p>")
    @as("Expiration")
    expiration: option<expiration>,
    @ocaml.doc("<p>Indicates that a range of bytes was specified.</p>") @as("AcceptRanges")
    acceptRanges: option<acceptRanges>,
    @ocaml.doc("<p>Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If
         false, this response header does not appear in the response.</p>")
    @as("DeleteMarker")
    deleteMarker: option<deleteMarker>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "HeadObjectCommand"
  let make = (
    ~key,
    ~bucket,
    ~expectedBucketOwner=?,
    ~partNumber=?,
    ~requestPayer=?,
    ~ssecustomerKeyMD5=?,
    ~ssecustomerKey=?,
    ~ssecustomerAlgorithm=?,
    ~versionId=?,
    ~range=?,
    ~ifUnmodifiedSince=?,
    ~ifNoneMatch=?,
    ~ifModifiedSince=?,
    ~ifMatch=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      partNumber: partNumber,
      requestPayer: requestPayer,
      ssecustomerKeyMD5: ssecustomerKeyMD5,
      ssecustomerKey: ssecustomerKey,
      ssecustomerAlgorithm: ssecustomerAlgorithm,
      versionId: versionId,
      range: range,
      key: key,
      ifUnmodifiedSince: ifUnmodifiedSince,
      ifNoneMatch: ifNoneMatch,
      ifModifiedSince: ifModifiedSince,
      ifMatch: ifMatch,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPublicAccessBlock = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want
         to retrieve. </p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The <code>PublicAccessBlock</code> configuration currently in effect for this Amazon S3
         bucket.</p>")
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: option<publicAccessBlockConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetPublicAccessBlockCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObjectRetention = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc(
      "<p>The version ID for the object whose retention settings you want to retrieve.</p>"
    )
    @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>The key name for the object whose retention settings you want to retrieve.</p>")
    @as("Key")
    key: objectKey,
    @ocaml.doc("<p>The bucket name containing the object whose retention settings you want to retrieve. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The container element for an object's retention settings.</p>") @as("Retention")
    retention: option<objectLockRetention>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetObjectRetentionCommand"
  let make = (~key, ~bucket, ~expectedBucketOwner=?, ~requestPayer=?, ~versionId=?, ()) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      versionId: versionId,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObjectLegalHold = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>The version ID of the object whose Legal Hold status you want to retrieve.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>The key name for the object whose Legal Hold status you want to retrieve.</p>")
    @as("Key")
    key: objectKey,
    @ocaml.doc("<p>The bucket name containing the object whose Legal Hold status you want to retrieve. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The current Legal Hold status for the specified object.</p>") @as("LegalHold")
    legalHold: option<objectLockLegalHold>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetObjectLegalHoldCommand"
  let make = (~key, ~bucket, ~expectedBucketOwner=?, ~requestPayer=?, ~versionId=?, ()) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      versionId: versionId,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObject = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Part number of the object being read. This is a positive integer between 1 and 10,000.
         Effectively performs a 'ranged' GET request for the part specified. Useful for downloading
         just a part of an object.</p>")
    @as("PartNumber")
    partNumber: option<partNumber>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
         this header for a message integrity check to ensure that the encryption key was transmitted
         without error.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>Specifies the customer-provided encryption key for Amazon S3 used to encrypt the data. This
         value is used to decrypt the object when recovering it and must match the one used when 
         storing the data. The key must be appropriate for use with the algorithm specified in the
            <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>")
    @as("SSECustomerKey")
    ssecustomerKey: option<ssecustomerKey>,
    @ocaml.doc("<p>Specifies the algorithm to use to when decrypting the object (for example,
         AES256).</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>VersionId used to reference a specific version of the object.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>Sets the <code>Expires</code> header of the response.</p>")
    @as("ResponseExpires")
    responseExpires: option<responseExpires>,
    @ocaml.doc("<p>Sets the <code>Content-Type</code> header of the response.</p>")
    @as("ResponseContentType")
    responseContentType: option<responseContentType>,
    @ocaml.doc("<p>Sets the <code>Content-Language</code> header of the response.</p>")
    @as("ResponseContentLanguage")
    responseContentLanguage: option<responseContentLanguage>,
    @ocaml.doc("<p>Sets the <code>Content-Encoding</code> header of the response.</p>")
    @as("ResponseContentEncoding")
    responseContentEncoding: option<responseContentEncoding>,
    @ocaml.doc("<p>Sets the <code>Content-Disposition</code> header of the response</p>")
    @as("ResponseContentDisposition")
    responseContentDisposition: option<responseContentDisposition>,
    @ocaml.doc("<p>Sets the <code>Cache-Control</code> header of the response.</p>")
    @as("ResponseCacheControl")
    responseCacheControl: option<responseCacheControl>,
    @ocaml.doc("<p>Downloads the specified range bytes of an object. For more information about the HTTP
         Range header, see <a href=\"https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35\">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35</a>.</p>
         <note>
            <p>Amazon S3 doesn't support retrieving multiple ranges of data per <code>GET</code>
            request.</p>
         </note>")
    @as("Range")
    range: option<range>,
    @ocaml.doc("<p>Key of the object to get.</p>") @as("Key") key: objectKey,
    @ocaml.doc("<p>Return the object only if it has not been modified since the specified time, otherwise
         return a 412 (precondition failed).</p>")
    @as("IfUnmodifiedSince")
    ifUnmodifiedSince: option<ifUnmodifiedSince>,
    @ocaml.doc("<p>Return the object only if its entity tag (ETag) is different from the one specified,
         otherwise return a 304 (not modified).</p>")
    @as("IfNoneMatch")
    ifNoneMatch: option<ifNoneMatch>,
    @ocaml.doc("<p>Return the object only if it has been modified since the specified time, otherwise
         return a 304 (not modified).</p>")
    @as("IfModifiedSince")
    ifModifiedSince: option<ifModifiedSince>,
    @ocaml.doc("<p>Return the object only if its entity tag (ETag) is the same as the one specified,
         otherwise return a 412 (precondition failed).</p>")
    @as("IfMatch")
    ifMatch: option<ifMatch>,
    @ocaml.doc("<p>The bucket name containing the object. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether this object has an active legal hold. This field is only returned if
         you have permission to view an object's legal hold status. </p>")
    @as("ObjectLockLegalHoldStatus")
    objectLockLegalHoldStatus: option<objectLockLegalHoldStatus>,
    @ocaml.doc("<p>The date and time when this object's Object Lock will expire.</p>")
    @as("ObjectLockRetainUntilDate")
    objectLockRetainUntilDate: option<objectLockRetainUntilDate>,
    @ocaml.doc("<p>The Object Lock mode currently in place for this object.</p>")
    @as("ObjectLockMode")
    objectLockMode: option<objectLockMode>,
    @ocaml.doc("<p>The number of tags, if any, on the object.</p>") @as("TagCount")
    tagCount: option<tagCount>,
    @ocaml.doc("<p>The count of parts this object has.</p>") @as("PartsCount")
    partsCount: option<partsCount>,
    @ocaml.doc("<p>Amazon S3 can return this if your request involves a bucket that is either a source or
         destination in a replication rule.</p>")
    @as("ReplicationStatus")
    replicationStatus: option<replicationStatus>,
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc("<p>Provides storage class information of the object. Amazon S3 returns this header for all
         objects except for S3 Standard storage class objects.</p>")
    @as("StorageClass")
    storageClass: option<storageClass>,
    @ocaml.doc(
      "<p>Indicates whether the object uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).</p>"
    )
    @as("BucketKeyEnabled")
    bucketKeyEnabled: option<bucketKeyEnabled>,
    @ocaml.doc("<p>If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric
         customer managed customer master key (CMK) that was used for the object.</p>")
    @as("SSEKMSKeyId")
    ssekmskeyId: option<ssekmskeyId>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header to provide round-trip message integrity verification of
         the customer-provided encryption key.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header confirming the encryption algorithm used.</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>A map of metadata to store with the object in S3.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
         AES256, aws:kms).</p>")
    @as("ServerSideEncryption")
    serverSideEncryption: option<serverSideEncryption>,
    @ocaml.doc("<p>If the bucket is configured as a website, redirects requests for this object to another
         object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
         the object metadata.</p>")
    @as("WebsiteRedirectLocation")
    websiteRedirectLocation: option<websiteRedirectLocation>,
    @ocaml.doc("<p>The date and time at which the object is no longer cacheable.</p>")
    @as("Expires")
    expires: option<expires>,
    @ocaml.doc("<p>A standard MIME type describing the format of the object data.</p>")
    @as("ContentType")
    contentType: option<contentType>,
    @ocaml.doc("<p>The portion of the object returned in the response.</p>") @as("ContentRange")
    contentRange: option<contentRange>,
    @ocaml.doc("<p>The language the content is in.</p>") @as("ContentLanguage")
    contentLanguage: option<contentLanguage>,
    @ocaml.doc("<p>Specifies what content encodings have been applied to the object and thus what decoding
         mechanisms must be applied to obtain the media-type referenced by the Content-Type header
         field.</p>")
    @as("ContentEncoding")
    contentEncoding: option<contentEncoding>,
    @ocaml.doc("<p>Specifies presentational information for the object.</p>")
    @as("ContentDisposition")
    contentDisposition: option<contentDisposition>,
    @ocaml.doc("<p>Specifies caching behavior along the request/reply chain.</p>")
    @as("CacheControl")
    cacheControl: option<cacheControl>,
    @ocaml.doc("<p>Version of the object.</p>") @as("VersionId") versionId: option<objectVersionId>,
    @ocaml.doc("<p>This is set to the number of metadata entries not returned in <code>x-amz-meta</code>
         headers. This can happen if you create metadata using an API like SOAP that supports more
         flexible metadata than the REST API. For example, using SOAP, you can create metadata whose
         values are not legal HTTP headers.</p>")
    @as("MissingMeta")
    missingMeta: option<missingMeta>,
    @ocaml.doc("<p>An ETag is an opaque identifier assigned by a web server to a specific version of a
         resource found at a URL.</p>")
    @as("ETag")
    etag: option<etag>,
    @ocaml.doc("<p>Size of the body in bytes.</p>") @as("ContentLength")
    contentLength: option<contentLength>,
    @ocaml.doc("<p>Creation date of the object.</p>") @as("LastModified")
    lastModified: option<lastModified>,
    @ocaml.doc("<p>Provides information about object restoration action and expiration time of the
         restored object copy.</p>")
    @as("Restore")
    restore: option<restore>,
    @ocaml.doc("<p>If the object expiration is configured (see PUT Bucket lifecycle), the response includes
         this header. It includes the expiry-date and rule-id key-value pairs providing object
         expiration information. The value of the rule-id is URL encoded.</p>")
    @as("Expiration")
    expiration: option<expiration>,
    @ocaml.doc("<p>Indicates that a range of bytes was specified.</p>") @as("AcceptRanges")
    acceptRanges: option<acceptRanges>,
    @ocaml.doc("<p>Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If
         false, this response header does not appear in the response.</p>")
    @as("DeleteMarker")
    deleteMarker: option<deleteMarker>,
    @ocaml.doc("<p>Object data.</p>") @as("Body") body: option<streamingBlob>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetObjectCommand"
  let make = (
    ~key,
    ~bucket,
    ~expectedBucketOwner=?,
    ~partNumber=?,
    ~requestPayer=?,
    ~ssecustomerKeyMD5=?,
    ~ssecustomerKey=?,
    ~ssecustomerAlgorithm=?,
    ~versionId=?,
    ~responseExpires=?,
    ~responseContentType=?,
    ~responseContentLanguage=?,
    ~responseContentEncoding=?,
    ~responseContentDisposition=?,
    ~responseCacheControl=?,
    ~range=?,
    ~ifUnmodifiedSince=?,
    ~ifNoneMatch=?,
    ~ifModifiedSince=?,
    ~ifMatch=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      partNumber: partNumber,
      requestPayer: requestPayer,
      ssecustomerKeyMD5: ssecustomerKeyMD5,
      ssecustomerKey: ssecustomerKey,
      ssecustomerAlgorithm: ssecustomerAlgorithm,
      versionId: versionId,
      responseExpires: responseExpires,
      responseContentType: responseContentType,
      responseContentLanguage: responseContentLanguage,
      responseContentEncoding: responseContentEncoding,
      responseContentDisposition: responseContentDisposition,
      responseCacheControl: responseCacheControl,
      range: range,
      key: key,
      ifUnmodifiedSince: ifUnmodifiedSince,
      ifNoneMatch: ifNoneMatch,
      ifModifiedSince: ifModifiedSince,
      ifMatch: ifMatch,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketPolicyStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the Amazon S3 bucket whose policy status you want to retrieve.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The policy status for the specified bucket.</p>") @as("PolicyStatus")
    policyStatus: option<policyStatus>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketPolicyStatusCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMultipartUpload = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Specifies whether you want to apply a Legal Hold to the uploaded object.</p>")
    @as("ObjectLockLegalHoldStatus")
    objectLockLegalHoldStatus: option<objectLockLegalHoldStatus>,
    @ocaml.doc("<p>Specifies the date and time when you want the Object Lock to expire.</p>")
    @as("ObjectLockRetainUntilDate")
    objectLockRetainUntilDate: option<objectLockRetainUntilDate>,
    @ocaml.doc(
      "<p>Specifies the Object Lock mode that you want to apply to the uploaded object.</p>"
    )
    @as("ObjectLockMode")
    objectLockMode: option<objectLockMode>,
    @ocaml.doc(
      "<p>The tag-set for the object. The tag-set must be encoded as URL Query parameters.</p>"
    )
    @as("Tagging")
    tagging: option<taggingHeader>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption using AWS KMS (SSE-KMS). Setting this header to <code>true</code> causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.</p>
         <p>Specifying this header with an object action doesn’t affect bucket-level settings for S3 Bucket Key.</p>")
    @as("BucketKeyEnabled")
    bucketKeyEnabled: option<bucketKeyEnabled>,
    @ocaml.doc("<p>Specifies the AWS KMS Encryption Context to use for object encryption. The value of this
         header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value
         pairs.</p>")
    @as("SSEKMSEncryptionContext")
    ssekmsencryptionContext: option<ssekmsencryptionContext>,
    @ocaml.doc("<p>Specifies the ID of the symmetric customer managed AWS KMS CMK to use for object
         encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not
         made via SSL or using SigV4. For information about configuring using any of the officially
         supported AWS SDKs and AWS CLI, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version\">Specifying the Signature Version in Request Authentication</a>
         in the <i>Amazon S3 User Guide</i>.</p>")
    @as("SSEKMSKeyId")
    ssekmskeyId: option<ssekmskeyId>,
    @ocaml.doc("<p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
         this header for a message integrity check to ensure that the encryption key was transmitted
         without error.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
         value is used to store the object and then it is discarded; Amazon S3 does not store the
         encryption key. The key must be appropriate for use with the algorithm specified in the
            <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>")
    @as("SSECustomerKey")
    ssecustomerKey: option<ssecustomerKey>,
    @ocaml.doc("<p>Specifies the algorithm to use to when encrypting the object (for example,
         AES256).</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>If the bucket is configured as a website, redirects requests for this object to another
         object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
         the object metadata.</p>")
    @as("WebsiteRedirectLocation")
    websiteRedirectLocation: option<websiteRedirectLocation>,
    @ocaml.doc("<p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The
         STANDARD storage class provides high durability and high availability. Depending on
         performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses
         the OUTPOSTS Storage Class. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html\">Storage Classes</a> in the
         <i>Amazon S3 User Guide</i>.</p>")
    @as("StorageClass")
    storageClass: option<storageClass>,
    @ocaml.doc("<p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
         AES256, aws:kms).</p>")
    @as("ServerSideEncryption")
    serverSideEncryption: option<serverSideEncryption>,
    @ocaml.doc("<p>A map of metadata to store with the object in S3.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>Object key for which the multipart upload is to be initiated.</p>") @as("Key")
    key: objectKey,
    @ocaml.doc("<p>Allows grantee to write the ACL for the applicable
      object.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantWriteACP")
    grantWriteACP: option<grantWriteACP>,
    @ocaml.doc("<p>Allows grantee to read the object ACL.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantReadACP")
    grantReadACP: option<grantReadACP>,
    @ocaml.doc("<p>Allows grantee to read the object data and its
      metadata.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantRead")
    grantRead: option<grantRead>,
    @ocaml.doc("<p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the
      object.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantFullControl")
    grantFullControl: option<grantFullControl>,
    @ocaml.doc("<p>The date and time at which the object is no longer cacheable.</p>")
    @as("Expires")
    expires: option<expires>,
    @ocaml.doc("<p>A standard MIME type describing the format of the object data.</p>")
    @as("ContentType")
    contentType: option<contentType>,
    @ocaml.doc("<p>The language the content is in.</p>") @as("ContentLanguage")
    contentLanguage: option<contentLanguage>,
    @ocaml.doc("<p>Specifies what content encodings have been applied to the object and thus what decoding
         mechanisms must be applied to obtain the media-type referenced by the Content-Type header
         field.</p>")
    @as("ContentEncoding")
    contentEncoding: option<contentEncoding>,
    @ocaml.doc("<p>Specifies presentational information for the object.</p>")
    @as("ContentDisposition")
    contentDisposition: option<contentDisposition>,
    @ocaml.doc("<p>Specifies caching behavior along the request/reply chain.</p>")
    @as("CacheControl")
    cacheControl: option<cacheControl>,
    @ocaml.doc("<p>The name of the bucket to which to initiate the upload</p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The canned ACL to apply to the object.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("ACL")
    acl: option<objectCannedACL>,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc(
      "<p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).</p>"
    )
    @as("BucketKeyEnabled")
    bucketKeyEnabled: option<bucketKeyEnabled>,
    @ocaml.doc("<p>If present, specifies the AWS KMS Encryption Context to use for object encryption. The
         value of this header is a base64-encoded UTF-8 string holding JSON with the encryption
         context key-value pairs.</p>")
    @as("SSEKMSEncryptionContext")
    ssekmsencryptionContext: option<ssekmsencryptionContext>,
    @ocaml.doc("<p>If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric
         customer managed customer master key (CMK) that was used for the object.</p>")
    @as("SSEKMSKeyId")
    ssekmskeyId: option<ssekmskeyId>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header to provide round-trip message integrity verification of
         the customer-provided encryption key.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header confirming the encryption algorithm used.</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
         AES256, aws:kms).</p>")
    @as("ServerSideEncryption")
    serverSideEncryption: option<serverSideEncryption>,
    @ocaml.doc("<p>ID for the initiated multipart upload.</p>") @as("UploadId")
    uploadId: option<multipartUploadId>,
    @ocaml.doc("<p>Object key for which the multipart upload was initiated.</p>") @as("Key")
    key: option<objectKey>,
    @ocaml.doc("<p>The name of the bucket to which the multipart upload was initiated. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: option<bucketName>,
    @ocaml.doc("<p>This header is returned along with the <code>x-amz-abort-date</code> header. It
         identifies the applicable lifecycle configuration rule that defines the action to abort
         incomplete multipart uploads.</p>")
    @as("AbortRuleId")
    abortRuleId: option<abortRuleId>,
    @ocaml.doc("<p>If the bucket has a lifecycle rule configured with an action to abort incomplete
         multipart uploads and the prefix in the lifecycle rule matches the object name in the
         request, the response includes this header. The header indicates when the initiated
         multipart upload becomes eligible for an abort operation. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config\">
            Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy</a>.</p>

         <p>The response also includes the <code>x-amz-abort-rule-id</code> header that provides the
         ID of the lifecycle configuration rule that defines this action.</p>")
    @as("AbortDate")
    abortDate: option<abortDate>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "CreateMultipartUploadCommand"
  let make = (
    ~key,
    ~bucket,
    ~expectedBucketOwner=?,
    ~objectLockLegalHoldStatus=?,
    ~objectLockRetainUntilDate=?,
    ~objectLockMode=?,
    ~tagging=?,
    ~requestPayer=?,
    ~bucketKeyEnabled=?,
    ~ssekmsencryptionContext=?,
    ~ssekmskeyId=?,
    ~ssecustomerKeyMD5=?,
    ~ssecustomerKey=?,
    ~ssecustomerAlgorithm=?,
    ~websiteRedirectLocation=?,
    ~storageClass=?,
    ~serverSideEncryption=?,
    ~metadata=?,
    ~grantWriteACP=?,
    ~grantReadACP=?,
    ~grantRead=?,
    ~grantFullControl=?,
    ~expires=?,
    ~contentType=?,
    ~contentLanguage=?,
    ~contentEncoding=?,
    ~contentDisposition=?,
    ~cacheControl=?,
    ~acl=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      objectLockLegalHoldStatus: objectLockLegalHoldStatus,
      objectLockRetainUntilDate: objectLockRetainUntilDate,
      objectLockMode: objectLockMode,
      tagging: tagging,
      requestPayer: requestPayer,
      bucketKeyEnabled: bucketKeyEnabled,
      ssekmsencryptionContext: ssekmsencryptionContext,
      ssekmskeyId: ssekmskeyId,
      ssecustomerKeyMD5: ssecustomerKeyMD5,
      ssecustomerKey: ssecustomerKey,
      ssecustomerAlgorithm: ssecustomerAlgorithm,
      websiteRedirectLocation: websiteRedirectLocation,
      storageClass: storageClass,
      serverSideEncryption: serverSideEncryption,
      metadata: metadata,
      key: key,
      grantWriteACP: grantWriteACP,
      grantReadACP: grantReadACP,
      grantRead: grantRead,
      grantFullControl: grantFullControl,
      expires: expires,
      contentType: contentType,
      contentLanguage: contentLanguage,
      contentEncoding: contentEncoding,
      contentDisposition: contentDisposition,
      cacheControl: cacheControl,
      bucket: bucket,
      acl: acl,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBucket = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration information for the bucket.</p>")
    @as("CreateBucketConfiguration")
    createBucketConfiguration: option<createBucketConfiguration>,
    @ocaml.doc("<p>Specifies whether you want S3 Object Lock to be enabled for the new bucket.</p>")
    @as("ObjectLockEnabledForBucket")
    objectLockEnabledForBucket: option<objectLockEnabledForBucket>,
    @ocaml.doc("<p>Allows grantee to write the ACL for the applicable bucket.</p>")
    @as("GrantWriteACP")
    grantWriteACP: option<grantWriteACP>,
    @ocaml.doc("<p>Allows grantee to create new objects in the bucket.</p>
         <p>For the bucket and object owners of existing objects, also allows deletions and overwrites of those objects.</p>")
    @as("GrantWrite")
    grantWrite: option<grantWrite>,
    @ocaml.doc("<p>Allows grantee to read the bucket ACL.</p>") @as("GrantReadACP")
    grantReadACP: option<grantReadACP>,
    @ocaml.doc("<p>Allows grantee to list the objects in the bucket.</p>") @as("GrantRead")
    grantRead: option<grantRead>,
    @ocaml.doc("<p>Allows grantee the read, write, read ACP, and write ACP permissions on the
         bucket.</p>")
    @as("GrantFullControl")
    grantFullControl: option<grantFullControl>,
    @ocaml.doc("<p>The name of the bucket to create.</p>") @as("Bucket") bucket: bucketName,
    @ocaml.doc("<p>The canned ACL to apply to the bucket.</p>") @as("ACL")
    acl: option<bucketCannedACL>,
  }
  type response = {
    @ocaml.doc("<p>Specifies the Region where the bucket will be created. If you are creating a bucket on
         the US East (N. Virginia) Region (us-east-1), you do not need to specify the
         location.</p>")
    @as("Location")
    location: option<location>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "CreateBucketCommand"
  let make = (
    ~bucket,
    ~createBucketConfiguration=?,
    ~objectLockEnabledForBucket=?,
    ~grantWriteACP=?,
    ~grantWrite=?,
    ~grantReadACP=?,
    ~grantRead=?,
    ~grantFullControl=?,
    ~acl=?,
    (),
  ) =>
    new({
      createBucketConfiguration: createBucketConfiguration,
      objectLockEnabledForBucket: objectLockEnabledForBucket,
      grantWriteACP: grantWriteACP,
      grantWrite: grantWrite,
      grantReadACP: grantReadACP,
      grantRead: grantRead,
      grantFullControl: grantFullControl,
      bucket: bucket,
      acl: acl,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyObject = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected source bucket owner. If the source bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedSourceBucketOwner")
    expectedSourceBucketOwner: option<accountId>,
    @ocaml.doc(
      "<p>The account ID of the expected destination bucket owner. If the destination bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Specifies whether you want to apply a Legal Hold to the copied object.</p>")
    @as("ObjectLockLegalHoldStatus")
    objectLockLegalHoldStatus: option<objectLockLegalHoldStatus>,
    @ocaml.doc("<p>The date and time when you want the copied object's Object Lock to expire.</p>")
    @as("ObjectLockRetainUntilDate")
    objectLockRetainUntilDate: option<objectLockRetainUntilDate>,
    @ocaml.doc("<p>The Object Lock mode that you want to apply to the copied object.</p>")
    @as("ObjectLockMode")
    objectLockMode: option<objectLockMode>,
    @ocaml.doc("<p>The tag-set for the object destination object this value must be used in conjunction
         with the <code>TaggingDirective</code>. The tag-set must be encoded as URL Query
         parameters.</p>")
    @as("Tagging")
    tagging: option<taggingHeader>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
         this header for a message integrity check to ensure that the encryption key was transmitted
         without error.</p>")
    @as("CopySourceSSECustomerKeyMD5")
    copySourceSSECustomerKeyMD5: option<copySourceSSECustomerKeyMD5>,
    @ocaml.doc("<p>Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source
         object. The encryption key provided in this header must be one that was used when the
         source object was created.</p>")
    @as("CopySourceSSECustomerKey")
    copySourceSSECustomerKey: option<copySourceSSECustomerKey>,
    @ocaml.doc("<p>Specifies the algorithm to use when decrypting the source object (for example,
         AES256).</p>")
    @as("CopySourceSSECustomerAlgorithm")
    copySourceSSECustomerAlgorithm: option<copySourceSSECustomerAlgorithm>,
    @ocaml.doc("<p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption using AWS KMS (SSE-KMS). Setting this header to <code>true</code> causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS. </p>
         <p>Specifying this header with a COPY action doesn’t affect bucket-level settings for S3 Bucket Key.</p>")
    @as("BucketKeyEnabled")
    bucketKeyEnabled: option<bucketKeyEnabled>,
    @ocaml.doc("<p>Specifies the AWS KMS Encryption Context to use for object encryption. The value of this
         header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value
         pairs.</p>")
    @as("SSEKMSEncryptionContext")
    ssekmsencryptionContext: option<ssekmsencryptionContext>,
    @ocaml.doc("<p>Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for
         an object protected by AWS KMS will fail if not made via SSL or using SigV4. For
         information about configuring using any of the officially supported AWS SDKs and AWS CLI,
         see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version\">Specifying the
            Signature Version in Request Authentication</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("SSEKMSKeyId")
    ssekmskeyId: option<ssekmskeyId>,
    @ocaml.doc("<p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
         this header for a message integrity check to ensure that the encryption key was transmitted
         without error.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
         value is used to store the object and then it is discarded; Amazon S3 does not store the
         encryption key. The key must be appropriate for use with the algorithm specified in the
            <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>")
    @as("SSECustomerKey")
    ssecustomerKey: option<ssecustomerKey>,
    @ocaml.doc("<p>Specifies the algorithm to use to when encrypting the object (for example,
         AES256).</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>If the bucket is configured as a website, redirects requests for this object to another
         object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
         the object metadata.</p>")
    @as("WebsiteRedirectLocation")
    websiteRedirectLocation: option<websiteRedirectLocation>,
    @ocaml.doc("<p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The
         STANDARD storage class provides high durability and high availability. Depending on
         performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses
         the OUTPOSTS Storage Class. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html\">Storage Classes</a> in the
         <i>Amazon S3 User Guide</i>.</p>")
    @as("StorageClass")
    storageClass: option<storageClass>,
    @ocaml.doc("<p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
         AES256, aws:kms).</p>")
    @as("ServerSideEncryption")
    serverSideEncryption: option<serverSideEncryption>,
    @ocaml.doc("<p>Specifies whether the object tag-set are copied from the source object or replaced with
         tag-set provided in the request.</p>")
    @as("TaggingDirective")
    taggingDirective: option<taggingDirective>,
    @ocaml.doc("<p>Specifies whether the metadata is copied from the source object or replaced with
         metadata provided in the request.</p>")
    @as("MetadataDirective")
    metadataDirective: option<metadataDirective>,
    @ocaml.doc("<p>A map of metadata to store with the object in S3.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The key of the destination object.</p>") @as("Key") key: objectKey,
    @ocaml.doc("<p>Allows grantee to write the ACL for the applicable
      object.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantWriteACP")
    grantWriteACP: option<grantWriteACP>,
    @ocaml.doc("<p>Allows grantee to read the object ACL.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantReadACP")
    grantReadACP: option<grantReadACP>,
    @ocaml.doc("<p>Allows grantee to read the object data and its
      metadata.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantRead")
    grantRead: option<grantRead>,
    @ocaml.doc("<p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the
      object.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantFullControl")
    grantFullControl: option<grantFullControl>,
    @ocaml.doc("<p>The date and time at which the object is no longer cacheable.</p>")
    @as("Expires")
    expires: option<expires>,
    @ocaml.doc("<p>Copies the object if it hasn't been modified since the specified time.</p>")
    @as("CopySourceIfUnmodifiedSince")
    copySourceIfUnmodifiedSince: option<copySourceIfUnmodifiedSince>,
    @ocaml.doc(
      "<p>Copies the object if its entity tag (ETag) is different than the specified ETag.</p>"
    )
    @as("CopySourceIfNoneMatch")
    copySourceIfNoneMatch: option<copySourceIfNoneMatch>,
    @ocaml.doc("<p>Copies the object if it has been modified since the specified time.</p>")
    @as("CopySourceIfModifiedSince")
    copySourceIfModifiedSince: option<copySourceIfModifiedSince>,
    @ocaml.doc("<p>Copies the object if its entity tag (ETag) matches the specified tag.</p>")
    @as("CopySourceIfMatch")
    copySourceIfMatch: option<copySourceIfMatch>,
    @ocaml.doc("<p>Specifies the source object for the copy operation. You specify the value in one of two
         formats, depending on whether you want to access the source object through an <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html\">access point</a>:</p>
         <ul>
            <li>
               <p>For objects not accessed through an access point, specify the name of the source
               bucket and the key of the source object, separated by a slash (/). For example, to
               copy the object <code>reports/january.pdf</code> from the bucket
                  <code>awsexamplebucket</code>, use
                  <code>awsexamplebucket/reports/january.pdf</code>. The value must be URL
               encoded.</p>
            </li>
            <li> 
               <p>For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format <code>arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through access point <code>my-access-point</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf</code>. The value must be URL encoded.</p> 
               <note>
                  <p>Amazon S3 supports copy operations using access points only when the source and destination buckets are in the same AWS Region.</p>
               </note> 
               <p>Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf</code>. The value must be URL encoded.  </p> 
            </li>
         </ul>
         <p>To copy a specific version of an object, append <code>?versionId=<version-id></code>
         to the value (for example,
            <code>awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893</code>).
         If you don't specify a version ID, Amazon S3 copies the latest version of the source
         object.</p>")
    @as("CopySource")
    copySource: copySource,
    @ocaml.doc("<p>A standard MIME type describing the format of the object data.</p>")
    @as("ContentType")
    contentType: option<contentType>,
    @ocaml.doc("<p>The language the content is in.</p>") @as("ContentLanguage")
    contentLanguage: option<contentLanguage>,
    @ocaml.doc("<p>Specifies what content encodings have been applied to the object and thus what decoding
         mechanisms must be applied to obtain the media-type referenced by the Content-Type header
         field.</p>")
    @as("ContentEncoding")
    contentEncoding: option<contentEncoding>,
    @ocaml.doc("<p>Specifies presentational information for the object.</p>")
    @as("ContentDisposition")
    contentDisposition: option<contentDisposition>,
    @ocaml.doc("<p>Specifies caching behavior along the request/reply chain.</p>")
    @as("CacheControl")
    cacheControl: option<cacheControl>,
    @ocaml.doc("<p>The name of the destination bucket.</p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The canned ACL to apply to the object.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("ACL")
    acl: option<objectCannedACL>,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc(
      "<p>Indicates whether the copied object uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).</p>"
    )
    @as("BucketKeyEnabled")
    bucketKeyEnabled: option<bucketKeyEnabled>,
    @ocaml.doc("<p>If present, specifies the AWS KMS Encryption Context to use for object encryption. The
         value of this header is a base64-encoded UTF-8 string holding JSON with the encryption
         context key-value pairs.</p>")
    @as("SSEKMSEncryptionContext")
    ssekmsencryptionContext: option<ssekmsencryptionContext>,
    @ocaml.doc("<p>If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric
         customer managed customer master key (CMK) that was used for the object.</p>")
    @as("SSEKMSKeyId")
    ssekmskeyId: option<ssekmskeyId>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header to provide round-trip message integrity verification of
         the customer-provided encryption key.</p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>If server-side encryption with a customer-provided encryption key was requested, the
         response will include this header confirming the encryption algorithm used.</p>")
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
         AES256, aws:kms).</p>")
    @as("ServerSideEncryption")
    serverSideEncryption: option<serverSideEncryption>,
    @ocaml.doc("<p>Version ID of the newly created copy.</p>") @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>Version of the copied object in the destination bucket.</p>")
    @as("CopySourceVersionId")
    copySourceVersionId: option<copySourceVersionId>,
    @ocaml.doc("<p>If the object expiration is configured, the response includes this header.</p>")
    @as("Expiration")
    expiration: option<expiration>,
    @ocaml.doc("<p>Container for all response elements.</p>") @as("CopyObjectResult")
    copyObjectResult: option<copyObjectResult>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "CopyObjectCommand"
  let make = (
    ~key,
    ~copySource,
    ~bucket,
    ~expectedSourceBucketOwner=?,
    ~expectedBucketOwner=?,
    ~objectLockLegalHoldStatus=?,
    ~objectLockRetainUntilDate=?,
    ~objectLockMode=?,
    ~tagging=?,
    ~requestPayer=?,
    ~copySourceSSECustomerKeyMD5=?,
    ~copySourceSSECustomerKey=?,
    ~copySourceSSECustomerAlgorithm=?,
    ~bucketKeyEnabled=?,
    ~ssekmsencryptionContext=?,
    ~ssekmskeyId=?,
    ~ssecustomerKeyMD5=?,
    ~ssecustomerKey=?,
    ~ssecustomerAlgorithm=?,
    ~websiteRedirectLocation=?,
    ~storageClass=?,
    ~serverSideEncryption=?,
    ~taggingDirective=?,
    ~metadataDirective=?,
    ~metadata=?,
    ~grantWriteACP=?,
    ~grantReadACP=?,
    ~grantRead=?,
    ~grantFullControl=?,
    ~expires=?,
    ~copySourceIfUnmodifiedSince=?,
    ~copySourceIfNoneMatch=?,
    ~copySourceIfModifiedSince=?,
    ~copySourceIfMatch=?,
    ~contentType=?,
    ~contentLanguage=?,
    ~contentEncoding=?,
    ~contentDisposition=?,
    ~cacheControl=?,
    ~acl=?,
    (),
  ) =>
    new({
      expectedSourceBucketOwner: expectedSourceBucketOwner,
      expectedBucketOwner: expectedBucketOwner,
      objectLockLegalHoldStatus: objectLockLegalHoldStatus,
      objectLockRetainUntilDate: objectLockRetainUntilDate,
      objectLockMode: objectLockMode,
      tagging: tagging,
      requestPayer: requestPayer,
      copySourceSSECustomerKeyMD5: copySourceSSECustomerKeyMD5,
      copySourceSSECustomerKey: copySourceSSECustomerKey,
      copySourceSSECustomerAlgorithm: copySourceSSECustomerAlgorithm,
      bucketKeyEnabled: bucketKeyEnabled,
      ssekmsencryptionContext: ssekmsencryptionContext,
      ssekmskeyId: ssekmskeyId,
      ssecustomerKeyMD5: ssecustomerKeyMD5,
      ssecustomerKey: ssecustomerKey,
      ssecustomerAlgorithm: ssecustomerAlgorithm,
      websiteRedirectLocation: websiteRedirectLocation,
      storageClass: storageClass,
      serverSideEncryption: serverSideEncryption,
      taggingDirective: taggingDirective,
      metadataDirective: metadataDirective,
      metadata: metadata,
      key: key,
      grantWriteACP: grantWriteACP,
      grantReadACP: grantReadACP,
      grantRead: grantRead,
      grantFullControl: grantFullControl,
      expires: expires,
      copySourceIfUnmodifiedSince: copySourceIfUnmodifiedSince,
      copySourceIfNoneMatch: copySourceIfNoneMatch,
      copySourceIfModifiedSince: copySourceIfModifiedSince,
      copySourceIfMatch: copySourceIfMatch,
      copySource: copySource,
      contentType: contentType,
      contentLanguage: contentLanguage,
      contentEncoding: contentEncoding,
      contentDisposition: contentDisposition,
      cacheControl: cacheControl,
      bucket: bucket,
      acl: acl,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListParts = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>Upload ID identifying the multipart upload whose parts are being listed.</p>")
    @as("UploadId")
    uploadId: multipartUploadId,
    @ocaml.doc("<p>Specifies the part after which listing should begin. Only parts with higher part numbers
         will be listed.</p>")
    @as("PartNumberMarker")
    partNumberMarker: option<partNumberMarker>,
    @ocaml.doc("<p>Sets the maximum number of parts to return.</p>") @as("MaxParts")
    maxParts: option<maxParts>,
    @ocaml.doc("<p>Object key for which the multipart upload was initiated.</p>") @as("Key")
    key: objectKey,
    @ocaml.doc("<p>The name of the bucket to which the parts are being uploaded. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc("<p>Class of storage (STANDARD or REDUCED_REDUNDANCY) used to store the uploaded
         object.</p>")
    @as("StorageClass")
    storageClass: option<storageClass>,
    @ocaml.doc("<p> Container element that identifies the object owner, after the object is created. If
         multipart upload is initiated by an IAM user, this element provides the parent account ID
         and display name.</p>")
    @as("Owner")
    owner: option<owner>,
    @ocaml.doc("<p>Container element that identifies who initiated the multipart upload. If the initiator
         is an AWS account, this element provides the same information as the <code>Owner</code>
         element. If the initiator is an IAM User, this element provides the user ARN and display
         name.</p>")
    @as("Initiator")
    initiator: option<initiator>,
    @ocaml.doc("<p> Container for elements related to a particular part. A response can contain zero or
         more <code>Part</code> elements.</p>")
    @as("Parts")
    parts: option<parts>,
    @ocaml.doc("<p> Indicates whether the returned list of parts is truncated. A true value indicates that
         the list was truncated. A list can be truncated if the number of parts exceeds the limit
         returned in the MaxParts element.</p>")
    @as("IsTruncated")
    isTruncated: option<isTruncated>,
    @ocaml.doc("<p>Maximum number of parts that were allowed in the response.</p>") @as("MaxParts")
    maxParts: option<maxParts>,
    @ocaml.doc("<p>When a list is truncated, this element specifies the last part in the list, as well as
         the value to use for the part-number-marker request parameter in a subsequent
         request.</p>")
    @as("NextPartNumberMarker")
    nextPartNumberMarker: option<nextPartNumberMarker>,
    @ocaml.doc("<p>When a list is truncated, this element specifies the last part in the list, as well as
         the value to use for the part-number-marker request parameter in a subsequent
         request.</p>")
    @as("PartNumberMarker")
    partNumberMarker: option<partNumberMarker>,
    @ocaml.doc("<p>Upload ID identifying the multipart upload whose parts are being listed.</p>")
    @as("UploadId")
    uploadId: option<multipartUploadId>,
    @ocaml.doc("<p>Object key for which the multipart upload was initiated.</p>") @as("Key")
    key: option<objectKey>,
    @ocaml.doc("<p>The name of the bucket to which the multipart upload was initiated.</p>")
    @as("Bucket")
    bucket: option<bucketName>,
    @ocaml.doc("<p>This header is returned along with the <code>x-amz-abort-date</code> header. It
         identifies applicable lifecycle configuration rule that defines the action to abort
         incomplete multipart uploads.</p>")
    @as("AbortRuleId")
    abortRuleId: option<abortRuleId>,
    @ocaml.doc("<p>If the bucket has a lifecycle rule configured with an action to abort incomplete
         multipart uploads and the prefix in the lifecycle rule matches the object name in the
         request, then the response includes this header indicating when the initiated multipart
         upload will become eligible for abort operation. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config\">Aborting
            Incomplete Multipart Uploads Using a Bucket Lifecycle Policy</a>.</p>

         <p>The response will also include the <code>x-amz-abort-rule-id</code> header that will
         provide the ID of the lifecycle configuration rule that defines this action.</p>")
    @as("AbortDate")
    abortDate: option<abortDate>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListPartsCommand"
  let make = (
    ~uploadId,
    ~key,
    ~bucket,
    ~expectedBucketOwner=?,
    ~requestPayer=?,
    ~partNumberMarker=?,
    ~maxParts=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      uploadId: uploadId,
      partNumberMarker: partNumberMarker,
      maxParts: maxParts,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBuckets = {
  type t

  type response = {
    @ocaml.doc("<p>The owner of the buckets listed.</p>") @as("Owner") owner: option<owner>,
    @ocaml.doc("<p>The list of buckets owned by the requestor.</p>") @as("Buckets")
    buckets: option<buckets>,
  }
  @module("@aws-sdk/client-s3") @new external new: unit => t = "ListBucketsCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObjectTagging = {
  type t
  type request = {
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The versionId of the object for which to get the tagging information.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>Object key for which to get the tagging information.</p>") @as("Key")
    key: objectKey,
    @ocaml.doc("<p>The bucket name containing the object for which to get the tagging information. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Contains the tag set.</p>") @as("TagSet") tagSet: tagSet,
    @ocaml.doc("<p>The versionId of the object for which you got the tagging information.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetObjectTaggingCommand"
  let make = (~key, ~bucket, ~requestPayer=?, ~expectedBucketOwner=?, ~versionId=?, ()) =>
    new({
      requestPayer: requestPayer,
      expectedBucketOwner: expectedBucketOwner,
      versionId: versionId,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketTagging = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the bucket for which to get the tagging information.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {@ocaml.doc("<p>Contains the tag set.</p>") @as("TagSet") tagSet: tagSet}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketTaggingCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SelectObjectContent = {
  type t
  @ocaml.doc("<p>Request to filter the contents of an Amazon S3 object based on a simple Structured Query
         Language (SQL) statement. In the request, along with the SQL expression, you must specify a
         data serialization format (JSON or CSV) of the object. Amazon S3 uses this to parse object data
         into records. It returns only records that match the specified SQL expression. You must
         also specify the data serialization format for the response. For more information, see
            <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectSELECTContent.html\">S3Select API Documentation</a>.</p>")
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Specifies the byte range of the object to get the records from. A record is processed
         when its first byte is contained by the range. This parameter is optional, but when
         specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the
         start and end of the range.</p>
         <p>
            <code>ScanRange</code>may be used in the following ways:</p>
         <ul>
            <li>
               <p>
                  <code><scanrange><start>50</start><end>100</end></scanrange></code>
               - process only the records starting between the bytes 50 and 100 (inclusive, counting
               from zero)</p>
            </li>
            <li>
               <p>
                  <code><scanrange><start>50</start></scanrange></code> -
               process only the records starting after the byte 50</p>
            </li>
            <li>
               <p>
                  <code><scanrange><end>50</end></scanrange></code> -
               process only the records within the last 50 bytes of the file.</p>
            </li>
         </ul>")
    @as("ScanRange")
    scanRange: option<scanRange>,
    @ocaml.doc(
      "<p>Describes the format of the data that you want Amazon S3 to return in response.</p>"
    )
    @as("OutputSerialization")
    outputSerialization: outputSerialization,
    @ocaml.doc("<p>Describes the format of the data in the object that is being queried.</p>")
    @as("InputSerialization")
    inputSerialization: inputSerialization,
    @ocaml.doc("<p>Specifies if periodic request progress information should be enabled.</p>")
    @as("RequestProgress")
    requestProgress: option<requestProgress>,
    @ocaml.doc("<p>The type of the provided expression (for example, SQL).</p>")
    @as("ExpressionType")
    expressionType: expressionType,
    @ocaml.doc("<p>The expression that is used to query the object.</p>") @as("Expression")
    expression: expression,
    @ocaml.doc("<p>The SSE Customer Key MD5. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html\">Server-Side Encryption
            (Using Customer-Provided Encryption Keys</a>. </p>")
    @as("SSECustomerKeyMD5")
    ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @ocaml.doc("<p>The SSE Customer Key. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html\">Server-Side Encryption
            (Using Customer-Provided Encryption Keys</a>. </p>")
    @as("SSECustomerKey")
    ssecustomerKey: option<ssecustomerKey>,
    @ocaml.doc(
      "<p>The SSE Algorithm used to encrypt the object. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html\">Server-Side Encryption (Using Customer-Provided Encryption Keys</a>. </p>"
    )
    @as("SSECustomerAlgorithm")
    ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @ocaml.doc("<p>The object key.</p>") @as("Key") key: objectKey,
    @ocaml.doc("<p>The S3 bucket.</p>") @as("Bucket") bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The array of results.</p>") @as("Payload")
    payload: option<selectObjectContentEventStream>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "SelectObjectContentCommand"
  let make = (
    ~outputSerialization,
    ~inputSerialization,
    ~expressionType,
    ~expression,
    ~key,
    ~bucket,
    ~expectedBucketOwner=?,
    ~scanRange=?,
    ~requestProgress=?,
    ~ssecustomerKeyMD5=?,
    ~ssecustomerKey=?,
    ~ssecustomerAlgorithm=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      scanRange: scanRange,
      outputSerialization: outputSerialization,
      inputSerialization: inputSerialization,
      requestProgress: requestProgress,
      expressionType: expressionType,
      expression: expression,
      ssecustomerKeyMD5: ssecustomerKeyMD5,
      ssecustomerKey: ssecustomerKey,
      ssecustomerAlgorithm: ssecustomerAlgorithm,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutObjectTagging = {
  type t
  type request = {
    @ocaml.doc("<p>Container for the <code>TagSet</code> and <code>Tag</code> elements</p>")
    @as("Tagging")
    tagging: tagging,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The MD5 hash for the request body.</p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>The versionId of the object that the tag-set will be added to.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>Name of the object key.</p>") @as("Key") key: objectKey,
    @ocaml.doc("<p>The bucket name containing the object. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The versionId of the object the tag-set was added to.</p>") @as("VersionId")
    versionId: option<objectVersionId>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutObjectTaggingCommand"
  let make = (
    ~tagging,
    ~key,
    ~bucket,
    ~requestPayer=?,
    ~expectedBucketOwner=?,
    ~contentMD5=?,
    ~versionId=?,
    (),
  ) =>
    new({
      tagging: tagging,
      requestPayer: requestPayer,
      expectedBucketOwner: expectedBucketOwner,
      contentMD5: contentMD5,
      versionId: versionId,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutObjectLockConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Object Lock configuration that you want to apply to the specified bucket.</p>"
    )
    @as("ObjectLockConfiguration")
    objectLockConfiguration: option<objectLockConfiguration>,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The MD5 hash for the request body.</p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>A token to allow Object Lock to be enabled for an existing bucket.</p>")
    @as("Token")
    token: option<objectLockToken>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>The bucket whose Object Lock configuration you want to create or replace.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {@as("RequestCharged") requestCharged: option<requestCharged>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutObjectLockConfigurationCommand"
  let make = (
    ~bucket,
    ~objectLockConfiguration=?,
    ~expectedBucketOwner=?,
    ~contentMD5=?,
    ~token=?,
    ~requestPayer=?,
    (),
  ) =>
    new({
      objectLockConfiguration: objectLockConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      contentMD5: contentMD5,
      token: token,
      requestPayer: requestPayer,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketTagging = {
  type t
  type request = {
    @ocaml.doc("<p>Container for the <code>TagSet</code> and <code>Tag</code> elements.</p>")
    @as("Tagging")
    tagging: tagging,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
         integrity check to verify that the request body was not corrupted in transit. For more
         information, see <a href=\"http://www.ietf.org/rfc/rfc1864.txt\">RFC 1864</a>.</p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>The bucket name.</p>") @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketTaggingCommand"
  let make = (~tagging, ~bucket, ~expectedBucketOwner=?, ~contentMD5=?, ()) =>
    new({
      tagging: tagging,
      expectedBucketOwner: expectedBucketOwner,
      contentMD5: contentMD5,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketOwnershipControls = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>OwnershipControls</code> (BucketOwnerPreferred or ObjectWriter) that you want
         to apply to this Amazon S3 bucket.</p>")
    @as("OwnershipControls")
    ownershipControls: ownershipControls,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The MD5 hash of the <code>OwnershipControls</code> request body. </p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc(
      "<p>The name of the Amazon S3 bucket whose <code>OwnershipControls</code> you want to set.</p>"
    )
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketOwnershipControlsCommand"
  let make = (~ownershipControls, ~bucket, ~expectedBucketOwner=?, ~contentMD5=?, ()) =>
    new({
      ownershipControls: ownershipControls,
      expectedBucketOwner: expectedBucketOwner,
      contentMD5: contentMD5,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListObjectsV2 = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Confirms that the requester knows that she or he will be charged for the list objects
         request in V2 style. Bucket owners need not specify this parameter in their
         requests.</p>")
    @as("RequestPayer")
    requestPayer: option<requestPayer>,
    @ocaml.doc("<p>StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this
         specified key. StartAfter can be any key in the bucket.</p>")
    @as("StartAfter")
    startAfter: option<startAfter>,
    @ocaml.doc("<p>The owner field is not present in listV2 by default, if you want to return owner field
         with each key in the result then set the fetch owner field to true.</p>")
    @as("FetchOwner")
    fetchOwner: option<fetchOwner>,
    @ocaml.doc("<p>ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a
         token. ContinuationToken is obfuscated and is not a real key.</p>")
    @as("ContinuationToken")
    continuationToken: option<token>,
    @ocaml.doc("<p>Limits the response to keys that begin with the specified prefix.</p>")
    @as("Prefix")
    prefix: option<prefix>,
    @ocaml.doc("<p>Sets the maximum number of keys returned in the response. By default the action returns up
         to 1,000 key names. The response might contain fewer keys but will never contain
         more.</p>")
    @as("MaxKeys")
    maxKeys: option<maxKeys>,
    @ocaml.doc("<p>Encoding type used by Amazon S3 to encode object keys in the response.</p>")
    @as("EncodingType")
    encodingType: option<encodingType>,
    @ocaml.doc("<p>A delimiter is a character you use to group keys.</p>") @as("Delimiter")
    delimiter: option<delimiter>,
    @ocaml.doc("<p>Bucket name to list. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>If StartAfter was sent with the request, it is included in the response.</p>")
    @as("StartAfter")
    startAfter: option<startAfter>,
    @ocaml.doc("<p>
            <code>NextContinuationToken</code> is sent when <code>isTruncated</code> is true, which
         means there are more keys in the bucket that can be listed. The next list requests to Amazon S3
         can be continued with this <code>NextContinuationToken</code>.
            <code>NextContinuationToken</code> is obfuscated and is not a real key</p>")
    @as("NextContinuationToken")
    nextContinuationToken: option<nextToken>,
    @ocaml.doc(
      "<p> If ContinuationToken was sent with the request, it is included in the response.</p>"
    )
    @as("ContinuationToken")
    continuationToken: option<token>,
    @ocaml.doc("<p>KeyCount is the number of keys returned with this request. KeyCount will always be less
         than or equals to MaxKeys field. Say you ask for 50 keys, your result will include less than
         equals 50 keys </p>")
    @as("KeyCount")
    keyCount: option<keyCount>,
    @ocaml.doc("<p>Encoding type used by Amazon S3 to encode object key names in the XML response.</p>

         <p>If you specify the encoding-type request parameter, Amazon S3 includes this element in the
         response, and returns encoded key name values in the following response elements:</p>

         <p>
            <code>Delimiter, Prefix, Key,</code> and <code>StartAfter</code>.</p>")
    @as("EncodingType")
    encodingType: option<encodingType>,
    @ocaml.doc("<p>All of the keys (up to 1,000) rolled up into a common prefix count as a single return when calculating
         the number of returns.</p>

         <p>A response can contain <code>CommonPrefixes</code> only if you specify a
         delimiter.</p>

         <p>
            <code>CommonPrefixes</code> contains all (if there are any) keys between
            <code>Prefix</code> and the next occurrence of the string specified by a
         delimiter.</p>

         <p>
            <code>CommonPrefixes</code> lists keys that act like subdirectories in the directory
         specified by <code>Prefix</code>.</p>

         <p>For example, if the prefix is <code>notes/</code> and the delimiter is a slash
            (<code>/</code>) as in <code>notes/summer/july</code>, the common prefix is
            <code>notes/summer/</code>. All of the keys that roll up into a common prefix count as a
         single return when calculating the number of returns. </p>")
    @as("CommonPrefixes")
    commonPrefixes: option<commonPrefixList>,
    @ocaml.doc("<p>Sets the maximum number of keys returned in the response. By default the action returns up
         to 1,000 key names. The response might contain fewer keys but will never contain
         more.</p>")
    @as("MaxKeys")
    maxKeys: option<maxKeys>,
    @ocaml.doc("<p>Causes keys that contain the same string between the prefix and the first occurrence of
         the delimiter to be rolled up into a single result element in the CommonPrefixes
         collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up
         result counts as only one return against the <code>MaxKeys</code> value.</p>")
    @as("Delimiter")
    delimiter: option<delimiter>,
    @ocaml.doc("<p> Keys that begin with the indicated prefix.</p>") @as("Prefix")
    prefix: option<prefix>,
    @ocaml.doc("<p>The bucket name.</p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Name")
    name: option<bucketName>,
    @ocaml.doc("<p>Metadata about each object returned.</p>") @as("Contents")
    contents: option<objectList>,
    @ocaml.doc("<p>Set to false if all of the results were returned. Set to true if more keys are available
         to return. If the number of results exceeds that specified by MaxKeys, all of the results
         might not be returned.</p>")
    @as("IsTruncated")
    isTruncated: option<isTruncated>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListObjectsV2Command"
  let make = (
    ~bucket,
    ~expectedBucketOwner=?,
    ~requestPayer=?,
    ~startAfter=?,
    ~fetchOwner=?,
    ~continuationToken=?,
    ~prefix=?,
    ~maxKeys=?,
    ~encodingType=?,
    ~delimiter=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      startAfter: startAfter,
      fetchOwner: fetchOwner,
      continuationToken: continuationToken,
      prefix: prefix,
      maxKeys: maxKeys,
      encodingType: encodingType,
      delimiter: delimiter,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListObjects = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Confirms that the requester knows that she or he will be charged for the list objects
         request. Bucket owners need not specify this parameter in their requests.</p>")
    @as("RequestPayer")
    requestPayer: option<requestPayer>,
    @ocaml.doc("<p>Limits the response to keys that begin with the specified prefix.</p>")
    @as("Prefix")
    prefix: option<prefix>,
    @ocaml.doc("<p>Sets the maximum number of keys returned in the response. By default the action returns up
         to 1,000 key names. The response might contain fewer keys but will never contain more.
      </p>")
    @as("MaxKeys")
    maxKeys: option<maxKeys>,
    @ocaml.doc("<p>Specifies the key to start with when listing objects in a bucket.</p>")
    @as("Marker")
    marker: option<marker>,
    @as("EncodingType") encodingType: option<encodingType>,
    @ocaml.doc("<p>A delimiter is a character you use to group keys.</p>") @as("Delimiter")
    delimiter: option<delimiter>,
    @ocaml.doc("<p>The name of the bucket containing the objects.</p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Encoding type used by Amazon S3 to encode object keys in the response.</p>")
    @as("EncodingType")
    encodingType: option<encodingType>,
    @ocaml.doc("<p>All of the keys (up to 1,000) rolled up in a common prefix count as a single return when calculating
         the number of returns. </p>

         <p>A response can contain CommonPrefixes only if you specify a delimiter.</p>

         <p>CommonPrefixes contains all (if there are any) keys between Prefix and the next
         occurrence of the string specified by the delimiter.</p>

         <p> CommonPrefixes lists keys that act like subdirectories in the directory specified by
         Prefix.</p>

         <p>For example, if the prefix is notes/ and the delimiter is a slash (/) as in
         notes/summer/july, the common prefix is notes/summer/. All of the keys that roll up into a
         common prefix count as a single return when calculating the number of returns.</p>")
    @as("CommonPrefixes")
    commonPrefixes: option<commonPrefixList>,
    @ocaml.doc("<p>The maximum number of keys returned in the response body.</p>") @as("MaxKeys")
    maxKeys: option<maxKeys>,
    @ocaml.doc("<p>Causes keys that contain the same string between the prefix and the first occurrence of
         the delimiter to be rolled up into a single result element in the
            <code>CommonPrefixes</code> collection. These rolled-up keys are not returned elsewhere
         in the response. Each rolled-up result counts as only one return against the
            <code>MaxKeys</code> value.</p>")
    @as("Delimiter")
    delimiter: option<delimiter>,
    @ocaml.doc("<p>Keys that begin with the indicated prefix.</p>") @as("Prefix")
    prefix: option<prefix>,
    @ocaml.doc("<p>The bucket name.</p>") @as("Name") name: option<bucketName>,
    @ocaml.doc("<p>Metadata about each object returned.</p>") @as("Contents")
    contents: option<objectList>,
    @ocaml.doc("<p>When response is truncated (the IsTruncated element value in the response is true), you
         can use the key name in this field as marker in the subsequent request to get next set of
         objects. Amazon S3 lists objects in alphabetical order Note: This element is returned only if
         you have delimiter request parameter specified. If response does not include the NextMarker
         and it is truncated, you can use the value of the last Key in the response as the marker in
         the subsequent request to get the next set of object keys.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
    @ocaml.doc("<p>Indicates where in the bucket listing begins. Marker is included in the response if it
         was sent with the request.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>A flag that indicates whether Amazon S3 returned all of the results that satisfied the search
         criteria.</p>")
    @as("IsTruncated")
    isTruncated: option<isTruncated>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListObjectsCommand"
  let make = (
    ~bucket,
    ~expectedBucketOwner=?,
    ~requestPayer=?,
    ~prefix=?,
    ~maxKeys=?,
    ~marker=?,
    ~encodingType=?,
    ~delimiter=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      prefix: prefix,
      maxKeys: maxKeys,
      marker: marker,
      encodingType: encodingType,
      delimiter: delimiter,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListObjectVersions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Specifies the object version you want to start listing from.</p>")
    @as("VersionIdMarker")
    versionIdMarker: option<versionIdMarker>,
    @ocaml.doc("<p>Use this parameter to select only those keys that begin with the specified prefix. You
         can use prefixes to separate a bucket into different groupings of keys. (You can think of
         using prefix to make groups in the same way you'd use a folder in a file system.) You can
         use prefix with delimiter to roll up numerous objects into a single result under
         CommonPrefixes. </p>")
    @as("Prefix")
    prefix: option<prefix>,
    @ocaml.doc("<p>Sets the maximum number of keys returned in the response. By default the action returns up
         to 1,000 key names. The response might contain fewer keys but will never contain more. If
         additional keys satisfy the search criteria, but were not returned because max-keys was
         exceeded, the response contains <isTruncated>true</isTruncated>. To return the
         additional keys, see key-marker and version-id-marker.</p>")
    @as("MaxKeys")
    maxKeys: option<maxKeys>,
    @ocaml.doc("<p>Specifies the key to start with when listing objects in a bucket.</p>")
    @as("KeyMarker")
    keyMarker: option<keyMarker>,
    @as("EncodingType") encodingType: option<encodingType>,
    @ocaml.doc("<p>A delimiter is a character that you specify to group keys. All keys that contain the
         same string between the <code>prefix</code> and the first occurrence of the delimiter are
         grouped under a single result element in CommonPrefixes. These groups are counted as one
         result against the max-keys limitation. These keys are not returned elsewhere in the
         response.</p>")
    @as("Delimiter")
    delimiter: option<delimiter>,
    @ocaml.doc("<p>The bucket name that contains the objects. </p>") @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p> Encoding type used by Amazon S3 to encode object key names in the XML response.</p>

         <p>If you specify encoding-type request parameter, Amazon S3 includes this element in the
         response, and returns encoded key name values in the following response elements:</p>

         <p>
            <code>KeyMarker, NextKeyMarker, Prefix, Key</code>, and <code>Delimiter</code>.</p>")
    @as("EncodingType")
    encodingType: option<encodingType>,
    @ocaml.doc("<p>All of the keys rolled up into a common prefix count as a single return when calculating
         the number of returns.</p>")
    @as("CommonPrefixes")
    commonPrefixes: option<commonPrefixList>,
    @ocaml.doc("<p>Specifies the maximum number of objects to return.</p>") @as("MaxKeys")
    maxKeys: option<maxKeys>,
    @ocaml.doc("<p>The delimiter grouping the included keys. A delimiter is a character that you specify to
         group keys. All keys that contain the same string between the prefix and the first
         occurrence of the delimiter are grouped under a single result element in
            <code>CommonPrefixes</code>. These groups are counted as one result against the max-keys
         limitation. These keys are not returned elsewhere in the response.</p>")
    @as("Delimiter")
    delimiter: option<delimiter>,
    @ocaml.doc("<p>Selects objects that start with the value supplied by this parameter.</p>")
    @as("Prefix")
    prefix: option<prefix>,
    @ocaml.doc("<p>The bucket name.</p>") @as("Name") name: option<bucketName>,
    @ocaml.doc("<p>Container for an object that is a delete marker.</p>") @as("DeleteMarkers")
    deleteMarkers: option<deleteMarkers>,
    @ocaml.doc("<p>Container for version information.</p>") @as("Versions")
    versions: option<objectVersionList>,
    @ocaml.doc("<p>When the number of responses exceeds the value of <code>MaxKeys</code>,
            <code>NextVersionIdMarker</code> specifies the first object version not returned that
         satisfies the search criteria. Use this value for the version-id-marker request parameter
         in a subsequent request.</p>")
    @as("NextVersionIdMarker")
    nextVersionIdMarker: option<nextVersionIdMarker>,
    @ocaml.doc("<p>When the number of responses exceeds the value of <code>MaxKeys</code>,
            <code>NextKeyMarker</code> specifies the first key not returned that satisfies the
         search criteria. Use this value for the key-marker request parameter in a subsequent
         request.</p>")
    @as("NextKeyMarker")
    nextKeyMarker: option<nextKeyMarker>,
    @ocaml.doc("<p>Marks the last version of the key returned in a truncated response.</p>")
    @as("VersionIdMarker")
    versionIdMarker: option<versionIdMarker>,
    @ocaml.doc("<p>Marks the last key returned in a truncated response.</p>") @as("KeyMarker")
    keyMarker: option<keyMarker>,
    @ocaml.doc("<p>A flag that indicates whether Amazon S3 returned all of the results that satisfied the search
         criteria. If your results were truncated, you can make a follow-up paginated request using
         the NextKeyMarker and NextVersionIdMarker response parameters as a starting place in
         another request to return the rest of the results.</p>")
    @as("IsTruncated")
    isTruncated: option<isTruncated>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListObjectVersionsCommand"
  let make = (
    ~bucket,
    ~expectedBucketOwner=?,
    ~versionIdMarker=?,
    ~prefix=?,
    ~maxKeys=?,
    ~keyMarker=?,
    ~encodingType=?,
    ~delimiter=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      versionIdMarker: versionIdMarker,
      prefix: prefix,
      maxKeys: maxKeys,
      keyMarker: keyMarker,
      encodingType: encodingType,
      delimiter: delimiter,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMultipartUploads = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Together with key-marker, specifies the multipart upload after which listing should
         begin. If key-marker is not specified, the upload-id-marker parameter is ignored.
         Otherwise, any multipart uploads for a key equal to the key-marker might be included in the
         list only if they have an upload ID lexicographically greater than the specified
            <code>upload-id-marker</code>.</p>")
    @as("UploadIdMarker")
    uploadIdMarker: option<uploadIdMarker>,
    @ocaml.doc("<p>Lists in-progress uploads only for those keys that begin with the specified prefix. You
         can use prefixes to separate a bucket into different grouping of keys. (You can think of
         using prefix to make groups in the same way you'd use a folder in a file system.)</p>")
    @as("Prefix")
    prefix: option<prefix>,
    @ocaml.doc("<p>Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response
         body. 1,000 is the maximum number of uploads that can be returned in a response.</p>")
    @as("MaxUploads")
    maxUploads: option<maxUploads>,
    @ocaml.doc("<p>Together with upload-id-marker, this parameter specifies the multipart upload after
         which listing should begin.</p>
         <p>If <code>upload-id-marker</code> is not specified, only the keys lexicographically
         greater than the specified <code>key-marker</code> will be included in the list.</p>

         <p>If <code>upload-id-marker</code> is specified, any multipart uploads for a key equal to
         the <code>key-marker</code> might also be included, provided those multipart uploads have
         upload IDs lexicographically greater than the specified
         <code>upload-id-marker</code>.</p>")
    @as("KeyMarker")
    keyMarker: option<keyMarker>,
    @as("EncodingType") encodingType: option<encodingType>,
    @ocaml.doc("<p>Character you use to group keys.</p>
         <p>All keys that contain the same string between the prefix, if specified, and the first
         occurrence of the delimiter after the prefix are grouped under a single result element,
            <code>CommonPrefixes</code>. If you don't specify the prefix parameter, then the
         substring starts at the beginning of the key. The keys that are grouped under
            <code>CommonPrefixes</code> result element are not returned elsewhere in the
         response.</p>")
    @as("Delimiter")
    delimiter: option<delimiter>,
    @ocaml.doc("<p>The name of the bucket to which the multipart upload was initiated. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
         <p>If you specify <code>encoding-type</code> request parameter, Amazon S3 includes this element
         in the response, and returns encoded key name values in the following response
         elements:</p>

         <p>
            <code>Delimiter</code>, <code>KeyMarker</code>, <code>Prefix</code>,
            <code>NextKeyMarker</code>, <code>Key</code>.</p>")
    @as("EncodingType")
    encodingType: option<encodingType>,
    @ocaml.doc("<p>If you specify a delimiter in the request, then the result returns each distinct key
         prefix containing the delimiter in a <code>CommonPrefixes</code> element. The distinct key
         prefixes are returned in the <code>Prefix</code> child element.</p>")
    @as("CommonPrefixes")
    commonPrefixes: option<commonPrefixList>,
    @ocaml.doc("<p>Container for elements related to a particular multipart upload. A response can contain
         zero or more <code>Upload</code> elements.</p>")
    @as("Uploads")
    uploads: option<multipartUploadList>,
    @ocaml.doc("<p>Indicates whether the returned list of multipart uploads is truncated. A value of true
         indicates that the list was truncated. The list can be truncated if the number of multipart
         uploads exceeds the limit allowed or specified by max uploads.</p>")
    @as("IsTruncated")
    isTruncated: option<isTruncated>,
    @ocaml.doc("<p>Maximum number of multipart uploads that could have been included in the
         response.</p>")
    @as("MaxUploads")
    maxUploads: option<maxUploads>,
    @ocaml.doc("<p>When a list is truncated, this element specifies the value that should be used for the
            <code>upload-id-marker</code> request parameter in a subsequent request.</p>")
    @as("NextUploadIdMarker")
    nextUploadIdMarker: option<nextUploadIdMarker>,
    @ocaml.doc("<p>Contains the delimiter you specified in the request. If you don't specify a delimiter in
         your request, this element is absent from the response.</p>")
    @as("Delimiter")
    delimiter: option<delimiter>,
    @ocaml.doc("<p>When a prefix is provided in the request, this field contains the specified prefix. The
         result contains only keys starting with the specified prefix.</p>")
    @as("Prefix")
    prefix: option<prefix>,
    @ocaml.doc("<p>When a list is truncated, this element specifies the value that should be used for the
         key-marker request parameter in a subsequent request.</p>")
    @as("NextKeyMarker")
    nextKeyMarker: option<nextKeyMarker>,
    @ocaml.doc("<p>Upload ID after which listing began.</p>") @as("UploadIdMarker")
    uploadIdMarker: option<uploadIdMarker>,
    @ocaml.doc("<p>The key at or after which the listing began.</p>") @as("KeyMarker")
    keyMarker: option<keyMarker>,
    @ocaml.doc("<p>The name of the bucket to which the multipart upload was initiated.</p>")
    @as("Bucket")
    bucket: option<bucketName>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListMultipartUploadsCommand"
  let make = (
    ~bucket,
    ~expectedBucketOwner=?,
    ~uploadIdMarker=?,
    ~prefix=?,
    ~maxUploads=?,
    ~keyMarker=?,
    ~encodingType=?,
    ~delimiter=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      uploadIdMarker: uploadIdMarker,
      prefix: prefix,
      maxUploads: maxUploads,
      keyMarker: keyMarker,
      encodingType: encodingType,
      delimiter: delimiter,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObjectLockConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The bucket whose Object Lock configuration you want to retrieve.</p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The specified bucket's Object Lock configuration.</p>")
    @as("ObjectLockConfiguration")
    objectLockConfiguration: option<objectLockConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetObjectLockConfigurationCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObjectAcl = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>VersionId used to reference a specific version of the object.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>The key of the object for which to get the ACL information.</p>") @as("Key")
    key: objectKey,
    @ocaml.doc("<p>The bucket name that contains the object for which to get the ACL information. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc("<p>A list of grants.</p>") @as("Grants") grants: option<grants>,
    @ocaml.doc("<p> Container for the bucket owner's display name and ID.</p>") @as("Owner")
    owner: option<owner>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetObjectAclCommand"
  let make = (~key, ~bucket, ~expectedBucketOwner=?, ~requestPayer=?, ~versionId=?, ()) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      versionId: versionId,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketWebsite = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The bucket name for which to get the website configuration.</p>") @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Rules that define when a redirect is applied and the redirect behavior.</p>")
    @as("RoutingRules")
    routingRules: option<routingRules>,
    @ocaml.doc(
      "<p>The object key name of the website error document to use for 4XX class errors.</p>"
    )
    @as("ErrorDocument")
    errorDocument: option<errorDocument>,
    @ocaml.doc("<p>The name of the index document for the website (for example
         <code>index.html</code>).</p>")
    @as("IndexDocument")
    indexDocument: option<indexDocument>,
    @ocaml.doc("<p>Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3
         bucket.</p>")
    @as("RedirectAllRequestsTo")
    redirectAllRequestsTo: option<redirectAllRequestsTo>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketWebsiteCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketOwnershipControls = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the Amazon S3 bucket whose <code>OwnershipControls</code> you want to retrieve.
      </p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The <code>OwnershipControls</code> (BucketOwnerPreferred or ObjectWriter) currently in
         effect for this Amazon S3 bucket.</p>")
    @as("OwnershipControls")
    ownershipControls: option<ownershipControls>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketOwnershipControlsCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketCors = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The bucket name for which to get the cors configuration.</p>") @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>A set of origins and methods (cross-origin access that you want to allow). You can add
         up to 100 rules to the configuration.</p>")
    @as("CORSRules")
    corsrules: option<corsrules>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketCorsCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketAcl = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Specifies the S3 bucket whose ACL is being requested.</p>") @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>A list of grants.</p>") @as("Grants") grants: option<grants>,
    @ocaml.doc("<p>Container for the bucket owner's display name and ID.</p>") @as("Owner")
    owner: option<owner>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketAclCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteObjects = {
  type t
  type request = {
    @ocaml.doc("<p>Container for the request.</p>") @as("Delete") delete: delete,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Specifies whether you want to delete this object even if it has a Governance-type Object
         Lock in place. You must have sufficient permissions to perform this operation.</p>")
    @as("BypassGovernanceRetention")
    bypassGovernanceRetention: option<bypassGovernanceRetention>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>The concatenation of the authentication device's serial number, a space, and the value
         that is displayed on your authentication device. Required to permanently delete a versioned
         object if versioning is configured with MFA delete enabled.</p>")
    @as("MFA")
    mfa: option<mfa>,
    @ocaml.doc("<p>The bucket name containing the objects to delete. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Container for a failed delete action that describes the object that Amazon S3 attempted to
         delete and the error it encountered.</p>")
    @as("Errors")
    errors: option<errors>,
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc("<p>Container element for a successful delete. It identifies the object that was
         successfully deleted.</p>")
    @as("Deleted")
    deleted: option<deletedObjects>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteObjectsCommand"
  let make = (
    ~delete,
    ~bucket,
    ~expectedBucketOwner=?,
    ~bypassGovernanceRetention=?,
    ~requestPayer=?,
    ~mfa=?,
    (),
  ) =>
    new({
      delete: delete,
      expectedBucketOwner: expectedBucketOwner,
      bypassGovernanceRetention: bypassGovernanceRetention,
      requestPayer: requestPayer,
      mfa: mfa,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CompleteMultipartUpload = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>ID for the initiated multipart upload.</p>") @as("UploadId")
    uploadId: multipartUploadId,
    @ocaml.doc("<p>The container for the multipart upload request information.</p>")
    @as("MultipartUpload")
    multipartUpload: option<completedMultipartUpload>,
    @ocaml.doc("<p>Object key for which the multipart upload was initiated.</p>") @as("Key")
    key: objectKey,
    @ocaml.doc("<p>Name of the bucket to which the multipart upload was initiated.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @ocaml.doc(
      "<p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).</p>"
    )
    @as("BucketKeyEnabled")
    bucketKeyEnabled: option<bucketKeyEnabled>,
    @ocaml.doc("<p>If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric
         customer managed customer master key (CMK) that was used for the object.</p>")
    @as("SSEKMSKeyId")
    ssekmskeyId: option<ssekmskeyId>,
    @ocaml.doc("<p>Version ID of the newly created object, in case the bucket has versioning turned
         on.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>If you specified server-side encryption either with an Amazon S3-managed encryption key or an
         AWS KMS customer master key (CMK) in your initiate multipart upload request, the response
         includes this header. It confirms the encryption algorithm that Amazon S3 used to encrypt the
         object.</p>")
    @as("ServerSideEncryption")
    serverSideEncryption: option<serverSideEncryption>,
    @ocaml.doc("<p>Entity tag that identifies the newly created object's data. Objects with different
         object data will have different entity tags. The entity tag is an opaque string. The entity
         tag may or may not be an MD5 digest of the object data. If the entity tag is not an MD5
         digest of the object data, it will contain one or more nonhexadecimal characters and/or
         will consist of less than 32 or more than 32 hexadecimal digits.</p>")
    @as("ETag")
    etag: option<etag>,
    @ocaml.doc("<p>If the object expiration is configured, this will contain the expiration date
         (expiry-date) and rule ID (rule-id). The value of rule-id is URL encoded.</p>")
    @as("Expiration")
    expiration: option<expiration>,
    @ocaml.doc("<p>The object key of the newly created object.</p>") @as("Key")
    key: option<objectKey>,
    @ocaml.doc("<p>The name of the bucket that contains the newly created object.</p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: option<bucketName>,
    @ocaml.doc("<p>The URI that identifies the newly created object.</p>") @as("Location")
    location: option<location>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "CompleteMultipartUploadCommand"
  let make = (
    ~uploadId,
    ~key,
    ~bucket,
    ~expectedBucketOwner=?,
    ~requestPayer=?,
    ~multipartUpload=?,
    (),
  ) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      uploadId: uploadId,
      multipartUpload: multipartUpload,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutObjectAcl = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Contains the elements that set the ACL permissions for an object per grantee.</p>"
    )
    @as("AccessControlPolicy")
    accessControlPolicy: option<accessControlPolicy>,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>VersionId used to reference a specific version of the object.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>Key for which the PUT action was initiated.</p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Key")
    key: objectKey,
    @ocaml.doc("<p>Allows grantee to write the ACL for the applicable
      bucket.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantWriteACP")
    grantWriteACP: option<grantWriteACP>,
    @ocaml.doc("<p>Allows grantee to create new objects in the bucket.</p>
         <p>For the bucket and object owners of existing objects, also allows deletions and overwrites of those objects.</p>")
    @as("GrantWrite")
    grantWrite: option<grantWrite>,
    @ocaml.doc("<p>Allows grantee to read the bucket ACL.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantReadACP")
    grantReadACP: option<grantReadACP>,
    @ocaml.doc("<p>Allows grantee to list the objects in the
      bucket.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantRead")
    grantRead: option<grantRead>,
    @ocaml.doc("<p>Allows grantee the read, write, read ACP, and write ACP permissions on the
         bucket.</p>
         <p>This action is not supported by Amazon S3 on Outposts.</p>")
    @as("GrantFullControl")
    grantFullControl: option<grantFullControl>,
    @ocaml.doc("<p>The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message
         integrity check to verify that the request body was not corrupted in transit. For more
         information, go to <a href=\"http://www.ietf.org/rfc/rfc1864.txt\">RFC
         1864.></a>
         </p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>The bucket name that contains the object to which you want to attach the ACL. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc(
      "<p>The canned ACL to apply to the object. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL\">Canned ACL</a>.</p>"
    )
    @as("ACL")
    acl: option<objectCannedACL>,
  }
  type response = {@as("RequestCharged") requestCharged: option<requestCharged>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutObjectAclCommand"
  let make = (
    ~key,
    ~bucket,
    ~accessControlPolicy=?,
    ~expectedBucketOwner=?,
    ~versionId=?,
    ~requestPayer=?,
    ~grantWriteACP=?,
    ~grantWrite=?,
    ~grantReadACP=?,
    ~grantRead=?,
    ~grantFullControl=?,
    ~contentMD5=?,
    ~acl=?,
    (),
  ) =>
    new({
      accessControlPolicy: accessControlPolicy,
      expectedBucketOwner: expectedBucketOwner,
      versionId: versionId,
      requestPayer: requestPayer,
      key: key,
      grantWriteACP: grantWriteACP,
      grantWrite: grantWrite,
      grantReadACP: grantReadACP,
      grantRead: grantRead,
      grantFullControl: grantFullControl,
      contentMD5: contentMD5,
      bucket: bucket,
      acl: acl,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketWebsite = {
  type t
  type request = {
    @ocaml.doc("<p>Container for the request.</p>") @as("WebsiteConfiguration")
    websiteConfiguration: websiteConfiguration,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
         integrity check to verify that the request body was not corrupted in transit. For more
         information, see <a href=\"http://www.ietf.org/rfc/rfc1864.txt\">RFC 1864</a>.</p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>The bucket name.</p>") @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketWebsiteCommand"
  let make = (~websiteConfiguration, ~bucket, ~expectedBucketOwner=?, ~contentMD5=?, ()) =>
    new({
      websiteConfiguration: websiteConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      contentMD5: contentMD5,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketEncryption = {
  type t
  type request = {
    @as("ServerSideEncryptionConfiguration")
    serverSideEncryptionConfiguration: serverSideEncryptionConfiguration,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The base64-encoded 128-bit MD5 digest of the server-side encryption configuration.</p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>Specifies default encryption for a bucket using server-side encryption with Amazon S3-managed
         keys (SSE-S3) or customer master keys stored in AWS KMS (SSE-KMS). For information about
         the Amazon S3 default encryption feature, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html\">Amazon S3 Default Bucket Encryption</a>
         in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketEncryptionCommand"
  let make = (
    ~serverSideEncryptionConfiguration,
    ~bucket,
    ~expectedBucketOwner=?,
    ~contentMD5=?,
    (),
  ) =>
    new({
      serverSideEncryptionConfiguration: serverSideEncryptionConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      contentMD5: contentMD5,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketCors = {
  type t
  type request = {
    @ocaml.doc("<p>Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more
         information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html\">Enabling Cross-Origin Resource
            Sharing</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("CORSConfiguration")
    corsconfiguration: corsconfiguration,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message
         integrity check to verify that the request body was not corrupted in transit. For more
         information, go to <a href=\"http://www.ietf.org/rfc/rfc1864.txt\">RFC
         1864.</a>
         </p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>Specifies the bucket impacted by the <code>cors</code>configuration.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketCorsCommand"
  let make = (~corsconfiguration, ~bucket, ~expectedBucketOwner=?, ~contentMD5=?, ()) =>
    new({
      corsconfiguration: corsconfiguration,
      expectedBucketOwner: expectedBucketOwner,
      contentMD5: contentMD5,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketAcl = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Contains the elements that set the ACL permissions for an object per grantee.</p>"
    )
    @as("AccessControlPolicy")
    accessControlPolicy: option<accessControlPolicy>,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>Allows grantee to write the ACL for the applicable bucket.</p>")
    @as("GrantWriteACP")
    grantWriteACP: option<grantWriteACP>,
    @ocaml.doc("<p>Allows grantee to create new objects in the bucket.</p>
         <p>For the bucket and object owners of existing objects, also allows deletions and overwrites of those objects.</p>")
    @as("GrantWrite")
    grantWrite: option<grantWrite>,
    @ocaml.doc("<p>Allows grantee to read the bucket ACL.</p>") @as("GrantReadACP")
    grantReadACP: option<grantReadACP>,
    @ocaml.doc("<p>Allows grantee to list the objects in the bucket.</p>") @as("GrantRead")
    grantRead: option<grantRead>,
    @ocaml.doc("<p>Allows grantee the read, write, read ACP, and write ACP permissions on the
         bucket.</p>")
    @as("GrantFullControl")
    grantFullControl: option<grantFullControl>,
    @ocaml.doc("<p>The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message
         integrity check to verify that the request body was not corrupted in transit. For more
         information, go to <a href=\"http://www.ietf.org/rfc/rfc1864.txt\">RFC
         1864.</a>
         </p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>The bucket to which to apply the ACL.</p>") @as("Bucket") bucket: bucketName,
    @ocaml.doc("<p>The canned ACL to apply to the bucket.</p>") @as("ACL")
    acl: option<bucketCannedACL>,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketAclCommand"
  let make = (
    ~bucket,
    ~accessControlPolicy=?,
    ~expectedBucketOwner=?,
    ~grantWriteACP=?,
    ~grantWrite=?,
    ~grantReadACP=?,
    ~grantRead=?,
    ~grantFullControl=?,
    ~contentMD5=?,
    ~acl=?,
    (),
  ) =>
    new({
      accessControlPolicy: accessControlPolicy,
      expectedBucketOwner: expectedBucketOwner,
      grantWriteACP: grantWriteACP,
      grantWrite: grantWrite,
      grantReadACP: grantReadACP,
      grantRead: grantRead,
      grantFullControl: grantFullControl,
      contentMD5: contentMD5,
      bucket: bucket,
      acl: acl,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetBucketLogging = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The bucket name for which to get the logging information.</p>") @as("Bucket")
    bucket: bucketName,
  }
  type response = {@as("LoggingEnabled") loggingEnabled: option<loggingEnabled>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketLoggingCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketEncryption = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the bucket from which the server-side encryption configuration is
         retrieved.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @as("ServerSideEncryptionConfiguration")
    serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketEncryptionCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketMetricsConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the metrics configuration.</p>") @as("MetricsConfiguration")
    metricsConfiguration: metricsConfiguration,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The ID used to identify the metrics configuration.</p>") @as("Id") id: metricsId,
    @ocaml.doc("<p>The name of the bucket for which the metrics configuration is set.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketMetricsConfigurationCommand"
  let make = (~metricsConfiguration, ~id, ~bucket, ~expectedBucketOwner=?, ()) =>
    new({
      metricsConfiguration: metricsConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      id: id,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketLogging = {
  type t
  type request = {
    @ocaml.doc("<p>Container for logging status information.</p>") @as("BucketLoggingStatus")
    bucketLoggingStatus: bucketLoggingStatus,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The MD5 hash of the <code>PutBucketLogging</code> request body.</p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>The name of the bucket for which to set the logging parameters.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketLoggingCommand"
  let make = (~bucketLoggingStatus, ~bucket, ~expectedBucketOwner=?, ~contentMD5=?, ()) =>
    new({
      bucketLoggingStatus: bucketLoggingStatus,
      expectedBucketOwner: expectedBucketOwner,
      contentMD5: contentMD5,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketInventoryConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the inventory configuration.</p>") @as("InventoryConfiguration")
    inventoryConfiguration: inventoryConfiguration,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The ID used to identify the inventory configuration.</p>") @as("Id")
    id: inventoryId,
    @ocaml.doc("<p>The name of the bucket where the inventory configuration will be stored.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketInventoryConfigurationCommand"
  let make = (~inventoryConfiguration, ~id, ~bucket, ~expectedBucketOwner=?, ()) =>
    new({
      inventoryConfiguration: inventoryConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      id: id,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketIntelligentTieringConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Container for S3 Intelligent-Tiering configuration.</p>")
    @as("IntelligentTieringConfiguration")
    intelligentTieringConfiguration: intelligentTieringConfiguration,
    @ocaml.doc("<p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>") @as("Id")
    id: intelligentTieringId,
    @ocaml.doc(
      "<p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>"
    )
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketIntelligentTieringConfigurationCommand"
  let make = (~intelligentTieringConfiguration, ~id, ~bucket, ()) =>
    new({intelligentTieringConfiguration: intelligentTieringConfiguration, id: id, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketAnalyticsConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration and any analyses for the analytics filter.</p>")
    @as("AnalyticsConfiguration")
    analyticsConfiguration: analyticsConfiguration,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The ID that identifies the analytics configuration.</p>") @as("Id")
    id: analyticsId,
    @ocaml.doc("<p>The name of the bucket to which an analytics configuration is stored.</p>")
    @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketAnalyticsConfigurationCommand"
  let make = (~analyticsConfiguration, ~id, ~bucket, ~expectedBucketOwner=?, ()) =>
    new({
      analyticsConfiguration: analyticsConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      id: id,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetBucketMetricsConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The ID used to identify the metrics configuration.</p>") @as("Id") id: metricsId,
    @ocaml.doc("<p>The name of the bucket containing the metrics configuration to retrieve.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Specifies the metrics configuration.</p>") @as("MetricsConfiguration")
    metricsConfiguration: option<metricsConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketMetricsConfigurationCommand"
  let make = (~id, ~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, id: id, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketInventoryConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The ID used to identify the inventory configuration.</p>") @as("Id")
    id: inventoryId,
    @ocaml.doc("<p>The name of the bucket containing the inventory configuration to retrieve.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Specifies the inventory configuration.</p>") @as("InventoryConfiguration")
    inventoryConfiguration: option<inventoryConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketInventoryConfigurationCommand"
  let make = (~id, ~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, id: id, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketIntelligentTieringConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>") @as("Id")
    id: intelligentTieringId,
    @ocaml.doc(
      "<p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>"
    )
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Container for S3 Intelligent-Tiering configuration.</p>")
    @as("IntelligentTieringConfiguration")
    intelligentTieringConfiguration: option<intelligentTieringConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketIntelligentTieringConfigurationCommand"
  let make = (~id, ~bucket, ()) => new({id: id, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketAnalyticsConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The ID that identifies the analytics configuration.</p>") @as("Id")
    id: analyticsId,
    @ocaml.doc("<p>The name of the bucket from which an analytics configuration is retrieved.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The configuration and any analyses for the analytics filter.</p>")
    @as("AnalyticsConfiguration")
    analyticsConfiguration: option<analyticsConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketAnalyticsConfigurationCommand"
  let make = (~id, ~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, id: id, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreObject = {
  type t
  type request = {
    @as("RestoreRequest") restoreRequest: option<restoreRequest>,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @ocaml.doc("<p>VersionId used to reference a specific version of the object.</p>")
    @as("VersionId")
    versionId: option<objectVersionId>,
    @ocaml.doc("<p>Object key for which the action was initiated.</p>") @as("Key") key: objectKey,
    @ocaml.doc("<p>The bucket name containing the object to restore. </p>
         <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html\">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com. When using this action using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html\">Using S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Indicates the path in the provided S3 output location where Select results will be
         restored to.</p>")
    @as("RestoreOutputPath")
    restoreOutputPath: option<restoreOutputPath>,
    @as("RequestCharged") requestCharged: option<requestCharged>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "RestoreObjectCommand"
  let make = (
    ~key,
    ~bucket,
    ~restoreRequest=?,
    ~expectedBucketOwner=?,
    ~requestPayer=?,
    ~versionId=?,
    (),
  ) =>
    new({
      restoreRequest: restoreRequest,
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      versionId: versionId,
      key: key,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBucketMetricsConfigurations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The marker that is used to continue a metrics configuration listing that has been
         truncated. Use the NextContinuationToken from a previously truncated list response to
         continue the listing. The continuation token is an opaque value that Amazon S3
         understands.</p>")
    @as("ContinuationToken")
    continuationToken: option<token>,
    @ocaml.doc("<p>The name of the bucket containing the metrics configurations to retrieve.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The list of metrics configurations for a bucket.</p>")
    @as("MetricsConfigurationList")
    metricsConfigurationList: option<metricsConfigurationList>,
    @ocaml.doc("<p>The marker used to continue a metrics configuration listing that has been truncated. Use
         the <code>NextContinuationToken</code> from a previously truncated list response to
         continue the listing. The continuation token is an opaque value that Amazon S3
         understands.</p>")
    @as("NextContinuationToken")
    nextContinuationToken: option<nextToken>,
    @ocaml.doc("<p>The marker that is used as a starting point for this metrics configuration list
         response. This value is present if it was sent in the request.</p>")
    @as("ContinuationToken")
    continuationToken: option<token>,
    @ocaml.doc("<p>Indicates whether the returned list of metrics configurations is complete. A value of
         true indicates that the list is not complete and the NextContinuationToken will be provided
         for a subsequent request.</p>")
    @as("IsTruncated")
    isTruncated: option<isTruncated>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListBucketMetricsConfigurationsCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ~continuationToken=?, ()) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      continuationToken: continuationToken,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBucketInventoryConfigurations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The marker used to continue an inventory configuration listing that has been truncated.
         Use the NextContinuationToken from a previously truncated list response to continue the
         listing. The continuation token is an opaque value that Amazon S3 understands.</p>")
    @as("ContinuationToken")
    continuationToken: option<token>,
    @ocaml.doc("<p>The name of the bucket containing the inventory configurations to retrieve.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The marker used to continue this inventory configuration listing. Use the
            <code>NextContinuationToken</code> from this response to continue the listing in a
         subsequent request. The continuation token is an opaque value that Amazon S3 understands.</p>")
    @as("NextContinuationToken")
    nextContinuationToken: option<nextToken>,
    @ocaml.doc("<p>Tells whether the returned list of inventory configurations is complete. A value of true
         indicates that the list is not complete and the NextContinuationToken is provided for a
         subsequent request.</p>")
    @as("IsTruncated")
    isTruncated: option<isTruncated>,
    @ocaml.doc("<p>The list of inventory configurations for a bucket.</p>")
    @as("InventoryConfigurationList")
    inventoryConfigurationList: option<inventoryConfigurationList>,
    @ocaml.doc("<p>If sent in the request, the marker that is used as a starting point for this inventory
         configuration list response.</p>")
    @as("ContinuationToken")
    continuationToken: option<token>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListBucketInventoryConfigurationsCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ~continuationToken=?, ()) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      continuationToken: continuationToken,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBucketIntelligentTieringConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The ContinuationToken that represents a placeholder from where this request should
         begin.</p>")
    @as("ContinuationToken")
    continuationToken: option<token>,
    @ocaml.doc(
      "<p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>"
    )
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The list of S3 Intelligent-Tiering configurations for a bucket.</p>")
    @as("IntelligentTieringConfigurationList")
    intelligentTieringConfigurationList: option<intelligentTieringConfigurationList>,
    @ocaml.doc("<p>The marker used to continue this inventory configuration listing. Use the
            <code>NextContinuationToken</code> from this response to continue the listing in a
         subsequent request. The continuation token is an opaque value that Amazon S3 understands.</p>")
    @as("NextContinuationToken")
    nextContinuationToken: option<nextToken>,
    @ocaml.doc("<p>The ContinuationToken that represents a placeholder from where this request should
         begin.</p>")
    @as("ContinuationToken")
    continuationToken: option<token>,
    @ocaml.doc("<p>Indicates whether the returned list of analytics configurations is complete. A value of
         true indicates that the list is not complete and the NextContinuationToken will be provided
         for a subsequent request.</p>")
    @as("IsTruncated")
    isTruncated: option<isTruncated>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListBucketIntelligentTieringConfigurationsCommand"
  let make = (~bucket, ~continuationToken=?, ()) =>
    new({continuationToken: continuationToken, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBucketAnalyticsConfigurations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The ContinuationToken that represents a placeholder from where this request should
         begin.</p>")
    @as("ContinuationToken")
    continuationToken: option<token>,
    @ocaml.doc("<p>The name of the bucket from which analytics configurations are retrieved.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>The list of analytics configurations for a bucket.</p>")
    @as("AnalyticsConfigurationList")
    analyticsConfigurationList: option<analyticsConfigurationList>,
    @ocaml.doc("<p>
            <code>NextContinuationToken</code> is sent when <code>isTruncated</code> is true, which
         indicates that there are more analytics configurations to list. The next request must
         include this <code>NextContinuationToken</code>. The token is obfuscated and is not a
         usable value.</p>")
    @as("NextContinuationToken")
    nextContinuationToken: option<nextToken>,
    @ocaml.doc("<p>The marker that is used as a starting point for this analytics configuration list
         response. This value is present if it was sent in the request.</p>")
    @as("ContinuationToken")
    continuationToken: option<token>,
    @ocaml.doc("<p>Indicates whether the returned list of analytics configurations is complete. A value of
         true indicates that the list is not complete and the NextContinuationToken will be provided
         for a subsequent request.</p>")
    @as("IsTruncated")
    isTruncated: option<isTruncated>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListBucketAnalyticsConfigurationsCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ~continuationToken=?, ()) =>
    new({
      expectedBucketOwner: expectedBucketOwner,
      continuationToken: continuationToken,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketNotificationConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the bucket for which to get the notification configuration.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = notificationConfiguration
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketNotificationConfigurationCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketLifecycleConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the bucket for which to get the lifecycle information.</p>")
    @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @ocaml.doc("<p>Container for a lifecycle rule.</p>") @as("Rules") rules: option<lifecycleRules>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketLifecycleConfigurationCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketReplication = {
  type t
  type request = {
    @as("ReplicationConfiguration") replicationConfiguration: replicationConfiguration,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>A token to allow Object Lock to be enabled for an existing bucket.</p>")
    @as("Token")
    token: option<objectLockToken>,
    @ocaml.doc("<p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
         integrity check to verify that the request body was not corrupted in transit. For more
         information, see <a href=\"http://www.ietf.org/rfc/rfc1864.txt\">RFC 1864</a>.</p>
         <p>For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.</p>")
    @as("ContentMD5")
    contentMD5: option<contentMD5>,
    @ocaml.doc("<p>The name of the bucket</p>") @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketReplicationCommand"
  let make = (
    ~replicationConfiguration,
    ~bucket,
    ~expectedBucketOwner=?,
    ~token=?,
    ~contentMD5=?,
    (),
  ) =>
    new({
      replicationConfiguration: replicationConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      token: token,
      contentMD5: contentMD5,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketNotificationConfiguration = {
  type t
  type request = {
    @as("NotificationConfiguration") notificationConfiguration: notificationConfiguration,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the bucket.</p>") @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketNotificationConfigurationCommand"
  let make = (~notificationConfiguration, ~bucket, ~expectedBucketOwner=?, ()) =>
    new({
      notificationConfiguration: notificationConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketLifecycleConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Container for lifecycle rules. You can add as many as 1,000 rules.</p>")
    @as("LifecycleConfiguration")
    lifecycleConfiguration: option<bucketLifecycleConfiguration>,
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The name of the bucket for which to set the configuration.</p>") @as("Bucket")
    bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketLifecycleConfigurationCommand"
  let make = (~bucket, ~lifecycleConfiguration=?, ~expectedBucketOwner=?, ()) =>
    new({
      lifecycleConfiguration: lifecycleConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      bucket: bucket,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetBucketReplication = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>"
    )
    @as("ExpectedBucketOwner")
    expectedBucketOwner: option<accountId>,
    @ocaml.doc("<p>The bucket name for which to get the replication information.</p>") @as("Bucket")
    bucket: bucketName,
  }
  type response = {
    @as("ReplicationConfiguration") replicationConfiguration: option<replicationConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketReplicationCommand"
  let make = (~bucket, ~expectedBucketOwner=?, ()) =>
    new({expectedBucketOwner: expectedBucketOwner, bucket: bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
