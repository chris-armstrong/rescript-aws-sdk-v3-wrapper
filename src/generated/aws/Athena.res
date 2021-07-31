type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-athena") @new
external createClient: unit => awsServiceClient = "AthenaClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type datumString = string
type workGroupState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type workGroupName = string
type workGroupDescriptionString = string
type typeString = string
type token = string
type timestamp_ = Js.Date.t
type throttleReason = [@as("CONCURRENT_QUERY_LIMIT_EXCEEDED") #CONCURRENT_QUERY_LIMIT_EXCEEDED]
type tagValue = string
type tagKey = string
type tableTypeString = string
type string_ = string
type statementType = [@as("UTILITY") #UTILITY | @as("DML") #DML | @as("DDL") #DDL]
type statementName = string
type queryString = string
type queryExecutionState = [
  | @as("CANCELLED") #CANCELLED
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("RUNNING") #RUNNING
  | @as("QUEUED") #QUEUED
]
type queryExecutionId = string
type parametersMapValue = string
type namedQueryId = string
type nameString = string
type maxWorkGroupsCount = int
type maxTagsCount = int
type maxTableMetadataCount = int
type maxQueryResults = int
type maxQueryExecutionsCount = int
type maxPreparedStatementsCount = int
type maxNamedQueriesCount = int
type maxEngineVersionsCount = int
type maxDatabasesCount = int
type maxDataCatalogsCount = int
type long = float
type keyString = string
type integer_ = int
type idempotencyToken = string
type expressionString = string
type errorMessage = string
type errorCode = string
type encryptionOption = [@as("CSE_KMS") #CSE_KMS | @as("SSE_KMS") #SSE_KMS | @as("SSE_S3") #SSE_S3]
type descriptionString = string
type date = Js.Date.t
type databaseString = string
type dataCatalogType = [@as("HIVE") #HIVE | @as("GLUE") #GLUE | @as("LAMBDA") #LAMBDA]
type commentString = string
type columnNullable = [
  | @as("UNKNOWN") #UNKNOWN
  | @as("NULLABLE") #NULLABLE
  | @as("NOT_NULL") #NOT_NULL
]
type catalogNameString = string
type bytesScannedCutoffValue = float
type boxedBoolean = bool
type boolean_ = bool
type amazonResourceName = string
type unprocessedQueryExecutionId = {
  @as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("QueryExecutionId") queryExecutionId: option<queryExecutionId>,
}
type unprocessedNamedQueryId = {
  @as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("NamedQueryId") namedQueryId: option<namedQueryId>,
}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: option<tagValue>,
  @as("Key") key: option<tagKey>,
}
type queryExecutionStatus = {
  @as("CompletionDateTime") completionDateTime: option<date>,
  @as("SubmissionDateTime") submissionDateTime: option<date>,
  @as("StateChangeReason") stateChangeReason: option<string_>,
  @as("State") state: option<queryExecutionState>,
}
type queryExecutionStatistics = {
  @as("ServiceProcessingTimeInMillis") serviceProcessingTimeInMillis: option<long>,
  @as("QueryPlanningTimeInMillis") queryPlanningTimeInMillis: option<long>,
  @as("QueryQueueTimeInMillis") queryQueueTimeInMillis: option<long>,
  @as("TotalExecutionTimeInMillis") totalExecutionTimeInMillis: option<long>,
  @as("DataManifestLocation") dataManifestLocation: option<string_>,
  @as("DataScannedInBytes") dataScannedInBytes: option<long>,
  @as("EngineExecutionTimeInMillis") engineExecutionTimeInMillis: option<long>,
}
type queryExecutionIdList = array<queryExecutionId>
type queryExecutionContext = {
  @as("Catalog") catalog: option<catalogNameString>,
  @as("Database") database: option<databaseString>,
}
type preparedStatementSummary = {
  @as("LastModifiedTime") lastModifiedTime: option<date>,
  @as("StatementName") statementName: option<statementName>,
}
type preparedStatement = {
  @as("LastModifiedTime") lastModifiedTime: option<date>,
  @as("Description") description: option<descriptionString>,
  @as("WorkGroupName") workGroupName: option<workGroupName>,
  @as("QueryStatement") queryStatement: option<queryString>,
  @as("StatementName") statementName: option<statementName>,
}
type parametersMap = Js.Dict.t<parametersMapValue>
type namedQueryIdList = array<namedQueryId>
type namedQuery = {
  @as("WorkGroup") workGroup: option<workGroupName>,
  @as("NamedQueryId") namedQueryId: option<namedQueryId>,
  @as("QueryString") queryString: queryString,
  @as("Database") database: databaseString,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: nameString,
}
type engineVersion = {
  @as("EffectiveEngineVersion") effectiveEngineVersion: option<nameString>,
  @as("SelectedEngineVersion") selectedEngineVersion: option<nameString>,
}
type encryptionConfiguration = {
  @as("KmsKey") kmsKey: option<string_>,
  @as("EncryptionOption") encryptionOption: encryptionOption,
}
type datum = {@as("VarCharValue") varCharValue: option<datumString>}
type dataCatalogSummary = {
  @as("Type") type_: option<dataCatalogType>,
  @as("CatalogName") catalogName: option<catalogNameString>,
}
type columnInfo = {
  @as("CaseSensitive") caseSensitive: option<boolean_>,
  @as("Nullable") nullable: option<columnNullable>,
  @as("Scale") scale: option<integer_>,
  @as("Precision") precision: option<integer_>,
  @as("Type") type_: string_,
  @as("Label") label: option<string_>,
  @as("Name") name: string_,
  @as("TableName") tableName: option<string_>,
  @as("SchemaName") schemaName: option<string_>,
  @as("CatalogName") catalogName: option<string_>,
}
type column = {
  @as("Comment") comment: option<commentString>,
  @as("Type") type_: option<typeString>,
  @as("Name") name: nameString,
}
type datumList = array<datum>
type workGroupSummary = {
  @as("EngineVersion") engineVersion: option<engineVersion>,
  @as("CreationTime") creationTime: option<date>,
  @as("Description") description: option<workGroupDescriptionString>,
  @as("State") state: option<workGroupState>,
  @as("Name") name: option<workGroupName>,
}
type unprocessedQueryExecutionIdList = array<unprocessedQueryExecutionId>
type unprocessedNamedQueryIdList = array<unprocessedNamedQueryId>
type tagList_ = array<tag>
type resultConfigurationUpdates = {
  @as("RemoveEncryptionConfiguration") removeEncryptionConfiguration: option<boxedBoolean>,
  @as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
  @as("RemoveOutputLocation") removeOutputLocation: option<boxedBoolean>,
  @as("OutputLocation") outputLocation: option<string_>,
}
type resultConfiguration = {
  @as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
  @as("OutputLocation") outputLocation: option<string_>,
}
type preparedStatementsList = array<preparedStatementSummary>
type namedQueryList = array<namedQuery>
type engineVersionsList = array<engineVersion>
type database = {
  @as("Parameters") parameters: option<parametersMap>,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: nameString,
}
type dataCatalogSummaryList = array<dataCatalogSummary>
type dataCatalog = {
  @as("Parameters") parameters: option<parametersMap>,
  @as("Type") type_: dataCatalogType,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: catalogNameString,
}
type columnList = array<column>
type columnInfoList = array<columnInfo>
type workGroupsList = array<workGroupSummary>
type workGroupConfigurationUpdates = {
  @as("EngineVersion") engineVersion: option<engineVersion>,
  @as("RequesterPaysEnabled") requesterPaysEnabled: option<boxedBoolean>,
  @as("RemoveBytesScannedCutoffPerQuery") removeBytesScannedCutoffPerQuery: option<boxedBoolean>,
  @as("BytesScannedCutoffPerQuery") bytesScannedCutoffPerQuery: option<bytesScannedCutoffValue>,
  @as("PublishCloudWatchMetricsEnabled") publishCloudWatchMetricsEnabled: option<boxedBoolean>,
  @as("ResultConfigurationUpdates") resultConfigurationUpdates: option<resultConfigurationUpdates>,
  @as("EnforceWorkGroupConfiguration") enforceWorkGroupConfiguration: option<boxedBoolean>,
}
type workGroupConfiguration = {
  @as("EngineVersion") engineVersion: option<engineVersion>,
  @as("RequesterPaysEnabled") requesterPaysEnabled: option<boxedBoolean>,
  @as("BytesScannedCutoffPerQuery") bytesScannedCutoffPerQuery: option<bytesScannedCutoffValue>,
  @as("PublishCloudWatchMetricsEnabled") publishCloudWatchMetricsEnabled: option<boxedBoolean>,
  @as("EnforceWorkGroupConfiguration") enforceWorkGroupConfiguration: option<boxedBoolean>,
  @as("ResultConfiguration") resultConfiguration: option<resultConfiguration>,
}
type tableMetadata = {
  @as("Parameters") parameters: option<parametersMap>,
  @as("PartitionKeys") partitionKeys: option<columnList>,
  @as("Columns") columns: option<columnList>,
  @as("TableType") tableType: option<tableTypeString>,
  @as("LastAccessTime") lastAccessTime: option<timestamp_>,
  @as("CreateTime") createTime: option<timestamp_>,
  @as("Name") name: nameString,
}
type row = {@as("Data") data: option<datumList>}
type resultSetMetadata = {@as("ColumnInfo") columnInfo: option<columnInfoList>}
type queryExecution = {
  @as("EngineVersion") engineVersion: option<engineVersion>,
  @as("WorkGroup") workGroup: option<workGroupName>,
  @as("Statistics") statistics: option<queryExecutionStatistics>,
  @as("Status") status: option<queryExecutionStatus>,
  @as("QueryExecutionContext") queryExecutionContext: option<queryExecutionContext>,
  @as("ResultConfiguration") resultConfiguration: option<resultConfiguration>,
  @as("StatementType") statementType: option<statementType>,
  @as("Query") query: option<queryString>,
  @as("QueryExecutionId") queryExecutionId: option<queryExecutionId>,
}
type databaseList = array<database>
type workGroup = {
  @as("CreationTime") creationTime: option<date>,
  @as("Description") description: option<workGroupDescriptionString>,
  @as("Configuration") configuration: option<workGroupConfiguration>,
  @as("State") state: option<workGroupState>,
  @as("Name") name: workGroupName,
}
type tableMetadataList = array<tableMetadata>
type rowList = array<row>
type queryExecutionList = array<queryExecution>
type resultSet = {
  @as("ResultSetMetadata") resultSetMetadata: option<resultSetMetadata>,
  @as("Rows") rows: option<rowList>,
}

module UpdatePreparedStatement = {
  type t
  type request = {
    @as("Description") description: option<descriptionString>,
    @as("QueryStatement") queryStatement: queryString,
    @as("WorkGroup") workGroup: workGroupName,
    @as("StatementName") statementName: statementName,
  }
  type response = unit
  @module("@aws-sdk/client-athena") @new
  external new_: request => t = "UpdatePreparedStatementCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopQueryExecution = {
  type t
  type request = {@as("QueryExecutionId") queryExecutionId: queryExecutionId}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: request => t = "StopQueryExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWorkGroup = {
  type t
  type request = {
    @as("RecursiveDeleteOption") recursiveDeleteOption: option<boxedBoolean>,
    @as("WorkGroup") workGroup: workGroupName,
  }
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: request => t = "DeleteWorkGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePreparedStatement = {
  type t
  type request = {
    @as("WorkGroup") workGroup: workGroupName,
    @as("StatementName") statementName: statementName,
  }
  type response = unit
  @module("@aws-sdk/client-athena") @new
  external new_: request => t = "DeletePreparedStatementCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteNamedQuery = {
  type t
  type request = {@as("NamedQueryId") namedQueryId: namedQueryId}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: request => t = "DeleteNamedQueryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDataCatalog = {
  type t
  type request = {@as("Name") name: catalogNameString}
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: request => t = "DeleteDataCatalogCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePreparedStatement = {
  type t
  type request = {
    @as("Description") description: option<descriptionString>,
    @as("QueryStatement") queryStatement: queryString,
    @as("WorkGroup") workGroup: workGroupName,
    @as("StatementName") statementName: statementName,
  }
  type response = unit
  @module("@aws-sdk/client-athena") @new
  external new_: request => t = "CreatePreparedStatementCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNamedQuery = {
  type t
  type request = {
    @as("WorkGroup") workGroup: option<workGroupName>,
    @as("ClientRequestToken") clientRequestToken: option<idempotencyToken>,
    @as("QueryString") queryString: queryString,
    @as("Database") database: databaseString,
    @as("Description") description: option<descriptionString>,
    @as("Name") name: nameString,
  }
  type response = {@as("NamedQueryId") namedQueryId: option<namedQueryId>}
  @module("@aws-sdk/client-athena") @new external new_: request => t = "CreateNamedQueryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataCatalog = {
  type t
  type request = {
    @as("Parameters") parameters: option<parametersMap>,
    @as("Description") description: option<descriptionString>,
    @as("Type") type_: dataCatalogType,
    @as("Name") name: catalogNameString,
  }
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: request => t = "UpdateDataCatalogCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQueryExecutions = {
  type t
  type request = {
    @as("WorkGroup") workGroup: option<workGroupName>,
    @as("MaxResults") maxResults: option<maxQueryExecutionsCount>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("QueryExecutionIds") queryExecutionIds: option<queryExecutionIdList>,
  }
  @module("@aws-sdk/client-athena") @new external new_: request => t = "ListQueryExecutionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNamedQueries = {
  type t
  type request = {
    @as("WorkGroup") workGroup: option<workGroupName>,
    @as("MaxResults") maxResults: option<maxNamedQueriesCount>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("NamedQueryIds") namedQueryIds: option<namedQueryIdList>,
  }
  @module("@aws-sdk/client-athena") @new external new_: request => t = "ListNamedQueriesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPreparedStatement = {
  type t
  type request = {
    @as("WorkGroup") workGroup: workGroupName,
    @as("StatementName") statementName: statementName,
  }
  type response = {@as("PreparedStatement") preparedStatement: option<preparedStatement>}
  @module("@aws-sdk/client-athena") @new external new_: request => t = "GetPreparedStatementCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetNamedQuery = {
  type t
  type request = {@as("NamedQueryId") namedQueryId: namedQueryId}
  type response = {@as("NamedQuery") namedQuery: option<namedQuery>}
  @module("@aws-sdk/client-athena") @new external new_: request => t = "GetNamedQueryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartQueryExecution = {
  type t
  type request = {
    @as("WorkGroup") workGroup: option<workGroupName>,
    @as("ResultConfiguration") resultConfiguration: option<resultConfiguration>,
    @as("QueryExecutionContext") queryExecutionContext: option<queryExecutionContext>,
    @as("ClientRequestToken") clientRequestToken: option<idempotencyToken>,
    @as("QueryString") queryString: queryString,
  }
  type response = {@as("QueryExecutionId") queryExecutionId: option<queryExecutionId>}
  @module("@aws-sdk/client-athena") @new external new_: request => t = "StartQueryExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxTagsCount>,
    @as("NextToken") nextToken: option<token>,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-athena") @new external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPreparedStatements = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxPreparedStatementsCount>,
    @as("NextToken") nextToken: option<token>,
    @as("WorkGroup") workGroup: workGroupName,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("PreparedStatements") preparedStatements: option<preparedStatementsList>,
  }
  @module("@aws-sdk/client-athena") @new
  external new_: request => t = "ListPreparedStatementsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEngineVersions = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxEngineVersionsCount>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("EngineVersions") engineVersions: option<engineVersionsList>,
  }
  @module("@aws-sdk/client-athena") @new external new_: request => t = "ListEngineVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataCatalogs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxDataCatalogsCount>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("DataCatalogsSummary") dataCatalogsSummary: option<dataCatalogSummaryList>,
  }
  @module("@aws-sdk/client-athena") @new external new_: request => t = "ListDataCatalogsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDatabase = {
  type t
  type request = {
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogName") catalogName: catalogNameString,
  }
  type response = {@as("Database") database: option<database>}
  @module("@aws-sdk/client-athena") @new external new_: request => t = "GetDatabaseCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDataCatalog = {
  type t
  type request = {@as("Name") name: catalogNameString}
  type response = {@as("DataCatalog") dataCatalog: option<dataCatalog>}
  @module("@aws-sdk/client-athena") @new external new_: request => t = "GetDataCatalogCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataCatalog = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Parameters") parameters: option<parametersMap>,
    @as("Description") description: option<descriptionString>,
    @as("Type") type_: dataCatalogType,
    @as("Name") name: catalogNameString,
  }
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: request => t = "CreateDataCatalogCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetNamedQuery = {
  type t
  type request = {@as("NamedQueryIds") namedQueryIds: namedQueryIdList}
  type response = {
    @as("UnprocessedNamedQueryIds") unprocessedNamedQueryIds: option<unprocessedNamedQueryIdList>,
    @as("NamedQueries") namedQueries: option<namedQueryList>,
  }
  @module("@aws-sdk/client-athena") @new external new_: request => t = "BatchGetNamedQueryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWorkGroup = {
  type t
  type request = {
    @as("State") state: option<workGroupState>,
    @as("ConfigurationUpdates") configurationUpdates: option<workGroupConfigurationUpdates>,
    @as("Description") description: option<workGroupDescriptionString>,
    @as("WorkGroup") workGroup: workGroupName,
  }
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: request => t = "UpdateWorkGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkGroups = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxWorkGroupsCount>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("WorkGroups") workGroups: option<workGroupsList>,
  }
  @module("@aws-sdk/client-athena") @new external new_: request => t = "ListWorkGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatabases = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxDatabasesCount>,
    @as("NextToken") nextToken: option<token>,
    @as("CatalogName") catalogName: catalogNameString,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("DatabaseList") databaseList: option<databaseList>,
  }
  @module("@aws-sdk/client-athena") @new external new_: request => t = "ListDatabasesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTableMetadata = {
  type t
  type request = {
    @as("TableName") tableName: nameString,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogName") catalogName: catalogNameString,
  }
  type response = {@as("TableMetadata") tableMetadata: option<tableMetadata>}
  @module("@aws-sdk/client-athena") @new external new_: request => t = "GetTableMetadataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQueryExecution = {
  type t
  type request = {@as("QueryExecutionId") queryExecutionId: queryExecutionId}
  type response = {@as("QueryExecution") queryExecution: option<queryExecution>}
  @module("@aws-sdk/client-athena") @new external new_: request => t = "GetQueryExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorkGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: option<workGroupDescriptionString>,
    @as("Configuration") configuration: option<workGroupConfiguration>,
    @as("Name") name: workGroupName,
  }
  type response = unit
  @module("@aws-sdk/client-athena") @new external new_: request => t = "CreateWorkGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTableMetadata = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxTableMetadataCount>,
    @as("NextToken") nextToken: option<token>,
    @as("Expression") expression: option<expressionString>,
    @as("DatabaseName") databaseName: nameString,
    @as("CatalogName") catalogName: catalogNameString,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("TableMetadataList") tableMetadataList: option<tableMetadataList>,
  }
  @module("@aws-sdk/client-athena") @new external new_: request => t = "ListTableMetadataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorkGroup = {
  type t
  type request = {@as("WorkGroup") workGroup: workGroupName}
  type response = {@as("WorkGroup") workGroup: option<workGroup>}
  @module("@aws-sdk/client-athena") @new external new_: request => t = "GetWorkGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetQueryExecution = {
  type t
  type request = {@as("QueryExecutionIds") queryExecutionIds: queryExecutionIdList}
  type response = {
    @as("UnprocessedQueryExecutionIds")
    unprocessedQueryExecutionIds: option<unprocessedQueryExecutionIdList>,
    @as("QueryExecutions") queryExecutions: option<queryExecutionList>,
  }
  @module("@aws-sdk/client-athena") @new
  external new_: request => t = "BatchGetQueryExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQueryResults = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxQueryResults>,
    @as("NextToken") nextToken: option<token>,
    @as("QueryExecutionId") queryExecutionId: queryExecutionId,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("ResultSet") resultSet: option<resultSet>,
    @as("UpdateCount") updateCount: option<long>,
  }
  @module("@aws-sdk/client-athena") @new external new_: request => t = "GetQueryResultsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
