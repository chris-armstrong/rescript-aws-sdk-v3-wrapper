type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-macie2") @new
external createClient: unit => awsServiceClient = "Macie2Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __timestampIso8601 = Js.Date.t
type __string = string
type __long = float
type __integer = int
type __double = float
type __boolean = bool
@ocaml.doc(
  "<p>The type of entity that performed the action on the affected resource. Possible values are:</p>"
)
type userIdentityType = [
  | @as("AWSService") #AWSService
  | @as("AWSAccount") #AWSAccount
  | @as("Root") #Root
  | @as("FederatedUser") #FederatedUser
  | @as("IAMUser") #IAMUser
  | @as("AssumedRole") #AssumedRole
]
@ocaml.doc("<p>The name of an Amazon Macie usage metric for an account. Possible values are:</p>")
type usageType = [
  | @as("SENSITIVE_DATA_DISCOVERY") #SENSITIVE_DATA_DISCOVERY
  | @as("DATA_INVENTORY_EVALUATION") #DATA_INVENTORY_EVALUATION
]
@ocaml.doc(
  "<p>The field to use to sort the results of a query for Amazon Macie account quotas and usage data. Valid values are:</p>"
)
type usageStatisticsSortKey = [
  | @as("freeTrialStartDate") #FreeTrialStartDate
  | @as("serviceLimitValue") #ServiceLimitValue
  | @as("total") #Total
  | @as("accountId") #AccountId
]
@ocaml.doc(
  "<p>The field to use in a condition that filters the results of a query for Amazon Macie account quotas and usage data. Valid values are:</p>"
)
type usageStatisticsFilterKey = [
  | @as("total") #Total
  | @as("freeTrialStartDate") #FreeTrialStartDate
  | @as("serviceLimit") #ServiceLimit
  | @as("accountId") #AccountId
]
@ocaml.doc(
  "<p>The operator to use in a condition that filters the results of a query for Amazon Macie account quotas and usage data. Valid values are:</p>"
)
type usageStatisticsFilterComparator = [
  | @as("CONTAINS") #CONTAINS
  | @as("NE") #NE
  | @as("EQ") #EQ
  | @as("LTE") #LTE
  | @as("LT") #LT
  | @as("GTE") #GTE
  | @as("GT") #GT
]
type unit_ = [@as("TERABYTES") #TERABYTES]
type type_ = [@as("aws:kms") #Aws_Kms | @as("AES256") #AES256 | @as("NONE") #NONE]
@ocaml.doc(
  "<p>An inclusive time period that Amazon Macie usage data applies to. Possible values are:</p>"
)
type timeRange = [@as("PAST_30_DAYS") #PAST_30_DAYS | @as("MONTH_TO_DATE") #MONTH_TO_DATE]
@ocaml.doc("<p>The type of object to apply a tag-based condition to. Valid values are:</p>")
type tagTarget = [@as("S3_OBJECT") #S3_OBJECT]
@ocaml.doc("<p>The storage class of the S3 object. Possible values are:</p>")
type storageClass = [
  | @as("GLACIER") #GLACIER
  | @as("ONEZONE_IA") #ONEZONE_IA
  | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE
  | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING
  | @as("STANDARD_IA") #STANDARD_IA
  | @as("REDUCED_REDUNDANCY") #REDUCED_REDUNDANCY
  | @as("STANDARD") #STANDARD
]
@ocaml.doc(
  "<p>The property to use in a condition that determines whether an S3 bucket is included or excluded from a classification job. Valid values are:</p>"
)
type simpleCriterionKeyForJob = [
  | @as("S3_BUCKET_SHARED_ACCESS") #S3_BUCKET_SHARED_ACCESS
  | @as("S3_BUCKET_EFFECTIVE_PERMISSION") #S3_BUCKET_EFFECTIVE_PERMISSION
  | @as("S3_BUCKET_NAME") #S3_BUCKET_NAME
  | @as("ACCOUNT_ID") #ACCOUNT_ID
]
type sharedAccess = [
  | @as("UNKNOWN") #UNKNOWN
  | @as("NOT_SHARED") #NOT_SHARED
  | @as("INTERNAL") #INTERNAL
  | @as("EXTERNAL") #EXTERNAL
]
@ocaml.doc("<p>The qualitative representation of the finding's severity. Possible values are:</p>")
type severityDescription = [@as("High") #High | @as("Medium") #Medium | @as("Low") #Low]
@ocaml.doc(
  "<p>The category of sensitive data that was detected and produced the finding. Possible values are:</p>"
)
type sensitiveDataItemCategory = [
  | @as("CUSTOM_IDENTIFIER") #CUSTOM_IDENTIFIER
  | @as("CREDENTIALS") #CREDENTIALS
  | @as("PERSONAL_INFORMATION") #PERSONAL_INFORMATION
  | @as("FINANCIAL_INFORMATION") #FINANCIAL_INFORMATION
]
@ocaml.doc("<p>The property to sort the query results by. Valid values are:</p>")
type searchResourcesSortAttributeName = [
  | @as("S3_CLASSIFIABLE_SIZE_IN_BYTES") #S3_CLASSIFIABLE_SIZE_IN_BYTES
  | @as("S3_CLASSIFIABLE_OBJECT_COUNT") #S3_CLASSIFIABLE_OBJECT_COUNT
  | @as("RESOURCE_NAME") #RESOURCE_NAME
  | @as("ACCOUNT_ID") #ACCOUNT_ID
]
@ocaml.doc(
  "<p>The property to use in a condition that filters the query results. Valid values are:</p>"
)
type searchResourcesSimpleCriterionKey = [
  | @as("S3_BUCKET_SHARED_ACCESS") #S3_BUCKET_SHARED_ACCESS
  | @as("S3_BUCKET_EFFECTIVE_PERMISSION") #S3_BUCKET_EFFECTIVE_PERMISSION
  | @as("S3_BUCKET_NAME") #S3_BUCKET_NAME
  | @as("ACCOUNT_ID") #ACCOUNT_ID
]
@ocaml.doc(
  "<p>The operator to use in a condition that filters the results of a query. Valid values are:</p>"
)
type searchResourcesComparator = [@as("NE") #NE | @as("EQ") #EQ]
@ocaml.doc(
  "<p>The property to use in a condition that determines whether an S3 object is included or excluded from a classification job. Valid values are:</p>"
)
type scopeFilterKey = [
  | @as("OBJECT_KEY") #OBJECT_KEY
  | @as("TAG") #TAG
  | @as("OBJECT_SIZE") #OBJECT_SIZE
  | @as("OBJECT_LAST_MODIFIED_DATE") #OBJECT_LAST_MODIFIED_DATE
  | @as("OBJECT_EXTENSION") #OBJECT_EXTENSION
  | @as("BUCKET_CREATION_DATE") #BUCKET_CREATION_DATE
]
@ocaml.doc(
  "<p>The current status of the relationship between an account and an associated Amazon Macie administrator account (<i>inviter account</i>). Possible values are:</p>"
)
type relationshipStatus = [
  | @as("AccountSuspended") #AccountSuspended
  | @as("RegionDisabled") #RegionDisabled
  | @as("EmailVerificationFailed") #EmailVerificationFailed
  | @as("EmailVerificationInProgress") #EmailVerificationInProgress
  | @as("Resigned") #Resigned
  | @as("Removed") #Removed
  | @as("Created") #Created
  | @as("Invited") #Invited
  | @as("Paused") #Paused
  | @as("Enabled") #Enabled
]
type orderBy = [@as("DESC") #DESC | @as("ASC") #ASC]
type maxResults = int
@ocaml.doc("<p>The status of an Amazon Macie account. Valid values are:</p>")
type macieStatus = [@as("ENABLED") #ENABLED | @as("PAUSED") #PAUSED]
@ocaml.doc("<p>The property to sort the results by. Valid values are:</p>")
type listJobsSortAttributeName = [
  | @as("jobType") #JobType
  | @as("name") #Name
  | @as("jobStatus") #JobStatus
  | @as("createdAt") #CreatedAt
]
@ocaml.doc("<p>The property to use to filter the results. Valid values are:</p>")
type listJobsFilterKey = [
  | @as("name") #Name
  | @as("createdAt") #CreatedAt
  | @as("jobStatus") #JobStatus
  | @as("jobType") #JobType
]
@ocaml.doc(
  "<p>Specifies whether any account- or bucket-level access errors occurred during the run of a one-time classification job or the most recent run of a recurring classification job. Possible values are:</p>"
)
type lastRunErrorStatusCode = [@as("ERROR") #ERROR | @as("NONE") #NONE]
@ocaml.doc("<p>The schedule for running a classification job. Valid values are:</p>")
type jobType = [@as("SCHEDULED") #SCHEDULED | @as("ONE_TIME") #ONE_TIME]
@ocaml.doc("<p>The status of a classification job. Possible values are:</p>")
type jobStatus = [
  | @as("USER_PAUSED") #USER_PAUSED
  | @as("IDLE") #IDLE
  | @as("COMPLETE") #COMPLETE
  | @as("CANCELLED") #CANCELLED
  | @as("PAUSED") #PAUSED
  | @as("RUNNING") #RUNNING
]
@ocaml.doc("<p>The operator to use in a condition. Valid values are:</p>")
type jobComparator = [
  | @as("STARTS_WITH") #STARTS_WITH
  | @as("CONTAINS") #CONTAINS
  | @as("NE") #NE
  | @as("LTE") #LTE
  | @as("LT") #LT
  | @as("GTE") #GTE
  | @as("GT") #GT
  | @as("EQ") #EQ
]
type isMonitoredByJob = [@as("UNKNOWN") #UNKNOWN | @as("FALSE") #FALSE | @as("TRUE") #TRUE]
type isDefinedInJob = [@as("UNKNOWN") #UNKNOWN | @as("FALSE") #FALSE | @as("TRUE") #TRUE]
type groupBy = [
  | @as("severity.description") #Severity_Description
  | @as("classificationDetails.jobId") #ClassificationDetails_JobId
  | @as("type") #Type
  | @as("resourcesAffected.s3Bucket.name") #ResourcesAffected_S3Bucket_Name
]
@ocaml.doc(
  "<p>The action to perform on findings that meet the filter criteria. To suppress (automatically archive) findings that meet the criteria, set this value to ARCHIVE. Valid values are:</p>"
)
type findingsFilterAction = [@as("NOOP") #NOOP | @as("ARCHIVE") #ARCHIVE]
@ocaml.doc(
  "<p>The type of finding. For details about each type, see <a href=\"https://docs.aws.amazon.com/macie/latest/user/findings-types.html\">Types of Amazon Macie findings</a> in the <i>Amazon Macie User Guide</i>. Valid values are:</p>"
)
type findingType = [
  | @as("Policy:IAMUser/S3BlockPublicAccessDisabled") #Policy_IAMUser_S3BlockPublicAccessDisabled
  | @as("Policy:IAMUser/S3BucketEncryptionDisabled") #Policy_IAMUser_S3BucketEncryptionDisabled
  | @as("Policy:IAMUser/S3BucketReplicatedExternally") #Policy_IAMUser_S3BucketReplicatedExternally
  | @as("Policy:IAMUser/S3BucketSharedExternally") #Policy_IAMUser_S3BucketSharedExternally
  | @as("Policy:IAMUser/S3BucketPublic") #Policy_IAMUser_S3BucketPublic
  | @as("SensitiveData:S3Object/CustomIdentifier") #SensitiveData_S3Object_CustomIdentifier
  | @as("SensitiveData:S3Object/Credentials") #SensitiveData_S3Object_Credentials
  | @as("SensitiveData:S3Object/Personal") #SensitiveData_S3Object_Personal
  | @as("SensitiveData:S3Object/Financial") #SensitiveData_S3Object_Financial
  | @as("SensitiveData:S3Object/Multiple") #SensitiveData_S3Object_Multiple
]
@ocaml.doc("<p>The grouping to sort the results by. Valid values are:</p>")
type findingStatisticsSortAttributeName = [@as("count") #Count | @as("groupKey") #GroupKey]
@ocaml.doc(
  "<p>The frequency with which Amazon Macie publishes updates to policy findings for an account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events). For more information, see <a href=\"https://docs.aws.amazon.com/macie/latest/user/findings-monitor.html\">Monitoring and processing findings</a> in the <i>Amazon Macie User Guide</i>. Valid values are:</p>"
)
type findingPublishingFrequency = [
  | @as("SIX_HOURS") #SIX_HOURS
  | @as("ONE_HOUR") #ONE_HOUR
  | @as("FIFTEEN_MINUTES") #FIFTEEN_MINUTES
]
@ocaml.doc("<p>The category of the finding. Valid values are:</p>")
type findingCategory = [@as("POLICY") #POLICY | @as("CLASSIFICATION") #CLASSIFICATION]
@ocaml.doc(
  "<p>The type of action that occurred for the resource and produced the policy finding:</p>"
)
type findingActionType = [@as("AWS_API_CALL") #AWS_API_CALL]
@ocaml.doc("<p>The source of an issue or delay. Possible values are:</p>")
type errorCode = [@as("InternalError") #InternalError | @as("ClientError") #ClientError]
@ocaml.doc(
  "<p>The type of server-side encryption that's used to encrypt an S3 object or objects in an S3 bucket. Valid values are:</p>"
)
type encryptionType = [
  | @as("UNKNOWN") #UNKNOWN
  | @as("aws:kms") #Aws_Kms
  | @as("AES256") #AES256
  | @as("NONE") #NONE
]
type effectivePermission = [
  | @as("UNKNOWN") #UNKNOWN
  | @as("NOT_PUBLIC") #NOT_PUBLIC
  | @as("PUBLIC") #PUBLIC
]
type dayOfWeek = [
  | @as("SATURDAY") #SATURDAY
  | @as("FRIDAY") #FRIDAY
  | @as("THURSDAY") #THURSDAY
  | @as("WEDNESDAY") #WEDNESDAY
  | @as("TUESDAY") #TUESDAY
  | @as("MONDAY") #MONDAY
  | @as("SUNDAY") #SUNDAY
]
@ocaml.doc(
  "<p>Specifies that a classification job runs once a day, every day. This is an empty object.</p>"
)
type dailySchedule = unit
@ocaml.doc(
  "<p>The type of currency that the data for an Amazon Macie usage metric is reported in. Possible values are:</p>"
)
type currency = [@as("USD") #USD]
type allowsUnencryptedObjectUploads = [
  | @as("UNKNOWN") #UNKNOWN
  | @as("FALSE") #FALSE
  | @as("TRUE") #TRUE
]
@ocaml.doc(
  "<p>The current status of an account as the delegated Amazon Macie administrator account for an AWS organization. Possible values are:</p>"
)
type adminStatus = [@as("DISABLING_IN_PROGRESS") #DISABLING_IN_PROGRESS | @as("ENABLED") #ENABLED]
type __listOf__string = array<__string>
type __listOfFindingType = array<findingType>
@ocaml.doc("<p>Specifies a weekly recurrence pattern for running a classification job.</p>")
type weeklySchedule = {
  @ocaml.doc("<p>The day of the week when Amazon Macie runs the job.</p>")
  dayOfWeek: option<dayOfWeek>,
}
@ocaml.doc(
  "<p>Provides information about when a classification job was paused. For a one-time job, this object also specifies when the job will expire and be cancelled if it isn't resumed. For a recurring job, this object also specifies when the paused job run will expire and be cancelled if it isn't resumed. This object is present only if a job's current status (jobStatus) is USER_PAUSED. The information in this object applies only to a job that was paused while it had a status of RUNNING.</p>"
)
type userPausedDetails = {
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when you paused the job.</p>"
  )
  jobPausedAt: option<__timestampIso8601>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS Health event that Amazon Macie sent to notify you of the job or job run's pending expiration and cancellation. This value is null if a job has been paused for less than 23 days.</p>"
  )
  jobImminentExpirationHealthEventArn: option<__string>,
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when the job or job run will expire and be cancelled if you don't resume it first.</p>"
  )
  jobExpiresAt: option<__timestampIso8601>,
}
@ocaml.doc(
  "<p>Provides information about an AWS account and entity that performed an action on an affected resource. The action was performed using the credentials for your AWS account.</p>"
)
type userIdentityRoot = {
  @ocaml.doc("<p>The unique identifier for the entity that performed the action.</p>")
  principalId: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the principal that performed the action. The last section of the ARN contains the name of the user or role that performed the action.</p>"
  )
  arn: option<__string>,
  @ocaml.doc("<p>The unique identifier for the AWS account.</p>") accountId: option<__string>,
}
@ocaml.doc(
  "<p>Provides aggregated data for an Amazon Macie usage metric. The value for the metric reports estimated usage data for an account for the preceding 30 days or the current calendar month to date, depending on the time period (timeRange) specified in the request.</p>"
)
type usageTotal = {
  @ocaml.doc(
    "<p>The name of the metric. Possible values are: DATA_INVENTORY_EVALUATION, for monitoring S3 buckets; and, SENSITIVE_DATA_DISCOVERY, for analyzing S3 objects to detect sensitive data.</p>"
  )
  @as("type")
  type_: option<usageType>,
  @ocaml.doc("<p>The estimated value for the metric.</p>") estimatedCost: option<__string>,
  @ocaml.doc(
    "<p>The type of currency that the value for the metric (estimatedCost) is reported in.</p>"
  )
  currency: option<currency>,
}
@ocaml.doc(
  "<p>Specifies criteria for sorting the results of a query for Amazon Macie account quotas and usage data.</p>"
)
type usageStatisticsSortBy = {
  @ocaml.doc(
    "<p>The sort order to apply to the results, based on the value for the field specified by the key property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>"
  )
  orderBy: option<orderBy>,
  @ocaml.doc("<p>The field to sort the results by.</p>") key: option<usageStatisticsSortKey>,
}
@ocaml.doc(
  "<p>Provides information about an account-related request that hasn't been processed.</p>"
)
type unprocessedAccount = {
  @ocaml.doc("<p>The reason why the request hasn't been processed.</p>")
  errorMessage: option<__string>,
  @ocaml.doc("<p>The source of the issue or delay in processing the request.</p>")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The AWS account ID for the account that the request applies to.</p>")
  accountId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies a tag key or tag key and value pair to use in a tag-based condition that determines whether an S3 object is included or excluded from a classification job. Tag keys and values are case sensitive. Also, Amazon Macie doesn't support use of partial values or wildcard characters in tag-based conditions.</p>"
)
type tagValuePair = {
  @ocaml.doc(
    "<p>The tag value, associated with the specified tag key (key), to use in the condition. To specify only a tag key for a condition, specify the tag key for the key property and set this value to an empty string.</p>"
  )
  value: option<__string>,
  @ocaml.doc("<p>The value for the tag key to use in the condition.</p>") key: option<__string>,
}
@ocaml.doc(
  "<p>A string-to-string map of key-value pairs that specifies the tags (keys and values) for a classification job, custom data identifier, findings filter, or member account.</p>"
)
type tagMap = Js.Dict.t<__string>
@ocaml.doc(
  "<p>Specifies a tag key, a tag value, or a tag key and value (as a pair) to use in a tag-based condition that determines whether an S3 bucket is included or excluded from a classification job. Tag keys and values are case sensitive. Also, Amazon Macie doesn't support use of partial values or wildcard characters in tag-based conditions.</p>"
)
type tagCriterionPairForJob = {
  @ocaml.doc("<p>The tag value to use in the condition.</p>") value: option<__string>,
  @ocaml.doc("<p>The value for the tag key to use in the condition.</p>") key: option<__string>,
}
@ocaml.doc("<p>Provides processing statistics for a classification job.</p>")
type statistics = {
  @ocaml.doc("<p>The number of times that the job has run.</p>") numberOfRuns: option<__double>,
  @ocaml.doc(
    "<p>The approximate number of objects that the job has yet to process during its current run.</p>"
  )
  approximateNumberOfObjectsToProcess: option<__double>,
}
@ocaml.doc("<p>Specifies criteria for sorting the results of a request for findings.</p>")
type sortCriteria = {
  @ocaml.doc(
    "<p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>"
  )
  orderBy: option<orderBy>,
  @ocaml.doc(
    "<p>The name of the property to sort the results by. This value can be the name of any property that Amazon Macie defines for a finding.</p>"
  )
  attributeName: option<__string>,
}
@ocaml.doc("<p>Provides the numerical and qualitative representations of a finding's severity.</p>")
type severity = {
  @ocaml.doc(
    "<p>The numerical representation of the finding's severity, ranging from 1 (least severe) to 3 (most severe).</p>"
  )
  score: option<__long>,
  @ocaml.doc(
    "<p>The qualitative representation of the finding's severity, ranging from Low (least severe) to High (most severe).</p>"
  )
  description: option<severityDescription>,
}
@ocaml.doc(
  "<p>Provides information about the source and type of temporary security credentials that were issued to an entity.</p>"
)
type sessionIssuer = {
  @ocaml.doc(
    "<p>The name or alias of the user or role that issued the session. This value is null if the credentials were obtained from a root account that doesn't have an alias.</p>"
  )
  userName: option<__string>,
  @ocaml.doc(
    "<p>The source of the temporary security credentials, such as Root, IAMUser, or Role.</p>"
  )
  @as("type")
  type_: option<__string>,
  @ocaml.doc("<p>The unique identifier for the entity that was used to get the credentials.</p>")
  principalId: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the source account, IAM user, or role that was used to get the credentials.</p>"
  )
  arn: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the AWS account that owns the entity that was used to get the credentials.</p>"
  )
  accountId: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the context in which temporary security credentials were issued to an entity.</p>"
)
type sessionContextAttributes = {
  @ocaml.doc(
    "<p>Specifies whether the credentials were authenticated with a multi-factor authentication (MFA) device.</p>"
  )
  mfaAuthenticated: option<__boolean>,
  @ocaml.doc(
    "<p>The date and time, in UTC and ISO 8601 format, when the credentials were issued.</p>"
  )
  creationDate: option<__timestampIso8601>,
}
@ocaml.doc("<p>Specifies a current quota for an Amazon Macie account.</p>")
type serviceLimit = {
  @ocaml.doc(
    "<p>The value for the metric specified by the UsageByAccount.type field in the response.</p>"
  )
  value: option<__long>,
  @ocaml.doc("<p>The unit of measurement for the value specified by the value field.</p>")
  @as("unit")
  unit_: option<unit_>,
  @ocaml.doc(
    "<p>Specifies whether the account has met the quota that corresponds to the metric specified by the UsageByAccount.type field in the response.</p>"
  )
  isServiceLimited: option<__boolean>,
}
@ocaml.doc(
  "<p>Provides information about the server-side encryption settings for an S3 bucket or S3 object.</p>"
)
type serverSideEncryption = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) or unique identifier (key ID) for the AWS Key Management Service (AWS KMS) customer master key (CMK) that's used to encrypt data in the bucket or the object. If an AWS KMS CMK isn't used, this value is null.</p>"
  )
  kmsMasterKeyId: option<__string>,
  @ocaml.doc(
    "<p>The server-side encryption algorithm that's used when storing data in the bucket or object. If default encryption is disabled for the bucket or the object isn't encrypted using server-side encryption, this value is NONE.</p>"
  )
  encryptionType: option<encryptionType>,
}
@ocaml.doc(
  "<p>Specifies configuration settings that determine which findings are published to AWS Security Hub automatically. For information about how Macie publishes findings to Security Hub, see <a href=\"https://docs.aws.amazon.com/macie/latest/user/securityhub-integration.html\">Amazon Macie integration with Security Hub</a> in the <i>Amazon Macie User Guide</i>.</p>"
)
type securityHubConfiguration = {
  @ocaml.doc(
    "<p>Specifies whether to publish policy findings to AWS Security Hub. If you set this value to true, Amazon Macie automatically publishes all new and updated policy findings that weren't suppressed by a findings filter. The default value is true.</p>"
  )
  publishPolicyFindings: __boolean,
  @ocaml.doc(
    "<p>Specifies whether to publish sensitive data findings to AWS Security Hub. If you set this value to true, Amazon Macie automatically publishes all sensitive data findings that weren't suppressed by a findings filter. The default value is false.</p>"
  )
  publishClassificationFindings: __boolean,
}
@ocaml.doc(
  "<p>Specifies a tag key, a tag value, or a tag key and value (as a pair) to use in a tag-based filter condition for a query. Tag keys and values are case sensitive. Also, Amazon Macie doesn't support use of partial values or wildcard characters in tag-based filter conditions.</p>"
)
type searchResourcesTagCriterionPair = {
  @ocaml.doc("<p>The tag value to use in the condition.</p>") value: option<__string>,
  @ocaml.doc("<p>The value for the tag key to use in the condition.</p>") key: option<__string>,
}
@ocaml.doc(
  "<p>Specifies criteria for sorting the results of a query for information about AWS resources that Amazon Macie monitors and analyzes.</p>"
)
type searchResourcesSortCriteria = {
  @ocaml.doc(
    "<p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>"
  )
  orderBy: option<orderBy>,
  @ocaml.doc("<p>The property to sort the results by.</p>")
  attributeName: option<searchResourcesSortAttributeName>,
}
@ocaml.doc(
  "<p>Specifies an S3 bucket to store data classification results in, and the encryption settings to use when storing results in that bucket.</p>"
)
type s3Destination = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use for encryption of the results. This must be the ARN of an existing CMK that's in the same AWS Region as the bucket.</p>"
  )
  kmsKeyArn: __string,
  @ocaml.doc(
    "<p>The path prefix to use in the path to the location in the bucket. This prefix specifies where to store classification results in the bucket.</p>"
  )
  keyPrefix: option<__string>,
  @ocaml.doc("<p>The name of the bucket.</p>") bucketName: __string,
}
@ocaml.doc("<p>Provides information about the user who owns an S3 bucket.</p>")
type s3BucketOwner = {
  @ocaml.doc("<p>The AWS account ID for the user who owns the bucket.</p>") id: option<__string>,
  @ocaml.doc("<p>The display name of the user who owns the bucket.</p>")
  displayName: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the location of an occurrence of sensitive data in an Apache Avro object container or Apache Parquet file.</p>"
)
type record = {
  @ocaml.doc("<p>The record index, starting from 0, for the record that contains the data.</p>")
  recordIndex: option<__long>,
  @ocaml.doc(
    "<p>The path, as a JSONPath expression, to the field in the record that contains the data. If Amazon Macie detects sensitive data in the name of any element in the path, Macie omits this field.</p> <p>If the name of an element exceeds 20 characters, Macie truncates the name by removing characters from the beginning of the name. If the resulting full path exceeds 250 characters, Macie also truncates the path, starting with the first element in the path, until the path contains 250 or fewer characters.</p>"
  )
  jsonPath: option<__string>,
}
@ocaml.doc(
  "<p>Provides details about the location of an occurrence of sensitive data in an Adobe Portable Document Format file, Microsoft Word document, or non-binary text file.</p>"
)
type range = {
  @ocaml.doc(
    "<p>The column number for the column that contains the data, if the file contains structured data.</p>"
  )
  startColumn: option<__long>,
  @ocaml.doc(
    "<p>Possible values are:</p> <ul><li><p>In an Occurrences.lineRanges array, the number of lines from the beginning of the file to the beginning of the sensitive data.</p></li> <li><p>In an Occurrences.offsetRanges array, the number of characters from the beginning of the file to the beginning of the sensitive data.</p></li> <li><p>In a Page object, the number of lines (lineRange) or characters (offsetRange) from the beginning of the page to the beginning of the sensitive data.</p></li></ul>"
  )
  start: option<__long>,
  @ocaml.doc(
    "<p>Possible values are:</p> <ul><li><p>In an Occurrences.lineRanges array, the number of lines from the beginning of the file to the end of the sensitive data.</p></li> <li><p>In an Occurrences.offsetRanges array, the number of characters from the beginning of the file to the end of the sensitive data.</p></li> <li><p>In a Page object, the number of lines (lineRange) or characters (offsetRange) from the beginning of the page to the end of the sensitive data.</p></li></ul>"
  )
  end: option<__long>,
}
@ocaml.doc(
  "<p>Provides information about the total storage size (in bytes) or number of objects that Amazon Macie can't analyze in one or more S3 buckets. In a BucketMetadata or MatchingBucket object, this data is for a specific bucket. In a GetBucketStatisticsResponse object, this data is aggregated for all the buckets in the query results. If versioning is enabled for a bucket, total storage size values are based on the size of the latest version of each applicable object in the bucket.</p>"
)
type objectLevelStatistics = {
  @ocaml.doc(
    "<p>The total storage size (in bytes) or number of objects that Amazon Macie can't analyze because the objects use an unsupported storage class or don't have a file name extension for a supported file or storage format.</p>"
  )
  total: option<__long>,
  @ocaml.doc(
    "<p>The total storage size (in bytes) or number of objects that Amazon Macie can't analyze because the objects use an unsupported storage class.</p>"
  )
  storageClass: option<__long>,
  @ocaml.doc(
    "<p>The total storage size (in bytes) or number of objects that Amazon Macie can't analyze because the objects don't have a file name extension for a supported file or storage format.</p>"
  )
  fileType: option<__long>,
}
@ocaml.doc(
  "<p>Provides information about the number of objects that are in an S3 bucket and use certain types of server-side encryption, use client-side encryption, or aren't encrypted.</p>"
)
type objectCountByEncryptionType = {
  @ocaml.doc(
    "<p>The total number of objects that Amazon Macie doesn't have current encryption metadata for. Macie can't provide current data about the encryption settings for these objects.</p>"
  )
  unknown: option<__long>,
  @ocaml.doc(
    "<p>The total number of objects that aren't encrypted or use client-side encryption.</p>"
  )
  unencrypted: option<__long>,
  @ocaml.doc(
    "<p>The total number of objects that are encrypted with an Amazon S3 managed key. The objects use Amazon S3 managed encryption (SSE-S3).</p>"
  )
  s3Managed: option<__long>,
  @ocaml.doc(
    "<p>The total number of objects that are encrypted with an AWS Key Management Service (AWS KMS) customer master key (CMK). The objects use AWS managed AWS KMS encryption (AWS-KMS) or customer managed AWS KMS encryption (SSE-KMS).</p>"
  )
  kmsManaged: option<__long>,
  @ocaml.doc(
    "<p>The total number of objects that are encrypted with a customer-managed key. The objects use customer-provided server-side encryption (SSE-C).</p>"
  )
  customerManaged: option<__long>,
}
@ocaml.doc("<p>Specifies a monthly recurrence pattern for running a classification job.</p>")
type monthlySchedule = {
  @ocaml.doc(
    "<p>The numeric day of the month when Amazon Macie runs the job. This value can be an integer from 1 through 31.</p> <p>If this value exceeds the number of days in a certain month, Macie doesn't run the job that month. Macie runs the job only during months that have the specified day. For example, if this value is 31 and a month has only 30 days, Macie doesn't run the job that month. To run the job every month, specify a value that's less than 29.</p>"
  )
  dayOfMonth: option<__integer>,
}
@ocaml.doc(
  "<p>Specifies criteria for sorting the results of a request for information about classification jobs.</p>"
)
type listJobsSortCriteria = {
  @ocaml.doc(
    "<p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>"
  )
  orderBy: option<orderBy>,
  @ocaml.doc("<p>The property to sort the results by.</p>")
  attributeName: option<listJobsSortAttributeName>,
}
@ocaml.doc(
  "<p>Specifies whether any account- or bucket-level access errors occurred when a classification job ran. For information about using logging data to investigate these errors, see <a href=\"https://docs.aws.amazon.com/macie/latest/user/discovery-jobs-monitor-cw-logs.html\">Monitoring sensitive data discovery jobs</a> in the <i>Amazon Macie User Guide</i>.</p>"
)
type lastRunErrorStatus = {
  @ocaml.doc(
    "<p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run. Possible values are:</p> <ul><li><p>ERROR - One or more errors occurred. Amazon Macie didn't process all the data specified for the job.</p></li> <li><p>NONE - No errors occurred. Macie processed all the data specified for the job.</p></li></ul>"
  )
  code: option<lastRunErrorStatusCode>,
}
@ocaml.doc(
  "<p>Provides information about the tags that are associated with an S3 bucket or object. Each tag consists of a required tag key and an associated tag value.</p>"
)
type keyValuePair = {
  @ocaml.doc(
    "<p>One part of a key-value pair that comprises a tag. A tag value acts as a descriptor for a tag key. A tag value can be an empty string.</p>"
  )
  value: option<__string>,
  @ocaml.doc(
    "<p>One part of a key-value pair that comprises a tag. A tag key is a general label that acts as a category for more specific tag values.</p>"
  )
  key: option<__string>,
}
@ocaml.doc(
  "<p>Specifies whether any one-time or recurring classification jobs are configured to analyze data in an S3 bucket, and, if so, the details of the job that ran most recently.</p>"
)
type jobDetails = {
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when the job (lastJobId) started. If the job is a recurring job, this value indicates when the most recent run started.</p> <p>This value is typically null if the value for the isDefinedInJob property is FALSE or UNKNOWN.</p>"
  )
  lastJobRunTime: option<__timestampIso8601>,
  @ocaml.doc(
    "<p>The unique identifier for the job that ran most recently and is configured to analyze data in the bucket, either the latest run of a recurring job or the only run of a one-time job.</p> <p>This value is typically null if the value for the isDefinedInJob property is FALSE or UNKNOWN.</p>"
  )
  lastJobId: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether any recurring jobs are configured to analyze data in the bucket. Possible values are:</p> <ul><li><p>TRUE - The bucket is explicitly included in the bucket definition (S3BucketDefinitionForJob) for one or more recurring jobs or the bucket matches the bucket criteria (S3BucketCriteriaForJob) for one or more recurring jobs. At least one of those jobs has a status other than CANCELLED.</p></li> <li><p>FALSE - The bucket isn't explicitly included in the bucket definition (S3BucketDefinitionForJob) for any recurring jobs, the bucket doesn't match the bucket criteria (S3BucketCriteriaForJob) for any recurring jobs, or all the recurring jobs that are configured to analyze data in the bucket have a status of CANCELLED.</p></li> <li><p>UNKNOWN - An exception occurred when Amazon Macie attempted to retrieve job data for the bucket.</p></li></ul>"
  )
  isMonitoredByJob: option<isMonitoredByJob>,
  @ocaml.doc(
    "<p>Specifies whether any one-time or recurring jobs are configured to analyze data in the bucket. Possible values are:</p> <ul><li><p>TRUE - The bucket is explicitly included in the bucket definition (S3BucketDefinitionForJob) for one or more jobs and at least one of those jobs has a status other than CANCELLED. Or the bucket matched the bucket criteria (S3BucketCriteriaForJob) for at least one job that previously ran.</p></li> <li><p>FALSE - The bucket isn't explicitly included in the bucket definition (S3BucketDefinitionForJob) for any jobs, all the jobs that explicitly include the bucket in their bucket definitions have a status of CANCELLED, or the bucket didn't match the bucket criteria (S3BucketCriteriaForJob) for any jobs that previously ran.</p></li> <li><p>UNKNOWN - An exception occurred when Amazon Macie attempted to retrieve job data for the bucket.</p></li></ul> <p></p>"
  )
  isDefinedInJob: option<isDefinedInJob>,
}
@ocaml.doc("<p>Provides information about the registered owner of an IP address.</p>")
type ipOwner = {
  @ocaml.doc("<p>The name of the organization that owned the IP address.</p>")
  org: option<__string>,
  @ocaml.doc("<p>The name of the internet service provider (ISP) that owned the IP address.</p>")
  isp: option<__string>,
  @ocaml.doc(
    "<p>The organization identifier that's associated with the autonomous system number (ASN) for the autonomous system that included the IP address.</p>"
  )
  asnOrg: option<__string>,
  @ocaml.doc(
    "<p>The autonomous system number (ASN) for the autonomous system that included the IP address.</p>"
  )
  asn: option<__string>,
}
@ocaml.doc(
  "<p>Provides geographic coordinates that indicate where a specified IP address originated from.</p>"
)
type ipGeoLocation = {
  @ocaml.doc("<p>The longitude coordinate of the location, rounded to four decimal places.</p>")
  lon: option<__double>,
  @ocaml.doc("<p>The latitude coordinate of the location, rounded to four decimal places.</p>")
  lat: option<__double>,
}
@ocaml.doc("<p>Provides information about the country that an IP address originated from.</p>")
type ipCountry = {
  @ocaml.doc("<p>The name of the country that the IP address originated from.</p>")
  name: option<__string>,
  @ocaml.doc(
    "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country that the IP address originated from. For example, US for the United States.</p>"
  )
  code: option<__string>,
}
@ocaml.doc("<p>Provides information about the city that an IP address originated from.</p>")
type ipCity = {@ocaml.doc("<p>The name of the city.</p>") name: option<__string>}
@ocaml.doc(
  "<p>Provides information about an Amazon Macie membership invitation that was received by an account.</p>"
)
type invitation = {
  @ocaml.doc(
    "<p>The status of the relationship between the account that sent the invitation (<i>inviter account</i>) and the account that received the invitation (<i>invitee account</i>).</p>"
  )
  relationshipStatus: option<relationshipStatus>,
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when the invitation was sent.</p>"
  )
  invitedAt: option<__timestampIso8601>,
  @ocaml.doc(
    "<p>The unique identifier for the invitation. Amazon Macie uses this identifier to validate the inviter account with the invitee account.</p>"
  )
  invitationId: option<__string>,
  @ocaml.doc("<p>The AWS account ID for the account that sent the invitation.</p>")
  accountId: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about an AWS Identity and Access Management (IAM) user who performed an action on an affected resource.</p>"
)
type iamUser = {
  @ocaml.doc("<p>The user name of the IAM user who performed the action.</p>")
  userName: option<__string>,
  @ocaml.doc("<p>The unique identifier for the IAM user who performed the action.</p>")
  principalId: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the principal that performed the action. The last section of the ARN contains the name of the user who performed the action.</p>"
  )
  arn: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the AWS account that's associated with the IAM user who performed the action.</p>"
  )
  accountId: option<__string>,
}
@ocaml.doc(
  "<p>Provides a group of results for a query that retrieved aggregated statistical data about findings.</p>"
)
type groupCount = {
  @ocaml.doc(
    "<p>The name of the property that defines the group in the query results, as specified by the groupBy property in the query request.</p>"
  )
  groupKey: option<__string>,
  @ocaml.doc("<p>The total number of findings in the group of query results.</p>")
  count: option<__long>,
}
@ocaml.doc(
  "<p>Specifies criteria for sorting the results of a query that retrieves aggregated statistical data about findings.</p>"
)
type findingStatisticsSortCriteria = {
  @ocaml.doc(
    "<p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>"
  )
  orderBy: option<orderBy>,
  @ocaml.doc(
    "<p>The grouping to sort the results by. Valid values are: count, sort the results by the number of findings in each group of results; and, groupKey, sort the results by the name of each group of results.</p>"
  )
  attributeName: option<findingStatisticsSortAttributeName>,
}
@ocaml.doc(
  "<p>Provides information about the domain name of the device that an entity used to perform an action on an affected resource.</p>"
)
type domainDetails = {@ocaml.doc("<p>The name of the domain.</p>") domainName: option<__string>}
@ocaml.doc("<p>Provides information about a custom data identifier.</p>")
type customDataIdentifierSummary = {
  @ocaml.doc("<p>The custom name of the custom data identifier.</p>") name: option<__string>,
  @ocaml.doc("<p>The unique identifier for the custom data identifier.</p>") id: option<__string>,
  @ocaml.doc("<p>The custom description of the custom data identifier.</p>")
  description: option<__string>,
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when the custom data identifier was created.</p>"
  )
  createdAt: option<__timestampIso8601>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom data identifier.</p>")
  arn: option<__string>,
}
@ocaml.doc("<p>Provides information about the status of a sensitive data finding.</p>")
type classificationResultStatus = {
  @ocaml.doc(
    "<p>A brief description of the status of the finding. Amazon Macie uses this value to notify you of any errors, warnings, or considerations that might impact your analysis of the finding.</p>"
  )
  reason: option<__string>,
  @ocaml.doc(
    "<p>The status of the finding. Possible values are:</p> <ul><li><p>COMPLETE - Amazon Macie successfully completed its analysis of the object that the finding applies to.</p></li> <li><p>PARTIAL - Macie analyzed only a subset of the data in the object that the finding applies to. For example, the object is an archive file that contains files in an unsupported format.</p></li> <li><p>SKIPPED - Macie wasn't able to analyze the object that the finding applies to. For example, the object is a malformed file or a file that uses an unsupported format.</p></li></ul>"
  )
  code: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the location of an occurrence of sensitive data in a Microsoft Excel workbook, CSV file, or TSV file.</p>"
)
type cell = {
  @ocaml.doc("<p>The row number of the row that contains the data.</p>") row: option<__long>,
  @ocaml.doc(
    "<p>The name of the column that contains the data, if available. This value is also null if Amazon Macie detects sensitive data in the name of any column in the file.</p>"
  )
  columnName: option<__string>,
  @ocaml.doc(
    "<p>The column number of the column that contains the data. For a Microsoft Excel workbook, this value correlates to the alphabetical character(s) for a column identifier. For example, 1 for column A, 2 for column B, and so on.</p>"
  )
  column: option<__long>,
  @ocaml.doc(
    "<p>The location of the cell, as an absolute cell reference, that contains the data. For example, Sheet2!C5 for cell C5 on Sheet2 in a Microsoft Excel workbook. This value is null for CSV and TSV files.</p>"
  )
  cellReference: option<__string>,
}
@ocaml.doc(
  "<p>Specifies criteria for sorting the results of a query for information about S3 buckets.</p>"
)
type bucketSortCriteria = {
  @ocaml.doc(
    "<p>The sort order to apply to the results, based on the value specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>"
  )
  orderBy: option<orderBy>,
  @ocaml.doc(
    "<p>The name of the bucket property to sort the results by. This value can be one of the following properties that Amazon Macie defines as bucket metadata: accountId, bucketName, classifiableObjectCount, classifiableSizeInBytes, objectCount, or sizeInBytes.</p>"
  )
  attributeName: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the default server-side encryption settings for an S3 bucket. For detailed information about these settings, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html\">Setting default server-side encryption behavior for Amazon S3 buckets</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>"
)
type bucketServerSideEncryption = {
  @ocaml.doc(
    "<p>The type of server-side encryption that's used by default when storing new objects in the bucket. Possible values are:</p> <ul><li><p>AES256 - New objects are encrypted with an Amazon S3 managed key and use Amazon S3 managed encryption (SSE-S3).</p></li> <li><p>aws:kms - New objects are encrypted with an AWS KMS CMK, specified by the kmsMasterKeyId property, and use AWS managed AWS KMS encryption (AWS-KMS) or customer managed AWS KMS encryption (SSE-KMS).</p></li> <li><p>NONE - New objects aren't encrypted by default. Default encryption is disabled for the bucket.</p></li></ul>"
  )
  @as("type")
  type_: option<type_>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) or unique identifier (key ID) for the AWS Key Management Service (AWS KMS) customer master key (CMK) that's used by default to encrypt objects that are added to the bucket. This value is null if the bucket uses an Amazon S3 managed key to encrypt new objects or the bucket doesn't encrypt new objects by default.</p>"
  )
  kmsMasterKeyId: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the permissions settings of the bucket policy for an S3 bucket.</p>"
)
type bucketPolicy = {
  @ocaml.doc(
    "<p>Specifies whether the bucket policy allows the general public to have write access to the bucket.</p>"
  )
  allowsPublicWriteAccess: option<__boolean>,
  @ocaml.doc(
    "<p>Specifies whether the bucket policy allows the general public to have read access to the bucket.</p>"
  )
  allowsPublicReadAccess: option<__boolean>,
}
@ocaml.doc(
  "<p>Provides information about the number of S3 buckets whose bucket policies do or don't require server-side encryption of objects when objects are uploaded to the buckets.</p>"
)
type bucketCountPolicyAllowsUnencryptedObjectUploads = {
  @ocaml.doc(
    "<p>The total number of buckets that Amazon Macie wasn't able to evaluate server-side encryption requirements for. Macie can't determine whether the bucket policies for these buckets require server-side encryption of new objects.</p>"
  )
  unknown: option<__long>,
  @ocaml.doc(
    "<p>The total number of buckets whose bucket policies require server-side encryption of new objects. PutObject requests for these buckets must include the x-amz-server-side-encryption header and the value for that header must be AES256 or aws:kms.</p>"
  )
  deniesUnencryptedObjectUploads: option<__long>,
  @ocaml.doc(
    "<p>The total number of buckets that don't have a bucket policy or have a bucket policy that doesn't require server-side encryption of new objects. If a bucket policy exists, the policy doesn't require PutObject requests to include the x-amz-server-side-encryption header and it doesn't require the value for that header to be AES256 or aws:kms.</p>"
  )
  allowsUnencryptedObjectUploads: option<__long>,
}
@ocaml.doc(
  "<p>Provides information about the number of S3 buckets that are or aren't shared with other AWS accounts.</p>"
)
type bucketCountBySharedAccessType = {
  @ocaml.doc(
    "<p>The total number of buckets that Amazon Macie wasn't able to evaluate shared access settings for. Macie can't determine whether these buckets are shared with other AWS accounts.</p>"
  )
  unknown: option<__long>,
  @ocaml.doc("<p>The total number of buckets that aren't shared with other AWS accounts.</p>")
  notShared: option<__long>,
  @ocaml.doc(
    "<p>The total number of buckets that are shared with an AWS account that's part of the same Amazon Macie organization.</p>"
  )
  internal: option<__long>,
  @ocaml.doc(
    "<p>The total number of buckets that are shared with an AWS account that isn't part of the same Amazon Macie organization.</p>"
  )
  @as("external")
  external_: option<__long>,
}
@ocaml.doc(
  "<p>Provides information about the number of S3 buckets that use certain types of server-side encryption by default or don't encrypt new objects by default. For detailed information about these settings, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html\">Setting default server-side encryption behavior for Amazon S3 buckets</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>"
)
type bucketCountByEncryptionType = {
  @ocaml.doc(
    "<p>The total number of buckets that Amazon Macie doesn't have current encryption metadata for. Macie can't provide current data about the default encryption settings for these buckets.</p>"
  )
  unknown: option<__long>,
  @ocaml.doc(
    "<p>The total number of buckets that don't encrypt new objects by default. Default encryption is disabled for these buckets.</p>"
  )
  unencrypted: option<__long>,
  @ocaml.doc(
    "<p>The total number of buckets that use an Amazon S3 managed key to encrypt new objects by default. These buckets use Amazon S3 managed encryption (SSE-S3) by default.</p>"
  )
  s3Managed: option<__long>,
  @ocaml.doc(
    "<p>The total number of buckets that use an AWS Key Management Service (AWS KMS) customer master key (CMK) to encrypt new objects by default. These buckets use AWS managed AWS KMS encryption (AWS-KMS) or customer managed AWS KMS encryption (SSE-KMS) by default.</p>"
  )
  kmsManaged: option<__long>,
}
@ocaml.doc(
  "<p>Provides information about the number of S3 buckets that are publicly accessible based on a combination of permissions settings for each bucket.</p>"
)
type bucketCountByEffectivePermission = {
  @ocaml.doc(
    "<p>The total number of buckets that Amazon Macie wasn't able to evaluate permissions settings for. Macie can't determine whether these buckets are publicly accessible.</p>"
  )
  unknown: option<__long>,
  @ocaml.doc(
    "<p>The total number of buckets that allow the general public to have write access to the bucket.</p>"
  )
  publiclyWritable: option<__long>,
  @ocaml.doc(
    "<p>The total number of buckets that allow the general public to have read access to the bucket.</p>"
  )
  publiclyReadable: option<__long>,
  @ocaml.doc(
    "<p>The total number of buckets that allow the general public to have read or write access to the bucket.</p>"
  )
  publiclyAccessible: option<__long>,
}
@ocaml.doc(
  "<p>Provides information about the block public access settings for an S3 bucket. These settings can apply to a bucket at the account level or bucket level. For detailed information about each setting, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html\">Blocking public access to your Amazon S3 storage</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>"
)
type blockPublicAccess = {
  @ocaml.doc("<p>Specifies whether Amazon S3 restricts public bucket policies for the bucket.</p>")
  restrictPublicBuckets: option<__boolean>,
  @ocaml.doc(
    "<p>Specifies whether Amazon S3 ignores public ACLs for the bucket and objects in the bucket.</p>"
  )
  ignorePublicAcls: option<__boolean>,
  @ocaml.doc("<p>Specifies whether Amazon S3 blocks public bucket policies for the bucket.</p>")
  blockPublicPolicy: option<__boolean>,
  @ocaml.doc(
    "<p>Specifies whether Amazon S3 blocks public access control lists (ACLs) for the bucket and objects in the bucket.</p>"
  )
  blockPublicAcls: option<__boolean>,
}
@ocaml.doc("<p>Provides information about a custom data identifier.</p>")
type batchGetCustomDataIdentifierSummary = {
  @ocaml.doc("<p>The custom name of the custom data identifier.</p>") name: option<__string>,
  @ocaml.doc("<p>The unique identifier for the custom data identifier.</p>") id: option<__string>,
  @ocaml.doc("<p>The custom description of the custom data identifier.</p>")
  description: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the custom data identifier was deleted. If you delete a custom data identifier, Amazon Macie doesn't delete it permanently. Instead, it soft deletes the identifier.</p>"
  )
  deleted: option<__boolean>,
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when the custom data identifier was created.</p>"
  )
  createdAt: option<__timestampIso8601>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom data identifier.</p>")
  arn: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about an AWS service that performed an action on an affected resource.</p>"
)
type awsService = {
  @ocaml.doc("<p>The name of the AWS service that performed the action.</p>")
  invokedBy: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about an AWS account and entity that performed an action on an affected resource. The action was performed using the credentials for an AWS account other than your own account.</p>"
)
type awsAccount = {
  @ocaml.doc("<p>The unique identifier for the entity that performed the action.</p>")
  principalId: option<__string>,
  @ocaml.doc("<p>The unique identifier for the AWS account.</p>") accountId: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about an API operation that an entity invoked for an affected resource.</p>"
)
type apiCallDetails = {
  @ocaml.doc(
    "<p>The most recent date and time, in UTC and extended ISO 8601 format, when the specified operation (api) was invoked and produced the finding.</p>"
  )
  lastSeen: option<__timestampIso8601>,
  @ocaml.doc(
    "<p>The first date and time, in UTC and extended ISO 8601 format, when any operation was invoked and produced the finding.</p>"
  )
  firstSeen: option<__timestampIso8601>,
  @ocaml.doc(
    "<p>The URL of the AWS service that provides the operation, for example: s3.amazonaws.com.</p>"
  )
  apiServiceName: option<__string>,
  @ocaml.doc(
    "<p>The name of the operation that was invoked most recently and produced the finding.</p>"
  )
  api: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the delegated Amazon Macie administrator account for an AWS organization.</p>"
)
type adminAccount = {
  @ocaml.doc(
    "<p>The current status of the account as the delegated administrator of Amazon Macie for the organization.</p>"
  )
  status: option<adminStatus>,
  @ocaml.doc("<p>The AWS account ID for the account.</p>") accountId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies details for an account to associate with an Amazon Macie administrator account.</p>"
)
type accountDetail = {
  @ocaml.doc("<p>The email address for the account.</p>") email: __string,
  @ocaml.doc("<p>The AWS account ID for the account.</p>") accountId: __string,
}
@ocaml.doc(
  "<p>Provides information about the permissions settings of the bucket-level access control list (ACL) for an S3 bucket.</p>"
)
type accessControlList = {
  @ocaml.doc(
    "<p>Specifies whether the ACL grants the general public with write access permissions for the bucket.</p>"
  )
  allowsPublicWriteAccess: option<__boolean>,
  @ocaml.doc(
    "<p>Specifies whether the ACL grants the general public with read access permissions for the bucket.</p>"
  )
  allowsPublicReadAccess: option<__boolean>,
}
type __listOfUsageTotal = array<usageTotal>
type __listOfUnprocessedAccount = array<unprocessedAccount>
type __listOfTagValuePair = array<tagValuePair>
type __listOfTagCriterionPairForJob = array<tagCriterionPairForJob>
type __listOfSearchResourcesTagCriterionPair = array<searchResourcesTagCriterionPair>
type __listOfKeyValuePair = array<keyValuePair>
type __listOfInvitation = array<invitation>
type __listOfGroupCount = array<groupCount>
type __listOfCustomDataIdentifierSummary = array<customDataIdentifierSummary>
type __listOfBatchGetCustomDataIdentifierSummary = array<batchGetCustomDataIdentifierSummary>
type __listOfAdminAccount = array<adminAccount>
@ocaml.doc(
  "<p>Specifies a condition for filtering the results of a query for quota and usage data for one or more Amazon Macie accounts.</p>"
)
type usageStatisticsFilter = {
  @ocaml.doc(
    "<p>An array that lists values to use in the condition, based on the value for the field specified by the key property. If the value for the key property is accountId, this array can specify multiple values. Otherwise, this array can specify only one value.</p> <p>Valid values for each supported field are:</p> <ul><li><p>accountId - The unique identifier for an AWS account.</p></li></ul> <ul><li><p>freeTrialStartDate - The date and time, in UTC and extended ISO 8601 format, when the free trial started for an account.</p></li></ul> <ul><li><p>serviceLimit - A Boolean (true or false) value that indicates whether an account has reached its monthly quota.</p></li></ul> <ul><li><p>total - A string that represents the current estimated cost for an account.</p></li></ul>"
  )
  values: option<__listOf__string>,
  @ocaml.doc("<p>The field to use in the condition.</p>") key: option<usageStatisticsFilterKey>,
  @ocaml.doc(
    "<p>The operator to use in the condition. If the value for the key property is accountId, this value must be CONTAINS. If the value for the key property is any other supported field, this value can be EQ, GT, GTE, LT, LTE, or NE.</p>"
  )
  comparator: option<usageStatisticsFilterComparator>,
}
@ocaml.doc(
  "<p>Provides data for a specific usage metric and the corresponding quota for an Amazon Macie account.</p>"
)
type usageByAccount = {
  @ocaml.doc(
    "<p>The name of the metric. Possible values are: DATA_INVENTORY_EVALUATION, for monitoring S3 buckets; and, SENSITIVE_DATA_DISCOVERY, for analyzing S3 objects to detect sensitive data.</p>"
  )
  @as("type")
  type_: option<usageType>,
  @ocaml.doc(
    "<p>The current value for the quota that corresponds to the metric specified by the type field.</p>"
  )
  serviceLimit: option<serviceLimit>,
  @ocaml.doc("<p>The estimated value for the metric.</p>") estimatedCost: option<__string>,
  @ocaml.doc(
    "<p>The type of currency that the value for the metric (estimatedCost) is reported in.</p>"
  )
  currency: option<currency>,
}
@ocaml.doc(
  "<p>Specifies a property-based condition that determines whether an S3 object is included or excluded from a classification job.</p>"
)
type simpleScopeTerm = {
  @ocaml.doc(
    "<p>An array that lists the values to use in the condition. If the value for the key property is OBJECT_EXTENSION or OBJECT_KEY, this array can specify multiple values and Amazon Macie uses an OR operator to join the values. Otherwise, this array can specify only one value.</p> <p>Valid values for each supported property (key) are:</p> <ul><li><p>OBJECT_EXTENSION - A string that represents the file name extension of an object. For example: docx or pdf</p></li> <li><p>OBJECT_KEY - A string that represents the key prefix (folder name or path) of an object. For example: logs or awslogs/eventlogs. This value applies a condition to objects whose keys (names) begin with the specified value.</p></li> <li><p>OBJECT_LAST_MODIFIED_DATE - The date and time (in UTC and extended ISO 8601 format) when an object was created or last changed, whichever is latest. For example: 2020-09-28T14:31:13Z</p></li> <li><p>OBJECT_SIZE - An integer that represents the storage size (in bytes) of an object.</p></li> <li><p>TAG - A string that represents a tag key for an object. For advanced options, use a TagScopeTerm object instead of a SimpleScopeTerm object to define a tag-based condition for the job.</p></li></ul> <p>Macie doesn't support use of wildcard characters in these values. Also, string values are case sensitive.</p>"
  )
  values: option<__listOf__string>,
  @ocaml.doc("<p>The object property to use in the condition.</p>") key: option<scopeFilterKey>,
  @ocaml.doc(
    "<p>The operator to use in the condition. Valid operators for each supported property (key) are:</p> <ul><li><p>OBJECT_EXTENSION - EQ (equals) or NE (not equals)</p></li> <li><p>OBJECT_KEY - STARTS_WITH</p></li> <li><p>OBJECT_LAST_MODIFIED_DATE - Any operator except CONTAINS</p></li> <li><p>OBJECT_SIZE - Any operator except CONTAINS</p></li> <li><p>TAG - EQ (equals) or NE (not equals)</p></li></ul>"
  )
  comparator: option<jobComparator>,
}
@ocaml.doc(
  "<p>Specifies a property-based condition that determines whether an S3 bucket is included or excluded from a classification job.</p>"
)
type simpleCriterionForJob = {
  @ocaml.doc(
    "<p>An array that lists one or more values to use in the condition. If you specify multiple values, Amazon Macie uses OR logic to join the values. Valid values for each supported property (key) are:</p> <ul><li><p>ACCOUNT_ID - A string that represents the unique identifier for the AWS account that owns the bucket.</p></li> <li><p>S3_BUCKET_EFFECTIVE_PERMISSION - A string that represents an enumerated value that Macie defines for the <a href=\"https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketpublicaccess-effectivepermission\">BucketPublicAccess.effectivePermission</a> property of a bucket.</p></li> <li><p>S3_BUCKET_NAME - A string that represents the name of a bucket.</p></li> <li><p>S3_BUCKET_SHARED_ACCESS - A string that represents an enumerated value that Macie defines for the <a href=\"https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketmetadata-sharedaccess\">BucketMetadata.sharedAccess</a> property of a bucket.</p></li></ul> <p>Values are case sensitive. Also, Macie doesn't support use of partial values or wildcard characters in these values.</p>"
  )
  values: option<__listOf__string>,
  @ocaml.doc("<p>The property to use in the condition.</p>") key: option<simpleCriterionKeyForJob>,
  @ocaml.doc(
    "<p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>"
  )
  comparator: option<jobComparator>,
}
@ocaml.doc(
  "<p>Provides information about a session that was created for an entity that performed an action by using temporary security credentials.</p>"
)
type sessionContext = {
  @ocaml.doc("<p>The source and type of credentials that were issued to the entity.</p>")
  sessionIssuer: option<sessionIssuer>,
  @ocaml.doc(
    "<p>The date and time when the credentials were issued, and whether the credentials were authenticated with a multi-factor authentication (MFA) device.</p>"
  )
  attributes: option<sessionContextAttributes>,
}
@ocaml.doc(
  "<p>Specifies a property-based filter condition that determines which AWS resources are included or excluded from the query results.</p>"
)
type searchResourcesSimpleCriterion = {
  @ocaml.doc(
    "<p>An array that lists one or more values to use in the condition. If you specify multiple values, Amazon Macie uses OR logic to join the values. Valid values for each supported property (key) are:</p> <ul><li><p>ACCOUNT_ID - A string that represents the unique identifier for the AWS account that owns the resource.</p></li> <li><p>S3_BUCKET_EFFECTIVE_PERMISSION - A string that represents an enumerated value that Macie defines for the <a href=\"https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketpublicaccess-effectivepermission\">BucketPublicAccess.effectivePermission</a> property of an S3 bucket.</p></li> <li><p>S3_BUCKET_NAME - A string that represents the name of an S3 bucket.</p></li> <li><p>S3_BUCKET_SHARED_ACCESS - A string that represents an enumerated value that Macie defines for the <a href=\"https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketmetadata-sharedaccess\">BucketMetadata.sharedAccess</a> property of an S3 bucket.</p></li></ul> <p>Values are case sensitive. Also, Macie doesn't support use of partial values or wildcard characters in values.</p>"
  )
  values: option<__listOf__string>,
  @ocaml.doc("<p>The property to use in the condition.</p>")
  key: option<searchResourcesSimpleCriterionKey>,
  @ocaml.doc(
    "<p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>"
  )
  comparator: option<searchResourcesComparator>,
}
@ocaml.doc(
  "<p>Specifies an AWS account that owns S3 buckets for a classification job to analyze, and one or more specific buckets to analyze for that account.</p>"
)
type s3BucketDefinitionForJob = {
  @ocaml.doc("<p>An array that lists the names of the buckets.</p>") buckets: __listOf__string,
  @ocaml.doc("<p>The unique identifier for the AWS account that owns the buckets.</p>")
  accountId: __string,
}
@ocaml.doc(
  "<p>Provides information about settings that define whether one or more objects in an S3 bucket are replicated to S3 buckets for other AWS accounts and, if so, which accounts.</p>"
)
type replicationDetails = {
  @ocaml.doc(
    "<p>An array of AWS account IDs, one for each AWS account that the bucket is configured to replicate one or more objects to.</p>"
  )
  replicationAccounts: option<__listOf__string>,
  @ocaml.doc(
    "<p>Specifies whether the bucket is configured to replicate one or more objects to an AWS account that isn't part of the same Amazon Macie organization.</p>"
  )
  replicatedExternally: option<__boolean>,
  @ocaml.doc(
    "<p>Specifies whether the bucket is configured to replicate one or more objects to any destination.</p>"
  )
  replicated: option<__boolean>,
}
@ocaml.doc(
  "<p>Specifies the location of occurrences of sensitive data in an Apache Parquet file.</p>"
)
type records = array<record>
@ocaml.doc(
  "<p>Provides details about the location of occurrences of sensitive data in an Adobe Portable Document Format file, Microsoft Word document, or non-binary text file.</p>"
)
type ranges = array<range>
@ocaml.doc(
  "<p>Specifies the location of an occurrence of sensitive data in an Adobe Portable Document Format file.</p>"
)
type page = {
  @ocaml.doc("<p>The page number of the page that contains the data.</p>")
  pageNumber: option<__long>,
  @ocaml.doc("<p>The position of the data on the page, relative to the beginning of the page.</p>")
  offsetRange: option<range>,
  @ocaml.doc("<p>The line that contains the data, and the position of the data on that line.</p>")
  lineRange: option<range>,
}
@ocaml.doc(
  "<p>Provides information about an account that's associated with an Amazon Macie administrator account.</p>"
)
type member = {
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, of the most recent change to the status of the relationship between the account and the administrator account.</p>"
  )
  updatedAt: option<__timestampIso8601>,
  @ocaml.doc(
    "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the account in Amazon Macie.</p>"
  )
  tags: option<tagMap>,
  @ocaml.doc(
    "<p>The current status of the relationship between the account and the administrator account.</p>"
  )
  relationshipStatus: option<relationshipStatus>,
  @ocaml.doc(
    "<p>(Deprecated) The AWS account ID for the administrator account. This property has been replaced by the administratorAccountId property and is retained only for backward compatibility.</p>"
  )
  masterAccountId: option<__string>,
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account.</p>"
  )
  invitedAt: option<__timestampIso8601>,
  @ocaml.doc("<p>The email address for the account.</p>") email: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the account.</p>") arn: option<__string>,
  @ocaml.doc("<p>The AWS account ID for the administrator account.</p>")
  administratorAccountId: option<__string>,
  @ocaml.doc("<p>The AWS account ID for the account.</p>") accountId: option<__string>,
}
@ocaml.doc(
  "<p>Provides statistical data and other information about an S3 bucket that Amazon Macie monitors and analyzes.</p>"
)
type matchingBucket = {
  @ocaml.doc(
    "<p>The total storage size, in bytes, of the objects that Amazon Macie can't analyze in the bucket. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>"
  )
  unclassifiableObjectSizeInBytes: option<objectLevelStatistics>,
  @ocaml.doc(
    "<p>The total number of objects that Amazon Macie can't analyze in the bucket. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>"
  )
  unclassifiableObjectCount: option<objectLevelStatistics>,
  @ocaml.doc(
    "<p>The total storage size, in bytes, of the objects that are compressed (.gz, .gzip, .zip) files in the bucket.</p><p>If versioning is enabled for the bucket, Macie calculates this value based on the size of the latest version of each applicable object in the bucket. This value doesn't reflect the storage size of all versions of each applicable object in the bucket.</p>"
  )
  sizeInBytesCompressed: option<__long>,
  @ocaml.doc(
    "<p>The total storage size, in bytes, of the bucket.</p><p>If versioning is enabled for the bucket, Amazon Macie calculates this value based on the size of the latest version of each object in the bucket. This value doesn't reflect the storage size of all versions of each object in the bucket.</p>"
  )
  sizeInBytes: option<__long>,
  @ocaml.doc(
    "<p>The total number of objects that are in the bucket, grouped by server-side encryption type. This includes a grouping that reports the total number of objects that aren't encrypted or use client-side encryption.</p>"
  )
  objectCountByEncryptionType: option<objectCountByEncryptionType>,
  @ocaml.doc("<p>The total number of objects in the bucket.</p>") objectCount: option<__long>,
  @ocaml.doc(
    "<p>Specifies whether any one-time or recurring classification jobs are configured to analyze objects in the bucket, and, if so, the details of the job that ran most recently.</p>"
  )
  jobDetails: option<jobDetails>,
  @ocaml.doc(
    "<p>The total storage size, in bytes, of the objects that Amazon Macie can analyze in the bucket. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p><p>If versioning is enabled for the bucket, Macie calculates this value based on the size of the latest version of each applicable object in the bucket. This value doesn't reflect the storage size of all versions of each applicable object in the bucket.</p>"
  )
  classifiableSizeInBytes: option<__long>,
  @ocaml.doc(
    "<p>The total number of objects that Amazon Macie can analyze in the bucket. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p>"
  )
  classifiableObjectCount: option<__long>,
  @ocaml.doc("<p>The name of the bucket.</p>") bucketName: option<__string>,
  @ocaml.doc("<p>The unique identifier for the AWS account that owns the bucket.</p>")
  accountId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies a condition that filters the results of a request for information about classification jobs. Each condition consists of a property, an operator, and one or more values.</p>"
)
type listJobsFilterTerm = {
  @ocaml.doc("<p>An array that lists one or more values to use to filter the results.</p>")
  values: option<__listOf__string>,
  @ocaml.doc("<p>The property to use to filter the results.</p>") key: option<listJobsFilterKey>,
  @ocaml.doc("<p>The operator to use to filter the results.</p>") comparator: option<jobComparator>,
}
@ocaml.doc(
  "<p>Provides information about the tags that are associated with an S3 bucket or object. Each tag consists of a required tag key and an associated tag value.</p>"
)
type keyValuePairList = array<keyValuePair>
@ocaml.doc("<p>Specifies the recurrence pattern for running a classification job.</p>")
type jobScheduleFrequency = {
  @ocaml.doc("<p>Specifies a weekly recurrence pattern for running the job.</p>")
  weeklySchedule: option<weeklySchedule>,
  @ocaml.doc("<p>Specifies a monthly recurrence pattern for running the job.</p>")
  monthlySchedule: option<monthlySchedule>,
  @ocaml.doc("<p>Specifies a daily recurrence pattern for running the job.</p>")
  dailySchedule: option<dailySchedule>,
}
@ocaml.doc(
  "<p>Provides information about the IP address of the device that an entity used to perform an action on an affected resource.</p>"
)
type ipAddressDetails = {
  @ocaml.doc("<p>The registered owner of the IP address.</p>") ipOwner: option<ipOwner>,
  @ocaml.doc(
    "<p>The geographic coordinates of the location that the IP address originated from.</p>"
  )
  ipGeoLocation: option<ipGeoLocation>,
  @ocaml.doc("<p>The country that the IP address originated from.</p>")
  ipCountry: option<ipCountry>,
  @ocaml.doc("<p>The city that the IP address originated from.</p>") ipCity: option<ipCity>,
  @ocaml.doc("<p>The Internet Protocol version 4 (IPv4) address of the device.</p>")
  ipAddressV4: option<__string>,
}
@ocaml.doc("<p>Provides information about a findings filter.</p>")
type findingsFilterListItem = {
  @ocaml.doc(
    "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the filter.</p>"
  )
  tags: option<tagMap>,
  @ocaml.doc("<p>The custom name of the filter.</p>") name: option<__string>,
  @ocaml.doc("<p>The unique identifier for the filter.</p>") id: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the filter.</p>") arn: option<__string>,
  @ocaml.doc(
    "<p>The action that's performed on findings that meet the filter criteria. Possible values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>"
  )
  action: option<findingsFilterAction>,
}
@ocaml.doc(
  "<p>Provides information about an action that occurred for a resource and produced a policy finding.</p>"
)
type findingAction = {
  @ocaml.doc(
    "<p>The invocation details of the API operation that an entity invoked for the affected resource, if the value for the actionType property is AWS_API_CALL.</p>"
  )
  apiCallDetails: option<apiCallDetails>,
  @ocaml.doc(
    "<p>The type of action that occurred for the affected resource. This value is typically AWS_API_CALL, which indicates that an entity invoked an API operation for the resource.</p>"
  )
  actionType: option<findingActionType>,
}
@ocaml.doc(
  "<p>Specifies the operator to use in a property-based condition that filters the results of a query for findings. For detailed information and examples of each operator, see <a href=\"https://docs.aws.amazon.com/macie/latest/user/findings-filter-basics.html\">Fundamentals of filtering findings</a> in the <i>Amazon Macie User Guide</i>.</p>"
)
type criterionAdditionalProperties = {
  @ocaml.doc(
    "<p>The value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Macie uses OR logic to join the values.</p>"
  )
  neq: option<__listOf__string>,
  @ocaml.doc("<p>The value for the property is less than or equal to the specified value.</p>")
  lte: option<__long>,
  @ocaml.doc("<p>The value for the property is less than the specified value.</p>")
  lt: option<__long>,
  @ocaml.doc("<p>The value for the property is greater than or equal to the specified value.</p>")
  gte: option<__long>,
  @ocaml.doc("<p>The value for the property is greater than the specified value.</p>")
  gt: option<__long>,
  @ocaml.doc(
    "<p>The value for the property exclusively matches (equals an exact match for) all the specified values. If you specify multiple values, Amazon Macie uses AND logic to join the values.</p> <p>You can use this operator with the following properties: customDataIdentifiers.detections.arn, customDataIdentifiers.detections.name, resourcesAffected.s3Bucket.tags.key, resourcesAffected.s3Bucket.tags.value, resourcesAffected.s3Object.tags.key, resourcesAffected.s3Object.tags.value, sensitiveData.category, and sensitiveData.detections.type.</p>"
  )
  eqExactMatch: option<__listOf__string>,
  @ocaml.doc(
    "<p>The value for the property matches (equals) the specified value. If you specify multiple values, Macie uses OR logic to join the values.</p>"
  )
  eq: option<__listOf__string>,
}
@ocaml.doc(
  "<p>Specifies where to store data classification results, and the encryption settings to use when storing results in that location. Currently, you can store classification results only in an S3 bucket.</p>"
)
type classificationExportConfiguration = {
  @ocaml.doc(
    "<p>The S3 bucket to store data classification results in, and the encryption settings to use when storing results in that bucket.</p>"
  )
  s3Destination: option<s3Destination>,
}
@ocaml.doc(
  "<p>Specifies the location of occurrences of sensitive data in a Microsoft Excel workbook, CSV file, or TSV file.</p>"
)
type cells = array<cell>
@ocaml.doc(
  "<p>Provides information about the bucket-level permissions settings for an S3 bucket.</p>"
)
type bucketLevelPermissions = {
  @ocaml.doc(
    "<p>The permissions settings of the bucket policy for the bucket. This value is null if a bucket policy hasn't been defined for the bucket.</p>"
  )
  bucketPolicy: option<bucketPolicy>,
  @ocaml.doc("<p>The block public access settings for the bucket.</p>")
  blockPublicAccess: option<blockPublicAccess>,
  @ocaml.doc(
    "<p>The permissions settings of the access control list (ACL) for the bucket. This value is null if an ACL hasn't been defined for the bucket.</p>"
  )
  accessControlList: option<accessControlList>,
}
@ocaml.doc(
  "<p>Specifies the operator to use in a property-based condition that filters the results of a query for information about S3 buckets.</p>"
)
type bucketCriteriaAdditionalProperties = {
  @ocaml.doc("<p>The name of the bucket begins with the specified value.</p>")
  prefix: option<__string>,
  @ocaml.doc(
    "<p>The value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.</p>"
  )
  neq: option<__listOf__string>,
  @ocaml.doc("<p>The value for the property is less than or equal to the specified value.</p>")
  lte: option<__long>,
  @ocaml.doc("<p>The value for the property is less than the specified value.</p>")
  lt: option<__long>,
  @ocaml.doc("<p>The value for the property is greater than or equal to the specified value.</p>")
  gte: option<__long>,
  @ocaml.doc("<p>The value for the property is greater than the specified value.</p>")
  gt: option<__long>,
  @ocaml.doc(
    "<p>The value for the property matches (equals) the specified value. If you specify multiple values, Macie uses OR logic to join the values.</p>"
  )
  eq: option<__listOf__string>,
}
@ocaml.doc(
  "<p>Provides information about the account-level permissions settings that apply to an S3 bucket.</p>"
)
type accountLevelPermissions = {
  @ocaml.doc("<p>The block public access settings for the AWS account that owns the bucket.</p>")
  blockPublicAccess: option<blockPublicAccess>,
}
type __listOfUsageStatisticsFilter = array<usageStatisticsFilter>
type __listOfUsageByAccount = array<usageByAccount>
type __listOfS3BucketDefinitionForJob = array<s3BucketDefinitionForJob>
type __listOfMember = array<member>
type __listOfListJobsFilterTerm = array<listJobsFilterTerm>
type __listOfFindingsFilterListItem = array<findingsFilterListItem>
@ocaml.doc(
  "<p>Specifies a tag-based condition that determines whether an S3 object is included or excluded from a classification job. Tag keys and values are case sensitive. Also, Amazon Macie doesn't support use of partial values or wildcard characters in tag-based conditions.</p>"
)
type tagScopeTerm = {
  @ocaml.doc("<p>The type of object to apply the condition to.</p>") target: option<tagTarget>,
  @ocaml.doc("<p>The tag keys or tag key and value pairs to use in the condition.</p>")
  tagValues: option<__listOfTagValuePair>,
  @ocaml.doc("<p>The tag key to use in the condition.</p>") key: option<__string>,
  @ocaml.doc(
    "<p>The operator to use in the condition. Valid operators are EQ (equals) or NE (not equals).</p>"
  )
  comparator: option<jobComparator>,
}
@ocaml.doc(
  "<p>Specifies a tag-based condition that determines whether an S3 bucket is included or excluded from a classification job.</p>"
)
type tagCriterionForJob = {
  @ocaml.doc("<p>The tag keys, tag values, or tag key and value pairs to use in the condition.</p>")
  tagValues: option<__listOfTagCriterionPairForJob>,
  @ocaml.doc(
    "<p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>"
  )
  comparator: option<jobComparator>,
}
@ocaml.doc(
  "<p>Specifies a tag-based filter condition that determines which AWS resources are included or excluded from the query results.</p>"
)
type searchResourcesTagCriterion = {
  @ocaml.doc("<p>The tag keys, tag values, or tag key and value pairs to use in the condition.</p>")
  tagValues: option<__listOfSearchResourcesTagCriterionPair>,
  @ocaml.doc(
    "<p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>"
  )
  comparator: option<searchResourcesComparator>,
}
@ocaml.doc("<p>Provides information about an S3 object that a finding applies to.</p>")
type s3Object = {
  @ocaml.doc("<p>The identifier for the affected version of the object.</p>")
  versionId: option<__string>,
  @ocaml.doc("<p>The tags that are associated with the object.</p>") tags: option<keyValuePairList>,
  @ocaml.doc("<p>The storage class of the object.</p>") storageClass: option<storageClass>,
  @ocaml.doc("<p>The total storage size, in bytes, of the object.</p>") size: option<__long>,
  @ocaml.doc("<p>The type of server-side encryption that's used to encrypt the object.</p>")
  serverSideEncryption: option<serverSideEncryption>,
  @ocaml.doc(
    "<p>Specifies whether the object is publicly accessible due to the combination of permissions settings that apply to the object.</p>"
  )
  publicAccess: option<__boolean>,
  @ocaml.doc("<p>The path to the object, including the full key (name).</p>")
  path: option<__string>,
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when the object was last modified.</p>"
  )
  lastModified: option<__timestampIso8601>,
  @ocaml.doc("<p>The full key (name) that's assigned to the object.</p>") key: option<__string>,
  @ocaml.doc(
    "<p>The file name extension of the object. If the object doesn't have a file name extension, this value is \"\".</p>"
  )
  extension: option<__string>,
  @ocaml.doc(
    "<p>The entity tag (ETag) that identifies the affected version of the object. If the object was overwritten or changed after Amazon Macie produced the finding, this value might be different from the current ETag for the object.</p>"
  )
  eTag: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bucket that contains the object.</p>")
  bucketArn: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the location of occurrences of sensitive data in an Adobe Portable Document Format file.</p>"
)
type pages = array<page>
@ocaml.doc(
  "<p>Provides statistical data and other information about an AWS resource that Amazon Macie monitors and analyzes.</p>"
)
type matchingResource = {
  @ocaml.doc("<p>The details of an S3 bucket that Amazon Macie monitors and analyzes.</p>")
  matchingBucket: option<matchingBucket>,
}
@ocaml.doc(
  "<p>Provides information about an identity that performed an action on an affected resource by using temporary security credentials. The credentials were obtained using the GetFederationToken operation of the AWS Security Token Service (AWS STS) API.</p>"
)
type federatedUser = {
  @ocaml.doc(
    "<p>The details of the session that was created for the credentials, including the entity that issued the session.</p>"
  )
  sessionContext: option<sessionContext>,
  @ocaml.doc("<p>The unique identifier for the entity that was used to get the credentials.</p>")
  principalId: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the entity that was used to get the credentials.</p>"
  )
  arn: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the AWS account that owns the entity that was used to get the credentials.</p>"
  )
  accountId: option<__string>,
  @ocaml.doc("<p>The AWS access key ID that identifies the credentials.</p>")
  accessKeyId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies a condition that defines a property, operator, and one or more values to filter the results of a query for findings. The number of values depends on the property and operator specified by the condition. For information about defining filter conditions, see <a href=\"https://docs.aws.amazon.com/macie/latest/user/findings-filter-basics.html\">Fundamentals of filtering findings</a> in the <i>Amazon Macie User Guide</i>.</p>"
)
type criterion = Js.Dict.t<criterionAdditionalProperties>
@ocaml.doc(
  "<p>Provides information about the account-level and bucket-level permissions settings for an S3 bucket.</p>"
)
type bucketPermissionConfiguration = {
  @ocaml.doc("<p>The bucket-level permissions settings for the bucket.</p>")
  bucketLevelPermissions: option<bucketLevelPermissions>,
  @ocaml.doc("<p>The account-level permissions settings that apply to the bucket.</p>")
  accountLevelPermissions: option<accountLevelPermissions>,
}
@ocaml.doc(
  "<p>Specifies, as a map, one or more property-based conditions that filter the results of a query for information about S3 buckets.</p>"
)
type bucketCriteria = Js.Dict.t<bucketCriteriaAdditionalProperties>
@ocaml.doc(
  "<p>Provides information about an identity that performed an action on an affected resource by using temporary security credentials. The credentials were obtained using the AssumeRole operation of the AWS Security Token Service (AWS STS) API.</p>"
)
type assumedRole = {
  @ocaml.doc(
    "<p>The details of the session that was created for the credentials, including the entity that issued the session.</p>"
  )
  sessionContext: option<sessionContext>,
  @ocaml.doc("<p>The unique identifier for the entity that was used to get the credentials.</p>")
  principalId: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the entity that was used to get the credentials.</p>"
  )
  arn: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the AWS account that owns the entity that was used to get the credentials.</p>"
  )
  accountId: option<__string>,
  @ocaml.doc("<p>The AWS access key ID that identifies the credentials.</p>")
  accessKeyId: option<__string>,
}
type __listOfMatchingResource = array<matchingResource>
@ocaml.doc(
  "<p>Provides information about the type and other characteristics of an entity that performed an action on an affected resource.</p>"
)
type userIdentity = {
  @ocaml.doc("<p>The type of entity that performed the action.</p>") @as("type")
  type_: option<userIdentityType>,
  @ocaml.doc(
    "<p>If the action was performed using the credentials for your AWS account, the details of your account.</p>"
  )
  root: option<userIdentityRoot>,
  @ocaml.doc(
    "<p>If the action was performed using the credentials for an AWS Identity and Access Management (IAM) user, the name and other details about the user.</p>"
  )
  iamUser: option<iamUser>,
  @ocaml.doc(
    "<p>If the action was performed with temporary security credentials that were obtained using the GetFederationToken operation of the AWS Security Token Service (AWS STS) API, the identifiers, session context, and other details about the identity.</p>"
  )
  federatedUser: option<federatedUser>,
  @ocaml.doc(
    "<p>If the action was performed by an AWS account that belongs to an AWS service, the name of the service.</p>"
  )
  awsService: option<awsService>,
  @ocaml.doc(
    "<p>If the action was performed using the credentials for another AWS account, the details of that account.</p>"
  )
  awsAccount: option<awsAccount>,
  @ocaml.doc(
    "<p>If the action was performed with temporary security credentials that were obtained using the AssumeRole operation of the AWS Security Token Service (AWS STS) API, the identifiers, session context, and other details about the identity.</p>"
  )
  assumedRole: option<assumedRole>,
}
@ocaml.doc("<p>Provides quota and aggregated usage data for an Amazon Macie account.</p>")
type usageRecord = {
  @ocaml.doc(
    "<p>An array of objects that contains usage data and quotas for the account. Each object contains the data for a specific usage metric and the corresponding quota.</p>"
  )
  usage: option<__listOfUsageByAccount>,
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when the free trial started for the account.</p>"
  )
  freeTrialStartDate: option<__timestampIso8601>,
  @ocaml.doc("<p>The unique identifier for the AWS account that the data applies to.</p>")
  accountId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies a property- or tag-based filter condition for including or excluding AWS resources from the query results.</p>"
)
type searchResourcesCriteria = {
  @ocaml.doc(
    "<p>A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding resources from the results.</p>"
  )
  tagCriterion: option<searchResourcesTagCriterion>,
  @ocaml.doc(
    "<p>A property-based condition that defines a property, operator, and one or more values for including or excluding resources from the results.</p>"
  )
  simpleCriterion: option<searchResourcesSimpleCriterion>,
}
@ocaml.doc(
  "<p>Provides the location of 1-15 occurrences of sensitive data that was detected by managed data identifiers or a custom data identifier and produced a sensitive data finding.</p>"
)
type occurrences = {
  @ocaml.doc(
    "<p>An array of objects, one for each occurrence of sensitive data in an Apache Avro object container or Apache Parquet file. Each object specifies the record index and the path to the field in the record that contains the data. This value is null for all other types of files.</p>"
  )
  records: option<records>,
  @ocaml.doc(
    "<p>An array of objects, one for each occurrence of sensitive data in an Adobe Portable Document Format file. Each object specifies the page that contains the data, and the position of the data on that page. This value is null for all other types of files.</p>"
  )
  pages: option<pages>,
  @ocaml.doc(
    "<p>An array of objects, one for each occurrence of sensitive data in a binary text file. Each object specifies the position of the data relative to the beginning of the file.</p> <p>This value is typically null. For binary text files, Amazon Macie adds location data to a lineRanges.Range or Page object, depending on the file type.</p>"
  )
  offsetRanges: option<ranges>,
  @ocaml.doc(
    "<p>An array of objects, one for each occurrence of sensitive data in a Microsoft Word document or non-binary text file, such as an HTML, JSON, TXT, or XML file. Each object specifies the line that contains the data, and the position of the data on that line.</p> <p>This value is often null for file types that are supported by Cell, Page, or Record objects. Exceptions are the locations of data in: unstructured sections of an otherwise structured file, such as a comment in a file; a malformed file that Amazon Macie analyzes as plain text; and, a CSV or TSV file that has any column names that contain sensitive data.</p>"
  )
  lineRanges: option<ranges>,
  @ocaml.doc(
    "<p>An array of objects, one for each occurrence of sensitive data in a Microsoft Excel workbook, CSV file, or TSV file. Each object specifies the cell or field that contains the data. This value is null for all other types of files.</p>"
  )
  cells: option<cells>,
}
@ocaml.doc(
  "<p>Specifies criteria for filtering the results of a request for information about classification jobs.</p>"
)
type listJobsFilterCriteria = {
  @ocaml.doc(
    "<p>An array of objects, one for each condition that determines which jobs to include in the results.</p>"
  )
  includes: option<__listOfListJobsFilterTerm>,
  @ocaml.doc(
    "<p>An array of objects, one for each condition that determines which jobs to exclude from the results.</p>"
  )
  excludes: option<__listOfListJobsFilterTerm>,
}
@ocaml.doc(
  "<p>Specifies a property- or tag-based condition that defines criteria for including or excluding S3 objects from a classification job.</p>"
)
type jobScopeTerm = {
  @ocaml.doc(
    "<p>A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding objects from the job.</p>"
  )
  tagScopeTerm: option<tagScopeTerm>,
  @ocaml.doc(
    "<p>A property-based condition that defines a property, operator, and one or more values for including or excluding objects from the job.</p>"
  )
  simpleScopeTerm: option<simpleScopeTerm>,
}
@ocaml.doc(
  "<p>Specifies, as a map, one or more property-based conditions that filter the results of a query for findings.</p>"
)
type findingCriteria = {
  @ocaml.doc(
    "<p>A condition that specifies the property, operator, and one or more values to use to filter the results.</p>"
  )
  criterion: option<criterion>,
}
@ocaml.doc(
  "<p>Specifies a property- or tag-based condition that defines criteria for including or excluding S3 buckets from a classification job.</p>"
)
type criteriaForJob = {
  @ocaml.doc(
    "<p>A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding buckets from the job.</p>"
  )
  tagCriterion: option<tagCriterionForJob>,
  @ocaml.doc(
    "<p>A property-based condition that defines a property, operator, and one or more values for including or excluding buckets from the job.</p>"
  )
  simpleCriterion: option<simpleCriterionForJob>,
}
@ocaml.doc(
  "<p>Provides information about the permissions settings that determine whether an S3 bucket is publicly accessible.</p>"
)
type bucketPublicAccess = {
  @ocaml.doc("<p>The account-level and bucket-level permissions settings for the bucket.</p>")
  permissionConfiguration: option<bucketPermissionConfiguration>,
  @ocaml.doc(
    "<p>Specifies whether the bucket is publicly accessible due to the combination of permissions settings that apply to the bucket. Possible values are:</p> <ul><li><p>NOT_PUBLIC - The bucket isn't publicly accessible.</p></li> <li><p>PUBLIC - The bucket is publicly accessible.</p></li> <li><p>UNKNOWN - Amazon Macie can't determine whether the bucket is publicly accessible.</p></li></ul>"
  )
  effectivePermission: option<effectivePermission>,
}
type __listOfUsageRecord = array<usageRecord>
type __listOfSearchResourcesCriteria = array<searchResourcesCriteria>
type __listOfJobScopeTerm = array<jobScopeTerm>
type __listOfCriteriaForJob = array<criteriaForJob>
@ocaml.doc("<p>Provides information about an S3 bucket that a finding applies to.</p>")
type s3Bucket = {
  @ocaml.doc("<p>The tags that are associated with the bucket.</p>") tags: option<keyValuePairList>,
  @ocaml.doc(
    "<p>The permissions settings that determine whether the bucket is publicly accessible.</p>"
  )
  publicAccess: option<bucketPublicAccess>,
  @ocaml.doc("<p>The display name and AWS account ID for the user who owns the bucket.</p>")
  owner: option<s3BucketOwner>,
  @ocaml.doc("<p>The name of the bucket.</p>") name: option<__string>,
  @ocaml.doc(
    "<p>The type of server-side encryption that's used by default to encrypt objects in the bucket.</p>"
  )
  defaultServerSideEncryption: option<serverSideEncryption>,
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when the bucket was created.</p>"
  )
  createdAt: option<__timestampIso8601>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bucket.</p>") arn: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the bucket policy for the bucket requires server-side encryption of objects when objects are uploaded to the bucket. Possible values are:</p> <ul><li><p>FALSE - The bucket policy requires server-side encryption of new objects. PutObject requests must include the x-amz-server-side-encryption header and the value for that header must be AES256 or aws:kms.</p></li> <li><p>TRUE - The bucket doesn't have a bucket policy or it has a bucket policy that doesn't require server-side encryption of new objects. If a bucket policy exists, it doesn't require PutObject requests to include the x-amz-server-side-encryption header and it doesn't require the value for that header to be AES256 or aws:kms.</p></li> <li><p>UNKNOWN - Amazon Macie can't determine whether the bucket policy requires server-side encryption of objects.</p></li></ul>"
  )
  allowsUnencryptedObjectUploads: option<allowsUnencryptedObjectUploads>,
}
@ocaml.doc(
  "<p>Provides information about an entity that performed an action that produced a policy finding for a resource.</p>"
)
type findingActor = {
  @ocaml.doc(
    "<p>The type and other characteristics of the entity that performed the action on the affected resource.</p>"
  )
  userIdentity: option<userIdentity>,
  @ocaml.doc(
    "<p>The IP address of the device that the entity used to perform the action on the affected resource. This object also provides information such as the owner and geographic location for the IP address.</p>"
  )
  ipAddressDetails: option<ipAddressDetails>,
  @ocaml.doc(
    "<p>The domain name of the device that the entity used to perform the action on the affected resource.</p>"
  )
  domainDetails: option<domainDetails>,
}
@ocaml.doc(
  "<p>Provides information about a type of sensitive data that was detected by managed data identifiers and produced a sensitive data finding.</p>"
)
type defaultDetection = {
  @ocaml.doc(
    "<p>The type of sensitive data that was detected. For example, AWS_CREDENTIALS, PHONE_NUMBER, or ADDRESS.</p>"
  )
  @as("type")
  type_: option<__string>,
  @ocaml.doc(
    "<p>The location of 1-15 occurrences of the sensitive data that was detected. A finding includes location data for a maximum of 15 occurrences of sensitive data.</p>"
  )
  occurrences: option<occurrences>,
  @ocaml.doc(
    "<p>The total number of occurrences of the type of sensitive data that was detected.</p>"
  )
  count: option<__long>,
}
@ocaml.doc(
  "<p>Provides information about a custom data identifier that produced a sensitive data finding, and the sensitive data that it detected for the finding.</p>"
)
type customDetection = {
  @ocaml.doc(
    "<p>The location of 1-15 occurrences of the sensitive data that the custom data identifier detected. A finding includes location data for a maximum of 15 occurrences of sensitive data.</p>"
  )
  occurrences: option<occurrences>,
  @ocaml.doc("<p>The name of the custom data identifier.</p>") name: option<__string>,
  @ocaml.doc(
    "<p>The total number of occurrences of the sensitive data that the custom data identifier detected.</p>"
  )
  count: option<__long>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom data identifier.</p>")
  arn: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about an S3 bucket that Amazon Macie monitors and analyzes.</p>"
)
type bucketMetadata = {
  @ocaml.doc("<p>Specifies whether versioning is enabled for the bucket.</p>")
  versioning: option<__boolean>,
  @ocaml.doc(
    "<p>The total storage size, in bytes, of the objects that Amazon Macie can't analyze in the bucket. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>"
  )
  unclassifiableObjectSizeInBytes: option<objectLevelStatistics>,
  @ocaml.doc(
    "<p>The total number of objects that Amazon Macie can't analyze in the bucket. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>"
  )
  unclassifiableObjectCount: option<objectLevelStatistics>,
  @ocaml.doc(
    "<p>An array that specifies the tags (keys and values) that are associated with the bucket.</p>"
  )
  tags: option<__listOfKeyValuePair>,
  @ocaml.doc(
    "<p>The total storage size, in bytes, of the objects that are compressed (.gz, .gzip, .zip) files in the bucket.</p> <p>If versioning is enabled for the bucket, Macie calculates this value based on the size of the latest version of each applicable object in the bucket. This value doesn't reflect the storage size of all versions of each applicable object in the bucket.</p>"
  )
  sizeInBytesCompressed: option<__long>,
  @ocaml.doc(
    "<p>The total storage size, in bytes, of the bucket.</p> <p>If versioning is enabled for the bucket, Amazon Macie calculates this value based on the size of the latest version of each object in the bucket. This value doesn't reflect the storage size of all versions of each object in the bucket.</p>"
  )
  sizeInBytes: option<__long>,
  @ocaml.doc(
    "<p>Specifies whether the bucket is shared with another AWS account. Possible values are:</p> <ul><li><p>EXTERNAL - The bucket is shared with an AWS account that isn't part of the same Amazon Macie organization.</p></li> <li><p>INTERNAL - The bucket is shared with an AWS account that's part of the same Amazon Macie organization.</p></li> <li><p>NOT_SHARED - The bucket isn't shared with other AWS accounts.</p></li> <li><p>UNKNOWN - Amazon Macie wasn't able to evaluate the shared access settings for the bucket.</p></li></ul>"
  )
  sharedAccess: option<sharedAccess>,
  @ocaml.doc(
    "<p>Specifies whether the bucket encrypts new objects by default and, if so, the type of server-side encryption that's used.</p>"
  )
  serverSideEncryption: option<bucketServerSideEncryption>,
  @ocaml.doc(
    "<p>Specifies whether the bucket is configured to replicate one or more objects to buckets for other AWS accounts and, if so, which accounts.</p>"
  )
  replicationDetails: option<replicationDetails>,
  @ocaml.doc("<p>The AWS Region that hosts the bucket.</p>") region: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the bucket is publicly accessible due to the combination of permissions settings that apply to the bucket, and provides information about those settings.</p>"
  )
  publicAccess: option<bucketPublicAccess>,
  @ocaml.doc(
    "<p>The total number of objects that are in the bucket, grouped by server-side encryption type. This includes a grouping that reports the total number of objects that aren't encrypted or use client-side encryption.</p>"
  )
  objectCountByEncryptionType: option<objectCountByEncryptionType>,
  @ocaml.doc("<p>The total number of objects in the bucket.</p>") objectCount: option<__long>,
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie most recently retrieved both bucket and object metadata from Amazon S3 for the bucket.</p>"
  )
  lastUpdated: option<__timestampIso8601>,
  @ocaml.doc(
    "<p>Specifies whether any one-time or recurring classification jobs are configured to analyze data in the bucket, and, if so, the details of the job that ran most recently.</p>"
  )
  jobDetails: option<jobDetails>,
  @ocaml.doc(
    "<p>The total storage size, in bytes, of the objects that Amazon Macie can analyze in the bucket. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p> <p>If versioning is enabled for the bucket, Macie calculates this value based on the size of the latest version of each applicable object in the bucket. This value doesn't reflect the storage size of all versions of each applicable object in the bucket.</p>"
  )
  classifiableSizeInBytes: option<__long>,
  @ocaml.doc(
    "<p>The total number of objects that Amazon Macie can analyze in the bucket. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p>"
  )
  classifiableObjectCount: option<__long>,
  @ocaml.doc("<p>The name of the bucket.</p>") bucketName: option<__string>,
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when the bucket was created.</p>"
  )
  bucketCreatedAt: option<__timestampIso8601>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bucket.</p>") bucketArn: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the bucket policy for the bucket requires server-side encryption of objects when objects are uploaded to the bucket. Possible values are:</p> <ul><li><p>FALSE - The bucket policy requires server-side encryption of new objects. PutObject requests must include the x-amz-server-side-encryption header and the value for that header must be AES256 or aws:kms.</p></li> <li><p>TRUE - The bucket doesn't have a bucket policy or it has a bucket policy that doesn't require server-side encryption of new objects. If a bucket policy exists, it doesn't require PutObject requests to include the x-amz-server-side-encryption header and it doesn't require the value for that header to be AES256 or aws:kms.</p></li> <li><p>UNKNOWN - Amazon Macie can't determine whether the bucket policy requires server-side encryption of new objects.</p></li></ul>"
  )
  allowsUnencryptedObjectUploads: option<allowsUnencryptedObjectUploads>,
  @ocaml.doc("<p>The unique identifier for the AWS account that owns the bucket.</p>")
  accountId: option<__string>,
}
type __listOfBucketMetadata = array<bucketMetadata>
@ocaml.doc(
  "<p>Specifies property- and tag-based conditions that define filter criteria for including or excluding AWS resources from the query results.</p>"
)
type searchResourcesCriteriaBlock = {
  @ocaml.doc(
    "<p>An array of objects, one for each property- or tag-based condition that includes or excludes resources from the query results. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>"
  )
  @as("and")
  and_: option<__listOfSearchResourcesCriteria>,
}
@ocaml.doc("<p>Provides information about the resources that a finding applies to.</p>")
type resourcesAffected = {
  @ocaml.doc(
    "<p>An array of objects, one for each S3 object that the finding applies to. Each object provides a set of metadata about an affected S3 object.</p>"
  )
  s3Object: option<s3Object>,
  @ocaml.doc(
    "<p>An array of objects, one for each S3 bucket that the finding applies to. Each object provides a set of metadata about an affected S3 bucket.</p>"
  )
  s3Bucket: option<s3Bucket>,
}
@ocaml.doc("<p>Provides the details of a policy finding.</p>")
type policyDetails = {
  @ocaml.doc("<p>The entity that performed the action that produced the finding.</p>")
  actor: option<findingActor>,
  @ocaml.doc("<p>The action that produced the finding.</p>") action: option<findingAction>,
}
@ocaml.doc(
  "<p>Specifies one or more property- and tag-based conditions that define criteria for including or excluding S3 objects from a classification job.</p>"
)
type jobScopingBlock = {
  @ocaml.doc(
    "<p>An array of conditions, one for each condition that determines which objects to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>"
  )
  @as("and")
  and_: option<__listOfJobScopeTerm>,
}
@ocaml.doc(
  "<p>Provides information about sensitive data that was detected by managed data identifiers and produced a sensitive data finding, and the number of occurrences of each type of sensitive data that was detected.</p>"
)
type defaultDetections = array<defaultDetection>
@ocaml.doc(
  "<p>Provides information about custom data identifiers that produced a sensitive data finding, and the number of occurrences of the data that each identifier detected.</p>"
)
type customDetections = array<customDetection>
@ocaml.doc(
  "<p>Specifies one or more property- and tag-based conditions that define criteria for including or excluding S3 buckets from a classification job.</p>"
)
type criteriaBlockForJob = {
  @ocaml.doc(
    "<p>An array of conditions, one for each condition that determines which buckets to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>"
  )
  @as("and")
  and_: option<__listOfCriteriaForJob>,
}
@ocaml.doc(
  "<p>Provides information about the category, types, and occurrences of sensitive data that produced a sensitive data finding.</p>"
)
type sensitiveDataItem = {
  @ocaml.doc("<p>The total number of occurrences of the sensitive data that was detected.</p>")
  totalCount: option<__long>,
  @ocaml.doc(
    "<p>An array of objects, one for each type of sensitive data that was detected. Each object reports the number of occurrences of a specific type of sensitive data that was detected, and the location of up to 15 of those occurrences.</p>"
  )
  detections: option<defaultDetections>,
  @ocaml.doc(
    "<p>The category of sensitive data that was detected. For example: CREDENTIALS, for credentials data such as private keys or AWS secret keys; FINANCIAL_INFORMATION, for financial data such as credit card numbers; or, PERSONAL_INFORMATION, for personal health information, such as health insurance identification numbers, or personally identifiable information, such as driver's license identification numbers.</p>"
  )
  category: option<sensitiveDataItemCategory>,
}
@ocaml.doc(
  "<p>Specifies property- and tag-based conditions that define filter criteria for including or excluding S3 buckets from the query results. Exclude conditions take precedence over include conditions.</p>"
)
type searchResourcesBucketCriteria = {
  @ocaml.doc(
    "<p>The property- and tag-based conditions that determine which buckets to include in the results.</p>"
  )
  includes: option<searchResourcesCriteriaBlock>,
  @ocaml.doc(
    "<p>The property- and tag-based conditions that determine which buckets to exclude from the results.</p>"
  )
  excludes: option<searchResourcesCriteriaBlock>,
}
@ocaml.doc(
  "<p>Specifies one or more property- and tag-based conditions that define criteria for including or excluding S3 objects from a classification job. Exclude conditions take precedence over include conditions.</p>"
)
type scoping = {
  @ocaml.doc(
    "<p>The property- or tag-based conditions that determine which objects to include in the analysis.</p>"
  )
  includes: option<jobScopingBlock>,
  @ocaml.doc(
    "<p>The property- or tag-based conditions that determine which objects to exclude from the analysis.</p>"
  )
  excludes: option<jobScopingBlock>,
}
@ocaml.doc(
  "<p>Specifies property- and tag-based conditions that define criteria for including or excluding S3 buckets from a classification job. Exclude conditions take precedence over include conditions.</p>"
)
type s3BucketCriteriaForJob = {
  @ocaml.doc(
    "<p>The property- and tag-based conditions that determine which buckets to include in the job.</p>"
  )
  includes: option<criteriaBlockForJob>,
  @ocaml.doc(
    "<p>The property- and tag-based conditions that determine which buckets to exclude from the job.</p>"
  )
  excludes: option<criteriaBlockForJob>,
}
@ocaml.doc(
  "<p>Provides information about custom data identifiers that produced a sensitive data finding, and the number of occurrences of the data that they detected for the finding.</p>"
)
type customDataIdentifiers = {
  @ocaml.doc(
    "<p>The total number of occurrences of the data that was detected by the custom data identifiers and produced the finding.</p>"
  )
  totalCount: option<__long>,
  @ocaml.doc(
    "<p>The custom data identifiers that detected the data, and the number of occurrences of the data that each identifier detected.</p>"
  )
  detections: option<customDetections>,
}
@ocaml.doc(
  "<p>Provides information about the category and number of occurrences of sensitive data that produced a finding.</p>"
)
type sensitiveData = array<sensitiveDataItem>
@ocaml.doc(
  "<p>Specifies which S3 buckets contain the objects that a classification job analyzes, and the scope of that analysis. The bucket specification can be static (bucketDefinitions) or dynamic (bucketCriteria). If it's static, the job analyzes objects in the same predefined set of buckets each time the job runs. If it's dynamic, the job analyzes objects in any buckets that match the specified criteria each time the job starts to run.</p>"
)
type s3JobDefinition = {
  @ocaml.doc(
    "<p>The property- and tag-based conditions that determine which S3 buckets to include or exclude from the analysis. Each time the job runs, the job uses these criteria to determine which buckets contain objects to analyze. A job's definition can contain a bucketCriteria object or a bucketDefinitions array, not both.</p>"
  )
  bucketCriteria: option<s3BucketCriteriaForJob>,
  @ocaml.doc(
    "<p>The property- and tag-based conditions that determine which S3 objects to include or exclude from the analysis. Each time the job runs, the job uses these criteria to determine which objects to analyze.</p>"
  )
  scoping: option<scoping>,
  @ocaml.doc(
    "<p>An array of objects, one for each AWS account that owns specific S3 buckets to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for that account. A job's definition can contain a bucketDefinitions array or a bucketCriteria object, not both.</p>"
  )
  bucketDefinitions: option<__listOfS3BucketDefinitionForJob>,
}
@ocaml.doc(
  "<p>Provides information about a classification job, including the current status of the job.</p>"
)
type jobSummary = {
  @ocaml.doc(
    "<p>The property- and tag-based conditions that determine which S3 buckets are included or excluded from the job's analysis. Each time the job runs, the job uses these criteria to determine which buckets to analyze. A job's definition can contain a bucketCriteria object or a bucketDefinitions array, not both.</p>"
  )
  bucketCriteria: option<s3BucketCriteriaForJob>,
  @ocaml.doc(
    "<p>If the current status of the job is USER_PAUSED, specifies when the job was paused and when the job or job run will expire and be cancelled if it isn't resumed. This value is present only if the value for jobStatus is USER_PAUSED.</p>"
  )
  userPausedDetails: option<userPausedDetails>,
  @ocaml.doc("<p>The custom name of the job.</p>") name: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run.</p>"
  )
  lastRunErrorStatus: option<lastRunErrorStatus>,
  @ocaml.doc(
    "<p>The schedule for running the job. Possible values are:</p> <ul><li><p>ONE_TIME - The job runs only once.</p></li> <li><p>SCHEDULED - The job runs on a daily, weekly, or monthly basis.</p></li></ul>"
  )
  jobType: option<jobType>,
  @ocaml.doc(
    "<p>The current status of the job. Possible values are:</p> <ul><li><p>CANCELLED - You cancelled the job or, if it's a one-time job, you paused the job and didn't resume it within 30 days.</p></li> <li><p>COMPLETE - For a one-time job, Amazon Macie finished processing the data specified for the job. This value doesn't apply to recurring jobs.</p></li> <li><p>IDLE - For a recurring job, the previous scheduled run is complete and the next scheduled run is pending. This value doesn't apply to one-time jobs.</p></li> <li><p>PAUSED - Amazon Macie started running the job but additional processing would exceed the monthly sensitive data discovery quota for your account or one or more member accounts that the job analyzes data for.</p></li> <li><p>RUNNING - For a one-time job, the job is in progress. For a recurring job, a scheduled run is in progress.</p></li> <li><p>USER_PAUSED - You paused the job. If you paused the job while it had a status of RUNNING and you don't resume it within 30 days of pausing it, the job or job run will expire and be cancelled, depending on the job's type. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>"
  )
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>The unique identifier for the job.</p>") jobId: option<__string>,
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when the job was created.</p>"
  )
  createdAt: option<__timestampIso8601>,
  @ocaml.doc(
    "<p>An array of objects, one for each AWS account that owns specific S3 buckets for the job to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for that account. A job's definition can contain a bucketDefinitions array or a bucketCriteria object, not both.</p>"
  )
  bucketDefinitions: option<__listOfS3BucketDefinitionForJob>,
}
type __listOfJobSummary = array<jobSummary>
@ocaml.doc(
  "<p>Provides the details of a sensitive data finding, including the types, number of occurrences, and locations of the sensitive data that was detected.</p>"
)
type classificationResult = {
  @ocaml.doc("<p>The status of the finding.</p>") status: option<classificationResultStatus>,
  @ocaml.doc("<p>The total size, in bytes, of the data that the finding applies to.</p>")
  sizeClassified: option<__long>,
  @ocaml.doc(
    "<p>The category, types, and number of occurrences of the sensitive data that produced the finding.</p>"
  )
  sensitiveData: option<sensitiveData>,
  @ocaml.doc(
    "<p>The type of content, as a MIME type, that the finding applies to. For example, application/gzip, for a GNU Gzip compressed archive file, or application/pdf, for an Adobe Portable Document Format file.</p>"
  )
  mimeType: option<__string>,
  @ocaml.doc(
    "<p>The custom data identifiers that detected the sensitive data and the number of occurrences of the data that they detected.</p>"
  )
  customDataIdentifiers: option<customDataIdentifiers>,
  @ocaml.doc(
    "<p>Specifies whether Amazon Macie detected additional occurrences of sensitive data in the S3 object. A finding includes location data for a maximum of 15 occurrences of sensitive data.</p> <p>This value can help you determine whether to investigate additional occurrences of sensitive data in an object. You can do this by referring to the corresponding sensitive data discovery result for the finding (ClassificationDetails.detailedResultsLocation).</p>"
  )
  additionalOccurrences: option<__boolean>,
}
@ocaml.doc(
  "<p>Provides information about a sensitive data finding, including the classification job that produced the finding.</p>"
)
type classificationDetails = {
  @ocaml.doc("<p>The status and other details for the finding.</p>")
  result: option<classificationResult>,
  @ocaml.doc("<p>The unique identifier for the classification job that produced the finding.</p>")
  jobId: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the classification job that produced the finding.</p>"
  )
  jobArn: option<__string>,
  @ocaml.doc(
    "<p>The path to the folder or file (in Amazon S3) that contains the corresponding sensitive data discovery result for the finding. If a finding applies to a large archive or compressed file, this value is the path to a folder. Otherwise, this value is the path to a file.</p>"
  )
  detailedResultsLocation: option<__string>,
}
@ocaml.doc("<p>Provides the details of a finding.</p>")
type finding = {
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when the finding was last updated. For sensitive data findings, this value is the same as the value for the createdAt property. All sensitive data findings are considered new (unique) because they derive from individual classification jobs.</p>"
  )
  updatedAt: option<__timestampIso8601>,
  @ocaml.doc("<p>The type of the finding.</p>") @as("type") type_: option<findingType>,
  @ocaml.doc("<p>The brief description of the finding.</p>") title: option<__string>,
  @ocaml.doc("<p>The severity level and score for the finding.</p>") severity: option<severity>,
  @ocaml.doc(
    "<p>The version of the schema that was used to define the data structures in the finding.</p>"
  )
  schemaVersion: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the finding is a sample finding. A <i>sample finding</i> is a finding that uses example data to demonstrate what a finding might contain.</p>"
  )
  sample: option<__boolean>,
  @ocaml.doc("<p>The resources that the finding applies to.</p>")
  resourcesAffected: option<resourcesAffected>,
  @ocaml.doc("<p>The AWS Region that Amazon Macie created the finding in.</p>")
  region: option<__string>,
  @ocaml.doc(
    "<p>The details of a policy finding. This value is null for a sensitive data finding.</p>"
  )
  policyDetails: option<policyDetails>,
  @ocaml.doc("<p>The AWS partition that Amazon Macie created the finding in.</p>")
  partition: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the finding. This is a random string that Amazon Macie generates and assigns to a finding when it creates the finding.</p>"
  )
  id: option<__string>,
  @ocaml.doc("<p>The description of the finding.</p>") description: option<__string>,
  @ocaml.doc(
    "<p>The date and time, in UTC and extended ISO 8601 format, when the finding was created.</p>"
  )
  createdAt: option<__timestampIso8601>,
  @ocaml.doc(
    "<p>The total number of occurrences of the finding. For sensitive data findings, this value is always 1. All sensitive data findings are considered new (unique) because they derive from individual classification jobs.</p>"
  )
  count: option<__long>,
  @ocaml.doc(
    "<p>The details of a sensitive data finding. This value is null for a policy finding.</p>"
  )
  classificationDetails: option<classificationDetails>,
  @ocaml.doc(
    "<p>The category of the finding. Possible values are: CLASSIFICATION, for a sensitive data finding; and, POLICY, for a policy finding.</p>"
  )
  category: option<findingCategory>,
  @ocaml.doc("<p>Specifies whether the finding is archived.</p>") archived: option<__boolean>,
  @ocaml.doc(
    "<p>The unique identifier for the AWS account that the finding applies to. This is typically the account that owns the affected resource.</p>"
  )
  accountId: option<__string>,
}
type __listOfFinding = array<finding>
@ocaml.doc(
  "<p>Amazon Macie is a fully managed data security and data privacy service that uses machine learning and pattern matching to discover and protect your sensitive data in AWS. Macie automates the discovery of sensitive data, such as PII and intellectual property, to provide you with insight into the data that your organization stores in AWS. Macie also provides an inventory of your Amazon S3 buckets, which it continually monitors for you. If Macie detects sensitive data or potential data access issues, it generates detailed findings for you to review and act upon as necessary.</p>"
)
module UpdateOrganizationConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether to enable Amazon Macie automatically for each account, when the account is added to the AWS organization.</p>"
    )
    autoEnable: __boolean,
  }

  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "UpdateOrganizationConfigurationCommand"
  let make = (~autoEnable, ()) => new({autoEnable: autoEnable})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateMemberSession = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies the new status for the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.</p>"
    )
    status: macieStatus,
    @ocaml.doc(
      "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
    )
    id: __string,
  }

  @module("@aws-sdk/client-macie2") @new external new: request => t = "UpdateMemberSessionCommand"
  let make = (~status, ~id, ()) => new({status: status, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateMacieSession = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies a new status for the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.</p>"
    )
    status: option<macieStatus>,
    @ocaml.doc(
      "Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events)."
    )
    findingPublishingFrequency: option<findingPublishingFrequency>,
  }

  @module("@aws-sdk/client-macie2") @new external new: request => t = "UpdateMacieSessionCommand"
  let make = (~status=?, ~findingPublishingFrequency=?, ()) =>
    new({status: status, findingPublishingFrequency: findingPublishingFrequency})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateClassificationJob = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The new status for the job. Valid values are:</p> <ul><li><p>CANCELLED - Stops the job permanently and cancels it. This value is valid only if the job's current status is IDLE, PAUSED, RUNNING, or USER_PAUSED.</p> <p>If you specify this value and the job's current status is RUNNING, Amazon Macie immediately begins to stop all processing tasks for the job. You can't resume or restart a job after you cancel it.</p></li> <li><p>RUNNING - Resumes the job. This value is valid only if the job's current status is USER_PAUSED.</p> <p>If you paused the job while it was actively running and you specify this value less than 30 days after you paused the job, Macie immediately resumes processing from the point where you paused the job. Otherwise, Macie resumes the job according to the schedule and other settings for the job.</p></li> <li><p>USER_PAUSED - Pauses the job temporarily. This value is valid only if the job's current status is IDLE, PAUSED, or RUNNING. If you specify this value and the job's current status is RUNNING, Macie immediately begins to pause all processing tasks for the job.</p> <p>If you pause a one-time job and you don't resume it within 30 days, the job expires and Macie cancels the job. If you pause a recurring job when its status is RUNNING and you don't resume it within 30 days, the job run expires and Macie cancels the run. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>"
    )
    jobStatus: jobStatus,
    @ocaml.doc("<p>The unique identifier for the classification job.</p>") jobId: __string,
  }

  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "UpdateClassificationJobCommand"
  let make = (~jobStatus, ~jobId, ()) => new({jobStatus: jobStatus, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetMacieSession = {
  type t

  type response = {
    @ocaml.doc(
      "<p>The date and time, in UTC and extended ISO 8601 format, of the most recent change to the status of the Macie account.</p>"
    )
    updatedAt: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>The current status of the Macie account. Possible values are: PAUSED, the account is enabled but all Macie activities are suspended (paused) for the account; and, ENABLED, the account is enabled and all Macie activities are enabled for the account.</p>"
    )
    status: option<macieStatus>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the service-linked role that allows Macie to monitor and analyze data in AWS resources for the account.</p>"
    )
    serviceRole: option<__string>,
    @ocaml.doc(
      "<p>The frequency with which Macie publishes updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events).</p>"
    )
    findingPublishingFrequency: option<findingPublishingFrequency>,
    @ocaml.doc(
      "<p>The date and time, in UTC and extended ISO 8601 format, when the Amazon Macie account was created.</p>"
    )
    createdAt: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-macie2") @new external new: unit => t = "GetMacieSessionCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInvitationsCount = {
  type t

  type response = {
    @ocaml.doc(
      "<p>The total number of invitations that were received by the account, not including the currently accepted invitation.</p>"
    )
    invitationsCount: option<__long>,
  }
  @module("@aws-sdk/client-macie2") @new external new: unit => t = "GetInvitationsCountCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableOrganizationAdminAccount = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<__string>,
    @ocaml.doc(
      "<p>The AWS account ID for the account to designate as the delegated Amazon Macie administrator account for the organization.</p>"
    )
    adminAccountId: __string,
  }

  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "EnableOrganizationAdminAccountCommand"
  let make = (~adminAccountId, ~clientToken=?, ()) =>
    new({clientToken: clientToken, adminAccountId: adminAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableMacie = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies the new status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to ENABLED.</p>"
    )
    status: option<macieStatus>,
    @ocaml.doc(
      "Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events)."
    )
    findingPublishingFrequency: option<findingPublishingFrequency>,
    @ocaml.doc(
      "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<__string>,
  }

  @module("@aws-sdk/client-macie2") @new external new: request => t = "EnableMacieCommand"
  let make = (~status=?, ~findingPublishingFrequency=?, ~clientToken=?, ()) =>
    new({
      status: status,
      findingPublishingFrequency: findingPublishingFrequency,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateMember = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
    )
    id: __string,
  }

  @module("@aws-sdk/client-macie2") @new external new: request => t = "DisassociateMemberCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateFromMasterAccount = {
  type t

  @module("@aws-sdk/client-macie2") @new
  external new: unit => t = "DisassociateFromMasterAccountCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateFromAdministratorAccount = {
  type t

  @module("@aws-sdk/client-macie2") @new
  external new: unit => t = "DisassociateFromAdministratorAccountCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableOrganizationAdminAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS account ID of the delegated Amazon Macie administrator account.</p>")
    adminAccountId: __string,
  }

  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "DisableOrganizationAdminAccountCommand"
  let make = (~adminAccountId, ()) => new({adminAccountId: adminAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableMacie = {
  type t

  @module("@aws-sdk/client-macie2") @new external new: unit => t = "DisableMacieCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeOrganizationConfiguration = {
  type t

  type response = {
    @ocaml.doc(
      "<p>Specifies whether the maximum number of Amazon Macie member accounts are part of the AWS organization.</p>"
    )
    maxAccountLimitReached: option<__boolean>,
    @ocaml.doc(
      "<p>Specifies whether Amazon Macie is enabled automatically for accounts that are added to the AWS organization.</p>"
    )
    autoEnable: option<__boolean>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: unit => t = "DescribeOrganizationConfigurationCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMember = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
    )
    id: __string,
  }

  @module("@aws-sdk/client-macie2") @new external new: request => t = "DeleteMemberCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFindingsFilter = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
    )
    id: __string,
  }

  @module("@aws-sdk/client-macie2") @new external new: request => t = "DeleteFindingsFilterCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomDataIdentifier = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
    )
    id: __string,
  }

  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "DeleteCustomDataIdentifierCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AcceptInvitation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>(Deprecated) The AWS account ID for the account that sent the invitation. This property has been replaced by the administratorAccountId property and is retained only for backward compatibility.</p>"
    )
    masterAccount: option<__string>,
    @ocaml.doc("<p>The unique identifier for the invitation to accept.</p>") invitationId: __string,
    @ocaml.doc("<p>The AWS account ID for the account that sent the invitation.</p>")
    administratorAccountId: option<__string>,
  }

  @module("@aws-sdk/client-macie2") @new external new: request => t = "AcceptInvitationCommand"
  let make = (~invitationId, ~masterAccount=?, ~administratorAccountId=?, ()) =>
    new({
      masterAccount: masterAccount,
      invitationId: invitationId,
      administratorAccountId: administratorAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The key of the tag to remove from the resource. To remove multiple tags, append the tagKeys parameter and argument for each additional tag to remove, separated by an ampersand (&amp;).</p>"
    )
    tagKeys: __listOf__string,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.</p>"
    )
    resourceArn: __string,
  }

  @module("@aws-sdk/client-macie2") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TestCustomDataIdentifier = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The sample text to inspect by using the custom data identifier. The text can contain as many as 1,000 characters.</p>"
    )
    sampleText: __string,
    @ocaml.doc(
      "<p>The regular expression (<i>regex</i>) that defines the pattern to match. The expression can contain as many as 512 characters.</p>"
    )
    regex: __string,
    @ocaml.doc(
      "<p>The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50.</p>"
    )
    maximumMatchDistance: option<__integer>,
    @ocaml.doc(
      "<p>An array that lists specific character sequences (keywords), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3 - 90 characters. Keywords aren't case sensitive.</p>"
    )
    keywords: option<__listOf__string>,
    @ocaml.doc(
      "<p>An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive.</p>"
    )
    ignoreWords: option<__listOf__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The number of instances of sample text that matched the detection criteria specified in the custom data identifier.</p>"
    )
    matchCount: option<__integer>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "TestCustomDataIdentifierCommand"
  let make = (~sampleText, ~regex, ~maximumMatchDistance=?, ~keywords=?, ~ignoreWords=?, ()) =>
    new({
      sampleText: sampleText,
      regex: regex,
      maximumMatchDistance: maximumMatchDistance,
      keywords: keywords,
      ignoreWords: ignoreWords,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A map of key-value pairs that specifies the tags to associate with the resource.</p> <p>A resource can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
    )
    tags: tagMap,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.</p>"
    )
    resourceArn: __string,
  }

  @module("@aws-sdk/client-macie2") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutFindingsPublicationConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The configuration settings that determine which findings to publish to AWS Security Hub.</p>"
    )
    securityHubConfiguration: option<securityHubConfiguration>,
    @ocaml.doc(
      "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<__string>,
  }

  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "PutFindingsPublicationConfigurationCommand"
  let make = (~securityHubConfiguration=?, ~clientToken=?, ()) =>
    new({securityHubConfiguration: securityHubConfiguration, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.</p>"
    )
    resourceArn: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the resource.</p>"
    )
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMember = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
    )
    id: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The date and time, in UTC and extended ISO 8601 format, of the most recent change to the status of the relationship between the account and the administrator account.</p>"
    )
    updatedAt: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the member account in Amazon Macie.</p>"
    )
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>The current status of the relationship between the account and the administrator account.</p>"
    )
    relationshipStatus: option<relationshipStatus>,
    @ocaml.doc(
      "<p>(Deprecated) The AWS account ID for the administrator account. This property has been replaced by the administratorAccountId property and is retained only for backward compatibility.</p>"
    )
    masterAccountId: option<__string>,
    @ocaml.doc(
      "<p>The date and time, in UTC and extended ISO 8601 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account.</p>"
    )
    invitedAt: option<__timestampIso8601>,
    @ocaml.doc("<p>The email address for the account.</p>") email: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the account.</p>") arn: option<__string>,
    @ocaml.doc("<p>The AWS account ID for the administrator account.</p>")
    administratorAccountId: option<__string>,
    @ocaml.doc("<p>The AWS account ID for the account.</p>") accountId: option<__string>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "GetMemberCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMasterAccount = {
  type t

  type response = {
    @ocaml.doc(
      "<p>(Deprecated) The AWS account ID for the administrator account. If the accounts are associated by a Macie membership invitation, this object also provides details about the invitation that was sent to establish the relationship between the accounts.</p>"
    )
    master: option<invitation>,
  }
  @module("@aws-sdk/client-macie2") @new external new: unit => t = "GetMasterAccountCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFindingsPublicationConfiguration = {
  type t

  type response = {
    @ocaml.doc(
      "<p>The configuration settings that determine which findings are published to AWS Security Hub.</p>"
    )
    securityHubConfiguration: option<securityHubConfiguration>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: unit => t = "GetFindingsPublicationConfigurationCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCustomDataIdentifier = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
    )
    id: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the custom data identifier.</p>"
    )
    tags: option<tagMap>,
    @ocaml.doc("<p>The regular expression (<i>regex</i>) that defines the pattern to match.</p>")
    regex: option<__string>,
    @ocaml.doc("<p>The custom name of the custom data identifier.</p>") name: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern.</p>"
    )
    maximumMatchDistance: option<__integer>,
    @ocaml.doc(
      "<p>An array that lists specific character sequences (keywords), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. Keywords aren't case sensitive.</p>"
    )
    keywords: option<__listOf__string>,
    @ocaml.doc(
      "<p>An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. Ignore words are case sensitive.</p>"
    )
    ignoreWords: option<__listOf__string>,
    @ocaml.doc("<p>The unique identifier for the custom data identifier.</p>") id: option<__string>,
    @ocaml.doc("<p>The custom description of the custom data identifier.</p>")
    description: option<__string>,
    @ocaml.doc(
      "<p>Specifies whether the custom data identifier was deleted. If you delete a custom data identifier, Amazon Macie doesn't delete it permanently. Instead, it soft deletes the identifier.</p>"
    )
    deleted: option<__boolean>,
    @ocaml.doc(
      "<p>The date and time, in UTC and extended ISO 8601 format, when the custom data identifier was created.</p>"
    )
    createdAt: option<__timestampIso8601>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom data identifier.</p>")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "GetCustomDataIdentifierCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBucketStatistics = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the AWS account.</p>") accountId: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The total storage size, in bytes, of the objects that Amazon Macie can't analyze in the buckets. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>"
    )
    unclassifiableObjectSizeInBytes: option<objectLevelStatistics>,
    @ocaml.doc(
      "<p>The total number of objects that Amazon Macie can't analyze in the buckets. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>"
    )
    unclassifiableObjectCount: option<objectLevelStatistics>,
    @ocaml.doc(
      "<p>The total storage size, in bytes, of the objects that are compressed (.gz, .gzip, .zip) files in the buckets.</p> <p>If versioning is enabled for any of the buckets, Macie calculates this value based on the size of the latest version of each applicable object in those buckets. This value doesn't reflect the storage size of all versions of the applicable objects in the buckets.</p>"
    )
    sizeInBytesCompressed: option<__long>,
    @ocaml.doc(
      "<p>The total storage size, in bytes, of the buckets.</p> <p>If versioning is enabled for any of the buckets, Macie calculates this value based on the size of the latest version of each object in those buckets. This value doesn't reflect the storage size of all versions of the objects in the buckets.</p>"
    )
    sizeInBytes: option<__long>,
    @ocaml.doc("<p>The total number of objects in the buckets.</p>") objectCount: option<__long>,
    @ocaml.doc(
      "<p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie most recently retrieved both bucket and object metadata from Amazon S3 for the buckets.</p>"
    )
    lastUpdated: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>The total storage size, in bytes, of all the objects that Amazon Macie can analyze in the buckets. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p> <p>If versioning is enabled for any of the buckets, Macie calculates this value based on the size of the latest version of each applicable object in those buckets. This value doesn't reflect the storage size of all versions of all applicable objects in the buckets.</p>"
    )
    classifiableSizeInBytes: option<__long>,
    @ocaml.doc(
      "<p>The total number of objects that Amazon Macie can analyze in the buckets. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p>"
    )
    classifiableObjectCount: option<__long>,
    @ocaml.doc(
      "<p>The total number of buckets that are or aren't shared with another AWS account.</p>"
    )
    bucketCountBySharedAccessType: option<bucketCountBySharedAccessType>,
    @ocaml.doc(
      "<p>The total number of buckets whose bucket policies do or don't require server-side encryption of objects when objects are uploaded to the buckets.</p>"
    )
    bucketCountByObjectEncryptionRequirement: option<
      bucketCountPolicyAllowsUnencryptedObjectUploads,
    >,
    @ocaml.doc(
      "<p>The total number of buckets that use certain types of server-side encryption to encrypt new objects by default. This object also reports the total number of buckets that don't encrypt new objects by default.</p>"
    )
    bucketCountByEncryptionType: option<bucketCountByEncryptionType>,
    @ocaml.doc(
      "<p>The total number of buckets that are publicly accessible based on a combination of permissions settings for each bucket.</p>"
    )
    bucketCountByEffectivePermission: option<bucketCountByEffectivePermission>,
    @ocaml.doc("<p>The total number of buckets.</p>") bucketCount: option<__long>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "GetBucketStatisticsCommand"
  let make = (~accountId=?, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAdministratorAccount = {
  type t

  type response = {
    @ocaml.doc(
      "<p>The AWS account ID for the administrator account. If the accounts are associated by a Macie membership invitation, this object also provides details about the invitation that was sent to establish the relationship between the accounts.</p>"
    )
    administrator: option<invitation>,
  }
  @module("@aws-sdk/client-macie2") @new external new: unit => t = "GetAdministratorAccountCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSampleFindings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array that lists one or more types of findings to include in the set of sample findings. Currently, the only supported value is Policy:IAMUser/S3BucketEncryptionDisabled.</p>"
    )
    findingTypes: option<__listOfFindingType>,
  }

  @module("@aws-sdk/client-macie2") @new external new: request => t = "CreateSampleFindingsCommand"
  let make = (~findingTypes=?, ()) => new({findingTypes: findingTypes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateMember = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A map of key-value pairs that specifies the tags to associate with the account in Amazon Macie.</p> <p>An account can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
    )
    tags: option<tagMap>,
    @ocaml.doc("<p>The details for the account to associate with the administrator account.</p>")
    account: accountDetail,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the account that was associated with the administrator account.</p>"
    )
    arn: option<__string>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "CreateMemberCommand"
  let make = (~account, ~tags=?, ()) => new({tags: tags, account: account})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomDataIdentifier = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A map of key-value pairs that specifies the tags to associate with the custom data identifier.</p> <p>A custom data identifier can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
    )
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>The regular expression (<i>regex</i>) that defines the pattern to match. The expression can contain as many as 512 characters.</p>"
    )
    regex: option<__string>,
    @ocaml.doc(
      "<p>A custom name for the custom data identifier. The name can contain as many as 128 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a custom data identifier. Other users of your account might be able to see the identifier's name, depending on the actions that they're allowed to perform in Amazon Macie.</p>"
    )
    name: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50.</p>"
    )
    maximumMatchDistance: option<__integer>,
    @ocaml.doc(
      "<p>An array that lists specific character sequences (keywords), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3 - 90 characters. Keywords aren't case sensitive.</p>"
    )
    keywords: option<__listOf__string>,
    @ocaml.doc(
      "<p>An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive.</p>"
    )
    ignoreWords: option<__listOf__string>,
    @ocaml.doc(
      "<p>A custom description of the custom data identifier. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a custom data identifier. Other users of your account might be able to see the identifier's description, depending on the actions that they're allowed to perform in Amazon Macie.</p>"
    )
    description: option<__string>,
    @ocaml.doc(
      "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the custom data identifier that was created.</p>")
    customDataIdentifierId: option<__string>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "CreateCustomDataIdentifierCommand"
  let make = (
    ~tags=?,
    ~regex=?,
    ~name=?,
    ~maximumMatchDistance=?,
    ~keywords=?,
    ~ignoreWords=?,
    ~description=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      tags: tags,
      regex: regex,
      name: name,
      maximumMatchDistance: maximumMatchDistance,
      keywords: keywords,
      ignoreWords: ignoreWords,
      description: description,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutClassificationExportConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The location to store data classification results in, and the encryption settings to use when storing results in that location.</p>"
    )
    configuration: classificationExportConfiguration,
  }
  type response = {
    @ocaml.doc(
      "<p>The location where the data classification results are stored, and the encryption settings that are used when storing results in that location.</p>"
    )
    configuration: option<classificationExportConfiguration>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "PutClassificationExportConfigurationCommand"
  let make = (~configuration, ()) => new({configuration: configuration})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOrganizationAdminAccounts = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response.</p>"
    )
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>An array of objects, one for each delegated Amazon Macie administrator account for the organization. Only one of these accounts can have a status of ENABLED.</p>"
    )
    adminAccounts: option<__listOfAdminAccount>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "ListOrganizationAdminAccountsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInvitations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response.</p>"
    )
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>An array of objects, one for each invitation that was received by the account.</p>"
    )
    invitations: option<__listOfInvitation>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "ListInvitationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomDataIdentifiers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of items to include in each page of the response.</p>")
    maxResults: option<__integer>,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of objects, one for each custom data identifier.</p>")
    items: option<__listOfCustomDataIdentifierSummary>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "ListCustomDataIdentifiersCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUsageTotals = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The inclusive time period to retrieve the data for. Valid values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days. If you don't specify a value for this parameter, Amazon Macie provides aggregated usage data for the preceding 30 days.</p>"
    )
    timeRange: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of objects that contains the results of the query. Each object contains the data for a specific usage metric.</p>"
    )
    usageTotals: option<__listOfUsageTotal>,
    @ocaml.doc(
      "<p>The inclusive time period that the usage data applies to. Possible values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days.</p>"
    )
    timeRange: option<timeRange>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "GetUsageTotalsCommand"
  let make = (~timeRange=?, ()) => new({timeRange: timeRange})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetClassificationExportConfiguration = {
  type t

  type response = {
    @ocaml.doc(
      "<p>The location where data classification results are stored, and the encryption settings that are used when storing results in that location.</p>"
    )
    configuration: option<classificationExportConfiguration>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: unit => t = "GetClassificationExportConfigurationCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInvitations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array that lists AWS account IDs, one for each account that sent an invitation to delete.</p>"
    )
    accountIds: __listOf__string,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of objects, one for each account whose invitation hasn't been deleted. Each object identifies the account and explains why the request hasn't been processed for that account.</p>"
    )
    unprocessedAccounts: option<__listOfUnprocessedAccount>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "DeleteInvitationsCommand"
  let make = (~accountIds, ()) => new({accountIds: accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeclineInvitations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array that lists AWS account IDs, one for each account that sent an invitation to decline.</p>"
    )
    accountIds: __listOf__string,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of objects, one for each account whose invitation hasn't been declined. Each object identifies the account and explains why the request hasn't been processed for that account.</p>"
    )
    unprocessedAccounts: option<__listOfUnprocessedAccount>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "DeclineInvitationsCommand"
  let make = (~accountIds, ()) => new({accountIds: accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInvitations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation.</p>"
    )
    message: option<__string>,
    @ocaml.doc(
      "<p>Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to true.</p>"
    )
    disableEmailNotification: option<__boolean>,
    @ocaml.doc(
      "<p>An array that lists AWS account IDs, one for each account to send the invitation to.</p>"
    )
    accountIds: __listOf__string,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of objects, one for each account whose invitation hasn't been processed. Each object identifies the account and explains why the invitation hasn't been processed for the account.</p>"
    )
    unprocessedAccounts: option<__listOfUnprocessedAccount>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "CreateInvitationsCommand"
  let make = (~accountIds, ~message=?, ~disableEmailNotification=?, ()) =>
    new({
      message: message,
      disableEmailNotification: disableEmailNotification,
      accountIds: accountIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetCustomDataIdentifiers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of strings that lists the unique identifiers for the custom data identifiers to retrieve information about.</p>"
    )
    ids: option<__listOf__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of identifiers, one for each identifier that was specified in the request, but doesn't correlate to an existing custom data identifier.</p>"
    )
    notFoundIdentifierIds: option<__listOf__string>,
    @ocaml.doc(
      "<p>An array of objects, one for each custom data identifier that meets the criteria specified in the request.</p>"
    )
    customDataIdentifiers: option<__listOfBatchGetCustomDataIdentifierSummary>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "BatchGetCustomDataIdentifiersCommand"
  let make = (~ids=?, ()) => new({ids: ids})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMembers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies which accounts to include in the response, based on the status of an account's relationship with the administrator account. By default, the response includes only current member accounts. To include all accounts, set this value to false.</p>"
    )
    onlyAssociated: option<__string>,
    @ocaml.doc(
      "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response.</p>"
    )
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>An array of objects, one for each account that's associated with the administrator account and meets the criteria specified by the onlyAssociated request parameter.</p>"
    )
    members: option<__listOfMember>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "ListMembersCommand"
  let make = (~onlyAssociated=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({onlyAssociated: onlyAssociated, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFindingsFilters = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response.</p>"
    )
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>An array of objects, one for each filter that's associated with the account.</p>"
    )
    findingsFilterListItems: option<__listOfFindingsFilterListItem>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "ListFindingsFiltersCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFindingsFilter = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>"
    )
    position: option<__integer>,
    @ocaml.doc(
      "<p>A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users might be able to see the filter's name, depending on the actions that they're allowed to perform in Amazon Macie.</p>"
    )
    name: option<__string>,
    @ocaml.doc(
      "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
    )
    id: __string,
    @ocaml.doc("<p>The criteria to use to filter findings.</p>")
    findingCriteria: option<findingCriteria>,
    @ocaml.doc(
      "<p>A custom description of the filter. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users might be able to see the filter's description, depending on the actions that they're allowed to perform in Amazon Macie.</p>"
    )
    description: option<__string>,
    @ocaml.doc(
      "<p>The action to perform on findings that meet the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>"
    )
    action: option<findingsFilterAction>,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the filter that was updated.</p>")
    id: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the filter that was updated.</p>")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "UpdateFindingsFilterCommand"
  let make = (~id, ~position=?, ~name=?, ~findingCriteria=?, ~description=?, ~action=?, ()) =>
    new({
      position: position,
      name: name,
      id: id,
      findingCriteria: findingCriteria,
      description: description,
      action: action,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFindings = {
  type t
  type request = {
    @ocaml.doc("<p>The criteria to use to sort the results.</p>")
    sortCriteria: option<sortCriteria>,
    @ocaml.doc(
      "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of items to include in each page of the response.</p>")
    maxResults: option<__integer>,
    @ocaml.doc("<p>The criteria to use to filter the results.</p>")
    findingCriteria: option<findingCriteria>,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>An array of strings, where each string is the unique identifier for a finding that meets the filter criteria specified in the request.</p>"
    )
    findingIds: option<__listOf__string>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "ListFindingsCommand"
  let make = (~sortCriteria=?, ~nextToken=?, ~maxResults=?, ~findingCriteria=?, ()) =>
    new({
      sortCriteria: sortCriteria,
      nextToken: nextToken,
      maxResults: maxResults,
      findingCriteria: findingCriteria,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFindingsFilter = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
    )
    id: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the filter.</p>"
    )
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>"
    )
    position: option<__integer>,
    @ocaml.doc("<p>The custom name of the filter.</p>") name: option<__string>,
    @ocaml.doc("<p>The unique identifier for the filter.</p>") id: option<__string>,
    @ocaml.doc("<p>The criteria that's used to filter findings.</p>")
    findingCriteria: option<findingCriteria>,
    @ocaml.doc("<p>The custom description of the filter.</p>") description: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the filter.</p>") arn: option<__string>,
    @ocaml.doc(
      "<p>The action that's performed on findings that meet the filter criteria (findingCriteria). Possible values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>"
    )
    action: option<findingsFilterAction>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "GetFindingsFilterCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFindingStatistics = {
  type t
  type request = {
    @ocaml.doc("<p>The criteria to use to sort the query results.</p>")
    sortCriteria: option<findingStatisticsSortCriteria>,
    @ocaml.doc("<p>The maximum number of items to include in each page of the response.</p>")
    size: option<__integer>,
    @ocaml.doc(
      "<p>The finding property to use to group the query results. Valid values are:</p> <ul><li><p>classificationDetails.jobId - The unique identifier for the classification job that produced the finding.</p></li> <li><p>resourcesAffected.s3Bucket.name - The name of the S3 bucket that the finding applies to.</p></li> <li><p>severity.description - The severity level of the finding, such as High or Medium.</p></li> <li><p>type - The type of finding, such as Policy:IAMUser/S3BucketPublic and SensitiveData:S3Object/Personal.</p></li></ul>"
    )
    groupBy: groupBy,
    @ocaml.doc("<p>The criteria to use to filter the query results.</p>")
    findingCriteria: option<findingCriteria>,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of objects, one for each group of findings that meet the filter criteria specified in the request.</p>"
    )
    countsByGroup: option<__listOfGroupCount>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "GetFindingStatisticsCommand"
  let make = (~groupBy, ~sortCriteria=?, ~size=?, ~findingCriteria=?, ()) =>
    new({
      sortCriteria: sortCriteria,
      size: size,
      groupBy: groupBy,
      findingCriteria: findingCriteria,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFindingsFilter = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A map of key-value pairs that specifies the tags to associate with the filter.</p> <p>A findings filter can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
    )
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>"
    )
    position: option<__integer>,
    @ocaml.doc(
      "<p>A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users of your account might be able to see the filter's name, depending on the actions that they're allowed to perform in Amazon Macie.</p>"
    )
    name: __string,
    @ocaml.doc("<p>The criteria to use to filter findings.</p>") findingCriteria: findingCriteria,
    @ocaml.doc(
      "<p>A custom description of the filter. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users of your account might be able to see the filter's description, depending on the actions that they're allowed to perform in Amazon Macie.</p>"
    )
    description: option<__string>,
    @ocaml.doc(
      "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<__string>,
    @ocaml.doc(
      "<p>The action to perform on findings that meet the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>"
    )
    action: findingsFilterAction,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the filter that was created.</p>")
    id: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the filter that was created.</p>")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "CreateFindingsFilterCommand"
  let make = (
    ~name,
    ~findingCriteria,
    ~action,
    ~tags=?,
    ~position=?,
    ~description=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      tags: tags,
      position: position,
      name: name,
      findingCriteria: findingCriteria,
      description: description,
      clientToken: clientToken,
      action: action,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUsageStatistics = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The inclusive time period to query usage data for. Valid values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days. If you don't specify a value, Amazon Macie provides usage data for the preceding 30 days.</p>"
    )
    timeRange: option<timeRange>,
    @ocaml.doc("<p>The criteria to use to sort the query results.</p>")
    sortBy: option<usageStatisticsSortBy>,
    @ocaml.doc(
      "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of items to include in each page of the response.</p>")
    maxResults: option<__integer>,
    @ocaml.doc(
      "<p>An array of objects, one for each condition to use to filter the query results. If you specify more than one condition, Amazon Macie uses an AND operator to join the conditions.</p>"
    )
    filterBy: option<__listOfUsageStatisticsFilter>,
  }
  type response = {
    @ocaml.doc(
      "<p>The inclusive time period that the usage data applies to. Possible values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days.</p>"
    )
    timeRange: option<timeRange>,
    @ocaml.doc(
      "<p>An array of objects that contains the results of the query. Each object contains the data for an account that meets the filter criteria specified in the request.</p>"
    )
    records: option<__listOfUsageRecord>,
    @ocaml.doc(
      "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
    )
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "GetUsageStatisticsCommand"
  let make = (~timeRange=?, ~sortBy=?, ~nextToken=?, ~maxResults=?, ~filterBy=?, ()) =>
    new({
      timeRange: timeRange,
      sortBy: sortBy,
      nextToken: nextToken,
      maxResults: maxResults,
      filterBy: filterBy,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBuckets = {
  type t
  type request = {
    @ocaml.doc("<p>The criteria to use to sort the query results.</p>")
    sortCriteria: option<bucketSortCriteria>,
    @ocaml.doc(
      "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of the response. The default value is 50.</p>"
    )
    maxResults: option<__integer>,
    @ocaml.doc("<p>The criteria to use to filter the query results.</p>")
    criteria: option<bucketCriteria>,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>An array of objects, one for each bucket that meets the filter criteria specified in the request.</p>"
    )
    buckets: option<__listOfBucketMetadata>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "DescribeBucketsCommand"
  let make = (~sortCriteria=?, ~nextToken=?, ~maxResults=?, ~criteria=?, ()) =>
    new({
      sortCriteria: sortCriteria,
      nextToken: nextToken,
      maxResults: maxResults,
      criteria: criteria,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchResources = {
  type t
  type request = {
    @ocaml.doc("<p>The criteria to use to sort the results.</p>")
    sortCriteria: option<searchResourcesSortCriteria>,
    @ocaml.doc(
      "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of the response. The default value is 50.</p>"
    )
    maxResults: option<__integer>,
    @ocaml.doc(
      "<p>The filter conditions that determine which S3 buckets to include or exclude from the query results.</p>"
    )
    bucketCriteria: option<searchResourcesBucketCriteria>,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>An array of objects, one for each resource that meets the filter criteria specified in the request.</p>"
    )
    matchingResources: option<__listOfMatchingResource>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "SearchResourcesCommand"
  let make = (~sortCriteria=?, ~nextToken=?, ~maxResults=?, ~bucketCriteria=?, ()) =>
    new({
      sortCriteria: sortCriteria,
      nextToken: nextToken,
      maxResults: maxResults,
      bucketCriteria: bucketCriteria,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClassificationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the classification job.</p>") jobId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>If the current status of the job is USER_PAUSED, specifies when the job was paused and when the job or job run will expire and be cancelled if it isn't resumed. This value is present only if the value for jobStatus is USER_PAUSED.</p>"
    )
    userPausedDetails: option<userPausedDetails>,
    @ocaml.doc(
      "<p>A map of key-value pairs that specifies which tags (keys and values) are associated with the classification job.</p>"
    )
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>The number of times that the job has run and processing statistics for the job's current run.</p>"
    )
    statistics: option<statistics>,
    @ocaml.doc(
      "<p>The recurrence pattern for running the job. If the job is configured to run only once, this value is null.</p>"
    )
    scheduleFrequency: option<jobScheduleFrequency>,
    @ocaml.doc(
      "<p>The sampling depth, as a percentage, that determines the percentage of eligible objects that the job analyzes.</p>"
    )
    samplingPercentage: option<__integer>,
    @ocaml.doc(
      "<p>The S3 buckets that contain the objects to analyze, and the scope of that analysis.</p>"
    )
    s3JobDefinition: option<s3JobDefinition>,
    @ocaml.doc("<p>The custom name of the job.</p>") name: option<__string>,
    @ocaml.doc(
      "<p>The date and time, in UTC and extended ISO 8601 format, when the job started. If the job is a recurring job, this value indicates when the most recent run started.</p>"
    )
    lastRunTime: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run.</p>"
    )
    lastRunErrorStatus: option<lastRunErrorStatus>,
    @ocaml.doc(
      "<p>The schedule for running the job. Possible values are:</p> <ul><li><p>ONE_TIME - The job runs only once.</p></li> <li><p>SCHEDULED - The job runs on a daily, weekly, or monthly basis. The scheduleFrequency property indicates the recurrence pattern for the job.</p></li></ul>"
    )
    jobType: option<jobType>,
    @ocaml.doc(
      "<p>The current status of the job. Possible values are:</p> <ul><li><p>CANCELLED - You cancelled the job or, if it's a one-time job, you paused the job and didn't resume it within 30 days.</p></li> <li><p>COMPLETE - For a one-time job, Amazon Macie finished processing the data specified for the job. This value doesn't apply to recurring jobs.</p></li> <li><p>IDLE - For a recurring job, the previous scheduled run is complete and the next scheduled run is pending. This value doesn't apply to one-time jobs.</p></li> <li><p>PAUSED - Amazon Macie started running the job but additional processing would exceed the monthly sensitive data discovery quota for your account or one or more member accounts that the job analyzes data for.</p></li> <li><p>RUNNING - For a one-time job, the job is in progress. For a recurring job, a scheduled run is in progress.</p></li> <li><p>USER_PAUSED - You paused the job. If you paused the job while it had a status of RUNNING and you don't resume it within 30 days of pausing it, the job or job run will expire and be cancelled, depending on the job's type. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>"
    )
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The unique identifier for the job.</p>") jobId: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the job.</p>") jobArn: option<__string>,
    @ocaml.doc(
      "<p>Specifies whether the job is configured to analyze all existing, eligible objects immediately after it's created.</p>"
    )
    initialRun: option<__boolean>,
    @ocaml.doc("<p>The custom description of the job.</p>") description: option<__string>,
    @ocaml.doc("<p>The custom data identifiers that the job uses to analyze data.</p>")
    customDataIdentifierIds: option<__listOf__string>,
    @ocaml.doc(
      "<p>The date and time, in UTC and extended ISO 8601 format, when the job was created.</p>"
    )
    createdAt: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>The token that was provided to ensure the idempotency of the request to create the job.</p>"
    )
    clientToken: option<__string>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "DescribeClassificationJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClassificationJob = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A map of key-value pairs that specifies the tags to associate with the job.</p> <p>A job can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
    )
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the jobType property to ONE_TIME.</p>"
    )
    scheduleFrequency: option<jobScheduleFrequency>,
    @ocaml.doc(
      "<p>The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.</p>"
    )
    samplingPercentage: option<__integer>,
    @ocaml.doc(
      "<p>The S3 buckets that contain the objects to analyze, and the scope of that analysis.</p>"
    )
    s3JobDefinition: s3JobDefinition,
    @ocaml.doc("<p>A custom name for the job. The name can contain as many as 500 characters.</p>")
    name: __string,
    @ocaml.doc(
      "<p>The schedule for running the job. Valid values are:</p> <ul><li><p>ONE_TIME - Run the job only once. If you specify this value, don't specify a value for the scheduleFrequency property.</p></li> <li><p>SCHEDULED - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the scheduleFrequency property to define the recurrence pattern for the job.</p></li></ul>"
    )
    jobType: jobType,
    @ocaml.doc(
      "<p>Specifies whether to analyze all existing, eligible objects immediately after the job is created.</p>"
    )
    initialRun: option<__boolean>,
    @ocaml.doc(
      "<p>A custom description of the job. The description can contain as many as 200 characters.</p>"
    )
    description: option<__string>,
    @ocaml.doc("<p>The custom data identifiers to use for data analysis and classification.</p>")
    customDataIdentifierIds: option<__listOf__string>,
    @ocaml.doc(
      "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: __string,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the job.</p>") jobId: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the job.</p>") jobArn: option<__string>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "CreateClassificationJobCommand"
  let make = (
    ~s3JobDefinition,
    ~name,
    ~jobType,
    ~clientToken,
    ~tags=?,
    ~scheduleFrequency=?,
    ~samplingPercentage=?,
    ~initialRun=?,
    ~description=?,
    ~customDataIdentifierIds=?,
    (),
  ) =>
    new({
      tags: tags,
      scheduleFrequency: scheduleFrequency,
      samplingPercentage: samplingPercentage,
      s3JobDefinition: s3JobDefinition,
      name: name,
      jobType: jobType,
      initialRun: initialRun,
      description: description,
      customDataIdentifierIds: customDataIdentifierIds,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListClassificationJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The criteria to use to sort the results.</p>")
    sortCriteria: option<listJobsSortCriteria>,
    @ocaml.doc(
      "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of items to include in each page of the response.</p>")
    maxResults: option<__integer>,
    @ocaml.doc("<p>The criteria to use to filter the results.</p>")
    filterCriteria: option<listJobsFilterCriteria>,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>An array of objects, one for each job that meets the filter criteria specified in the request.</p>"
    )
    items: option<__listOfJobSummary>,
  }
  @module("@aws-sdk/client-macie2") @new
  external new: request => t = "ListClassificationJobsCommand"
  let make = (~sortCriteria=?, ~nextToken=?, ~maxResults=?, ~filterCriteria=?, ()) =>
    new({
      sortCriteria: sortCriteria,
      nextToken: nextToken,
      maxResults: maxResults,
      filterCriteria: filterCriteria,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFindings = {
  type t
  type request = {
    @ocaml.doc("<p>The criteria for sorting the results of the request.</p>")
    sortCriteria: option<sortCriteria>,
    @ocaml.doc(
      "<p>An array of strings that lists the unique identifiers for the findings to retrieve.</p>"
    )
    findingIds: __listOf__string,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of objects, one for each finding that meets the criteria specified in the request.</p>"
    )
    findings: option<__listOfFinding>,
  }
  @module("@aws-sdk/client-macie2") @new external new: request => t = "GetFindingsCommand"
  let make = (~findingIds, ~sortCriteria=?, ()) =>
    new({sortCriteria: sortCriteria, findingIds: findingIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
