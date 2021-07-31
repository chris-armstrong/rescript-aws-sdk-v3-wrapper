type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-macie2") @new external createClient: unit => awsServiceClient = "Macie2Client";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type __timestampIso8601 = Js.Date.t;
type __string = string
type __long = float
type __integer = int
type __double = float
type __boolean = bool
type userIdentityType = [@as("AWSService") #AWSService | @as("AWSAccount") #AWSAccount | @as("Root") #Root | @as("FederatedUser") #FederatedUser | @as("IAMUser") #IAMUser | @as("AssumedRole") #AssumedRole]
type usageType = [@as("SENSITIVE_DATA_DISCOVERY") #SENSITIVE_DATA_DISCOVERY | @as("DATA_INVENTORY_EVALUATION") #DATA_INVENTORY_EVALUATION]
type usageStatisticsSortKey = [@as("freeTrialStartDate") #FreeTrialStartDate | @as("serviceLimitValue") #ServiceLimitValue | @as("total") #Total | @as("accountId") #AccountId]
type usageStatisticsFilterKey = [@as("total") #Total | @as("freeTrialStartDate") #FreeTrialStartDate | @as("serviceLimit") #ServiceLimit | @as("accountId") #AccountId]
type usageStatisticsFilterComparator = [@as("CONTAINS") #CONTAINS | @as("NE") #NE | @as("EQ") #EQ | @as("LTE") #LTE | @as("LT") #LT | @as("GTE") #GTE | @as("GT") #GT]
type unit_ = [@as("TERABYTES") #TERABYTES]
type type_ = [@as("aws:kms") #Aws_Kms | @as("AES256") #AES256 | @as("NONE") #NONE]
type timeRange = [@as("PAST_30_DAYS") #PAST_30_DAYS | @as("MONTH_TO_DATE") #MONTH_TO_DATE]
type tagTarget = [@as("S3_OBJECT") #S3_OBJECT]
type storageClass = [@as("GLACIER") #GLACIER | @as("ONEZONE_IA") #ONEZONE_IA | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING | @as("STANDARD_IA") #STANDARD_IA | @as("REDUCED_REDUNDANCY") #REDUCED_REDUNDANCY | @as("STANDARD") #STANDARD]
type simpleCriterionKeyForJob = [@as("S3_BUCKET_SHARED_ACCESS") #S3_BUCKET_SHARED_ACCESS | @as("S3_BUCKET_EFFECTIVE_PERMISSION") #S3_BUCKET_EFFECTIVE_PERMISSION | @as("S3_BUCKET_NAME") #S3_BUCKET_NAME | @as("ACCOUNT_ID") #ACCOUNT_ID]
type sharedAccess = [@as("UNKNOWN") #UNKNOWN | @as("NOT_SHARED") #NOT_SHARED | @as("INTERNAL") #INTERNAL | @as("EXTERNAL") #EXTERNAL]
type severityDescription = [@as("High") #High | @as("Medium") #Medium | @as("Low") #Low]
type sensitiveDataItemCategory = [@as("CUSTOM_IDENTIFIER") #CUSTOM_IDENTIFIER | @as("CREDENTIALS") #CREDENTIALS | @as("PERSONAL_INFORMATION") #PERSONAL_INFORMATION | @as("FINANCIAL_INFORMATION") #FINANCIAL_INFORMATION]
type searchResourcesSortAttributeName = [@as("S3_CLASSIFIABLE_SIZE_IN_BYTES") #S3_CLASSIFIABLE_SIZE_IN_BYTES | @as("S3_CLASSIFIABLE_OBJECT_COUNT") #S3_CLASSIFIABLE_OBJECT_COUNT | @as("RESOURCE_NAME") #RESOURCE_NAME | @as("ACCOUNT_ID") #ACCOUNT_ID]
type searchResourcesSimpleCriterionKey = [@as("S3_BUCKET_SHARED_ACCESS") #S3_BUCKET_SHARED_ACCESS | @as("S3_BUCKET_EFFECTIVE_PERMISSION") #S3_BUCKET_EFFECTIVE_PERMISSION | @as("S3_BUCKET_NAME") #S3_BUCKET_NAME | @as("ACCOUNT_ID") #ACCOUNT_ID]
type searchResourcesComparator = [@as("NE") #NE | @as("EQ") #EQ]
type scopeFilterKey = [@as("OBJECT_KEY") #OBJECT_KEY | @as("TAG") #TAG | @as("OBJECT_SIZE") #OBJECT_SIZE | @as("OBJECT_LAST_MODIFIED_DATE") #OBJECT_LAST_MODIFIED_DATE | @as("OBJECT_EXTENSION") #OBJECT_EXTENSION | @as("BUCKET_CREATION_DATE") #BUCKET_CREATION_DATE]
type relationshipStatus = [@as("AccountSuspended") #AccountSuspended | @as("RegionDisabled") #RegionDisabled | @as("EmailVerificationFailed") #EmailVerificationFailed | @as("EmailVerificationInProgress") #EmailVerificationInProgress | @as("Resigned") #Resigned | @as("Removed") #Removed | @as("Created") #Created | @as("Invited") #Invited | @as("Paused") #Paused | @as("Enabled") #Enabled]
type orderBy = [@as("DESC") #DESC | @as("ASC") #ASC]
type maxResults = int
type macieStatus = [@as("ENABLED") #ENABLED | @as("PAUSED") #PAUSED]
type listJobsSortAttributeName = [@as("jobType") #JobType | @as("name") #Name | @as("jobStatus") #JobStatus | @as("createdAt") #CreatedAt]
type listJobsFilterKey = [@as("name") #Name | @as("createdAt") #CreatedAt | @as("jobStatus") #JobStatus | @as("jobType") #JobType]
type lastRunErrorStatusCode = [@as("ERROR") #ERROR | @as("NONE") #NONE]
type jobType = [@as("SCHEDULED") #SCHEDULED | @as("ONE_TIME") #ONE_TIME]
type jobStatus = [@as("USER_PAUSED") #USER_PAUSED | @as("IDLE") #IDLE | @as("COMPLETE") #COMPLETE | @as("CANCELLED") #CANCELLED | @as("PAUSED") #PAUSED | @as("RUNNING") #RUNNING]
type jobComparator = [@as("STARTS_WITH") #STARTS_WITH | @as("CONTAINS") #CONTAINS | @as("NE") #NE | @as("LTE") #LTE | @as("LT") #LT | @as("GTE") #GTE | @as("GT") #GT | @as("EQ") #EQ]
type isMonitoredByJob = [@as("UNKNOWN") #UNKNOWN | @as("FALSE") #FALSE | @as("TRUE") #TRUE]
type isDefinedInJob = [@as("UNKNOWN") #UNKNOWN | @as("FALSE") #FALSE | @as("TRUE") #TRUE]
type groupBy = [@as("severity.description") #Severity_Description | @as("classificationDetails.jobId") #ClassificationDetails_JobId | @as("type") #Type | @as("resourcesAffected.s3Bucket.name") #ResourcesAffected_S3Bucket_Name]
type findingsFilterAction = [@as("NOOP") #NOOP | @as("ARCHIVE") #ARCHIVE]
type findingType = [@as("Policy:IAMUser/S3BlockPublicAccessDisabled") #Policy_IAMUser_S3BlockPublicAccessDisabled | @as("Policy:IAMUser/S3BucketEncryptionDisabled") #Policy_IAMUser_S3BucketEncryptionDisabled | @as("Policy:IAMUser/S3BucketReplicatedExternally") #Policy_IAMUser_S3BucketReplicatedExternally | @as("Policy:IAMUser/S3BucketSharedExternally") #Policy_IAMUser_S3BucketSharedExternally | @as("Policy:IAMUser/S3BucketPublic") #Policy_IAMUser_S3BucketPublic | @as("SensitiveData:S3Object/CustomIdentifier") #SensitiveData_S3Object_CustomIdentifier | @as("SensitiveData:S3Object/Credentials") #SensitiveData_S3Object_Credentials | @as("SensitiveData:S3Object/Personal") #SensitiveData_S3Object_Personal | @as("SensitiveData:S3Object/Financial") #SensitiveData_S3Object_Financial | @as("SensitiveData:S3Object/Multiple") #SensitiveData_S3Object_Multiple]
type findingStatisticsSortAttributeName = [@as("count") #Count | @as("groupKey") #GroupKey]
type findingPublishingFrequency = [@as("SIX_HOURS") #SIX_HOURS | @as("ONE_HOUR") #ONE_HOUR | @as("FIFTEEN_MINUTES") #FIFTEEN_MINUTES]
type findingCategory = [@as("POLICY") #POLICY | @as("CLASSIFICATION") #CLASSIFICATION]
type findingActionType = [@as("AWS_API_CALL") #AWS_API_CALL]
type errorCode = [@as("InternalError") #InternalError | @as("ClientError") #ClientError]
type encryptionType = [@as("UNKNOWN") #UNKNOWN | @as("aws:kms") #Aws_Kms | @as("AES256") #AES256 | @as("NONE") #NONE]
type effectivePermission = [@as("UNKNOWN") #UNKNOWN | @as("NOT_PUBLIC") #NOT_PUBLIC | @as("PUBLIC") #PUBLIC]
type dayOfWeek = [@as("SATURDAY") #SATURDAY | @as("FRIDAY") #FRIDAY | @as("THURSDAY") #THURSDAY | @as("WEDNESDAY") #WEDNESDAY | @as("TUESDAY") #TUESDAY | @as("MONDAY") #MONDAY | @as("SUNDAY") #SUNDAY]
type dailySchedule = unit
type currency = [@as("USD") #USD]
type allowsUnencryptedObjectUploads = [@as("UNKNOWN") #UNKNOWN | @as("FALSE") #FALSE | @as("TRUE") #TRUE]
type adminStatus = [@as("DISABLING_IN_PROGRESS") #DISABLING_IN_PROGRESS | @as("ENABLED") #ENABLED]
type __listOf__string = array<__string>
type __listOfFindingType = array<findingType>
type weeklySchedule = {
dayOfWeek: option<dayOfWeek>
}
type userPausedDetails = {
jobPausedAt: option<__timestampIso8601>,
  jobImminentExpirationHealthEventArn: option<__string>,
  jobExpiresAt: option<__timestampIso8601>
}
type userIdentityRoot = {
principalId: option<__string>,
  arn: option<__string>,
  accountId: option<__string>
}
type usageTotal = {
@as("type") type_: option<usageType>,
  estimatedCost: option<__string>,
  currency: option<currency>
}
type usageStatisticsSortBy = {
orderBy: option<orderBy>,
  key: option<usageStatisticsSortKey>
}
type unprocessedAccount = {
errorMessage: option<__string>,
  errorCode: option<errorCode>,
  accountId: option<__string>
}
type tagValuePair = {
value: option<__string>,
  key: option<__string>
}
type tagMap = Js.Dict.t<__string>
type tagCriterionPairForJob = {
value: option<__string>,
  key: option<__string>
}
type statistics = {
numberOfRuns: option<__double>,
  approximateNumberOfObjectsToProcess: option<__double>
}
type sortCriteria = {
orderBy: option<orderBy>,
  attributeName: option<__string>
}
type severity = {
score: option<__long>,
  description: option<severityDescription>
}
type sessionIssuer = {
userName: option<__string>,
  @as("type") type_: option<__string>,
  principalId: option<__string>,
  arn: option<__string>,
  accountId: option<__string>
}
type sessionContextAttributes = {
mfaAuthenticated: option<__boolean>,
  creationDate: option<__timestampIso8601>
}
type serviceLimit = {
value: option<__long>,
  @as("unit") unit_: option<unit_>,
  isServiceLimited: option<__boolean>
}
type serverSideEncryption = {
kmsMasterKeyId: option<__string>,
  encryptionType: option<encryptionType>
}
type securityHubConfiguration = {
publishPolicyFindings: __boolean,
  publishClassificationFindings: __boolean
}
type searchResourcesTagCriterionPair = {
value: option<__string>,
  key: option<__string>
}
type searchResourcesSortCriteria = {
orderBy: option<orderBy>,
  attributeName: option<searchResourcesSortAttributeName>
}
type s3Destination = {
kmsKeyArn: __string,
  keyPrefix: option<__string>,
  bucketName: __string
}
type s3BucketOwner = {
id: option<__string>,
  displayName: option<__string>
}
type record = {
recordIndex: option<__long>,
  jsonPath: option<__string>
}
type range = {
startColumn: option<__long>,
  start: option<__long>,
  end: option<__long>
}
type objectLevelStatistics = {
total: option<__long>,
  storageClass: option<__long>,
  fileType: option<__long>
}
type objectCountByEncryptionType = {
unknown: option<__long>,
  unencrypted: option<__long>,
  s3Managed: option<__long>,
  kmsManaged: option<__long>,
  customerManaged: option<__long>
}
type monthlySchedule = {
dayOfMonth: option<__integer>
}
type listJobsSortCriteria = {
orderBy: option<orderBy>,
  attributeName: option<listJobsSortAttributeName>
}
type lastRunErrorStatus = {
code: option<lastRunErrorStatusCode>
}
type keyValuePair = {
value: option<__string>,
  key: option<__string>
}
type jobDetails = {
lastJobRunTime: option<__timestampIso8601>,
  lastJobId: option<__string>,
  isMonitoredByJob: option<isMonitoredByJob>,
  isDefinedInJob: option<isDefinedInJob>
}
type ipOwner = {
org: option<__string>,
  isp: option<__string>,
  asnOrg: option<__string>,
  asn: option<__string>
}
type ipGeoLocation = {
lon: option<__double>,
  lat: option<__double>
}
type ipCountry = {
name: option<__string>,
  code: option<__string>
}
type ipCity = {
name: option<__string>
}
type invitation = {
relationshipStatus: option<relationshipStatus>,
  invitedAt: option<__timestampIso8601>,
  invitationId: option<__string>,
  accountId: option<__string>
}
type iamUser = {
userName: option<__string>,
  principalId: option<__string>,
  arn: option<__string>,
  accountId: option<__string>
}
type groupCount = {
groupKey: option<__string>,
  count: option<__long>
}
type findingStatisticsSortCriteria = {
orderBy: option<orderBy>,
  attributeName: option<findingStatisticsSortAttributeName>
}
type domainDetails = {
domainName: option<__string>
}
type customDataIdentifierSummary = {
name: option<__string>,
  id: option<__string>,
  description: option<__string>,
  createdAt: option<__timestampIso8601>,
  arn: option<__string>
}
type classificationResultStatus = {
reason: option<__string>,
  code: option<__string>
}
type cell = {
row: option<__long>,
  columnName: option<__string>,
  column: option<__long>,
  cellReference: option<__string>
}
type bucketSortCriteria = {
orderBy: option<orderBy>,
  attributeName: option<__string>
}
type bucketServerSideEncryption = {
@as("type") type_: option<type_>,
  kmsMasterKeyId: option<__string>
}
type bucketPolicy = {
allowsPublicWriteAccess: option<__boolean>,
  allowsPublicReadAccess: option<__boolean>
}
type bucketCountPolicyAllowsUnencryptedObjectUploads = {
unknown: option<__long>,
  deniesUnencryptedObjectUploads: option<__long>,
  allowsUnencryptedObjectUploads: option<__long>
}
type bucketCountBySharedAccessType = {
unknown: option<__long>,
  notShared: option<__long>,
  internal: option<__long>,
  @as("external") external_: option<__long>
}
type bucketCountByEncryptionType = {
unknown: option<__long>,
  unencrypted: option<__long>,
  s3Managed: option<__long>,
  kmsManaged: option<__long>
}
type bucketCountByEffectivePermission = {
unknown: option<__long>,
  publiclyWritable: option<__long>,
  publiclyReadable: option<__long>,
  publiclyAccessible: option<__long>
}
type blockPublicAccess = {
restrictPublicBuckets: option<__boolean>,
  ignorePublicAcls: option<__boolean>,
  blockPublicPolicy: option<__boolean>,
  blockPublicAcls: option<__boolean>
}
type batchGetCustomDataIdentifierSummary = {
name: option<__string>,
  id: option<__string>,
  description: option<__string>,
  deleted: option<__boolean>,
  createdAt: option<__timestampIso8601>,
  arn: option<__string>
}
type awsService = {
invokedBy: option<__string>
}
type awsAccount = {
principalId: option<__string>,
  accountId: option<__string>
}
type apiCallDetails = {
lastSeen: option<__timestampIso8601>,
  firstSeen: option<__timestampIso8601>,
  apiServiceName: option<__string>,
  api: option<__string>
}
type adminAccount = {
status: option<adminStatus>,
  accountId: option<__string>
}
type accountDetail = {
email: __string,
  accountId: __string
}
type accessControlList = {
allowsPublicWriteAccess: option<__boolean>,
  allowsPublicReadAccess: option<__boolean>
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
type usageStatisticsFilter = {
values: option<__listOf__string>,
  key: option<usageStatisticsFilterKey>,
  comparator: option<usageStatisticsFilterComparator>
}
type usageByAccount = {
@as("type") type_: option<usageType>,
  serviceLimit: option<serviceLimit>,
  estimatedCost: option<__string>,
  currency: option<currency>
}
type simpleScopeTerm = {
values: option<__listOf__string>,
  key: option<scopeFilterKey>,
  comparator: option<jobComparator>
}
type simpleCriterionForJob = {
values: option<__listOf__string>,
  key: option<simpleCriterionKeyForJob>,
  comparator: option<jobComparator>
}
type sessionContext = {
sessionIssuer: option<sessionIssuer>,
  attributes: option<sessionContextAttributes>
}
type searchResourcesSimpleCriterion = {
values: option<__listOf__string>,
  key: option<searchResourcesSimpleCriterionKey>,
  comparator: option<searchResourcesComparator>
}
type s3BucketDefinitionForJob = {
buckets: __listOf__string,
  accountId: __string
}
type replicationDetails = {
replicationAccounts: option<__listOf__string>,
  replicatedExternally: option<__boolean>,
  replicated: option<__boolean>
}
type records = array<record>
type ranges = array<range>
type page = {
pageNumber: option<__long>,
  offsetRange: option<range>,
  lineRange: option<range>
}
type member = {
updatedAt: option<__timestampIso8601>,
  tags: option<tagMap>,
  relationshipStatus: option<relationshipStatus>,
  masterAccountId: option<__string>,
  invitedAt: option<__timestampIso8601>,
  email: option<__string>,
  arn: option<__string>,
  administratorAccountId: option<__string>,
  accountId: option<__string>
}
type matchingBucket = {
unclassifiableObjectSizeInBytes: option<objectLevelStatistics>,
  unclassifiableObjectCount: option<objectLevelStatistics>,
  sizeInBytesCompressed: option<__long>,
  sizeInBytes: option<__long>,
  objectCountByEncryptionType: option<objectCountByEncryptionType>,
  objectCount: option<__long>,
  jobDetails: option<jobDetails>,
  classifiableSizeInBytes: option<__long>,
  classifiableObjectCount: option<__long>,
  bucketName: option<__string>,
  accountId: option<__string>
}
type listJobsFilterTerm = {
values: option<__listOf__string>,
  key: option<listJobsFilterKey>,
  comparator: option<jobComparator>
}
type keyValuePairList = array<keyValuePair>
type jobScheduleFrequency = {
weeklySchedule: option<weeklySchedule>,
  monthlySchedule: option<monthlySchedule>,
  dailySchedule: option<dailySchedule>
}
type ipAddressDetails = {
ipOwner: option<ipOwner>,
  ipGeoLocation: option<ipGeoLocation>,
  ipCountry: option<ipCountry>,
  ipCity: option<ipCity>,
  ipAddressV4: option<__string>
}
type findingsFilterListItem = {
tags: option<tagMap>,
  name: option<__string>,
  id: option<__string>,
  arn: option<__string>,
  action: option<findingsFilterAction>
}
type findingAction = {
apiCallDetails: option<apiCallDetails>,
  actionType: option<findingActionType>
}
type criterionAdditionalProperties = {
neq: option<__listOf__string>,
  lte: option<__long>,
  lt: option<__long>,
  gte: option<__long>,
  gt: option<__long>,
  eqExactMatch: option<__listOf__string>,
  eq: option<__listOf__string>
}
type classificationExportConfiguration = {
s3Destination: option<s3Destination>
}
type cells = array<cell>
type bucketLevelPermissions = {
bucketPolicy: option<bucketPolicy>,
  blockPublicAccess: option<blockPublicAccess>,
  accessControlList: option<accessControlList>
}
type bucketCriteriaAdditionalProperties = {
prefix: option<__string>,
  neq: option<__listOf__string>,
  lte: option<__long>,
  lt: option<__long>,
  gte: option<__long>,
  gt: option<__long>,
  eq: option<__listOf__string>
}
type accountLevelPermissions = {
blockPublicAccess: option<blockPublicAccess>
}
type __listOfUsageStatisticsFilter = array<usageStatisticsFilter>
type __listOfUsageByAccount = array<usageByAccount>
type __listOfS3BucketDefinitionForJob = array<s3BucketDefinitionForJob>
type __listOfMember = array<member>
type __listOfListJobsFilterTerm = array<listJobsFilterTerm>
type __listOfFindingsFilterListItem = array<findingsFilterListItem>
type tagScopeTerm = {
target: option<tagTarget>,
  tagValues: option<__listOfTagValuePair>,
  key: option<__string>,
  comparator: option<jobComparator>
}
type tagCriterionForJob = {
tagValues: option<__listOfTagCriterionPairForJob>,
  comparator: option<jobComparator>
}
type searchResourcesTagCriterion = {
tagValues: option<__listOfSearchResourcesTagCriterionPair>,
  comparator: option<searchResourcesComparator>
}
type s3Object = {
versionId: option<__string>,
  tags: option<keyValuePairList>,
  storageClass: option<storageClass>,
  size: option<__long>,
  serverSideEncryption: option<serverSideEncryption>,
  publicAccess: option<__boolean>,
  path: option<__string>,
  lastModified: option<__timestampIso8601>,
  key: option<__string>,
  extension: option<__string>,
  eTag: option<__string>,
  bucketArn: option<__string>
}
type pages = array<page>
type matchingResource = {
matchingBucket: option<matchingBucket>
}
type federatedUser = {
sessionContext: option<sessionContext>,
  principalId: option<__string>,
  arn: option<__string>,
  accountId: option<__string>,
  accessKeyId: option<__string>
}
type criterion = Js.Dict.t<criterionAdditionalProperties>
type bucketPermissionConfiguration = {
bucketLevelPermissions: option<bucketLevelPermissions>,
  accountLevelPermissions: option<accountLevelPermissions>
}
type bucketCriteria = Js.Dict.t<bucketCriteriaAdditionalProperties>
type assumedRole = {
sessionContext: option<sessionContext>,
  principalId: option<__string>,
  arn: option<__string>,
  accountId: option<__string>,
  accessKeyId: option<__string>
}
type __listOfMatchingResource = array<matchingResource>
type userIdentity = {
@as("type") type_: option<userIdentityType>,
  root: option<userIdentityRoot>,
  iamUser: option<iamUser>,
  federatedUser: option<federatedUser>,
  awsService: option<awsService>,
  awsAccount: option<awsAccount>,
  assumedRole: option<assumedRole>
}
type usageRecord = {
usage: option<__listOfUsageByAccount>,
  freeTrialStartDate: option<__timestampIso8601>,
  accountId: option<__string>
}
type searchResourcesCriteria = {
tagCriterion: option<searchResourcesTagCriterion>,
  simpleCriterion: option<searchResourcesSimpleCriterion>
}
type occurrences = {
records: option<records>,
  pages: option<pages>,
  offsetRanges: option<ranges>,
  lineRanges: option<ranges>,
  cells: option<cells>
}
type listJobsFilterCriteria = {
includes: option<__listOfListJobsFilterTerm>,
  excludes: option<__listOfListJobsFilterTerm>
}
type jobScopeTerm = {
tagScopeTerm: option<tagScopeTerm>,
  simpleScopeTerm: option<simpleScopeTerm>
}
type findingCriteria = {
criterion: option<criterion>
}
type criteriaForJob = {
tagCriterion: option<tagCriterionForJob>,
  simpleCriterion: option<simpleCriterionForJob>
}
type bucketPublicAccess = {
permissionConfiguration: option<bucketPermissionConfiguration>,
  effectivePermission: option<effectivePermission>
}
type __listOfUsageRecord = array<usageRecord>
type __listOfSearchResourcesCriteria = array<searchResourcesCriteria>
type __listOfJobScopeTerm = array<jobScopeTerm>
type __listOfCriteriaForJob = array<criteriaForJob>
type s3Bucket = {
tags: option<keyValuePairList>,
  publicAccess: option<bucketPublicAccess>,
  owner: option<s3BucketOwner>,
  name: option<__string>,
  defaultServerSideEncryption: option<serverSideEncryption>,
  createdAt: option<__timestampIso8601>,
  arn: option<__string>,
  allowsUnencryptedObjectUploads: option<allowsUnencryptedObjectUploads>
}
type findingActor = {
userIdentity: option<userIdentity>,
  ipAddressDetails: option<ipAddressDetails>,
  domainDetails: option<domainDetails>
}
type defaultDetection = {
@as("type") type_: option<__string>,
  occurrences: option<occurrences>,
  count: option<__long>
}
type customDetection = {
occurrences: option<occurrences>,
  name: option<__string>,
  count: option<__long>,
  arn: option<__string>
}
type bucketMetadata = {
versioning: option<__boolean>,
  unclassifiableObjectSizeInBytes: option<objectLevelStatistics>,
  unclassifiableObjectCount: option<objectLevelStatistics>,
  tags: option<__listOfKeyValuePair>,
  sizeInBytesCompressed: option<__long>,
  sizeInBytes: option<__long>,
  sharedAccess: option<sharedAccess>,
  serverSideEncryption: option<bucketServerSideEncryption>,
  replicationDetails: option<replicationDetails>,
  region: option<__string>,
  publicAccess: option<bucketPublicAccess>,
  objectCountByEncryptionType: option<objectCountByEncryptionType>,
  objectCount: option<__long>,
  lastUpdated: option<__timestampIso8601>,
  jobDetails: option<jobDetails>,
  classifiableSizeInBytes: option<__long>,
  classifiableObjectCount: option<__long>,
  bucketName: option<__string>,
  bucketCreatedAt: option<__timestampIso8601>,
  bucketArn: option<__string>,
  allowsUnencryptedObjectUploads: option<allowsUnencryptedObjectUploads>,
  accountId: option<__string>
}
type __listOfBucketMetadata = array<bucketMetadata>
type searchResourcesCriteriaBlock = {
@as("and") and_: option<__listOfSearchResourcesCriteria>
}
type resourcesAffected = {
s3Object: option<s3Object>,
  s3Bucket: option<s3Bucket>
}
type policyDetails = {
actor: option<findingActor>,
  action: option<findingAction>
}
type jobScopingBlock = {
@as("and") and_: option<__listOfJobScopeTerm>
}
type defaultDetections = array<defaultDetection>
type customDetections = array<customDetection>
type criteriaBlockForJob = {
@as("and") and_: option<__listOfCriteriaForJob>
}
type sensitiveDataItem = {
totalCount: option<__long>,
  detections: option<defaultDetections>,
  category: option<sensitiveDataItemCategory>
}
type searchResourcesBucketCriteria = {
includes: option<searchResourcesCriteriaBlock>,
  excludes: option<searchResourcesCriteriaBlock>
}
type scoping = {
includes: option<jobScopingBlock>,
  excludes: option<jobScopingBlock>
}
type s3BucketCriteriaForJob = {
includes: option<criteriaBlockForJob>,
  excludes: option<criteriaBlockForJob>
}
type customDataIdentifiers = {
totalCount: option<__long>,
  detections: option<customDetections>
}
type sensitiveData = array<sensitiveDataItem>
type s3JobDefinition = {
bucketCriteria: option<s3BucketCriteriaForJob>,
  scoping: option<scoping>,
  bucketDefinitions: option<__listOfS3BucketDefinitionForJob>
}
type jobSummary = {
bucketCriteria: option<s3BucketCriteriaForJob>,
  userPausedDetails: option<userPausedDetails>,
  name: option<__string>,
  lastRunErrorStatus: option<lastRunErrorStatus>,
  jobType: option<jobType>,
  jobStatus: option<jobStatus>,
  jobId: option<__string>,
  createdAt: option<__timestampIso8601>,
  bucketDefinitions: option<__listOfS3BucketDefinitionForJob>
}
type __listOfJobSummary = array<jobSummary>
type classificationResult = {
status: option<classificationResultStatus>,
  sizeClassified: option<__long>,
  sensitiveData: option<sensitiveData>,
  mimeType: option<__string>,
  customDataIdentifiers: option<customDataIdentifiers>,
  additionalOccurrences: option<__boolean>
}
type classificationDetails = {
result: option<classificationResult>,
  jobId: option<__string>,
  jobArn: option<__string>,
  detailedResultsLocation: option<__string>
}
type finding = {
updatedAt: option<__timestampIso8601>,
  @as("type") type_: option<findingType>,
  title: option<__string>,
  severity: option<severity>,
  schemaVersion: option<__string>,
  sample: option<__boolean>,
  resourcesAffected: option<resourcesAffected>,
  region: option<__string>,
  policyDetails: option<policyDetails>,
  partition: option<__string>,
  id: option<__string>,
  description: option<__string>,
  createdAt: option<__timestampIso8601>,
  count: option<__long>,
  classificationDetails: option<classificationDetails>,
  category: option<findingCategory>,
  archived: option<__boolean>,
  accountId: option<__string>
}
type __listOfFinding = array<finding>

module UpdateOrganizationConfiguration = {
  type t;
  type request = {
autoEnable: __boolean
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "UpdateOrganizationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateMemberSession = {
  type t;
  type request = {
status: macieStatus,
  id: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "UpdateMemberSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateMacieSession = {
  type t;
  type request = {
status: option<macieStatus>,
  findingPublishingFrequency: option<findingPublishingFrequency>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "UpdateMacieSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateClassificationJob = {
  type t;
  type request = {
jobStatus: jobStatus,
  jobId: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "UpdateClassificationJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMacieSession = {
  type t;
  type request = unit
  type response = {
updatedAt: option<__timestampIso8601>,
  status: option<macieStatus>,
  serviceRole: option<__string>,
  findingPublishingFrequency: option<findingPublishingFrequency>,
  createdAt: option<__timestampIso8601>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetMacieSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInvitationsCount = {
  type t;
  type request = unit
  type response = {
invitationsCount: option<__long>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetInvitationsCountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableOrganizationAdminAccount = {
  type t;
  type request = {
clientToken: option<__string>,
  adminAccountId: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "EnableOrganizationAdminAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableMacie = {
  type t;
  type request = {
status: option<macieStatus>,
  findingPublishingFrequency: option<findingPublishingFrequency>,
  clientToken: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "EnableMacieCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateMember = {
  type t;
  type request = {
id: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DisassociateMemberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateFromMasterAccount = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DisassociateFromMasterAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateFromAdministratorAccount = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DisassociateFromAdministratorAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableOrganizationAdminAccount = {
  type t;
  type request = {
adminAccountId: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DisableOrganizationAdminAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableMacie = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DisableMacieCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConfiguration = {
  type t;
  type request = unit
  type response = {
maxAccountLimitReached: option<__boolean>,
  autoEnable: option<__boolean>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DescribeOrganizationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteMember = {
  type t;
  type request = {
id: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DeleteMemberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFindingsFilter = {
  type t;
  type request = {
id: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DeleteFindingsFilterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCustomDataIdentifier = {
  type t;
  type request = {
id: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DeleteCustomDataIdentifierCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AcceptInvitation = {
  type t;
  type request = {
masterAccount: option<__string>,
  invitationId: __string,
  administratorAccountId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "AcceptInvitationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: __listOf__string,
  resourceArn: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TestCustomDataIdentifier = {
  type t;
  type request = {
sampleText: __string,
  regex: __string,
  maximumMatchDistance: option<__integer>,
  keywords: option<__listOf__string>,
  ignoreWords: option<__listOf__string>
}
  type response = {
matchCount: option<__integer>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "TestCustomDataIdentifierCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
  resourceArn: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutFindingsPublicationConfiguration = {
  type t;
  type request = {
securityHubConfiguration: option<securityHubConfiguration>,
  clientToken: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "PutFindingsPublicationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: __string
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMember = {
  type t;
  type request = {
id: __string
}
  type response = {
updatedAt: option<__timestampIso8601>,
  tags: option<tagMap>,
  relationshipStatus: option<relationshipStatus>,
  masterAccountId: option<__string>,
  invitedAt: option<__timestampIso8601>,
  email: option<__string>,
  arn: option<__string>,
  administratorAccountId: option<__string>,
  accountId: option<__string>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetMemberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMasterAccount = {
  type t;
  type request = unit
  type response = {
master: option<invitation>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetMasterAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFindingsPublicationConfiguration = {
  type t;
  type request = unit
  type response = {
securityHubConfiguration: option<securityHubConfiguration>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetFindingsPublicationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCustomDataIdentifier = {
  type t;
  type request = {
id: __string
}
  type response = {
tags: option<tagMap>,
  regex: option<__string>,
  name: option<__string>,
  maximumMatchDistance: option<__integer>,
  keywords: option<__listOf__string>,
  ignoreWords: option<__listOf__string>,
  id: option<__string>,
  description: option<__string>,
  deleted: option<__boolean>,
  createdAt: option<__timestampIso8601>,
  arn: option<__string>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetCustomDataIdentifierCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBucketStatistics = {
  type t;
  type request = {
accountId: option<__string>
}
  type response = {
unclassifiableObjectSizeInBytes: option<objectLevelStatistics>,
  unclassifiableObjectCount: option<objectLevelStatistics>,
  sizeInBytesCompressed: option<__long>,
  sizeInBytes: option<__long>,
  objectCount: option<__long>,
  lastUpdated: option<__timestampIso8601>,
  classifiableSizeInBytes: option<__long>,
  classifiableObjectCount: option<__long>,
  bucketCountBySharedAccessType: option<bucketCountBySharedAccessType>,
  bucketCountByObjectEncryptionRequirement: option<bucketCountPolicyAllowsUnencryptedObjectUploads>,
  bucketCountByEncryptionType: option<bucketCountByEncryptionType>,
  bucketCountByEffectivePermission: option<bucketCountByEffectivePermission>,
  bucketCount: option<__long>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetBucketStatisticsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAdministratorAccount = {
  type t;
  type request = unit
  type response = {
administrator: option<invitation>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetAdministratorAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSampleFindings = {
  type t;
  type request = {
findingTypes: option<__listOfFindingType>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "CreateSampleFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateMember = {
  type t;
  type request = {
tags: option<tagMap>,
  account: accountDetail
}
  type response = {
arn: option<__string>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "CreateMemberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCustomDataIdentifier = {
  type t;
  type request = {
tags: option<tagMap>,
  regex: option<__string>,
  name: option<__string>,
  maximumMatchDistance: option<__integer>,
  keywords: option<__listOf__string>,
  ignoreWords: option<__listOf__string>,
  description: option<__string>,
  clientToken: option<__string>
}
  type response = {
customDataIdentifierId: option<__string>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "CreateCustomDataIdentifierCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutClassificationExportConfiguration = {
  type t;
  type request = {
configuration: classificationExportConfiguration
}
  type response = {
configuration: option<classificationExportConfiguration>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "PutClassificationExportConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOrganizationAdminAccounts = {
  type t;
  type request = {
nextToken: option<__string>,
  maxResults: option<maxResults>
}
  type response = {
nextToken: option<__string>,
  adminAccounts: option<__listOfAdminAccount>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListOrganizationAdminAccountsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListInvitations = {
  type t;
  type request = {
nextToken: option<__string>,
  maxResults: option<maxResults>
}
  type response = {
nextToken: option<__string>,
  invitations: option<__listOfInvitation>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListInvitationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCustomDataIdentifiers = {
  type t;
  type request = {
nextToken: option<__string>,
  maxResults: option<__integer>
}
  type response = {
nextToken: option<__string>,
  items: option<__listOfCustomDataIdentifierSummary>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListCustomDataIdentifiersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetUsageTotals = {
  type t;
  type request = {
timeRange: option<__string>
}
  type response = {
usageTotals: option<__listOfUsageTotal>,
  timeRange: option<timeRange>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetUsageTotalsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetClassificationExportConfiguration = {
  type t;
  type request = unit
  type response = {
configuration: option<classificationExportConfiguration>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetClassificationExportConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteInvitations = {
  type t;
  type request = {
accountIds: __listOf__string
}
  type response = {
unprocessedAccounts: option<__listOfUnprocessedAccount>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DeleteInvitationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeclineInvitations = {
  type t;
  type request = {
accountIds: __listOf__string
}
  type response = {
unprocessedAccounts: option<__listOfUnprocessedAccount>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DeclineInvitationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateInvitations = {
  type t;
  type request = {
message: option<__string>,
  disableEmailNotification: option<__boolean>,
  accountIds: __listOf__string
}
  type response = {
unprocessedAccounts: option<__listOfUnprocessedAccount>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "CreateInvitationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchGetCustomDataIdentifiers = {
  type t;
  type request = {
ids: option<__listOf__string>
}
  type response = {
notFoundIdentifierIds: option<__listOf__string>,
  customDataIdentifiers: option<__listOfBatchGetCustomDataIdentifierSummary>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "BatchGetCustomDataIdentifiersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListMembers = {
  type t;
  type request = {
onlyAssociated: option<__string>,
  nextToken: option<__string>,
  maxResults: option<maxResults>
}
  type response = {
nextToken: option<__string>,
  members: option<__listOfMember>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListMembersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFindingsFilters = {
  type t;
  type request = {
nextToken: option<__string>,
  maxResults: option<maxResults>
}
  type response = {
nextToken: option<__string>,
  findingsFilterListItems: option<__listOfFindingsFilterListItem>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListFindingsFiltersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateFindingsFilter = {
  type t;
  type request = {
position: option<__integer>,
  name: option<__string>,
  id: __string,
  findingCriteria: option<findingCriteria>,
  description: option<__string>,
  action: option<findingsFilterAction>
}
  type response = {
id: option<__string>,
  arn: option<__string>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "UpdateFindingsFilterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFindings = {
  type t;
  type request = {
sortCriteria: option<sortCriteria>,
  nextToken: option<__string>,
  maxResults: option<__integer>,
  findingCriteria: option<findingCriteria>
}
  type response = {
nextToken: option<__string>,
  findingIds: option<__listOf__string>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFindingsFilter = {
  type t;
  type request = {
id: __string
}
  type response = {
tags: option<tagMap>,
  position: option<__integer>,
  name: option<__string>,
  id: option<__string>,
  findingCriteria: option<findingCriteria>,
  description: option<__string>,
  arn: option<__string>,
  action: option<findingsFilterAction>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetFindingsFilterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFindingStatistics = {
  type t;
  type request = {
sortCriteria: option<findingStatisticsSortCriteria>,
  size: option<__integer>,
  groupBy: groupBy,
  findingCriteria: option<findingCriteria>
}
  type response = {
countsByGroup: option<__listOfGroupCount>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetFindingStatisticsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateFindingsFilter = {
  type t;
  type request = {
tags: option<tagMap>,
  position: option<__integer>,
  name: __string,
  findingCriteria: findingCriteria,
  description: option<__string>,
  clientToken: option<__string>,
  action: findingsFilterAction
}
  type response = {
id: option<__string>,
  arn: option<__string>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "CreateFindingsFilterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetUsageStatistics = {
  type t;
  type request = {
timeRange: option<timeRange>,
  sortBy: option<usageStatisticsSortBy>,
  nextToken: option<__string>,
  maxResults: option<__integer>,
  filterBy: option<__listOfUsageStatisticsFilter>
}
  type response = {
timeRange: option<timeRange>,
  records: option<__listOfUsageRecord>,
  nextToken: option<__string>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetUsageStatisticsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBuckets = {
  type t;
  type request = {
sortCriteria: option<bucketSortCriteria>,
  nextToken: option<__string>,
  maxResults: option<__integer>,
  criteria: option<bucketCriteria>
}
  type response = {
nextToken: option<__string>,
  buckets: option<__listOfBucketMetadata>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DescribeBucketsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchResources = {
  type t;
  type request = {
sortCriteria: option<searchResourcesSortCriteria>,
  nextToken: option<__string>,
  maxResults: option<__integer>,
  bucketCriteria: option<searchResourcesBucketCriteria>
}
  type response = {
nextToken: option<__string>,
  matchingResources: option<__listOfMatchingResource>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "SearchResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeClassificationJob = {
  type t;
  type request = {
jobId: __string
}
  type response = {
userPausedDetails: option<userPausedDetails>,
  tags: option<tagMap>,
  statistics: option<statistics>,
  scheduleFrequency: option<jobScheduleFrequency>,
  samplingPercentage: option<__integer>,
  s3JobDefinition: option<s3JobDefinition>,
  name: option<__string>,
  lastRunTime: option<__timestampIso8601>,
  lastRunErrorStatus: option<lastRunErrorStatus>,
  jobType: option<jobType>,
  jobStatus: option<jobStatus>,
  jobId: option<__string>,
  jobArn: option<__string>,
  initialRun: option<__boolean>,
  description: option<__string>,
  customDataIdentifierIds: option<__listOf__string>,
  createdAt: option<__timestampIso8601>,
  clientToken: option<__string>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DescribeClassificationJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateClassificationJob = {
  type t;
  type request = {
tags: option<tagMap>,
  scheduleFrequency: option<jobScheduleFrequency>,
  samplingPercentage: option<__integer>,
  s3JobDefinition: s3JobDefinition,
  name: __string,
  jobType: jobType,
  initialRun: option<__boolean>,
  description: option<__string>,
  customDataIdentifierIds: option<__listOf__string>,
  clientToken: __string
}
  type response = {
jobId: option<__string>,
  jobArn: option<__string>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "CreateClassificationJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListClassificationJobs = {
  type t;
  type request = {
sortCriteria: option<listJobsSortCriteria>,
  nextToken: option<__string>,
  maxResults: option<__integer>,
  filterCriteria: option<listJobsFilterCriteria>
}
  type response = {
nextToken: option<__string>,
  items: option<__listOfJobSummary>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListClassificationJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFindings = {
  type t;
  type request = {
sortCriteria: option<sortCriteria>,
  findingIds: __listOf__string
}
  type response = {
findings: option<__listOfFinding>
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
