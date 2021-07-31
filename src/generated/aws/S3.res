type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type years = int;
type websiteRedirectLocation = string
type versionIdMarker = string
type value = string
type uploadIdMarker = string
type uRI = string
type type_ = [@as("Group") #Group | @as("AmazonCustomerByEmail") #AmazonCustomerByEmail | @as("CanonicalUser") #CanonicalUser]
type transitionStorageClass = [@as("DEEP_ARCHIVE") #DEEP_ARCHIVE | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING | @as("ONEZONE_IA") #ONEZONE_IA | @as("STANDARD_IA") #STANDARD_IA | @as("GLACIER") #GLACIER]
type topicArn = string
type token = string
type tier = [@as("Expedited") #Expedited | @as("Bulk") #Bulk | @as("Standard") #Standard]
type targetPrefix = string
type targetBucket = string
type taggingHeader = string
type taggingDirective = [@as("REPLACE") #REPLACE | @as("COPY") #COPY]
type tagCount = int;
type suffix = string
type streamingBlob = NodeJs.Buffer.t;
type storageClassAnalysisSchemaVersion = [@as("V_1") #V_1]
type storageClass = [@as("OUTPOSTS") #OUTPOSTS | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE | @as("GLACIER") #GLACIER | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING | @as("ONEZONE_IA") #ONEZONE_IA | @as("STANDARD_IA") #STANDARD_IA | @as("REDUCED_REDUNDANCY") #REDUCED_REDUNDANCY | @as("STANDARD") #STANDARD]
type startAfter = string
type start = float;
type sseKmsEncryptedObjectsStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type size = int;
type setting = bool;
type serverSideEncryption = [@as("aws:kms") #aws_kms | @as("AES256") #AES256]
type sSES3 = unit
type sSEKMSKeyId = string
type sSEKMSEncryptionContext = string
type sSECustomerKeyMD5 = string
type sSECustomerKey = string
type sSECustomerAlgorithm = string
type role = string
type restoreRequestType = [@as("SELECT") #SELECT]
type restoreOutputPath = string
type restore = string
type responseExpires = Js.Date.t;
type responseContentType = string
type responseContentLanguage = string
type responseContentEncoding = string
type responseContentDisposition = string
type responseCacheControl = string
type requestToken = string
type requestRoute = string
type requestPayer = [@as("requester") #requester]
type requestCharged = [@as("requester") #requester]
type replicationTimeStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type replicationStatus = [@as("REPLICA") #REPLICA | @as("FAILED") #FAILED | @as("PENDING") #PENDING | @as("COMPLETE") #COMPLETE]
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
type quiet = bool;
type queueArn = string
type protocol = [@as("https") #https | @as("http") #http]
type priority = int;
type prefix = string
type policy = string
type permission = [@as("READ_ACP") #READ_ACP | @as("READ") #READ | @as("WRITE_ACP") #WRITE_ACP | @as("WRITE") #WRITE | @as("FULL_CONTROL") #FULL_CONTROL]
type payer = [@as("BucketOwner") #BucketOwner | @as("Requester") #Requester]
type partsCount = int;
type partNumberMarker = string
type partNumber = int;
type parquetInput = unit
type ownerOverride = [@as("Destination") #Destination]
type objectVersionStorageClass = [@as("STANDARD") #STANDARD]
type objectVersionId = string
type objectStorageClass = [@as("OUTPOSTS") #OUTPOSTS | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING | @as("ONEZONE_IA") #ONEZONE_IA | @as("STANDARD_IA") #STANDARD_IA | @as("GLACIER") #GLACIER | @as("REDUCED_REDUNDANCY") #REDUCED_REDUNDANCY | @as("STANDARD") #STANDARD]
type objectOwnership = [@as("ObjectWriter") #ObjectWriter | @as("BucketOwnerPreferred") #BucketOwnerPreferred]
type objectLockToken = string
type objectLockRetentionMode = [@as("COMPLIANCE") #COMPLIANCE | @as("GOVERNANCE") #GOVERNANCE]
type objectLockRetainUntilDate = Js.Date.t;
type objectLockMode = [@as("COMPLIANCE") #COMPLIANCE | @as("GOVERNANCE") #GOVERNANCE]
type objectLockLegalHoldStatus = [@as("OFF") #OFF | @as("ON") #ON]
type objectLockEnabledForBucket = bool;
type objectLockEnabled = [@as("Enabled") #Enabled]
type objectKey = string
type objectCannedACL = [@as("bucket-owner-full-control") #bucket_owner_full_control | @as("bucket-owner-read") #bucket_owner_read | @as("aws-exec-read") #aws_exec_read | @as("authenticated-read") #authenticated_read | @as("public-read-write") #public_read_write | @as("public-read") #public_read | @as("private") #private]
type notificationId = string
type nextVersionIdMarker = string
type nextUploadIdMarker = string
type nextToken = string
type nextPartNumberMarker = string
type nextMarker = string
type nextKeyMarker = string
type multipartUploadId = string
type missingMeta = int;
type minutes = int;
type metricsStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type metricsId = string
type metadataValue = string
type metadataKey = string
type metadataDirective = [@as("REPLACE") #REPLACE | @as("COPY") #COPY]
type message = string
type maxUploads = int;
type maxParts = int;
type maxKeys = int;
type maxAgeSeconds = int;
type marker = string
type mFADeleteStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type mFADelete = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type mFA = string
type locationPrefix = string
type location = string
type lastModified = Js.Date.t;
type lambdaFunctionArn = string
type keyPrefixEquals = string
type keyMarker = string
type keyCount = int;
type kMSContext = string
type jSONType = [@as("LINES") #LINES | @as("DOCUMENT") #DOCUMENT]
type isTruncated = bool;
type isPublic = bool;
type isLatest = bool;
type isEnabled = bool;
type inventoryOptionalField = [@as("BucketKeyStatus") #BucketKeyStatus | @as("IntelligentTieringAccessTier") #IntelligentTieringAccessTier | @as("ObjectLockLegalHoldStatus") #ObjectLockLegalHoldStatus | @as("ObjectLockMode") #ObjectLockMode | @as("ObjectLockRetainUntilDate") #ObjectLockRetainUntilDate | @as("EncryptionStatus") #EncryptionStatus | @as("ReplicationStatus") #ReplicationStatus | @as("IsMultipartUploaded") #IsMultipartUploaded | @as("ETag") #ETag | @as("StorageClass") #StorageClass | @as("LastModifiedDate") #LastModifiedDate | @as("Size") #Size]
type inventoryIncludedObjectVersions = [@as("Current") #Current | @as("All") #All]
type inventoryId = string
type inventoryFrequency = [@as("Weekly") #Weekly | @as("Daily") #Daily]
type inventoryFormat = [@as("Parquet") #Parquet | @as("ORC") #ORC | @as("CSV") #CSV]
type intelligentTieringStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type intelligentTieringId = string
type intelligentTieringDays = int;
type intelligentTieringAccessTier = [@as("DEEP_ARCHIVE_ACCESS") #DEEP_ARCHIVE_ACCESS | @as("ARCHIVE_ACCESS") #ARCHIVE_ACCESS]
type initiated = Js.Date.t;
type ifUnmodifiedSince = Js.Date.t;
type ifNoneMatch = string
type ifModifiedSince = Js.Date.t;
type ifMatch = string
type iD = string
type httpRedirectCode = string
type httpErrorCodeReturnedEquals = string
type hostName = string
type grantWriteACP = string
type grantWrite = string
type grantReadACP = string
type grantRead = string
type grantFullControl = string
type getObjectResponseStatusCode = int;
type filterRuleValue = string
type filterRuleName = [@as("suffix") #suffix | @as("prefix") #prefix]
type fileHeaderInfo = [@as("NONE") #NONE | @as("IGNORE") #IGNORE | @as("USE") #USE]
type fieldDelimiter = string
type fetchOwner = bool;
type expressionType = [@as("SQL") #SQL]
type expression = string
type exposeHeader = string
type expires = Js.Date.t;
type expiredObjectDeleteMarker = bool;
type expirationStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type expiration = string
type existingObjectReplicationStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type event = [@as("s3:Replication:OperationReplicatedAfterThreshold") #s3_Replication_OperationReplicatedAfterThreshold | @as("s3:Replication:OperationMissedThreshold") #s3_Replication_OperationMissedThreshold | @as("s3:Replication:OperationNotTracked") #s3_Replication_OperationNotTracked | @as("s3:Replication:OperationFailedReplication") #s3_Replication_OperationFailedReplication | @as("s3:Replication:*") #s3_Replication_* | @as("s3:ObjectRestore:Completed") #s3_ObjectRestore_Completed | @as("s3:ObjectRestore:Post") #s3_ObjectRestore_Post | @as("s3:ObjectRestore:*") #s3_ObjectRestore_* | @as("s3:ObjectRemoved:DeleteMarkerCreated") #s3_ObjectRemoved_DeleteMarkerCreated | @as("s3:ObjectRemoved:Delete") #s3_ObjectRemoved_Delete | @as("s3:ObjectRemoved:*") #s3_ObjectRemoved_* | @as("s3:ObjectCreated:CompleteMultipartUpload") #s3_ObjectCreated_CompleteMultipartUpload | @as("s3:ObjectCreated:Copy") #s3_ObjectCreated_Copy | @as("s3:ObjectCreated:Post") #s3_ObjectCreated_Post | @as("s3:ObjectCreated:Put") #s3_ObjectCreated_Put | @as("s3:ObjectCreated:*") #s3_ObjectCreated_* | @as("s3:ReducedRedundancyLostObject") #s3_ReducedRedundancyLostObject]
type errorMessage = string
type errorCode = string
type endEvent = unit
type end = float;
type encodingType = [@as("url") #url]
type enableRequestProgress = bool;
type emailAddress = string
type eTag = string
type displayName = string
type description = string
type delimiter = string
type deleteMarkerVersionId = string
type deleteMarkerReplicationStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type deleteMarker = bool;
type daysAfterInitiation = int;
type days = int;
type date = Js.Date.t;
type creationDate = Js.Date.t;
type copySourceVersionId = string
type copySourceSSECustomerKeyMD5 = string
type copySourceSSECustomerKey = string
type copySourceSSECustomerAlgorithm = string
type copySourceRange = string
type copySourceIfUnmodifiedSince = Js.Date.t;
type copySourceIfNoneMatch = string
type copySourceIfModifiedSince = Js.Date.t;
type copySourceIfMatch = string
type copySource = string
type continuationEvent = unit
type contentType = string
type contentRange = string
type contentMD5 = string
type contentLength = float;
type contentLanguage = string
type contentEncoding = string
type contentDisposition = string
type confirmRemoveSelfBucketAccess = bool;
type compressionType = [@as("BZIP2") #BZIP2 | @as("GZIP") #GZIP | @as("NONE") #NONE]
type comments = string
type code = string
type cacheControl = string
type bytesScanned = float;
type bytesReturned = float;
type bytesProcessed = float;
type bypassGovernanceRetention = bool;
type bucketVersioningStatus = [@as("Suspended") #Suspended | @as("Enabled") #Enabled]
type bucketName = string
type bucketLogsPermission = [@as("WRITE") #WRITE | @as("READ") #READ | @as("FULL_CONTROL") #FULL_CONTROL]
type bucketLocationConstraint = [@as("us-west-2") #us_west_2 | @as("us-west-1") #us_west_1 | @as("us-gov-west-1") #us_gov_west_1 | @as("us-gov-east-1") #us_gov_east_1 | @as("us-east-2") #us_east_2 | @as("sa-east-1") #sa_east_1 | @as("me-south-1") #me_south_1 | @as("eu-west-3") #eu_west_3 | @as("eu-west-2") #eu_west_2 | @as("eu-west-1") #eu_west_1 | @as("eu-south-1") #eu_south_1 | @as("eu-north-1") #eu_north_1 | @as("eu-central-1") #eu_central_1 | @as("EU") #EU | @as("cn-northwest-1") #cn_northwest_1 | @as("cn-north-1") #cn_north_1 | @as("ca-central-1") #ca_central_1 | @as("ap-southeast-2") #ap_southeast_2 | @as("ap-southeast-1") #ap_southeast_1 | @as("ap-south-1") #ap_south_1 | @as("ap-northeast-3") #ap_northeast_3 | @as("ap-northeast-2") #ap_northeast_2 | @as("ap-northeast-1") #ap_northeast_1 | @as("ap-east-1") #ap_east_1 | @as("af-south-1") #af_south_1]
type bucketKeyEnabled = bool;
type bucketCannedACL = [@as("authenticated-read") #authenticated_read | @as("public-read-write") #public_read_write | @as("public-read") #public_read | @as("private") #private]
type bucketAccelerateStatus = [@as("Suspended") #Suspended | @as("Enabled") #Enabled]
type body = NodeJs.Buffer.t;
type archiveStatus = [@as("DEEP_ARCHIVE_ACCESS") #DEEP_ARCHIVE_ACCESS | @as("ARCHIVE_ACCESS") #ARCHIVE_ACCESS]
type analyticsS3ExportFileFormat = [@as("CSV") #CSV]
type analyticsId = string
type allowedOrigin = string
type allowedMethod = string
type allowedHeader = string
type allowQuotedRecordDelimiter = bool;
type accountId = string
type acceptRanges = string
type abortRuleId = string
type abortDate = Js.Date.t;
type versioningConfiguration = {
@as("Status") status: bucketVersioningStatus,
@as("MFADelete") mFADelete: mFADelete
}
type transition = {
@as("StorageClass") storageClass: transitionStorageClass,
@as("Days") days: days,
@as("Date") date: date
}
type tiering = {
@as("AccessTier") accessTier: option<intelligentTieringAccessTier>,
@as("Days") days: option<intelligentTieringDays>
}
type tag = {
@as("Value") value: option<value>,
@as("Key") key: option<objectKey>
}
type stats = {
@as("BytesReturned") bytesReturned: bytesReturned,
@as("BytesProcessed") bytesProcessed: bytesProcessed,
@as("BytesScanned") bytesScanned: bytesScanned
}
type sseKmsEncryptedObjects = {
@as("Status") status: option<sseKmsEncryptedObjectsStatus>
}
type serverSideEncryptionByDefault = {
@as("KMSMasterKeyID") kMSMasterKeyID: sSEKMSKeyId,
@as("SSEAlgorithm") sSEAlgorithm: option<serverSideEncryption>
}
type scanRange = {
@as("End") end: end,
@as("Start") start: start
}
type sSEKMS = {
@as("KeyId") keyId: option<sSEKMSKeyId>
}
type requestProgress = {
@as("Enabled") enabled: enableRequestProgress
}
type requestPaymentConfiguration = {
@as("Payer") payer: option<payer>
}
type replicationTimeValue = {
@as("Minutes") minutes: minutes
}
type replicaModifications = {
@as("Status") status: option<replicaModificationsStatus>
}
type redirectAllRequestsTo = {
@as("Protocol") protocol: protocol,
@as("HostName") hostName: option<hostName>
}
type redirect = {
@as("ReplaceKeyWith") replaceKeyWith: replaceKeyWith,
@as("ReplaceKeyPrefixWith") replaceKeyPrefixWith: replaceKeyPrefixWith,
@as("Protocol") protocol: protocol,
@as("HttpRedirectCode") httpRedirectCode: httpRedirectCode,
@as("HostName") hostName: hostName
}
type recordsEvent = {
@as("Payload") payload: body
}
type publicAccessBlockConfiguration = {
@as("RestrictPublicBuckets") restrictPublicBuckets: setting,
@as("BlockPublicPolicy") blockPublicPolicy: setting,
@as("IgnorePublicAcls") ignorePublicAcls: setting,
@as("BlockPublicAcls") blockPublicAcls: setting
}
type progress = {
@as("BytesReturned") bytesReturned: bytesReturned,
@as("BytesProcessed") bytesProcessed: bytesProcessed,
@as("BytesScanned") bytesScanned: bytesScanned
}
type policyStatus = {
@as("IsPublic") isPublic: isPublic
}
type part = {
@as("Size") size: size,
@as("ETag") eTag: eTag,
@as("LastModified") lastModified: lastModified,
@as("PartNumber") partNumber: partNumber
}
type ownershipControlsRule = {
@as("ObjectOwnership") objectOwnership: option<objectOwnership>
}
type owner = {
@as("ID") iD: iD,
@as("DisplayName") displayName: displayName
}
type objectLockRetention = {
@as("RetainUntilDate") retainUntilDate: date,
@as("Mode") mode: objectLockRetentionMode
}
type objectLockLegalHold = {
@as("Status") status: objectLockLegalHoldStatus
}
type objectIdentifier = {
@as("VersionId") versionId: objectVersionId,
@as("Key") key: option<objectKey>
}
type noncurrentVersionTransition = {
@as("StorageClass") storageClass: transitionStorageClass,
@as("NoncurrentDays") noncurrentDays: days
}
type noncurrentVersionExpiration = {
@as("NoncurrentDays") noncurrentDays: days
}
type metadataEntry = {
@as("Value") value: metadataValue,
@as("Name") name: metadataKey
}
type metadata = Js.Dict.t< metadataValue>
type lifecycleExpiration = {
@as("ExpiredObjectDeleteMarker") expiredObjectDeleteMarker: expiredObjectDeleteMarker,
@as("Days") days: days,
@as("Date") date: date
}
type jSONOutput = {
@as("RecordDelimiter") recordDelimiter: recordDelimiter
}
type jSONInput = {
@as("Type") type_: jSONType
}
type inventorySchedule = {
@as("Frequency") frequency: option<inventoryFrequency>
}
type inventoryOptionalFields = array<inventoryOptionalField>
type inventoryFilter = {
@as("Prefix") prefix: option<prefix>
}
type initiator = {
@as("DisplayName") displayName: displayName,
@as("ID") iD: iD
}
type indexDocument = {
@as("Suffix") suffix: option<suffix>
}
type grantee = {
@as("Type") type_: option<type_>,
@as("URI") uRI: uRI,
@as("ID") iD: iD,
@as("EmailAddress") emailAddress: emailAddress,
@as("DisplayName") displayName: displayName
}
type glacierJobParameters = {
@as("Tier") tier: option<tier>
}
type filterRule = {
@as("Value") value: filterRuleValue,
@as("Name") name: filterRuleName
}
type exposeHeaders = array<exposeHeader>
type existingObjectReplication = {
@as("Status") status: option<existingObjectReplicationStatus>
}
type eventList = array<event>
type errorDocument = {
@as("Key") key: option<objectKey>
}
type error = {
@as("Message") message: message,
@as("Code") code: code,
@as("VersionId") versionId: objectVersionId,
@as("Key") key: objectKey
}
type encryptionConfiguration = {
@as("ReplicaKmsKeyID") replicaKmsKeyID: replicaKmsKeyID
}
type encryption = {
@as("KMSContext") kMSContext: kMSContext,
@as("KMSKeyId") kMSKeyId: sSEKMSKeyId,
@as("EncryptionType") encryptionType: option<serverSideEncryption>
}
type deletedObject = {
@as("DeleteMarkerVersionId") deleteMarkerVersionId: deleteMarkerVersionId,
@as("DeleteMarker") deleteMarker: deleteMarker,
@as("VersionId") versionId: objectVersionId,
@as("Key") key: objectKey
}
type deleteMarkerReplication = {
@as("Status") status: deleteMarkerReplicationStatus
}
type defaultRetention = {
@as("Years") years: years,
@as("Days") days: days,
@as("Mode") mode: objectLockRetentionMode
}
type createBucketConfiguration = {
@as("LocationConstraint") locationConstraint: bucketLocationConstraint
}
type copyPartResult = {
@as("LastModified") lastModified: lastModified,
@as("ETag") eTag: eTag
}
type copyObjectResult = {
@as("LastModified") lastModified: lastModified,
@as("ETag") eTag: eTag
}
type condition = {
@as("KeyPrefixEquals") keyPrefixEquals: keyPrefixEquals,
@as("HttpErrorCodeReturnedEquals") httpErrorCodeReturnedEquals: httpErrorCodeReturnedEquals
}
type completedPart = {
@as("PartNumber") partNumber: partNumber,
@as("ETag") eTag: eTag
}
type commonPrefix = {
@as("Prefix") prefix: prefix
}
type cSVOutput = {
@as("QuoteCharacter") quoteCharacter: quoteCharacter,
@as("FieldDelimiter") fieldDelimiter: fieldDelimiter,
@as("RecordDelimiter") recordDelimiter: recordDelimiter,
@as("QuoteEscapeCharacter") quoteEscapeCharacter: quoteEscapeCharacter,
@as("QuoteFields") quoteFields: quoteFields
}
type cSVInput = {
@as("AllowQuotedRecordDelimiter") allowQuotedRecordDelimiter: allowQuotedRecordDelimiter,
@as("QuoteCharacter") quoteCharacter: quoteCharacter,
@as("FieldDelimiter") fieldDelimiter: fieldDelimiter,
@as("RecordDelimiter") recordDelimiter: recordDelimiter,
@as("QuoteEscapeCharacter") quoteEscapeCharacter: quoteEscapeCharacter,
@as("Comments") comments: comments,
@as("FileHeaderInfo") fileHeaderInfo: fileHeaderInfo
}
type bucket = {
@as("CreationDate") creationDate: creationDate,
@as("Name") name: bucketName
}
type analyticsS3BucketDestination = {
@as("Prefix") prefix: prefix,
@as("Bucket") bucket: option<bucketName>,
@as("BucketAccountId") bucketAccountId: accountId,
@as("Format") format: option<analyticsS3ExportFileFormat>
}
type allowedOrigins = array<allowedOrigin>
type allowedMethods = array<allowedMethod>
type allowedHeaders = array<allowedHeader>
type accessControlTranslation = {
@as("Owner") owner: option<ownerOverride>
}
type accelerateConfiguration = {
@as("Status") status: bucketAccelerateStatus
}
type abortIncompleteMultipartUpload = {
@as("DaysAfterInitiation") daysAfterInitiation: daysAfterInitiation
}
type userMetadata = array<metadataEntry>
type transitionList = array<transition>
type tieringList = array<tiering>
type targetGrant = {
@as("Permission") permission: bucketLogsPermission,
@as("Grantee") grantee: grantee
}
type tagSet = array<tag>
type statsEvent = {
@as("Details") details: stats
}
type sourceSelectionCriteria = {
@as("ReplicaModifications") replicaModifications: replicaModifications,
@as("SseKmsEncryptedObjects") sseKmsEncryptedObjects: sseKmsEncryptedObjects
}
type serverSideEncryptionRule = {
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("ApplyServerSideEncryptionByDefault") applyServerSideEncryptionByDefault: serverSideEncryptionByDefault
}
type routingRule = {
@as("Redirect") redirect: option<redirect>,
@as("Condition") condition: condition
}
type replicationTime = {
@as("Time") time: option<replicationTimeValue>,
@as("Status") status: option<replicationTimeStatus>
}
type progressEvent = {
@as("Details") details: progress
}
type parts = array<part>
type ownershipControlsRules = array<ownershipControlsRule>
type outputSerialization = {
@as("JSON") jSON: jSONOutput,
@as("CSV") cSV: cSVOutput
}
type objectVersion = {
@as("Owner") owner: owner,
@as("LastModified") lastModified: lastModified,
@as("IsLatest") isLatest: isLatest,
@as("VersionId") versionId: objectVersionId,
@as("Key") key: objectKey,
@as("StorageClass") storageClass: objectVersionStorageClass,
@as("Size") size: size,
@as("ETag") eTag: eTag
}
type objectLockRule = {
@as("DefaultRetention") defaultRetention: defaultRetention
}
type objectIdentifierList = array<objectIdentifier>
type object = {
@as("Owner") owner: owner,
@as("StorageClass") storageClass: objectStorageClass,
@as("Size") size: size,
@as("ETag") eTag: eTag,
@as("LastModified") lastModified: lastModified,
@as("Key") key: objectKey
}
type noncurrentVersionTransitionList = array<noncurrentVersionTransition>
type multipartUpload = {
@as("Initiator") initiator: initiator,
@as("Owner") owner: owner,
@as("StorageClass") storageClass: storageClass,
@as("Initiated") initiated: initiated,
@as("Key") key: objectKey,
@as("UploadId") uploadId: multipartUploadId
}
type metrics = {
@as("EventThreshold") eventThreshold: replicationTimeValue,
@as("Status") status: option<metricsStatus>
}
type inventoryEncryption = {
@as("SSEKMS") sSEKMS: sSEKMS,
@as("SSES3") sSES3: sSES3
}
type inputSerialization = {
@as("Parquet") parquet: parquetInput,
@as("JSON") jSON: jSONInput,
@as("CompressionType") compressionType: compressionType,
@as("CSV") cSV: cSVInput
}
type grant = {
@as("Permission") permission: permission,
@as("Grantee") grantee: grantee
}
type filterRuleList = array<filterRule>
type errors = array<error>
type deletedObjects = array<deletedObject>
type deleteMarkerEntry = {
@as("LastModified") lastModified: lastModified,
@as("IsLatest") isLatest: isLatest,
@as("VersionId") versionId: objectVersionId,
@as("Key") key: objectKey,
@as("Owner") owner: owner
}
type completedPartList = array<completedPart>
type commonPrefixList = array<commonPrefix>
type cORSRule = {
@as("MaxAgeSeconds") maxAgeSeconds: maxAgeSeconds,
@as("ExposeHeaders") exposeHeaders: exposeHeaders,
@as("AllowedOrigins") allowedOrigins: option<allowedOrigins>,
@as("AllowedMethods") allowedMethods: option<allowedMethods>,
@as("AllowedHeaders") allowedHeaders: allowedHeaders,
@as("ID") iD: iD
}
type buckets = array<bucket>
type analyticsExportDestination = {
@as("S3BucketDestination") s3BucketDestination: option<analyticsS3BucketDestination>
}
type targetGrants = array<targetGrant>
type tagging = {
@as("TagSet") tagSet: option<tagSet>
}
type storageClassAnalysisDataExport = {
@as("Destination") destination: option<analyticsExportDestination>,
@as("OutputSchemaVersion") outputSchemaVersion: option<storageClassAnalysisSchemaVersion>
}
type serverSideEncryptionRules = array<serverSideEncryptionRule>
type selectParameters = {
@as("OutputSerialization") outputSerialization: option<outputSerialization>,
@as("Expression") expression: option<expression>,
@as("ExpressionType") expressionType: option<expressionType>,
@as("InputSerialization") inputSerialization: option<inputSerialization>
}
type selectObjectContentEventStream = End(endEvent) | Cont(continuationEvent) | Progress(progressEvent) | Stats(statsEvent) | Records(recordsEvent);
type s3KeyFilter = {
@as("FilterRules") filterRules: filterRuleList
}
type routingRules = array<routingRule>
type replicationRuleAndOperator = {
@as("Tags") tags: tagSet,
@as("Prefix") prefix: prefix
}
type ownershipControls = {
@as("Rules") rules: option<ownershipControlsRules>
}
type objectVersionList = array<objectVersion>
type objectLockConfiguration = {
@as("Rule") rule: objectLockRule,
@as("ObjectLockEnabled") objectLockEnabled: objectLockEnabled
}
type objectList = array<object>
type multipartUploadList = array<multipartUpload>
type metricsAndOperator = {
@as("Tags") tags: tagSet,
@as("Prefix") prefix: prefix
}
type lifecycleRuleAndOperator = {
@as("Tags") tags: tagSet,
@as("Prefix") prefix: prefix
}
type inventoryS3BucketDestination = {
@as("Encryption") encryption: inventoryEncryption,
@as("Prefix") prefix: prefix,
@as("Format") format: option<inventoryFormat>,
@as("Bucket") bucket: option<bucketName>,
@as("AccountId") accountId: accountId
}
type intelligentTieringAndOperator = {
@as("Tags") tags: tagSet,
@as("Prefix") prefix: prefix
}
type grants = array<grant>
type destination = {
@as("Metrics") metrics: metrics,
@as("ReplicationTime") replicationTime: replicationTime,
@as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("AccessControlTranslation") accessControlTranslation: accessControlTranslation,
@as("StorageClass") storageClass: storageClass,
@as("Account") account: accountId,
@as("Bucket") bucket: option<bucketName>
}
type deleteMarkers = array<deleteMarkerEntry>
type delete = {
@as("Quiet") quiet: quiet,
@as("Objects") objects: option<objectIdentifierList>
}
type completedMultipartUpload = {
@as("Parts") parts: completedPartList
}
type cORSRules = array<cORSRule>
type analyticsAndOperator = {
@as("Tags") tags: tagSet,
@as("Prefix") prefix: prefix
}
type websiteConfiguration = {
@as("RoutingRules") routingRules: routingRules,
@as("RedirectAllRequestsTo") redirectAllRequestsTo: redirectAllRequestsTo,
@as("IndexDocument") indexDocument: indexDocument,
@as("ErrorDocument") errorDocument: errorDocument
}
type storageClassAnalysis = {
@as("DataExport") dataExport: storageClassAnalysisDataExport
}
type serverSideEncryptionConfiguration = {
@as("Rules") rules: option<serverSideEncryptionRules>
}
type s3Location = {
@as("StorageClass") storageClass: storageClass,
@as("UserMetadata") userMetadata: userMetadata,
@as("Tagging") tagging: tagging,
@as("AccessControlList") accessControlList: grants,
@as("CannedACL") cannedACL: objectCannedACL,
@as("Encryption") encryption: encryption,
@as("Prefix") prefix: option<locationPrefix>,
@as("BucketName") bucketName: option<bucketName>
}
type replicationRuleFilter = And(replicationRuleAndOperator) | Tag(tag) | Prefix(prefix);
type notificationConfigurationFilter = {
@as("Key") key: s3KeyFilter
}
type metricsFilter = And(metricsAndOperator) | Tag(tag) | Prefix(prefix);
type loggingEnabled = {
@as("TargetPrefix") targetPrefix: option<targetPrefix>,
@as("TargetGrants") targetGrants: targetGrants,
@as("TargetBucket") targetBucket: option<targetBucket>
}
type lifecycleRuleFilter = And(lifecycleRuleAndOperator) | Tag(tag) | Prefix(prefix);
type inventoryDestination = {
@as("S3BucketDestination") s3BucketDestination: option<inventoryS3BucketDestination>
}
type intelligentTieringFilter = {
@as("And") and: intelligentTieringAndOperator,
@as("Tag") tag: tag,
@as("Prefix") prefix: prefix
}
type cORSConfiguration = {
@as("CORSRules") cORSRules: option<cORSRules>
}
type analyticsFilter = And(analyticsAndOperator) | Tag(tag) | Prefix(prefix);
type accessControlPolicy = {
@as("Owner") owner: owner,
@as("Grants") grants: grants
}
type topicConfiguration = {
@as("Filter") filter: notificationConfigurationFilter,
@as("Events") events: option<eventList>,
@as("TopicArn") topicArn: option<topicArn>,
@as("Id") id: notificationId
}
type replicationRule = {
@as("DeleteMarkerReplication") deleteMarkerReplication: deleteMarkerReplication,
@as("Destination") destination: option<destination>,
@as("ExistingObjectReplication") existingObjectReplication: existingObjectReplication,
@as("SourceSelectionCriteria") sourceSelectionCriteria: sourceSelectionCriteria,
@as("Status") status: option<replicationRuleStatus>,
@as("Filter") filter: replicationRuleFilter,
@as("Prefix") prefix: prefix,
@as("Priority") priority: priority,
@as("ID") iD: iD
}
type queueConfiguration = {
@as("Filter") filter: notificationConfigurationFilter,
@as("Events") events: option<eventList>,
@as("QueueArn") queueArn: option<queueArn>,
@as("Id") id: notificationId
}
type outputLocation = {
@as("S3") s3: s3Location
}
type metricsConfiguration = {
@as("Filter") filter: metricsFilter,
@as("Id") id: option<metricsId>
}
type lifecycleRule = {
@as("AbortIncompleteMultipartUpload") abortIncompleteMultipartUpload: abortIncompleteMultipartUpload,
@as("NoncurrentVersionExpiration") noncurrentVersionExpiration: noncurrentVersionExpiration,
@as("NoncurrentVersionTransitions") noncurrentVersionTransitions: noncurrentVersionTransitionList,
@as("Transitions") transitions: transitionList,
@as("Status") status: option<expirationStatus>,
@as("Filter") filter: lifecycleRuleFilter,
@as("Prefix") prefix: prefix,
@as("ID") iD: iD,
@as("Expiration") expiration: lifecycleExpiration
}
type lambdaFunctionConfiguration = {
@as("Filter") filter: notificationConfigurationFilter,
@as("Events") events: option<eventList>,
@as("LambdaFunctionArn") lambdaFunctionArn: option<lambdaFunctionArn>,
@as("Id") id: notificationId
}
type inventoryConfiguration = {
@as("Schedule") schedule: option<inventorySchedule>,
@as("OptionalFields") optionalFields: inventoryOptionalFields,
@as("IncludedObjectVersions") includedObjectVersions: option<inventoryIncludedObjectVersions>,
@as("Id") id: option<inventoryId>,
@as("Filter") filter: inventoryFilter,
@as("IsEnabled") isEnabled: option<isEnabled>,
@as("Destination") destination: option<inventoryDestination>
}
type intelligentTieringConfiguration = {
@as("Tierings") tierings: option<tieringList>,
@as("Status") status: option<intelligentTieringStatus>,
@as("Filter") filter: intelligentTieringFilter,
@as("Id") id: option<intelligentTieringId>
}
type bucketLoggingStatus = {
@as("LoggingEnabled") loggingEnabled: loggingEnabled
}
type analyticsConfiguration = {
@as("StorageClassAnalysis") storageClassAnalysis: option<storageClassAnalysis>,
@as("Filter") filter: analyticsFilter,
@as("Id") id: option<analyticsId>
}
type topicConfigurationList = array<topicConfiguration>
type restoreRequest = {
@as("OutputLocation") outputLocation: outputLocation,
@as("SelectParameters") selectParameters: selectParameters,
@as("Description") description: description,
@as("Tier") tier: tier,
@as("Type") type_: restoreRequestType,
@as("GlacierJobParameters") glacierJobParameters: glacierJobParameters,
@as("Days") days: days
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
@as("Rules") rules: option<replicationRules>,
@as("Role") role: option<role>
}
type notificationConfiguration = {
@as("LambdaFunctionConfigurations") lambdaFunctionConfigurations: lambdaFunctionConfigurationList,
@as("QueueConfigurations") queueConfigurations: queueConfigurationList,
@as("TopicConfigurations") topicConfigurations: topicConfigurationList
}
type bucketLifecycleConfiguration = {
@as("Rules") rules: option<lifecycleRules>
}
type clientType;
@module("@aws-sdk/client-s3") @new external createClient: unit => clientType = "S3Client";
module UploadPart = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("RequestPayer") requestPayer: requestPayer,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerKey") sSECustomerKey: sSECustomerKey,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("UploadId") uploadId: option<multipartUploadId>,
@as("PartNumber") partNumber: option<partNumber>,
@as("Key") key: option<objectKey>,
@as("ContentMD5") contentMD5: contentMD5,
@as("ContentLength") contentLength: contentLength,
@as("Bucket") bucket: option<bucketName>,
@as("Body") body: streamingBlob
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged,
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("SSEKMSKeyId") sSEKMSKeyId: sSEKMSKeyId,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("ETag") eTag: eTag,
@as("ServerSideEncryption") serverSideEncryption: serverSideEncryption
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "UploadPartCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutBucketPolicy = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Policy") policy: option<policy>,
@as("ConfirmRemoveSelfBucketAccess") confirmRemoveSelfBucketAccess: confirmRemoveSelfBucketAccess,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module HeadBucket = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "HeadBucketCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetObjectTorrent = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("RequestPayer") requestPayer: requestPayer,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged,
@as("Body") body: streamingBlob
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetObjectTorrentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketVersioning = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("MFADelete") mFADelete: mFADeleteStatus,
@as("Status") status: bucketVersioningStatus
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketVersioningCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketRequestPayment = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("Payer") payer: payer
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketRequestPaymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketPolicy = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("Policy") policy: policy
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketLocation = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("LocationConstraint") locationConstraint: bucketLocationConstraint
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketLocationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketAccelerateConfiguration = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("Status") status: bucketAccelerateStatus
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketAccelerateConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePublicAccessBlock = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeletePublicAccessBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteObjectTagging = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("VersionId") versionId: objectVersionId,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("VersionId") versionId: objectVersionId
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteObjectTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteObject = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("BypassGovernanceRetention") bypassGovernanceRetention: bypassGovernanceRetention,
@as("RequestPayer") requestPayer: requestPayer,
@as("VersionId") versionId: objectVersionId,
@as("MFA") mFA: mFA,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged,
@as("VersionId") versionId: objectVersionId,
@as("DeleteMarker") deleteMarker: deleteMarker
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteObjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBucketWebsite = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketWebsiteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketTagging = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketReplication = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketReplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketPolicy = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketOwnershipControls = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketOwnershipControlsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketMetricsConfiguration = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Id") id: option<metricsId>,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketMetricsConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketLifecycle = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketLifecycleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketInventoryConfiguration = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Id") id: option<inventoryId>,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketInventoryConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketIntelligentTieringConfiguration = {
  type t;
  type request = {
@as("Id") id: option<intelligentTieringId>,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketIntelligentTieringConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketEncryption = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketEncryptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketCors = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketCorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketAnalyticsConfiguration = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Id") id: option<analyticsId>,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketAnalyticsConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucket = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteBucketCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AbortMultipartUpload = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("RequestPayer") requestPayer: requestPayer,
@as("UploadId") uploadId: option<multipartUploadId>,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "AbortMultipartUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module WriteGetObjectResponse = {
  type t;
  type request = {
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("VersionId") versionId: objectVersionId,
@as("TagCount") tagCount: tagCount,
@as("StorageClass") storageClass: storageClass,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSEKMSKeyId") sSEKMSKeyId: sSEKMSKeyId,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("ServerSideEncryption") serverSideEncryption: serverSideEncryption,
@as("Restore") restore: restore,
@as("RequestCharged") requestCharged: requestCharged,
@as("ReplicationStatus") replicationStatus: replicationStatus,
@as("PartsCount") partsCount: partsCount,
@as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: objectLockRetainUntilDate,
@as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: objectLockLegalHoldStatus,
@as("ObjectLockMode") objectLockMode: objectLockMode,
@as("Metadata") metadata: metadata,
@as("MissingMeta") missingMeta: missingMeta,
@as("LastModified") lastModified: lastModified,
@as("Expiration") expiration: expiration,
@as("Expires") expires: expires,
@as("ETag") eTag: eTag,
@as("DeleteMarker") deleteMarker: deleteMarker,
@as("ContentType") contentType: contentType,
@as("ContentRange") contentRange: contentRange,
@as("ContentLength") contentLength: contentLength,
@as("ContentLanguage") contentLanguage: contentLanguage,
@as("ContentEncoding") contentEncoding: contentEncoding,
@as("ContentDisposition") contentDisposition: contentDisposition,
@as("CacheControl") cacheControl: cacheControl,
@as("AcceptRanges") acceptRanges: acceptRanges,
@as("ErrorMessage") errorMessage: errorMessage,
@as("ErrorCode") errorCode: errorCode,
@as("StatusCode") statusCode: getObjectResponseStatusCode,
@as("Body") body: streamingBlob,
@as("RequestToken") requestToken: option<requestToken>,
@as("RequestRoute") requestRoute: option<requestRoute>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "WriteGetObjectResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UploadPartCopy = {
  type t;
  type request = {
@as("ExpectedSourceBucketOwner") expectedSourceBucketOwner: accountId,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("RequestPayer") requestPayer: requestPayer,
@as("CopySourceSSECustomerKeyMD5") copySourceSSECustomerKeyMD5: copySourceSSECustomerKeyMD5,
@as("CopySourceSSECustomerKey") copySourceSSECustomerKey: copySourceSSECustomerKey,
@as("CopySourceSSECustomerAlgorithm") copySourceSSECustomerAlgorithm: copySourceSSECustomerAlgorithm,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerKey") sSECustomerKey: sSECustomerKey,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("UploadId") uploadId: option<multipartUploadId>,
@as("PartNumber") partNumber: option<partNumber>,
@as("Key") key: option<objectKey>,
@as("CopySourceRange") copySourceRange: copySourceRange,
@as("CopySourceIfUnmodifiedSince") copySourceIfUnmodifiedSince: copySourceIfUnmodifiedSince,
@as("CopySourceIfNoneMatch") copySourceIfNoneMatch: copySourceIfNoneMatch,
@as("CopySourceIfModifiedSince") copySourceIfModifiedSince: copySourceIfModifiedSince,
@as("CopySourceIfMatch") copySourceIfMatch: copySourceIfMatch,
@as("CopySource") copySource: option<copySource>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged,
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("SSEKMSKeyId") sSEKMSKeyId: sSEKMSKeyId,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("ServerSideEncryption") serverSideEncryption: serverSideEncryption,
@as("CopyPartResult") copyPartResult: copyPartResult,
@as("CopySourceVersionId") copySourceVersionId: copySourceVersionId
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "UploadPartCopyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutPublicAccessBlock = {
  type t;
  type request = {
@as("PublicAccessBlockConfiguration") publicAccessBlockConfiguration: option<publicAccessBlockConfiguration>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutPublicAccessBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutObjectRetention = {
  type t;
  type request = {
@as("Retention") retention: objectLockRetention,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContentMD5") contentMD5: contentMD5,
@as("BypassGovernanceRetention") bypassGovernanceRetention: bypassGovernanceRetention,
@as("VersionId") versionId: objectVersionId,
@as("RequestPayer") requestPayer: requestPayer,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutObjectRetentionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutObjectLegalHold = {
  type t;
  type request = {
@as("LegalHold") legalHold: objectLockLegalHold,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContentMD5") contentMD5: contentMD5,
@as("VersionId") versionId: objectVersionId,
@as("RequestPayer") requestPayer: requestPayer,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutObjectLegalHoldCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutObject = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: objectLockLegalHoldStatus,
@as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: objectLockRetainUntilDate,
@as("ObjectLockMode") objectLockMode: objectLockMode,
@as("Tagging") tagging: taggingHeader,
@as("RequestPayer") requestPayer: requestPayer,
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("SSEKMSEncryptionContext") sSEKMSEncryptionContext: sSEKMSEncryptionContext,
@as("SSEKMSKeyId") sSEKMSKeyId: sSEKMSKeyId,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerKey") sSECustomerKey: sSECustomerKey,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("WebsiteRedirectLocation") websiteRedirectLocation: websiteRedirectLocation,
@as("StorageClass") storageClass: storageClass,
@as("ServerSideEncryption") serverSideEncryption: serverSideEncryption,
@as("Metadata") metadata: metadata,
@as("Key") key: option<objectKey>,
@as("GrantWriteACP") grantWriteACP: grantWriteACP,
@as("GrantReadACP") grantReadACP: grantReadACP,
@as("GrantRead") grantRead: grantRead,
@as("GrantFullControl") grantFullControl: grantFullControl,
@as("Expires") expires: expires,
@as("ContentType") contentType: contentType,
@as("ContentMD5") contentMD5: contentMD5,
@as("ContentLength") contentLength: contentLength,
@as("ContentLanguage") contentLanguage: contentLanguage,
@as("ContentEncoding") contentEncoding: contentEncoding,
@as("ContentDisposition") contentDisposition: contentDisposition,
@as("CacheControl") cacheControl: cacheControl,
@as("Bucket") bucket: option<bucketName>,
@as("Body") body: streamingBlob,
@as("ACL") aCL: objectCannedACL
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged,
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("SSEKMSEncryptionContext") sSEKMSEncryptionContext: sSEKMSEncryptionContext,
@as("SSEKMSKeyId") sSEKMSKeyId: sSEKMSKeyId,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("VersionId") versionId: objectVersionId,
@as("ServerSideEncryption") serverSideEncryption: serverSideEncryption,
@as("ETag") eTag: eTag,
@as("Expiration") expiration: expiration
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutObjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutBucketVersioning = {
  type t;
  type request = {
@as("VersioningConfiguration") versioningConfiguration: option<versioningConfiguration>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("MFA") mFA: mFA,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketVersioningCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBucketRequestPayment = {
  type t;
  type request = {
@as("RequestPaymentConfiguration") requestPaymentConfiguration: option<requestPaymentConfiguration>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketRequestPaymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBucketAccelerateConfiguration = {
  type t;
  type request = {
@as("AccelerateConfiguration") accelerateConfiguration: option<accelerateConfiguration>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketAccelerateConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module HeadObject = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("PartNumber") partNumber: partNumber,
@as("RequestPayer") requestPayer: requestPayer,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerKey") sSECustomerKey: sSECustomerKey,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("VersionId") versionId: objectVersionId,
@as("Range") range: range,
@as("Key") key: option<objectKey>,
@as("IfUnmodifiedSince") ifUnmodifiedSince: ifUnmodifiedSince,
@as("IfNoneMatch") ifNoneMatch: ifNoneMatch,
@as("IfModifiedSince") ifModifiedSince: ifModifiedSince,
@as("IfMatch") ifMatch: ifMatch,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: objectLockLegalHoldStatus,
@as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: objectLockRetainUntilDate,
@as("ObjectLockMode") objectLockMode: objectLockMode,
@as("PartsCount") partsCount: partsCount,
@as("ReplicationStatus") replicationStatus: replicationStatus,
@as("RequestCharged") requestCharged: requestCharged,
@as("StorageClass") storageClass: storageClass,
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("SSEKMSKeyId") sSEKMSKeyId: sSEKMSKeyId,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("Metadata") metadata: metadata,
@as("ServerSideEncryption") serverSideEncryption: serverSideEncryption,
@as("WebsiteRedirectLocation") websiteRedirectLocation: websiteRedirectLocation,
@as("Expires") expires: expires,
@as("ContentType") contentType: contentType,
@as("ContentLanguage") contentLanguage: contentLanguage,
@as("ContentEncoding") contentEncoding: contentEncoding,
@as("ContentDisposition") contentDisposition: contentDisposition,
@as("CacheControl") cacheControl: cacheControl,
@as("VersionId") versionId: objectVersionId,
@as("MissingMeta") missingMeta: missingMeta,
@as("ETag") eTag: eTag,
@as("ContentLength") contentLength: contentLength,
@as("LastModified") lastModified: lastModified,
@as("ArchiveStatus") archiveStatus: archiveStatus,
@as("Restore") restore: restore,
@as("Expiration") expiration: expiration,
@as("AcceptRanges") acceptRanges: acceptRanges,
@as("DeleteMarker") deleteMarker: deleteMarker
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "HeadObjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPublicAccessBlock = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("PublicAccessBlockConfiguration") publicAccessBlockConfiguration: publicAccessBlockConfiguration
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetPublicAccessBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetObjectRetention = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("RequestPayer") requestPayer: requestPayer,
@as("VersionId") versionId: objectVersionId,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("Retention") retention: objectLockRetention
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetObjectRetentionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetObjectLegalHold = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("RequestPayer") requestPayer: requestPayer,
@as("VersionId") versionId: objectVersionId,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("LegalHold") legalHold: objectLockLegalHold
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetObjectLegalHoldCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetObject = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("PartNumber") partNumber: partNumber,
@as("RequestPayer") requestPayer: requestPayer,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerKey") sSECustomerKey: sSECustomerKey,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("VersionId") versionId: objectVersionId,
@as("ResponseExpires") responseExpires: responseExpires,
@as("ResponseContentType") responseContentType: responseContentType,
@as("ResponseContentLanguage") responseContentLanguage: responseContentLanguage,
@as("ResponseContentEncoding") responseContentEncoding: responseContentEncoding,
@as("ResponseContentDisposition") responseContentDisposition: responseContentDisposition,
@as("ResponseCacheControl") responseCacheControl: responseCacheControl,
@as("Range") range: range,
@as("Key") key: option<objectKey>,
@as("IfUnmodifiedSince") ifUnmodifiedSince: ifUnmodifiedSince,
@as("IfNoneMatch") ifNoneMatch: ifNoneMatch,
@as("IfModifiedSince") ifModifiedSince: ifModifiedSince,
@as("IfMatch") ifMatch: ifMatch,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: objectLockLegalHoldStatus,
@as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: objectLockRetainUntilDate,
@as("ObjectLockMode") objectLockMode: objectLockMode,
@as("TagCount") tagCount: tagCount,
@as("PartsCount") partsCount: partsCount,
@as("ReplicationStatus") replicationStatus: replicationStatus,
@as("RequestCharged") requestCharged: requestCharged,
@as("StorageClass") storageClass: storageClass,
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("SSEKMSKeyId") sSEKMSKeyId: sSEKMSKeyId,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("Metadata") metadata: metadata,
@as("ServerSideEncryption") serverSideEncryption: serverSideEncryption,
@as("WebsiteRedirectLocation") websiteRedirectLocation: websiteRedirectLocation,
@as("Expires") expires: expires,
@as("ContentType") contentType: contentType,
@as("ContentRange") contentRange: contentRange,
@as("ContentLanguage") contentLanguage: contentLanguage,
@as("ContentEncoding") contentEncoding: contentEncoding,
@as("ContentDisposition") contentDisposition: contentDisposition,
@as("CacheControl") cacheControl: cacheControl,
@as("VersionId") versionId: objectVersionId,
@as("MissingMeta") missingMeta: missingMeta,
@as("ETag") eTag: eTag,
@as("ContentLength") contentLength: contentLength,
@as("LastModified") lastModified: lastModified,
@as("Restore") restore: restore,
@as("Expiration") expiration: expiration,
@as("AcceptRanges") acceptRanges: acceptRanges,
@as("DeleteMarker") deleteMarker: deleteMarker,
@as("Body") body: streamingBlob
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetObjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketPolicyStatus = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("PolicyStatus") policyStatus: policyStatus
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketPolicyStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMultipartUpload = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: objectLockLegalHoldStatus,
@as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: objectLockRetainUntilDate,
@as("ObjectLockMode") objectLockMode: objectLockMode,
@as("Tagging") tagging: taggingHeader,
@as("RequestPayer") requestPayer: requestPayer,
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("SSEKMSEncryptionContext") sSEKMSEncryptionContext: sSEKMSEncryptionContext,
@as("SSEKMSKeyId") sSEKMSKeyId: sSEKMSKeyId,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerKey") sSECustomerKey: sSECustomerKey,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("WebsiteRedirectLocation") websiteRedirectLocation: websiteRedirectLocation,
@as("StorageClass") storageClass: storageClass,
@as("ServerSideEncryption") serverSideEncryption: serverSideEncryption,
@as("Metadata") metadata: metadata,
@as("Key") key: option<objectKey>,
@as("GrantWriteACP") grantWriteACP: grantWriteACP,
@as("GrantReadACP") grantReadACP: grantReadACP,
@as("GrantRead") grantRead: grantRead,
@as("GrantFullControl") grantFullControl: grantFullControl,
@as("Expires") expires: expires,
@as("ContentType") contentType: contentType,
@as("ContentLanguage") contentLanguage: contentLanguage,
@as("ContentEncoding") contentEncoding: contentEncoding,
@as("ContentDisposition") contentDisposition: contentDisposition,
@as("CacheControl") cacheControl: cacheControl,
@as("Bucket") bucket: option<bucketName>,
@as("ACL") aCL: objectCannedACL
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged,
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("SSEKMSEncryptionContext") sSEKMSEncryptionContext: sSEKMSEncryptionContext,
@as("SSEKMSKeyId") sSEKMSKeyId: sSEKMSKeyId,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("ServerSideEncryption") serverSideEncryption: serverSideEncryption,
@as("UploadId") uploadId: multipartUploadId,
@as("Key") key: objectKey,
@as("Bucket") bucket: bucketName,
@as("AbortRuleId") abortRuleId: abortRuleId,
@as("AbortDate") abortDate: abortDate
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "CreateMultipartUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBucket = {
  type t;
  type request = {
@as("CreateBucketConfiguration") createBucketConfiguration: createBucketConfiguration,
@as("ObjectLockEnabledForBucket") objectLockEnabledForBucket: objectLockEnabledForBucket,
@as("GrantWriteACP") grantWriteACP: grantWriteACP,
@as("GrantWrite") grantWrite: grantWrite,
@as("GrantReadACP") grantReadACP: grantReadACP,
@as("GrantRead") grantRead: grantRead,
@as("GrantFullControl") grantFullControl: grantFullControl,
@as("Bucket") bucket: option<bucketName>,
@as("ACL") aCL: bucketCannedACL
}
  type response = {
@as("Location") location: location
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "CreateBucketCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyObject = {
  type t;
  type request = {
@as("ExpectedSourceBucketOwner") expectedSourceBucketOwner: accountId,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: objectLockLegalHoldStatus,
@as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: objectLockRetainUntilDate,
@as("ObjectLockMode") objectLockMode: objectLockMode,
@as("Tagging") tagging: taggingHeader,
@as("RequestPayer") requestPayer: requestPayer,
@as("CopySourceSSECustomerKeyMD5") copySourceSSECustomerKeyMD5: copySourceSSECustomerKeyMD5,
@as("CopySourceSSECustomerKey") copySourceSSECustomerKey: copySourceSSECustomerKey,
@as("CopySourceSSECustomerAlgorithm") copySourceSSECustomerAlgorithm: copySourceSSECustomerAlgorithm,
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("SSEKMSEncryptionContext") sSEKMSEncryptionContext: sSEKMSEncryptionContext,
@as("SSEKMSKeyId") sSEKMSKeyId: sSEKMSKeyId,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerKey") sSECustomerKey: sSECustomerKey,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("WebsiteRedirectLocation") websiteRedirectLocation: websiteRedirectLocation,
@as("StorageClass") storageClass: storageClass,
@as("ServerSideEncryption") serverSideEncryption: serverSideEncryption,
@as("TaggingDirective") taggingDirective: taggingDirective,
@as("MetadataDirective") metadataDirective: metadataDirective,
@as("Metadata") metadata: metadata,
@as("Key") key: option<objectKey>,
@as("GrantWriteACP") grantWriteACP: grantWriteACP,
@as("GrantReadACP") grantReadACP: grantReadACP,
@as("GrantRead") grantRead: grantRead,
@as("GrantFullControl") grantFullControl: grantFullControl,
@as("Expires") expires: expires,
@as("CopySourceIfUnmodifiedSince") copySourceIfUnmodifiedSince: copySourceIfUnmodifiedSince,
@as("CopySourceIfNoneMatch") copySourceIfNoneMatch: copySourceIfNoneMatch,
@as("CopySourceIfModifiedSince") copySourceIfModifiedSince: copySourceIfModifiedSince,
@as("CopySourceIfMatch") copySourceIfMatch: copySourceIfMatch,
@as("CopySource") copySource: option<copySource>,
@as("ContentType") contentType: contentType,
@as("ContentLanguage") contentLanguage: contentLanguage,
@as("ContentEncoding") contentEncoding: contentEncoding,
@as("ContentDisposition") contentDisposition: contentDisposition,
@as("CacheControl") cacheControl: cacheControl,
@as("Bucket") bucket: option<bucketName>,
@as("ACL") aCL: objectCannedACL
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged,
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("SSEKMSEncryptionContext") sSEKMSEncryptionContext: sSEKMSEncryptionContext,
@as("SSEKMSKeyId") sSEKMSKeyId: sSEKMSKeyId,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("ServerSideEncryption") serverSideEncryption: serverSideEncryption,
@as("VersionId") versionId: objectVersionId,
@as("CopySourceVersionId") copySourceVersionId: copySourceVersionId,
@as("Expiration") expiration: expiration,
@as("CopyObjectResult") copyObjectResult: copyObjectResult
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "CopyObjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListParts = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("RequestPayer") requestPayer: requestPayer,
@as("UploadId") uploadId: option<multipartUploadId>,
@as("PartNumberMarker") partNumberMarker: partNumberMarker,
@as("MaxParts") maxParts: maxParts,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged,
@as("StorageClass") storageClass: storageClass,
@as("Owner") owner: owner,
@as("Initiator") initiator: initiator,
@as("Parts") parts: parts,
@as("IsTruncated") isTruncated: isTruncated,
@as("MaxParts") maxParts: maxParts,
@as("NextPartNumberMarker") nextPartNumberMarker: nextPartNumberMarker,
@as("PartNumberMarker") partNumberMarker: partNumberMarker,
@as("UploadId") uploadId: multipartUploadId,
@as("Key") key: objectKey,
@as("Bucket") bucket: bucketName,
@as("AbortRuleId") abortRuleId: abortRuleId,
@as("AbortDate") abortDate: abortDate
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "ListPartsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBuckets = {
  type t;
  
  type response = {
@as("Owner") owner: owner,
@as("Buckets") buckets: buckets
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<unit>) => t = "ListBucketsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetObjectTagging = {
  type t;
  type request = {
@as("RequestPayer") requestPayer: requestPayer,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("VersionId") versionId: objectVersionId,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("TagSet") tagSet: option<tagSet>,
@as("VersionId") versionId: objectVersionId
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetObjectTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketTagging = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("TagSet") tagSet: option<tagSet>
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SelectObjectContent = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ScanRange") scanRange: scanRange,
@as("OutputSerialization") outputSerialization: option<outputSerialization>,
@as("InputSerialization") inputSerialization: option<inputSerialization>,
@as("RequestProgress") requestProgress: requestProgress,
@as("ExpressionType") expressionType: option<expressionType>,
@as("Expression") expression: option<expression>,
@as("SSECustomerKeyMD5") sSECustomerKeyMD5: sSECustomerKeyMD5,
@as("SSECustomerKey") sSECustomerKey: sSECustomerKey,
@as("SSECustomerAlgorithm") sSECustomerAlgorithm: sSECustomerAlgorithm,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("Payload") payload: selectObjectContentEventStream
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "SelectObjectContentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutObjectTagging = {
  type t;
  type request = {
@as("Tagging") tagging: option<tagging>,
@as("RequestPayer") requestPayer: requestPayer,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContentMD5") contentMD5: contentMD5,
@as("VersionId") versionId: objectVersionId,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("VersionId") versionId: objectVersionId
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutObjectTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutObjectLockConfiguration = {
  type t;
  type request = {
@as("ObjectLockConfiguration") objectLockConfiguration: objectLockConfiguration,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContentMD5") contentMD5: contentMD5,
@as("Token") token: objectLockToken,
@as("RequestPayer") requestPayer: requestPayer,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutObjectLockConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutBucketTagging = {
  type t;
  type request = {
@as("Tagging") tagging: option<tagging>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBucketOwnershipControls = {
  type t;
  type request = {
@as("OwnershipControls") ownershipControls: option<ownershipControls>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketOwnershipControlsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListObjectsV2 = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("RequestPayer") requestPayer: requestPayer,
@as("StartAfter") startAfter: startAfter,
@as("FetchOwner") fetchOwner: fetchOwner,
@as("ContinuationToken") continuationToken: token,
@as("Prefix") prefix: prefix,
@as("MaxKeys") maxKeys: maxKeys,
@as("EncodingType") encodingType: encodingType,
@as("Delimiter") delimiter: delimiter,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("StartAfter") startAfter: startAfter,
@as("NextContinuationToken") nextContinuationToken: nextToken,
@as("ContinuationToken") continuationToken: token,
@as("KeyCount") keyCount: keyCount,
@as("EncodingType") encodingType: encodingType,
@as("CommonPrefixes") commonPrefixes: commonPrefixList,
@as("MaxKeys") maxKeys: maxKeys,
@as("Delimiter") delimiter: delimiter,
@as("Prefix") prefix: prefix,
@as("Name") name: bucketName,
@as("Contents") contents: objectList,
@as("IsTruncated") isTruncated: isTruncated
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "ListObjectsV2Command";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListObjects = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("RequestPayer") requestPayer: requestPayer,
@as("Prefix") prefix: prefix,
@as("MaxKeys") maxKeys: maxKeys,
@as("Marker") marker: marker,
@as("EncodingType") encodingType: encodingType,
@as("Delimiter") delimiter: delimiter,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("EncodingType") encodingType: encodingType,
@as("CommonPrefixes") commonPrefixes: commonPrefixList,
@as("MaxKeys") maxKeys: maxKeys,
@as("Delimiter") delimiter: delimiter,
@as("Prefix") prefix: prefix,
@as("Name") name: bucketName,
@as("Contents") contents: objectList,
@as("NextMarker") nextMarker: nextMarker,
@as("Marker") marker: marker,
@as("IsTruncated") isTruncated: isTruncated
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "ListObjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListObjectVersions = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("VersionIdMarker") versionIdMarker: versionIdMarker,
@as("Prefix") prefix: prefix,
@as("MaxKeys") maxKeys: maxKeys,
@as("KeyMarker") keyMarker: keyMarker,
@as("EncodingType") encodingType: encodingType,
@as("Delimiter") delimiter: delimiter,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("EncodingType") encodingType: encodingType,
@as("CommonPrefixes") commonPrefixes: commonPrefixList,
@as("MaxKeys") maxKeys: maxKeys,
@as("Delimiter") delimiter: delimiter,
@as("Prefix") prefix: prefix,
@as("Name") name: bucketName,
@as("DeleteMarkers") deleteMarkers: deleteMarkers,
@as("Versions") versions: objectVersionList,
@as("NextVersionIdMarker") nextVersionIdMarker: nextVersionIdMarker,
@as("NextKeyMarker") nextKeyMarker: nextKeyMarker,
@as("VersionIdMarker") versionIdMarker: versionIdMarker,
@as("KeyMarker") keyMarker: keyMarker,
@as("IsTruncated") isTruncated: isTruncated
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "ListObjectVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMultipartUploads = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("UploadIdMarker") uploadIdMarker: uploadIdMarker,
@as("Prefix") prefix: prefix,
@as("MaxUploads") maxUploads: maxUploads,
@as("KeyMarker") keyMarker: keyMarker,
@as("EncodingType") encodingType: encodingType,
@as("Delimiter") delimiter: delimiter,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("EncodingType") encodingType: encodingType,
@as("CommonPrefixes") commonPrefixes: commonPrefixList,
@as("Uploads") uploads: multipartUploadList,
@as("IsTruncated") isTruncated: isTruncated,
@as("MaxUploads") maxUploads: maxUploads,
@as("NextUploadIdMarker") nextUploadIdMarker: nextUploadIdMarker,
@as("Delimiter") delimiter: delimiter,
@as("Prefix") prefix: prefix,
@as("NextKeyMarker") nextKeyMarker: nextKeyMarker,
@as("UploadIdMarker") uploadIdMarker: uploadIdMarker,
@as("KeyMarker") keyMarker: keyMarker,
@as("Bucket") bucket: bucketName
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "ListMultipartUploadsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetObjectLockConfiguration = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("ObjectLockConfiguration") objectLockConfiguration: objectLockConfiguration
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetObjectLockConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetObjectAcl = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("RequestPayer") requestPayer: requestPayer,
@as("VersionId") versionId: objectVersionId,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged,
@as("Grants") grants: grants,
@as("Owner") owner: owner
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetObjectAclCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketWebsite = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("RoutingRules") routingRules: routingRules,
@as("ErrorDocument") errorDocument: errorDocument,
@as("IndexDocument") indexDocument: indexDocument,
@as("RedirectAllRequestsTo") redirectAllRequestsTo: redirectAllRequestsTo
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketWebsiteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketOwnershipControls = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("OwnershipControls") ownershipControls: ownershipControls
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketOwnershipControlsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketCors = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("CORSRules") cORSRules: cORSRules
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketCorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketAcl = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("Grants") grants: grants,
@as("Owner") owner: owner
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketAclCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteObjects = {
  type t;
  type request = {
@as("Delete") delete: option<delete>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("BypassGovernanceRetention") bypassGovernanceRetention: bypassGovernanceRetention,
@as("RequestPayer") requestPayer: requestPayer,
@as("MFA") mFA: mFA,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("Errors") errors: errors,
@as("RequestCharged") requestCharged: requestCharged,
@as("Deleted") deleted: deletedObjects
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "DeleteObjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CompleteMultipartUpload = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("RequestPayer") requestPayer: requestPayer,
@as("UploadId") uploadId: option<multipartUploadId>,
@as("MultipartUpload") multipartUpload: completedMultipartUpload,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged,
@as("BucketKeyEnabled") bucketKeyEnabled: bucketKeyEnabled,
@as("SSEKMSKeyId") sSEKMSKeyId: sSEKMSKeyId,
@as("VersionId") versionId: objectVersionId,
@as("ServerSideEncryption") serverSideEncryption: serverSideEncryption,
@as("ETag") eTag: eTag,
@as("Expiration") expiration: expiration,
@as("Key") key: objectKey,
@as("Bucket") bucket: bucketName,
@as("Location") location: location
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "CompleteMultipartUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutObjectAcl = {
  type t;
  type request = {
@as("AccessControlPolicy") accessControlPolicy: accessControlPolicy,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("VersionId") versionId: objectVersionId,
@as("RequestPayer") requestPayer: requestPayer,
@as("Key") key: option<objectKey>,
@as("GrantWriteACP") grantWriteACP: grantWriteACP,
@as("GrantWrite") grantWrite: grantWrite,
@as("GrantReadACP") grantReadACP: grantReadACP,
@as("GrantRead") grantRead: grantRead,
@as("GrantFullControl") grantFullControl: grantFullControl,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>,
@as("ACL") aCL: objectCannedACL
}
  type response = {
@as("RequestCharged") requestCharged: requestCharged
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutObjectAclCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutBucketWebsite = {
  type t;
  type request = {
@as("WebsiteConfiguration") websiteConfiguration: option<websiteConfiguration>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketWebsiteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBucketEncryption = {
  type t;
  type request = {
@as("ServerSideEncryptionConfiguration") serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketEncryptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBucketCors = {
  type t;
  type request = {
@as("CORSConfiguration") cORSConfiguration: option<cORSConfiguration>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketCorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBucketAcl = {
  type t;
  type request = {
@as("AccessControlPolicy") accessControlPolicy: accessControlPolicy,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("GrantWriteACP") grantWriteACP: grantWriteACP,
@as("GrantWrite") grantWrite: grantWrite,
@as("GrantReadACP") grantReadACP: grantReadACP,
@as("GrantRead") grantRead: grantRead,
@as("GrantFullControl") grantFullControl: grantFullControl,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>,
@as("ACL") aCL: bucketCannedACL
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketAclCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetBucketLogging = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("LoggingEnabled") loggingEnabled: loggingEnabled
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketLoggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketEncryption = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("ServerSideEncryptionConfiguration") serverSideEncryptionConfiguration: serverSideEncryptionConfiguration
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketEncryptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutBucketMetricsConfiguration = {
  type t;
  type request = {
@as("MetricsConfiguration") metricsConfiguration: option<metricsConfiguration>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Id") id: option<metricsId>,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketMetricsConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBucketLogging = {
  type t;
  type request = {
@as("BucketLoggingStatus") bucketLoggingStatus: option<bucketLoggingStatus>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketLoggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBucketInventoryConfiguration = {
  type t;
  type request = {
@as("InventoryConfiguration") inventoryConfiguration: option<inventoryConfiguration>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Id") id: option<inventoryId>,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketInventoryConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBucketIntelligentTieringConfiguration = {
  type t;
  type request = {
@as("IntelligentTieringConfiguration") intelligentTieringConfiguration: option<intelligentTieringConfiguration>,
@as("Id") id: option<intelligentTieringId>,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketIntelligentTieringConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBucketAnalyticsConfiguration = {
  type t;
  type request = {
@as("AnalyticsConfiguration") analyticsConfiguration: option<analyticsConfiguration>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Id") id: option<analyticsId>,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketAnalyticsConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetBucketMetricsConfiguration = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Id") id: option<metricsId>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("MetricsConfiguration") metricsConfiguration: metricsConfiguration
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketMetricsConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketInventoryConfiguration = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Id") id: option<inventoryId>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("InventoryConfiguration") inventoryConfiguration: inventoryConfiguration
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketInventoryConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketIntelligentTieringConfiguration = {
  type t;
  type request = {
@as("Id") id: option<intelligentTieringId>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("IntelligentTieringConfiguration") intelligentTieringConfiguration: intelligentTieringConfiguration
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketIntelligentTieringConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketAnalyticsConfiguration = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Id") id: option<analyticsId>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("AnalyticsConfiguration") analyticsConfiguration: analyticsConfiguration
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketAnalyticsConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreObject = {
  type t;
  type request = {
@as("RestoreRequest") restoreRequest: restoreRequest,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("RequestPayer") requestPayer: requestPayer,
@as("VersionId") versionId: objectVersionId,
@as("Key") key: option<objectKey>,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("RestoreOutputPath") restoreOutputPath: restoreOutputPath,
@as("RequestCharged") requestCharged: requestCharged
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "RestoreObjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBucketMetricsConfigurations = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContinuationToken") continuationToken: token,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("MetricsConfigurationList") metricsConfigurationList: metricsConfigurationList,
@as("NextContinuationToken") nextContinuationToken: nextToken,
@as("ContinuationToken") continuationToken: token,
@as("IsTruncated") isTruncated: isTruncated
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "ListBucketMetricsConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBucketInventoryConfigurations = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContinuationToken") continuationToken: token,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("NextContinuationToken") nextContinuationToken: nextToken,
@as("IsTruncated") isTruncated: isTruncated,
@as("InventoryConfigurationList") inventoryConfigurationList: inventoryConfigurationList,
@as("ContinuationToken") continuationToken: token
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "ListBucketInventoryConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBucketIntelligentTieringConfigurations = {
  type t;
  type request = {
@as("ContinuationToken") continuationToken: token,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("IntelligentTieringConfigurationList") intelligentTieringConfigurationList: intelligentTieringConfigurationList,
@as("NextContinuationToken") nextContinuationToken: nextToken,
@as("ContinuationToken") continuationToken: token,
@as("IsTruncated") isTruncated: isTruncated
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "ListBucketIntelligentTieringConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBucketAnalyticsConfigurations = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("ContinuationToken") continuationToken: token,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("AnalyticsConfigurationList") analyticsConfigurationList: analyticsConfigurationList,
@as("NextContinuationToken") nextContinuationToken: nextToken,
@as("ContinuationToken") continuationToken: token,
@as("IsTruncated") isTruncated: isTruncated
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "ListBucketAnalyticsConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketNotificationConfiguration = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = notificationConfiguration;
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketNotificationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketLifecycleConfiguration = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("Rules") rules: lifecycleRules
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketLifecycleConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutBucketReplication = {
  type t;
  type request = {
@as("ReplicationConfiguration") replicationConfiguration: option<replicationConfiguration>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Token") token: objectLockToken,
@as("ContentMD5") contentMD5: contentMD5,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketReplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBucketNotificationConfiguration = {
  type t;
  type request = {
@as("NotificationConfiguration") notificationConfiguration: option<notificationConfiguration>,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketNotificationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBucketLifecycleConfiguration = {
  type t;
  type request = {
@as("LifecycleConfiguration") lifecycleConfiguration: bucketLifecycleConfiguration,
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "PutBucketLifecycleConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetBucketReplication = {
  type t;
  type request = {
@as("ExpectedBucketOwner") expectedBucketOwner: accountId,
@as("Bucket") bucket: option<bucketName>
}
  type response = {
@as("ReplicationConfiguration") replicationConfiguration: replicationConfiguration
}
  @module("@aws-sdk/client-s3") @new external new_: (Js.Promise.t<request>) => t = "GetBucketReplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
