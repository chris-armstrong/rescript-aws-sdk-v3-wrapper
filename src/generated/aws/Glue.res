type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type workflowRunStatus = [@as("ERROR") #ERROR | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("COMPLETED") #COMPLETED | @as("RUNNING") #RUNNING]
type workerType = [@as("G.2X") #G_2X | @as("G.1X") #G_1X | @as("Standard") #Standard]
type viewTextString = string
type versionsString = string
type versionString = string
type versionLongNumber = float;
type versionId = float;
type valueString = string
type uriString = string
type updatedTimestamp = string
type updateBehavior = [@as("UPDATE_IN_DATABASE") #UPDATE_IN_DATABASE | @as("LOG") #LOG]
type uRI = string
type typeString = string
type triggerType = [@as("ON_DEMAND") #ON_DEMAND | @as("CONDITIONAL") #CONDITIONAL | @as("SCHEDULED") #SCHEDULED]
type triggerState = [@as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("DEACTIVATED") #DEACTIVATED | @as("DEACTIVATING") #DEACTIVATING | @as("ACTIVATED") #ACTIVATED | @as("ACTIVATING") #ACTIVATING | @as("CREATED") #CREATED | @as("CREATING") #CREATING]
type transformType = [@as("FIND_MATCHES") #FIND_MATCHES]
type transformStatusType = [@as("DELETING") #DELETING | @as("READY") #READY | @as("NOT_READY") #NOT_READY]
type transformSortColumnType = [@as("LAST_MODIFIED") #LAST_MODIFIED | @as("CREATED") #CREATED | @as("STATUS") #STATUS | @as("TRANSFORM_TYPE") #TRANSFORM_TYPE | @as("NAME") #NAME]
type totalSegmentsInteger = int;
type token = string
type timestampValue = Js.Date.t;
type amazonawsTimestamp = Js.Date.t;
type timeout = int;
type taskType = [@as("FIND_MATCHES") #FIND_MATCHES | @as("EXPORT_LABELS") #EXPORT_LABELS | @as("IMPORT_LABELS") #IMPORT_LABELS | @as("LABELING_SET_GENERATION") #LABELING_SET_GENERATION | @as("EVALUATION") #EVALUATION]
type taskStatusType = [@as("TIMEOUT") #TIMEOUT | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING]
type taskRunSortColumnType = [@as("STARTED") #STARTED | @as("STATUS") #STATUS | @as("TASK_RUN_TYPE") #TASK_RUN_TYPE]
type tagValue = string
type tagKey = string
type tableTypeString = string
type tablePrefix = string
type tableName = string
type sortDirectionType = [@as("ASCENDING") #ASCENDING | @as("DESCENDING") #DESCENDING]
type sort = [@as("DESC") #DESC | @as("ASC") #ASC]
type scriptLocationString = string
type schemaVersionStatus = [@as("DELETING") #DELETING | @as("FAILURE") #FAILURE | @as("PENDING") #PENDING | @as("AVAILABLE") #AVAILABLE]
type schemaVersionIdString = string
type schemaValidationError = string
type schemaStatus = [@as("DELETING") #DELETING | @as("PENDING") #PENDING | @as("AVAILABLE") #AVAILABLE]
type schemaRegistryTokenString = string
type schemaRegistryNameString = string
type schemaPathString = string
type schemaDiffType = [@as("SYNTAX_DIFF") #SYNTAX_DIFF]
type schemaDefinitionString = string
type schemaDefinitionDiff = string
type schemaCheckpointNumber = float;
type scheduleState = [@as("TRANSITIONING") #TRANSITIONING | @as("NOT_SCHEDULED") #NOT_SCHEDULED | @as("SCHEDULED") #SCHEDULED]
type scalaCode = string
type s3EncryptionMode = [@as("SSE-S3") #SSE_S3 | @as("SSE-KMS") #SSE_KMS | @as("DISABLED") #DISABLED]
type runId = string
type rowTag = string
type roleString = string
type roleArn = string
type role = string
type resourceType = [@as("ARCHIVE") #ARCHIVE | @as("FILE") #FILE | @as("JAR") #JAR]
type resourceShareType = [@as("ALL") #ALL | @as("FOREIGN") #FOREIGN]
type replaceBoolean = bool;
type registryStatus = [@as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE]
type recrawlBehavior = [@as("CRAWL_NEW_FOLDERS_ONLY") #CRAWL_NEW_FOLDERS_ONLY | @as("CRAWL_EVERYTHING") #CRAWL_EVERYTHING]
type recordsCount = float;
type querySchemaVersionMetadataMaxResults = int;
type pythonVersionString = string
type pythonScript = string
type principalType = [@as("GROUP") #GROUP | @as("ROLE") #ROLE | @as("USER") #USER]
type predicateString = string
type policyJsonString = string
type permission = [@as("DATA_LOCATION_ACCESS") #DATA_LOCATION_ACCESS | @as("CREATE_TABLE") #CREATE_TABLE | @as("CREATE_DATABASE") #CREATE_DATABASE | @as("INSERT") #INSERT | @as("DELETE") #DELETE | @as("DROP") #DROP | @as("ALTER") #ALTER | @as("SELECT") #SELECT | @as("ALL") #ALL]
type path = string
type partitionIndexStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type parametersMapValue = string
type paginationToken = string
type pageSize = int;
type nullableInteger = int;
type nullableDouble = float;
type nullableBoolean = bool;
type notifyDelayAfter = int;
type nonNegativeLong = float;
type nonNegativeInteger = int;
type nonNegativeDouble = float;
type nodeType = [@as("TRIGGER") #TRIGGER | @as("JOB") #JOB | @as("CRAWLER") #CRAWLER]
type nameString = string
type millisecondsCount = float;
type metadataValueString = string
type metadataKeyString = string
type messageString = string
type messagePrefix = string
type maxRetries = int;
type maxResultsNumber = int;
type maxConcurrentRuns = int;
type mLUserDataEncryptionModeString = [@as("SSE-KMS") #SSE_KMS | @as("DISABLED") #DISABLED]
type amazonawsLong = float;
type logicalOperator = [@as("EQUALS") #EQUALS]
type logical = [@as("ANY") #ANY | @as("AND") #AND]
type logStream = string
type logGroup = string
type locationString = string
type latestSchemaVersionBoolean = bool;
type lastCrawlStatus = [@as("FAILED") #FAILED | @as("CANCELLED") #CANCELLED | @as("SUCCEEDED") #SUCCEEDED]
type language = [@as("SCALA") #SCALA | @as("PYTHON") #PYTHON]
type labelCount = int;
type kmsKeyArn = string
type keyString = string
type jsonValue = string
type jsonPath = string
type jobRunState = [@as("TIMEOUT") #TIMEOUT | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING]
type jobName = string
type jobBookmarksEncryptionMode = [@as("CSE-KMS") #CSE_KMS | @as("DISABLED") #DISABLED]
type isVersionValid = bool;
type integerValue = int;
type integerFlag = int;
type amazonawsInteger = int;
type idString = string
type hashString = string
type grokPattern = string
type glueVersionString = string
type glueResourceArn = string
type genericString = string
type genericBoundedDouble = float;
type formatString = string
type filterString = string
type fieldType = string
type existCondition = [@as("NONE") #NONE | @as("NOT_EXIST") #NOT_EXIST | @as("MUST_EXIST") #MUST_EXIST]
type executionTime = int;
type errorString = string
type errorMessageString = string
type errorCodeString = string
type enableHybridValues = [@as("FALSE") #FALSE | @as("TRUE") #TRUE]
type amazonawsDouble = float;
type descriptionStringRemovable = string
type descriptionString = string
type deleteBehavior = [@as("DEPRECATE_IN_DATABASE") #DEPRECATE_IN_DATABASE | @as("DELETE_FROM_DATABASE") #DELETE_FROM_DATABASE | @as("LOG") #LOG]
type databaseName = string
type dataLakePrincipalString = string
type dataFormat = [@as("AVRO") #AVRO]
type customPatterns = string
type csvQuoteSymbol = string
type csvHeaderOption = [@as("ABSENT") #ABSENT | @as("PRESENT") #PRESENT | @as("UNKNOWN") #UNKNOWN]
type csvColumnDelimiter = string
type cronExpression = string
type createdTimestamp = string
type crawlerState = [@as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("READY") #READY]
type crawlerSecurityConfiguration = string
type crawlerLineageSettings = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type crawlerConfiguration = string
type crawlState = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("CANCELLED") #CANCELLED | @as("CANCELLING") #CANCELLING | @as("RUNNING") #RUNNING]
type connectionType = [@as("CUSTOM") #CUSTOM | @as("MARKETPLACE") #MARKETPLACE | @as("NETWORK") #NETWORK | @as("KAFKA") #KAFKA | @as("MONGODB") #MONGODB | @as("SFTP") #SFTP | @as("JDBC") #JDBC]
type connectionPropertyKey = [@as("CONNECTOR_CLASS_NAME") #CONNECTOR_CLASS_NAME | @as("CONNECTOR_TYPE") #CONNECTOR_TYPE | @as("CONNECTOR_URL") #CONNECTOR_URL | @as("SECRET_ID") #SECRET_ID | @as("ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD") #ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD | @as("ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD") #ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD | @as("KAFKA_CLIENT_KEY_PASSWORD") #KAFKA_CLIENT_KEY_PASSWORD | @as("KAFKA_CLIENT_KEYSTORE_PASSWORD") #KAFKA_CLIENT_KEYSTORE_PASSWORD | @as("KAFKA_CLIENT_KEYSTORE") #KAFKA_CLIENT_KEYSTORE | @as("KAFKA_SKIP_CUSTOM_CERT_VALIDATION") #KAFKA_SKIP_CUSTOM_CERT_VALIDATION | @as("KAFKA_CUSTOM_CERT") #KAFKA_CUSTOM_CERT | @as("KAFKA_SSL_ENABLED") #KAFKA_SSL_ENABLED | @as("KAFKA_BOOTSTRAP_SERVERS") #KAFKA_BOOTSTRAP_SERVERS | @as("CONNECTION_URL") #CONNECTION_URL | @as("CUSTOM_JDBC_CERT_STRING") #CUSTOM_JDBC_CERT_STRING | @as("SKIP_CUSTOM_JDBC_CERT_VALIDATION") #SKIP_CUSTOM_JDBC_CERT_VALIDATION | @as("CUSTOM_JDBC_CERT") #CUSTOM_JDBC_CERT | @as("JDBC_ENFORCE_SSL") #JDBC_ENFORCE_SSL | @as("JDBC_CONNECTION_URL") #JDBC_CONNECTION_URL | @as("INSTANCE_ID") #INSTANCE_ID | @as("CONFIG_FILES") #CONFIG_FILES | @as("JDBC_ENGINE_VERSION") #JDBC_ENGINE_VERSION | @as("JDBC_ENGINE") #JDBC_ENGINE | @as("JDBC_DRIVER_CLASS_NAME") #JDBC_DRIVER_CLASS_NAME | @as("JDBC_DRIVER_JAR_URI") #JDBC_DRIVER_JAR_URI | @as("ENCRYPTED_PASSWORD") #ENCRYPTED_PASSWORD | @as("PASSWORD") #PASSWORD | @as("USERNAME") #USERNAME | @as("PORT") #PORT | @as("HOST") #HOST]
type connectionName = string
type compatibility = [@as("FULL_ALL") #FULL_ALL | @as("FULL") #FULL | @as("FORWARD_ALL") #FORWARD_ALL | @as("FORWARD") #FORWARD | @as("BACKWARD_ALL") #BACKWARD_ALL | @as("BACKWARD") #BACKWARD | @as("DISABLED") #DISABLED | @as("NONE") #NONE]
type comparator = [@as("LESS_THAN_EQUALS") #LESS_THAN_EQUALS | @as("GREATER_THAN_EQUALS") #GREATER_THAN_EQUALS | @as("LESS_THAN") #LESS_THAN | @as("GREATER_THAN") #GREATER_THAN | @as("EQUALS") #EQUALS]
type commentString = string
type columnValuesString = string
type columnTypeString = string
type columnStatisticsType = [@as("BINARY") #BINARY | @as("STRING") #STRING | @as("LONG") #LONG | @as("DOUBLE") #DOUBLE | @as("DECIMAL") #DECIMAL | @as("DATE") #DATE | @as("BOOLEAN") #BOOLEAN]
type columnNameString = string
type codeGenNodeType = string
type codeGenIdentifier = string
type codeGenArgValue = string
type codeGenArgName = string
type cloudWatchEncryptionMode = [@as("SSE-KMS") #SSE_KMS | @as("DISABLED") #DISABLED]
type classification = string
type catalogIdString = string
type catalogGetterPageSize = int;
type catalogEncryptionMode = [@as("SSE-KMS") #SSE_KMS | @as("DISABLED") #DISABLED]
type booleanValue = bool;
type booleanNullable = bool;
type amazonawsBoolean = bool;
type blob = NodeJs.Buffer.t;
type backfillErrorCode = [@as("UNSUPPORTED_PARTITION_CHARACTER_ERROR") #UNSUPPORTED_PARTITION_CHARACTER_ERROR | @as("MISSING_PARTITION_VALUE_ERROR") #MISSING_PARTITION_VALUE_ERROR | @as("INVALID_PARTITION_TYPE_DATA_ERROR") #INVALID_PARTITION_TYPE_DATA_ERROR | @as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("ENCRYPTED_PARTITION_ERROR") #ENCRYPTED_PARTITION_ERROR]
type attemptCount = int;
type xMLClassifier = {
@as("RowTag") rowTag: rowTag,
@as("Version") version: versionId,
@as("LastUpdated") lastUpdated: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Classification") classification: option<classification>,
@as("Name") name: option<nameString>
}
type workflowRunStatistics = {
@as("RunningActions") runningActions: integerValue,
@as("SucceededActions") succeededActions: integerValue,
@as("StoppedActions") stoppedActions: integerValue,
@as("FailedActions") failedActions: integerValue,
@as("TimeoutActions") timeoutActions: integerValue,
@as("TotalActions") totalActions: integerValue
}
type workflowRunProperties = Js.Dict.t< genericString>
type workflowNames = array<nameString>
type valueStringList = array<valueString>
type updateXMLClassifierRequest = {
@as("RowTag") rowTag: rowTag,
@as("Classification") classification: classification,
@as("Name") name: option<nameString>
}
type updateJsonClassifierRequest = {
@as("JsonPath") jsonPath: jsonPath,
@as("Name") name: option<nameString>
}
type updateGrokClassifierRequest = {
@as("CustomPatterns") customPatterns: customPatterns,
@as("GrokPattern") grokPattern: grokPattern,
@as("Classification") classification: classification,
@as("Name") name: option<nameString>
}
type triggerNameList = array<nameString>
type transformSortCriteria = {
@as("SortDirection") sortDirection: option<sortDirectionType>,
@as("Column") column: option<transformSortColumnType>
}
type transformIdList = array<hashString>
type taskRunSortCriteria = {
@as("SortDirection") sortDirection: option<sortDirectionType>,
@as("Column") column: option<taskRunSortColumnType>
}
type taskRunFilterCriteria = {
@as("StartedAfter") startedAfter: amazonawsTimestamp,
@as("StartedBefore") startedBefore: amazonawsTimestamp,
@as("Status") status: taskStatusType,
@as("TaskRunType") taskRunType: taskType
}
type tagsMap = Js.Dict.t< tagValue>
type tagKeysList = array<tagKey>
type tableIdentifier = {
@as("Name") name: nameString,
@as("DatabaseName") databaseName: nameString,
@as("CatalogId") catalogId: catalogIdString
}
type stringList = array<genericString>
type stringColumnStatisticsData = {
@as("NumberOfDistinctValues") numberOfDistinctValues: option<nonNegativeLong>,
@as("NumberOfNulls") numberOfNulls: option<nonNegativeLong>,
@as("AverageLength") averageLength: option<nonNegativeDouble>,
@as("MaximumLength") maximumLength: option<nonNegativeLong>
}
type sortCriterion = {
@as("Sort") sort: sort,
@as("FieldName") fieldName: valueString
}
type segment = {
@as("TotalSegments") totalSegments: option<totalSegmentsInteger>,
@as("SegmentNumber") segmentNumber: option<nonNegativeInteger>
}
type securityGroupIdList = array<nameString>
type schemaVersionNumber = {
@as("VersionNumber") versionNumber: versionLongNumber,
@as("LatestVersion") latestVersion: latestSchemaVersionBoolean
}
type schemaVersionListItem = {
@as("CreatedTime") createdTime: createdTimestamp,
@as("Status") status: schemaVersionStatus,
@as("VersionNumber") versionNumber: versionLongNumber,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString,
@as("SchemaArn") schemaArn: glueResourceArn
}
type schemaListItem = {
@as("UpdatedTime") updatedTime: updatedTimestamp,
@as("CreatedTime") createdTime: createdTimestamp,
@as("SchemaStatus") schemaStatus: schemaStatus,
@as("Description") description: descriptionString,
@as("SchemaArn") schemaArn: glueResourceArn,
@as("SchemaName") schemaName: schemaRegistryNameString,
@as("RegistryName") registryName: schemaRegistryNameString
}
type schemaId = {
@as("RegistryName") registryName: schemaRegistryNameString,
@as("SchemaName") schemaName: schemaRegistryNameString,
@as("SchemaArn") schemaArn: glueResourceArn
}
type schemaColumn = {
@as("DataType") dataType: columnTypeString,
@as("Name") name: columnNameString
}
type schemaChangePolicy = {
@as("DeleteBehavior") deleteBehavior: deleteBehavior,
@as("UpdateBehavior") updateBehavior: updateBehavior
}
type schedule = {
@as("State") state: scheduleState,
@as("ScheduleExpression") scheduleExpression: cronExpression
}
type s3Encryption = {
@as("KmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("S3EncryptionMode") s3EncryptionMode: s3EncryptionMode
}
type resourceUri = {
@as("Uri") uri: uRI,
@as("ResourceType") resourceType: resourceType
}
type registryListItem = {
@as("UpdatedTime") updatedTime: updatedTimestamp,
@as("CreatedTime") createdTime: createdTimestamp,
@as("Status") status: registryStatus,
@as("Description") description: descriptionString,
@as("RegistryArn") registryArn: glueResourceArn,
@as("RegistryName") registryName: schemaRegistryNameString
}
type registryId = {
@as("RegistryArn") registryArn: glueResourceArn,
@as("RegistryName") registryName: schemaRegistryNameString
}
type recrawlPolicy = {
@as("RecrawlBehavior") recrawlBehavior: recrawlBehavior
}
type publicKeysList = array<genericString>
type propertyPredicate = {
@as("Comparator") comparator: comparator,
@as("Value") value: valueString,
@as("Key") key: valueString
}
type predecessor = {
@as("RunId") runId: idString,
@as("JobName") jobName: nameString
}
type permissionList = array<permission>
type pathList = array<path>
type parametersMap = Js.Dict.t< parametersMapValue>
type otherMetadataValueListItem = {
@as("CreatedTime") createdTime: createdTimestamp,
@as("MetadataValue") metadataValue: metadataValueString
}
type order = {
@as("SortOrder") sortOrder: option<integerFlag>,
@as("Column") column: option<nameString>
}
type orchestrationStringList = array<genericString>
type notificationProperty = {
@as("NotifyDelayAfter") notifyDelayAfter: notifyDelayAfter
}
type nodeIdList = array<nameString>
type nameStringList = array<nameString>
type mongoDBTarget = {
@as("ScanAll") scanAll: nullableBoolean,
@as("Path") path: path,
@as("ConnectionName") connectionName: connectionName
}
type metadataKeyValuePair = {
@as("MetadataValue") metadataValue: metadataValueString,
@as("MetadataKey") metadataKey: metadataKeyString
}
type matchCriteria = array<nameString>
type mappingEntry = {
@as("TargetType") targetType: fieldType,
@as("TargetPath") targetPath: schemaPathString,
@as("TargetTable") targetTable: tableName,
@as("SourceType") sourceType: fieldType,
@as("SourcePath") sourcePath: schemaPathString,
@as("SourceTable") sourceTable: tableName
}
type mapValue = Js.Dict.t< genericString>
type mLUserDataEncryption = {
@as("KmsKeyId") kmsKeyId: nameString,
@as("MlUserDataEncryptionMode") mlUserDataEncryptionMode: option<mLUserDataEncryptionModeString>
}
type longColumnStatisticsData = {
@as("NumberOfDistinctValues") numberOfDistinctValues: option<nonNegativeLong>,
@as("NumberOfNulls") numberOfNulls: option<nonNegativeLong>,
@as("MaximumValue") maximumValue: amazonawsLong,
@as("MinimumValue") minimumValue: amazonawsLong
}
type locationMap = Js.Dict.t< columnValuesString>
type lineageConfiguration = {
@as("CrawlerLineageSettings") crawlerLineageSettings: crawlerLineageSettings
}
type lastCrawlInfo = {
@as("StartTime") startTime: amazonawsTimestamp,
@as("MessagePrefix") messagePrefix: messagePrefix,
@as("LogStream") logStream: logStream,
@as("LogGroup") logGroup: logGroup,
@as("ErrorMessage") errorMessage: descriptionString,
@as("Status") status: lastCrawlStatus
}
type labelingSetGenerationTaskRunProperties = {
@as("OutputS3Path") outputS3Path: uriString
}
type keySchemaElement = {
@as("Type") type_: option<columnTypeString>,
@as("Name") name: option<nameString>
}
type keyList = array<nameString>
type jsonClassifier = {
@as("JsonPath") jsonPath: option<jsonPath>,
@as("Version") version: versionId,
@as("LastUpdated") lastUpdated: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Name") name: option<nameString>
}
type jobNameList = array<nameString>
type jobCommand = {
@as("PythonVersion") pythonVersion: pythonVersionString,
@as("ScriptLocation") scriptLocation: scriptLocationString,
@as("Name") name: genericString
}
type jobBookmarksEncryption = {
@as("KmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("JobBookmarksEncryptionMode") jobBookmarksEncryptionMode: jobBookmarksEncryptionMode
}
type jobBookmarkEntry = {
@as("JobBookmark") jobBookmark: jsonValue,
@as("RunId") runId: runId,
@as("PreviousRunId") previousRunId: runId,
@as("Attempt") attempt: integerValue,
@as("Run") run: integerValue,
@as("Version") version: integerValue,
@as("JobName") jobName: jobName
}
type importLabelsTaskRunProperties = {
@as("Replace") replace: replaceBoolean,
@as("InputS3Path") inputS3Path: uriString
}
type grokClassifier = {
@as("CustomPatterns") customPatterns: customPatterns,
@as("GrokPattern") grokPattern: option<grokPattern>,
@as("Version") version: versionId,
@as("LastUpdated") lastUpdated: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Classification") classification: option<classification>,
@as("Name") name: option<nameString>
}
type glueTable = {
@as("ConnectionName") connectionName: nameString,
@as("CatalogId") catalogId: nameString,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>
}
type gluePolicy = {
@as("UpdateTime") updateTime: amazonawsTimestamp,
@as("CreateTime") createTime: amazonawsTimestamp,
@as("PolicyHash") policyHash: hashString,
@as("PolicyInJson") policyInJson: policyJsonString
}
type getColumnNamesList = array<nameString>
type genericMap = Js.Dict.t< genericString>
type findMatchesTaskRunProperties = {
@as("JobRunId") jobRunId: hashString,
@as("JobName") jobName: nameString,
@as("JobId") jobId: hashString
}
type findMatchesParameters = {
@as("EnforceProvidedLabels") enforceProvidedLabels: nullableBoolean,
@as("AccuracyCostTradeoff") accuracyCostTradeoff: genericBoundedDouble,
@as("PrecisionRecallTradeoff") precisionRecallTradeoff: genericBoundedDouble,
@as("PrimaryKeyColumnName") primaryKeyColumnName: columnNameString
}
type exportLabelsTaskRunProperties = {
@as("OutputS3Path") outputS3Path: uriString
}
type executionProperty = {
@as("MaxConcurrentRuns") maxConcurrentRuns: maxConcurrentRuns
}
type errorDetails = {
@as("ErrorMessage") errorMessage: errorMessageString,
@as("ErrorCode") errorCode: errorCodeString
}
type errorDetail = {
@as("ErrorMessage") errorMessage: descriptionString,
@as("ErrorCode") errorCode: nameString
}
type encryptionAtRest = {
@as("SseAwsKmsKeyId") sseAwsKmsKeyId: nameString,
@as("CatalogEncryptionMode") catalogEncryptionMode: option<catalogEncryptionMode>
}
type edge = {
@as("DestinationId") destinationId: nameString,
@as("SourceId") sourceId: nameString
}
type dynamoDBTarget = {
@as("scanRate") scanRate: nullableDouble,
@as("scanAll") scanAll: nullableBoolean,
@as("Path") path: path
}
type doubleColumnStatisticsData = {
@as("NumberOfDistinctValues") numberOfDistinctValues: option<nonNegativeLong>,
@as("NumberOfNulls") numberOfNulls: option<nonNegativeLong>,
@as("MaximumValue") maximumValue: amazonawsDouble,
@as("MinimumValue") minimumValue: amazonawsDouble
}
type devEndpointNames = array<genericString>
type devEndpointNameList = array<nameString>
type devEndpointCustomLibraries = {
@as("ExtraJarsS3Path") extraJarsS3Path: genericString,
@as("ExtraPythonLibsS3Path") extraPythonLibsS3Path: genericString
}
type deleteConnectionNameList = array<nameString>
type decimalNumber = {
@as("Scale") scale: option<amazonawsInteger>,
@as("UnscaledValue") unscaledValue: option<blob>
}
type dateColumnStatisticsData = {
@as("NumberOfDistinctValues") numberOfDistinctValues: option<nonNegativeLong>,
@as("NumberOfNulls") numberOfNulls: option<nonNegativeLong>,
@as("MaximumValue") maximumValue: amazonawsTimestamp,
@as("MinimumValue") minimumValue: amazonawsTimestamp
}
type databaseIdentifier = {
@as("DatabaseName") databaseName: nameString,
@as("CatalogId") catalogId: catalogIdString
}
type dataLakePrincipal = {
@as("DataLakePrincipalIdentifier") dataLakePrincipalIdentifier: dataLakePrincipalString
}
type csvHeader = array<nameString>
type createXMLClassifierRequest = {
@as("RowTag") rowTag: rowTag,
@as("Name") name: option<nameString>,
@as("Classification") classification: option<classification>
}
type createJsonClassifierRequest = {
@as("JsonPath") jsonPath: option<jsonPath>,
@as("Name") name: option<nameString>
}
type createGrokClassifierRequest = {
@as("CustomPatterns") customPatterns: customPatterns,
@as("GrokPattern") grokPattern: option<grokPattern>,
@as("Name") name: option<nameString>,
@as("Classification") classification: option<classification>
}
type crawlerNameList = array<nameString>
type crawlerMetrics = {
@as("TablesDeleted") tablesDeleted: nonNegativeInteger,
@as("TablesUpdated") tablesUpdated: nonNegativeInteger,
@as("TablesCreated") tablesCreated: nonNegativeInteger,
@as("MedianRuntimeSeconds") medianRuntimeSeconds: nonNegativeDouble,
@as("LastRuntimeSeconds") lastRuntimeSeconds: nonNegativeDouble,
@as("StillEstimating") stillEstimating: amazonawsBoolean,
@as("TimeLeftSeconds") timeLeftSeconds: nonNegativeDouble,
@as("CrawlerName") crawlerName: nameString
}
type crawl = {
@as("LogStream") logStream: logStream,
@as("LogGroup") logGroup: logGroup,
@as("ErrorMessage") errorMessage: descriptionString,
@as("CompletedOn") completedOn: timestampValue,
@as("StartedOn") startedOn: timestampValue,
@as("State") state: crawlState
}
type connectionProperties = Js.Dict.t< valueString>
type connectionPasswordEncryption = {
@as("AwsKmsKeyId") awsKmsKeyId: nameString,
@as("ReturnConnectionPasswordEncrypted") returnConnectionPasswordEncrypted: option<amazonawsBoolean>
}
type confusionMatrix = {
@as("NumFalseNegatives") numFalseNegatives: recordsCount,
@as("NumTrueNegatives") numTrueNegatives: recordsCount,
@as("NumFalsePositives") numFalsePositives: recordsCount,
@as("NumTruePositives") numTruePositives: recordsCount
}
type condition = {
@as("CrawlState") crawlState: crawlState,
@as("CrawlerName") crawlerName: nameString,
@as("State") state: jobRunState,
@as("JobName") jobName: nameString,
@as("LogicalOperator") logicalOperator: logicalOperator
}
type columnValueStringList = array<columnValuesString>
type columnImportance = {
@as("Importance") importance: genericBoundedDouble,
@as("ColumnName") columnName: nameString
}
type codeGenNodeArg = {
@as("Param") param: amazonawsBoolean,
@as("Value") value: option<codeGenArgValue>,
@as("Name") name: option<codeGenArgName>
}
type codeGenEdge = {
@as("TargetParameter") targetParameter: codeGenArgName,
@as("Target") target: option<codeGenIdentifier>,
@as("Source") source: option<codeGenIdentifier>
}
type cloudWatchEncryption = {
@as("KmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("CloudWatchEncryptionMode") cloudWatchEncryptionMode: cloudWatchEncryptionMode
}
type classifierNameList = array<nameString>
type catalogTablesList = array<nameString>
type catalogImportStatus = {
@as("ImportedBy") importedBy: nameString,
@as("ImportTime") importTime: amazonawsTimestamp,
@as("ImportCompleted") importCompleted: amazonawsBoolean
}
type catalogEntry = {
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>
}
type boundedPartitionValueList = array<valueString>
type booleanColumnStatisticsData = {
@as("NumberOfNulls") numberOfNulls: option<nonNegativeLong>,
@as("NumberOfFalses") numberOfFalses: option<nonNegativeLong>,
@as("NumberOfTrues") numberOfTrues: option<nonNegativeLong>
}
type binaryColumnStatisticsData = {
@as("NumberOfNulls") numberOfNulls: option<nonNegativeLong>,
@as("AverageLength") averageLength: option<nonNegativeDouble>,
@as("MaximumLength") maximumLength: option<nonNegativeLong>
}
type batchStopJobRunSuccessfulSubmission = {
@as("JobRunId") jobRunId: idString,
@as("JobName") jobName: nameString
}
type batchStopJobRunJobRunIdList = array<idString>
type batchDeleteTableVersionList = array<versionString>
type batchDeleteTableNameList = array<nameString>
type additionalPlanOptionsMap = Js.Dict.t< genericString>
type updateCsvClassifierRequest = {
@as("AllowSingleColumn") allowSingleColumn: nullableBoolean,
@as("DisableValueTrimming") disableValueTrimming: nullableBoolean,
@as("Header") header: csvHeader,
@as("ContainsHeader") containsHeader: csvHeaderOption,
@as("QuoteSymbol") quoteSymbol: csvQuoteSymbol,
@as("Delimiter") delimiter: csvColumnDelimiter,
@as("Name") name: option<nameString>
}
type transformSchema = array<schemaColumn>
type transformParameters = {
@as("FindMatchesParameters") findMatchesParameters: findMatchesParameters,
@as("TransformType") transformType: option<transformType>
}
type transformEncryption = {
@as("TaskRunSecurityConfigurationName") taskRunSecurityConfigurationName: nameString,
@as("MlUserDataEncryption") mlUserDataEncryption: mLUserDataEncryption
}
type taskRunProperties = {
@as("FindMatchesTaskRunProperties") findMatchesTaskRunProperties: findMatchesTaskRunProperties,
@as("LabelingSetGenerationTaskRunProperties") labelingSetGenerationTaskRunProperties: labelingSetGenerationTaskRunProperties,
@as("ExportLabelsTaskRunProperties") exportLabelsTaskRunProperties: exportLabelsTaskRunProperties,
@as("ImportLabelsTaskRunProperties") importLabelsTaskRunProperties: importLabelsTaskRunProperties,
@as("TaskType") taskType: taskType
}
type tableVersionError = {
@as("ErrorDetail") errorDetail: errorDetail,
@as("VersionId") versionId: versionString,
@as("TableName") tableName: nameString
}
type tableError = {
@as("ErrorDetail") errorDetail: errorDetail,
@as("TableName") tableName: nameString
}
type sortCriteria = array<sortCriterion>
type skewedInfo = {
@as("SkewedColumnValueLocationMaps") skewedColumnValueLocationMaps: locationMap,
@as("SkewedColumnValues") skewedColumnValues: columnValueStringList,
@as("SkewedColumnNames") skewedColumnNames: nameStringList
}
type serDeInfo = {
@as("Parameters") parameters: parametersMap,
@as("SerializationLibrary") serializationLibrary: nameString,
@as("Name") name: nameString
}
type searchPropertyPredicates = array<propertyPredicate>
type schemaVersionList = array<schemaVersionListItem>
type schemaVersionErrorItem = {
@as("ErrorDetails") errorDetails: errorDetails,
@as("VersionNumber") versionNumber: versionLongNumber
}
type schemaReference = {
@as("SchemaVersionNumber") schemaVersionNumber: versionLongNumber,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString,
@as("SchemaId") schemaId: schemaId
}
type schemaListDefinition = array<schemaListItem>
type s3Target = {
@as("ConnectionName") connectionName: connectionName,
@as("Exclusions") exclusions: pathList,
@as("Path") path: path
}
type s3EncryptionList = array<s3Encryption>
type resourceUriList = array<resourceUri>
type registryListDefinition = array<registryListItem>
type principalPermissions = {
@as("Permissions") permissions: permissionList,
@as("Principal") principal: dataLakePrincipal
}
type predecessorList = array<predecessor>
type physicalConnectionRequirements = {
@as("AvailabilityZone") availabilityZone: nameString,
@as("SecurityGroupIdList") securityGroupIdList: securityGroupIdList,
@as("SubnetId") subnetId: nameString
}
type partitionValueList = {
@as("Values") values: option<valueStringList>
}
type partitionIndex = {
@as("IndexName") indexName: option<nameString>,
@as("Keys") keys: option<keyList>
}
type partitionError = {
@as("ErrorDetail") errorDetail: errorDetail,
@as("PartitionValues") partitionValues: valueStringList
}
type otherMetadataValueList = array<otherMetadataValueListItem>
type orderList = array<order>
type mongoDBTargetList = array<mongoDBTarget>
type metadataList = array<metadataKeyValuePair>
type mappingList = array<mappingEntry>
type keySchemaElementList = array<keySchemaElement>
type jdbcTarget = {
@as("Exclusions") exclusions: pathList,
@as("Path") path: path,
@as("ConnectionName") connectionName: connectionName
}
type glueTables = array<glueTable>
type getResourcePoliciesResponseList = array<gluePolicy>
type getConnectionsFilter = {
@as("ConnectionType") connectionType: connectionType,
@as("MatchCriteria") matchCriteria: matchCriteria
}
type errorByName = Js.Dict.t< errorDetail>
type edgeList = array<edge>
type dynamoDBTargetList = array<dynamoDBTarget>
type devEndpoint = {
@as("Arguments") arguments: mapValue,
@as("SecurityConfiguration") securityConfiguration: nameString,
@as("PublicKeys") publicKeys: publicKeysList,
@as("PublicKey") publicKey: genericString,
@as("LastModifiedTimestamp") lastModifiedTimestamp: timestampValue,
@as("CreatedTimestamp") createdTimestamp: timestampValue,
@as("LastUpdateStatus") lastUpdateStatus: genericString,
@as("FailureReason") failureReason: genericString,
@as("ExtraJarsS3Path") extraJarsS3Path: genericString,
@as("ExtraPythonLibsS3Path") extraPythonLibsS3Path: genericString,
@as("VpcId") vpcId: genericString,
@as("AvailabilityZone") availabilityZone: genericString,
@as("NumberOfNodes") numberOfNodes: integerValue,
@as("NumberOfWorkers") numberOfWorkers: nullableInteger,
@as("GlueVersion") glueVersion: glueVersionString,
@as("WorkerType") workerType: workerType,
@as("Status") status: genericString,
@as("PublicAddress") publicAddress: genericString,
@as("ZeppelinRemoteSparkInterpreterPort") zeppelinRemoteSparkInterpreterPort: integerValue,
@as("PrivateAddress") privateAddress: genericString,
@as("YarnEndpointAddress") yarnEndpointAddress: genericString,
@as("SubnetId") subnetId: genericString,
@as("SecurityGroupIds") securityGroupIds: stringList,
@as("RoleArn") roleArn: roleArn,
@as("EndpointName") endpointName: genericString
}
type decimalColumnStatisticsData = {
@as("NumberOfDistinctValues") numberOfDistinctValues: option<nonNegativeLong>,
@as("NumberOfNulls") numberOfNulls: option<nonNegativeLong>,
@as("MaximumValue") maximumValue: decimalNumber,
@as("MinimumValue") minimumValue: decimalNumber
}
type dataCatalogEncryptionSettings = {
@as("ConnectionPasswordEncryption") connectionPasswordEncryption: connectionPasswordEncryption,
@as("EncryptionAtRest") encryptionAtRest: encryptionAtRest
}
type dagEdges = array<codeGenEdge>
type csvClassifier = {
@as("AllowSingleColumn") allowSingleColumn: nullableBoolean,
@as("DisableValueTrimming") disableValueTrimming: nullableBoolean,
@as("Header") header: csvHeader,
@as("ContainsHeader") containsHeader: csvHeaderOption,
@as("QuoteSymbol") quoteSymbol: csvQuoteSymbol,
@as("Delimiter") delimiter: csvColumnDelimiter,
@as("Version") version: versionId,
@as("LastUpdated") lastUpdated: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Name") name: option<nameString>
}
type createCsvClassifierRequest = {
@as("AllowSingleColumn") allowSingleColumn: nullableBoolean,
@as("DisableValueTrimming") disableValueTrimming: nullableBoolean,
@as("Header") header: csvHeader,
@as("ContainsHeader") containsHeader: csvHeaderOption,
@as("QuoteSymbol") quoteSymbol: csvQuoteSymbol,
@as("Delimiter") delimiter: csvColumnDelimiter,
@as("Name") name: option<nameString>
}
type crawlerMetricsList = array<crawlerMetrics>
type crawlList = array<crawl>
type connectionsList = {
@as("Connections") connections: orchestrationStringList
}
type conditionList = array<condition>
type columnImportanceList = array<columnImportance>
type columnError = {
@as("Error") error: errorDetail,
@as("ColumnName") columnName: nameString
}
type column = {
@as("Parameters") parameters: parametersMap,
@as("Comment") comment: commentString,
@as("Type") type_: columnTypeString,
@as("Name") name: option<nameString>
}
type codeGenNodeArgs = array<codeGenNodeArg>
type catalogTarget = {
@as("Tables") tables: option<catalogTablesList>,
@as("DatabaseName") databaseName: option<nameString>
}
type catalogEntries = array<catalogEntry>
type batchUpdatePartitionFailureEntry = {
@as("ErrorDetail") errorDetail: errorDetail,
@as("PartitionValueList") partitionValueList: boundedPartitionValueList
}
type batchStopJobRunSuccessfulSubmissionList = array<batchStopJobRunSuccessfulSubmission>
type batchStopJobRunError = {
@as("ErrorDetail") errorDetail: errorDetail,
@as("JobRunId") jobRunId: idString,
@as("JobName") jobName: nameString
}
type action = {
@as("CrawlerName") crawlerName: nameString,
@as("NotificationProperty") notificationProperty: notificationProperty,
@as("SecurityConfiguration") securityConfiguration: nameString,
@as("Timeout") timeout: timeout,
@as("Arguments") arguments: genericMap,
@as("JobName") jobName: nameString
}
type userDefinedFunctionInput = {
@as("ResourceUris") resourceUris: resourceUriList,
@as("OwnerType") ownerType: principalType,
@as("OwnerName") ownerName: nameString,
@as("ClassName") className: nameString,
@as("FunctionName") functionName: nameString
}
type userDefinedFunction = {
@as("CatalogId") catalogId: catalogIdString,
@as("ResourceUris") resourceUris: resourceUriList,
@as("CreateTime") createTime: amazonawsTimestamp,
@as("OwnerType") ownerType: principalType,
@as("OwnerName") ownerName: nameString,
@as("ClassName") className: nameString,
@as("DatabaseName") databaseName: nameString,
@as("FunctionName") functionName: nameString
}
type transformFilterCriteria = {
@as("Schema") schema: transformSchema,
@as("LastModifiedAfter") lastModifiedAfter: amazonawsTimestamp,
@as("LastModifiedBefore") lastModifiedBefore: amazonawsTimestamp,
@as("CreatedAfter") createdAfter: amazonawsTimestamp,
@as("CreatedBefore") createdBefore: amazonawsTimestamp,
@as("GlueVersion") glueVersion: glueVersionString,
@as("Status") status: transformStatusType,
@as("TransformType") transformType: transformType,
@as("Name") name: nameString
}
type taskRun = {
@as("ExecutionTime") executionTime: executionTime,
@as("CompletedOn") completedOn: amazonawsTimestamp,
@as("LastModifiedOn") lastModifiedOn: amazonawsTimestamp,
@as("StartedOn") startedOn: amazonawsTimestamp,
@as("ErrorString") errorString: genericString,
@as("Properties") properties: taskRunProperties,
@as("LogGroupName") logGroupName: genericString,
@as("Status") status: taskStatusType,
@as("TaskRunId") taskRunId: hashString,
@as("TransformId") transformId: hashString
}
type tableVersionErrors = array<tableVersionError>
type tableErrors = array<tableError>
type schemaVersionErrorList = array<schemaVersionErrorItem>
type s3TargetList = array<s3Target>
type principalPermissionsList = array<principalPermissions>
type predicate = {
@as("Conditions") conditions: conditionList,
@as("Logical") logical: logical
}
type partitionIndexList = array<partitionIndex>
type partitionErrors = array<partitionError>
type metadataInfo = {
@as("OtherMetadataValueList") otherMetadataValueList: otherMetadataValueList,
@as("CreatedTime") createdTime: createdTimestamp,
@as("MetadataValue") metadataValue: metadataValueString
}
type location = {
@as("DynamoDB") dynamoDB: codeGenNodeArgs,
@as("S3") s3: codeGenNodeArgs,
@as("Jdbc") jdbc: codeGenNodeArgs
}
type jobUpdate = {
@as("GlueVersion") glueVersion: glueVersionString,
@as("NotificationProperty") notificationProperty: notificationProperty,
@as("SecurityConfiguration") securityConfiguration: nameString,
@as("NumberOfWorkers") numberOfWorkers: nullableInteger,
@as("WorkerType") workerType: workerType,
@as("MaxCapacity") maxCapacity: nullableDouble,
@as("Timeout") timeout: timeout,
@as("AllocatedCapacity") allocatedCapacity: integerValue,
@as("MaxRetries") maxRetries: maxRetries,
@as("Connections") connections: connectionsList,
@as("NonOverridableArguments") nonOverridableArguments: genericMap,
@as("DefaultArguments") defaultArguments: genericMap,
@as("Command") command: jobCommand,
@as("ExecutionProperty") executionProperty: executionProperty,
@as("Role") role: roleString,
@as("LogUri") logUri: uriString,
@as("Description") description: descriptionString
}
type jobRun = {
@as("GlueVersion") glueVersion: glueVersionString,
@as("NotificationProperty") notificationProperty: notificationProperty,
@as("LogGroupName") logGroupName: genericString,
@as("SecurityConfiguration") securityConfiguration: nameString,
@as("NumberOfWorkers") numberOfWorkers: nullableInteger,
@as("WorkerType") workerType: workerType,
@as("MaxCapacity") maxCapacity: nullableDouble,
@as("Timeout") timeout: timeout,
@as("ExecutionTime") executionTime: executionTime,
@as("AllocatedCapacity") allocatedCapacity: integerValue,
@as("PredecessorRuns") predecessorRuns: predecessorList,
@as("ErrorMessage") errorMessage: errorString,
@as("Arguments") arguments: genericMap,
@as("JobRunState") jobRunState: jobRunState,
@as("CompletedOn") completedOn: timestampValue,
@as("LastModifiedOn") lastModifiedOn: timestampValue,
@as("StartedOn") startedOn: timestampValue,
@as("JobName") jobName: nameString,
@as("TriggerName") triggerName: nameString,
@as("PreviousRunId") previousRunId: idString,
@as("Attempt") attempt: attemptCount,
@as("Id") id: idString
}
type job = {
@as("GlueVersion") glueVersion: glueVersionString,
@as("NotificationProperty") notificationProperty: notificationProperty,
@as("SecurityConfiguration") securityConfiguration: nameString,
@as("NumberOfWorkers") numberOfWorkers: nullableInteger,
@as("WorkerType") workerType: workerType,
@as("MaxCapacity") maxCapacity: nullableDouble,
@as("Timeout") timeout: timeout,
@as("AllocatedCapacity") allocatedCapacity: integerValue,
@as("MaxRetries") maxRetries: maxRetries,
@as("Connections") connections: connectionsList,
@as("NonOverridableArguments") nonOverridableArguments: genericMap,
@as("DefaultArguments") defaultArguments: genericMap,
@as("Command") command: jobCommand,
@as("ExecutionProperty") executionProperty: executionProperty,
@as("LastModifiedOn") lastModifiedOn: timestampValue,
@as("CreatedOn") createdOn: timestampValue,
@as("Role") role: roleString,
@as("LogUri") logUri: uriString,
@as("Description") description: descriptionString,
@as("Name") name: nameString
}
type jdbcTargetList = array<jdbcTarget>
type findMatchesMetrics = {
@as("ColumnImportances") columnImportances: columnImportanceList,
@as("ConfusionMatrix") confusionMatrix: confusionMatrix,
@as("F1") f1: genericBoundedDouble,
@as("Recall") recall: genericBoundedDouble,
@as("Precision") precision: genericBoundedDouble,
@as("AreaUnderPRCurve") areaUnderPRCurve: genericBoundedDouble
}
type encryptionConfiguration = {
@as("JobBookmarksEncryption") jobBookmarksEncryption: jobBookmarksEncryption,
@as("CloudWatchEncryption") cloudWatchEncryption: cloudWatchEncryption,
@as("S3Encryption") s3Encryption: s3EncryptionList
}
type devEndpointList = array<devEndpoint>
type crawlerNodeDetails = {
@as("Crawls") crawls: crawlList
}
type connectionInput = {
@as("PhysicalConnectionRequirements") physicalConnectionRequirements: physicalConnectionRequirements,
@as("ConnectionProperties") connectionProperties: option<connectionProperties>,
@as("MatchCriteria") matchCriteria: matchCriteria,
@as("ConnectionType") connectionType: option<connectionType>,
@as("Description") description: descriptionString,
@as("Name") name: option<nameString>
}
type connection = {
@as("LastUpdatedBy") lastUpdatedBy: nameString,
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("PhysicalConnectionRequirements") physicalConnectionRequirements: physicalConnectionRequirements,
@as("ConnectionProperties") connectionProperties: connectionProperties,
@as("MatchCriteria") matchCriteria: matchCriteria,
@as("ConnectionType") connectionType: connectionType,
@as("Description") description: descriptionString,
@as("Name") name: nameString
}
type columnStatisticsData = {
@as("BinaryColumnStatisticsData") binaryColumnStatisticsData: binaryColumnStatisticsData,
@as("StringColumnStatisticsData") stringColumnStatisticsData: stringColumnStatisticsData,
@as("LongColumnStatisticsData") longColumnStatisticsData: longColumnStatisticsData,
@as("DoubleColumnStatisticsData") doubleColumnStatisticsData: doubleColumnStatisticsData,
@as("DecimalColumnStatisticsData") decimalColumnStatisticsData: decimalColumnStatisticsData,
@as("DateColumnStatisticsData") dateColumnStatisticsData: dateColumnStatisticsData,
@as("BooleanColumnStatisticsData") booleanColumnStatisticsData: booleanColumnStatisticsData,
@as("Type") type_: option<columnStatisticsType>
}
type columnList = array<column>
type columnErrors = array<columnError>
type codeGenNode = {
@as("LineNumber") lineNumber: amazonawsInteger,
@as("Args") args: option<codeGenNodeArgs>,
@as("NodeType") nodeType: option<codeGenNodeType>,
@as("Id") id: option<codeGenIdentifier>
}
type classifier = {
@as("CsvClassifier") csvClassifier: csvClassifier,
@as("JsonClassifier") jsonClassifier: jsonClassifier,
@as("XMLClassifier") xMLClassifier: xMLClassifier,
@as("GrokClassifier") grokClassifier: grokClassifier
}
type catalogTargetList = array<catalogTarget>
type batchUpdatePartitionFailureList = array<batchUpdatePartitionFailureEntry>
type batchStopJobRunErrorList = array<batchStopJobRunError>
type batchGetPartitionValueList = array<partitionValueList>
type batchDeletePartitionValueList = array<partitionValueList>
type backfillErroredPartitionsList = array<partitionValueList>
type actionList = array<action>
type userDefinedFunctionList = array<userDefinedFunction>
type triggerUpdate = {
@as("Predicate") predicate: predicate,
@as("Actions") actions: actionList,
@as("Schedule") schedule: genericString,
@as("Description") description: descriptionString,
@as("Name") name: nameString
}
type trigger = {
@as("Predicate") predicate: predicate,
@as("Actions") actions: actionList,
@as("Schedule") schedule: genericString,
@as("Description") description: descriptionString,
@as("State") state: triggerState,
@as("Type") type_: triggerType,
@as("Id") id: idString,
@as("WorkflowName") workflowName: nameString,
@as("Name") name: nameString
}
type taskRunList = array<taskRun>
type storageDescriptor = {
@as("SchemaReference") schemaReference: schemaReference,
@as("StoredAsSubDirectories") storedAsSubDirectories: amazonawsBoolean,
@as("SkewedInfo") skewedInfo: skewedInfo,
@as("Parameters") parameters: parametersMap,
@as("SortColumns") sortColumns: orderList,
@as("BucketColumns") bucketColumns: nameStringList,
@as("SerdeInfo") serdeInfo: serDeInfo,
@as("NumberOfBuckets") numberOfBuckets: amazonawsInteger,
@as("Compressed") compressed: amazonawsBoolean,
@as("OutputFormat") outputFormat: formatString,
@as("InputFormat") inputFormat: formatString,
@as("Location") location: locationString,
@as("Columns") columns: columnList
}
type securityConfiguration = {
@as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("CreatedTimeStamp") createdTimeStamp: timestampValue,
@as("Name") name: nameString
}
type metadataInfoMap = Js.Dict.t< metadataInfo>
type jobRunList = array<jobRun>
type jobList = array<job>
type evaluationMetrics = {
@as("FindMatchesMetrics") findMatchesMetrics: findMatchesMetrics,
@as("TransformType") transformType: option<transformType>
}
type databaseInput = {
@as("TargetDatabase") targetDatabase: databaseIdentifier,
@as("CreateTableDefaultPermissions") createTableDefaultPermissions: principalPermissionsList,
@as("Parameters") parameters: parametersMap,
@as("LocationUri") locationUri: uRI,
@as("Description") description: descriptionString,
@as("Name") name: option<nameString>
}
type database = {
@as("CatalogId") catalogId: catalogIdString,
@as("TargetDatabase") targetDatabase: databaseIdentifier,
@as("CreateTableDefaultPermissions") createTableDefaultPermissions: principalPermissionsList,
@as("CreateTime") createTime: amazonawsTimestamp,
@as("Parameters") parameters: parametersMap,
@as("LocationUri") locationUri: uRI,
@as("Description") description: descriptionString,
@as("Name") name: option<nameString>
}
type dagNodes = array<codeGenNode>
type crawlerTargets = {
@as("CatalogTargets") catalogTargets: catalogTargetList,
@as("DynamoDBTargets") dynamoDBTargets: dynamoDBTargetList,
@as("MongoDBTargets") mongoDBTargets: mongoDBTargetList,
@as("JdbcTargets") jdbcTargets: jdbcTargetList,
@as("S3Targets") s3Targets: s3TargetList
}
type connectionList = array<connection>
type columnStatistics = {
@as("StatisticsData") statisticsData: option<columnStatisticsData>,
@as("AnalyzedTime") analyzedTime: option<amazonawsTimestamp>,
@as("ColumnType") columnType: option<typeString>,
@as("ColumnName") columnName: option<nameString>
}
type classifierList = array<classifier>
type backfillError = {
@as("Partitions") partitions: backfillErroredPartitionsList,
@as("Code") code: backfillErrorCode
}
type updateColumnStatisticsList = array<columnStatistics>
type triggerNodeDetails = {
@as("Trigger") trigger: trigger
}
type triggerList = array<trigger>
type tableInput = {
@as("TargetTable") targetTable: tableIdentifier,
@as("Parameters") parameters: parametersMap,
@as("TableType") tableType: tableTypeString,
@as("ViewExpandedText") viewExpandedText: viewTextString,
@as("ViewOriginalText") viewOriginalText: viewTextString,
@as("PartitionKeys") partitionKeys: columnList,
@as("StorageDescriptor") storageDescriptor: storageDescriptor,
@as("Retention") retention: nonNegativeInteger,
@as("LastAnalyzedTime") lastAnalyzedTime: amazonawsTimestamp,
@as("LastAccessTime") lastAccessTime: amazonawsTimestamp,
@as("Owner") owner: nameString,
@as("Description") description: descriptionString,
@as("Name") name: option<nameString>
}
type table = {
@as("CatalogId") catalogId: catalogIdString,
@as("TargetTable") targetTable: tableIdentifier,
@as("IsRegisteredWithLakeFormation") isRegisteredWithLakeFormation: amazonawsBoolean,
@as("CreatedBy") createdBy: nameString,
@as("Parameters") parameters: parametersMap,
@as("TableType") tableType: tableTypeString,
@as("ViewExpandedText") viewExpandedText: viewTextString,
@as("ViewOriginalText") viewOriginalText: viewTextString,
@as("PartitionKeys") partitionKeys: columnList,
@as("StorageDescriptor") storageDescriptor: storageDescriptor,
@as("Retention") retention: nonNegativeInteger,
@as("LastAnalyzedTime") lastAnalyzedTime: amazonawsTimestamp,
@as("LastAccessTime") lastAccessTime: amazonawsTimestamp,
@as("UpdateTime") updateTime: amazonawsTimestamp,
@as("CreateTime") createTime: amazonawsTimestamp,
@as("Owner") owner: nameString,
@as("Description") description: descriptionString,
@as("DatabaseName") databaseName: nameString,
@as("Name") name: option<nameString>
}
type securityConfigurationList = array<securityConfiguration>
type partitionInput = {
@as("LastAnalyzedTime") lastAnalyzedTime: amazonawsTimestamp,
@as("Parameters") parameters: parametersMap,
@as("StorageDescriptor") storageDescriptor: storageDescriptor,
@as("LastAccessTime") lastAccessTime: amazonawsTimestamp,
@as("Values") values: valueStringList
}
type partition = {
@as("CatalogId") catalogId: catalogIdString,
@as("LastAnalyzedTime") lastAnalyzedTime: amazonawsTimestamp,
@as("Parameters") parameters: parametersMap,
@as("StorageDescriptor") storageDescriptor: storageDescriptor,
@as("LastAccessTime") lastAccessTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("TableName") tableName: nameString,
@as("DatabaseName") databaseName: nameString,
@as("Values") values: valueStringList
}
type mLTransform = {
@as("TransformEncryption") transformEncryption: transformEncryption,
@as("MaxRetries") maxRetries: nullableInteger,
@as("Timeout") timeout: timeout,
@as("NumberOfWorkers") numberOfWorkers: nullableInteger,
@as("WorkerType") workerType: workerType,
@as("MaxCapacity") maxCapacity: nullableDouble,
@as("GlueVersion") glueVersion: glueVersionString,
@as("Role") role: roleString,
@as("Schema") schema: transformSchema,
@as("LabelCount") labelCount: labelCount,
@as("EvaluationMetrics") evaluationMetrics: evaluationMetrics,
@as("Parameters") parameters: transformParameters,
@as("InputRecordTables") inputRecordTables: glueTables,
@as("LastModifiedOn") lastModifiedOn: amazonawsTimestamp,
@as("CreatedOn") createdOn: amazonawsTimestamp,
@as("Status") status: transformStatusType,
@as("Description") description: descriptionString,
@as("Name") name: nameString,
@as("TransformId") transformId: hashString
}
type jobNodeDetails = {
@as("JobRuns") jobRuns: jobRunList
}
type databaseList = array<database>
type crawler = {
@as("CrawlerSecurityConfiguration") crawlerSecurityConfiguration: crawlerSecurityConfiguration,
@as("Configuration") configuration: crawlerConfiguration,
@as("Version") version: versionId,
@as("LastCrawl") lastCrawl: lastCrawlInfo,
@as("LastUpdated") lastUpdated: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("CrawlElapsedTime") crawlElapsedTime: millisecondsCount,
@as("Schedule") schedule: schedule,
@as("TablePrefix") tablePrefix: tablePrefix,
@as("State") state: crawlerState,
@as("LineageConfiguration") lineageConfiguration: lineageConfiguration,
@as("SchemaChangePolicy") schemaChangePolicy: schemaChangePolicy,
@as("RecrawlPolicy") recrawlPolicy: recrawlPolicy,
@as("Classifiers") classifiers: classifierNameList,
@as("Description") description: descriptionString,
@as("DatabaseName") databaseName: databaseName,
@as("Targets") targets: crawlerTargets,
@as("Role") role: role,
@as("Name") name: nameString
}
type columnStatisticsList = array<columnStatistics>
type columnStatisticsError = {
@as("Error") error: errorDetail,
@as("ColumnStatistics") columnStatistics: columnStatistics
}
type backfillErrors = array<backfillError>
type transformList = array<mLTransform>
type tableVersion = {
@as("VersionId") versionId: versionString,
@as("Table") table: table
}
type tableList = array<table>
type partitionList = array<partition>
type partitionInputList = array<partitionInput>
type partitionIndexDescriptor = {
@as("BackfillErrors") backfillErrors: backfillErrors,
@as("IndexStatus") indexStatus: option<partitionIndexStatus>,
@as("Keys") keys: option<keySchemaElementList>,
@as("IndexName") indexName: option<nameString>
}
type node = {
@as("CrawlerDetails") crawlerDetails: crawlerNodeDetails,
@as("JobDetails") jobDetails: jobNodeDetails,
@as("TriggerDetails") triggerDetails: triggerNodeDetails,
@as("UniqueId") uniqueId: nameString,
@as("Name") name: nameString,
@as("Type") type_: nodeType
}
type crawlerList = array<crawler>
type columnStatisticsErrors = array<columnStatisticsError>
type batchUpdatePartitionRequestEntry = {
@as("PartitionInput") partitionInput: option<partitionInput>,
@as("PartitionValueList") partitionValueList: option<boundedPartitionValueList>
}
type partitionIndexDescriptorList = array<partitionIndexDescriptor>
type nodeList = array<node>
type getTableVersionsList = array<tableVersion>
type batchUpdatePartitionRequestEntryList = array<batchUpdatePartitionRequestEntry>
type workflowGraph = {
@as("Edges") edges: edgeList,
@as("Nodes") nodes: nodeList
}
type workflowRun = {
@as("Graph") graph: workflowGraph,
@as("Statistics") statistics: workflowRunStatistics,
@as("ErrorMessage") errorMessage: errorString,
@as("Status") status: workflowRunStatus,
@as("CompletedOn") completedOn: timestampValue,
@as("StartedOn") startedOn: timestampValue,
@as("WorkflowRunProperties") workflowRunProperties: workflowRunProperties,
@as("PreviousRunId") previousRunId: idString,
@as("WorkflowRunId") workflowRunId: idString,
@as("Name") name: nameString
}
type workflowRuns = array<workflowRun>
type workflow = {
@as("MaxConcurrentRuns") maxConcurrentRuns: nullableInteger,
@as("Graph") graph: workflowGraph,
@as("LastRun") lastRun: workflowRun,
@as("LastModifiedOn") lastModifiedOn: timestampValue,
@as("CreatedOn") createdOn: timestampValue,
@as("DefaultRunProperties") defaultRunProperties: workflowRunProperties,
@as("Description") description: genericString,
@as("Name") name: nameString
}
type workflows = array<workflow>
type clientType;
@module("@aws-sdk/client-glue") @new external createClient: unit => clientType = "GlueClient";
module UpdateCrawlerSchedule = {
  type t;
  type request = {
@as("Schedule") schedule: cronExpression,
@as("CrawlerName") crawlerName: option<nameString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateCrawlerScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopWorkflowRun = {
  type t;
  type request = {
@as("RunId") runId: option<idString>,
@as("Name") name: option<nameString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StopWorkflowRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopTrigger = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = {
@as("Name") name: nameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StopTriggerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopCrawlerSchedule = {
  type t;
  type request = {
@as("CrawlerName") crawlerName: option<nameString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StopCrawlerScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopCrawler = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StopCrawlerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartWorkflowRun = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = {
@as("RunId") runId: idString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StartWorkflowRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartTrigger = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = {
@as("Name") name: nameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StartTriggerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartMLLabelingSetGenerationTaskRun = {
  type t;
  type request = {
@as("OutputS3Path") outputS3Path: option<uriString>,
@as("TransformId") transformId: option<hashString>
}
  type response = {
@as("TaskRunId") taskRunId: hashString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StartMLLabelingSetGenerationTaskRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartMLEvaluationTaskRun = {
  type t;
  type request = {
@as("TransformId") transformId: option<hashString>
}
  type response = {
@as("TaskRunId") taskRunId: hashString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StartMLEvaluationTaskRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartImportLabelsTaskRun = {
  type t;
  type request = {
@as("ReplaceAllLabels") replaceAllLabels: replaceBoolean,
@as("InputS3Path") inputS3Path: option<uriString>,
@as("TransformId") transformId: option<hashString>
}
  type response = {
@as("TaskRunId") taskRunId: hashString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StartImportLabelsTaskRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartExportLabelsTaskRun = {
  type t;
  type request = {
@as("OutputS3Path") outputS3Path: option<uriString>,
@as("TransformId") transformId: option<hashString>
}
  type response = {
@as("TaskRunId") taskRunId: hashString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StartExportLabelsTaskRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartCrawlerSchedule = {
  type t;
  type request = {
@as("CrawlerName") crawlerName: option<nameString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StartCrawlerScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartCrawler = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StartCrawlerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutResourcePolicy = {
  type t;
  type request = {
@as("EnableHybrid") enableHybrid: enableHybridValues,
@as("PolicyExistsCondition") policyExistsCondition: existCondition,
@as("PolicyHashCondition") policyHashCondition: hashString,
@as("ResourceArn") resourceArn: glueResourceArn,
@as("PolicyInJson") policyInJson: option<policyJsonString>
}
  type response = {
@as("PolicyHash") policyHash: hashString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "PutResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportCatalogToGlue = {
  type t;
  type request = {
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "ImportCatalogToGlueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourcePolicy = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: glueResourceArn
}
  type response = {
@as("UpdateTime") updateTime: amazonawsTimestamp,
@as("CreateTime") createTime: amazonawsTimestamp,
@as("PolicyHash") policyHash: hashString,
@as("PolicyInJson") policyInJson: policyJsonString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWorkflow = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = {
@as("Name") name: nameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteWorkflowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUserDefinedFunction = {
  type t;
  type request = {
@as("FunctionName") functionName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteUserDefinedFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTrigger = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = {
@as("Name") name: nameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteTriggerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTableVersion = {
  type t;
  type request = {
@as("VersionId") versionId: option<versionString>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteTableVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTable = {
  type t;
  type request = {
@as("Name") name: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSecurityConfiguration = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteSecurityConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResourcePolicy = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: glueResourceArn,
@as("PolicyHashCondition") policyHashCondition: hashString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePartitionIndex = {
  type t;
  type request = {
@as("IndexName") indexName: option<nameString>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeletePartitionIndexCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMLTransform = {
  type t;
  type request = {
@as("TransformId") transformId: option<hashString>
}
  type response = {
@as("TransformId") transformId: hashString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteMLTransformCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteJob = {
  type t;
  type request = {
@as("JobName") jobName: option<nameString>
}
  type response = {
@as("JobName") jobName: nameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDevEndpoint = {
  type t;
  type request = {
@as("EndpointName") endpointName: option<genericString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteDevEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDatabase = {
  type t;
  type request = {
@as("Name") name: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCrawler = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteCrawlerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
@as("ConnectionName") connectionName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteColumnStatisticsForTable = {
  type t;
  type request = {
@as("ColumnName") columnName: option<nameString>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteColumnStatisticsForTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteClassifier = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteClassifierCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CheckSchemaVersionValidity = {
  type t;
  type request = {
@as("SchemaDefinition") schemaDefinition: option<schemaDefinitionString>,
@as("DataFormat") dataFormat: option<dataFormat>
}
  type response = {
@as("Error") error: schemaValidationError,
@as("Valid") valid: isVersionValid
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CheckSchemaVersionValidityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelMLTaskRun = {
  type t;
  type request = {
@as("TaskRunId") taskRunId: option<hashString>,
@as("TransformId") transformId: option<hashString>
}
  type response = {
@as("Status") status: taskStatusType,
@as("TaskRunId") taskRunId: hashString,
@as("TransformId") transformId: hashString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CancelMLTaskRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateWorkflow = {
  type t;
  type request = {
@as("MaxConcurrentRuns") maxConcurrentRuns: nullableInteger,
@as("DefaultRunProperties") defaultRunProperties: workflowRunProperties,
@as("Description") description: genericString,
@as("Name") name: option<nameString>
}
  type response = {
@as("Name") name: nameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateWorkflowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSchema = {
  type t;
  type request = {
@as("Description") description: descriptionString,
@as("Compatibility") compatibility: compatibility,
@as("SchemaVersionNumber") schemaVersionNumber: schemaVersionNumber,
@as("SchemaId") schemaId: option<schemaId>
}
  type response = {
@as("RegistryName") registryName: schemaRegistryNameString,
@as("SchemaName") schemaName: schemaRegistryNameString,
@as("SchemaArn") schemaArn: glueResourceArn
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRegistry = {
  type t;
  type request = {
@as("Description") description: option<descriptionString>,
@as("RegistryId") registryId: option<registryId>
}
  type response = {
@as("RegistryArn") registryArn: glueResourceArn,
@as("RegistryName") registryName: schemaRegistryNameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateRegistryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDevEndpoint = {
  type t;
  type request = {
@as("AddArguments") addArguments: mapValue,
@as("DeleteArguments") deleteArguments: stringList,
@as("UpdateEtlLibraries") updateEtlLibraries: booleanValue,
@as("CustomLibraries") customLibraries: devEndpointCustomLibraries,
@as("DeletePublicKeys") deletePublicKeys: publicKeysList,
@as("AddPublicKeys") addPublicKeys: publicKeysList,
@as("PublicKey") publicKey: genericString,
@as("EndpointName") endpointName: option<genericString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateDevEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagsToRemove") tagsToRemove: option<tagKeysList>,
@as("ResourceArn") resourceArn: option<glueResourceArn>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("TagsToAdd") tagsToAdd: option<tagsMap>,
@as("ResourceArn") resourceArn: option<glueResourceArn>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartJobRun = {
  type t;
  type request = {
@as("NumberOfWorkers") numberOfWorkers: nullableInteger,
@as("WorkerType") workerType: workerType,
@as("NotificationProperty") notificationProperty: notificationProperty,
@as("SecurityConfiguration") securityConfiguration: nameString,
@as("MaxCapacity") maxCapacity: nullableDouble,
@as("Timeout") timeout: timeout,
@as("AllocatedCapacity") allocatedCapacity: integerValue,
@as("Arguments") arguments: genericMap,
@as("JobRunId") jobRunId: idString,
@as("JobName") jobName: option<nameString>
}
  type response = {
@as("JobRunId") jobRunId: idString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "StartJobRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResumeWorkflowRun = {
  type t;
  type request = {
@as("NodeIds") nodeIds: option<nodeIdList>,
@as("RunId") runId: option<idString>,
@as("Name") name: option<nameString>
}
  type response = {
@as("NodeIds") nodeIds: nodeIdList,
@as("RunId") runId: idString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "ResumeWorkflowRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetJobBookmark = {
  type t;
  type request = {
@as("RunId") runId: runId,
@as("JobName") jobName: option<jobName>
}
  type response = {
@as("JobBookmarkEntry") jobBookmarkEntry: jobBookmarkEntry
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "ResetJobBookmarkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveSchemaVersionMetadata = {
  type t;
  type request = {
@as("MetadataKeyValue") metadataKeyValue: option<metadataKeyValuePair>,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString,
@as("SchemaVersionNumber") schemaVersionNumber: schemaVersionNumber,
@as("SchemaId") schemaId: schemaId
}
  type response = {
@as("MetadataValue") metadataValue: metadataValueString,
@as("MetadataKey") metadataKey: metadataKeyString,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString,
@as("VersionNumber") versionNumber: versionLongNumber,
@as("LatestVersion") latestVersion: latestSchemaVersionBoolean,
@as("RegistryName") registryName: schemaRegistryNameString,
@as("SchemaName") schemaName: schemaRegistryNameString,
@as("SchemaArn") schemaArn: glueResourceArn
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "RemoveSchemaVersionMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterSchemaVersion = {
  type t;
  type request = {
@as("SchemaDefinition") schemaDefinition: option<schemaDefinitionString>,
@as("SchemaId") schemaId: option<schemaId>
}
  type response = {
@as("Status") status: schemaVersionStatus,
@as("VersionNumber") versionNumber: versionLongNumber,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "RegisterSchemaVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutWorkflowRunProperties = {
  type t;
  type request = {
@as("RunProperties") runProperties: option<workflowRunProperties>,
@as("RunId") runId: option<idString>,
@as("Name") name: option<nameString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "PutWorkflowRunPropertiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutSchemaVersionMetadata = {
  type t;
  type request = {
@as("MetadataKeyValue") metadataKeyValue: option<metadataKeyValuePair>,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString,
@as("SchemaVersionNumber") schemaVersionNumber: schemaVersionNumber,
@as("SchemaId") schemaId: schemaId
}
  type response = {
@as("MetadataValue") metadataValue: metadataValueString,
@as("MetadataKey") metadataKey: metadataKeyString,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString,
@as("VersionNumber") versionNumber: versionLongNumber,
@as("LatestVersion") latestVersion: latestSchemaVersionBoolean,
@as("RegistryName") registryName: schemaRegistryNameString,
@as("SchemaName") schemaName: schemaRegistryNameString,
@as("SchemaArn") schemaArn: glueResourceArn
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "PutSchemaVersionMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWorkflows = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: genericString
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Workflows") workflows: workflowNames
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "ListWorkflowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTriggers = {
  type t;
  type request = {
@as("Tags") tags: tagsMap,
@as("MaxResults") maxResults: pageSize,
@as("DependentJobName") dependentJobName: nameString,
@as("NextToken") nextToken: genericString
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("TriggerNames") triggerNames: triggerNameList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "ListTriggersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
@as("Tags") tags: tagsMap,
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: genericString
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("JobNames") jobNames: jobNameList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "ListJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDevEndpoints = {
  type t;
  type request = {
@as("Tags") tags: tagsMap,
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: genericString
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("DevEndpointNames") devEndpointNames: devEndpointNameList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "ListDevEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCrawlers = {
  type t;
  type request = {
@as("Tags") tags: tagsMap,
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: pageSize
}
  type response = {
@as("NextToken") nextToken: token,
@as("CrawlerNames") crawlerNames: crawlerNameList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "ListCrawlersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWorkflowRunProperties = {
  type t;
  type request = {
@as("RunId") runId: option<idString>,
@as("Name") name: option<nameString>
}
  type response = {
@as("RunProperties") runProperties: workflowRunProperties
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetWorkflowRunPropertiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTags = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<glueResourceArn>
}
  type response = {
@as("Tags") tags: tagsMap
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSchemaVersionsDiff = {
  type t;
  type request = {
@as("SchemaDiffType") schemaDiffType: option<schemaDiffType>,
@as("SecondSchemaVersionNumber") secondSchemaVersionNumber: option<schemaVersionNumber>,
@as("FirstSchemaVersionNumber") firstSchemaVersionNumber: option<schemaVersionNumber>,
@as("SchemaId") schemaId: option<schemaId>
}
  type response = {
@as("Diff") diff: schemaDefinitionDiff
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetSchemaVersionsDiffCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSchemaVersion = {
  type t;
  type request = {
@as("SchemaVersionNumber") schemaVersionNumber: schemaVersionNumber,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString,
@as("SchemaId") schemaId: schemaId
}
  type response = {
@as("CreatedTime") createdTime: createdTimestamp,
@as("Status") status: schemaVersionStatus,
@as("VersionNumber") versionNumber: versionLongNumber,
@as("SchemaArn") schemaArn: glueResourceArn,
@as("DataFormat") dataFormat: dataFormat,
@as("SchemaDefinition") schemaDefinition: schemaDefinitionString,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetSchemaVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSchemaByDefinition = {
  type t;
  type request = {
@as("SchemaDefinition") schemaDefinition: option<schemaDefinitionString>,
@as("SchemaId") schemaId: option<schemaId>
}
  type response = {
@as("CreatedTime") createdTime: createdTimestamp,
@as("Status") status: schemaVersionStatus,
@as("DataFormat") dataFormat: dataFormat,
@as("SchemaArn") schemaArn: glueResourceArn,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetSchemaByDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSchema = {
  type t;
  type request = {
@as("SchemaId") schemaId: option<schemaId>
}
  type response = {
@as("UpdatedTime") updatedTime: updatedTimestamp,
@as("CreatedTime") createdTime: createdTimestamp,
@as("SchemaStatus") schemaStatus: schemaStatus,
@as("NextSchemaVersion") nextSchemaVersion: versionLongNumber,
@as("LatestSchemaVersion") latestSchemaVersion: versionLongNumber,
@as("SchemaCheckpoint") schemaCheckpoint: schemaCheckpointNumber,
@as("Compatibility") compatibility: compatibility,
@as("DataFormat") dataFormat: dataFormat,
@as("Description") description: descriptionString,
@as("SchemaArn") schemaArn: glueResourceArn,
@as("SchemaName") schemaName: schemaRegistryNameString,
@as("RegistryArn") registryArn: glueResourceArn,
@as("RegistryName") registryName: schemaRegistryNameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRegistry = {
  type t;
  type request = {
@as("RegistryId") registryId: option<registryId>
}
  type response = {
@as("UpdatedTime") updatedTime: updatedTimestamp,
@as("CreatedTime") createdTime: createdTimestamp,
@as("Status") status: registryStatus,
@as("Description") description: descriptionString,
@as("RegistryArn") registryArn: glueResourceArn,
@as("RegistryName") registryName: schemaRegistryNameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetRegistryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJobBookmark = {
  type t;
  type request = {
@as("RunId") runId: runId,
@as("JobName") jobName: option<jobName>
}
  type response = {
@as("JobBookmarkEntry") jobBookmarkEntry: jobBookmarkEntry
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetJobBookmarkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCatalogImportStatus = {
  type t;
  type request = {
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("ImportStatus") importStatus: catalogImportStatus
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetCatalogImportStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSchema = {
  type t;
  type request = {
@as("SchemaId") schemaId: option<schemaId>
}
  type response = {
@as("Status") status: schemaStatus,
@as("SchemaName") schemaName: schemaRegistryNameString,
@as("SchemaArn") schemaArn: glueResourceArn
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRegistry = {
  type t;
  type request = {
@as("RegistryId") registryId: option<registryId>
}
  type response = {
@as("Status") status: registryStatus,
@as("RegistryArn") registryArn: glueResourceArn,
@as("RegistryName") registryName: schemaRegistryNameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteRegistryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePartition = {
  type t;
  type request = {
@as("PartitionValues") partitionValues: option<valueStringList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeletePartitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteColumnStatisticsForPartition = {
  type t;
  type request = {
@as("ColumnName") columnName: option<nameString>,
@as("PartitionValues") partitionValues: option<valueStringList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteColumnStatisticsForPartitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWorkflow = {
  type t;
  type request = {
@as("MaxConcurrentRuns") maxConcurrentRuns: nullableInteger,
@as("Tags") tags: tagsMap,
@as("DefaultRunProperties") defaultRunProperties: workflowRunProperties,
@as("Description") description: genericString,
@as("Name") name: option<nameString>
}
  type response = {
@as("Name") name: nameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateWorkflowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSchema = {
  type t;
  type request = {
@as("SchemaDefinition") schemaDefinition: schemaDefinitionString,
@as("Tags") tags: tagsMap,
@as("Description") description: descriptionString,
@as("Compatibility") compatibility: compatibility,
@as("DataFormat") dataFormat: option<dataFormat>,
@as("SchemaName") schemaName: option<schemaRegistryNameString>,
@as("RegistryId") registryId: registryId
}
  type response = {
@as("SchemaVersionStatus") schemaVersionStatus: schemaVersionStatus,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString,
@as("Tags") tags: tagsMap,
@as("SchemaStatus") schemaStatus: schemaStatus,
@as("NextSchemaVersion") nextSchemaVersion: versionLongNumber,
@as("LatestSchemaVersion") latestSchemaVersion: versionLongNumber,
@as("SchemaCheckpoint") schemaCheckpoint: schemaCheckpointNumber,
@as("Compatibility") compatibility: compatibility,
@as("DataFormat") dataFormat: dataFormat,
@as("Description") description: descriptionString,
@as("SchemaArn") schemaArn: glueResourceArn,
@as("SchemaName") schemaName: schemaRegistryNameString,
@as("RegistryArn") registryArn: glueResourceArn,
@as("RegistryName") registryName: schemaRegistryNameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRegistry = {
  type t;
  type request = {
@as("Tags") tags: tagsMap,
@as("Description") description: descriptionString,
@as("RegistryName") registryName: option<schemaRegistryNameString>
}
  type response = {
@as("Tags") tags: tagsMap,
@as("Description") description: descriptionString,
@as("RegistryName") registryName: schemaRegistryNameString,
@as("RegistryArn") registryArn: glueResourceArn
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateRegistryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDevEndpoint = {
  type t;
  type request = {
@as("Arguments") arguments: mapValue,
@as("Tags") tags: tagsMap,
@as("SecurityConfiguration") securityConfiguration: nameString,
@as("ExtraJarsS3Path") extraJarsS3Path: genericString,
@as("ExtraPythonLibsS3Path") extraPythonLibsS3Path: genericString,
@as("NumberOfWorkers") numberOfWorkers: nullableInteger,
@as("GlueVersion") glueVersion: glueVersionString,
@as("WorkerType") workerType: workerType,
@as("NumberOfNodes") numberOfNodes: integerValue,
@as("PublicKeys") publicKeys: publicKeysList,
@as("PublicKey") publicKey: genericString,
@as("SubnetId") subnetId: genericString,
@as("SecurityGroupIds") securityGroupIds: stringList,
@as("RoleArn") roleArn: option<roleArn>,
@as("EndpointName") endpointName: option<genericString>
}
  type response = {
@as("Arguments") arguments: mapValue,
@as("CreatedTimestamp") createdTimestamp: timestampValue,
@as("SecurityConfiguration") securityConfiguration: nameString,
@as("FailureReason") failureReason: genericString,
@as("ExtraJarsS3Path") extraJarsS3Path: genericString,
@as("ExtraPythonLibsS3Path") extraPythonLibsS3Path: genericString,
@as("VpcId") vpcId: genericString,
@as("AvailabilityZone") availabilityZone: genericString,
@as("NumberOfWorkers") numberOfWorkers: nullableInteger,
@as("GlueVersion") glueVersion: glueVersionString,
@as("WorkerType") workerType: workerType,
@as("NumberOfNodes") numberOfNodes: integerValue,
@as("ZeppelinRemoteSparkInterpreterPort") zeppelinRemoteSparkInterpreterPort: integerValue,
@as("YarnEndpointAddress") yarnEndpointAddress: genericString,
@as("RoleArn") roleArn: roleArn,
@as("SubnetId") subnetId: genericString,
@as("SecurityGroupIds") securityGroupIds: stringList,
@as("Status") status: genericString,
@as("EndpointName") endpointName: genericString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateDevEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMLTransform = {
  type t;
  type request = {
@as("MaxRetries") maxRetries: nullableInteger,
@as("Timeout") timeout: timeout,
@as("NumberOfWorkers") numberOfWorkers: nullableInteger,
@as("WorkerType") workerType: workerType,
@as("MaxCapacity") maxCapacity: nullableDouble,
@as("GlueVersion") glueVersion: glueVersionString,
@as("Role") role: roleString,
@as("Parameters") parameters: transformParameters,
@as("Description") description: descriptionString,
@as("Name") name: nameString,
@as("TransformId") transformId: option<hashString>
}
  type response = {
@as("TransformId") transformId: hashString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateMLTransformCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateClassifier = {
  type t;
  type request = {
@as("CsvClassifier") csvClassifier: updateCsvClassifierRequest,
@as("JsonClassifier") jsonClassifier: updateJsonClassifierRequest,
@as("XMLClassifier") xMLClassifier: updateXMLClassifierRequest,
@as("GrokClassifier") grokClassifier: updateGrokClassifierRequest
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateClassifierCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutDataCatalogEncryptionSettings = {
  type t;
  type request = {
@as("DataCatalogEncryptionSettings") dataCatalogEncryptionSettings: option<dataCatalogEncryptionSettings>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "PutDataCatalogEncryptionSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSchemas = {
  type t;
  type request = {
@as("NextToken") nextToken: schemaRegistryTokenString,
@as("MaxResults") maxResults: maxResultsNumber,
@as("RegistryId") registryId: registryId
}
  type response = {
@as("NextToken") nextToken: schemaRegistryTokenString,
@as("Schemas") schemas: schemaListDefinition
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "ListSchemasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSchemaVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: schemaRegistryTokenString,
@as("MaxResults") maxResults: maxResultsNumber,
@as("SchemaId") schemaId: option<schemaId>
}
  type response = {
@as("NextToken") nextToken: schemaRegistryTokenString,
@as("Schemas") schemas: schemaVersionList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "ListSchemaVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRegistries = {
  type t;
  type request = {
@as("NextToken") nextToken: schemaRegistryTokenString,
@as("MaxResults") maxResults: maxResultsNumber
}
  type response = {
@as("NextToken") nextToken: schemaRegistryTokenString,
@as("Registries") registries: registryListDefinition
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "ListRegistriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourcePolicies = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("GetResourcePoliciesResponseList") getResourcePoliciesResponseList: getResourcePoliciesResponseList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetResourcePoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMLTaskRun = {
  type t;
  type request = {
@as("TaskRunId") taskRunId: option<hashString>,
@as("TransformId") transformId: option<hashString>
}
  type response = {
@as("ExecutionTime") executionTime: executionTime,
@as("CompletedOn") completedOn: amazonawsTimestamp,
@as("LastModifiedOn") lastModifiedOn: amazonawsTimestamp,
@as("StartedOn") startedOn: amazonawsTimestamp,
@as("ErrorString") errorString: genericString,
@as("Properties") properties: taskRunProperties,
@as("LogGroupName") logGroupName: genericString,
@as("Status") status: taskStatusType,
@as("TaskRunId") taskRunId: hashString,
@as("TransformId") transformId: hashString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetMLTaskRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDevEndpoint = {
  type t;
  type request = {
@as("EndpointName") endpointName: option<genericString>
}
  type response = {
@as("DevEndpoint") devEndpoint: devEndpoint
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetDevEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDataCatalogEncryptionSettings = {
  type t;
  type request = {
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("DataCatalogEncryptionSettings") dataCatalogEncryptionSettings: dataCatalogEncryptionSettings
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetDataCatalogEncryptionSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCrawlerMetrics = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: pageSize,
@as("CrawlerNameList") crawlerNameList: crawlerNameList
}
  type response = {
@as("NextToken") nextToken: token,
@as("CrawlerMetricsList") crawlerMetricsList: crawlerMetricsList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetCrawlerMetricsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePartitionIndex = {
  type t;
  type request = {
@as("PartitionIndex") partitionIndex: option<partitionIndex>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreatePartitionIndexCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMLTransform = {
  type t;
  type request = {
@as("TransformEncryption") transformEncryption: transformEncryption,
@as("Tags") tags: tagsMap,
@as("MaxRetries") maxRetries: nullableInteger,
@as("Timeout") timeout: timeout,
@as("NumberOfWorkers") numberOfWorkers: nullableInteger,
@as("WorkerType") workerType: workerType,
@as("MaxCapacity") maxCapacity: nullableDouble,
@as("GlueVersion") glueVersion: glueVersionString,
@as("Role") role: option<roleString>,
@as("Parameters") parameters: option<transformParameters>,
@as("InputRecordTables") inputRecordTables: option<glueTables>,
@as("Description") description: descriptionString,
@as("Name") name: option<nameString>
}
  type response = {
@as("TransformId") transformId: hashString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateMLTransformCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateJob = {
  type t;
  type request = {
@as("WorkerType") workerType: workerType,
@as("NumberOfWorkers") numberOfWorkers: nullableInteger,
@as("GlueVersion") glueVersion: glueVersionString,
@as("NotificationProperty") notificationProperty: notificationProperty,
@as("Tags") tags: tagsMap,
@as("SecurityConfiguration") securityConfiguration: nameString,
@as("MaxCapacity") maxCapacity: nullableDouble,
@as("Timeout") timeout: timeout,
@as("AllocatedCapacity") allocatedCapacity: integerValue,
@as("MaxRetries") maxRetries: maxRetries,
@as("Connections") connections: connectionsList,
@as("NonOverridableArguments") nonOverridableArguments: genericMap,
@as("DefaultArguments") defaultArguments: genericMap,
@as("Command") command: option<jobCommand>,
@as("ExecutionProperty") executionProperty: executionProperty,
@as("Role") role: option<roleString>,
@as("LogUri") logUri: uriString,
@as("Description") description: descriptionString,
@as("Name") name: option<nameString>
}
  type response = {
@as("Name") name: nameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateClassifier = {
  type t;
  type request = {
@as("CsvClassifier") csvClassifier: createCsvClassifierRequest,
@as("JsonClassifier") jsonClassifier: createJsonClassifierRequest,
@as("XMLClassifier") xMLClassifier: createXMLClassifierRequest,
@as("GrokClassifier") grokClassifier: createGrokClassifierRequest
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateClassifierCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteConnection = {
  type t;
  type request = {
@as("ConnectionNameList") connectionNameList: option<deleteConnectionNameList>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Errors") errors: errorByName,
@as("Succeeded") succeeded: nameStringList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchDeleteConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateUserDefinedFunction = {
  type t;
  type request = {
@as("FunctionInput") functionInput: option<userDefinedFunctionInput>,
@as("FunctionName") functionName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateUserDefinedFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateJob = {
  type t;
  type request = {
@as("JobUpdate") jobUpdate: option<jobUpdate>,
@as("JobName") jobName: option<nameString>
}
  type response = {
@as("JobName") jobName: nameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConnection = {
  type t;
  type request = {
@as("ConnectionInput") connectionInput: option<connectionInput>,
@as("Name") name: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMLTransforms = {
  type t;
  type request = {
@as("Tags") tags: tagsMap,
@as("Sort") sort: transformSortCriteria,
@as("Filter") filter: transformFilterCriteria,
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("TransformIds") transformIds: option<transformIdList>
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "ListMLTransformsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUserDefinedFunction = {
  type t;
  type request = {
@as("FunctionName") functionName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("UserDefinedFunction") userDefinedFunction: userDefinedFunction
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetUserDefinedFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPlan = {
  type t;
  type request = {
@as("AdditionalPlanOptionsMap") additionalPlanOptionsMap: additionalPlanOptionsMap,
@as("Language") language: language,
@as("Location") location: location,
@as("Sinks") sinks: catalogEntries,
@as("Source") source: option<catalogEntry>,
@as("Mapping") mapping: option<mappingList>
}
  type response = {
@as("ScalaCode") scalaCode: scalaCode,
@as("PythonScript") pythonScript: pythonScript
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetPlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMapping = {
  type t;
  type request = {
@as("Location") location: location,
@as("Sinks") sinks: catalogEntries,
@as("Source") source: option<catalogEntry>
}
  type response = {
@as("Mapping") mapping: option<mappingList>
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJobRun = {
  type t;
  type request = {
@as("PredecessorsIncluded") predecessorsIncluded: booleanValue,
@as("RunId") runId: option<idString>,
@as("JobName") jobName: option<nameString>
}
  type response = {
@as("JobRun") jobRun: jobRun
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetJobRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJob = {
  type t;
  type request = {
@as("JobName") jobName: option<nameString>
}
  type response = {
@as("Job") job: job
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDevEndpoints = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: pageSize
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("DevEndpoints") devEndpoints: devEndpointList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetDevEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConnection = {
  type t;
  type request = {
@as("HidePassword") hidePassword: amazonawsBoolean,
@as("Name") name: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Connection") connection: connection
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetClassifier = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = {
@as("Classifier") classifier: classifier
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetClassifierCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSchemaVersions = {
  type t;
  type request = {
@as("Versions") versions: option<versionsString>,
@as("SchemaId") schemaId: option<schemaId>
}
  type response = {
@as("SchemaVersionErrors") schemaVersionErrors: schemaVersionErrorList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "DeleteSchemaVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUserDefinedFunction = {
  type t;
  type request = {
@as("FunctionInput") functionInput: option<userDefinedFunctionInput>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateUserDefinedFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTrigger = {
  type t;
  type request = {
@as("Tags") tags: tagsMap,
@as("StartOnCreation") startOnCreation: booleanValue,
@as("Description") description: descriptionString,
@as("Actions") actions: option<actionList>,
@as("Predicate") predicate: predicate,
@as("Schedule") schedule: genericString,
@as("Type") type_: option<triggerType>,
@as("WorkflowName") workflowName: nameString,
@as("Name") name: option<nameString>
}
  type response = {
@as("Name") name: nameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateTriggerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSecurityConfiguration = {
  type t;
  type request = {
@as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
@as("Name") name: option<nameString>
}
  type response = {
@as("CreatedTimestamp") createdTimestamp: timestampValue,
@as("Name") name: nameString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateSecurityConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConnection = {
  type t;
  type request = {
@as("ConnectionInput") connectionInput: option<connectionInput>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchStopJobRun = {
  type t;
  type request = {
@as("JobRunIds") jobRunIds: option<batchStopJobRunJobRunIdList>,
@as("JobName") jobName: option<nameString>
}
  type response = {
@as("Errors") errors: batchStopJobRunErrorList,
@as("SuccessfulSubmissions") successfulSubmissions: batchStopJobRunSuccessfulSubmissionList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchStopJobRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetDevEndpoints = {
  type t;
  type request = {
@as("DevEndpointNames") devEndpointNames: option<devEndpointNames>
}
  type response = {
@as("DevEndpointsNotFound") devEndpointsNotFound: devEndpointNames,
@as("DevEndpoints") devEndpoints: devEndpointList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchGetDevEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteTableVersion = {
  type t;
  type request = {
@as("VersionIds") versionIds: option<batchDeleteTableVersionList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Errors") errors: tableVersionErrors
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchDeleteTableVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteTable = {
  type t;
  type request = {
@as("TablesToDelete") tablesToDelete: option<batchDeleteTableNameList>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Errors") errors: tableErrors
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchDeleteTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeletePartition = {
  type t;
  type request = {
@as("PartitionsToDelete") partitionsToDelete: option<batchDeletePartitionValueList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Errors") errors: partitionErrors
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchDeletePartitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTrigger = {
  type t;
  type request = {
@as("TriggerUpdate") triggerUpdate: option<triggerUpdate>,
@as("Name") name: option<nameString>
}
  type response = {
@as("Trigger") trigger: trigger
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateTriggerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDatabase = {
  type t;
  type request = {
@as("DatabaseInput") databaseInput: option<databaseInput>,
@as("Name") name: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCrawler = {
  type t;
  type request = {
@as("CrawlerSecurityConfiguration") crawlerSecurityConfiguration: crawlerSecurityConfiguration,
@as("Configuration") configuration: crawlerConfiguration,
@as("LineageConfiguration") lineageConfiguration: lineageConfiguration,
@as("RecrawlPolicy") recrawlPolicy: recrawlPolicy,
@as("SchemaChangePolicy") schemaChangePolicy: schemaChangePolicy,
@as("TablePrefix") tablePrefix: tablePrefix,
@as("Classifiers") classifiers: classifierNameList,
@as("Schedule") schedule: cronExpression,
@as("Targets") targets: crawlerTargets,
@as("Description") description: descriptionStringRemovable,
@as("DatabaseName") databaseName: databaseName,
@as("Role") role: role,
@as("Name") name: option<nameString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateCrawlerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module QuerySchemaVersionMetadata = {
  type t;
  type request = {
@as("NextToken") nextToken: schemaRegistryTokenString,
@as("MaxResults") maxResults: querySchemaVersionMetadataMaxResults,
@as("MetadataList") metadataList: metadataList,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString,
@as("SchemaVersionNumber") schemaVersionNumber: schemaVersionNumber,
@as("SchemaId") schemaId: schemaId
}
  type response = {
@as("NextToken") nextToken: schemaRegistryTokenString,
@as("SchemaVersionId") schemaVersionId: schemaVersionIdString,
@as("MetadataInfoMap") metadataInfoMap: metadataInfoMap
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "QuerySchemaVersionMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUserDefinedFunctions = {
  type t;
  type request = {
@as("MaxResults") maxResults: catalogGetterPageSize,
@as("NextToken") nextToken: token,
@as("Pattern") pattern: option<nameString>,
@as("DatabaseName") databaseName: nameString,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("NextToken") nextToken: token,
@as("UserDefinedFunctions") userDefinedFunctions: userDefinedFunctionList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetUserDefinedFunctionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTrigger = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = {
@as("Trigger") trigger: trigger
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetTriggerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSecurityConfiguration = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = {
@as("SecurityConfiguration") securityConfiguration: securityConfiguration
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetSecurityConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMLTransform = {
  type t;
  type request = {
@as("TransformId") transformId: option<hashString>
}
  type response = {
@as("TransformEncryption") transformEncryption: transformEncryption,
@as("MaxRetries") maxRetries: nullableInteger,
@as("Timeout") timeout: timeout,
@as("NumberOfWorkers") numberOfWorkers: nullableInteger,
@as("WorkerType") workerType: workerType,
@as("MaxCapacity") maxCapacity: nullableDouble,
@as("GlueVersion") glueVersion: glueVersionString,
@as("Role") role: roleString,
@as("Schema") schema: transformSchema,
@as("LabelCount") labelCount: labelCount,
@as("EvaluationMetrics") evaluationMetrics: evaluationMetrics,
@as("Parameters") parameters: transformParameters,
@as("InputRecordTables") inputRecordTables: glueTables,
@as("LastModifiedOn") lastModifiedOn: amazonawsTimestamp,
@as("CreatedOn") createdOn: amazonawsTimestamp,
@as("Status") status: transformStatusType,
@as("Description") description: descriptionString,
@as("Name") name: nameString,
@as("TransformId") transformId: hashString
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetMLTransformCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMLTaskRuns = {
  type t;
  type request = {
@as("Sort") sort: taskRunSortCriteria,
@as("Filter") filter: taskRunFilterCriteria,
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: paginationToken,
@as("TransformId") transformId: option<hashString>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("TaskRuns") taskRuns: taskRunList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetMLTaskRunsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: genericString
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Jobs") jobs: jobList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJobRuns = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: genericString,
@as("JobName") jobName: option<nameString>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("JobRuns") jobRuns: jobRunList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetJobRunsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDataflowGraph = {
  type t;
  type request = {
@as("PythonScript") pythonScript: pythonScript
}
  type response = {
@as("DagEdges") dagEdges: dagEdges,
@as("DagNodes") dagNodes: dagNodes
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetDataflowGraphCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDatabase = {
  type t;
  type request = {
@as("Name") name: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Database") database: database
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConnections = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: token,
@as("HidePassword") hidePassword: amazonawsBoolean,
@as("Filter") filter: getConnectionsFilter,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("NextToken") nextToken: token,
@as("ConnectionList") connectionList: connectionList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetClassifiers = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: pageSize
}
  type response = {
@as("NextToken") nextToken: token,
@as("Classifiers") classifiers: classifierList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetClassifiersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateScript = {
  type t;
  type request = {
@as("Language") language: language,
@as("DagEdges") dagEdges: dagEdges,
@as("DagNodes") dagNodes: dagNodes
}
  type response = {
@as("ScalaCode") scalaCode: scalaCode,
@as("PythonScript") pythonScript: pythonScript
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateScriptCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDatabase = {
  type t;
  type request = {
@as("DatabaseInput") databaseInput: option<databaseInput>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCrawler = {
  type t;
  type request = {
@as("Tags") tags: tagsMap,
@as("CrawlerSecurityConfiguration") crawlerSecurityConfiguration: crawlerSecurityConfiguration,
@as("Configuration") configuration: crawlerConfiguration,
@as("LineageConfiguration") lineageConfiguration: lineageConfiguration,
@as("RecrawlPolicy") recrawlPolicy: recrawlPolicy,
@as("SchemaChangePolicy") schemaChangePolicy: schemaChangePolicy,
@as("TablePrefix") tablePrefix: tablePrefix,
@as("Classifiers") classifiers: classifierNameList,
@as("Schedule") schedule: cronExpression,
@as("Targets") targets: option<crawlerTargets>,
@as("Description") description: descriptionString,
@as("DatabaseName") databaseName: databaseName,
@as("Role") role: option<role>,
@as("Name") name: option<nameString>
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateCrawlerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetJobs = {
  type t;
  type request = {
@as("JobNames") jobNames: option<jobNameList>
}
  type response = {
@as("JobsNotFound") jobsNotFound: jobNameList,
@as("Jobs") jobs: jobList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchGetJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTable = {
  type t;
  type request = {
@as("SkipArchive") skipArchive: booleanNullable,
@as("TableInput") tableInput: option<tableInput>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePartition = {
  type t;
  type request = {
@as("PartitionInput") partitionInput: option<partitionInput>,
@as("PartitionValueList") partitionValueList: option<boundedPartitionValueList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdatePartitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTriggers = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("DependentJobName") dependentJobName: nameString,
@as("NextToken") nextToken: genericString
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Triggers") triggers: triggerList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetTriggersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTable = {
  type t;
  type request = {
@as("Name") name: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Table") table: table
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSecurityConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: pageSize
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("SecurityConfigurations") securityConfigurations: securityConfigurationList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetSecurityConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPartition = {
  type t;
  type request = {
@as("PartitionValues") partitionValues: option<valueStringList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Partition") partition: partition
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetPartitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDatabases = {
  type t;
  type request = {
@as("ResourceShareType") resourceShareType: resourceShareType,
@as("MaxResults") maxResults: catalogGetterPageSize,
@as("NextToken") nextToken: token,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("NextToken") nextToken: token,
@as("DatabaseList") databaseList: option<databaseList>
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetDatabasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCrawler = {
  type t;
  type request = {
@as("Name") name: option<nameString>
}
  type response = {
@as("Crawler") crawler: crawler
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetCrawlerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetColumnStatisticsForTable = {
  type t;
  type request = {
@as("ColumnNames") columnNames: option<getColumnNamesList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Errors") errors: columnErrors,
@as("ColumnStatisticsList") columnStatisticsList: columnStatisticsList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetColumnStatisticsForTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetColumnStatisticsForPartition = {
  type t;
  type request = {
@as("ColumnNames") columnNames: option<getColumnNamesList>,
@as("PartitionValues") partitionValues: option<valueStringList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Errors") errors: columnErrors,
@as("ColumnStatisticsList") columnStatisticsList: columnStatisticsList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetColumnStatisticsForPartitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTable = {
  type t;
  type request = {
@as("PartitionIndexes") partitionIndexes: partitionIndexList,
@as("TableInput") tableInput: option<tableInput>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreateTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePartition = {
  type t;
  type request = {
@as("PartitionInput") partitionInput: option<partitionInput>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "CreatePartitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetTriggers = {
  type t;
  type request = {
@as("TriggerNames") triggerNames: option<triggerNameList>
}
  type response = {
@as("TriggersNotFound") triggersNotFound: triggerNameList,
@as("Triggers") triggers: triggerList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchGetTriggersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateColumnStatisticsForTable = {
  type t;
  type request = {
@as("ColumnStatisticsList") columnStatisticsList: option<updateColumnStatisticsList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Errors") errors: columnStatisticsErrors
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateColumnStatisticsForTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateColumnStatisticsForPartition = {
  type t;
  type request = {
@as("ColumnStatisticsList") columnStatisticsList: option<updateColumnStatisticsList>,
@as("PartitionValues") partitionValues: option<valueStringList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Errors") errors: columnStatisticsErrors
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "UpdateColumnStatisticsForPartitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchTables = {
  type t;
  type request = {
@as("ResourceShareType") resourceShareType: resourceShareType,
@as("MaxResults") maxResults: pageSize,
@as("SortCriteria") sortCriteria: sortCriteria,
@as("SearchText") searchText: valueString,
@as("Filters") filters: searchPropertyPredicates,
@as("NextToken") nextToken: token,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("TableList") tableList: tableList,
@as("NextToken") nextToken: token
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "SearchTablesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTables = {
  type t;
  type request = {
@as("MaxResults") maxResults: catalogGetterPageSize,
@as("NextToken") nextToken: token,
@as("Expression") expression: filterString,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("NextToken") nextToken: token,
@as("TableList") tableList: tableList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetTablesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTableVersion = {
  type t;
  type request = {
@as("VersionId") versionId: versionString,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("TableVersion") tableVersion: tableVersion
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetTableVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPartitions = {
  type t;
  type request = {
@as("ExcludeColumnSchema") excludeColumnSchema: booleanNullable,
@as("MaxResults") maxResults: pageSize,
@as("Segment") segment: segment,
@as("NextToken") nextToken: token,
@as("Expression") expression: predicateString,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("NextToken") nextToken: token,
@as("Partitions") partitions: partitionList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetPartitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMLTransforms = {
  type t;
  type request = {
@as("Sort") sort: transformSortCriteria,
@as("Filter") filter: transformFilterCriteria,
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Transforms") transforms: option<transformList>
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetMLTransformsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCrawlers = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: pageSize
}
  type response = {
@as("NextToken") nextToken: token,
@as("Crawlers") crawlers: crawlerList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetCrawlersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetPartition = {
  type t;
  type request = {
@as("PartitionsToGet") partitionsToGet: option<batchGetPartitionValueList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("UnprocessedKeys") unprocessedKeys: batchGetPartitionValueList,
@as("Partitions") partitions: partitionList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchGetPartitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetCrawlers = {
  type t;
  type request = {
@as("CrawlerNames") crawlerNames: option<crawlerNameList>
}
  type response = {
@as("CrawlersNotFound") crawlersNotFound: crawlerNameList,
@as("Crawlers") crawlers: crawlerList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchGetCrawlersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchCreatePartition = {
  type t;
  type request = {
@as("PartitionInputList") partitionInputList: option<partitionInputList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Errors") errors: partitionErrors
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchCreatePartitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTableVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: catalogGetterPageSize,
@as("NextToken") nextToken: token,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("NextToken") nextToken: token,
@as("TableVersions") tableVersions: getTableVersionsList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetTableVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPartitionIndexes = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("NextToken") nextToken: token,
@as("PartitionIndexDescriptorList") partitionIndexDescriptorList: partitionIndexDescriptorList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetPartitionIndexesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchUpdatePartition = {
  type t;
  type request = {
@as("Entries") entries: option<batchUpdatePartitionRequestEntryList>,
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Errors") errors: batchUpdatePartitionFailureList
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchUpdatePartitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWorkflowRun = {
  type t;
  type request = {
@as("IncludeGraph") includeGraph: nullableBoolean,
@as("RunId") runId: option<idString>,
@as("Name") name: option<nameString>
}
  type response = {
@as("Run") run: workflowRun
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetWorkflowRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWorkflowRuns = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: genericString,
@as("IncludeGraph") includeGraph: nullableBoolean,
@as("Name") name: option<nameString>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Runs") runs: workflowRuns
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetWorkflowRunsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWorkflow = {
  type t;
  type request = {
@as("IncludeGraph") includeGraph: nullableBoolean,
@as("Name") name: option<nameString>
}
  type response = {
@as("Workflow") workflow: workflow
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "GetWorkflowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetWorkflows = {
  type t;
  type request = {
@as("IncludeGraph") includeGraph: nullableBoolean,
@as("Names") names: option<workflowNames>
}
  type response = {
@as("MissingWorkflows") missingWorkflows: workflowNames,
@as("Workflows") workflows: workflows
}
  @module("@aws-sdk/client-glue") @new external new_: (request) => t = "BatchGetWorkflowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
