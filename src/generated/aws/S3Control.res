type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-s3") @new
external createClient: unit => awsServiceClient = "S3ControlClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcId = string
type transitionStorageClass = [
  | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE
  | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING
  | @as("ONEZONE_IA") #ONEZONE_IA
  | @as("STANDARD_IA") #STANDARD_IA
  | @as("GLACIER") #GLACIER
]
type timeStamp = Js.Date.t
type tagValueString = string
type tagKeyString = string
type suspendedDate = Js.Date.t
type suspendedCause = string
type stringForNextToken = string
type storageLensPrefixLevelMaxDepth = int
type storageLensPrefixLevelDelimiter = string
type storageLensArn = string
type setting = bool
type sses3 = unit
type ssekmskeyId = string
type s3StorageClass = [
  | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE
  | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING
  | @as("GLACIER") #GLACIER
  | @as("ONEZONE_IA") #ONEZONE_IA
  | @as("STANDARD_IA") #STANDARD_IA
  | @as("STANDARD") #STANDARD
]
type s3SSEAlgorithm = [@as("KMS") #KMS | @as("AES256") #AES256]
type s3RegionalBucketArn = string
type s3Permission = [
  | @as("WRITE_ACP") #WRITE_ACP
  | @as("READ_ACP") #READ_ACP
  | @as("WRITE") #WRITE
  | @as("READ") #READ
  | @as("FULL_CONTROL") #FULL_CONTROL
]
type s3ObjectVersionId = string
type s3ObjectLockRetentionMode = [@as("GOVERNANCE") #GOVERNANCE | @as("COMPLIANCE") #COMPLIANCE]
type s3ObjectLockMode = [@as("GOVERNANCE") #GOVERNANCE | @as("COMPLIANCE") #COMPLIANCE]
type s3ObjectLockLegalHoldStatus = [@as("ON") #ON | @as("OFF") #OFF]
type s3MetadataDirective = [@as("REPLACE") #REPLACE | @as("COPY") #COPY]
type s3KeyArnString = string
type s3GranteeTypeIdentifier = [@as("uri") #Uri | @as("emailAddress") #EmailAddress | @as("id") #Id]
type s3GlacierJobTier = [@as("STANDARD") #STANDARD | @as("BULK") #BULK]
type s3ExpirationInDays = int
type s3DeleteObjectTaggingOperation = unit
type s3ContentLength = float
type s3CannedAccessControlList = [
  | @as("bucket-owner-full-control") #Bucket_Owner_Full_Control
  | @as("bucket-owner-read") #Bucket_Owner_Read
  | @as("authenticated-read") #Authenticated_Read
  | @as("aws-exec-read") #Aws_Exec_Read
  | @as("public-read-write") #Public_Read_Write
  | @as("public-read") #Public_Read
  | @as("private") #Private
]
type s3BucketArnString = string
type s3AccessPointArn = string
type s3AWSRegion = string
type requestedJobStatus = [@as("Ready") #Ready | @as("Cancelled") #Cancelled]
type reportPrefixString = string
type publicAccessBlockEnabled = bool
type prefix = string
type policy = string
type outputSchemaVersion = [@as("V_1") #V_1]
type operationName = [
  | @as("S3PutObjectRetention") #S3PutObjectRetention
  | @as("S3PutObjectLegalHold") #S3PutObjectLegalHold
  | @as("S3InitiateRestoreObject") #S3InitiateRestoreObject
  | @as("S3DeleteObjectTagging") #S3DeleteObjectTagging
  | @as("S3PutObjectTagging") #S3PutObjectTagging
  | @as("S3PutObjectAcl") #S3PutObjectAcl
  | @as("S3PutObjectCopy") #S3PutObjectCopy
  | @as("LambdaInvoke") #LambdaInvoke
]
type objectLockEnabledForBucket = bool
type objectLambdaTransformationConfigurationAction = [@as("GetObject") #GetObject]
type objectLambdaSupportingAccessPointArn = string
type objectLambdaPolicy = string
type objectLambdaAllowedFeature = [
  | @as("GetObject-PartNumber") #GetObject_PartNumber
  | @as("GetObject-Range") #GetObject_Range
]
type objectLambdaAccessPointName = string
type objectLambdaAccessPointArn = string
type nonEmptyMaxLength64String = string
type nonEmptyMaxLength256String = string
type nonEmptyMaxLength2048String = string
type nonEmptyMaxLength1024String = string
type noSuchPublicAccessBlockConfigurationMessage = string
type networkOrigin = [@as("VPC") #VPC | @as("Internet") #Internet]
type minStorageBytesPercentage = float
type maxResults = int
type maxLength1024String = string
type location = string
type kmsKeyArnString = string
type jobTotalNumberOfTasks = float
type jobTerminationDate = Js.Date.t
type jobStatusUpdateReason = string
type jobStatus = [
  | @as("Suspended") #Suspended
  | @as("Ready") #Ready
  | @as("Preparing") #Preparing
  | @as("Pausing") #Pausing
  | @as("Paused") #Paused
  | @as("New") #New
  | @as("Failing") #Failing
  | @as("Failed") #Failed
  | @as("Completing") #Completing
  | @as("Complete") #Complete
  | @as("Cancelling") #Cancelling
  | @as("Cancelled") #Cancelled
  | @as("Active") #Active
]
type jobReportScope = [@as("FailedTasksOnly") #FailedTasksOnly | @as("AllTasks") #AllTasks]
type jobReportFormat = [@as("Report_CSV_20180820") #Report_CSV_20180820]
type jobPriority = int
type jobNumberOfTasksSucceeded = float
type jobNumberOfTasksFailed = float
type jobManifestFormat = [
  | @as("S3InventoryReport_CSV_20161130") #S3InventoryReport_CSV_20161130
  | @as("S3BatchOperations_CSV_20180820") #S3BatchOperations_CSV_20180820
]
type jobManifestFieldName = [
  | @as("VersionId") #VersionId
  | @as("Key") #Key
  | @as("Bucket") #Bucket
  | @as("Ignore") #Ignore
]
type jobId = string
type jobFailureReason = string
type jobFailureCode = string
type jobCreationTime = Js.Date.t
type jobArn = string
type isPublic = bool
type isEnabled = bool
type id = string
type iamroleArn = string
type grantWriteACP = string
type grantWrite = string
type grantReadACP = string
type grantRead = string
type grantFullControl = string
type functionArnString = string
type format = [@as("Parquet") #Parquet | @as("CSV") #CSV]
type expiredObjectDeleteMarker = bool
type expirationStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type exceptionMessage = string
type daysAfterInitiation = int
type days = int
type date = Js.Date.t
type creationDate = Js.Date.t
type continuationToken = string
type confirmationRequired = bool
type confirmRemoveSelfBucketAccess = bool
type configId = string
type bucketName = string
type bucketLocationConstraint = [
  | @as("eu-central-1") #Eu_Central_1
  | @as("cn-north-1") #Cn_North_1
  | @as("sa-east-1") #Sa_East_1
  | @as("ap-northeast-1") #Ap_Northeast_1
  | @as("ap-southeast-2") #Ap_Southeast_2
  | @as("ap-southeast-1") #Ap_Southeast_1
  | @as("ap-south-1") #Ap_South_1
  | @as("us-west-2") #Us_West_2
  | @as("us-west-1") #Us_West_1
  | @as("eu-west-1") #Eu_West_1
  | @as("EU") #EU
]
type bucketCannedACL = [
  | @as("authenticated-read") #Authenticated_Read
  | @as("public-read-write") #Public_Read_Write
  | @as("public-read") #Public_Read
  | @as("private") #Private
]
type boolean_ = bool
type awsOrgArn = string
type awsLambdaTransformationPayload = string
type accountId = string
type accessPointName = string
type vpcConfiguration = {@as("VpcId") vpcId: vpcId}
type transition = {
  @as("StorageClass") storageClass: option<transitionStorageClass>,
  @as("Days") days: option<days>,
  @as("Date") date: option<date>,
}
type storageLensTag = {
  @as("Value") value: tagValueString,
  @as("Key") key: tagKeyString,
}
type storageLensAwsOrg = {@as("Arn") arn: awsOrgArn}
type selectionCriteria = {
  @as("MinStorageBytesPercentage") minStorageBytesPercentage: option<minStorageBytesPercentage>,
  @as("MaxDepth") maxDepth: option<storageLensPrefixLevelMaxDepth>,
  @as("Delimiter") delimiter: option<storageLensPrefixLevelDelimiter>,
}
type ssekms = {@as("KeyId") keyId: ssekmskeyId}
type s3UserMetadata = Js.Dict.t<maxLength1024String>
type s3Tag = {
  @as("Value") value: tagValueString,
  @as("Key") key: tagKeyString,
}
type s3Retention = {
  @as("Mode") mode: option<s3ObjectLockRetentionMode>,
  @as("RetainUntilDate") retainUntilDate: option<timeStamp>,
}
type s3ObjectOwner = {
  @as("DisplayName") displayName: option<nonEmptyMaxLength1024String>,
  @as("ID") id: option<nonEmptyMaxLength1024String>,
}
type s3ObjectLockLegalHold = {@as("Status") status: s3ObjectLockLegalHoldStatus}
type s3InitiateRestoreObjectOperation = {
  @as("GlacierJobTier") glacierJobTier: option<s3GlacierJobTier>,
  @as("ExpirationInDays") expirationInDays: option<s3ExpirationInDays>,
}
type s3Grantee = {
  @as("DisplayName") displayName: option<nonEmptyMaxLength1024String>,
  @as("Identifier") identifier: option<nonEmptyMaxLength1024String>,
  @as("TypeIdentifier") typeIdentifier: option<s3GranteeTypeIdentifier>,
}
type regions = array<s3AWSRegion>
type regionalBucket = {
  @as("OutpostId") outpostId: option<nonEmptyMaxLength64String>,
  @as("CreationDate") creationDate: creationDate,
  @as("PublicAccessBlockEnabled") publicAccessBlockEnabled: publicAccessBlockEnabled,
  @as("BucketArn") bucketArn: option<s3RegionalBucketArn>,
  @as("Bucket") bucket: bucketName,
}
type publicAccessBlockConfiguration = {
  @as("RestrictPublicBuckets") restrictPublicBuckets: option<setting>,
  @as("BlockPublicPolicy") blockPublicPolicy: option<setting>,
  @as("IgnorePublicAcls") ignorePublicAcls: option<setting>,
  @as("BlockPublicAcls") blockPublicAcls: option<setting>,
}
type policyStatus = {@as("IsPublic") isPublic: option<isPublic>}
type objectLambdaTransformationConfigurationActionsList = array<
  objectLambdaTransformationConfigurationAction,
>
type objectLambdaAllowedFeaturesList = array<objectLambdaAllowedFeature>
type objectLambdaAccessPoint = {
  @as("ObjectLambdaAccessPointArn") objectLambdaAccessPointArn: option<objectLambdaAccessPointArn>,
  @as("Name") name: objectLambdaAccessPointName,
}
type noncurrentVersionTransition = {
  @as("StorageClass") storageClass: option<transitionStorageClass>,
  @as("NoncurrentDays") noncurrentDays: option<days>,
}
type noncurrentVersionExpiration = {@as("NoncurrentDays") noncurrentDays: option<days>}
type listStorageLensConfigurationEntry = {
  @as("IsEnabled") isEnabled: option<isEnabled>,
  @as("HomeRegion") homeRegion: s3AWSRegion,
  @as("StorageLensArn") storageLensArn: storageLensArn,
  @as("Id") id: configId,
}
type lifecycleExpiration = {
  @as("ExpiredObjectDeleteMarker") expiredObjectDeleteMarker: option<expiredObjectDeleteMarker>,
  @as("Days") days: option<days>,
  @as("Date") date: option<date>,
}
type lambdaInvokeOperation = {@as("FunctionArn") functionArn: option<functionArnString>}
type jobStatusList = array<jobStatus>
type jobReport = {
  @as("ReportScope") reportScope: option<jobReportScope>,
  @as("Prefix") prefix: option<reportPrefixString>,
  @as("Enabled") enabled: boolean_,
  @as("Format") format: option<jobReportFormat>,
  @as("Bucket") bucket: option<s3BucketArnString>,
}
type jobProgressSummary = {
  @as("NumberOfTasksFailed") numberOfTasksFailed: option<jobNumberOfTasksFailed>,
  @as("NumberOfTasksSucceeded") numberOfTasksSucceeded: option<jobNumberOfTasksSucceeded>,
  @as("TotalNumberOfTasks") totalNumberOfTasks: option<jobTotalNumberOfTasks>,
}
type jobManifestLocation = {
  @as("ETag") etag: nonEmptyMaxLength1024String,
  @as("ObjectVersionId") objectVersionId: option<s3ObjectVersionId>,
  @as("ObjectArn") objectArn: s3KeyArnString,
}
type jobManifestFieldList = array<jobManifestFieldName>
type jobFailure = {
  @as("FailureReason") failureReason: option<jobFailureReason>,
  @as("FailureCode") failureCode: option<jobFailureCode>,
}
type createBucketConfiguration = {
  @as("LocationConstraint") locationConstraint: option<bucketLocationConstraint>,
}
type buckets = array<s3BucketArnString>
type awsLambdaTransformation = {
  @as("FunctionPayload") functionPayload: option<awsLambdaTransformationPayload>,
  @as("FunctionArn") functionArn: functionArnString,
}
type activityMetrics = {@as("IsEnabled") isEnabled: option<isEnabled>}
type abortIncompleteMultipartUpload = {
  @as("DaysAfterInitiation") daysAfterInitiation: option<daysAfterInitiation>,
}
type transitionList = array<transition>
type storageLensTags = array<storageLensTag>
type storageLensDataExportEncryption = {
  @as("SSEKMS") ssekms: option<ssekms>,
  @as("SSES3") sses3: option<sses3>,
}
type storageLensConfigurationList = array<listStorageLensConfigurationEntry>
type s3TagSet = array<s3Tag>
type s3SetObjectRetentionOperation = {
  @as("Retention") retention: s3Retention,
  @as("BypassGovernanceRetention") bypassGovernanceRetention: option<boolean_>,
}
type s3SetObjectLegalHoldOperation = {@as("LegalHold") legalHold: s3ObjectLockLegalHold}
type s3ObjectMetadata = {
  @as("SSEAlgorithm") ssealgorithm: option<s3SSEAlgorithm>,
  @as("RequesterCharged") requesterCharged: option<boolean_>,
  @as("HttpExpiresDate") httpExpiresDate: option<timeStamp>,
  @as("ContentType") contentType: option<nonEmptyMaxLength1024String>,
  @as("ContentMD5") contentMD5: option<nonEmptyMaxLength1024String>,
  @as("ContentLength") contentLength: option<s3ContentLength>,
  @as("UserMetadata") userMetadata: option<s3UserMetadata>,
  @as("ContentLanguage") contentLanguage: option<nonEmptyMaxLength1024String>,
  @as("ContentEncoding") contentEncoding: option<nonEmptyMaxLength1024String>,
  @as("ContentDisposition") contentDisposition: option<nonEmptyMaxLength1024String>,
  @as("CacheControl") cacheControl: option<nonEmptyMaxLength1024String>,
}
type s3Grant = {
  @as("Permission") permission: option<s3Permission>,
  @as("Grantee") grantee: option<s3Grantee>,
}
type regionalBucketList = array<regionalBucket>
type prefixLevelStorageMetrics = {
  @as("SelectionCriteria") selectionCriteria: option<selectionCriteria>,
  @as("IsEnabled") isEnabled: option<isEnabled>,
}
type objectLambdaContentTransformation = {
  @as("AwsLambda") awsLambda: option<awsLambdaTransformation>,
}
module ObjectLambdaContentTransformation = {
  type t = AwsLambda(awsLambdaTransformation)
  exception ObjectLambdaContentTransformationUnspecified
  let classify = value =>
    switch value {
    | {awsLambda: Some(x)} => AwsLambda(x)
    | _ => raise(ObjectLambdaContentTransformationUnspecified)
    }

  let make = value =>
    switch value {
    | AwsLambda(x) => {awsLambda: Some(x)}
    }
}
type objectLambdaAccessPointList = array<objectLambdaAccessPoint>
type noncurrentVersionTransitionList = array<noncurrentVersionTransition>
type jobManifestSpec = {
  @as("Fields") fields: option<jobManifestFieldList>,
  @as("Format") format: jobManifestFormat,
}
type jobListDescriptor = {
  @as("ProgressSummary") progressSummary: option<jobProgressSummary>,
  @as("TerminationDate") terminationDate: option<jobTerminationDate>,
  @as("CreationTime") creationTime: option<jobCreationTime>,
  @as("Status") status: option<jobStatus>,
  @as("Priority") priority: option<jobPriority>,
  @as("Operation") operation: option<operationName>,
  @as("Description") description: option<nonEmptyMaxLength256String>,
  @as("JobId") jobId: option<jobId>,
}
type jobFailureList = array<jobFailure>
type include_ = {
  @as("Regions") regions: option<regions>,
  @as("Buckets") buckets: option<buckets>,
}
type exclude = {
  @as("Regions") regions: option<regions>,
  @as("Buckets") buckets: option<buckets>,
}
type accessPoint = {
  @as("AccessPointArn") accessPointArn: option<s3AccessPointArn>,
  @as("Bucket") bucket: bucketName,
  @as("VpcConfiguration") vpcConfiguration: option<vpcConfiguration>,
  @as("NetworkOrigin") networkOrigin: networkOrigin,
  @as("Name") name: accessPointName,
}
type tagging = {@as("TagSet") tagSet: s3TagSet}
type s3SetObjectTaggingOperation = {@as("TagSet") tagSet: option<s3TagSet>}
type s3GrantList = array<s3Grant>
type s3BucketDestination = {
  @as("Encryption") encryption: option<storageLensDataExportEncryption>,
  @as("Prefix") prefix: option<prefix>,
  @as("Arn") arn: s3BucketArnString,
  @as("AccountId") accountId: accountId,
  @as("OutputSchemaVersion") outputSchemaVersion: outputSchemaVersion,
  @as("Format") format: format,
}
type prefixLevel = {@as("StorageMetrics") storageMetrics: prefixLevelStorageMetrics}
type objectLambdaTransformationConfiguration = {
  @as("ContentTransformation") contentTransformation: objectLambdaContentTransformation,
  @as("Actions") actions: objectLambdaTransformationConfigurationActionsList,
}
type lifecycleRuleAndOperator = {
  @as("Tags") tags: option<s3TagSet>,
  @as("Prefix") prefix: option<prefix>,
}
type jobManifest = {
  @as("Location") location: jobManifestLocation,
  @as("Spec") spec: jobManifestSpec,
}
type jobListDescriptorList = array<jobListDescriptor>
type accessPointList = array<accessPoint>
type storageLensDataExport = {@as("S3BucketDestination") s3BucketDestination: s3BucketDestination}
type s3CopyObjectOperation = {
  @as("BucketKeyEnabled") bucketKeyEnabled: option<boolean_>,
  @as("ObjectLockRetainUntilDate") objectLockRetainUntilDate: option<timeStamp>,
  @as("ObjectLockMode") objectLockMode: option<s3ObjectLockMode>,
  @as("ObjectLockLegalHoldStatus") objectLockLegalHoldStatus: option<s3ObjectLockLegalHoldStatus>,
  @as("TargetKeyPrefix") targetKeyPrefix: option<nonEmptyMaxLength1024String>,
  @as("SSEAwsKmsKeyId") sseawsKmsKeyId: option<kmsKeyArnString>,
  @as("UnModifiedSinceConstraint") unModifiedSinceConstraint: option<timeStamp>,
  @as("StorageClass") storageClass: option<s3StorageClass>,
  @as("RequesterPays") requesterPays: option<boolean_>,
  @as("RedirectLocation") redirectLocation: option<nonEmptyMaxLength2048String>,
  @as("NewObjectTagging") newObjectTagging: option<s3TagSet>,
  @as("NewObjectMetadata") newObjectMetadata: option<s3ObjectMetadata>,
  @as("ModifiedSinceConstraint") modifiedSinceConstraint: option<timeStamp>,
  @as("MetadataDirective") metadataDirective: option<s3MetadataDirective>,
  @as("AccessControlGrants") accessControlGrants: option<s3GrantList>,
  @as("CannedAccessControlList") cannedAccessControlList: option<s3CannedAccessControlList>,
  @as("TargetResource") targetResource: option<s3BucketArnString>,
}
type s3AccessControlList = {
  @as("Grants") grants: option<s3GrantList>,
  @as("Owner") owner: s3ObjectOwner,
}
type objectLambdaTransformationConfigurationsList = array<objectLambdaTransformationConfiguration>
type lifecycleRuleFilter = {
  @as("And") and_: option<lifecycleRuleAndOperator>,
  @as("Tag") tag: option<s3Tag>,
  @as("Prefix") prefix: option<prefix>,
}
type bucketLevel = {
  @as("PrefixLevel") prefixLevel: option<prefixLevel>,
  @as("ActivityMetrics") activityMetrics: option<activityMetrics>,
}
type s3AccessControlPolicy = {
  @as("CannedAccessControlList") cannedAccessControlList: option<s3CannedAccessControlList>,
  @as("AccessControlList") accessControlList: option<s3AccessControlList>,
}
type objectLambdaConfiguration = {
  @as("TransformationConfigurations")
  transformationConfigurations: objectLambdaTransformationConfigurationsList,
  @as("AllowedFeatures") allowedFeatures: option<objectLambdaAllowedFeaturesList>,
  @as("CloudWatchMetricsEnabled") cloudWatchMetricsEnabled: option<boolean_>,
  @as("SupportingAccessPoint") supportingAccessPoint: objectLambdaSupportingAccessPointArn,
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
  @as("ID") id: option<id>,
  @as("Expiration") expiration: option<lifecycleExpiration>,
}
type accountLevel = {
  @as("BucketLevel") bucketLevel: bucketLevel,
  @as("ActivityMetrics") activityMetrics: option<activityMetrics>,
}
type storageLensConfiguration = {
  @as("StorageLensArn") storageLensArn: option<storageLensArn>,
  @as("AwsOrg") awsOrg: option<storageLensAwsOrg>,
  @as("IsEnabled") isEnabled: isEnabled,
  @as("DataExport") dataExport: option<storageLensDataExport>,
  @as("Exclude") exclude: option<exclude>,
  @as("Include") include_: option<include_>,
  @as("AccountLevel") accountLevel: accountLevel,
  @as("Id") id: configId,
}
type s3SetObjectAclOperation = {
  @as("AccessControlPolicy") accessControlPolicy: option<s3AccessControlPolicy>,
}
type lifecycleRules = array<lifecycleRule>
type lifecycleConfiguration = {@as("Rules") rules: option<lifecycleRules>}
type jobOperation = {
  @as("S3PutObjectRetention") s3PutObjectRetention: option<s3SetObjectRetentionOperation>,
  @as("S3PutObjectLegalHold") s3PutObjectLegalHold: option<s3SetObjectLegalHoldOperation>,
  @as("S3InitiateRestoreObject") s3InitiateRestoreObject: option<s3InitiateRestoreObjectOperation>,
  @as("S3DeleteObjectTagging") s3DeleteObjectTagging: option<s3DeleteObjectTaggingOperation>,
  @as("S3PutObjectTagging") s3PutObjectTagging: option<s3SetObjectTaggingOperation>,
  @as("S3PutObjectAcl") s3PutObjectAcl: option<s3SetObjectAclOperation>,
  @as("S3PutObjectCopy") s3PutObjectCopy: option<s3CopyObjectOperation>,
  @as("LambdaInvoke") lambdaInvoke: option<lambdaInvokeOperation>,
}
type jobDescriptor = {
  @as("SuspendedCause") suspendedCause: option<suspendedCause>,
  @as("SuspendedDate") suspendedDate: option<suspendedDate>,
  @as("RoleArn") roleArn: option<iamroleArn>,
  @as("TerminationDate") terminationDate: option<jobTerminationDate>,
  @as("CreationTime") creationTime: option<jobCreationTime>,
  @as("Report") report: option<jobReport>,
  @as("FailureReasons") failureReasons: option<jobFailureList>,
  @as("StatusUpdateReason") statusUpdateReason: option<jobStatusUpdateReason>,
  @as("ProgressSummary") progressSummary: option<jobProgressSummary>,
  @as("Priority") priority: option<jobPriority>,
  @as("Operation") operation: option<jobOperation>,
  @as("Manifest") manifest: option<jobManifest>,
  @as("Status") status: option<jobStatus>,
  @as("JobArn") jobArn: option<jobArn>,
  @as("Description") description: option<nonEmptyMaxLength256String>,
  @as("ConfirmationRequired") confirmationRequired: option<confirmationRequired>,
  @as("JobId") jobId: option<jobId>,
}

module UpdateJobStatus = {
  type t
  type request = {
    @as("StatusUpdateReason") statusUpdateReason: option<jobStatusUpdateReason>,
    @as("RequestedJobStatus") requestedJobStatus: requestedJobStatus,
    @as("JobId") jobId: jobId,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("StatusUpdateReason") statusUpdateReason: option<jobStatusUpdateReason>,
    @as("Status") status: option<jobStatus>,
    @as("JobId") jobId: option<jobId>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "UpdateJobStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateJobPriority = {
  type t
  type request = {
    @as("Priority") priority: jobPriority,
    @as("JobId") jobId: jobId,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("Priority") priority: jobPriority,
    @as("JobId") jobId: jobId,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "UpdateJobPriorityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketPolicy = {
  type t
  type request = {
    @as("Policy") policy: policy,
    @as("ConfirmRemoveSelfBucketAccess")
    confirmRemoveSelfBucketAccess: option<confirmRemoveSelfBucketAccess>,
    @as("Bucket") bucket: bucketName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutAccessPointPolicyForObjectLambda = {
  type t
  type request = {
    @as("Policy") policy: objectLambdaPolicy,
    @as("Name") name: objectLambdaAccessPointName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutAccessPointPolicyForObjectLambdaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutAccessPointPolicy = {
  type t
  type request = {
    @as("Policy") policy: policy,
    @as("Name") name: accessPointName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutAccessPointPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetBucketPolicy = {
  type t
  type request = {
    @as("Bucket") bucket: bucketName,
    @as("AccountId") accountId: accountId,
  }
  type response = {@as("Policy") policy: option<policy>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucket = {
  type t
  type request = {
    @as("Bucket") bucket: bucketName,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("CreationDate") creationDate: option<creationDate>,
    @as("PublicAccessBlockEnabled") publicAccessBlockEnabled: option<publicAccessBlockEnabled>,
    @as("Bucket") bucket: option<bucketName>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPointPolicyForObjectLambda = {
  type t
  type request = {
    @as("Name") name: objectLambdaAccessPointName,
    @as("AccountId") accountId: accountId,
  }
  type response = {@as("Policy") policy: option<objectLambdaPolicy>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetAccessPointPolicyForObjectLambdaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPointPolicy = {
  type t
  type request = {
    @as("Name") name: accessPointName,
    @as("AccountId") accountId: accountId,
  }
  type response = {@as("Policy") policy: option<policy>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetAccessPointPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStorageLensConfigurationTagging = {
  type t
  type request = {
    @as("AccountId") accountId: accountId,
    @as("ConfigId") configId: configId,
  }
  type response = unit
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteStorageLensConfigurationTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStorageLensConfiguration = {
  type t
  type request = {
    @as("AccountId") accountId: accountId,
    @as("ConfigId") configId: configId,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteStorageLensConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePublicAccessBlock = {
  type t
  type request = {@as("AccountId") accountId: accountId}

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeletePublicAccessBlockCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteJobTagging = {
  type t
  type request = {
    @as("JobId") jobId: jobId,
    @as("AccountId") accountId: accountId,
  }
  type response = unit
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteJobTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBucketTagging = {
  type t
  type request = {
    @as("Bucket") bucket: bucketName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketPolicy = {
  type t
  type request = {
    @as("Bucket") bucket: bucketName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketLifecycleConfiguration = {
  type t
  type request = {
    @as("Bucket") bucket: bucketName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteBucketLifecycleConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucket = {
  type t
  type request = {
    @as("Bucket") bucket: bucketName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessPointPolicyForObjectLambda = {
  type t
  type request = {
    @as("Name") name: objectLambdaAccessPointName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteAccessPointPolicyForObjectLambdaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessPointPolicy = {
  type t
  type request = {
    @as("Name") name: accessPointName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteAccessPointPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessPointForObjectLambda = {
  type t
  type request = {
    @as("Name") name: objectLambdaAccessPointName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteAccessPointForObjectLambdaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessPoint = {
  type t
  type request = {
    @as("Name") name: accessPointName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteAccessPointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutPublicAccessBlock = {
  type t
  type request = {
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: publicAccessBlockConfiguration,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutPublicAccessBlockCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetPublicAccessBlock = {
  type t
  type request = {@as("AccountId") accountId: accountId}
  type response = {
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: option<publicAccessBlockConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetPublicAccessBlockCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPointPolicyStatusForObjectLambda = {
  type t
  type request = {
    @as("Name") name: objectLambdaAccessPointName,
    @as("AccountId") accountId: accountId,
  }
  type response = {@as("PolicyStatus") policyStatus: option<policyStatus>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetAccessPointPolicyStatusForObjectLambdaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPointPolicyStatus = {
  type t
  type request = {
    @as("Name") name: accessPointName,
    @as("AccountId") accountId: accountId,
  }
  type response = {@as("PolicyStatus") policyStatus: option<policyStatus>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetAccessPointPolicyStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPointForObjectLambda = {
  type t
  type request = {
    @as("Name") name: objectLambdaAccessPointName,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("CreationDate") creationDate: option<creationDate>,
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: option<publicAccessBlockConfiguration>,
    @as("Name") name: option<objectLambdaAccessPointName>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetAccessPointForObjectLambdaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPoint = {
  type t
  type request = {
    @as("Name") name: accessPointName,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("CreationDate") creationDate: option<creationDate>,
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: option<publicAccessBlockConfiguration>,
    @as("VpcConfiguration") vpcConfiguration: option<vpcConfiguration>,
    @as("NetworkOrigin") networkOrigin: option<networkOrigin>,
    @as("Bucket") bucket: option<bucketName>,
    @as("Name") name: option<accessPointName>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetAccessPointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBucket = {
  type t
  type request = {
    @as("CreateBucketConfiguration") createBucketConfiguration: option<createBucketConfiguration>,
    @as("OutpostId") outpostId: option<nonEmptyMaxLength64String>,
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
  type response = {
    @as("BucketArn") bucketArn: option<s3RegionalBucketArn>,
    @as("Location") location: option<location>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "CreateBucketCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccessPoint = {
  type t
  type request = {
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: option<publicAccessBlockConfiguration>,
    @as("VpcConfiguration") vpcConfiguration: option<vpcConfiguration>,
    @as("Bucket") bucket: bucketName,
    @as("Name") name: accessPointName,
    @as("AccountId") accountId: accountId,
  }
  type response = {@as("AccessPointArn") accessPointArn: option<s3AccessPointArn>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "CreateAccessPointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutStorageLensConfigurationTagging = {
  type t
  type request = {
    @as("Tags") tags: storageLensTags,
    @as("AccountId") accountId: accountId,
    @as("ConfigId") configId: configId,
  }
  type response = unit
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutStorageLensConfigurationTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutJobTagging = {
  type t
  type request = {
    @as("Tags") tags: s3TagSet,
    @as("JobId") jobId: jobId,
    @as("AccountId") accountId: accountId,
  }
  type response = unit
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutJobTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStorageLensConfigurations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<continuationToken>,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("StorageLensConfigurationList")
    storageLensConfigurationList: option<storageLensConfigurationList>,
    @as("NextToken") nextToken: option<continuationToken>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListStorageLensConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRegionalBuckets = {
  type t
  type request = {
    @as("OutpostId") outpostId: option<nonEmptyMaxLength64String>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nonEmptyMaxLength1024String>,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("NextToken") nextToken: option<nonEmptyMaxLength1024String>,
    @as("RegionalBucketList") regionalBucketList: option<regionalBucketList>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListRegionalBucketsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccessPointsForObjectLambda = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nonEmptyMaxLength1024String>,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("NextToken") nextToken: option<nonEmptyMaxLength1024String>,
    @as("ObjectLambdaAccessPointList")
    objectLambdaAccessPointList: option<objectLambdaAccessPointList>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListAccessPointsForObjectLambdaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStorageLensConfigurationTagging = {
  type t
  type request = {
    @as("AccountId") accountId: accountId,
    @as("ConfigId") configId: configId,
  }
  type response = {@as("Tags") tags: option<storageLensTags>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetStorageLensConfigurationTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobTagging = {
  type t
  type request = {
    @as("JobId") jobId: jobId,
    @as("AccountId") accountId: accountId,
  }
  type response = {@as("Tags") tags: option<s3TagSet>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetJobTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketTagging = {
  type t
  type request = {
    @as("Bucket") bucket: bucketName,
    @as("AccountId") accountId: accountId,
  }
  type response = {@as("TagSet") tagSet: s3TagSet}
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketTagging = {
  type t
  type request = {
    @as("Tagging") tagging: tagging,
    @as("Bucket") bucket: bucketName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketTaggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListJobs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<stringForNextToken>,
    @as("JobStatuses") jobStatuses: option<jobStatusList>,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("Jobs") jobs: option<jobListDescriptorList>,
    @as("NextToken") nextToken: option<stringForNextToken>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccessPoints = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nonEmptyMaxLength1024String>,
    @as("Bucket") bucket: option<bucketName>,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("NextToken") nextToken: option<nonEmptyMaxLength1024String>,
    @as("AccessPointList") accessPointList: option<accessPointList>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListAccessPointsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAccessPointConfigurationForObjectLambda = {
  type t
  type request = {
    @as("Configuration") configuration: objectLambdaConfiguration,
    @as("Name") name: objectLambdaAccessPointName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutAccessPointConfigurationForObjectLambdaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetAccessPointConfigurationForObjectLambda = {
  type t
  type request = {
    @as("Name") name: objectLambdaAccessPointName,
    @as("AccountId") accountId: accountId,
  }
  type response = {@as("Configuration") configuration: option<objectLambdaConfiguration>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetAccessPointConfigurationForObjectLambdaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccessPointForObjectLambda = {
  type t
  type request = {
    @as("Configuration") configuration: objectLambdaConfiguration,
    @as("Name") name: objectLambdaAccessPointName,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("ObjectLambdaAccessPointArn")
    objectLambdaAccessPointArn: option<objectLambdaAccessPointArn>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "CreateAccessPointForObjectLambdaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutStorageLensConfiguration = {
  type t
  type request = {
    @as("Tags") tags: option<storageLensTags>,
    @as("StorageLensConfiguration") storageLensConfiguration: storageLensConfiguration,
    @as("AccountId") accountId: accountId,
    @as("ConfigId") configId: configId,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutStorageLensConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetStorageLensConfiguration = {
  type t
  type request = {
    @as("AccountId") accountId: accountId,
    @as("ConfigId") configId: configId,
  }
  type response = {
    @as("StorageLensConfiguration") storageLensConfiguration: option<storageLensConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetStorageLensConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketLifecycleConfiguration = {
  type t
  type request = {
    @as("Bucket") bucket: bucketName,
    @as("AccountId") accountId: accountId,
  }
  type response = {@as("Rules") rules: option<lifecycleRules>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketLifecycleConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketLifecycleConfiguration = {
  type t
  type request = {
    @as("LifecycleConfiguration") lifecycleConfiguration: option<lifecycleConfiguration>,
    @as("Bucket") bucket: bucketName,
    @as("AccountId") accountId: accountId,
  }

  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketLifecycleConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateJob = {
  type t
  type request = {
    @as("Tags") tags: option<s3TagSet>,
    @as("RoleArn") roleArn: iamroleArn,
    @as("Priority") priority: jobPriority,
    @as("Description") description: option<nonEmptyMaxLength256String>,
    @as("Manifest") manifest: jobManifest,
    @as("ClientRequestToken") clientRequestToken: nonEmptyMaxLength64String,
    @as("Report") report: jobReport,
    @as("Operation") operation: jobOperation,
    @as("ConfirmationRequired") confirmationRequired: option<confirmationRequired>,
    @as("AccountId") accountId: accountId,
  }
  type response = {@as("JobId") jobId: option<jobId>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "CreateJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJob = {
  type t
  type request = {
    @as("JobId") jobId: jobId,
    @as("AccountId") accountId: accountId,
  }
  type response = {@as("Job") job: option<jobDescriptor>}
  @module("@aws-sdk/client-s3") @new external new: request => t = "DescribeJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
