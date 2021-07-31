type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type bool = bool;
type uUID = string
type amazonawsString = string
type statusString = [@as("ALL") #ALL | @as("FAILED") #FAILED | @as("ABORTED") #ABORTED | @as("FINISHED") #FINISHED | @as("STARTED") #STARTED | @as("PICKED") #PICKED | @as("SUBMITTED") #SUBMITTED]
type statementString = string
type statementNameString = string
type secretArn = string
type pageSize = int;
type amazonawsLong = float;
type location = string
type listStatementsLimit = int;
type amazonawsInteger = int;
type boxedLong = float;
type boxedDouble = float;
type boxedBoolean = bool;
type blob = NodeJs.Buffer.t;
type tableMember = {
@as("schema") schema: amazonawsString,
@as("type") type_: amazonawsString,
@as("name") name: amazonawsString
}
type statementData = {
@as("UpdatedAt") updatedAt: apiTimestamp,
@as("CreatedAt") createdAt: apiTimestamp,
@as("StatementName") statementName: statementNameString,
@as("Status") status: statusString,
@as("SecretArn") secretArn: secretArn,
@as("QueryString") queryString: statementString,
@as("Id") id: option<uUID>
}
type schemaList = array<amazonawsString>
type field = BlobValue(blob) | StringValue(amazonawsString) | DoubleValue(boxedDouble) | LongValue(boxedLong) | BooleanValue(boxedBoolean) | IsNull(boxedBoolean);
type databaseList = array<amazonawsString>
type columnMetadata = {
@as("columnDefault") columnDefault: amazonawsString,
@as("length") length: amazonawsInteger,
@as("typeName") typeName: amazonawsString,
@as("tableName") tableName: amazonawsString,
@as("schemaName") schemaName: amazonawsString,
@as("scale") scale: amazonawsInteger,
@as("precision") precision: amazonawsInteger,
@as("nullable") nullable: amazonawsInteger,
@as("name") name: amazonawsString,
@as("label") label: amazonawsString,
@as("isSigned") isSigned: bool,
@as("isCurrency") isCurrency: bool,
@as("isCaseSensitive") isCaseSensitive: bool
}
type tableList = array<tableMember>
type statementList = array<statementData>
type fieldList = array<field>
type columnMetadataList = array<columnMetadata>
type columnList = array<columnMetadata>
type sqlRecords = array<fieldList>
type clientType;
@module("@aws-sdk/client-redshift-data") @new external createClient: unit => clientType = "RedshiftDataClient";
module ExecuteStatement = {
  type t;
  type request = {
@as("StatementName") statementName: statementNameString,
@as("WithEvent") withEvent: apiBoolean,
@as("Database") database: amazonawsString,
@as("DbUser") dbUser: amazonawsString,
@as("SecretArn") secretArn: secretArn,
@as("ClusterIdentifier") clusterIdentifier: option<location>,
@as("Sql") sql: option<statementString>
}
  type response = {
@as("SecretArn") secretArn: secretArn,
@as("Database") database: amazonawsString,
@as("DbUser") dbUser: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: location,
@as("CreatedAt") createdAt: apiTimestamp,
@as("Id") id: uUID
}
  @module("@aws-sdk/client-redshift-data") @new external new_: (Js.Promise.t<request>) => t = "ExecuteStatementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStatement = {
  type t;
  type request = {
@as("Id") id: option<uUID>
}
  type response = {
@as("HasResultSet") hasResultSet: apiBoolean,
@as("RedshiftPid") redshiftPid: amazonawsLong,
@as("RedshiftQueryId") redshiftQueryId: amazonawsLong,
@as("UpdatedAt") updatedAt: apiTimestamp,
@as("CreatedAt") createdAt: apiTimestamp,
@as("Status") status: statusString,
@as("Error") error: amazonawsString,
@as("Duration") duration: amazonawsLong,
@as("ResultSize") resultSize: amazonawsLong,
@as("ResultRows") resultRows: amazonawsLong,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString,
@as("Database") database: amazonawsString,
@as("DbUser") dbUser: amazonawsString,
@as("SecretArn") secretArn: secretArn,
@as("QueryString") queryString: statementString,
@as("Id") id: option<uUID>
}
  @module("@aws-sdk/client-redshift-data") @new external new_: (Js.Promise.t<request>) => t = "DescribeStatementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelStatement = {
  type t;
  type request = {
@as("Id") id: option<uUID>
}
  type response = {
@as("Status") status: apiBoolean
}
  @module("@aws-sdk/client-redshift-data") @new external new_: (Js.Promise.t<request>) => t = "CancelStatementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSchemas = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: amazonawsString,
@as("SchemaPattern") schemaPattern: amazonawsString,
@as("ConnectedDatabase") connectedDatabase: amazonawsString,
@as("Database") database: option<amazonawsString>,
@as("DbUser") dbUser: amazonawsString,
@as("SecretArn") secretArn: secretArn,
@as("ClusterIdentifier") clusterIdentifier: option<location>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Schemas") schemas: schemaList
}
  @module("@aws-sdk/client-redshift-data") @new external new_: (Js.Promise.t<request>) => t = "ListSchemasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatabases = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: amazonawsString,
@as("DbUser") dbUser: amazonawsString,
@as("SecretArn") secretArn: secretArn,
@as("Database") database: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: option<location>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Databases") databases: databaseList
}
  @module("@aws-sdk/client-redshift-data") @new external new_: (Js.Promise.t<request>) => t = "ListDatabasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTables = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: amazonawsString,
@as("TablePattern") tablePattern: amazonawsString,
@as("SchemaPattern") schemaPattern: amazonawsString,
@as("ConnectedDatabase") connectedDatabase: amazonawsString,
@as("Database") database: option<amazonawsString>,
@as("DbUser") dbUser: amazonawsString,
@as("SecretArn") secretArn: secretArn,
@as("ClusterIdentifier") clusterIdentifier: option<location>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Tables") tables: tableList
}
  @module("@aws-sdk/client-redshift-data") @new external new_: (Js.Promise.t<request>) => t = "ListTablesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStatements = {
  type t;
  type request = {
@as("RoleLevel") roleLevel: apiBoolean,
@as("Status") status: statusString,
@as("StatementName") statementName: statementNameString,
@as("MaxResults") maxResults: listStatementsLimit,
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Statements") statements: option<statementList>
}
  @module("@aws-sdk/client-redshift-data") @new external new_: (Js.Promise.t<request>) => t = "ListStatementsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTable = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: amazonawsString,
@as("Table") table: amazonawsString,
@as("Schema") schema: amazonawsString,
@as("ConnectedDatabase") connectedDatabase: amazonawsString,
@as("Database") database: option<amazonawsString>,
@as("DbUser") dbUser: amazonawsString,
@as("SecretArn") secretArn: secretArn,
@as("ClusterIdentifier") clusterIdentifier: option<location>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ColumnList") columnList: columnList,
@as("TableName") tableName: amazonawsString
}
  @module("@aws-sdk/client-redshift-data") @new external new_: (Js.Promise.t<request>) => t = "DescribeTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStatementResult = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Id") id: option<uUID>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TotalNumRows") totalNumRows: amazonawsLong,
@as("ColumnMetadata") columnMetadata: columnMetadataList,
@as("Records") records: option<sqlRecords>
}
  @module("@aws-sdk/client-redshift-data") @new external new_: (Js.Promise.t<request>) => t = "GetStatementResultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
