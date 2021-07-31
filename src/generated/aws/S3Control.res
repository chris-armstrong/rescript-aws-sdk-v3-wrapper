type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vpcId = string
type transitionStorageClass = [@as("DEEP_ARCHIVE") #DEEP_ARCHIVE | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING | @as("ONEZONE_IA") #ONEZONE_IA | @as("STANDARD_IA") #STANDARD_IA | @as("GLACIER") #GLACIER]
type timeStamp = Js.Date.t;
type tagValueString = string
type tagKeyString = string
type suspendedDate = Js.Date.t;
type suspendedCause = string
type stringForNextToken = string
type storageLensPrefixLevelMaxDepth = int;
type storageLensPrefixLevelDelimiter = string
type storageLensArn = string
type setting = bool;
type sSES3 = unit
type sSEKMSKeyId = string
type s3StorageClass = [@as("DEEP_ARCHIVE") #DEEP_ARCHIVE | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING | @as("GLACIER") #GLACIER | @as("ONEZONE_IA") #ONEZONE_IA | @as("STANDARD_IA") #STANDARD_IA | @as("STANDARD") #STANDARD]
type s3SSEAlgorithm = [@as("KMS") #KMS | @as("AES256") #AES256]
type s3RegionalBucketArn = string
type s3Permission = [@as("WRITE_ACP") #WRITE_ACP | @as("READ_ACP") #READ_ACP | @as("WRITE") #WRITE | @as("READ") #READ | @as("FULL_CONTROL") #FULL_CONTROL]
type s3ObjectVersionId = string
type s3ObjectLockRetentionMode = [@as("GOVERNANCE") #GOVERNANCE | @as("COMPLIANCE") #COMPLIANCE]
type s3ObjectLockMode = [@as("GOVERNANCE") #GOVERNANCE | @as("COMPLIANCE") #COMPLIANCE]
type s3ObjectLockLegalHoldStatus = [@as("ON") #ON | @as("OFF") #OFF]
type s3MetadataDirective = [@as("REPLACE") #REPLACE | @as("COPY") #COPY]
type s3KeyArnString = string
type s3GranteeTypeIdentifier = [@as("uri") #uri | @as("emailAddress") #emailAddress | @as("id") #id]
type s3GlacierJobTier = [@as("STANDARD") #STANDARD | @as("BULK") #BULK]
type s3ExpirationInDays = int;
type s3DeleteObjectTaggingOperation = unit
type s3ContentLength = float;
type s3CannedAccessControlList = [@as("bucket-owner-full-control") #bucket_owner_full_control | @as("bucket-owner-read") #bucket_owner_read | @as("authenticated-read") #authenticated_read | @as("aws-exec-read") #aws_exec_read | @as("public-read-write") #public_read_write | @as("public-read") #public_read | @as("private") #private]
type s3BucketArnString = string
type s3AccessPointArn = string
type s3AWSRegion = string
type requestedJobStatus = [@as("Ready") #Ready | @as("Cancelled") #Cancelled]
type reportPrefixString = string
type publicAccessBlockEnabled = bool;
type prefix = string
type policy = string
type outputSchemaVersion = [@as("V_1") #V_1]
type operationName = [@as("S3PutObjectRetention") #S3PutObjectRetention | @as("S3PutObjectLegalHold") #S3PutObjectLegalHold | @as("S3InitiateRestoreObject") #S3InitiateRestoreObject | @as("S3DeleteObjectTagging") #S3DeleteObjectTagging | @as("S3PutObjectTagging") #S3PutObjectTagging | @as("S3PutObjectAcl") #S3PutObjectAcl | @as("S3PutObjectCopy") #S3PutObjectCopy | @as("LambdaInvoke") #LambdaInvoke]
type objectLockEnabledForBucket = bool;
type objectLambdaTransformationConfigurationAction = [@as("GetObject") #GetObject]
type objectLambdaSupportingAccessPointArn = string
type objectLambdaPolicy = string
type objectLambdaAllowedFeature = [@as("GetObject-PartNumber") #GetObject_PartNumber | @as("GetObject-Range") #GetObject_Range]
type objectLambdaAccessPointName = string
type objectLambdaAccessPointArn = string
type nonEmptyMaxLength64String = string
type nonEmptyMaxLength256String = string
type nonEmptyMaxLength2048String = string
type nonEmptyMaxLength1024String = string
type noSuchPublicAccessBlockConfigurationMessage = string
type networkOrigin = [@as("VPC") #VPC | @as("Internet") #Internet]
type minStorageBytesPercentage = float;
type maxResults = int;
type maxLength1024String = string
type location = string
type kmsKeyArnString = string
type jobTotalNumberOfTasks = float;
type jobTerminationDate = Js.Date.t;
type jobStatusUpdateReason = string
type jobStatus = [@as("Suspended") #Suspended | @as("Ready") #Ready | @as("Preparing") #Preparing | @as("Pausing") #Pausing | @as("Paused") #Paused | @as("New") #New | @as("Failing") #Failing | @as("Failed") #Failed | @as("Completing") #Completing | @as("Complete") #Complete | @as("Cancelling") #Cancelling | @as("Cancelled") #Cancelled | @as("Active") #Active]
type jobReportScope = [@as("FailedTasksOnly") #FailedTasksOnly | @as("AllTasks") #AllTasks]
type jobReportFormat = [@as("Report_CSV_20180820") #Report_CSV_20180820]
type jobPriority = int;
type jobNumberOfTasksSucceeded = float;
type jobNumberOfTasksFailed = float;
type jobManifestFormat = [@as("S3InventoryReport_CSV_20161130") #S3InventoryReport_CSV_20161130 | @as("S3BatchOperations_CSV_20180820") #S3BatchOperations_CSV_20180820]
type jobManifestFieldName = [@as("VersionId") #VersionId | @as("Key") #Key | @as("Bucket") #Bucket | @as("Ignore") #Ignore]
type jobId = string
type jobFailureReason = string
type jobFailureCode = string
type jobCreationTime = Js.Date.t;
type jobArn = string
type isPublic = bool;
type isEnabled = bool;
type iD = string
type iAMRoleArn = string
type grantWriteACP = string
type grantWrite = string
type grantReadACP = string
type grantRead = string
type grantFullControl = string
type functionArnString = string
type format = [@as("Parquet") #Parquet | @as("CSV") #CSV]
type expiredObjectDeleteMarker = bool;
type expirationStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type exceptionMessage = string
type daysAfterInitiation = int;
type days = int;
type date = Js.Date.t;
type creationDate = Js.Date.t;
type continuationToken = string
type confirmationRequired = bool;
type confirmRemoveSelfBucketAccess = bool;
type configId = string
type bucketName = string
type bucketLocationConstraint = [@as("eu-central-1") #eu_central_1 | @as("cn-north-1") #cn_north_1 | @as("sa-east-1") #sa_east_1 | @as("ap-northeast-1") #ap_northeast_1 | @as("ap-southeast-2") #ap_southeast_2 | @as("ap-southeast-1") #ap_southeast_1 | @as("ap-south-1") #ap_south_1 | @as("us-west-2") #us_west_2 | @as("us-west-1") #us_west_1 | @as("eu-west-1") #eu_west_1 | @as("EU") #EU]
type bucketCannedACL = [@as("authenticated-read") #authenticated_read | @as("public-read-write") #public_read_write | @as("public-read") #public_read | @as("private") #private]
type amazonawsBoolean = bool;
type awsOrgArn = string
type awsLambdaTransformationPayload = string
type accountId = string
type accessPointName = string
type vpcConfiguration = {
@as("VpcId") vpcId: option<vpcId>
}
type transition = {
@as("StorageClass") storageClass: transitionStorageClass,
@as("Days") days: days,
@as("Date") date: date
}
type storageLensTag = {
@as("Value") value: option<tagValueString>,
@as("Key") key: option<tagKeyString>
}
type storageLensAwsOrg = {
@as("Arn") arn: option<awsOrgArn>
}
type selectionCriteria = {
@as("MinStorageBytesPercentage") minStorageBytesPercentage: minStorageBytesPercentage,
@as("MaxDepth") maxDepth: storageLensPrefixLevelMaxDepth,
@as("Delimiter") delimiter: storageLensPrefixLevelDelimiter
}
type sSEKMS = {
@as("KeyId") keyId: option<sSEKMSKeyId>
}
type s3UserMetadata = Js.Dict.t< maxLength1024String>
type s3Tag = {
@as("Value") value: option<tagValueString>,
@as("Key") key: option<tagKeyString>
}
type s3Retention = {
@as("Mode") mode: s3ObjectLockRetentionMode,
@as("RetainUntilDate") retainUntilDate: timeStamp
}
type s3ObjectOwner = {
@as("DisplayName") displayName: nonEmptyMaxLength1024String,
@as("ID") iD: nonEmptyMaxLength1024String
}
type s3ObjectLockLegalHold = {
@as("Status") status: option<s3ObjectLockLegalHoldStatus>
}
type s3InitiateRestoreObjectOperation = {
@as("GlacierJobTier") glacierJobTier: s3GlacierJobTier,
@as("ExpirationInDays") expirationInDays: s3ExpirationInDays
}
type s3Grantee = {
@as("DisplayName") displayName: nonEmptyMaxLength1024String,
@as("Identifier") identifier: nonEmptyMaxLength1024String,
@as("TypeIdentifier") typeIdentifier: s3GranteeTypeIdentifier
}
type regions = array<s3AWSRegion>
type regionalBucket = {
@as("OutpostId") outpostId: nonEmptyMaxLength64String,
@as("CreationDate") creationDate: option<creationDate>,
@as("PublicAccessBlockEnabled") publicAccessBlockEnabled: option<publicAccessBlockEnabled>,
@as("BucketArn") bucketArn: s3RegionalBucketArn,
@as("Bucket") bucket: option<bucketName>
}
type publicAccessBlockConfiguration = {
@as("RestrictPublicBuckets") restrictPublicBuckets: setting,
@as("BlockPublicPolicy") blockPublicPolicy: setting,
@as("IgnorePublicAcls") ignorePublicAcls: setting,
@as("BlockPublicAcls") blockPublicAcls: setting
}
type policyStatus = {
@as("IsPublic") isPublic: isPublic
}
type objectLambdaTransformationConfigurationActionsList = array<objectLambdaTransformationConfigurationAction>
type objectLambdaAllowedFeaturesList = array<objectLambdaAllowedFeature>
type objectLambdaAccessPoint = {
@as("ObjectLambdaAccessPointArn") objectLambdaAccessPointArn: objectLambdaAccessPointArn,
@as("Name") name: option<objectLambdaAccessPointName>
}
type noncurrentVersionTransition = {
@as("StorageClass") storageClass: transitionStorageClass,
@as("NoncurrentDays") noncurrentDays: days
}
type noncurrentVersionExpiration = {
@as("NoncurrentDays") noncurrentDays: days
}
type listStorageLensConfigurationEntry = {
@as("IsEnabled") isEnabled: isEnabled,
@as("HomeRegion") homeRegion: option<s3AWSRegion>,
@as("StorageLensArn") storageLensArn: option<storageLensArn>,
@as("Id") id: option<configId>
}
type lifecycleExpiration = {
@as("ExpiredObjectDeleteMarker") expiredObjectDeleteMarker: expiredObjectDeleteMarker,
@as("Days") days: days,
@as("Date") date: date
}
type lambdaInvokeOperation = {
@as("FunctionArn") functionArn: functionArnString
}
type jobStatusList = array<jobStatus>
type jobReport = {
@as("ReportScope") reportScope: jobReportScope,
@as("Prefix") prefix: reportPrefixString,
@as("Enabled") enabled: option<amazonawsBoolean>,
@as("Format") format: jobReportFormat,
@as("Bucket") bucket: s3BucketArnString
}
type jobProgressSummary = {
@as("NumberOfTasksFailed") numberOfTasksFailed: jobNumberOfTasksFailed,
@as("NumberOfTasksSucceeded") numberOfTasksSucceeded: jobNumberOfTasksSucceeded,
@as("TotalNumberOfTasks") totalNumberOfTasks: jobTotalNumberOfTasks
}
type jobManifestLocation = {
@as("ETag") eTag: option<nonEmptyMaxLength1024String>,
@as("ObjectVersionId") objectVersionId: s3ObjectVersionId,
@as("ObjectArn") objectArn: option<s3KeyArnString>
}
type jobManifestFieldList = array<jobManifestFieldName>
type jobFailure = {
@as("FailureReason") failureReason: jobFailureReason,
@as("FailureCode") failureCode: jobFailureCode
}
type createBucketConfiguration = {
@as("LocationConstraint") locationConstraint: bucketLocationConstraint
}
type buckets = array<s3BucketArnString>
type awsLambdaTransformation = {
@as("FunctionPayload") functionPayload: awsLambdaTransformationPayload,
@as("FunctionArn") functionArn: option<functionArnString>
}
type activityMetrics = {
@as("IsEnabled") isEnabled: isEnabled
}
type abortIncompleteMultipartUpload = {
@as("DaysAfterInitiation") daysAfterInitiation: daysAfterInitiation
}
type transitionList = array<transition>
type storageLensTags = array<storageLensTag>
type storageLensDataExportEncryption = {
@as("SSEKMS") sSEKMS: sSEKMS,
@as("SSES3") sSES3: sSES3
}
type storageLensConfigurationList = array<listStorageLensConfigurationEntry>
type s3TagSet = array<s3Tag>
type s3SetObjectRetentionOperation = {
@as("Retention") retention: option<s3Retention>,
@as("BypassGovernanceRetention") bypassGovernanceRetention: amazonawsBoolean
}
type s3SetObjectLegalHoldOperation = {
@as("LegalHold") legalHold: option<s3ObjectLockLegalHold>
}
type s3ObjectMetadata = {
@as("SSEAlgorithm") sSEAlgorithm: s3SSEAlgorithm,
@as("RequesterCharged") requesterCharged: amazonawsBoolean,
@as("HttpExpiresDate") httpExpiresDate: timeStamp,
@as("ContentType") contentType: nonEmptyMaxLength1024String,
@as("ContentMD5") contentMD5: nonEmptyMaxLength1024String,
@as("ContentLength") contentLength: s3ContentLength,
@as("UserMetadata") userMetadata: s3UserMetadata,
@as("ContentLanguage") contentLanguage: nonEmptyMaxLength1024String,
@as("ContentEncoding") contentEncoding: nonEmptyMaxLength1024String,
@as("ContentDisposition") contentDisposition: nonEmptyMaxLength1024String,
@as("CacheControl") cacheControl: nonEmptyMaxLength1024String
}
type s3Grant = {
@as("Permission") permission: s3Permission,
@as("Grantee") grantee: s3Grantee
}
type regionalBucketList = array<regionalBucket>
type prefixLevelStorageMetrics = {
@as("SelectionCriteria") selectionCriteria: selectionCriteria,
@as("IsEnabled") isEnabled: isEnabled
}
type objectLambdaContentTransformation = AwsLambda(awsLambdaTransformation);
type objectLambdaAccessPointList = array<objectLambdaAccessPoint>
type noncurrentVersionTransitionList = array<noncurrentVersionTransition>
type jobManifestSpec = {
@as("Fields") fields: jobManifestFieldList,
@as("Format") format: option<jobManifestFormat>
}
type jobListDescriptor = {
@as("ProgressSummary") progressSummary: jobProgressSummary,
@as("TerminationDate") terminationDate: jobTerminationDate,
@as("CreationTime") creationTime: jobCreationTime,
@as("Status") status: jobStatus,
@as("Priority") priority: jobPriority,
@as("Operation") operation: operationName,
@as("Description") description: nonEmptyMaxLength256String,
@as("JobId") jobId: jobId
}
type jobFailureList = array<jobFailure>
type include = {
@as("Regions") regions: regions,
@as("Buckets") buckets: buckets
}
type exclude = {
@as("Regions") regions: regions,
@as("Buckets") buckets: buckets
}
type accessPoint = {
@as("AccessPointArn") accessPointArn: s3AccessPointArn,
@as("Bucket") bucket: option<bucketName>,
@as("VpcConfiguration") vpcConfiguration: vpcConfiguration,
@as("NetworkOrigin") networkOrigin: option<networkOrigin>,
@as("Name") name: option<accessPointName>
}
type tagging = {
@as("TagSet") tagSet: option<s3TagSet>
}
type s3SetObjectTaggingOperation = {
@as("TagSet") tagSet: s3TagSet
}
type s3GrantList = array<s3Grant>
type s3BucketDestination = {
@as("Encryption") encryption: storageLensDataExportEncryption,
@as("Prefix") prefix: prefix,
@as("Arn") arn: option<s3BucketArnString>,
@as("AccountId") accountId: option<accountId>,
@as("OutputSchemaVersion") outputSchemaVersion: option<outputSchemaVersion>,
@as("Format") format: option<format>
}
type prefixLevel = {
@as("StorageMetrics") storageMetrics: option<prefixLevelStorageMetrics>
}
type objectLambdaTransformationConfiguration = {
@as("ContentTransformation") contentTransformation: option<objectLambdaContentTransformation>,
@as("Actions") actions: option<objectLambdaTransformationConfigurationActionsList>
}
type lifecycleRuleAndOperator = {
@as("Tags") tags: s3TagSet,
@as("Prefix") prefix: prefix
}
type jobManifest = {
@as("Location") location: option<jobManifestLocation>,
@as("Spec") spec: option<jobManifestSpec>
}
type jobListDescriptorList = array<jobListDescriptor>
type accessPointList = array<accessPoint>
type storageLensDataExport = {
@as("S3BucketDestination") s3BucketDestination: option<s3BucketDestination>
}
type s3CopyObjectOperation = {
@as("BucketKeyEnabled") bucketKeyEnabled: amazonawsBoolean,
@as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: timeStamp,
@as("ObjectLockMode") objectLockMode: s3ObjectLockMode,
@as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: s3ObjectLockLegalHoldStatus,
@as("TargetKeyPrefix") targetKeyPrefix: nonEmptyMaxLength1024String,
@as("SSEAwsKmsKeyId") sSEAwsKmsKeyId: kmsKeyArnString,
@as("UnModifiedSinceConstraint") unModifiedSinceConstraint: timeStamp,
@as("StorageClass") storageClass: s3StorageClass,
@as("RequesterPays") requesterPays: amazonawsBoolean,
@as("RedirectLocation") redirectLocation: nonEmptyMaxLength2048String,
@as("NewObjectTagging") newObjectTagging: s3TagSet,
@as("NewObjectMetadata") newObjectMetadata: s3ObjectMetadata,
@as("ModifiedSinceConstraint") modifiedSinceConstraint: timeStamp,
@as("MetadataDirective") metadataDirective: s3MetadataDirective,
@as("AccessControlGrants") accessControlGrants: s3GrantList,
@as("CannedAccessControlList") cannedAccessControlList: s3CannedAccessControlList,
@as("TargetResource") targetResource: s3BucketArnString
}
type s3AccessControlList = {
@as("Grants") grants: s3GrantList,
@as("Owner") owner: option<s3ObjectOwner>
}
type objectLambdaTransformationConfigurationsList = array<objectLambdaTransformationConfiguration>
type lifecycleRuleFilter = {
@as("And") and: lifecycleRuleAndOperator,
@as("Tag") tag: s3Tag,
@as("Prefix") prefix: prefix
}
type bucketLevel = {
@as("PrefixLevel") prefixLevel: prefixLevel,
@as("ActivityMetrics") activityMetrics: activityMetrics
}
type s3AccessControlPolicy = {
@as("CannedAccessControlList") cannedAccessControlList: s3CannedAccessControlList,
@as("AccessControlList") accessControlList: s3AccessControlList
}
type objectLambdaConfiguration = {
@as("TransformationConfigurations") transformationConfigurations: option<objectLambdaTransformationConfigurationsList>,
@as("AllowedFeatures") allowedFeatures: objectLambdaAllowedFeaturesList,
@as("CloudWatchMetricsEnabled") cloudWatchMetricsEnabled: amazonawsBoolean,
@as("SupportingAccessPoint") supportingAccessPoint: option<objectLambdaSupportingAccessPointArn>
}
type lifecycleRule = {
@as("AbortIncompleteMultipartUpload") abortIncompleteMultipartUpload: abortIncompleteMultipartUpload,
@as("NoncurrentVersionExpiration") noncurrentVersionExpiration: noncurrentVersionExpiration,
@as("NoncurrentVersionTransitions") noncurrentVersionTransitions: noncurrentVersionTransitionList,
@as("Transitions") transitions: transitionList,
@as("Status") status: option<expirationStatus>,
@as("Filter") filter: lifecycleRuleFilter,
@as("ID") iD: iD,
@as("Expiration") expiration: lifecycleExpiration
}
type accountLevel = {
@as("BucketLevel") bucketLevel: option<bucketLevel>,
@as("ActivityMetrics") activityMetrics: activityMetrics
}
type storageLensConfiguration = {
@as("StorageLensArn") storageLensArn: storageLensArn,
@as("AwsOrg") awsOrg: storageLensAwsOrg,
@as("IsEnabled") isEnabled: option<isEnabled>,
@as("DataExport") dataExport: storageLensDataExport,
@as("Exclude") exclude: exclude,
@as("Include") include: include,
@as("AccountLevel") accountLevel: option<accountLevel>,
@as("Id") id: option<configId>
}
type s3SetObjectAclOperation = {
@as("AccessControlPolicy") accessControlPolicy: s3AccessControlPolicy
}
type lifecycleRules = array<lifecycleRule>
type lifecycleConfiguration = {
@as("Rules") rules: lifecycleRules
}
type jobOperation = {
@as("S3PutObjectRetention") s3PutObjectRetention: s3SetObjectRetentionOperation,
@as("S3PutObjectLegalHold") s3PutObjectLegalHold: s3SetObjectLegalHoldOperation,
@as("S3InitiateRestoreObject") s3InitiateRestoreObject: s3InitiateRestoreObjectOperation,
@as("S3DeleteObjectTagging") s3DeleteObjectTagging: s3DeleteObjectTaggingOperation,
@as("S3PutObjectTagging") s3PutObjectTagging: s3SetObjectTaggingOperation,
@as("S3PutObjectAcl") s3PutObjectAcl: s3SetObjectAclOperation,
@as("S3PutObjectCopy") s3PutObjectCopy: s3CopyObjectOperation,
@as("LambdaInvoke") lambdaInvoke: lambdaInvokeOperation
}
type jobDescriptor = {
@as("SuspendedCause") suspendedCause: suspendedCause,
@as("SuspendedDate") suspendedDate: suspendedDate,
@as("RoleArn") roleArn: iAMRoleArn,
@as("TerminationDate") terminationDate: jobTerminationDate,
@as("CreationTime") creationTime: jobCreationTime,
@as("Report") report: jobReport,
@as("FailureReasons") failureReasons: jobFailureList,
@as("StatusUpdateReason") statusUpdateReason: jobStatusUpdateReason,
@as("ProgressSummary") progressSummary: jobProgressSummary,
@as("Priority") priority: jobPriority,
@as("Operation") operation: jobOperation,
@as("Manifest") manifest: jobManifest,
@as("Status") status: jobStatus,
@as("JobArn") jobArn: jobArn,
@as("Description") description: nonEmptyMaxLength256String,
@as("ConfirmationRequired") confirmationRequired: confirmationRequired,
@as("JobId") jobId: jobId
}
type clientType;
@module("@aws-sdk/client-s3") @new external createClient: unit => clientType = "S3ControlClient";
module UpdateJobStatus = {
  type t;
  type request = {
@as("StatusUpdateReason") statusUpdateReason: jobStatusUpdateReason,
@as("RequestedJobStatus") requestedJobStatus: option<requestedJobStatus>,
@as("JobId") jobId: option<jobId>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("StatusUpdateReason") statusUpdateReason: jobStatusUpdateReason,
@as("Status") status: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "UpdateJobStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateJobPriority = {
  type t;
  type request = {
@as("Priority") priority: option<jobPriority>,
@as("JobId") jobId: option<jobId>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("Priority") priority: option<jobPriority>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "UpdateJobPriorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutBucketPolicy = {
  type t;
  type request = {
@as("Policy") policy: option<policy>,
@as("ConfirmRemoveSelfBucketAccess") confirmRemoveSelfBucketAccess: confirmRemoveSelfBucketAccess,
@as("Bucket") bucket: option<bucketName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "PutBucketPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutAccessPointPolicyForObjectLambda = {
  type t;
  type request = {
@as("Policy") policy: option<objectLambdaPolicy>,
@as("Name") name: option<objectLambdaAccessPointName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "PutAccessPointPolicyForObjectLambdaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutAccessPointPolicy = {
  type t;
  type request = {
@as("Policy") policy: option<policy>,
@as("Name") name: option<accessPointName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "PutAccessPointPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetBucketPolicy = {
  type t;
  type request = {
@as("Bucket") bucket: option<bucketName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("Policy") policy: policy
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetBucketPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucket = {
  type t;
  type request = {
@as("Bucket") bucket: option<bucketName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("CreationDate") creationDate: creationDate,
@as("PublicAccessBlockEnabled") publicAccessBlockEnabled: publicAccessBlockEnabled,
@as("Bucket") bucket: bucketName
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetBucketCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccessPointPolicyForObjectLambda = {
  type t;
  type request = {
@as("Name") name: option<objectLambdaAccessPointName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("Policy") policy: objectLambdaPolicy
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetAccessPointPolicyForObjectLambdaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccessPointPolicy = {
  type t;
  type request = {
@as("Name") name: option<accessPointName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("Policy") policy: policy
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetAccessPointPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStorageLensConfigurationTagging = {
  type t;
  type request = {
@as("AccountId") accountId: option<accountId>,
@as("ConfigId") configId: option<configId>
}
  type response = unit
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DeleteStorageLensConfigurationTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStorageLensConfiguration = {
  type t;
  type request = {
@as("AccountId") accountId: option<accountId>,
@as("ConfigId") configId: option<configId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DeleteStorageLensConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePublicAccessBlock = {
  type t;
  type request = {
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DeletePublicAccessBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteJobTagging = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>,
@as("AccountId") accountId: option<accountId>
}
  type response = unit
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DeleteJobTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBucketTagging = {
  type t;
  type request = {
@as("Bucket") bucket: option<bucketName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DeleteBucketTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketPolicy = {
  type t;
  type request = {
@as("Bucket") bucket: option<bucketName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DeleteBucketPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucketLifecycleConfiguration = {
  type t;
  type request = {
@as("Bucket") bucket: option<bucketName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DeleteBucketLifecycleConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBucket = {
  type t;
  type request = {
@as("Bucket") bucket: option<bucketName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DeleteBucketCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccessPointPolicyForObjectLambda = {
  type t;
  type request = {
@as("Name") name: option<objectLambdaAccessPointName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DeleteAccessPointPolicyForObjectLambdaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccessPointPolicy = {
  type t;
  type request = {
@as("Name") name: option<accessPointName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DeleteAccessPointPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccessPointForObjectLambda = {
  type t;
  type request = {
@as("Name") name: option<objectLambdaAccessPointName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DeleteAccessPointForObjectLambdaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccessPoint = {
  type t;
  type request = {
@as("Name") name: option<accessPointName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DeleteAccessPointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutPublicAccessBlock = {
  type t;
  type request = {
@as("PublicAccessBlockConfiguration") publicAccessBlockConfiguration: option<publicAccessBlockConfiguration>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "PutPublicAccessBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetPublicAccessBlock = {
  type t;
  type request = {
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("PublicAccessBlockConfiguration") publicAccessBlockConfiguration: publicAccessBlockConfiguration
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetPublicAccessBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccessPointPolicyStatusForObjectLambda = {
  type t;
  type request = {
@as("Name") name: option<objectLambdaAccessPointName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("PolicyStatus") policyStatus: policyStatus
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetAccessPointPolicyStatusForObjectLambdaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccessPointPolicyStatus = {
  type t;
  type request = {
@as("Name") name: option<accessPointName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("PolicyStatus") policyStatus: policyStatus
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetAccessPointPolicyStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccessPointForObjectLambda = {
  type t;
  type request = {
@as("Name") name: option<objectLambdaAccessPointName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("CreationDate") creationDate: creationDate,
@as("PublicAccessBlockConfiguration") publicAccessBlockConfiguration: publicAccessBlockConfiguration,
@as("Name") name: objectLambdaAccessPointName
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetAccessPointForObjectLambdaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccessPoint = {
  type t;
  type request = {
@as("Name") name: option<accessPointName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("CreationDate") creationDate: creationDate,
@as("PublicAccessBlockConfiguration") publicAccessBlockConfiguration: publicAccessBlockConfiguration,
@as("VpcConfiguration") vpcConfiguration: vpcConfiguration,
@as("NetworkOrigin") networkOrigin: networkOrigin,
@as("Bucket") bucket: bucketName,
@as("Name") name: accessPointName
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetAccessPointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBucket = {
  type t;
  type request = {
@as("CreateBucketConfiguration") createBucketConfiguration: createBucketConfiguration,
@as("OutpostId") outpostId: nonEmptyMaxLength64String,
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
@as("BucketArn") bucketArn: s3RegionalBucketArn,
@as("Location") location: location
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "CreateBucketCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAccessPoint = {
  type t;
  type request = {
@as("PublicAccessBlockConfiguration") publicAccessBlockConfiguration: publicAccessBlockConfiguration,
@as("VpcConfiguration") vpcConfiguration: vpcConfiguration,
@as("Bucket") bucket: option<bucketName>,
@as("Name") name: option<accessPointName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("AccessPointArn") accessPointArn: s3AccessPointArn
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "CreateAccessPointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutStorageLensConfigurationTagging = {
  type t;
  type request = {
@as("Tags") tags: option<storageLensTags>,
@as("AccountId") accountId: option<accountId>,
@as("ConfigId") configId: option<configId>
}
  type response = unit
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "PutStorageLensConfigurationTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutJobTagging = {
  type t;
  type request = {
@as("Tags") tags: option<s3TagSet>,
@as("JobId") jobId: option<jobId>,
@as("AccountId") accountId: option<accountId>
}
  type response = unit
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "PutJobTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStorageLensConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: continuationToken,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("StorageLensConfigurationList") storageLensConfigurationList: storageLensConfigurationList,
@as("NextToken") nextToken: continuationToken
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "ListStorageLensConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRegionalBuckets = {
  type t;
  type request = {
@as("OutpostId") outpostId: nonEmptyMaxLength64String,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nonEmptyMaxLength1024String,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("NextToken") nextToken: nonEmptyMaxLength1024String,
@as("RegionalBucketList") regionalBucketList: regionalBucketList
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "ListRegionalBucketsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccessPointsForObjectLambda = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nonEmptyMaxLength1024String,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("NextToken") nextToken: nonEmptyMaxLength1024String,
@as("ObjectLambdaAccessPointList") objectLambdaAccessPointList: objectLambdaAccessPointList
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "ListAccessPointsForObjectLambdaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStorageLensConfigurationTagging = {
  type t;
  type request = {
@as("AccountId") accountId: option<accountId>,
@as("ConfigId") configId: option<configId>
}
  type response = {
@as("Tags") tags: storageLensTags
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetStorageLensConfigurationTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJobTagging = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("Tags") tags: s3TagSet
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetJobTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketTagging = {
  type t;
  type request = {
@as("Bucket") bucket: option<bucketName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("TagSet") tagSet: option<s3TagSet>
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetBucketTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutBucketTagging = {
  type t;
  type request = {
@as("Tagging") tagging: option<tagging>,
@as("Bucket") bucket: option<bucketName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "PutBucketTaggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: stringForNextToken,
@as("JobStatuses") jobStatuses: jobStatusList,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("Jobs") jobs: jobListDescriptorList,
@as("NextToken") nextToken: stringForNextToken
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "ListJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccessPoints = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nonEmptyMaxLength1024String,
@as("Bucket") bucket: bucketName,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("NextToken") nextToken: nonEmptyMaxLength1024String,
@as("AccessPointList") accessPointList: accessPointList
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "ListAccessPointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAccessPointConfigurationForObjectLambda = {
  type t;
  type request = {
@as("Configuration") configuration: option<objectLambdaConfiguration>,
@as("Name") name: option<objectLambdaAccessPointName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "PutAccessPointConfigurationForObjectLambdaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetAccessPointConfigurationForObjectLambda = {
  type t;
  type request = {
@as("Name") name: option<objectLambdaAccessPointName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("Configuration") configuration: objectLambdaConfiguration
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetAccessPointConfigurationForObjectLambdaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAccessPointForObjectLambda = {
  type t;
  type request = {
@as("Configuration") configuration: option<objectLambdaConfiguration>,
@as("Name") name: option<objectLambdaAccessPointName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("ObjectLambdaAccessPointArn") objectLambdaAccessPointArn: objectLambdaAccessPointArn
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "CreateAccessPointForObjectLambdaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutStorageLensConfiguration = {
  type t;
  type request = {
@as("Tags") tags: storageLensTags,
@as("StorageLensConfiguration") storageLensConfiguration: option<storageLensConfiguration>,
@as("AccountId") accountId: option<accountId>,
@as("ConfigId") configId: option<configId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "PutStorageLensConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetStorageLensConfiguration = {
  type t;
  type request = {
@as("AccountId") accountId: option<accountId>,
@as("ConfigId") configId: option<configId>
}
  type response = {
@as("StorageLensConfiguration") storageLensConfiguration: storageLensConfiguration
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetStorageLensConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketLifecycleConfiguration = {
  type t;
  type request = {
@as("Bucket") bucket: option<bucketName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("Rules") rules: lifecycleRules
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "GetBucketLifecycleConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutBucketLifecycleConfiguration = {
  type t;
  type request = {
@as("LifecycleConfiguration") lifecycleConfiguration: lifecycleConfiguration,
@as("Bucket") bucket: option<bucketName>,
@as("AccountId") accountId: option<accountId>
}
  
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "PutBucketLifecycleConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateJob = {
  type t;
  type request = {
@as("Tags") tags: s3TagSet,
@as("RoleArn") roleArn: option<iAMRoleArn>,
@as("Priority") priority: option<jobPriority>,
@as("Description") description: nonEmptyMaxLength256String,
@as("Manifest") manifest: option<jobManifest>,
@as("ClientRequestToken") clientRequestToken: option<nonEmptyMaxLength64String>,
@as("Report") report: option<jobReport>,
@as("Operation") operation: option<jobOperation>,
@as("ConfirmationRequired") confirmationRequired: confirmationRequired,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "CreateJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("Job") job: jobDescriptor
}
  @module("@aws-sdk/client-s3") @new external new_: (request) => t = "DescribeJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
