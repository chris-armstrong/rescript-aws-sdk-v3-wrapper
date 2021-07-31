type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-glue") @new external createClient: unit => awsServiceClient = "GlueClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workflowRunStatus = [
  | @as("ERROR") #ERROR
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("COMPLETED") #COMPLETED
  | @as("RUNNING") #RUNNING
]
type workerType = [@as("G.2X") #G_2X | @as("G.1X") #G_1X | @as("Standard") #Standard]
type viewTextString = string
type versionsString = string
type versionString = string
type versionLongNumber = float
type versionId = float
type valueString = string
type uriString = string
type updatedTimestamp = string
type updateBehavior = [@as("UPDATE_IN_DATABASE") #UPDATE_IN_DATABASE | @as("LOG") #LOG]
type uri = string
type typeString = string
type triggerType = [
  | @as("ON_DEMAND") #ON_DEMAND
  | @as("CONDITIONAL") #CONDITIONAL
  | @as("SCHEDULED") #SCHEDULED
]
type triggerState = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("DEACTIVATED") #DEACTIVATED
  | @as("DEACTIVATING") #DEACTIVATING
  | @as("ACTIVATED") #ACTIVATED
  | @as("ACTIVATING") #ACTIVATING
  | @as("CREATED") #CREATED
  | @as("CREATING") #CREATING
]
type transformType = [@as("FIND_MATCHES") #FIND_MATCHES]
type transformStatusType = [
  | @as("DELETING") #DELETING
  | @as("READY") #READY
  | @as("NOT_READY") #NOT_READY
]
type transformSortColumnType = [
  | @as("LAST_MODIFIED") #LAST_MODIFIED
  | @as("CREATED") #CREATED
  | @as("STATUS") #STATUS
  | @as("TRANSFORM_TYPE") #TRANSFORM_TYPE
  | @as("NAME") #NAME
]
type totalSegmentsInteger = int
type token = string
type timestampValue = Js.Date.t
type timestamp_ = Js.Date.t
type timeout = int
type taskType = [
  | @as("FIND_MATCHES") #FIND_MATCHES
  | @as("EXPORT_LABELS") #EXPORT_LABELS
  | @as("IMPORT_LABELS") #IMPORT_LABELS
  | @as("LABELING_SET_GENERATION") #LABELING_SET_GENERATION
  | @as("EVALUATION") #EVALUATION
]
type taskStatusType = [
  | @as("TIMEOUT") #TIMEOUT
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
]
type taskRunSortColumnType = [
  | @as("STARTED") #STARTED
  | @as("STATUS") #STATUS
  | @as("TASK_RUN_TYPE") #TASK_RUN_TYPE
]
type tagValue = string
type tagKey = string
type tableTypeString = string
type tablePrefix = string
type tableName = string
type sortDirectionType = [@as("ASCENDING") #ASCENDING | @as("DESCENDING") #DESCENDING]
type sort = [@as("DESC") #DESC | @as("ASC") #ASC]
type scriptLocationString = string
type schemaVersionStatus = [
  | @as("DELETING") #DELETING
  | @as("FAILURE") #FAILURE
  | @as("PENDING") #PENDING
  | @as("AVAILABLE") #AVAILABLE
]
type schemaVersionIdString = string
type schemaValidationError = string
type schemaStatus = [
  | @as("DELETING") #DELETING
  | @as("PENDING") #PENDING
  | @as("AVAILABLE") #AVAILABLE
]
type schemaRegistryTokenString = string
type schemaRegistryNameString = string
type schemaPathString = string
type schemaDiffType = [@as("SYNTAX_DIFF") #SYNTAX_DIFF]
type schemaDefinitionString = string
type schemaDefinitionDiff = string
type schemaCheckpointNumber = float
type scheduleState = [
  | @as("TRANSITIONING") #TRANSITIONING
  | @as("NOT_SCHEDULED") #NOT_SCHEDULED
  | @as("SCHEDULED") #SCHEDULED
]
type scalaCode = string
type s3EncryptionMode = [
  | @as("SSE-S3") #SSE_S3
  | @as("SSE-KMS") #SSE_KMS
  | @as("DISABLED") #DISABLED
]
type runId = string
type rowTag = string
type roleString = string
type roleArn = string
type role = string
type resourceType = [@as("ARCHIVE") #ARCHIVE | @as("FILE") #FILE | @as("JAR") #JAR]
type resourceShareType = [@as("ALL") #ALL | @as("FOREIGN") #FOREIGN]
type replaceBoolean = bool
type registryStatus = [@as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE]
type recrawlBehavior = [
  | @as("CRAWL_NEW_FOLDERS_ONLY") #CRAWL_NEW_FOLDERS_ONLY
  | @as("CRAWL_EVERYTHING") #CRAWL_EVERYTHING
]
type recordsCount = float
type querySchemaVersionMetadataMaxResults = int
type pythonVersionString = string
type pythonScript = string
type principalType = [@as("GROUP") #GROUP | @as("ROLE") #ROLE | @as("USER") #USER]
type predicateString = string
type policyJsonString = string
type permission = [
  | @as("DATA_LOCATION_ACCESS") #DATA_LOCATION_ACCESS
  | @as("CREATE_TABLE") #CREATE_TABLE
  | @as("CREATE_DATABASE") #CREATE_DATABASE
  | @as("INSERT") #INSERT
  | @as("DELETE") #DELETE
  | @as("DROP") #DROP
  | @as("ALTER") #ALTER
  | @as("SELECT") #SELECT
  | @as("ALL") #ALL
]
type path = string
type partitionIndexStatus = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type parametersMapValue = string
type paginationToken = string
type pageSize = int
type nullableInteger = int
type nullableDouble = float
type nullableBoolean = bool
type notifyDelayAfter = int
type nonNegativeLong = float
type nonNegativeInteger = int
type nonNegativeDouble = float
type nodeType = [@as("TRIGGER") #TRIGGER | @as("JOB") #JOB | @as("CRAWLER") #CRAWLER]
type nameString = string
type millisecondsCount = float
type metadataValueString = string
type metadataKeyString = string
type messageString = string
type messagePrefix = string
type maxRetries = int
type maxResultsNumber = int
type maxConcurrentRuns = int
type mluserDataEncryptionModeString = [@as("SSE-KMS") #SSE_KMS | @as("DISABLED") #DISABLED]
type long = float
type logicalOperator = [@as("EQUALS") #EQUALS]
type logical = [@as("ANY") #ANY | @as("AND") #AND]
type logStream = string
type logGroup = string
type locationString = string
type latestSchemaVersionBoolean = bool
type lastCrawlStatus = [
  | @as("FAILED") #FAILED
  | @as("CANCELLED") #CANCELLED
  | @as("SUCCEEDED") #SUCCEEDED
]
type language = [@as("SCALA") #SCALA | @as("PYTHON") #PYTHON]
type labelCount = int
type kmsKeyArn = string
type keyString = string
type jsonValue = string
type jsonPath = string
type jobRunState = [
  | @as("TIMEOUT") #TIMEOUT
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
]
type jobName = string
type jobBookmarksEncryptionMode = [@as("CSE-KMS") #CSE_KMS | @as("DISABLED") #DISABLED]
type isVersionValid = bool
type integerValue = int
type integerFlag = int
type integer_ = int
type idString = string
type hashString = string
type grokPattern = string
type glueVersionString = string
type glueResourceArn = string
type genericString = string
type genericBoundedDouble = float
type formatString = string
type filterString = string
type fieldType = string
type existCondition = [
  | @as("NONE") #NONE
  | @as("NOT_EXIST") #NOT_EXIST
  | @as("MUST_EXIST") #MUST_EXIST
]
type executionTime = int
type errorString = string
type errorMessageString = string
type errorCodeString = string
type enableHybridValues = [@as("FALSE") #FALSE | @as("TRUE") #TRUE]
type double = float
type descriptionStringRemovable = string
type descriptionString = string
type deleteBehavior = [
  | @as("DEPRECATE_IN_DATABASE") #DEPRECATE_IN_DATABASE
  | @as("DELETE_FROM_DATABASE") #DELETE_FROM_DATABASE
  | @as("LOG") #LOG
]
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
type crawlState = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("CANCELLED") #CANCELLED
  | @as("CANCELLING") #CANCELLING
  | @as("RUNNING") #RUNNING
]
type connectionType = [
  | @as("CUSTOM") #CUSTOM
  | @as("MARKETPLACE") #MARKETPLACE
  | @as("NETWORK") #NETWORK
  | @as("KAFKA") #KAFKA
  | @as("MONGODB") #MONGODB
  | @as("SFTP") #SFTP
  | @as("JDBC") #JDBC
]
type connectionPropertyKey = [
  | @as("CONNECTOR_CLASS_NAME") #CONNECTOR_CLASS_NAME
  | @as("CONNECTOR_TYPE") #CONNECTOR_TYPE
  | @as("CONNECTOR_URL") #CONNECTOR_URL
  | @as("SECRET_ID") #SECRET_ID
  | @as("ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD") #ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD
  | @as("ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD") #ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD
  | @as("KAFKA_CLIENT_KEY_PASSWORD") #KAFKA_CLIENT_KEY_PASSWORD
  | @as("KAFKA_CLIENT_KEYSTORE_PASSWORD") #KAFKA_CLIENT_KEYSTORE_PASSWORD
  | @as("KAFKA_CLIENT_KEYSTORE") #KAFKA_CLIENT_KEYSTORE
  | @as("KAFKA_SKIP_CUSTOM_CERT_VALIDATION") #KAFKA_SKIP_CUSTOM_CERT_VALIDATION
  | @as("KAFKA_CUSTOM_CERT") #KAFKA_CUSTOM_CERT
  | @as("KAFKA_SSL_ENABLED") #KAFKA_SSL_ENABLED
  | @as("KAFKA_BOOTSTRAP_SERVERS") #KAFKA_BOOTSTRAP_SERVERS
  | @as("CONNECTION_URL") #CONNECTION_URL
  | @as("CUSTOM_JDBC_CERT_STRING") #CUSTOM_JDBC_CERT_STRING
  | @as("SKIP_CUSTOM_JDBC_CERT_VALIDATION") #SKIP_CUSTOM_JDBC_CERT_VALIDATION
  | @as("CUSTOM_JDBC_CERT") #CUSTOM_JDBC_CERT
  | @as("JDBC_ENFORCE_SSL") #JDBC_ENFORCE_SSL
  | @as("JDBC_CONNECTION_URL") #JDBC_CONNECTION_URL
  | @as("INSTANCE_ID") #INSTANCE_ID
  | @as("CONFIG_FILES") #CONFIG_FILES
  | @as("JDBC_ENGINE_VERSION") #JDBC_ENGINE_VERSION
  | @as("JDBC_ENGINE") #JDBC_ENGINE
  | @as("JDBC_DRIVER_CLASS_NAME") #JDBC_DRIVER_CLASS_NAME
  | @as("JDBC_DRIVER_JAR_URI") #JDBC_DRIVER_JAR_URI
  | @as("ENCRYPTED_PASSWORD") #ENCRYPTED_PASSWORD
  | @as("PASSWORD") #PASSWORD
  | @as("USERNAME") #USERNAME
  | @as("PORT") #PORT
  | @as("HOST") #HOST
]
type connectionName = string
type compatibility = [
  | @as("FULL_ALL") #FULL_ALL
  | @as("FULL") #FULL
  | @as("FORWARD_ALL") #FORWARD_ALL
  | @as("FORWARD") #FORWARD
  | @as("BACKWARD_ALL") #BACKWARD_ALL
  | @as("BACKWARD") #BACKWARD
  | @as("DISABLED") #DISABLED
  | @as("NONE") #NONE
]
type comparator = [
  | @as("LESS_THAN_EQUALS") #LESS_THAN_EQUALS
  | @as("GREATER_THAN_EQUALS") #GREATER_THAN_EQUALS
  | @as("LESS_THAN") #LESS_THAN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("EQUALS") #EQUALS
]
type commentString = string
type columnValuesString = string
type columnTypeString = string
type columnStatisticsType = [
  | @as("BINARY") #BINARY
  | @as("STRING") #STRING
  | @as("LONG") #LONG
  | @as("DOUBLE") #DOUBLE
  | @as("DECIMAL") #DECIMAL
  | @as("DATE") #DATE
  | @as("BOOLEAN") #BOOLEAN
]
type columnNameString = string
type codeGenNodeType = string
type codeGenIdentifier = string
type codeGenArgValue = string
type codeGenArgName = string
type cloudWatchEncryptionMode = [@as("SSE-KMS") #SSE_KMS | @as("DISABLED") #DISABLED]
type classification = string
type catalogIdString = string
type catalogGetterPageSize = int
type catalogEncryptionMode = [@as("SSE-KMS") #SSE_KMS | @as("DISABLED") #DISABLED]
type booleanValue = bool
type booleanNullable = bool
type boolean_ = bool
type blob = NodeJs.Buffer.t
type backfillErrorCode = [
  | @as("UNSUPPORTED_PARTITION_CHARACTER_ERROR") #UNSUPPORTED_PARTITION_CHARACTER_ERROR
  | @as("MISSING_PARTITION_VALUE_ERROR") #MISSING_PARTITION_VALUE_ERROR
  | @as("INVALID_PARTITION_TYPE_DATA_ERROR") #INVALID_PARTITION_TYPE_DATA_ERROR
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("ENCRYPTED_PARTITION_ERROR") #ENCRYPTED_PARTITION_ERROR
]
type attemptCount = int
type xmlclassifier = {
  @as("RowTag") rowTag: option<rowTag>,
  @as("Version") version: option<versionId>,
  @as("LastUpdated") lastUpdated: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("Classification") classification: classification,
  @as("Name") name: nameString,
}
type workflowRunStatistics = {
  @as("RunningActions") runningActions: option<integerValue>,
  @as("SucceededActions") succeededActions: option<integerValue>,
  @as("StoppedActions") stoppedActions: option<integerValue>,
  @as("FailedActions") failedActions: option<integerValue>,
  @as("TimeoutActions") timeoutActions: option<integerValue>,
  @as("TotalActions") totalActions: option<integerValue>,
}
type workflowRunProperties = Js.Dict.t<genericString>
type workflowNames = array<nameString>
type valueStringList = array<valueString>
type updateXMLClassifierRequest = {
  @as("RowTag") rowTag: option<rowTag>,
  @as("Classification") classification: option<classification>,
  @as("Name") name: nameString,
}
type updateJsonClassifierRequest = {
  @as("JsonPath") jsonPath: option<jsonPath>,
  @as("Name") name: nameString,
}
type updateGrokClassifierRequest = {
  @as("CustomPatterns") customPatterns: option<customPatterns>,
  @as("GrokPattern") grokPattern: option<grokPattern>,
  @as("Classification") classification: option<classification>,
  @as("Name") name: nameString,
}
type triggerNameList = array<nameString>
type transformSortCriteria = {
  @as("SortDirection") sortDirection: sortDirectionType,
  @as("Column") column: transformSortColumnType,
}
type transformIdList = array<hashString>
type taskRunSortCriteria = {
  @as("SortDirection") sortDirection: sortDirectionType,
  @as("Column") column: taskRunSortColumnType,
}
type taskRunFilterCriteria = {
  @as("StartedAfter") startedAfter: option<timestamp_>,
  @as("StartedBefore") startedBefore: option<timestamp_>,
  @as("Status") status: option<taskStatusType>,
  @as("TaskRunType") taskRunType: option<taskType>,
}
type tagsMap = Js.Dict.t<tagValue>
type tagKeysList = array<tagKey>
type tableIdentifier = {
  @as("Name") name: option<nameString>,
  @as("DatabaseName") databaseName: option<nameString>,
  @as("CatalogId") catalogId: option<catalogIdString>,
}
type stringList = array<genericString>
type stringColumnStatisticsData = {
  @as("NumberOfDistinctValues") numberOfDistinctValues: nonNegativeLong,
  @as("NumberOfNulls") numberOfNulls: nonNegativeLong,
  @as("AverageLength") averageLength: nonNegativeDouble,
  @as("MaximumLength") maximumLength: nonNegativeLong,
}
type sortCriterion = {
  @as("Sort") sort: option<sort>,
  @as("FieldName") fieldName: option<valueString>,
}
type segment = {
  @as("TotalSegments") totalSegments: totalSegmentsInteger,
  @as("SegmentNumber") segmentNumber: nonNegativeInteger,
}
type securityGroupIdList = array<nameString>
type schemaVersionNumber = {
  @as("VersionNumber") versionNumber: option<versionLongNumber>,
  @as("LatestVersion") latestVersion: option<latestSchemaVersionBoolean>,
}
type schemaVersionListItem = {
  @as("CreatedTime") createdTime: option<createdTimestamp>,
  @as("Status") status: option<schemaVersionStatus>,
  @as("VersionNumber") versionNumber: option<versionLongNumber>,
  @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
  @as("SchemaArn") schemaArn: option<glueResourceArn>,
}
type schemaListItem = {
  @as("UpdatedTime") updatedTime: option<updatedTimestamp>,
  @as("CreatedTime") createdTime: option<createdTimestamp>,
  @as("SchemaStatus") schemaStatus: option<schemaStatus>,
  @as("Description") description: option<descriptionString>,
  @as("SchemaArn") schemaArn: option<glueResourceArn>,
  @as("SchemaName") schemaName: option<schemaRegistryNameString>,
  @as("RegistryName") registryName: option<schemaRegistryNameString>,
}
type schemaId = {
  @as("RegistryName") registryName: option<schemaRegistryNameString>,
  @as("SchemaName") schemaName: option<schemaRegistryNameString>,
  @as("SchemaArn") schemaArn: option<glueResourceArn>,
}
type schemaColumn = {
  @as("DataType") dataType: option<columnTypeString>,
  @as("Name") name: option<columnNameString>,
}
type schemaChangePolicy = {
  @as("DeleteBehavior") deleteBehavior: option<deleteBehavior>,
  @as("UpdateBehavior") updateBehavior: option<updateBehavior>,
}
type schedule = {
  @as("State") state: option<scheduleState>,
  @as("ScheduleExpression") scheduleExpression: option<cronExpression>,
}
type s3Encryption = {
  @as("KmsKeyArn") kmsKeyArn: option<kmsKeyArn>,
  @as("S3EncryptionMode") s3EncryptionMode: option<s3EncryptionMode>,
}
type resourceUri = {
  @as("Uri") uri: option<uri>,
  @as("ResourceType") resourceType: option<resourceType>,
}
type registryListItem = {
  @as("UpdatedTime") updatedTime: option<updatedTimestamp>,
  @as("CreatedTime") createdTime: option<createdTimestamp>,
  @as("Status") status: option<registryStatus>,
  @as("Description") description: option<descriptionString>,
  @as("RegistryArn") registryArn: option<glueResourceArn>,
  @as("RegistryName") registryName: option<schemaRegistryNameString>,
}
type registryId = {
  @as("RegistryArn") registryArn: option<glueResourceArn>,
  @as("RegistryName") registryName: option<schemaRegistryNameString>,
}
type recrawlPolicy = {@as("RecrawlBehavior") recrawlBehavior: option<recrawlBehavior>}
type publicKeysList = array<genericString>
type propertyPredicate = {
  @as("Comparator") comparator: option<comparator>,
  @as("Value") value: option<valueString>,
  @as("Key") key: option<valueString>,
}
type predecessor = {
  @as("RunId") runId: option<idString>,
  @as("JobName") jobName: option<nameString>,
}
type permissionList = array<permission>
type pathList = array<path>
type parametersMap = Js.Dict.t<parametersMapValue>
type otherMetadataValueListItem = {
  @as("CreatedTime") createdTime: option<createdTimestamp>,
  @as("MetadataValue") metadataValue: option<metadataValueString>,
}
type order = {
  @as("SortOrder") sortOrder: integerFlag,
  @as("Column") column: nameString,
}
type orchestrationStringList = array<genericString>
type notificationProperty = {@as("NotifyDelayAfter") notifyDelayAfter: option<notifyDelayAfter>}
type nodeIdList = array<nameString>
type nameStringList = array<nameString>
type mongoDBTarget = {
  @as("ScanAll") scanAll: option<nullableBoolean>,
  @as("Path") path: option<path>,
  @as("ConnectionName") connectionName: option<connectionName>,
}
type metadataKeyValuePair = {
  @as("MetadataValue") metadataValue: option<metadataValueString>,
  @as("MetadataKey") metadataKey: option<metadataKeyString>,
}
type matchCriteria = array<nameString>
type mappingEntry = {
  @as("TargetType") targetType: option<fieldType>,
  @as("TargetPath") targetPath: option<schemaPathString>,
  @as("TargetTable") targetTable: option<tableName>,
  @as("SourceType") sourceType: option<fieldType>,
  @as("SourcePath") sourcePath: option<schemaPathString>,
  @as("SourceTable") sourceTable: option<tableName>,
}
type mapValue = Js.Dict.t<genericString>
type mluserDataEncryption = {
  @as("KmsKeyId") kmsKeyId: option<nameString>,
  @as("MlUserDataEncryptionMode") mlUserDataEncryptionMode: mluserDataEncryptionModeString,
}
type longColumnStatisticsData = {
  @as("NumberOfDistinctValues") numberOfDistinctValues: nonNegativeLong,
  @as("NumberOfNulls") numberOfNulls: nonNegativeLong,
  @as("MaximumValue") maximumValue: option<long>,
  @as("MinimumValue") minimumValue: option<long>,
}
type locationMap = Js.Dict.t<columnValuesString>
type lineageConfiguration = {
  @as("CrawlerLineageSettings") crawlerLineageSettings: option<crawlerLineageSettings>,
}
type lastCrawlInfo = {
  @as("StartTime") startTime: option<timestamp_>,
  @as("MessagePrefix") messagePrefix: option<messagePrefix>,
  @as("LogStream") logStream: option<logStream>,
  @as("LogGroup") logGroup: option<logGroup>,
  @as("ErrorMessage") errorMessage: option<descriptionString>,
  @as("Status") status: option<lastCrawlStatus>,
}
type labelingSetGenerationTaskRunProperties = {@as("OutputS3Path") outputS3Path: option<uriString>}
type keySchemaElement = {
  @as("Type") type_: columnTypeString,
  @as("Name") name: nameString,
}
type keyList = array<nameString>
type jsonClassifier = {
  @as("JsonPath") jsonPath: jsonPath,
  @as("Version") version: option<versionId>,
  @as("LastUpdated") lastUpdated: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("Name") name: nameString,
}
type jobNameList = array<nameString>
type jobCommand = {
  @as("PythonVersion") pythonVersion: option<pythonVersionString>,
  @as("ScriptLocation") scriptLocation: option<scriptLocationString>,
  @as("Name") name: option<genericString>,
}
type jobBookmarksEncryption = {
  @as("KmsKeyArn") kmsKeyArn: option<kmsKeyArn>,
  @as("JobBookmarksEncryptionMode") jobBookmarksEncryptionMode: option<jobBookmarksEncryptionMode>,
}
type jobBookmarkEntry = {
  @as("JobBookmark") jobBookmark: option<jsonValue>,
  @as("RunId") runId: option<runId>,
  @as("PreviousRunId") previousRunId: option<runId>,
  @as("Attempt") attempt: option<integerValue>,
  @as("Run") run: option<integerValue>,
  @as("Version") version: option<integerValue>,
  @as("JobName") jobName: option<jobName>,
}
type importLabelsTaskRunProperties = {
  @as("Replace") replace: option<replaceBoolean>,
  @as("InputS3Path") inputS3Path: option<uriString>,
}
type grokClassifier = {
  @as("CustomPatterns") customPatterns: option<customPatterns>,
  @as("GrokPattern") grokPattern: grokPattern,
  @as("Version") version: option<versionId>,
  @as("LastUpdated") lastUpdated: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("Classification") classification: classification,
  @as("Name") name: nameString,
}
type glueTable = {
  @as("ConnectionName") connectionName: option<nameString>,
  @as("CatalogId") catalogId: option<nameString>,
  @as("TableName") tableName: nameString,
  @as("DatabaseName") databaseName: nameString,
}
type gluePolicy = {
  @as("UpdateTime") updateTime: option<timestamp_>,
  @as("CreateTime") createTime: option<timestamp_>,
  @as("PolicyHash") policyHash: option<hashString>,
  @as("PolicyInJson") policyInJson: option<policyJsonString>,
}
type getColumnNamesList = array<nameString>
type genericMap = Js.Dict.t<genericString>
type findMatchesTaskRunProperties = {
  @as("JobRunId") jobRunId: option<hashString>,
  @as("JobName") jobName: option<nameString>,
  @as("JobId") jobId: option<hashString>,
}
type findMatchesParameters = {
  @as("EnforceProvidedLabels") enforceProvidedLabels: option<nullableBoolean>,
  @as("AccuracyCostTradeoff") accuracyCostTradeoff: option<genericBoundedDouble>,
  @as("PrecisionRecallTradeoff") precisionRecallTradeoff: option<genericBoundedDouble>,
  @as("PrimaryKeyColumnName") primaryKeyColumnName: option<columnNameString>,
}
type exportLabelsTaskRunProperties = {@as("OutputS3Path") outputS3Path: option<uriString>}
type executionProperty = {@as("MaxConcurrentRuns") maxConcurrentRuns: option<maxConcurrentRuns>}
type errorDetails = {
  @as("ErrorMessage") errorMessage: option<errorMessageString>,
  @as("ErrorCode") errorCode: option<errorCodeString>,
}
type errorDetail = {
  @as("ErrorMessage") errorMessage: option<descriptionString>,
  @as("ErrorCode") errorCode: option<nameString>,
}
type encryptionAtRest = {
  @as("SseAwsKmsKeyId") sseAwsKmsKeyId: option<nameString>,
  @as("CatalogEncryptionMode") catalogEncryptionMode: catalogEncryptionMode,
}
type edge = {
  @as("DestinationId") destinationId: option<nameString>,
  @as("SourceId") sourceId: option<nameString>,
}
type dynamoDBTarget = {
  scanRate: option<nullableDouble>,
  scanAll: option<nullableBoolean>,
  @as("Path") path: option<path>,
}
type doubleColumnStatisticsData = {
  @as("NumberOfDistinctValues") numberOfDistinctValues: nonNegativeLong,
  @as("NumberOfNulls") numberOfNulls: nonNegativeLong,
  @as("MaximumValue") maximumValue: option<double>,
  @as("MinimumValue") minimumValue: option<double>,
}
type devEndpointNames = array<genericString>
type devEndpointNameList = array<nameString>
type devEndpointCustomLibraries = {
  @as("ExtraJarsS3Path") extraJarsS3Path: option<genericString>,
  @as("ExtraPythonLibsS3Path") extraPythonLibsS3Path: option<genericString>,
}
type deleteConnectionNameList = array<nameString>
type decimalNumber = {
  @as("Scale") scale: integer_,
  @as("UnscaledValue") unscaledValue: blob,
}
type dateColumnStatisticsData = {
  @as("NumberOfDistinctValues") numberOfDistinctValues: nonNegativeLong,
  @as("NumberOfNulls") numberOfNulls: nonNegativeLong,
  @as("MaximumValue") maximumValue: option<timestamp_>,
  @as("MinimumValue") minimumValue: option<timestamp_>,
}
type databaseIdentifier = {
  @as("DatabaseName") databaseName: option<nameString>,
  @as("CatalogId") catalogId: option<catalogIdString>,
}
type dataLakePrincipal = {
  @as("DataLakePrincipalIdentifier") dataLakePrincipalIdentifier: option<dataLakePrincipalString>,
}
type csvHeader = array<nameString>
type createXMLClassifierRequest = {
  @as("RowTag") rowTag: option<rowTag>,
  @as("Name") name: nameString,
  @as("Classification") classification: classification,
}
type createJsonClassifierRequest = {
  @as("JsonPath") jsonPath: jsonPath,
  @as("Name") name: nameString,
}
type createGrokClassifierRequest = {
  @as("CustomPatterns") customPatterns: option<customPatterns>,
  @as("GrokPattern") grokPattern: grokPattern,
  @as("Name") name: nameString,
  @as("Classification") classification: classification,
}
type crawlerNameList = array<nameString>
type crawlerMetrics = {
  @as("TablesDeleted") tablesDeleted: option<nonNegativeInteger>,
  @as("TablesUpdated") tablesUpdated: option<nonNegativeInteger>,
  @as("TablesCreated") tablesCreated: option<nonNegativeInteger>,
  @as("MedianRuntimeSeconds") medianRuntimeSeconds: option<nonNegativeDouble>,
  @as("LastRuntimeSeconds") lastRuntimeSeconds: option<nonNegativeDouble>,
  @as("StillEstimating") stillEstimating: option<boolean_>,
  @as("TimeLeftSeconds") timeLeftSeconds: option<nonNegativeDouble>,
  @as("CrawlerName") crawlerName: option<nameString>,
}
type crawl = {
  @as("LogStream") logStream: option<logStream>,
  @as("LogGroup") logGroup: option<logGroup>,
  @as("ErrorMessage") errorMessage: option<descriptionString>,
  @as("CompletedOn") completedOn: option<timestampValue>,
  @as("StartedOn") startedOn: option<timestampValue>,
  @as("State") state: option<crawlState>,
}
type connectionProperties = Js.Dict.t<valueString>
type connectionPasswordEncryption = {
  @as("AwsKmsKeyId") awsKmsKeyId: option<nameString>,
  @as("ReturnConnectionPasswordEncrypted") returnConnectionPasswordEncrypted: boolean_,
}
type confusionMatrix = {
  @as("NumFalseNegatives") numFalseNegatives: option<recordsCount>,
  @as("NumTrueNegatives") numTrueNegatives: option<recordsCount>,
  @as("NumFalsePositives") numFalsePositives: option<recordsCount>,
  @as("NumTruePositives") numTruePositives: option<recordsCount>,
}
type condition = {
  @as("CrawlState") crawlState: option<crawlState>,
  @as("CrawlerName") crawlerName: option<nameString>,
  @as("State") state: option<jobRunState>,
  @as("JobName") jobName: option<nameString>,
  @as("LogicalOperator") logicalOperator: option<logicalOperator>,
}
type columnValueStringList = array<columnValuesString>
type columnImportance = {
  @as("Importance") importance: option<genericBoundedDouble>,
  @as("ColumnName") columnName: option<nameString>,
}
type codeGenNodeArg = {
  @as("Param") param: option<boolean_>,
  @as("Value") value: codeGenArgValue,
  @as("Name") name: codeGenArgName,
}
type codeGenEdge = {
  @as("TargetParameter") targetParameter: option<codeGenArgName>,
  @as("Target") target: codeGenIdentifier,
  @as("Source") source: codeGenIdentifier,
}
type cloudWatchEncryption = {
  @as("KmsKeyArn") kmsKeyArn: option<kmsKeyArn>,
  @as("CloudWatchEncryptionMode") cloudWatchEncryptionMode: option<cloudWatchEncryptionMode>,
}
type classifierNameList = array<nameString>
type catalogTablesList = array<nameString>
type catalogImportStatus = {
  @as("ImportedBy") importedBy: option<nameString>,
  @as("ImportTime") importTime: option<timestamp_>,
  @as("ImportCompleted") importCompleted: option<boolean_>,
}
type catalogEntry = {
  @as("TableName") tableName: nameString,
  @as("DatabaseName") databaseName: nameString,
}
type boundedPartitionValueList = array<valueString>
type booleanColumnStatisticsData = {
  @as("NumberOfNulls") numberOfNulls: nonNegativeLong,
  @as("NumberOfFalses") numberOfFalses: nonNegativeLong,
  @as("NumberOfTrues") numberOfTrues: nonNegativeLong,
}
type binaryColumnStatisticsData = {
  @as("NumberOfNulls") numberOfNulls: nonNegativeLong,
  @as("AverageLength") averageLength: nonNegativeDouble,
  @as("MaximumLength") maximumLength: nonNegativeLong,
}
type batchStopJobRunSuccessfulSubmission = {
  @as("JobRunId") jobRunId: option<idString>,
  @as("JobName") jobName: option<nameString>,
}
type batchStopJobRunJobRunIdList = array<idString>
type batchDeleteTableVersionList = array<versionString>
type batchDeleteTableNameList = array<nameString>
type additionalPlanOptionsMap = Js.Dict.t<genericString>
type updateCsvClassifierRequest = {
  @as("AllowSingleColumn") allowSingleColumn: option<nullableBoolean>,
  @as("DisableValueTrimming") disableValueTrimming: option<nullableBoolean>,
  @as("Header") header: option<csvHeader>,
  @as("ContainsHeader") containsHeader: option<csvHeaderOption>,
  @as("QuoteSymbol") quoteSymbol: option<csvQuoteSymbol>,
  @as("Delimiter") delimiter: option<csvColumnDelimiter>,
  @as("Name") name: nameString,
}
type transformSchema = array<schemaColumn>
type transformParameters = {
  @as("FindMatchesParameters") findMatchesParameters: option<findMatchesParameters>,
  @as("TransformType") transformType: transformType,
}
type transformEncryption = {
  @as("TaskRunSecurityConfigurationName") taskRunSecurityConfigurationName: option<nameString>,
  @as("MlUserDataEncryption") mlUserDataEncryption: option<mluserDataEncryption>,
}
type taskRunProperties = {
  @as("FindMatchesTaskRunProperties")
  findMatchesTaskRunProperties: option<findMatchesTaskRunProperties>,
  @as("LabelingSetGenerationTaskRunProperties")
  labelingSetGenerationTaskRunProperties: option<labelingSetGenerationTaskRunProperties>,
  @as("ExportLabelsTaskRunProperties")
  exportLabelsTaskRunProperties: option<exportLabelsTaskRunProperties>,
  @as("ImportLabelsTaskRunProperties")
  importLabelsTaskRunProperties: option<importLabelsTaskRunProperties>,
  @as("TaskType") taskType: option<taskType>,
}
type tableVersionError = {
  @as("ErrorDetail") errorDetail: option<errorDetail>,
  @as("VersionId") versionId: option<versionString>,
  @as("TableName") tableName: option<nameString>,
}
type tableError = {
  @as("ErrorDetail") errorDetail: option<errorDetail>,
  @as("TableName") tableName: option<nameString>,
}
type sortCriteria = array<sortCriterion>
type skewedInfo = {
  @as("SkewedColumnValueLocationMaps") skewedColumnValueLocationMaps: option<locationMap>,
  @as("SkewedColumnValues") skewedColumnValues: option<columnValueStringList>,
  @as("SkewedColumnNames") skewedColumnNames: option<nameStringList>,
}
type serDeInfo = {
  @as("Parameters") parameters: option<parametersMap>,
  @as("SerializationLibrary") serializationLibrary: option<nameString>,
  @as("Name") name: option<nameString>,
}
type searchPropertyPredicates = array<propertyPredicate>
type schemaVersionList = array<schemaVersionListItem>
type schemaVersionErrorItem = {
  @as("ErrorDetails") errorDetails: option<errorDetails>,
  @as("VersionNumber") versionNumber: option<versionLongNumber>,
}
type schemaReference = {
  @as("SchemaVersionNumber") schemaVersionNumber: option<versionLongNumber>,
  @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
  @as("SchemaId") schemaId: option<schemaId>,
}
type schemaListDefinition = array<schemaListItem>
type s3Target = {
  @as("ConnectionName") connectionName: option<connectionName>,
  @as("Exclusions") exclusions: option<pathList>,
  @as("Path") path: option<path>,
}
type s3EncryptionList = array<s3Encryption>
type resourceUriList = array<resourceUri>
type registryListDefinition = array<registryListItem>
type principalPermissions = {
  @as("Permissions") permissions: option<permissionList>,
  @as("Principal") principal: option<dataLakePrincipal>,
}
type predecessorList = array<predecessor>
type physicalConnectionRequirements = {
  @as("AvailabilityZone") availabilityZone: option<nameString>,
  @as("SecurityGroupIdList") securityGroupIdList: option<securityGroupIdList>,
  @as("SubnetId") subnetId: option<nameString>,
}
type partitionValueList = {@as("Values") values: valueStringList}
type partitionIndex = {
  @as("IndexName") indexName: nameString,
  @as("Keys") keys: keyList,
}
type partitionError = {
  @as("ErrorDetail") errorDetail: option<errorDetail>,
  @as("PartitionValues") partitionValues: option<valueStringList>,
}
type otherMetadataValueList = array<otherMetadataValueListItem>
type orderList = array<order>
type mongoDBTargetList = array<mongoDBTarget>
type metadataList = array<metadataKeyValuePair>
type mappingList = array<mappingEntry>
type keySchemaElementList = array<keySchemaElement>
type jdbcTarget = {
  @as("Exclusions") exclusions: option<pathList>,
  @as("Path") path: option<path>,
  @as("ConnectionName") connectionName: option<connectionName>,
}
type glueTables = array<glueTable>
type getResourcePoliciesResponseList = array<gluePolicy>
type getConnectionsFilter = {
  @as("ConnectionType") connectionType: option<connectionType>,
  @as("MatchCriteria") matchCriteria: option<matchCriteria>,
}
type errorByName = Js.Dict.t<errorDetail>
type edgeList = array<edge>
type dynamoDBTargetList = array<dynamoDBTarget>
type devEndpoint = {
  @as("Arguments") arguments: option<mapValue>,
  @as("SecurityConfiguration") securityConfiguration: option<nameString>,
  @as("PublicKeys") publicKeys: option<publicKeysList>,
  @as("PublicKey") publicKey: option<genericString>,
  @as("LastModifiedTimestamp") lastModifiedTimestamp: option<timestampValue>,
  @as("CreatedTimestamp") createdTimestamp: option<timestampValue>,
  @as("LastUpdateStatus") lastUpdateStatus: option<genericString>,
  @as("FailureReason") failureReason: option<genericString>,
  @as("ExtraJarsS3Path") extraJarsS3Path: option<genericString>,
  @as("ExtraPythonLibsS3Path") extraPythonLibsS3Path: option<genericString>,
  @as("VpcId") vpcId: option<genericString>,
  @as("AvailabilityZone") availabilityZone: option<genericString>,
  @as("NumberOfNodes") numberOfNodes: option<integerValue>,
  @as("NumberOfWorkers") numberOfWorkers: option<nullableInteger>,
  @as("GlueVersion") glueVersion: option<glueVersionString>,
  @as("WorkerType") workerType: option<workerType>,
  @as("Status") status: option<genericString>,
  @as("PublicAddress") publicAddress: option<genericString>,
  @as("ZeppelinRemoteSparkInterpreterPort")
  zeppelinRemoteSparkInterpreterPort: option<integerValue>,
  @as("PrivateAddress") privateAddress: option<genericString>,
  @as("YarnEndpointAddress") yarnEndpointAddress: option<genericString>,
  @as("SubnetId") subnetId: option<genericString>,
  @as("SecurityGroupIds") securityGroupIds: option<stringList>,
  @as("RoleArn") roleArn: option<roleArn>,
  @as("EndpointName") endpointName: option<genericString>,
}
type decimalColumnStatisticsData = {
  @as("NumberOfDistinctValues") numberOfDistinctValues: nonNegativeLong,
  @as("NumberOfNulls") numberOfNulls: nonNegativeLong,
  @as("MaximumValue") maximumValue: option<decimalNumber>,
  @as("MinimumValue") minimumValue: option<decimalNumber>,
}
type dataCatalogEncryptionSettings = {
  @as("ConnectionPasswordEncryption")
  connectionPasswordEncryption: option<connectionPasswordEncryption>,
  @as("EncryptionAtRest") encryptionAtRest: option<encryptionAtRest>,
}
type dagEdges = array<codeGenEdge>
type csvClassifier = {
  @as("AllowSingleColumn") allowSingleColumn: option<nullableBoolean>,
  @as("DisableValueTrimming") disableValueTrimming: option<nullableBoolean>,
  @as("Header") header: option<csvHeader>,
  @as("ContainsHeader") containsHeader: option<csvHeaderOption>,
  @as("QuoteSymbol") quoteSymbol: option<csvQuoteSymbol>,
  @as("Delimiter") delimiter: option<csvColumnDelimiter>,
  @as("Version") version: option<versionId>,
  @as("LastUpdated") lastUpdated: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("Name") name: nameString,
}
type createCsvClassifierRequest = {
  @as("AllowSingleColumn") allowSingleColumn: option<nullableBoolean>,
  @as("DisableValueTrimming") disableValueTrimming: option<nullableBoolean>,
  @as("Header") header: option<csvHeader>,
  @as("ContainsHeader") containsHeader: option<csvHeaderOption>,
  @as("QuoteSymbol") quoteSymbol: option<csvQuoteSymbol>,
  @as("Delimiter") delimiter: option<csvColumnDelimiter>,
  @as("Name") name: nameString,
}
type crawlerMetricsList = array<crawlerMetrics>
type crawlList = array<crawl>
type connectionsList = {@as("Connections") connections: option<orchestrationStringList>}
type conditionList = array<condition>
type columnImportanceList = array<columnImportance>
type columnError = {
  @as("Error") error: option<errorDetail>,
  @as("ColumnName") columnName: option<nameString>,
}
type column = {
  @as("Parameters") parameters: option<parametersMap>,
  @as("Comment") comment: option<commentString>,
  @as("Type") type_: option<columnTypeString>,
  @as("Name") name: nameString,
}
type codeGenNodeArgs = array<codeGenNodeArg>
type catalogTarget = {
  @as("Tables") tables: catalogTablesList,
  @as("DatabaseName") databaseName: nameString,
}
type catalogEntries = array<catalogEntry>
type batchUpdatePartitionFailureEntry = {
  @as("ErrorDetail") errorDetail: option<errorDetail>,
  @as("PartitionValueList") partitionValueList: option<boundedPartitionValueList>,
}
type batchStopJobRunSuccessfulSubmissionList = array<batchStopJobRunSuccessfulSubmission>
type batchStopJobRunError = {
  @as("ErrorDetail") errorDetail: option<errorDetail>,
  @as("JobRunId") jobRunId: option<idString>,
  @as("JobName") jobName: option<nameString>,
}
type action = {
  @as("CrawlerName") crawlerName: option<nameString>,
  @as("NotificationProperty") notificationProperty: option<notificationProperty>,
  @as("SecurityConfiguration") securityConfiguration: option<nameString>,
  @as("Timeout") timeout: option<timeout>,
  @as("Arguments") arguments: option<genericMap>,
  @as("JobName") jobName: option<nameString>,
}
type userDefinedFunctionInput = {
  @as("ResourceUris") resourceUris: option<resourceUriList>,
  @as("OwnerType") ownerType: option<principalType>,
  @as("OwnerName") ownerName: option<nameString>,
  @as("ClassName") className: option<nameString>,
  @as("FunctionName") functionName: option<nameString>,
}
type userDefinedFunction = {
  @as("CatalogId") catalogId: option<catalogIdString>,
  @as("ResourceUris") resourceUris: option<resourceUriList>,
  @as("CreateTime") createTime: option<timestamp_>,
  @as("OwnerType") ownerType: option<principalType>,
  @as("OwnerName") ownerName: option<nameString>,
  @as("ClassName") className: option<nameString>,
  @as("DatabaseName") databaseName: option<nameString>,
  @as("FunctionName") functionName: option<nameString>,
}
type transformFilterCriteria = {
  @as("Schema") schema: option<transformSchema>,
  @as("LastModifiedAfter") lastModifiedAfter: option<timestamp_>,
  @as("LastModifiedBefore") lastModifiedBefore: option<timestamp_>,
  @as("CreatedAfter") createdAfter: option<timestamp_>,
  @as("CreatedBefore") createdBefore: option<timestamp_>,
  @as("GlueVersion") glueVersion: option<glueVersionString>,
  @as("Status") status: option<transformStatusType>,
  @as("TransformType") transformType: option<transformType>,
  @as("Name") name: option<nameString>,
}
type taskRun = {
  @as("ExecutionTime") executionTime: option<executionTime>,
  @as("CompletedOn") completedOn: option<timestamp_>,
  @as("LastModifiedOn") lastModifiedOn: option<timestamp_>,
  @as("StartedOn") startedOn: option<timestamp_>,
  @as("ErrorString") errorString: option<genericString>,
  @as("Properties") properties: option<taskRunProperties>,
  @as("LogGroupName") logGroupName: option<genericString>,
  @as("Status") status: option<taskStatusType>,
  @as("TaskRunId") taskRunId: option<hashString>,
  @as("TransformId") transformId: option<hashString>,
}
type tableVersionErrors = array<tableVersionError>
type tableErrors = array<tableError>
type schemaVersionErrorList = array<schemaVersionErrorItem>
type s3TargetList = array<s3Target>
type principalPermissionsList = array<principalPermissions>
type predicate = {
  @as("Conditions") conditions: option<conditionList>,
  @as("Logical") logical: option<logical>,
}
type partitionIndexList = array<partitionIndex>
type partitionErrors = array<partitionError>
type metadataInfo = {
  @as("OtherMetadataValueList") otherMetadataValueList: option<otherMetadataValueList>,
  @as("CreatedTime") createdTime: option<createdTimestamp>,
  @as("MetadataValue") metadataValue: option<metadataValueString>,
}
type location = {
  @as("DynamoDB") dynamoDB: option<codeGenNodeArgs>,
  @as("S3") s3: option<codeGenNodeArgs>,
  @as("Jdbc") jdbc: option<codeGenNodeArgs>,
}
type jobUpdate = {
  @as("GlueVersion") glueVersion: option<glueVersionString>,
  @as("NotificationProperty") notificationProperty: option<notificationProperty>,
  @as("SecurityConfiguration") securityConfiguration: option<nameString>,
  @as("NumberOfWorkers") numberOfWorkers: option<nullableInteger>,
  @as("WorkerType") workerType: option<workerType>,
  @as("MaxCapacity") maxCapacity: option<nullableDouble>,
  @as("Timeout") timeout: option<timeout>,
  @as("AllocatedCapacity") allocatedCapacity: option<integerValue>,
  @as("MaxRetries") maxRetries: option<maxRetries>,
  @as("Connections") connections: option<connectionsList>,
  @as("NonOverridableArguments") nonOverridableArguments: option<genericMap>,
  @as("DefaultArguments") defaultArguments: option<genericMap>,
  @as("Command") command: option<jobCommand>,
  @as("ExecutionProperty") executionProperty: option<executionProperty>,
  @as("Role") role: option<roleString>,
  @as("LogUri") logUri: option<uriString>,
  @as("Description") description: option<descriptionString>,
}
type jobRun = {
  @as("GlueVersion") glueVersion: option<glueVersionString>,
  @as("NotificationProperty") notificationProperty: option<notificationProperty>,
  @as("LogGroupName") logGroupName: option<genericString>,
  @as("SecurityConfiguration") securityConfiguration: option<nameString>,
  @as("NumberOfWorkers") numberOfWorkers: option<nullableInteger>,
  @as("WorkerType") workerType: option<workerType>,
  @as("MaxCapacity") maxCapacity: option<nullableDouble>,
  @as("Timeout") timeout: option<timeout>,
  @as("ExecutionTime") executionTime: option<executionTime>,
  @as("AllocatedCapacity") allocatedCapacity: option<integerValue>,
  @as("PredecessorRuns") predecessorRuns: option<predecessorList>,
  @as("ErrorMessage") errorMessage: option<errorString>,
  @as("Arguments") arguments: option<genericMap>,
  @as("JobRunState") jobRunState: option<jobRunState>,
  @as("CompletedOn") completedOn: option<timestampValue>,
  @as("LastModifiedOn") lastModifiedOn: option<timestampValue>,
  @as("StartedOn") startedOn: option<timestampValue>,
  @as("JobName") jobName: option<nameString>,
  @as("TriggerName") triggerName: option<nameString>,
  @as("PreviousRunId") previousRunId: option<idString>,
  @as("Attempt") attempt: option<attemptCount>,
  @as("Id") id: option<idString>,
}
type job = {
  @as("GlueVersion") glueVersion: option<glueVersionString>,
  @as("NotificationProperty") notificationProperty: option<notificationProperty>,
  @as("SecurityConfiguration") securityConfiguration: option<nameString>,
  @as("NumberOfWorkers") numberOfWorkers: option<nullableInteger>,
  @as("WorkerType") workerType: option<workerType>,
  @as("MaxCapacity") maxCapacity: option<nullableDouble>,
  @as("Timeout") timeout: option<timeout>,
  @as("AllocatedCapacity") allocatedCapacity: option<integerValue>,
  @as("MaxRetries") maxRetries: option<maxRetries>,
  @as("Connections") connections: option<connectionsList>,
  @as("NonOverridableArguments") nonOverridableArguments: option<genericMap>,
  @as("DefaultArguments") defaultArguments: option<genericMap>,
  @as("Command") command: option<jobCommand>,
  @as("ExecutionProperty") executionProperty: option<executionProperty>,
  @as("LastModifiedOn") lastModifiedOn: option<timestampValue>,
  @as("CreatedOn") createdOn: option<timestampValue>,
  @as("Role") role: option<roleString>,
  @as("LogUri") logUri: option<uriString>,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: option<nameString>,
}
type jdbcTargetList = array<jdbcTarget>
type findMatchesMetrics = {
  @as("ColumnImportances") columnImportances: option<columnImportanceList>,
  @as("ConfusionMatrix") confusionMatrix: option<confusionMatrix>,
  @as("F1") f1: option<genericBoundedDouble>,
  @as("Recall") recall: option<genericBoundedDouble>,
  @as("Precision") precision: option<genericBoundedDouble>,
  @as("AreaUnderPRCurve") areaUnderPRCurve: option<genericBoundedDouble>,
}
type encryptionConfiguration = {
  @as("JobBookmarksEncryption") jobBookmarksEncryption: option<jobBookmarksEncryption>,
  @as("CloudWatchEncryption") cloudWatchEncryption: option<cloudWatchEncryption>,
  @as("S3Encryption") s3Encryption: option<s3EncryptionList>,
}
type devEndpointList = array<devEndpoint>
type crawlerNodeDetails = {@as("Crawls") crawls: option<crawlList>}
type connectionInput = {
  @as("PhysicalConnectionRequirements")
  physicalConnectionRequirements: option<physicalConnectionRequirements>,
  @as("ConnectionProperties") connectionProperties: connectionProperties,
  @as("MatchCriteria") matchCriteria: option<matchCriteria>,
  @as("ConnectionType") connectionType: connectionType,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: nameString,
}
type connection = {
  @as("LastUpdatedBy") lastUpdatedBy: option<nameString>,
  @as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("PhysicalConnectionRequirements")
  physicalConnectionRequirements: option<physicalConnectionRequirements>,
  @as("ConnectionProperties") connectionProperties: option<connectionProperties>,
  @as("MatchCriteria") matchCriteria: option<matchCriteria>,
  @as("ConnectionType") connectionType: option<connectionType>,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: option<nameString>,
}
type columnStatisticsData = {
  @as("BinaryColumnStatisticsData") binaryColumnStatisticsData: option<binaryColumnStatisticsData>,
  @as("StringColumnStatisticsData") stringColumnStatisticsData: option<stringColumnStatisticsData>,
  @as("LongColumnStatisticsData") longColumnStatisticsData: option<longColumnStatisticsData>,
  @as("DoubleColumnStatisticsData") doubleColumnStatisticsData: option<doubleColumnStatisticsData>,
  @as("DecimalColumnStatisticsData")
  decimalColumnStatisticsData: option<decimalColumnStatisticsData>,
  @as("DateColumnStatisticsData") dateColumnStatisticsData: option<dateColumnStatisticsData>,
  @as("BooleanColumnStatisticsData")
  booleanColumnStatisticsData: option<booleanColumnStatisticsData>,
  @as("Type") type_: columnStatisticsType,
}
type columnList = array<column>
type columnErrors = array<columnError>
type codeGenNode = {
  @as("LineNumber") lineNumber: option<integer_>,
  @as("Args") args: codeGenNodeArgs,
  @as("NodeType") nodeType: codeGenNodeType,
  @as("Id") id: codeGenIdentifier,
}
type classifier = {
  @as("CsvClassifier") csvClassifier: option<csvClassifier>,
  @as("JsonClassifier") jsonClassifier: option<jsonClassifier>,
  @as("XMLClassifier") xmlclassifier: option<xmlclassifier>,
  @as("GrokClassifier") grokClassifier: option<grokClassifier>,
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
  @as("Predicate") predicate: option<predicate>,
  @as("Actions") actions: option<actionList>,
  @as("Schedule") schedule: option<genericString>,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: option<nameString>,
}
type trigger = {
  @as("Predicate") predicate: option<predicate>,
  @as("Actions") actions: option<actionList>,
  @as("Schedule") schedule: option<genericString>,
  @as("Description") description: option<descriptionString>,
  @as("State") state: option<triggerState>,
  @as("Type") type_: option<triggerType>,
  @as("Id") id: option<idString>,
  @as("WorkflowName") workflowName: option<nameString>,
  @as("Name") name: option<nameString>,
}
type taskRunList = array<taskRun>
type storageDescriptor = {
  @as("SchemaReference") schemaReference: option<schemaReference>,
  @as("StoredAsSubDirectories") storedAsSubDirectories: option<boolean_>,
  @as("SkewedInfo") skewedInfo: option<skewedInfo>,
  @as("Parameters") parameters: option<parametersMap>,
  @as("SortColumns") sortColumns: option<orderList>,
  @as("BucketColumns") bucketColumns: option<nameStringList>,
  @as("SerdeInfo") serdeInfo: option<serDeInfo>,
  @as("NumberOfBuckets") numberOfBuckets: option<integer_>,
  @as("Compressed") compressed: option<boolean_>,
  @as("OutputFormat") outputFormat: option<formatString>,
  @as("InputFormat") inputFormat: option<formatString>,
  @as("Location") location: option<locationString>,
  @as("Columns") columns: option<columnList>,
}
type securityConfiguration = {
  @as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
  @as("CreatedTimeStamp") createdTimeStamp: option<timestampValue>,
  @as("Name") name: option<nameString>,
}
type metadataInfoMap = Js.Dict.t<metadataInfo>
type jobRunList = array<jobRun>
type jobList = array<job>
type evaluationMetrics = {
  @as("FindMatchesMetrics") findMatchesMetrics: option<findMatchesMetrics>,
  @as("TransformType") transformType: transformType,
}
type databaseInput = {
  @as("TargetDatabase") targetDatabase: option<databaseIdentifier>,
  @as("CreateTableDefaultPermissions")
  createTableDefaultPermissions: option<principalPermissionsList>,
  @as("Parameters") parameters: option<parametersMap>,
  @as("LocationUri") locationUri: option<uri>,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: nameString,
}
type database = {
  @as("CatalogId") catalogId: option<catalogIdString>,
  @as("TargetDatabase") targetDatabase: option<databaseIdentifier>,
  @as("CreateTableDefaultPermissions")
  createTableDefaultPermissions: option<principalPermissionsList>,
  @as("CreateTime") createTime: option<timestamp_>,
  @as("Parameters") parameters: option<parametersMap>,
  @as("LocationUri") locationUri: option<uri>,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: nameString,
}
type dagNodes = array<codeGenNode>
type crawlerTargets = {
  @as("CatalogTargets") catalogTargets: option<catalogTargetList>,
  @as("DynamoDBTargets") dynamoDBTargets: option<dynamoDBTargetList>,
  @as("MongoDBTargets") mongoDBTargets: option<mongoDBTargetList>,
  @as("JdbcTargets") jdbcTargets: option<jdbcTargetList>,
  @as("S3Targets") s3Targets: option<s3TargetList>,
}
type connectionList = array<connection>
type columnStatistics = {
  @as("StatisticsData") statisticsData: columnStatisticsData,
  @as("AnalyzedTime") analyzedTime: timestamp_,
  @as("ColumnType") columnType: typeString,
  @as("ColumnName") columnName: nameString,
}
type classifierList = array<classifier>
type backfillError = {
  @as("Partitions") partitions: option<backfillErroredPartitionsList>,
  @as("Code") code: option<backfillErrorCode>,
}
type updateColumnStatisticsList = array<columnStatistics>
type triggerNodeDetails = {@as("Trigger") trigger: option<trigger>}
type triggerList = array<trigger>
type tableInput = {
  @as("TargetTable") targetTable: option<tableIdentifier>,
  @as("Parameters") parameters: option<parametersMap>,
  @as("TableType") tableType: option<tableTypeString>,
  @as("ViewExpandedText") viewExpandedText: option<viewTextString>,
  @as("ViewOriginalText") viewOriginalText: option<viewTextString>,
  @as("PartitionKeys") partitionKeys: option<columnList>,
  @as("StorageDescriptor") storageDescriptor: option<storageDescriptor>,
  @as("Retention") retention: option<nonNegativeInteger>,
  @as("LastAnalyzedTime") lastAnalyzedTime: option<timestamp_>,
  @as("LastAccessTime") lastAccessTime: option<timestamp_>,
  @as("Owner") owner: option<nameString>,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: nameString,
}
type table = {
  @as("CatalogId") catalogId: option<catalogIdString>,
  @as("TargetTable") targetTable: option<tableIdentifier>,
  @as("IsRegisteredWithLakeFormation") isRegisteredWithLakeFormation: option<boolean_>,
  @as("CreatedBy") createdBy: option<nameString>,
  @as("Parameters") parameters: option<parametersMap>,
  @as("TableType") tableType: option<tableTypeString>,
  @as("ViewExpandedText") viewExpandedText: option<viewTextString>,
  @as("ViewOriginalText") viewOriginalText: option<viewTextString>,
  @as("PartitionKeys") partitionKeys: option<columnList>,
  @as("StorageDescriptor") storageDescriptor: option<storageDescriptor>,
  @as("Retention") retention: option<nonNegativeInteger>,
  @as("LastAnalyzedTime") lastAnalyzedTime: option<timestamp_>,
  @as("LastAccessTime") lastAccessTime: option<timestamp_>,
  @as("UpdateTime") updateTime: option<timestamp_>,
  @as("CreateTime") createTime: option<timestamp_>,
  @as("Owner") owner: option<nameString>,
  @as("Description") description: option<descriptionString>,
  @as("DatabaseName") databaseName: option<nameString>,
  @as("Name") name: nameString,
}
type securityConfigurationList = array<securityConfiguration>
type partitionInput = {
  @as("LastAnalyzedTime") lastAnalyzedTime: option<timestamp_>,
  @as("Parameters") parameters: option<parametersMap>,
  @as("StorageDescriptor") storageDescriptor: option<storageDescriptor>,
  @as("LastAccessTime") lastAccessTime: option<timestamp_>,
  @as("Values") values: option<valueStringList>,
}
type partition = {
  @as("CatalogId") catalogId: option<catalogIdString>,
  @as("LastAnalyzedTime") lastAnalyzedTime: option<timestamp_>,
  @as("Parameters") parameters: option<parametersMap>,
  @as("StorageDescriptor") storageDescriptor: option<storageDescriptor>,
  @as("LastAccessTime") lastAccessTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("TableName") tableName: option<nameString>,
  @as("DatabaseName") databaseName: option<nameString>,
  @as("Values") values: option<valueStringList>,
}
type mltransform = {
  @as("TransformEncryption") transformEncryption: option<transformEncryption>,
  @as("MaxRetries") maxRetries: option<nullableInteger>,
  @as("Timeout") timeout: option<timeout>,
  @as("NumberOfWorkers") numberOfWorkers: option<nullableInteger>,
  @as("WorkerType") workerType: option<workerType>,
  @as("MaxCapacity") maxCapacity: option<nullableDouble>,
  @as("GlueVersion") glueVersion: option<glueVersionString>,
  @as("Role") role: option<roleString>,
  @as("Schema") schema: option<transformSchema>,
  @as("LabelCount") labelCount: option<labelCount>,
  @as("EvaluationMetrics") evaluationMetrics: option<evaluationMetrics>,
  @as("Parameters") parameters: option<transformParameters>,
  @as("InputRecordTables") inputRecordTables: option<glueTables>,
  @as("LastModifiedOn") lastModifiedOn: option<timestamp_>,
  @as("CreatedOn") createdOn: option<timestamp_>,
  @as("Status") status: option<transformStatusType>,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: option<nameString>,
  @as("TransformId") transformId: option<hashString>,
}
type jobNodeDetails = {@as("JobRuns") jobRuns: option<jobRunList>}
type databaseList = array<database>
type crawler = {
  @as("CrawlerSecurityConfiguration")
  crawlerSecurityConfiguration: option<crawlerSecurityConfiguration>,
  @as("Configuration") configuration: option<crawlerConfiguration>,
  @as("Version") version: option<versionId>,
  @as("LastCrawl") lastCrawl: option<lastCrawlInfo>,
  @as("LastUpdated") lastUpdated: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("CrawlElapsedTime") crawlElapsedTime: option<millisecondsCount>,
  @as("Schedule") schedule: option<schedule>,
  @as("TablePrefix") tablePrefix: option<tablePrefix>,
  @as("State") state: option<crawlerState>,
  @as("LineageConfiguration") lineageConfiguration: option<lineageConfiguration>,
  @as("SchemaChangePolicy") schemaChangePolicy: option<schemaChangePolicy>,
  @as("RecrawlPolicy") recrawlPolicy: option<recrawlPolicy>,
  @as("Classifiers") classifiers: option<classifierNameList>,
  @as("Description") description: option<descriptionString>,
  @as("DatabaseName") databaseName: option<databaseName>,
  @as("Targets") targets: option<crawlerTargets>,
  @as("Role") role: option<role>,
  @as("Name") name: option<nameString>,
}
type columnStatisticsList = array<columnStatistics>
type columnStatisticsError = {
  @as("Error") error: option<errorDetail>,
  @as("ColumnStatistics") columnStatistics: option<columnStatistics>,
}
type backfillErrors = array<backfillError>
type transformList = array<mltransform>
type tableVersion = {
  @as("VersionId") versionId: option<versionString>,
  @as("Table") table: option<table>,
}
type tableList = array<table>
type partitionList = array<partition>
type partitionInputList = array<partitionInput>
type partitionIndexDescriptor = {
  @as("BackfillErrors") backfillErrors: option<backfillErrors>,
  @as("IndexStatus") indexStatus: partitionIndexStatus,
  @as("Keys") keys: keySchemaElementList,
  @as("IndexName") indexName: nameString,
}
type node = {
  @as("CrawlerDetails") crawlerDetails: option<crawlerNodeDetails>,
  @as("JobDetails") jobDetails: option<jobNodeDetails>,
  @as("TriggerDetails") triggerDetails: option<triggerNodeDetails>,
  @as("UniqueId") uniqueId: option<nameString>,
  @as("Name") name: option<nameString>,
  @as("Type") type_: option<nodeType>,
}
type crawlerList = array<crawler>
type columnStatisticsErrors = array<columnStatisticsError>
type batchUpdatePartitionRequestEntry = {
  @as("PartitionInput") partitionInput: partitionInput,
  @as("PartitionValueList") partitionValueList: boundedPartitionValueList,
}
type partitionIndexDescriptorList = array<partitionIndexDescriptor>
type nodeList = array<node>
type getTableVersionsList = array<tableVersion>
type batchUpdatePartitionRequestEntryList = array<batchUpdatePartitionRequestEntry>
type workflowGraph = {
  @as("Edges") edges: option<edgeList>,
  @as("Nodes") nodes: option<nodeList>,
}
type workflowRun = {
  @as("Graph") graph: option<workflowGraph>,
  @as("Statistics") statistics: option<workflowRunStatistics>,
  @as("ErrorMessage") errorMessage: option<errorString>,
  @as("Status") status: option<workflowRunStatus>,
  @as("CompletedOn") completedOn: option<timestampValue>,
  @as("StartedOn") startedOn: option<timestampValue>,
  @as("WorkflowRunProperties") workflowRunProperties: option<workflowRunProperties>,
  @as("PreviousRunId") previousRunId: option<idString>,
  @as("WorkflowRunId") workflowRunId: option<idString>,
  @as("Name") name: option<nameString>,
}
type workflowRuns = array<workflowRun>
type workflow = {
  @as("MaxConcurrentRuns") maxConcurrentRuns: option<nullableInteger>,
  @as("Graph") graph: option<workflowGraph>,
  @as("LastRun") lastRun: option<workflowRun>,
  @as("LastModifiedOn") lastModifiedOn: option<timestampValue>,
  @as("CreatedOn") createdOn: option<timestampValue>,
  @as("DefaultRunProperties") defaultRunProperties: option<workflowRunProperties>,
  @as("Description") description: option<genericString>,
  @as("Name") name: option<nameString>,
}
type workflows = array<workflow>

module UpdateCrawlerSchedule = {
  type t
  type request = {
    @as("Schedule") schedule: option<cronExpression>,
    @as("CrawlerName") crawlerName: nameString,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateCrawlerScheduleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopWorkflowRun = {
  type t
  type request = {
    @as("RunId") runId: idString,
    @as("Name") name: nameString,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "StopWorkflowRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopTrigger = {
  type t
  type request = {@as("Name") name: nameString}
  type response = {@as("Name") name: option<nameString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "StopTriggerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopCrawlerSchedule = {
  type t
  type request = {@as("CrawlerName") crawlerName: nameString}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "StopCrawlerScheduleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopCrawler = {
  type t
  type request = {@as("Name") name: nameString}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "StopCrawlerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartWorkflowRun = {
  type t
  type request = {@as("Name") name: nameString}
  type response = {@as("RunId") runId: option<idString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "StartWorkflowRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartTrigger = {
  type t
  type request = {@as("Name") name: nameString}
  type response = {@as("Name") name: option<nameString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "StartTriggerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMLLabelingSetGenerationTaskRun = {
  type t
  type request = {
    @as("OutputS3Path") outputS3Path: uriString,
    @as("TransformId") transformId: hashString,
  }
  type response = {@as("TaskRunId") taskRunId: option<hashString>}
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "StartMLLabelingSetGenerationTaskRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMLEvaluationTaskRun = {
  type t
  type request = {@as("TransformId") transformId: hashString}
  type response = {@as("TaskRunId") taskRunId: option<hashString>}
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "StartMLEvaluationTaskRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartImportLabelsTaskRun = {
  type t
  type request = {
    @as("ReplaceAllLabels") replaceAllLabels: option<replaceBoolean>,
    @as("InputS3Path") inputS3Path: uriString,
    @as("TransformId") transformId: hashString,
  }
  type response = {@as("TaskRunId") taskRunId: option<hashString>}
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "StartImportLabelsTaskRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartExportLabelsTaskRun = {
  type t
  type request = {
    @as("OutputS3Path") outputS3Path: uriString,
    @as("TransformId") transformId: hashString,
  }
  type response = {@as("TaskRunId") taskRunId: option<hashString>}
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "StartExportLabelsTaskRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartCrawlerSchedule = {
  type t
  type request = {@as("CrawlerName") crawlerName: nameString}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "StartCrawlerScheduleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartCrawler = {
  type t
  type request = {@as("Name") name: nameString}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "StartCrawlerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutResourcePolicy = {
  type t
  type request = {
    @as("EnableHybrid") enableHybrid: option<enableHybridValues>,
    @as("PolicyExistsCondition") policyExistsCondition: option<existCondition>,
    @as("PolicyHashCondition") policyHashCondition: option<hashString>,
    @as("ResourceArn") resourceArn: option<glueResourceArn>,
    @as("PolicyInJson") policyInJson: policyJsonString,
  }
  type response = {@as("PolicyHash") policyHash: option<hashString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "PutResourcePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportCatalogToGlue = {
  type t
  type request = {@as("CatalogId") catalogId: option<catalogIdString>}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "ImportCatalogToGlueCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourcePolicy = {
  type t
  type request = {@as("ResourceArn") resourceArn: option<glueResourceArn>}
  type response = {
    @as("UpdateTime") updateTime: option<timestamp_>,
    @as("CreateTime") createTime: option<timestamp_>,
    @as("PolicyHash") policyHash: option<hashString>,
    @as("PolicyInJson") policyInJson: option<policyJsonString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetResourcePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWorkflow = {
  type t
  type request = {@as("Name") name: nameString}
  type response = {@as("Name") name: option<nameString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteWorkflowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUserDefinedFunction = {
  type t
  type request = {
    @as("FunctionName") functionName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "DeleteUserDefinedFunctionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTrigger = {
  type t
  type request = {@as("Name") name: nameString}
  type response = {@as("Name") name: option<nameString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteTriggerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTableVersion = {
  type t
  type request = {
    @as("VersionId") versionId: versionString,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteTableVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTable = {
  type t
  type request = {
    @as("Name") name: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSecurityConfiguration = {
  type t
  type request = {@as("Name") name: nameString}
  type response = unit
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "DeleteSecurityConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {
    @as("ResourceArn") resourceArn: option<glueResourceArn>,
    @as("PolicyHashCondition") policyHashCondition: option<hashString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteResourcePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePartitionIndex = {
  type t
  type request = {
    @as("IndexName") indexName: nameString,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeletePartitionIndexCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMLTransform = {
  type t
  type request = {@as("TransformId") transformId: hashString}
  type response = {@as("TransformId") transformId: option<hashString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteMLTransformCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteJob = {
  type t
  type request = {@as("JobName") jobName: nameString}
  type response = {@as("JobName") jobName: option<nameString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteJobCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDevEndpoint = {
  type t
  type request = {@as("EndpointName") endpointName: genericString}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteDevEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDatabase = {
  type t
  type request = {
    @as("Name") name: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteDatabaseCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCrawler = {
  type t
  type request = {@as("Name") name: nameString}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteCrawlerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteConnection = {
  type t
  type request = {
    @as("ConnectionName") connectionName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteColumnStatisticsForTable = {
  type t
  type request = {
    @as("ColumnName") columnName: nameString,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "DeleteColumnStatisticsForTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteClassifier = {
  type t
  type request = {@as("Name") name: nameString}
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteClassifierCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CheckSchemaVersionValidity = {
  type t
  type request = {
    @as("SchemaDefinition") schemaDefinition: schemaDefinitionString,
    @as("DataFormat") dataFormat: dataFormat,
  }
  type response = {
    @as("Error") error: option<schemaValidationError>,
    @as("Valid") valid: option<isVersionValid>,
  }
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "CheckSchemaVersionValidityCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelMLTaskRun = {
  type t
  type request = {
    @as("TaskRunId") taskRunId: hashString,
    @as("TransformId") transformId: hashString,
  }
  type response = {
    @as("Status") status: option<taskStatusType>,
    @as("TaskRunId") taskRunId: option<hashString>,
    @as("TransformId") transformId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CancelMLTaskRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWorkflow = {
  type t
  type request = {
    @as("MaxConcurrentRuns") maxConcurrentRuns: option<nullableInteger>,
    @as("DefaultRunProperties") defaultRunProperties: option<workflowRunProperties>,
    @as("Description") description: option<genericString>,
    @as("Name") name: nameString,
  }
  type response = {@as("Name") name: option<nameString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateWorkflowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSchema = {
  type t
  type request = {
    @as("Description") description: option<descriptionString>,
    @as("Compatibility") compatibility: option<compatibility>,
    @as("SchemaVersionNumber") schemaVersionNumber: option<schemaVersionNumber>,
    @as("SchemaId") schemaId: schemaId,
  }
  type response = {
    @as("RegistryName") registryName: option<schemaRegistryNameString>,
    @as("SchemaName") schemaName: option<schemaRegistryNameString>,
    @as("SchemaArn") schemaArn: option<glueResourceArn>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateSchemaCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRegistry = {
  type t
  type request = {
    @as("Description") description: descriptionString,
    @as("RegistryId") registryId: registryId,
  }
  type response = {
    @as("RegistryArn") registryArn: option<glueResourceArn>,
    @as("RegistryName") registryName: option<schemaRegistryNameString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateRegistryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDevEndpoint = {
  type t
  type request = {
    @as("AddArguments") addArguments: option<mapValue>,
    @as("DeleteArguments") deleteArguments: option<stringList>,
    @as("UpdateEtlLibraries") updateEtlLibraries: option<booleanValue>,
    @as("CustomLibraries") customLibraries: option<devEndpointCustomLibraries>,
    @as("DeletePublicKeys") deletePublicKeys: option<publicKeysList>,
    @as("AddPublicKeys") addPublicKeys: option<publicKeysList>,
    @as("PublicKey") publicKey: option<genericString>,
    @as("EndpointName") endpointName: genericString,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateDevEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagsToRemove") tagsToRemove: tagKeysList,
    @as("ResourceArn") resourceArn: glueResourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("TagsToAdd") tagsToAdd: tagsMap,
    @as("ResourceArn") resourceArn: glueResourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartJobRun = {
  type t
  type request = {
    @as("NumberOfWorkers") numberOfWorkers: option<nullableInteger>,
    @as("WorkerType") workerType: option<workerType>,
    @as("NotificationProperty") notificationProperty: option<notificationProperty>,
    @as("SecurityConfiguration") securityConfiguration: option<nameString>,
    @as("MaxCapacity") maxCapacity: option<nullableDouble>,
    @as("Timeout") timeout: option<timeout>,
    @as("AllocatedCapacity") allocatedCapacity: option<integerValue>,
    @as("Arguments") arguments: option<genericMap>,
    @as("JobRunId") jobRunId: option<idString>,
    @as("JobName") jobName: nameString,
  }
  type response = {@as("JobRunId") jobRunId: option<idString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "StartJobRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResumeWorkflowRun = {
  type t
  type request = {
    @as("NodeIds") nodeIds: nodeIdList,
    @as("RunId") runId: idString,
    @as("Name") name: nameString,
  }
  type response = {
    @as("NodeIds") nodeIds: option<nodeIdList>,
    @as("RunId") runId: option<idString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "ResumeWorkflowRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetJobBookmark = {
  type t
  type request = {
    @as("RunId") runId: option<runId>,
    @as("JobName") jobName: jobName,
  }
  type response = {@as("JobBookmarkEntry") jobBookmarkEntry: option<jobBookmarkEntry>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "ResetJobBookmarkCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveSchemaVersionMetadata = {
  type t
  type request = {
    @as("MetadataKeyValue") metadataKeyValue: metadataKeyValuePair,
    @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
    @as("SchemaVersionNumber") schemaVersionNumber: option<schemaVersionNumber>,
    @as("SchemaId") schemaId: option<schemaId>,
  }
  type response = {
    @as("MetadataValue") metadataValue: option<metadataValueString>,
    @as("MetadataKey") metadataKey: option<metadataKeyString>,
    @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
    @as("VersionNumber") versionNumber: option<versionLongNumber>,
    @as("LatestVersion") latestVersion: option<latestSchemaVersionBoolean>,
    @as("RegistryName") registryName: option<schemaRegistryNameString>,
    @as("SchemaName") schemaName: option<schemaRegistryNameString>,
    @as("SchemaArn") schemaArn: option<glueResourceArn>,
  }
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "RemoveSchemaVersionMetadataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterSchemaVersion = {
  type t
  type request = {
    @as("SchemaDefinition") schemaDefinition: schemaDefinitionString,
    @as("SchemaId") schemaId: schemaId,
  }
  type response = {
    @as("Status") status: option<schemaVersionStatus>,
    @as("VersionNumber") versionNumber: option<versionLongNumber>,
    @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "RegisterSchemaVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutWorkflowRunProperties = {
  type t
  type request = {
    @as("RunProperties") runProperties: workflowRunProperties,
    @as("RunId") runId: idString,
    @as("Name") name: nameString,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "PutWorkflowRunPropertiesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutSchemaVersionMetadata = {
  type t
  type request = {
    @as("MetadataKeyValue") metadataKeyValue: metadataKeyValuePair,
    @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
    @as("SchemaVersionNumber") schemaVersionNumber: option<schemaVersionNumber>,
    @as("SchemaId") schemaId: option<schemaId>,
  }
  type response = {
    @as("MetadataValue") metadataValue: option<metadataValueString>,
    @as("MetadataKey") metadataKey: option<metadataKeyString>,
    @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
    @as("VersionNumber") versionNumber: option<versionLongNumber>,
    @as("LatestVersion") latestVersion: option<latestSchemaVersionBoolean>,
    @as("RegistryName") registryName: option<schemaRegistryNameString>,
    @as("SchemaName") schemaName: option<schemaRegistryNameString>,
    @as("SchemaArn") schemaArn: option<glueResourceArn>,
  }
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "PutSchemaVersionMetadataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkflows = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<genericString>,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("Workflows") workflows: option<workflowNames>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "ListWorkflowsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTriggers = {
  type t
  type request = {
    @as("Tags") tags: option<tagsMap>,
    @as("MaxResults") maxResults: option<pageSize>,
    @as("DependentJobName") dependentJobName: option<nameString>,
    @as("NextToken") nextToken: option<genericString>,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("TriggerNames") triggerNames: option<triggerNameList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "ListTriggersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  type request = {
    @as("Tags") tags: option<tagsMap>,
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<genericString>,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("JobNames") jobNames: option<jobNameList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "ListJobsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDevEndpoints = {
  type t
  type request = {
    @as("Tags") tags: option<tagsMap>,
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<genericString>,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("DevEndpointNames") devEndpointNames: option<devEndpointNameList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "ListDevEndpointsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCrawlers = {
  type t
  type request = {
    @as("Tags") tags: option<tagsMap>,
    @as("NextToken") nextToken: option<token>,
    @as("MaxResults") maxResults: option<pageSize>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("CrawlerNames") crawlerNames: option<crawlerNameList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "ListCrawlersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorkflowRunProperties = {
  type t
  type request = {
    @as("RunId") runId: idString,
    @as("Name") name: nameString,
  }
  type response = {@as("RunProperties") runProperties: option<workflowRunProperties>}
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "GetWorkflowRunPropertiesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTags = {
  type t
  type request = {@as("ResourceArn") resourceArn: glueResourceArn}
  type response = {@as("Tags") tags: option<tagsMap>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSchemaVersionsDiff = {
  type t
  type request = {
    @as("SchemaDiffType") schemaDiffType: schemaDiffType,
    @as("SecondSchemaVersionNumber") secondSchemaVersionNumber: schemaVersionNumber,
    @as("FirstSchemaVersionNumber") firstSchemaVersionNumber: schemaVersionNumber,
    @as("SchemaId") schemaId: schemaId,
  }
  type response = {@as("Diff") diff: option<schemaDefinitionDiff>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetSchemaVersionsDiffCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSchemaVersion = {
  type t
  type request = {
    @as("SchemaVersionNumber") schemaVersionNumber: option<schemaVersionNumber>,
    @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
    @as("SchemaId") schemaId: option<schemaId>,
  }
  type response = {
    @as("CreatedTime") createdTime: option<createdTimestamp>,
    @as("Status") status: option<schemaVersionStatus>,
    @as("VersionNumber") versionNumber: option<versionLongNumber>,
    @as("SchemaArn") schemaArn: option<glueResourceArn>,
    @as("DataFormat") dataFormat: option<dataFormat>,
    @as("SchemaDefinition") schemaDefinition: option<schemaDefinitionString>,
    @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetSchemaVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSchemaByDefinition = {
  type t
  type request = {
    @as("SchemaDefinition") schemaDefinition: schemaDefinitionString,
    @as("SchemaId") schemaId: schemaId,
  }
  type response = {
    @as("CreatedTime") createdTime: option<createdTimestamp>,
    @as("Status") status: option<schemaVersionStatus>,
    @as("DataFormat") dataFormat: option<dataFormat>,
    @as("SchemaArn") schemaArn: option<glueResourceArn>,
    @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetSchemaByDefinitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSchema = {
  type t
  type request = {@as("SchemaId") schemaId: schemaId}
  type response = {
    @as("UpdatedTime") updatedTime: option<updatedTimestamp>,
    @as("CreatedTime") createdTime: option<createdTimestamp>,
    @as("SchemaStatus") schemaStatus: option<schemaStatus>,
    @as("NextSchemaVersion") nextSchemaVersion: option<versionLongNumber>,
    @as("LatestSchemaVersion") latestSchemaVersion: option<versionLongNumber>,
    @as("SchemaCheckpoint") schemaCheckpoint: option<schemaCheckpointNumber>,
    @as("Compatibility") compatibility: option<compatibility>,
    @as("DataFormat") dataFormat: option<dataFormat>,
    @as("Description") description: option<descriptionString>,
    @as("SchemaArn") schemaArn: option<glueResourceArn>,
    @as("SchemaName") schemaName: option<schemaRegistryNameString>,
    @as("RegistryArn") registryArn: option<glueResourceArn>,
    @as("RegistryName") registryName: option<schemaRegistryNameString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetSchemaCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRegistry = {
  type t
  type request = {@as("RegistryId") registryId: registryId}
  type response = {
    @as("UpdatedTime") updatedTime: option<updatedTimestamp>,
    @as("CreatedTime") createdTime: option<createdTimestamp>,
    @as("Status") status: option<registryStatus>,
    @as("Description") description: option<descriptionString>,
    @as("RegistryArn") registryArn: option<glueResourceArn>,
    @as("RegistryName") registryName: option<schemaRegistryNameString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetRegistryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobBookmark = {
  type t
  type request = {
    @as("RunId") runId: option<runId>,
    @as("JobName") jobName: jobName,
  }
  type response = {@as("JobBookmarkEntry") jobBookmarkEntry: option<jobBookmarkEntry>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetJobBookmarkCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCatalogImportStatus = {
  type t
  type request = {@as("CatalogId") catalogId: option<catalogIdString>}
  type response = {@as("ImportStatus") importStatus: option<catalogImportStatus>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetCatalogImportStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSchema = {
  type t
  type request = {@as("SchemaId") schemaId: schemaId}
  type response = {
    @as("Status") status: option<schemaStatus>,
    @as("SchemaName") schemaName: option<schemaRegistryNameString>,
    @as("SchemaArn") schemaArn: option<glueResourceArn>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteSchemaCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRegistry = {
  type t
  type request = {@as("RegistryId") registryId: registryId}
  type response = {
    @as("Status") status: option<registryStatus>,
    @as("RegistryArn") registryArn: option<glueResourceArn>,
    @as("RegistryName") registryName: option<schemaRegistryNameString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteRegistryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePartition = {
  type t
  type request = {
    @as("PartitionValues") partitionValues: valueStringList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeletePartitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteColumnStatisticsForPartition = {
  type t
  type request = {
    @as("ColumnName") columnName: nameString,
    @as("PartitionValues") partitionValues: valueStringList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "DeleteColumnStatisticsForPartitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorkflow = {
  type t
  type request = {
    @as("MaxConcurrentRuns") maxConcurrentRuns: option<nullableInteger>,
    @as("Tags") tags: option<tagsMap>,
    @as("DefaultRunProperties") defaultRunProperties: option<workflowRunProperties>,
    @as("Description") description: option<genericString>,
    @as("Name") name: nameString,
  }
  type response = {@as("Name") name: option<nameString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateWorkflowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSchema = {
  type t
  type request = {
    @as("SchemaDefinition") schemaDefinition: option<schemaDefinitionString>,
    @as("Tags") tags: option<tagsMap>,
    @as("Description") description: option<descriptionString>,
    @as("Compatibility") compatibility: option<compatibility>,
    @as("DataFormat") dataFormat: dataFormat,
    @as("SchemaName") schemaName: schemaRegistryNameString,
    @as("RegistryId") registryId: option<registryId>,
  }
  type response = {
    @as("SchemaVersionStatus") schemaVersionStatus: option<schemaVersionStatus>,
    @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
    @as("Tags") tags: option<tagsMap>,
    @as("SchemaStatus") schemaStatus: option<schemaStatus>,
    @as("NextSchemaVersion") nextSchemaVersion: option<versionLongNumber>,
    @as("LatestSchemaVersion") latestSchemaVersion: option<versionLongNumber>,
    @as("SchemaCheckpoint") schemaCheckpoint: option<schemaCheckpointNumber>,
    @as("Compatibility") compatibility: option<compatibility>,
    @as("DataFormat") dataFormat: option<dataFormat>,
    @as("Description") description: option<descriptionString>,
    @as("SchemaArn") schemaArn: option<glueResourceArn>,
    @as("SchemaName") schemaName: option<schemaRegistryNameString>,
    @as("RegistryArn") registryArn: option<glueResourceArn>,
    @as("RegistryName") registryName: option<schemaRegistryNameString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateSchemaCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRegistry = {
  type t
  type request = {
    @as("Tags") tags: option<tagsMap>,
    @as("Description") description: option<descriptionString>,
    @as("RegistryName") registryName: schemaRegistryNameString,
  }
  type response = {
    @as("Tags") tags: option<tagsMap>,
    @as("Description") description: option<descriptionString>,
    @as("RegistryName") registryName: option<schemaRegistryNameString>,
    @as("RegistryArn") registryArn: option<glueResourceArn>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateRegistryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDevEndpoint = {
  type t
  type request = {
    @as("Arguments") arguments: option<mapValue>,
    @as("Tags") tags: option<tagsMap>,
    @as("SecurityConfiguration") securityConfiguration: option<nameString>,
    @as("ExtraJarsS3Path") extraJarsS3Path: option<genericString>,
    @as("ExtraPythonLibsS3Path") extraPythonLibsS3Path: option<genericString>,
    @as("NumberOfWorkers") numberOfWorkers: option<nullableInteger>,
    @as("GlueVersion") glueVersion: option<glueVersionString>,
    @as("WorkerType") workerType: option<workerType>,
    @as("NumberOfNodes") numberOfNodes: option<integerValue>,
    @as("PublicKeys") publicKeys: option<publicKeysList>,
    @as("PublicKey") publicKey: option<genericString>,
    @as("SubnetId") subnetId: option<genericString>,
    @as("SecurityGroupIds") securityGroupIds: option<stringList>,
    @as("RoleArn") roleArn: roleArn,
    @as("EndpointName") endpointName: genericString,
  }
  type response = {
    @as("Arguments") arguments: option<mapValue>,
    @as("CreatedTimestamp") createdTimestamp: option<timestampValue>,
    @as("SecurityConfiguration") securityConfiguration: option<nameString>,
    @as("FailureReason") failureReason: option<genericString>,
    @as("ExtraJarsS3Path") extraJarsS3Path: option<genericString>,
    @as("ExtraPythonLibsS3Path") extraPythonLibsS3Path: option<genericString>,
    @as("VpcId") vpcId: option<genericString>,
    @as("AvailabilityZone") availabilityZone: option<genericString>,
    @as("NumberOfWorkers") numberOfWorkers: option<nullableInteger>,
    @as("GlueVersion") glueVersion: option<glueVersionString>,
    @as("WorkerType") workerType: option<workerType>,
    @as("NumberOfNodes") numberOfNodes: option<integerValue>,
    @as("ZeppelinRemoteSparkInterpreterPort")
    zeppelinRemoteSparkInterpreterPort: option<integerValue>,
    @as("YarnEndpointAddress") yarnEndpointAddress: option<genericString>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("SubnetId") subnetId: option<genericString>,
    @as("SecurityGroupIds") securityGroupIds: option<stringList>,
    @as("Status") status: option<genericString>,
    @as("EndpointName") endpointName: option<genericString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateDevEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMLTransform = {
  type t
  type request = {
    @as("MaxRetries") maxRetries: option<nullableInteger>,
    @as("Timeout") timeout: option<timeout>,
    @as("NumberOfWorkers") numberOfWorkers: option<nullableInteger>,
    @as("WorkerType") workerType: option<workerType>,
    @as("MaxCapacity") maxCapacity: option<nullableDouble>,
    @as("GlueVersion") glueVersion: option<glueVersionString>,
    @as("Role") role: option<roleString>,
    @as("Parameters") parameters: option<transformParameters>,
    @as("Description") description: option<descriptionString>,
    @as("Name") name: option<nameString>,
    @as("TransformId") transformId: hashString,
  }
  type response = {@as("TransformId") transformId: option<hashString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateMLTransformCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateClassifier = {
  type t
  type request = {
    @as("CsvClassifier") csvClassifier: option<updateCsvClassifierRequest>,
    @as("JsonClassifier") jsonClassifier: option<updateJsonClassifierRequest>,
    @as("XMLClassifier") xmlclassifier: option<updateXMLClassifierRequest>,
    @as("GrokClassifier") grokClassifier: option<updateGrokClassifierRequest>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateClassifierCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutDataCatalogEncryptionSettings = {
  type t
  type request = {
    @as("DataCatalogEncryptionSettings")
    dataCatalogEncryptionSettings: dataCatalogEncryptionSettings,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "PutDataCatalogEncryptionSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSchemas = {
  type t
  type request = {
    @as("NextToken") nextToken: option<schemaRegistryTokenString>,
    @as("MaxResults") maxResults: option<maxResultsNumber>,
    @as("RegistryId") registryId: option<registryId>,
  }
  type response = {
    @as("NextToken") nextToken: option<schemaRegistryTokenString>,
    @as("Schemas") schemas: option<schemaListDefinition>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "ListSchemasCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSchemaVersions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<schemaRegistryTokenString>,
    @as("MaxResults") maxResults: option<maxResultsNumber>,
    @as("SchemaId") schemaId: schemaId,
  }
  type response = {
    @as("NextToken") nextToken: option<schemaRegistryTokenString>,
    @as("Schemas") schemas: option<schemaVersionList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "ListSchemaVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRegistries = {
  type t
  type request = {
    @as("NextToken") nextToken: option<schemaRegistryTokenString>,
    @as("MaxResults") maxResults: option<maxResultsNumber>,
  }
  type response = {
    @as("NextToken") nextToken: option<schemaRegistryTokenString>,
    @as("Registries") registries: option<registryListDefinition>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "ListRegistriesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourcePolicies = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("GetResourcePoliciesResponseList")
    getResourcePoliciesResponseList: option<getResourcePoliciesResponseList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetResourcePoliciesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMLTaskRun = {
  type t
  type request = {
    @as("TaskRunId") taskRunId: hashString,
    @as("TransformId") transformId: hashString,
  }
  type response = {
    @as("ExecutionTime") executionTime: option<executionTime>,
    @as("CompletedOn") completedOn: option<timestamp_>,
    @as("LastModifiedOn") lastModifiedOn: option<timestamp_>,
    @as("StartedOn") startedOn: option<timestamp_>,
    @as("ErrorString") errorString: option<genericString>,
    @as("Properties") properties: option<taskRunProperties>,
    @as("LogGroupName") logGroupName: option<genericString>,
    @as("Status") status: option<taskStatusType>,
    @as("TaskRunId") taskRunId: option<hashString>,
    @as("TransformId") transformId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetMLTaskRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevEndpoint = {
  type t
  type request = {@as("EndpointName") endpointName: genericString}
  type response = {@as("DevEndpoint") devEndpoint: option<devEndpoint>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetDevEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDataCatalogEncryptionSettings = {
  type t
  type request = {@as("CatalogId") catalogId: option<catalogIdString>}
  type response = {
    @as("DataCatalogEncryptionSettings")
    dataCatalogEncryptionSettings: option<dataCatalogEncryptionSettings>,
  }
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "GetDataCatalogEncryptionSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCrawlerMetrics = {
  type t
  type request = {
    @as("NextToken") nextToken: option<token>,
    @as("MaxResults") maxResults: option<pageSize>,
    @as("CrawlerNameList") crawlerNameList: option<crawlerNameList>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("CrawlerMetricsList") crawlerMetricsList: option<crawlerMetricsList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetCrawlerMetricsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePartitionIndex = {
  type t
  type request = {
    @as("PartitionIndex") partitionIndex: partitionIndex,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreatePartitionIndexCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMLTransform = {
  type t
  type request = {
    @as("TransformEncryption") transformEncryption: option<transformEncryption>,
    @as("Tags") tags: option<tagsMap>,
    @as("MaxRetries") maxRetries: option<nullableInteger>,
    @as("Timeout") timeout: option<timeout>,
    @as("NumberOfWorkers") numberOfWorkers: option<nullableInteger>,
    @as("WorkerType") workerType: option<workerType>,
    @as("MaxCapacity") maxCapacity: option<nullableDouble>,
    @as("GlueVersion") glueVersion: option<glueVersionString>,
    @as("Role") role: roleString,
    @as("Parameters") parameters: transformParameters,
    @as("InputRecordTables") inputRecordTables: glueTables,
    @as("Description") description: option<descriptionString>,
    @as("Name") name: nameString,
  }
  type response = {@as("TransformId") transformId: option<hashString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateMLTransformCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJob = {
  type t
  type request = {
    @as("WorkerType") workerType: option<workerType>,
    @as("NumberOfWorkers") numberOfWorkers: option<nullableInteger>,
    @as("GlueVersion") glueVersion: option<glueVersionString>,
    @as("NotificationProperty") notificationProperty: option<notificationProperty>,
    @as("Tags") tags: option<tagsMap>,
    @as("SecurityConfiguration") securityConfiguration: option<nameString>,
    @as("MaxCapacity") maxCapacity: option<nullableDouble>,
    @as("Timeout") timeout: option<timeout>,
    @as("AllocatedCapacity") allocatedCapacity: option<integerValue>,
    @as("MaxRetries") maxRetries: option<maxRetries>,
    @as("Connections") connections: option<connectionsList>,
    @as("NonOverridableArguments") nonOverridableArguments: option<genericMap>,
    @as("DefaultArguments") defaultArguments: option<genericMap>,
    @as("Command") command: jobCommand,
    @as("ExecutionProperty") executionProperty: option<executionProperty>,
    @as("Role") role: roleString,
    @as("LogUri") logUri: option<uriString>,
    @as("Description") description: option<descriptionString>,
    @as("Name") name: nameString,
  }
  type response = {@as("Name") name: option<nameString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateJobCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClassifier = {
  type t
  type request = {
    @as("CsvClassifier") csvClassifier: option<createCsvClassifierRequest>,
    @as("JsonClassifier") jsonClassifier: option<createJsonClassifierRequest>,
    @as("XMLClassifier") xmlclassifier: option<createXMLClassifierRequest>,
    @as("GrokClassifier") grokClassifier: option<createGrokClassifierRequest>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateClassifierCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteConnection = {
  type t
  type request = {
    @as("ConnectionNameList") connectionNameList: deleteConnectionNameList,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {
    @as("Errors") errors: option<errorByName>,
    @as("Succeeded") succeeded: option<nameStringList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "BatchDeleteConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateUserDefinedFunction = {
  type t
  type request = {
    @as("FunctionInput") functionInput: userDefinedFunctionInput,
    @as("FunctionName") functionName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "UpdateUserDefinedFunctionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateJob = {
  type t
  type request = {
    @as("JobUpdate") jobUpdate: jobUpdate,
    @as("JobName") jobName: nameString,
  }
  type response = {@as("JobName") jobName: option<nameString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateJobCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConnection = {
  type t
  type request = {
    @as("ConnectionInput") connectionInput: connectionInput,
    @as("Name") name: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMLTransforms = {
  type t
  type request = {
    @as("Tags") tags: option<tagsMap>,
    @as("Sort") sort: option<transformSortCriteria>,
    @as("Filter") filter: option<transformFilterCriteria>,
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("TransformIds") transformIds: transformIdList,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "ListMLTransformsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUserDefinedFunction = {
  type t
  type request = {
    @as("FunctionName") functionName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("UserDefinedFunction") userDefinedFunction: option<userDefinedFunction>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetUserDefinedFunctionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPlan = {
  type t
  type request = {
    @as("AdditionalPlanOptionsMap") additionalPlanOptionsMap: option<additionalPlanOptionsMap>,
    @as("Language") language: option<language>,
    @as("Location") location: option<location>,
    @as("Sinks") sinks: option<catalogEntries>,
    @as("Source") source: catalogEntry,
    @as("Mapping") mapping: mappingList,
  }
  type response = {
    @as("ScalaCode") scalaCode: option<scalaCode>,
    @as("PythonScript") pythonScript: option<pythonScript>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetPlanCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMapping = {
  type t
  type request = {
    @as("Location") location: option<location>,
    @as("Sinks") sinks: option<catalogEntries>,
    @as("Source") source: catalogEntry,
  }
  type response = {@as("Mapping") mapping: mappingList}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetMappingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobRun = {
  type t
  type request = {
    @as("PredecessorsIncluded") predecessorsIncluded: option<booleanValue>,
    @as("RunId") runId: idString,
    @as("JobName") jobName: nameString,
  }
  type response = {@as("JobRun") jobRun: option<jobRun>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetJobRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJob = {
  type t
  type request = {@as("JobName") jobName: nameString}
  type response = {@as("Job") job: option<job>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetJobCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevEndpoints = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<pageSize>,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("DevEndpoints") devEndpoints: option<devEndpointList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetDevEndpointsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConnection = {
  type t
  type request = {
    @as("HidePassword") hidePassword: option<boolean_>,
    @as("Name") name: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("Connection") connection: option<connection>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetClassifier = {
  type t
  type request = {@as("Name") name: nameString}
  type response = {@as("Classifier") classifier: option<classifier>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetClassifierCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSchemaVersions = {
  type t
  type request = {
    @as("Versions") versions: versionsString,
    @as("SchemaId") schemaId: schemaId,
  }
  type response = {@as("SchemaVersionErrors") schemaVersionErrors: option<schemaVersionErrorList>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "DeleteSchemaVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUserDefinedFunction = {
  type t
  type request = {
    @as("FunctionInput") functionInput: userDefinedFunctionInput,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "CreateUserDefinedFunctionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTrigger = {
  type t
  type request = {
    @as("Tags") tags: option<tagsMap>,
    @as("StartOnCreation") startOnCreation: option<booleanValue>,
    @as("Description") description: option<descriptionString>,
    @as("Actions") actions: actionList,
    @as("Predicate") predicate: option<predicate>,
    @as("Schedule") schedule: option<genericString>,
    @as("Type") type_: triggerType,
    @as("WorkflowName") workflowName: option<nameString>,
    @as("Name") name: nameString,
  }
  type response = {@as("Name") name: option<nameString>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateTriggerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSecurityConfiguration = {
  type t
  type request = {
    @as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
    @as("Name") name: nameString,
  }
  type response = {
    @as("CreatedTimestamp") createdTimestamp: option<timestampValue>,
    @as("Name") name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "CreateSecurityConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConnection = {
  type t
  type request = {
    @as("ConnectionInput") connectionInput: connectionInput,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchStopJobRun = {
  type t
  type request = {
    @as("JobRunIds") jobRunIds: batchStopJobRunJobRunIdList,
    @as("JobName") jobName: nameString,
  }
  type response = {
    @as("Errors") errors: option<batchStopJobRunErrorList>,
    @as("SuccessfulSubmissions")
    successfulSubmissions: option<batchStopJobRunSuccessfulSubmissionList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "BatchStopJobRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetDevEndpoints = {
  type t
  type request = {@as("DevEndpointNames") devEndpointNames: devEndpointNames}
  type response = {
    @as("DevEndpointsNotFound") devEndpointsNotFound: option<devEndpointNames>,
    @as("DevEndpoints") devEndpoints: option<devEndpointList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "BatchGetDevEndpointsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteTableVersion = {
  type t
  type request = {
    @as("VersionIds") versionIds: batchDeleteTableVersionList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("Errors") errors: option<tableVersionErrors>}
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "BatchDeleteTableVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteTable = {
  type t
  type request = {
    @as("TablesToDelete") tablesToDelete: batchDeleteTableNameList,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("Errors") errors: option<tableErrors>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "BatchDeleteTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeletePartition = {
  type t
  type request = {
    @as("PartitionsToDelete") partitionsToDelete: batchDeletePartitionValueList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("Errors") errors: option<partitionErrors>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "BatchDeletePartitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTrigger = {
  type t
  type request = {
    @as("TriggerUpdate") triggerUpdate: triggerUpdate,
    @as("Name") name: nameString,
  }
  type response = {@as("Trigger") trigger: option<trigger>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateTriggerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDatabase = {
  type t
  type request = {
    @as("DatabaseInput") databaseInput: databaseInput,
    @as("Name") name: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateDatabaseCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCrawler = {
  type t
  type request = {
    @as("CrawlerSecurityConfiguration")
    crawlerSecurityConfiguration: option<crawlerSecurityConfiguration>,
    @as("Configuration") configuration: option<crawlerConfiguration>,
    @as("LineageConfiguration") lineageConfiguration: option<lineageConfiguration>,
    @as("RecrawlPolicy") recrawlPolicy: option<recrawlPolicy>,
    @as("SchemaChangePolicy") schemaChangePolicy: option<schemaChangePolicy>,
    @as("TablePrefix") tablePrefix: option<tablePrefix>,
    @as("Classifiers") classifiers: option<classifierNameList>,
    @as("Schedule") schedule: option<cronExpression>,
    @as("Targets") targets: option<crawlerTargets>,
    @as("Description") description: option<descriptionStringRemovable>,
    @as("DatabaseName") databaseName: option<databaseName>,
    @as("Role") role: option<role>,
    @as("Name") name: nameString,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateCrawlerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module QuerySchemaVersionMetadata = {
  type t
  type request = {
    @as("NextToken") nextToken: option<schemaRegistryTokenString>,
    @as("MaxResults") maxResults: option<querySchemaVersionMetadataMaxResults>,
    @as("MetadataList") metadataList: option<metadataList>,
    @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
    @as("SchemaVersionNumber") schemaVersionNumber: option<schemaVersionNumber>,
    @as("SchemaId") schemaId: option<schemaId>,
  }
  type response = {
    @as("NextToken") nextToken: option<schemaRegistryTokenString>,
    @as("SchemaVersionId") schemaVersionId: option<schemaVersionIdString>,
    @as("MetadataInfoMap") metadataInfoMap: option<metadataInfoMap>,
  }
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "QuerySchemaVersionMetadataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUserDefinedFunctions = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<catalogGetterPageSize>,
    @as("NextToken") nextToken: option<token>,
    @as("Pattern") pattern: nameString,
    @as("DatabaseName") databaseName: option<nameString>,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("UserDefinedFunctions") userDefinedFunctions: option<userDefinedFunctionList>,
  }
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "GetUserDefinedFunctionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTrigger = {
  type t
  type request = {@as("Name") name: nameString}
  type response = {@as("Trigger") trigger: option<trigger>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetTriggerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSecurityConfiguration = {
  type t
  type request = {@as("Name") name: nameString}
  type response = {
    @as("SecurityConfiguration") securityConfiguration: option<securityConfiguration>,
  }
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "GetSecurityConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMLTransform = {
  type t
  type request = {@as("TransformId") transformId: hashString}
  type response = {
    @as("TransformEncryption") transformEncryption: option<transformEncryption>,
    @as("MaxRetries") maxRetries: option<nullableInteger>,
    @as("Timeout") timeout: option<timeout>,
    @as("NumberOfWorkers") numberOfWorkers: option<nullableInteger>,
    @as("WorkerType") workerType: option<workerType>,
    @as("MaxCapacity") maxCapacity: option<nullableDouble>,
    @as("GlueVersion") glueVersion: option<glueVersionString>,
    @as("Role") role: option<roleString>,
    @as("Schema") schema: option<transformSchema>,
    @as("LabelCount") labelCount: option<labelCount>,
    @as("EvaluationMetrics") evaluationMetrics: option<evaluationMetrics>,
    @as("Parameters") parameters: option<transformParameters>,
    @as("InputRecordTables") inputRecordTables: option<glueTables>,
    @as("LastModifiedOn") lastModifiedOn: option<timestamp_>,
    @as("CreatedOn") createdOn: option<timestamp_>,
    @as("Status") status: option<transformStatusType>,
    @as("Description") description: option<descriptionString>,
    @as("Name") name: option<nameString>,
    @as("TransformId") transformId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetMLTransformCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMLTaskRuns = {
  type t
  type request = {
    @as("Sort") sort: option<taskRunSortCriteria>,
    @as("Filter") filter: option<taskRunFilterCriteria>,
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("TransformId") transformId: hashString,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("TaskRuns") taskRuns: option<taskRunList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetMLTaskRunsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<genericString>,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("Jobs") jobs: option<jobList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetJobsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobRuns = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<genericString>,
    @as("JobName") jobName: nameString,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("JobRuns") jobRuns: option<jobRunList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetJobRunsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDataflowGraph = {
  type t
  type request = {@as("PythonScript") pythonScript: option<pythonScript>}
  type response = {
    @as("DagEdges") dagEdges: option<dagEdges>,
    @as("DagNodes") dagNodes: option<dagNodes>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetDataflowGraphCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDatabase = {
  type t
  type request = {
    @as("Name") name: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("Database") database: option<database>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetDatabaseCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConnections = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<token>,
    @as("HidePassword") hidePassword: option<boolean_>,
    @as("Filter") filter: option<getConnectionsFilter>,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("ConnectionList") connectionList: option<connectionList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetConnectionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetClassifiers = {
  type t
  type request = {
    @as("NextToken") nextToken: option<token>,
    @as("MaxResults") maxResults: option<pageSize>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Classifiers") classifiers: option<classifierList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetClassifiersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateScript = {
  type t
  type request = {
    @as("Language") language: option<language>,
    @as("DagEdges") dagEdges: option<dagEdges>,
    @as("DagNodes") dagNodes: option<dagNodes>,
  }
  type response = {
    @as("ScalaCode") scalaCode: option<scalaCode>,
    @as("PythonScript") pythonScript: option<pythonScript>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateScriptCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDatabase = {
  type t
  type request = {
    @as("DatabaseInput") databaseInput: databaseInput,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateDatabaseCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCrawler = {
  type t
  type request = {
    @as("Tags") tags: option<tagsMap>,
    @as("CrawlerSecurityConfiguration")
    crawlerSecurityConfiguration: option<crawlerSecurityConfiguration>,
    @as("Configuration") configuration: option<crawlerConfiguration>,
    @as("LineageConfiguration") lineageConfiguration: option<lineageConfiguration>,
    @as("RecrawlPolicy") recrawlPolicy: option<recrawlPolicy>,
    @as("SchemaChangePolicy") schemaChangePolicy: option<schemaChangePolicy>,
    @as("TablePrefix") tablePrefix: option<tablePrefix>,
    @as("Classifiers") classifiers: option<classifierNameList>,
    @as("Schedule") schedule: option<cronExpression>,
    @as("Targets") targets: crawlerTargets,
    @as("Description") description: option<descriptionString>,
    @as("DatabaseName") databaseName: option<databaseName>,
    @as("Role") role: role,
    @as("Name") name: nameString,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateCrawlerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetJobs = {
  type t
  type request = {@as("JobNames") jobNames: jobNameList}
  type response = {
    @as("JobsNotFound") jobsNotFound: option<jobNameList>,
    @as("Jobs") jobs: option<jobList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "BatchGetJobsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTable = {
  type t
  type request = {
    @as("SkipArchive") skipArchive: option<booleanNullable>,
    @as("TableInput") tableInput: tableInput,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdateTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePartition = {
  type t
  type request = {
    @as("PartitionInput") partitionInput: partitionInput,
    @as("PartitionValueList") partitionValueList: boundedPartitionValueList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "UpdatePartitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTriggers = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("DependentJobName") dependentJobName: option<nameString>,
    @as("NextToken") nextToken: option<genericString>,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("Triggers") triggers: option<triggerList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetTriggersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTable = {
  type t
  type request = {
    @as("Name") name: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("Table") table: option<table>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSecurityConfigurations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<pageSize>,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("SecurityConfigurations") securityConfigurations: option<securityConfigurationList>,
  }
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "GetSecurityConfigurationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPartition = {
  type t
  type request = {
    @as("PartitionValues") partitionValues: valueStringList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("Partition") partition: option<partition>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetPartitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDatabases = {
  type t
  type request = {
    @as("ResourceShareType") resourceShareType: option<resourceShareType>,
    @as("MaxResults") maxResults: option<catalogGetterPageSize>,
    @as("NextToken") nextToken: option<token>,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("DatabaseList") databaseList: databaseList,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetDatabasesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCrawler = {
  type t
  type request = {@as("Name") name: nameString}
  type response = {@as("Crawler") crawler: option<crawler>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetCrawlerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetColumnStatisticsForTable = {
  type t
  type request = {
    @as("ColumnNames") columnNames: getColumnNamesList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {
    @as("Errors") errors: option<columnErrors>,
    @as("ColumnStatisticsList") columnStatisticsList: option<columnStatisticsList>,
  }
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "GetColumnStatisticsForTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetColumnStatisticsForPartition = {
  type t
  type request = {
    @as("ColumnNames") columnNames: getColumnNamesList,
    @as("PartitionValues") partitionValues: valueStringList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {
    @as("Errors") errors: option<columnErrors>,
    @as("ColumnStatisticsList") columnStatisticsList: option<columnStatisticsList>,
  }
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "GetColumnStatisticsForPartitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTable = {
  type t
  type request = {
    @as("PartitionIndexes") partitionIndexes: option<partitionIndexList>,
    @as("TableInput") tableInput: tableInput,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreateTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePartition = {
  type t
  type request = {
    @as("PartitionInput") partitionInput: partitionInput,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = unit
  @module("@aws-sdk/client-glue") @new external new_: request => t = "CreatePartitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetTriggers = {
  type t
  type request = {@as("TriggerNames") triggerNames: triggerNameList}
  type response = {
    @as("TriggersNotFound") triggersNotFound: option<triggerNameList>,
    @as("Triggers") triggers: option<triggerList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "BatchGetTriggersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateColumnStatisticsForTable = {
  type t
  type request = {
    @as("ColumnStatisticsList") columnStatisticsList: updateColumnStatisticsList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("Errors") errors: option<columnStatisticsErrors>}
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "UpdateColumnStatisticsForTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateColumnStatisticsForPartition = {
  type t
  type request = {
    @as("ColumnStatisticsList") columnStatisticsList: updateColumnStatisticsList,
    @as("PartitionValues") partitionValues: valueStringList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("Errors") errors: option<columnStatisticsErrors>}
  @module("@aws-sdk/client-glue") @new
  external new_: request => t = "UpdateColumnStatisticsForPartitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchTables = {
  type t
  type request = {
    @as("ResourceShareType") resourceShareType: option<resourceShareType>,
    @as("MaxResults") maxResults: option<pageSize>,
    @as("SortCriteria") sortCriteria: option<sortCriteria>,
    @as("SearchText") searchText: option<valueString>,
    @as("Filters") filters: option<searchPropertyPredicates>,
    @as("NextToken") nextToken: option<token>,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {
    @as("TableList") tableList: option<tableList>,
    @as("NextToken") nextToken: option<token>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "SearchTablesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTables = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<catalogGetterPageSize>,
    @as("NextToken") nextToken: option<token>,
    @as("Expression") expression: option<filterString>,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("TableList") tableList: option<tableList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetTablesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTableVersion = {
  type t
  type request = {
    @as("VersionId") versionId: option<versionString>,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("TableVersion") tableVersion: option<tableVersion>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetTableVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPartitions = {
  type t
  type request = {
    @as("ExcludeColumnSchema") excludeColumnSchema: option<booleanNullable>,
    @as("MaxResults") maxResults: option<pageSize>,
    @as("Segment") segment: option<segment>,
    @as("NextToken") nextToken: option<token>,
    @as("Expression") expression: option<predicateString>,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Partitions") partitions: option<partitionList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetPartitionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMLTransforms = {
  type t
  type request = {
    @as("Sort") sort: option<transformSortCriteria>,
    @as("Filter") filter: option<transformFilterCriteria>,
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Transforms") transforms: transformList,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetMLTransformsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCrawlers = {
  type t
  type request = {
    @as("NextToken") nextToken: option<token>,
    @as("MaxResults") maxResults: option<pageSize>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Crawlers") crawlers: option<crawlerList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetCrawlersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetPartition = {
  type t
  type request = {
    @as("PartitionsToGet") partitionsToGet: batchGetPartitionValueList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {
    @as("UnprocessedKeys") unprocessedKeys: option<batchGetPartitionValueList>,
    @as("Partitions") partitions: option<partitionList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "BatchGetPartitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetCrawlers = {
  type t
  type request = {@as("CrawlerNames") crawlerNames: crawlerNameList}
  type response = {
    @as("CrawlersNotFound") crawlersNotFound: option<crawlerNameList>,
    @as("Crawlers") crawlers: option<crawlerList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "BatchGetCrawlersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchCreatePartition = {
  type t
  type request = {
    @as("PartitionInputList") partitionInputList: partitionInputList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("Errors") errors: option<partitionErrors>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "BatchCreatePartitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTableVersions = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<catalogGetterPageSize>,
    @as("NextToken") nextToken: option<token>,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("TableVersions") tableVersions: option<getTableVersionsList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetTableVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPartitionIndexes = {
  type t
  type request = {
    @as("NextToken") nextToken: option<token>,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("PartitionIndexDescriptorList")
    partitionIndexDescriptorList: option<partitionIndexDescriptorList>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetPartitionIndexesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchUpdatePartition = {
  type t
  type request = {
    @as("Entries") entries: batchUpdatePartitionRequestEntryList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: option<catalogIdString>,
  }
  type response = {@as("Errors") errors: option<batchUpdatePartitionFailureList>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "BatchUpdatePartitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorkflowRun = {
  type t
  type request = {
    @as("IncludeGraph") includeGraph: option<nullableBoolean>,
    @as("RunId") runId: idString,
    @as("Name") name: nameString,
  }
  type response = {@as("Run") run: option<workflowRun>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetWorkflowRunCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorkflowRuns = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<genericString>,
    @as("IncludeGraph") includeGraph: option<nullableBoolean>,
    @as("Name") name: nameString,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("Runs") runs: option<workflowRuns>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetWorkflowRunsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorkflow = {
  type t
  type request = {
    @as("IncludeGraph") includeGraph: option<nullableBoolean>,
    @as("Name") name: nameString,
  }
  type response = {@as("Workflow") workflow: option<workflow>}
  @module("@aws-sdk/client-glue") @new external new_: request => t = "GetWorkflowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetWorkflows = {
  type t
  type request = {
    @as("IncludeGraph") includeGraph: option<nullableBoolean>,
    @as("Names") names: workflowNames,
  }
  type response = {
    @as("MissingWorkflows") missingWorkflows: option<workflowNames>,
    @as("Workflows") workflows: option<workflows>,
  }
  @module("@aws-sdk/client-glue") @new external new_: request => t = "BatchGetWorkflowsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
