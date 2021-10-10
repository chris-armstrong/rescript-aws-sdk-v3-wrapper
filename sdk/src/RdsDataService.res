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
@ocaml.doc("<p>An array of strings.</p>
        <note>
            <p>Some array entries can be null.</p>
        </note>")
type stringArray = array<string_>
@ocaml.doc("<p>Options that control how the result set is returned.</p>")
type resultSetOptions = {
  @ocaml.doc("<p>A value that indicates how a field of <code>DECIMAL</code> type is represented
            in the response. The value of <code>STRING</code>, the default, specifies that
            it is converted to a String value. The value of <code>DOUBLE_OR_LONG</code>
            specifies that it is converted to a Long value if its scale is 0, or to a Double
            value otherwise.</p>
        <important>
            <p>Conversion to Double or Long can result in roundoff errors due to precision loss.
                We recommend converting to String, especially when working with currency values.</p>
        </important>")
  decimalReturnType: option<decimalReturnType>,
}
@ocaml.doc("<p>An array of integers.</p>
        <note>
            <p>Some array entries can be null.</p>
        </note>")
type longArray = array<boxedLong>
@ocaml.doc("<p>An array of floating point numbers.</p>
        <note>
            <p>Some array entries can be null.</p>
        </note>")
type doubleArray = array<boxedDouble>
@ocaml.doc("<p>Contains the metadata for a column.</p>")
type columnMetadata = {
  @ocaml.doc("<p>The type of the column.</p>") arrayBaseColumnType: option<integer_>,
  @ocaml.doc("<p>The scale value of a decimal number column.</p>") scale: option<integer_>,
  @ocaml.doc("<p>The precision value of a decimal number column.</p>") precision: option<integer_>,
  @ocaml.doc("<p>A value that indicates whether the column is nullable.</p>")
  nullable: option<integer_>,
  @ocaml.doc("<p>A value that indicates whether the column is case-sensitive.</p>")
  isCaseSensitive: option<boolean_>,
  @ocaml.doc("<p>A value that indicates whether the column contains currency values.</p>")
  isCurrency: option<boolean_>,
  @ocaml.doc("<p>A value that indicates whether an integer column is signed.</p>")
  isSigned: option<boolean_>,
  @ocaml.doc("<p>A value that indicates whether the column increments automatically.</p>")
  isAutoIncrement: option<boolean_>,
  @ocaml.doc("<p>The name of the table that includes the column.</p>") tableName: option<string_>,
  @ocaml.doc("<p>The name of the schema that owns the table that includes the column.</p>")
  schemaName: option<string_>,
  @ocaml.doc("<p>The label for the column.</p>") label: option<string_>,
  @ocaml.doc("<p>The database-specific data type of the column.</p>") typeName: option<string_>,
  @ocaml.doc("<p>The type of the column.</p>") @as("type") type_: option<integer_>,
  @ocaml.doc("<p>The name of the column.</p>") name: option<string_>,
}
@ocaml.doc("<p>An array of Boolean values.</p>
        <note>
            <p>Some array entries can be null.</p>
        </note>")
type booleanArray = array<boxedBoolean>
type metadata = array<columnMetadata>
@ocaml.doc("<p>The metadata of the result set returned by a SQL statement.</p>")
type resultSetMetadata = {
  @ocaml.doc("<p>The metadata of the columns in the result set.</p>")
  columnMetadata: option<metadata>,
  @ocaml.doc("<p>The number of columns in the result set.</p>") columnCount: option<long>,
}
type rec value = {
  @ocaml.doc("<p>A value for a column of STRUCT data type.</p>") structValue: option<structValue>,
  @ocaml.doc("<p>An array of column values.</p>") arrayValues: option<arrayValueList>,
  @ocaml.doc("<p>A value for a column of BLOB data type.</p>") blobValue: option<blob>,
  @ocaml.doc("<p>A value for a column of string data type.</p>") stringValue: option<string_>,
  @ocaml.doc("<p>A value for a column of real data type.</p>") realValue: option<boxedFloat>,
  @ocaml.doc("<p>A value for a column of double data type.</p>") doubleValue: option<boxedDouble>,
  @ocaml.doc("<p>A value for a column of integer data type.</p>") intValue: option<boxedInteger>,
  @ocaml.doc("<p>A value for a column of big integer data type.</p>")
  bigIntValue: option<boxedLong>,
  @ocaml.doc("<p>A value for a column of BIT data type.</p>") bitValue: option<boxedBoolean>,
  @ocaml.doc("<p>A NULL value.</p>") isNull: option<boxedBoolean>,
}
and structValue = {
  @ocaml.doc("<p>The attributes returned in the record.</p>") attributes: option<arrayValueList>,
}
and arrayValueList = array<value>
and arrayValue = {
  @ocaml.doc("<p>An array of arrays.</p>") arrayValues: option<arrayOfArray>,
  @ocaml.doc("<p>An array of strings.</p>") stringValues: option<stringArray>,
  @ocaml.doc("<p>An array of integers.</p>") doubleValues: option<doubleArray>,
  @ocaml.doc("<p>An array of floating point numbers.</p>") longValues: option<longArray>,
  @ocaml.doc("<p>An array of Boolean values.</p>") booleanValues: option<booleanArray>,
}
and arrayOfArray = array<arrayValue>
type row = array<value>
@ocaml.doc("<p>Contains a value.</p>")
type field = {
  @ocaml.doc("<p>An array of values.</p>") arrayValue: option<arrayValue>,
  @ocaml.doc("<p>A value of BLOB data type.</p>") blobValue: option<blob>,
  @ocaml.doc("<p>A value of string data type.</p>") stringValue: option<string_>,
  @ocaml.doc("<p>A value of double data type.</p>") doubleValue: option<boxedDouble>,
  @ocaml.doc("<p>A value of long data type.</p>") longValue: option<boxedLong>,
  @ocaml.doc("<p>A value of Boolean data type.</p>") booleanValue: option<boxedBoolean>,
  @ocaml.doc("<p>A NULL value.</p>") isNull: option<boxedBoolean>,
}
module Field = {
  type t =
    | ArrayValue(arrayValue)
    | BlobValue(blob)
    | StringValue(string_)
    | DoubleValue(boxedDouble)
    | LongValue(boxedLong)
    | BooleanValue(boxedBoolean)
    | IsNull(boxedBoolean)
  exception FieldUnspecified
  let classify = value =>
    switch value {
    | {arrayValue: Some(x)} => ArrayValue(x)
    | {blobValue: Some(x)} => BlobValue(x)
    | {stringValue: Some(x)} => StringValue(x)
    | {doubleValue: Some(x)} => DoubleValue(x)
    | {longValue: Some(x)} => LongValue(x)
    | {booleanValue: Some(x)} => BooleanValue(x)
    | {isNull: Some(x)} => IsNull(x)
    | _ => raise(FieldUnspecified)
    }

  let make = value =>
    switch value {
    | ArrayValue(x) => {
        arrayValue: Some(x),
        blobValue: None,
        stringValue: None,
        doubleValue: None,
        longValue: None,
        booleanValue: None,
        isNull: None,
      }
    | BlobValue(x) => {
        blobValue: Some(x),
        arrayValue: None,
        stringValue: None,
        doubleValue: None,
        longValue: None,
        booleanValue: None,
        isNull: None,
      }
    | StringValue(x) => {
        stringValue: Some(x),
        arrayValue: None,
        blobValue: None,
        doubleValue: None,
        longValue: None,
        booleanValue: None,
        isNull: None,
      }
    | DoubleValue(x) => {
        doubleValue: Some(x),
        arrayValue: None,
        blobValue: None,
        stringValue: None,
        longValue: None,
        booleanValue: None,
        isNull: None,
      }
    | LongValue(x) => {
        longValue: Some(x),
        arrayValue: None,
        blobValue: None,
        stringValue: None,
        doubleValue: None,
        booleanValue: None,
        isNull: None,
      }
    | BooleanValue(x) => {
        booleanValue: Some(x),
        arrayValue: None,
        blobValue: None,
        stringValue: None,
        doubleValue: None,
        longValue: None,
        isNull: None,
      }
    | IsNull(x) => {
        isNull: Some(x),
        arrayValue: None,
        blobValue: None,
        stringValue: None,
        doubleValue: None,
        longValue: None,
        booleanValue: None,
      }
    }
}
@ocaml.doc("<p>A parameter used in a SQL statement.</p>")
type sqlParameter = {
  @ocaml.doc("<p>A hint that specifies the correct object type for data type mapping. Possible values
            are as follows:</p>
        <ul>
            <li>
               <p>
                  <code>DATE</code> - The corresponding <code>String</code> parameter value is sent as an object 
              of <code>DATE</code> type to the database. The accepted format is <code>YYYY-MM-DD</code>.</p>
            </li>
            <li>
                <p>
                  <code>DECIMAL</code> - The corresponding <code>String</code> parameter value is sent as an object 
                    of <code>DECIMAL</code> type to the database.</p>
            </li>
            <li>
               <p>
                  <code>JSON</code> - The corresponding <code>String</code> parameter value is sent as an
           object of <code>JSON</code> type to the database.</p>
            </li>
            <li>
                <p>
                  <code>TIME</code> - The corresponding <code>String</code> parameter value is sent as an object 
                    of <code>TIME</code> type to the database. The accepted format is <code>HH:MM:SS[.FFF]</code>.</p>
            </li>
            <li>
               <p>
                  <code>TIMESTAMP</code> - The corresponding <code>String</code> parameter value is sent as an object 
              of <code>TIMESTAMP</code> type to the database. The accepted format is <code>YYYY-MM-DD HH:MM:SS[.FFF]</code>.</p>
            </li>
            <li>
               <p>
                  <code>UUID</code> - The corresponding <code>String</code> parameter value is sent as an object of
             <code>UUID</code> type to the database.
          </p>
            </li>
         </ul>")
  typeHint: option<typeHint>,
  @ocaml.doc("<p>The value of the parameter.</p>") value: option<field>,
  @ocaml.doc("<p>The name of the parameter.</p>") name: option<parameterName>,
}
@ocaml.doc("<p>A record returned by a call.</p>")
type record = {@ocaml.doc("<p>The values returned in the record.</p>") values: option<row>}
type fieldList = array<field>
@ocaml.doc("<p>The response elements represent the results of an update.</p>")
type updateResult = {
  @ocaml.doc("<p>Values for fields generated during the request.</p>")
  generatedFields: option<fieldList>,
}
type sqlRecords = array<fieldList>
type sqlParametersList = array<sqlParameter>
type records = array<record>
type updateResults = array<updateResult>
type sqlParameterSets = array<sqlParametersList>
@ocaml.doc("<p>The result set returned by a SQL statement.</p>")
type resultFrame = {
  @ocaml.doc("<p>The records in the result set.</p>") records: option<records>,
  @ocaml.doc("<p>The result-set metadata in the result set.</p>")
  resultSetMetadata: option<resultSetMetadata>,
}
@ocaml.doc("<p>The result of a SQL statement.</p>
        
        <important>
            <p>This data type is deprecated.</p>
        </important>")
type sqlStatementResult = {
  @ocaml.doc("<p>The number of records updated by a SQL statement.</p>")
  numberOfRecordsUpdated: option<recordsUpdated>,
  @ocaml.doc("<p>The result set of the SQL statement.</p>") resultFrame: option<resultFrame>,
}
type sqlStatementResults = array<sqlStatementResult>
@ocaml.doc("<fullname>Amazon RDS Data Service</fullname>
        <p>Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon Aurora
            Serverless DB cluster. To run these statements, you work with the Data Service
            API.</p>
        <p>For more information about the Data Service API, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html\">Using the Data API for Aurora
                Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p>")
module RollbackTransaction = {
  type t
  @ocaml.doc("<p>The request parameters represent the input of a request to perform a rollback of a
            transaction.</p>")
  type request = {
    @ocaml.doc("<p>The identifier of the transaction to roll back.</p>") transactionId: id,
    @ocaml.doc("<p>The name or ARN of the secret that enables access to the DB cluster.</p>")
    secretArn: arn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>")
    resourceArn: arn,
  }
  @ocaml.doc("<p>The response elements represent the output of a request to perform a rollback of a
            transaction.</p>")
  type response = {
    @ocaml.doc("<p>The status of the rollback operation.</p>")
    transactionStatus: option<transactionStatus>,
  }
  @module("@aws-sdk/client-rds-data") @new external new: request => t = "RollbackTransactionCommand"
  let make = (~transactionId, ~secretArn, ~resourceArn, ()) =>
    new({transactionId: transactionId, secretArn: secretArn, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CommitTransaction = {
  type t
  @ocaml.doc("<p>The request parameters represent the input of a commit transaction request.</p>")
  type request = {
    @ocaml.doc("<p>The identifier of the transaction to end and commit.</p>") transactionId: id,
    @ocaml.doc("<p>The name or ARN of the secret that enables access to the DB cluster.</p>")
    secretArn: arn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>")
    resourceArn: arn,
  }
  @ocaml.doc("<p>The response elements represent the output of a commit transaction request.</p>")
  type response = {
    @ocaml.doc("<p>The status of the commit operation.</p>")
    transactionStatus: option<transactionStatus>,
  }
  @module("@aws-sdk/client-rds-data") @new external new: request => t = "CommitTransactionCommand"
  let make = (~transactionId, ~secretArn, ~resourceArn, ()) =>
    new({transactionId: transactionId, secretArn: secretArn, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BeginTransaction = {
  type t
  @ocaml.doc("<p>The request parameters represent the input of a request to start a SQL
            transaction.</p>")
  type request = {
    @ocaml.doc("<p>The name of the database schema.</p>") schema: option<dbName>,
    @ocaml.doc("<p>The name of the database.</p>") database: option<dbName>,
    @ocaml.doc("<p>The name or ARN of the secret that enables access to the DB cluster.</p>")
    secretArn: arn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>")
    resourceArn: arn,
  }
  @ocaml.doc("<p>The response elements represent the output of a request to start a SQL
            transaction.</p>")
  type response = {
    @ocaml.doc("<p>The transaction ID of the transaction started by the call.</p>")
    transactionId: option<id>,
  }
  @module("@aws-sdk/client-rds-data") @new external new: request => t = "BeginTransactionCommand"
  let make = (~secretArn, ~resourceArn, ~schema=?, ~database=?, ()) =>
    new({schema: schema, database: database, secretArn: secretArn, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExecuteStatement = {
  type t
  @ocaml.doc("<p>The request parameters represent the input of a request to run a SQL statement against
            a database.</p>")
  type request = {
    @ocaml.doc("<p>Options that control how the result set is returned.</p>")
    resultSetOptions: option<resultSetOptions>,
    @ocaml.doc("<p>A value that indicates whether to continue running the statement after 
            the call times out. By default, the statement stops running when the call 
            times out.</p>
        <important>
            <p>For DDL statements, we recommend continuing to run the statement after 
               the call times out. When a DDL statement terminates before it is finished 
               running, it can result in errors and possibly corrupted data structures.</p>
        </important>")
    continueAfterTimeout: option<boolean_>,
    @ocaml.doc("<p>A value that indicates whether to include metadata in the results.</p>")
    includeResultMetadata: option<boolean_>,
    @ocaml.doc("<p>The identifier of a transaction that was started by using the
                <code>BeginTransaction</code> operation. Specify the transaction ID of the
            transaction that you want to include the SQL statement in.</p>
        <p>If the SQL statement is not part of a transaction, don't set this parameter.</p>")
    transactionId: option<id>,
    @ocaml.doc("<p>The parameters for the SQL statement.</p>
        <note>
            <p>Array parameters are not supported.</p>
        </note>")
    parameters: option<sqlParametersList>,
    @ocaml.doc("<p>The name of the database schema.</p>
        <note>
            <p>Currently, the <code>schema</code> parameter isn't supported.</p>
        </note>")
    schema: option<dbName>,
    @ocaml.doc("<p>The name of the database.</p>") database: option<dbName>,
    @ocaml.doc("<p>The SQL statement to run.</p>") sql: sqlStatement,
    @ocaml.doc("<p>The name or ARN of the secret that enables access to the DB cluster.</p>")
    secretArn: arn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>")
    resourceArn: arn,
  }
  @ocaml.doc("<p>The response elements represent the output of a request to run a SQL statement against
            a database.</p>")
  type response = {
    @ocaml.doc("<p>Values for fields generated during the request.</p>
        
        <note>
            <p>The <code>generatedFields</code> data isn't supported by Aurora PostgreSQL.
                To get the values of generated fields, use the <code>RETURNING</code> clause. For
                more information, see <a href=\"https://www.postgresql.org/docs/10/dml-returning.html\">Returning Data From
                    Modified Rows</a> in the PostgreSQL documentation.</p>
        </note>")
    generatedFields: option<fieldList>,
    @ocaml.doc("<p>The number of records updated by the request.</p>")
    numberOfRecordsUpdated: option<recordsUpdated>,
    @ocaml.doc("<p>Metadata for the columns included in the results.</p>")
    columnMetadata: option<metadata>,
    @ocaml.doc("<p>The records returned by the SQL statement.</p>") records: option<sqlRecords>,
  }
  @module("@aws-sdk/client-rds-data") @new external new: request => t = "ExecuteStatementCommand"
  let make = (
    ~sql,
    ~secretArn,
    ~resourceArn,
    ~resultSetOptions=?,
    ~continueAfterTimeout=?,
    ~includeResultMetadata=?,
    ~transactionId=?,
    ~parameters=?,
    ~schema=?,
    ~database=?,
    (),
  ) =>
    new({
      resultSetOptions: resultSetOptions,
      continueAfterTimeout: continueAfterTimeout,
      includeResultMetadata: includeResultMetadata,
      transactionId: transactionId,
      parameters: parameters,
      schema: schema,
      database: database,
      sql: sql,
      secretArn: secretArn,
      resourceArn: resourceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchExecuteStatement = {
  type t
  @ocaml.doc("<p>The request parameters represent the input of a SQL statement over an array of
            data.</p>")
  type request = {
    @ocaml.doc("<p>The identifier of a transaction that was started by using the
                <code>BeginTransaction</code> operation. Specify the transaction ID of the
            transaction that you want to include the SQL statement in.</p>
        <p>If the SQL statement is not part of a transaction, don't set this
            parameter.</p>")
    transactionId: option<id>,
    @ocaml.doc("<p>The parameter set for the batch operation.</p>
        <p>The SQL statement is executed as many times as the number of parameter sets provided. 
          To execute a SQL statement with no parameters, use one of the following options:</p>
        <ul>
            <li>
                <p>Specify one or more empty parameter sets.</p>
            </li>
            <li>
                <p>Use the <code>ExecuteStatement</code> operation instead of the <code>BatchExecuteStatement</code> operation.</p>
            </li>
         </ul>
        <note>
            <p>Array parameters are not supported.</p>
        </note>")
    parameterSets: option<sqlParameterSets>,
    @ocaml.doc("<p>The name of the database schema.</p>") schema: option<dbName>,
    @ocaml.doc("<p>The name of the database.</p>") database: option<dbName>,
    @ocaml.doc("<p>The SQL statement to run.</p>") sql: sqlStatement,
    @ocaml.doc("<p>The name or ARN of the secret that enables access to the DB cluster.</p>")
    secretArn: arn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>")
    resourceArn: arn,
  }
  @ocaml.doc("<p>The response elements represent the output of a SQL statement over an array of
            data.</p>")
  type response = {
    @ocaml.doc("<p>The execution results of each batch entry.</p>")
    updateResults: option<updateResults>,
  }
  @module("@aws-sdk/client-rds-data") @new
  external new: request => t = "BatchExecuteStatementCommand"
  let make = (
    ~sql,
    ~secretArn,
    ~resourceArn,
    ~transactionId=?,
    ~parameterSets=?,
    ~schema=?,
    ~database=?,
    (),
  ) =>
    new({
      transactionId: transactionId,
      parameterSets: parameterSets,
      schema: schema,
      database: database,
      sql: sql,
      secretArn: secretArn,
      resourceArn: resourceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExecuteSql = {
  type t
  @ocaml.doc("<p>The request parameters represent the input of a request to run one or more SQL
            statements.</p>")
  type request = {
    @ocaml.doc("<p>The name of the database schema.</p>") schema: option<dbName>,
    @ocaml.doc("<p>The name of the database.</p>") database: option<dbName>,
    @ocaml.doc("<p>One or more SQL statements to run on the DB cluster.</p>
        <p>You can separate SQL statements from each other with a semicolon (;). Any valid SQL
            statement is permitted, including data definition, data manipulation, and commit
            statements. </p>")
    sqlStatements: sqlStatement,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the secret that enables access to the DB cluster.</p>"
    )
    awsSecretStoreArn: arn,
    @ocaml.doc("<p>The ARN of the Aurora Serverless DB cluster.</p>") dbClusterOrInstanceArn: arn,
  }
  @ocaml.doc("<p>The response elements represent the output of a request to run one or more SQL
            statements.</p>")
  type response = {
    @ocaml.doc("<p>The results of the SQL statement or statements.</p>")
    sqlStatementResults: option<sqlStatementResults>,
  }
  @module("@aws-sdk/client-rds-data") @new external new: request => t = "ExecuteSqlCommand"
  let make = (
    ~sqlStatements,
    ~awsSecretStoreArn,
    ~dbClusterOrInstanceArn,
    ~schema=?,
    ~database=?,
    (),
  ) =>
    new({
      schema: schema,
      database: database,
      sqlStatements: sqlStatements,
      awsSecretStoreArn: awsSecretStoreArn,
      dbClusterOrInstanceArn: dbClusterOrInstanceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
