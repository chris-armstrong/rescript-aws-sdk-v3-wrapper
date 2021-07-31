type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-rds-data") @new
external createClient: unit => awsServiceClient = "RdsDataServiceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type typeHint = [
  | @as("DECIMAL") #DECIMAL
  | @as("TIME") #TIME
  | @as("DATE") #DATE
  | @as("TIMESTAMP") #TIMESTAMP
  | @as("UUID") #UUID
  | @as("JSON") #JSON
]
type transactionStatus = string
type string_ = string
type sqlStatement = string
type recordsUpdated = float
type parameterName = string
type long = float
type integer_ = int
type id = string
type errorMessage = string
type decimalReturnType = [@as("DOUBLE_OR_LONG") #DOUBLE_OR_LONG | @as("STRING") #STRING]
type dbName = string
type boxedLong = float
type boxedInteger = int
type boxedFloat = float
type boxedDouble = float
type boxedBoolean = bool
type boolean_ = bool
type blob = NodeJs.Buffer.t
type arn = string
type stringArray = array<string_>
type resultSetOptions = {decimalReturnType: option<decimalReturnType>}
type longArray = array<boxedLong>
type doubleArray = array<boxedDouble>
type columnMetadata = {
  arrayBaseColumnType: option<integer_>,
  scale: option<integer_>,
  precision: option<integer_>,
  nullable: option<integer_>,
  isCaseSensitive: option<boolean_>,
  isCurrency: option<boolean_>,
  isSigned: option<boolean_>,
  isAutoIncrement: option<boolean_>,
  tableName: option<string_>,
  schemaName: option<string_>,
  label: option<string_>,
  typeName: option<string_>,
  @as("type") type_: option<integer_>,
  name: option<string_>,
}
type booleanArray = array<boxedBoolean>
type metadata = array<columnMetadata>
type resultSetMetadata = {
  columnMetadata: option<metadata>,
  columnCount: option<long>,
}
type rec value = {
  structValue: option<structValue>,
  arrayValues: option<arrayValueList>,
  blobValue: option<blob>,
  stringValue: option<string_>,
  realValue: option<boxedFloat>,
  doubleValue: option<boxedDouble>,
  intValue: option<boxedInteger>,
  bigIntValue: option<boxedLong>,
  bitValue: option<boxedBoolean>,
  isNull: option<boxedBoolean>,
}
and structValue = {attributes: option<arrayValueList>}
and arrayValueList = array<value>
and arrayValue = {
  arrayValues: option<arrayOfArray>,
  stringValues: option<stringArray>,
  doubleValues: option<doubleArray>,
  longValues: option<longArray>,
  booleanValues: option<booleanArray>,
}
and arrayOfArray = array<arrayValue>
type row = array<value>
type field = {
  arrayValue: option<arrayValue>,
  blobValue: option<blob>,
  stringValue: option<string_>,
  doubleValue: option<boxedDouble>,
  longValue: option<boxedLong>,
  booleanValue: option<boxedBoolean>,
  isNull: option<boxedBoolean>,
}
type sqlParameter = {
  typeHint: option<typeHint>,
  value: option<field>,
  name: option<parameterName>,
}
type record = {values: option<row>}
type fieldList = array<field>
type updateResult = {generatedFields: option<fieldList>}
type sqlRecords = array<fieldList>
type sqlParametersList = array<sqlParameter>
type records = array<record>
type updateResults = array<updateResult>
type sqlParameterSets = array<sqlParametersList>
type resultFrame = {
  records: option<records>,
  resultSetMetadata: option<resultSetMetadata>,
}
type sqlStatementResult = {
  numberOfRecordsUpdated: option<recordsUpdated>,
  resultFrame: option<resultFrame>,
}
type sqlStatementResults = array<sqlStatementResult>

module RollbackTransaction = {
  type t
  type request = {
    transactionId: id,
    secretArn: arn,
    resourceArn: arn,
  }
  type response = {transactionStatus: option<transactionStatus>}
  @module("@aws-sdk/client-rds-data") @new
  external new_: request => t = "RollbackTransactionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CommitTransaction = {
  type t
  type request = {
    transactionId: id,
    secretArn: arn,
    resourceArn: arn,
  }
  type response = {transactionStatus: option<transactionStatus>}
  @module("@aws-sdk/client-rds-data") @new external new_: request => t = "CommitTransactionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BeginTransaction = {
  type t
  type request = {
    schema: option<dbName>,
    database: option<dbName>,
    secretArn: arn,
    resourceArn: arn,
  }
  type response = {transactionId: option<id>}
  @module("@aws-sdk/client-rds-data") @new external new_: request => t = "BeginTransactionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExecuteStatement = {
  type t
  type request = {
    resultSetOptions: option<resultSetOptions>,
    continueAfterTimeout: option<boolean_>,
    includeResultMetadata: option<boolean_>,
    transactionId: option<id>,
    parameters: option<sqlParametersList>,
    schema: option<dbName>,
    database: option<dbName>,
    sql: sqlStatement,
    secretArn: arn,
    resourceArn: arn,
  }
  type response = {
    generatedFields: option<fieldList>,
    numberOfRecordsUpdated: option<recordsUpdated>,
    columnMetadata: option<metadata>,
    records: option<sqlRecords>,
  }
  @module("@aws-sdk/client-rds-data") @new external new_: request => t = "ExecuteStatementCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchExecuteStatement = {
  type t
  type request = {
    transactionId: option<id>,
    parameterSets: option<sqlParameterSets>,
    schema: option<dbName>,
    database: option<dbName>,
    sql: sqlStatement,
    secretArn: arn,
    resourceArn: arn,
  }
  type response = {updateResults: option<updateResults>}
  @module("@aws-sdk/client-rds-data") @new
  external new_: request => t = "BatchExecuteStatementCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExecuteSql = {
  type t
  type request = {
    schema: option<dbName>,
    database: option<dbName>,
    sqlStatements: sqlStatement,
    awsSecretStoreArn: arn,
    dbClusterOrInstanceArn: arn,
  }
  type response = {sqlStatementResults: option<sqlStatementResults>}
  @module("@aws-sdk/client-rds-data") @new external new_: request => t = "ExecuteSqlCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
