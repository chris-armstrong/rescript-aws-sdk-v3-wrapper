type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-redshift-data") @new
external createClient: unit => awsServiceClient = "RedshiftDataClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type bool_ = bool
type uuid = string
type string_ = string
type statusString = [
  | @as("ALL") #ALL
  | @as("FAILED") #FAILED
  | @as("ABORTED") #ABORTED
  | @as("FINISHED") #FINISHED
  | @as("STARTED") #STARTED
  | @as("PICKED") #PICKED
  | @as("SUBMITTED") #SUBMITTED
]
type statementString = string
type statementNameString = string
type secretArn = string
type pageSize = int
type long = float
type location = string
type listStatementsLimit = int
type integer_ = int
type boxedLong = float
type boxedDouble = float
type boxedBoolean = bool
type blob = NodeJs.Buffer.t
type tableMember = {
  schema: option<string_>,
  @as("type") type_: option<string_>,
  name: option<string_>,
}
type statementData = {
  @as("UpdatedAt") updatedAt: option<baseTimestamp>,
  @as("CreatedAt") createdAt: option<baseTimestamp>,
  @as("StatementName") statementName: option<statementNameString>,
  @as("Status") status: option<statusString>,
  @as("SecretArn") secretArn: option<secretArn>,
  @as("QueryString") queryString: option<statementString>,
  @as("Id") id: uuid,
}
type schemaList = array<string_>
type field = {
  blobValue: option<blob>,
  stringValue: option<string_>,
  doubleValue: option<boxedDouble>,
  longValue: option<boxedLong>,
  booleanValue: option<boxedBoolean>,
  isNull: option<boxedBoolean>,
}
type databaseList = array<string_>
type columnMetadata = {
  columnDefault: option<string_>,
  length: option<integer_>,
  typeName: option<string_>,
  tableName: option<string_>,
  schemaName: option<string_>,
  scale: option<integer_>,
  precision: option<integer_>,
  nullable: option<integer_>,
  name: option<string_>,
  label: option<string_>,
  isSigned: option<bool_>,
  isCurrency: option<bool_>,
  isCaseSensitive: option<bool_>,
}
type tableList = array<tableMember>
type statementList = array<statementData>
type fieldList = array<field>
type columnMetadataList = array<columnMetadata>
type columnList = array<columnMetadata>
type sqlRecords = array<fieldList>

module ExecuteStatement = {
  type t
  type request = {
    @as("StatementName") statementName: option<statementNameString>,
    @as("WithEvent") withEvent: option<baseBoolean>,
    @as("Database") database: option<string_>,
    @as("DbUser") dbUser: option<string_>,
    @as("SecretArn") secretArn: option<secretArn>,
    @as("ClusterIdentifier") clusterIdentifier: location,
    @as("Sql") sql: statementString,
  }
  type response = {
    @as("SecretArn") secretArn: option<secretArn>,
    @as("Database") database: option<string_>,
    @as("DbUser") dbUser: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: option<location>,
    @as("CreatedAt") createdAt: option<baseTimestamp>,
    @as("Id") id: option<uuid>,
  }
  @module("@aws-sdk/client-redshift-data") @new
  external new_: request => t = "ExecuteStatementCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStatement = {
  type t
  type request = {@as("Id") id: uuid}
  type response = {
    @as("HasResultSet") hasResultSet: option<baseBoolean>,
    @as("RedshiftPid") redshiftPid: option<long>,
    @as("RedshiftQueryId") redshiftQueryId: option<long>,
    @as("UpdatedAt") updatedAt: option<baseTimestamp>,
    @as("CreatedAt") createdAt: option<baseTimestamp>,
    @as("Status") status: option<statusString>,
    @as("Error") error: option<string_>,
    @as("Duration") duration: option<long>,
    @as("ResultSize") resultSize: option<long>,
    @as("ResultRows") resultRows: option<long>,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
    @as("Database") database: option<string_>,
    @as("DbUser") dbUser: option<string_>,
    @as("SecretArn") secretArn: option<secretArn>,
    @as("QueryString") queryString: option<statementString>,
    @as("Id") id: uuid,
  }
  @module("@aws-sdk/client-redshift-data") @new
  external new_: request => t = "DescribeStatementCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelStatement = {
  type t
  type request = {@as("Id") id: uuid}
  type response = {@as("Status") status: option<baseBoolean>}
  @module("@aws-sdk/client-redshift-data") @new
  external new_: request => t = "CancelStatementCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSchemas = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<string_>,
    @as("SchemaPattern") schemaPattern: option<string_>,
    @as("ConnectedDatabase") connectedDatabase: option<string_>,
    @as("Database") database: string_,
    @as("DbUser") dbUser: option<string_>,
    @as("SecretArn") secretArn: option<secretArn>,
    @as("ClusterIdentifier") clusterIdentifier: location,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Schemas") schemas: option<schemaList>,
  }
  @module("@aws-sdk/client-redshift-data") @new external new_: request => t = "ListSchemasCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatabases = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<string_>,
    @as("DbUser") dbUser: option<string_>,
    @as("SecretArn") secretArn: option<secretArn>,
    @as("Database") database: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: location,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Databases") databases: option<databaseList>,
  }
  @module("@aws-sdk/client-redshift-data") @new external new_: request => t = "ListDatabasesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTables = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<string_>,
    @as("TablePattern") tablePattern: option<string_>,
    @as("SchemaPattern") schemaPattern: option<string_>,
    @as("ConnectedDatabase") connectedDatabase: option<string_>,
    @as("Database") database: string_,
    @as("DbUser") dbUser: option<string_>,
    @as("SecretArn") secretArn: option<secretArn>,
    @as("ClusterIdentifier") clusterIdentifier: location,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Tables") tables: option<tableList>,
  }
  @module("@aws-sdk/client-redshift-data") @new external new_: request => t = "ListTablesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStatements = {
  type t
  type request = {
    @as("RoleLevel") roleLevel: option<baseBoolean>,
    @as("Status") status: option<statusString>,
    @as("StatementName") statementName: option<statementNameString>,
    @as("MaxResults") maxResults: option<listStatementsLimit>,
    @as("NextToken") nextToken: option<string_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Statements") statements: statementList,
  }
  @module("@aws-sdk/client-redshift-data") @new
  external new_: request => t = "ListStatementsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTable = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<string_>,
    @as("Table") table: option<string_>,
    @as("Schema") schema: option<string_>,
    @as("ConnectedDatabase") connectedDatabase: option<string_>,
    @as("Database") database: string_,
    @as("DbUser") dbUser: option<string_>,
    @as("SecretArn") secretArn: option<secretArn>,
    @as("ClusterIdentifier") clusterIdentifier: location,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ColumnList") columnList: option<columnList>,
    @as("TableName") tableName: option<string_>,
  }
  @module("@aws-sdk/client-redshift-data") @new external new_: request => t = "DescribeTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStatementResult = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("Id") id: uuid,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TotalNumRows") totalNumRows: option<long>,
    @as("ColumnMetadata") columnMetadata: option<columnMetadataList>,
    @as("Records") records: sqlRecords,
  }
  @module("@aws-sdk/client-redshift-data") @new
  external new_: request => t = "GetStatementResultCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
