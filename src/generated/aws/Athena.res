type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type datumString = string
type workGroupState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type workGroupName = string
type workGroupDescriptionString = string
type typeString = string
type token = string
type amazonawsTimestamp = Js.Date.t;
type throttleReason = [@as("CONCURRENT_QUERY_LIMIT_EXCEEDED") #CONCURRENT_QUERY_LIMIT_EXCEEDED]
type tagValue = string
type tagKey = string
type tableTypeString = string
type amazonawsString = string
type statementType = [@as("UTILITY") #UTILITY | @as("DML") #DML | @as("DDL") #DDL]
type statementName = string
type queryString = string
type queryExecutionState = [@as("CANCELLED") #CANCELLED | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("RUNNING") #RUNNING | @as("QUEUED") #QUEUED]
type queryExecutionId = string
type parametersMapValue = string
type namedQueryId = string
type nameString = string
type maxWorkGroupsCount = int;
type maxTagsCount = int;
type maxTableMetadataCount = int;
type maxQueryResults = int;
type maxQueryExecutionsCount = int;
type maxPreparedStatementsCount = int;
type maxNamedQueriesCount = int;
type maxEngineVersionsCount = int;
type maxDatabasesCount = int;
type maxDataCatalogsCount = int;
type amazonawsLong = float;
type keyString = string
type amazonawsInteger = int;
type idempotencyToken = string
type expressionString = string
type errorMessage = string
type errorCode = string
type encryptionOption = [@as("CSE_KMS") #CSE_KMS | @as("SSE_KMS") #SSE_KMS | @as("SSE_S3") #SSE_S3]
type descriptionString = string
type date = Js.Date.t;
type databaseString = string
type dataCatalogType = [@as("HIVE") #HIVE | @as("GLUE") #GLUE | @as("LAMBDA") #LAMBDA]
type commentString = string
type columnNullable = [@as("UNKNOWN") #UNKNOWN | @as("NULLABLE") #NULLABLE | @as("NOT_NULL") #NOT_NULL]
type catalogNameString = string
type bytesScannedCutoffValue = float;
type boxedBoolean = bool;
type amazonawsBoolean = bool;
type amazonResourceName = string
type unprocessedQueryExecutionId = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("ErrorCode") errorCode: errorCode,
@as("QueryExecutionId") queryExecutionId: queryExecutionId
}
type unprocessedNamedQueryId = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("ErrorCode") errorCode: errorCode,
@as("NamedQueryId") namedQueryId: namedQueryId
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type queryExecutionStatus = {
@as("CompletionDateTime") completionDateTime: date,
@as("SubmissionDateTime") submissionDateTime: date,
@as("StateChangeReason") stateChangeReason: amazonawsString,
@as("State") state: queryExecutionState
}
type queryExecutionStatistics = {
@as("ServiceProcessingTimeInMillis") serviceProcessingTimeInMillis: amazonawsLong,
@as("QueryPlanningTimeInMillis") queryPlanningTimeInMillis: amazonawsLong,
@as("QueryQueueTimeInMillis") queryQueueTimeInMillis: amazonawsLong,
@as("TotalExecutionTimeInMillis") totalExecutionTimeInMillis: amazonawsLong,
@as("DataManifestLocation") dataManifestLocation: amazonawsString,
@as("DataScannedInBytes") dataScannedInBytes: amazonawsLong,
@as("EngineExecutionTimeInMillis") engineExecutionTimeInMillis: amazonawsLong
}
type queryExecutionIdList = array<queryExecutionId>
type queryExecutionContext = {
@as("Catalog") catalog: catalogNameString,
@as("Database") database: databaseString
}
type preparedStatementSummary = {
@as("LastModifiedTime") lastModifiedTime: date,
@as("StatementName") statementName: statementName
}
type preparedStatement = {
@as("LastModifiedTime") lastModifiedTime: date,
@as("Description") description: descriptionString,
@as("WorkGroupName") workGroupName: workGroupName,
@as("QueryStatement") queryStatement: queryString,
@as("StatementName") statementName: statementName
}
type parametersMap = Js.Dict.t< parametersMapValue>
type namedQueryIdList = array<namedQueryId>
type namedQuery = {
@as("WorkGroup") workGroup: workGroupName,
@as("NamedQueryId") namedQueryId: namedQueryId,
@as("QueryString") queryString: option<queryString>,
@as("Database") database: option<databaseString>,
@as("Description") description: descriptionString,
@as("Name") name: option<nameString>
}
type engineVersion = {
@as("EffectiveEngineVersion") effectiveEngineVersion: nameString,
@as("SelectedEngineVersion") selectedEngineVersion: nameString
}
type encryptionConfiguration = {
@as("KmsKey") kmsKey: amazonawsString,
@as("EncryptionOption") encryptionOption: option<encryptionOption>
}
type datum = {
@as("VarCharValue") varCharValue: datumString
}
type dataCatalogSummary = {
@as("Type") type_: dataCatalogType,
@as("CatalogName") catalogName: catalogNameString
}
type columnInfo = {
@as("CaseSensitive") caseSensitive: amazonawsBoolean,
@as("Nullable") nullable: columnNullable,
@as("Scale") scale: amazonawsInteger,
@as("Precision") precision: amazonawsInteger,
@as("Type") type_: option<amazonawsString>,
@as("Label") label: amazonawsString,
@as("Name") name: option<amazonawsString>,
@as("TableName") tableName: amazonawsString,
@as("SchemaName") schemaName: amazonawsString,
@as("CatalogName") catalogName: amazonawsString
}
type column = {
@as("Comment") comment: commentString,
@as("Type") type_: typeString,
@as("Name") name: option<nameString>
}
type datumList = array<datum>
type workGroupSummary = {
@as("EngineVersion") engineVersion: engineVersion,
@as("CreationTime") creationTime: date,
@as("Description") description: workGroupDescriptionString,
@as("State") state: workGroupState,
@as("Name") name: workGroupName
}
type unprocessedQueryExecutionIdList = array<unprocessedQueryExecutionId>
type unprocessedNamedQueryIdList = array<unprocessedNamedQueryId>
type tagList = array<tag>
type resultConfigurationUpdates = {
@as("RemoveEncryptionConfiguration") removeEncryptionConfiguration: boxedBoolean,
@as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("RemoveOutputLocation") removeOutputLocation: boxedBoolean,
@as("OutputLocation") outputLocation: amazonawsString
}
type resultConfiguration = {
@as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("OutputLocation") outputLocation: amazonawsString
}
type preparedStatementsList = array<preparedStatementSummary>
type namedQueryList = array<namedQuery>
type engineVersionsList = array<engineVersion>
type database = {
@as("Parameters") parameters: parametersMap,
@as("Description") description: descriptionString,
@as("Name") name: option<nameString>
}
type dataCatalogSummaryList = array<dataCatalogSummary>
type dataCatalog = {
@as("Parameters") parameters: parametersMap,
@as("Type") type_: option<dataCatalogType>,
@as("Description") description: descriptionString,
@as("Name") name: option<catalogNameString>
}
type columnList = array<column>
type columnInfoList = array<columnInfo>
type workGroupsList = array<workGroupSummary>
type workGroupConfigurationUpdates = {
@as("EngineVersion") engineVersion: engineVersion,
@as("RequesterPaysEnabled") requesterPaysEnabled: boxedBoolean,
@as("RemoveBytesScannedCutoffPerQuery") removeBytesScannedCutoffPerQuery: boxedBoolean,
@as("BytesScannedCutoffPerQuery") bytesScannedCutoffPerQuery: bytesScannedCutoffValue,
@as("PublishCloudWatchMetricsEnabled") publishCloudWatchMetricsEnabled: boxedBoolean,
@as("ResultConfigurationUpdates") resultConfigurationUpdates: resultConfigurationUpdates,
@as("EnforceWorkGroupConfiguration") enforceWorkGroupConfiguration: boxedBoolean
}
type workGroupConfiguration = {
@as("EngineVersion") engineVersion: engineVersion,
@as("RequesterPaysEnabled") requesterPaysEnabled: boxedBoolean,
@as("BytesScannedCutoffPerQuery") bytesScannedCutoffPerQuery: bytesScannedCutoffValue,
@as("PublishCloudWatchMetricsEnabled") publishCloudWatchMetricsEnabled: boxedBoolean,
@as("EnforceWorkGroupConfiguration") enforceWorkGroupConfiguration: boxedBoolean,
@as("ResultConfiguration") resultConfiguration: resultConfiguration
}
type tableMetadata = {
@as("Parameters") parameters: parametersMap,
@as("PartitionKeys") partitionKeys: columnList,
@as("Columns") columns: columnList,
@as("TableType") tableType: tableTypeString,
@as("LastAccessTime") lastAccessTime: amazonawsTimestamp,
@as("CreateTime") createTime: amazonawsTimestamp,
@as("Name") name: option<nameString>
}
type row = {
@as("Data") data: datumList
}
type resultSetMetadata = {
@as("ColumnInfo") columnInfo: columnInfoList
}
type queryExecution = {
@as("EngineVersion") engineVersion: engineVersion,
@as("WorkGroup") workGroup: workGroupName,
@as("Statistics") statistics: queryExecutionStatistics,
@as("Status") status: queryExecutionStatus,
@as("QueryExecutionContext") queryExecutionContext: queryExecutionContext,
@as("ResultConfiguration") resultConfiguration: resultConfiguration,
@as("StatementType") statementType: statementType,
@as("Query") query: queryString,
@as("QueryExecutionId") queryExecutionId: queryExecutionId
}
type databaseList = array<database>
type workGroup = {
@as("CreationTime") creationTime: date,
@as("Description") description: workGroupDescriptionString,
@as("Configuration") configuration: workGroupConfiguration,
@as("State") state: workGroupState,
@as("Name") name: option<workGroupName>
}
type tableMetadataList = array<tableMetadata>
type rowList = array<row>
type queryExecutionList = array<queryExecution>
type resultSet = {
@as("ResultSetMetadata") resultSetMetadata: resultSetMetadata,
@as("Rows") rows: rowList
}
type clientType;
@module("@aws-sdk/client-athena") @new external createClient: unit => clientType = "AthenaClient";
module UpdatePreparedStatement = {
  type t;
  type request = {
@as("Description") description: descriptionString,
@as("QueryStatement") queryStatement: option<queryString>,
@as("WorkGroup") workGroup: option<workGroupName>,
@as("StatementName") statementName: option<statementName>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "UpdatePreparedStatementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopQueryExecution = {
  type t;
  type request = {
@as("QueryExecutionId") queryExecutionId: option<queryExecutionId>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "StopQueryExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWorkGroup = {
  type t;
  type request = {
@as("RecursiveDeleteOption") recursiveDeleteOption: boxedBoolean,
@as("WorkGroup") workGroup: option<workGroupName>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "DeleteWorkGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePreparedStatement = {
  type t;
  type request = {
@as("WorkGroup") workGroup: option<workGroupName>,
@as("StatementName") statementName: option<statementName>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "DeletePreparedStatementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNamedQuery = {
  type t;
  type request = {
@as("NamedQueryId") namedQueryId: option<namedQueryId>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "DeleteNamedQueryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDataCatalog = {
  type t;
  type request = {
@as("Name") name: option<catalogNameString>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "DeleteDataCatalogCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePreparedStatement = {
  type t;
  type request = {
@as("Description") description: descriptionString,
@as("QueryStatement") queryStatement: option<queryString>,
@as("WorkGroup") workGroup: option<workGroupName>,
@as("StatementName") statementName: option<statementName>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "CreatePreparedStatementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNamedQuery = {
  type t;
  type request = {
@as("WorkGroup") workGroup: workGroupName,
@as("ClientRequestToken") clientRequestToken: idempotencyToken,
@as("QueryString") queryString: option<queryString>,
@as("Database") database: option<databaseString>,
@as("Description") description: descriptionString,
@as("Name") name: option<nameString>
}
  type response = {
@as("NamedQueryId") namedQueryId: namedQueryId
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "CreateNamedQueryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDataCatalog = {
  type t;
  type request = {
@as("Parameters") parameters: parametersMap,
@as("Description") description: descriptionString,
@as("Type") type_: option<dataCatalogType>,
@as("Name") name: option<catalogNameString>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "UpdateDataCatalogCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListQueryExecutions = {
  type t;
  type request = {
@as("WorkGroup") workGroup: workGroupName,
@as("MaxResults") maxResults: maxQueryExecutionsCount,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("QueryExecutionIds") queryExecutionIds: queryExecutionIdList
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "ListQueryExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNamedQueries = {
  type t;
  type request = {
@as("WorkGroup") workGroup: workGroupName,
@as("MaxResults") maxResults: maxNamedQueriesCount,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("NamedQueryIds") namedQueryIds: namedQueryIdList
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "ListNamedQueriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPreparedStatement = {
  type t;
  type request = {
@as("WorkGroup") workGroup: option<workGroupName>,
@as("StatementName") statementName: option<statementName>
}
  type response = {
@as("PreparedStatement") preparedStatement: preparedStatement
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "GetPreparedStatementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetNamedQuery = {
  type t;
  type request = {
@as("NamedQueryId") namedQueryId: option<namedQueryId>
}
  type response = {
@as("NamedQuery") namedQuery: namedQuery
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "GetNamedQueryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartQueryExecution = {
  type t;
  type request = {
@as("WorkGroup") workGroup: workGroupName,
@as("ResultConfiguration") resultConfiguration: resultConfiguration,
@as("QueryExecutionContext") queryExecutionContext: queryExecutionContext,
@as("ClientRequestToken") clientRequestToken: idempotencyToken,
@as("QueryString") queryString: option<queryString>
}
  type response = {
@as("QueryExecutionId") queryExecutionId: queryExecutionId
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "StartQueryExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxTagsCount,
@as("NextToken") nextToken: token,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = {
@as("NextToken") nextToken: token,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPreparedStatements = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxPreparedStatementsCount,
@as("NextToken") nextToken: token,
@as("WorkGroup") workGroup: option<workGroupName>
}
  type response = {
@as("NextToken") nextToken: token,
@as("PreparedStatements") preparedStatements: preparedStatementsList
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "ListPreparedStatementsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEngineVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxEngineVersionsCount,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("EngineVersions") engineVersions: engineVersionsList
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "ListEngineVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDataCatalogs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxDataCatalogsCount,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("DataCatalogsSummary") dataCatalogsSummary: dataCatalogSummaryList
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "ListDataCatalogsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDatabase = {
  type t;
  type request = {
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogName") catalogName: option<catalogNameString>
}
  type response = {
@as("Database") database: database
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "GetDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDataCatalog = {
  type t;
  type request = {
@as("Name") name: option<catalogNameString>
}
  type response = {
@as("DataCatalog") dataCatalog: dataCatalog
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "GetDataCatalogCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataCatalog = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Parameters") parameters: parametersMap,
@as("Description") description: descriptionString,
@as("Type") type_: option<dataCatalogType>,
@as("Name") name: option<catalogNameString>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "CreateDataCatalogCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetNamedQuery = {
  type t;
  type request = {
@as("NamedQueryIds") namedQueryIds: option<namedQueryIdList>
}
  type response = {
@as("UnprocessedNamedQueryIds") unprocessedNamedQueryIds: unprocessedNamedQueryIdList,
@as("NamedQueries") namedQueries: namedQueryList
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "BatchGetNamedQueryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateWorkGroup = {
  type t;
  type request = {
@as("State") state: workGroupState,
@as("ConfigurationUpdates") configurationUpdates: workGroupConfigurationUpdates,
@as("Description") description: workGroupDescriptionString,
@as("WorkGroup") workGroup: option<workGroupName>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "UpdateWorkGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWorkGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxWorkGroupsCount,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("WorkGroups") workGroups: workGroupsList
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "ListWorkGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatabases = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxDatabasesCount,
@as("NextToken") nextToken: token,
@as("CatalogName") catalogName: option<catalogNameString>
}
  type response = {
@as("NextToken") nextToken: token,
@as("DatabaseList") databaseList: databaseList
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "ListDatabasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTableMetadata = {
  type t;
  type request = {
@as("TableName") tableName: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogName") catalogName: option<catalogNameString>
}
  type response = {
@as("TableMetadata") tableMetadata: tableMetadata
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "GetTableMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetQueryExecution = {
  type t;
  type request = {
@as("QueryExecutionId") queryExecutionId: option<queryExecutionId>
}
  type response = {
@as("QueryExecution") queryExecution: queryExecution
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "GetQueryExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWorkGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: workGroupDescriptionString,
@as("Configuration") configuration: workGroupConfiguration,
@as("Name") name: option<workGroupName>
}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "CreateWorkGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTableMetadata = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxTableMetadataCount,
@as("NextToken") nextToken: token,
@as("Expression") expression: expressionString,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogName") catalogName: option<catalogNameString>
}
  type response = {
@as("NextToken") nextToken: token,
@as("TableMetadataList") tableMetadataList: tableMetadataList
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "ListTableMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWorkGroup = {
  type t;
  type request = {
@as("WorkGroup") workGroup: option<workGroupName>
}
  type response = {
@as("WorkGroup") workGroup: workGroup
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "GetWorkGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetQueryExecution = {
  type t;
  type request = {
@as("QueryExecutionIds") queryExecutionIds: option<queryExecutionIdList>
}
  type response = {
@as("UnprocessedQueryExecutionIds") unprocessedQueryExecutionIds: unprocessedQueryExecutionIdList,
@as("QueryExecutions") queryExecutions: queryExecutionList
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "BatchGetQueryExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetQueryResults = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxQueryResults,
@as("NextToken") nextToken: token,
@as("QueryExecutionId") queryExecutionId: option<queryExecutionId>
}
  type response = {
@as("NextToken") nextToken: token,
@as("ResultSet") resultSet: resultSet,
@as("UpdateCount") updateCount: amazonawsLong
}
  @module("@aws-sdk/client-athena") @new external new_: (Js.Promise.t<request>) => t = "GetQueryResultsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
