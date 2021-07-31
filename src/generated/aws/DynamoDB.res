type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-dynamodb") @new
external createClient: unit => awsServiceClient = "DynamoDBClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type updateExpression = string
type timeToLiveStatus = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
  | @as("DISABLING") #DISABLING
  | @as("ENABLING") #ENABLING
]
type timeToLiveEnabled = bool
type timeToLiveAttributeName = string
type timeRangeUpperBound = Js.Date.t
type timeRangeLowerBound = Js.Date.t
type tagValueString = string
type tagKeyString = string
type tableStatus = [
  | @as("ARCHIVED") #ARCHIVED
  | @as("ARCHIVING") #ARCHIVING
  | @as("INACCESSIBLE_ENCRYPTION_CREDENTIALS") #INACCESSIBLE_ENCRYPTION_CREDENTIALS
  | @as("ACTIVE") #ACTIVE
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type tableName = string
type tableId = string
type tableCreationDateTime = Js.Date.t
type tableArn = string
type stringAttributeValue = string
type string_ = string
type streamViewType = [
  | @as("KEYS_ONLY") #KEYS_ONLY
  | @as("NEW_AND_OLD_IMAGES") #NEW_AND_OLD_IMAGES
  | @as("OLD_IMAGE") #OLD_IMAGE
  | @as("NEW_IMAGE") #NEW_IMAGE
]
type streamEnabled = bool
type streamArn = string
type select = [
  | @as("COUNT") #COUNT
  | @as("SPECIFIC_ATTRIBUTES") #SPECIFIC_ATTRIBUTES
  | @as("ALL_PROJECTED_ATTRIBUTES") #ALL_PROJECTED_ATTRIBUTES
  | @as("ALL_ATTRIBUTES") #ALL_ATTRIBUTES
]
type scanTotalSegments = int
type scanSegment = int
type scalarAttributeType = [@as("B") #B | @as("N") #N | @as("S") #S]
type ssetype = [@as("KMS") #KMS | @as("AES256") #AES256]
type ssestatus = [
  | @as("UPDATING") #UPDATING
  | @as("DISABLED") #DISABLED
  | @as("DISABLING") #DISABLING
  | @as("ENABLED") #ENABLED
  | @as("ENABLING") #ENABLING
]
type sseenabled = bool
type s3SseKmsKeyId = string
type s3SseAlgorithm = [@as("KMS") #KMS | @as("AES256") #AES256]
type s3Prefix = string
type s3BucketOwner = string
type s3Bucket = string
type returnValuesOnConditionCheckFailure = [@as("NONE") #NONE | @as("ALL_OLD") #ALL_OLD]
type returnValue = [
  | @as("UPDATED_NEW") #UPDATED_NEW
  | @as("ALL_NEW") #ALL_NEW
  | @as("UPDATED_OLD") #UPDATED_OLD
  | @as("ALL_OLD") #ALL_OLD
  | @as("NONE") #NONE
]
type returnItemCollectionMetrics = [@as("NONE") #NONE | @as("SIZE") #SIZE]
type returnConsumedCapacity = [@as("NONE") #NONE | @as("TOTAL") #TOTAL | @as("INDEXES") #INDEXES]
type restoreInProgress = bool
type resourceArnString = string
type replicaStatusPercentProgress = string
type replicaStatusDescription = string
type replicaStatus = [
  | @as("INACCESSIBLE_ENCRYPTION_CREDENTIALS") #INACCESSIBLE_ENCRYPTION_CREDENTIALS
  | @as("REGION_DISABLED") #REGION_DISABLED
  | @as("ACTIVE") #ACTIVE
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATION_FAILED") #CREATION_FAILED
  | @as("CREATING") #CREATING
]
type regionName = string
type projectionType = [@as("INCLUDE") #INCLUDE | @as("KEYS_ONLY") #KEYS_ONLY | @as("ALL") #ALL]
type projectionExpression = string
type positiveLongObject = float
type positiveIntegerObject = int
type pointInTimeRecoveryStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type partiQLStatement = string
type partiQLNextToken = string
type numberAttributeValue = string
type nullAttributeValue = bool
type nonNegativeLongObject = float
type nonKeyAttributeName = string
type nextTokenString = string
type long = float
type listTablesInputLimit = int
type listExportsMaxLimit = int
type listContributorInsightsLimit = int
type lastUpdateDateTime = Js.Date.t
type keyType = [@as("RANGE") #RANGE | @as("HASH") #HASH]
type keySchemaAttributeName = string
type keyExpression = string
type kmsmasterKeyId = string
type kmsmasterKeyArn = string
type itemCount = float
type itemCollectionSizeEstimateBound = float
type integerObject = int
type integer_ = int
type indexStatus = [
  | @as("ACTIVE") #ACTIVE
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type indexName = string
type globalTableStatus = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type globalTableArnString = string
type failureMessage = string
type failureCode = string
type expressionAttributeValueVariable = string
type expressionAttributeNameVariable = string
type exportTime = Js.Date.t
type exportStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type exportStartTime = Js.Date.t
type exportNextToken = string
type exportManifest = string
type exportFormat = [@as("ION") #ION | @as("DYNAMODB_JSON") #DYNAMODB_JSON]
type exportEndTime = Js.Date.t
type exportArn = string
type exceptionName = string
type exceptionDescription = string
type errorMessage = string
type double = float
type destinationStatus = [
  | @as("ENABLE_FAILED") #ENABLE_FAILED
  | @as("DISABLED") #DISABLED
  | @as("DISABLING") #DISABLING
  | @as("ACTIVE") #ACTIVE
  | @as("ENABLING") #ENABLING
]
type date = Js.Date.t
type contributorInsightsStatus = [
  | @as("FAILED") #FAILED
  | @as("DISABLED") #DISABLED
  | @as("DISABLING") #DISABLING
  | @as("ENABLED") #ENABLED
  | @as("ENABLING") #ENABLING
]
type contributorInsightsRule = string
type contributorInsightsAction = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type continuousBackupsStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type consumedCapacityUnits = float
type consistentRead = bool
type conditionalOperator = [@as("OR") #OR | @as("AND") #AND]
type conditionExpression = string
type comparisonOperator = [
  | @as("BEGINS_WITH") #BEGINS_WITH
  | @as("NOT_CONTAINS") #NOT_CONTAINS
  | @as("CONTAINS") #CONTAINS
  | @as("NULL") #NULL
  | @as("NOT_NULL") #NOT_NULL
  | @as("BETWEEN") #BETWEEN
  | @as("GT") #GT
  | @as("GE") #GE
  | @as("LT") #LT
  | @as("LE") #LE
  | @as("IN") #IN
  | @as("NE") #NE
  | @as("EQ") #EQ
]
type code = string
type clientToken = string
type clientRequestToken = string
type booleanObject = bool
type booleanAttributeValue = bool
type binaryAttributeValue = NodeJs.Buffer.t
type billingMode = [@as("PAY_PER_REQUEST") #PAY_PER_REQUEST | @as("PROVISIONED") #PROVISIONED]
type billedSizeBytes = float
type batchStatementErrorCodeEnum = [
  | @as("DuplicateItem") #DuplicateItem
  | @as("AccessDenied") #AccessDenied
  | @as("ResourceNotFound") #ResourceNotFound
  | @as("InternalServerError") #InternalServerError
  | @as("ThrottlingError") #ThrottlingError
  | @as("TransactionConflict") #TransactionConflict
  | @as("ProvisionedThroughputExceeded") #ProvisionedThroughputExceeded
  | @as("ValidationError") #ValidationError
  | @as("RequestLimitExceeded") #RequestLimitExceeded
  | @as("ItemCollectionSizeLimitExceeded") #ItemCollectionSizeLimitExceeded
  | @as("ConditionalCheckFailed") #ConditionalCheckFailed
]
type backupsInputLimit = int
type backupTypeFilter = [
  | @as("ALL") #ALL
  | @as("AWS_BACKUP") #AWS_BACKUP
  | @as("SYSTEM") #SYSTEM
  | @as("USER") #USER
]
type backupType = [@as("AWS_BACKUP") #AWS_BACKUP | @as("SYSTEM") #SYSTEM | @as("USER") #USER]
type backupStatus = [
  | @as("AVAILABLE") #AVAILABLE
  | @as("DELETED") #DELETED
  | @as("CREATING") #CREATING
]
type backupSizeBytes = float
type backupName = string
type backupCreationDateTime = Js.Date.t
type backupArn = string
type backfilling = bool
type autoScalingRoleArn = string
type autoScalingPolicyName = string
type attributeName = string
type attributeAction = [@as("DELETE") #DELETE | @as("PUT") #PUT | @as("ADD") #ADD]
type archivalReason = string
type timeToLiveSpecification = {
  @as("AttributeName") attributeName: timeToLiveAttributeName,
  @as("Enabled") enabled: timeToLiveEnabled,
}
type timeToLiveDescription = {
  @as("AttributeName") attributeName: option<timeToLiveAttributeName>,
  @as("TimeToLiveStatus") timeToLiveStatus: option<timeToLiveStatus>,
}
type tagKeyList = array<tagKeyString>
type tag = {
  @as("Value") value: tagValueString,
  @as("Key") key: tagKeyString,
}
type tableNameList = array<tableName>
type stringSetAttributeValue = array<stringAttributeValue>
type streamSpecification = {
  @as("StreamViewType") streamViewType: option<streamViewType>,
  @as("StreamEnabled") streamEnabled: streamEnabled,
}
type ssespecification = {
  @as("KMSMasterKeyId") kmsmasterKeyId: option<kmsmasterKeyId>,
  @as("SSEType") ssetype: option<ssetype>,
  @as("Enabled") enabled: option<sseenabled>,
}
type ssedescription = {
  @as("InaccessibleEncryptionDateTime") inaccessibleEncryptionDateTime: option<date>,
  @as("KMSMasterKeyArn") kmsmasterKeyArn: option<kmsmasterKeyArn>,
  @as("SSEType") ssetype: option<ssetype>,
  @as("Status") status: option<ssestatus>,
}
type restoreSummary = {
  @as("RestoreInProgress") restoreInProgress: restoreInProgress,
  @as("RestoreDateTime") restoreDateTime: date,
  @as("SourceTableArn") sourceTableArn: option<tableArn>,
  @as("SourceBackupArn") sourceBackupArn: option<backupArn>,
}
type replica = {@as("RegionName") regionName: option<regionName>}
type provisionedThroughputOverride = {
  @as("ReadCapacityUnits") readCapacityUnits: option<positiveLongObject>,
}
type provisionedThroughputDescription = {
  @as("WriteCapacityUnits") writeCapacityUnits: option<nonNegativeLongObject>,
  @as("ReadCapacityUnits") readCapacityUnits: option<nonNegativeLongObject>,
  @as("NumberOfDecreasesToday") numberOfDecreasesToday: option<positiveLongObject>,
  @as("LastDecreaseDateTime") lastDecreaseDateTime: option<date>,
  @as("LastIncreaseDateTime") lastIncreaseDateTime: option<date>,
}
type provisionedThroughput = {
  @as("WriteCapacityUnits") writeCapacityUnits: positiveLongObject,
  @as("ReadCapacityUnits") readCapacityUnits: positiveLongObject,
}
type pointInTimeRecoverySpecification = {
  @as("PointInTimeRecoveryEnabled") pointInTimeRecoveryEnabled: booleanObject,
}
type pointInTimeRecoveryDescription = {
  @as("LatestRestorableDateTime") latestRestorableDateTime: option<date>,
  @as("EarliestRestorableDateTime") earliestRestorableDateTime: option<date>,
  @as("PointInTimeRecoveryStatus") pointInTimeRecoveryStatus: option<pointInTimeRecoveryStatus>,
}
type numberSetAttributeValue = array<numberAttributeValue>
type nonKeyAttributeNameList = array<nonKeyAttributeName>
type kinesisDataStreamDestination = {
  @as("DestinationStatusDescription") destinationStatusDescription: option<string_>,
  @as("DestinationStatus") destinationStatus: option<destinationStatus>,
  @as("StreamArn") streamArn: option<streamArn>,
}
type keySchemaElement = {
  @as("KeyType") keyType: keyType,
  @as("AttributeName") attributeName: keySchemaAttributeName,
}
type itemCollectionSizeEstimateRange = array<itemCollectionSizeEstimateBound>
type failureException = {
  @as("ExceptionDescription") exceptionDescription: option<exceptionDescription>,
  @as("ExceptionName") exceptionName: option<exceptionName>,
}
type expressionAttributeNameMap = Js.Dict.t<attributeName>
type exportSummary = {
  @as("ExportStatus") exportStatus: option<exportStatus>,
  @as("ExportArn") exportArn: option<exportArn>,
}
type exportDescription = {
  @as("ItemCount") itemCount: option<itemCount>,
  @as("BilledSizeBytes") billedSizeBytes: option<billedSizeBytes>,
  @as("ExportFormat") exportFormat: option<exportFormat>,
  @as("FailureMessage") failureMessage: option<failureMessage>,
  @as("FailureCode") failureCode: option<failureCode>,
  @as("S3SseKmsKeyId") s3SseKmsKeyId: option<s3SseKmsKeyId>,
  @as("S3SseAlgorithm") s3SseAlgorithm: option<s3SseAlgorithm>,
  @as("S3Prefix") s3Prefix: option<s3Prefix>,
  @as("S3BucketOwner") s3BucketOwner: option<s3BucketOwner>,
  @as("S3Bucket") s3Bucket: option<s3Bucket>,
  @as("ClientToken") clientToken: option<clientToken>,
  @as("ExportTime") exportTime: option<exportTime>,
  @as("TableId") tableId: option<tableId>,
  @as("TableArn") tableArn: option<tableArn>,
  @as("ExportManifest") exportManifest: option<exportManifest>,
  @as("EndTime") endTime: option<exportEndTime>,
  @as("StartTime") startTime: option<exportStartTime>,
  @as("ExportStatus") exportStatus: option<exportStatus>,
  @as("ExportArn") exportArn: option<exportArn>,
}
type endpoint = {
  @as("CachePeriodInMinutes") cachePeriodInMinutes: long,
  @as("Address") address: string_,
}
type deleteReplicationGroupMemberAction = {@as("RegionName") regionName: regionName}
type deleteReplicaAction = {@as("RegionName") regionName: regionName}
type deleteGlobalSecondaryIndexAction = {@as("IndexName") indexName: indexName}
type createReplicaAction = {@as("RegionName") regionName: regionName}
type contributorInsightsSummary = {
  @as("ContributorInsightsStatus") contributorInsightsStatus: option<contributorInsightsStatus>,
  @as("IndexName") indexName: option<indexName>,
  @as("TableName") tableName: option<tableName>,
}
type contributorInsightsRuleList = array<contributorInsightsRule>
type capacity = {
  @as("CapacityUnits") capacityUnits: option<consumedCapacityUnits>,
  @as("WriteCapacityUnits") writeCapacityUnits: option<consumedCapacityUnits>,
  @as("ReadCapacityUnits") readCapacityUnits: option<consumedCapacityUnits>,
}
type binarySetAttributeValue = array<binaryAttributeValue>
type billingModeSummary = {
  @as("LastUpdateToPayPerRequestDateTime") lastUpdateToPayPerRequestDateTime: option<date>,
  @as("BillingMode") billingMode: option<billingMode>,
}
type batchStatementError = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<batchStatementErrorCodeEnum>,
}
type backupSummary = {
  @as("BackupSizeBytes") backupSizeBytes: option<backupSizeBytes>,
  @as("BackupType") backupType: option<backupType>,
  @as("BackupStatus") backupStatus: option<backupStatus>,
  @as("BackupExpiryDateTime") backupExpiryDateTime: option<date>,
  @as("BackupCreationDateTime") backupCreationDateTime: option<backupCreationDateTime>,
  @as("BackupName") backupName: option<backupName>,
  @as("BackupArn") backupArn: option<backupArn>,
  @as("TableArn") tableArn: option<tableArn>,
  @as("TableId") tableId: option<tableId>,
  @as("TableName") tableName: option<tableName>,
}
type backupDetails = {
  @as("BackupExpiryDateTime") backupExpiryDateTime: option<date>,
  @as("BackupCreationDateTime") backupCreationDateTime: backupCreationDateTime,
  @as("BackupType") backupType: backupType,
  @as("BackupStatus") backupStatus: backupStatus,
  @as("BackupSizeBytes") backupSizeBytes: option<backupSizeBytes>,
  @as("BackupName") backupName: backupName,
  @as("BackupArn") backupArn: backupArn,
}
type autoScalingTargetTrackingScalingPolicyConfigurationUpdate = {
  @as("TargetValue") targetValue: double,
  @as("ScaleOutCooldown") scaleOutCooldown: option<integerObject>,
  @as("ScaleInCooldown") scaleInCooldown: option<integerObject>,
  @as("DisableScaleIn") disableScaleIn: option<booleanObject>,
}
type autoScalingTargetTrackingScalingPolicyConfigurationDescription = {
  @as("TargetValue") targetValue: double,
  @as("ScaleOutCooldown") scaleOutCooldown: option<integerObject>,
  @as("ScaleInCooldown") scaleInCooldown: option<integerObject>,
  @as("DisableScaleIn") disableScaleIn: option<booleanObject>,
}
type attributeNameList = array<attributeName>
type attributeDefinition = {
  @as("AttributeType") attributeType: scalarAttributeType,
  @as("AttributeName") attributeName: keySchemaAttributeName,
}
type archivalSummary = {
  @as("ArchivalBackupArn") archivalBackupArn: option<backupArn>,
  @as("ArchivalReason") archivalReason: option<archivalReason>,
  @as("ArchivalDateTime") archivalDateTime: option<date>,
}
type updateGlobalSecondaryIndexAction = {
  @as("ProvisionedThroughput") provisionedThroughput: provisionedThroughput,
  @as("IndexName") indexName: indexName,
}
type tagList_ = array<tag>
type secondaryIndexesCapacityMap = Js.Dict.t<capacity>
type replicaUpdate = {
  @as("Delete") delete: option<deleteReplicaAction>,
  @as("Create") create: option<createReplicaAction>,
}
type replicaList = array<replica>
type replicaGlobalSecondaryIndexDescription = {
  @as("ProvisionedThroughputOverride")
  provisionedThroughputOverride: option<provisionedThroughputOverride>,
  @as("IndexName") indexName: option<indexName>,
}
type replicaGlobalSecondaryIndex = {
  @as("ProvisionedThroughputOverride")
  provisionedThroughputOverride: option<provisionedThroughputOverride>,
  @as("IndexName") indexName: indexName,
}
type projection = {
  @as("NonKeyAttributes") nonKeyAttributes: option<nonKeyAttributeNameList>,
  @as("ProjectionType") projectionType: option<projectionType>,
}
type kinesisDataStreamDestinations = array<kinesisDataStreamDestination>
type keySchema = array<keySchemaElement>
type exportSummaries = array<exportSummary>
type endpoints = array<endpoint>
type contributorInsightsSummaries = array<contributorInsightsSummary>
type continuousBackupsDescription = {
  @as("PointInTimeRecoveryDescription")
  pointInTimeRecoveryDescription: option<pointInTimeRecoveryDescription>,
  @as("ContinuousBackupsStatus") continuousBackupsStatus: continuousBackupsStatus,
}
type backupSummaries = array<backupSummary>
type autoScalingPolicyUpdate = {
  @as("TargetTrackingScalingPolicyConfiguration")
  targetTrackingScalingPolicyConfiguration: autoScalingTargetTrackingScalingPolicyConfigurationUpdate,
  @as("PolicyName") policyName: option<autoScalingPolicyName>,
}
type autoScalingPolicyDescription = {
  @as("TargetTrackingScalingPolicyConfiguration")
  targetTrackingScalingPolicyConfiguration: option<
    autoScalingTargetTrackingScalingPolicyConfigurationDescription,
  >,
  @as("PolicyName") policyName: option<autoScalingPolicyName>,
}
type attributeDefinitions = array<attributeDefinition>
type sourceTableDetails = {
  @as("BillingMode") billingMode: option<billingMode>,
  @as("ItemCount") itemCount: option<itemCount>,
  @as("ProvisionedThroughput") provisionedThroughput: provisionedThroughput,
  @as("TableCreationDateTime") tableCreationDateTime: tableCreationDateTime,
  @as("KeySchema") keySchema: keySchema,
  @as("TableSizeBytes") tableSizeBytes: option<long>,
  @as("TableArn") tableArn: option<tableArn>,
  @as("TableId") tableId: tableId,
  @as("TableName") tableName: tableName,
}
type replicaUpdateList = array<replicaUpdate>
type replicaGlobalSecondaryIndexList = array<replicaGlobalSecondaryIndex>
type replicaGlobalSecondaryIndexDescriptionList = array<replicaGlobalSecondaryIndexDescription>
type localSecondaryIndexInfo = {
  @as("Projection") projection: option<projection>,
  @as("KeySchema") keySchema: option<keySchema>,
  @as("IndexName") indexName: option<indexName>,
}
type localSecondaryIndexDescription = {
  @as("IndexArn") indexArn: option<string_>,
  @as("ItemCount") itemCount: option<long>,
  @as("IndexSizeBytes") indexSizeBytes: option<long>,
  @as("Projection") projection: option<projection>,
  @as("KeySchema") keySchema: option<keySchema>,
  @as("IndexName") indexName: option<indexName>,
}
type localSecondaryIndex = {
  @as("Projection") projection: projection,
  @as("KeySchema") keySchema: keySchema,
  @as("IndexName") indexName: indexName,
}
type globalTable = {
  @as("ReplicationGroup") replicationGroup: option<replicaList>,
  @as("GlobalTableName") globalTableName: option<tableName>,
}
type globalSecondaryIndexInfo = {
  @as("ProvisionedThroughput") provisionedThroughput: option<provisionedThroughput>,
  @as("Projection") projection: option<projection>,
  @as("KeySchema") keySchema: option<keySchema>,
  @as("IndexName") indexName: option<indexName>,
}
type globalSecondaryIndexDescription = {
  @as("IndexArn") indexArn: option<string_>,
  @as("ItemCount") itemCount: option<long>,
  @as("IndexSizeBytes") indexSizeBytes: option<long>,
  @as("ProvisionedThroughput") provisionedThroughput: option<provisionedThroughputDescription>,
  @as("Backfilling") backfilling: option<backfilling>,
  @as("IndexStatus") indexStatus: option<indexStatus>,
  @as("Projection") projection: option<projection>,
  @as("KeySchema") keySchema: option<keySchema>,
  @as("IndexName") indexName: option<indexName>,
}
type globalSecondaryIndex = {
  @as("ProvisionedThroughput") provisionedThroughput: option<provisionedThroughput>,
  @as("Projection") projection: projection,
  @as("KeySchema") keySchema: keySchema,
  @as("IndexName") indexName: indexName,
}
type createGlobalSecondaryIndexAction = {
  @as("ProvisionedThroughput") provisionedThroughput: option<provisionedThroughput>,
  @as("Projection") projection: projection,
  @as("KeySchema") keySchema: keySchema,
  @as("IndexName") indexName: indexName,
}
type consumedCapacity = {
  @as("GlobalSecondaryIndexes") globalSecondaryIndexes: option<secondaryIndexesCapacityMap>,
  @as("LocalSecondaryIndexes") localSecondaryIndexes: option<secondaryIndexesCapacityMap>,
  @as("Table") table: option<capacity>,
  @as("WriteCapacityUnits") writeCapacityUnits: option<consumedCapacityUnits>,
  @as("ReadCapacityUnits") readCapacityUnits: option<consumedCapacityUnits>,
  @as("CapacityUnits") capacityUnits: option<consumedCapacityUnits>,
  @as("TableName") tableName: option<tableName>,
}
type autoScalingSettingsUpdate = {
  @as("ScalingPolicyUpdate") scalingPolicyUpdate: option<autoScalingPolicyUpdate>,
  @as("AutoScalingRoleArn") autoScalingRoleArn: option<autoScalingRoleArn>,
  @as("AutoScalingDisabled") autoScalingDisabled: option<booleanObject>,
  @as("MaximumUnits") maximumUnits: option<positiveLongObject>,
  @as("MinimumUnits") minimumUnits: option<positiveLongObject>,
}
type autoScalingPolicyDescriptionList = array<autoScalingPolicyDescription>
type updateReplicationGroupMemberAction = {
  @as("GlobalSecondaryIndexes") globalSecondaryIndexes: option<replicaGlobalSecondaryIndexList>,
  @as("ProvisionedThroughputOverride")
  provisionedThroughputOverride: option<provisionedThroughputOverride>,
  @as("KMSMasterKeyId") kmsmasterKeyId: option<kmsmasterKeyId>,
  @as("RegionName") regionName: regionName,
}
type replicaGlobalSecondaryIndexSettingsUpdate = {
  @as("ProvisionedReadCapacityAutoScalingSettingsUpdate")
  provisionedReadCapacityAutoScalingSettingsUpdate: option<autoScalingSettingsUpdate>,
  @as("ProvisionedReadCapacityUnits") provisionedReadCapacityUnits: option<positiveLongObject>,
  @as("IndexName") indexName: indexName,
}
type replicaGlobalSecondaryIndexAutoScalingUpdate = {
  @as("ProvisionedReadCapacityAutoScalingUpdate")
  provisionedReadCapacityAutoScalingUpdate: option<autoScalingSettingsUpdate>,
  @as("IndexName") indexName: option<indexName>,
}
type replicaDescription = {
  @as("ReplicaInaccessibleDateTime") replicaInaccessibleDateTime: option<date>,
  @as("GlobalSecondaryIndexes")
  globalSecondaryIndexes: option<replicaGlobalSecondaryIndexDescriptionList>,
  @as("ProvisionedThroughputOverride")
  provisionedThroughputOverride: option<provisionedThroughputOverride>,
  @as("KMSMasterKeyId") kmsmasterKeyId: option<kmsmasterKeyId>,
  @as("ReplicaStatusPercentProgress")
  replicaStatusPercentProgress: option<replicaStatusPercentProgress>,
  @as("ReplicaStatusDescription") replicaStatusDescription: option<replicaStatusDescription>,
  @as("ReplicaStatus") replicaStatus: option<replicaStatus>,
  @as("RegionName") regionName: option<regionName>,
}
type localSecondaryIndexes = array<localSecondaryIndexInfo>
type localSecondaryIndexList = array<localSecondaryIndex>
type localSecondaryIndexDescriptionList = array<localSecondaryIndexDescription>
type globalTableList = array<globalTable>
type globalTableGlobalSecondaryIndexSettingsUpdate = {
  @as("ProvisionedWriteCapacityAutoScalingSettingsUpdate")
  provisionedWriteCapacityAutoScalingSettingsUpdate: option<autoScalingSettingsUpdate>,
  @as("ProvisionedWriteCapacityUnits") provisionedWriteCapacityUnits: option<positiveLongObject>,
  @as("IndexName") indexName: indexName,
}
type globalSecondaryIndexes = array<globalSecondaryIndexInfo>
type globalSecondaryIndexUpdate = {
  @as("Delete") delete: option<deleteGlobalSecondaryIndexAction>,
  @as("Create") create: option<createGlobalSecondaryIndexAction>,
  @as("Update") update: option<updateGlobalSecondaryIndexAction>,
}
type globalSecondaryIndexList = array<globalSecondaryIndex>
type globalSecondaryIndexDescriptionList = array<globalSecondaryIndexDescription>
type globalSecondaryIndexAutoScalingUpdate = {
  @as("ProvisionedWriteCapacityAutoScalingUpdate")
  provisionedWriteCapacityAutoScalingUpdate: option<autoScalingSettingsUpdate>,
  @as("IndexName") indexName: option<indexName>,
}
type createReplicationGroupMemberAction = {
  @as("GlobalSecondaryIndexes") globalSecondaryIndexes: option<replicaGlobalSecondaryIndexList>,
  @as("ProvisionedThroughputOverride")
  provisionedThroughputOverride: option<provisionedThroughputOverride>,
  @as("KMSMasterKeyId") kmsmasterKeyId: option<kmsmasterKeyId>,
  @as("RegionName") regionName: regionName,
}
type consumedCapacityMultiple = array<consumedCapacity>
type autoScalingSettingsDescription = {
  @as("ScalingPolicies") scalingPolicies: option<autoScalingPolicyDescriptionList>,
  @as("AutoScalingRoleArn") autoScalingRoleArn: option<string_>,
  @as("AutoScalingDisabled") autoScalingDisabled: option<booleanObject>,
  @as("MaximumUnits") maximumUnits: option<positiveLongObject>,
  @as("MinimumUnits") minimumUnits: option<positiveLongObject>,
}
type sourceTableFeatureDetails = {
  @as("SSEDescription") ssedescription: option<ssedescription>,
  @as("TimeToLiveDescription") timeToLiveDescription: option<timeToLiveDescription>,
  @as("StreamDescription") streamDescription: option<streamSpecification>,
  @as("GlobalSecondaryIndexes") globalSecondaryIndexes: option<globalSecondaryIndexes>,
  @as("LocalSecondaryIndexes") localSecondaryIndexes: option<localSecondaryIndexes>,
}
type replicationGroupUpdate = {
  @as("Delete") delete: option<deleteReplicationGroupMemberAction>,
  @as("Update") update: option<updateReplicationGroupMemberAction>,
  @as("Create") create: option<createReplicationGroupMemberAction>,
}
type replicaGlobalSecondaryIndexSettingsUpdateList = array<
  replicaGlobalSecondaryIndexSettingsUpdate,
>
type replicaGlobalSecondaryIndexSettingsDescription = {
  @as("ProvisionedWriteCapacityAutoScalingSettings")
  provisionedWriteCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @as("ProvisionedWriteCapacityUnits") provisionedWriteCapacityUnits: option<positiveLongObject>,
  @as("ProvisionedReadCapacityAutoScalingSettings")
  provisionedReadCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @as("ProvisionedReadCapacityUnits") provisionedReadCapacityUnits: option<positiveLongObject>,
  @as("IndexStatus") indexStatus: option<indexStatus>,
  @as("IndexName") indexName: indexName,
}
type replicaGlobalSecondaryIndexAutoScalingUpdateList = array<
  replicaGlobalSecondaryIndexAutoScalingUpdate,
>
type replicaGlobalSecondaryIndexAutoScalingDescription = {
  @as("ProvisionedWriteCapacityAutoScalingSettings")
  provisionedWriteCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @as("ProvisionedReadCapacityAutoScalingSettings")
  provisionedReadCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @as("IndexStatus") indexStatus: option<indexStatus>,
  @as("IndexName") indexName: option<indexName>,
}
type replicaDescriptionList = array<replicaDescription>
type globalTableGlobalSecondaryIndexSettingsUpdateList = array<
  globalTableGlobalSecondaryIndexSettingsUpdate,
>
type globalSecondaryIndexUpdateList = array<globalSecondaryIndexUpdate>
type globalSecondaryIndexAutoScalingUpdateList = array<globalSecondaryIndexAutoScalingUpdate>
type tableDescription = {
  @as("ArchivalSummary") archivalSummary: option<archivalSummary>,
  @as("SSEDescription") ssedescription: option<ssedescription>,
  @as("RestoreSummary") restoreSummary: option<restoreSummary>,
  @as("Replicas") replicas: option<replicaDescriptionList>,
  @as("GlobalTableVersion") globalTableVersion: option<string_>,
  @as("LatestStreamArn") latestStreamArn: option<streamArn>,
  @as("LatestStreamLabel") latestStreamLabel: option<string_>,
  @as("StreamSpecification") streamSpecification: option<streamSpecification>,
  @as("GlobalSecondaryIndexes") globalSecondaryIndexes: option<globalSecondaryIndexDescriptionList>,
  @as("LocalSecondaryIndexes") localSecondaryIndexes: option<localSecondaryIndexDescriptionList>,
  @as("BillingModeSummary") billingModeSummary: option<billingModeSummary>,
  @as("TableId") tableId: option<tableId>,
  @as("TableArn") tableArn: option<string_>,
  @as("ItemCount") itemCount: option<long>,
  @as("TableSizeBytes") tableSizeBytes: option<long>,
  @as("ProvisionedThroughput") provisionedThroughput: option<provisionedThroughputDescription>,
  @as("CreationDateTime") creationDateTime: option<date>,
  @as("TableStatus") tableStatus: option<tableStatus>,
  @as("KeySchema") keySchema: option<keySchema>,
  @as("TableName") tableName: option<tableName>,
  @as("AttributeDefinitions") attributeDefinitions: option<attributeDefinitions>,
}
type replicationGroupUpdateList = array<replicationGroupUpdate>
type replicaSettingsUpdate = {
  @as("ReplicaGlobalSecondaryIndexSettingsUpdate")
  replicaGlobalSecondaryIndexSettingsUpdate: option<replicaGlobalSecondaryIndexSettingsUpdateList>,
  @as("ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate")
  replicaProvisionedReadCapacityAutoScalingSettingsUpdate: option<autoScalingSettingsUpdate>,
  @as("ReplicaProvisionedReadCapacityUnits")
  replicaProvisionedReadCapacityUnits: option<positiveLongObject>,
  @as("RegionName") regionName: regionName,
}
type replicaGlobalSecondaryIndexSettingsDescriptionList = array<
  replicaGlobalSecondaryIndexSettingsDescription,
>
type replicaGlobalSecondaryIndexAutoScalingDescriptionList = array<
  replicaGlobalSecondaryIndexAutoScalingDescription,
>
type replicaAutoScalingUpdate = {
  @as("ReplicaProvisionedReadCapacityAutoScalingUpdate")
  replicaProvisionedReadCapacityAutoScalingUpdate: option<autoScalingSettingsUpdate>,
  @as("ReplicaGlobalSecondaryIndexUpdates")
  replicaGlobalSecondaryIndexUpdates: option<replicaGlobalSecondaryIndexAutoScalingUpdateList>,
  @as("RegionName") regionName: regionName,
}
type globalTableDescription = {
  @as("GlobalTableName") globalTableName: option<tableName>,
  @as("GlobalTableStatus") globalTableStatus: option<globalTableStatus>,
  @as("CreationDateTime") creationDateTime: option<date>,
  @as("GlobalTableArn") globalTableArn: option<globalTableArnString>,
  @as("ReplicationGroup") replicationGroup: option<replicaDescriptionList>,
}
type backupDescription = {
  @as("SourceTableFeatureDetails") sourceTableFeatureDetails: option<sourceTableFeatureDetails>,
  @as("SourceTableDetails") sourceTableDetails: option<sourceTableDetails>,
  @as("BackupDetails") backupDetails: option<backupDetails>,
}
type replicaSettingsUpdateList = array<replicaSettingsUpdate>
type replicaSettingsDescription = {
  @as("ReplicaGlobalSecondaryIndexSettings")
  replicaGlobalSecondaryIndexSettings: option<replicaGlobalSecondaryIndexSettingsDescriptionList>,
  @as("ReplicaProvisionedWriteCapacityAutoScalingSettings")
  replicaProvisionedWriteCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @as("ReplicaProvisionedWriteCapacityUnits")
  replicaProvisionedWriteCapacityUnits: option<nonNegativeLongObject>,
  @as("ReplicaProvisionedReadCapacityAutoScalingSettings")
  replicaProvisionedReadCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @as("ReplicaProvisionedReadCapacityUnits")
  replicaProvisionedReadCapacityUnits: option<nonNegativeLongObject>,
  @as("ReplicaBillingModeSummary") replicaBillingModeSummary: option<billingModeSummary>,
  @as("ReplicaStatus") replicaStatus: option<replicaStatus>,
  @as("RegionName") regionName: regionName,
}
type replicaAutoScalingUpdateList = array<replicaAutoScalingUpdate>
type replicaAutoScalingDescription = {
  @as("ReplicaStatus") replicaStatus: option<replicaStatus>,
  @as("ReplicaProvisionedWriteCapacityAutoScalingSettings")
  replicaProvisionedWriteCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @as("ReplicaProvisionedReadCapacityAutoScalingSettings")
  replicaProvisionedReadCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @as("GlobalSecondaryIndexes")
  globalSecondaryIndexes: option<replicaGlobalSecondaryIndexAutoScalingDescriptionList>,
  @as("RegionName") regionName: option<regionName>,
}
type replicaSettingsDescriptionList = array<replicaSettingsDescription>
type replicaAutoScalingDescriptionList = array<replicaAutoScalingDescription>
type tableAutoScalingDescription = {
  @as("Replicas") replicas: option<replicaAutoScalingDescriptionList>,
  @as("TableStatus") tableStatus: option<tableStatus>,
  @as("TableName") tableName: option<tableName>,
}
type rec attributeValue = {
  @as("BOOL") bool_: option<booleanAttributeValue>,
  @as("NULL") null: option<nullAttributeValue>,
  @as("L") l: option<listAttributeValue>,
  @as("M") m: option<mapAttributeValue>,
  @as("BS") bs: option<binarySetAttributeValue>,
  @as("NS") ns: option<numberSetAttributeValue>,
  @as("SS") ss: option<stringSetAttributeValue>,
  @as("B") b: option<binaryAttributeValue>,
  @as("N") n: option<numberAttributeValue>,
  @as("S") s: option<stringAttributeValue>,
}
and mapAttributeValue = Js.Dict.t<attributeValue>
and listAttributeValue = array<attributeValue>
type putItemInputAttributeMap = Js.Dict.t<attributeValue>
type preparedStatementParameters = array<attributeValue>
type key = Js.Dict.t<attributeValue>
type itemCollectionKeyAttributeMap = Js.Dict.t<attributeValue>
type expressionAttributeValueMap = Js.Dict.t<attributeValue>
type attributeValueUpdate = {
  @as("Action") action: option<attributeAction>,
  @as("Value") value: option<attributeValue>,
}
type attributeValueList = array<attributeValue>
type attributeMap = Js.Dict.t<attributeValue>
type update = {
  @as("ReturnValuesOnConditionCheckFailure")
  returnValuesOnConditionCheckFailure: option<returnValuesOnConditionCheckFailure>,
  @as("ExpressionAttributeValues") expressionAttributeValues: option<expressionAttributeValueMap>,
  @as("ExpressionAttributeNames") expressionAttributeNames: option<expressionAttributeNameMap>,
  @as("ConditionExpression") conditionExpression: option<conditionExpression>,
  @as("TableName") tableName: tableName,
  @as("UpdateExpression") updateExpression: updateExpression,
  @as("Key") key: key,
}
type putRequest = {@as("Item") item: putItemInputAttributeMap}
type put = {
  @as("ReturnValuesOnConditionCheckFailure")
  returnValuesOnConditionCheckFailure: option<returnValuesOnConditionCheckFailure>,
  @as("ExpressionAttributeValues") expressionAttributeValues: option<expressionAttributeValueMap>,
  @as("ExpressionAttributeNames") expressionAttributeNames: option<expressionAttributeNameMap>,
  @as("ConditionExpression") conditionExpression: option<conditionExpression>,
  @as("TableName") tableName: tableName,
  @as("Item") item: putItemInputAttributeMap,
}
type parameterizedStatement = {
  @as("Parameters") parameters: option<preparedStatementParameters>,
  @as("Statement") statement: partiQLStatement,
}
type keyList = array<key>
type itemResponse = {@as("Item") item: option<attributeMap>}
type itemList = array<attributeMap>
type itemCollectionMetrics = {
  @as("SizeEstimateRangeGB") sizeEstimateRangeGB: option<itemCollectionSizeEstimateRange>,
  @as("ItemCollectionKey") itemCollectionKey: option<itemCollectionKeyAttributeMap>,
}
type get = {
  @as("ExpressionAttributeNames") expressionAttributeNames: option<expressionAttributeNameMap>,
  @as("ProjectionExpression") projectionExpression: option<projectionExpression>,
  @as("TableName") tableName: tableName,
  @as("Key") key: key,
}
type expectedAttributeValue = {
  @as("AttributeValueList") attributeValueList: option<attributeValueList>,
  @as("ComparisonOperator") comparisonOperator: option<comparisonOperator>,
  @as("Exists") exists: option<booleanObject>,
  @as("Value") value: option<attributeValue>,
}
type deleteRequest = {@as("Key") key: key}
type delete = {
  @as("ReturnValuesOnConditionCheckFailure")
  returnValuesOnConditionCheckFailure: option<returnValuesOnConditionCheckFailure>,
  @as("ExpressionAttributeValues") expressionAttributeValues: option<expressionAttributeValueMap>,
  @as("ExpressionAttributeNames") expressionAttributeNames: option<expressionAttributeNameMap>,
  @as("ConditionExpression") conditionExpression: option<conditionExpression>,
  @as("TableName") tableName: tableName,
  @as("Key") key: key,
}
type conditionCheck = {
  @as("ReturnValuesOnConditionCheckFailure")
  returnValuesOnConditionCheckFailure: option<returnValuesOnConditionCheckFailure>,
  @as("ExpressionAttributeValues") expressionAttributeValues: option<expressionAttributeValueMap>,
  @as("ExpressionAttributeNames") expressionAttributeNames: option<expressionAttributeNameMap>,
  @as("ConditionExpression") conditionExpression: conditionExpression,
  @as("TableName") tableName: tableName,
  @as("Key") key: key,
}
type condition = {
  @as("ComparisonOperator") comparisonOperator: comparisonOperator,
  @as("AttributeValueList") attributeValueList: option<attributeValueList>,
}
type cancellationReason = {
  @as("Message") message: option<errorMessage>,
  @as("Code") code: option<code>,
  @as("Item") item: option<attributeMap>,
}
type batchStatementResponse = {
  @as("Item") item: option<attributeMap>,
  @as("TableName") tableName: option<tableName>,
  @as("Error") error: option<batchStatementError>,
}
type batchStatementRequest = {
  @as("ConsistentRead") consistentRead: option<consistentRead>,
  @as("Parameters") parameters: option<preparedStatementParameters>,
  @as("Statement") statement: partiQLStatement,
}
type attributeUpdates = Js.Dict.t<attributeValueUpdate>
type writeRequest = {
  @as("DeleteRequest") deleteRequest: option<deleteRequest>,
  @as("PutRequest") putRequest: option<putRequest>,
}
type transactWriteItem = {
  @as("Update") update: option<update>,
  @as("Delete") delete: option<delete>,
  @as("Put") put: option<put>,
  @as("ConditionCheck") conditionCheck: option<conditionCheck>,
}
type transactGetItem = {@as("Get") get: get}
type partiQLBatchResponse = array<batchStatementResponse>
type partiQLBatchRequest = array<batchStatementRequest>
type parameterizedStatements = array<parameterizedStatement>
type keysAndAttributes = {
  @as("ExpressionAttributeNames") expressionAttributeNames: option<expressionAttributeNameMap>,
  @as("ProjectionExpression") projectionExpression: option<projectionExpression>,
  @as("ConsistentRead") consistentRead: option<consistentRead>,
  @as("AttributesToGet") attributesToGet: option<attributeNameList>,
  @as("Keys") keys: keyList,
}
type keyConditions = Js.Dict.t<condition>
type itemResponseList = array<itemResponse>
type itemCollectionMetricsMultiple = array<itemCollectionMetrics>
type filterConditionMap = Js.Dict.t<condition>
type expectedAttributeMap = Js.Dict.t<expectedAttributeValue>
type cancellationReasonList = array<cancellationReason>
type batchGetResponseMap = Js.Dict.t<itemList>
type writeRequests = array<writeRequest>
type transactWriteItemList = array<transactWriteItem>
type transactGetItemList = array<transactGetItem>
type itemCollectionMetricsPerTable = Js.Dict.t<itemCollectionMetricsMultiple>
type batchGetRequestMap = Js.Dict.t<keysAndAttributes>
type batchWriteItemRequestMap = Js.Dict.t<writeRequests>

module UpdateContributorInsights = {
  type t
  type request = {
    @as("ContributorInsightsAction") contributorInsightsAction: contributorInsightsAction,
    @as("IndexName") indexName: option<indexName>,
    @as("TableName") tableName: tableName,
  }
  type response = {
    @as("ContributorInsightsStatus") contributorInsightsStatus: option<contributorInsightsStatus>,
    @as("IndexName") indexName: option<indexName>,
    @as("TableName") tableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "UpdateContributorInsightsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableKinesisStreamingDestination = {
  type t
  type request = {
    @as("StreamArn") streamArn: streamArn,
    @as("TableName") tableName: tableName,
  }
  type response = {
    @as("DestinationStatus") destinationStatus: option<destinationStatus>,
    @as("StreamArn") streamArn: option<streamArn>,
    @as("TableName") tableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "EnableKinesisStreamingDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableKinesisStreamingDestination = {
  type t
  type request = {
    @as("StreamArn") streamArn: streamArn,
    @as("TableName") tableName: tableName,
  }
  type response = {
    @as("DestinationStatus") destinationStatus: option<destinationStatus>,
    @as("StreamArn") streamArn: option<streamArn>,
    @as("TableName") tableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "DisableKinesisStreamingDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLimits = {
  type t
  type request = unit
  type response = {
    @as("TableMaxWriteCapacityUnits") tableMaxWriteCapacityUnits: option<positiveLongObject>,
    @as("TableMaxReadCapacityUnits") tableMaxReadCapacityUnits: option<positiveLongObject>,
    @as("AccountMaxWriteCapacityUnits") accountMaxWriteCapacityUnits: option<positiveLongObject>,
    @as("AccountMaxReadCapacityUnits") accountMaxReadCapacityUnits: option<positiveLongObject>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeLimitsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTimeToLive = {
  type t
  type request = {
    @as("TimeToLiveSpecification") timeToLiveSpecification: timeToLiveSpecification,
    @as("TableName") tableName: tableName,
  }
  type response = {
    @as("TimeToLiveSpecification") timeToLiveSpecification: option<timeToLiveSpecification>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "UpdateTimeToLiveCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: resourceArnString,
  }

  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTables = {
  type t
  type request = {
    @as("Limit") limit: option<listTablesInputLimit>,
    @as("ExclusiveStartTableName") exclusiveStartTableName: option<tableName>,
  }
  type response = {
    @as("LastEvaluatedTableName") lastEvaluatedTableName: option<tableName>,
    @as("TableNames") tableNames: option<tableNameList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ListTablesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportTableToPointInTime = {
  type t
  type request = {
    @as("ExportFormat") exportFormat: option<exportFormat>,
    @as("S3SseKmsKeyId") s3SseKmsKeyId: option<s3SseKmsKeyId>,
    @as("S3SseAlgorithm") s3SseAlgorithm: option<s3SseAlgorithm>,
    @as("S3Prefix") s3Prefix: option<s3Prefix>,
    @as("S3BucketOwner") s3BucketOwner: option<s3BucketOwner>,
    @as("S3Bucket") s3Bucket: s3Bucket,
    @as("ClientToken") clientToken: option<clientToken>,
    @as("ExportTime") exportTime: option<exportTime>,
    @as("TableArn") tableArn: tableArn,
  }
  type response = {@as("ExportDescription") exportDescription: option<exportDescription>}
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "ExportTableToPointInTimeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTimeToLive = {
  type t
  type request = {@as("TableName") tableName: tableName}
  type response = {
    @as("TimeToLiveDescription") timeToLiveDescription: option<timeToLiveDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeTimeToLiveCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExport = {
  type t
  type request = {@as("ExportArn") exportArn: exportArn}
  type response = {@as("ExportDescription") exportDescription: option<exportDescription>}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeExportCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeContributorInsights = {
  type t
  type request = {
    @as("IndexName") indexName: option<indexName>,
    @as("TableName") tableName: tableName,
  }
  type response = {
    @as("FailureException") failureException: option<failureException>,
    @as("LastUpdateDateTime") lastUpdateDateTime: option<lastUpdateDateTime>,
    @as("ContributorInsightsStatus") contributorInsightsStatus: option<contributorInsightsStatus>,
    @as("ContributorInsightsRuleList")
    contributorInsightsRuleList: option<contributorInsightsRuleList>,
    @as("IndexName") indexName: option<indexName>,
    @as("TableName") tableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "DescribeContributorInsightsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBackup = {
  type t
  type request = {
    @as("BackupName") backupName: backupName,
    @as("TableName") tableName: tableName,
  }
  type response = {@as("BackupDetails") backupDetails: option<backupDetails>}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "CreateBackupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateContinuousBackups = {
  type t
  type request = {
    @as("PointInTimeRecoverySpecification")
    pointInTimeRecoverySpecification: pointInTimeRecoverySpecification,
    @as("TableName") tableName: tableName,
  }
  type response = {
    @as("ContinuousBackupsDescription")
    continuousBackupsDescription: option<continuousBackupsDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "UpdateContinuousBackupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceArn") resourceArn: resourceArnString,
  }

  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsOfResource = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextTokenString>,
    @as("ResourceArn") resourceArn: resourceArnString,
  }
  type response = {
    @as("NextToken") nextToken: option<nextTokenString>,
    @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ListTagsOfResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExports = {
  type t
  type request = {
    @as("NextToken") nextToken: option<exportNextToken>,
    @as("MaxResults") maxResults: option<listExportsMaxLimit>,
    @as("TableArn") tableArn: option<tableArn>,
  }
  type response = {
    @as("NextToken") nextToken: option<exportNextToken>,
    @as("ExportSummaries") exportSummaries: option<exportSummaries>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ListExportsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListContributorInsights = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<listContributorInsightsLimit>,
    @as("NextToken") nextToken: option<nextTokenString>,
    @as("TableName") tableName: option<tableName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextTokenString>,
    @as("ContributorInsightsSummaries")
    contributorInsightsSummaries: option<contributorInsightsSummaries>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "ListContributorInsightsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBackups = {
  type t
  type request = {
    @as("BackupType") backupType: option<backupTypeFilter>,
    @as("ExclusiveStartBackupArn") exclusiveStartBackupArn: option<backupArn>,
    @as("TimeRangeUpperBound") timeRangeUpperBound: option<timeRangeUpperBound>,
    @as("TimeRangeLowerBound") timeRangeLowerBound: option<timeRangeLowerBound>,
    @as("Limit") limit: option<backupsInputLimit>,
    @as("TableName") tableName: option<tableName>,
  }
  type response = {
    @as("LastEvaluatedBackupArn") lastEvaluatedBackupArn: option<backupArn>,
    @as("BackupSummaries") backupSummaries: option<backupSummaries>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ListBackupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeKinesisStreamingDestination = {
  type t
  type request = {@as("TableName") tableName: tableName}
  type response = {
    @as("KinesisDataStreamDestinations")
    kinesisDataStreamDestinations: option<kinesisDataStreamDestinations>,
    @as("TableName") tableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "DescribeKinesisStreamingDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpoints = {
  type t
  type request = unit
  type response = {@as("Endpoints") endpoints: endpoints}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeEndpointsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeContinuousBackups = {
  type t
  type request = {@as("TableName") tableName: tableName}
  type response = {
    @as("ContinuousBackupsDescription")
    continuousBackupsDescription: option<continuousBackupsDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "DescribeContinuousBackupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGlobalTables = {
  type t
  type request = {
    @as("RegionName") regionName: option<regionName>,
    @as("Limit") limit: option<positiveIntegerObject>,
    @as("ExclusiveStartGlobalTableName") exclusiveStartGlobalTableName: option<tableName>,
  }
  type response = {
    @as("LastEvaluatedGlobalTableName") lastEvaluatedGlobalTableName: option<tableName>,
    @as("GlobalTables") globalTables: option<globalTableList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ListGlobalTablesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTable = {
  type t
  type request = {
    @as("ReplicaUpdates") replicaUpdates: option<replicationGroupUpdateList>,
    @as("SSESpecification") ssespecification: option<ssespecification>,
    @as("StreamSpecification") streamSpecification: option<streamSpecification>,
    @as("GlobalSecondaryIndexUpdates")
    globalSecondaryIndexUpdates: option<globalSecondaryIndexUpdateList>,
    @as("ProvisionedThroughput") provisionedThroughput: option<provisionedThroughput>,
    @as("BillingMode") billingMode: option<billingMode>,
    @as("TableName") tableName: tableName,
    @as("AttributeDefinitions") attributeDefinitions: option<attributeDefinitions>,
  }
  type response = {@as("TableDescription") tableDescription: option<tableDescription>}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "UpdateTableCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGlobalTable = {
  type t
  type request = {
    @as("ReplicaUpdates") replicaUpdates: replicaUpdateList,
    @as("GlobalTableName") globalTableName: tableName,
  }
  type response = {
    @as("GlobalTableDescription") globalTableDescription: option<globalTableDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "UpdateGlobalTableCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreTableToPointInTime = {
  type t
  type request = {
    @as("SSESpecificationOverride") ssespecificationOverride: option<ssespecification>,
    @as("ProvisionedThroughputOverride")
    provisionedThroughputOverride: option<provisionedThroughput>,
    @as("LocalSecondaryIndexOverride") localSecondaryIndexOverride: option<localSecondaryIndexList>,
    @as("GlobalSecondaryIndexOverride")
    globalSecondaryIndexOverride: option<globalSecondaryIndexList>,
    @as("BillingModeOverride") billingModeOverride: option<billingMode>,
    @as("RestoreDateTime") restoreDateTime: option<date>,
    @as("UseLatestRestorableTime") useLatestRestorableTime: option<booleanObject>,
    @as("TargetTableName") targetTableName: tableName,
    @as("SourceTableName") sourceTableName: option<tableName>,
    @as("SourceTableArn") sourceTableArn: option<tableArn>,
  }
  type response = {@as("TableDescription") tableDescription: option<tableDescription>}
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "RestoreTableToPointInTimeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreTableFromBackup = {
  type t
  type request = {
    @as("SSESpecificationOverride") ssespecificationOverride: option<ssespecification>,
    @as("ProvisionedThroughputOverride")
    provisionedThroughputOverride: option<provisionedThroughput>,
    @as("LocalSecondaryIndexOverride") localSecondaryIndexOverride: option<localSecondaryIndexList>,
    @as("GlobalSecondaryIndexOverride")
    globalSecondaryIndexOverride: option<globalSecondaryIndexList>,
    @as("BillingModeOverride") billingModeOverride: option<billingMode>,
    @as("BackupArn") backupArn: backupArn,
    @as("TargetTableName") targetTableName: tableName,
  }
  type response = {@as("TableDescription") tableDescription: option<tableDescription>}
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "RestoreTableFromBackupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTable = {
  type t
  type request = {@as("TableName") tableName: tableName}
  type response = {@as("Table") table: option<tableDescription>}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeTableCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGlobalTable = {
  type t
  type request = {@as("GlobalTableName") globalTableName: tableName}
  type response = {
    @as("GlobalTableDescription") globalTableDescription: option<globalTableDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeGlobalTableCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBackup = {
  type t
  type request = {@as("BackupArn") backupArn: backupArn}
  type response = {@as("BackupDescription") backupDescription: option<backupDescription>}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeBackupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTable = {
  type t
  type request = {@as("TableName") tableName: tableName}
  type response = {@as("TableDescription") tableDescription: option<tableDescription>}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DeleteTableCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBackup = {
  type t
  type request = {@as("BackupArn") backupArn: backupArn}
  type response = {@as("BackupDescription") backupDescription: option<backupDescription>}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DeleteBackupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTable = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("SSESpecification") ssespecification: option<ssespecification>,
    @as("StreamSpecification") streamSpecification: option<streamSpecification>,
    @as("ProvisionedThroughput") provisionedThroughput: option<provisionedThroughput>,
    @as("BillingMode") billingMode: option<billingMode>,
    @as("GlobalSecondaryIndexes") globalSecondaryIndexes: option<globalSecondaryIndexList>,
    @as("LocalSecondaryIndexes") localSecondaryIndexes: option<localSecondaryIndexList>,
    @as("KeySchema") keySchema: keySchema,
    @as("TableName") tableName: tableName,
    @as("AttributeDefinitions") attributeDefinitions: attributeDefinitions,
  }
  type response = {@as("TableDescription") tableDescription: option<tableDescription>}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "CreateTableCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGlobalTable = {
  type t
  type request = {
    @as("ReplicationGroup") replicationGroup: replicaList,
    @as("GlobalTableName") globalTableName: tableName,
  }
  type response = {
    @as("GlobalTableDescription") globalTableDescription: option<globalTableDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "CreateGlobalTableCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGlobalTableSettings = {
  type t
  type request = {
    @as("ReplicaSettingsUpdate") replicaSettingsUpdate: option<replicaSettingsUpdateList>,
    @as("GlobalTableGlobalSecondaryIndexSettingsUpdate")
    globalTableGlobalSecondaryIndexSettingsUpdate: option<
      globalTableGlobalSecondaryIndexSettingsUpdateList,
    >,
    @as("GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate")
    globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate: option<autoScalingSettingsUpdate>,
    @as("GlobalTableProvisionedWriteCapacityUnits")
    globalTableProvisionedWriteCapacityUnits: option<positiveLongObject>,
    @as("GlobalTableBillingMode") globalTableBillingMode: option<billingMode>,
    @as("GlobalTableName") globalTableName: tableName,
  }
  type response = {
    @as("ReplicaSettings") replicaSettings: option<replicaSettingsDescriptionList>,
    @as("GlobalTableName") globalTableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "UpdateGlobalTableSettingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGlobalTableSettings = {
  type t
  type request = {@as("GlobalTableName") globalTableName: tableName}
  type response = {
    @as("ReplicaSettings") replicaSettings: option<replicaSettingsDescriptionList>,
    @as("GlobalTableName") globalTableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "DescribeGlobalTableSettingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTableReplicaAutoScaling = {
  type t
  type request = {
    @as("ReplicaUpdates") replicaUpdates: option<replicaAutoScalingUpdateList>,
    @as("ProvisionedWriteCapacityAutoScalingUpdate")
    provisionedWriteCapacityAutoScalingUpdate: option<autoScalingSettingsUpdate>,
    @as("TableName") tableName: tableName,
    @as("GlobalSecondaryIndexUpdates")
    globalSecondaryIndexUpdates: option<globalSecondaryIndexAutoScalingUpdateList>,
  }
  type response = {
    @as("TableAutoScalingDescription")
    tableAutoScalingDescription: option<tableAutoScalingDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "UpdateTableReplicaAutoScalingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTableReplicaAutoScaling = {
  type t
  type request = {@as("TableName") tableName: tableName}
  type response = {
    @as("TableAutoScalingDescription")
    tableAutoScalingDescription: option<tableAutoScalingDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "DescribeTableReplicaAutoScalingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetItem = {
  type t
  type request = {
    @as("ExpressionAttributeNames") expressionAttributeNames: option<expressionAttributeNameMap>,
    @as("ProjectionExpression") projectionExpression: option<projectionExpression>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @as("ConsistentRead") consistentRead: option<consistentRead>,
    @as("AttributesToGet") attributesToGet: option<attributeNameList>,
    @as("Key") key: key,
    @as("TableName") tableName: tableName,
  }
  type response = {
    @as("ConsumedCapacity") consumedCapacity: option<consumedCapacity>,
    @as("Item") item: option<attributeMap>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "GetItemCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExecuteStatement = {
  type t
  type request = {
    @as("NextToken") nextToken: option<partiQLNextToken>,
    @as("ConsistentRead") consistentRead: option<consistentRead>,
    @as("Parameters") parameters: option<preparedStatementParameters>,
    @as("Statement") statement: partiQLStatement,
  }
  type response = {
    @as("NextToken") nextToken: option<partiQLNextToken>,
    @as("Items") items: option<itemList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ExecuteStatementCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateItem = {
  type t
  type request = {
    @as("ExpressionAttributeValues") expressionAttributeValues: option<expressionAttributeValueMap>,
    @as("ExpressionAttributeNames") expressionAttributeNames: option<expressionAttributeNameMap>,
    @as("ConditionExpression") conditionExpression: option<conditionExpression>,
    @as("UpdateExpression") updateExpression: option<updateExpression>,
    @as("ReturnItemCollectionMetrics")
    returnItemCollectionMetrics: option<returnItemCollectionMetrics>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @as("ReturnValues") returnValues: option<returnValue>,
    @as("ConditionalOperator") conditionalOperator: option<conditionalOperator>,
    @as("Expected") expected: option<expectedAttributeMap>,
    @as("AttributeUpdates") attributeUpdates: option<attributeUpdates>,
    @as("Key") key: key,
    @as("TableName") tableName: tableName,
  }
  type response = {
    @as("ItemCollectionMetrics") itemCollectionMetrics: option<itemCollectionMetrics>,
    @as("ConsumedCapacity") consumedCapacity: option<consumedCapacity>,
    @as("Attributes") attributes: option<attributeMap>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "UpdateItemCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Scan = {
  type t
  type request = {
    @as("ConsistentRead") consistentRead: option<consistentRead>,
    @as("ExpressionAttributeValues") expressionAttributeValues: option<expressionAttributeValueMap>,
    @as("ExpressionAttributeNames") expressionAttributeNames: option<expressionAttributeNameMap>,
    @as("FilterExpression") filterExpression: option<conditionExpression>,
    @as("ProjectionExpression") projectionExpression: option<projectionExpression>,
    @as("Segment") segment: option<scanSegment>,
    @as("TotalSegments") totalSegments: option<scanTotalSegments>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @as("ExclusiveStartKey") exclusiveStartKey: option<key>,
    @as("ConditionalOperator") conditionalOperator: option<conditionalOperator>,
    @as("ScanFilter") scanFilter: option<filterConditionMap>,
    @as("Select") select: option<select>,
    @as("Limit") limit: option<positiveIntegerObject>,
    @as("AttributesToGet") attributesToGet: option<attributeNameList>,
    @as("IndexName") indexName: option<indexName>,
    @as("TableName") tableName: tableName,
  }
  type response = {
    @as("ConsumedCapacity") consumedCapacity: option<consumedCapacity>,
    @as("LastEvaluatedKey") lastEvaluatedKey: option<key>,
    @as("ScannedCount") scannedCount: option<integer_>,
    @as("Count") count: option<integer_>,
    @as("Items") items: option<itemList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ScanCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Query = {
  type t
  type request = {
    @as("ExpressionAttributeValues") expressionAttributeValues: option<expressionAttributeValueMap>,
    @as("ExpressionAttributeNames") expressionAttributeNames: option<expressionAttributeNameMap>,
    @as("KeyConditionExpression") keyConditionExpression: option<keyExpression>,
    @as("FilterExpression") filterExpression: option<conditionExpression>,
    @as("ProjectionExpression") projectionExpression: option<projectionExpression>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @as("ExclusiveStartKey") exclusiveStartKey: option<key>,
    @as("ScanIndexForward") scanIndexForward: option<booleanObject>,
    @as("ConditionalOperator") conditionalOperator: option<conditionalOperator>,
    @as("QueryFilter") queryFilter: option<filterConditionMap>,
    @as("KeyConditions") keyConditions: option<keyConditions>,
    @as("ConsistentRead") consistentRead: option<consistentRead>,
    @as("Limit") limit: option<positiveIntegerObject>,
    @as("AttributesToGet") attributesToGet: option<attributeNameList>,
    @as("Select") select: option<select>,
    @as("IndexName") indexName: option<indexName>,
    @as("TableName") tableName: tableName,
  }
  type response = {
    @as("ConsumedCapacity") consumedCapacity: option<consumedCapacity>,
    @as("LastEvaluatedKey") lastEvaluatedKey: option<key>,
    @as("ScannedCount") scannedCount: option<integer_>,
    @as("Count") count: option<integer_>,
    @as("Items") items: option<itemList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "QueryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutItem = {
  type t
  type request = {
    @as("ExpressionAttributeValues") expressionAttributeValues: option<expressionAttributeValueMap>,
    @as("ExpressionAttributeNames") expressionAttributeNames: option<expressionAttributeNameMap>,
    @as("ConditionExpression") conditionExpression: option<conditionExpression>,
    @as("ConditionalOperator") conditionalOperator: option<conditionalOperator>,
    @as("ReturnItemCollectionMetrics")
    returnItemCollectionMetrics: option<returnItemCollectionMetrics>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @as("ReturnValues") returnValues: option<returnValue>,
    @as("Expected") expected: option<expectedAttributeMap>,
    @as("Item") item: putItemInputAttributeMap,
    @as("TableName") tableName: tableName,
  }
  type response = {
    @as("ItemCollectionMetrics") itemCollectionMetrics: option<itemCollectionMetrics>,
    @as("ConsumedCapacity") consumedCapacity: option<consumedCapacity>,
    @as("Attributes") attributes: option<attributeMap>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "PutItemCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExecuteTransaction = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("TransactStatements") transactStatements: parameterizedStatements,
  }
  type response = {@as("Responses") responses: option<itemResponseList>}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ExecuteTransactionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteItem = {
  type t
  type request = {
    @as("ExpressionAttributeValues") expressionAttributeValues: option<expressionAttributeValueMap>,
    @as("ExpressionAttributeNames") expressionAttributeNames: option<expressionAttributeNameMap>,
    @as("ConditionExpression") conditionExpression: option<conditionExpression>,
    @as("ReturnItemCollectionMetrics")
    returnItemCollectionMetrics: option<returnItemCollectionMetrics>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @as("ReturnValues") returnValues: option<returnValue>,
    @as("ConditionalOperator") conditionalOperator: option<conditionalOperator>,
    @as("Expected") expected: option<expectedAttributeMap>,
    @as("Key") key: key,
    @as("TableName") tableName: tableName,
  }
  type response = {
    @as("ItemCollectionMetrics") itemCollectionMetrics: option<itemCollectionMetrics>,
    @as("ConsumedCapacity") consumedCapacity: option<consumedCapacity>,
    @as("Attributes") attributes: option<attributeMap>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DeleteItemCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchExecuteStatement = {
  type t
  type request = {@as("Statements") statements: partiQLBatchRequest}
  type response = {@as("Responses") responses: option<partiQLBatchResponse>}
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "BatchExecuteStatementCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TransactWriteItems = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("ReturnItemCollectionMetrics")
    returnItemCollectionMetrics: option<returnItemCollectionMetrics>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @as("TransactItems") transactItems: transactWriteItemList,
  }
  type response = {
    @as("ItemCollectionMetrics") itemCollectionMetrics: option<itemCollectionMetricsPerTable>,
    @as("ConsumedCapacity") consumedCapacity: option<consumedCapacityMultiple>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "TransactWriteItemsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TransactGetItems = {
  type t
  type request = {
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @as("TransactItems") transactItems: transactGetItemList,
  }
  type response = {
    @as("Responses") responses: option<itemResponseList>,
    @as("ConsumedCapacity") consumedCapacity: option<consumedCapacityMultiple>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "TransactGetItemsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetItem = {
  type t
  type request = {
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @as("RequestItems") requestItems: batchGetRequestMap,
  }
  type response = {
    @as("ConsumedCapacity") consumedCapacity: option<consumedCapacityMultiple>,
    @as("UnprocessedKeys") unprocessedKeys: option<batchGetRequestMap>,
    @as("Responses") responses: option<batchGetResponseMap>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "BatchGetItemCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchWriteItem = {
  type t
  type request = {
    @as("ReturnItemCollectionMetrics")
    returnItemCollectionMetrics: option<returnItemCollectionMetrics>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @as("RequestItems") requestItems: batchWriteItemRequestMap,
  }
  type response = {
    @as("ConsumedCapacity") consumedCapacity: option<consumedCapacityMultiple>,
    @as("ItemCollectionMetrics") itemCollectionMetrics: option<itemCollectionMetricsPerTable>,
    @as("UnprocessedItems") unprocessedItems: option<batchWriteItemRequestMap>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "BatchWriteItemCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
