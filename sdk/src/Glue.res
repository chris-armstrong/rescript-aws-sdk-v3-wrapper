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
  | @as("EVENT") #EVENT
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
type transactionIdString = string
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
type statementState = [
  | @as("ERROR") #ERROR
  | @as("CANCELLED") #CANCELLED
  | @as("CANCELLING") #CANCELLING
  | @as("AVAILABLE") #AVAILABLE
  | @as("RUNNING") #RUNNING
  | @as("WAITING") #WAITING
]
type sortDirectionType = [@as("ASCENDING") #ASCENDING | @as("DESCENDING") #DESCENDING]
type sort = [@as("DESC") #DESC | @as("ASC") #ASC]
type sessionStatus = [
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("TIMEOUT") #TIMEOUT
  | @as("FAILED") #FAILED
  | @as("READY") #READY
  | @as("PROVISIONING") #PROVISIONING
]
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
  | @as("CRAWL_EVENT_MODE") #CRAWL_EVENT_MODE
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
type permissionType = [
  | @as("CELL_FILTER_PERMISSION") #CELL_FILTER_PERMISSION
  | @as("COLUMN_PERMISSION") #COLUMN_PERMISSION
]
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
type orchestrationToken = string
type orchestrationStatementCodeString = string
type orchestrationS3Location = string
type orchestrationRoleArn = string
type orchestrationNameString = string
type orchestrationIAMRoleArn = string
type orchestrationArgumentsValue = string
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
type longValue = float
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
type generic512CharString = string
type formatString = string
type filterString = string
type fieldType = string
type existCondition = [
  | @as("NONE") #NONE
  | @as("NOT_EXIST") #NOT_EXIST
  | @as("MUST_EXIST") #MUST_EXIST
]
type executionTime = int
type eventQueueArn = string
type errorString = string
type errorMessageString = string
type errorCodeString = string
type enableHybridValues = [@as("FALSE") #FALSE | @as("TRUE") #TRUE]
type doubleValue = float
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
type dataFormat = [@as("PROTOBUF") #PROTOBUF | @as("JSON") #JSON | @as("AVRO") #AVRO]
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
type blueprintStatus = [
  | @as("FAILED") #FAILED
  | @as("UPDATING") #UPDATING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type blueprintRunState = [
  | @as("ROLLING_BACK") #ROLLING_BACK
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("RUNNING") #RUNNING
]
type blueprintParameters = string
type blueprintParameterSpec = string
type blob = NodeJs.Buffer.t
type batchWindow = int
type batchSize = int
type backfillErrorCode = [
  | @as("UNSUPPORTED_PARTITION_CHARACTER_ERROR") #UNSUPPORTED_PARTITION_CHARACTER_ERROR
  | @as("MISSING_PARTITION_VALUE_ERROR") #MISSING_PARTITION_VALUE_ERROR
  | @as("INVALID_PARTITION_TYPE_DATA_ERROR") #INVALID_PARTITION_TYPE_DATA_ERROR
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("ENCRYPTED_PARTITION_ERROR") #ENCRYPTED_PARTITION_ERROR
]
type auditContextString = string
type attemptCount = int
type accountId = string
@ocaml.doc("<p>A classifier for <code>XML</code> content.</p>")
type xmlclassifier = {
  @ocaml.doc("<p>The XML tag designating the element that contains each record in an XML document being
      parsed. This can't identify a self-closing element (closed by <code>/></code>). An empty
      row element that contains only attributes can be parsed as long as it ends with a closing tag
      (for example, <code><row item_a=\"A\" item_b=\"B\"></row></code> is okay, but
        <code><row item_a=\"A\" item_b=\"B\" /></code> is not).</p>")
  @as("RowTag")
  rowTag: option<rowTag>,
  @ocaml.doc("<p>The version of this classifier.</p>") @as("Version") version: option<versionId>,
  @ocaml.doc("<p>The time that this classifier was last updated.</p>") @as("LastUpdated")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>The time that this classifier was registered.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>An identifier of the data format that the classifier matches.</p>")
  @as("Classification")
  classification: classification,
  @ocaml.doc("<p>The name of the classifier.</p>") @as("Name") name: nameString,
}
@ocaml.doc("<p>Workflow run statistics provides statistics about the workflow run.</p>")
type workflowRunStatistics = {
  @ocaml.doc("<p>Total number Actions in running state.</p>") @as("RunningActions")
  runningActions: option<integerValue>,
  @ocaml.doc("<p>Total number of Actions that have succeeded.</p>") @as("SucceededActions")
  succeededActions: option<integerValue>,
  @ocaml.doc("<p>Total number of Actions that have stopped.</p>") @as("StoppedActions")
  stoppedActions: option<integerValue>,
  @ocaml.doc("<p>Total number of Actions that have failed.</p>") @as("FailedActions")
  failedActions: option<integerValue>,
  @ocaml.doc("<p>Total number of Actions that timed out.</p>") @as("TimeoutActions")
  timeoutActions: option<integerValue>,
  @ocaml.doc("<p>Total number of Actions in the workflow run.</p>") @as("TotalActions")
  totalActions: option<integerValue>,
}
type workflowRunProperties = Js.Dict.t<genericString>
type workflowNames = array<nameString>
type valueStringList = array<valueString>
@ocaml.doc("<p>Specifies an XML classifier to be updated.</p>")
type updateXMLClassifierRequest = {
  @ocaml.doc("<p>The XML tag designating the element that contains each record in an XML document being
      parsed. This cannot identify a self-closing element (closed by <code>/></code>). An empty
      row element that contains only attributes can be parsed as long as it ends with a closing tag
      (for example, <code><row item_a=\"A\" item_b=\"B\"></row></code> is okay, but
        <code><row item_a=\"A\" item_b=\"B\" /></code> is not).</p>")
  @as("RowTag")
  rowTag: option<rowTag>,
  @ocaml.doc("<p>An identifier of the data format that the classifier matches.</p>")
  @as("Classification")
  classification: option<classification>,
  @ocaml.doc("<p>The name of the classifier.</p>") @as("Name") name: nameString,
}
@ocaml.doc("<p>Specifies a JSON classifier to be updated.</p>")
type updateJsonClassifierRequest = {
  @ocaml.doc("<p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify.
      Glue supports a subset of JsonPath, as described in <a href=\"https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json\">Writing JsonPath Custom Classifiers</a>.</p>")
  @as("JsonPath")
  jsonPath: option<jsonPath>,
  @ocaml.doc("<p>The name of the classifier.</p>") @as("Name") name: nameString,
}
@ocaml.doc("<p>Specifies a grok classifier to update when passed to
      <code>UpdateClassifier</code>.</p>")
type updateGrokClassifierRequest = {
  @ocaml.doc("<p>Optional custom grok patterns used by this classifier.</p>") @as("CustomPatterns")
  customPatterns: option<customPatterns>,
  @ocaml.doc("<p>The grok pattern used by this classifier.</p>") @as("GrokPattern")
  grokPattern: option<grokPattern>,
  @ocaml.doc("<p>An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs,
      Amazon CloudWatch Logs, and so on.</p>")
  @as("Classification")
  classification: option<classification>,
  @ocaml.doc("<p>The name of the <code>GrokClassifier</code>.</p>") @as("Name") name: nameString,
}
type triggerNameList = array<nameString>
@ocaml.doc("<p>The sorting criteria that are associated with the machine learning transform.</p>")
type transformSortCriteria = {
  @ocaml.doc("<p>The sort direction to be used in the sorting criteria that are associated with the machine
      learning transform.</p>")
  @as("SortDirection")
  sortDirection: sortDirectionType,
  @ocaml.doc("<p>The column to be used in the sorting criteria that are associated with the machine
      learning transform.</p>")
  @as("Column")
  column: transformSortColumnType,
}
type transformIdList = array<hashString>
@ocaml.doc("<p>The sorting criteria that are used to sort the list of task runs for the machine learning
      transform.</p>")
type taskRunSortCriteria = {
  @ocaml.doc("<p>The sort direction to be used to sort the list of task runs for the machine learning
      transform.</p>")
  @as("SortDirection")
  sortDirection: sortDirectionType,
  @ocaml.doc("<p>The column to be used to sort the list of task runs for the machine learning
      transform.</p>")
  @as("Column")
  column: taskRunSortColumnType,
}
@ocaml.doc("<p>The criteria that are used to filter the task runs for the machine learning
      transform.</p>")
type taskRunFilterCriteria = {
  @ocaml.doc("<p>Filter on task runs started after this date.</p>") @as("StartedAfter")
  startedAfter: option<timestamp_>,
  @ocaml.doc("<p>Filter on task runs started before this date.</p>") @as("StartedBefore")
  startedBefore: option<timestamp_>,
  @ocaml.doc("<p>The current status of the task run.</p>") @as("Status")
  status: option<taskStatusType>,
  @ocaml.doc("<p>The type of task run.</p>") @as("TaskRunType") taskRunType: option<taskType>,
}
type tagsMap = Js.Dict.t<tagValue>
type tagKeysList = array<tagKey>
@ocaml.doc("<p>A structure that describes a target table for resource linking.</p>")
type tableIdentifier = {
  @ocaml.doc("<p>The name of the target table.</p>") @as("Name") name: option<nameString>,
  @ocaml.doc("<p>The name of the catalog database that contains the target table.</p>")
  @as("DatabaseName")
  databaseName: option<nameString>,
  @ocaml.doc("<p>The ID of the Data Catalog in which the table resides.</p>") @as("CatalogId")
  catalogId: option<catalogIdString>,
}
type stringList = array<genericString>
@ocaml.doc("<p>Defines column statistics supported for character sequence data values.</p>")
type stringColumnStatisticsData = {
  @ocaml.doc("<p>The number of distinct values in a column.</p>") @as("NumberOfDistinctValues")
  numberOfDistinctValues: nonNegativeLong,
  @ocaml.doc("<p>The number of null values in the column.</p>") @as("NumberOfNulls")
  numberOfNulls: nonNegativeLong,
  @ocaml.doc("<p>The average string length in the column.</p>") @as("AverageLength")
  averageLength: nonNegativeDouble,
  @ocaml.doc("<p>The size of the longest string in the column.</p>") @as("MaximumLength")
  maximumLength: nonNegativeLong,
}
@ocaml.doc("<p>The code execution output in JSON format.</p>")
type statementOutputData = {
  @ocaml.doc("<p>The code execution output in text format.</p>") @as("TextPlain")
  textPlain: option<genericString>,
}
@ocaml.doc("<p>The batch condition that started the workflow run. Either the number of events in the batch size arrived,
      in which case the BatchSize member is non-zero, or the batch window expired, in which case the BatchWindow
      member is non-zero.</p>")
type startingEventBatchCondition = {
  @ocaml.doc("<p>Duration of the batch window in seconds.</p>") @as("BatchWindow")
  batchWindow: option<nullableInteger>,
  @ocaml.doc("<p>Number of events in the batch.</p>") @as("BatchSize")
  batchSize: option<nullableInteger>,
}
@ocaml.doc("<p>Specifies a field to sort by and a sort order.</p>")
type sortCriterion = {
  @ocaml.doc("<p>An ascending or descending sort.</p>") @as("Sort") sort: option<sort>,
  @ocaml.doc("<p>The name of the field on which to sort.</p>") @as("FieldName")
  fieldName: option<valueString>,
}
type sessionIdList = array<nameString>
@ocaml.doc("<p>The <code>SessionCommand</code> that runs the job.</p>")
type sessionCommand = {
  @ocaml.doc(
    "<p>Specifies the Python version. The Python version indicates the version supported for jobs of type Spark.</p>"
  )
  @as("PythonVersion")
  pythonVersion: option<pythonVersionString>,
  @ocaml.doc("<p>Specifies the name of the SessionCommand.Can be 'glueetl' or 'gluestreaming'.</p>")
  @as("Name")
  name: option<nameString>,
}
@ocaml.doc("<p>Defines a non-overlapping region of a table's partitions, allowing
      multiple requests to be run in parallel.</p>")
type segment = {
  @ocaml.doc("<p>The total number of segments.</p>") @as("TotalSegments")
  totalSegments: totalSegmentsInteger,
  @ocaml.doc("<p>The zero-based index number of the segment. For example, if the total number of segments
      is 4, <code>SegmentNumber</code> values range from 0 through 3.</p>")
  @as("SegmentNumber")
  segmentNumber: nonNegativeInteger,
}
type securityGroupIdList = array<nameString>
@ocaml.doc("<p>A structure containing the schema version information.</p>")
type schemaVersionNumber = {
  @ocaml.doc("<p>The version number of the schema.</p>") @as("VersionNumber")
  versionNumber: option<versionLongNumber>,
  @ocaml.doc("<p>The latest version available for the schema.</p>") @as("LatestVersion")
  latestVersion: option<latestSchemaVersionBoolean>,
}
@ocaml.doc("<p>An object containing the details about a schema version.</p>")
type schemaVersionListItem = {
  @ocaml.doc("<p>The date and time the schema version was created.</p>") @as("CreatedTime")
  createdTime: option<createdTimestamp>,
  @ocaml.doc("<p>The status of the schema version.</p>") @as("Status")
  status: option<schemaVersionStatus>,
  @ocaml.doc("<p>The version number of the schema.</p>") @as("VersionNumber")
  versionNumber: option<versionLongNumber>,
  @ocaml.doc("<p>The unique identifier of the schema version.</p>") @as("SchemaVersionId")
  schemaVersionId: option<schemaVersionIdString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema.</p>") @as("SchemaArn")
  schemaArn: option<glueResourceArn>,
}
@ocaml.doc("<p>An object that contains minimal details for a schema.</p>")
type schemaListItem = {
  @ocaml.doc("<p>The date and time that a schema was updated.</p>") @as("UpdatedTime")
  updatedTime: option<updatedTimestamp>,
  @ocaml.doc("<p>The date and time that a schema was created.</p>") @as("CreatedTime")
  createdTime: option<createdTimestamp>,
  @ocaml.doc("<p>The status of the schema.</p>") @as("SchemaStatus")
  schemaStatus: option<schemaStatus>,
  @ocaml.doc("<p>A description for the schema.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the schema.</p>") @as("SchemaArn")
  schemaArn: option<glueResourceArn>,
  @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName")
  schemaName: option<schemaRegistryNameString>,
  @ocaml.doc("<p>the name of the registry where the schema resides.</p>") @as("RegistryName")
  registryName: option<schemaRegistryNameString>,
}
@ocaml.doc("<p>The unique ID of the schema in the Glue schema registry.</p>")
type schemaId = {
  @ocaml.doc("<p>The name of the schema registry that contains the schema.</p>") @as("RegistryName")
  registryName: option<schemaRegistryNameString>,
  @ocaml.doc(
    "<p>The name of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>"
  )
  @as("SchemaName")
  schemaName: option<schemaRegistryNameString>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>"
  )
  @as("SchemaArn")
  schemaArn: option<glueResourceArn>,
}
@ocaml.doc("<p>A key-value pair representing a column and data type that this transform can
      run against. The <code>Schema</code> parameter of the <code>MLTransform</code> may contain up to 100 of these structures.</p>")
type schemaColumn = {
  @ocaml.doc("<p>The type of data in the column.</p>") @as("DataType")
  dataType: option<columnTypeString>,
  @ocaml.doc("<p>The name of the column.</p>") @as("Name") name: option<columnNameString>,
}
@ocaml.doc("<p>A policy that specifies update and deletion behaviors for the crawler.</p>")
type schemaChangePolicy = {
  @ocaml.doc("<p>The deletion behavior when the crawler finds a deleted object.</p>")
  @as("DeleteBehavior")
  deleteBehavior: option<deleteBehavior>,
  @ocaml.doc("<p>The update behavior when the crawler finds a changed schema.</p>")
  @as("UpdateBehavior")
  updateBehavior: option<updateBehavior>,
}
@ocaml.doc("<p>A scheduling object using a <code>cron</code> statement to schedule an event.</p>")
type schedule = {
  @ocaml.doc("<p>The state of the schedule.</p>") @as("State") state: option<scheduleState>,
  @ocaml.doc("<p>A <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
      something every day at 12:15 UTC, you would specify:
      <code>cron(15 12 * * ? *)</code>.</p>")
  @as("ScheduleExpression")
  scheduleExpression: option<cronExpression>,
}
@ocaml.doc(
  "<p>Specifies how Amazon Simple Storage Service (Amazon S3) data should be encrypted.</p>"
)
type s3Encryption = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>")
  @as("KmsKeyArn")
  kmsKeyArn: option<kmsKeyArn>,
  @ocaml.doc("<p>The encryption mode to use for Amazon S3 data.</p>") @as("S3EncryptionMode")
  s3EncryptionMode: option<s3EncryptionMode>,
}
@ocaml.doc("<p>The URIs for function resources.</p>")
type resourceUri = {
  @ocaml.doc("<p>The URI for accessing the resource.</p>") @as("Uri") uri: option<uri>,
  @ocaml.doc("<p>The type of the resource.</p>") @as("ResourceType")
  resourceType: option<resourceType>,
}
@ocaml.doc("<p>A structure containing the details for a registry.</p>")
type registryListItem = {
  @ocaml.doc("<p>The date the registry was updated.</p>") @as("UpdatedTime")
  updatedTime: option<updatedTimestamp>,
  @ocaml.doc("<p>The data the registry was created.</p>") @as("CreatedTime")
  createdTime: option<createdTimestamp>,
  @ocaml.doc("<p>The status of the registry.</p>") @as("Status") status: option<registryStatus>,
  @ocaml.doc("<p>A description of the registry.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the registry.</p>") @as("RegistryArn")
  registryArn: option<glueResourceArn>,
  @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName")
  registryName: option<schemaRegistryNameString>,
}
@ocaml.doc(
  "<p>A wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>"
)
type registryId = {
  @ocaml.doc(
    "<p>Arn of the registry to be updated. One of <code>RegistryArn</code> or <code>RegistryName</code> has to be provided.</p>"
  )
  @as("RegistryArn")
  registryArn: option<glueResourceArn>,
  @ocaml.doc(
    "<p>Name of the registry. Used only for lookup. One of <code>RegistryArn</code> or <code>RegistryName</code> has to be provided. </p>"
  )
  @as("RegistryName")
  registryName: option<schemaRegistryNameString>,
}
@ocaml.doc(
  "<p>When crawling an Amazon S3 data source after the first crawl is complete, specifies whether to crawl the entire dataset again or to crawl only folders that were added since the last crawler run. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/incremental-crawls.html\">Incremental Crawls in Glue</a> in the developer guide.</p>"
)
type recrawlPolicy = {
  @ocaml.doc("<p>Specifies whether to crawl the entire dataset again or to crawl only folders that were added since the last crawler run.</p>
	
	        <p>A value of <code>CRAWL_EVERYTHING</code> specifies crawling the entire dataset again.</p>
  
         <p>A value of <code>CRAWL_NEW_FOLDERS_ONLY</code> specifies crawling only folders that were added since the last crawler run.</p>
	
	        <p>A value of <code>CRAWL_EVENT_MODE</code> specifies crawling only the changes identified by Amazon S3 events.</p>")
  @as("RecrawlBehavior")
  recrawlBehavior: option<recrawlBehavior>,
}
type publicKeysList = array<genericString>
@ocaml.doc("<p>Defines a property predicate.</p>")
type propertyPredicate = {
  @ocaml.doc("<p>The comparator used to compare this property to others.</p>") @as("Comparator")
  comparator: option<comparator>,
  @ocaml.doc("<p>The value of the property.</p>") @as("Value") value: option<valueString>,
  @ocaml.doc("<p>The key of the property.</p>") @as("Key") key: option<valueString>,
}
@ocaml.doc("<p>A job run that was used in the predicate of a conditional trigger
      that triggered this job run.</p>")
type predecessor = {
  @ocaml.doc("<p>The job-run ID of the predecessor job run.</p>") @as("RunId")
  runId: option<idString>,
  @ocaml.doc("<p>The name of the job definition used by the predecessor job run.</p>")
  @as("JobName")
  jobName: option<nameString>,
}
type permissionTypeList = array<permissionType>
type permissionList = array<permission>
type pathList = array<path>
type parametersMap = Js.Dict.t<parametersMapValue>
@ocaml.doc(
  "<p>A structure containing other metadata for a schema version belonging to the same metadata key.</p>"
)
type otherMetadataValueListItem = {
  @ocaml.doc("<p>The time at which the entry was created.</p>") @as("CreatedTime")
  createdTime: option<createdTimestamp>,
  @ocaml.doc(
    "<p>The metadata key’s corresponding value for the other metadata belonging to the same metadata key.</p>"
  )
  @as("MetadataValue")
  metadataValue: option<metadataValueString>,
}
@ocaml.doc("<p>Specifies the sort order of a sorted column.</p>")
type order = {
  @ocaml.doc("<p>Indicates that the column is sorted in ascending order
      (<code>== 1</code>), or in descending order (<code>==0</code>).</p>")
  @as("SortOrder")
  sortOrder: integerFlag,
  @ocaml.doc("<p>The name of the column.</p>") @as("Column") column: nameString,
}
type orchestrationStringList = array<genericString>
type orchestrationArgumentsMap = Js.Dict.t<orchestrationArgumentsValue>
@ocaml.doc("<p>Specifies configuration properties of a notification.</p>")
type notificationProperty = {
  @ocaml.doc("<p>After a job run starts, the number of minutes to wait before
      sending a job run delay notification.</p>")
  @as("NotifyDelayAfter")
  notifyDelayAfter: option<notifyDelayAfter>,
}
type nodeIdList = array<nameString>
type nameStringList = array<nameString>
@ocaml.doc("<p>Specifies an Amazon DocumentDB or MongoDB data store to crawl.</p>")
type mongoDBTarget = {
  @ocaml.doc("<p>Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table.</p>
	
	        <p>A value of <code>true</code> means to scan all records, while a value of <code>false</code> means to sample the records. If no value is specified, the value defaults to <code>true</code>.</p>")
  @as("ScanAll")
  scanAll: option<nullableBoolean>,
  @ocaml.doc("<p>The path of the Amazon DocumentDB or MongoDB target (database/collection).</p>")
  @as("Path")
  path: option<path>,
  @ocaml.doc(
    "<p>The name of the connection to use to connect to the Amazon DocumentDB or MongoDB target.</p>"
  )
  @as("ConnectionName")
  connectionName: option<connectionName>,
}
@ocaml.doc("<p>A structure containing a key value pair for metadata.</p>")
type metadataKeyValuePair = {
  @ocaml.doc("<p>A metadata key’s corresponding value.</p>") @as("MetadataValue")
  metadataValue: option<metadataValueString>,
  @ocaml.doc("<p>A metadata key.</p>") @as("MetadataKey") metadataKey: option<metadataKeyString>,
}
type matchCriteria = array<nameString>
@ocaml.doc("<p>Defines a mapping.</p>")
type mappingEntry = {
  @ocaml.doc("<p>The target type.</p>") @as("TargetType") targetType: option<fieldType>,
  @ocaml.doc("<p>The target path.</p>") @as("TargetPath") targetPath: option<schemaPathString>,
  @ocaml.doc("<p>The target table.</p>") @as("TargetTable") targetTable: option<tableName>,
  @ocaml.doc("<p>The source type.</p>") @as("SourceType") sourceType: option<fieldType>,
  @ocaml.doc("<p>The source path.</p>") @as("SourcePath") sourcePath: option<schemaPathString>,
  @ocaml.doc("<p>The name of the source table.</p>") @as("SourceTable")
  sourceTable: option<tableName>,
}
type mapValue = Js.Dict.t<genericString>
@ocaml.doc(
  "<p>The encryption-at-rest settings of the transform that apply to accessing user data.</p>"
)
type mluserDataEncryption = {
  @ocaml.doc("<p>The ID for the customer-provided KMS key.</p>") @as("KmsKeyId")
  kmsKeyId: option<nameString>,
  @ocaml.doc("<p>The encryption mode applied to user data. Valid values are:</p>
	
	        <ul>
            <li>
               <p>DISABLED: encryption is disabled</p>
            </li>
            <li>
               <p>SSEKMS: use of server-side encryption with Key Management Service (SSE-KMS) for user data stored in Amazon S3.</p>
            </li>
         </ul>")
  @as("MlUserDataEncryptionMode")
  mlUserDataEncryptionMode: mluserDataEncryptionModeString,
}
@ocaml.doc("<p>Defines column statistics supported for integer data columns.</p>")
type longColumnStatisticsData = {
  @ocaml.doc("<p>The number of distinct values in a column.</p>") @as("NumberOfDistinctValues")
  numberOfDistinctValues: nonNegativeLong,
  @ocaml.doc("<p>The number of null values in the column.</p>") @as("NumberOfNulls")
  numberOfNulls: nonNegativeLong,
  @ocaml.doc("<p>The highest value in the column.</p>") @as("MaximumValue")
  maximumValue: option<long>,
  @ocaml.doc("<p>The lowest value in the column.</p>") @as("MinimumValue")
  minimumValue: option<long>,
}
type locationStringList = array<locationString>
type locationMap = Js.Dict.t<columnValuesString>
@ocaml.doc("<p>Specifies data lineage configuration settings for the crawler.</p>")
type lineageConfiguration = {
  @ocaml.doc("<p>Specifies whether data lineage is enabled for the crawler. Valid values are:</p>
	
	        <ul>
            <li>
               <p>ENABLE: enables data lineage for the crawler</p>
            </li>
            <li>
               <p>DISABLE: disables data lineage for the crawler</p>
            </li>
         </ul>")
  @as("CrawlerLineageSettings")
  crawlerLineageSettings: option<crawlerLineageSettings>,
}
@ocaml.doc("<p>Status and error information about the most recent crawl.</p>")
type lastCrawlInfo = {
  @ocaml.doc("<p>The time at which the crawl started.</p>") @as("StartTime")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>The prefix for a message about this crawl.</p>") @as("MessagePrefix")
  messagePrefix: option<messagePrefix>,
  @ocaml.doc("<p>The log stream for the last crawl.</p>") @as("LogStream")
  logStream: option<logStream>,
  @ocaml.doc("<p>The log group for the last crawl.</p>") @as("LogGroup") logGroup: option<logGroup>,
  @ocaml.doc("<p>If an error occurred, the error information about the last crawl.</p>")
  @as("ErrorMessage")
  errorMessage: option<descriptionString>,
  @ocaml.doc("<p>Status of the last crawl.</p>") @as("Status") status: option<lastCrawlStatus>,
}
@ocaml.doc(
  "<p>When there are multiple versions of a blueprint and the latest version has some errors, this attribute indicates the last successful blueprint definition that is available with the service.</p>"
)
type lastActiveDefinition = {
  @ocaml.doc(
    "<p>Specifies a path in Amazon S3 where the blueprint is copied when you create or update the blueprint.</p>"
  )
  @as("BlueprintServiceLocation")
  blueprintServiceLocation: option<genericString>,
  @ocaml.doc(
    "<p>Specifies a path in Amazon S3 where the blueprint is published by the Glue developer.</p>"
  )
  @as("BlueprintLocation")
  blueprintLocation: option<genericString>,
  @ocaml.doc("<p>A JSON string specifying the parameters for the blueprint.</p>")
  @as("ParameterSpec")
  parameterSpec: option<blueprintParameterSpec>,
  @ocaml.doc("<p>The date and time the blueprint was last modified.</p>") @as("LastModifiedOn")
  lastModifiedOn: option<timestampValue>,
  @ocaml.doc("<p>The description of the blueprint.</p>") @as("Description")
  description: option<generic512CharString>,
}
type lakeFormationConfiguration = {
  @as("AccountId") accountId: option<accountId>,
  @as("UseLakeFormationCredentials") useLakeFormationCredentials: option<nullableBoolean>,
}
@ocaml.doc("<p>Specifies configuration properties for a labeling set generation task run.</p>")
type labelingSetGenerationTaskRunProperties = {
  @ocaml.doc("<p>The Amazon Simple Storage Service (Amazon S3) path where you will generate the labeling
      set.</p>")
  @as("OutputS3Path")
  outputS3Path: option<uriString>,
}
@ocaml.doc("<p>A partition key pair consisting of a name and a type.</p>")
type keySchemaElement = {
  @ocaml.doc("<p>The type of a partition key.</p>") @as("Type") type_: columnTypeString,
  @ocaml.doc("<p>The name of a partition key.</p>") @as("Name") name: nameString,
}
type keyList = array<nameString>
@ocaml.doc("<p>A classifier for <code>JSON</code> content.</p>")
type jsonClassifier = {
  @ocaml.doc("<p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify.
      Glue supports a subset of JsonPath, as described in <a href=\"https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json\">Writing JsonPath Custom Classifiers</a>.</p>")
  @as("JsonPath")
  jsonPath: jsonPath,
  @ocaml.doc("<p>The version of this classifier.</p>") @as("Version") version: option<versionId>,
  @ocaml.doc("<p>The time that this classifier was last updated.</p>") @as("LastUpdated")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>The time that this classifier was registered.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The name of the classifier.</p>") @as("Name") name: nameString,
}
type jobNameList = array<nameString>
@ocaml.doc("<p>Specifies code that runs when a job is run.</p>")
type jobCommand = {
  @ocaml.doc(
    "<p>The Python version being used to run a Python shell job. Allowed values are 2 or 3.</p>"
  )
  @as("PythonVersion")
  pythonVersion: option<pythonVersionString>,
  @ocaml.doc("<p>Specifies the Amazon Simple Storage Service (Amazon S3) path to a script that runs a
      job.</p>")
  @as("ScriptLocation")
  scriptLocation: option<scriptLocationString>,
  @ocaml.doc("<p>The name of the job command. For an Apache Spark ETL job, this must be
      <code>glueetl</code>. For a Python shell job, it must be <code>pythonshell</code>. 
      For an Apache Spark streaming ETL job, this must be <code>gluestreaming</code>.</p>")
  @as("Name")
  name: option<genericString>,
}
@ocaml.doc("<p>Specifies how job bookmark data should be encrypted.</p>")
type jobBookmarksEncryption = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>")
  @as("KmsKeyArn")
  kmsKeyArn: option<kmsKeyArn>,
  @ocaml.doc("<p>The encryption mode to use for job bookmarks data.</p>")
  @as("JobBookmarksEncryptionMode")
  jobBookmarksEncryptionMode: option<jobBookmarksEncryptionMode>,
}
@ocaml.doc("<p>Defines a point that a job can resume processing.</p>")
type jobBookmarkEntry = {
  @ocaml.doc("<p>The bookmark itself.</p>") @as("JobBookmark") jobBookmark: option<jsonValue>,
  @ocaml.doc("<p>The run ID number.</p>") @as("RunId") runId: option<runId>,
  @ocaml.doc("<p>The unique run identifier associated with the previous job run.</p>")
  @as("PreviousRunId")
  previousRunId: option<runId>,
  @ocaml.doc("<p>The attempt ID number.</p>") @as("Attempt") attempt: option<integerValue>,
  @ocaml.doc("<p>The run ID number.</p>") @as("Run") run: option<integerValue>,
  @ocaml.doc("<p>The version of the job.</p>") @as("Version") version: option<integerValue>,
  @ocaml.doc("<p>The name of the job in question.</p>") @as("JobName") jobName: option<jobName>,
}
@ocaml.doc("<p>Specifies configuration properties for an importing labels task run.</p>")
type importLabelsTaskRunProperties = {
  @ocaml.doc("<p>Indicates whether to overwrite your existing labels.</p>") @as("Replace")
  replace: option<replaceBoolean>,
  @ocaml.doc("<p>The Amazon Simple Storage Service (Amazon S3) path from where you will import the
      labels.</p>")
  @as("InputS3Path")
  inputS3Path: option<uriString>,
}
@ocaml.doc("<p>A classifier that uses <code>grok</code> patterns.</p>")
type grokClassifier = {
  @ocaml.doc("<p>Optional custom grok patterns defined by this classifier.
      For more information, see custom patterns in <a href=\"https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html\">Writing Custom Classifiers</a>.</p>")
  @as("CustomPatterns")
  customPatterns: option<customPatterns>,
  @ocaml.doc("<p>The grok pattern applied to a data store by this classifier.
       For more information, see built-in patterns in <a href=\"https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html\">Writing Custom Classifiers</a>.</p>")
  @as("GrokPattern")
  grokPattern: grokPattern,
  @ocaml.doc("<p>The version of this classifier.</p>") @as("Version") version: option<versionId>,
  @ocaml.doc("<p>The time that this classifier was last updated.</p>") @as("LastUpdated")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>The time that this classifier was registered.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, and
      so on.</p>")
  @as("Classification")
  classification: classification,
  @ocaml.doc("<p>The name of the classifier.</p>") @as("Name") name: nameString,
}
@ocaml.doc(
  "<p>The database and table in the Glue Data Catalog that is used for input or output data.</p>"
)
type glueTable = {
  @ocaml.doc("<p>The name of the connection to the Glue Data Catalog.</p>") @as("ConnectionName")
  connectionName: option<nameString>,
  @ocaml.doc("<p>A unique identifier for the Glue Data Catalog.</p>") @as("CatalogId")
  catalogId: option<nameString>,
  @ocaml.doc("<p>A table name in the Glue Data Catalog.</p>") @as("TableName")
  tableName: nameString,
  @ocaml.doc("<p>A database name in the Glue Data Catalog.</p>") @as("DatabaseName")
  databaseName: nameString,
}
@ocaml.doc("<p>A structure for returning a resource policy.</p>")
type gluePolicy = {
  @ocaml.doc("<p>The date and time at which the policy was last updated.</p>") @as("UpdateTime")
  updateTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time at which the policy was created.</p>") @as("CreateTime")
  createTime: option<timestamp_>,
  @ocaml.doc("<p>Contains the hash value associated with this policy.</p>") @as("PolicyHash")
  policyHash: option<hashString>,
  @ocaml.doc("<p>Contains the requested policy document, in JSON format.</p>") @as("PolicyInJson")
  policyInJson: option<policyJsonString>,
}
type getColumnNamesList = array<nameString>
type genericMap = Js.Dict.t<genericString>
@ocaml.doc("<p>Specifies configuration properties for a Find Matches task run.</p>")
type findMatchesTaskRunProperties = {
  @ocaml.doc("<p>The job run ID for the Find Matches task run.</p>") @as("JobRunId")
  jobRunId: option<hashString>,
  @ocaml.doc("<p>The name assigned to the job for the Find Matches task run.</p>") @as("JobName")
  jobName: option<nameString>,
  @ocaml.doc("<p>The job ID for the Find Matches task run.</p>") @as("JobId")
  jobId: option<hashString>,
}
@ocaml.doc("<p>The parameters to configure the find matches transform.</p>")
type findMatchesParameters = {
  @ocaml.doc("<p>The value to switch on or off to force the output to match the provided labels from users. If the value is <code>True</code>, the <code>find matches</code> transform forces the output to match the provided labels. The results override the normal conflation results. If the value is <code>False</code>, the <code>find matches</code> transform does not ensure all the labels provided are respected, and the results rely on the trained model.</p>
         <p>Note that setting this value to true may increase the conflation execution time.</p>")
  @as("EnforceProvidedLabels")
  enforceProvidedLabels: option<nullableBoolean>,
  @ocaml.doc("<p>The value that is selected when tuning your transform for a balance between accuracy and
      cost. A value of 0.5 means that the system balances accuracy and cost concerns. A value of 1.0
      means a bias purely for accuracy, which typically results in a higher cost, sometimes
      substantially higher. A value of 0.0 means a bias purely for cost, which results in a less
      accurate <code>FindMatches</code> transform, sometimes with unacceptable accuracy.</p> 
	
	        <p>Accuracy measures how well the transform finds true positives and true negatives. Increasing accuracy requires more machine resources and cost. But it also results in increased recall. </p>
	
	        <p>Cost measures how many compute resources, and thus money, are consumed to run the
      transform.</p>")
  @as("AccuracyCostTradeoff")
  accuracyCostTradeoff: option<genericBoundedDouble>,
  @ocaml.doc("<p>The value selected when tuning your transform for a balance between precision and recall.
      A value of 0.5 means no preference; a value of 1.0 means a bias purely for precision, and a
      value of 0.0 means a bias for recall. Because this is a tradeoff, choosing values close to 1.0
      means very low recall, and choosing values close to 0.0 results in very low precision.</p>
	
	        <p>The precision metric indicates how often your model is correct when it predicts a match. </p>
	
	        <p>The recall metric indicates that for an actual match, how often your model predicts the
      match.</p>")
  @as("PrecisionRecallTradeoff")
  precisionRecallTradeoff: option<genericBoundedDouble>,
  @ocaml.doc(
    "<p>The name of a column that uniquely identifies rows in the source table. Used to help identify matching records.</p>"
  )
  @as("PrimaryKeyColumnName")
  primaryKeyColumnName: option<columnNameString>,
}
@ocaml.doc("<p>Specifies configuration properties for an exporting labels task run.</p>")
type exportLabelsTaskRunProperties = {
  @ocaml.doc("<p>The Amazon Simple Storage Service (Amazon S3) path where you will export the
      labels.</p>")
  @as("OutputS3Path")
  outputS3Path: option<uriString>,
}
@ocaml.doc("<p>An execution property of a job.</p>")
type executionProperty = {
  @ocaml.doc("<p>The maximum number of concurrent runs allowed for the job.
      The default is 1. An error is returned when this threshold is reached.
      The maximum value you can specify is controlled by a service limit.</p>")
  @as("MaxConcurrentRuns")
  maxConcurrentRuns: option<maxConcurrentRuns>,
}
@ocaml.doc("<p>Batch condition that must be met (specified number of events received or batch time window expired)
      before EventBridge event trigger fires.</p>")
type eventBatchingCondition = {
  @ocaml.doc(
    "<p>Window of time in seconds after which EventBridge event trigger fires. Window starts when first event is received.</p>"
  )
  @as("BatchWindow")
  batchWindow: option<batchWindow>,
  @ocaml.doc(
    "<p>Number of events that must be received from Amazon EventBridge before EventBridge event trigger fires.</p>"
  )
  @as("BatchSize")
  batchSize: batchSize,
}
@ocaml.doc("<p>An object containing error details.</p>")
type errorDetails = {
  @ocaml.doc("<p>The error message for an error.</p>") @as("ErrorMessage")
  errorMessage: option<errorMessageString>,
  @ocaml.doc("<p>The error code for an error.</p>") @as("ErrorCode")
  errorCode: option<errorCodeString>,
}
@ocaml.doc("<p>Contains details about an error.</p>")
type errorDetail = {
  @ocaml.doc("<p>A message describing the error.</p>") @as("ErrorMessage")
  errorMessage: option<descriptionString>,
  @ocaml.doc("<p>The code associated with this error.</p>") @as("ErrorCode")
  errorCode: option<nameString>,
}
@ocaml.doc("<p>Specifies the encryption-at-rest configuration for the Data Catalog.</p>")
type encryptionAtRest = {
  @ocaml.doc("<p>The ID of the KMS key to use for encryption at rest.</p>") @as("SseAwsKmsKeyId")
  sseAwsKmsKeyId: option<nameString>,
  @ocaml.doc("<p>The encryption-at-rest mode for encrypting Data Catalog data.</p>")
  @as("CatalogEncryptionMode")
  catalogEncryptionMode: catalogEncryptionMode,
}
@ocaml.doc("<p>An edge represents a directed connection between two components
      on a workflow graph.</p>")
type edge = {
  @ocaml.doc("<p>The unique of the node within the workflow where the edge ends.</p>")
  @as("DestinationId")
  destinationId: option<nameString>,
  @ocaml.doc("<p>The unique of the node within the workflow where the edge starts.</p>")
  @as("SourceId")
  sourceId: option<nameString>,
}
@ocaml.doc("<p>Specifies an Amazon DynamoDB table to crawl.</p>")
type dynamoDBTarget = {
  @ocaml.doc("<p>The percentage of the configured read capacity units to use by the Glue crawler. Read capacity units is a term defined by DynamoDB, and is a numeric value that acts as rate limiter for the number of reads that can be performed on that table per second.</p>
	
	        <p>The valid values are null or a value between 0.1 to 1.5. A null value is used when user does not provide a value, and defaults to 0.5 of the configured Read Capacity Unit (for provisioned tables), or 0.25 of the max configured Read Capacity Unit (for tables using on-demand mode).</p>")
  scanRate: option<nullableDouble>,
  @ocaml.doc("<p>Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table.</p>
	
	        <p>A value of <code>true</code> means to scan all records, while a value of <code>false</code> means to sample the records. If no value is specified, the value defaults to <code>true</code>.</p>")
  scanAll: option<nullableBoolean>,
  @ocaml.doc("<p>The name of the DynamoDB table to crawl.</p>") @as("Path") path: option<path>,
}
@ocaml.doc("<p>Defines column statistics supported for floating-point number data columns.</p>")
type doubleColumnStatisticsData = {
  @ocaml.doc("<p>The number of distinct values in a column.</p>") @as("NumberOfDistinctValues")
  numberOfDistinctValues: nonNegativeLong,
  @ocaml.doc("<p>The number of null values in the column.</p>") @as("NumberOfNulls")
  numberOfNulls: nonNegativeLong,
  @ocaml.doc("<p>The highest value in the column.</p>") @as("MaximumValue")
  maximumValue: option<double>,
  @ocaml.doc("<p>The lowest value in the column.</p>") @as("MinimumValue")
  minimumValue: option<double>,
}
type devEndpointNames = array<genericString>
type devEndpointNameList = array<nameString>
@ocaml.doc("<p>Custom libraries to be loaded into a development endpoint.</p>")
type devEndpointCustomLibraries = {
  @ocaml.doc("<p>The path to one or more Java <code>.jar</code> files in an S3 bucket that should be loaded
      in your <code>DevEndpoint</code>.</p>
         <note>
            <p>You can only use pure Java/Scala libraries with a <code>DevEndpoint</code>.</p>
         </note>")
  @as("ExtraJarsS3Path")
  extraJarsS3Path: option<genericString>,
  @ocaml.doc("<p>The paths to one or more Python libraries in an Amazon Simple Storage Service (Amazon S3)
      bucket that should be loaded in your <code>DevEndpoint</code>. Multiple values must be
      complete paths separated by a comma.</p>
         <note>
            <p>You can only use pure Python libraries with a <code>DevEndpoint</code>. Libraries that rely on
        C extensions, such as the <a href=\"http://pandas.pydata.org/\">pandas</a> Python data
        analysis library, are not currently supported.</p>
         </note>")
  @as("ExtraPythonLibsS3Path")
  extraPythonLibsS3Path: option<genericString>,
}
type deleteConnectionNameList = array<nameString>
@ocaml.doc("<p>Contains a numeric value in decimal format.</p>")
type decimalNumber = {
  @ocaml.doc("<p>The scale that determines where the decimal point falls in the
      unscaled value.</p>")
  @as("Scale")
  scale: integer_,
  @ocaml.doc("<p>The unscaled numeric value.</p>") @as("UnscaledValue") unscaledValue: blob,
}
@ocaml.doc("<p>Defines column statistics supported for timestamp data columns.</p>")
type dateColumnStatisticsData = {
  @ocaml.doc("<p>The number of distinct values in a column.</p>") @as("NumberOfDistinctValues")
  numberOfDistinctValues: nonNegativeLong,
  @ocaml.doc("<p>The number of null values in the column.</p>") @as("NumberOfNulls")
  numberOfNulls: nonNegativeLong,
  @ocaml.doc("<p>The highest value in the column.</p>") @as("MaximumValue")
  maximumValue: option<timestamp_>,
  @ocaml.doc("<p>The lowest value in the column.</p>") @as("MinimumValue")
  minimumValue: option<timestamp_>,
}
@ocaml.doc("<p>A structure that describes a target database for resource linking.</p>")
type databaseIdentifier = {
  @ocaml.doc("<p>The name of the catalog database.</p>") @as("DatabaseName")
  databaseName: option<nameString>,
  @ocaml.doc("<p>The ID of the Data Catalog in which the database resides.</p>") @as("CatalogId")
  catalogId: option<catalogIdString>,
}
@ocaml.doc("<p>The Lake Formation principal.</p>")
type dataLakePrincipal = {
  @ocaml.doc("<p>An identifier for the Lake Formation principal.</p>")
  @as("DataLakePrincipalIdentifier")
  dataLakePrincipalIdentifier: option<dataLakePrincipalString>,
}
type csvHeader = array<nameString>
@ocaml.doc("<p>Specifies an XML classifier for <code>CreateClassifier</code> to create.</p>")
type createXMLClassifierRequest = {
  @ocaml.doc("<p>The XML tag designating the element that contains each record in an XML document being
      parsed. This can't identify a self-closing element (closed by <code>/></code>). An empty
      row element that contains only attributes can be parsed as long as it ends with a closing tag
      (for example, <code><row item_a=\"A\" item_b=\"B\"></row></code> is okay, but
        <code><row item_a=\"A\" item_b=\"B\" /></code> is not).</p>")
  @as("RowTag")
  rowTag: option<rowTag>,
  @ocaml.doc("<p>The name of the classifier.</p>") @as("Name") name: nameString,
  @ocaml.doc("<p>An identifier of the data format that the classifier matches.</p>")
  @as("Classification")
  classification: classification,
}
@ocaml.doc("<p>Specifies a JSON classifier for <code>CreateClassifier</code> to create.</p>")
type createJsonClassifierRequest = {
  @ocaml.doc("<p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify.
      Glue supports a subset of JsonPath, as described in <a href=\"https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json\">Writing JsonPath Custom Classifiers</a>.</p>")
  @as("JsonPath")
  jsonPath: jsonPath,
  @ocaml.doc("<p>The name of the classifier.</p>") @as("Name") name: nameString,
}
@ocaml.doc("<p>Specifies a <code>grok</code> classifier for <code>CreateClassifier</code>
      to create.</p>")
type createGrokClassifierRequest = {
  @ocaml.doc("<p>Optional custom grok patterns used by this classifier.</p>") @as("CustomPatterns")
  customPatterns: option<customPatterns>,
  @ocaml.doc("<p>The grok pattern used by this classifier.</p>") @as("GrokPattern")
  grokPattern: grokPattern,
  @ocaml.doc("<p>The name of the new classifier.</p>") @as("Name") name: nameString,
  @ocaml.doc("<p>An identifier of the data format that the classifier matches,
      such as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.</p>")
  @as("Classification")
  classification: classification,
}
type crawlerNameList = array<nameString>
@ocaml.doc("<p>Metrics for a specified crawler.</p>")
type crawlerMetrics = {
  @ocaml.doc("<p>The number of tables deleted by this crawler.</p>") @as("TablesDeleted")
  tablesDeleted: option<nonNegativeInteger>,
  @ocaml.doc("<p>The number of tables updated by this crawler.</p>") @as("TablesUpdated")
  tablesUpdated: option<nonNegativeInteger>,
  @ocaml.doc("<p>The number of tables created by this crawler.</p>") @as("TablesCreated")
  tablesCreated: option<nonNegativeInteger>,
  @ocaml.doc("<p>The median duration of this crawler's runs, in seconds.</p>")
  @as("MedianRuntimeSeconds")
  medianRuntimeSeconds: option<nonNegativeDouble>,
  @ocaml.doc("<p>The duration of the crawler's most recent run, in seconds.</p>")
  @as("LastRuntimeSeconds")
  lastRuntimeSeconds: option<nonNegativeDouble>,
  @ocaml.doc(
    "<p>True if the crawler is still estimating how long it will take to complete this run.</p>"
  )
  @as("StillEstimating")
  stillEstimating: option<boolean_>,
  @ocaml.doc("<p>The estimated time left to complete a running crawl.</p>") @as("TimeLeftSeconds")
  timeLeftSeconds: option<nonNegativeDouble>,
  @ocaml.doc("<p>The name of the crawler.</p>") @as("CrawlerName") crawlerName: option<nameString>,
}
@ocaml.doc("<p>The details of a crawl in the workflow.</p>")
type crawl = {
  @ocaml.doc("<p>The log stream associated with the crawl.</p>") @as("LogStream")
  logStream: option<logStream>,
  @ocaml.doc("<p>The log group associated with the crawl.</p>") @as("LogGroup")
  logGroup: option<logGroup>,
  @ocaml.doc("<p>The error message associated with the crawl.</p>") @as("ErrorMessage")
  errorMessage: option<descriptionString>,
  @ocaml.doc("<p>The date and time on which the crawl completed.</p>") @as("CompletedOn")
  completedOn: option<timestampValue>,
  @ocaml.doc("<p>The date and time on which the crawl started.</p>") @as("StartedOn")
  startedOn: option<timestampValue>,
  @ocaml.doc("<p>The state of the crawler.</p>") @as("State") state: option<crawlState>,
}
type connectionProperties = Js.Dict.t<valueString>
@ocaml.doc("<p>The data structure used by the Data Catalog to encrypt the password as part of
        <code>CreateConnection</code> or <code>UpdateConnection</code> and store it in the
        <code>ENCRYPTED_PASSWORD</code> field in the connection properties. You can enable catalog
      encryption or only password encryption.</p>
	
	        <p>When a <code>CreationConnection</code> request arrives containing a password, the Data
      Catalog first encrypts the password using your KMS key. It then encrypts the whole
      connection object again if catalog encryption is also enabled.</p>
 
         <p>This encryption requires that you set KMS key permissions to enable or restrict access
      on the password key according to your security requirements. For example, you might want only
      administrators to have decrypt permission on the password key.</p>")
type connectionPasswordEncryption = {
  @ocaml.doc("<p>An KMS key that is used to encrypt the connection password. </p>
	
         <p>If connection password protection is enabled, the caller of <code>CreateConnection</code>
      and <code>UpdateConnection</code> needs at least <code>kms:Encrypt</code> permission on the
      specified KMS key, to encrypt passwords before storing them in the Data Catalog. </p> 
    
	        <p>You can set the decrypt permission to enable or restrict access on the password key according to your security requirements.</p>")
  @as("AwsKmsKeyId")
  awsKmsKeyId: option<nameString>,
  @ocaml.doc(
    "<p>When the <code>ReturnConnectionPasswordEncrypted</code> flag is set to \"true\", passwords remain encrypted in the responses of <code>GetConnection</code> and <code>GetConnections</code>. This encryption takes effect independently from catalog encryption. </p>"
  )
  @as("ReturnConnectionPasswordEncrypted")
  returnConnectionPasswordEncrypted: boolean_,
}
@ocaml.doc("<p>The confusion matrix shows you what your transform is predicting accurately and what types of errors it is making.</p>
	
	        <p>For more information, see <a href=\"https://en.wikipedia.org/wiki/Confusion_matrix\">Confusion matrix</a> in Wikipedia.</p>")
type confusionMatrix = {
  @ocaml.doc(
    "<p>The number of matches in the data that the transform didn't find, in the confusion matrix for your transform.</p>"
  )
  @as("NumFalseNegatives")
  numFalseNegatives: option<recordsCount>,
  @ocaml.doc("<p>The number of nonmatches in the data that the transform correctly rejected, in the
      confusion matrix for your transform.</p>")
  @as("NumTrueNegatives")
  numTrueNegatives: option<recordsCount>,
  @ocaml.doc("<p>The number of nonmatches in the data that the transform incorrectly classified as a match,
      in the confusion matrix for your transform.</p>")
  @as("NumFalsePositives")
  numFalsePositives: option<recordsCount>,
  @ocaml.doc(
    "<p>The number of matches in the data that the transform correctly found, in the confusion matrix for your transform.</p>"
  )
  @as("NumTruePositives")
  numTruePositives: option<recordsCount>,
}
@ocaml.doc("<p>Defines a condition under which a trigger fires.</p>")
type condition = {
  @ocaml.doc("<p>The state of the crawler to which this condition applies.</p>") @as("CrawlState")
  crawlState: option<crawlState>,
  @ocaml.doc("<p>The name of the crawler to which this condition applies.</p>") @as("CrawlerName")
  crawlerName: option<nameString>,
  @ocaml.doc(
    "<p>The condition state. Currently, the only job states that a trigger can listen for are <code>SUCCEEDED</code>, <code>STOPPED</code>, <code>FAILED</code>, and <code>TIMEOUT</code>. The only crawler states that a trigger can listen for are <code>SUCCEEDED</code>, <code>FAILED</code>, and <code>CANCELLED</code>.</p>"
  )
  @as("State")
  state: option<jobRunState>,
  @ocaml.doc("<p>The name of the job whose <code>JobRuns</code> this condition applies to, and on which
      this trigger waits.</p>")
  @as("JobName")
  jobName: option<nameString>,
  @ocaml.doc("<p>A logical operator.</p>") @as("LogicalOperator")
  logicalOperator: option<logicalOperator>,
}
type columnValueStringList = array<columnValuesString>
type columnRowFilter = {
  @as("RowFilterExpression") rowFilterExpression: option<predicateString>,
  @as("ColumnName") columnName: option<nameString>,
}
@ocaml.doc("<p>A structure containing the column name and column importance score for a column. </p>
	
	        <p>Column importance helps you understand how columns contribute to your model, by identifying which columns in your records are more important than others.</p>")
type columnImportance = {
  @ocaml.doc("<p>The column importance score for the column, as a decimal.</p>") @as("Importance")
  importance: option<genericBoundedDouble>,
  @ocaml.doc("<p>The name of a column.</p>") @as("ColumnName") columnName: option<nameString>,
}
@ocaml.doc("<p>An argument or property of a node.</p>")
type codeGenNodeArg = {
  @ocaml.doc("<p>True if the value is used as a parameter.</p>") @as("Param")
  param: option<boolean_>,
  @ocaml.doc("<p>The value of the argument or property.</p>") @as("Value") value: codeGenArgValue,
  @ocaml.doc("<p>The name of the argument or property.</p>") @as("Name") name: codeGenArgName,
}
@ocaml.doc("<p>Represents a directional edge in a directed acyclic graph (DAG).</p>")
type codeGenEdge = {
  @ocaml.doc("<p>The target of the edge.</p>") @as("TargetParameter")
  targetParameter: option<codeGenArgName>,
  @ocaml.doc("<p>The ID of the node at which the edge ends.</p>") @as("Target")
  target: codeGenIdentifier,
  @ocaml.doc("<p>The ID of the node at which the edge starts.</p>") @as("Source")
  source: codeGenIdentifier,
}
@ocaml.doc("<p>Specifies how Amazon CloudWatch data should be encrypted.</p>")
type cloudWatchEncryption = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>")
  @as("KmsKeyArn")
  kmsKeyArn: option<kmsKeyArn>,
  @ocaml.doc("<p>The encryption mode to use for CloudWatch data.</p>")
  @as("CloudWatchEncryptionMode")
  cloudWatchEncryptionMode: option<cloudWatchEncryptionMode>,
}
type classifierNameList = array<nameString>
type catalogTablesList = array<nameString>
@ocaml.doc("<p>A structure containing migration status information.</p>")
type catalogImportStatus = {
  @ocaml.doc("<p>The name of the person who initiated the migration.</p>") @as("ImportedBy")
  importedBy: option<nameString>,
  @ocaml.doc("<p>The time that the migration was started.</p>") @as("ImportTime")
  importTime: option<timestamp_>,
  @ocaml.doc("<p>
            <code>True</code> if the migration has completed, or <code>False</code> otherwise.</p>")
  @as("ImportCompleted")
  importCompleted: option<boolean_>,
}
@ocaml.doc("<p>Specifies a table definition in the Glue Data Catalog.</p>")
type catalogEntry = {
  @ocaml.doc("<p>The name of the table in question.</p>") @as("TableName") tableName: nameString,
  @ocaml.doc("<p>The database in which the table metadata resides.</p>") @as("DatabaseName")
  databaseName: nameString,
}
type boundedPartitionValueList = array<valueString>
@ocaml.doc("<p>Defines column statistics supported for Boolean data columns.</p>")
type booleanColumnStatisticsData = {
  @ocaml.doc("<p>The number of null values in the column.</p>") @as("NumberOfNulls")
  numberOfNulls: nonNegativeLong,
  @ocaml.doc("<p>The number of false values in the column.</p>") @as("NumberOfFalses")
  numberOfFalses: nonNegativeLong,
  @ocaml.doc("<p>The number of true values in the column.</p>") @as("NumberOfTrues")
  numberOfTrues: nonNegativeLong,
}
@ocaml.doc("<p>The details of a blueprint run.</p>")
type blueprintRun = {
  @ocaml.doc(
    "<p>The role ARN. This role will be assumed by the Glue service and will be used to create the workflow and other entities of a workflow.</p>"
  )
  @as("RoleArn")
  roleArn: option<orchestrationIAMRoleArn>,
  @ocaml.doc(
    "<p>The blueprint parameters as a string. You will have to provide a value for each key that is required from the parameter spec that is defined in the <code>Blueprint$ParameterSpec</code>.</p>"
  )
  @as("Parameters")
  parameters: option<blueprintParameters>,
  @ocaml.doc(
    "<p>If there are any errors while creating the entities of a workflow, we try to roll back the created entities until that point and delete them. This attribute indicates the errors seen while trying to delete the entities that are created.</p>"
  )
  @as("RollbackErrorMessage")
  rollbackErrorMessage: option<messageString>,
  @ocaml.doc("<p>Indicates any errors that are seen while running the blueprint.</p>")
  @as("ErrorMessage")
  errorMessage: option<messageString>,
  @ocaml.doc("<p>The date and time that the blueprint run completed.</p>") @as("CompletedOn")
  completedOn: option<timestampValue>,
  @ocaml.doc("<p>The date and time that the blueprint run started.</p>") @as("StartedOn")
  startedOn: option<timestampValue>,
  @ocaml.doc("<p>The state of the blueprint run. Possible values are:</p>
	
	        <ul>
            <li>
               <p>Running — The blueprint run is in progress.</p>
            </li>
            <li>
               <p>Succeeded — The blueprint run completed successfully.</p>
            </li>
            <li>
               <p>Failed — The blueprint run failed and rollback is complete.</p>
            </li>
            <li>
               <p>Rolling Back — The blueprint run failed and rollback is in progress.</p>
            </li>
         </ul>")
  @as("State")
  state: option<blueprintRunState>,
  @ocaml.doc(
    "<p>The name of a workflow that is created as a result of a successful blueprint run. If a blueprint run has an error, there will not be a workflow created.</p>"
  )
  @as("WorkflowName")
  workflowName: option<nameString>,
  @ocaml.doc("<p>The run ID for this blueprint run.</p>") @as("RunId") runId: option<idString>,
  @ocaml.doc("<p>The name of the blueprint.</p>") @as("BlueprintName")
  blueprintName: option<orchestrationNameString>,
}
type blueprintNames = array<orchestrationNameString>
@ocaml.doc("<p>The details of a blueprint.</p>")
type blueprintDetails = {
  @ocaml.doc("<p>The run ID for this blueprint.</p>") @as("RunId") runId: option<idString>,
  @ocaml.doc("<p>The name of the blueprint.</p>") @as("BlueprintName")
  blueprintName: option<orchestrationNameString>,
}
@ocaml.doc("<p>Defines column statistics supported for bit sequence data values.</p>")
type binaryColumnStatisticsData = {
  @ocaml.doc("<p>The number of null values in the column.</p>") @as("NumberOfNulls")
  numberOfNulls: nonNegativeLong,
  @ocaml.doc("<p>The average bit sequence length in the column.</p>") @as("AverageLength")
  averageLength: nonNegativeDouble,
  @ocaml.doc("<p>The size of the longest bit sequence in the column.</p>") @as("MaximumLength")
  maximumLength: nonNegativeLong,
}
@ocaml.doc("<p>Records a successful request to stop a specified <code>JobRun</code>.</p>")
type batchStopJobRunSuccessfulSubmission = {
  @ocaml.doc("<p>The <code>JobRunId</code> of the job run that was stopped.</p>") @as("JobRunId")
  jobRunId: option<idString>,
  @ocaml.doc("<p>The name of the job definition used in the job run that was stopped.</p>")
  @as("JobName")
  jobName: option<nameString>,
}
type batchStopJobRunJobRunIdList = array<idString>
type batchGetBlueprintNames = array<orchestrationNameString>
type batchDeleteTableVersionList = array<versionString>
type batchDeleteTableNameList = array<nameString>
type auditColumnNamesList = array<columnNameString>
type additionalPlanOptionsMap = Js.Dict.t<genericString>
@ocaml.doc("<p>Specifies a custom CSV classifier to be updated.</p>")
type updateCsvClassifierRequest = {
  @ocaml.doc("<p>Enables the processing of files that contain only one column.</p>")
  @as("AllowSingleColumn")
  allowSingleColumn: option<nullableBoolean>,
  @ocaml.doc(
    "<p>Specifies not to trim values before identifying the type of column values. The default value is true.</p>"
  )
  @as("DisableValueTrimming")
  disableValueTrimming: option<nullableBoolean>,
  @ocaml.doc("<p>A list of strings representing column names.</p>") @as("Header")
  header: option<csvHeader>,
  @ocaml.doc("<p>Indicates whether the CSV file contains a header.</p>") @as("ContainsHeader")
  containsHeader: option<csvHeaderOption>,
  @ocaml.doc("<p>A custom symbol to denote what combines content into a single column value. It must be
      different from the column delimiter.</p>")
  @as("QuoteSymbol")
  quoteSymbol: option<csvQuoteSymbol>,
  @ocaml.doc("<p>A custom symbol to denote what separates each column entry in the row.</p>")
  @as("Delimiter")
  delimiter: option<csvColumnDelimiter>,
  @ocaml.doc("<p>The name of the classifier.</p>") @as("Name") name: nameString,
}
type transformSchema = array<schemaColumn>
@ocaml.doc("<p>The algorithm-specific parameters that are associated with the machine learning
      transform.</p>")
type transformParameters = {
  @ocaml.doc("<p>The parameters for the find matches algorithm.</p>") @as("FindMatchesParameters")
  findMatchesParameters: option<findMatchesParameters>,
  @ocaml.doc("<p>The type of machine learning transform.</p>
	        <p>For information about the types of machine learning transforms, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html\">Creating Machine Learning Transforms</a>.</p>")
  @as("TransformType")
  transformType: transformType,
}
@ocaml.doc("<p>The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.</p>
    
	        <p>Additionally, imported labels and trained transforms can now be encrypted using a customer provided KMS key.</p>")
type transformEncryption = {
  @ocaml.doc("<p>The name of the security configuration.</p>")
  @as("TaskRunSecurityConfigurationName")
  taskRunSecurityConfigurationName: option<nameString>,
  @ocaml.doc(
    "<p>An <code>MLUserDataEncryption</code> object containing the encryption mode and customer-provided KMS key ID.</p>"
  )
  @as("MlUserDataEncryption")
  mlUserDataEncryption: option<mluserDataEncryption>,
}
@ocaml.doc("<p>The configuration properties for the task run.</p>")
type taskRunProperties = {
  @ocaml.doc("<p>The configuration properties for a find matches task run.</p>")
  @as("FindMatchesTaskRunProperties")
  findMatchesTaskRunProperties: option<findMatchesTaskRunProperties>,
  @ocaml.doc("<p>The configuration properties for a labeling set generation task run.</p>")
  @as("LabelingSetGenerationTaskRunProperties")
  labelingSetGenerationTaskRunProperties: option<labelingSetGenerationTaskRunProperties>,
  @ocaml.doc("<p>The configuration properties for an exporting labels task run.</p>")
  @as("ExportLabelsTaskRunProperties")
  exportLabelsTaskRunProperties: option<exportLabelsTaskRunProperties>,
  @ocaml.doc("<p>The configuration properties for an importing labels task run.</p>")
  @as("ImportLabelsTaskRunProperties")
  importLabelsTaskRunProperties: option<importLabelsTaskRunProperties>,
  @ocaml.doc("<p>The type of task run.</p>") @as("TaskType") taskType: option<taskType>,
}
@ocaml.doc("<p>An error record for table-version operations.</p>")
type tableVersionError = {
  @ocaml.doc("<p>The details about the error.</p>") @as("ErrorDetail")
  errorDetail: option<errorDetail>,
  @ocaml.doc(
    "<p>The ID value of the version in question. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1.</p>"
  )
  @as("VersionId")
  versionId: option<versionString>,
  @ocaml.doc("<p>The name of the table in question.</p>") @as("TableName")
  tableName: option<nameString>,
}
@ocaml.doc("<p>An error record for table operations.</p>")
type tableError = {
  @ocaml.doc("<p>The details about the error.</p>") @as("ErrorDetail")
  errorDetail: option<errorDetail>,
  @ocaml.doc(
    "<p>The name of the table. For Hive compatibility, this must be entirely lowercase.</p>"
  )
  @as("TableName")
  tableName: option<nameString>,
}
@ocaml.doc("<p>The code execution output in JSON format.</p>")
type statementOutput = {
  @ocaml.doc("<p>The traceback of the output.</p>") @as("Traceback")
  traceback: option<orchestrationStringList>,
  @ocaml.doc("<p>The error value of the output.</p>") @as("ErrorValue")
  errorValue: option<genericString>,
  @ocaml.doc("<p>The name of the error in the output.</p>") @as("ErrorName")
  errorName: option<genericString>,
  @ocaml.doc("<p>The status of the code execution output.</p>") @as("Status")
  status: option<statementState>,
  @ocaml.doc("<p>The execution count of the output.</p>") @as("ExecutionCount")
  executionCount: option<integerValue>,
  @ocaml.doc("<p>The code execution output.</p>") @as("Data") data: option<statementOutputData>,
}
type sortCriteria = array<sortCriterion>
@ocaml.doc("<p>Specifies skewed values in a table. Skewed values are those that occur with very high
      frequency.</p>")
type skewedInfo = {
  @ocaml.doc("<p>A mapping of skewed values to the columns that contain them.</p>")
  @as("SkewedColumnValueLocationMaps")
  skewedColumnValueLocationMaps: option<locationMap>,
  @ocaml.doc("<p>A list of values that appear so frequently as to be considered
      skewed.</p>")
  @as("SkewedColumnValues")
  skewedColumnValues: option<columnValueStringList>,
  @ocaml.doc("<p>A list of names of columns that contain skewed values.</p>")
  @as("SkewedColumnNames")
  skewedColumnNames: option<nameStringList>,
}
@ocaml.doc("<p>Information about a serialization/deserialization program (SerDe) that serves as an
      extractor and loader.</p>")
type serDeInfo = {
  @ocaml.doc("<p>These key-value pairs define initialization parameters for the SerDe.</p>")
  @as("Parameters")
  parameters: option<parametersMap>,
  @ocaml.doc("<p>Usually the class that implements the SerDe. An example is
        <code>org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe</code>.</p>")
  @as("SerializationLibrary")
  serializationLibrary: option<nameString>,
  @ocaml.doc("<p>Name of the SerDe.</p>") @as("Name") name: option<nameString>,
}
type searchPropertyPredicates = array<propertyPredicate>
type schemaVersionList = array<schemaVersionListItem>
@ocaml.doc("<p>An object that contains the error details for an operation on a schema version.</p>")
type schemaVersionErrorItem = {
  @ocaml.doc("<p>The details of the error for the schema version.</p>") @as("ErrorDetails")
  errorDetails: option<errorDetails>,
  @ocaml.doc("<p>The version number of the schema.</p>") @as("VersionNumber")
  versionNumber: option<versionLongNumber>,
}
@ocaml.doc("<p>An object that references a schema stored in the Glue Schema Registry.</p>")
type schemaReference = {
  @ocaml.doc("<p>The version number of the schema.</p>") @as("SchemaVersionNumber")
  schemaVersionNumber: option<versionLongNumber>,
  @ocaml.doc(
    "<p>The unique ID assigned to a version of the schema. Either this or the <code>SchemaId</code> has to be provided.</p>"
  )
  @as("SchemaVersionId")
  schemaVersionId: option<schemaVersionIdString>,
  @ocaml.doc(
    "<p>A structure that contains schema identity fields. Either this or the <code>SchemaVersionId</code> has to be provided.</p>"
  )
  @as("SchemaId")
  schemaId: option<schemaId>,
}
type schemaListDefinition = array<schemaListItem>
@ocaml.doc("<p>Specifies a data store in Amazon Simple Storage Service (Amazon S3).</p>")
type s3Target = {
  @ocaml.doc(
    "<p>A valid Amazon dead-letter SQS ARN. For example, <code>arn:aws:sqs:region:account:deadLetterQueue</code>.</p>"
  )
  @as("DlqEventQueueArn")
  dlqEventQueueArn: option<eventQueueArn>,
  @ocaml.doc(
    "<p>A valid Amazon SQS ARN. For example, <code>arn:aws:sqs:region:account:sqs</code>.</p>"
  )
  @as("EventQueueArn")
  eventQueueArn: option<eventQueueArn>,
  @ocaml.doc(
    "<p>Sets the number of files in each leaf folder to be crawled when crawling sample files in a dataset. If not set, all the files are crawled. A valid value is an integer between 1 and 249.</p>"
  )
  @as("SampleSize")
  sampleSize: option<nullableInteger>,
  @ocaml.doc(
    "<p>The name of a connection which allows a job or crawler to access data in Amazon S3 within an Amazon Virtual Private Cloud environment (Amazon VPC).</p>"
  )
  @as("ConnectionName")
  connectionName: option<connectionName>,
  @ocaml.doc("<p>A list of glob patterns used to exclude from the crawl.
      For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html\">Catalog Tables with a Crawler</a>.</p>")
  @as("Exclusions")
  exclusions: option<pathList>,
  @ocaml.doc("<p>The path to the Amazon S3 target.</p>") @as("Path") path: option<path>,
}
type s3EncryptionList = array<s3Encryption>
type resourceUriList = array<resourceUri>
type registryListDefinition = array<registryListItem>
@ocaml.doc("<p>Permissions granted to a principal.</p>")
type principalPermissions = {
  @ocaml.doc("<p>The permissions that are granted to the principal.</p>") @as("Permissions")
  permissions: option<permissionList>,
  @ocaml.doc("<p>The principal who is granted permissions.</p>") @as("Principal")
  principal: option<dataLakePrincipal>,
}
type predecessorList = array<predecessor>
@ocaml.doc("<p>Specifies the physical requirements for a connection.</p>")
type physicalConnectionRequirements = {
  @ocaml.doc("<p>The connection's Availability Zone. This field is redundant because the specified subnet
      implies the Availability Zone to be used. Currently the field must be populated, but it will
      be deprecated in the future.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<nameString>,
  @ocaml.doc("<p>The security group ID list used by the connection.</p>") @as("SecurityGroupIdList")
  securityGroupIdList: option<securityGroupIdList>,
  @ocaml.doc("<p>The subnet ID used by the connection.</p>") @as("SubnetId")
  subnetId: option<nameString>,
}
@ocaml.doc("<p>Contains a list of values defining partitions.</p>")
type partitionValueList = {
  @ocaml.doc("<p>The list of values.</p>") @as("Values") values: valueStringList,
}
@ocaml.doc("<p>A structure for a partition index.</p>")
type partitionIndex = {
  @ocaml.doc("<p>The name of the partition index.</p>") @as("IndexName") indexName: nameString,
  @ocaml.doc("<p>The keys for the partition index.</p>") @as("Keys") keys: keyList,
}
@ocaml.doc("<p>Contains information about a partition error.</p>")
type partitionError = {
  @ocaml.doc("<p>The details about the partition error.</p>") @as("ErrorDetail")
  errorDetail: option<errorDetail>,
  @ocaml.doc("<p>The values that define the partition.</p>") @as("PartitionValues")
  partitionValues: option<valueStringList>,
}
type otherMetadataValueList = array<otherMetadataValueListItem>
type orderList = array<order>
type mongoDBTargetList = array<mongoDBTarget>
type metadataList = array<metadataKeyValuePair>
type mappingList = array<mappingEntry>
type keySchemaElementList = array<keySchemaElement>
@ocaml.doc("<p>Specifies a JDBC data store to crawl.</p>")
type jdbcTarget = {
  @ocaml.doc("<p>A list of glob patterns used to exclude from the crawl.
      For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html\">Catalog Tables with a Crawler</a>.</p>")
  @as("Exclusions")
  exclusions: option<pathList>,
  @ocaml.doc("<p>The path of the JDBC target.</p>") @as("Path") path: option<path>,
  @ocaml.doc("<p>The name of the connection to use to connect to the JDBC target.</p>")
  @as("ConnectionName")
  connectionName: option<connectionName>,
}
type glueTables = array<glueTable>
type getResourcePoliciesResponseList = array<gluePolicy>
@ocaml.doc("<p>Filters the connection definitions that are returned by the <code>GetConnections</code>
      API operation.</p>")
type getConnectionsFilter = {
  @ocaml.doc("<p>The type of connections to return. Currently, SFTP is not supported.</p>")
  @as("ConnectionType")
  connectionType: option<connectionType>,
  @ocaml.doc("<p>A criteria string that must match the criteria recorded in the
       connection definition for that connection definition to be returned.</p>")
  @as("MatchCriteria")
  matchCriteria: option<matchCriteria>,
}
type errorByName = Js.Dict.t<errorDetail>
type edgeList = array<edge>
type dynamoDBTargetList = array<dynamoDBTarget>
@ocaml.doc("<p>A development endpoint where a developer can remotely debug extract, transform, and load
      (ETL) scripts.</p>")
type devEndpoint = {
  @ocaml.doc("<p>A map of arguments used to configure the <code>DevEndpoint</code>.</p>
         <p>Valid arguments are:</p>
	        <ul>
            <li>
               <p>
                  <code>\"--enable-glue-datacatalog\": \"\"</code>
               </p>
            </li>
         </ul>
	
         <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>")
  @as("Arguments")
  arguments: option<mapValue>,
  @ocaml.doc("<p>The name of the <code>SecurityConfiguration</code> structure to be used with this
        <code>DevEndpoint</code>.</p>")
  @as("SecurityConfiguration")
  securityConfiguration: option<nameString>,
  @ocaml.doc("<p>A list of public keys to be used by the <code>DevEndpoints</code> for authentication.
      Using this attribute is preferred over a single public key because the public keys allow you
      to have a different private key per client.</p>
         <note>
            <p>If you previously created an endpoint with a public key, you must remove that key to be
        able to set a list of public keys. Call the <code>UpdateDevEndpoint</code> API operation
        with the public key content in the <code>deletePublicKeys</code> attribute, and the list of
        new keys in the <code>addPublicKeys</code> attribute.</p>
         </note>")
  @as("PublicKeys")
  publicKeys: option<publicKeysList>,
  @ocaml.doc("<p>The public key to be used by this <code>DevEndpoint</code> for authentication. This
      attribute is provided for backward compatibility because the recommended attribute to use is
      public keys.</p>")
  @as("PublicKey")
  publicKey: option<genericString>,
  @ocaml.doc("<p>The point in time at which this <code>DevEndpoint</code> was last modified.</p>")
  @as("LastModifiedTimestamp")
  lastModifiedTimestamp: option<timestampValue>,
  @ocaml.doc("<p>The point in time at which this DevEndpoint was created.</p>")
  @as("CreatedTimestamp")
  createdTimestamp: option<timestampValue>,
  @ocaml.doc("<p>The status of the last update.</p>") @as("LastUpdateStatus")
  lastUpdateStatus: option<genericString>,
  @ocaml.doc("<p>The reason for a current failure in this <code>DevEndpoint</code>.</p>")
  @as("FailureReason")
  failureReason: option<genericString>,
  @ocaml.doc("<p>The path to one or more Java <code>.jar</code> files in an S3 bucket that should be loaded
      in your <code>DevEndpoint</code>.</p>
         <note>
            <p>You can only use pure Java/Scala libraries with a <code>DevEndpoint</code>.</p>
         </note>")
  @as("ExtraJarsS3Path")
  extraJarsS3Path: option<genericString>,
  @ocaml.doc("<p>The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in
      your <code>DevEndpoint</code>. Multiple values must be complete paths separated by a
      comma.</p>
  
         <note>
            <p>You can only use pure Python libraries with a <code>DevEndpoint</code>. Libraries that rely on
        C extensions, such as the <a href=\"http://pandas.pydata.org/\">pandas</a> Python data
        analysis library, are not currently supported.</p>
         </note>")
  @as("ExtraPythonLibsS3Path")
  extraPythonLibsS3Path: option<genericString>,
  @ocaml.doc(
    "<p>The ID of the virtual private cloud (VPC) used by this <code>DevEndpoint</code>.</p>"
  )
  @as("VpcId")
  vpcId: option<genericString>,
  @ocaml.doc("<p>The AWS Availability Zone where this <code>DevEndpoint</code> is located.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<genericString>,
  @ocaml.doc("<p>The number of Glue Data Processing Units (DPUs) allocated to this
        <code>DevEndpoint</code>.</p>")
  @as("NumberOfNodes")
  numberOfNodes: option<integerValue>,
  @ocaml.doc("<p>The number of workers of a defined <code>workerType</code> that are allocated to the development endpoint.</p>
	
		       <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>")
  @as("NumberOfWorkers")
  numberOfWorkers: option<nullableInteger>,
  @ocaml.doc("<p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints. </p>
 
         <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p>
	  
	        <p>Development endpoints that are created without specifying a Glue version default to Glue 0.9.</p>  
	
	        <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>")
  @as("GlueVersion")
  glueVersion: option<glueVersionString>,
  @ocaml.doc("<p>The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.</p>
	        <ul>
            <li>
               <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
            </li>
            <li>
               <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
            </li>
            <li>
               <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
            </li>
         </ul>
	
	        <p>Known issue: when a development endpoint is created with the <code>G.2X</code> 
            <code>WorkerType</code> configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk. </p>")
  @as("WorkerType")
  workerType: option<workerType>,
  @ocaml.doc("<p>The current status of this <code>DevEndpoint</code>.</p>") @as("Status")
  status: option<genericString>,
  @ocaml.doc("<p>The public IP address used by this <code>DevEndpoint</code>. The
        <code>PublicAddress</code> field is present only when you create a non-virtual private cloud
      (VPC) <code>DevEndpoint</code>.</p>")
  @as("PublicAddress")
  publicAddress: option<genericString>,
  @ocaml.doc("<p>The Apache Zeppelin port for the remote Apache Spark interpreter.</p>")
  @as("ZeppelinRemoteSparkInterpreterPort")
  zeppelinRemoteSparkInterpreterPort: option<integerValue>,
  @ocaml.doc("<p>A private IP address to access the <code>DevEndpoint</code> within a VPC if the
        <code>DevEndpoint</code> is created within one. The <code>PrivateAddress</code> field is
      present only when you create the <code>DevEndpoint</code> within your VPC.</p>")
  @as("PrivateAddress")
  privateAddress: option<genericString>,
  @ocaml.doc("<p>The YARN endpoint address used by this <code>DevEndpoint</code>.</p>")
  @as("YarnEndpointAddress")
  yarnEndpointAddress: option<genericString>,
  @ocaml.doc("<p>The subnet ID for this <code>DevEndpoint</code>.</p>") @as("SubnetId")
  subnetId: option<genericString>,
  @ocaml.doc("<p>A list of security group identifiers used in this <code>DevEndpoint</code>.</p>")
  @as("SecurityGroupIds")
  securityGroupIds: option<stringList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role used in this
      <code>DevEndpoint</code>.</p>")
  @as("RoleArn")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>The name of the <code>DevEndpoint</code>.</p>") @as("EndpointName")
  endpointName: option<genericString>,
}
@ocaml.doc("<p>Specifies a Delta data store to crawl one or more Delta tables.</p>")
type deltaTarget = {
  @ocaml.doc("<p>Specifies whether to write the manifest files to the Delta table path.</p>")
  @as("WriteManifest")
  writeManifest: option<nullableBoolean>,
  @ocaml.doc("<p>The name of the connection to use to connect to the Delta table target.</p>")
  @as("ConnectionName")
  connectionName: option<connectionName>,
  @ocaml.doc("<p>A list of the Amazon S3 paths to the Delta tables.</p>") @as("DeltaTables")
  deltaTables: option<pathList>,
}
@ocaml.doc("<p>Defines column statistics supported for fixed-point number data columns.</p>")
type decimalColumnStatisticsData = {
  @ocaml.doc("<p>The number of distinct values in a column.</p>") @as("NumberOfDistinctValues")
  numberOfDistinctValues: nonNegativeLong,
  @ocaml.doc("<p>The number of null values in the column.</p>") @as("NumberOfNulls")
  numberOfNulls: nonNegativeLong,
  @ocaml.doc("<p>The highest value in the column.</p>") @as("MaximumValue")
  maximumValue: option<decimalNumber>,
  @ocaml.doc("<p>The lowest value in the column.</p>") @as("MinimumValue")
  minimumValue: option<decimalNumber>,
}
@ocaml.doc("<p>Contains configuration information for maintaining Data Catalog security.</p>")
type dataCatalogEncryptionSettings = {
  @ocaml.doc("<p>When connection password protection is enabled, the Data Catalog uses a customer-provided
      key to encrypt the password as part of <code>CreateConnection</code> or
        <code>UpdateConnection</code> and store it in the <code>ENCRYPTED_PASSWORD</code> field in
      the connection properties. You can enable catalog encryption or only password
      encryption.</p>")
  @as("ConnectionPasswordEncryption")
  connectionPasswordEncryption: option<connectionPasswordEncryption>,
  @ocaml.doc("<p>Specifies the encryption-at-rest configuration for the Data Catalog.</p>")
  @as("EncryptionAtRest")
  encryptionAtRest: option<encryptionAtRest>,
}
type dagEdges = array<codeGenEdge>
@ocaml.doc("<p>A classifier for custom <code>CSV</code> content.</p>")
type csvClassifier = {
  @ocaml.doc("<p>Enables the processing of files that contain only one column.</p>")
  @as("AllowSingleColumn")
  allowSingleColumn: option<nullableBoolean>,
  @ocaml.doc("<p>Specifies not to trim values before identifying the type of column values. The default
      value is <code>true</code>.</p>")
  @as("DisableValueTrimming")
  disableValueTrimming: option<nullableBoolean>,
  @ocaml.doc("<p>A list of strings representing column names.</p>") @as("Header")
  header: option<csvHeader>,
  @ocaml.doc("<p>Indicates whether the CSV file contains a header.</p>") @as("ContainsHeader")
  containsHeader: option<csvHeaderOption>,
  @ocaml.doc("<p>A custom symbol to denote what combines content into a single column value. It must be
      different from the column delimiter.</p>")
  @as("QuoteSymbol")
  quoteSymbol: option<csvQuoteSymbol>,
  @ocaml.doc("<p>A custom symbol to denote what separates each column entry in the row.</p>")
  @as("Delimiter")
  delimiter: option<csvColumnDelimiter>,
  @ocaml.doc("<p>The version of this classifier.</p>") @as("Version") version: option<versionId>,
  @ocaml.doc("<p>The time that this classifier was last updated.</p>") @as("LastUpdated")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>The time that this classifier was registered.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The name of the classifier.</p>") @as("Name") name: nameString,
}
@ocaml.doc("<p>Specifies a custom CSV classifier for <code>CreateClassifier</code> to create.</p>")
type createCsvClassifierRequest = {
  @ocaml.doc("<p>Enables the processing of files that contain only one column.</p>")
  @as("AllowSingleColumn")
  allowSingleColumn: option<nullableBoolean>,
  @ocaml.doc(
    "<p>Specifies not to trim values before identifying the type of column values. The default value is true.</p>"
  )
  @as("DisableValueTrimming")
  disableValueTrimming: option<nullableBoolean>,
  @ocaml.doc("<p>A list of strings representing column names.</p>") @as("Header")
  header: option<csvHeader>,
  @ocaml.doc("<p>Indicates whether the CSV file contains a header.</p>") @as("ContainsHeader")
  containsHeader: option<csvHeaderOption>,
  @ocaml.doc(
    "<p>A custom symbol to denote what combines content into a single column value. Must be different from the column delimiter.</p>"
  )
  @as("QuoteSymbol")
  quoteSymbol: option<csvQuoteSymbol>,
  @ocaml.doc("<p>A custom symbol to denote what separates each column entry in the row.</p>")
  @as("Delimiter")
  delimiter: option<csvColumnDelimiter>,
  @ocaml.doc("<p>The name of the classifier.</p>") @as("Name") name: nameString,
}
type crawlerMetricsList = array<crawlerMetrics>
type crawlList = array<crawl>
@ocaml.doc("<p>Specifies the connections used by a job.</p>")
type connectionsList = {
  @ocaml.doc("<p>A list of connections used by the job.</p>") @as("Connections")
  connections: option<orchestrationStringList>,
}
type conditionList = array<condition>
type columnRowFilterList = array<columnRowFilter>
type columnImportanceList = array<columnImportance>
@ocaml.doc("<p>Encapsulates a column name that failed and the reason for failure.</p>")
type columnError = {
  @ocaml.doc("<p>An error message with the reason for the failure of an operation.</p>")
  @as("Error")
  error: option<errorDetail>,
  @ocaml.doc("<p>The name of the column that failed.</p>") @as("ColumnName")
  columnName: option<nameString>,
}
@ocaml.doc("<p>A column in a <code>Table</code>.</p>")
type column = {
  @ocaml.doc("<p>These key-value pairs define properties associated with the column.</p>")
  @as("Parameters")
  parameters: option<parametersMap>,
  @ocaml.doc("<p>A free-form text comment.</p>") @as("Comment") comment: option<commentString>,
  @ocaml.doc("<p>The data type of the <code>Column</code>.</p>") @as("Type")
  type_: option<columnTypeString>,
  @ocaml.doc("<p>The name of the <code>Column</code>.</p>") @as("Name") name: nameString,
}
type codeGenNodeArgs = array<codeGenNodeArg>
@ocaml.doc("<p>Specifies an Glue Data Catalog target.</p>")
type catalogTarget = {
  @ocaml.doc(
    "<p>The name of the connection for an Amazon S3-backed Data Catalog table to be a target of the crawl when using a <code>Catalog</code> connection type paired with a <code>NETWORK</code> Connection type.</p>"
  )
  @as("ConnectionName")
  connectionName: option<connectionName>,
  @ocaml.doc("<p>A list of the tables to be synchronized.</p>") @as("Tables")
  tables: catalogTablesList,
  @ocaml.doc("<p>The name of the database to be synchronized.</p>") @as("DatabaseName")
  databaseName: nameString,
}
type catalogEntries = array<catalogEntry>
type blueprintRuns = array<blueprintRun>
@ocaml.doc("<p>The details of a blueprint.</p>")
type blueprint = {
  @ocaml.doc(
    "<p>When there are multiple versions of a blueprint and the latest version has some errors, this attribute indicates the last successful blueprint definition that is available with the service.</p>"
  )
  @as("LastActiveDefinition")
  lastActiveDefinition: option<lastActiveDefinition>,
  @ocaml.doc("<p>An error message.</p>") @as("ErrorMessage") errorMessage: option<errorString>,
  @ocaml.doc("<p>The status of the blueprint registration.</p>
	
	        <ul>
            <li>
               <p>Creating — The blueprint registration is in progress.</p>
            </li>
            <li>
               <p>Active — The blueprint has been successfully registered.</p>
            </li>
            <li>
               <p>Updating — An update to the blueprint registration is in progress.</p>
            </li>
            <li>
               <p>Failed — The blueprint registration failed.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<blueprintStatus>,
  @ocaml.doc(
    "<p>Specifies a path in Amazon S3 where the blueprint is copied when you call <code>CreateBlueprint/UpdateBlueprint</code> to register the blueprint in Glue.</p>"
  )
  @as("BlueprintServiceLocation")
  blueprintServiceLocation: option<genericString>,
  @ocaml.doc("<p>Specifies the path in Amazon S3 where the blueprint is published.</p>")
  @as("BlueprintLocation")
  blueprintLocation: option<genericString>,
  @ocaml.doc(
    "<p>A JSON string that indicates the list of parameter specifications for the blueprint.</p>"
  )
  @as("ParameterSpec")
  parameterSpec: option<blueprintParameterSpec>,
  @ocaml.doc("<p>The date and time the blueprint was last modified.</p>") @as("LastModifiedOn")
  lastModifiedOn: option<timestampValue>,
  @ocaml.doc("<p>The date and time the blueprint was registered.</p>") @as("CreatedOn")
  createdOn: option<timestampValue>,
  @ocaml.doc("<p>The description of the blueprint.</p>") @as("Description")
  description: option<generic512CharString>,
  @ocaml.doc("<p>The name of the blueprint.</p>") @as("Name") name: option<orchestrationNameString>,
}
@ocaml.doc("<p>Contains information about a batch update partition error.</p>")
type batchUpdatePartitionFailureEntry = {
  @ocaml.doc("<p>The details about the batch update partition error.</p>") @as("ErrorDetail")
  errorDetail: option<errorDetail>,
  @ocaml.doc("<p>A list of values defining the partitions.</p>") @as("PartitionValueList")
  partitionValueList: option<boundedPartitionValueList>,
}
type batchStopJobRunSuccessfulSubmissionList = array<batchStopJobRunSuccessfulSubmission>
@ocaml.doc("<p>Records an error that occurred when attempting to stop a
      specified job run.</p>")
type batchStopJobRunError = {
  @ocaml.doc("<p>Specifies details about the error that was encountered.</p>") @as("ErrorDetail")
  errorDetail: option<errorDetail>,
  @ocaml.doc("<p>The <code>JobRunId</code> of the job run in question.</p>") @as("JobRunId")
  jobRunId: option<idString>,
  @ocaml.doc("<p>The name of the job definition that is used in the job run in question.</p>")
  @as("JobName")
  jobName: option<nameString>,
}
@ocaml.doc("<p>A structure containing information for audit.</p>")
type auditContext = {
  @ocaml.doc("<p>All columns request for audit.</p>") @as("AllColumnsRequested")
  allColumnsRequested: option<nullableBoolean>,
  @ocaml.doc("<p>The requested columns for audit.</p>") @as("RequestedColumns")
  requestedColumns: option<auditColumnNamesList>,
  @ocaml.doc("<p>The context for the audit..</p>") @as("AdditionalAuditContext")
  additionalAuditContext: option<auditContextString>,
}
@ocaml.doc("<p>Defines an action to be initiated by a trigger.</p>")
type action = {
  @ocaml.doc("<p>The name of the crawler to be used with this action.</p>") @as("CrawlerName")
  crawlerName: option<nameString>,
  @ocaml.doc("<p>Specifies configuration properties of a job run notification.</p>")
  @as("NotificationProperty")
  notificationProperty: option<notificationProperty>,
  @ocaml.doc("<p>The name of the <code>SecurityConfiguration</code> structure to be used with this
      action.</p>")
  @as("SecurityConfiguration")
  securityConfiguration: option<nameString>,
  @ocaml.doc("<p>The <code>JobRun</code> timeout in minutes. This is the maximum time that a job run can
      consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default
      is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.</p>")
  @as("Timeout")
  timeout: option<timeout>,
  @ocaml.doc("<p>The job arguments used when this trigger fires. For this job run, they replace the default arguments set in the job definition itself.</p>
         <p>You can specify arguments here that your own job-execution script
      consumes, as well as arguments that Glue itself consumes.</p>
         <p>For information about how to specify and consume your own Job arguments, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html\">Calling Glue APIs in Python</a> topic in the developer guide.</p>
         <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html\">Special Parameters Used by Glue</a> topic in the developer guide.</p>")
  @as("Arguments")
  arguments: option<genericMap>,
  @ocaml.doc("<p>The name of a job to be run.</p>") @as("JobName") jobName: option<nameString>,
}
@ocaml.doc("<p>A structure used to create or update a user-defined function.</p>")
type userDefinedFunctionInput = {
  @ocaml.doc("<p>The resource URIs for the function.</p>") @as("ResourceUris")
  resourceUris: option<resourceUriList>,
  @ocaml.doc("<p>The owner type.</p>") @as("OwnerType") ownerType: option<principalType>,
  @ocaml.doc("<p>The owner of the function.</p>") @as("OwnerName") ownerName: option<nameString>,
  @ocaml.doc("<p>The Java class that contains the function code.</p>") @as("ClassName")
  className: option<nameString>,
  @ocaml.doc("<p>The name of the function.</p>") @as("FunctionName")
  functionName: option<nameString>,
}
@ocaml.doc("<p>Represents the equivalent of a Hive user-defined function
      (<code>UDF</code>) definition.</p>")
type userDefinedFunction = {
  @ocaml.doc("<p>The ID of the Data Catalog in which the function resides.</p>") @as("CatalogId")
  catalogId: option<catalogIdString>,
  @ocaml.doc("<p>The resource URIs for the function.</p>") @as("ResourceUris")
  resourceUris: option<resourceUriList>,
  @ocaml.doc("<p>The time at which the function was created.</p>") @as("CreateTime")
  createTime: option<timestamp_>,
  @ocaml.doc("<p>The owner type.</p>") @as("OwnerType") ownerType: option<principalType>,
  @ocaml.doc("<p>The owner of the function.</p>") @as("OwnerName") ownerName: option<nameString>,
  @ocaml.doc("<p>The Java class that contains the function code.</p>") @as("ClassName")
  className: option<nameString>,
  @ocaml.doc("<p>The name of the catalog database that contains the function.</p>")
  @as("DatabaseName")
  databaseName: option<nameString>,
  @ocaml.doc("<p>The name of the function.</p>") @as("FunctionName")
  functionName: option<nameString>,
}
@ocaml.doc("<p>The criteria used to filter the machine learning transforms.</p>")
type transformFilterCriteria = {
  @ocaml.doc("<p>Filters on datasets with a specific schema. The <code>Map<Column, Type></code>
      object is an array of key-value pairs representing the schema this transform accepts, where
        <code>Column</code> is the name of a column, and <code>Type</code> is the type of the data
      such as an integer or string. Has an upper bound of 100 columns.</p>")
  @as("Schema")
  schema: option<transformSchema>,
  @ocaml.doc("<p>Filter on transforms last modified after this date.</p>") @as("LastModifiedAfter")
  lastModifiedAfter: option<timestamp_>,
  @ocaml.doc("<p>Filter on transforms last modified before this date.</p>")
  @as("LastModifiedBefore")
  lastModifiedBefore: option<timestamp_>,
  @ocaml.doc("<p>The time and date after which the transforms were created.</p>")
  @as("CreatedAfter")
  createdAfter: option<timestamp_>,
  @ocaml.doc("<p>The time and date before which the transforms were created.</p>")
  @as("CreatedBefore")
  createdBefore: option<timestamp_>,
  @ocaml.doc(
    "<p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions\">Glue Versions</a> in the developer guide.</p>"
  )
  @as("GlueVersion")
  glueVersion: option<glueVersionString>,
  @ocaml.doc(
    "<p>Filters the list of machine learning transforms by the last known status of the transforms (to indicate whether a transform can be used or not). One of \"NOT_READY\", \"READY\", or \"DELETING\".</p>"
  )
  @as("Status")
  status: option<transformStatusType>,
  @ocaml.doc("<p>The type of machine learning transform that is used to filter the machine learning
      transforms.</p>")
  @as("TransformType")
  transformType: option<transformType>,
  @ocaml.doc(
    "<p>A unique transform name that is used to filter the machine learning transforms.</p>"
  )
  @as("Name")
  name: option<nameString>,
}
@ocaml.doc(
  "<p>The sampling parameters that are associated with the machine learning transform.</p>"
)
type taskRun = {
  @ocaml.doc("<p>The amount of time (in seconds) that the task run consumed resources.</p>")
  @as("ExecutionTime")
  executionTime: option<executionTime>,
  @ocaml.doc("<p>The last point in time that the requested task run was completed.</p>")
  @as("CompletedOn")
  completedOn: option<timestamp_>,
  @ocaml.doc("<p>The last point in time that the requested task run was updated.</p>")
  @as("LastModifiedOn")
  lastModifiedOn: option<timestamp_>,
  @ocaml.doc("<p>The date and time that this task run started.</p>") @as("StartedOn")
  startedOn: option<timestamp_>,
  @ocaml.doc("<p>The list of error strings associated with this task run.</p>") @as("ErrorString")
  errorString: option<genericString>,
  @ocaml.doc("<p>Specifies configuration properties associated with this task run.</p>")
  @as("Properties")
  properties: option<taskRunProperties>,
  @ocaml.doc("<p>The names of the log group for secure logging, associated with this task run.</p>")
  @as("LogGroupName")
  logGroupName: option<genericString>,
  @ocaml.doc("<p>The current status of the requested task run.</p>") @as("Status")
  status: option<taskStatusType>,
  @ocaml.doc("<p>The unique identifier for this task run.</p>") @as("TaskRunId")
  taskRunId: option<hashString>,
  @ocaml.doc("<p>The unique identifier for the transform.</p>") @as("TransformId")
  transformId: option<hashString>,
}
type tableVersionErrors = array<tableVersionError>
type tableErrors = array<tableError>
@ocaml.doc("<p>The statement or request for a particular action to occur in a session.</p>")
type statement = {
  @ocaml.doc("<p>The unix time and date that the job definition was completed.</p>")
  @as("CompletedOn")
  completedOn: option<longValue>,
  @ocaml.doc("<p>The unix time and date that the job definition was started.</p>") @as("StartedOn")
  startedOn: option<longValue>,
  @ocaml.doc("<p>The code execution progress.</p>") @as("Progress") progress: option<doubleValue>,
  @ocaml.doc("<p>The output in JSON.</p>") @as("Output") output: option<statementOutput>,
  @ocaml.doc("<p>The state while request is actioned.</p>") @as("State")
  state: option<statementState>,
  @ocaml.doc("<p>The execution code of the statement.</p>") @as("Code") code: option<genericString>,
  @ocaml.doc("<p>The ID of the statement.</p>") @as("Id") id: option<integerValue>,
}
@ocaml.doc("<p>The period in which a remote Spark runtime environment is running.</p>")
type session = {
  @ocaml.doc("<p>The Glue version determines the versions of Apache Spark and Python that AWS Glue supports. 
      The GlueVersion must be greater than 2.0.</p>")
  @as("GlueVersion")
  glueVersion: option<glueVersionString>,
  @ocaml.doc("<p>The name of the SecurityConfiguration structure to be used with the session.</p>")
  @as("SecurityConfiguration")
  securityConfiguration: option<nameString>,
  @ocaml.doc("<p>The number of AWS Glue data processing units (DPUs) that can be allocated when the job runs. 
      A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB memory. </p>")
  @as("MaxCapacity")
  maxCapacity: option<nullableDouble>,
  @ocaml.doc("<p>The code execution progress of the session.</p>") @as("Progress")
  progress: option<doubleValue>,
  @ocaml.doc("<p>The number of connections used for the session.</p>") @as("Connections")
  connections: option<connectionsList>,
  @ocaml.doc("<p>A map array of key-value pairs. Max is 75 pairs. </p>") @as("DefaultArguments")
  defaultArguments: option<orchestrationArgumentsMap>,
  @ocaml.doc("<p>The command object.See SessionCommand.</p>") @as("Command")
  command: option<sessionCommand>,
  @ocaml.doc(
    "<p>The name or Amazon Resource Name (ARN) of the IAM role associated with the Session.</p>"
  )
  @as("Role")
  role: option<orchestrationRoleArn>,
  @ocaml.doc("<p>The description of the session.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The error message displayed during the session.</p>") @as("ErrorMessage")
  errorMessage: option<descriptionString>,
  @ocaml.doc("<p>The session status. </p>") @as("Status") status: option<sessionStatus>,
  @ocaml.doc("<p>The time and date when the session was created.</p>") @as("CreatedOn")
  createdOn: option<timestampValue>,
  @ocaml.doc("<p>The ID of the session.</p>") @as("Id") id: option<nameString>,
}
type schemaVersionErrorList = array<schemaVersionErrorItem>
type s3TargetList = array<s3Target>
type principalPermissionsList = array<principalPermissions>
@ocaml.doc("<p>Defines the predicate of the trigger, which determines when it fires.</p>")
type predicate = {
  @ocaml.doc("<p>A list of the conditions that determine when the trigger will fire.</p>")
  @as("Conditions")
  conditions: option<conditionList>,
  @ocaml.doc("<p>An optional field if only one condition is listed. If multiple conditions are listed, then
      this field is required.</p>")
  @as("Logical")
  logical: option<logical>,
}
type partitionIndexList = array<partitionIndex>
type partitionErrors = array<partitionError>
@ocaml.doc("<p>A structure containing metadata information for a schema version.</p>")
type metadataInfo = {
  @ocaml.doc("<p>Other metadata belonging to the same metadata key.</p>")
  @as("OtherMetadataValueList")
  otherMetadataValueList: option<otherMetadataValueList>,
  @ocaml.doc("<p>The time at which the entry was created.</p>") @as("CreatedTime")
  createdTime: option<createdTimestamp>,
  @ocaml.doc("<p>The metadata key’s corresponding value.</p>") @as("MetadataValue")
  metadataValue: option<metadataValueString>,
}
@ocaml.doc("<p>The location of resources.</p>")
type location = {
  @ocaml.doc("<p>An Amazon DynamoDB table location.</p>") @as("DynamoDB")
  dynamoDB: option<codeGenNodeArgs>,
  @ocaml.doc("<p>An Amazon Simple Storage Service (Amazon S3) location.</p>") @as("S3")
  s3: option<codeGenNodeArgs>,
  @ocaml.doc("<p>A JDBC location.</p>") @as("Jdbc") jdbc: option<codeGenNodeArgs>,
}
@ocaml.doc("<p>Specifies information used to update an existing job definition. The previous job
      definition is completely overwritten by this information.</p>")
type jobUpdate = {
  @ocaml.doc("<p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for jobs of type Spark. </p>
 
         <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p>")
  @as("GlueVersion")
  glueVersion: option<glueVersionString>,
  @ocaml.doc("<p>Specifies the configuration properties of a job notification.</p>")
  @as("NotificationProperty")
  notificationProperty: option<notificationProperty>,
  @ocaml.doc("<p>The name of the <code>SecurityConfiguration</code> structure to be used with this
      job.</p>")
  @as("SecurityConfiguration")
  securityConfiguration: option<nameString>,
  @ocaml.doc("<p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
	
         <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>")
  @as("NumberOfWorkers")
  numberOfWorkers: option<nullableInteger>,
  @ocaml.doc("<p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p>
	        <ul>
            <li>
               <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
            </li>
            <li>
               <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
            </li>
            <li>
               <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
            </li>
         </ul>")
  @as("WorkerType")
  workerType: option<workerType>,
  @ocaml.doc("<p>For Glue version 1.0 or earlier jobs, using the standard worker type, the number of Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure
     of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue pricing page</a>.</p>
      
	        <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>	     
	   
         <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
      running a Python shell job or an Apache Spark ETL job:</p>

         <ul>
            <li>
               <p>When you specify a Python shell job (<code>JobCommand.Name</code>=\"pythonshell\"), you can
          allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
            </li>
            <li>
               <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>=\"glueetl\") or Apache 
           Spark streaming ETL job (<code>JobCommand.Name</code>=\"gluestreaming\"), you can allocate from 2 to 100 DPUs. 
           The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
            </li>
         </ul>		
	        <p>For Glue version 2.0 jobs, you cannot instead specify a <code>Maximum capacity</code>. Instead, you should specify a <code>Worker type</code> and the <code>Number of workers</code>.</p>")
  @as("MaxCapacity")
  maxCapacity: option<nullableDouble>,
  @ocaml.doc("<p>The job timeout in minutes.  This is the maximum time that a job run
      can consume resources before it is terminated and enters <code>TIMEOUT</code>
      status. The default is 2,880 minutes (48 hours).</p>")
  @as("Timeout")
  timeout: option<timeout>,
  @ocaml.doc("<p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p>
  
         <p>The number of Glue data processing units (DPUs) to allocate to this job. You can
      allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing
      power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information,
      see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue pricing
      page</a>.</p>")
  @as("AllocatedCapacity")
  allocatedCapacity: option<integerValue>,
  @ocaml.doc("<p>The maximum number of times to retry this job if it fails.</p>") @as("MaxRetries")
  maxRetries: option<maxRetries>,
  @ocaml.doc("<p>The connections used for this job.</p>") @as("Connections")
  connections: option<connectionsList>,
  @ocaml.doc("<p>Non-overridable arguments for this job, specified as name-value pairs.</p>")
  @as("NonOverridableArguments")
  nonOverridableArguments: option<genericMap>,
  @ocaml.doc("<p>The default arguments for this job.</p>
         <p>You can specify arguments here that your own job-execution script
      consumes, as well as arguments that Glue itself consumes.</p>
         <p>For information about how to specify and consume your own Job arguments, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html\">Calling Glue APIs in Python</a> topic in the developer guide.</p>
         <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html\">Special Parameters Used by Glue</a> topic in the developer guide.</p>")
  @as("DefaultArguments")
  defaultArguments: option<genericMap>,
  @ocaml.doc("<p>The <code>JobCommand</code> that runs this job (required).</p>") @as("Command")
  command: option<jobCommand>,
  @ocaml.doc("<p>An <code>ExecutionProperty</code> specifying the maximum number of concurrent runs allowed
      for this job.</p>")
  @as("ExecutionProperty")
  executionProperty: option<executionProperty>,
  @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the IAM role associated with this job
      (required).</p>")
  @as("Role")
  role: option<roleString>,
  @ocaml.doc("<p>This field is reserved for future use.</p>") @as("LogUri")
  logUri: option<uriString>,
  @ocaml.doc("<p>Description of the job being defined.</p>") @as("Description")
  description: option<descriptionString>,
}
@ocaml.doc("<p>Contains information about a job run.</p>")
type jobRun = {
  @ocaml.doc("<p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for jobs of type Spark. </p>
 
         <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p>
	  
	        <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>")
  @as("GlueVersion")
  glueVersion: option<glueVersionString>,
  @ocaml.doc("<p>Specifies configuration properties of a job run notification.</p>")
  @as("NotificationProperty")
  notificationProperty: option<notificationProperty>,
  @ocaml.doc("<p>The name of the log group for secure logging that can be server-side encrypted in Amazon
      CloudWatch using KMS. This name can be <code>/aws-glue/jobs/</code>, in which case the
      default encryption is <code>NONE</code>. If you add a role name and
      <code>SecurityConfiguration</code> name (in other words,
      <code>/aws-glue/jobs-yourRoleName-yourSecurityConfigurationName/</code>), then that security
      configuration is used to encrypt the log group.</p>")
  @as("LogGroupName")
  logGroupName: option<genericString>,
  @ocaml.doc("<p>The name of the <code>SecurityConfiguration</code> structure to be used with this job
      run.</p>")
  @as("SecurityConfiguration")
  securityConfiguration: option<nameString>,
  @ocaml.doc("<p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>

         <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>")
  @as("NumberOfWorkers")
  numberOfWorkers: option<nullableInteger>,
  @ocaml.doc("<p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p>
         <ul>
            <li>
               <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
            </li>
            <li>
               <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
            </li>
            <li>
               <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
            </li>
         </ul>")
  @as("WorkerType")
  workerType: option<workerType>,
  @ocaml.doc("<p>The number of Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure
      of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
      For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue
        pricing page</a>.</p>

         <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>

         <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
      running a Python shell job or an Apache Spark ETL job:</p>
         <ul>
            <li>
               <p>When you specify a Python shell job (<code>JobCommand.Name</code>=\"pythonshell\"), you can
        allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
            </li>
            <li>
               <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>=\"glueetl\"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
            </li>
         </ul>")
  @as("MaxCapacity")
  maxCapacity: option<nullableDouble>,
  @ocaml.doc("<p>The <code>JobRun</code> timeout in minutes. This is the maximum time that a job run can
      consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default
      is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.</p>")
  @as("Timeout")
  timeout: option<timeout>,
  @ocaml.doc("<p>The amount of time (in seconds) that the job run consumed resources.</p>")
  @as("ExecutionTime")
  executionTime: option<executionTime>,
  @ocaml.doc("<p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p>

         <p>The number of Glue data processing units (DPUs) allocated to this JobRun.
      From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure
      of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
      For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue
        pricing page</a>.</p>")
  @as("AllocatedCapacity")
  allocatedCapacity: option<integerValue>,
  @ocaml.doc("<p>A list of predecessors to this job run.</p>") @as("PredecessorRuns")
  predecessorRuns: option<predecessorList>,
  @ocaml.doc("<p>An error message associated with this job run.</p>") @as("ErrorMessage")
  errorMessage: option<errorString>,
  @ocaml.doc("<p>The job arguments associated with this run. For this job run, they replace the default arguments set in the job definition itself.</p>
         <p>You can specify arguments here that your own job-execution script
      consumes, as well as arguments that Glue itself consumes.</p>
         <p>For information about how to specify and consume your own job arguments, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html\">Calling Glue APIs in Python</a> topic in the developer guide.</p>
         <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html\">Special Parameters Used by Glue</a> topic in the developer guide.</p>")
  @as("Arguments")
  arguments: option<genericMap>,
  @ocaml.doc(
    "<p>The current state of the job run. For more information about the statuses of jobs that have terminated abnormally, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/job-run-statuses.html\">Glue Job Run Statuses</a>.</p>"
  )
  @as("JobRunState")
  jobRunState: option<jobRunState>,
  @ocaml.doc("<p>The date and time that this job run completed.</p>") @as("CompletedOn")
  completedOn: option<timestampValue>,
  @ocaml.doc("<p>The last time that this job run was modified.</p>") @as("LastModifiedOn")
  lastModifiedOn: option<timestampValue>,
  @ocaml.doc("<p>The date and time at which this job run was started.</p>") @as("StartedOn")
  startedOn: option<timestampValue>,
  @ocaml.doc("<p>The name of the job definition being used in this run.</p>") @as("JobName")
  jobName: option<nameString>,
  @ocaml.doc("<p>The name of the trigger that started this job run.</p>") @as("TriggerName")
  triggerName: option<nameString>,
  @ocaml.doc("<p>The ID of the previous run of this job. For example, the <code>JobRunId</code> specified
      in the <code>StartJobRun</code> action.</p>")
  @as("PreviousRunId")
  previousRunId: option<idString>,
  @ocaml.doc("<p>The number of the attempt to run this job.</p>") @as("Attempt")
  attempt: option<attemptCount>,
  @ocaml.doc("<p>The ID of this job run.</p>") @as("Id") id: option<idString>,
}
@ocaml.doc("<p>Specifies a job definition.</p>")
type job = {
  @ocaml.doc("<p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for jobs of type Spark. </p>
 
         <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p>
	  
	        <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>")
  @as("GlueVersion")
  glueVersion: option<glueVersionString>,
  @ocaml.doc("<p>Specifies configuration properties of a job notification.</p>")
  @as("NotificationProperty")
  notificationProperty: option<notificationProperty>,
  @ocaml.doc("<p>The name of the <code>SecurityConfiguration</code> structure to be used with this
      job.</p>")
  @as("SecurityConfiguration")
  securityConfiguration: option<nameString>,
  @ocaml.doc("<p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
	
		       <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>")
  @as("NumberOfWorkers")
  numberOfWorkers: option<nullableInteger>,
  @ocaml.doc("<p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p>
	        <ul>
            <li>
               <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
            </li>
            <li>
               <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
            </li>
            <li>
               <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
            </li>
         </ul>")
  @as("WorkerType")
  workerType: option<workerType>,
  @ocaml.doc("<p>For Glue version 1.0 or earlier jobs, using the standard worker type, the number of Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure
      of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
      For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue
      pricing page</a>.</p>
	  
	        <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
	
	        <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
      running a Python shell job, an Apache Spark ETL job, or an Apache Spark streaming ETL
      job:</p>
        <ul>
            <li>
               <p>When you specify a Python shell job (<code>JobCommand.Name</code>=\"pythonshell\"), you can
          allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
            </li>
            <li>
               <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>=\"glueetl\") or Apache 
            Spark streaming ETL job (<code>JobCommand.Name</code>=\"gluestreaming\"), you can allocate from 2 to 100 DPUs. 
            The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
            </li>
         </ul>
         <p>For Glue version 2.0 jobs, you cannot instead specify a <code>Maximum capacity</code>. Instead, you should specify a <code>Worker type</code> and the <code>Number of workers</code>.</p>")
  @as("MaxCapacity")
  maxCapacity: option<nullableDouble>,
  @ocaml.doc("<p>The job timeout in minutes.  This is the maximum time that a job run
      can consume resources before it is terminated and enters <code>TIMEOUT</code>
      status. The default is 2,880 minutes (48 hours).</p>")
  @as("Timeout")
  timeout: option<timeout>,
  @ocaml.doc("<p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p>
	  
         <p>The number of Glue data processing units (DPUs) allocated to runs of this job. You can
      allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing
      power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information,
      see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue pricing
      page</a>.</p>
	        <p></p>")
  @as("AllocatedCapacity")
  allocatedCapacity: option<integerValue>,
  @ocaml.doc("<p>The maximum number of times to retry this job after a JobRun fails.</p>")
  @as("MaxRetries")
  maxRetries: option<maxRetries>,
  @ocaml.doc("<p>The connections used for this job.</p>") @as("Connections")
  connections: option<connectionsList>,
  @ocaml.doc("<p>Non-overridable arguments for this job, specified as name-value pairs.</p>")
  @as("NonOverridableArguments")
  nonOverridableArguments: option<genericMap>,
  @ocaml.doc("<p>The default arguments for this job, specified as name-value pairs.</p>
         <p>You can specify arguments here that your own job-execution script
      consumes, as well as arguments that Glue itself consumes.</p>
         <p>For information about how to specify and consume your own Job arguments, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html\">Calling Glue APIs in Python</a> topic in the developer guide.</p>
         <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html\">Special Parameters Used by Glue</a> topic in the developer guide.</p>")
  @as("DefaultArguments")
  defaultArguments: option<genericMap>,
  @ocaml.doc("<p>The <code>JobCommand</code> that runs this job.</p>") @as("Command")
  command: option<jobCommand>,
  @ocaml.doc("<p>An <code>ExecutionProperty</code> specifying the maximum number of concurrent runs allowed
      for this job.</p>")
  @as("ExecutionProperty")
  executionProperty: option<executionProperty>,
  @ocaml.doc("<p>The last point in time when this job definition was modified.</p>")
  @as("LastModifiedOn")
  lastModifiedOn: option<timestampValue>,
  @ocaml.doc("<p>The time and date that this job definition was created.</p>") @as("CreatedOn")
  createdOn: option<timestampValue>,
  @ocaml.doc(
    "<p>The name or Amazon Resource Name (ARN) of the IAM role associated with this job.</p>"
  )
  @as("Role")
  role: option<roleString>,
  @ocaml.doc("<p>This field is reserved for future use.</p>") @as("LogUri")
  logUri: option<uriString>,
  @ocaml.doc("<p>A description of the job.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name you assign to this job definition.</p>") @as("Name")
  name: option<nameString>,
}
type jdbcTargetList = array<jdbcTarget>
@ocaml.doc("<p>The evaluation metrics for the find matches algorithm. The quality of your machine
      learning transform is measured by getting your transform to predict some matches and comparing
      the results to known matches from the same dataset. The quality metrics are based on a subset
      of your data, so they are not precise.</p>")
type findMatchesMetrics = {
  @ocaml.doc(
    "<p>A list of <code>ColumnImportance</code> structures containing column importance metrics, sorted in order of descending importance.</p>"
  )
  @as("ColumnImportances")
  columnImportances: option<columnImportanceList>,
  @ocaml.doc("<p>The confusion matrix shows you what your transform is predicting accurately and what types of errors it is making.</p>
	        <p>For more information, see <a href=\"https://en.wikipedia.org/wiki/Confusion_matrix\">Confusion matrix</a> in Wikipedia.</p>")
  @as("ConfusionMatrix")
  confusionMatrix: option<confusionMatrix>,
  @ocaml.doc("<p>The maximum F1 metric indicates the transform's accuracy between 0 and 1, where 1 is the best accuracy.</p>
         <p>For more information, see <a href=\"https://en.wikipedia.org/wiki/F1_score\">F1 score</a> in Wikipedia.</p>")
  @as("F1")
  f1: option<genericBoundedDouble>,
  @ocaml.doc("<p>The recall metric indicates that for an actual match, how often your transform predicts
      the match. Specifically, it measures how well the transform finds true positives from the
      total records in the source data.</p>
         <p>For more information, see <a href=\"https://en.wikipedia.org/wiki/Precision_and_recall\">Precision and recall</a> in Wikipedia.</p>")
  @as("Recall")
  recall: option<genericBoundedDouble>,
  @ocaml.doc("<p>The precision metric indicates when often your transform is correct when it predicts a match. Specifically, it measures how well the transform finds true positives from the total true positives possible.</p>
         <p>For more information, see <a href=\"https://en.wikipedia.org/wiki/Precision_and_recall\">Precision and recall</a> in Wikipedia.</p>")
  @as("Precision")
  precision: option<genericBoundedDouble>,
  @ocaml.doc("<p>The area under the precision/recall curve (AUPRC) is a single number measuring the overall
      quality of the transform, that is independent of the choice made for precision vs. recall.
      Higher values indicate that you have a more attractive precision vs. recall tradeoff.</p>
	        <p>For more information, see <a href=\"https://en.wikipedia.org/wiki/Precision_and_recall\">Precision and recall</a> in Wikipedia.</p>")
  @as("AreaUnderPRCurve")
  areaUnderPRCurve: option<genericBoundedDouble>,
}
@ocaml.doc("<p>Specifies an encryption configuration.</p>")
type encryptionConfiguration = {
  @ocaml.doc("<p>The encryption configuration for job bookmarks.</p>") @as("JobBookmarksEncryption")
  jobBookmarksEncryption: option<jobBookmarksEncryption>,
  @ocaml.doc("<p>The encryption configuration for Amazon CloudWatch.</p>")
  @as("CloudWatchEncryption")
  cloudWatchEncryption: option<cloudWatchEncryption>,
  @ocaml.doc(
    "<p>The encryption configuration for Amazon Simple Storage Service (Amazon S3) data.</p>"
  )
  @as("S3Encryption")
  s3Encryption: option<s3EncryptionList>,
}
type devEndpointList = array<devEndpoint>
type deltaTargetList = array<deltaTarget>
@ocaml.doc("<p>The details of a Crawler node present in the workflow.</p>")
type crawlerNodeDetails = {
  @ocaml.doc("<p>A list of crawls represented by the crawl node.</p>") @as("Crawls")
  crawls: option<crawlList>,
}
@ocaml.doc("<p>A structure that is used to specify a connection to create or update.</p>")
type connectionInput = {
  @ocaml.doc("<p>A map of physical connection requirements, such as virtual private cloud (VPC) and
        <code>SecurityGroup</code>, that are needed to successfully make this connection.</p>")
  @as("PhysicalConnectionRequirements")
  physicalConnectionRequirements: option<physicalConnectionRequirements>,
  @ocaml.doc("<p>These key-value pairs define parameters for the connection.</p>")
  @as("ConnectionProperties")
  connectionProperties: connectionProperties,
  @ocaml.doc("<p>A list of criteria that can be used in selecting this connection.</p>")
  @as("MatchCriteria")
  matchCriteria: option<matchCriteria>,
  @ocaml.doc("<p>The type of the connection. Currently, these types are supported:</p>
	        <ul>
            <li>
               <p>
                  <code>JDBC</code> - Designates a connection to a database through Java Database Connectivity (JDBC).</p>
            </li>
            <li>
               <p>
                  <code>KAFKA</code> - Designates a connection to an Apache Kafka streaming platform.</p>
            </li>
            <li>
               <p>
                  <code>MONGODB</code> - Designates a connection to a MongoDB document database.</p>
            </li>
            <li>
               <p>
                  <code>NETWORK</code> - Designates a network connection to a data source within an Amazon Virtual Private Cloud environment (Amazon VPC).</p>
            </li>
            <li>
               <p>
                  <code>MARKETPLACE</code> - Uses configuration settings contained in a connector purchased from Amazon Web Services Marketplace to read from and write to data stores that are not natively supported by Glue.</p>
            </li>
            <li>
               <p>
                  <code>CUSTOM</code> - Uses configuration settings contained in a custom connector to read from and write to data stores that are not natively supported by Glue.</p>
            </li>
         </ul>
         <p>SFTP is not supported.</p>")
  @as("ConnectionType")
  connectionType: connectionType,
  @ocaml.doc("<p>The description of the connection.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the connection.</p>") @as("Name") name: nameString,
}
@ocaml.doc("<p>Defines a connection to a data source.</p>")
type connection = {
  @ocaml.doc("<p>The user, group, or role that last updated this connection definition.</p>")
  @as("LastUpdatedBy")
  lastUpdatedBy: option<nameString>,
  @ocaml.doc("<p>The last time that this connection definition was updated.</p>")
  @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The time that this connection definition was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>A map of physical connection requirements, such as virtual private cloud (VPC) and
        <code>SecurityGroup</code>, that are needed to make this connection successfully.</p>")
  @as("PhysicalConnectionRequirements")
  physicalConnectionRequirements: option<physicalConnectionRequirements>,
  @ocaml.doc("<p>These key-value pairs define parameters for the connection:</p>
         <ul>
            <li>
               <p>
                  <code>HOST</code> - The host URI: either the
        fully qualified domain name (FQDN) or the IPv4 address of
        the database host.</p>
            </li>
            <li>
               <p>
                  <code>PORT</code> - The port number, between
        1024 and 65535, of the port on which the database host is
        listening for database connections.</p>
            </li>
            <li>
               <p>
                  <code>USER_NAME</code> -  The name under which
        to log in to the database. The value string for <code>USER_NAME</code> is \"<code>USERNAME</code>\".</p>
            </li>
            <li>
               <p>
                  <code>PASSWORD</code> - A password,
        if one is used, for the user name.</p>
            </li>
            <li>
               <p>
                  <code>ENCRYPTED_PASSWORD</code> - When you enable connection password protection by setting <code>ConnectionPasswordEncryption</code> in the Data Catalog encryption settings, this field stores the encrypted password.</p>
            </li>
            <li>
               <p>
                  <code>JDBC_DRIVER_JAR_URI</code> - The Amazon Simple Storage Service (Amazon S3) path of the
          JAR file that contains the JDBC driver to use.</p>
            </li>
            <li>
               <p>
                  <code>JDBC_DRIVER_CLASS_NAME</code> - The class name of the JDBC driver to use.</p>
            </li>
            <li>
               <p>
                  <code>JDBC_ENGINE</code> - The name of the JDBC engine to use.</p>
            </li>
            <li>
               <p>
                  <code>JDBC_ENGINE_VERSION</code> - The version of the JDBC engine to use.</p>
            </li>
            <li>
               <p>
                  <code>CONFIG_FILES</code> - (Reserved for future use.)</p>
            </li>
            <li>
               <p>
                  <code>INSTANCE_ID</code> - The instance ID to use.</p>
            </li>
            <li>
               <p>
                  <code>JDBC_CONNECTION_URL</code> - The URL for connecting to a JDBC data source.</p>
            </li>
            <li>
               <p>
                  <code>JDBC_ENFORCE_SSL</code> - A Boolean string (true, false) specifying whether Secure
          Sockets Layer (SSL) with hostname matching is enforced for the JDBC connection on the
          client. The default is false.</p>
            </li>
            <li>
               <p>
                  <code>CUSTOM_JDBC_CERT</code> - An Amazon S3 location specifying the customer's root certificate. Glue uses this root certificate to validate the customer’s certificate when connecting to the customer database. Glue only handles X.509 certificates. The certificate provided must be DER-encoded and supplied in Base64 encoding PEM format.</p>
            </li>
            <li>
               <p>
                  <code>SKIP_CUSTOM_JDBC_CERT_VALIDATION</code> - By default, this is <code>false</code>. Glue validates the Signature algorithm and Subject Public Key Algorithm for the customer certificate. The only permitted algorithms for the Signature algorithm are SHA256withRSA, SHA384withRSA or SHA512withRSA. For the Subject Public Key Algorithm, the key length must be at least 2048. You can set the value of this property to <code>true</code> to skip Glue’s validation of the customer certificate.</p>
            </li>
            <li>
               <p>
                  <code>CUSTOM_JDBC_CERT_STRING</code> - A custom JDBC certificate string which is used for domain match or distinguished name match to prevent a man-in-the-middle attack. In Oracle database, this is used as the <code>SSL_SERVER_CERT_DN</code>; in Microsoft SQL Server, this is used as the <code>hostNameInCertificate</code>.</p>
            </li>
            <li>
               <p>
                  <code>CONNECTION_URL</code> - The URL for connecting to a general (non-JDBC) data source.</p>
            </li>
            <li>
               <p>
                  <code>KAFKA_BOOTSTRAP_SERVERS</code> - A comma-separated list of host and port pairs that are the addresses of the Apache Kafka brokers in a Kafka cluster to which a Kafka client will connect to and bootstrap itself.</p>
            </li>
            <li>
               <p>
                  <code>KAFKA_SSL_ENABLED</code> - Whether to enable or disable SSL on an Apache Kafka connection. Default value is \"true\".</p>
            </li>
            <li>
               <p>
                  <code>KAFKA_CUSTOM_CERT</code> - The Amazon S3 URL for the private CA cert file (.pem format). The default is an empty string.</p>
            </li>
            <li>
               <p>
                  <code>KAFKA_SKIP_CUSTOM_CERT_VALIDATION</code> - Whether to skip the validation of the CA cert file or not. Glue validates for three algorithms: SHA256withRSA, SHA384withRSA and SHA512withRSA. Default value is \"false\".</p>
            </li>
            <li>
               <p>
                  <code>SECRET_ID</code> - The secret ID used for the secret manager of credentials.</p>
            </li>
            <li>
               <p>
                  <code>CONNECTOR_URL</code> - The connector URL for a MARKETPLACE or CUSTOM connection.</p>
            </li>
            <li>
               <p>
                  <code>CONNECTOR_TYPE</code> - The connector type for a MARKETPLACE or CUSTOM connection.</p>
            </li>
            <li>
               <p>
                  <code>CONNECTOR_CLASS_NAME</code> - The connector class name for a MARKETPLACE or CUSTOM connection.</p>
            </li>
            <li>
               <p>
                  <code>KAFKA_CLIENT_KEYSTORE</code> - The Amazon S3 location of the client keystore file for Kafka client side authentication (Optional).</p>
            </li>
            <li>
               <p>
                  <code>KAFKA_CLIENT_KEYSTORE_PASSWORD</code> - The password to access the provided keystore (Optional).</p>
            </li>
            <li>
               <p>
                  <code>KAFKA_CLIENT_KEY_PASSWORD</code> - A keystore can consist of multiple keys, so this is the password to access the client key to be used with the Kafka server side key (Optional).</p>
            </li>
            <li>
               <p>
                  <code>ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD</code> - The encrypted version of the Kafka client keystore password (if the user has the Glue encrypt passwords setting selected).</p>
            </li>
            <li>
               <p>
                  <code>ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD</code> - The encrypted version of the Kafka client key password (if the user has the Glue encrypt passwords setting selected).</p>
            </li>
         </ul>")
  @as("ConnectionProperties")
  connectionProperties: option<connectionProperties>,
  @ocaml.doc("<p>A list of criteria that can be used in selecting this connection.</p>")
  @as("MatchCriteria")
  matchCriteria: option<matchCriteria>,
  @ocaml.doc("<p>The type of the connection. Currently, SFTP is not supported.</p>")
  @as("ConnectionType")
  connectionType: option<connectionType>,
  @ocaml.doc("<p>The description of the connection.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the connection definition.</p>") @as("Name") name: option<nameString>,
}
@ocaml.doc(
  "<p>Contains the individual types of column statistics data. Only one data object should be set and indicated by the <code>Type</code> attribute.</p>"
)
type columnStatisticsData = {
  @ocaml.doc("<p>Binary column statistics data.</p>") @as("BinaryColumnStatisticsData")
  binaryColumnStatisticsData: option<binaryColumnStatisticsData>,
  @ocaml.doc("<p>String column statistics data.</p>") @as("StringColumnStatisticsData")
  stringColumnStatisticsData: option<stringColumnStatisticsData>,
  @ocaml.doc("<p>Long column statistics data.</p>") @as("LongColumnStatisticsData")
  longColumnStatisticsData: option<longColumnStatisticsData>,
  @ocaml.doc("<p>Double column statistics data.</p>") @as("DoubleColumnStatisticsData")
  doubleColumnStatisticsData: option<doubleColumnStatisticsData>,
  @ocaml.doc("<p>Decimal column statistics data.</p>") @as("DecimalColumnStatisticsData")
  decimalColumnStatisticsData: option<decimalColumnStatisticsData>,
  @ocaml.doc("<p>Date column statistics data.</p>") @as("DateColumnStatisticsData")
  dateColumnStatisticsData: option<dateColumnStatisticsData>,
  @ocaml.doc("<p>Boolean column statistics data.</p>") @as("BooleanColumnStatisticsData")
  booleanColumnStatisticsData: option<booleanColumnStatisticsData>,
  @ocaml.doc("<p>The type of column statistics data.</p>") @as("Type") type_: columnStatisticsType,
}
type columnList = array<column>
type columnErrors = array<columnError>
@ocaml.doc("<p>Represents a node in a directed acyclic graph (DAG)</p>")
type codeGenNode = {
  @ocaml.doc("<p>The line number of the node.</p>") @as("LineNumber") lineNumber: option<integer_>,
  @ocaml.doc("<p>Properties of the node, in the form of name-value pairs.</p>") @as("Args")
  args: codeGenNodeArgs,
  @ocaml.doc("<p>The type of node that this is.</p>") @as("NodeType") nodeType: codeGenNodeType,
  @ocaml.doc("<p>A node identifier that is unique within the node's graph.</p>") @as("Id")
  id: codeGenIdentifier,
}
@ocaml.doc("<p>Classifiers are triggered during a crawl task. A classifier checks whether a given file is
      in a format it can handle. If it is, the classifier creates a schema in the form of a
        <code>StructType</code> object that matches that data format.</p>
         <p>You can use the standard classifiers that Glue provides, or you can write your own
      classifiers to best categorize your data sources and specify the appropriate schemas to use
      for them. A classifier can be a <code>grok</code> classifier, an <code>XML</code> classifier,
      a <code>JSON</code> classifier, or a custom <code>CSV</code> classifier, as specified in one
      of the fields in the <code>Classifier</code> object.</p>")
type classifier = {
  @ocaml.doc("<p>A classifier for comma-separated values (CSV).</p>") @as("CsvClassifier")
  csvClassifier: option<csvClassifier>,
  @ocaml.doc("<p>A classifier for JSON content.</p>") @as("JsonClassifier")
  jsonClassifier: option<jsonClassifier>,
  @ocaml.doc("<p>A classifier for XML content.</p>") @as("XMLClassifier")
  xmlclassifier: option<xmlclassifier>,
  @ocaml.doc("<p>A classifier that uses <code>grok</code>.</p>") @as("GrokClassifier")
  grokClassifier: option<grokClassifier>,
}
type catalogTargetList = array<catalogTarget>
type blueprints = array<blueprint>
type batchUpdatePartitionFailureList = array<batchUpdatePartitionFailureEntry>
type batchStopJobRunErrorList = array<batchStopJobRunError>
type batchGetPartitionValueList = array<partitionValueList>
type batchDeletePartitionValueList = array<partitionValueList>
type backfillErroredPartitionsList = array<partitionValueList>
type actionList = array<action>
type userDefinedFunctionList = array<userDefinedFunction>
@ocaml.doc("<p>A structure used to provide information used to update a trigger. This object updates the
      previous trigger definition by overwriting it completely.</p>")
type triggerUpdate = {
  @ocaml.doc("<p>Batch condition that must be met (specified number of events received or batch time window expired)
      before EventBridge event trigger fires.</p>")
  @as("EventBatchingCondition")
  eventBatchingCondition: option<eventBatchingCondition>,
  @ocaml.doc("<p>The predicate of this trigger, which defines when it will fire.</p>")
  @as("Predicate")
  predicate: option<predicate>,
  @ocaml.doc("<p>The actions initiated by this trigger.</p>") @as("Actions")
  actions: option<actionList>,
  @ocaml.doc("<p>A <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based
      Schedules for Jobs and Crawlers</a>. For example, to run
      something every day at 12:15 UTC, you would specify:
      <code>cron(15 12 * * ? *)</code>.</p>")
  @as("Schedule")
  schedule: option<genericString>,
  @ocaml.doc("<p>A description of this trigger.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>Reserved for future use.</p>") @as("Name") name: option<nameString>,
}
@ocaml.doc("<p>Information about a specific trigger.</p>")
type trigger = {
  @ocaml.doc("<p>Batch condition that must be met (specified number of events received or batch time window expired)
      before EventBridge event trigger fires.</p>")
  @as("EventBatchingCondition")
  eventBatchingCondition: option<eventBatchingCondition>,
  @ocaml.doc("<p>The predicate of this trigger, which defines when it will fire.</p>")
  @as("Predicate")
  predicate: option<predicate>,
  @ocaml.doc("<p>The actions initiated by this trigger.</p>") @as("Actions")
  actions: option<actionList>,
  @ocaml.doc("<p>A <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based
      Schedules for Jobs and Crawlers</a>. For example, to run
      something every day at 12:15 UTC, you would specify:
      <code>cron(15 12 * * ? *)</code>.</p>")
  @as("Schedule")
  schedule: option<genericString>,
  @ocaml.doc("<p>A description of this trigger.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The current state of the trigger.</p>") @as("State") state: option<triggerState>,
  @ocaml.doc("<p>The type of trigger that this is.</p>") @as("Type") type_: option<triggerType>,
  @ocaml.doc("<p>Reserved for future use.</p>") @as("Id") id: option<idString>,
  @ocaml.doc("<p>The name of the workflow associated with the trigger.</p>") @as("WorkflowName")
  workflowName: option<nameString>,
  @ocaml.doc("<p>The name of the trigger.</p>") @as("Name") name: option<nameString>,
}
type taskRunList = array<taskRun>
@ocaml.doc("<p>Describes the physical storage of table data.</p>")
type storageDescriptor = {
  @ocaml.doc("<p>An object that references a schema stored in the Glue Schema Registry.</p>
	
	        <p>When creating a table, you can pass an empty list of columns for the schema, and instead use a schema reference.</p>")
  @as("SchemaReference")
  schemaReference: option<schemaReference>,
  @ocaml.doc("<p>
            <code>True</code> if the table data is stored in subdirectories, or <code>False</code> if
      not.</p>")
  @as("StoredAsSubDirectories")
  storedAsSubDirectories: option<boolean_>,
  @ocaml.doc(
    "<p>The information about values that appear frequently in a column (skewed values).</p>"
  )
  @as("SkewedInfo")
  skewedInfo: option<skewedInfo>,
  @ocaml.doc("<p>The user-supplied properties in key-value form.</p>") @as("Parameters")
  parameters: option<parametersMap>,
  @ocaml.doc("<p>A list specifying the sort order of each bucket in the table.</p>")
  @as("SortColumns")
  sortColumns: option<orderList>,
  @ocaml.doc("<p>A list of reducer grouping columns, clustering columns, and
      bucketing columns in the table.</p>")
  @as("BucketColumns")
  bucketColumns: option<nameStringList>,
  @ocaml.doc("<p>The serialization/deserialization (SerDe) information.</p>") @as("SerdeInfo")
  serdeInfo: option<serDeInfo>,
  @ocaml.doc("<p>Must be specified if the table contains any dimension columns.</p>")
  @as("NumberOfBuckets")
  numberOfBuckets: option<integer_>,
  @ocaml.doc("<p>
            <code>True</code> if the data in the table is compressed, or <code>False</code> if
      not.</p>")
  @as("Compressed")
  compressed: option<boolean_>,
  @ocaml.doc("<p>The output format: <code>SequenceFileOutputFormat</code> (binary),
      or <code>IgnoreKeyTextOutputFormat</code>, or a custom format.</p>")
  @as("OutputFormat")
  outputFormat: option<formatString>,
  @ocaml.doc("<p>The input format: <code>SequenceFileInputFormat</code> (binary),
      or <code>TextInputFormat</code>, or a custom format.</p>")
  @as("InputFormat")
  inputFormat: option<formatString>,
  @as("AdditionalLocations") additionalLocations: option<locationStringList>,
  @ocaml.doc("<p>The physical location of the table. By default, this takes the form of the warehouse
      location, followed by the database location in the warehouse, followed by the table
      name.</p>")
  @as("Location")
  location: option<locationString>,
  @ocaml.doc("<p>A list of the <code>Columns</code> in the table.</p>") @as("Columns")
  columns: option<columnList>,
}
type statementList = array<statement>
type sessionList = array<session>
@ocaml.doc("<p>Specifies a security configuration.</p>")
type securityConfiguration = {
  @ocaml.doc("<p>The encryption configuration associated with this security configuration.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: option<encryptionConfiguration>,
  @ocaml.doc("<p>The time at which this security configuration was created.</p>")
  @as("CreatedTimeStamp")
  createdTimeStamp: option<timestampValue>,
  @ocaml.doc("<p>The name of the security configuration.</p>") @as("Name") name: option<nameString>,
}
type metadataInfoMap = Js.Dict.t<metadataInfo>
type jobRunList = array<jobRun>
type jobList = array<job>
@ocaml.doc(
  "<p>Evaluation metrics provide an estimate of the quality of your machine learning transform.</p>"
)
type evaluationMetrics = {
  @ocaml.doc("<p>The evaluation metrics for the find matches algorithm.</p>")
  @as("FindMatchesMetrics")
  findMatchesMetrics: option<findMatchesMetrics>,
  @ocaml.doc("<p>The type of machine learning transform.</p>") @as("TransformType")
  transformType: transformType,
}
@ocaml.doc("<p>The structure used to create or update a database.</p>")
type databaseInput = {
  @ocaml.doc(
    "<p>A <code>DatabaseIdentifier</code> structure that describes a target database for resource linking.</p>"
  )
  @as("TargetDatabase")
  targetDatabase: option<databaseIdentifier>,
  @ocaml.doc("<p>Creates a set of default permissions on the table for principals. </p>")
  @as("CreateTableDefaultPermissions")
  createTableDefaultPermissions: option<principalPermissionsList>,
  @ocaml.doc("<p>These key-value pairs define parameters and properties
      of the database.</p>
         <p>These key-value pairs define parameters and properties of the database.</p>")
  @as("Parameters")
  parameters: option<parametersMap>,
  @ocaml.doc("<p>The location of the database (for example, an HDFS path). </p>") @as("LocationUri")
  locationUri: option<uri>,
  @ocaml.doc("<p>A description of the database.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the database. For Hive compatibility, this is folded to lowercase when it is
      stored.</p>")
  @as("Name")
  name: nameString,
}
@ocaml.doc("<p>The <code>Database</code> object represents a logical grouping of tables that might reside
      in a Hive metastore or an RDBMS.</p>")
type database = {
  @ocaml.doc("<p>The ID of the Data Catalog in which the database resides.</p>") @as("CatalogId")
  catalogId: option<catalogIdString>,
  @ocaml.doc(
    "<p>A <code>DatabaseIdentifier</code> structure that describes a target database for resource linking.</p>"
  )
  @as("TargetDatabase")
  targetDatabase: option<databaseIdentifier>,
  @ocaml.doc("<p>Creates a set of default permissions on the table for principals. </p>")
  @as("CreateTableDefaultPermissions")
  createTableDefaultPermissions: option<principalPermissionsList>,
  @ocaml.doc("<p>The time at which the metadata database was created in the catalog.</p>")
  @as("CreateTime")
  createTime: option<timestamp_>,
  @ocaml.doc("<p>These key-value pairs define parameters and properties
      of the database.</p>")
  @as("Parameters")
  parameters: option<parametersMap>,
  @ocaml.doc("<p>The location of the database (for example, an HDFS path).</p>") @as("LocationUri")
  locationUri: option<uri>,
  @ocaml.doc("<p>A description of the database.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the database. For Hive compatibility, this is folded to lowercase when it is
      stored.</p>")
  @as("Name")
  name: nameString,
}
type dagNodes = array<codeGenNode>
@ocaml.doc("<p>Specifies data stores to crawl.</p>")
type crawlerTargets = {
  @ocaml.doc("<p>Specifies Delta data store targets.</p>") @as("DeltaTargets")
  deltaTargets: option<deltaTargetList>,
  @ocaml.doc("<p>Specifies Glue Data Catalog targets.</p>") @as("CatalogTargets")
  catalogTargets: option<catalogTargetList>,
  @ocaml.doc("<p>Specifies Amazon DynamoDB targets.</p>") @as("DynamoDBTargets")
  dynamoDBTargets: option<dynamoDBTargetList>,
  @ocaml.doc("<p>Specifies Amazon DocumentDB or MongoDB targets.</p>") @as("MongoDBTargets")
  mongoDBTargets: option<mongoDBTargetList>,
  @ocaml.doc("<p>Specifies JDBC targets.</p>") @as("JdbcTargets")
  jdbcTargets: option<jdbcTargetList>,
  @ocaml.doc("<p>Specifies Amazon Simple Storage Service (Amazon S3) targets.</p>") @as("S3Targets")
  s3Targets: option<s3TargetList>,
}
type connectionList = array<connection>
@ocaml.doc("<p>Represents the generated column-level statistics for a table or partition.</p>")
type columnStatistics = {
  @ocaml.doc(
    "<p>A <code>ColumnStatisticData</code> object that contains the statistics data values.</p>"
  )
  @as("StatisticsData")
  statisticsData: columnStatisticsData,
  @ocaml.doc("<p>The timestamp of when column statistics were generated.</p>") @as("AnalyzedTime")
  analyzedTime: timestamp_,
  @ocaml.doc("<p>The data type of the column.</p>") @as("ColumnType") columnType: typeString,
  @ocaml.doc("<p>Name of column which statistics belong to.</p>") @as("ColumnName")
  columnName: nameString,
}
type classifierList = array<classifier>
@ocaml.doc("<p>A list of errors that can occur when registering partition indexes for an existing table.</p>
	
	        <p>These errors give the details about why an index registration failed and provide a limited number of partitions in the response, so that you can fix the partitions at fault and try registering the index again. The most common set of errors that can occur are categorized as follows:</p>
	 
	        <ul>
            <li>
               <p>EncryptedPartitionError: The partitions are encrypted.</p>
            </li>
            <li>
               <p>InvalidPartitionTypeDataError: The partition value doesn't match the data type for that partition column.</p>
            </li>
            <li>
               <p>MissingPartitionValueError: The partitions are encrypted.</p>
            </li>
            <li>
               <p>UnsupportedPartitionCharacterError: Characters inside the partition value are not supported. For example: U+0000 , U+0001, U+0002.</p>
            </li>
            <li>
               <p>InternalError: Any error which does not belong to other error codes.</p>
            </li>
         </ul>")
type backfillError = {
  @ocaml.doc("<p>A list of a limited number of partitions in the response.</p>") @as("Partitions")
  partitions: option<backfillErroredPartitionsList>,
  @ocaml.doc(
    "<p>The error code for an error that occurred when registering partition indexes for an existing table.</p>"
  )
  @as("Code")
  code: option<backfillErrorCode>,
}
type updateColumnStatisticsList = array<columnStatistics>
@ocaml.doc("<p>The details of a Trigger node present in the workflow.</p>")
type triggerNodeDetails = {
  @ocaml.doc("<p>The information of the trigger represented by the trigger node.</p>")
  @as("Trigger")
  trigger: option<trigger>,
}
type triggerList = array<trigger>
@ocaml.doc("<p>A structure used to define a table.</p>")
type tableInput = {
  @ocaml.doc(
    "<p>A <code>TableIdentifier</code> structure that describes a target table for resource linking.</p>"
  )
  @as("TargetTable")
  targetTable: option<tableIdentifier>,
  @ocaml.doc("<p>These key-value pairs define properties associated with the table.</p>")
  @as("Parameters")
  parameters: option<parametersMap>,
  @ocaml.doc(
    "<p>The type of this table (<code>EXTERNAL_TABLE</code>, <code>VIRTUAL_VIEW</code>, etc.).</p>"
  )
  @as("TableType")
  tableType: option<tableTypeString>,
  @ocaml.doc(
    "<p>If the table is a view, the expanded text of the view; otherwise <code>null</code>.</p>"
  )
  @as("ViewExpandedText")
  viewExpandedText: option<viewTextString>,
  @ocaml.doc(
    "<p>If the table is a view, the original text of the view; otherwise <code>null</code>.</p>"
  )
  @as("ViewOriginalText")
  viewOriginalText: option<viewTextString>,
  @ocaml.doc("<p>A list of columns by which the table is partitioned. Only primitive
      types are supported as partition keys.</p>
	        <p>When you create a table used by Amazon Athena, and you do not specify any
        <code>partitionKeys</code>, you must at least set the value of <code>partitionKeys</code> to
      an empty list. For example:</p>
         <p>
            <code>\"PartitionKeys\": []</code>
         </p>")
  @as("PartitionKeys")
  partitionKeys: option<columnList>,
  @ocaml.doc("<p>A storage descriptor containing information about the physical storage
      of this table.</p>")
  @as("StorageDescriptor")
  storageDescriptor: option<storageDescriptor>,
  @ocaml.doc("<p>The retention time for this table.</p>") @as("Retention")
  retention: option<nonNegativeInteger>,
  @ocaml.doc("<p>The last time that column statistics were computed for this table.</p>")
  @as("LastAnalyzedTime")
  lastAnalyzedTime: option<timestamp_>,
  @ocaml.doc("<p>The last time that the table was accessed.</p>") @as("LastAccessTime")
  lastAccessTime: option<timestamp_>,
  @ocaml.doc("<p>The table owner.</p>") @as("Owner") owner: option<nameString>,
  @ocaml.doc("<p>A description of the table.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The table name. For Hive compatibility, this is folded to
      lowercase when it is stored.</p>")
  @as("Name")
  name: nameString,
}
@ocaml.doc("<p>Represents a collection of related data organized in columns and rows.</p>")
type table = {
  @as("VersionId") versionId: option<versionString>,
  @ocaml.doc("<p>The ID of the Data Catalog in which the table resides.</p>") @as("CatalogId")
  catalogId: option<catalogIdString>,
  @ocaml.doc(
    "<p>A <code>TableIdentifier</code> structure that describes a target table for resource linking.</p>"
  )
  @as("TargetTable")
  targetTable: option<tableIdentifier>,
  @ocaml.doc("<p>Indicates whether the table has been registered with Lake Formation.</p>")
  @as("IsRegisteredWithLakeFormation")
  isRegisteredWithLakeFormation: option<boolean_>,
  @ocaml.doc("<p>The person or entity who created the table.</p>") @as("CreatedBy")
  createdBy: option<nameString>,
  @ocaml.doc("<p>These key-value pairs define properties associated with the table.</p>")
  @as("Parameters")
  parameters: option<parametersMap>,
  @ocaml.doc(
    "<p>The type of this table (<code>EXTERNAL_TABLE</code>, <code>VIRTUAL_VIEW</code>, etc.).</p>"
  )
  @as("TableType")
  tableType: option<tableTypeString>,
  @ocaml.doc(
    "<p>If the table is a view, the expanded text of the view; otherwise <code>null</code>.</p>"
  )
  @as("ViewExpandedText")
  viewExpandedText: option<viewTextString>,
  @ocaml.doc(
    "<p>If the table is a view, the original text of the view; otherwise <code>null</code>.</p>"
  )
  @as("ViewOriginalText")
  viewOriginalText: option<viewTextString>,
  @ocaml.doc("<p>A list of columns by which the table is partitioned. Only primitive
      types are supported as partition keys.</p>
	        <p>When you create a table used by Amazon Athena, and you do not specify any
        <code>partitionKeys</code>, you must at least set the value of <code>partitionKeys</code> to
      an empty list. For example:</p>
         <p>
            <code>\"PartitionKeys\": []</code>
         </p>")
  @as("PartitionKeys")
  partitionKeys: option<columnList>,
  @ocaml.doc("<p>A storage descriptor containing information about the physical storage
      of this table.</p>")
  @as("StorageDescriptor")
  storageDescriptor: option<storageDescriptor>,
  @ocaml.doc("<p>The retention time for this table.</p>") @as("Retention")
  retention: option<nonNegativeInteger>,
  @ocaml.doc("<p>The last time that column statistics were computed for this table.</p>")
  @as("LastAnalyzedTime")
  lastAnalyzedTime: option<timestamp_>,
  @ocaml.doc("<p>The last time that the table was accessed. This is usually taken from HDFS, and might not
      be reliable.</p>")
  @as("LastAccessTime")
  lastAccessTime: option<timestamp_>,
  @ocaml.doc("<p>The last time that the table was updated.</p>") @as("UpdateTime")
  updateTime: option<timestamp_>,
  @ocaml.doc("<p>The time when the table definition was created in the Data Catalog.</p>")
  @as("CreateTime")
  createTime: option<timestamp_>,
  @ocaml.doc("<p>The owner of the table.</p>") @as("Owner") owner: option<nameString>,
  @ocaml.doc("<p>A description of the table.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the database where the table metadata resides.
      For Hive compatibility, this must be all lowercase.</p>")
  @as("DatabaseName")
  databaseName: option<nameString>,
  @ocaml.doc("<p>The table name. For Hive compatibility, this must be entirely
      lowercase.</p>")
  @as("Name")
  name: nameString,
}
type securityConfigurationList = array<securityConfiguration>
@ocaml.doc("<p>The structure used to create and update a partition.</p>")
type partitionInput = {
  @ocaml.doc("<p>The last time at which column statistics were computed for this partition.</p>")
  @as("LastAnalyzedTime")
  lastAnalyzedTime: option<timestamp_>,
  @ocaml.doc("<p>These key-value pairs define partition parameters.</p>") @as("Parameters")
  parameters: option<parametersMap>,
  @ocaml.doc("<p>Provides information about the physical
      location where the partition is stored.</p>")
  @as("StorageDescriptor")
  storageDescriptor: option<storageDescriptor>,
  @ocaml.doc("<p>The last time at which the partition was accessed.</p>") @as("LastAccessTime")
  lastAccessTime: option<timestamp_>,
  @ocaml.doc("<p>The values of the partition. Although this parameter is not required by the SDK, you must specify this parameter for a valid input.</p>
	
	        <p>The values for the keys for the new partition must be passed as an array of String objects that must be ordered in the same order as the partition keys appearing in the Amazon S3 prefix. Otherwise Glue will add the values to the wrong keys.</p>")
  @as("Values")
  values: option<valueStringList>,
}
@ocaml.doc("<p>Represents a slice of table data.</p>")
type partition = {
  @ocaml.doc("<p>The ID of the Data Catalog in which the partition resides.</p>") @as("CatalogId")
  catalogId: option<catalogIdString>,
  @ocaml.doc("<p>The last time at which column statistics were computed for this
      partition.</p>")
  @as("LastAnalyzedTime")
  lastAnalyzedTime: option<timestamp_>,
  @ocaml.doc("<p>These key-value pairs define partition parameters.</p>") @as("Parameters")
  parameters: option<parametersMap>,
  @ocaml.doc("<p>Provides information about the physical
      location where the partition is stored.</p>")
  @as("StorageDescriptor")
  storageDescriptor: option<storageDescriptor>,
  @ocaml.doc("<p>The last time at which the partition was accessed.</p>") @as("LastAccessTime")
  lastAccessTime: option<timestamp_>,
  @ocaml.doc("<p>The time at which the partition was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The name of the database table in which to create the partition.</p>")
  @as("TableName")
  tableName: option<nameString>,
  @ocaml.doc("<p>The name of the catalog database in which to create the partition.</p>")
  @as("DatabaseName")
  databaseName: option<nameString>,
  @ocaml.doc("<p>The values of the partition.</p>") @as("Values") values: option<valueStringList>,
}
@ocaml.doc("<p>A structure for a machine learning transform.</p>")
type mltransform = {
  @ocaml.doc(
    "<p>The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.</p>"
  )
  @as("TransformEncryption")
  transformEncryption: option<transformEncryption>,
  @ocaml.doc("<p>The maximum number of times to retry after an <code>MLTaskRun</code> of the machine
      learning transform fails.</p>")
  @as("MaxRetries")
  maxRetries: option<nullableInteger>,
  @ocaml.doc("<p>The timeout in minutes of the machine learning transform.</p>") @as("Timeout")
  timeout: option<timeout>,
  @ocaml.doc("<p>The number of workers of a defined <code>workerType</code> that are allocated when a task of the transform runs.</p>
	
	        <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>")
  @as("NumberOfWorkers")
  numberOfWorkers: option<nullableInteger>,
  @ocaml.doc("<p>The type of predefined worker that is allocated when a task of this transform runs. Accepts a value of Standard, G.1X, or G.2X.</p>
	        <ul>
            <li>
               <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
            </li>
            <li>
               <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
            </li>
            <li>
               <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
            </li>
         </ul>
	
	        <p>
            <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
        <ul>
            <li>
               <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p>
            </li>
            <li>
               <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p>
            </li>
            <li>
               <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
            </li>
            <li>
               <p>
                  <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p>
            </li>
         </ul>")
  @as("WorkerType")
  workerType: option<workerType>,
  @ocaml.doc("<p>The number of Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of
      processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
      information, see the <a href=\"http://aws.amazon.com/glue/pricing/\">Glue pricing
        page</a>. </p>
		
		       <p>
            <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
        <ul>
            <li>
               <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p>
            </li>
            <li>
               <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p>
            </li>
            <li>
               <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
            </li>
            <li>
               <p>
                  <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p>
            </li>
         </ul>
		
	        <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>")
  @as("MaxCapacity")
  maxCapacity: option<nullableDouble>,
  @ocaml.doc(
    "<p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions\">Glue Versions</a> in the developer guide.</p>"
  )
  @as("GlueVersion")
  glueVersion: option<glueVersionString>,
  @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both Glue service role permissions to Glue resources, and Amazon S3 permissions required by the transform. </p>

		       <ul>
            <li>
               <p>This role needs Glue service role permissions to allow access to resources in Glue. See <a href=\"https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html\">Attach a Policy to IAM Users That Access Glue</a>.</p>
            </li>
            <li>
               <p>This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.</p>
            </li>
         </ul>")
  @as("Role")
  role: option<roleString>,
  @ocaml.doc("<p>A map of key-value pairs representing the columns and data types that this transform can
      run against. Has an upper bound of 100 columns.</p>")
  @as("Schema")
  schema: option<transformSchema>,
  @ocaml.doc(
    "<p>A count identifier for the labeling files generated by Glue for this transform. As you create a better transform, you can iteratively download, label, and upload the labeling file.</p>"
  )
  @as("LabelCount")
  labelCount: option<labelCount>,
  @ocaml.doc(
    "<p>An <code>EvaluationMetrics</code> object. Evaluation metrics provide an estimate of the quality of your machine learning transform.</p>"
  )
  @as("EvaluationMetrics")
  evaluationMetrics: option<evaluationMetrics>,
  @ocaml.doc("<p>A <code>TransformParameters</code> object. You can use parameters to tune (customize) the
      behavior of the machine learning transform by specifying what data it learns from and your
      preference on various tradeoffs (such as precious vs. recall, or accuracy vs. cost).</p>")
  @as("Parameters")
  parameters: option<transformParameters>,
  @ocaml.doc("<p>A list of Glue table definitions used by the transform.</p>")
  @as("InputRecordTables")
  inputRecordTables: option<glueTables>,
  @ocaml.doc(
    "<p>A timestamp. The last point in time when this machine learning transform was modified.</p>"
  )
  @as("LastModifiedOn")
  lastModifiedOn: option<timestamp_>,
  @ocaml.doc(
    "<p>A timestamp. The time and date that this machine learning transform was created.</p>"
  )
  @as("CreatedOn")
  createdOn: option<timestamp_>,
  @ocaml.doc("<p>The current status of the machine learning transform.</p>") @as("Status")
  status: option<transformStatusType>,
  @ocaml.doc("<p>A user-defined, long-form description text for the machine learning transform.
      Descriptions are not guaranteed to be unique and can be changed at any time.</p>")
  @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>A user-defined name for the machine learning transform. Names are not guaranteed unique
      and can be changed at any time.</p>")
  @as("Name")
  name: option<nameString>,
  @ocaml.doc("<p>The unique transform ID that is generated for the machine learning transform. The ID is
      guaranteed to be unique and does not change.</p>")
  @as("TransformId")
  transformId: option<hashString>,
}
@ocaml.doc("<p>The details of a Job node present in the workflow.</p>")
type jobNodeDetails = {
  @ocaml.doc("<p>The information for the job runs represented by the job node.</p>") @as("JobRuns")
  jobRuns: option<jobRunList>,
}
type databaseList = array<database>
@ocaml.doc("<p>Specifies a crawler program that examines a data source and uses classifiers to try to
      determine its schema. If successful, the crawler records metadata concerning the data source
      in the Glue Data Catalog.</p>")
type crawler = {
  @as("LakeFormationConfiguration") lakeFormationConfiguration: option<lakeFormationConfiguration>,
  @ocaml.doc("<p>The name of the <code>SecurityConfiguration</code> structure to be used by this
      crawler.</p>")
  @as("CrawlerSecurityConfiguration")
  crawlerSecurityConfiguration: option<crawlerSecurityConfiguration>,
  @ocaml.doc("<p>Crawler configuration information. This versioned JSON string allows users to specify
      aspects of a crawler's behavior. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/define-crawler.html#crawler-data-stores-exclude\">Include and Exclude
        Patterns</a>.</p>")
  @as("Configuration")
  configuration: option<crawlerConfiguration>,
  @ocaml.doc("<p>The version of the crawler.</p>") @as("Version") version: option<versionId>,
  @ocaml.doc("<p>The status of the last crawl, and potentially error information if
      an error occurred.</p>")
  @as("LastCrawl")
  lastCrawl: option<lastCrawlInfo>,
  @ocaml.doc("<p>The time that the crawler was last updated.</p>") @as("LastUpdated")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>The time that the crawler was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>If the crawler is running, contains the total time elapsed since the last crawl
      began.</p>")
  @as("CrawlElapsedTime")
  crawlElapsedTime: option<millisecondsCount>,
  @ocaml.doc("<p>For scheduled crawlers, the schedule when the crawler runs.</p>") @as("Schedule")
  schedule: option<schedule>,
  @ocaml.doc("<p>The prefix added to the names of tables that are created.</p>") @as("TablePrefix")
  tablePrefix: option<tablePrefix>,
  @ocaml.doc("<p>Indicates whether the crawler is running, or whether a run is pending.</p>")
  @as("State")
  state: option<crawlerState>,
  @ocaml.doc(
    "<p>A configuration that specifies whether data lineage is enabled for the crawler.</p>"
  )
  @as("LineageConfiguration")
  lineageConfiguration: option<lineageConfiguration>,
  @ocaml.doc("<p>The policy that specifies update and delete behaviors for the crawler.</p>")
  @as("SchemaChangePolicy")
  schemaChangePolicy: option<schemaChangePolicy>,
  @ocaml.doc(
    "<p>A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.</p>"
  )
  @as("RecrawlPolicy")
  recrawlPolicy: option<recrawlPolicy>,
  @ocaml.doc("<p>A list of UTF-8 strings that specify the custom classifiers that are associated 
     with the crawler.</p>")
  @as("Classifiers")
  classifiers: option<classifierNameList>,
  @ocaml.doc("<p>A description of the crawler.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the database in which the crawler's output is stored.</p>")
  @as("DatabaseName")
  databaseName: option<databaseName>,
  @ocaml.doc("<p>A collection of targets to crawl.</p>") @as("Targets")
  targets: option<crawlerTargets>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM role that's used to access customer resources,
      such as Amazon Simple Storage Service (Amazon S3) data.</p>")
  @as("Role")
  role: option<role>,
  @ocaml.doc("<p>The name of the crawler.</p>") @as("Name") name: option<nameString>,
}
type columnStatisticsList = array<columnStatistics>
@ocaml.doc(
  "<p>Encapsulates a <code>ColumnStatistics</code> object that failed and the reason for failure.</p>"
)
type columnStatisticsError = {
  @ocaml.doc("<p>An error message with the reason for the failure of an operation.</p>")
  @as("Error")
  error: option<errorDetail>,
  @ocaml.doc("<p>The <code>ColumnStatistics</code> of the column.</p>") @as("ColumnStatistics")
  columnStatistics: option<columnStatistics>,
}
type backfillErrors = array<backfillError>
type unfilteredPartition = {
  @as("IsRegisteredWithLakeFormation") isRegisteredWithLakeFormation: option<boolean_>,
  @as("AuthorizedColumns") authorizedColumns: option<nameStringList>,
  @as("Partition") partition: option<partition>,
}
type transformList = array<mltransform>
@ocaml.doc("<p>Specifies a version of a table.</p>")
type tableVersion = {
  @ocaml.doc(
    "<p>The ID value that identifies this table version. A <code>VersionId</code> is a string representation of an integer. Each version is incremented by 1.</p>"
  )
  @as("VersionId")
  versionId: option<versionString>,
  @ocaml.doc("<p>The table in question.</p>") @as("Table") table: option<table>,
}
type tableList = array<table>
type partitionList = array<partition>
type partitionInputList = array<partitionInput>
@ocaml.doc("<p>A descriptor for a partition index in a table.</p>")
type partitionIndexDescriptor = {
  @ocaml.doc(
    "<p>A list of errors that can occur when registering partition indexes for an existing table.</p>"
  )
  @as("BackfillErrors")
  backfillErrors: option<backfillErrors>,
  @ocaml.doc("<p>The status of the partition index. </p>
	
	        <p>The possible statuses are:</p>
	        <ul>
            <li>
               <p>CREATING: The index is being created. When an index is in a CREATING state, the index or its table cannot be deleted.</p>
            </li>
            <li>
               <p>ACTIVE: The index creation succeeds.</p>
            </li>
            <li>
               <p>FAILED: The index creation fails. </p>
            </li>
            <li>
               <p>DELETING: The index is deleted from the list of indexes.</p>
            </li>
         </ul>")
  @as("IndexStatus")
  indexStatus: partitionIndexStatus,
  @ocaml.doc(
    "<p>A list of one or more keys, as <code>KeySchemaElement</code> structures, for the partition index.</p>"
  )
  @as("Keys")
  keys: keySchemaElementList,
  @ocaml.doc("<p>The name of the partition index.</p>") @as("IndexName") indexName: nameString,
}
@ocaml.doc(
  "<p>A node represents an Glue component (trigger, crawler, or job) on a workflow graph.</p>"
)
type node = {
  @ocaml.doc("<p>Details of the crawler when the node represents a crawler.</p>")
  @as("CrawlerDetails")
  crawlerDetails: option<crawlerNodeDetails>,
  @ocaml.doc("<p>Details of the Job when the node represents a Job.</p>") @as("JobDetails")
  jobDetails: option<jobNodeDetails>,
  @ocaml.doc("<p>Details of the Trigger when the node represents a Trigger.</p>")
  @as("TriggerDetails")
  triggerDetails: option<triggerNodeDetails>,
  @ocaml.doc("<p>The unique Id assigned to the node within the workflow.</p>") @as("UniqueId")
  uniqueId: option<nameString>,
  @ocaml.doc("<p>The name of the Glue component represented by the node.</p>") @as("Name")
  name: option<nameString>,
  @ocaml.doc("<p>The type of Glue component represented by the node.</p>") @as("Type")
  type_: option<nodeType>,
}
type crawlerList = array<crawler>
type columnStatisticsErrors = array<columnStatisticsError>
@ocaml.doc("<p>A structure that contains the values and structure used to update a partition.</p>")
type batchUpdatePartitionRequestEntry = {
  @ocaml.doc("<p>The structure used to update a partition.</p>") @as("PartitionInput")
  partitionInput: partitionInput,
  @ocaml.doc("<p>A list of values defining the partitions.</p>") @as("PartitionValueList")
  partitionValueList: boundedPartitionValueList,
}
type unfilteredPartitionList = array<unfilteredPartition>
type partitionIndexDescriptorList = array<partitionIndexDescriptor>
type nodeList = array<node>
type getTableVersionsList = array<tableVersion>
type batchUpdatePartitionRequestEntryList = array<batchUpdatePartitionRequestEntry>
@ocaml.doc("<p>A workflow graph represents the complete workflow containing all the Glue components present in the
      workflow and all the directed connections between them.</p>")
type workflowGraph = {
  @ocaml.doc(
    "<p>A list of all the directed connections between the nodes belonging to the workflow.</p>"
  )
  @as("Edges")
  edges: option<edgeList>,
  @ocaml.doc(
    "<p>A list of the the Glue components belong to the workflow represented as nodes.</p>"
  )
  @as("Nodes")
  nodes: option<nodeList>,
}
@ocaml.doc(
  "<p>A workflow run is an execution of a workflow providing all the runtime information.</p>"
)
type workflowRun = {
  @ocaml.doc("<p>The batch condition that started the workflow run.</p>")
  @as("StartingEventBatchCondition")
  startingEventBatchCondition: option<startingEventBatchCondition>,
  @ocaml.doc("<p>The graph representing all the Glue components that belong to the workflow as nodes and directed
      connections between them as edges.</p>")
  @as("Graph")
  graph: option<workflowGraph>,
  @ocaml.doc("<p>The statistics of the run.</p>") @as("Statistics")
  statistics: option<workflowRunStatistics>,
  @ocaml.doc(
    "<p>This error message describes any error that may have occurred in starting the workflow run. Currently the only error message is \"Concurrent runs exceeded for workflow: <code>foo</code>.\"</p>"
  )
  @as("ErrorMessage")
  errorMessage: option<errorString>,
  @ocaml.doc("<p>The status of the workflow run.</p>") @as("Status")
  status: option<workflowRunStatus>,
  @ocaml.doc("<p>The date and time when the workflow run completed.</p>") @as("CompletedOn")
  completedOn: option<timestampValue>,
  @ocaml.doc("<p>The date and time when the workflow run was started.</p>") @as("StartedOn")
  startedOn: option<timestampValue>,
  @ocaml.doc("<p>The workflow run properties which were set during the run.</p>")
  @as("WorkflowRunProperties")
  workflowRunProperties: option<workflowRunProperties>,
  @ocaml.doc("<p>The ID of the previous workflow run.</p>") @as("PreviousRunId")
  previousRunId: option<idString>,
  @ocaml.doc("<p>The ID of this workflow run.</p>") @as("WorkflowRunId")
  workflowRunId: option<idString>,
  @ocaml.doc("<p>Name of the workflow that was run.</p>") @as("Name") name: option<nameString>,
}
type workflowRuns = array<workflowRun>
@ocaml.doc("<p>A workflow is a collection of multiple dependent Glue 
      jobs and crawlers that are run to complete a complex ETL task. A
      workflow manages the execution and monitoring of all its jobs and crawlers.</p>")
type workflow = {
  @ocaml.doc(
    "<p>This structure indicates the details of the blueprint that this particular workflow is created from.</p>"
  )
  @as("BlueprintDetails")
  blueprintDetails: option<blueprintDetails>,
  @ocaml.doc(
    "<p>You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.</p>"
  )
  @as("MaxConcurrentRuns")
  maxConcurrentRuns: option<nullableInteger>,
  @ocaml.doc("<p>The graph representing all the Glue components that belong to the workflow as nodes and directed
      connections between them as edges.</p>")
  @as("Graph")
  graph: option<workflowGraph>,
  @ocaml.doc("<p>The information about the last execution of the workflow.</p>") @as("LastRun")
  lastRun: option<workflowRun>,
  @ocaml.doc("<p>The date and time when the workflow was last modified.</p>") @as("LastModifiedOn")
  lastModifiedOn: option<timestampValue>,
  @ocaml.doc("<p>The date and time when the workflow was created.</p>") @as("CreatedOn")
  createdOn: option<timestampValue>,
  @ocaml.doc("<p>A collection of properties to be used as part of each execution of the workflow.
    The run properties are made available to each job in the workflow. A job can modify
    the properties for the next jobs in the flow.</p>")
  @as("DefaultRunProperties")
  defaultRunProperties: option<workflowRunProperties>,
  @ocaml.doc("<p>A description of the workflow.</p>") @as("Description")
  description: option<genericString>,
  @ocaml.doc("<p>The name of the workflow.</p>") @as("Name") name: option<nameString>,
}
type workflows = array<workflow>
@ocaml.doc("<fullname>Glue</fullname>
         <p>Defines the public endpoint for the Glue service.</p>")
module UpdateCrawlerSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>The updated <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
      something every day at 12:15 UTC, you would specify:
      <code>cron(15 12 * * ? *)</code>.</p>")
    @as("Schedule")
    schedule: option<cronExpression>,
    @ocaml.doc("<p>The name of the crawler whose schedule to update.</p>") @as("CrawlerName")
    crawlerName: nameString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateCrawlerScheduleCommand"
  let make = (~crawlerName, ~schedule=?, ()) => new({schedule, crawlerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateBlueprint = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies a path in Amazon S3 where the blueprint is published.</p>")
    @as("BlueprintLocation")
    blueprintLocation: orchestrationS3Location,
    @ocaml.doc("<p>A description of the blueprint.</p>") @as("Description")
    description: option<generic512CharString>,
    @ocaml.doc("<p>The name of the blueprint.</p>") @as("Name") name: orchestrationNameString,
  }
  type response = {
    @ocaml.doc("<p>Returns the name of the blueprint that was updated.</p>") @as("Name")
    name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateBlueprintCommand"
  let make = (~blueprintLocation, ~name, ~description=?, ()) =>
    new({blueprintLocation, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StopWorkflowRun = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the workflow run to stop.</p>") @as("RunId") runId: idString,
    @ocaml.doc("<p>The name of the workflow to stop.</p>") @as("Name") name: nameString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "StopWorkflowRunCommand"
  let make = (~runId, ~name, ()) => new({runId, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StopTrigger = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the trigger to stop.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The name of the trigger that was stopped.</p>") @as("Name")
    name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "StopTriggerCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StopSession = {
  type t
  type request = {
    @ocaml.doc("<p>The origin of the request.</p>") @as("RequestOrigin")
    requestOrigin: option<orchestrationNameString>,
    @ocaml.doc("<p>The ID of the session to be stopped.</p>") @as("Id") id: nameString,
  }
  type response = {
    @ocaml.doc("<p>Returns the Id of the stopped session.</p>") @as("Id") id: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "StopSessionCommand"
  let make = (~id, ~requestOrigin=?, ()) => new({requestOrigin, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StopCrawlerSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>Name of the crawler whose schedule state to set.</p>") @as("CrawlerName")
    crawlerName: nameString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "StopCrawlerScheduleCommand"
  let make = (~crawlerName, ()) => new({crawlerName: crawlerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StopCrawler = {
  type t
  type request = {@ocaml.doc("<p>Name of the crawler to stop.</p>") @as("Name") name: nameString}
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "StopCrawlerCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartTrigger = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the trigger to start.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The name of the trigger that was started.</p>") @as("Name")
    name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "StartTriggerCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartMLLabelingSetGenerationTaskRun = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Simple Storage Service (Amazon S3) path where you generate the labeling
      set.</p>")
    @as("OutputS3Path")
    outputS3Path: uriString,
    @ocaml.doc("<p>The unique identifier of the machine learning transform.</p>") @as("TransformId")
    transformId: hashString,
  }
  type response = {
    @ocaml.doc("<p>The unique run identifier that is associated with this task run.</p>")
    @as("TaskRunId")
    taskRunId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "StartMLLabelingSetGenerationTaskRunCommand"
  let make = (~outputS3Path, ~transformId, ()) => new({outputS3Path, transformId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartMLEvaluationTaskRun = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the machine learning transform.</p>") @as("TransformId")
    transformId: hashString,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier associated with this run.</p>") @as("TaskRunId")
    taskRunId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "StartMLEvaluationTaskRunCommand"
  let make = (~transformId, ()) => new({transformId: transformId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartImportLabelsTaskRun = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to overwrite your existing labels.</p>")
    @as("ReplaceAllLabels")
    replaceAllLabels: option<replaceBoolean>,
    @ocaml.doc("<p>The Amazon Simple Storage Service (Amazon S3) path from where you import the
      labels.</p>")
    @as("InputS3Path")
    inputS3Path: uriString,
    @ocaml.doc("<p>The unique identifier of the machine learning transform.</p>") @as("TransformId")
    transformId: hashString,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the task run.</p>") @as("TaskRunId")
    taskRunId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "StartImportLabelsTaskRunCommand"
  let make = (~inputS3Path, ~transformId, ~replaceAllLabels=?, ()) =>
    new({replaceAllLabels, inputS3Path, transformId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartExportLabelsTaskRun = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon S3 path where you export the labels.</p>") @as("OutputS3Path")
    outputS3Path: uriString,
    @ocaml.doc("<p>The unique identifier of the machine learning transform.</p>") @as("TransformId")
    transformId: hashString,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the task run.</p>") @as("TaskRunId")
    taskRunId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "StartExportLabelsTaskRunCommand"
  let make = (~outputS3Path, ~transformId, ()) => new({outputS3Path, transformId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartCrawlerSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>Name of the crawler to schedule.</p>") @as("CrawlerName")
    crawlerName: nameString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "StartCrawlerScheduleCommand"
  let make = (~crawlerName, ()) => new({crawlerName: crawlerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartCrawler = {
  type t
  type request = {@ocaml.doc("<p>Name of the crawler to start.</p>") @as("Name") name: nameString}
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "StartCrawlerCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartBlueprintRun = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the IAM role used to create the workflow.</p>") @as("RoleArn")
    roleArn: orchestrationIAMRoleArn,
    @ocaml.doc("<p>Specifies the parameters as a <code>BlueprintParameters</code> object.</p>")
    @as("Parameters")
    parameters: option<blueprintParameters>,
    @ocaml.doc("<p>The name of the blueprint.</p>") @as("BlueprintName")
    blueprintName: orchestrationNameString,
  }
  type response = {
    @ocaml.doc("<p>The run ID for this blueprint run.</p>") @as("RunId") runId: option<idString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "StartBlueprintRunCommand"
  let make = (~roleArn, ~blueprintName, ~parameters=?, ()) =>
    new({roleArn, parameters, blueprintName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RunStatement = {
  type t
  type request = {
    @ocaml.doc("<p>The origin of the request.</p>") @as("RequestOrigin")
    requestOrigin: option<orchestrationNameString>,
    @ocaml.doc("<p>The statement code to be run.</p>") @as("Code")
    code: orchestrationStatementCodeString,
    @ocaml.doc("<p>The Session Id of the statement to be run.</p>") @as("SessionId")
    sessionId: nameString,
  }
  type response = {
    @ocaml.doc("<p>Returns the Id of the statement that was run.</p>") @as("Id")
    id: option<integerValue>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "RunStatementCommand"
  let make = (~code, ~sessionId, ~requestOrigin=?, ()) => new({requestOrigin, code, sessionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>'TRUE'</code>, indicates that you are using both methods to grant cross-account
      access to Data Catalog resources:</p>
         <ul>
            <li>
               <p>By directly updating the resource policy with <code>PutResourePolicy</code>
               </p>
            </li>
            <li>
               <p>By using the <b>Grant permissions</b> command on the Amazon Web Services Management Console.</p>
            </li>
         </ul>
         <p>Must be set to <code>'TRUE'</code> if you have already used the Management Console to
      grant cross-account access, otherwise the call fails. Default is 'FALSE'.</p>")
    @as("EnableHybrid")
    enableHybrid: option<enableHybridValues>,
    @ocaml.doc("<p>A value of <code>MUST_EXIST</code> is used to update a policy. A value of
        <code>NOT_EXIST</code> is used to create a new policy. If a value of <code>NONE</code> or a
      null value is used, the call does not depend on the existence of a policy.</p>")
    @as("PolicyExistsCondition")
    policyExistsCondition: option<existCondition>,
    @ocaml.doc("<p>The hash value returned when the previous policy was set using
        <code>PutResourcePolicy</code>. Its purpose is to prevent concurrent modifications of a
      policy. Do not use this parameter if no previous policy has been set.</p>")
    @as("PolicyHashCondition")
    policyHashCondition: option<hashString>,
    @ocaml.doc("<p>Do not use. For internal use only.</p>") @as("ResourceArn")
    resourceArn: option<glueResourceArn>,
    @ocaml.doc("<p>Contains the policy document to set, in JSON format.</p>") @as("PolicyInJson")
    policyInJson: policyJsonString,
  }
  type response = {
    @ocaml.doc("<p>A hash of the policy that has just been set. This must
      be included in a subsequent call that overwrites or updates
      this policy.</p>")
    @as("PolicyHash")
    policyHash: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "PutResourcePolicyCommand"
  let make = (
    ~policyInJson,
    ~enableHybrid=?,
    ~policyExistsCondition=?,
    ~policyHashCondition=?,
    ~resourceArn=?,
    (),
  ) => new({enableHybrid, policyExistsCondition, policyHashCondition, resourceArn, policyInJson})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ImportCatalogToGlue = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the catalog to import. Currently, this should be the Amazon Web Services account ID.</p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "ImportCatalogToGlueCommand"
  let make = (~catalogId=?, ()) => new({catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the Glue resource for which to retrieve the resource policy. If not
      supplied, the Data Catalog resource policy is returned. Use <code>GetResourcePolicies</code>
      to view all existing resource policies. For more information see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/glue-specifying-resource-arns.html\">Specifying Glue Resource ARNs</a>.
    </p>")
    @as("ResourceArn")
    resourceArn: option<glueResourceArn>,
  }
  type response = {
    @ocaml.doc("<p>The date and time at which the policy was last updated.</p>") @as("UpdateTime")
    updateTime: option<timestamp_>,
    @ocaml.doc("<p>The date and time at which the policy was created.</p>") @as("CreateTime")
    createTime: option<timestamp_>,
    @ocaml.doc("<p>Contains the hash value associated with this policy.</p>") @as("PolicyHash")
    policyHash: option<hashString>,
    @ocaml.doc("<p>Contains the requested policy document, in JSON format.</p>") @as("PolicyInJson")
    policyInJson: option<policyJsonString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetResourcePolicyCommand"
  let make = (~resourceArn=?, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteWorkflow = {
  type t
  type request = {
    @ocaml.doc("<p>Name of the workflow to be deleted.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>Name of the workflow specified in input.</p>") @as("Name")
    name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteWorkflowCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteUserDefinedFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the function definition to be deleted.</p>") @as("FunctionName")
    functionName: nameString,
    @ocaml.doc("<p>The name of the catalog database where the function is located.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the function to be deleted is
      located. If none is supplied, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "DeleteUserDefinedFunctionCommand"
  let make = (~functionName, ~databaseName, ~catalogId=?, ()) =>
    new({functionName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteTrigger = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the trigger to delete.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The name of the trigger that was deleted.</p>") @as("Name")
    name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteTriggerCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteTableVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the table version to be deleted. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1.</p>"
    )
    @as("VersionId")
    versionId: versionString,
    @ocaml.doc("<p>The name of the table. For Hive compatibility, 
      this name is entirely lowercase.</p>")
    @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>The database in the catalog in which the table resides. For Hive
      compatibility, this name is entirely lowercase.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
      ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteTableVersionCommand"
  let make = (~versionId, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({versionId, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteTable = {
  type t
  type request = {
    @ocaml.doc("<p>The transaction ID at which to delete the table contents.</p>")
    @as("TransactionId")
    transactionId: option<transactionIdString>,
    @ocaml.doc("<p>The name of the table to be deleted. For Hive
      compatibility, this name is entirely lowercase.</p>")
    @as("Name")
    name: nameString,
    @ocaml.doc("<p>The name of the catalog database in which the table resides. For Hive
      compatibility, this name is entirely lowercase.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the table resides. If none is provided, the Amazon Web Services account
      ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteTableCommand"
  let make = (~name, ~databaseName, ~transactionId=?, ~catalogId=?, ()) =>
    new({transactionId, name, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteSession = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the origin of the delete session request.</p>") @as("RequestOrigin")
    requestOrigin: option<orchestrationNameString>,
    @ocaml.doc("<p>The ID of the session to be deleted.</p>") @as("Id") id: nameString,
  }
  type response = {
    @ocaml.doc("<p>Returns the ID of the deleted session.</p>") @as("Id") id: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteSessionCommand"
  let make = (~id, ~requestOrigin=?, ()) => new({requestOrigin, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteSecurityConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the security configuration to delete.</p>") @as("Name")
    name: nameString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "DeleteSecurityConfigurationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the Glue resource for the resource policy to be deleted.</p>")
    @as("ResourceArn")
    resourceArn: option<glueResourceArn>,
    @ocaml.doc("<p>The hash value returned when this policy was set.</p>")
    @as("PolicyHashCondition")
    policyHashCondition: option<hashString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteResourcePolicyCommand"
  let make = (~resourceArn=?, ~policyHashCondition=?, ()) => new({resourceArn, policyHashCondition})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeletePartitionIndex = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the partition index to be deleted.</p>") @as("IndexName")
    indexName: nameString,
    @ocaml.doc(
      "<p>Specifies the name of a table from which you want to delete a partition index.</p>"
    )
    @as("TableName")
    tableName: nameString,
    @ocaml.doc(
      "<p>Specifies the name of a database from which you want to delete a partition index.</p>"
    )
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The catalog ID where the table resides.</p>") @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeletePartitionIndexCommand"
  let make = (~indexName, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({indexName, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteMLTransform = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the transform to delete.</p>") @as("TransformId")
    transformId: hashString,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the transform that was deleted.</p>") @as("TransformId")
    transformId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteMLTransformCommand"
  let make = (~transformId, ()) => new({transformId: transformId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteJob = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the job definition to delete.</p>") @as("JobName")
    jobName: nameString,
  }
  type response = {
    @ocaml.doc("<p>The name of the job definition that was deleted.</p>") @as("JobName")
    jobName: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteJobCommand"
  let make = (~jobName, ()) => new({jobName: jobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteDevEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the <code>DevEndpoint</code>.</p>") @as("EndpointName")
    endpointName: genericString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteDevEndpointCommand"
  let make = (~endpointName, ()) => new({endpointName: endpointName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the database to delete. For Hive compatibility, this must be all
      lowercase.</p>")
    @as("Name")
    name: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog in which the database resides. If none is provided, the Amazon Web Services
      account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteDatabaseCommand"
  let make = (~name, ~catalogId=?, ()) => new({name, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteCrawler = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the crawler to remove.</p>") @as("Name") name: nameString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteCrawlerCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the connection to delete.</p>") @as("ConnectionName")
    connectionName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog in which the connection resides. If none is provided, the Amazon Web Services
      account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteConnectionCommand"
  let make = (~connectionName, ~catalogId=?, ()) => new({connectionName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteColumnStatisticsForTable = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the column.</p>") @as("ColumnName") columnName: nameString,
    @ocaml.doc("<p>The name of the partitions' table.</p>") @as("TableName") tableName: nameString,
    @ocaml.doc("<p>The name of the catalog database where the partitions reside.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the partitions in question reside.
      If none is supplied, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "DeleteColumnStatisticsForTableCommand"
  let make = (~columnName, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({columnName, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteClassifier = {
  type t
  type request = {
    @ocaml.doc("<p>Name of the classifier to remove.</p>") @as("Name") name: nameString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteClassifierCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteBlueprint = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the blueprint to delete.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>Returns the name of the blueprint that was deleted.</p>") @as("Name")
    name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteBlueprintCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CheckSchemaVersionValidity = {
  type t
  type request = {
    @ocaml.doc("<p>The definition of the schema that has to be validated.</p>")
    @as("SchemaDefinition")
    schemaDefinition: schemaDefinitionString,
    @ocaml.doc(
      "<p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>"
    )
    @as("DataFormat")
    dataFormat: dataFormat,
  }
  type response = {
    @ocaml.doc("<p>A validation failure error message.</p>") @as("Error")
    error: option<schemaValidationError>,
    @ocaml.doc("<p>Return true, if the schema is valid and false otherwise.</p>") @as("Valid")
    valid: option<isVersionValid>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "CheckSchemaVersionValidityCommand"
  let make = (~schemaDefinition, ~dataFormat, ()) => new({schemaDefinition, dataFormat})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CancelStatement = {
  type t
  type request = {
    @ocaml.doc("<p>The origin of the request to cancel the statement.</p>") @as("RequestOrigin")
    requestOrigin: option<orchestrationNameString>,
    @ocaml.doc("<p>The ID of the statement to be cancelled.</p>") @as("Id") id: integerValue,
    @ocaml.doc("<p>The Session ID of the statement to be cancelled.</p>") @as("SessionId")
    sessionId: nameString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "CancelStatementCommand"
  let make = (~id, ~sessionId, ~requestOrigin=?, ()) => new({requestOrigin, id, sessionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CancelMLTaskRun = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the task run.</p>") @as("TaskRunId")
    taskRunId: hashString,
    @ocaml.doc("<p>The unique identifier of the machine learning transform.</p>") @as("TransformId")
    transformId: hashString,
  }
  type response = {
    @ocaml.doc("<p>The status for this run.</p>") @as("Status") status: option<taskStatusType>,
    @ocaml.doc("<p>The unique identifier for the task run.</p>") @as("TaskRunId")
    taskRunId: option<hashString>,
    @ocaml.doc("<p>The unique identifier of the machine learning transform.</p>") @as("TransformId")
    transformId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "CancelMLTaskRunCommand"
  let make = (~taskRunId, ~transformId, ()) => new({taskRunId, transformId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateWorkflow = {
  type t
  type request = {
    @ocaml.doc(
      "<p>You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.</p>"
    )
    @as("MaxConcurrentRuns")
    maxConcurrentRuns: option<nullableInteger>,
    @ocaml.doc(
      "<p>A collection of properties to be used as part of each execution of the workflow.</p>"
    )
    @as("DefaultRunProperties")
    defaultRunProperties: option<workflowRunProperties>,
    @ocaml.doc("<p>The description of the workflow.</p>") @as("Description")
    description: option<genericString>,
    @ocaml.doc("<p>Name of the workflow to be updated.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The name of the workflow which was specified in input.</p>") @as("Name")
    name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateWorkflowCommand"
  let make = (~name, ~maxConcurrentRuns=?, ~defaultRunProperties=?, ~description=?, ()) =>
    new({maxConcurrentRuns, defaultRunProperties, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateSchema = {
  type t
  type request = {
    @ocaml.doc("<p>The new description for the schema.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The new compatibility setting for the schema.</p>") @as("Compatibility")
    compatibility: option<compatibility>,
    @ocaml.doc(
      "<p>Version number required for check pointing. One of <code>VersionNumber</code> or <code>Compatibility</code> has to be provided.</p>"
    )
    @as("SchemaVersionNumber")
    schemaVersionNumber: option<schemaVersionNumber>,
    @ocaml.doc("<p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
	        <ul>
            <li>
               <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
            </li>
            <li>
               <p>SchemaId$SchemaName: The name of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
            </li>
         </ul>")
    @as("SchemaId")
    schemaId: schemaId,
  }
  type response = {
    @ocaml.doc("<p>The name of the registry that contains the schema.</p>") @as("RegistryName")
    registryName: option<schemaRegistryNameString>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName")
    schemaName: option<schemaRegistryNameString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema.</p>") @as("SchemaArn")
    schemaArn: option<glueResourceArn>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateSchemaCommand"
  let make = (~schemaId, ~description=?, ~compatibility=?, ~schemaVersionNumber=?, ()) =>
    new({description, compatibility, schemaVersionNumber, schemaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateRegistry = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A description of the registry. If description is not provided, this field will not be updated.</p>"
    )
    @as("Description")
    description: descriptionString,
    @ocaml.doc(
      "<p>This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>"
    )
    @as("RegistryId")
    registryId: registryId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource name (ARN) of the updated registry.</p>") @as("RegistryArn")
    registryArn: option<glueResourceArn>,
    @ocaml.doc("<p>The name of the updated registry.</p>") @as("RegistryName")
    registryName: option<schemaRegistryNameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateRegistryCommand"
  let make = (~description, ~registryId, ()) => new({description, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateDevEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The map of arguments to add the map of arguments used to configure the
        <code>DevEndpoint</code>.</p>
		
	        <p>Valid arguments are:</p>
	        <ul>
            <li>
               <p>
                  <code>\"--enable-glue-datacatalog\": \"\"</code>
               </p>
            </li>
         </ul>
	
         <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>")
    @as("AddArguments")
    addArguments: option<mapValue>,
    @ocaml.doc("<p>The list of argument keys to be deleted from the map of arguments used to configure the
        <code>DevEndpoint</code>.</p>")
    @as("DeleteArguments")
    deleteArguments: option<stringList>,
    @ocaml.doc("<p>
            <code>True</code> if the list of custom libraries to be loaded in the development endpoint
      needs to be updated, or <code>False</code> if otherwise.</p>")
    @as("UpdateEtlLibraries")
    updateEtlLibraries: option<booleanValue>,
    @ocaml.doc(
      "<p>Custom Python or Java libraries to be loaded in the <code>DevEndpoint</code>.</p>"
    )
    @as("CustomLibraries")
    customLibraries: option<devEndpointCustomLibraries>,
    @ocaml.doc("<p>The list of public keys to be deleted from the <code>DevEndpoint</code>.</p>")
    @as("DeletePublicKeys")
    deletePublicKeys: option<publicKeysList>,
    @ocaml.doc("<p>The list of public keys for the <code>DevEndpoint</code> to use.</p>")
    @as("AddPublicKeys")
    addPublicKeys: option<publicKeysList>,
    @ocaml.doc("<p>The public key for the <code>DevEndpoint</code> to use.</p>") @as("PublicKey")
    publicKey: option<genericString>,
    @ocaml.doc("<p>The name of the <code>DevEndpoint</code> to be updated.</p>") @as("EndpointName")
    endpointName: genericString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateDevEndpointCommand"
  let make = (
    ~endpointName,
    ~addArguments=?,
    ~deleteArguments=?,
    ~updateEtlLibraries=?,
    ~customLibraries=?,
    ~deletePublicKeys=?,
    ~addPublicKeys=?,
    ~publicKey=?,
    (),
  ) =>
    new({
      addArguments,
      deleteArguments,
      updateEtlLibraries,
      customLibraries,
      deletePublicKeys,
      addPublicKeys,
      publicKey,
      endpointName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to remove from this resource.</p>") @as("TagsToRemove")
    tagsToRemove: tagKeysList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource from which to remove the tags.</p>"
    )
    @as("ResourceArn")
    resourceArn: glueResourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagsToRemove, ~resourceArn, ()) => new({tagsToRemove, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to add to this resource.</p>") @as("TagsToAdd") tagsToAdd: tagsMap,
    @ocaml.doc("<p>The ARN of the Glue resource to which to add the tags. For more
      information about Glue resource ARNs, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id\">Glue ARN string pattern</a>.</p>")
    @as("ResourceArn")
    resourceArn: glueResourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "TagResourceCommand"
  let make = (~tagsToAdd, ~resourceArn, ()) => new({tagsToAdd, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartWorkflowRun = {
  type t
  type request = {
    @ocaml.doc("<p>The workflow run properties for the new workflow run.</p>") @as("RunProperties")
    runProperties: option<workflowRunProperties>,
    @ocaml.doc("<p>The name of the workflow to start.</p>") @as("Name") name: nameString,
  }
  type response = {@ocaml.doc("<p>An Id for the new run.</p>") @as("RunId") runId: option<idString>}
  @module("@aws-sdk/client-glue") @new external new: request => t = "StartWorkflowRunCommand"
  let make = (~name, ~runProperties=?, ()) => new({runProperties, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartJobRun = {
  type t
  type request = {
    @ocaml.doc("<p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>

         <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>")
    @as("NumberOfWorkers")
    numberOfWorkers: option<nullableInteger>,
    @ocaml.doc("<p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p>
         <ul>
            <li>
               <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
            </li>
            <li>
               <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
            </li>
            <li>
               <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
            </li>
         </ul>")
    @as("WorkerType")
    workerType: option<workerType>,
    @ocaml.doc("<p>Specifies configuration properties of a job run notification.</p>")
    @as("NotificationProperty")
    notificationProperty: option<notificationProperty>,
    @ocaml.doc("<p>The name of the <code>SecurityConfiguration</code> structure to be used with this job
      run.</p>")
    @as("SecurityConfiguration")
    securityConfiguration: option<nameString>,
    @ocaml.doc("<p>The number of Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure
      of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
      For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue
        pricing page</a>.</p>

         <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>

         <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
      running a Python shell job, or an Apache Spark ETL job:</p>
         <ul>
            <li>
               <p>When you specify a Python shell job (<code>JobCommand.Name</code>=\"pythonshell\"), you can
        allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
            </li>
            <li>
               <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>=\"glueetl\"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
            </li>
         </ul>")
    @as("MaxCapacity")
    maxCapacity: option<nullableDouble>,
    @ocaml.doc("<p>The <code>JobRun</code> timeout in minutes. This is the maximum time that a job run can
      consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default
      is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.</p>")
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc("<p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p>

         <p>The number of Glue data processing units (DPUs) to allocate to this JobRun.
      From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure
      of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
      For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue
        pricing page</a>.</p>")
    @as("AllocatedCapacity")
    allocatedCapacity: option<integerValue>,
    @ocaml.doc("<p>The job arguments specifically for this run. For this job run, they replace the default arguments set in the job definition itself.</p>
         <p>You can specify arguments here that your own job-execution script
      consumes, as well as arguments that Glue itself consumes.</p>
         <p>For information about how to specify and consume your own Job arguments, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html\">Calling Glue APIs in Python</a> topic in the developer guide.</p>
         <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html\">Special Parameters Used by Glue</a> topic in the developer guide.</p>")
    @as("Arguments")
    arguments: option<genericMap>,
    @ocaml.doc("<p>The ID of a previous <code>JobRun</code> to retry.</p>") @as("JobRunId")
    jobRunId: option<idString>,
    @ocaml.doc("<p>The name of the job definition to use.</p>") @as("JobName") jobName: nameString,
  }
  type response = {
    @ocaml.doc("<p>The ID assigned to this job run.</p>") @as("JobRunId")
    jobRunId: option<idString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "StartJobRunCommand"
  let make = (
    ~jobName,
    ~numberOfWorkers=?,
    ~workerType=?,
    ~notificationProperty=?,
    ~securityConfiguration=?,
    ~maxCapacity=?,
    ~timeout=?,
    ~allocatedCapacity=?,
    ~arguments=?,
    ~jobRunId=?,
    (),
  ) =>
    new({
      numberOfWorkers,
      workerType,
      notificationProperty,
      securityConfiguration,
      maxCapacity,
      timeout,
      allocatedCapacity,
      arguments,
      jobRunId,
      jobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ResumeWorkflowRun = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of the node IDs for the nodes you want to restart. The nodes that are to be restarted must have a run attempt in the original run.</p>"
    )
    @as("NodeIds")
    nodeIds: nodeIdList,
    @ocaml.doc("<p>The ID of the workflow run to resume.</p>") @as("RunId") runId: idString,
    @ocaml.doc("<p>The name of the workflow to resume.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>A list of the node IDs for the nodes that were actually restarted.</p>")
    @as("NodeIds")
    nodeIds: option<nodeIdList>,
    @ocaml.doc(
      "<p>The new ID assigned to the resumed workflow run. Each resume of a workflow run will have a new run ID.</p>"
    )
    @as("RunId")
    runId: option<idString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ResumeWorkflowRunCommand"
  let make = (~nodeIds, ~runId, ~name, ()) => new({nodeIds, runId, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ResetJobBookmark = {
  type t
  type request = {
    @ocaml.doc("<p>The unique run identifier associated with this job run.</p>") @as("RunId")
    runId: option<runId>,
    @ocaml.doc("<p>The name of the job in question.</p>") @as("JobName") jobName: jobName,
  }
  type response = {
    @ocaml.doc("<p>The reset bookmark entry.</p>") @as("JobBookmarkEntry")
    jobBookmarkEntry: option<jobBookmarkEntry>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ResetJobBookmarkCommand"
  let make = (~jobName, ~runId=?, ()) => new({runId, jobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RemoveSchemaVersionMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The value of the metadata key.</p>") @as("MetadataKeyValue")
    metadataKeyValue: metadataKeyValuePair,
    @ocaml.doc("<p>The unique version ID of the schema version.</p>") @as("SchemaVersionId")
    schemaVersionId: option<schemaVersionIdString>,
    @ocaml.doc("<p>The version number of the schema.</p>") @as("SchemaVersionNumber")
    schemaVersionNumber: option<schemaVersionNumber>,
    @ocaml.doc(
      "<p>A wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>"
    )
    @as("SchemaId")
    schemaId: option<schemaId>,
  }
  type response = {
    @ocaml.doc("<p>The value of the metadata key.</p>") @as("MetadataValue")
    metadataValue: option<metadataValueString>,
    @ocaml.doc("<p>The metadata key.</p>") @as("MetadataKey")
    metadataKey: option<metadataKeyString>,
    @ocaml.doc("<p>The version ID for the schema version.</p>") @as("SchemaVersionId")
    schemaVersionId: option<schemaVersionIdString>,
    @ocaml.doc("<p>The version number of the schema.</p>") @as("VersionNumber")
    versionNumber: option<versionLongNumber>,
    @ocaml.doc("<p>The latest version of the schema.</p>") @as("LatestVersion")
    latestVersion: option<latestSchemaVersionBoolean>,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName")
    registryName: option<schemaRegistryNameString>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName")
    schemaName: option<schemaRegistryNameString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema.</p>") @as("SchemaArn")
    schemaArn: option<glueResourceArn>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "RemoveSchemaVersionMetadataCommand"
  let make = (~metadataKeyValue, ~schemaVersionId=?, ~schemaVersionNumber=?, ~schemaId=?, ()) =>
    new({metadataKeyValue, schemaVersionId, schemaVersionNumber, schemaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RegisterSchemaVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The schema definition using the <code>DataFormat</code> setting for the <code>SchemaName</code>.</p>"
    )
    @as("SchemaDefinition")
    schemaDefinition: schemaDefinitionString,
    @ocaml.doc("<p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
	        <ul>
            <li>
               <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
            </li>
            <li>
               <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
            </li>
         </ul>")
    @as("SchemaId")
    schemaId: schemaId,
  }
  type response = {
    @ocaml.doc("<p>The status of the schema version.</p>") @as("Status")
    status: option<schemaVersionStatus>,
    @ocaml.doc(
      "<p>The version of this schema (for sync flow only, in case this is the first version).</p>"
    )
    @as("VersionNumber")
    versionNumber: option<versionLongNumber>,
    @ocaml.doc("<p>The unique ID that represents the version of this schema.</p>")
    @as("SchemaVersionId")
    schemaVersionId: option<schemaVersionIdString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "RegisterSchemaVersionCommand"
  let make = (~schemaDefinition, ~schemaId, ()) => new({schemaDefinition, schemaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutWorkflowRunProperties = {
  type t
  type request = {
    @ocaml.doc("<p>The properties to put for the specified run.</p>") @as("RunProperties")
    runProperties: workflowRunProperties,
    @ocaml.doc("<p>The ID of the workflow run for which the run properties should be updated.</p>")
    @as("RunId")
    runId: idString,
    @ocaml.doc("<p>Name of the workflow which was run.</p>") @as("Name") name: nameString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "PutWorkflowRunPropertiesCommand"
  let make = (~runProperties, ~runId, ~name, ()) => new({runProperties, runId, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutSchemaVersionMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The metadata key's corresponding value.</p>") @as("MetadataKeyValue")
    metadataKeyValue: metadataKeyValuePair,
    @ocaml.doc("<p>The unique version ID of the schema version.</p>") @as("SchemaVersionId")
    schemaVersionId: option<schemaVersionIdString>,
    @ocaml.doc("<p>The version number of the schema.</p>") @as("SchemaVersionNumber")
    schemaVersionNumber: option<schemaVersionNumber>,
    @ocaml.doc("<p>The unique ID for the schema.</p>") @as("SchemaId") schemaId: option<schemaId>,
  }
  type response = {
    @ocaml.doc("<p>The value of the metadata key.</p>") @as("MetadataValue")
    metadataValue: option<metadataValueString>,
    @ocaml.doc("<p>The metadata key.</p>") @as("MetadataKey")
    metadataKey: option<metadataKeyString>,
    @ocaml.doc("<p>The unique version ID of the schema version.</p>") @as("SchemaVersionId")
    schemaVersionId: option<schemaVersionIdString>,
    @ocaml.doc("<p>The version number of the schema.</p>") @as("VersionNumber")
    versionNumber: option<versionLongNumber>,
    @ocaml.doc("<p>The latest version of the schema.</p>") @as("LatestVersion")
    latestVersion: option<latestSchemaVersionBoolean>,
    @ocaml.doc("<p>The name for the registry.</p>") @as("RegistryName")
    registryName: option<schemaRegistryNameString>,
    @ocaml.doc("<p>The name for the schema.</p>") @as("SchemaName")
    schemaName: option<schemaRegistryNameString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the schema.</p>") @as("SchemaArn")
    schemaArn: option<glueResourceArn>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "PutSchemaVersionMetadataCommand"
  let make = (~metadataKeyValue, ~schemaVersionId=?, ~schemaVersionNumber=?, ~schemaId=?, ()) =>
    new({metadataKeyValue, schemaVersionId, schemaVersionNumber, schemaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListWorkflows = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum size of a list to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation request.</p>") @as("NextToken")
    nextToken: option<genericString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if not all workflow names have been returned.</p>")
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>List of names of workflows in the account.</p>") @as("Workflows")
    workflows: option<workflowNames>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ListWorkflowsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTriggers = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies to return only these tagged resources.</p>") @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc("<p>The maximum size of a list to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p> The name of the job for which to retrieve triggers. The trigger that can start this job
      is returned. If there is no such trigger, all triggers are returned.</p>")
    @as("DependentJobName")
    dependentJobName: option<nameString>,
    @ocaml.doc("<p>A continuation token, if this is a continuation request.</p>") @as("NextToken")
    nextToken: option<genericString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if the returned list does not contain the
      last metric available.</p>")
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>The names of all triggers in the account, or the triggers with the specified tags.</p>"
    )
    @as("TriggerNames")
    triggerNames: option<triggerNameList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ListTriggersCommand"
  let make = (~tags=?, ~maxResults=?, ~dependentJobName=?, ~nextToken=?, ()) =>
    new({tags, maxResults, dependentJobName, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListJobs = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies to return only these tagged resources.</p>") @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc("<p>The maximum size of a list to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation request.</p>") @as("NextToken")
    nextToken: option<genericString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if the returned list does not contain the
      last metric available.</p>")
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The names of all jobs in the account, or the jobs with the specified tags.</p>")
    @as("JobNames")
    jobNames: option<jobNameList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ListJobsCommand"
  let make = (~tags=?, ~maxResults=?, ~nextToken=?, ()) => new({tags, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDevEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies to return only these tagged resources.</p>") @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc("<p>The maximum size of a list to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation request.</p>") @as("NextToken")
    nextToken: option<genericString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if the returned list does not contain the
      last metric available.</p>")
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The names of all the <code>DevEndpoint</code>s in the account, or the
        <code>DevEndpoint</code>s with the specified tags.</p>")
    @as("DevEndpointNames")
    devEndpointNames: option<devEndpointNameList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ListDevEndpointsCommand"
  let make = (~tags=?, ~maxResults=?, ~nextToken=?, ()) => new({tags, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListCrawlers = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies to return only these tagged resources.</p>") @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc("<p>A continuation token, if this is a continuation request.</p>") @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The maximum size of a list to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if the returned list does not contain the
      last metric available.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>The names of all crawlers in the account, or the crawlers with the specified tags.</p>"
    )
    @as("CrawlerNames")
    crawlerNames: option<crawlerNameList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ListCrawlersCommand"
  let make = (~tags=?, ~nextToken=?, ~maxResults=?, ()) => new({tags, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListBlueprints = {
  type t
  type request = {
    @ocaml.doc("<p>Filters the list by an Amazon Web Services resource tag.</p>") @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc("<p>The maximum size of a list to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation request.</p>") @as("NextToken")
    nextToken: option<genericString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if not all blueprint names have been returned.</p>")
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>List of names of blueprints in the account.</p>") @as("Blueprints")
    blueprints: option<blueprintNames>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ListBlueprintsCommand"
  let make = (~tags=?, ~maxResults=?, ~nextToken=?, ()) => new({tags, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetWorkflowRunProperties = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the workflow run whose run properties should be returned.</p>")
    @as("RunId")
    runId: idString,
    @ocaml.doc("<p>Name of the workflow which was run.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The workflow run properties which were set during the specified run.</p>")
    @as("RunProperties")
    runProperties: option<workflowRunProperties>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "GetWorkflowRunPropertiesCommand"
  let make = (~runId, ~name, ()) => new({runId, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTags = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource for which to retrieve tags.</p>")
    @as("ResourceArn")
    resourceArn: glueResourceArn,
  }
  type response = {@ocaml.doc("<p>The requested tags.</p>") @as("Tags") tags: option<tagsMap>}
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetTagsCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSchemaVersionsDiff = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Refers to <code>SYNTAX_DIFF</code>, which is the currently supported diff type.</p>"
    )
    @as("SchemaDiffType")
    schemaDiffType: schemaDiffType,
    @ocaml.doc("<p>The second of the two schema versions to be compared.</p>")
    @as("SecondSchemaVersionNumber")
    secondSchemaVersionNumber: schemaVersionNumber,
    @ocaml.doc("<p>The first of the two schema versions to be compared.</p>")
    @as("FirstSchemaVersionNumber")
    firstSchemaVersionNumber: schemaVersionNumber,
    @ocaml.doc("<p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
	        <ul>
            <li>
               <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
            </li>
            <li>
               <p>SchemaId$SchemaName: The name of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
            </li>
         </ul>")
    @as("SchemaId")
    schemaId: schemaId,
  }
  type response = {
    @ocaml.doc("<p>The difference between schemas as a string in JsonPatch format.</p>") @as("Diff")
    diff: option<schemaDefinitionDiff>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetSchemaVersionsDiffCommand"
  let make = (
    ~schemaDiffType,
    ~secondSchemaVersionNumber,
    ~firstSchemaVersionNumber,
    ~schemaId,
    (),
  ) => new({schemaDiffType, secondSchemaVersionNumber, firstSchemaVersionNumber, schemaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSchemaVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version number of the schema.</p>") @as("SchemaVersionNumber")
    schemaVersionNumber: option<schemaVersionNumber>,
    @ocaml.doc(
      "<p>The <code>SchemaVersionId</code> of the schema version. This field is required for fetching by schema ID. Either this or the <code>SchemaId</code> wrapper has to be provided.</p>"
    )
    @as("SchemaVersionId")
    schemaVersionId: option<schemaVersionIdString>,
    @ocaml.doc("<p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
	        <ul>
            <li>
               <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
            </li>
            <li>
               <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
            </li>
         </ul>")
    @as("SchemaId")
    schemaId: option<schemaId>,
  }
  type response = {
    @ocaml.doc("<p>The date and time the schema version was created.</p>") @as("CreatedTime")
    createdTime: option<createdTimestamp>,
    @ocaml.doc("<p>The status of the schema version. </p>") @as("Status")
    status: option<schemaVersionStatus>,
    @ocaml.doc("<p>The version number of the schema.</p>") @as("VersionNumber")
    versionNumber: option<versionLongNumber>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema.</p>") @as("SchemaArn")
    schemaArn: option<glueResourceArn>,
    @ocaml.doc(
      "<p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>"
    )
    @as("DataFormat")
    dataFormat: option<dataFormat>,
    @ocaml.doc("<p>The schema definition for the schema ID.</p>") @as("SchemaDefinition")
    schemaDefinition: option<schemaDefinitionString>,
    @ocaml.doc("<p>The <code>SchemaVersionId</code> of the schema version.</p>")
    @as("SchemaVersionId")
    schemaVersionId: option<schemaVersionIdString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetSchemaVersionCommand"
  let make = (~schemaVersionNumber=?, ~schemaVersionId=?, ~schemaId=?, ()) =>
    new({schemaVersionNumber, schemaVersionId, schemaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSchemaByDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>The definition of the schema for which schema details are required.</p>")
    @as("SchemaDefinition")
    schemaDefinition: schemaDefinitionString,
    @ocaml.doc("<p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
	        <ul>
            <li>
               <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
            </li>
            <li>
               <p>SchemaId$SchemaName: The name of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
            </li>
         </ul>")
    @as("SchemaId")
    schemaId: schemaId,
  }
  type response = {
    @ocaml.doc("<p>The date and time the schema was created.</p>") @as("CreatedTime")
    createdTime: option<createdTimestamp>,
    @ocaml.doc("<p>The status of the schema version.</p>") @as("Status")
    status: option<schemaVersionStatus>,
    @ocaml.doc(
      "<p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>"
    )
    @as("DataFormat")
    dataFormat: option<dataFormat>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema.</p>") @as("SchemaArn")
    schemaArn: option<glueResourceArn>,
    @ocaml.doc("<p>The schema ID of the schema version.</p>") @as("SchemaVersionId")
    schemaVersionId: option<schemaVersionIdString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetSchemaByDefinitionCommand"
  let make = (~schemaDefinition, ~schemaId, ()) => new({schemaDefinition, schemaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSchema = {
  type t
  type request = {
    @ocaml.doc("<p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
	        <ul>
            <li>
               <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
            </li>
            <li>
               <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
            </li>
         </ul>")
    @as("SchemaId")
    schemaId: schemaId,
  }
  type response = {
    @ocaml.doc("<p>The date and time the schema was updated.</p>") @as("UpdatedTime")
    updatedTime: option<updatedTimestamp>,
    @ocaml.doc("<p>The date and time the schema was created.</p>") @as("CreatedTime")
    createdTime: option<createdTimestamp>,
    @ocaml.doc("<p>The status of the schema.</p>") @as("SchemaStatus")
    schemaStatus: option<schemaStatus>,
    @ocaml.doc(
      "<p>The next version of the schema associated with the returned schema definition.</p>"
    )
    @as("NextSchemaVersion")
    nextSchemaVersion: option<versionLongNumber>,
    @ocaml.doc(
      "<p>The latest version of the schema associated with the returned schema definition.</p>"
    )
    @as("LatestSchemaVersion")
    latestSchemaVersion: option<versionLongNumber>,
    @ocaml.doc(
      "<p>The version number of the checkpoint (the last time the compatibility mode was changed).</p>"
    )
    @as("SchemaCheckpoint")
    schemaCheckpoint: option<schemaCheckpointNumber>,
    @ocaml.doc("<p>The compatibility mode of the schema.</p>") @as("Compatibility")
    compatibility: option<compatibility>,
    @ocaml.doc(
      "<p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>"
    )
    @as("DataFormat")
    dataFormat: option<dataFormat>,
    @ocaml.doc("<p>A description of schema if specified when created</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema.</p>") @as("SchemaArn")
    schemaArn: option<glueResourceArn>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName")
    schemaName: option<schemaRegistryNameString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the registry.</p>") @as("RegistryArn")
    registryArn: option<glueResourceArn>,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName")
    registryName: option<schemaRegistryNameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetSchemaCommand"
  let make = (~schemaId, ()) => new({schemaId: schemaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRegistry = {
  type t
  type request = {
    @ocaml.doc(
      "<p>This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>"
    )
    @as("RegistryId")
    registryId: registryId,
  }
  type response = {
    @ocaml.doc("<p>The date and time the registry was updated.</p>") @as("UpdatedTime")
    updatedTime: option<updatedTimestamp>,
    @ocaml.doc("<p>The date and time the registry was created.</p>") @as("CreatedTime")
    createdTime: option<createdTimestamp>,
    @ocaml.doc("<p>The status of the registry.</p>") @as("Status") status: option<registryStatus>,
    @ocaml.doc("<p>A description of the registry.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the registry.</p>") @as("RegistryArn")
    registryArn: option<glueResourceArn>,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName")
    registryName: option<schemaRegistryNameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetRegistryCommand"
  let make = (~registryId, ()) => new({registryId: registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetJobBookmark = {
  type t
  type request = {
    @ocaml.doc("<p>The unique run identifier associated with this job run.</p>") @as("RunId")
    runId: option<runId>,
    @ocaml.doc("<p>The name of the job in question.</p>") @as("JobName") jobName: jobName,
  }
  type response = {
    @ocaml.doc("<p>A structure that defines a point that a job can resume processing.</p>")
    @as("JobBookmarkEntry")
    jobBookmarkEntry: option<jobBookmarkEntry>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetJobBookmarkCommand"
  let make = (~jobName, ~runId=?, ()) => new({runId, jobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCatalogImportStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the catalog to migrate. Currently, this should be the Amazon Web Services account ID.</p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>The status of the specified catalog migration.</p>") @as("ImportStatus")
    importStatus: option<catalogImportStatus>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetCatalogImportStatusCommand"
  let make = (~catalogId=?, ()) => new({catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBlueprintRun = {
  type t
  type request = {
    @ocaml.doc("<p>The run ID for the blueprint run you want to retrieve.</p>") @as("RunId")
    runId: idString,
    @ocaml.doc("<p>The name of the blueprint.</p>") @as("BlueprintName")
    blueprintName: orchestrationNameString,
  }
  type response = {
    @ocaml.doc("<p>Returns a <code>BlueprintRun</code> object.</p>") @as("BlueprintRun")
    blueprintRun: option<blueprintRun>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetBlueprintRunCommand"
  let make = (~runId, ~blueprintName, ()) => new({runId, blueprintName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteSchema = {
  type t
  type request = {
    @ocaml.doc(
      "<p>This is a wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>"
    )
    @as("SchemaId")
    schemaId: schemaId,
  }
  type response = {
    @ocaml.doc("<p>The status of the schema.</p>") @as("Status") status: option<schemaStatus>,
    @ocaml.doc("<p>The name of the schema being deleted.</p>") @as("SchemaName")
    schemaName: option<schemaRegistryNameString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema being deleted.</p>")
    @as("SchemaArn")
    schemaArn: option<glueResourceArn>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteSchemaCommand"
  let make = (~schemaId, ()) => new({schemaId: schemaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteRegistry = {
  type t
  type request = {
    @ocaml.doc(
      "<p>This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>"
    )
    @as("RegistryId")
    registryId: registryId,
  }
  type response = {
    @ocaml.doc(
      "<p>The status of the registry. A successful operation will return the <code>Deleting</code> status.</p>"
    )
    @as("Status")
    status: option<registryStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the registry being deleted.</p>")
    @as("RegistryArn")
    registryArn: option<glueResourceArn>,
    @ocaml.doc("<p>The name of the registry being deleted.</p>") @as("RegistryName")
    registryName: option<schemaRegistryNameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteRegistryCommand"
  let make = (~registryId, ()) => new({registryId: registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeletePartition = {
  type t
  type request = {
    @ocaml.doc("<p>The values that define the partition.</p>") @as("PartitionValues")
    partitionValues: valueStringList,
    @ocaml.doc("<p>The name of the table that contains the partition to be deleted.</p>")
    @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>The name of the catalog database in which the table in question
      resides.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the partition to be deleted resides. If none is provided,
      the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeletePartitionCommand"
  let make = (~partitionValues, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({partitionValues, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteColumnStatisticsForPartition = {
  type t
  type request = {
    @ocaml.doc("<p>Name of the column.</p>") @as("ColumnName") columnName: nameString,
    @ocaml.doc("<p>A list of partition values identifying the partition.</p>")
    @as("PartitionValues")
    partitionValues: valueStringList,
    @ocaml.doc("<p>The name of the partitions' table.</p>") @as("TableName") tableName: nameString,
    @ocaml.doc("<p>The name of the catalog database where the partitions reside.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the partitions in question reside.
      If none is supplied, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "DeleteColumnStatisticsForPartitionCommand"
  let make = (~columnName, ~partitionValues, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({columnName, partitionValues, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateWorkflow = {
  type t
  type request = {
    @ocaml.doc(
      "<p>You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.</p>"
    )
    @as("MaxConcurrentRuns")
    maxConcurrentRuns: option<nullableInteger>,
    @ocaml.doc("<p>The tags to be used with this workflow.</p>") @as("Tags") tags: option<tagsMap>,
    @ocaml.doc(
      "<p>A collection of properties to be used as part of each execution of the workflow.</p>"
    )
    @as("DefaultRunProperties")
    defaultRunProperties: option<workflowRunProperties>,
    @ocaml.doc("<p>A description of the workflow.</p>") @as("Description")
    description: option<genericString>,
    @ocaml.doc(
      "<p>The name to be assigned to the workflow. It should be unique within your account.</p>"
    )
    @as("Name")
    name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The name of the workflow which was provided as part of the request.</p>")
    @as("Name")
    name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateWorkflowCommand"
  let make = (~name, ~maxConcurrentRuns=?, ~tags=?, ~defaultRunProperties=?, ~description=?, ()) =>
    new({maxConcurrentRuns, tags, defaultRunProperties, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSchema = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The schema definition using the <code>DataFormat</code> setting for <code>SchemaName</code>.</p>"
    )
    @as("SchemaDefinition")
    schemaDefinition: option<schemaDefinitionString>,
    @ocaml.doc(
      "<p>Amazon Web Services tags that contain a key value pair and may be searched by console, command line, or API. If specified, follows the Amazon Web Services tags-on-create pattern.</p>"
    )
    @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc(
      "<p>An optional description of the schema. If description is not provided, there will not be any automatic default value for this.</p>"
    )
    @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The compatibility mode of the schema. The possible values are:</p>
	
         <ul>
            <li>
               <p>
                  <i>NONE</i>: No compatibility mode applies. You can use this choice in development scenarios or if you do not know the compatibility mode that you want to apply to schemas. Any new version added will be accepted without undergoing a compatibility check.</p>
            </li>
            <li>
               <p>
                  <i>DISABLED</i>: This compatibility choice prevents versioning for a particular schema. You can use this choice to prevent future versioning of a schema.</p>
            </li>
            <li>
               <p>
                  <i>BACKWARD</i>: This compatibility choice is recommended as it allows data receivers to read both the current and one previous schema version. This means that for instance, a new schema version cannot drop data fields or change the type of these fields, so they can't be read by readers using the previous version.</p>
            </li>
            <li>
               <p>
                  <i>BACKWARD_ALL</i>: This compatibility choice allows data receivers to read both the current and all previous schema versions. You can use this choice when you need to delete fields or add optional fields, and check compatibility against all previous schema versions. </p>
            </li>
            <li>
               <p>
                  <i>FORWARD</i>: This compatibility choice allows data receivers to read both the current and one next schema version, but not necessarily later versions. You can use this choice when you need to add fields or delete optional fields, but only check compatibility against the last schema version.</p>
            </li>
            <li>
               <p>
                  <i>FORWARD_ALL</i>: This compatibility choice allows data receivers to read written by producers of any new registered schema. You can use this choice when you need to add fields or delete optional fields, and check compatibility against all previous schema versions.</p>
            </li>
            <li>
               <p>
                  <i>FULL</i>: This compatibility choice allows data receivers to read data written by producers using the previous or next version of the schema, but not necessarily earlier or later versions. You can use this choice when you need to add or remove optional fields, but only check compatibility against the last schema version.</p>
            </li>
            <li>
               <p>
                  <i>FULL_ALL</i>: This compatibility choice allows data receivers to read data written by producers using all previous schema versions. You can use this choice when you need to add or remove optional fields, and check compatibility against all previous schema versions.</p>
            </li>
         </ul>")
    @as("Compatibility")
    compatibility: option<compatibility>,
    @ocaml.doc(
      "<p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>"
    )
    @as("DataFormat")
    dataFormat: dataFormat,
    @ocaml.doc(
      "<p>Name of the schema to be created of max length of 255, and may only contain letters, numbers, hyphen, underscore, dollar sign, or hash mark. No whitespace.</p>"
    )
    @as("SchemaName")
    schemaName: schemaRegistryNameString,
    @ocaml.doc(
      "<p> This is a wrapper shape to contain the registry identity fields. If this is not provided, the default registry will be used. The ARN format for the same will be: <code>arn:aws:glue:us-east-2:<customer id>:registry/default-registry:random-5-letter-id</code>.</p>"
    )
    @as("RegistryId")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The status of the first schema version created.</p>") @as("SchemaVersionStatus")
    schemaVersionStatus: option<schemaVersionStatus>,
    @ocaml.doc("<p>The unique identifier of the first schema version.</p>") @as("SchemaVersionId")
    schemaVersionId: option<schemaVersionIdString>,
    @ocaml.doc("<p>The tags for the schema.</p>") @as("Tags") tags: option<tagsMap>,
    @ocaml.doc("<p>The status of the schema. </p>") @as("SchemaStatus")
    schemaStatus: option<schemaStatus>,
    @ocaml.doc(
      "<p>The next version of the schema associated with the returned schema definition.</p>"
    )
    @as("NextSchemaVersion")
    nextSchemaVersion: option<versionLongNumber>,
    @ocaml.doc(
      "<p>The latest version of the schema associated with the returned schema definition.</p>"
    )
    @as("LatestSchemaVersion")
    latestSchemaVersion: option<versionLongNumber>,
    @ocaml.doc(
      "<p>The version number of the checkpoint (the last time the compatibility mode was changed).</p>"
    )
    @as("SchemaCheckpoint")
    schemaCheckpoint: option<schemaCheckpointNumber>,
    @ocaml.doc("<p>The schema compatibility mode.</p>") @as("Compatibility")
    compatibility: option<compatibility>,
    @ocaml.doc(
      "<p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>"
    )
    @as("DataFormat")
    dataFormat: option<dataFormat>,
    @ocaml.doc("<p>A description of the schema if specified when created.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema.</p>") @as("SchemaArn")
    schemaArn: option<glueResourceArn>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName")
    schemaName: option<schemaRegistryNameString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the registry.</p>") @as("RegistryArn")
    registryArn: option<glueResourceArn>,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName")
    registryName: option<schemaRegistryNameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateSchemaCommand"
  let make = (
    ~dataFormat,
    ~schemaName,
    ~schemaDefinition=?,
    ~tags=?,
    ~description=?,
    ~compatibility=?,
    ~registryId=?,
    (),
  ) => new({schemaDefinition, tags, description, compatibility, dataFormat, schemaName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRegistry = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Amazon Web Services tags that contain a key value pair and may be searched by console, command line, or API.</p>"
    )
    @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc(
      "<p>A description of the registry. If description is not provided, there will not be any default value for this.</p>"
    )
    @as("Description")
    description: option<descriptionString>,
    @ocaml.doc(
      "<p>Name of the registry to be created of max length of 255, and may only contain letters, numbers, hyphen, underscore, dollar sign, or hash mark.  No whitespace.</p>"
    )
    @as("RegistryName")
    registryName: schemaRegistryNameString,
  }
  type response = {
    @ocaml.doc("<p>The tags for the registry.</p>") @as("Tags") tags: option<tagsMap>,
    @ocaml.doc("<p>A description of the registry.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName")
    registryName: option<schemaRegistryNameString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the newly created registry.</p>")
    @as("RegistryArn")
    registryArn: option<glueResourceArn>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateRegistryCommand"
  let make = (~registryName, ~tags=?, ~description=?, ()) => new({tags, description, registryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDevEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>A map of arguments used to configure the <code>DevEndpoint</code>.</p>")
    @as("Arguments")
    arguments: option<mapValue>,
    @ocaml.doc(
      "<p>The tags to use with this DevEndpoint. You may use tags to limit access to the DevEndpoint. For more information about tags in Glue, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html\">Amazon Web Services Tags in Glue</a> in the developer guide.</p>"
    )
    @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc("<p>The name of the <code>SecurityConfiguration</code> structure to be used with this
        <code>DevEndpoint</code>.</p>")
    @as("SecurityConfiguration")
    securityConfiguration: option<nameString>,
    @ocaml.doc("<p>The path to one or more Java <code>.jar</code> files in an S3 bucket that should be loaded
      in your <code>DevEndpoint</code>.</p>")
    @as("ExtraJarsS3Path")
    extraJarsS3Path: option<genericString>,
    @ocaml.doc("<p>The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in
      your <code>DevEndpoint</code>. Multiple values must be complete paths separated by a
      comma.</p>
         <note>
            <p>You can only use pure Python libraries with a <code>DevEndpoint</code>. Libraries that rely on
        C extensions, such as the <a href=\"http://pandas.pydata.org/\">pandas</a> Python data
        analysis library, are not yet supported.</p>
         </note>")
    @as("ExtraPythonLibsS3Path")
    extraPythonLibsS3Path: option<genericString>,
    @ocaml.doc("<p>The number of workers of a defined <code>workerType</code> that are allocated to the development endpoint.</p>
	
	        <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>")
    @as("NumberOfWorkers")
    numberOfWorkers: option<nullableInteger>,
    @ocaml.doc("<p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints. </p>
 
         <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p>
	  
	        <p>Development endpoints that are created without specifying a Glue version default to Glue 0.9.</p>  
	
	        <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>")
    @as("GlueVersion")
    glueVersion: option<glueVersionString>,
    @ocaml.doc("<p>The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.</p>
	        <ul>
            <li>
               <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
            </li>
            <li>
               <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
            </li>
            <li>
               <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
            </li>
         </ul>
	        <p>Known issue: when a development endpoint is created with the <code>G.2X</code> 
            <code>WorkerType</code> configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk. </p>")
    @as("WorkerType")
    workerType: option<workerType>,
    @ocaml.doc("<p>The number of Glue Data Processing Units (DPUs) to allocate to this
        <code>DevEndpoint</code>.</p>")
    @as("NumberOfNodes")
    numberOfNodes: option<integerValue>,
    @ocaml.doc("<p>A list of public keys to be used by the development endpoints for authentication. The use
      of this attribute is preferred over a single public key because the public keys allow you to
      have a different private key per client.</p>
    
         <note>
            <p>If you previously created an endpoint with a public key, you must remove that key to be able
        to set a list of public keys. Call the <code>UpdateDevEndpoint</code> API with the public
        key content in the <code>deletePublicKeys</code> attribute, and the list of new keys in the
          <code>addPublicKeys</code> attribute.</p>
         </note>")
    @as("PublicKeys")
    publicKeys: option<publicKeysList>,
    @ocaml.doc("<p>The public key to be used by this <code>DevEndpoint</code> for authentication. This
      attribute is provided for backward compatibility because the recommended attribute to use is
      public keys.</p>")
    @as("PublicKey")
    publicKey: option<genericString>,
    @ocaml.doc("<p>The subnet ID for the new <code>DevEndpoint</code> to use.</p>") @as("SubnetId")
    subnetId: option<genericString>,
    @ocaml.doc("<p>Security group IDs for the security groups to be used by the new
      <code>DevEndpoint</code>.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<stringList>,
    @ocaml.doc("<p>The IAM role for the <code>DevEndpoint</code>.</p>") @as("RoleArn")
    roleArn: roleArn,
    @ocaml.doc("<p>The name to be assigned to the new <code>DevEndpoint</code>.</p>")
    @as("EndpointName")
    endpointName: genericString,
  }
  type response = {
    @ocaml.doc("<p>The map of arguments used to configure this <code>DevEndpoint</code>.</p>
	
	        <p>Valid arguments are:</p>
	        <ul>
            <li>
               <p>
                  <code>\"--enable-glue-datacatalog\": \"\"</code>
               </p>
            </li>
         </ul>
	
         <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>")
    @as("Arguments")
    arguments: option<mapValue>,
    @ocaml.doc("<p>The point in time at which this <code>DevEndpoint</code> was created.</p>")
    @as("CreatedTimestamp")
    createdTimestamp: option<timestampValue>,
    @ocaml.doc("<p>The name of the <code>SecurityConfiguration</code> structure being used with this
        <code>DevEndpoint</code>.</p>")
    @as("SecurityConfiguration")
    securityConfiguration: option<nameString>,
    @ocaml.doc("<p>The reason for a current failure in this <code>DevEndpoint</code>.</p>")
    @as("FailureReason")
    failureReason: option<genericString>,
    @ocaml.doc("<p>Path to one or more Java <code>.jar</code> files in an S3 bucket that will be loaded in
      your <code>DevEndpoint</code>.</p>")
    @as("ExtraJarsS3Path")
    extraJarsS3Path: option<genericString>,
    @ocaml.doc("<p>The paths to one or more Python libraries in an S3 bucket that will be loaded in your
        <code>DevEndpoint</code>.</p>")
    @as("ExtraPythonLibsS3Path")
    extraPythonLibsS3Path: option<genericString>,
    @ocaml.doc(
      "<p>The ID of the virtual private cloud (VPC) used by this <code>DevEndpoint</code>.</p>"
    )
    @as("VpcId")
    vpcId: option<genericString>,
    @ocaml.doc("<p>The AWS Availability Zone where this <code>DevEndpoint</code> is located.</p>")
    @as("AvailabilityZone")
    availabilityZone: option<genericString>,
    @ocaml.doc(
      "<p>The number of workers of a defined <code>workerType</code> that are allocated to the development endpoint.</p>"
    )
    @as("NumberOfWorkers")
    numberOfWorkers: option<nullableInteger>,
    @ocaml.doc("<p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints. </p>
 
         <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p>")
    @as("GlueVersion")
    glueVersion: option<glueVersionString>,
    @ocaml.doc(
      "<p>The type of predefined worker that is allocated to the development endpoint. May be a value of Standard, G.1X, or G.2X.</p>"
    )
    @as("WorkerType")
    workerType: option<workerType>,
    @ocaml.doc(
      "<p>The number of Glue Data Processing Units (DPUs) allocated to this DevEndpoint.</p>"
    )
    @as("NumberOfNodes")
    numberOfNodes: option<integerValue>,
    @ocaml.doc("<p>The Apache Zeppelin port for the remote Apache Spark interpreter.</p>")
    @as("ZeppelinRemoteSparkInterpreterPort")
    zeppelinRemoteSparkInterpreterPort: option<integerValue>,
    @ocaml.doc("<p>The address of the YARN endpoint used by this <code>DevEndpoint</code>.</p>")
    @as("YarnEndpointAddress")
    yarnEndpointAddress: option<genericString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role assigned to the new
      <code>DevEndpoint</code>.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The subnet ID assigned to the new <code>DevEndpoint</code>.</p>") @as("SubnetId")
    subnetId: option<genericString>,
    @ocaml.doc("<p>The security groups assigned to the new <code>DevEndpoint</code>.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<stringList>,
    @ocaml.doc("<p>The current status of the new <code>DevEndpoint</code>.</p>") @as("Status")
    status: option<genericString>,
    @ocaml.doc("<p>The name assigned to the new <code>DevEndpoint</code>.</p>") @as("EndpointName")
    endpointName: option<genericString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateDevEndpointCommand"
  let make = (
    ~roleArn,
    ~endpointName,
    ~arguments=?,
    ~tags=?,
    ~securityConfiguration=?,
    ~extraJarsS3Path=?,
    ~extraPythonLibsS3Path=?,
    ~numberOfWorkers=?,
    ~glueVersion=?,
    ~workerType=?,
    ~numberOfNodes=?,
    ~publicKeys=?,
    ~publicKey=?,
    ~subnetId=?,
    ~securityGroupIds=?,
    (),
  ) =>
    new({
      arguments,
      tags,
      securityConfiguration,
      extraJarsS3Path,
      extraPythonLibsS3Path,
      numberOfWorkers,
      glueVersion,
      workerType,
      numberOfNodes,
      publicKeys,
      publicKey,
      subnetId,
      securityGroupIds,
      roleArn,
      endpointName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateBlueprint = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be applied to this blueprint.</p>") @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc("<p>Specifies a path in Amazon S3 where the blueprint is published.</p>")
    @as("BlueprintLocation")
    blueprintLocation: orchestrationS3Location,
    @ocaml.doc("<p>A description of the blueprint.</p>") @as("Description")
    description: option<generic512CharString>,
    @ocaml.doc("<p>The name of the blueprint.</p>") @as("Name") name: orchestrationNameString,
  }
  type response = {
    @ocaml.doc("<p>Returns the name of the blueprint that was registered.</p>") @as("Name")
    name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateBlueprintCommand"
  let make = (~blueprintLocation, ~name, ~tags=?, ~description=?, ()) =>
    new({tags, blueprintLocation, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateMLTransform = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of times to retry a task for this transform after a task run fails.</p>"
    )
    @as("MaxRetries")
    maxRetries: option<nullableInteger>,
    @ocaml.doc(
      "<p>The timeout for a task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>"
    )
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc(
      "<p>The number of workers of a defined <code>workerType</code> that are allocated when this task runs.</p>"
    )
    @as("NumberOfWorkers")
    numberOfWorkers: option<nullableInteger>,
    @ocaml.doc("<p>The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.</p>
	        <ul>
            <li>
               <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
            </li>
            <li>
               <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
            </li>
            <li>
               <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
            </li>
         </ul>")
    @as("WorkerType")
    workerType: option<workerType>,
    @ocaml.doc("<p>The number of Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of
      processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
      information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue pricing
        page</a>. </p>
		
         <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>")
    @as("MaxCapacity")
    maxCapacity: option<nullableDouble>,
    @ocaml.doc(
      "<p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions\">Glue Versions</a> in the developer guide.</p>"
    )
    @as("GlueVersion")
    glueVersion: option<glueVersionString>,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the IAM role with the required
      permissions.</p>")
    @as("Role")
    role: option<roleString>,
    @ocaml.doc("<p>The configuration parameters that are specific to the transform type (algorithm) used.
      Conditionally dependent on the transform type.</p>")
    @as("Parameters")
    parameters: option<transformParameters>,
    @ocaml.doc("<p>A description of the transform. The default is an empty string.</p>")
    @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The unique name that you gave the transform when you created it.</p>")
    @as("Name")
    name: option<nameString>,
    @ocaml.doc("<p>A unique identifier that was generated when the transform was created.</p>")
    @as("TransformId")
    transformId: hashString,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the transform that was updated.</p>")
    @as("TransformId")
    transformId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateMLTransformCommand"
  let make = (
    ~transformId,
    ~maxRetries=?,
    ~timeout=?,
    ~numberOfWorkers=?,
    ~workerType=?,
    ~maxCapacity=?,
    ~glueVersion=?,
    ~role=?,
    ~parameters=?,
    ~description=?,
    ~name=?,
    (),
  ) =>
    new({
      maxRetries,
      timeout,
      numberOfWorkers,
      workerType,
      maxCapacity,
      glueVersion,
      role,
      parameters,
      description,
      name,
      transformId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateClassifier = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>CsvClassifier</code> object with updated fields.</p>")
    @as("CsvClassifier")
    csvClassifier: option<updateCsvClassifierRequest>,
    @ocaml.doc("<p>A <code>JsonClassifier</code> object with updated fields.</p>")
    @as("JsonClassifier")
    jsonClassifier: option<updateJsonClassifierRequest>,
    @ocaml.doc("<p>An <code>XMLClassifier</code> object with updated fields.</p>")
    @as("XMLClassifier")
    xmlclassifier: option<updateXMLClassifierRequest>,
    @ocaml.doc("<p>A <code>GrokClassifier</code> object with updated fields.</p>")
    @as("GrokClassifier")
    grokClassifier: option<updateGrokClassifierRequest>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateClassifierCommand"
  let make = (~csvClassifier=?, ~jsonClassifier=?, ~xmlclassifier=?, ~grokClassifier=?, ()) =>
    new({csvClassifier, jsonClassifier, xmlclassifier, grokClassifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutDataCatalogEncryptionSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The security configuration to set.</p>") @as("DataCatalogEncryptionSettings")
    dataCatalogEncryptionSettings: dataCatalogEncryptionSettings,
    @ocaml.doc("<p>The ID of the Data Catalog to set the security configuration for. If none is provided, the
      Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "PutDataCatalogEncryptionSettingsCommand"
  let make = (~dataCatalogEncryptionSettings, ~catalogId=?, ()) =>
    new({dataCatalogEncryptionSettings, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListSchemas = {
  type t
  type request = {
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<schemaRegistryTokenString>,
    @ocaml.doc(
      "<p>Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResultsNumber>,
    @ocaml.doc(
      "<p>A wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>"
    )
    @as("RegistryId")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc(
      "<p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>"
    )
    @as("NextToken")
    nextToken: option<schemaRegistryTokenString>,
    @ocaml.doc(
      "<p>An array of <code>SchemaListItem</code> objects containing details of each schema.</p>"
    )
    @as("Schemas")
    schemas: option<schemaListDefinition>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ListSchemasCommand"
  let make = (~nextToken=?, ~maxResults=?, ~registryId=?, ()) =>
    new({nextToken, maxResults, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSchemaVersions = {
  type t
  type request = {
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<schemaRegistryTokenString>,
    @ocaml.doc(
      "<p>Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResultsNumber>,
    @ocaml.doc("<p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
	        <ul>
            <li>
               <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
            </li>
            <li>
               <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
            </li>
         </ul>")
    @as("SchemaId")
    schemaId: schemaId,
  }
  type response = {
    @ocaml.doc(
      "<p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>"
    )
    @as("NextToken")
    nextToken: option<schemaRegistryTokenString>,
    @ocaml.doc(
      "<p>An array of <code>SchemaVersionList</code> objects containing details of each schema version.</p>"
    )
    @as("Schemas")
    schemas: option<schemaVersionList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ListSchemaVersionsCommand"
  let make = (~schemaId, ~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults, schemaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRegistries = {
  type t
  type request = {
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<schemaRegistryTokenString>,
    @ocaml.doc(
      "<p>Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResultsNumber>,
  }
  type response = {
    @ocaml.doc(
      "<p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>"
    )
    @as("NextToken")
    nextToken: option<schemaRegistryTokenString>,
    @ocaml.doc(
      "<p>An array of <code>RegistryDetailedListItem</code> objects containing minimal details of each registry.</p>"
    )
    @as("Registries")
    registries: option<registryListDefinition>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ListRegistriesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResourcePolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum size of a list to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation request.</p>") @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc(
      "<p>A continuation token, if the returned list does not contain the last resource policy available.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>A list of the individual resource policies and the account-level resource policy.</p>"
    )
    @as("GetResourcePoliciesResponseList")
    getResourcePoliciesResponseList: option<getResourcePoliciesResponseList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetResourcePoliciesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMLTaskRun = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the task run.</p>") @as("TaskRunId")
    taskRunId: hashString,
    @ocaml.doc("<p>The unique identifier of the machine learning transform.</p>") @as("TransformId")
    transformId: hashString,
  }
  type response = {
    @ocaml.doc("<p>The amount of time (in seconds) that the task run consumed resources.</p>")
    @as("ExecutionTime")
    executionTime: option<executionTime>,
    @ocaml.doc("<p>The date and time when this task run was completed.</p>") @as("CompletedOn")
    completedOn: option<timestamp_>,
    @ocaml.doc("<p>The date and time when this task run was last modified.</p>")
    @as("LastModifiedOn")
    lastModifiedOn: option<timestamp_>,
    @ocaml.doc("<p>The date and time when this task run started.</p>") @as("StartedOn")
    startedOn: option<timestamp_>,
    @ocaml.doc("<p>The error strings that are associated with the task run.</p>") @as("ErrorString")
    errorString: option<genericString>,
    @ocaml.doc("<p>The list of properties that are associated with the task run.</p>")
    @as("Properties")
    properties: option<taskRunProperties>,
    @ocaml.doc("<p>The names of the log groups that are associated with the task run.</p>")
    @as("LogGroupName")
    logGroupName: option<genericString>,
    @ocaml.doc("<p>The status for this task run.</p>") @as("Status") status: option<taskStatusType>,
    @ocaml.doc("<p>The unique run identifier associated with this run.</p>") @as("TaskRunId")
    taskRunId: option<hashString>,
    @ocaml.doc("<p>The unique identifier of the task run.</p>") @as("TransformId")
    transformId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetMLTaskRunCommand"
  let make = (~taskRunId, ~transformId, ()) => new({taskRunId, transformId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDevEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>Name of the <code>DevEndpoint</code> to retrieve information for.</p>")
    @as("EndpointName")
    endpointName: genericString,
  }
  type response = {
    @ocaml.doc("<p>A <code>DevEndpoint</code> definition.</p>") @as("DevEndpoint")
    devEndpoint: option<devEndpoint>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetDevEndpointCommand"
  let make = (~endpointName, ()) => new({endpointName: endpointName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDataCatalogEncryptionSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Data Catalog to retrieve the security configuration for. If none is
      provided, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>The requested security configuration.</p>") @as("DataCatalogEncryptionSettings")
    dataCatalogEncryptionSettings: option<dataCatalogEncryptionSettings>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "GetDataCatalogEncryptionSettingsCommand"
  let make = (~catalogId=?, ()) => new({catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCrawlerMetrics = {
  type t
  type request = {
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The maximum size of a list to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A list of the names of crawlers about which to retrieve metrics.</p>")
    @as("CrawlerNameList")
    crawlerNameList: option<crawlerNameList>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if the returned list does not contain the
      last metric available.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of metrics for the specified crawler.</p>") @as("CrawlerMetricsList")
    crawlerMetricsList: option<crawlerMetricsList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetCrawlerMetricsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~crawlerNameList=?, ()) =>
    new({nextToken, maxResults, crawlerNameList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBlueprintRuns = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum size of a list to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation request.</p>") @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The name of the blueprint.</p>") @as("BlueprintName") blueprintName: nameString,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if not all blueprint runs have been returned.</p>")
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>Returns a list of <code>BlueprintRun</code> objects.</p>") @as("BlueprintRuns")
    blueprintRuns: option<blueprintRuns>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetBlueprintRunsCommand"
  let make = (~blueprintName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, blueprintName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBlueprint = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether or not to include the parameter specification.</p>")
    @as("IncludeParameterSpec")
    includeParameterSpec: option<nullableBoolean>,
    @ocaml.doc("<p>Specifies whether or not to include the blueprint in the response.</p>")
    @as("IncludeBlueprint")
    includeBlueprint: option<nullableBoolean>,
    @ocaml.doc("<p>The name of the blueprint.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>Returns a <code>Blueprint</code> object.</p>") @as("Blueprint")
    blueprint: option<blueprint>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetBlueprintCommand"
  let make = (~name, ~includeParameterSpec=?, ~includeBlueprint=?, ()) =>
    new({includeParameterSpec, includeBlueprint, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePartitionIndex = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies a <code>PartitionIndex</code> structure to create a partition index in an existing table.</p>"
    )
    @as("PartitionIndex")
    partitionIndex: partitionIndex,
    @ocaml.doc(
      "<p>Specifies the name of a table in which you want to create a partition index.</p>"
    )
    @as("TableName")
    tableName: nameString,
    @ocaml.doc(
      "<p>Specifies the name of a database in which you want to create a partition index.</p>"
    )
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The catalog ID where the table resides.</p>") @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreatePartitionIndexCommand"
  let make = (~partitionIndex, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({partitionIndex, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateMLTransform = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.</p>"
    )
    @as("TransformEncryption")
    transformEncryption: option<transformEncryption>,
    @ocaml.doc(
      "<p>The tags to use with this machine learning transform. You may use tags to limit access to the machine learning transform. For more information about tags in Glue, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html\">Amazon Web Services Tags in Glue</a> in the developer guide.</p>"
    )
    @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc(
      "<p>The maximum number of times to retry a task for this transform after a task run fails.</p>"
    )
    @as("MaxRetries")
    maxRetries: option<nullableInteger>,
    @ocaml.doc(
      "<p>The timeout of the task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>"
    )
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc("<p>The number of workers of a defined <code>workerType</code> that are allocated when this task runs.</p>
	
		       <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>")
    @as("NumberOfWorkers")
    numberOfWorkers: option<nullableInteger>,
    @ocaml.doc("<p>The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.</p>
	        <ul>
            <li>
               <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
            </li>
            <li>
               <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
            </li>
            <li>
               <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
            </li>
         </ul>
	
	        <p>
            <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
        <ul>
            <li>
               <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p>
            </li>
            <li>
               <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p>
            </li>
            <li>
               <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
            </li>
            <li>
               <p>
                  <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p>
            </li>
         </ul>")
    @as("WorkerType")
    workerType: option<workerType>,
    @ocaml.doc("<p>The number of Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of
      processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
      information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue pricing
        page</a>. </p>
		
			      <p>
            <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
        <ul>
            <li>
               <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p>
            </li>
            <li>
               <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p>
            </li>
            <li>
               <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
            </li>
            <li>
               <p>
                  <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p>
            </li>
         </ul>
		
	        <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>	  
   
		
         <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>")
    @as("MaxCapacity")
    maxCapacity: option<nullableDouble>,
    @ocaml.doc(
      "<p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions\">Glue Versions</a> in the developer guide.</p>"
    )
    @as("GlueVersion")
    glueVersion: option<glueVersionString>,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both Glue service role permissions to Glue resources, and Amazon S3 permissions required by the transform. </p>

		       <ul>
            <li>
               <p>This role needs Glue service role permissions to allow access to resources in Glue. See <a href=\"https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html\">Attach a Policy to IAM Users That Access Glue</a>.</p>
            </li>
            <li>
               <p>This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.</p>
            </li>
         </ul>")
    @as("Role")
    role: roleString,
    @ocaml.doc("<p>The algorithmic parameters that are specific to the transform type used. Conditionally
      dependent on the transform type.</p>")
    @as("Parameters")
    parameters: transformParameters,
    @ocaml.doc("<p>A list of Glue table definitions used by the transform.</p>")
    @as("InputRecordTables")
    inputRecordTables: glueTables,
    @ocaml.doc("<p>A description of the machine learning transform that is being defined. The default is an
      empty string.</p>")
    @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The unique name that you give the transform when you create it.</p>") @as("Name")
    name: nameString,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier that is generated for the transform.</p>") @as("TransformId")
    transformId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateMLTransformCommand"
  let make = (
    ~role,
    ~parameters,
    ~inputRecordTables,
    ~name,
    ~transformEncryption=?,
    ~tags=?,
    ~maxRetries=?,
    ~timeout=?,
    ~numberOfWorkers=?,
    ~workerType=?,
    ~maxCapacity=?,
    ~glueVersion=?,
    ~description=?,
    (),
  ) =>
    new({
      transformEncryption,
      tags,
      maxRetries,
      timeout,
      numberOfWorkers,
      workerType,
      maxCapacity,
      glueVersion,
      role,
      parameters,
      inputRecordTables,
      description,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateJob = {
  type t
  type request = {
    @ocaml.doc("<p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p>
	        <ul>
            <li>
               <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
            </li>
            <li>
               <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
            </li>
            <li>
               <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
            </li>
         </ul>")
    @as("WorkerType")
    workerType: option<workerType>,
    @ocaml.doc("<p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
	
	        <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>")
    @as("NumberOfWorkers")
    numberOfWorkers: option<nullableInteger>,
    @ocaml.doc("<p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for jobs of type Spark. </p>
 
         <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p>
	  
	        <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>")
    @as("GlueVersion")
    glueVersion: option<glueVersionString>,
    @ocaml.doc("<p>Specifies configuration properties of a job notification.</p>")
    @as("NotificationProperty")
    notificationProperty: option<notificationProperty>,
    @ocaml.doc(
      "<p>The tags to use with this job. You may use tags to limit access to the job. For more information about tags in Glue, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html\">Amazon Web Services Tags in Glue</a> in the developer guide.</p>"
    )
    @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc("<p>The name of the <code>SecurityConfiguration</code> structure to be used with this
      job.</p>")
    @as("SecurityConfiguration")
    securityConfiguration: option<nameString>,
    @ocaml.doc("<p>For Glue version 1.0 or earlier jobs, using the standard worker type, the number of Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure
       of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
       For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue
         pricing page</a>.</p>
		 
	        <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
     
         <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
      running a Python shell job or an Apache Spark ETL job:</p>
         <ul>
            <li>
               <p>When you specify a Python shell job (<code>JobCommand.Name</code>=\"pythonshell\"), you can
          allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
            </li>
            <li>
               <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>=\"glueetl\") or Apache 
         Spark streaming ETL job (<code>JobCommand.Name</code>=\"gluestreaming\"), you can allocate from 2 to 100 DPUs. 
         The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
            </li>
         </ul>
         <p>For Glue version 2.0 jobs, you cannot instead specify a <code>Maximum capacity</code>. Instead, you should specify a <code>Worker type</code> and the <code>Number of workers</code>.</p>")
    @as("MaxCapacity")
    maxCapacity: option<nullableDouble>,
    @ocaml.doc("<p>The job timeout in minutes.  This is the maximum time that a job run
      can consume resources before it is terminated and enters <code>TIMEOUT</code>
      status. The default is 2,880 minutes (48 hours).</p>")
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc("<p>This parameter is deprecated. Use <code>MaxCapacity</code> instead.</p>
	
         <p>The number of Glue data processing units (DPUs) to allocate to this Job. You can
      allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing
      power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information,
      see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue pricing
      page</a>.</p>")
    @as("AllocatedCapacity")
    allocatedCapacity: option<integerValue>,
    @ocaml.doc("<p>The maximum number of times to retry this job if it fails.</p>")
    @as("MaxRetries")
    maxRetries: option<maxRetries>,
    @ocaml.doc("<p>The connections used for this job.</p>") @as("Connections")
    connections: option<connectionsList>,
    @ocaml.doc("<p>Non-overridable arguments for this job, specified as name-value pairs.</p>")
    @as("NonOverridableArguments")
    nonOverridableArguments: option<genericMap>,
    @ocaml.doc("<p>The default arguments for this job.</p>
         <p>You can specify arguments here that your own job-execution script
      consumes, as well as arguments that Glue itself consumes.</p>
         <p>For information about how to specify and consume your own Job arguments, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html\">Calling Glue APIs in Python</a> topic in the developer guide.</p>
         <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html\">Special Parameters Used by Glue</a> topic in the developer guide.</p>")
    @as("DefaultArguments")
    defaultArguments: option<genericMap>,
    @ocaml.doc("<p>The <code>JobCommand</code> that runs this job.</p>") @as("Command")
    command: jobCommand,
    @ocaml.doc("<p>An <code>ExecutionProperty</code> specifying the maximum number of concurrent runs allowed
      for this job.</p>")
    @as("ExecutionProperty")
    executionProperty: option<executionProperty>,
    @ocaml.doc(
      "<p>The name or Amazon Resource Name (ARN) of the IAM role associated with this job.</p>"
    )
    @as("Role")
    role: roleString,
    @ocaml.doc("<p>This field is reserved for future use.</p>") @as("LogUri")
    logUri: option<uriString>,
    @ocaml.doc("<p>Description of the job being defined.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc(
      "<p>The name you assign to this job definition. It must be unique in your account.</p>"
    )
    @as("Name")
    name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The unique name that was provided for this job definition.</p>") @as("Name")
    name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateJobCommand"
  let make = (
    ~command,
    ~role,
    ~name,
    ~workerType=?,
    ~numberOfWorkers=?,
    ~glueVersion=?,
    ~notificationProperty=?,
    ~tags=?,
    ~securityConfiguration=?,
    ~maxCapacity=?,
    ~timeout=?,
    ~allocatedCapacity=?,
    ~maxRetries=?,
    ~connections=?,
    ~nonOverridableArguments=?,
    ~defaultArguments=?,
    ~executionProperty=?,
    ~logUri=?,
    ~description=?,
    (),
  ) =>
    new({
      workerType,
      numberOfWorkers,
      glueVersion,
      notificationProperty,
      tags,
      securityConfiguration,
      maxCapacity,
      timeout,
      allocatedCapacity,
      maxRetries,
      connections,
      nonOverridableArguments,
      defaultArguments,
      command,
      executionProperty,
      role,
      logUri,
      description,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateClassifier = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>CsvClassifier</code> object specifying the classifier
      to create.</p>")
    @as("CsvClassifier")
    csvClassifier: option<createCsvClassifierRequest>,
    @ocaml.doc("<p>A <code>JsonClassifier</code> object specifying the classifier
      to create.</p>")
    @as("JsonClassifier")
    jsonClassifier: option<createJsonClassifierRequest>,
    @ocaml.doc("<p>An <code>XMLClassifier</code> object specifying the classifier
      to create.</p>")
    @as("XMLClassifier")
    xmlclassifier: option<createXMLClassifierRequest>,
    @ocaml.doc("<p>A <code>GrokClassifier</code> object specifying the classifier
      to create.</p>")
    @as("GrokClassifier")
    grokClassifier: option<createGrokClassifierRequest>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateClassifierCommand"
  let make = (~csvClassifier=?, ~jsonClassifier=?, ~xmlclassifier=?, ~grokClassifier=?, ()) =>
    new({csvClassifier, jsonClassifier, xmlclassifier, grokClassifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module BatchDeleteConnection = {
  type t
  type request = {
    @ocaml.doc("<p>A list of names of the connections to delete.</p>") @as("ConnectionNameList")
    connectionNameList: deleteConnectionNameList,
    @ocaml.doc("<p>The ID of the Data Catalog in which the connections reside. If none is provided, the Amazon Web Services
      account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A map of the names of connections that were not successfully
       deleted to error details.</p>")
    @as("Errors")
    errors: option<errorByName>,
    @ocaml.doc("<p>A list of names of the connection definitions that were
       successfully deleted.</p>")
    @as("Succeeded")
    succeeded: option<nameStringList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchDeleteConnectionCommand"
  let make = (~connectionNameList, ~catalogId=?, ()) => new({connectionNameList, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateUserDefinedFunction = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>FunctionInput</code> object that redefines the function in the Data
      Catalog.</p>")
    @as("FunctionInput")
    functionInput: userDefinedFunctionInput,
    @ocaml.doc("<p>The name of the function.</p>") @as("FunctionName") functionName: nameString,
    @ocaml.doc("<p>The name of the catalog database where the function to be updated is
      located.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the function to be updated is located. If none is
      provided, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "UpdateUserDefinedFunctionCommand"
  let make = (~functionInput, ~functionName, ~databaseName, ~catalogId=?, ()) =>
    new({functionInput, functionName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateJob = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the values with which to update the job definition.</p>")
    @as("JobUpdate")
    jobUpdate: jobUpdate,
    @ocaml.doc("<p>The name of the job definition to update.</p>") @as("JobName")
    jobName: nameString,
  }
  type response = {
    @ocaml.doc("<p>Returns the name of the updated job definition.</p>") @as("JobName")
    jobName: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateJobCommand"
  let make = (~jobUpdate, ~jobName, ()) => new({jobUpdate, jobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateConnection = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>ConnectionInput</code> object that redefines the connection
      in question.</p>")
    @as("ConnectionInput")
    connectionInput: connectionInput,
    @ocaml.doc("<p>The name of the connection definition to update.</p>") @as("Name")
    name: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog in which the connection resides. If none is provided, the Amazon Web Services
      account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateConnectionCommand"
  let make = (~connectionInput, ~name, ~catalogId=?, ()) => new({connectionInput, name, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListMLTransforms = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies to return only these tagged resources.</p>") @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc(
      "<p>A <code>TransformSortCriteria</code> used to sort the machine learning transforms.</p>"
    )
    @as("Sort")
    sort: option<transformSortCriteria>,
    @ocaml.doc(
      "<p>A <code>TransformFilterCriteria</code> used to filter the machine learning transforms.</p>"
    )
    @as("Filter")
    filter: option<transformFilterCriteria>,
    @ocaml.doc("<p>The maximum size of a list to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation request.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if the returned list does not contain the
      last metric available.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The identifiers of all the machine learning transforms in the account, or the
        machine learning transforms with the specified tags.</p>")
    @as("TransformIds")
    transformIds: transformIdList,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ListMLTransformsCommand"
  let make = (~tags=?, ~sort=?, ~filter=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({tags, sort, filter, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUserDefinedFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the function.</p>") @as("FunctionName") functionName: nameString,
    @ocaml.doc("<p>The name of the catalog database where the function is located.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the function to be retrieved is located. If none is
      provided, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>The requested function definition.</p>") @as("UserDefinedFunction")
    userDefinedFunction: option<userDefinedFunction>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetUserDefinedFunctionCommand"
  let make = (~functionName, ~databaseName, ~catalogId=?, ()) =>
    new({functionName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetStatement = {
  type t
  type request = {
    @ocaml.doc("<p>The origin of the request.</p>") @as("RequestOrigin")
    requestOrigin: option<orchestrationNameString>,
    @ocaml.doc("<p>The Id of the statement.</p>") @as("Id") id: integerValue,
    @ocaml.doc("<p>The Session ID of the statement.</p>") @as("SessionId") sessionId: nameString,
  }
  type response = {
    @ocaml.doc("<p>Returns the statement.</p>") @as("Statement") statement: option<statement>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetStatementCommand"
  let make = (~id, ~sessionId, ~requestOrigin=?, ()) => new({requestOrigin, id, sessionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSession = {
  type t
  type request = {
    @ocaml.doc("<p>The origin of the request. </p>") @as("RequestOrigin")
    requestOrigin: option<orchestrationNameString>,
    @ocaml.doc("<p>The ID of the session. </p>") @as("Id") id: nameString,
  }
  type response = {
    @ocaml.doc("<p>The session object is returned in the response.</p>") @as("Session")
    session: option<session>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetSessionCommand"
  let make = (~id, ~requestOrigin=?, ()) => new({requestOrigin, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPlan = {
  type t
  type request = {
    @ocaml.doc("<p>A map to hold additional optional key-value parameters.</p>
	
	        <p>Currently, these key-value pairs are supported:</p>
	
	        <ul>
            <li>
               <p>
                  <code>inferSchema</code>  —  Specifies whether to set <code>inferSchema</code> to true or false for the default script generated by an Glue job. For example, to set <code>inferSchema</code> to true, pass the following key value pair:</p>
	              <p>
                  <code>--additional-plan-options-map '{\"inferSchema\":\"true\"}'</code>
               </p>
	           </li>
         </ul>")
    @as("AdditionalPlanOptionsMap")
    additionalPlanOptionsMap: option<additionalPlanOptionsMap>,
    @ocaml.doc("<p>The programming language of the code to perform the mapping.</p>")
    @as("Language")
    language: option<language>,
    @ocaml.doc("<p>The parameters for the mapping.</p>") @as("Location") location: option<location>,
    @ocaml.doc("<p>The target tables.</p>") @as("Sinks") sinks: option<catalogEntries>,
    @ocaml.doc("<p>The source table.</p>") @as("Source") source: catalogEntry,
    @ocaml.doc("<p>The list of mappings from a source table to target tables.</p>") @as("Mapping")
    mapping: mappingList,
  }
  type response = {
    @ocaml.doc("<p>The Scala code to perform the mapping.</p>") @as("ScalaCode")
    scalaCode: option<scalaCode>,
    @ocaml.doc("<p>A Python script to perform the mapping.</p>") @as("PythonScript")
    pythonScript: option<pythonScript>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetPlanCommand"
  let make = (
    ~source,
    ~mapping,
    ~additionalPlanOptionsMap=?,
    ~language=?,
    ~location=?,
    ~sinks=?,
    (),
  ) => new({additionalPlanOptionsMap, language, location, sinks, source, mapping})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMapping = {
  type t
  type request = {
    @ocaml.doc("<p>Parameters for the mapping.</p>") @as("Location") location: option<location>,
    @ocaml.doc("<p>A list of target tables.</p>") @as("Sinks") sinks: option<catalogEntries>,
    @ocaml.doc("<p>Specifies the source table.</p>") @as("Source") source: catalogEntry,
  }
  type response = {
    @ocaml.doc("<p>A list of mappings to the specified targets.</p>") @as("Mapping")
    mapping: mappingList,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetMappingCommand"
  let make = (~source, ~location=?, ~sinks=?, ()) => new({location, sinks, source})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetJobRun = {
  type t
  type request = {
    @ocaml.doc("<p>True if a list of predecessor runs should be returned.</p>")
    @as("PredecessorsIncluded")
    predecessorsIncluded: option<booleanValue>,
    @ocaml.doc("<p>The ID of the job run.</p>") @as("RunId") runId: idString,
    @ocaml.doc("<p>Name of the job definition being run.</p>") @as("JobName") jobName: nameString,
  }
  type response = {
    @ocaml.doc("<p>The requested job-run metadata.</p>") @as("JobRun") jobRun: option<jobRun>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetJobRunCommand"
  let make = (~runId, ~jobName, ~predecessorsIncluded=?, ()) =>
    new({predecessorsIncluded, runId, jobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetJob = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the job definition to retrieve.</p>") @as("JobName")
    jobName: nameString,
  }
  type response = {@ocaml.doc("<p>The requested job definition.</p>") @as("Job") job: option<job>}
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetJobCommand"
  let make = (~jobName, ()) => new({jobName: jobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDevEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The maximum size of information to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if not all <code>DevEndpoint</code> definitions have yet been
      returned.</p>")
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>A list of <code>DevEndpoint</code> definitions.</p>") @as("DevEndpoints")
    devEndpoints: option<devEndpointList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetDevEndpointsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetConnection = {
  type t
  type request = {
    @ocaml.doc("<p>Allows you to retrieve the connection metadata without returning the password. For
      instance, the AWS Glue console uses this flag to retrieve the connection, and does not display
      the password. Set this parameter when the caller might not have permission to use the KMS
      key to decrypt the password, but it does have permission to access the rest of the connection
      properties.</p>")
    @as("HidePassword")
    hidePassword: option<boolean_>,
    @ocaml.doc("<p>The name of the connection definition to retrieve.</p>") @as("Name")
    name: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog in which the connection resides. If none is provided, the Amazon Web Services
      account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>The requested connection definition.</p>") @as("Connection")
    connection: option<connection>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetConnectionCommand"
  let make = (~name, ~hidePassword=?, ~catalogId=?, ()) => new({hidePassword, name, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetClassifier = {
  type t
  type request = {
    @ocaml.doc("<p>Name of the classifier to retrieve.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The requested classifier.</p>") @as("Classifier") classifier: option<classifier>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetClassifierCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteSchemaVersions = {
  type t
  type request = {
    @ocaml.doc("<p>A version range may be supplied which may be of the format:</p>
	        <ul>
            <li>
               <p>a single version number, 5</p>
            </li>
            <li>
               <p>a range, 5-8 : deletes versions 5, 6, 7, 8</p>
            </li>
         </ul>")
    @as("Versions")
    versions: versionsString,
    @ocaml.doc(
      "<p>This is a wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>"
    )
    @as("SchemaId")
    schemaId: schemaId,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of <code>SchemaVersionErrorItem</code> objects, each containing an error and schema version.</p>"
    )
    @as("SchemaVersionErrors")
    schemaVersionErrors: option<schemaVersionErrorList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "DeleteSchemaVersionsCommand"
  let make = (~versions, ~schemaId, ()) => new({versions, schemaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateUserDefinedFunction = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>FunctionInput</code> object that defines the function
      to create in the Data Catalog.</p>")
    @as("FunctionInput")
    functionInput: userDefinedFunctionInput,
    @ocaml.doc("<p>The name of the catalog database in which to create the function.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog in which to create the function. If none is provided, the Amazon Web Services
      account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "CreateUserDefinedFunctionCommand"
  let make = (~functionInput, ~databaseName, ~catalogId=?, ()) =>
    new({functionInput, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateTrigger = {
  type t
  type request = {
    @ocaml.doc("<p>Batch condition that must be met (specified number of events received or batch time window expired)
      before EventBridge event trigger fires.</p>")
    @as("EventBatchingCondition")
    eventBatchingCondition: option<eventBatchingCondition>,
    @ocaml.doc("<p>The tags to use with this trigger. You may use tags to limit access to the trigger.
      For more information about tags in Glue, see
      <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html\">Amazon Web Services Tags in Glue</a> in the developer guide. </p>")
    @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc("<p>Set to <code>true</code> to start <code>SCHEDULED</code> and <code>CONDITIONAL</code>
      triggers when created. True is not supported for <code>ON_DEMAND</code> triggers.</p>")
    @as("StartOnCreation")
    startOnCreation: option<booleanValue>,
    @ocaml.doc("<p>A description of the new trigger.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The actions initiated by this trigger when it fires.</p>") @as("Actions")
    actions: actionList,
    @ocaml.doc("<p>A predicate to specify when the new trigger should fire.</p>
         <p>This field is required when the trigger type is <code>CONDITIONAL</code>.</p>")
    @as("Predicate")
    predicate: option<predicate>,
    @ocaml.doc("<p>A <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
      something every day at 12:15 UTC, you would specify:
      <code>cron(15 12 * * ? *)</code>.</p>
         <p>This field is required when the trigger type is SCHEDULED.</p>")
    @as("Schedule")
    schedule: option<genericString>,
    @ocaml.doc("<p>The type of the new trigger.</p>") @as("Type") type_: triggerType,
    @ocaml.doc("<p>The name of the workflow associated with the trigger.</p>") @as("WorkflowName")
    workflowName: option<nameString>,
    @ocaml.doc("<p>The name of the trigger.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The name of the trigger.</p>") @as("Name") name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateTriggerCommand"
  let make = (
    ~actions,
    ~type_,
    ~name,
    ~eventBatchingCondition=?,
    ~tags=?,
    ~startOnCreation=?,
    ~description=?,
    ~predicate=?,
    ~schedule=?,
    ~workflowName=?,
    (),
  ) =>
    new({
      eventBatchingCondition,
      tags,
      startOnCreation,
      description,
      actions,
      predicate,
      schedule,
      type_,
      workflowName,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSession = {
  type t
  @ocaml.doc("<p>Request to create a new session.</p>")
  type request = {
    @ocaml.doc("<p>The origin of the request. </p>") @as("RequestOrigin")
    requestOrigin: option<orchestrationNameString>,
    @ocaml.doc("<p>The map of key value pairs (tags) belonging to the session.</p>") @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc("<p>The Glue version determines the versions of Apache Spark and Python that AWS Glue supports. 
      The GlueVersion must be greater than 2.0. </p>")
    @as("GlueVersion")
    glueVersion: option<glueVersionString>,
    @ocaml.doc(
      "<p>The name of the SecurityConfiguration structure to be used with the session </p>"
    )
    @as("SecurityConfiguration")
    securityConfiguration: option<nameString>,
    @ocaml.doc("<p>The Worker Type. Can be one of G.1X, G.2X, Standard </p>") @as("WorkerType")
    workerType: option<workerType>,
    @ocaml.doc("<p>The number of workers to use for the session. </p>") @as("NumberOfWorkers")
    numberOfWorkers: option<nullableInteger>,
    @ocaml.doc("<p>The number of AWS Glue data processing units (DPUs) that can be allocated when the job runs. 
      A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB memory. </p>")
    @as("MaxCapacity")
    maxCapacity: option<nullableDouble>,
    @ocaml.doc("<p>The number of connections to use for the session. </p>") @as("Connections")
    connections: option<connectionsList>,
    @ocaml.doc("<p>A map array of key-value pairs. Max is 75 pairs. </p>") @as("DefaultArguments")
    defaultArguments: option<orchestrationArgumentsMap>,
    @ocaml.doc("<p>The number of seconds when idle before request times out. </p>")
    @as("IdleTimeout")
    idleTimeout: option<timeout>,
    @ocaml.doc("<p>The number of seconds before request times out. </p>") @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc("<p>The <code>SessionCommand</code> that runs the job. </p>") @as("Command")
    command: sessionCommand,
    @ocaml.doc("<p>The IAM Role ARN </p>") @as("Role") role: orchestrationRoleArn,
    @ocaml.doc("<p>The description of the session. </p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The ID of the session request. </p>") @as("Id") id: nameString,
  }
  type response = {
    @ocaml.doc("<p>Returns the session object in the response.</p>") @as("Session")
    session: option<session>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateSessionCommand"
  let make = (
    ~command,
    ~role,
    ~id,
    ~requestOrigin=?,
    ~tags=?,
    ~glueVersion=?,
    ~securityConfiguration=?,
    ~workerType=?,
    ~numberOfWorkers=?,
    ~maxCapacity=?,
    ~connections=?,
    ~defaultArguments=?,
    ~idleTimeout=?,
    ~timeout=?,
    ~description=?,
    (),
  ) =>
    new({
      requestOrigin,
      tags,
      glueVersion,
      securityConfiguration,
      workerType,
      numberOfWorkers,
      maxCapacity,
      connections,
      defaultArguments,
      idleTimeout,
      timeout,
      command,
      role,
      description,
      id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSecurityConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The encryption configuration for the new security configuration.</p>")
    @as("EncryptionConfiguration")
    encryptionConfiguration: encryptionConfiguration,
    @ocaml.doc("<p>The name for the new security configuration.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The time at which the new security configuration was created.</p>")
    @as("CreatedTimestamp")
    createdTimestamp: option<timestampValue>,
    @ocaml.doc("<p>The name assigned to the new security configuration.</p>") @as("Name")
    name: option<nameString>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "CreateSecurityConfigurationCommand"
  let make = (~encryptionConfiguration, ~name, ()) => new({encryptionConfiguration, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The tags you assign to the connection.</p>") @as("Tags") tags: option<tagsMap>,
    @ocaml.doc("<p>A <code>ConnectionInput</code> object defining the connection
      to create.</p>")
    @as("ConnectionInput")
    connectionInput: connectionInput,
    @ocaml.doc("<p>The ID of the Data Catalog in which to create the connection. If none is provided, the Amazon Web Services
      account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateConnectionCommand"
  let make = (~connectionInput, ~tags=?, ~catalogId=?, ()) =>
    new({tags, connectionInput, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module BatchStopJobRun = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the <code>JobRunIds</code> that should be stopped for that job
      definition.</p>")
    @as("JobRunIds")
    jobRunIds: batchStopJobRunJobRunIdList,
    @ocaml.doc("<p>The name of the job definition for which to stop job runs.</p>") @as("JobName")
    jobName: nameString,
  }
  type response = {
    @ocaml.doc("<p>A list of the errors that were encountered in trying to stop <code>JobRuns</code>,
      including the <code>JobRunId</code> for which each error was encountered and details about the
      error.</p>")
    @as("Errors")
    errors: option<batchStopJobRunErrorList>,
    @ocaml.doc("<p>A list of the JobRuns that were successfully submitted for stopping.</p>")
    @as("SuccessfulSubmissions")
    successfulSubmissions: option<batchStopJobRunSuccessfulSubmissionList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchStopJobRunCommand"
  let make = (~jobRunIds, ~jobName, ()) => new({jobRunIds, jobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchGetDevEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p>The list of <code>DevEndpoint</code> names, which might be the names returned from the
        <code>ListDevEndpoint</code> operation.</p>")
    @as("DevEndpointNames")
    devEndpointNames: devEndpointNames,
  }
  type response = {
    @ocaml.doc("<p>A list of <code>DevEndpoints</code> not found.</p>") @as("DevEndpointsNotFound")
    devEndpointsNotFound: option<devEndpointNames>,
    @ocaml.doc("<p>A list of <code>DevEndpoint</code> definitions.</p>") @as("DevEndpoints")
    devEndpoints: option<devEndpointList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchGetDevEndpointsCommand"
  let make = (~devEndpointNames, ()) => new({devEndpointNames: devEndpointNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchGetBlueprints = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether or not to include the parameters, as a JSON string, for the blueprint in the response.</p>"
    )
    @as("IncludeParameterSpec")
    includeParameterSpec: option<nullableBoolean>,
    @ocaml.doc("<p>Specifies whether or not to include the blueprint in the response.</p>")
    @as("IncludeBlueprint")
    includeBlueprint: option<nullableBoolean>,
    @ocaml.doc("<p>A list of blueprint names.</p>") @as("Names") names: batchGetBlueprintNames,
  }
  type response = {
    @ocaml.doc("<p>Returns a list of <code>BlueprintNames</code> that were not found.</p>")
    @as("MissingBlueprints")
    missingBlueprints: option<blueprintNames>,
    @ocaml.doc("<p>Returns a list of blueprint as a <code>Blueprints</code> object.</p>")
    @as("Blueprints")
    blueprints: option<blueprints>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchGetBlueprintsCommand"
  let make = (~names, ~includeParameterSpec=?, ~includeBlueprint=?, ()) =>
    new({includeParameterSpec, includeBlueprint, names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDeleteTableVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of the IDs of versions to be deleted. A <code>VersionId</code> is a string representation of an integer. Each version is incremented by 1.</p>"
    )
    @as("VersionIds")
    versionIds: batchDeleteTableVersionList,
    @ocaml.doc("<p>The name of the table. For Hive compatibility, 
      this name is entirely lowercase.</p>")
    @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>The database in the catalog in which the table resides. For Hive
      compatibility, this name is entirely lowercase.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
      ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of errors encountered while trying to delete
      the specified table versions.</p>")
    @as("Errors")
    errors: option<tableVersionErrors>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchDeleteTableVersionCommand"
  let make = (~versionIds, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({versionIds, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDeleteTable = {
  type t
  type request = {
    @ocaml.doc("<p>The transaction ID at which to delete the table contents.</p>")
    @as("TransactionId")
    transactionId: option<transactionIdString>,
    @ocaml.doc("<p>A list of the table to delete.</p>") @as("TablesToDelete")
    tablesToDelete: batchDeleteTableNameList,
    @ocaml.doc("<p>The name of the catalog database in which the tables to delete reside. For Hive
      compatibility, this name is entirely lowercase.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the table resides. If none is provided, the Amazon Web Services account
      ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of errors encountered in attempting to delete the specified tables.</p>")
    @as("Errors")
    errors: option<tableErrors>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchDeleteTableCommand"
  let make = (~tablesToDelete, ~databaseName, ~transactionId=?, ~catalogId=?, ()) =>
    new({transactionId, tablesToDelete, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDeletePartition = {
  type t
  type request = {
    @ocaml.doc("<p>A list of <code>PartitionInput</code> structures that define
      the partitions to be deleted.</p>")
    @as("PartitionsToDelete")
    partitionsToDelete: batchDeletePartitionValueList,
    @ocaml.doc("<p>The name of the table that contains the partitions to be deleted.</p>")
    @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>The name of the catalog database in which the table in question
      resides.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the partition to be deleted resides. If none is provided,
      the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>The errors encountered when trying to delete the requested partitions.</p>")
    @as("Errors")
    errors: option<partitionErrors>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchDeletePartitionCommand"
  let make = (~partitionsToDelete, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({partitionsToDelete, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateTrigger = {
  type t
  type request = {
    @ocaml.doc("<p>The new values with which to update the trigger.</p>") @as("TriggerUpdate")
    triggerUpdate: triggerUpdate,
    @ocaml.doc("<p>The name of the trigger to update.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The resulting trigger definition.</p>") @as("Trigger") trigger: option<trigger>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateTriggerCommand"
  let make = (~triggerUpdate, ~name, ()) => new({triggerUpdate, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>DatabaseInput</code> object specifying the new definition
      of the metadata database in the catalog.</p>")
    @as("DatabaseInput")
    databaseInput: databaseInput,
    @ocaml.doc("<p>The name of the database to update in the catalog. For Hive
      compatibility, this is folded to lowercase.</p>")
    @as("Name")
    name: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog in which the metadata database resides. If none is provided,
      the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateDatabaseCommand"
  let make = (~databaseInput, ~name, ~catalogId=?, ()) => new({databaseInput, name, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateCrawler = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the <code>SecurityConfiguration</code> structure to be used by this
      crawler.</p>")
    @as("CrawlerSecurityConfiguration")
    crawlerSecurityConfiguration: option<crawlerSecurityConfiguration>,
    @ocaml.doc("<p>Crawler configuration information. This versioned JSON string allows users
        to specify aspects of a crawler's behavior.
        For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html\">Configuring a Crawler</a>.</p>")
    @as("Configuration")
    configuration: option<crawlerConfiguration>,
    @as("LakeFormationConfiguration")
    lakeFormationConfiguration: option<lakeFormationConfiguration>,
    @ocaml.doc("<p>Specifies data lineage configuration settings for the crawler.</p>")
    @as("LineageConfiguration")
    lineageConfiguration: option<lineageConfiguration>,
    @ocaml.doc(
      "<p>A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.</p>"
    )
    @as("RecrawlPolicy")
    recrawlPolicy: option<recrawlPolicy>,
    @ocaml.doc("<p>The policy for the crawler's update and deletion behavior.</p>")
    @as("SchemaChangePolicy")
    schemaChangePolicy: option<schemaChangePolicy>,
    @ocaml.doc("<p>The table prefix used for catalog tables that are created.</p>")
    @as("TablePrefix")
    tablePrefix: option<tablePrefix>,
    @ocaml.doc("<p>A list of custom classifiers that the user
      has registered. By default, all built-in classifiers are included in a crawl,
      but these custom classifiers always override the default classifiers
      for a given classification.</p>")
    @as("Classifiers")
    classifiers: option<classifierNameList>,
    @ocaml.doc("<p>A <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
      something every day at 12:15 UTC, you would specify:
      <code>cron(15 12 * * ? *)</code>.</p>")
    @as("Schedule")
    schedule: option<cronExpression>,
    @ocaml.doc("<p>A list of targets to crawl.</p>") @as("Targets") targets: option<crawlerTargets>,
    @ocaml.doc("<p>A description of the new crawler.</p>") @as("Description")
    description: option<descriptionStringRemovable>,
    @ocaml.doc("<p>The Glue database where results are stored, such as:
        <code>arn:aws:daylight:us-east-1::database/sometable/*</code>.</p>")
    @as("DatabaseName")
    databaseName: option<databaseName>,
    @ocaml.doc("<p>The IAM role or Amazon Resource Name (ARN) of an IAM role that is used by the new crawler
      to access customer resources.</p>")
    @as("Role")
    role: option<role>,
    @ocaml.doc("<p>Name of the new crawler.</p>") @as("Name") name: nameString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateCrawlerCommand"
  let make = (
    ~name,
    ~crawlerSecurityConfiguration=?,
    ~configuration=?,
    ~lakeFormationConfiguration=?,
    ~lineageConfiguration=?,
    ~recrawlPolicy=?,
    ~schemaChangePolicy=?,
    ~tablePrefix=?,
    ~classifiers=?,
    ~schedule=?,
    ~targets=?,
    ~description=?,
    ~databaseName=?,
    ~role=?,
    (),
  ) =>
    new({
      crawlerSecurityConfiguration,
      configuration,
      lakeFormationConfiguration,
      lineageConfiguration,
      recrawlPolicy,
      schemaChangePolicy,
      tablePrefix,
      classifiers,
      schedule,
      targets,
      description,
      databaseName,
      role,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module QuerySchemaVersionMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<schemaRegistryTokenString>,
    @ocaml.doc(
      "<p>Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.</p>"
    )
    @as("MaxResults")
    maxResults: option<querySchemaVersionMetadataMaxResults>,
    @ocaml.doc(
      "<p>Search key-value pairs for metadata, if they are not provided all the metadata information will be fetched.</p>"
    )
    @as("MetadataList")
    metadataList: option<metadataList>,
    @ocaml.doc("<p>The unique version ID of the schema version.</p>") @as("SchemaVersionId")
    schemaVersionId: option<schemaVersionIdString>,
    @ocaml.doc("<p>The version number of the schema.</p>") @as("SchemaVersionNumber")
    schemaVersionNumber: option<schemaVersionNumber>,
    @ocaml.doc(
      "<p>A wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>"
    )
    @as("SchemaId")
    schemaId: option<schemaId>,
  }
  type response = {
    @ocaml.doc(
      "<p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>"
    )
    @as("NextToken")
    nextToken: option<schemaRegistryTokenString>,
    @ocaml.doc("<p>The unique version ID of the schema version.</p>") @as("SchemaVersionId")
    schemaVersionId: option<schemaVersionIdString>,
    @ocaml.doc("<p>A map of a metadata key and associated values.</p>") @as("MetadataInfoMap")
    metadataInfoMap: option<metadataInfoMap>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "QuerySchemaVersionMetadataCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~metadataList=?,
    ~schemaVersionId=?,
    ~schemaVersionNumber=?,
    ~schemaId=?,
    (),
  ) => new({nextToken, maxResults, metadataList, schemaVersionId, schemaVersionNumber, schemaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListStatements = {
  type t
  type request = {
    @as("NextToken") nextToken: option<orchestrationToken>,
    @ocaml.doc("<p>The origin of the request to list statements.</p>") @as("RequestOrigin")
    requestOrigin: option<orchestrationNameString>,
    @ocaml.doc("<p>The Session ID of the statements.</p>") @as("SessionId") sessionId: nameString,
  }
  type response = {
    @as("NextToken") nextToken: option<orchestrationToken>,
    @ocaml.doc("<p>Returns the list of statements.</p>") @as("Statements")
    statements: option<statementList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ListStatementsCommand"
  let make = (~sessionId, ~nextToken=?, ~requestOrigin=?, ()) =>
    new({nextToken, requestOrigin, sessionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSessions = {
  type t
  type request = {
    @ocaml.doc("<p>The origin of the request. </p>") @as("RequestOrigin")
    requestOrigin: option<orchestrationNameString>,
    @ocaml.doc("<p>Tags belonging to the session. </p>") @as("Tags") tags: option<tagsMap>,
    @ocaml.doc("<p>The maximum number of results. </p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more result. </p>"
    )
    @as("NextToken")
    nextToken: option<orchestrationToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more result. </p>"
    )
    @as("NextToken")
    nextToken: option<orchestrationToken>,
    @ocaml.doc("<p>Returns the session object. </p>") @as("Sessions") sessions: option<sessionList>,
    @ocaml.doc("<p>Returns the Id of the session. </p>") @as("Ids") ids: option<sessionIdList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "ListSessionsCommand"
  let make = (~requestOrigin=?, ~tags=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({requestOrigin, tags, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUserDefinedFunctions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of functions to return in one response.</p>")
    @as("MaxResults")
    maxResults: option<catalogGetterPageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>An optional function-name pattern string that filters the function
      definitions returned.</p>")
    @as("Pattern")
    pattern: nameString,
    @ocaml.doc("<p>The name of the catalog database where the functions are located. If none is provided, functions from all the
      databases across the catalog will be returned.</p>")
    @as("DatabaseName")
    databaseName: option<nameString>,
    @ocaml.doc("<p>The ID of the Data Catalog where the functions to be retrieved are located. If none is
      provided, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if the list of functions returned does
      not include the last requested function.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of requested function definitions.</p>") @as("UserDefinedFunctions")
    userDefinedFunctions: option<userDefinedFunctionList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetUserDefinedFunctionsCommand"
  let make = (~pattern, ~maxResults=?, ~nextToken=?, ~databaseName=?, ~catalogId=?, ()) =>
    new({maxResults, nextToken, pattern, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTrigger = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the trigger to retrieve.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The requested trigger definition.</p>") @as("Trigger") trigger: option<trigger>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetTriggerCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSecurityConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the security configuration to retrieve.</p>") @as("Name")
    name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The requested security configuration.</p>") @as("SecurityConfiguration")
    securityConfiguration: option<securityConfiguration>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "GetSecurityConfigurationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMLTransform = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the transform, generated at the time that the transform was
      created.</p>")
    @as("TransformId")
    transformId: hashString,
  }
  type response = {
    @ocaml.doc(
      "<p>The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.</p>"
    )
    @as("TransformEncryption")
    transformEncryption: option<transformEncryption>,
    @ocaml.doc(
      "<p>The maximum number of times to retry a task for this transform after a task run fails.</p>"
    )
    @as("MaxRetries")
    maxRetries: option<nullableInteger>,
    @ocaml.doc(
      "<p>The timeout for a task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>"
    )
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc(
      "<p>The number of workers of a defined <code>workerType</code> that are allocated when this task runs.</p>"
    )
    @as("NumberOfWorkers")
    numberOfWorkers: option<nullableInteger>,
    @ocaml.doc("<p>The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.</p>
	        <ul>
            <li>
               <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
            </li>
            <li>
               <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
            </li>
            <li>
               <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
            </li>
         </ul>")
    @as("WorkerType")
    workerType: option<workerType>,
    @ocaml.doc("<p>The number of Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of
      processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
      information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">Glue pricing
        page</a>. </p>
		
         <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>")
    @as("MaxCapacity")
    maxCapacity: option<nullableDouble>,
    @ocaml.doc(
      "<p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions\">Glue Versions</a> in the developer guide.</p>"
    )
    @as("GlueVersion")
    glueVersion: option<glueVersionString>,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the IAM role with the required
      permissions.</p>")
    @as("Role")
    role: option<roleString>,
    @ocaml.doc("<p>The <code>Map<Column, Type></code> object that represents the schema that this
      transform accepts. Has an upper bound of 100 columns.</p>")
    @as("Schema")
    schema: option<transformSchema>,
    @ocaml.doc("<p>The number of labels available for this transform.</p>") @as("LabelCount")
    labelCount: option<labelCount>,
    @ocaml.doc("<p>The latest evaluation metrics.</p>") @as("EvaluationMetrics")
    evaluationMetrics: option<evaluationMetrics>,
    @ocaml.doc("<p>The configuration parameters that are specific to the algorithm used.</p>")
    @as("Parameters")
    parameters: option<transformParameters>,
    @ocaml.doc("<p>A list of Glue table definitions used by the transform.</p>")
    @as("InputRecordTables")
    inputRecordTables: option<glueTables>,
    @ocaml.doc("<p>The date and time when the transform was last modified.</p>")
    @as("LastModifiedOn")
    lastModifiedOn: option<timestamp_>,
    @ocaml.doc("<p>The date and time when the transform was created.</p>") @as("CreatedOn")
    createdOn: option<timestamp_>,
    @ocaml.doc(
      "<p>The last known status of the transform (to indicate whether it can be used or not). One of \"NOT_READY\", \"READY\", or \"DELETING\".</p>"
    )
    @as("Status")
    status: option<transformStatusType>,
    @ocaml.doc("<p>A description of the transform.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The unique name given to the transform when it was created.</p>") @as("Name")
    name: option<nameString>,
    @ocaml.doc("<p>The unique identifier of the transform, generated at the time that the transform was
      created.</p>")
    @as("TransformId")
    transformId: option<hashString>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetMLTransformCommand"
  let make = (~transformId, ()) => new({transformId: transformId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMLTaskRuns = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The sorting criteria, in the <code>TaskRunSortCriteria</code> structure, for the task run.</p>"
    )
    @as("Sort")
    sort: option<taskRunSortCriteria>,
    @ocaml.doc(
      "<p>The filter criteria, in the <code>TaskRunFilterCriteria</code> structure, for the task run.</p>"
    )
    @as("Filter")
    filter: option<taskRunFilterCriteria>,
    @ocaml.doc("<p>The maximum number of results to return. </p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A token for pagination of the results. The default is empty.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The unique identifier of the machine learning transform.</p>") @as("TransformId")
    transformId: hashString,
  }
  type response = {
    @ocaml.doc("<p>A pagination token, if more results are available.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of task runs that are associated with the transform.</p>") @as("TaskRuns")
    taskRuns: option<taskRunList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetMLTaskRunsCommand"
  let make = (~transformId, ~sort=?, ~filter=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({sort, filter, maxResults, nextToken, transformId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum size of the response.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<genericString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if not all job definitions have yet been returned.</p>")
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>A list of job definitions.</p>") @as("Jobs") jobs: option<jobList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetJobRuns = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum size of the response.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The name of the job definition for which to retrieve all job runs.</p>")
    @as("JobName")
    jobName: nameString,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if not all requested job runs have been returned.</p>")
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>A list of job-run metadata objects.</p>") @as("JobRuns")
    jobRuns: option<jobRunList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetJobRunsCommand"
  let make = (~jobName, ~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken, jobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDataflowGraph = {
  type t
  type request = {
    @ocaml.doc("<p>The Python script to transform.</p>") @as("PythonScript")
    pythonScript: option<pythonScript>,
  }
  type response = {
    @ocaml.doc("<p>A list of the edges in the resulting DAG.</p>") @as("DagEdges")
    dagEdges: option<dagEdges>,
    @ocaml.doc("<p>A list of the nodes in the resulting DAG.</p>") @as("DagNodes")
    dagNodes: option<dagNodes>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetDataflowGraphCommand"
  let make = (~pythonScript=?, ()) => new({pythonScript: pythonScript})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the database to retrieve. For Hive compatibility, this 
      should be all lowercase.</p>")
    @as("Name")
    name: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog in which the database resides. If none is provided, the Amazon Web Services
      account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>The definition of the specified database in the Data Catalog.</p>")
    @as("Database")
    database: option<database>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetDatabaseCommand"
  let make = (~name, ~catalogId=?, ()) => new({name, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetConnections = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of connections to return in one response.</p>")
    @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>Allows you to retrieve the connection metadata without returning the password. For
      instance, the AWS Glue console uses this flag to retrieve the connection, and does not display
      the password. Set this parameter when the caller might not have permission to use the KMS
      key to decrypt the password, but it does have permission to access the rest of the connection
      properties.</p>")
    @as("HidePassword")
    hidePassword: option<boolean_>,
    @ocaml.doc("<p>A filter that controls which connections are returned.</p>") @as("Filter")
    filter: option<getConnectionsFilter>,
    @ocaml.doc("<p>The ID of the Data Catalog in which the connections reside. If none is provided, the Amazon Web Services
      account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if the list of connections returned does not
      include the last of the filtered connections.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of requested connection definitions.</p>") @as("ConnectionList")
    connectionList: option<connectionList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetConnectionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~hidePassword=?, ~filter=?, ~catalogId=?, ()) =>
    new({maxResults, nextToken, hidePassword, filter, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetClassifiers = {
  type t
  type request = {
    @ocaml.doc("<p>An optional continuation token.</p>") @as("NextToken") nextToken: option<token>,
    @ocaml.doc("<p>The size of the list to return (optional).</p>") @as("MaxResults")
    maxResults: option<pageSize>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token.</p>") @as("NextToken") nextToken: option<token>,
    @ocaml.doc("<p>The requested list of classifier
      objects.</p>")
    @as("Classifiers")
    classifiers: option<classifierList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetClassifiersCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateScript = {
  type t
  type request = {
    @ocaml.doc("<p>The programming language of the resulting code from the DAG.</p>")
    @as("Language")
    language: option<language>,
    @ocaml.doc("<p>A list of the edges in the DAG.</p>") @as("DagEdges") dagEdges: option<dagEdges>,
    @ocaml.doc("<p>A list of the nodes in the DAG.</p>") @as("DagNodes") dagNodes: option<dagNodes>,
  }
  type response = {
    @ocaml.doc("<p>The Scala code generated from the DAG.</p>") @as("ScalaCode")
    scalaCode: option<scalaCode>,
    @ocaml.doc("<p>The Python script generated from the DAG.</p>") @as("PythonScript")
    pythonScript: option<pythonScript>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateScriptCommand"
  let make = (~language=?, ~dagEdges=?, ~dagNodes=?, ()) => new({language, dagEdges, dagNodes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>The metadata for the database.</p>") @as("DatabaseInput")
    databaseInput: databaseInput,
    @ocaml.doc("<p>The ID of the Data Catalog in which to create the database. If none is provided, the Amazon Web Services
      account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateDatabaseCommand"
  let make = (~databaseInput, ~catalogId=?, ()) => new({databaseInput, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateCrawler = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to use with this crawler request. You may use tags to limit access to the
            crawler. For more information about tags in Glue, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html\">Amazon Web Services Tags in Glue</a> in the developer
            guide.</p>")
    @as("Tags")
    tags: option<tagsMap>,
    @ocaml.doc("<p>The name of the <code>SecurityConfiguration</code> structure to be used by this
      crawler.</p>")
    @as("CrawlerSecurityConfiguration")
    crawlerSecurityConfiguration: option<crawlerSecurityConfiguration>,
    @ocaml.doc("<p>Crawler configuration information. This versioned JSON
      string allows users to specify aspects of a crawler's behavior.
      For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html\">Configuring a Crawler</a>.</p>")
    @as("Configuration")
    configuration: option<crawlerConfiguration>,
    @as("LakeFormationConfiguration")
    lakeFormationConfiguration: option<lakeFormationConfiguration>,
    @ocaml.doc("<p>Specifies data lineage configuration settings for the crawler.</p>")
    @as("LineageConfiguration")
    lineageConfiguration: option<lineageConfiguration>,
    @ocaml.doc(
      "<p>A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.</p>"
    )
    @as("RecrawlPolicy")
    recrawlPolicy: option<recrawlPolicy>,
    @ocaml.doc("<p>The policy for the crawler's update and deletion behavior.</p>")
    @as("SchemaChangePolicy")
    schemaChangePolicy: option<schemaChangePolicy>,
    @ocaml.doc("<p>The table prefix used for catalog tables that are created.</p>")
    @as("TablePrefix")
    tablePrefix: option<tablePrefix>,
    @ocaml.doc("<p>A list of custom classifiers that the user has registered. By default, all built-in
      classifiers are included in a crawl, but these custom classifiers always override the default
      classifiers for a given classification.</p>")
    @as("Classifiers")
    classifiers: option<classifierNameList>,
    @ocaml.doc("<p>A <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
      something every day at 12:15 UTC, you would specify:
      <code>cron(15 12 * * ? *)</code>.</p>")
    @as("Schedule")
    schedule: option<cronExpression>,
    @ocaml.doc("<p>A list of collection of targets to crawl.</p>") @as("Targets")
    targets: crawlerTargets,
    @ocaml.doc("<p>A description of the new crawler.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The Glue database where results are written, such as:
        <code>arn:aws:daylight:us-east-1::database/sometable/*</code>.</p>")
    @as("DatabaseName")
    databaseName: option<databaseName>,
    @ocaml.doc("<p>The IAM role or Amazon Resource Name (ARN) of an IAM role used by the new crawler to
      access customer resources.</p>")
    @as("Role")
    role: role,
    @ocaml.doc("<p>Name of the new crawler.</p>") @as("Name") name: nameString,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateCrawlerCommand"
  let make = (
    ~targets,
    ~role,
    ~name,
    ~tags=?,
    ~crawlerSecurityConfiguration=?,
    ~configuration=?,
    ~lakeFormationConfiguration=?,
    ~lineageConfiguration=?,
    ~recrawlPolicy=?,
    ~schemaChangePolicy=?,
    ~tablePrefix=?,
    ~classifiers=?,
    ~schedule=?,
    ~description=?,
    ~databaseName=?,
    (),
  ) =>
    new({
      tags,
      crawlerSecurityConfiguration,
      configuration,
      lakeFormationConfiguration,
      lineageConfiguration,
      recrawlPolicy,
      schemaChangePolicy,
      tablePrefix,
      classifiers,
      schedule,
      targets,
      description,
      databaseName,
      role,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module BatchGetJobs = {
  type t
  type request = {
    @ocaml.doc("<p>A list of job names, which might be the names returned from the <code>ListJobs</code>
      operation.</p>")
    @as("JobNames")
    jobNames: jobNameList,
  }
  type response = {
    @ocaml.doc("<p>A list of names of jobs not found.</p>") @as("JobsNotFound")
    jobsNotFound: option<jobNameList>,
    @ocaml.doc("<p>A list of job definitions.</p>") @as("Jobs") jobs: option<jobList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchGetJobsCommand"
  let make = (~jobNames, ()) => new({jobNames: jobNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateTable = {
  type t
  type request = {
    @as("VersionId") versionId: option<versionString>,
    @ocaml.doc("<p>The transaction ID at which to update the table contents. </p>")
    @as("TransactionId")
    transactionId: option<transactionIdString>,
    @ocaml.doc("<p>By default, <code>UpdateTable</code> always creates an archived version of the table
      before updating it. However, if <code>skipArchive</code> is set to true,
        <code>UpdateTable</code> does not create the archived version.</p>")
    @as("SkipArchive")
    skipArchive: option<booleanNullable>,
    @ocaml.doc("<p>An updated <code>TableInput</code> object to define the metadata table
      in the catalog.</p>")
    @as("TableInput")
    tableInput: tableInput,
    @ocaml.doc("<p>The name of the catalog database in which the table resides. For Hive
      compatibility, this name is entirely lowercase.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the table resides. If none is provided, the Amazon Web Services account
      ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdateTableCommand"
  let make = (
    ~tableInput,
    ~databaseName,
    ~versionId=?,
    ~transactionId=?,
    ~skipArchive=?,
    ~catalogId=?,
    (),
  ) => new({versionId, transactionId, skipArchive, tableInput, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdatePartition = {
  type t
  type request = {
    @ocaml.doc("<p>The new partition object to update the partition to.</p>
	
	        <p>The <code>Values</code> property can't be changed. If you want to change the partition key values for a partition, delete and recreate the partition.</p>")
    @as("PartitionInput")
    partitionInput: partitionInput,
    @ocaml.doc("<p>List of partition key values that define the partition to update.</p>")
    @as("PartitionValueList")
    partitionValueList: boundedPartitionValueList,
    @ocaml.doc("<p>The name of the table in which the partition to be updated is located.</p>")
    @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>The name of the catalog database in which the table in question
      resides.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the partition to be updated resides. If none is provided,
      the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "UpdatePartitionCommand"
  let make = (~partitionInput, ~partitionValueList, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({partitionInput, partitionValueList, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetUnfilteredTableMetadata = {
  type t
  type request = {
    @as("SupportedPermissionTypes") supportedPermissionTypes: permissionTypeList,
    @as("AuditContext") auditContext: option<auditContext>,
    @as("Name") name: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: catalogIdString,
  }
  type response = {
    @as("CellFilters") cellFilters: option<columnRowFilterList>,
    @as("IsRegisteredWithLakeFormation") isRegisteredWithLakeFormation: option<boolean_>,
    @as("AuthorizedColumns") authorizedColumns: option<nameStringList>,
    @as("Table") table: option<table>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "GetUnfilteredTableMetadataCommand"
  let make = (~supportedPermissionTypes, ~name, ~databaseName, ~catalogId, ~auditContext=?, ()) =>
    new({supportedPermissionTypes, auditContext, name, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUnfilteredPartitionMetadata = {
  type t
  type request = {
    @as("SupportedPermissionTypes") supportedPermissionTypes: permissionTypeList,
    @as("AuditContext") auditContext: option<auditContext>,
    @as("PartitionValues") partitionValues: valueStringList,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: catalogIdString,
  }
  type response = {
    @as("IsRegisteredWithLakeFormation") isRegisteredWithLakeFormation: option<boolean_>,
    @as("AuthorizedColumns") authorizedColumns: option<nameStringList>,
    @as("Partition") partition: option<partition>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "GetUnfilteredPartitionMetadataCommand"
  let make = (
    ~supportedPermissionTypes,
    ~partitionValues,
    ~tableName,
    ~databaseName,
    ~catalogId,
    ~auditContext=?,
    (),
  ) =>
    new({
      supportedPermissionTypes,
      auditContext,
      partitionValues,
      tableName,
      databaseName,
      catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTriggers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum size of the response.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>The name of the job to retrieve triggers for. The trigger that can start this job is
      returned, and if there is no such trigger, all triggers are returned.</p>")
    @as("DependentJobName")
    dependentJobName: option<nameString>,
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<genericString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if not all the requested triggers
      have yet been returned.</p>")
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>A list of triggers for the specified job.</p>") @as("Triggers")
    triggers: option<triggerList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetTriggersCommand"
  let make = (~maxResults=?, ~dependentJobName=?, ~nextToken=?, ()) =>
    new({maxResults, dependentJobName, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTable = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>"
    )
    @as("QueryAsOfTime")
    queryAsOfTime: option<timestamp_>,
    @ocaml.doc("<p>The transaction ID at which to read the table contents. </p>")
    @as("TransactionId")
    transactionId: option<transactionIdString>,
    @ocaml.doc("<p>The name of the table for which to retrieve the definition. For Hive
      compatibility, this name is entirely lowercase.</p>")
    @as("Name")
    name: nameString,
    @ocaml.doc("<p>The name of the database in the catalog in which the table resides.
      For Hive compatibility, this name is entirely lowercase.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the table resides. If none is provided, the Amazon Web Services account
      ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>The <code>Table</code> object that defines the specified table.</p>")
    @as("Table")
    table: option<table>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetTableCommand"
  let make = (~name, ~databaseName, ~queryAsOfTime=?, ~transactionId=?, ~catalogId=?, ()) =>
    new({queryAsOfTime, transactionId, name, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSecurityConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if there are more security
      configurations to return.</p>")
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>A list of security configurations.</p>") @as("SecurityConfigurations")
    securityConfigurations: option<securityConfigurationList>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "GetSecurityConfigurationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPartition = {
  type t
  type request = {
    @ocaml.doc("<p>The values that define the partition.</p>") @as("PartitionValues")
    partitionValues: valueStringList,
    @ocaml.doc("<p>The name of the partition's table.</p>") @as("TableName") tableName: nameString,
    @ocaml.doc("<p>The name of the catalog database where the partition resides.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the partition in question resides. If none is provided,
      the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>The requested information, in the form of a <code>Partition</code>
      object.</p>")
    @as("Partition")
    partition: option<partition>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetPartitionCommand"
  let make = (~partitionValues, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({partitionValues, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDatabases = {
  type t
  type request = {
    @ocaml.doc("<p>Allows you to specify that you want to list the databases shared with your account. The allowable values are <code>FOREIGN</code> or <code>ALL</code>. </p>
	
	        <ul>
            <li>
               <p>If set to <code>FOREIGN</code>, will list the databases shared with your account. </p>
            </li>
            <li>
               <p>If set to <code>ALL</code>, will list the databases shared with your account, as well as the databases in yor local account. </p>
            </li>
         </ul>")
    @as("ResourceShareType")
    resourceShareType: option<resourceShareType>,
    @ocaml.doc("<p>The maximum number of databases to return in one response.</p>")
    @as("MaxResults")
    maxResults: option<catalogGetterPageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The ID of the Data Catalog from which to retrieve <code>Databases</code>. If none is
      provided, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token for paginating the returned list of tokens,
      returned if the current segment of the list is not the last.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of <code>Database</code> objects from the specified catalog.</p>")
    @as("DatabaseList")
    databaseList: databaseList,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetDatabasesCommand"
  let make = (~resourceShareType=?, ~maxResults=?, ~nextToken=?, ~catalogId=?, ()) =>
    new({resourceShareType, maxResults, nextToken, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCrawler = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the crawler to retrieve metadata for.</p>") @as("Name")
    name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The metadata for the specified crawler.</p>") @as("Crawler")
    crawler: option<crawler>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetCrawlerCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetColumnStatisticsForTable = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the column names.</p>") @as("ColumnNames")
    columnNames: getColumnNamesList,
    @ocaml.doc("<p>The name of the partitions' table.</p>") @as("TableName") tableName: nameString,
    @ocaml.doc("<p>The name of the catalog database where the partitions reside.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the partitions in question reside.
      If none is supplied, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>List of ColumnStatistics that failed to be retrieved.</p>") @as("Errors")
    errors: option<columnErrors>,
    @ocaml.doc("<p>List of ColumnStatistics that failed to be retrieved.</p>")
    @as("ColumnStatisticsList")
    columnStatisticsList: option<columnStatisticsList>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "GetColumnStatisticsForTableCommand"
  let make = (~columnNames, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({columnNames, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetColumnStatisticsForPartition = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the column names.</p>") @as("ColumnNames")
    columnNames: getColumnNamesList,
    @ocaml.doc("<p>A list of partition values identifying the partition.</p>")
    @as("PartitionValues")
    partitionValues: valueStringList,
    @ocaml.doc("<p>The name of the partitions' table.</p>") @as("TableName") tableName: nameString,
    @ocaml.doc("<p>The name of the catalog database where the partitions reside.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the partitions in question reside.
      If none is supplied, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>Error occurred during retrieving column statistics data.</p>") @as("Errors")
    errors: option<columnErrors>,
    @ocaml.doc("<p>List of ColumnStatistics that failed to be retrieved.</p>")
    @as("ColumnStatisticsList")
    columnStatisticsList: option<columnStatisticsList>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "GetColumnStatisticsForPartitionCommand"
  let make = (~columnNames, ~partitionValues, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({columnNames, partitionValues, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateTable = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the transaction.</p>") @as("TransactionId")
    transactionId: option<transactionIdString>,
    @ocaml.doc(
      "<p>A list of partition indexes, <code>PartitionIndex</code> structures, to create in the table.</p>"
    )
    @as("PartitionIndexes")
    partitionIndexes: option<partitionIndexList>,
    @ocaml.doc("<p>The <code>TableInput</code> object that defines the metadata table
      to create in the catalog.</p>")
    @as("TableInput")
    tableInput: tableInput,
    @ocaml.doc("<p>The catalog database in which to create the new table. For Hive
      compatibility, this name is entirely lowercase.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog in which to create the <code>Table</code>.
      If none is supplied, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreateTableCommand"
  let make = (
    ~tableInput,
    ~databaseName,
    ~transactionId=?,
    ~partitionIndexes=?,
    ~catalogId=?,
    (),
  ) => new({transactionId, partitionIndexes, tableInput, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreatePartition = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>PartitionInput</code> structure defining the partition
      to be created.</p>")
    @as("PartitionInput")
    partitionInput: partitionInput,
    @ocaml.doc("<p>The name of the metadata table in which the partition is to be created.</p>")
    @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>The name of the metadata database in which the partition is
      to be created.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID of the catalog in which the partition is to be created.</p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-glue") @new external new: request => t = "CreatePartitionCommand"
  let make = (~partitionInput, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({partitionInput, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module BatchGetTriggers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of trigger names, which may be the names returned from the <code>ListTriggers</code> operation.</p>"
    )
    @as("TriggerNames")
    triggerNames: triggerNameList,
  }
  type response = {
    @ocaml.doc("<p>A list of names of triggers not found.</p>") @as("TriggersNotFound")
    triggersNotFound: option<triggerNameList>,
    @ocaml.doc("<p>A list of trigger definitions.</p>") @as("Triggers")
    triggers: option<triggerList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchGetTriggersCommand"
  let make = (~triggerNames, ()) => new({triggerNames: triggerNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateColumnStatisticsForTable = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the column statistics.</p>") @as("ColumnStatisticsList")
    columnStatisticsList: updateColumnStatisticsList,
    @ocaml.doc("<p>The name of the partitions' table.</p>") @as("TableName") tableName: nameString,
    @ocaml.doc("<p>The name of the catalog database where the partitions reside.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the partitions in question reside.
      If none is supplied, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>List of ColumnStatisticsErrors.</p>") @as("Errors")
    errors: option<columnStatisticsErrors>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "UpdateColumnStatisticsForTableCommand"
  let make = (~columnStatisticsList, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({columnStatisticsList, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateColumnStatisticsForPartition = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the column statistics.</p>") @as("ColumnStatisticsList")
    columnStatisticsList: updateColumnStatisticsList,
    @ocaml.doc("<p>A list of partition values identifying the partition.</p>")
    @as("PartitionValues")
    partitionValues: valueStringList,
    @ocaml.doc("<p>The name of the partitions' table.</p>") @as("TableName") tableName: nameString,
    @ocaml.doc("<p>The name of the catalog database where the partitions reside.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the partitions in question reside.
      If none is supplied, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>Error occurred during updating column statistics data.</p>") @as("Errors")
    errors: option<columnStatisticsErrors>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "UpdateColumnStatisticsForPartitionCommand"
  let make = (
    ~columnStatisticsList,
    ~partitionValues,
    ~tableName,
    ~databaseName,
    ~catalogId=?,
    (),
  ) => new({columnStatisticsList, partitionValues, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SearchTables = {
  type t
  type request = {
    @ocaml.doc("<p>Allows you to specify that you want to search the tables shared with your account. The allowable values are <code>FOREIGN</code> or <code>ALL</code>. </p>
	
	        <ul>
            <li>
               <p>If set to <code>FOREIGN</code>, will search the tables shared with your account. </p>
            </li>
            <li>
               <p>If set to <code>ALL</code>, will search the tables shared with your account, as well as the tables in yor local account. </p>
            </li>
         </ul>")
    @as("ResourceShareType")
    resourceShareType: option<resourceShareType>,
    @ocaml.doc("<p>The maximum number of tables to return in a single response.</p>")
    @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc(
      "<p>A list of criteria for sorting the results by a field name, in an ascending or descending order.</p>"
    )
    @as("SortCriteria")
    sortCriteria: option<sortCriteria>,
    @ocaml.doc("<p>A string used for a text search.</p>
	        <p>Specifying a value in quotes filters based on an exact match to the value.</p>")
    @as("SearchText")
    searchText: option<valueString>,
    @ocaml.doc("<p>A list of key-value pairs, and a comparator used to filter the search results. Returns all entities matching the predicate.</p>
	
	        <p>The <code>Comparator</code> member of the <code>PropertyPredicate</code> struct is used only for time fields, and can be omitted for other field types. Also, when comparing string values, such as when <code>Key=Name</code>, a fuzzy match algorithm is used. The <code>Key</code> field (for example, the value of the <code>Name</code> field) is split on certain punctuation characters, for example, -, :, #, etc. into tokens. Then each token is exact-match compared with the <code>Value</code> member of <code>PropertyPredicate</code>. For example, if <code>Key=Name</code> and <code>Value=link</code>, tables named <code>customer-link</code> and <code>xx-link-yy</code> are returned, but <code>xxlinkyy</code> is not returned.</p>")
    @as("Filters")
    filters: option<searchPropertyPredicates>,
    @ocaml.doc("<p>A continuation token, included if this is a continuation call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A unique identifier, consisting of <code>
               <i>account_id</i>
            </code>.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of the requested <code>Table</code> objects. The <code>SearchTables</code> response returns only the tables that you have access to.</p>"
    )
    @as("TableList")
    tableList: option<tableList>,
    @ocaml.doc("<p>A continuation token, present if the current list segment is not the last.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "SearchTablesCommand"
  let make = (
    ~resourceShareType=?,
    ~maxResults=?,
    ~sortCriteria=?,
    ~searchText=?,
    ~filters=?,
    ~nextToken=?,
    ~catalogId=?,
    (),
  ) => new({resourceShareType, maxResults, sortCriteria, searchText, filters, nextToken, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTables = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>"
    )
    @as("QueryAsOfTime")
    queryAsOfTime: option<timestamp_>,
    @ocaml.doc("<p>The transaction ID at which to read the table contents.</p>")
    @as("TransactionId")
    transactionId: option<transactionIdString>,
    @ocaml.doc("<p>The maximum number of tables to return in a single response.</p>")
    @as("MaxResults")
    maxResults: option<catalogGetterPageSize>,
    @ocaml.doc("<p>A continuation token, included if this is a continuation call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A regular expression pattern. If present, only those tables
      whose names match the pattern are returned.</p>")
    @as("Expression")
    expression: option<filterString>,
    @ocaml.doc("<p>The database in the catalog whose tables to list. For Hive
      compatibility, this name is entirely lowercase.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
      ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, present if the current list segment is
      not the last.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of the requested <code>Table</code> objects.</p>") @as("TableList")
    tableList: option<tableList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetTablesCommand"
  let make = (
    ~databaseName,
    ~queryAsOfTime=?,
    ~transactionId=?,
    ~maxResults=?,
    ~nextToken=?,
    ~expression=?,
    ~catalogId=?,
    (),
  ) =>
    new({queryAsOfTime, transactionId, maxResults, nextToken, expression, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTableVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID value of the table version to be retrieved. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1. </p>"
    )
    @as("VersionId")
    versionId: option<versionString>,
    @ocaml.doc("<p>The name of the table. For Hive compatibility,
      this name is entirely lowercase.</p>")
    @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>The database in the catalog in which the table resides. For Hive
      compatibility, this name is entirely lowercase.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
      ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>The requested table version.</p>") @as("TableVersion")
    tableVersion: option<tableVersion>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetTableVersionCommand"
  let make = (~tableName, ~databaseName, ~versionId=?, ~catalogId=?, ()) =>
    new({versionId, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPartitions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The time as of when to read the partition contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>"
    )
    @as("QueryAsOfTime")
    queryAsOfTime: option<timestamp_>,
    @ocaml.doc("<p>The transaction ID at which to read the partition contents.</p>")
    @as("TransactionId")
    transactionId: option<transactionIdString>,
    @ocaml.doc(
      "<p>When true, specifies not returning the partition column schema. Useful when you are interested only in other partition attributes such as partition values or location. This approach avoids the problem of a large response by not returning duplicate data.</p>"
    )
    @as("ExcludeColumnSchema")
    excludeColumnSchema: option<booleanNullable>,
    @ocaml.doc("<p>The maximum number of partitions to return in a single response.</p>")
    @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>The segment of the table's partitions to scan in this request.</p>")
    @as("Segment")
    segment: option<segment>,
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve
      these partitions.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>An expression that filters the partitions to be returned.</p>
         <p>The expression uses SQL syntax similar to the SQL <code>WHERE</code> filter clause. The
      SQL statement parser <a href=\"http://jsqlparser.sourceforge.net/home.php\">JSQLParser</a> parses the expression. </p>
         <p>
            <i>Operators</i>: The following are the operators that you can use in the
        <code>Expression</code> API call:</p>
         <dl>
            <dt>=</dt>
            <dd>
               <p>Checks whether the values of the two operands are equal; if yes, then the condition becomes
            true.</p>
               <p>Example: Assume 'variable a' holds 10 and 'variable b' holds 20. </p>
               <p>(a = b) is not true.</p>
            </dd>
            <dt>< ></dt>
            <dd>
               <p>Checks whether the values of two operands are equal; if the values are not equal,
            then the condition becomes true.</p>
               <p>Example: (a < > b) is true.</p>
            </dd>
            <dt>></dt>
            <dd>
               <p>Checks whether the value of the left operand is greater than the value of the right
            operand; if yes, then the condition becomes true.</p>
               <p>Example: (a > b) is not true.</p>
            </dd>
            <dt><</dt>
            <dd>
               <p>Checks whether the value of the left operand is less than the value of the right
            operand; if yes, then the condition becomes true.</p>
               <p>Example: (a < b) is true.</p>
            </dd>
            <dt>>=</dt>
            <dd>
               <p>Checks whether the value of the left operand is greater than or equal to the value
            of the right operand; if yes, then the condition becomes true.</p>
               <p>Example: (a >= b) is not true.</p>
            </dd>
            <dt><=</dt>
            <dd>
               <p>Checks whether the value of the left operand is less than or equal to the value of
            the right operand; if yes, then the condition becomes true.</p>
               <p>Example: (a <= b) is true.</p>
            </dd>
            <dt>AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL</dt>
            <dd>
               <p>Logical operators.</p>
            </dd>
         </dl>
         <p>
            <i>Supported Partition Key Types</i>: The following are the supported
      partition keys.</p> 
         <ul>
            <li>
               <p>
                  <code>string</code>
               </p>
            </li>
            <li>
               <p>
                  <code>date</code>
               </p>
            </li>
            <li>
               <p>
                  <code>timestamp</code>
               </p>
            </li>
            <li>
               <p>
                  <code>int</code>
               </p>
            </li>
            <li>
               <p>
                  <code>bigint</code>
               </p>
            </li>
            <li>
               <p>
                  <code>long</code>
               </p>
            </li>
            <li>
               <p>
                  <code>tinyint</code>
               </p>
            </li>
            <li>
               <p>
                  <code>smallint</code>
               </p>
            </li>
            <li>
               <p>
                  <code>decimal</code>
               </p>
            </li>
         </ul>
         <p>If an type is encountered that is not valid, an exception is thrown. </p>
         <p>The following list shows the valid operators on each type. When you define a crawler, the
        <code>partitionKey</code> type is created as a <code>STRING</code>, to be compatible with the catalog
      partitions. </p>
  
         <p>
            <i>Sample API Call</i>: </p>")
    @as("Expression")
    expression: option<predicateString>,
    @ocaml.doc("<p>The name of the partitions' table.</p>") @as("TableName") tableName: nameString,
    @ocaml.doc("<p>The name of the catalog database where the partitions reside.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the partitions in question reside. If none is provided,
      the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if the returned list of partitions does not include the last
      one.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of requested partitions.</p>") @as("Partitions")
    partitions: option<partitionList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetPartitionsCommand"
  let make = (
    ~tableName,
    ~databaseName,
    ~queryAsOfTime=?,
    ~transactionId=?,
    ~excludeColumnSchema=?,
    ~maxResults=?,
    ~segment=?,
    ~nextToken=?,
    ~expression=?,
    ~catalogId=?,
    (),
  ) =>
    new({
      queryAsOfTime,
      transactionId,
      excludeColumnSchema,
      maxResults,
      segment,
      nextToken,
      expression,
      tableName,
      databaseName,
      catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMLTransforms = {
  type t
  type request = {
    @ocaml.doc("<p>The sorting criteria.</p>") @as("Sort") sort: option<transformSortCriteria>,
    @ocaml.doc("<p>The filter transformation criteria.</p>") @as("Filter")
    filter: option<transformFilterCriteria>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A paginated token to offset the results.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token, if more results are available.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of machine learning transforms.</p>") @as("Transforms")
    transforms: transformList,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetMLTransformsCommand"
  let make = (~sort=?, ~filter=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({sort, filter, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCrawlers = {
  type t
  type request = {
    @ocaml.doc("<p>A continuation token, if this is a continuation request.</p>") @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The number of crawlers to return on each call.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if the returned list has not reached the end
      of those defined in this customer account.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of crawler metadata.</p>") @as("Crawlers") crawlers: option<crawlerList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetCrawlersCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchGetPartition = {
  type t
  type request = {
    @ocaml.doc("<p>A list of partition values identifying the partitions to retrieve.</p>")
    @as("PartitionsToGet")
    partitionsToGet: batchGetPartitionValueList,
    @ocaml.doc("<p>The name of the partitions' table.</p>") @as("TableName") tableName: nameString,
    @ocaml.doc("<p>The name of the catalog database where the partitions reside.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the partitions in question reside.
      If none is supplied, the Amazon Web Services account ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of the partition values in the request for which partitions were not
      returned.</p>")
    @as("UnprocessedKeys")
    unprocessedKeys: option<batchGetPartitionValueList>,
    @ocaml.doc("<p>A list of the requested partitions.</p>") @as("Partitions")
    partitions: option<partitionList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchGetPartitionCommand"
  let make = (~partitionsToGet, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({partitionsToGet, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchGetCrawlers = {
  type t
  type request = {
    @ocaml.doc("<p>A list of crawler names, which might be the names returned from the
        <code>ListCrawlers</code> operation.</p>")
    @as("CrawlerNames")
    crawlerNames: crawlerNameList,
  }
  type response = {
    @ocaml.doc("<p>A list of names of crawlers that were not found.</p>") @as("CrawlersNotFound")
    crawlersNotFound: option<crawlerNameList>,
    @ocaml.doc("<p>A list of crawler definitions.</p>") @as("Crawlers")
    crawlers: option<crawlerList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchGetCrawlersCommand"
  let make = (~crawlerNames, ()) => new({crawlerNames: crawlerNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchCreatePartition = {
  type t
  type request = {
    @ocaml.doc("<p>A list of <code>PartitionInput</code> structures that define
      the partitions to be created.</p>")
    @as("PartitionInputList")
    partitionInputList: partitionInputList,
    @ocaml.doc("<p>The name of the metadata table in which the partition is to be created.</p>")
    @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>The name of the metadata database in which the partition is
      to be created.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the catalog in which the partition is to be created. Currently, this should be
      the Amazon Web Services account ID.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>The errors encountered when trying to create the requested partitions.</p>")
    @as("Errors")
    errors: option<partitionErrors>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchCreatePartitionCommand"
  let make = (~partitionInputList, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({partitionInputList, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUnfilteredPartitionsMetadata = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("Segment") segment: option<segment>,
    @as("NextToken") nextToken: option<token>,
    @as("SupportedPermissionTypes") supportedPermissionTypes: permissionTypeList,
    @as("AuditContext") auditContext: option<auditContext>,
    @as("Expression") expression: option<predicateString>,
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogId") catalogId: catalogIdString,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("UnfilteredPartitions") unfilteredPartitions: option<unfilteredPartitionList>,
  }
  @module("@aws-sdk/client-glue") @new
  external new: request => t = "GetUnfilteredPartitionsMetadataCommand"
  let make = (
    ~supportedPermissionTypes,
    ~tableName,
    ~databaseName,
    ~catalogId,
    ~maxResults=?,
    ~segment=?,
    ~nextToken=?,
    ~auditContext=?,
    ~expression=?,
    (),
  ) =>
    new({
      maxResults,
      segment,
      nextToken,
      supportedPermissionTypes,
      auditContext,
      expression,
      tableName,
      databaseName,
      catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTableVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of table versions to return in one response.</p>")
    @as("MaxResults")
    maxResults: option<catalogGetterPageSize>,
    @ocaml.doc("<p>A continuation token, if this is not the first call.</p>") @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The name of the table. For Hive
      compatibility, this name is entirely lowercase.</p>")
    @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>The database in the catalog in which the table resides. For Hive
      compatibility, this name is entirely lowercase.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
      ID is used by default.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if the list of available versions does
      not include the last one.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of strings identifying available versions of the
      specified table.</p>")
    @as("TableVersions")
    tableVersions: option<getTableVersionsList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetTableVersionsCommand"
  let make = (~tableName, ~databaseName, ~maxResults=?, ~nextToken=?, ~catalogId=?, ()) =>
    new({maxResults, nextToken, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPartitionIndexes = {
  type t
  type request = {
    @ocaml.doc("<p>A continuation token, included if this is a continuation call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>Specifies the name of a table for which you want to retrieve the partition indexes.</p>"
    )
    @as("TableName")
    tableName: nameString,
    @ocaml.doc(
      "<p>Specifies the name of a database from which you want to retrieve partition indexes.</p>"
    )
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The catalog ID where the table resides.</p>") @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, present if the current list segment is not the last.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of index descriptors.</p>") @as("PartitionIndexDescriptorList")
    partitionIndexDescriptorList: option<partitionIndexDescriptorList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetPartitionIndexesCommand"
  let make = (~tableName, ~databaseName, ~nextToken=?, ~catalogId=?, ()) =>
    new({nextToken, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchUpdatePartition = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of up to 100 <code>BatchUpdatePartitionRequestEntry</code> objects to update.</p>"
    )
    @as("Entries")
    entries: batchUpdatePartitionRequestEntryList,
    @ocaml.doc("<p>The name of the metadata table in which the partition is to be updated.</p>")
    @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>The name of the metadata database in which the partition is
      to be updated.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The ID of the catalog in which the partition is to be updated. Currently, this should be
      the Amazon Web Services account ID.</p>")
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc(
      "<p>The errors encountered when trying to update the requested partitions. A list of <code>BatchUpdatePartitionFailureEntry</code> objects.</p>"
    )
    @as("Errors")
    errors: option<batchUpdatePartitionFailureList>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchUpdatePartitionCommand"
  let make = (~entries, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({entries, tableName, databaseName, catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetWorkflowRun = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether to include the workflow graph in response or not.</p>")
    @as("IncludeGraph")
    includeGraph: option<nullableBoolean>,
    @ocaml.doc("<p>The ID of the workflow run.</p>") @as("RunId") runId: idString,
    @ocaml.doc("<p>Name of the workflow being run.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The requested workflow run metadata.</p>") @as("Run") run: option<workflowRun>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetWorkflowRunCommand"
  let make = (~runId, ~name, ~includeGraph=?, ()) => new({includeGraph, runId, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetWorkflowRuns = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of workflow runs to be included in the response.</p>")
    @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>The maximum size of the response.</p>") @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>Specifies whether to include the workflow graph in response or not.</p>")
    @as("IncludeGraph")
    includeGraph: option<nullableBoolean>,
    @ocaml.doc("<p>Name of the workflow whose metadata of runs should be returned.</p>") @as("Name")
    name: nameString,
  }
  type response = {
    @ocaml.doc(
      "<p>A continuation token, if not all requested workflow runs have been returned.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>A list of workflow run metadata objects.</p>") @as("Runs")
    runs: option<workflowRuns>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetWorkflowRunsCommand"
  let make = (~name, ~maxResults=?, ~nextToken=?, ~includeGraph=?, ()) =>
    new({maxResults, nextToken, includeGraph, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetWorkflow = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether to include a graph when returning the workflow resource metadata.</p>"
    )
    @as("IncludeGraph")
    includeGraph: option<nullableBoolean>,
    @ocaml.doc("<p>The name of the workflow to retrieve.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The resource metadata for the workflow.</p>") @as("Workflow")
    workflow: option<workflow>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "GetWorkflowCommand"
  let make = (~name, ~includeGraph=?, ()) => new({includeGraph, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchGetWorkflows = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether to include a graph when returning the workflow resource metadata.</p>"
    )
    @as("IncludeGraph")
    includeGraph: option<nullableBoolean>,
    @ocaml.doc(
      "<p>A list of workflow names, which may be the names returned from the <code>ListWorkflows</code> operation.</p>"
    )
    @as("Names")
    names: workflowNames,
  }
  type response = {
    @ocaml.doc("<p>A list of names of workflows not found.</p>") @as("MissingWorkflows")
    missingWorkflows: option<workflowNames>,
    @ocaml.doc("<p>A list of workflow resource metadata.</p>") @as("Workflows")
    workflows: option<workflows>,
  }
  @module("@aws-sdk/client-glue") @new external new: request => t = "BatchGetWorkflowsCommand"
  let make = (~names, ~includeGraph=?, ()) => new({includeGraph, names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
