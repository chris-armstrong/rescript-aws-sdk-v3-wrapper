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
type requestPayer = [@as("requester") #Requester]
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
type parquetInput = unit
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
type endEvent = unit
type end = float
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
type continuationEvent = unit
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
type versioningConfiguration = {
  @as("Status") status: option<bucketVersioningStatus>,
  @as("MFADelete") mfadelete: option<mfadelete>,
}
type transition = {
  @as("StorageClass") storageClass: option<transitionStorageClass>,
  @as("Days") days: option<days>,
  @as("Date") date: option<date>,
}
type tiering = {
  @as("AccessTier") accessTier: intelligentTieringAccessTier,
  @as("Days") days: intelligentTieringDays,
}
type tag = {
  @as("Value") value: value,
  @as("Key") key: objectKey,
}
type stats = {
  @as("BytesReturned") bytesReturned: option<bytesReturned>,
  @as("BytesProcessed") bytesProcessed: option<bytesProcessed>,
  @as("BytesScanned") bytesScanned: option<bytesScanned>,
}
type sseKmsEncryptedObjects = {@as("Status") status: sseKmsEncryptedObjectsStatus}
type serverSideEncryptionByDefault = {
  @as("KMSMasterKeyID") kmsmasterKeyID: option<ssekmskeyId>,
  @as("SSEAlgorithm") ssealgorithm: serverSideEncryption,
}
type scanRange = {
  @as("End") end: option<end>,
  @as("Start") start: option<start>,
}
type ssekms = {@as("KeyId") keyId: ssekmskeyId}
type requestProgress = {@as("Enabled") enabled: option<enableRequestProgress>}
type requestPaymentConfiguration = {@as("Payer") payer: payer}
type replicationTimeValue = {@as("Minutes") minutes: option<minutes>}
type replicaModifications = {@as("Status") status: replicaModificationsStatus}
type redirectAllRequestsTo = {
  @as("Protocol") protocol: option<protocol>,
  @as("HostName") hostName: hostName,
}
type redirect = {
  @as("ReplaceKeyWith") replaceKeyWith: option<replaceKeyWith>,
  @as("ReplaceKeyPrefixWith") replaceKeyPrefixWith: option<replaceKeyPrefixWith>,
  @as("Protocol") protocol: option<protocol>,
  @as("HttpRedirectCode") httpRedirectCode: option<httpRedirectCode>,
  @as("HostName") hostName: option<hostName>,
}
type recordsEvent = {@as("Payload") payload: option<body>}
type publicAccessBlockConfiguration = {
  @as("RestrictPublicBuckets") restrictPublicBuckets: option<setting>,
  @as("BlockPublicPolicy") blockPublicPolicy: option<setting>,
  @as("IgnorePublicAcls") ignorePublicAcls: option<setting>,
  @as("BlockPublicAcls") blockPublicAcls: option<setting>,
}
type progress = {
  @as("BytesReturned") bytesReturned: option<bytesReturned>,
  @as("BytesProcessed") bytesProcessed: option<bytesProcessed>,
  @as("BytesScanned") bytesScanned: option<bytesScanned>,
}
type policyStatus = {@as("IsPublic") isPublic: option<isPublic>}
type part = {
  @as("Size") size: option<size>,
  @as("ETag") etag: option<etag>,
  @as("LastModified") lastModified: option<lastModified>,
  @as("PartNumber") partNumber: option<partNumber>,
}
type ownershipControlsRule = {@as("ObjectOwnership") objectOwnership: objectOwnership}
type owner = {
  @as("ID") id: option<id>,
  @as("DisplayName") displayName: option<displayName>,
}
type objectLockRetention = {
  @as("RetainUntilDate") retainUntilDate: option<date>,
  @as("Mode") mode: option<objectLockRetentionMode>,
}
type objectLockLegalHold = {@as("Status") status: option<objectLockLegalHoldStatus>}
type objectIdentifier = {
  @as("VersionId") versionId: option<objectVersionId>,
  @as("Key") key: objectKey,
}
type noncurrentVersionTransition = {
  @as("StorageClass") storageClass: option<transitionStorageClass>,
  @as("NoncurrentDays") noncurrentDays: option<days>,
}
type noncurrentVersionExpiration = {@as("NoncurrentDays") noncurrentDays: option<days>}
type metadataEntry = {
  @as("Value") value: option<metadataValue>,
  @as("Name") name: option<metadataKey>,
}
type metadata = Js.Dict.t<metadataValue>
type lifecycleExpiration = {
  @as("ExpiredObjectDeleteMarker") expiredObjectDeleteMarker: option<expiredObjectDeleteMarker>,
  @as("Days") days: option<days>,
  @as("Date") date: option<date>,
}
type jsonoutput = {@as("RecordDelimiter") recordDelimiter: option<recordDelimiter>}
type jsoninput = {@as("Type") type_: option<jsontype>}
type inventorySchedule = {@as("Frequency") frequency: inventoryFrequency}
type inventoryOptionalFields = array<inventoryOptionalField>
type inventoryFilter = {@as("Prefix") prefix: prefix}
type initiator = {
  @as("DisplayName") displayName: option<displayName>,
  @as("ID") id: option<id>,
}
type indexDocument = {@as("Suffix") suffix: suffix}
type grantee = {
  @as("Type") type_: type_,
  @as("URI") uri: option<uri>,
  @as("ID") id: option<id>,
  @as("EmailAddress") emailAddress: option<emailAddress>,
  @as("DisplayName") displayName: option<displayName>,
}
type glacierJobParameters = {@as("Tier") tier: tier}
type filterRule = {
  @as("Value") value: option<filterRuleValue>,
  @as("Name") name: option<filterRuleName>,
}
type exposeHeaders = array<exposeHeader>
type existingObjectReplication = {@as("Status") status: existingObjectReplicationStatus}
type eventList = array<event>
type errorDocument = {@as("Key") key: objectKey}
type error = {
  @as("Message") message: option<message>,
  @as("Code") code: option<code>,
  @as("VersionId") versionId: option<objectVersionId>,
  @as("Key") key: option<objectKey>,
}
type encryptionConfiguration = {@as("ReplicaKmsKeyID") replicaKmsKeyID: option<replicaKmsKeyID>}
type encryption = {
  @as("KMSContext") kmscontext: option<kmscontext>,
  @as("KMSKeyId") kmskeyId: option<ssekmskeyId>,
  @as("EncryptionType") encryptionType: serverSideEncryption,
}
type deletedObject = {
  @as("DeleteMarkerVersionId") deleteMarkerVersionId: option<deleteMarkerVersionId>,
  @as("DeleteMarker") deleteMarker: option<deleteMarker>,
  @as("VersionId") versionId: option<objectVersionId>,
  @as("Key") key: option<objectKey>,
}
type deleteMarkerReplication = {@as("Status") status: option<deleteMarkerReplicationStatus>}
type defaultRetention = {
  @as("Years") years: option<years>,
  @as("Days") days: option<days>,
  @as("Mode") mode: option<objectLockRetentionMode>,
}
type createBucketConfiguration = {
  @as("LocationConstraint") locationConstraint: option<bucketLocationConstraint>,
}
type copyPartResult = {
  @as("LastModified") lastModified: option<lastModified>,
  @as("ETag") etag: option<etag>,
}
type copyObjectResult = {
  @as("LastModified") lastModified: option<lastModified>,
  @as("ETag") etag: option<etag>,
}
type condition = {
  @as("KeyPrefixEquals") keyPrefixEquals: option<keyPrefixEquals>,
  @as("HttpErrorCodeReturnedEquals")
  httpErrorCodeReturnedEquals: option<httpErrorCodeReturnedEquals>,
}
type completedPart = {
  @as("PartNumber") partNumber: option<partNumber>,
  @as("ETag") etag: option<etag>,
}
type commonPrefix = {@as("Prefix") prefix: option<prefix>}
type csvoutput = {
  @as("QuoteCharacter") quoteCharacter: option<quoteCharacter>,
  @as("FieldDelimiter") fieldDelimiter: option<fieldDelimiter>,
  @as("RecordDelimiter") recordDelimiter: option<recordDelimiter>,
  @as("QuoteEscapeCharacter") quoteEscapeCharacter: option<quoteEscapeCharacter>,
  @as("QuoteFields") quoteFields: option<quoteFields>,
}
type csvinput = {
  @as("AllowQuotedRecordDelimiter") allowQuotedRecordDelimiter: option<allowQuotedRecordDelimiter>,
  @as("QuoteCharacter") quoteCharacter: option<quoteCharacter>,
  @as("FieldDelimiter") fieldDelimiter: option<fieldDelimiter>,
  @as("RecordDelimiter") recordDelimiter: option<recordDelimiter>,
  @as("QuoteEscapeCharacter") quoteEscapeCharacter: option<quoteEscapeCharacter>,
  @as("Comments") comments: option<comments>,
  @as("FileHeaderInfo") fileHeaderInfo: option<fileHeaderInfo>,
}
type bucket = {
  @as("CreationDate") creationDate: option<creationDate>,
  @as("Name") name: option<bucketName>,
}
type analyticsS3BucketDestination = {
  @as("Prefix") prefix: option<prefix>,
  @as("Bucket") bucket: bucketName,
  @as("BucketAccountId") bucketAccountId: option<accountId>,
  @as("Format") format: analyticsS3ExportFileFormat,
}
type allowedOrigins = array<allowedOrigin>
type allowedMethods = array<allowedMethod>
type allowedHeaders = array<allowedHeader>
type accessControlTranslation = {@as("Owner") owner: ownerOverride}
type accelerateConfiguration = {@as("Status") status: option<bucketAccelerateStatus>}
type abortIncompleteMultipartUpload = {
  @as("DaysAfterInitiation") daysAfterInitiation: option<daysAfterInitiation>,
}
type userMetadata = array<metadataEntry>
type transitionList = array<transition>
type tieringList = array<tiering>
type targetGrant = {
  @as("Permission") permission: option<bucketLogsPermission>,
  @as("Grantee") grantee: option<grantee>,
}
type tagSet = array<tag>
type statsEvent = {@as("Details") details: option<stats>}
type sourceSelectionCriteria = {
  @as("ReplicaModifications") replicaModifications: option<replicaModifications>,
  @as("SseKmsEncryptedObjects") sseKmsEncryptedObjects: option<sseKmsEncryptedObjects>,
}
type serverSideEncryptionRule = {
  @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
  @as("ApplyServerSideEncryptionByDefault")
  applyServerSideEncryptionByDefault: option<serverSideEncryptionByDefault>,
}
type routingRule = {
  @as("Redirect") redirect: redirect,
  @as("Condition") condition: option<condition>,
}
type replicationTime = {
  @as("Time") time: replicationTimeValue,
  @as("Status") status: replicationTimeStatus,
}
type progressEvent = {@as("Details") details: option<progress>}
type parts = array<part>
type ownershipControlsRules = array<ownershipControlsRule>
type outputSerialization = {
  @as("JSON") json: option<jsonoutput>,
  @as("CSV") csv: option<csvoutput>,
}
type objectVersion = {
  @as("Owner") owner: option<owner>,
  @as("LastModified") lastModified: option<lastModified>,
  @as("IsLatest") isLatest: option<isLatest>,
  @as("VersionId") versionId: option<objectVersionId>,
  @as("Key") key: option<objectKey>,
  @as("StorageClass") storageClass: option<objectVersionStorageClass>,
  @as("Size") size: option<size>,
  @as("ETag") etag: option<etag>,
}
type objectLockRule = {@as("DefaultRetention") defaultRetention: option<defaultRetention>}
type objectIdentifierList = array<objectIdentifier>
type object_ = {
  @as("Owner") owner: option<owner>,
  @as("StorageClass") storageClass: option<objectStorageClass>,
  @as("Size") size: option<size>,
  @as("ETag") etag: option<etag>,
  @as("LastModified") lastModified: option<lastModified>,
  @as("Key") key: option<objectKey>,
}
type noncurrentVersionTransitionList = array<noncurrentVersionTransition>
type multipartUpload = {
  @as("Initiator") initiator: option<initiator>,
  @as("Owner") owner: option<owner>,
  @as("StorageClass") storageClass: option<storageClass>,
  @as("Initiated") initiated: option<initiated>,
  @as("Key") key: option<objectKey>,
  @as("UploadId") uploadId: option<multipartUploadId>,
}
type metrics = {
  @as("EventThreshold") eventThreshold: option<replicationTimeValue>,
  @as("Status") status: metricsStatus,
}
type inventoryEncryption = {
  @as("SSEKMS") ssekms: option<ssekms>,
  @as("SSES3") sses3: option<sses3>,
}
type inputSerialization = {
  @as("Parquet") parquet: option<parquetInput>,
  @as("JSON") json: option<jsoninput>,
  @as("CompressionType") compressionType: option<compressionType>,
  @as("CSV") csv: option<csvinput>,
}
type grant = {
  @as("Permission") permission: option<permission>,
  @as("Grantee") grantee: option<grantee>,
}
type filterRuleList = array<filterRule>
type errors = array<error>
type deletedObjects = array<deletedObject>
type deleteMarkerEntry = {
  @as("LastModified") lastModified: option<lastModified>,
  @as("IsLatest") isLatest: option<isLatest>,
  @as("VersionId") versionId: option<objectVersionId>,
  @as("Key") key: option<objectKey>,
  @as("Owner") owner: option<owner>,
}
type completedPartList = array<completedPart>
type commonPrefixList = array<commonPrefix>
type corsrule = {
  @as("MaxAgeSeconds") maxAgeSeconds: option<maxAgeSeconds>,
  @as("ExposeHeaders") exposeHeaders: option<exposeHeaders>,
  @as("AllowedOrigins") allowedOrigins: allowedOrigins,
  @as("AllowedMethods") allowedMethods: allowedMethods,
  @as("AllowedHeaders") allowedHeaders: option<allowedHeaders>,
  @as("ID") id: option<id>,
}
type buckets = array<bucket>
type analyticsExportDestination = {
  @as("S3BucketDestination") s3BucketDestination: analyticsS3BucketDestination,
}
type targetGrants = array<targetGrant>
type tagging = {@as("TagSet") tagSet: tagSet}
type storageClassAnalysisDataExport = {
  @as("Destination") destination: analyticsExportDestination,
  @as("OutputSchemaVersion") outputSchemaVersion: storageClassAnalysisSchemaVersion,
}
type serverSideEncryptionRules = array<serverSideEncryptionRule>
type selectParameters = {
  @as("OutputSerialization") outputSerialization: outputSerialization,
  @as("Expression") expression: expression,
  @as("ExpressionType") expressionType: expressionType,
  @as("InputSerialization") inputSerialization: inputSerialization,
}
type selectObjectContentEventStream = {
  @as("End") end: option<endEvent>,
  @as("Cont") cont: option<continuationEvent>,
  @as("Progress") progress: option<progressEvent>,
  @as("Stats") stats: option<statsEvent>,
  @as("Records") records: option<recordsEvent>,
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
type s3KeyFilter = {@as("FilterRules") filterRules: option<filterRuleList>}
type routingRules = array<routingRule>
type replicationRuleAndOperator = {
  @as("Tags") tags: option<tagSet>,
  @as("Prefix") prefix: option<prefix>,
}
type ownershipControls = {@as("Rules") rules: ownershipControlsRules}
type objectVersionList = array<objectVersion>
type objectLockConfiguration = {
  @as("Rule") rule: option<objectLockRule>,
  @as("ObjectLockEnabled") objectLockEnabled: option<objectLockEnabled>,
}
type objectList = array<object_>
type multipartUploadList = array<multipartUpload>
type metricsAndOperator = {
  @as("Tags") tags: option<tagSet>,
  @as("Prefix") prefix: option<prefix>,
}
type lifecycleRuleAndOperator = {
  @as("Tags") tags: option<tagSet>,
  @as("Prefix") prefix: option<prefix>,
}
type inventoryS3BucketDestination = {
  @as("Encryption") encryption: option<inventoryEncryption>,
  @as("Prefix") prefix: option<prefix>,
  @as("Format") format: inventoryFormat,
  @as("Bucket") bucket: bucketName,
  @as("AccountId") accountId: option<accountId>,
}
type intelligentTieringAndOperator = {
  @as("Tags") tags: option<tagSet>,
  @as("Prefix") prefix: option<prefix>,
}
type grants = array<grant>
type destination = {
  @as("Metrics") metrics: option<metrics>,
  @as("ReplicationTime") replicationTime: option<replicationTime>,
  @as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
  @as("AccessControlTranslation") accessControlTranslation: option<accessControlTranslation>,
  @as("StorageClass") storageClass: option<storageClass>,
  @as("Account") account: option<accountId>,
  @as("Bucket") bucket: bucketName,
}
type deleteMarkers = array<deleteMarkerEntry>
type delete = {
  @as("Quiet") quiet: option<quiet>,
  @as("Objects") objects: objectIdentifierList,
}
type completedMultipartUpload = {@as("Parts") parts: option<completedPartList>}
type corsrules = array<corsrule>
type analyticsAndOperator = {
  @as("Tags") tags: option<tagSet>,
  @as("Prefix") prefix: option<prefix>,
}
type websiteConfiguration = {
  @as("RoutingRules") routingRules: option<routingRules>,
  @as("RedirectAllRequestsTo") redirectAllRequestsTo: option<redirectAllRequestsTo>,
  @as("IndexDocument") indexDocument: option<indexDocument>,
  @as("ErrorDocument") errorDocument: option<errorDocument>,
}
type storageClassAnalysis = {@as("DataExport") dataExport: option<storageClassAnalysisDataExport>}
type serverSideEncryptionConfiguration = {@as("Rules") rules: serverSideEncryptionRules}
type s3Location = {
  @as("StorageClass") storageClass: option<storageClass>,
  @as("UserMetadata") userMetadata: option<userMetadata>,
  @as("Tagging") tagging: option<tagging>,
  @as("AccessControlList") accessControlList: option<grants>,
  @as("CannedACL") cannedACL: option<objectCannedACL>,
  @as("Encryption") encryption: option<encryption>,
  @as("Prefix") prefix: locationPrefix,
  @as("BucketName") bucketName: bucketName,
}
type replicationRuleFilter = {
  @as("And") and_: option<replicationRuleAndOperator>,
  @as("Tag") tag: option<tag>,
  @as("Prefix") prefix: option<prefix>,
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
type notificationConfigurationFilter = {@as("Key") key: option<s3KeyFilter>}
type metricsFilter = {
  @as("And") and_: option<metricsAndOperator>,
  @as("Tag") tag: option<tag>,
  @as("Prefix") prefix: option<prefix>,
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
type loggingEnabled = {
  @as("TargetPrefix") targetPrefix: targetPrefix,
  @as("TargetGrants") targetGrants: option<targetGrants>,
  @as("TargetBucket") targetBucket: targetBucket,
}
type lifecycleRuleFilter = {
  @as("And") and_: option<lifecycleRuleAndOperator>,
  @as("Tag") tag: option<tag>,
  @as("Prefix") prefix: option<prefix>,
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
type inventoryDestination = {
  @as("S3BucketDestination") s3BucketDestination: inventoryS3BucketDestination,
}
type intelligentTieringFilter = {
  @as("And") and_: option<intelligentTieringAndOperator>,
  @as("Tag") tag: option<tag>,
  @as("Prefix") prefix: option<prefix>,
}
type corsconfiguration = {@as("CORSRules") corsrules: corsrules}
type analyticsFilter = {
  @as("And") and_: option<analyticsAndOperator>,
  @as("Tag") tag: option<tag>,
  @as("Prefix") prefix: option<prefix>,
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
type accessControlPolicy = {
  @as("Owner") owner: option<owner>,
  @as("Grants") grants: option<grants>,
}
type topicConfiguration = {
  @as("Filter") filter: option<notificationConfigurationFilter>,
  @as("Events") events: eventList,
  @as("TopicArn") topicArn: topicArn,
  @as("Id") id: option<notificationId>,
}
type replicationRule = {
  @as("DeleteMarkerReplication") deleteMarkerReplication: option<deleteMarkerReplication>,
  @as("Destination") destination: destination,
  @as("ExistingObjectReplication") existingObjectReplication: option<existingObjectReplication>,
  @as("SourceSelectionCriteria") sourceSelectionCriteria: option<sourceSelectionCriteria>,
  @as("Status") status: replicationRuleStatus,
  @as("Filter") filter: option<replicationRuleFilter>,
  @as("Prefix") prefix: option<prefix>,
  @as("Priority") priority: option<priority>,
  @as("ID") id: option<id>,
}
type queueConfiguration = {
  @as("Filter") filter: option<notificationConfigurationFilter>,
  @as("Events") events: eventList,
  @as("QueueArn") queueArn: queueArn,
  @as("Id") id: option<notificationId>,
}
type outputLocation = {@as("S3") s3: option<s3Location>}
type metricsConfiguration = {
  @as("Filter") filter: option<metricsFilter>,
  @as("Id") id: metricsId,
}
type lifecycleRule = {
  @as("AbortIncompleteMultipartUpload")
  abortIncompleteMultipartUpload: option<abortIncompleteMultipartUpload>,
  @as("NoncurrentVersionExpiration")
  noncurrentVersionExpiration: option<noncurrentVersionExpiration>,
  @as("NoncurrentVersionTransitions")
  noncurrentVersionTransitions: option<noncurrentVersionTransitionList>,
  @as("Transitions") transitions: option<transitionList>,
  @as("Status") status: expirationStatus,
  @as("Filter") filter: option<lifecycleRuleFilter>,
  @as("Prefix") prefix: option<prefix>,
  @as("ID") id: option<id>,
  @as("Expiration") expiration: option<lifecycleExpiration>,
}
type lambdaFunctionConfiguration = {
  @as("Filter") filter: option<notificationConfigurationFilter>,
  @as("Events") events: eventList,
  @as("LambdaFunctionArn") lambdaFunctionArn: lambdaFunctionArn,
  @as("Id") id: option<notificationId>,
}
type inventoryConfiguration = {
  @as("Schedule") schedule: inventorySchedule,
  @as("OptionalFields") optionalFields: option<inventoryOptionalFields>,
  @as("IncludedObjectVersions") includedObjectVersions: inventoryIncludedObjectVersions,
  @as("Id") id: inventoryId,
  @as("Filter") filter: option<inventoryFilter>,
  @as("IsEnabled") isEnabled: isEnabled,
  @as("Destination") destination: inventoryDestination,
}
type intelligentTieringConfiguration = {
  @as("Tierings") tierings: tieringList,
  @as("Status") status: intelligentTieringStatus,
  @as("Filter") filter: option<intelligentTieringFilter>,
  @as("Id") id: intelligentTieringId,
}
type bucketLoggingStatus = {@as("LoggingEnabled") loggingEnabled: option<loggingEnabled>}
type analyticsConfiguration = {
  @as("StorageClassAnalysis") storageClassAnalysis: storageClassAnalysis,
  @as("Filter") filter: option<analyticsFilter>,
  @as("Id") id: analyticsId,
}
type topicConfigurationList = array<topicConfiguration>
type restoreRequest = {
  @as("OutputLocation") outputLocation: option<outputLocation>,
  @as("SelectParameters") selectParameters: option<selectParameters>,
  @as("Description") description: option<description>,
  @as("Tier") tier: option<tier>,
  @as("Type") type_: option<restoreRequestType>,
  @as("GlacierJobParameters") glacierJobParameters: option<glacierJobParameters>,
  @as("Days") days: option<days>,
}
type replicationRules = array<replicationRule>
type queueConfigurationList = array<queueConfiguration>
type metricsConfigurationList = array<metricsConfiguration>
type lifecycleRules = array<lifecycleRule>
type lambdaFunctionConfigurationList = array<lambdaFunctionConfiguration>
type inventoryConfigurationList = array<inventoryConfiguration>
type intelligentTieringConfigurationList = array<intelligentTieringConfiguration>
type analyticsConfigurationList = array<analyticsConfiguration>
type replicationConfiguration = {
  @as("Rules") rules: replicationRules,
  @as("Role") role: role,
}
type notificationConfiguration = {
  @as("LambdaFunctionConfigurations")
  lambdaFunctionConfigurations: option<lambdaFunctionConfigurationList>,
  @as("QueueConfigurations") queueConfigurations: option<queueConfigurationList>,
  @as("TopicConfigurations") topicConfigurations: option<topicConfigurationList>,
}
type bucketLifecycleConfiguration = {@as("Rules") rules: lifecycleRules}

module UploadPart = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerKey") ssecustomerKey: option<ssecustomerKey>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("UploadId") uploadId: multipartUploadId,
    @as("PartNumber") partNumber: partNumber,
    @as("Key") key: objectKey,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("ContentLength") contentLength: option<contentLength>,
    @as("Bucket") bucket: bucketName,
    @as("Body") body: option<streamingBlob>,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
    @as("SSEKMSKeyId") ssekmskeyId: option<ssekmskeyId>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("ETag") etag: option<etag>,
    @as("ServerSideEncryption") serverSideEncryption: option<serverSideEncryption>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "UploadPartCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketPolicy = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Policy") policy: policy,
    @as("ConfirmRemoveSelfBucketAccess")
    confirmRemoveSelfBucketAccess: option<confirmRemoveSelfBucketAccess>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module HeadBucket = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "HeadBucketCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetObjectTorrent = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("Body") body: option<streamingBlob>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetObjectTorrentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketVersioning = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("MFADelete") mfadelete: option<mfadeleteStatus>,
    @as("Status") status: option<bucketVersioningStatus>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketVersioningCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketRequestPayment = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("Payer") payer: option<payer>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketRequestPaymentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketPolicy = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("Policy") policy: option<policy>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketLocation = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("LocationConstraint") locationConstraint: option<bucketLocationConstraint>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketLocationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketAccelerateConfiguration = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("Status") status: option<bucketAccelerateStatus>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketAccelerateConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePublicAccessBlock = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeletePublicAccessBlockCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteObjectTagging = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("VersionId") versionId: option<objectVersionId>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteObjectTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteObject = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("BypassGovernanceRetention") bypassGovernanceRetention: option<bypassGovernanceRetention>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("MFA") mfa: option<mfa>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("DeleteMarker") deleteMarker: option<deleteMarker>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteObjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBucketWebsite = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketWebsiteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketTagging = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketReplication = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketReplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketPolicy = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketOwnershipControls = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteBucketOwnershipControlsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketMetricsConfiguration = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Id") id: metricsId,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteBucketMetricsConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketLifecycle = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketLifecycleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketInventoryConfiguration = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Id") id: inventoryId,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteBucketInventoryConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketIntelligentTieringConfiguration = {
  type t
  type request = {
    @as("Id") id: intelligentTieringId,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteBucketIntelligentTieringConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketEncryption = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketEncryptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketCors = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketCorsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketAnalyticsConfiguration = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Id") id: analyticsId,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteBucketAnalyticsConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucket = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AbortMultipartUpload = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("UploadId") uploadId: multipartUploadId,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("RequestCharged") requestCharged: option<requestCharged>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "AbortMultipartUploadCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module WriteGetObjectResponse = {
  type t
  type request = {
    @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("TagCount") tagCount: option<tagCount>,
    @as("StorageClass") storageClass: option<storageClass>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSEKMSKeyId") ssekmskeyId: option<ssekmskeyId>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("ServerSideEncryption") serverSideEncryption: option<serverSideEncryption>,
    @as("Restore") restore: option<restore>,
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("ReplicationStatus") replicationStatus: option<replicationStatus>,
    @as("PartsCount") partsCount: option<partsCount>,
    @as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: option<objectLockRetainUntilDate>,
    @as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: option<objectLockLegalHoldStatus>,
    @as("ObjectLockMode") objectLockMode: option<objectLockMode>,
    @as("Metadata") metadata: option<metadata>,
    @as("MissingMeta") missingMeta: option<missingMeta>,
    @as("LastModified") lastModified: option<lastModified>,
    @as("Expiration") expiration: option<expiration>,
    @as("Expires") expires: option<expires>,
    @as("ETag") etag: option<etag>,
    @as("DeleteMarker") deleteMarker: option<deleteMarker>,
    @as("ContentType") contentType: option<contentType>,
    @as("ContentRange") contentRange: option<contentRange>,
    @as("ContentLength") contentLength: option<contentLength>,
    @as("ContentLanguage") contentLanguage: option<contentLanguage>,
    @as("ContentEncoding") contentEncoding: option<contentEncoding>,
    @as("ContentDisposition") contentDisposition: option<contentDisposition>,
    @as("CacheControl") cacheControl: option<cacheControl>,
    @as("AcceptRanges") acceptRanges: option<acceptRanges>,
    @as("ErrorMessage") errorMessage: option<errorMessage>,
    @as("ErrorCode") errorCode: option<errorCode>,
    @as("StatusCode") statusCode: option<getObjectResponseStatusCode>,
    @as("Body") body: option<streamingBlob>,
    @as("RequestToken") requestToken: requestToken,
    @as("RequestRoute") requestRoute: requestRoute,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "WriteGetObjectResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UploadPartCopy = {
  type t
  type request = {
    @as("ExpectedSourceBucketOwner") expectedSourceBucketOwner: option<accountId>,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("CopySourceSSECustomerKeyMD5")
    copySourceSSECustomerKeyMD5: option<copySourceSSECustomerKeyMD5>,
    @as("CopySourceSSECustomerKey") copySourceSSECustomerKey: option<copySourceSSECustomerKey>,
    @as("CopySourceSSECustomerAlgorithm")
    copySourceSSECustomerAlgorithm: option<copySourceSSECustomerAlgorithm>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerKey") ssecustomerKey: option<ssecustomerKey>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("UploadId") uploadId: multipartUploadId,
    @as("PartNumber") partNumber: partNumber,
    @as("Key") key: objectKey,
    @as("CopySourceRange") copySourceRange: option<copySourceRange>,
    @as("CopySourceIfUnmodifiedSince")
    copySourceIfUnmodifiedSince: option<copySourceIfUnmodifiedSince>,
    @as("CopySourceIfNoneMatch") copySourceIfNoneMatch: option<copySourceIfNoneMatch>,
    @as("CopySourceIfModifiedSince") copySourceIfModifiedSince: option<copySourceIfModifiedSince>,
    @as("CopySourceIfMatch") copySourceIfMatch: option<copySourceIfMatch>,
    @as("CopySource") copySource: copySource,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
    @as("SSEKMSKeyId") ssekmskeyId: option<ssekmskeyId>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("ServerSideEncryption") serverSideEncryption: option<serverSideEncryption>,
    @as("CopyPartResult") copyPartResult: option<copyPartResult>,
    @as("CopySourceVersionId") copySourceVersionId: option<copySourceVersionId>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "UploadPartCopyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutPublicAccessBlock = {
  type t
  type request = {
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: publicAccessBlockConfiguration,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutPublicAccessBlockCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutObjectRetention = {
  type t
  type request = {
    @as("Retention") retention: option<objectLockRetention>,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("BypassGovernanceRetention") bypassGovernanceRetention: option<bypassGovernanceRetention>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("RequestCharged") requestCharged: option<requestCharged>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutObjectRetentionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutObjectLegalHold = {
  type t
  type request = {
    @as("LegalHold") legalHold: option<objectLockLegalHold>,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("RequestCharged") requestCharged: option<requestCharged>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutObjectLegalHoldCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutObject = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: option<objectLockLegalHoldStatus>,
    @as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: option<objectLockRetainUntilDate>,
    @as("ObjectLockMode") objectLockMode: option<objectLockMode>,
    @as("Tagging") tagging: option<taggingHeader>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
    @as("SSEKMSEncryptionContext") ssekmsencryptionContext: option<ssekmsencryptionContext>,
    @as("SSEKMSKeyId") ssekmskeyId: option<ssekmskeyId>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerKey") ssecustomerKey: option<ssecustomerKey>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("WebsiteRedirectLocation") websiteRedirectLocation: option<websiteRedirectLocation>,
    @as("StorageClass") storageClass: option<storageClass>,
    @as("ServerSideEncryption") serverSideEncryption: option<serverSideEncryption>,
    @as("Metadata") metadata: option<metadata>,
    @as("Key") key: objectKey,
    @as("GrantWriteACP") grantWriteACP: option<grantWriteACP>,
    @as("GrantReadACP") grantReadACP: option<grantReadACP>,
    @as("GrantRead") grantRead: option<grantRead>,
    @as("GrantFullControl") grantFullControl: option<grantFullControl>,
    @as("Expires") expires: option<expires>,
    @as("ContentType") contentType: option<contentType>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("ContentLength") contentLength: option<contentLength>,
    @as("ContentLanguage") contentLanguage: option<contentLanguage>,
    @as("ContentEncoding") contentEncoding: option<contentEncoding>,
    @as("ContentDisposition") contentDisposition: option<contentDisposition>,
    @as("CacheControl") cacheControl: option<cacheControl>,
    @as("Bucket") bucket: bucketName,
    @as("Body") body: option<streamingBlob>,
    @as("ACL") acl: option<objectCannedACL>,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
    @as("SSEKMSEncryptionContext") ssekmsencryptionContext: option<ssekmsencryptionContext>,
    @as("SSEKMSKeyId") ssekmskeyId: option<ssekmskeyId>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("ServerSideEncryption") serverSideEncryption: option<serverSideEncryption>,
    @as("ETag") etag: option<etag>,
    @as("Expiration") expiration: option<expiration>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutObjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketVersioning = {
  type t
  type request = {
    @as("VersioningConfiguration") versioningConfiguration: versioningConfiguration,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("MFA") mfa: option<mfa>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketVersioningCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketRequestPayment = {
  type t
  type request = {
    @as("RequestPaymentConfiguration") requestPaymentConfiguration: requestPaymentConfiguration,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketRequestPaymentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketAccelerateConfiguration = {
  type t
  type request = {
    @as("AccelerateConfiguration") accelerateConfiguration: accelerateConfiguration,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketAccelerateConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module HeadObject = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("PartNumber") partNumber: option<partNumber>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerKey") ssecustomerKey: option<ssecustomerKey>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("Range") range: option<range>,
    @as("Key") key: objectKey,
    @as("IfUnmodifiedSince") ifUnmodifiedSince: option<ifUnmodifiedSince>,
    @as("IfNoneMatch") ifNoneMatch: option<ifNoneMatch>,
    @as("IfModifiedSince") ifModifiedSince: option<ifModifiedSince>,
    @as("IfMatch") ifMatch: option<ifMatch>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: option<objectLockLegalHoldStatus>,
    @as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: option<objectLockRetainUntilDate>,
    @as("ObjectLockMode") objectLockMode: option<objectLockMode>,
    @as("PartsCount") partsCount: option<partsCount>,
    @as("ReplicationStatus") replicationStatus: option<replicationStatus>,
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("StorageClass") storageClass: option<storageClass>,
    @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
    @as("SSEKMSKeyId") ssekmskeyId: option<ssekmskeyId>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("Metadata") metadata: option<metadata>,
    @as("ServerSideEncryption") serverSideEncryption: option<serverSideEncryption>,
    @as("WebsiteRedirectLocation") websiteRedirectLocation: option<websiteRedirectLocation>,
    @as("Expires") expires: option<expires>,
    @as("ContentType") contentType: option<contentType>,
    @as("ContentLanguage") contentLanguage: option<contentLanguage>,
    @as("ContentEncoding") contentEncoding: option<contentEncoding>,
    @as("ContentDisposition") contentDisposition: option<contentDisposition>,
    @as("CacheControl") cacheControl: option<cacheControl>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("MissingMeta") missingMeta: option<missingMeta>,
    @as("ETag") etag: option<etag>,
    @as("ContentLength") contentLength: option<contentLength>,
    @as("LastModified") lastModified: option<lastModified>,
    @as("ArchiveStatus") archiveStatus: option<archiveStatus>,
    @as("Restore") restore: option<restore>,
    @as("Expiration") expiration: option<expiration>,
    @as("AcceptRanges") acceptRanges: option<acceptRanges>,
    @as("DeleteMarker") deleteMarker: option<deleteMarker>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "HeadObjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPublicAccessBlock = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: option<publicAccessBlockConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetPublicAccessBlockCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObjectRetention = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("Retention") retention: option<objectLockRetention>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetObjectRetentionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObjectLegalHold = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("LegalHold") legalHold: option<objectLockLegalHold>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetObjectLegalHoldCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObject = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("PartNumber") partNumber: option<partNumber>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerKey") ssecustomerKey: option<ssecustomerKey>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("ResponseExpires") responseExpires: option<responseExpires>,
    @as("ResponseContentType") responseContentType: option<responseContentType>,
    @as("ResponseContentLanguage") responseContentLanguage: option<responseContentLanguage>,
    @as("ResponseContentEncoding") responseContentEncoding: option<responseContentEncoding>,
    @as("ResponseContentDisposition")
    responseContentDisposition: option<responseContentDisposition>,
    @as("ResponseCacheControl") responseCacheControl: option<responseCacheControl>,
    @as("Range") range: option<range>,
    @as("Key") key: objectKey,
    @as("IfUnmodifiedSince") ifUnmodifiedSince: option<ifUnmodifiedSince>,
    @as("IfNoneMatch") ifNoneMatch: option<ifNoneMatch>,
    @as("IfModifiedSince") ifModifiedSince: option<ifModifiedSince>,
    @as("IfMatch") ifMatch: option<ifMatch>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: option<objectLockLegalHoldStatus>,
    @as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: option<objectLockRetainUntilDate>,
    @as("ObjectLockMode") objectLockMode: option<objectLockMode>,
    @as("TagCount") tagCount: option<tagCount>,
    @as("PartsCount") partsCount: option<partsCount>,
    @as("ReplicationStatus") replicationStatus: option<replicationStatus>,
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("StorageClass") storageClass: option<storageClass>,
    @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
    @as("SSEKMSKeyId") ssekmskeyId: option<ssekmskeyId>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("Metadata") metadata: option<metadata>,
    @as("ServerSideEncryption") serverSideEncryption: option<serverSideEncryption>,
    @as("WebsiteRedirectLocation") websiteRedirectLocation: option<websiteRedirectLocation>,
    @as("Expires") expires: option<expires>,
    @as("ContentType") contentType: option<contentType>,
    @as("ContentRange") contentRange: option<contentRange>,
    @as("ContentLanguage") contentLanguage: option<contentLanguage>,
    @as("ContentEncoding") contentEncoding: option<contentEncoding>,
    @as("ContentDisposition") contentDisposition: option<contentDisposition>,
    @as("CacheControl") cacheControl: option<cacheControl>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("MissingMeta") missingMeta: option<missingMeta>,
    @as("ETag") etag: option<etag>,
    @as("ContentLength") contentLength: option<contentLength>,
    @as("LastModified") lastModified: option<lastModified>,
    @as("Restore") restore: option<restore>,
    @as("Expiration") expiration: option<expiration>,
    @as("AcceptRanges") acceptRanges: option<acceptRanges>,
    @as("DeleteMarker") deleteMarker: option<deleteMarker>,
    @as("Body") body: option<streamingBlob>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetObjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketPolicyStatus = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("PolicyStatus") policyStatus: option<policyStatus>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketPolicyStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMultipartUpload = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: option<objectLockLegalHoldStatus>,
    @as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: option<objectLockRetainUntilDate>,
    @as("ObjectLockMode") objectLockMode: option<objectLockMode>,
    @as("Tagging") tagging: option<taggingHeader>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
    @as("SSEKMSEncryptionContext") ssekmsencryptionContext: option<ssekmsencryptionContext>,
    @as("SSEKMSKeyId") ssekmskeyId: option<ssekmskeyId>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerKey") ssecustomerKey: option<ssecustomerKey>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("WebsiteRedirectLocation") websiteRedirectLocation: option<websiteRedirectLocation>,
    @as("StorageClass") storageClass: option<storageClass>,
    @as("ServerSideEncryption") serverSideEncryption: option<serverSideEncryption>,
    @as("Metadata") metadata: option<metadata>,
    @as("Key") key: objectKey,
    @as("GrantWriteACP") grantWriteACP: option<grantWriteACP>,
    @as("GrantReadACP") grantReadACP: option<grantReadACP>,
    @as("GrantRead") grantRead: option<grantRead>,
    @as("GrantFullControl") grantFullControl: option<grantFullControl>,
    @as("Expires") expires: option<expires>,
    @as("ContentType") contentType: option<contentType>,
    @as("ContentLanguage") contentLanguage: option<contentLanguage>,
    @as("ContentEncoding") contentEncoding: option<contentEncoding>,
    @as("ContentDisposition") contentDisposition: option<contentDisposition>,
    @as("CacheControl") cacheControl: option<cacheControl>,
    @as("Bucket") bucket: bucketName,
    @as("ACL") acl: option<objectCannedACL>,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
    @as("SSEKMSEncryptionContext") ssekmsencryptionContext: option<ssekmsencryptionContext>,
    @as("SSEKMSKeyId") ssekmskeyId: option<ssekmskeyId>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("ServerSideEncryption") serverSideEncryption: option<serverSideEncryption>,
    @as("UploadId") uploadId: option<multipartUploadId>,
    @as("Key") key: option<objectKey>,
    @as("Bucket") bucket: option<bucketName>,
    @as("AbortRuleId") abortRuleId: option<abortRuleId>,
    @as("AbortDate") abortDate: option<abortDate>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "CreateMultipartUploadCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBucket = {
  type t
  type request = {
    @as("CreateBucketConfiguration") createBucketConfiguration: option<createBucketConfiguration>,
    @as("ObjectLockEnabledForBucket")
    objectLockEnabledForBucket: option<objectLockEnabledForBucket>,
    @as("GrantWriteACP") grantWriteACP: option<grantWriteACP>,
    @as("GrantWrite") grantWrite: option<grantWrite>,
    @as("GrantReadACP") grantReadACP: option<grantReadACP>,
    @as("GrantRead") grantRead: option<grantRead>,
    @as("GrantFullControl") grantFullControl: option<grantFullControl>,
    @as("Bucket") bucket: bucketName,
    @as("ACL") acl: option<bucketCannedACL>,
  }
  type response = {@as("Location") location: option<location>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "CreateBucketCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyObject = {
  type t
  type request = {
    @as("ExpectedSourceBucketOwner") expectedSourceBucketOwner: option<accountId>,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: option<objectLockLegalHoldStatus>,
    @as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: option<objectLockRetainUntilDate>,
    @as("ObjectLockMode") objectLockMode: option<objectLockMode>,
    @as("Tagging") tagging: option<taggingHeader>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("CopySourceSSECustomerKeyMD5")
    copySourceSSECustomerKeyMD5: option<copySourceSSECustomerKeyMD5>,
    @as("CopySourceSSECustomerKey") copySourceSSECustomerKey: option<copySourceSSECustomerKey>,
    @as("CopySourceSSECustomerAlgorithm")
    copySourceSSECustomerAlgorithm: option<copySourceSSECustomerAlgorithm>,
    @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
    @as("SSEKMSEncryptionContext") ssekmsencryptionContext: option<ssekmsencryptionContext>,
    @as("SSEKMSKeyId") ssekmskeyId: option<ssekmskeyId>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerKey") ssecustomerKey: option<ssecustomerKey>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("WebsiteRedirectLocation") websiteRedirectLocation: option<websiteRedirectLocation>,
    @as("StorageClass") storageClass: option<storageClass>,
    @as("ServerSideEncryption") serverSideEncryption: option<serverSideEncryption>,
    @as("TaggingDirective") taggingDirective: option<taggingDirective>,
    @as("MetadataDirective") metadataDirective: option<metadataDirective>,
    @as("Metadata") metadata: option<metadata>,
    @as("Key") key: objectKey,
    @as("GrantWriteACP") grantWriteACP: option<grantWriteACP>,
    @as("GrantReadACP") grantReadACP: option<grantReadACP>,
    @as("GrantRead") grantRead: option<grantRead>,
    @as("GrantFullControl") grantFullControl: option<grantFullControl>,
    @as("Expires") expires: option<expires>,
    @as("CopySourceIfUnmodifiedSince")
    copySourceIfUnmodifiedSince: option<copySourceIfUnmodifiedSince>,
    @as("CopySourceIfNoneMatch") copySourceIfNoneMatch: option<copySourceIfNoneMatch>,
    @as("CopySourceIfModifiedSince") copySourceIfModifiedSince: option<copySourceIfModifiedSince>,
    @as("CopySourceIfMatch") copySourceIfMatch: option<copySourceIfMatch>,
    @as("CopySource") copySource: copySource,
    @as("ContentType") contentType: option<contentType>,
    @as("ContentLanguage") contentLanguage: option<contentLanguage>,
    @as("ContentEncoding") contentEncoding: option<contentEncoding>,
    @as("ContentDisposition") contentDisposition: option<contentDisposition>,
    @as("CacheControl") cacheControl: option<cacheControl>,
    @as("Bucket") bucket: bucketName,
    @as("ACL") acl: option<objectCannedACL>,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
    @as("SSEKMSEncryptionContext") ssekmsencryptionContext: option<ssekmsencryptionContext>,
    @as("SSEKMSKeyId") ssekmskeyId: option<ssekmskeyId>,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("ServerSideEncryption") serverSideEncryption: option<serverSideEncryption>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("CopySourceVersionId") copySourceVersionId: option<copySourceVersionId>,
    @as("Expiration") expiration: option<expiration>,
    @as("CopyObjectResult") copyObjectResult: option<copyObjectResult>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "CopyObjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListParts = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("UploadId") uploadId: multipartUploadId,
    @as("PartNumberMarker") partNumberMarker: option<partNumberMarker>,
    @as("MaxParts") maxParts: option<maxParts>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("StorageClass") storageClass: option<storageClass>,
    @as("Owner") owner: option<owner>,
    @as("Initiator") initiator: option<initiator>,
    @as("Parts") parts: option<parts>,
    @as("IsTruncated") isTruncated: option<isTruncated>,
    @as("MaxParts") maxParts: option<maxParts>,
    @as("NextPartNumberMarker") nextPartNumberMarker: option<nextPartNumberMarker>,
    @as("PartNumberMarker") partNumberMarker: option<partNumberMarker>,
    @as("UploadId") uploadId: option<multipartUploadId>,
    @as("Key") key: option<objectKey>,
    @as("Bucket") bucket: option<bucketName>,
    @as("AbortRuleId") abortRuleId: option<abortRuleId>,
    @as("AbortDate") abortDate: option<abortDate>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListPartsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBuckets = {
  type t

  type response = {
    @as("Owner") owner: option<owner>,
    @as("Buckets") buckets: option<buckets>,
  }
  @module("@aws-sdk/client-s3") @new external new: unit => t = "ListBucketsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObjectTagging = {
  type t
  type request = {
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("TagSet") tagSet: tagSet,
    @as("VersionId") versionId: option<objectVersionId>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetObjectTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketTagging = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("TagSet") tagSet: tagSet}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SelectObjectContent = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ScanRange") scanRange: option<scanRange>,
    @as("OutputSerialization") outputSerialization: outputSerialization,
    @as("InputSerialization") inputSerialization: inputSerialization,
    @as("RequestProgress") requestProgress: option<requestProgress>,
    @as("ExpressionType") expressionType: expressionType,
    @as("Expression") expression: expression,
    @as("SSECustomerKeyMD5") ssecustomerKeyMD5: option<ssecustomerKeyMD5>,
    @as("SSECustomerKey") ssecustomerKey: option<ssecustomerKey>,
    @as("SSECustomerAlgorithm") ssecustomerAlgorithm: option<ssecustomerAlgorithm>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("Payload") payload: option<selectObjectContentEventStream>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "SelectObjectContentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutObjectTagging = {
  type t
  type request = {
    @as("Tagging") tagging: tagging,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("VersionId") versionId: option<objectVersionId>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutObjectTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutObjectLockConfiguration = {
  type t
  type request = {
    @as("ObjectLockConfiguration") objectLockConfiguration: option<objectLockConfiguration>,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Token") token: option<objectLockToken>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("RequestCharged") requestCharged: option<requestCharged>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutObjectLockConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketTagging = {
  type t
  type request = {
    @as("Tagging") tagging: tagging,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketOwnershipControls = {
  type t
  type request = {
    @as("OwnershipControls") ownershipControls: ownershipControls,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketOwnershipControlsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListObjectsV2 = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("StartAfter") startAfter: option<startAfter>,
    @as("FetchOwner") fetchOwner: option<fetchOwner>,
    @as("ContinuationToken") continuationToken: option<token>,
    @as("Prefix") prefix: option<prefix>,
    @as("MaxKeys") maxKeys: option<maxKeys>,
    @as("EncodingType") encodingType: option<encodingType>,
    @as("Delimiter") delimiter: option<delimiter>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("StartAfter") startAfter: option<startAfter>,
    @as("NextContinuationToken") nextContinuationToken: option<nextToken>,
    @as("ContinuationToken") continuationToken: option<token>,
    @as("KeyCount") keyCount: option<keyCount>,
    @as("EncodingType") encodingType: option<encodingType>,
    @as("CommonPrefixes") commonPrefixes: option<commonPrefixList>,
    @as("MaxKeys") maxKeys: option<maxKeys>,
    @as("Delimiter") delimiter: option<delimiter>,
    @as("Prefix") prefix: option<prefix>,
    @as("Name") name: option<bucketName>,
    @as("Contents") contents: option<objectList>,
    @as("IsTruncated") isTruncated: option<isTruncated>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListObjectsV2Command"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListObjects = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("Prefix") prefix: option<prefix>,
    @as("MaxKeys") maxKeys: option<maxKeys>,
    @as("Marker") marker: option<marker>,
    @as("EncodingType") encodingType: option<encodingType>,
    @as("Delimiter") delimiter: option<delimiter>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("EncodingType") encodingType: option<encodingType>,
    @as("CommonPrefixes") commonPrefixes: option<commonPrefixList>,
    @as("MaxKeys") maxKeys: option<maxKeys>,
    @as("Delimiter") delimiter: option<delimiter>,
    @as("Prefix") prefix: option<prefix>,
    @as("Name") name: option<bucketName>,
    @as("Contents") contents: option<objectList>,
    @as("NextMarker") nextMarker: option<nextMarker>,
    @as("Marker") marker: option<marker>,
    @as("IsTruncated") isTruncated: option<isTruncated>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListObjectsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListObjectVersions = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("VersionIdMarker") versionIdMarker: option<versionIdMarker>,
    @as("Prefix") prefix: option<prefix>,
    @as("MaxKeys") maxKeys: option<maxKeys>,
    @as("KeyMarker") keyMarker: option<keyMarker>,
    @as("EncodingType") encodingType: option<encodingType>,
    @as("Delimiter") delimiter: option<delimiter>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("EncodingType") encodingType: option<encodingType>,
    @as("CommonPrefixes") commonPrefixes: option<commonPrefixList>,
    @as("MaxKeys") maxKeys: option<maxKeys>,
    @as("Delimiter") delimiter: option<delimiter>,
    @as("Prefix") prefix: option<prefix>,
    @as("Name") name: option<bucketName>,
    @as("DeleteMarkers") deleteMarkers: option<deleteMarkers>,
    @as("Versions") versions: option<objectVersionList>,
    @as("NextVersionIdMarker") nextVersionIdMarker: option<nextVersionIdMarker>,
    @as("NextKeyMarker") nextKeyMarker: option<nextKeyMarker>,
    @as("VersionIdMarker") versionIdMarker: option<versionIdMarker>,
    @as("KeyMarker") keyMarker: option<keyMarker>,
    @as("IsTruncated") isTruncated: option<isTruncated>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListObjectVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMultipartUploads = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("UploadIdMarker") uploadIdMarker: option<uploadIdMarker>,
    @as("Prefix") prefix: option<prefix>,
    @as("MaxUploads") maxUploads: option<maxUploads>,
    @as("KeyMarker") keyMarker: option<keyMarker>,
    @as("EncodingType") encodingType: option<encodingType>,
    @as("Delimiter") delimiter: option<delimiter>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("EncodingType") encodingType: option<encodingType>,
    @as("CommonPrefixes") commonPrefixes: option<commonPrefixList>,
    @as("Uploads") uploads: option<multipartUploadList>,
    @as("IsTruncated") isTruncated: option<isTruncated>,
    @as("MaxUploads") maxUploads: option<maxUploads>,
    @as("NextUploadIdMarker") nextUploadIdMarker: option<nextUploadIdMarker>,
    @as("Delimiter") delimiter: option<delimiter>,
    @as("Prefix") prefix: option<prefix>,
    @as("NextKeyMarker") nextKeyMarker: option<nextKeyMarker>,
    @as("UploadIdMarker") uploadIdMarker: option<uploadIdMarker>,
    @as("KeyMarker") keyMarker: option<keyMarker>,
    @as("Bucket") bucket: option<bucketName>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListMultipartUploadsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObjectLockConfiguration = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("ObjectLockConfiguration") objectLockConfiguration: option<objectLockConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetObjectLockConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObjectAcl = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("Grants") grants: option<grants>,
    @as("Owner") owner: option<owner>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetObjectAclCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketWebsite = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("RoutingRules") routingRules: option<routingRules>,
    @as("ErrorDocument") errorDocument: option<errorDocument>,
    @as("IndexDocument") indexDocument: option<indexDocument>,
    @as("RedirectAllRequestsTo") redirectAllRequestsTo: option<redirectAllRequestsTo>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketWebsiteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketOwnershipControls = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("OwnershipControls") ownershipControls: option<ownershipControls>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketOwnershipControlsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketCors = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("CORSRules") corsrules: option<corsrules>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketCorsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketAcl = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("Grants") grants: option<grants>,
    @as("Owner") owner: option<owner>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketAclCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteObjects = {
  type t
  type request = {
    @as("Delete") delete: delete,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("BypassGovernanceRetention") bypassGovernanceRetention: option<bypassGovernanceRetention>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("MFA") mfa: option<mfa>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("Errors") errors: option<errors>,
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("Deleted") deleted: option<deletedObjects>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteObjectsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CompleteMultipartUpload = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("UploadId") uploadId: multipartUploadId,
    @as("MultipartUpload") multipartUpload: option<completedMultipartUpload>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("RequestCharged") requestCharged: option<requestCharged>,
    @as("BucketKeyEnabled") bucketKeyEnabled: option<bucketKeyEnabled>,
    @as("SSEKMSKeyId") ssekmskeyId: option<ssekmskeyId>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("ServerSideEncryption") serverSideEncryption: option<serverSideEncryption>,
    @as("ETag") etag: option<etag>,
    @as("Expiration") expiration: option<expiration>,
    @as("Key") key: option<objectKey>,
    @as("Bucket") bucket: option<bucketName>,
    @as("Location") location: option<location>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "CompleteMultipartUploadCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutObjectAcl = {
  type t
  type request = {
    @as("AccessControlPolicy") accessControlPolicy: option<accessControlPolicy>,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("Key") key: objectKey,
    @as("GrantWriteACP") grantWriteACP: option<grantWriteACP>,
    @as("GrantWrite") grantWrite: option<grantWrite>,
    @as("GrantReadACP") grantReadACP: option<grantReadACP>,
    @as("GrantRead") grantRead: option<grantRead>,
    @as("GrantFullControl") grantFullControl: option<grantFullControl>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
    @as("ACL") acl: option<objectCannedACL>,
  }
  type response = {@as("RequestCharged") requestCharged: option<requestCharged>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutObjectAclCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketWebsite = {
  type t
  type request = {
    @as("WebsiteConfiguration") websiteConfiguration: websiteConfiguration,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketWebsiteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketEncryption = {
  type t
  type request = {
    @as("ServerSideEncryptionConfiguration")
    serverSideEncryptionConfiguration: serverSideEncryptionConfiguration,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketEncryptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketCors = {
  type t
  type request = {
    @as("CORSConfiguration") corsconfiguration: corsconfiguration,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketCorsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketAcl = {
  type t
  type request = {
    @as("AccessControlPolicy") accessControlPolicy: option<accessControlPolicy>,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("GrantWriteACP") grantWriteACP: option<grantWriteACP>,
    @as("GrantWrite") grantWrite: option<grantWrite>,
    @as("GrantReadACP") grantReadACP: option<grantReadACP>,
    @as("GrantRead") grantRead: option<grantRead>,
    @as("GrantFullControl") grantFullControl: option<grantFullControl>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
    @as("ACL") acl: option<bucketCannedACL>,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketAclCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetBucketLogging = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("LoggingEnabled") loggingEnabled: option<loggingEnabled>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketLoggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketEncryption = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("ServerSideEncryptionConfiguration")
    serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketEncryptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketMetricsConfiguration = {
  type t
  type request = {
    @as("MetricsConfiguration") metricsConfiguration: metricsConfiguration,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Id") id: metricsId,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketMetricsConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketLogging = {
  type t
  type request = {
    @as("BucketLoggingStatus") bucketLoggingStatus: bucketLoggingStatus,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketLoggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketInventoryConfiguration = {
  type t
  type request = {
    @as("InventoryConfiguration") inventoryConfiguration: inventoryConfiguration,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Id") id: inventoryId,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketInventoryConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketIntelligentTieringConfiguration = {
  type t
  type request = {
    @as("IntelligentTieringConfiguration")
    intelligentTieringConfiguration: intelligentTieringConfiguration,
    @as("Id") id: intelligentTieringId,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketIntelligentTieringConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketAnalyticsConfiguration = {
  type t
  type request = {
    @as("AnalyticsConfiguration") analyticsConfiguration: analyticsConfiguration,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Id") id: analyticsId,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketAnalyticsConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetBucketMetricsConfiguration = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Id") id: metricsId,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("MetricsConfiguration") metricsConfiguration: option<metricsConfiguration>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketMetricsConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketInventoryConfiguration = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Id") id: inventoryId,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("InventoryConfiguration") inventoryConfiguration: option<inventoryConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketInventoryConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketIntelligentTieringConfiguration = {
  type t
  type request = {
    @as("Id") id: intelligentTieringId,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("IntelligentTieringConfiguration")
    intelligentTieringConfiguration: option<intelligentTieringConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketIntelligentTieringConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketAnalyticsConfiguration = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Id") id: analyticsId,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("AnalyticsConfiguration") analyticsConfiguration: option<analyticsConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketAnalyticsConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreObject = {
  type t
  type request = {
    @as("RestoreRequest") restoreRequest: option<restoreRequest>,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("RequestPayer") requestPayer: option<requestPayer>,
    @as("VersionId") versionId: option<objectVersionId>,
    @as("Key") key: objectKey,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("RestoreOutputPath") restoreOutputPath: option<restoreOutputPath>,
    @as("RequestCharged") requestCharged: option<requestCharged>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "RestoreObjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBucketMetricsConfigurations = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContinuationToken") continuationToken: option<token>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("MetricsConfigurationList") metricsConfigurationList: option<metricsConfigurationList>,
    @as("NextContinuationToken") nextContinuationToken: option<nextToken>,
    @as("ContinuationToken") continuationToken: option<token>,
    @as("IsTruncated") isTruncated: option<isTruncated>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListBucketMetricsConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBucketInventoryConfigurations = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContinuationToken") continuationToken: option<token>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("NextContinuationToken") nextContinuationToken: option<nextToken>,
    @as("IsTruncated") isTruncated: option<isTruncated>,
    @as("InventoryConfigurationList")
    inventoryConfigurationList: option<inventoryConfigurationList>,
    @as("ContinuationToken") continuationToken: option<token>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListBucketInventoryConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBucketIntelligentTieringConfigurations = {
  type t
  type request = {
    @as("ContinuationToken") continuationToken: option<token>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("IntelligentTieringConfigurationList")
    intelligentTieringConfigurationList: option<intelligentTieringConfigurationList>,
    @as("NextContinuationToken") nextContinuationToken: option<nextToken>,
    @as("ContinuationToken") continuationToken: option<token>,
    @as("IsTruncated") isTruncated: option<isTruncated>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListBucketIntelligentTieringConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBucketAnalyticsConfigurations = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("ContinuationToken") continuationToken: option<token>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("AnalyticsConfigurationList")
    analyticsConfigurationList: option<analyticsConfigurationList>,
    @as("NextContinuationToken") nextContinuationToken: option<nextToken>,
    @as("ContinuationToken") continuationToken: option<token>,
    @as("IsTruncated") isTruncated: option<isTruncated>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListBucketAnalyticsConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketNotificationConfiguration = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = notificationConfiguration
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketNotificationConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketLifecycleConfiguration = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {@as("Rules") rules: option<lifecycleRules>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketLifecycleConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketReplication = {
  type t
  type request = {
    @as("ReplicationConfiguration") replicationConfiguration: replicationConfiguration,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Token") token: option<objectLockToken>,
    @as("ContentMD5") contentMD5: option<contentMD5>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketReplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketNotificationConfiguration = {
  type t
  type request = {
    @as("NotificationConfiguration") notificationConfiguration: notificationConfiguration,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketNotificationConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBucketLifecycleConfiguration = {
  type t
  type request = {
    @as("LifecycleConfiguration") lifecycleConfiguration: option<bucketLifecycleConfiguration>,
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketLifecycleConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetBucketReplication = {
  type t
  type request = {
    @as("ExpectedBucketOwner") expectedBucketOwner: option<accountId>,
    @as("Bucket") bucket: bucketName,
  }
  type response = {
    @as("ReplicationConfiguration") replicationConfiguration: option<replicationConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketReplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
