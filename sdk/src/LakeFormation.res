type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-lakeformation") @new
external createClient: unit => awsServiceClient = "LakeFormationClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workUnitTokenString = string
type workUnitIdLong = float
type valueString = string
type uri = string
type trueFalseString = string
type transactionType = [@as("READ_ONLY") #READ_ONLY | @as("READ_AND_WRITE") #READ_AND_WRITE]
type transactionStatusFilter = [
  | @as("ABORTED") #ABORTED
  | @as("COMMITTED") #COMMITTED
  | @as("ACTIVE") #ACTIVE
  | @as("COMPLETED") #COMPLETED
  | @as("ALL") #ALL
]
type transactionStatus = [
  | @as("COMMIT_IN_PROGRESS") #COMMIT_IN_PROGRESS
  | @as("ABORTED") #ABORTED
  | @as("COMMITTED") #COMMITTED
  | @as("ACTIVE") #ACTIVE
]
type transactionIdString = string
type tokenString = string
type token = string
type timestamp_ = Js.Date.t
@ocaml.doc("<p>A wildcard object representing every table under a database.</p>")
type tableWildcard = {.}
type syntheticStartQueryPlanningRequestQueryString = string
type syntheticGetWorkUnitResultsRequestWorkUnitTokenString = string
type stringValue = string
type storageOptimizerConfigValue = string
type storageOptimizerConfigKey = string
type sessionTokenString = string
type secretAccessKeyString = string
type resultStream = NodeJs.Buffer.t
type result = string
type resourceType = [@as("TABLE") #TABLE | @as("DATABASE") #DATABASE]
type resourceShareType = [@as("ALL") #ALL | @as("FOREIGN") #FOREIGN]
type resourceArnString = string
type ramresourceShareArn = string
type queryStateString = [
  | @as("EXPIRED") #EXPIRED
  | @as("FINISHED") #FINISHED
  | @as("ERROR") #ERROR
  | @as("WORKUNITS_AVAILABLE") #WORKUNITS_AVAILABLE
  | @as("PENDING") #PENDING
]
type queryPlanningContextDatabaseNameString = string
type queryParameterMap = Js.Dict.t<baseString>
type queryIdString = string
type predicateString = string
type permissionType = [
  | @as("CELL_FILTER_PERMISSION") #CELL_FILTER_PERMISSION
  | @as("COLUMN_PERMISSION") #COLUMN_PERMISSION
]
type permission = [
  | @as("ASSOCIATE") #ASSOCIATE
  | @as("CREATE_TAG") #CREATE_TAG
  | @as("DATA_LOCATION_ACCESS") #DATA_LOCATION_ACCESS
  | @as("CREATE_TABLE") #CREATE_TABLE
  | @as("CREATE_DATABASE") #CREATE_DATABASE
  | @as("DESCRIBE") #DESCRIBE
  | @as("INSERT") #INSERT
  | @as("DELETE") #DELETE
  | @as("DROP") #DROP
  | @as("ALTER") #ALTER
  | @as("SELECT") #SELECT
  | @as("ALL") #ALL
]
type partitionValueString = string
type pageSize = int
type optimizerType = [
  | @as("ALL") #ALL
  | @as("GARBAGE_COLLECTION") #GARBAGE_COLLECTION
  | @as("COMPACTION") #COMPACTION
]
type objectSize = float
type numberOfMilliseconds = float
type numberOfItems = float
type numberOfBytes = float
type nullableBoolean = bool
type nameString = string
type messageString = string
type lastModifiedTimestamp = Js.Date.t
type lftagValue = string
type lftagKey = string
type identifier = string
type iamroleArn = string
type getWorkUnitsRequestQueryIdString = string
type getWorkUnitResultsRequestWorkUnitIdLong = float
type getWorkUnitResultsRequestQueryIdString = string
type getQueryStatisticsRequestQueryIdString = string
type getQueryStateRequestQueryIdString = string
type fieldNameString = [
  | @as("LAST_MODIFIED") #LAST_MODIFIED
  | @as("ROLE_ARN") #ROLE_ARN
  | @as("RESOURCE_ARN") #RESOURCE_ARN
]
type expirationTimestamp = Js.Date.t
type errorMessageString = string
type etagString = string
type descriptionString = string
type dateTime = Js.Date.t
type dataLakeResourceType = [
  | @as("LF_TAG_POLICY_TABLE") #LF_TAG_POLICY_TABLE
  | @as("LF_TAG_POLICY_DATABASE") #LF_TAG_POLICY_DATABASE
  | @as("LF_TAG_POLICY") #LF_TAG_POLICY
  | @as("LF_TAG") #LF_TAG
  | @as("DATA_LOCATION") #DATA_LOCATION
  | @as("TABLE") #TABLE
  | @as("DATABASE") #DATABASE
  | @as("CATALOG") #CATALOG
]
type dataLakePrincipalString = string
type credentialTimeoutDurationSecondInteger = int
type comparisonOperator = [
  | @as("BETWEEN") #BETWEEN
  | @as("IN") #IN
  | @as("BEGINS_WITH") #BEGINS_WITH
  | @as("NOT_CONTAINS") #NOT_CONTAINS
  | @as("CONTAINS") #CONTAINS
  | @as("GT") #GT
  | @as("GE") #GE
  | @as("LT") #LT
  | @as("LE") #LE
  | @as("NE") #NE
  | @as("EQ") #EQ
]
@ocaml.doc("<p>A structure for the catalog object.</p>") type catalogResource = {.}
type catalogIdString = string
type booleanNullable = bool
type auditContextString = string
@ocaml.doc("<p>A structure that you pass to indicate you want all rows in a filter. </p>")
type allRowsWildcard = {.}
type accessKeyIdString = string
@ocaml.doc("<p>Defines the valid range of work unit IDs for querying the execution service.</p>")
type workUnitRange = {
  @ocaml.doc("<p>A work token used to query the execution service.</p>") @as("WorkUnitToken")
  workUnitToken: workUnitTokenString,
  @ocaml.doc("<p>Defines the minimum work unit ID in the range.</p>") @as("WorkUnitIdMin")
  workUnitIdMin: workUnitIdLong,
  @ocaml.doc(
    "<p>Defines the maximum work unit ID in the range. The maximum value is inclusive.</p>"
  )
  @as("WorkUnitIdMax")
  workUnitIdMax: workUnitIdLong,
}
@ocaml.doc("<p>An object that defines an Amazon S3 object to be deleted if a transaction cancels, provided that 
      <code>VirtualPut</code> was called before writing the object.</p>")
type virtualObject = {
  @ocaml.doc("<p>The ETag of the Amazon S3 object.</p>") @as("ETag") etag: option<etagString>,
  @ocaml.doc("<p>The path to the Amazon S3 object. Must start with s3://</p>") @as("Uri") uri: uri,
}
type valueStringList = array<valueString>
type trustedResourceOwners = array<catalogIdString>
@ocaml.doc("<p>A structure that contains information about a transaction.</p>")
type transactionDescription = {
  @ocaml.doc(
    "<p>The time when the transaction committed or aborted, if it is not currently active.</p>"
  )
  @as("TransactionEndTime")
  transactionEndTime: option<timestamp_>,
  @ocaml.doc("<p>The time when the transaction started.</p>") @as("TransactionStartTime")
  transactionStartTime: option<timestamp_>,
  @ocaml.doc("<p>A status of ACTIVE, COMMITTED, or ABORTED.</p>") @as("TransactionStatus")
  transactionStatus: option<transactionStatus>,
  @ocaml.doc("<p>The ID of the transaction.</p>") @as("TransactionId")
  transactionId: option<transactionIdString>,
}
type tagValueList = array<lftagValue>
@ocaml.doc(
  "<p>A structure for the table object. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>"
)
type tableResource = {
  @ocaml.doc("<p>A wildcard object representing every table under a database.</p>

         <p>At least one of <code>TableResource$Name</code> or <code>TableResource$TableWildcard</code> is required.</p>")
  @as("TableWildcard")
  tableWildcard: option<tableWildcard>,
  @ocaml.doc("<p>The name of the table.</p>") @as("Name") name: option<nameString>,
  @ocaml.doc(
    "<p>The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal. </p>"
  )
  @as("DatabaseName")
  databaseName: nameString,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
@ocaml.doc("<p>Specifies the details of a governed table.</p>")
type tableObject = {
  @ocaml.doc("<p>The size of the Amazon S3 object in bytes.</p>") @as("Size")
  size: option<objectSize>,
  @ocaml.doc(
    "<p>The Amazon S3 ETag of the object. Returned by <code>GetTableObjects</code> for validation and used to identify changes to the underlying data.</p>"
  )
  @as("ETag")
  etag: option<etagString>,
  @ocaml.doc("<p>The Amazon S3 location of the object.</p>") @as("Uri") uri: option<uri>,
}
type stringValueList = array<stringValue>
type storageOptimizerConfig = Js.Dict.t<storageOptimizerConfigValue>
@ocaml.doc("<p>A PartiQL predicate.</p>")
type rowFilter = {
  @ocaml.doc("<p>A wildcard for all rows.</p>") @as("AllRowsWildcard")
  allRowsWildcard: option<allRowsWildcard>,
  @ocaml.doc("<p>A filter expression.</p>") @as("FilterExpression")
  filterExpression: option<predicateString>,
}
type resourceShareList = array<ramresourceShareArn>
@ocaml.doc("<p>A structure containing information about an Lake Formation resource.</p>")
type resourceInfo = {
  @ocaml.doc("<p>The date and time the resource was last modified.</p>") @as("LastModified")
  lastModified: option<lastModifiedTimestamp>,
  @ocaml.doc("<p>The IAM role that registered a resource.</p>") @as("RoleArn")
  roleArn: option<iamroleArn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
  resourceArn: option<resourceArnString>,
}
@ocaml.doc("<p>A structure containing information about the query plan.</p>")
type queryPlanningContext = {
  @ocaml.doc(
    "<p>The transaction ID at which to read the table contents. If this transaction is not committed, the read will be treated as part of that transaction and will see its writes. If this transaction has aborted, an error will be returned. If not set, defaults to the most recent committed transaction. Cannot be specified along with <code>QueryAsOfTime</code>.</p>"
  )
  @as("TransactionId")
  transactionId: option<transactionIdString>,
  @ocaml.doc("<p>A map consisting of key-value pairs.</p>") @as("QueryParameters")
  queryParameters: option<queryParameterMap>,
  @ocaml.doc(
    "<p>The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>"
  )
  @as("QueryAsOfTime")
  queryAsOfTime: option<timestamp_>,
  @ocaml.doc("<p>The database containing the table.</p>") @as("DatabaseName")
  databaseName: queryPlanningContextDatabaseNameString,
  @ocaml.doc(
    "<p>The ID of the Data Catalog where the partition in question resides. If none is provided, the Amazon Web Services account ID is used by default.</p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
@ocaml.doc("<p>Statistics related to the processing of a query statement.</p>")
type planningStatistics = {
  @ocaml.doc("<p>The number of work units generated.</p>") @as("WorkUnitsGeneratedCount")
  workUnitsGeneratedCount: option<numberOfItems>,
  @ocaml.doc("<p>The time the request was in queue to be processed.</p>") @as("QueueTimeMillis")
  queueTimeMillis: option<numberOfMilliseconds>,
  @ocaml.doc("<p>The time that it took to process the request.</p>") @as("PlanningTimeMillis")
  planningTimeMillis: option<numberOfMilliseconds>,
  @ocaml.doc("<p>An estimate of the data that was scanned in bytes.</p>")
  @as("EstimatedDataToScanBytes")
  estimatedDataToScanBytes: option<numberOfBytes>,
}
type permissionTypeList = array<permissionType>
type permissionList = array<permission>
type partitionValuesList = array<partitionValueString>
@ocaml.doc("<p>Statistics related to the processing of a query statement.</p>")
type executionStatistics = {
  @ocaml.doc("<p>The number of work units executed.</p>") @as("WorkUnitsExecutedCount")
  workUnitsExecutedCount: option<numberOfItems>,
  @ocaml.doc("<p>The amount of data that was scanned in bytes.</p>") @as("DataScannedBytes")
  dataScannedBytes: option<numberOfBytes>,
  @ocaml.doc("<p>The average time the request took to be executed.</p>")
  @as("AverageExecutionTimeMillis")
  averageExecutionTimeMillis: option<numberOfMilliseconds>,
}
@ocaml.doc("<p>Contains details about an error.</p>")
type errorDetail = {
  @ocaml.doc("<p>A message describing the error.</p>") @as("ErrorMessage")
  errorMessage: option<descriptionString>,
  @ocaml.doc("<p>The code associated with this error.</p>") @as("ErrorCode")
  errorCode: option<nameString>,
}
@ocaml.doc("<p>A structure for the database object.</p>")
type databaseResource = {
  @ocaml.doc("<p>The name of the database resource. Unique to the Data Catalog.</p>") @as("Name")
  name: nameString,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
@ocaml.doc(
  "<p>A structure for a data location object where permissions are granted or revoked. </p>"
)
type dataLocationResource = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) that uniquely identifies the data location resource.</p>"
  )
  @as("ResourceArn")
  resourceArn: resourceArnString,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.</p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
@ocaml.doc("<p>The Lake Formation principal. Supported principals are IAM users
      or IAM roles.</p>")
type dataLakePrincipal = {
  @ocaml.doc("<p>An identifier for the Lake Formation principal.</p>")
  @as("DataLakePrincipalIdentifier")
  dataLakePrincipalIdentifier: option<dataLakePrincipalString>,
}
@ocaml.doc("<p>A structure for a data cells filter resource. </p>")
type dataCellsFilterResource = {
  @ocaml.doc("<p>The name of the data cells filter. </p>") @as("Name") name: option<nameString>,
  @ocaml.doc("<p>The name of the table.</p>") @as("TableName") tableName: option<nameString>,
  @ocaml.doc("<p>A database in the Glue Data Catalog.</p>") @as("DatabaseName")
  databaseName: option<nameString>,
  @ocaml.doc("<p>The ID of the catalog to which the table belongs.</p>") @as("TableCatalogId")
  tableCatalogId: option<catalogIdString>,
}
type columnNames = array<nameString>
type authorizedSessionTagValueList = array<nameString>
@ocaml.doc("<p>A structure used to include auditing information on the privileged API. </p>")
type auditContext = {
  @ocaml.doc(
    "<p>The filter engine can populate the 'AdditionalAuditContext' information with the request ID for you to track. This information will be displayed in CloudTrail log in your account.</p>"
  )
  @as("AdditionalAuditContext")
  additionalAuditContext: option<auditContextString>,
}
type workUnitRangeList = array<workUnitRange>
type virtualObjectList = array<virtualObject>
type transactionDescriptionList = array<transactionDescription>
type tableObjectList = array<tableObject>
type storageOptimizerConfigMap = Js.Dict.t<storageOptimizerConfig>
@ocaml.doc("<p>A structure describing the configuration and details of a storage optimizer.</p>")
type storageOptimizer = {
  @ocaml.doc(
    "<p>When an acceleration result has an enabled status, contains the details of the last job run.</p>"
  )
  @as("LastRunDetails")
  lastRunDetails: option<messageString>,
  @ocaml.doc("<p>A message that contains information about any warnings (if present).</p>")
  @as("Warnings")
  warnings: option<messageString>,
  @ocaml.doc("<p>A message that contains information about any error (if present).</p>
	
	        <p>When an acceleration result has an enabled status, the error message is empty.</p> 
	        <p>When an acceleration result has a disabled status, the message describes an error or simply indicates \"disabled by the user\".</p>")
  @as("ErrorMessage")
  errorMessage: option<messageString>,
  @ocaml.doc(
    "<p>A map of the storage optimizer configuration. Currently contains only one key-value pair: <code>is_enabled</code> indicates true or false for acceleration.</p>"
  )
  @as("Config")
  config: option<storageOptimizerConfig>,
  @ocaml.doc(
    "<p>The specific type of storage optimizer. The supported value is <code>compaction</code>.</p>"
  )
  @as("StorageOptimizerType")
  storageOptimizerType: option<optimizerType>,
}
type resourceInfoList = array<resourceInfo>
@ocaml.doc("<p>Permissions granted to a principal.</p>")
type principalPermissions = {
  @ocaml.doc("<p>The permissions that are granted to the principal.</p>") @as("Permissions")
  permissions: option<permissionList>,
  @ocaml.doc("<p>The principal who is granted permissions.</p>") @as("Principal")
  principal: option<dataLakePrincipal>,
}
@ocaml.doc("<p>Contains a list of values defining partitions.</p>")
type partitionValueList = {
  @ocaml.doc("<p>The list of partition values.</p>") @as("Values") values: valueStringList,
}
@ocaml.doc("<p>A structure containing an LF-tag key-value pair.</p>")
type lftagPair = {
  @ocaml.doc("<p>A list of possible values an attribute can take.</p>") @as("TagValues")
  tagValues: tagValueList,
  @ocaml.doc("<p>The key-name for the LF-tag.</p>") @as("TagKey") tagKey: lftagKey,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
@ocaml.doc("<p>A structure containing an LF-tag key and values for a resource.</p>")
type lftagKeyResource = {
  @ocaml.doc("<p>A list of possible values an attribute can take.</p>") @as("TagValues")
  tagValues: tagValueList,
  @ocaml.doc("<p>The key-name for the LF-tag.</p>") @as("TagKey") tagKey: nameString,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
@ocaml.doc(
  "<p>A structure that allows an admin to grant user permissions on certain conditions. For example, granting a role access to all columns that do not have the LF-tag 'PII' in tables that have the LF-tag 'Prod'.</p>"
)
type lftag = {
  @ocaml.doc("<p>A list of possible values an attribute can take.</p>") @as("TagValues")
  tagValues: tagValueList,
  @ocaml.doc("<p>The key-name for the LF-tag.</p>") @as("TagKey") tagKey: lftagKey,
}
@ocaml.doc(
  "<p>This structure describes the filtering of columns in a table based on a filter condition.</p>"
)
type filterCondition = {
  @ocaml.doc("<p>A string with values used in evaluating the filter condition.</p>")
  @as("StringValueList")
  stringValueList: option<stringValueList>,
  @ocaml.doc("<p>The comparison operator used in the filter condition.</p>")
  @as("ComparisonOperator")
  comparisonOperator: option<comparisonOperator>,
  @ocaml.doc("<p>The field to filter in the filter condition.</p>") @as("Field")
  field: option<fieldNameString>,
}
@ocaml.doc("<p>A structure containing the additional details to be returned in the <code>AdditionalDetails</code> attribute of <code>PrincipalResourcePermissions</code>.</p>
  
         <p>If a catalog resource is shared through Resource Access Manager (RAM), then there will exist a corresponding RAM resource share ARN.</p>")
type detailsMap = {
  @ocaml.doc("<p>A resource share ARN for a catalog resource shared through RAM.</p>")
  @as("ResourceShare")
  resourceShare: option<resourceShareList>,
}
@ocaml.doc("<p>An object to delete from the governed table.</p>")
type deleteObjectInput = {
  @ocaml.doc(
    "<p>A list of partition values for the object. A value must be specified for each partition key associated with the governed table.</p>"
  )
  @as("PartitionValues")
  partitionValues: option<partitionValuesList>,
  @ocaml.doc(
    "<p>The Amazon S3 ETag of the object. Returned by <code>GetTableObjects</code> for validation and used to identify changes to the underlying data.</p>"
  )
  @as("ETag")
  etag: option<etagString>,
  @ocaml.doc("<p>The Amazon S3 location of the object to delete.</p>") @as("Uri") uri: uri,
}
type dataLakePrincipalList = array<dataLakePrincipal>
@ocaml.doc(
  "<p>A wildcard object, consisting of an optional list of excluded column names or indexes.</p>"
)
type columnWildcard = {
  @ocaml.doc("<p>Excludes column names. Any column with this name will be excluded.</p>")
  @as("ExcludedColumnNames")
  excludedColumnNames: option<columnNames>,
}
@ocaml.doc("<p>A new object to add to the governed table.</p>")
type addObjectInput = {
  @ocaml.doc("<p>A list of partition values for the object. A value must be specified for each partition key associated with the table.</p>
	        <p>The supported data types are integer, long, date(yyyy-MM-dd), timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss\"), string and decimal.</p>")
  @as("PartitionValues")
  partitionValues: option<partitionValuesList>,
  @ocaml.doc("<p>The size of the Amazon S3 object in bytes.</p>") @as("Size") size: objectSize,
  @ocaml.doc(
    "<p>The Amazon S3 ETag of the object. Returned by <code>GetTableObjects</code> for validation and used to identify changes to the underlying data.</p>"
  )
  @as("ETag")
  etag: etagString,
  @ocaml.doc("<p>The Amazon S3 location of the object.</p>") @as("Uri") uri: uri,
}
@ocaml.doc("<p>Defines an object to add to or delete from a governed table.</p>")
type writeOperation = {
  @ocaml.doc("<p>An object to delete from the governed table.</p>") @as("DeleteObject")
  deleteObject: option<deleteObjectInput>,
  @ocaml.doc("<p>A new object to add to the governed table.</p>") @as("AddObject")
  addObject: option<addObjectInput>,
}
@ocaml.doc("<p>A structure for a table with columns object. This object is only used when granting a SELECT permission.</p>
	        <p>This object must take a value for at least one of <code>ColumnsNames</code>, <code>ColumnsIndexes</code>, or <code>ColumnsWildcard</code>.</p>")
type tableWithColumnsResource = {
  @ocaml.doc(
    "<p>A wildcard specified by a <code>ColumnWildcard</code> object. At least one of <code>ColumnNames</code> or <code>ColumnWildcard</code> is required.</p>"
  )
  @as("ColumnWildcard")
  columnWildcard: option<columnWildcard>,
  @ocaml.doc(
    "<p>The list of column names for the table. At least one of <code>ColumnNames</code> or <code>ColumnWildcard</code> is required.</p>"
  )
  @as("ColumnNames")
  columnNames: option<columnNames>,
  @ocaml.doc(
    "<p>The name of the table resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>"
  )
  @as("Name")
  name: nameString,
  @ocaml.doc(
    "<p>The name of the database for the table with columns resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal. </p>"
  )
  @as("DatabaseName")
  databaseName: nameString,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
type storageOptimizerList = array<storageOptimizer>
type principalPermissionsList = array<principalPermissions>
@ocaml.doc("<p>A structure containing a list of partition values and table objects.</p>")
type partitionObjects = {
  @ocaml.doc("<p>A list of table objects</p>") @as("Objects") objects: option<tableObjectList>,
  @ocaml.doc("<p>A list of partition values.</p>") @as("PartitionValues")
  partitionValues: option<partitionValuesList>,
}
type lftagsList = array<lftagPair>
@ocaml.doc(
  "<p>A structure containing an error related to a <code>TagResource</code> or <code>UnTagResource</code> operation.</p>"
)
type lftagError = {
  @ocaml.doc("<p>An error that occurred with the attachment or detachment of the LF-tag.</p>")
  @as("Error")
  error: option<errorDetail>,
  @ocaml.doc("<p>The key-name of the LF-tag.</p>") @as("LFTag") lftag: option<lftagPair>,
}
type filterConditionList = array<filterCondition>
type expression = array<lftag>
@ocaml.doc("<p>A structure that describes certain columns on certain rows.</p>")
type dataCellsFilter = {
  @ocaml.doc("<p>A wildcard with exclusions.</p>
    
         <p>You must specify either a <code>ColumnNames</code> list or the
      <code>ColumnWildCard</code>. </p>")
  @as("ColumnWildcard")
  columnWildcard: option<columnWildcard>,
  @ocaml.doc("<p>A list of column names.</p>") @as("ColumnNames") columnNames: option<columnNames>,
  @ocaml.doc("<p>A PartiQL predicate.</p>") @as("RowFilter") rowFilter: option<rowFilter>,
  @ocaml.doc("<p>The name given by the user to the data filter cell.</p>") @as("Name")
  name: nameString,
  @ocaml.doc("<p>A table in the database.</p>") @as("TableName") tableName: nameString,
  @ocaml.doc("<p>A database in the Glue Data Catalog.</p>") @as("DatabaseName")
  databaseName: nameString,
  @ocaml.doc("<p>The ID of the catalog to which the table belongs.</p>") @as("TableCatalogId")
  tableCatalogId: catalogIdString,
}
type writeOperationList = array<writeOperation>
@ocaml.doc("<p>A structure describing a database resource with LF-tags.</p>")
type taggedDatabase = {
  @ocaml.doc("<p>A list of LF-tags attached to the database.</p>") @as("LFTags")
  lftags: option<lftagsList>,
  @ocaml.doc("<p>A database that has LF-tags attached to it.</p>") @as("Database")
  database: option<databaseResource>,
}
type partitionedTableObjectsList = array<partitionObjects>
@ocaml.doc(
  "<p>A structure containing a list of LF-tag conditions that apply to a resource's LF-tag policy.</p>"
)
type lftagPolicyResource = {
  @ocaml.doc("<p>A list of LF-tag conditions that apply to the resource's LF-tag policy.</p>")
  @as("Expression")
  expression: expression,
  @ocaml.doc("<p>The resource type for which the LF-tag policy applies.</p>") @as("ResourceType")
  resourceType: resourceType,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
type lftagErrors = array<lftagError>
@ocaml.doc(
  "<p>A structure representing a list of Lake Formation principals designated as data lake administrators and lists of principal permission entries for default create database and default create table permissions.</p>"
)
type dataLakeSettings = {
  @ocaml.doc(
    "<p>Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it. Lake Formation will publish the acceptable key-value pair, for example key = \"LakeFormationTrustedCaller\" and value = \"TRUE\" and the third party integrator must properly tag the temporary security credentials that will be used to call Lake Formation's administrative APIs.</p>"
  )
  @as("AuthorizedSessionTagValueList")
  authorizedSessionTagValueList: option<authorizedSessionTagValueList>,
  @ocaml.doc(
    "<p>A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.></p>"
  )
  @as("ExternalDataFilteringAllowList")
  externalDataFilteringAllowList: option<dataLakePrincipalList>,
  @ocaml.doc("<p>Whether to allow Amazon EMR clusters to access data managed by Lake Formation. </p>
	
         <p>If true, you allow Amazon EMR clusters to access data in Amazon S3 locations that are registered with Lake Formation.</p>
	
         <p>If false or null, no Amazon EMR clusters will be able to access data in Amazon S3 locations that are registered with Lake Formation.</p>
 
         <p>For more information, see <a href=\"https://docs-aws.amazon.com/lake-formation/latest/dg/getting-started-setup.html#emr-switch\">(Optional) Allow Data Filtering on Amazon EMR</a>.</p>")
  @as("AllowExternalDataFiltering")
  allowExternalDataFiltering: option<nullableBoolean>,
  @ocaml.doc("<p>A list of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs). The user ARNs can be logged in the resource owner's CloudTrail log.</p>
	
	        <p>You may want to specify this property when you are in a high-trust boundary, such as the same team or company. </p>")
  @as("TrustedResourceOwners")
  trustedResourceOwners: option<trustedResourceOwners>,
  @ocaml.doc("<p>Specifies whether access control on newly created table is managed by Lake Formation permissions or exclusively by IAM permissions.</p>
	 
         <p>A null value indicates access control by Lake Formation permissions. A value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access control by IAM permissions. This is referred to as the setting \"Use only IAM access control,\" and is for backward compatibility with the Glue permission model implemented by IAM permissions.</p>
	
	        <p>The only permitted values are an empty array or an array that contains a single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.</p>
  
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html\">Changing the Default Security Settings for Your Data Lake</a>.</p>")
  @as("CreateTableDefaultPermissions")
  createTableDefaultPermissions: option<principalPermissionsList>,
  @ocaml.doc("<p>Specifies whether access control on newly created database is managed by Lake Formation permissions or exclusively by IAM permissions. You can override this default setting when you create a database.</p>
	 
         <p>A null value indicates access control by Lake Formation permissions. A value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access control by IAM permissions. This is referred to as the setting \"Use only IAM access control,\" and is for backward compatibility with the Glue permission model implemented by IAM permissions.</p>
	
	        <p>The only permitted values are an empty array or an array that contains a single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.</p>

         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html\">Changing the Default Security Settings for Your Data Lake</a>.</p>")
  @as("CreateDatabaseDefaultPermissions")
  createDatabaseDefaultPermissions: option<principalPermissionsList>,
  @ocaml.doc(
    "<p>A list of Lake Formation principals. Supported principals are IAM users or IAM roles.</p>"
  )
  @as("DataLakeAdmins")
  dataLakeAdmins: option<dataLakePrincipalList>,
}
type dataCellsFilterList = array<dataCellsFilter>
@ocaml.doc(
  "<p>A structure containing the name of a column resource and the LF-tags attached to it.</p>"
)
type columnLFTag = {
  @ocaml.doc("<p>The LF-tags attached to a column resource.</p>") @as("LFTags")
  lftags: option<lftagsList>,
  @ocaml.doc("<p>The name of a column resource.</p>") @as("Name") name: option<nameString>,
}
@ocaml.doc("<p>A structure for the resource.</p>")
type resource = {
  @ocaml.doc("<p>A list of LF-tag conditions that define a resource's LF-tag policy.</p>")
  @as("LFTagPolicy")
  lftagPolicy: option<lftagPolicyResource>,
  @ocaml.doc("<p>The LF-tag key and values attached to a resource.</p>") @as("LFTag")
  lftag: option<lftagKeyResource>,
  @ocaml.doc("<p>A data cell filter.</p>") @as("DataCellsFilter")
  dataCellsFilter: option<dataCellsFilterResource>,
  @ocaml.doc("<p>The location of an Amazon S3 path where permissions are granted or revoked. </p>")
  @as("DataLocation")
  dataLocation: option<dataLocationResource>,
  @ocaml.doc(
    "<p>The table with columns for the resource. A principal with permissions to this resource can select metadata from the columns of a table in the Data Catalog and the underlying data in Amazon S3.</p>"
  )
  @as("TableWithColumns")
  tableWithColumns: option<tableWithColumnsResource>,
  @ocaml.doc(
    "<p>The table for the resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>"
  )
  @as("Table")
  table: option<tableResource>,
  @ocaml.doc(
    "<p>The database for the resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database permissions to a principal. </p>"
  )
  @as("Database")
  database: option<databaseResource>,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
  )
  @as("Catalog")
  catalog: option<catalogResource>,
}
type databaseLFTagsList = array<taggedDatabase>
type columnLFTagsList = array<columnLFTag>
@ocaml.doc("<p>A structure describing a table resource with LF-tags.</p>")
type taggedTable = {
  @ocaml.doc("<p>A list of LF-tags attached to columns in the table.</p>") @as("LFTagsOnColumns")
  lftagsOnColumns: option<columnLFTagsList>,
  @ocaml.doc("<p>A list of LF-tags attached to the table.</p>") @as("LFTagsOnTable")
  lftagsOnTable: option<lftagsList>,
  @ocaml.doc("<p>A list of LF-tags attached to the database where the table resides.</p>")
  @as("LFTagOnDatabase")
  lftagOnDatabase: option<lftagsList>,
  @ocaml.doc("<p>A table that has LF-tags attached to it.</p>") @as("Table")
  table: option<tableResource>,
}
@ocaml.doc("<p>The permissions granted or revoked on a resource.</p>")
type principalResourcePermissions = {
  @ocaml.doc(
    "<p>This attribute can be used to return any additional details of <code>PrincipalResourcePermissions</code>. Currently returns only as a RAM resource share ARN.</p>"
  )
  @as("AdditionalDetails")
  additionalDetails: option<detailsMap>,
  @ocaml.doc(
    "<p>Indicates whether to grant the ability to grant permissions (as a subset of permissions granted).</p>"
  )
  @as("PermissionsWithGrantOption")
  permissionsWithGrantOption: option<permissionList>,
  @ocaml.doc("<p>The permissions to be granted or revoked on the resource.</p>") @as("Permissions")
  permissions: option<permissionList>,
  @ocaml.doc("<p>The resource where permissions are to be granted or revoked.</p>") @as("Resource")
  resource: option<resource>,
  @ocaml.doc("<p>The Data Lake principal to be granted or revoked permissions.</p>")
  @as("Principal")
  principal: option<dataLakePrincipal>,
}
@ocaml.doc("<p>A permission to a resource granted by batch operation to the principal.</p>")
type batchPermissionsRequestEntry = {
  @ocaml.doc("<p>Indicates if the option to pass permissions is granted.</p>")
  @as("PermissionsWithGrantOption")
  permissionsWithGrantOption: option<permissionList>,
  @ocaml.doc("<p>The permissions to be granted.</p>") @as("Permissions")
  permissions: option<permissionList>,
  @ocaml.doc("<p>The resource to which the principal is to be granted a permission.</p>")
  @as("Resource")
  resource: option<resource>,
  @ocaml.doc("<p>The principal to be granted a permission.</p>") @as("Principal")
  principal: option<dataLakePrincipal>,
  @ocaml.doc("<p>A unique identifier for the batch permissions request entry.</p>") @as("Id")
  id: identifier,
}
type tableLFTagsList = array<taggedTable>
type principalResourcePermissionsList = array<principalResourcePermissions>
type batchPermissionsRequestEntryList = array<batchPermissionsRequestEntry>
@ocaml.doc("<p>A list of failures when performing a batch grant or batch revoke operation.</p>")
type batchPermissionsFailureEntry = {
  @ocaml.doc("<p>An error message that applies to the failure of the entry.</p>") @as("Error")
  error: option<errorDetail>,
  @ocaml.doc("<p>An identifier for an entry of the batch request.</p>") @as("RequestEntry")
  requestEntry: option<batchPermissionsRequestEntry>,
}
type batchPermissionsFailureList = array<batchPermissionsFailureEntry>
@ocaml.doc("<fullname>Lake Formation</fullname>
         <p>Defines the public endpoint for the Lake Formation service.</p>")
module UpdateResource = {
  type t
  type request = {
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceArn") resourceArn: resourceArnString,
    @ocaml.doc("<p>The new role to use for the given resource registered in Lake Formation.</p>")
    @as("RoleArn")
    roleArn: iamroleArn,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "UpdateResourceCommand"
  let make = (~resourceArn, ~roleArn, ()) => new({resourceArn: resourceArn, roleArn: roleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartTransaction = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Indicates whether this transaction should be read only or read and write. Writes made using a read-only transaction ID will be rejected. Read-only transactions do not need to be committed. </p>"
    )
    @as("TransactionType")
    transactionType: option<transactionType>,
  }
  type response = {
    @ocaml.doc("<p>An opaque identifier for the transaction.</p>") @as("TransactionId")
    transactionId: option<transactionIdString>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "StartTransactionCommand"
  let make = (~transactionType=?, ()) => new({transactionType: transactionType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterResource = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the role that registers the resource.</p>") @as("RoleArn")
    roleArn: option<iamroleArn>,
    @ocaml.doc("<p>Designates an Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog. A service-linked role is a unique type of IAM role that is linked directly to Lake Formation.</p>
 
         <p>For more information, see <a href=\"https://docs-aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html\">Using Service-Linked Roles for Lake Formation</a>.</p>")
    @as("UseServiceLinkedRole")
    useServiceLinkedRole: option<nullableBoolean>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that you want to register.</p>")
    @as("ResourceArn")
    resourceArn: resourceArnString,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "RegisterResourceCommand"
  let make = (~resourceArn, ~roleArn=?, ~useServiceLinkedRole=?, ()) =>
    new({roleArn: roleArn, useServiceLinkedRole: useServiceLinkedRole, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetWorkUnitResults = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A work token used to query the execution service. Token output from <code>GetWorkUnits</code>.</p>"
    )
    @as("WorkUnitToken")
    workUnitToken: syntheticGetWorkUnitResultsRequestWorkUnitTokenString,
    @ocaml.doc(
      "<p>The work unit ID for which to get results. Value generated by enumerating <code>WorkUnitIdMin</code> to <code>WorkUnitIdMax</code> (inclusive) from the <code>WorkUnitRange</code> in the output of <code>GetWorkUnits</code>.</p>"
    )
    @as("WorkUnitId")
    workUnitId: getWorkUnitResultsRequestWorkUnitIdLong,
    @ocaml.doc("<p>The ID of the plan query operation for which to get results.</p>") @as("QueryId")
    queryId: getWorkUnitResultsRequestQueryIdString,
  }
  @ocaml.doc("<p>A structure for the output.</p>")
  type response = {
    @ocaml.doc(
      "<p>Rows returned from the <code>GetWorkUnitResults</code> operation as a stream of Apache Arrow v1.0 messages.</p>"
    )
    @as("ResultStream")
    resultStream: option<resultStream>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GetWorkUnitResultsCommand"
  let make = (~workUnitToken, ~workUnitId, ~queryId, ()) =>
    new({workUnitToken: workUnitToken, workUnitId: workUnitId, queryId: queryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQueryState = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the plan query operation.</p>") @as("QueryId")
    queryId: getQueryStateRequestQueryIdString,
  }
  @ocaml.doc("<p>A structure for the output.</p>")
  type response = {
    @ocaml.doc("<p>The state of a query previously submitted. The possible states are:</p>
	
	        <ul>
            <li>
               <p>PENDING: the query is pending.</p>
            </li>
            <li>
               <p>WORKUNITS_AVAILABLE: some work units are ready for retrieval and execution.</p>
            </li>
            <li>
               <p>FINISHED: the query planning finished successfully, and all work units are ready for retrieval and execution.</p>
            </li>
            <li>
               <p>ERROR: an error occurred with the query, such as an invalid query ID or a backend error.</p>
            </li>
         </ul>")
    @as("State")
    state: queryStateString,
    @ocaml.doc("<p>An error message when the operation fails.</p>") @as("Error")
    error: option<errorMessageString>,
  }
  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "GetQueryStateCommand"
  let make = (~queryId, ()) => new({queryId: queryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExtendTransaction = {
  type t
  type request = {
    @ocaml.doc("<p>The transaction to extend.</p>") @as("TransactionId")
    transactionId: option<transactionIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "ExtendTransactionCommand"
  let make = (~transactionId=?, ()) => new({transactionId: transactionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that you want to deregister.</p>")
    @as("ResourceArn")
    resourceArn: resourceArnString,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "DeregisterResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLFTag = {
  type t
  type request = {
    @ocaml.doc("<p>The key-name for the LF-tag to delete.</p>") @as("TagKey") tagKey: lftagKey,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "DeleteLFTagCommand"
  let make = (~tagKey, ~catalogId=?, ()) => new({tagKey: tagKey, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataCellsFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The name given by the user to the data filter cell.</p>") @as("Name")
    name: option<nameString>,
    @ocaml.doc("<p>A table in the database.</p>") @as("TableName") tableName: option<nameString>,
    @ocaml.doc("<p>A database in the Glue Data Catalog.</p>") @as("DatabaseName")
    databaseName: option<nameString>,
    @ocaml.doc("<p>The ID of the catalog to which the table belongs.</p>") @as("TableCatalogId")
    tableCatalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "DeleteDataCellsFilterCommand"
  let make = (~name=?, ~tableName=?, ~databaseName=?, ~tableCatalogId=?, ()) =>
    new({
      name: name,
      tableName: tableName,
      databaseName: databaseName,
      tableCatalogId: tableCatalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CommitTransaction = {
  type t
  type request = {
    @ocaml.doc("<p>The transaction to commit.</p>") @as("TransactionId")
    transactionId: transactionIdString,
  }
  type response = {
    @ocaml.doc("<p>The status of the transaction.</p>") @as("TransactionStatus")
    transactionStatus: option<transactionStatus>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "CommitTransactionCommand"
  let make = (~transactionId, ()) => new({transactionId: transactionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelTransaction = {
  type t
  type request = {
    @ocaml.doc("<p>The transaction to cancel.</p>") @as("TransactionId")
    transactionId: transactionIdString,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "CancelTransactionCommand"
  let make = (~transactionId, ()) => new({transactionId: transactionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateLFTag = {
  type t
  type request = {
    @ocaml.doc("<p>A list of LF-tag values to add from the LF-tag.</p>") @as("TagValuesToAdd")
    tagValuesToAdd: option<tagValueList>,
    @ocaml.doc("<p>A list of LF-tag values to delete from the LF-tag.</p>") @as("TagValuesToDelete")
    tagValuesToDelete: option<tagValueList>,
    @ocaml.doc("<p>The key-name for the LF-tag for which to add or delete values.</p>")
    @as("TagKey")
    tagKey: lftagKey,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "UpdateLFTagCommand"
  let make = (~tagKey, ~tagValuesToAdd=?, ~tagValuesToDelete=?, ~catalogId=?, ()) =>
    new({
      tagValuesToAdd: tagValuesToAdd,
      tagValuesToDelete: tagValuesToDelete,
      tagKey: tagKey,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartQueryPlanning = {
  type t
  type request = {
    @ocaml.doc("<p>A PartiQL query statement used as an input to the planner service.</p>")
    @as("QueryString")
    queryString: syntheticStartQueryPlanningRequestQueryString,
    @ocaml.doc("<p>A structure containing information about the query plan.</p>")
    @as("QueryPlanningContext")
    queryPlanningContext: queryPlanningContext,
  }
  @ocaml.doc("<p>A structure for the output.</p>")
  type response = {
    @ocaml.doc(
      "<p>The ID of the plan query operation can be used to fetch the actual work unit descriptors that are produced as the result of the operation. The ID is also used to get the query state and as an input to the <code>Execute</code> operation.</p>"
    )
    @as("QueryId")
    queryId: queryIdString,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "StartQueryPlanningCommand"
  let make = (~queryString, ~queryPlanningContext, ()) =>
    new({queryString: queryString, queryPlanningContext: queryPlanningContext})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTemporaryGlueTableCredentials = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of supported permission types for the table. Valid values are <code>COLUMN_PERMISSION</code> and <code>CELL_FILTER_PERMISSION</code>.</p>"
    )
    @as("SupportedPermissionTypes")
    supportedPermissionTypes: permissionTypeList,
    @ocaml.doc(
      "<p>A structure representing context to access a resource (column names, query ID, etc).</p>"
    )
    @as("AuditContext")
    auditContext: option<auditContext>,
    @ocaml.doc(
      "<p>The time period, between 900 and 21,600 seconds, for the timeout of the temporary credentials.</p>"
    )
    @as("DurationSeconds")
    durationSeconds: option<credentialTimeoutDurationSecondInteger>,
    @ocaml.doc(
      "<p>Filters the request based on the user having been granted a list of specified permissions on the requested resource(s).</p>"
    )
    @as("Permissions")
    permissions: option<permissionList>,
    @ocaml.doc(
      "<p>The ARN identifying a table in the Data Catalog for the temporary credentials request.</p>"
    )
    @as("TableArn")
    tableArn: resourceArnString,
  }
  type response = {
    @ocaml.doc("<p>The date and time when the temporary credentials expire.</p>") @as("Expiration")
    expiration: option<expirationTimestamp>,
    @ocaml.doc("<p>The session token for the temporary credentials.</p>") @as("SessionToken")
    sessionToken: option<sessionTokenString>,
    @ocaml.doc("<p>The secret key for the temporary credentials.</p>") @as("SecretAccessKey")
    secretAccessKey: option<secretAccessKeyString>,
    @ocaml.doc("<p>The access key ID for the temporary credentials.</p>") @as("AccessKeyId")
    accessKeyId: option<accessKeyIdString>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GetTemporaryGlueTableCredentialsCommand"
  let make = (
    ~supportedPermissionTypes,
    ~tableArn,
    ~auditContext=?,
    ~durationSeconds=?,
    ~permissions=?,
    (),
  ) =>
    new({
      supportedPermissionTypes: supportedPermissionTypes,
      auditContext: auditContext,
      durationSeconds: durationSeconds,
      permissions: permissions,
      tableArn: tableArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQueryStatistics = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the plan query operation.</p>") @as("QueryId")
    queryId: getQueryStatisticsRequestQueryIdString,
  }
  type response = {
    @ocaml.doc("<p>The time that the query was submitted.</p>") @as("QuerySubmissionTime")
    querySubmissionTime: option<dateTime>,
    @ocaml.doc(
      "<p>A <code>PlanningStatistics</code> structure containing query planning statistics.</p>"
    )
    @as("PlanningStatistics")
    planningStatistics: option<planningStatistics>,
    @ocaml.doc(
      "<p>An <code>ExecutionStatistics</code> structure containing execution statistics.</p>"
    )
    @as("ExecutionStatistics")
    executionStatistics: option<executionStatistics>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GetQueryStatisticsCommand"
  let make = (~queryId, ()) => new({queryId: queryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLFTag = {
  type t
  type request = {
    @ocaml.doc("<p>The key-name for the LF-tag.</p>") @as("TagKey") tagKey: lftagKey,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of possible values an attribute can take.</p>") @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>The key-name for the LF-tag.</p>") @as("TagKey") tagKey: option<lftagKey>,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "GetLFTagCommand"
  let make = (~tagKey, ~catalogId=?, ()) => new({tagKey: tagKey, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTransaction = {
  type t
  type request = {
    @ocaml.doc("<p>The transaction for which to return status.</p>") @as("TransactionId")
    transactionId: transactionIdString,
  }
  type response = {
    @ocaml.doc(
      "<p>Returns a <code>TransactionDescription</code> object containing information about the transaction.</p>"
    )
    @as("TransactionDescription")
    transactionDescription: option<transactionDescription>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "DescribeTransactionCommand"
  let make = (~transactionId, ()) => new({transactionId: transactionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResource = {
  type t
  type request = {
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceArn") resourceArn: resourceArnString,
  }
  type response = {
    @ocaml.doc("<p>A structure containing information about an Lake Formation resource.</p>")
    @as("ResourceInfo")
    resourceInfo: option<resourceInfo>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "DescribeResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLFTag = {
  type t
  type request = {
    @ocaml.doc("<p>A list of possible values an attribute can take.</p>") @as("TagValues")
    tagValues: tagValueList,
    @ocaml.doc("<p>The key-name for the LF-tag.</p>") @as("TagKey") tagKey: lftagKey,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "CreateLFTagCommand"
  let make = (~tagValues, ~tagKey, ~catalogId=?, ()) =>
    new({tagValues: tagValues, tagKey: tagKey, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateTableStorageOptimizer = {
  type t
  type request = {
    @ocaml.doc("<p>Name of the table for which to enable the storage optimizer.</p>")
    @as("StorageOptimizerConfig")
    storageOptimizerConfig: storageOptimizerConfigMap,
    @ocaml.doc("<p>Name of the table for which to enable the storage optimizer.</p>")
    @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>Name of the database where the table is present.</p>") @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The Catalog ID of the table.</p>") @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A response indicating the success of failure of the operation.</p>")
    @as("Result")
    result: option<result>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "UpdateTableStorageOptimizerCommand"
  let make = (~storageOptimizerConfig, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({
      storageOptimizerConfig: storageOptimizerConfig,
      tableName: tableName,
      databaseName: databaseName,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTransactions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A continuation token if this is not the first call to retrieve transactions.</p>"
    )
    @as("NextToken")
    nextToken: option<tokenString>,
    @ocaml.doc("<p>The maximum number of transactions to return in a single call.</p>")
    @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc(
      "<p> A filter indicating the status of transactions to return. Options are ALL | COMPLETED | COMMITTED | ABORTED | ACTIVE. The default is <code>ALL</code>.</p>"
    )
    @as("StatusFilter")
    statusFilter: option<transactionStatusFilter>,
    @ocaml.doc(
      "<p>The catalog for which to list transactions. Defaults to the account ID of the caller.</p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token indicating whether additional data is available.</p>")
    @as("NextToken")
    nextToken: option<tokenString>,
    @ocaml.doc(
      "<p>A list of transactions. The record for each transaction is a <code>TransactionDescription</code> object.</p>"
    )
    @as("Transactions")
    transactions: option<transactionDescriptionList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "ListTransactionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~statusFilter=?, ~catalogId=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      statusFilter: statusFilter,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorkUnits = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the plan query operation.</p>") @as("QueryId")
    queryId: getWorkUnitsRequestQueryIdString,
    @ocaml.doc(
      "<p>The size of each page to get in the Amazon Web Services service call. This does not affect the number of items returned in the command's output. Setting a smaller page size results in more calls to the Amazon Web Services service, retrieving fewer items in each call. This can help prevent the Amazon Web Services service calls from timing out.</p>"
    )
    @as("PageSize")
    pageSize: option<baseInteger>,
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<token>,
  }
  @ocaml.doc("<p>A structure for the output.</p>")
  type response = {
    @ocaml.doc(
      "<p>A <code>WorkUnitRangeList</code> object that specifies the valid range of work unit IDs for querying the execution service.</p>"
    )
    @as("WorkUnitRanges")
    workUnitRanges: workUnitRangeList,
    @ocaml.doc("<p>The ID of the plan query operation.</p>") @as("QueryId") queryId: queryIdString,
    @ocaml.doc(
      "<p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
  }
  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "GetWorkUnitsCommand"
  let make = (~queryId, ~pageSize=?, ~nextToken=?, ()) =>
    new({queryId: queryId, pageSize: pageSize, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTemporaryGluePartitionCredentials = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of supported permission types for the partition. Valid values are <code>COLUMN_PERMISSION</code> and <code>CELL_FILTER_PERMISSION</code>.</p>"
    )
    @as("SupportedPermissionTypes")
    supportedPermissionTypes: permissionTypeList,
    @ocaml.doc(
      "<p>A structure representing context to access a resource (column names, query ID, etc).</p>"
    )
    @as("AuditContext")
    auditContext: option<auditContext>,
    @ocaml.doc(
      "<p>The time period, between 900 and 21,600 seconds, for the timeout of the temporary credentials.</p>"
    )
    @as("DurationSeconds")
    durationSeconds: option<credentialTimeoutDurationSecondInteger>,
    @ocaml.doc(
      "<p>Filters the request based on the user having been granted a list of specified permissions on the requested resource(s).</p>"
    )
    @as("Permissions")
    permissions: option<permissionList>,
    @ocaml.doc("<p>A list of partition values identifying a single partition.</p>") @as("Partition")
    partition: partitionValueList,
    @ocaml.doc("<p>The ARN of the partitions' table.</p>") @as("TableArn")
    tableArn: resourceArnString,
  }
  type response = {
    @ocaml.doc("<p>The date and time when the temporary credentials expire.</p>") @as("Expiration")
    expiration: option<expirationTimestamp>,
    @ocaml.doc("<p>The session token for the temporary credentials.</p>") @as("SessionToken")
    sessionToken: option<sessionTokenString>,
    @ocaml.doc("<p>The secret key for the temporary credentials.</p>") @as("SecretAccessKey")
    secretAccessKey: option<secretAccessKeyString>,
    @ocaml.doc("<p>The access key ID for the temporary credentials.</p>") @as("AccessKeyId")
    accessKeyId: option<accessKeyIdString>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GetTemporaryGluePartitionCredentialsCommand"
  let make = (
    ~supportedPermissionTypes,
    ~partition,
    ~tableArn,
    ~auditContext=?,
    ~durationSeconds=?,
    ~permissions=?,
    (),
  ) =>
    new({
      supportedPermissionTypes: supportedPermissionTypes,
      auditContext: auditContext,
      durationSeconds: durationSeconds,
      permissions: permissions,
      partition: partition,
      tableArn: tableArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteObjectsOnCancel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of VirtualObject structures, which indicates the Amazon S3 objects to be deleted if the transaction cancels.</p>"
    )
    @as("Objects")
    objects: virtualObjectList,
    @ocaml.doc("<p>ID of the transaction that the writes occur in.</p>") @as("TransactionId")
    transactionId: transactionIdString,
    @ocaml.doc("<p>The name of the governed table.</p>") @as("TableName") tableName: nameString,
    @ocaml.doc("<p>The database that contains the governed table.</p>") @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc(
      "<p>The Glue data catalog that contains the governed table. Defaults to the current account ID.</p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "DeleteObjectsOnCancelCommand"
  let make = (~objects, ~transactionId, ~tableName, ~databaseName, ~catalogId=?, ()) =>
    new({
      objects: objects,
      transactionId: transactionId,
      tableName: tableName,
      databaseName: databaseName,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTableStorageOptimizers = {
  type t
  type request = {
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The number of storage optimizers to return on each call.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc(
      "<p>The specific type of storage optimizers to list. The supported value is <code>compaction</code>.</p>"
    )
    @as("StorageOptimizerType")
    storageOptimizerType: option<optimizerType>,
    @ocaml.doc("<p>Name of the table.</p>") @as("TableName") tableName: nameString,
    @ocaml.doc("<p>Name of the database where the table is present.</p>") @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The Catalog ID of the table.</p>") @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc(
      "<p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of the storage optimizers associated with a table.</p>")
    @as("StorageOptimizerList")
    storageOptimizerList: option<storageOptimizerList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "ListTableStorageOptimizersCommand"
  let make = (
    ~tableName,
    ~databaseName,
    ~nextToken=?,
    ~maxResults=?,
    ~storageOptimizerType=?,
    ~catalogId=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      storageOptimizerType: storageOptimizerType,
      tableName: tableName,
      databaseName: databaseName,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResources = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A continuation token, if this is not the first call to retrieve these resources.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of resource results.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc(
      "<p>Any applicable row-level and/or column-level filtering conditions for the resources.</p>"
    )
    @as("FilterConditionList")
    filterConditionList: option<filterConditionList>,
  }
  type response = {
    @ocaml.doc(
      "<p>A continuation token, if this is not the first call to retrieve these resources.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A summary of the data lake resources.</p>") @as("ResourceInfoList")
    resourceInfoList: option<resourceInfoList>,
  }
  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "ListResourcesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filterConditionList=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filterConditionList: filterConditionList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLFTags = {
  type t
  type request = {
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc(
      "<p>If resource share type is <code>ALL</code>, returns both in-account LF-tags and shared LF-tags that the requester has permission to view. If resource share type is <code>FOREIGN</code>, returns all share LF-tags that the requester can view. If no resource share type is passed, lists LF-tags in the given catalog ID that the requester has permission to view.</p>"
    )
    @as("ResourceShareType")
    resourceShareType: option<resourceShareType>,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, present if the current list segment is not the last.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of LF-tags that the requested has permission to view.</p>") @as("LFTags")
    lftags: option<lftagsList>,
  }
  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "ListLFTagsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~resourceShareType=?, ~catalogId=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      resourceShareType: resourceShareType,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataCellsFilter = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A <code>DataCellsFilter</code> structure containing information about the data cells filter.</p>"
    )
    @as("TableData")
    tableData: dataCellsFilter,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "CreateDataCellsFilterCommand"
  let make = (~tableData, ()) => new({tableData: tableData})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateTableObjects = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of <code>WriteOperation</code> objects that define an object to add to or delete from the manifest for a governed table.</p>"
    )
    @as("WriteOperations")
    writeOperations: writeOperationList,
    @ocaml.doc("<p>The transaction at which to do the write.</p>") @as("TransactionId")
    transactionId: option<transactionIdString>,
    @ocaml.doc("<p>The governed table to update.</p>") @as("TableName") tableName: nameString,
    @ocaml.doc("<p>The database containing the governed table to update.</p>") @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc(
      "<p>The catalog containing the governed table to update. Defaults to the caller’s account ID.</p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "UpdateTableObjectsCommand"
  let make = (~writeOperations, ~tableName, ~databaseName, ~transactionId=?, ~catalogId=?, ()) =>
    new({
      writeOperations: writeOperations,
      transactionId: transactionId,
      tableName: tableName,
      databaseName: databaseName,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutDataLakeSettings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A structure representing a list of Lake Formation principals designated as data lake administrators.</p>"
    )
    @as("DataLakeSettings")
    dataLakeSettings: dataLakeSettings,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "PutDataLakeSettingsCommand"
  let make = (~dataLakeSettings, ~catalogId=?, ()) =>
    new({dataLakeSettings: dataLakeSettings, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListDataCellsFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum size of the response.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is a continuation call.</p>") @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A table in the Glue Data Catalog.</p>") @as("Table")
    table: option<tableResource>,
  }
  type response = {
    @ocaml.doc(
      "<p>A continuation token, if not all requested data cell filters have been returned.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of <code>DataCellFilter</code> structures.</p>") @as("DataCellsFilters")
    dataCellsFilters: option<dataCellsFilterList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "ListDataCellsFilterCommand"
  let make = (~maxResults=?, ~nextToken=?, ~table=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, table: table})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTableObjects = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A continuation token if this is not the first call to retrieve these objects.</p>"
    )
    @as("NextToken")
    nextToken: option<tokenString>,
    @ocaml.doc("<p>Specifies how many values to return in a page.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A predicate to filter the objects returned based on the partition keys defined in the governed table.</p>
	        <ul>
            <li>
               <p>The comparison operators supported are: =, >, <, >=, <=</p>
            </li>
            <li>
               <p>The logical operators supported are: AND</p>
            </li>
            <li>
               <p>The data types supported are integer, long, date(yyyy-MM-dd), timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss\"), string and decimal.</p>
            </li>
         </ul>")
    @as("PartitionPredicate")
    partitionPredicate: option<predicateString>,
    @ocaml.doc(
      "<p>The time as of when to read the governed table contents. If not set, the most recent transaction commit time is used. Cannot be specified along with <code>TransactionId</code>.</p>"
    )
    @as("QueryAsOfTime")
    queryAsOfTime: option<timestamp_>,
    @ocaml.doc(
      "<p>The transaction ID at which to read the governed table contents. If this transaction has aborted, an error is returned. If not set, defaults to the most recent committed transaction. Cannot be specified along with <code>QueryAsOfTime</code>.</p>"
    )
    @as("TransactionId")
    transactionId: option<transactionIdString>,
    @ocaml.doc("<p>The governed table for which to retrieve objects.</p>") @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>The database containing the governed table.</p>") @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc(
      "<p>The catalog containing the governed table. Defaults to the caller’s account.</p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token indicating whether additional data is available.</p>")
    @as("NextToken")
    nextToken: option<tokenString>,
    @ocaml.doc("<p>A list of objects organized by partition keys.</p>") @as("Objects")
    objects: option<partitionedTableObjectsList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GetTableObjectsCommand"
  let make = (
    ~tableName,
    ~databaseName,
    ~nextToken=?,
    ~maxResults=?,
    ~partitionPredicate=?,
    ~queryAsOfTime=?,
    ~transactionId=?,
    ~catalogId=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      partitionPredicate: partitionPredicate,
      queryAsOfTime: queryAsOfTime,
      transactionId: transactionId,
      tableName: tableName,
      databaseName: databaseName,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDataLakeSettings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc(
      "<p>A structure representing a list of Lake Formation principals designated as data lake administrators.</p>"
    )
    @as("DataLakeSettings")
    dataLakeSettings: option<dataLakeSettings>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GetDataLakeSettingsCommand"
  let make = (~catalogId=?, ()) => new({catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchDatabasesByLFTags = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of conditions (<code>LFTag</code> structures) to search for in database resources.</p>"
    )
    @as("Expression")
    expression: expression,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>A list of databases that meet the LF-tag conditions.</p>") @as("DatabaseList")
    databaseList: option<databaseLFTagsList>,
    @ocaml.doc("<p>A continuation token, present if the current list segment is not the last.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "SearchDatabasesByLFTagsCommand"
  let make = (~expression, ~catalogId=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      expression: expression,
      catalogId: catalogId,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokePermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Indicates a list of permissions for which to revoke the grant option allowing the principal to pass permissions to other principals.</p>"
    )
    @as("PermissionsWithGrantOption")
    permissionsWithGrantOption: option<permissionList>,
    @ocaml.doc("<p>The permissions revoked to the principal on the resource. For information about permissions, see <a href=\"https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html\">Security
      and Access Control to Metadata and Data</a>.</p>")
    @as("Permissions")
    permissions: permissionList,
    @ocaml.doc("<p>The resource to which permissions are to be revoked.</p>") @as("Resource")
    resource: resource,
    @ocaml.doc("<p>The principal to be revoked permissions on the resource.</p>") @as("Principal")
    principal: dataLakePrincipal,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "RevokePermissionsCommand"
  let make = (
    ~permissions,
    ~resource,
    ~principal,
    ~permissionsWithGrantOption=?,
    ~catalogId=?,
    (),
  ) =>
    new({
      permissionsWithGrantOption: permissionsWithGrantOption,
      permissions: permissions,
      resource: resource,
      principal: principal,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveLFTagsFromResource = {
  type t
  type request = {
    @ocaml.doc("<p>The LF-tags to be removed from the resource.</p>") @as("LFTags")
    lftags: lftagsList,
    @ocaml.doc("<p>The database, table, or column resource where you want to remove an LF-tag.</p>")
    @as("Resource")
    resource: resource,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of failures to untag a resource.</p>") @as("Failures")
    failures: option<lftagErrors>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "RemoveLFTagsFromResourceCommand"
  let make = (~lftags, ~resource, ~catalogId=?, ()) =>
    new({lftags: lftags, resource: resource, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GrantPermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Indicates a list of the granted permissions that the principal may pass to other users. These permissions may only be a subset of the permissions granted in the <code>Privileges</code>.</p>"
    )
    @as("PermissionsWithGrantOption")
    permissionsWithGrantOption: option<permissionList>,
    @ocaml.doc(
      "<p>The permissions granted to the principal on the resource. Lake Formation defines privileges to grant and revoke access to metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. Lake Formation requires that each principal be authorized to perform a specific task on Lake Formation resources. </p>"
    )
    @as("Permissions")
    permissions: permissionList,
    @ocaml.doc(
      "<p>The resource to which permissions are to be granted. Resources in Lake Formation are the Data Catalog, databases, and tables.</p>"
    )
    @as("Resource")
    resource: resource,
    @ocaml.doc("<p>The principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles, and they are defined by their principal type and their ARN.</p>
	        <p>Note that if you define a resource with a particular ARN, then later delete, and recreate a resource with that same ARN, the resource maintains the permissions already granted. </p>")
    @as("Principal")
    principal: dataLakePrincipal,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {.}
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GrantPermissionsCommand"
  let make = (
    ~permissions,
    ~resource,
    ~principal,
    ~permissionsWithGrantOption=?,
    ~catalogId=?,
    (),
  ) =>
    new({
      permissionsWithGrantOption: permissionsWithGrantOption,
      permissions: permissions,
      resource: resource,
      principal: principal,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetResourceLFTags = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to show the assigned LF-tags.</p>") @as("ShowAssignedLFTags")
    showAssignedLFTags: option<booleanNullable>,
    @ocaml.doc(
      "<p>The database, table, or column resource for which you want to return LF-tags.</p>"
    )
    @as("Resource")
    resource: resource,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of LF-tags applied to a column resource.</p>") @as("LFTagsOnColumns")
    lftagsOnColumns: option<columnLFTagsList>,
    @ocaml.doc("<p>A list of LF-tags applied to a table resource.</p>") @as("LFTagsOnTable")
    lftagsOnTable: option<lftagsList>,
    @ocaml.doc("<p>A list of LF-tags applied to a database resource.</p>") @as("LFTagOnDatabase")
    lftagOnDatabase: option<lftagsList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GetResourceLFTagsCommand"
  let make = (~resource, ~showAssignedLFTags=?, ~catalogId=?, ()) =>
    new({showAssignedLFTags: showAssignedLFTags, resource: resource, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddLFTagsToResource = {
  type t
  type request = {
    @ocaml.doc("<p>The LF-tags to attach to the resource.</p>") @as("LFTags") lftags: lftagsList,
    @ocaml.doc("<p>The database, table, or column resource to which to attach an LF-tag.</p>")
    @as("Resource")
    resource: resource,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of failures to tag the resource.</p>") @as("Failures")
    failures: option<lftagErrors>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "AddLFTagsToResourceCommand"
  let make = (~lftags, ~resource, ~catalogId=?, ()) =>
    new({lftags: lftags, resource: resource, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchTablesByLFTags = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of conditions (<code>LFTag</code> structures) to search for in table resources.</p>"
    )
    @as("Expression")
    expression: expression,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>A list of tables that meet the LF-tag conditions.</p>") @as("TableList")
    tableList: option<tableLFTagsList>,
    @ocaml.doc("<p>A continuation token, present if the current list segment is not the last.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "SearchTablesByLFTagsCommand"
  let make = (~expression, ~catalogId=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      expression: expression,
      catalogId: catalogId,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates that related permissions should be included in the results.</p>")
    @as("IncludeRelated")
    includeRelated: option<trueFalseString>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A resource where you will get a list of the principal permissions.</p>
         <p>This operation does not support getting privileges on a table with columns. Instead, call this operation on the table, and the operation returns the table and the table w columns.</p>")
    @as("Resource")
    resource: option<resource>,
    @ocaml.doc("<p>Specifies a resource type to filter the permissions returned.</p>")
    @as("ResourceType")
    resourceType: option<dataLakeResourceType>,
    @ocaml.doc("<p>Specifies a principal to filter the permissions returned.</p>") @as("Principal")
    principal: option<dataLakePrincipal>,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>A list of principals and their permissions on the resource for the specified principal and resource types.</p>"
    )
    @as("PrincipalResourcePermissions")
    principalResourcePermissions: option<principalResourcePermissionsList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "ListPermissionsCommand"
  let make = (
    ~includeRelated=?,
    ~maxResults=?,
    ~nextToken=?,
    ~resource=?,
    ~resourceType=?,
    ~principal=?,
    ~catalogId=?,
    (),
  ) =>
    new({
      includeRelated: includeRelated,
      maxResults: maxResults,
      nextToken: nextToken,
      resource: resource,
      resourceType: resourceType,
      principal: principal,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEffectivePermissionsForPath = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource for which you want to get permissions.</p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArnString,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>A list of the permissions for the specified table or database resource located at the path in Amazon S3.</p>"
    )
    @as("Permissions")
    permissions: option<principalResourcePermissionsList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GetEffectivePermissionsForPathCommand"
  let make = (~resourceArn, ~maxResults=?, ~nextToken=?, ~catalogId=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resourceArn: resourceArn,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchRevokePermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of up to 20 entries for resource permissions to be revoked by batch operation to the principal.</p>"
    )
    @as("Entries")
    entries: batchPermissionsRequestEntryList,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of failures to revoke permissions to the resources.</p>") @as("Failures")
    failures: option<batchPermissionsFailureList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "BatchRevokePermissionsCommand"
  let make = (~entries, ~catalogId=?, ()) => new({entries: entries, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGrantPermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of up to 20 entries for resource permissions to be granted by batch operation to the principal.</p>"
    )
    @as("Entries")
    entries: batchPermissionsRequestEntryList,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of failures to grant permissions to the resources.</p>") @as("Failures")
    failures: option<batchPermissionsFailureList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "BatchGrantPermissionsCommand"
  let make = (~entries, ~catalogId=?, ()) => new({entries: entries, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
