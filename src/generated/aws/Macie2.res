type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __timestampIso8601 = Js.Date.t;
type __string = string
type __long = float;
type __integer = int;
type __double = float;
type __boolean = bool;
type userIdentityType = [@as("AWSService") #AWSService | @as("AWSAccount") #AWSAccount | @as("Root") #Root | @as("FederatedUser") #FederatedUser | @as("IAMUser") #IAMUser | @as("AssumedRole") #AssumedRole]
type usageType = [@as("SENSITIVE_DATA_DISCOVERY") #SENSITIVE_DATA_DISCOVERY | @as("DATA_INVENTORY_EVALUATION") #DATA_INVENTORY_EVALUATION]
type usageStatisticsSortKey = [@as("freeTrialStartDate") #freeTrialStartDate | @as("serviceLimitValue") #serviceLimitValue | @as("total") #total | @as("accountId") #accountId]
type usageStatisticsFilterKey = [@as("total") #total | @as("freeTrialStartDate") #freeTrialStartDate | @as("serviceLimit") #serviceLimit | @as("accountId") #accountId]
type usageStatisticsFilterComparator = [@as("CONTAINS") #CONTAINS | @as("NE") #NE | @as("EQ") #EQ | @as("LTE") #LTE | @as("LT") #LT | @as("GTE") #GTE | @as("GT") #GT]
type unit_ = [@as("TERABYTES") #TERABYTES]
type type_ = [@as("aws:kms") #aws_kms | @as("AES256") #AES256 | @as("NONE") #NONE]
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
type maxResults = int;
type macieStatus = [@as("ENABLED") #ENABLED | @as("PAUSED") #PAUSED]
type listJobsSortAttributeName = [@as("jobType") #jobType | @as("name") #name | @as("jobStatus") #jobStatus | @as("createdAt") #createdAt]
type listJobsFilterKey = [@as("name") #name | @as("createdAt") #createdAt | @as("jobStatus") #jobStatus | @as("jobType") #jobType]
type lastRunErrorStatusCode = [@as("ERROR") #ERROR | @as("NONE") #NONE]
type jobType = [@as("SCHEDULED") #SCHEDULED | @as("ONE_TIME") #ONE_TIME]
type jobStatus = [@as("USER_PAUSED") #USER_PAUSED | @as("IDLE") #IDLE | @as("COMPLETE") #COMPLETE | @as("CANCELLED") #CANCELLED | @as("PAUSED") #PAUSED | @as("RUNNING") #RUNNING]
type jobComparator = [@as("STARTS_WITH") #STARTS_WITH | @as("CONTAINS") #CONTAINS | @as("NE") #NE | @as("LTE") #LTE | @as("LT") #LT | @as("GTE") #GTE | @as("GT") #GT | @as("EQ") #EQ]
type isMonitoredByJob = [@as("UNKNOWN") #UNKNOWN | @as("FALSE") #FALSE | @as("TRUE") #TRUE]
type isDefinedInJob = [@as("UNKNOWN") #UNKNOWN | @as("FALSE") #FALSE | @as("TRUE") #TRUE]
type groupBy = [@as("severity.description") #severity_description | @as("classificationDetails.jobId") #classificationDetails_jobId | @as("type") #type | @as("resourcesAffected.s3Bucket.name") #resourcesAffected_s3Bucket_name]
type findingsFilterAction = [@as("NOOP") #NOOP | @as("ARCHIVE") #ARCHIVE]
type findingType = [@as("Policy:IAMUser/S3BlockPublicAccessDisabled") #Policy_IAMUser_S3BlockPublicAccessDisabled | @as("Policy:IAMUser/S3BucketEncryptionDisabled") #Policy_IAMUser_S3BucketEncryptionDisabled | @as("Policy:IAMUser/S3BucketReplicatedExternally") #Policy_IAMUser_S3BucketReplicatedExternally | @as("Policy:IAMUser/S3BucketSharedExternally") #Policy_IAMUser_S3BucketSharedExternally | @as("Policy:IAMUser/S3BucketPublic") #Policy_IAMUser_S3BucketPublic | @as("SensitiveData:S3Object/CustomIdentifier") #SensitiveData_S3Object_CustomIdentifier | @as("SensitiveData:S3Object/Credentials") #SensitiveData_S3Object_Credentials | @as("SensitiveData:S3Object/Personal") #SensitiveData_S3Object_Personal | @as("SensitiveData:S3Object/Financial") #SensitiveData_S3Object_Financial | @as("SensitiveData:S3Object/Multiple") #SensitiveData_S3Object_Multiple]
type findingStatisticsSortAttributeName = [@as("count") #count | @as("groupKey") #groupKey]
type findingPublishingFrequency = [@as("SIX_HOURS") #SIX_HOURS | @as("ONE_HOUR") #ONE_HOUR | @as("FIFTEEN_MINUTES") #FIFTEEN_MINUTES]
type findingCategory = [@as("POLICY") #POLICY | @as("CLASSIFICATION") #CLASSIFICATION]
type findingActionType = [@as("AWS_API_CALL") #AWS_API_CALL]
type errorCode = [@as("InternalError") #InternalError | @as("ClientError") #ClientError]
type encryptionType = [@as("UNKNOWN") #UNKNOWN | @as("aws:kms") #aws_kms | @as("AES256") #AES256 | @as("NONE") #NONE]
type effectivePermission = [@as("UNKNOWN") #UNKNOWN | @as("NOT_PUBLIC") #NOT_PUBLIC | @as("PUBLIC") #PUBLIC]
type dayOfWeek = [@as("SATURDAY") #SATURDAY | @as("FRIDAY") #FRIDAY | @as("THURSDAY") #THURSDAY | @as("WEDNESDAY") #WEDNESDAY | @as("TUESDAY") #TUESDAY | @as("MONDAY") #MONDAY | @as("SUNDAY") #SUNDAY]
type dailySchedule = unit
type currency = [@as("USD") #USD]
type allowsUnencryptedObjectUploads = [@as("UNKNOWN") #UNKNOWN | @as("FALSE") #FALSE | @as("TRUE") #TRUE]
type adminStatus = [@as("DISABLING_IN_PROGRESS") #DISABLING_IN_PROGRESS | @as("ENABLED") #ENABLED]
type __listOf__string = array<__string>
type __listOfFindingType = array<findingType>
type weeklySchedule = {
@as("dayOfWeek") dayOfWeek: dayOfWeek
}
type userPausedDetails = {
@as("jobPausedAt") jobPausedAt: __timestampIso8601,
@as("jobImminentExpirationHealthEventArn") jobImminentExpirationHealthEventArn: __string,
@as("jobExpiresAt") jobExpiresAt: __timestampIso8601
}
type userIdentityRoot = {
@as("principalId") principalId: __string,
@as("arn") arn: __string,
@as("accountId") accountId: __string
}
type usageTotal = {
@as("type") type_: usageType,
@as("estimatedCost") estimatedCost: __string,
@as("currency") currency: currency
}
type usageStatisticsSortBy = {
@as("orderBy") orderBy: orderBy,
@as("key") key: usageStatisticsSortKey
}
type unprocessedAccount = {
@as("errorMessage") errorMessage: __string,
@as("errorCode") errorCode: errorCode,
@as("accountId") accountId: __string
}
type tagValuePair = {
@as("value") value: __string,
@as("key") key: __string
}
type tagMap = Js.Dict.t< __string>
type tagCriterionPairForJob = {
@as("value") value: __string,
@as("key") key: __string
}
type statistics = {
@as("numberOfRuns") numberOfRuns: __double,
@as("approximateNumberOfObjectsToProcess") approximateNumberOfObjectsToProcess: __double
}
type sortCriteria = {
@as("orderBy") orderBy: orderBy,
@as("attributeName") attributeName: __string
}
type severity = {
@as("score") score: __long,
@as("description") description: severityDescription
}
type sessionIssuer = {
@as("userName") userName: __string,
@as("type") type_: __string,
@as("principalId") principalId: __string,
@as("arn") arn: __string,
@as("accountId") accountId: __string
}
type sessionContextAttributes = {
@as("mfaAuthenticated") mfaAuthenticated: __boolean,
@as("creationDate") creationDate: __timestampIso8601
}
type serviceLimit = {
@as("value") value: __long,
@as("unit") unit: unit_,
@as("isServiceLimited") isServiceLimited: __boolean
}
type serverSideEncryption = {
@as("kmsMasterKeyId") kmsMasterKeyId: __string,
@as("encryptionType") encryptionType: encryptionType
}
type securityHubConfiguration = {
@as("publishPolicyFindings") publishPolicyFindings: option<__boolean>,
@as("publishClassificationFindings") publishClassificationFindings: option<__boolean>
}
type searchResourcesTagCriterionPair = {
@as("value") value: __string,
@as("key") key: __string
}
type searchResourcesSortCriteria = {
@as("orderBy") orderBy: orderBy,
@as("attributeName") attributeName: searchResourcesSortAttributeName
}
type s3Destination = {
@as("kmsKeyArn") kmsKeyArn: option<__string>,
@as("keyPrefix") keyPrefix: __string,
@as("bucketName") bucketName: option<__string>
}
type s3BucketOwner = {
@as("id") id: __string,
@as("displayName") displayName: __string
}
type record = {
@as("recordIndex") recordIndex: __long,
@as("jsonPath") jsonPath: __string
}
type range = {
@as("startColumn") startColumn: __long,
@as("start") start: __long,
@as("end") end: __long
}
type objectLevelStatistics = {
@as("total") total: __long,
@as("storageClass") storageClass: __long,
@as("fileType") fileType: __long
}
type objectCountByEncryptionType = {
@as("unknown") unknown: __long,
@as("unencrypted") unencrypted: __long,
@as("s3Managed") s3Managed: __long,
@as("kmsManaged") kmsManaged: __long,
@as("customerManaged") customerManaged: __long
}
type monthlySchedule = {
@as("dayOfMonth") dayOfMonth: __integer
}
type listJobsSortCriteria = {
@as("orderBy") orderBy: orderBy,
@as("attributeName") attributeName: listJobsSortAttributeName
}
type lastRunErrorStatus = {
@as("code") code: lastRunErrorStatusCode
}
type keyValuePair = {
@as("value") value: __string,
@as("key") key: __string
}
type jobDetails = {
@as("lastJobRunTime") lastJobRunTime: __timestampIso8601,
@as("lastJobId") lastJobId: __string,
@as("isMonitoredByJob") isMonitoredByJob: isMonitoredByJob,
@as("isDefinedInJob") isDefinedInJob: isDefinedInJob
}
type ipOwner = {
@as("org") org: __string,
@as("isp") isp: __string,
@as("asnOrg") asnOrg: __string,
@as("asn") asn: __string
}
type ipGeoLocation = {
@as("lon") lon: __double,
@as("lat") lat: __double
}
type ipCountry = {
@as("name") name: __string,
@as("code") code: __string
}
type ipCity = {
@as("name") name: __string
}
type invitation = {
@as("relationshipStatus") relationshipStatus: relationshipStatus,
@as("invitedAt") invitedAt: __timestampIso8601,
@as("invitationId") invitationId: __string,
@as("accountId") accountId: __string
}
type iamUser = {
@as("userName") userName: __string,
@as("principalId") principalId: __string,
@as("arn") arn: __string,
@as("accountId") accountId: __string
}
type groupCount = {
@as("groupKey") groupKey: __string,
@as("count") count: __long
}
type findingStatisticsSortCriteria = {
@as("orderBy") orderBy: orderBy,
@as("attributeName") attributeName: findingStatisticsSortAttributeName
}
type domainDetails = {
@as("domainName") domainName: __string
}
type customDataIdentifierSummary = {
@as("name") name: __string,
@as("id") id: __string,
@as("description") description: __string,
@as("createdAt") createdAt: __timestampIso8601,
@as("arn") arn: __string
}
type classificationResultStatus = {
@as("reason") reason: __string,
@as("code") code: __string
}
type cell = {
@as("row") row: __long,
@as("columnName") columnName: __string,
@as("column") column: __long,
@as("cellReference") cellReference: __string
}
type bucketSortCriteria = {
@as("orderBy") orderBy: orderBy,
@as("attributeName") attributeName: __string
}
type bucketServerSideEncryption = {
@as("type") type_: type_,
@as("kmsMasterKeyId") kmsMasterKeyId: __string
}
type bucketPolicy = {
@as("allowsPublicWriteAccess") allowsPublicWriteAccess: __boolean,
@as("allowsPublicReadAccess") allowsPublicReadAccess: __boolean
}
type bucketCountPolicyAllowsUnencryptedObjectUploads = {
@as("unknown") unknown: __long,
@as("deniesUnencryptedObjectUploads") deniesUnencryptedObjectUploads: __long,
@as("allowsUnencryptedObjectUploads") allowsUnencryptedObjectUploads: __long
}
type bucketCountBySharedAccessType = {
@as("unknown") unknown: __long,
@as("notShared") notShared: __long,
@as("internal") internal: __long,
@as("external") external: __long
}
type bucketCountByEncryptionType = {
@as("unknown") unknown: __long,
@as("unencrypted") unencrypted: __long,
@as("s3Managed") s3Managed: __long,
@as("kmsManaged") kmsManaged: __long
}
type bucketCountByEffectivePermission = {
@as("unknown") unknown: __long,
@as("publiclyWritable") publiclyWritable: __long,
@as("publiclyReadable") publiclyReadable: __long,
@as("publiclyAccessible") publiclyAccessible: __long
}
type blockPublicAccess = {
@as("restrictPublicBuckets") restrictPublicBuckets: __boolean,
@as("ignorePublicAcls") ignorePublicAcls: __boolean,
@as("blockPublicPolicy") blockPublicPolicy: __boolean,
@as("blockPublicAcls") blockPublicAcls: __boolean
}
type batchGetCustomDataIdentifierSummary = {
@as("name") name: __string,
@as("id") id: __string,
@as("description") description: __string,
@as("deleted") deleted: __boolean,
@as("createdAt") createdAt: __timestampIso8601,
@as("arn") arn: __string
}
type awsService = {
@as("invokedBy") invokedBy: __string
}
type awsAccount = {
@as("principalId") principalId: __string,
@as("accountId") accountId: __string
}
type apiCallDetails = {
@as("lastSeen") lastSeen: __timestampIso8601,
@as("firstSeen") firstSeen: __timestampIso8601,
@as("apiServiceName") apiServiceName: __string,
@as("api") api: __string
}
type adminAccount = {
@as("status") status: adminStatus,
@as("accountId") accountId: __string
}
type accountDetail = {
@as("email") email: option<__string>,
@as("accountId") accountId: option<__string>
}
type accessControlList = {
@as("allowsPublicWriteAccess") allowsPublicWriteAccess: __boolean,
@as("allowsPublicReadAccess") allowsPublicReadAccess: __boolean
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
@as("values") values: __listOf__string,
@as("key") key: usageStatisticsFilterKey,
@as("comparator") comparator: usageStatisticsFilterComparator
}
type usageByAccount = {
@as("type") type_: usageType,
@as("serviceLimit") serviceLimit: serviceLimit,
@as("estimatedCost") estimatedCost: __string,
@as("currency") currency: currency
}
type simpleScopeTerm = {
@as("values") values: __listOf__string,
@as("key") key: scopeFilterKey,
@as("comparator") comparator: jobComparator
}
type simpleCriterionForJob = {
@as("values") values: __listOf__string,
@as("key") key: simpleCriterionKeyForJob,
@as("comparator") comparator: jobComparator
}
type sessionContext = {
@as("sessionIssuer") sessionIssuer: sessionIssuer,
@as("attributes") attributes: sessionContextAttributes
}
type searchResourcesSimpleCriterion = {
@as("values") values: __listOf__string,
@as("key") key: searchResourcesSimpleCriterionKey,
@as("comparator") comparator: searchResourcesComparator
}
type s3BucketDefinitionForJob = {
@as("buckets") buckets: option<__listOf__string>,
@as("accountId") accountId: option<__string>
}
type replicationDetails = {
@as("replicationAccounts") replicationAccounts: __listOf__string,
@as("replicatedExternally") replicatedExternally: __boolean,
@as("replicated") replicated: __boolean
}
type records = array<record>
type ranges = array<range>
type page = {
@as("pageNumber") pageNumber: __long,
@as("offsetRange") offsetRange: range,
@as("lineRange") lineRange: range
}
type member = {
@as("updatedAt") updatedAt: __timestampIso8601,
@as("tags") tags: tagMap,
@as("relationshipStatus") relationshipStatus: relationshipStatus,
@as("masterAccountId") masterAccountId: __string,
@as("invitedAt") invitedAt: __timestampIso8601,
@as("email") email: __string,
@as("arn") arn: __string,
@as("administratorAccountId") administratorAccountId: __string,
@as("accountId") accountId: __string
}
type matchingBucket = {
@as("unclassifiableObjectSizeInBytes") unclassifiableObjectSizeInBytes: objectLevelStatistics,
@as("unclassifiableObjectCount") unclassifiableObjectCount: objectLevelStatistics,
@as("sizeInBytesCompressed") sizeInBytesCompressed: __long,
@as("sizeInBytes") sizeInBytes: __long,
@as("objectCountByEncryptionType") objectCountByEncryptionType: objectCountByEncryptionType,
@as("objectCount") objectCount: __long,
@as("jobDetails") jobDetails: jobDetails,
@as("classifiableSizeInBytes") classifiableSizeInBytes: __long,
@as("classifiableObjectCount") classifiableObjectCount: __long,
@as("bucketName") bucketName: __string,
@as("accountId") accountId: __string
}
type listJobsFilterTerm = {
@as("values") values: __listOf__string,
@as("key") key: listJobsFilterKey,
@as("comparator") comparator: jobComparator
}
type keyValuePairList = array<keyValuePair>
type jobScheduleFrequency = {
@as("weeklySchedule") weeklySchedule: weeklySchedule,
@as("monthlySchedule") monthlySchedule: monthlySchedule,
@as("dailySchedule") dailySchedule: dailySchedule
}
type ipAddressDetails = {
@as("ipOwner") ipOwner: ipOwner,
@as("ipGeoLocation") ipGeoLocation: ipGeoLocation,
@as("ipCountry") ipCountry: ipCountry,
@as("ipCity") ipCity: ipCity,
@as("ipAddressV4") ipAddressV4: __string
}
type findingsFilterListItem = {
@as("tags") tags: tagMap,
@as("name") name: __string,
@as("id") id: __string,
@as("arn") arn: __string,
@as("action") action: findingsFilterAction
}
type findingAction = {
@as("apiCallDetails") apiCallDetails: apiCallDetails,
@as("actionType") actionType: findingActionType
}
type criterionAdditionalProperties = {
@as("neq") neq: __listOf__string,
@as("lte") lte: __long,
@as("lt") lt: __long,
@as("gte") gte: __long,
@as("gt") gt: __long,
@as("eqExactMatch") eqExactMatch: __listOf__string,
@as("eq") eq: __listOf__string
}
type classificationExportConfiguration = {
@as("s3Destination") s3Destination: s3Destination
}
type cells = array<cell>
type bucketLevelPermissions = {
@as("bucketPolicy") bucketPolicy: bucketPolicy,
@as("blockPublicAccess") blockPublicAccess: blockPublicAccess,
@as("accessControlList") accessControlList: accessControlList
}
type bucketCriteriaAdditionalProperties = {
@as("prefix") prefix: __string,
@as("neq") neq: __listOf__string,
@as("lte") lte: __long,
@as("lt") lt: __long,
@as("gte") gte: __long,
@as("gt") gt: __long,
@as("eq") eq: __listOf__string
}
type accountLevelPermissions = {
@as("blockPublicAccess") blockPublicAccess: blockPublicAccess
}
type __listOfUsageStatisticsFilter = array<usageStatisticsFilter>
type __listOfUsageByAccount = array<usageByAccount>
type __listOfS3BucketDefinitionForJob = array<s3BucketDefinitionForJob>
type __listOfMember = array<member>
type __listOfListJobsFilterTerm = array<listJobsFilterTerm>
type __listOfFindingsFilterListItem = array<findingsFilterListItem>
type tagScopeTerm = {
@as("target") target: tagTarget,
@as("tagValues") tagValues: __listOfTagValuePair,
@as("key") key: __string,
@as("comparator") comparator: jobComparator
}
type tagCriterionForJob = {
@as("tagValues") tagValues: __listOfTagCriterionPairForJob,
@as("comparator") comparator: jobComparator
}
type searchResourcesTagCriterion = {
@as("tagValues") tagValues: __listOfSearchResourcesTagCriterionPair,
@as("comparator") comparator: searchResourcesComparator
}
type s3Object = {
@as("versionId") versionId: __string,
@as("tags") tags: keyValuePairList,
@as("storageClass") storageClass: storageClass,
@as("size") size: __long,
@as("serverSideEncryption") serverSideEncryption: serverSideEncryption,
@as("publicAccess") publicAccess: __boolean,
@as("path") path: __string,
@as("lastModified") lastModified: __timestampIso8601,
@as("key") key: __string,
@as("extension") extension: __string,
@as("eTag") eTag: __string,
@as("bucketArn") bucketArn: __string
}
type pages = array<page>
type matchingResource = {
@as("matchingBucket") matchingBucket: matchingBucket
}
type federatedUser = {
@as("sessionContext") sessionContext: sessionContext,
@as("principalId") principalId: __string,
@as("arn") arn: __string,
@as("accountId") accountId: __string,
@as("accessKeyId") accessKeyId: __string
}
type criterion = Js.Dict.t< criterionAdditionalProperties>
type bucketPermissionConfiguration = {
@as("bucketLevelPermissions") bucketLevelPermissions: bucketLevelPermissions,
@as("accountLevelPermissions") accountLevelPermissions: accountLevelPermissions
}
type bucketCriteria = Js.Dict.t< bucketCriteriaAdditionalProperties>
type assumedRole = {
@as("sessionContext") sessionContext: sessionContext,
@as("principalId") principalId: __string,
@as("arn") arn: __string,
@as("accountId") accountId: __string,
@as("accessKeyId") accessKeyId: __string
}
type __listOfMatchingResource = array<matchingResource>
type userIdentity = {
@as("type") type_: userIdentityType,
@as("root") root: userIdentityRoot,
@as("iamUser") iamUser: iamUser,
@as("federatedUser") federatedUser: federatedUser,
@as("awsService") awsService: awsService,
@as("awsAccount") awsAccount: awsAccount,
@as("assumedRole") assumedRole: assumedRole
}
type usageRecord = {
@as("usage") usage: __listOfUsageByAccount,
@as("freeTrialStartDate") freeTrialStartDate: __timestampIso8601,
@as("accountId") accountId: __string
}
type searchResourcesCriteria = {
@as("tagCriterion") tagCriterion: searchResourcesTagCriterion,
@as("simpleCriterion") simpleCriterion: searchResourcesSimpleCriterion
}
type occurrences = {
@as("records") records: records,
@as("pages") pages: pages,
@as("offsetRanges") offsetRanges: ranges,
@as("lineRanges") lineRanges: ranges,
@as("cells") cells: cells
}
type listJobsFilterCriteria = {
@as("includes") includes: __listOfListJobsFilterTerm,
@as("excludes") excludes: __listOfListJobsFilterTerm
}
type jobScopeTerm = {
@as("tagScopeTerm") tagScopeTerm: tagScopeTerm,
@as("simpleScopeTerm") simpleScopeTerm: simpleScopeTerm
}
type findingCriteria = {
@as("criterion") criterion: criterion
}
type criteriaForJob = {
@as("tagCriterion") tagCriterion: tagCriterionForJob,
@as("simpleCriterion") simpleCriterion: simpleCriterionForJob
}
type bucketPublicAccess = {
@as("permissionConfiguration") permissionConfiguration: bucketPermissionConfiguration,
@as("effectivePermission") effectivePermission: effectivePermission
}
type __listOfUsageRecord = array<usageRecord>
type __listOfSearchResourcesCriteria = array<searchResourcesCriteria>
type __listOfJobScopeTerm = array<jobScopeTerm>
type __listOfCriteriaForJob = array<criteriaForJob>
type s3Bucket = {
@as("tags") tags: keyValuePairList,
@as("publicAccess") publicAccess: bucketPublicAccess,
@as("owner") owner: s3BucketOwner,
@as("name") name: __string,
@as("defaultServerSideEncryption") defaultServerSideEncryption: serverSideEncryption,
@as("createdAt") createdAt: __timestampIso8601,
@as("arn") arn: __string,
@as("allowsUnencryptedObjectUploads") allowsUnencryptedObjectUploads: allowsUnencryptedObjectUploads
}
type findingActor = {
@as("userIdentity") userIdentity: userIdentity,
@as("ipAddressDetails") ipAddressDetails: ipAddressDetails,
@as("domainDetails") domainDetails: domainDetails
}
type defaultDetection = {
@as("type") type_: __string,
@as("occurrences") occurrences: occurrences,
@as("count") count: __long
}
type customDetection = {
@as("occurrences") occurrences: occurrences,
@as("name") name: __string,
@as("count") count: __long,
@as("arn") arn: __string
}
type bucketMetadata = {
@as("versioning") versioning: __boolean,
@as("unclassifiableObjectSizeInBytes") unclassifiableObjectSizeInBytes: objectLevelStatistics,
@as("unclassifiableObjectCount") unclassifiableObjectCount: objectLevelStatistics,
@as("tags") tags: __listOfKeyValuePair,
@as("sizeInBytesCompressed") sizeInBytesCompressed: __long,
@as("sizeInBytes") sizeInBytes: __long,
@as("sharedAccess") sharedAccess: sharedAccess,
@as("serverSideEncryption") serverSideEncryption: bucketServerSideEncryption,
@as("replicationDetails") replicationDetails: replicationDetails,
@as("region") region: __string,
@as("publicAccess") publicAccess: bucketPublicAccess,
@as("objectCountByEncryptionType") objectCountByEncryptionType: objectCountByEncryptionType,
@as("objectCount") objectCount: __long,
@as("lastUpdated") lastUpdated: __timestampIso8601,
@as("jobDetails") jobDetails: jobDetails,
@as("classifiableSizeInBytes") classifiableSizeInBytes: __long,
@as("classifiableObjectCount") classifiableObjectCount: __long,
@as("bucketName") bucketName: __string,
@as("bucketCreatedAt") bucketCreatedAt: __timestampIso8601,
@as("bucketArn") bucketArn: __string,
@as("allowsUnencryptedObjectUploads") allowsUnencryptedObjectUploads: allowsUnencryptedObjectUploads,
@as("accountId") accountId: __string
}
type __listOfBucketMetadata = array<bucketMetadata>
type searchResourcesCriteriaBlock = {
@as("and") and: __listOfSearchResourcesCriteria
}
type resourcesAffected = {
@as("s3Object") s3Object: s3Object,
@as("s3Bucket") s3Bucket: s3Bucket
}
type policyDetails = {
@as("actor") actor: findingActor,
@as("action") action: findingAction
}
type jobScopingBlock = {
@as("and") and: __listOfJobScopeTerm
}
type defaultDetections = array<defaultDetection>
type customDetections = array<customDetection>
type criteriaBlockForJob = {
@as("and") and: __listOfCriteriaForJob
}
type sensitiveDataItem = {
@as("totalCount") totalCount: __long,
@as("detections") detections: defaultDetections,
@as("category") category: sensitiveDataItemCategory
}
type searchResourcesBucketCriteria = {
@as("includes") includes: searchResourcesCriteriaBlock,
@as("excludes") excludes: searchResourcesCriteriaBlock
}
type scoping = {
@as("includes") includes: jobScopingBlock,
@as("excludes") excludes: jobScopingBlock
}
type s3BucketCriteriaForJob = {
@as("includes") includes: criteriaBlockForJob,
@as("excludes") excludes: criteriaBlockForJob
}
type customDataIdentifiers = {
@as("totalCount") totalCount: __long,
@as("detections") detections: customDetections
}
type sensitiveData = array<sensitiveDataItem>
type s3JobDefinition = {
@as("bucketCriteria") bucketCriteria: s3BucketCriteriaForJob,
@as("scoping") scoping: scoping,
@as("bucketDefinitions") bucketDefinitions: __listOfS3BucketDefinitionForJob
}
type jobSummary = {
@as("bucketCriteria") bucketCriteria: s3BucketCriteriaForJob,
@as("userPausedDetails") userPausedDetails: userPausedDetails,
@as("name") name: __string,
@as("lastRunErrorStatus") lastRunErrorStatus: lastRunErrorStatus,
@as("jobType") jobType: jobType,
@as("jobStatus") jobStatus: jobStatus,
@as("jobId") jobId: __string,
@as("createdAt") createdAt: __timestampIso8601,
@as("bucketDefinitions") bucketDefinitions: __listOfS3BucketDefinitionForJob
}
type __listOfJobSummary = array<jobSummary>
type classificationResult = {
@as("status") status: classificationResultStatus,
@as("sizeClassified") sizeClassified: __long,
@as("sensitiveData") sensitiveData: sensitiveData,
@as("mimeType") mimeType: __string,
@as("customDataIdentifiers") customDataIdentifiers: customDataIdentifiers,
@as("additionalOccurrences") additionalOccurrences: __boolean
}
type classificationDetails = {
@as("result") result: classificationResult,
@as("jobId") jobId: __string,
@as("jobArn") jobArn: __string,
@as("detailedResultsLocation") detailedResultsLocation: __string
}
type finding = {
@as("updatedAt") updatedAt: __timestampIso8601,
@as("type") type_: findingType,
@as("title") title: __string,
@as("severity") severity: severity,
@as("schemaVersion") schemaVersion: __string,
@as("sample") sample: __boolean,
@as("resourcesAffected") resourcesAffected: resourcesAffected,
@as("region") region: __string,
@as("policyDetails") policyDetails: policyDetails,
@as("partition") partition: __string,
@as("id") id: __string,
@as("description") description: __string,
@as("createdAt") createdAt: __timestampIso8601,
@as("count") count: __long,
@as("classificationDetails") classificationDetails: classificationDetails,
@as("category") category: findingCategory,
@as("archived") archived: __boolean,
@as("accountId") accountId: __string
}
type __listOfFinding = array<finding>
type clientType;
@module("@aws-sdk/client-macie2") @new external createClient: unit => clientType = "Macie2Client";
module UpdateOrganizationConfiguration = {
  type t;
  type request = {
@as("autoEnable") autoEnable: option<__boolean>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "UpdateOrganizationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMemberSession = {
  type t;
  type request = {
@as("status") status: option<macieStatus>,
@as("id") id: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "UpdateMemberSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMacieSession = {
  type t;
  type request = {
@as("status") status: macieStatus,
@as("findingPublishingFrequency") findingPublishingFrequency: findingPublishingFrequency
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "UpdateMacieSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateClassificationJob = {
  type t;
  type request = {
@as("jobStatus") jobStatus: option<jobStatus>,
@as("jobId") jobId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "UpdateClassificationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMacieSession = {
  type t;
  type request = unit
  type response = {
@as("updatedAt") updatedAt: __timestampIso8601,
@as("status") status: macieStatus,
@as("serviceRole") serviceRole: __string,
@as("findingPublishingFrequency") findingPublishingFrequency: findingPublishingFrequency,
@as("createdAt") createdAt: __timestampIso8601
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetMacieSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInvitationsCount = {
  type t;
  type request = unit
  type response = {
@as("invitationsCount") invitationsCount: __long
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetInvitationsCountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableOrganizationAdminAccount = {
  type t;
  type request = {
@as("clientToken") clientToken: __string,
@as("adminAccountId") adminAccountId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "EnableOrganizationAdminAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableMacie = {
  type t;
  type request = {
@as("status") status: macieStatus,
@as("findingPublishingFrequency") findingPublishingFrequency: findingPublishingFrequency,
@as("clientToken") clientToken: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "EnableMacieCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateMember = {
  type t;
  type request = {
@as("id") id: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DisassociateMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateFromMasterAccount = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DisassociateFromMasterAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateFromAdministratorAccount = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DisassociateFromAdministratorAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableOrganizationAdminAccount = {
  type t;
  type request = {
@as("adminAccountId") adminAccountId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DisableOrganizationAdminAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableMacie = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DisableMacieCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConfiguration = {
  type t;
  type request = unit
  type response = {
@as("maxAccountLimitReached") maxAccountLimitReached: __boolean,
@as("autoEnable") autoEnable: __boolean
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DescribeOrganizationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMember = {
  type t;
  type request = {
@as("id") id: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DeleteMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFindingsFilter = {
  type t;
  type request = {
@as("id") id: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DeleteFindingsFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCustomDataIdentifier = {
  type t;
  type request = {
@as("id") id: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DeleteCustomDataIdentifierCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptInvitation = {
  type t;
  type request = {
@as("masterAccount") masterAccount: __string,
@as("invitationId") invitationId: option<__string>,
@as("administratorAccountId") administratorAccountId: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "AcceptInvitationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<__listOf__string>,
@as("resourceArn") resourceArn: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestCustomDataIdentifier = {
  type t;
  type request = {
@as("sampleText") sampleText: option<__string>,
@as("regex") regex: option<__string>,
@as("maximumMatchDistance") maximumMatchDistance: __integer,
@as("keywords") keywords: __listOf__string,
@as("ignoreWords") ignoreWords: __listOf__string
}
  type response = {
@as("matchCount") matchCount: __integer
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "TestCustomDataIdentifierCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutFindingsPublicationConfiguration = {
  type t;
  type request = {
@as("securityHubConfiguration") securityHubConfiguration: securityHubConfiguration,
@as("clientToken") clientToken: __string
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "PutFindingsPublicationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<__string>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMember = {
  type t;
  type request = {
@as("id") id: option<__string>
}
  type response = {
@as("updatedAt") updatedAt: __timestampIso8601,
@as("tags") tags: tagMap,
@as("relationshipStatus") relationshipStatus: relationshipStatus,
@as("masterAccountId") masterAccountId: __string,
@as("invitedAt") invitedAt: __timestampIso8601,
@as("email") email: __string,
@as("arn") arn: __string,
@as("administratorAccountId") administratorAccountId: __string,
@as("accountId") accountId: __string
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMasterAccount = {
  type t;
  type request = unit
  type response = {
@as("master") master: invitation
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetMasterAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFindingsPublicationConfiguration = {
  type t;
  type request = unit
  type response = {
@as("securityHubConfiguration") securityHubConfiguration: securityHubConfiguration
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetFindingsPublicationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCustomDataIdentifier = {
  type t;
  type request = {
@as("id") id: option<__string>
}
  type response = {
@as("tags") tags: tagMap,
@as("regex") regex: __string,
@as("name") name: __string,
@as("maximumMatchDistance") maximumMatchDistance: __integer,
@as("keywords") keywords: __listOf__string,
@as("ignoreWords") ignoreWords: __listOf__string,
@as("id") id: __string,
@as("description") description: __string,
@as("deleted") deleted: __boolean,
@as("createdAt") createdAt: __timestampIso8601,
@as("arn") arn: __string
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetCustomDataIdentifierCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBucketStatistics = {
  type t;
  type request = {
@as("accountId") accountId: __string
}
  type response = {
@as("unclassifiableObjectSizeInBytes") unclassifiableObjectSizeInBytes: objectLevelStatistics,
@as("unclassifiableObjectCount") unclassifiableObjectCount: objectLevelStatistics,
@as("sizeInBytesCompressed") sizeInBytesCompressed: __long,
@as("sizeInBytes") sizeInBytes: __long,
@as("objectCount") objectCount: __long,
@as("lastUpdated") lastUpdated: __timestampIso8601,
@as("classifiableSizeInBytes") classifiableSizeInBytes: __long,
@as("classifiableObjectCount") classifiableObjectCount: __long,
@as("bucketCountBySharedAccessType") bucketCountBySharedAccessType: bucketCountBySharedAccessType,
@as("bucketCountByObjectEncryptionRequirement") bucketCountByObjectEncryptionRequirement: bucketCountPolicyAllowsUnencryptedObjectUploads,
@as("bucketCountByEncryptionType") bucketCountByEncryptionType: bucketCountByEncryptionType,
@as("bucketCountByEffectivePermission") bucketCountByEffectivePermission: bucketCountByEffectivePermission,
@as("bucketCount") bucketCount: __long
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetBucketStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAdministratorAccount = {
  type t;
  type request = unit
  type response = {
@as("administrator") administrator: invitation
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetAdministratorAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSampleFindings = {
  type t;
  type request = {
@as("findingTypes") findingTypes: __listOfFindingType
}
  type response = unit
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "CreateSampleFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMember = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("account") account: option<accountDetail>
}
  type response = {
@as("arn") arn: __string
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "CreateMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCustomDataIdentifier = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("regex") regex: __string,
@as("name") name: __string,
@as("maximumMatchDistance") maximumMatchDistance: __integer,
@as("keywords") keywords: __listOf__string,
@as("ignoreWords") ignoreWords: __listOf__string,
@as("description") description: __string,
@as("clientToken") clientToken: __string
}
  type response = {
@as("customDataIdentifierId") customDataIdentifierId: __string
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "CreateCustomDataIdentifierCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutClassificationExportConfiguration = {
  type t;
  type request = {
@as("configuration") configuration: option<classificationExportConfiguration>
}
  type response = {
@as("configuration") configuration: classificationExportConfiguration
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "PutClassificationExportConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOrganizationAdminAccounts = {
  type t;
  type request = {
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: __string,
@as("adminAccounts") adminAccounts: __listOfAdminAccount
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListOrganizationAdminAccountsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInvitations = {
  type t;
  type request = {
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: __string,
@as("invitations") invitations: __listOfInvitation
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCustomDataIdentifiers = {
  type t;
  type request = {
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: __integer
}
  type response = {
@as("nextToken") nextToken: __string,
@as("items") items: __listOfCustomDataIdentifierSummary
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListCustomDataIdentifiersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUsageTotals = {
  type t;
  type request = {
@as("timeRange") timeRange: __string
}
  type response = {
@as("usageTotals") usageTotals: __listOfUsageTotal,
@as("timeRange") timeRange: timeRange
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetUsageTotalsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetClassificationExportConfiguration = {
  type t;
  type request = unit
  type response = {
@as("configuration") configuration: classificationExportConfiguration
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetClassificationExportConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInvitations = {
  type t;
  type request = {
@as("accountIds") accountIds: option<__listOf__string>
}
  type response = {
@as("unprocessedAccounts") unprocessedAccounts: __listOfUnprocessedAccount
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DeleteInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeclineInvitations = {
  type t;
  type request = {
@as("accountIds") accountIds: option<__listOf__string>
}
  type response = {
@as("unprocessedAccounts") unprocessedAccounts: __listOfUnprocessedAccount
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DeclineInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInvitations = {
  type t;
  type request = {
@as("message") message: __string,
@as("disableEmailNotification") disableEmailNotification: __boolean,
@as("accountIds") accountIds: option<__listOf__string>
}
  type response = {
@as("unprocessedAccounts") unprocessedAccounts: __listOfUnprocessedAccount
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "CreateInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetCustomDataIdentifiers = {
  type t;
  type request = {
@as("ids") ids: __listOf__string
}
  type response = {
@as("notFoundIdentifierIds") notFoundIdentifierIds: __listOf__string,
@as("customDataIdentifiers") customDataIdentifiers: __listOfBatchGetCustomDataIdentifierSummary
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "BatchGetCustomDataIdentifiersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMembers = {
  type t;
  type request = {
@as("onlyAssociated") onlyAssociated: __string,
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: __string,
@as("members") members: __listOfMember
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFindingsFilters = {
  type t;
  type request = {
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: __string,
@as("findingsFilterListItems") findingsFilterListItems: __listOfFindingsFilterListItem
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListFindingsFiltersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFindingsFilter = {
  type t;
  type request = {
@as("position") position: __integer,
@as("name") name: __string,
@as("id") id: option<__string>,
@as("findingCriteria") findingCriteria: findingCriteria,
@as("description") description: __string,
@as("action") action: findingsFilterAction
}
  type response = {
@as("id") id: __string,
@as("arn") arn: __string
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "UpdateFindingsFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFindings = {
  type t;
  type request = {
@as("sortCriteria") sortCriteria: sortCriteria,
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: __integer,
@as("findingCriteria") findingCriteria: findingCriteria
}
  type response = {
@as("nextToken") nextToken: __string,
@as("findingIds") findingIds: __listOf__string
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFindingsFilter = {
  type t;
  type request = {
@as("id") id: option<__string>
}
  type response = {
@as("tags") tags: tagMap,
@as("position") position: __integer,
@as("name") name: __string,
@as("id") id: __string,
@as("findingCriteria") findingCriteria: findingCriteria,
@as("description") description: __string,
@as("arn") arn: __string,
@as("action") action: findingsFilterAction
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetFindingsFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFindingStatistics = {
  type t;
  type request = {
@as("sortCriteria") sortCriteria: findingStatisticsSortCriteria,
@as("size") size: __integer,
@as("groupBy") groupBy: option<groupBy>,
@as("findingCriteria") findingCriteria: findingCriteria
}
  type response = {
@as("countsByGroup") countsByGroup: __listOfGroupCount
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetFindingStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFindingsFilter = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("position") position: __integer,
@as("name") name: option<__string>,
@as("findingCriteria") findingCriteria: option<findingCriteria>,
@as("description") description: __string,
@as("clientToken") clientToken: __string,
@as("action") action: option<findingsFilterAction>
}
  type response = {
@as("id") id: __string,
@as("arn") arn: __string
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "CreateFindingsFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUsageStatistics = {
  type t;
  type request = {
@as("timeRange") timeRange: timeRange,
@as("sortBy") sortBy: usageStatisticsSortBy,
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: __integer,
@as("filterBy") filterBy: __listOfUsageStatisticsFilter
}
  type response = {
@as("timeRange") timeRange: timeRange,
@as("records") records: __listOfUsageRecord,
@as("nextToken") nextToken: __string
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetUsageStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBuckets = {
  type t;
  type request = {
@as("sortCriteria") sortCriteria: bucketSortCriteria,
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: __integer,
@as("criteria") criteria: bucketCriteria
}
  type response = {
@as("nextToken") nextToken: __string,
@as("buckets") buckets: __listOfBucketMetadata
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DescribeBucketsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchResources = {
  type t;
  type request = {
@as("sortCriteria") sortCriteria: searchResourcesSortCriteria,
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: __integer,
@as("bucketCriteria") bucketCriteria: searchResourcesBucketCriteria
}
  type response = {
@as("nextToken") nextToken: __string,
@as("matchingResources") matchingResources: __listOfMatchingResource
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "SearchResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClassificationJob = {
  type t;
  type request = {
@as("jobId") jobId: option<__string>
}
  type response = {
@as("userPausedDetails") userPausedDetails: userPausedDetails,
@as("tags") tags: tagMap,
@as("statistics") statistics: statistics,
@as("scheduleFrequency") scheduleFrequency: jobScheduleFrequency,
@as("samplingPercentage") samplingPercentage: __integer,
@as("s3JobDefinition") s3JobDefinition: s3JobDefinition,
@as("name") name: __string,
@as("lastRunTime") lastRunTime: __timestampIso8601,
@as("lastRunErrorStatus") lastRunErrorStatus: lastRunErrorStatus,
@as("jobType") jobType: jobType,
@as("jobStatus") jobStatus: jobStatus,
@as("jobId") jobId: __string,
@as("jobArn") jobArn: __string,
@as("initialRun") initialRun: __boolean,
@as("description") description: __string,
@as("customDataIdentifierIds") customDataIdentifierIds: __listOf__string,
@as("createdAt") createdAt: __timestampIso8601,
@as("clientToken") clientToken: __string
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "DescribeClassificationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateClassificationJob = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("scheduleFrequency") scheduleFrequency: jobScheduleFrequency,
@as("samplingPercentage") samplingPercentage: __integer,
@as("s3JobDefinition") s3JobDefinition: option<s3JobDefinition>,
@as("name") name: option<__string>,
@as("jobType") jobType: option<jobType>,
@as("initialRun") initialRun: __boolean,
@as("description") description: __string,
@as("customDataIdentifierIds") customDataIdentifierIds: __listOf__string,
@as("clientToken") clientToken: option<__string>
}
  type response = {
@as("jobId") jobId: __string,
@as("jobArn") jobArn: __string
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "CreateClassificationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListClassificationJobs = {
  type t;
  type request = {
@as("sortCriteria") sortCriteria: listJobsSortCriteria,
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: __integer,
@as("filterCriteria") filterCriteria: listJobsFilterCriteria
}
  type response = {
@as("nextToken") nextToken: __string,
@as("items") items: __listOfJobSummary
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "ListClassificationJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFindings = {
  type t;
  type request = {
@as("sortCriteria") sortCriteria: sortCriteria,
@as("findingIds") findingIds: option<__listOf__string>
}
  type response = {
@as("findings") findings: __listOfFinding
}
  @module("@aws-sdk/client-macie2") @new external new_: (request) => t = "GetFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
