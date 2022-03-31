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
@ocaml.doc("<p>Configuration for the use of SSE-S3 to encrypt generated manifest objects.</p>")
type sses3Encryption = {.}
@ocaml.doc("<p></p>") type sses3 = {.}
type ssekmskeyId = string
type s3StorageClass = [
  | @as("GLACIER_IR") #GLACIER_IR
  | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE
  | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING
  | @as("GLACIER") #GLACIER
  | @as("ONEZONE_IA") #ONEZONE_IA
  | @as("STANDARD_IA") #STANDARD_IA
  | @as("STANDARD") #STANDARD
]
type s3SSEAlgorithm = [@as("KMS") #KMS | @as("AES256") #AES256]
@ocaml.doc("<p>Directs the specified job to invoke <code>ReplicateObject</code> on every object in the job's
         manifest.</p>")
type s3ReplicateObjectOperation = {.}
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
@ocaml.doc("<p>Contains no configuration parameters because the DELETE Object tagging API only accepts
         the bucket name and key name as parameters, which are defined in the job's manifest.</p>")
type s3DeleteObjectTaggingOperation = {.}
type s3ContentLength = float
type s3ChecksumAlgorithm = [
  | @as("SHA256") #SHA256
  | @as("SHA1") #SHA1
  | @as("CRC32C") #CRC32C
  | @as("CRC32") #CRC32
]
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
type replicationStatus = [
  | @as("NONE") #NONE
  | @as("REPLICA") #REPLICA
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
]
type regionName = string
type publicAccessBlockEnabled = bool
type prefix = string
type policy = string
type outputSchemaVersion = [@as("V_1") #V_1]
type operationName = [
  | @as("S3ReplicateObject") #S3ReplicateObject
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
type objectCreationTime = Js.Date.t
type nonEmptyMaxLength64String = string
type nonEmptyMaxLength256String = string
type nonEmptyMaxLength2048String = string
type nonEmptyMaxLength1024String = string
type noSuchPublicAccessBlockConfigurationMessage = string
type networkOrigin = [@as("VPC") #VPC | @as("Internet") #Internet]
type multiRegionAccessPointStatus = [
  | @as("DELETING") #DELETING
  | @as("PARTIALLY_DELETED") #PARTIALLY_DELETED
  | @as("PARTIALLY_CREATED") #PARTIALLY_CREATED
  | @as("CREATING") #CREATING
  | @as("INCONSISTENT_ACROSS_REGIONS") #INCONSISTENT_ACROSS_REGIONS
  | @as("READY") #READY
]
type multiRegionAccessPointName = string
type multiRegionAccessPointClientToken = string
type multiRegionAccessPointAlias = string
type minStorageBytesPercentage = float
type maxResults = int
type maxLength1024String = string
type manifestPrefixString = string
type location = string
type kmsKeyArnString = string
type jobTotalNumberOfTasks = float
type jobTimeInStateSeconds = float
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
type generatedManifestFormat = [
  | @as("S3InventoryReport_CSV_20211130") #S3InventoryReport_CSV_20211130
]
type functionArnString = string
type format = [@as("Parquet") #Parquet | @as("CSV") #CSV]
type expiredObjectDeleteMarker = bool
type expirationStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type exceptionMessage = string
type daysAfterInitiation = int
type days = int
type date = Js.Date.t
type creationTimestamp = Js.Date.t
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
type asyncRequestTokenARN = string
type asyncRequestStatus = string
type asyncOperationName = [
  | @as("PutMultiRegionAccessPointPolicy") #PutMultiRegionAccessPointPolicy
  | @as("DeleteMultiRegionAccessPoint") #DeleteMultiRegionAccessPoint
  | @as("CreateMultiRegionAccessPoint") #CreateMultiRegionAccessPoint
]
type asyncCreationTimestamp = Js.Date.t
type alias = string
type accountId = string
type accessPointName = string
@ocaml.doc("<p>The virtual private cloud (VPC) configuration for an access point.</p>")
type vpcConfiguration = {
  @ocaml.doc("<p>If this field is specified, this access point will only allow connections from the specified VPC
         ID.</p>")
  @as("VpcId")
  vpcId: vpcId,
}
@ocaml.doc("<p>Specifies when an object transitions to a specified storage class. For more information
         about Amazon S3 Lifecycle configuration rules, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html\">
            Transitioning objects using Amazon S3 Lifecycle</a> in the
            <i>Amazon S3 User Guide</i>.</p>")
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
@ocaml.doc("<p></p>")
type storageLensTag = {
  @ocaml.doc("<p></p>") @as("Value") value: tagValueString,
  @ocaml.doc("<p></p>") @as("Key") key: tagKeyString,
}
@ocaml.doc("<p>The Amazon Web Services organization for your S3 Storage Lens.</p>")
type storageLensAwsOrg = {
  @ocaml.doc("<p>A container for the Amazon Resource Name (ARN) of the Amazon Web Services organization. This property
         is read-only and follows the following format: <code>
               arn:aws:organizations:<i>us-east-1</i>:<i>example-account-id</i>:organization/<i>o-ex2l495dck</i>
            </code>
         </p>")
  @as("Arn")
  arn: awsOrgArn,
}
@ocaml.doc("<p></p>")
type selectionCriteria = {
  @ocaml.doc("<p>The minimum number of storage bytes percentage whose metrics will be selected.</p>
         <note>
            <p>You must choose a value greater than or equal to <code>1.0</code>.</p>
         </note>")
  @as("MinStorageBytesPercentage")
  minStorageBytesPercentage: option<minStorageBytesPercentage>,
  @ocaml.doc("<p>The max depth of the selection criteria</p>") @as("MaxDepth")
  maxDepth: option<storageLensPrefixLevelMaxDepth>,
  @ocaml.doc("<p>A container for the delimiter of the selection criteria being used.</p>")
  @as("Delimiter")
  delimiter: option<storageLensPrefixLevelDelimiter>,
}
@ocaml.doc("<p>Configuration for the use of SSE-KMS to encrypt generated manifest objects.</p>")
type ssekmsencryption = {
  @ocaml.doc("<p>Specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric customer managed
         key to use for encrypting generated manifest objects.</p>")
  @as("KeyId")
  keyId: kmsKeyArnString,
}
@ocaml.doc("<p></p>")
type ssekms = {
  @ocaml.doc("<p>A container for the ARN of the SSE-KMS encryption. This property is read-only and
         follows the following format: <code>
               arn:aws:kms:<i>us-east-1</i>:<i>example-account-id</i>:key/<i>example-9a73-4afc-8d29-8f5900cef44e</i>
            </code>
         </p>")
  @as("KeyId")
  keyId: ssekmskeyId,
}
type s3UserMetadata = Js.Dict.t<maxLength1024String>
@ocaml.doc("<p></p>")
type s3Tag = {
  @ocaml.doc("<p></p>") @as("Value") value: tagValueString,
  @ocaml.doc("<p></p>") @as("Key") key: tagKeyString,
}
@ocaml.doc("<p>Contains the S3 Object Lock retention mode to be applied to all objects in the
         S3 Batch Operations job. If you don't provide <code>Mode</code> and <code>RetainUntilDate</code>
         data types in your operation, you will remove the retention from your objects. For more
         information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html\">Using S3 Object Lock retention
            with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>")
type s3Retention = {
  @ocaml.doc("<p>The Object Lock retention mode to be applied to all objects in the Batch Operations
         job.</p>")
  @as("Mode")
  mode: option<s3ObjectLockRetentionMode>,
  @ocaml.doc("<p>The date when the applied Object Lock retention will expire on all objects set by the
         Batch Operations job.</p>")
  @as("RetainUntilDate")
  retainUntilDate: option<timeStamp>,
}
@ocaml.doc("<p></p>")
type s3ObjectOwner = {
  @ocaml.doc("<p></p>") @as("DisplayName") displayName: option<nonEmptyMaxLength1024String>,
  @ocaml.doc("<p></p>") @as("ID") id: option<nonEmptyMaxLength1024String>,
}
@ocaml.doc("<p>Whether S3 Object Lock legal hold will be applied to objects in an S3 Batch Operations
         job.</p>")
type s3ObjectLockLegalHold = {
  @ocaml.doc("<p>The Object Lock legal hold status to be applied to all objects in the Batch Operations
         job.</p>")
  @as("Status")
  status: s3ObjectLockLegalHoldStatus,
}
@ocaml.doc("<p>Contains the configuration parameters for an S3 Initiate Restore Object job.
         S3 Batch Operations passes every object to the underlying POST Object restore API. For more
         information about the parameters for this operation, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPOSTrestore.html#RESTObjectPOSTrestore-restore-request\">RestoreObject</a>.</p>")
type s3InitiateRestoreObjectOperation = {
  @ocaml.doc("<p>S3 Batch Operations supports <code>STANDARD</code> and <code>BULK</code> retrieval tiers, but
         not the <code>EXPEDITED</code> retrieval tier.</p>")
  @as("GlacierJobTier")
  glacierJobTier: option<s3GlacierJobTier>,
  @ocaml.doc("<p>This argument specifies how long the S3 Glacier or S3 Glacier Deep Archive object remains
         available in Amazon S3. S3 Initiate Restore Object jobs that target S3 Glacier and S3 Glacier Deep Archive
         objects require <code>ExpirationInDays</code> set to 1 or greater.</p>
         <p>Conversely, do <i>not</i> set <code>ExpirationInDays</code> when creating
         S3 Initiate Restore Object jobs that target S3 Intelligent-Tiering Archive Access and
         Deep Archive Access tier objects. Objects in S3 Intelligent-Tiering archive access tiers are
         not subject to restore expiry, so specifying <code>ExpirationInDays</code> results in
         restore request failure.</p>
         <p>S3 Batch Operations jobs can operate either on S3 Glacier and S3 Glacier Deep Archive storage class
         objects or on S3 Intelligent-Tiering Archive Access and Deep Archive Access storage tier
         objects, but not both types in the same job. If you need to restore objects of both types
         you <i>must</i> create separate Batch Operations jobs. </p>")
  @as("ExpirationInDays")
  expirationInDays: option<s3ExpirationInDays>,
}
@ocaml.doc("<p></p>")
type s3Grantee = {
  @ocaml.doc("<p></p>") @as("DisplayName") displayName: option<nonEmptyMaxLength1024String>,
  @ocaml.doc("<p></p>") @as("Identifier") identifier: option<nonEmptyMaxLength1024String>,
  @ocaml.doc("<p></p>") @as("TypeIdentifier") typeIdentifier: option<s3GranteeTypeIdentifier>,
}
type replicationStatusFilterList = array<replicationStatus>
type regions = array<s3AWSRegion>
@ocaml.doc("<p>The container for the regional bucket.</p>")
type regionalBucket = {
  @ocaml.doc("<p>The Outposts ID of the regional bucket.</p>") @as("OutpostId")
  outpostId: option<nonEmptyMaxLength64String>,
  @ocaml.doc("<p>The creation date of the regional bucket</p>") @as("CreationDate")
  creationDate: creationDate,
  @ocaml.doc("<p></p>") @as("PublicAccessBlockEnabled")
  publicAccessBlockEnabled: publicAccessBlockEnabled,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the regional bucket.</p>") @as("BucketArn")
  bucketArn: option<s3RegionalBucketArn>,
  @ocaml.doc("<p></p>") @as("Bucket") bucket: bucketName,
}
@ocaml.doc(
  "<p>A combination of a bucket and Region that's part of a Multi-Region Access Point.</p>"
)
type regionReport = {
  @ocaml.doc("<p>The name of the Region.</p>") @as("Region") region: option<regionName>,
  @ocaml.doc("<p>The name of the bucket.</p>") @as("Bucket") bucket: option<bucketName>,
}
@ocaml.doc(
  "<p>A Region that supports a Multi-Region Access Point as well as the associated bucket for the Region.</p>"
)
type region = {
  @ocaml.doc("<p>The name of the associated bucket for the Region.</p>") @as("Bucket")
  bucket: bucketName,
}
@ocaml.doc(
  "<p>A container for the information associated with a <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPoint.html\">PutMultiRegionAccessPoint</a> request.</p>"
)
type putMultiRegionAccessPointPolicyInput = {
  @ocaml.doc("<p>The policy details for the <code>PutMultiRegionAccessPoint</code> request.</p>")
  @as("Policy")
  policy: policy,
  @ocaml.doc("<p>The name of the Multi-Region Access Point associated with the request.</p>")
  @as("Name")
  name: multiRegionAccessPointName,
}
@ocaml.doc("<p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
         account. You can enable the configuration options in any combination. For more information
         about when Amazon S3 considers a bucket or object public, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status\">The Meaning of \"Public\"</a> in the <i>Amazon S3 User Guide</i>.</p>
         <p>This is not supported for Amazon S3 on Outposts.</p>")
type publicAccessBlockConfiguration = {
  @ocaml.doc("<p>Specifies whether Amazon S3 should restrict public bucket policies for buckets in this
         account. Setting this element to <code>TRUE</code> restricts access to buckets with public
         policies to only Amazon Web Service principals and authorized users within this
         account.</p>
         <p>Enabling this setting doesn't affect previously stored bucket policies, except that
         public and cross-account access within any public bucket policy, including non-public
         delegation to specific accounts, is blocked.</p>
         <p>This is not supported for Amazon S3 on Outposts.</p>")
  @as("RestrictPublicBuckets")
  restrictPublicBuckets: option<setting>,
  @ocaml.doc("<p>Specifies whether Amazon S3 should block public bucket policies for buckets in this account.
         Setting this element to <code>TRUE</code> causes Amazon S3 to reject calls to PUT Bucket
         policy if the specified bucket policy allows public access. </p>
         <p>Enabling this setting doesn't affect existing bucket policies.</p>
         <p>This is not supported for Amazon S3 on Outposts.</p>")
  @as("BlockPublicPolicy")
  blockPublicPolicy: option<setting>,
  @ocaml.doc("<p>Specifies whether Amazon S3 should ignore public ACLs for buckets in this account. Setting
         this element to <code>TRUE</code> causes Amazon S3 to ignore all public ACLs on buckets in
         this account and any objects that they contain. </p>
         <p>Enabling this setting doesn't affect the persistence of any existing ACLs and doesn't
         prevent new public ACLs from being set.</p>
         <p>This is not supported for Amazon S3 on Outposts.</p>")
  @as("IgnorePublicAcls")
  ignorePublicAcls: option<setting>,
  @ocaml.doc("<p>Specifies whether Amazon S3 should block public access control lists (ACLs) for buckets
         in this account. Setting this element to <code>TRUE</code> causes the following
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
         <p>Enabling this setting doesn't affect existing policies or ACLs.</p>
         <p>This is not supported for Amazon S3 on Outposts.</p>")
  @as("BlockPublicAcls")
  blockPublicAcls: option<setting>,
}
@ocaml.doc("<p>The proposed access control policy for the Multi-Region Access Point.</p>
         <p>When you update the policy, the update is first listed as the proposed policy. After the
         update is finished and all Regions have been updated, the proposed policy is listed as the
         established policy. If both policies have the same version number, the proposed policy is
         the established policy.</p>")
type proposedMultiRegionAccessPointPolicy = {
  @ocaml.doc("<p>The details of the proposed policy.</p>") @as("Policy") policy: option<policy>,
}
@ocaml.doc("<p>Indicates whether this access point policy is public. For more information about how Amazon S3
         evaluates policies to determine whether they are public, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status\">The Meaning of \"Public\"</a> in the <i>Amazon S3 User Guide</i>. </p>")
type policyStatus = {@ocaml.doc("<p></p>") @as("IsPublic") isPublic: option<isPublic>}
type objectLambdaTransformationConfigurationActionsList = array<
  objectLambdaTransformationConfigurationAction,
>
type objectLambdaAllowedFeaturesList = array<objectLambdaAllowedFeature>
@ocaml.doc("<p>An access point with an attached Lambda function used to access transformed data from an Amazon S3
         bucket.</p>")
type objectLambdaAccessPoint = {
  @ocaml.doc("<p>Specifies the ARN for the Object Lambda Access Point.</p>")
  @as("ObjectLambdaAccessPointArn")
  objectLambdaAccessPointArn: option<objectLambdaAccessPointArn>,
  @ocaml.doc("<p>The name of the Object Lambda Access Point.</p>") @as("Name")
  name: objectLambdaAccessPointName,
}
@ocaml.doc("<p>The container for the noncurrent version transition.</p>")
type noncurrentVersionTransition = {
  @ocaml.doc("<p>The class of storage used to store the object.</p>") @as("StorageClass")
  storageClass: option<transitionStorageClass>,
  @ocaml.doc("<p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the
         associated action. For information about the noncurrent days calculations, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations\"> How
            Amazon S3 Calculates How Long an Object Has Been Noncurrent</a> in the
            <i>Amazon S3 User Guide</i>.</p>")
  @as("NoncurrentDays")
  noncurrentDays: option<days>,
}
@ocaml.doc("<p>The container of the noncurrent version expiration.</p>")
type noncurrentVersionExpiration = {
  @ocaml.doc("<p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the
         associated action. For information about the noncurrent days calculations, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations\">How
            Amazon S3 Calculates When an Object Became Noncurrent</a> in the
            <i>Amazon S3 User Guide</i>.</p>")
  @as("NoncurrentDays")
  noncurrentDays: option<days>,
}
@ocaml.doc("<p>Status information for a single Multi-Region Access Point Region.</p>")
type multiRegionAccessPointRegionalResponse = {
  @ocaml.doc("<p>The current status of the Multi-Region Access Point in this Region.</p>")
  @as("RequestStatus")
  requestStatus: option<asyncRequestStatus>,
  @ocaml.doc("<p>The name of the Region in the Multi-Region Access Point.</p>") @as("Name")
  name: option<regionName>,
}
@ocaml.doc("<p>Part of <code>ListStorageLensConfigurationResult</code>. Each entry includes the
         description of the S3 Storage Lens configuration, its home Region, whether it is enabled, its
         Amazon Resource Name (ARN), and config ID.</p>")
type listStorageLensConfigurationEntry = {
  @ocaml.doc("<p>A container for whether the S3 Storage Lens configuration is enabled. This property is
         required.</p>")
  @as("IsEnabled")
  isEnabled: option<isEnabled>,
  @ocaml.doc("<p>A container for the S3 Storage Lens home Region. Your metrics data is stored and retained in
         your designated S3 Storage Lens home Region.</p>")
  @as("HomeRegion")
  homeRegion: s3AWSRegion,
  @ocaml.doc("<p>The ARN of the S3 Storage Lens configuration. This property is read-only.</p>")
  @as("StorageLensArn")
  storageLensArn: storageLensArn,
  @ocaml.doc("<p>A container for the S3 Storage Lens configuration ID.</p>") @as("Id") id: configId,
}
@ocaml.doc("<p>The container of the Outposts bucket lifecycle expiration.</p>")
type lifecycleExpiration = {
  @ocaml.doc("<p>Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set
         to true, the delete marker will be expired. If set to false, the policy takes no action.
         This cannot be specified with Days or Date in a Lifecycle Expiration Policy.</p>")
  @as("ExpiredObjectDeleteMarker")
  expiredObjectDeleteMarker: option<expiredObjectDeleteMarker>,
  @ocaml.doc("<p>Indicates the lifetime, in days, of the objects that are subject to the rule. The value
         must be a non-zero positive integer.</p>")
  @as("Days")
  days: option<days>,
  @ocaml.doc("<p>Indicates at what date the object is to be deleted. Should be in GMT ISO 8601
         format.</p>")
  @as("Date")
  date: option<date>,
}
@ocaml.doc(
  "<p>Contains the configuration parameters for a <code>Lambda Invoke</code> operation.</p>"
)
type lambdaInvokeOperation = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the Lambda function that the specified job will
         invoke on every object in the manifest.</p>")
  @as("FunctionArn")
  functionArn: option<functionArnString>,
}
@ocaml.doc("<p>Provides timing details for the job.</p>")
type jobTimers = {
  @ocaml.doc(
    "<p>Indicates the elapsed time in seconds the job has been in the Active job state.</p>"
  )
  @as("ElapsedTimeInActiveSeconds")
  elapsedTimeInActiveSeconds: option<jobTimeInStateSeconds>,
}
type jobStatusList = array<jobStatus>
@ocaml.doc("<p>Contains the configuration parameters for a job-completion report.</p>")
type jobReport = {
  @ocaml.doc("<p>Indicates whether the job-completion report will include details of all tasks or only
         failed tasks.</p>")
  @as("ReportScope")
  reportScope: option<jobReportScope>,
  @ocaml.doc("<p>An optional prefix to describe where in the specified bucket the job-completion report
         will be stored. Amazon S3 stores the job-completion report at
            <code><prefix>/job-<job-id>/report.json</code>.</p>")
  @as("Prefix")
  prefix: option<reportPrefixString>,
  @ocaml.doc("<p>Indicates whether the specified job will generate a job-completion report.</p>")
  @as("Enabled")
  enabled: boolean_,
  @ocaml.doc("<p>The format of the specified job-completion report.</p>") @as("Format")
  format: option<jobReportFormat>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the bucket where specified job-completion report will
         be stored.</p>")
  @as("Bucket")
  bucket: option<s3BucketArnString>,
}
@ocaml.doc("<p>Contains the information required to locate a manifest object.</p>")
type jobManifestLocation = {
  @ocaml.doc("<p>The ETag for the specified manifest object.</p>") @as("ETag")
  etag: nonEmptyMaxLength1024String,
  @ocaml.doc(
    "<p>The optional version ID to identify a specific version of the manifest object.</p>"
  )
  @as("ObjectVersionId")
  objectVersionId: option<s3ObjectVersionId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for a manifest object.</p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("ObjectArn")
  objectArn: s3KeyArnString,
}
type jobManifestFieldList = array<jobManifestFieldName>
@ocaml.doc("<p>If this job failed, this element indicates why the job failed.</p>")
type jobFailure = {
  @ocaml.doc("<p>The failure reason, if any, for the specified job.</p>") @as("FailureReason")
  failureReason: option<jobFailureReason>,
  @ocaml.doc("<p>The failure code, if any, for the specified job.</p>") @as("FailureCode")
  failureCode: option<jobFailureCode>,
}
@ocaml.doc("<p>The last established access control policy for a Multi-Region Access Point.</p>
         <p>When you update the policy, the update is first listed as the proposed policy. After the
         update is finished and all Regions have been updated, the proposed policy is listed as the
         established policy. If both policies have the same version number, the proposed policy is
         the established policy.</p>")
type establishedMultiRegionAccessPointPolicy = {
  @ocaml.doc("<p>The details of the last established policy.</p>") @as("Policy")
  policy: option<policy>,
}
type endpoints = Js.Dict.t<nonEmptyMaxLength1024String>
@ocaml.doc(
  "<p>A container for the information associated with a <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html\">DeleteMultiRegionAccessPoint</a> request.</p>"
)
type deleteMultiRegionAccessPointInput = {
  @ocaml.doc("<p>The name of the Multi-Region Access Point associated with this request.</p>")
  @as("Name")
  name: multiRegionAccessPointName,
}
@ocaml.doc("<p>The container for the bucket configuration.</p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
type createBucketConfiguration = {
  @ocaml.doc("<p>Specifies the Region where the bucket will be created. If you are creating a bucket on
         the US East (N. Virginia) Region (us-east-1), you do not need to specify the location. </p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
  @as("LocationConstraint")
  locationConstraint: option<bucketLocationConstraint>,
}
@ocaml.doc("<p>A container for enabling Amazon CloudWatch publishing for S3 Storage Lens metrics.</p>
         <p>For more information about publishing S3 Storage Lens metrics to CloudWatch, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_view_metrics_cloudwatch.html\">Monitor
            S3 Storage Lens metrics in CloudWatch</a> in the <i>Amazon S3 User Guide</i>.</p>")
type cloudWatchMetrics = {
  @ocaml.doc("<p>A container that indicates whether CloudWatch publishing for S3 Storage Lens metrics is enabled. A
         value of <code>true</code> indicates that CloudWatch publishing for S3 Storage Lens metrics is
         enabled.</p>")
  @as("IsEnabled")
  isEnabled: isEnabled,
}
type buckets = array<s3BucketArnString>
@ocaml.doc(
  "<p>Lambda function used to transform objects through an Object Lambda Access Point.</p>"
)
type awsLambdaTransformation = {
  @ocaml.doc("<p>Additional JSON that provides supplemental data to the Lambda function used to transform
         objects.</p>")
  @as("FunctionPayload")
  functionPayload: option<awsLambdaTransformationPayload>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Lambda function.</p>") @as("FunctionArn")
  functionArn: functionArnString,
}
@ocaml.doc("<p>Error details for the failed asynchronous operation.</p>")
type asyncErrorDetails = {
  @ocaml.doc("<p>The ID of the request associated with the error.</p>") @as("RequestId")
  requestId: option<maxLength1024String>,
  @ocaml.doc("<p>The identifier of the resource associated with the error.</p>") @as("Resource")
  resource: option<maxLength1024String>,
  @ocaml.doc("<p>A generic descritpion of the error condition in English.</p>") @as("Message")
  message: option<maxLength1024String>,
  @ocaml.doc("<p>A string that uniquely identifies the error condition.</p>") @as("Code")
  code: option<maxLength1024String>,
}
@ocaml.doc("<p>A container for the activity metrics.</p>")
type activityMetrics = {
  @ocaml.doc("<p>A container for whether the activity metrics are enabled.</p>") @as("IsEnabled")
  isEnabled: option<isEnabled>,
}
@ocaml.doc("<p>The container for abort incomplete multipart upload</p>")
type abortIncompleteMultipartUpload = {
  @ocaml.doc("<p>Specifies the number of days after which Amazon S3 aborts an incomplete multipart upload to
         the Outposts bucket.</p>")
  @as("DaysAfterInitiation")
  daysAfterInitiation: option<daysAfterInitiation>,
}
type transitionList = array<transition>
type storageLensTags = array<storageLensTag>
@ocaml.doc("<p>A container for the encryption of the S3 Storage Lens metrics exports.</p>")
type storageLensDataExportEncryption = {
  @ocaml.doc("<p></p>") @as("SSEKMS") ssekms: option<ssekms>,
  @ocaml.doc("<p></p>") @as("SSES3") sses3: option<sses3>,
}
type storageLensConfigurationList = array<listStorageLensConfigurationEntry>
type s3TagSet = array<s3Tag>
@ocaml.doc("<p>Contains the configuration parameters for the Object Lock retention action for an
         S3 Batch Operations job. Batch Operations passes every object to the underlying
            <code>PutObjectRetention</code> API. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html\">Using
            S3 Object Lock retention with S3 Batch Operations</a> in the
            <i>Amazon S3 User Guide</i>.</p>")
type s3SetObjectRetentionOperation = {
  @ocaml.doc("<p>Contains the Object Lock retention mode to be applied to all objects in the Batch Operations
         job. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html\">Using S3 Object Lock retention
            with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>")
  @as("Retention")
  retention: s3Retention,
  @ocaml.doc("<p>Indicates if the action should be applied to objects in the Batch Operations job even if they
         have Object Lock <code> GOVERNANCE</code> type in place.</p>")
  @as("BypassGovernanceRetention")
  bypassGovernanceRetention: option<boolean_>,
}
@ocaml.doc("<p>Contains the configuration for an S3 Object Lock legal hold operation that an
         S3 Batch Operations job passes every object to the underlying <code>PutObjectLegalHold</code>
         API. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-legal-hold.html\">Using S3 Object Lock legal hold
            with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>")
type s3SetObjectLegalHoldOperation = {
  @ocaml.doc("<p>Contains the Object Lock legal hold status to be applied to all objects in the
         Batch Operations job.</p>")
  @as("LegalHold")
  legalHold: s3ObjectLockLegalHold,
}
@ocaml.doc("<p></p>")
type s3ObjectMetadata = {
  @ocaml.doc("<p></p>") @as("SSEAlgorithm") ssealgorithm: option<s3SSEAlgorithm>,
  @ocaml.doc("<p></p>") @as("RequesterCharged") requesterCharged: option<boolean_>,
  @ocaml.doc("<p></p>") @as("HttpExpiresDate") httpExpiresDate: option<timeStamp>,
  @ocaml.doc("<p></p>") @as("ContentType") contentType: option<nonEmptyMaxLength1024String>,
  @ocaml.doc("<p></p>") @as("ContentMD5") contentMD5: option<nonEmptyMaxLength1024String>,
  @ocaml.doc("<p></p>") @as("ContentLength") contentLength: option<s3ContentLength>,
  @ocaml.doc("<p></p>") @as("UserMetadata") userMetadata: option<s3UserMetadata>,
  @ocaml.doc("<p></p>") @as("ContentLanguage") contentLanguage: option<nonEmptyMaxLength1024String>,
  @ocaml.doc("<p></p>") @as("ContentEncoding") contentEncoding: option<nonEmptyMaxLength1024String>,
  @ocaml.doc("<p></p>") @as("ContentDisposition")
  contentDisposition: option<nonEmptyMaxLength1024String>,
  @ocaml.doc("<p></p>") @as("CacheControl") cacheControl: option<nonEmptyMaxLength1024String>,
}
@ocaml.doc("<p></p>")
type s3Grant = {
  @ocaml.doc("<p></p>") @as("Permission") permission: option<s3Permission>,
  @ocaml.doc("<p></p>") @as("Grantee") grantee: option<s3Grantee>,
}
@ocaml.doc("<p>Describes the specified job's generated manifest. Batch Operations jobs created with a
         ManifestGenerator populate details of this descriptor after execution of the
         ManifestGenerator.</p>")
type s3GeneratedManifestDescriptor = {
  @as("Location") location: option<jobManifestLocation>,
  @ocaml.doc("<p>The format of the generated manifest.</p>") @as("Format")
  format: option<generatedManifestFormat>,
}
type regionalBucketList = array<regionalBucket>
type regionReportList = array<regionReport>
type regionCreationList = array<region>
@ocaml.doc("<p>A container for the prefix-level storage metrics for S3 Storage Lens.</p>")
type prefixLevelStorageMetrics = {
  @as("SelectionCriteria") selectionCriteria: option<selectionCriteria>,
  @ocaml.doc("<p>A container for whether prefix-level storage metrics are enabled.</p>")
  @as("IsEnabled")
  isEnabled: option<isEnabled>,
}
@ocaml.doc("<p>A container for AwsLambdaTransformation.</p>")
type objectLambdaContentTransformation = {
  @ocaml.doc("<p>A container for an Lambda function.</p>") @as("AwsLambda")
  awsLambda: option<awsLambdaTransformation>,
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
type multiRegionAccessPointRegionalResponseList = array<multiRegionAccessPointRegionalResponse>
@ocaml.doc("<p>The Multi-Region Access Point access control policy.</p>
         <p>When you update the policy, the update is first listed as the proposed policy. After the
         update is finished and all Regions have been updated, the proposed policy is listed as the
         established policy. If both policies have the same version number, the proposed policy is
         the established policy.</p>")
type multiRegionAccessPointPolicyDocument = {
  @ocaml.doc("<p>The proposed policy for the Multi-Region Access Point.</p>") @as("Proposed")
  proposed: option<proposedMultiRegionAccessPointPolicy>,
  @ocaml.doc("<p>The last established policy for the Multi-Region Access Point.</p>")
  @as("Established")
  established: option<establishedMultiRegionAccessPointPolicy>,
}
@ocaml.doc("<p>Describes the total number of tasks that the specified job has started, the number of
         tasks that succeeded, and the number of tasks that failed.</p>")
type jobProgressSummary = {
  @ocaml.doc("<p>The JobTimers attribute of a job's progress summary.</p>") @as("Timers")
  timers: option<jobTimers>,
  @ocaml.doc("<p></p>") @as("NumberOfTasksFailed")
  numberOfTasksFailed: option<jobNumberOfTasksFailed>,
  @ocaml.doc("<p></p>") @as("NumberOfTasksSucceeded")
  numberOfTasksSucceeded: option<jobNumberOfTasksSucceeded>,
  @ocaml.doc("<p></p>") @as("TotalNumberOfTasks") totalNumberOfTasks: option<jobTotalNumberOfTasks>,
}
@ocaml.doc("<p>Describes the format of a manifest. If the manifest is in CSV format, also describes the
         columns contained within the manifest.</p>")
type jobManifestSpec = {
  @ocaml.doc("<p>If the specified manifest object is in the <code>S3BatchOperations_CSV_20180820</code>
         format, this element describes which columns contain the required data.</p>")
  @as("Fields")
  fields: option<jobManifestFieldList>,
  @ocaml.doc("<p>Indicates which of the available formats the specified manifest uses.</p>")
  @as("Format")
  format: jobManifestFormat,
}
@ocaml.doc("<p>The filter used to describe a set of objects for the job's manifest.</p>")
type jobManifestGeneratorFilter = {
  @ocaml.doc("<p>If provided, the generated manifest should include only source bucket objects that have
         one of the specified Replication statuses.</p>")
  @as("ObjectReplicationStatuses")
  objectReplicationStatuses: option<replicationStatusFilterList>,
  @ocaml.doc("<p>If provided, the generated manifest should include only source bucket objects that were
         created before this time.</p>")
  @as("CreatedBefore")
  createdBefore: option<objectCreationTime>,
  @ocaml.doc("<p>If provided, the generated manifest should include only source bucket objects that were
         created after this time.</p>")
  @as("CreatedAfter")
  createdAfter: option<objectCreationTime>,
  @ocaml.doc("<p>Include objects in the generated manifest only if they are eligible for replication
         according to the Replication configuration on the source bucket.</p>")
  @as("EligibleForReplication")
  eligibleForReplication: option<boolean_>,
}
type jobFailureList = array<jobFailure>
@ocaml.doc("<p>A container for what Amazon S3 Storage Lens configuration includes.</p>")
type include_ = {
  @ocaml.doc("<p>A container for the S3 Storage Lens Region includes.</p>") @as("Regions")
  regions: option<regions>,
  @ocaml.doc("<p>A container for the S3 Storage Lens bucket includes.</p>") @as("Buckets")
  buckets: option<buckets>,
}
@ocaml.doc("<p>The encryption configuration to use when storing the generated manifest.</p>")
type generatedManifestEncryption = {
  @ocaml.doc("<p>Configuration details on how SSE-KMS is used to encrypt generated manifest
         objects.</p>")
  @as("SSEKMS")
  ssekms: option<ssekmsencryption>,
  @ocaml.doc("<p>Specifies the use of SSE-S3 to encrypt generated manifest objects.</p>")
  @as("SSES3")
  sses3: option<sses3Encryption>,
}
@ocaml.doc("<p>A container for what Amazon S3 Storage Lens will exclude.</p>")
type exclude = {
  @ocaml.doc("<p>A container for the S3 Storage Lens Region excludes.</p>") @as("Regions")
  regions: option<regions>,
  @ocaml.doc("<p>A container for the S3 Storage Lens bucket excludes.</p>") @as("Buckets")
  buckets: option<buckets>,
}
@ocaml.doc("<p>An access point used to access a bucket.</p>")
type accessPoint = {
  @ocaml.doc("<p>The name or alias of the access point.</p>") @as("Alias") alias: option<alias>,
  @ocaml.doc("<p>The ARN for the access point.</p>") @as("AccessPointArn")
  accessPointArn: option<s3AccessPointArn>,
  @ocaml.doc("<p>The name of the bucket associated with this access point.</p>") @as("Bucket")
  bucket: bucketName,
  @ocaml.doc("<p>The virtual private cloud (VPC) configuration for this access point, if one exists.</p>
         <note>
            <p>This element is empty if this access point is an Amazon S3 on Outposts access point that is used by other
               Amazon Web Services.</p>
         </note>")
  @as("VpcConfiguration")
  vpcConfiguration: option<vpcConfiguration>,
  @ocaml.doc("<p>Indicates whether this access point allows access from the public internet. If
            <code>VpcConfiguration</code> is specified for this access point, then
            <code>NetworkOrigin</code> is <code>VPC</code>, and the access point doesn't allow access from
         the public internet. Otherwise, <code>NetworkOrigin</code> is <code>Internet</code>, and
         the access point allows access from the public internet, subject to the access point and bucket access
         policies.</p>")
  @as("NetworkOrigin")
  networkOrigin: networkOrigin,
  @ocaml.doc("<p>The name of this access point.</p>") @as("Name") name: accessPointName,
}
@ocaml.doc("<p></p>")
type tagging = {@ocaml.doc("<p>A collection for a set of tags.</p>") @as("TagSet") tagSet: s3TagSet}
@ocaml.doc("<p>Contains the configuration parameters for a Set Object Tagging operation. S3 Batch Operations
         passes every object to the underlying PUT Object tagging API. For more information about
         the parameters for this operation, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTtagging.html\">PUT Object tagging</a>.</p>")
type s3SetObjectTaggingOperation = {@ocaml.doc("<p></p>") @as("TagSet") tagSet: option<s3TagSet>}
@ocaml.doc("<p>Location details for where the generated manifest should be written.</p>")
type s3ManifestOutputLocation = {
  @ocaml.doc("<p>The format of the generated manifest.</p>") @as("ManifestFormat")
  manifestFormat: generatedManifestFormat,
  @ocaml.doc("<p>Specifies what encryption should be used when the generated manifest objects are
         written.</p>")
  @as("ManifestEncryption")
  manifestEncryption: option<generatedManifestEncryption>,
  @ocaml.doc("<p>Prefix identifying one or more objects to which the manifest applies.</p>")
  @as("ManifestPrefix")
  manifestPrefix: option<manifestPrefixString>,
  @ocaml.doc("<p>The bucket ARN the generated manifest should be written to.</p>") @as("Bucket")
  bucket: s3BucketArnString,
  @ocaml.doc("<p>The Account ID that owns the bucket the generated manifest is written to.</p>")
  @as("ExpectedManifestBucketOwner")
  expectedManifestBucketOwner: option<accountId>,
}
type s3GrantList = array<s3Grant>
@ocaml.doc("<p>A container for the bucket where the Amazon S3 Storage Lens metrics export files are
         located.</p>")
type s3BucketDestination = {
  @ocaml.doc("<p>The container for the type encryption of the metrics exports in this bucket.</p>")
  @as("Encryption")
  encryption: option<storageLensDataExportEncryption>,
  @ocaml.doc(
    "<p>The prefix of the destination bucket where the metrics export will be delivered.</p>"
  )
  @as("Prefix")
  prefix: option<prefix>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bucket. This property is read-only and follows the
         following format: <code>
               arn:aws:s3:<i>us-east-1</i>:<i>example-account-id</i>:bucket/<i>your-destination-bucket-name</i>
            </code>
         </p>")
  @as("Arn")
  arn: s3BucketArnString,
  @ocaml.doc("<p>The account ID of the owner of the S3 Storage Lens metrics export bucket.</p>")
  @as("AccountId")
  accountId: accountId,
  @ocaml.doc("<p>The schema version of the export file.</p>") @as("OutputSchemaVersion")
  outputSchemaVersion: outputSchemaVersion,
  @ocaml.doc("<p></p>") @as("Format") format: format,
}
@ocaml.doc("<p>A container for the prefix-level configuration.</p>")
type prefixLevel = {
  @ocaml.doc("<p>A container for the prefix-level storage metrics for S3 Storage Lens.</p>")
  @as("StorageMetrics")
  storageMetrics: prefixLevelStorageMetrics,
}
@ocaml.doc(
  "<p>A configuration used when creating an Object Lambda Access Point transformation.</p>"
)
type objectLambdaTransformationConfiguration = {
  @ocaml.doc(
    "<p>A container for the content transformation of an Object Lambda Access Point configuration.</p>"
  )
  @as("ContentTransformation")
  contentTransformation: objectLambdaContentTransformation,
  @ocaml.doc("<p>A container for the action of an Object Lambda Access Point configuration. Valid input is
            <code>GetObject</code>.</p>")
  @as("Actions")
  actions: objectLambdaTransformationConfigurationActionsList,
}
@ocaml.doc(
  "<p>The Multi-Region Access Point details that are returned when querying about an asynchronous request.</p>"
)
type multiRegionAccessPointsAsyncResponse = {
  @ocaml.doc("<p>A collection of status information for the different Regions that a Multi-Region Access Point
         supports.</p>")
  @as("Regions")
  regions: option<multiRegionAccessPointRegionalResponseList>,
}
@ocaml.doc(
  "<p>A collection of statuses for a Multi-Region Access Point in the various Regions it supports.</p>"
)
type multiRegionAccessPointReport = {
  @ocaml.doc(
    "<p>A collection of the Regions and buckets associated with the Multi-Region Access Point.</p>"
  )
  @as("Regions")
  regions: option<regionReportList>,
  @ocaml.doc("<p>The current status of the Multi-Region Access Point.</p>
         <p>
            <code>CREATING</code> and <code>DELETING</code> are temporary states that exist while
         the request is propogating and being completed. If a Multi-Region Access Point has a status of
            <code>PARTIALLY_CREATED</code>, you can retry creation or send a request to delete the
         Multi-Region Access Point. If a Multi-Region Access Point has a status of <code>PARTIALLY_DELETED</code>, you can retry a delete
         request to finish the deletion of the Multi-Region Access Point.</p>")
  @as("Status")
  status: option<multiRegionAccessPointStatus>,
  @as("PublicAccessBlock") publicAccessBlock: option<publicAccessBlockConfiguration>,
  @ocaml.doc("<p>When the Multi-Region Access Point create request was received.</p>")
  @as("CreatedAt")
  createdAt: option<creationTimestamp>,
  @ocaml.doc("<p>The alias for the Multi-Region Access Point. For more information about the distinction between the name
         and the alias of an Multi-Region Access Point, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming\">Managing Multi-Region Access Points</a>.</p>")
  @as("Alias")
  alias: option<multiRegionAccessPointAlias>,
  @ocaml.doc("<p>The name of the Multi-Region Access Point.</p>") @as("Name")
  name: option<multiRegionAccessPointName>,
}
@ocaml.doc("<p>The container for the Outposts bucket lifecycle rule and operator.</p>")
type lifecycleRuleAndOperator = {
  @ocaml.doc("<p>All of these tags must exist in the object's tag set in order for the rule to
         apply.</p>")
  @as("Tags")
  tags: option<s3TagSet>,
  @ocaml.doc("<p>Prefix identifying one or more objects to which the rule applies.</p>")
  @as("Prefix")
  prefix: option<prefix>,
}
@ocaml.doc("<p>Contains the configuration information for a job's manifest.</p>")
type jobManifest = {
  @ocaml.doc("<p>Contains the information required to locate the specified job's manifest.</p>")
  @as("Location")
  location: jobManifestLocation,
  @ocaml.doc("<p>Describes the format of the specified job's manifest. If the manifest is in CSV format,
         also describes the columns contained within the manifest.</p>")
  @as("Spec")
  spec: jobManifestSpec,
}
@ocaml.doc("<p>Contains the configuration and status information for a single job retrieved as part of
         a job list.</p>")
type jobListDescriptor = {
  @ocaml.doc("<p>Describes the total number of tasks that the specified job has run, the number of tasks
         that succeeded, and the number of tasks that failed.</p>")
  @as("ProgressSummary")
  progressSummary: option<jobProgressSummary>,
  @ocaml.doc("<p>A timestamp indicating when the specified job terminated. A job's termination date is
         the date and time when it succeeded, failed, or was canceled.</p>")
  @as("TerminationDate")
  terminationDate: option<jobTerminationDate>,
  @ocaml.doc("<p>A timestamp indicating when the specified job was created.</p>")
  @as("CreationTime")
  creationTime: option<jobCreationTime>,
  @ocaml.doc("<p>The specified job's current status.</p>") @as("Status") status: option<jobStatus>,
  @ocaml.doc("<p>The current priority for the specified job.</p>") @as("Priority")
  priority: option<jobPriority>,
  @ocaml.doc("<p>The operation that the specified job is configured to run on every object listed in the
         manifest.</p>")
  @as("Operation")
  operation: option<operationName>,
  @ocaml.doc("<p>The user-specified description that was included in the specified job's <code>Create
            Job</code> request.</p>")
  @as("Description")
  description: option<nonEmptyMaxLength256String>,
  @ocaml.doc("<p>The ID for the specified job.</p>") @as("JobId") jobId: option<jobId>,
}
@ocaml.doc(
  "<p>A container for the information associated with a <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html\">CreateMultiRegionAccessPoint</a> request. </p>"
)
type createMultiRegionAccessPointInput = {
  @ocaml.doc(
    "<p>The buckets in different Regions that are associated with the Multi-Region Access Point.</p>"
  )
  @as("Regions")
  regions: regionCreationList,
  @as("PublicAccessBlock") publicAccessBlock: option<publicAccessBlockConfiguration>,
  @ocaml.doc("<p>The name of the Multi-Region Access Point associated with this request.</p>")
  @as("Name")
  name: multiRegionAccessPointName,
}
type accessPointList = array<accessPoint>
@ocaml.doc("<p>A container to specify the properties of your S3 Storage Lens metrics export, including the
         destination, schema, and format.</p>")
type storageLensDataExport = {
  @ocaml.doc(
    "<p>A container for enabling Amazon CloudWatch publishing for S3 Storage Lens metrics.</p>"
  )
  @as("CloudWatchMetrics")
  cloudWatchMetrics: option<cloudWatchMetrics>,
  @ocaml.doc("<p>A container for the bucket where the S3 Storage Lens metrics export will be located.</p>
         <note>
            <p>This bucket must be located in the same Region as the storage lens configuration.
         </p>
         </note>")
  @as("S3BucketDestination")
  s3BucketDestination: option<s3BucketDestination>,
}
@ocaml.doc("<p>The container for the service that will create the S3 manifest.</p>")
type s3JobManifestGenerator = {
  @ocaml.doc("<p>Determines whether or not to write the job's generated manifest to a bucket.</p>")
  @as("EnableManifestOutput")
  enableManifestOutput: boolean_,
  @ocaml.doc("<p>Specifies rules the S3JobManifestGenerator should use to use to decide whether an object
         in the source bucket should or should not be included in the generated job manifest.</p>")
  @as("Filter")
  filter: option<jobManifestGeneratorFilter>,
  @ocaml.doc("<p>Specifies the location the generated manifest will be written to.</p>")
  @as("ManifestOutputLocation")
  manifestOutputLocation: option<s3ManifestOutputLocation>,
  @ocaml.doc("<p>The source bucket used by the ManifestGenerator.</p>") @as("SourceBucket")
  sourceBucket: s3BucketArnString,
  @ocaml.doc("<p>The Amazon Web Services account ID that owns the bucket the generated manifest is written to. If
         provided the generated manifest bucket's owner Amazon Web Services account ID must match this value, else
         the job fails.</p>")
  @as("ExpectedBucketOwner")
  expectedBucketOwner: option<accountId>,
}
@ocaml.doc("<p>Contains the configuration parameters for a PUT Copy object operation. S3 Batch Operations
         passes every object to the underlying PUT Copy object API. For more information about the
         parameters for this operation, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectCOPY.html\">PUT Object - Copy</a>.</p>")
type s3CopyObjectOperation = {
  @ocaml.doc("<p>Indicates the algorithm you want Amazon S3 to use to create the checksum. For more information
            see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/CheckingObjectIntegrity.xml\">
                Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>")
  @as("ChecksumAlgorithm")
  checksumAlgorithm: option<s3ChecksumAlgorithm>,
  @ocaml.doc("<p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
         server-side encryption using Amazon Web Services KMS (SSE-KMS). Setting this header to <code>true</code>
         causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.</p>
         <p>Specifying this header with an <i>object</i> action doesn’t affect
            <i>bucket-level</i> settings for S3 Bucket Key.</p>")
  @as("BucketKeyEnabled")
  bucketKeyEnabled: option<boolean_>,
  @ocaml.doc("<p>The date when the applied object retention configuration expires on all objects in the
         Batch Operations job.</p>")
  @as("ObjectLockRetainUntilDate")
  objectLockRetainUntilDate: option<timeStamp>,
  @ocaml.doc("<p>The retention mode to be applied to all objects in the Batch Operations job.</p>")
  @as("ObjectLockMode")
  objectLockMode: option<s3ObjectLockMode>,
  @ocaml.doc(
    "<p>The legal hold status to be applied to all objects in the Batch Operations job.</p>"
  )
  @as("ObjectLockLegalHoldStatus")
  objectLockLegalHoldStatus: option<s3ObjectLockLegalHoldStatus>,
  @ocaml.doc("<p>Specifies the folder prefix into which you would like the objects to be copied. For
         example, to copy objects into a folder named \"Folder1\" in the destination bucket, set the
         TargetKeyPrefix to \"Folder1/\".</p>")
  @as("TargetKeyPrefix")
  targetKeyPrefix: option<nonEmptyMaxLength1024String>,
  @ocaml.doc("<p></p>") @as("SSEAwsKmsKeyId") sseawsKmsKeyId: option<kmsKeyArnString>,
  @ocaml.doc("<p></p>") @as("UnModifiedSinceConstraint")
  unModifiedSinceConstraint: option<timeStamp>,
  @ocaml.doc("<p></p>") @as("StorageClass") storageClass: option<s3StorageClass>,
  @ocaml.doc("<p></p>") @as("RequesterPays") requesterPays: option<boolean_>,
  @ocaml.doc("<p>Specifies an optional metadata property for website redirects,
            <code>x-amz-website-redirect-location</code>. Allows webpage redirects if the object is
         accessed through a website endpoint.</p>")
  @as("RedirectLocation")
  redirectLocation: option<nonEmptyMaxLength2048String>,
  @ocaml.doc("<p></p>") @as("NewObjectTagging") newObjectTagging: option<s3TagSet>,
  @ocaml.doc("<p>If you don't provide this parameter, Amazon S3 copies all the metadata from the original
         objects. If you specify an empty set, the new objects will have no tags. Otherwise, Amazon S3
         assigns the supplied tags to the new objects.</p>")
  @as("NewObjectMetadata")
  newObjectMetadata: option<s3ObjectMetadata>,
  @ocaml.doc("<p></p>") @as("ModifiedSinceConstraint") modifiedSinceConstraint: option<timeStamp>,
  @ocaml.doc("<p></p>") @as("MetadataDirective") metadataDirective: option<s3MetadataDirective>,
  @ocaml.doc("<p></p>") @as("AccessControlGrants") accessControlGrants: option<s3GrantList>,
  @ocaml.doc("<p></p>") @as("CannedAccessControlList")
  cannedAccessControlList: option<s3CannedAccessControlList>,
  @ocaml.doc("<p>Specifies the destination bucket ARN for the batch copy operation. For example, to copy
         objects to a bucket named \"destinationBucket\", set the TargetResource to
         \"arn:aws:s3:::destinationBucket\".</p>")
  @as("TargetResource")
  targetResource: option<s3BucketArnString>,
}
@ocaml.doc("<p></p>")
type s3AccessControlList = {
  @ocaml.doc("<p></p>") @as("Grants") grants: option<s3GrantList>,
  @ocaml.doc("<p></p>") @as("Owner") owner: s3ObjectOwner,
}
type objectLambdaTransformationConfigurationsList = array<objectLambdaTransformationConfiguration>
type multiRegionAccessPointReportList = array<multiRegionAccessPointReport>
@ocaml.doc("<p>The container for the filter of the lifecycle rule.</p>")
type lifecycleRuleFilter = {
  @ocaml.doc("<p>The container for the <code>AND</code> condition for the lifecycle rule.</p>")
  @as("And")
  and_: option<lifecycleRuleAndOperator>,
  @as("Tag") tag: option<s3Tag>,
  @ocaml.doc("<p>Prefix identifying one or more objects to which the rule applies.</p>
         <important>
            <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using 
         XML requests. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints\">
            XML related object key constraints</a>.</p>
         </important>")
  @as("Prefix")
  prefix: option<prefix>,
}
type jobListDescriptorList = array<jobListDescriptor>
@ocaml.doc("<p>A container for the bucket-level configuration.</p>")
type bucketLevel = {
  @ocaml.doc("<p>A container for the bucket-level prefix-level metrics for S3 Storage Lens</p>")
  @as("PrefixLevel")
  prefixLevel: option<prefixLevel>,
  @ocaml.doc("<p>A container for the bucket-level activity metrics for Amazon S3 Storage Lens</p>")
  @as("ActivityMetrics")
  activityMetrics: option<activityMetrics>,
}
@ocaml.doc("<p>A container for the response details that are returned when querying about an
         asynchronous request.</p>")
type asyncResponseDetails = {
  @ocaml.doc("<p>Error details for an asynchronous request.</p>") @as("ErrorDetails")
  errorDetails: option<asyncErrorDetails>,
  @ocaml.doc("<p>The details for the Multi-Region Access Point.</p>")
  @as("MultiRegionAccessPointDetails")
  multiRegionAccessPointDetails: option<multiRegionAccessPointsAsyncResponse>,
}
@ocaml.doc("<p>A container for the request parameters associated with an asynchronous request.</p>")
type asyncRequestParameters = {
  @ocaml.doc(
    "<p>A container of the parameters for a <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPoint.html\">PutMultiRegionAccessPoint</a> request.</p>"
  )
  @as("PutMultiRegionAccessPointPolicyRequest")
  putMultiRegionAccessPointPolicyRequest: option<putMultiRegionAccessPointPolicyInput>,
  @ocaml.doc(
    "<p>A container of the parameters for a <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html\">DeleteMultiRegionAccessPoint</a> request.</p>"
  )
  @as("DeleteMultiRegionAccessPointRequest")
  deleteMultiRegionAccessPointRequest: option<deleteMultiRegionAccessPointInput>,
  @ocaml.doc(
    "<p>A container of the parameters for a <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html\">CreateMultiRegionAccessPoint</a> request.</p>"
  )
  @as("CreateMultiRegionAccessPointRequest")
  createMultiRegionAccessPointRequest: option<createMultiRegionAccessPointInput>,
}
@ocaml.doc("<p></p>")
type s3AccessControlPolicy = {
  @ocaml.doc("<p></p>") @as("CannedAccessControlList")
  cannedAccessControlList: option<s3CannedAccessControlList>,
  @ocaml.doc("<p></p>") @as("AccessControlList") accessControlList: option<s3AccessControlList>,
}
@ocaml.doc("<p>A configuration used when creating an Object Lambda Access Point.</p>")
type objectLambdaConfiguration = {
  @ocaml.doc(
    "<p>A container for transformation configurations for an Object Lambda Access Point.</p>"
  )
  @as("TransformationConfigurations")
  transformationConfigurations: objectLambdaTransformationConfigurationsList,
  @ocaml.doc("<p>A container for allowed features. Valid inputs are <code>GetObject-Range</code> and
            <code>GetObject-PartNumber</code>.</p>")
  @as("AllowedFeatures")
  allowedFeatures: option<objectLambdaAllowedFeaturesList>,
  @ocaml.doc("<p>A container for whether the CloudWatch metrics configuration is enabled.</p>")
  @as("CloudWatchMetricsEnabled")
  cloudWatchMetricsEnabled: option<boolean_>,
  @ocaml.doc("<p>Standard access point associated with the Object Lambda Access Point.</p>")
  @as("SupportingAccessPoint")
  supportingAccessPoint: objectLambdaSupportingAccessPointArn,
}
@ocaml.doc("<p>The container for the Outposts bucket lifecycle rule.</p>")
type lifecycleRule = {
  @ocaml.doc("<p>Specifies the days since the initiation of an incomplete multipart upload that Amazon S3
         waits before permanently removing all parts of the upload. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config\">
            Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy</a> in the
            <i>Amazon S3 User Guide</i>.</p>")
  @as("AbortIncompleteMultipartUpload")
  abortIncompleteMultipartUpload: option<abortIncompleteMultipartUpload>,
  @ocaml.doc("<p>The noncurrent version expiration of the lifecycle rule.</p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
  @as("NoncurrentVersionExpiration")
  noncurrentVersionExpiration: option<noncurrentVersionExpiration>,
  @ocaml.doc("<p> Specifies the transition rule for the lifecycle rule that describes when noncurrent
         objects transition to a specific storage class. If your bucket is versioning-enabled (or
         versioning is suspended), you can set this action to request that Amazon S3 transition
         noncurrent object versions to a specific storage class at a set period in the object's
         lifetime. </p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
  @as("NoncurrentVersionTransitions")
  noncurrentVersionTransitions: option<noncurrentVersionTransitionList>,
  @ocaml.doc("<p>Specifies when an Amazon S3 object transitions to a specified storage class.</p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
  @as("Transitions")
  transitions: option<transitionList>,
  @ocaml.doc("<p>If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not
         currently being applied.</p>")
  @as("Status")
  status: expirationStatus,
  @ocaml.doc("<p>The container for the filter of lifecycle rule.</p>") @as("Filter")
  filter: option<lifecycleRuleFilter>,
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
@ocaml.doc("<p>Configures the type of the job's ManifestGenerator.</p>")
type jobManifestGenerator = {
  @ocaml.doc("<p>The S3 job ManifestGenerator's configuration details.</p>")
  @as("S3JobManifestGenerator")
  s3JobManifestGenerator: option<s3JobManifestGenerator>,
}
module JobManifestGenerator = {
  type t = S3JobManifestGenerator(s3JobManifestGenerator)
  exception JobManifestGeneratorUnspecified
  let classify = value =>
    switch value {
    | {s3JobManifestGenerator: Some(x)} => S3JobManifestGenerator(x)
    | _ => raise(JobManifestGeneratorUnspecified)
    }

  let make = value =>
    switch value {
    | S3JobManifestGenerator(x) => {s3JobManifestGenerator: Some(x)}
    }
}
@ocaml.doc("<p>A container for the information about an asynchronous operation.</p>")
type asyncOperation = {
  @ocaml.doc("<p>The details of the response.</p>") @as("ResponseDetails")
  responseDetails: option<asyncResponseDetails>,
  @ocaml.doc("<p>The current status of the request.</p>") @as("RequestStatus")
  requestStatus: option<asyncRequestStatus>,
  @ocaml.doc("<p>The parameters associated with the request.</p>") @as("RequestParameters")
  requestParameters: option<asyncRequestParameters>,
  @ocaml.doc("<p>The request token associated with the request.</p>") @as("RequestTokenARN")
  requestTokenARN: option<asyncRequestTokenARN>,
  @ocaml.doc("<p>The specific operation for the asynchronous request.</p>") @as("Operation")
  operation: option<asyncOperationName>,
  @ocaml.doc("<p>The time that the request was sent to the service.</p>") @as("CreationTime")
  creationTime: option<asyncCreationTimestamp>,
}
@ocaml.doc("<p>A container for the account level Amazon S3 Storage Lens configuration.</p>")
type accountLevel = {
  @ocaml.doc("<p>A container for the S3 Storage Lens bucket-level configuration.</p>")
  @as("BucketLevel")
  bucketLevel: bucketLevel,
  @ocaml.doc("<p>A container for the S3 Storage Lens activity metrics.</p>") @as("ActivityMetrics")
  activityMetrics: option<activityMetrics>,
}
@ocaml.doc("<p>A container for the Amazon S3 Storage Lens configuration.</p>")
type storageLensConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the S3 Storage Lens configuration. This property is read-only
         and follows the following format: <code>
               arn:aws:s3:<i>us-east-1</i>:<i>example-account-id</i>:storage-lens/<i>your-dashboard-name</i>
            </code>
         </p>")
  @as("StorageLensArn")
  storageLensArn: option<storageLensArn>,
  @ocaml.doc(
    "<p>A container for the Amazon Web Services organization for this S3 Storage Lens configuration.</p>"
  )
  @as("AwsOrg")
  awsOrg: option<storageLensAwsOrg>,
  @ocaml.doc("<p>A container for whether the S3 Storage Lens configuration is enabled.</p>")
  @as("IsEnabled")
  isEnabled: isEnabled,
  @ocaml.doc("<p>A container to specify the properties of your S3 Storage Lens metrics export including, the
         destination, schema and format.</p>")
  @as("DataExport")
  dataExport: option<storageLensDataExport>,
  @ocaml.doc("<p>A container for what is excluded in this configuration. This container can only be valid
         if there is no <code>Include</code> container submitted, and it's not empty. </p>")
  @as("Exclude")
  exclude: option<exclude>,
  @ocaml.doc("<p>A container for what is included in this configuration. This container can only be valid
         if there is no <code>Exclude</code> container submitted, and it's not empty. </p>")
  @as("Include")
  include_: option<include_>,
  @ocaml.doc("<p>A container for all the account-level configurations of your S3 Storage Lens
         configuration.</p>")
  @as("AccountLevel")
  accountLevel: accountLevel,
  @ocaml.doc("<p>A container for the Amazon S3 Storage Lens configuration ID.</p>") @as("Id")
  id: configId,
}
@ocaml.doc("<p>Contains the configuration parameters for a Set Object ACL operation. S3 Batch Operations
         passes every object to the underlying PUT Object acl API. For more information about the
         parameters for this operation, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTacl.html\">PUT Object acl</a>.</p>")
type s3SetObjectAclOperation = {
  @ocaml.doc("<p></p>") @as("AccessControlPolicy")
  accessControlPolicy: option<s3AccessControlPolicy>,
}
type lifecycleRules = array<lifecycleRule>
@ocaml.doc("<p>The container for the Outposts bucket lifecycle configuration.</p>")
type lifecycleConfiguration = {
  @ocaml.doc("<p>A lifecycle rule for individual objects in an Outposts bucket. </p>") @as("Rules")
  rules: option<lifecycleRules>,
}
@ocaml.doc("<p>The operation that you want this job to perform on every object listed in the manifest.
         For more information about the available operations, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html\">Operations</a> in the
            <i>Amazon S3 User Guide</i>.</p>")
type jobOperation = {
  @ocaml.doc("<p>Directs the specified job to invoke <code>ReplicateObject</code> on every object in the
         job's manifest.</p>")
  @as("S3ReplicateObject")
  s3ReplicateObject: option<s3ReplicateObjectOperation>,
  @as("S3PutObjectRetention") s3PutObjectRetention: option<s3SetObjectRetentionOperation>,
  @as("S3PutObjectLegalHold") s3PutObjectLegalHold: option<s3SetObjectLegalHoldOperation>,
  @ocaml.doc("<p>Directs the specified job to initiate restore requests for every archived object in the
         manifest.</p>")
  @as("S3InitiateRestoreObject")
  s3InitiateRestoreObject: option<s3InitiateRestoreObjectOperation>,
  @ocaml.doc("<p>Directs the specified job to execute a DELETE Object tagging call on every object in the
         manifest.</p>")
  @as("S3DeleteObjectTagging")
  s3DeleteObjectTagging: option<s3DeleteObjectTaggingOperation>,
  @ocaml.doc("<p>Directs the specified job to run a PUT Object tagging call on every object in the
         manifest.</p>")
  @as("S3PutObjectTagging")
  s3PutObjectTagging: option<s3SetObjectTaggingOperation>,
  @ocaml.doc("<p>Directs the specified job to run a PUT Object acl call on every object in the
         manifest.</p>")
  @as("S3PutObjectAcl")
  s3PutObjectAcl: option<s3SetObjectAclOperation>,
  @ocaml.doc("<p>Directs the specified job to run a PUT Copy object call on every object in the
         manifest.</p>")
  @as("S3PutObjectCopy")
  s3PutObjectCopy: option<s3CopyObjectOperation>,
  @ocaml.doc("<p>Directs the specified job to invoke an Lambda function on every object in the
         manifest.</p>")
  @as("LambdaInvoke")
  lambdaInvoke: option<lambdaInvokeOperation>,
}
@ocaml.doc("<p>A container element for the job configuration and status information returned by a
            <code>Describe Job</code> request.</p>")
type jobDescriptor = {
  @ocaml.doc("<p>The attribute of the JobDescriptor containing details about the job's generated
         manifest.</p>")
  @as("GeneratedManifestDescriptor")
  generatedManifestDescriptor: option<s3GeneratedManifestDescriptor>,
  @ocaml.doc("<p>The manifest generator that was used to generate a job manifest for this job.</p>")
  @as("ManifestGenerator")
  manifestGenerator: option<jobManifestGenerator>,
  @ocaml.doc("<p>The reason why the specified job was suspended. A job is only suspended if you create it
         through the Amazon S3 console. When you create the job, it enters the <code>Suspended</code>
         state to await confirmation before running. After you confirm the job, it automatically
         exits the <code>Suspended</code> state.</p>")
  @as("SuspendedCause")
  suspendedCause: option<suspendedCause>,
  @ocaml.doc("<p>The timestamp when this job was suspended, if it has been suspended.</p>")
  @as("SuspendedDate")
  suspendedDate: option<suspendedDate>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the Identity and Access Management (IAM) role assigned to run the tasks
         for this job.</p>")
  @as("RoleArn")
  roleArn: option<iamroleArn>,
  @ocaml.doc("<p>A timestamp indicating when this job terminated. A job's termination date is the date
         and time when it succeeded, failed, or was canceled.</p>")
  @as("TerminationDate")
  terminationDate: option<jobTerminationDate>,
  @ocaml.doc("<p>A timestamp indicating when this job was created.</p>") @as("CreationTime")
  creationTime: option<jobCreationTime>,
  @ocaml.doc("<p>Contains the configuration information for the job-completion report if you requested
         one in the <code>Create Job</code> request.</p>")
  @as("Report")
  report: option<jobReport>,
  @ocaml.doc("<p>If the specified job failed, this field contains information describing the
         failure.</p>")
  @as("FailureReasons")
  failureReasons: option<jobFailureList>,
  @ocaml.doc("<p>The reason for updating the job.</p>") @as("StatusUpdateReason")
  statusUpdateReason: option<jobStatusUpdateReason>,
  @ocaml.doc("<p>Describes the total number of tasks that the specified job has run, the number of tasks
         that succeeded, and the number of tasks that failed.</p>")
  @as("ProgressSummary")
  progressSummary: option<jobProgressSummary>,
  @ocaml.doc("<p>The priority of the specified job.</p>") @as("Priority")
  priority: option<jobPriority>,
  @ocaml.doc("<p>The operation that the specified job is configured to run on the objects listed in the
         manifest.</p>")
  @as("Operation")
  operation: option<jobOperation>,
  @ocaml.doc("<p>The configuration information for the specified job's manifest object.</p>")
  @as("Manifest")
  manifest: option<jobManifest>,
  @ocaml.doc("<p>The current status of the specified job.</p>") @as("Status")
  status: option<jobStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for this job.</p>") @as("JobArn")
  jobArn: option<jobArn>,
  @ocaml.doc("<p>The description for this job, if one was provided in this job's <code>Create Job</code>
         request.</p>")
  @as("Description")
  description: option<nonEmptyMaxLength256String>,
  @ocaml.doc("<p>Indicates whether confirmation is required before Amazon S3 begins running the specified job.
         Confirmation is required only for jobs created through the Amazon S3 console.</p>")
  @as("ConfirmationRequired")
  confirmationRequired: option<confirmationRequired>,
  @ocaml.doc("<p>The ID for the specified job.</p>") @as("JobId") jobId: option<jobId>,
}
@ocaml.doc(
  "<p> Amazon Web Services S3 Control provides access to Amazon S3 control plane actions. </p>"
)
module UpdateJobStatus = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the reason why you want to change the specified job's status. This
         field can be any string up to the maximum length.</p>")
    @as("StatusUpdateReason")
    statusUpdateReason: option<jobStatusUpdateReason>,
    @ocaml.doc("<p>The status that you want to move the specified job to.</p>")
    @as("RequestedJobStatus")
    requestedJobStatus: requestedJobStatus,
    @ocaml.doc("<p>The ID of the job whose status you want to update.</p>") @as("JobId")
    jobId: jobId,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The reason that the specified job's status was updated.</p>")
    @as("StatusUpdateReason")
    statusUpdateReason: option<jobStatusUpdateReason>,
    @ocaml.doc("<p>The current status for the specified job.</p>") @as("Status")
    status: option<jobStatus>,
    @ocaml.doc("<p>The ID for the job whose status was updated.</p>") @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "UpdateJobStatusCommand"
  let make = (~requestedJobStatus, ~jobId, ~accountId, ~statusUpdateReason=?, ()) =>
    new({
      statusUpdateReason: statusUpdateReason,
      requestedJobStatus: requestedJobStatus,
      jobId: jobId,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateJobPriority = {
  type t
  type request = {
    @ocaml.doc("<p>The priority you want to assign to this job.</p>") @as("Priority")
    priority: jobPriority,
    @ocaml.doc("<p>The ID for the job whose priority you want to update.</p>") @as("JobId")
    jobId: jobId,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The new priority assigned to the specified job.</p>") @as("Priority")
    priority: jobPriority,
    @ocaml.doc("<p>The ID for the job whose priority Amazon S3 updated.</p>") @as("JobId")
    jobId: jobId,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "UpdateJobPriorityCommand"
  let make = (~priority, ~jobId, ~accountId, ()) =>
    new({priority: priority, jobId: jobId, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The bucket policy as a JSON document.</p>") @as("Policy") policy: policy,
    @ocaml.doc("<p>Set this parameter to true to confirm that you want to remove your permissions to change
         this bucket policy in the future.</p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
    @as("ConfirmRemoveSelfBucketAccess")
    confirmRemoveSelfBucketAccess: option<confirmRemoveSelfBucketAccess>,
    @ocaml.doc("<p>Specifies the bucket.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The Amazon Web Services account ID of the Outposts bucket.</p>") @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketPolicyCommand"
  let make = (~policy, ~bucket, ~accountId, ~confirmRemoveSelfBucketAccess=?, ()) =>
    new({
      policy: policy,
      confirmRemoveSelfBucketAccess: confirmRemoveSelfBucketAccess,
      bucket: bucket,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutAccessPointPolicyForObjectLambda = {
  type t
  type request = {
    @ocaml.doc("<p>Object Lambda Access Point resource policy document.</p>") @as("Policy")
    policy: objectLambdaPolicy,
    @ocaml.doc("<p>The name of the Object Lambda Access Point.</p>") @as("Name")
    name: objectLambdaAccessPointName,
    @ocaml.doc(
      "<p>The account ID for the account that owns the specified Object Lambda Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutAccessPointPolicyForObjectLambdaCommand"
  let make = (~policy, ~name, ~accountId, ()) =>
    new({policy: policy, name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutAccessPointPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The policy that you want to apply to the specified access point. For more information about access point
         policies, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html\">Managing data access with Amazon S3
            access points</a> in the <i>Amazon S3 User Guide</i>.</p>")
    @as("Policy")
    policy: policy,
    @ocaml.doc("<p>The name of the access point that you want to associate with the specified policy.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>")
    @as("Name")
    name: accessPointName,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID for owner of the bucket associated with the specified access point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutAccessPointPolicyCommand"
  let make = (~policy, ~name, ~accountId, ()) =>
    new({policy: policy, name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetBucketPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the bucket.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The Amazon Web Services account ID of the Outposts bucket.</p>") @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The policy of the Outposts bucket.</p>") @as("Policy") policy: option<policy>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketPolicyCommand"
  let make = (~bucket, ~accountId, ()) => new({bucket: bucket, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucket = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the bucket.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The Amazon Web Services account ID of the Outposts bucket.</p>") @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The creation date of the Outposts bucket.</p>") @as("CreationDate")
    creationDate: option<creationDate>,
    @ocaml.doc("<p></p>") @as("PublicAccessBlockEnabled")
    publicAccessBlockEnabled: option<publicAccessBlockEnabled>,
    @ocaml.doc("<p>The Outposts bucket requested.</p>") @as("Bucket") bucket: option<bucketName>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketCommand"
  let make = (~bucket, ~accountId, ()) => new({bucket: bucket, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPointPolicyForObjectLambda = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Object Lambda Access Point.</p>") @as("Name")
    name: objectLambdaAccessPointName,
    @ocaml.doc(
      "<p>The account ID for the account that owns the specified Object Lambda Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>Object Lambda Access Point resource policy document.</p>") @as("Policy")
    policy: option<objectLambdaPolicy>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetAccessPointPolicyForObjectLambdaCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPointPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the access point whose policy you want to retrieve.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>")
    @as("Name")
    name: accessPointName,
    @ocaml.doc("<p>The account ID for the account that owns the specified access point.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The access point policy associated with the specified access point.</p>")
    @as("Policy")
    policy: option<policy>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetAccessPointPolicyCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStorageLensConfigurationTagging = {
  type t
  type request = {
    @ocaml.doc("<p>The account ID of the requester.</p>") @as("AccountId") accountId: accountId,
    @ocaml.doc("<p>The ID of the S3 Storage Lens configuration.</p>") @as("ConfigId")
    configId: configId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteStorageLensConfigurationTaggingCommand"
  let make = (~accountId, ~configId, ()) => new({accountId: accountId, configId: configId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteStorageLensConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The account ID of the requester.</p>") @as("AccountId") accountId: accountId,
    @ocaml.doc("<p>The ID of the S3 Storage Lens configuration.</p>") @as("ConfigId")
    configId: configId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteStorageLensConfigurationCommand"
  let make = (~accountId, ~configId, ()) => new({accountId: accountId, configId: configId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePublicAccessBlock = {
  type t
  type request = {
    @ocaml.doc("<p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
         you want to remove.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeletePublicAccessBlockCommand"
  let make = (~accountId, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteJobTagging = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for the S3 Batch Operations job whose tags you want to delete.</p>")
    @as("JobId")
    jobId: jobId,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteJobTaggingCommand"
  let make = (~jobId, ~accountId, ()) => new({jobId: jobId, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketTagging = {
  type t
  type request = {
    @ocaml.doc("<p>The bucket ARN that has the tag set to be removed.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID of the Outposts bucket tag set to be removed.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketTaggingCommand"
  let make = (~bucket, ~accountId, ()) => new({bucket: bucket, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the bucket.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The account ID of the Outposts bucket.</p>") @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketPolicyCommand"
  let make = (~bucket, ~accountId, ()) => new({bucket: bucket, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucketLifecycleConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the bucket.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The account ID of the lifecycle configuration to delete.</p>") @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteBucketLifecycleConfigurationCommand"
  let make = (~bucket, ~accountId, ()) => new({bucket: bucket, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBucket = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the bucket being deleted.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The account ID that owns the Outposts bucket.</p>") @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteBucketCommand"
  let make = (~bucket, ~accountId, ()) => new({bucket: bucket, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessPointPolicyForObjectLambda = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the Object Lambda Access Point you want to delete the policy for.</p>"
    )
    @as("Name")
    name: objectLambdaAccessPointName,
    @ocaml.doc(
      "<p>The account ID for the account that owns the specified Object Lambda Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteAccessPointPolicyForObjectLambdaCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessPointPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the access point whose policy you want to delete.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>")
    @as("Name")
    name: accessPointName,
    @ocaml.doc("<p>The account ID for the account that owns the specified access point.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteAccessPointPolicyCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessPointForObjectLambda = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the access point you want to delete.</p>") @as("Name")
    name: objectLambdaAccessPointName,
    @ocaml.doc(
      "<p>The account ID for the account that owns the specified Object Lambda Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteAccessPointForObjectLambdaCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessPoint = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the access point you want to delete.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>")
    @as("Name")
    name: accessPointName,
    @ocaml.doc("<p>The account ID for the account that owns the specified access point.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new external new: request => t = "DeleteAccessPointCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutPublicAccessBlock = {
  type t
  type request = {
    @ocaml.doc("<p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
         you want to set.</p>")
    @as("AccountId")
    accountId: accountId,
    @ocaml.doc("<p>The <code>PublicAccessBlock</code> configuration that you want to apply to the specified
         Amazon Web Services account.</p>")
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: publicAccessBlockConfiguration,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutPublicAccessBlockCommand"
  let make = (~accountId, ~publicAccessBlockConfiguration, ()) =>
    new({accountId: accountId, publicAccessBlockConfiguration: publicAccessBlockConfiguration})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutMultiRegionAccessPointPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A container element containing the details of the policy for the Multi-Region Access Point.</p>"
    )
    @as("Details")
    details: putMultiRegionAccessPointPolicyInput,
    @ocaml.doc("<p>An idempotency token used to identify the request and guarantee that requests are
         unique.</p>")
    @as("ClientToken")
    clientToken: multiRegionAccessPointClientToken,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The request token associated with the request. You can use this token with <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html\">DescribeMultiRegionAccessPointOperation</a> to determine the status of asynchronous
         requests.</p>")
    @as("RequestTokenARN")
    requestTokenARN: option<asyncRequestTokenARN>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutMultiRegionAccessPointPolicyCommand"
  let make = (~details, ~clientToken, ~accountId, ()) =>
    new({details: details, clientToken: clientToken, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPublicAccessBlock = {
  type t
  type request = {
    @ocaml.doc("<p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
         you want to retrieve.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The <code>PublicAccessBlock</code> configuration currently in effect for this
         Amazon Web Services account.</p>")
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: option<publicAccessBlockConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetPublicAccessBlockCommand"
  let make = (~accountId, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMultiRegionAccessPointPolicyStatus = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the Multi-Region Access Point. The name of the Multi-Region Access Point is different from the alias. For more
         information about the distinction between the name and the alias of an Multi-Region Access Point, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming\">Managing Multi-Region Access Points</a> in the
         <i>Amazon S3 User Guide</i>.</p>")
    @as("Name")
    name: multiRegionAccessPointName,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {@as("Established") established: option<policyStatus>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetMultiRegionAccessPointPolicyStatusCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPointPolicyStatusForObjectLambda = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Object Lambda Access Point.</p>") @as("Name")
    name: objectLambdaAccessPointName,
    @ocaml.doc(
      "<p>The account ID for the account that owns the specified Object Lambda Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {@as("PolicyStatus") policyStatus: option<policyStatus>}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetAccessPointPolicyStatusForObjectLambdaCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPointPolicyStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the access point whose policy status you want to retrieve.</p>")
    @as("Name")
    name: accessPointName,
    @ocaml.doc("<p>The account ID for the account that owns the specified access point.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>Indicates the current policy status of the specified access point.</p>")
    @as("PolicyStatus")
    policyStatus: option<policyStatus>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetAccessPointPolicyStatusCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPointForObjectLambda = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Object Lambda Access Point.</p>") @as("Name")
    name: objectLambdaAccessPointName,
    @ocaml.doc(
      "<p>The account ID for the account that owns the specified Object Lambda Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc(
      "<p>The date and time when the specified Object Lambda Access Point was created.</p>"
    )
    @as("CreationDate")
    creationDate: option<creationDate>,
    @ocaml.doc("<p>Configuration to block all public access. This setting is turned on and can not be
         edited. </p>")
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: option<publicAccessBlockConfiguration>,
    @ocaml.doc("<p>The name of the Object Lambda Access Point.</p>") @as("Name")
    name: option<objectLambdaAccessPointName>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetAccessPointForObjectLambdaCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPoint = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the access point whose configuration information you want to retrieve.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>")
    @as("Name")
    name: accessPointName,
    @ocaml.doc("<p>The account ID for the account that owns the specified access point.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The VPC endpoint for the access point.</p>") @as("Endpoints")
    endpoints: option<endpoints>,
    @ocaml.doc("<p>The ARN of the access point.</p>") @as("AccessPointArn")
    accessPointArn: option<s3AccessPointArn>,
    @ocaml.doc("<p>The name or alias of the access point.</p>") @as("Alias") alias: option<alias>,
    @ocaml.doc("<p>The date and time when the specified access point was created.</p>")
    @as("CreationDate")
    creationDate: option<creationDate>,
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: option<publicAccessBlockConfiguration>,
    @ocaml.doc("<p>Contains the virtual private cloud (VPC) configuration for the specified access point.</p>
         <note>
            <p>This element is empty if this access point is an Amazon S3 on Outposts access point that is used by other
               Amazon Web Services.</p>
         </note>")
    @as("VpcConfiguration")
    vpcConfiguration: option<vpcConfiguration>,
    @ocaml.doc("<p>Indicates whether this access point allows access from the public internet. If
            <code>VpcConfiguration</code> is specified for this access point, then
            <code>NetworkOrigin</code> is <code>VPC</code>, and the access point doesn't allow access from
         the public internet. Otherwise, <code>NetworkOrigin</code> is <code>Internet</code>, and
         the access point allows access from the public internet, subject to the access point and bucket access
         policies.</p>
         <p>This will always be true for an Amazon S3 on Outposts access point</p>")
    @as("NetworkOrigin")
    networkOrigin: option<networkOrigin>,
    @ocaml.doc("<p>The name of the bucket associated with the specified access point.</p>")
    @as("Bucket")
    bucket: option<bucketName>,
    @ocaml.doc("<p>The name of the specified access point.</p>") @as("Name")
    name: option<accessPointName>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetAccessPointCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMultiRegionAccessPoint = {
  type t
  type request = {
    @ocaml.doc("<p>A container element containing details about the Multi-Region Access Point.</p>")
    @as("Details")
    details: deleteMultiRegionAccessPointInput,
    @ocaml.doc("<p>An idempotency token used to identify the request and guarantee that requests are
         unique.</p>")
    @as("ClientToken")
    clientToken: multiRegionAccessPointClientToken,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The request token associated with the request. You can use this token with <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html\">DescribeMultiRegionAccessPointOperation</a> to determine the status of asynchronous
         requests.</p>")
    @as("RequestTokenARN")
    requestTokenARN: option<asyncRequestTokenARN>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DeleteMultiRegionAccessPointCommand"
  let make = (~details, ~clientToken, ~accountId, ()) =>
    new({details: details, clientToken: clientToken, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBucket = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Outposts where the bucket is being created.</p>
         <note>
            <p>This is required by Amazon S3 on Outposts buckets.</p> 
         </note>")
    @as("OutpostId")
    outpostId: option<nonEmptyMaxLength64String>,
    @ocaml.doc("<p>Specifies whether you want S3 Object Lock to be enabled for the new bucket.</p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
    @as("ObjectLockEnabledForBucket")
    objectLockEnabledForBucket: option<objectLockEnabledForBucket>,
    @ocaml.doc("<p>Allows grantee to write the ACL for the applicable bucket.</p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
    @as("GrantWriteACP")
    grantWriteACP: option<grantWriteACP>,
    @ocaml.doc("<p>Allows grantee to create, overwrite, and delete any object in the bucket.</p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
    @as("GrantWrite")
    grantWrite: option<grantWrite>,
    @ocaml.doc("<p>Allows grantee to read the bucket ACL.</p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
    @as("GrantReadACP")
    grantReadACP: option<grantReadACP>,
    @ocaml.doc("<p>Allows grantee to list the objects in the bucket.</p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
    @as("GrantRead")
    grantRead: option<grantRead>,
    @ocaml.doc("<p>Allows grantee the read, write, read ACP, and write ACP permissions on the
         bucket.</p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
    @as("GrantFullControl")
    grantFullControl: option<grantFullControl>,
    @ocaml.doc("<p>The configuration information for the bucket.</p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
    @as("CreateBucketConfiguration")
    createBucketConfiguration: option<createBucketConfiguration>,
    @ocaml.doc("<p>The name of the bucket.</p>") @as("Bucket") bucket: bucketName,
    @ocaml.doc("<p>The canned ACL to apply to the bucket.</p>
         <note>
            <p>This is not supported by Amazon S3 on Outposts buckets.</p>
         </note>")
    @as("ACL")
    acl: option<bucketCannedACL>,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bucket.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("BucketArn")
    bucketArn: option<s3RegionalBucketArn>,
    @ocaml.doc("<p>The location of the bucket.</p>") @as("Location") location: option<location>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "CreateBucketCommand"
  let make = (
    ~bucket,
    ~outpostId=?,
    ~objectLockEnabledForBucket=?,
    ~grantWriteACP=?,
    ~grantWrite=?,
    ~grantReadACP=?,
    ~grantRead=?,
    ~grantFullControl=?,
    ~createBucketConfiguration=?,
    ~acl=?,
    (),
  ) =>
    new({
      outpostId: outpostId,
      objectLockEnabledForBucket: objectLockEnabledForBucket,
      grantWriteACP: grantWriteACP,
      grantWrite: grantWrite,
      grantReadACP: grantReadACP,
      grantRead: grantRead,
      grantFullControl: grantFullControl,
      createBucketConfiguration: createBucketConfiguration,
      bucket: bucket,
      acl: acl,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccessPoint = {
  type t
  type request = {
    @ocaml.doc("<p> The <code>PublicAccessBlock</code> configuration that you want to apply to the access point.
      </p>")
    @as("PublicAccessBlockConfiguration")
    publicAccessBlockConfiguration: option<publicAccessBlockConfiguration>,
    @ocaml.doc("<p>If you include this field, Amazon S3 restricts access to this access point to requests from the
         specified virtual private cloud (VPC).</p>
         <note>
            <p>This is required for creating an access point for Amazon S3 on Outposts buckets.</p>
         </note>")
    @as("VpcConfiguration")
    vpcConfiguration: option<vpcConfiguration>,
    @ocaml.doc("<p>The name of the bucket that you want to associate this access point with.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The name you want to assign to this access point.</p>") @as("Name")
    name: accessPointName,
    @ocaml.doc("<p>The Amazon Web Services account ID for the owner of the bucket for which you want to create an
         access point.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The name or alias of the access point.</p>") @as("Alias") alias: option<alias>,
    @ocaml.doc("<p>The ARN of the access point.</p>
         <note>
            <p>This is only supported by Amazon S3 on Outposts.</p>
         </note>")
    @as("AccessPointArn")
    accessPointArn: option<s3AccessPointArn>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "CreateAccessPointCommand"
  let make = (
    ~bucket,
    ~name,
    ~accountId,
    ~publicAccessBlockConfiguration=?,
    ~vpcConfiguration=?,
    (),
  ) =>
    new({
      publicAccessBlockConfiguration: publicAccessBlockConfiguration,
      vpcConfiguration: vpcConfiguration,
      bucket: bucket,
      name: name,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutStorageLensConfigurationTagging = {
  type t
  type request = {
    @ocaml.doc("<p>The tag set of the S3 Storage Lens configuration.</p>
         <note>
            <p>You can set up to a maximum of 50 tags.</p>
         </note>")
    @as("Tags")
    tags: storageLensTags,
    @ocaml.doc("<p>The account ID of the requester.</p>") @as("AccountId") accountId: accountId,
    @ocaml.doc("<p>The ID of the S3 Storage Lens configuration.</p>") @as("ConfigId")
    configId: configId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutStorageLensConfigurationTaggingCommand"
  let make = (~tags, ~accountId, ~configId, ()) =>
    new({tags: tags, accountId: accountId, configId: configId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutJobTagging = {
  type t
  type request = {
    @ocaml.doc("<p>The set of tags to associate with the S3 Batch Operations job.</p>") @as("Tags")
    tags: s3TagSet,
    @ocaml.doc("<p>The ID for the S3 Batch Operations job whose tags you want to replace.</p>")
    @as("JobId")
    jobId: jobId,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutJobTaggingCommand"
  let make = (~tags, ~jobId, ~accountId, ()) =>
    new({tags: tags, jobId: jobId, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListStorageLensConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>A pagination token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<continuationToken>,
    @ocaml.doc("<p>The account ID of the requester.</p>") @as("AccountId") accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>A list of S3 Storage Lens configurations.</p>")
    @as("StorageLensConfigurationList")
    storageLensConfigurationList: option<storageLensConfigurationList>,
    @ocaml.doc("<p>If the request produced more than the maximum number of S3 Storage Lens configuration results,
         you can pass this value into a subsequent request to retrieve the next page of
         results.</p>")
    @as("NextToken")
    nextToken: option<continuationToken>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListStorageLensConfigurationsCommand"
  let make = (~accountId, ~nextToken=?, ()) => new({nextToken: nextToken, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRegionalBuckets = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Outposts.</p>
         <note>
            <p>This is required by Amazon S3 on Outposts buckets.</p> 
         </note>")
    @as("OutpostId")
    outpostId: option<nonEmptyMaxLength64String>,
    @ocaml.doc("<p></p>") @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc("<p></p>") @as("NextToken") nextToken: option<nonEmptyMaxLength1024String>,
    @ocaml.doc("<p>The Amazon Web Services account ID of the Outposts bucket.</p>") @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>
            <code>NextToken</code> is sent when <code>isTruncated</code> is true, which means there
         are more buckets that can be listed. The next list requests to Amazon S3 can be continued with
         this <code>NextToken</code>. <code>NextToken</code> is obfuscated and is not a real
         key.</p>")
    @as("NextToken")
    nextToken: option<nonEmptyMaxLength1024String>,
    @ocaml.doc("<p></p>") @as("RegionalBucketList") regionalBucketList: option<regionalBucketList>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListRegionalBucketsCommand"
  let make = (~accountId, ~outpostId=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({outpostId: outpostId, maxResults: maxResults, nextToken: nextToken, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccessPointsForObjectLambda = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of access points that you want to include in the list. The response may
         contain fewer access points but will never contain more. If there are more than this number of
         access points, then the response will include a continuation token in the <code>NextToken</code>
         field that you can use to retrieve the next page of access points.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the list has more access points than can be returned in one call to this API, this field
         contains a continuation token that you can provide in subsequent calls to this API to
         retrieve additional access points.</p>")
    @as("NextToken")
    nextToken: option<nonEmptyMaxLength1024String>,
    @ocaml.doc(
      "<p>The account ID for the account that owns the specified Object Lambda Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>If the list has more access points than can be returned in one call to this API, this field
         contains a continuation token that you can provide in subsequent calls to this API to
         retrieve additional access points.</p>")
    @as("NextToken")
    nextToken: option<nonEmptyMaxLength1024String>,
    @ocaml.doc("<p>Returns list of Object Lambda Access Points.</p>")
    @as("ObjectLambdaAccessPointList")
    objectLambdaAccessPointList: option<objectLambdaAccessPointList>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListAccessPointsForObjectLambdaCommand"
  let make = (~accountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStorageLensConfigurationTagging = {
  type t
  type request = {
    @ocaml.doc("<p>The account ID of the requester.</p>") @as("AccountId") accountId: accountId,
    @ocaml.doc("<p>The ID of the Amazon S3 Storage Lens configuration.</p>") @as("ConfigId")
    configId: configId,
  }
  type response = {
    @ocaml.doc("<p>The tags of S3 Storage Lens configuration requested.</p>") @as("Tags")
    tags: option<storageLensTags>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetStorageLensConfigurationTaggingCommand"
  let make = (~accountId, ~configId, ()) => new({accountId: accountId, configId: configId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMultiRegionAccessPointPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the Multi-Region Access Point. The name of the Multi-Region Access Point is different from the alias. For more
         information about the distinction between the name and the alias of an Multi-Region Access Point, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming\">Managing Multi-Region Access Points</a> in the
         <i>Amazon S3 User Guide</i>.</p>")
    @as("Name")
    name: multiRegionAccessPointName,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The policy associated with the specified Multi-Region Access Point.</p>")
    @as("Policy")
    policy: option<multiRegionAccessPointPolicyDocument>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetMultiRegionAccessPointPolicyCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobTagging = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for the S3 Batch Operations job whose tags you want to retrieve.</p>")
    @as("JobId")
    jobId: jobId,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The set of tags associated with the S3 Batch Operations job.</p>") @as("Tags")
    tags: option<s3TagSet>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetJobTaggingCommand"
  let make = (~jobId, ~accountId, ()) => new({jobId: jobId, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketTagging = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the bucket.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The Amazon Web Services account ID of the Outposts bucket.</p>") @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The tags set of the Outposts bucket.</p>") @as("TagSet") tagSet: s3TagSet,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetBucketTaggingCommand"
  let make = (~bucket, ~accountId, ()) => new({bucket: bucket, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketTagging = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("Tagging") tagging: tagging,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bucket.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The Amazon Web Services account ID of the Outposts bucket.</p>") @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new external new: request => t = "PutBucketTaggingCommand"
  let make = (~tagging, ~bucket, ~accountId, ()) =>
    new({tagging: tagging, bucket: bucket, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListAccessPoints = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of access points that you want to include in the list. If the specified
         bucket has more than this number of access points, then the response will include a continuation
         token in the <code>NextToken</code> field that you can use to retrieve the next page of
         access points.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A continuation token. If a previous call to <code>ListAccessPoints</code> returned a
         continuation token in the <code>NextToken</code> field, then providing that value here
         causes Amazon S3 to retrieve the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nonEmptyMaxLength1024String>,
    @ocaml.doc("<p>The name of the bucket whose associated access points you want to list.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("Bucket")
    bucket: option<bucketName>,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID for owner of the bucket whose access points you want to list.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>If the specified bucket has more access points than can be returned in one call to this API,
         this field contains a continuation token that you can provide in subsequent calls to this
         API to retrieve additional access points.</p>")
    @as("NextToken")
    nextToken: option<nonEmptyMaxLength1024String>,
    @ocaml.doc("<p>Contains identification and configuration information for one or more access points associated
         with the specified bucket.</p>")
    @as("AccessPointList")
    accessPointList: option<accessPointList>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListAccessPointsCommand"
  let make = (~accountId, ~maxResults=?, ~nextToken=?, ~bucket=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, bucket: bucket, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMultiRegionAccessPoint = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Multi-Region Access Point whose configuration information you want to receive. The name of
         the Multi-Region Access Point is different from the alias. For more information about the distinction between
         the name and the alias of an Multi-Region Access Point, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming\">Managing Multi-Region Access Points</a> in the
         <i>Amazon S3 User Guide</i>.</p>")
    @as("Name")
    name: multiRegionAccessPointName,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc(
      "<p>A container element containing the details of the requested Multi-Region Access Point.</p>"
    )
    @as("AccessPoint")
    accessPoint: option<multiRegionAccessPointReport>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "GetMultiRegionAccessPointCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMultiRegionAccessPoint = {
  type t
  type request = {
    @ocaml.doc("<p>A container element containing details about the Multi-Region Access Point.</p>")
    @as("Details")
    details: createMultiRegionAccessPointInput,
    @ocaml.doc("<p>An idempotency token used to identify the request and guarantee that requests are
         unique.</p>")
    @as("ClientToken")
    clientToken: multiRegionAccessPointClientToken,
    @ocaml.doc("<p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point. The owner of the Multi-Region Access Point also must own
         the underlying buckets.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The request token associated with the request. You can use this token with <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html\">DescribeMultiRegionAccessPointOperation</a> to determine the status of asynchronous
         requests.</p>")
    @as("RequestTokenARN")
    requestTokenARN: option<asyncRequestTokenARN>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "CreateMultiRegionAccessPointCommand"
  let make = (~details, ~clientToken, ~accountId, ()) =>
    new({details: details, clientToken: clientToken, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMultiRegionAccessPoints = {
  type t
  type request = {
    @ocaml.doc("<p>Not currently used. Do not use this parameter.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Not currently used. Do not use this parameter.</p>") @as("NextToken")
    nextToken: option<nonEmptyMaxLength1024String>,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>If the specified bucket has more Multi-Region Access Points than can be returned in one call to this
         action, this field contains a continuation token. You can use this token tin subsequent
         calls to this action to retrieve additional Multi-Region Access Points.</p>")
    @as("NextToken")
    nextToken: option<nonEmptyMaxLength1024String>,
    @ocaml.doc("<p>The list of Multi-Region Access Points associated with the user.</p>")
    @as("AccessPoints")
    accessPoints: option<multiRegionAccessPointReportList>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "ListMultiRegionAccessPointsCommand"
  let make = (~accountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of jobs that Amazon S3 will include in the <code>List Jobs</code>
         response. If there are more jobs than this number, the response will include a pagination
         token in the <code>NextToken</code> field to enable you to retrieve the next page of
         results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token to request the next page of results. Use the token that Amazon S3 returned
         in the <code>NextToken</code> element of the <code>ListJobsResult</code> from the previous
            <code>List Jobs</code> request.</p>")
    @as("NextToken")
    nextToken: option<stringForNextToken>,
    @ocaml.doc("<p>The <code>List Jobs</code> request returns jobs that match the statuses listed in this
         element.</p>")
    @as("JobStatuses")
    jobStatuses: option<jobStatusList>,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The list of current jobs and jobs that have ended within the last 30 days.</p>")
    @as("Jobs")
    jobs: option<jobListDescriptorList>,
    @ocaml.doc("<p>If the <code>List Jobs</code> request produced more than the maximum number of results,
         you can pass this value into a subsequent <code>List Jobs</code> request in order to
         retrieve the next page of results.</p>")
    @as("NextToken")
    nextToken: option<stringForNextToken>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "ListJobsCommand"
  let make = (~accountId, ~maxResults=?, ~nextToken=?, ~jobStatuses=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      jobStatuses: jobStatuses,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAccessPointConfigurationForObjectLambda = {
  type t
  type request = {
    @ocaml.doc("<p>Object Lambda Access Point configuration document.</p>") @as("Configuration")
    configuration: objectLambdaConfiguration,
    @ocaml.doc("<p>The name of the Object Lambda Access Point.</p>") @as("Name")
    name: objectLambdaAccessPointName,
    @ocaml.doc(
      "<p>The account ID for the account that owns the specified Object Lambda Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutAccessPointConfigurationForObjectLambdaCommand"
  let make = (~configuration, ~name, ~accountId, ()) =>
    new({configuration: configuration, name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetAccessPointConfigurationForObjectLambda = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the Object Lambda Access Point you want to return the configuration for.</p>"
    )
    @as("Name")
    name: objectLambdaAccessPointName,
    @ocaml.doc(
      "<p>The account ID for the account that owns the specified Object Lambda Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>Object Lambda Access Point configuration document.</p>") @as("Configuration")
    configuration: option<objectLambdaConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetAccessPointConfigurationForObjectLambdaCommand"
  let make = (~name, ~accountId, ()) => new({name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMultiRegionAccessPointOperation = {
  type t
  type request = {
    @ocaml.doc("<p>The request token associated with the request you want to know about. This request token
         is returned as part of the response when you make an asynchronous request. You provide this
         token to query about the status of the asynchronous action.</p>")
    @as("RequestTokenARN")
    requestTokenARN: asyncRequestTokenARN,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>A container element containing the details of the asynchronous operation.</p>")
    @as("AsyncOperation")
    asyncOperation: option<asyncOperation>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "DescribeMultiRegionAccessPointOperationCommand"
  let make = (~requestTokenARN, ~accountId, ()) =>
    new({requestTokenARN: requestTokenARN, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccessPointForObjectLambda = {
  type t
  type request = {
    @ocaml.doc("<p>Object Lambda Access Point configuration as a JSON document.</p>")
    @as("Configuration")
    configuration: objectLambdaConfiguration,
    @ocaml.doc("<p>The name you want to assign to this Object Lambda Access Point.</p>") @as("Name")
    name: objectLambdaAccessPointName,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID for owner of the specified Object Lambda Access Point.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>Specifies the ARN for the Object Lambda Access Point.</p>")
    @as("ObjectLambdaAccessPointArn")
    objectLambdaAccessPointArn: option<objectLambdaAccessPointArn>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "CreateAccessPointForObjectLambdaCommand"
  let make = (~configuration, ~name, ~accountId, ()) =>
    new({configuration: configuration, name: name, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutStorageLensConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The tag set of the S3 Storage Lens configuration.</p>
         <note>
            <p>You can set up to a maximum of 50 tags.</p>
         </note>")
    @as("Tags")
    tags: option<storageLensTags>,
    @ocaml.doc("<p>The S3 Storage Lens configuration.</p>") @as("StorageLensConfiguration")
    storageLensConfiguration: storageLensConfiguration,
    @ocaml.doc("<p>The account ID of the requester.</p>") @as("AccountId") accountId: accountId,
    @ocaml.doc("<p>The ID of the S3 Storage Lens configuration.</p>") @as("ConfigId")
    configId: configId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutStorageLensConfigurationCommand"
  let make = (~storageLensConfiguration, ~accountId, ~configId, ~tags=?, ()) =>
    new({
      tags: tags,
      storageLensConfiguration: storageLensConfiguration,
      accountId: accountId,
      configId: configId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetStorageLensConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The account ID of the requester.</p>") @as("AccountId") accountId: accountId,
    @ocaml.doc("<p>The ID of the Amazon S3 Storage Lens configuration.</p>") @as("ConfigId")
    configId: configId,
  }
  type response = {
    @ocaml.doc("<p>The S3 Storage Lens configuration requested.</p>")
    @as("StorageLensConfiguration")
    storageLensConfiguration: option<storageLensConfiguration>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetStorageLensConfigurationCommand"
  let make = (~accountId, ~configId, ()) => new({accountId: accountId, configId: configId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketLifecycleConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bucket.</p>
         <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p> 
         <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>")
    @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The Amazon Web Services account ID of the Outposts bucket.</p>") @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>Container for the lifecycle rule of the Outposts bucket.</p>") @as("Rules")
    rules: option<lifecycleRules>,
  }
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "GetBucketLifecycleConfigurationCommand"
  let make = (~bucket, ~accountId, ()) => new({bucket: bucket, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBucketLifecycleConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Container for lifecycle rules. You can add as many as 1,000 rules.</p>")
    @as("LifecycleConfiguration")
    lifecycleConfiguration: option<lifecycleConfiguration>,
    @ocaml.doc("<p>The name of the bucket for which to set the configuration.</p>") @as("Bucket")
    bucket: bucketName,
    @ocaml.doc("<p>The Amazon Web Services account ID of the Outposts bucket.</p>") @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3") @new
  external new: request => t = "PutBucketLifecycleConfigurationCommand"
  let make = (~bucket, ~accountId, ~lifecycleConfiguration=?, ()) =>
    new({lifecycleConfiguration: lifecycleConfiguration, bucket: bucket, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateJob = {
  type t
  type request = {
    @ocaml.doc("<p>The attribute container for the ManifestGenerator details. Jobs must be created with
         either a manifest file or a ManifestGenerator, but not both.</p>")
    @as("ManifestGenerator")
    manifestGenerator: option<jobManifestGenerator>,
    @ocaml.doc("<p>A set of tags to associate with the S3 Batch Operations job. This is an optional parameter.
      </p>")
    @as("Tags")
    tags: option<s3TagSet>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the Identity and Access Management (IAM) role that Batch Operations will
         use to run this job's action on every object in the manifest.</p>")
    @as("RoleArn")
    roleArn: iamroleArn,
    @ocaml.doc(
      "<p>The numerical priority for this job. Higher numbers indicate higher priority.</p>"
    )
    @as("Priority")
    priority: jobPriority,
    @ocaml.doc("<p>A description for this job. You can use any string within the permitted length.
         Descriptions don't need to be unique and can be used for multiple jobs.</p>")
    @as("Description")
    description: option<nonEmptyMaxLength256String>,
    @ocaml.doc("<p>Configuration parameters for the manifest.</p>") @as("Manifest")
    manifest: option<jobManifest>,
    @ocaml.doc("<p>An idempotency token to ensure that you don't accidentally submit the same request
         twice. You can use any string up to the maximum length.</p>")
    @as("ClientRequestToken")
    clientRequestToken: nonEmptyMaxLength64String,
    @ocaml.doc("<p>Configuration parameters for the optional job-completion report.</p>")
    @as("Report")
    report: jobReport,
    @ocaml.doc("<p>The action that you want this job to perform on every object listed in the manifest. For
         more information about the available actions, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-actions.html\">Operations</a> in the
            <i>Amazon S3 User Guide</i>.</p>")
    @as("Operation")
    operation: jobOperation,
    @ocaml.doc("<p>Indicates whether confirmation is required before Amazon S3 runs the job. Confirmation is
         only required for jobs created through the Amazon S3 console.</p>")
    @as("ConfirmationRequired")
    confirmationRequired: option<confirmationRequired>,
    @ocaml.doc("<p>The Amazon Web Services account ID that creates the job.</p>") @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>The ID for this job. Amazon S3 generates this ID automatically and returns it after a
         successful <code>Create Job</code> request.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "CreateJobCommand"
  let make = (
    ~roleArn,
    ~priority,
    ~clientRequestToken,
    ~report,
    ~operation,
    ~accountId,
    ~manifestGenerator=?,
    ~tags=?,
    ~description=?,
    ~manifest=?,
    ~confirmationRequired=?,
    (),
  ) =>
    new({
      manifestGenerator: manifestGenerator,
      tags: tags,
      roleArn: roleArn,
      priority: priority,
      description: description,
      manifest: manifest,
      clientRequestToken: clientRequestToken,
      report: report,
      operation: operation,
      confirmationRequired: confirmationRequired,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for the job whose information you want to retrieve.</p>") @as("JobId")
    jobId: jobId,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>Contains the configuration parameters and status for the job specified in the
            <code>Describe Job</code> request.</p>")
    @as("Job")
    job: option<jobDescriptor>,
  }
  @module("@aws-sdk/client-s3") @new external new: request => t = "DescribeJobCommand"
  let make = (~jobId, ~accountId, ()) => new({jobId: jobId, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
