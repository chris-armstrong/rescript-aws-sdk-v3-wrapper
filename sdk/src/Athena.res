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
@ocaml.doc("<p>The reason for the query throttling, for example, when it exceeds the concurrent query
            limit.</p>")
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
@ocaml.doc("<p>The error code returned when the query execution failed to process, or when the
            processing request for the named query failed.</p>")
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
@ocaml.doc("<p>Describes a query execution that failed to process.</p>")
type unprocessedQueryExecutionId = {
  @ocaml.doc("<p>The error message returned when the query execution failed to process, if
            applicable.</p>")
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The error code returned when the query execution failed to process, if
            applicable.</p>")
  @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The unique identifier of the query execution.</p>") @as("QueryExecutionId")
  queryExecutionId: option<queryExecutionId>,
}
@ocaml.doc("<p>Information about a named query ID that could not be processed.</p>")
type unprocessedNamedQueryId = {
  @ocaml.doc("<p>The error message returned when the processing request for the named query failed, if
            applicable.</p>")
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The error code returned when the processing request for the named query failed, if
            applicable.</p>")
  @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The unique identifier of the named query.</p>") @as("NamedQueryId")
  namedQueryId: option<namedQueryId>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A label that you assign to a resource. In Athena, a resource can be a workgroup or
            data catalog. Each tag consists of a key and an optional value, both of which you
            define. For example, you can use tags to categorize Athena workgroups or data catalogs
            by purpose, owner, or environment. Use a consistent set of tag keys to make it easier to
            search and filter workgroups or data catalogs in your account. For best practices, see
                <a href=\"https://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">Tagging Best Practices</a>. Tag keys can be from 1 to 128 UTF-8 Unicode
            characters, and tag values can be from 0 to 256 UTF-8 Unicode characters. Tags can use
            letters and numbers representable in UTF-8, and the following characters: + - = . _ : /
            @. Tag keys and values are case-sensitive. Tag keys must be unique per resource. If you
            specify more than one tag, separate them by commas. </p>")
type tag = {
  @ocaml.doc("<p>A tag value. The tag value length is from 0 to 256 Unicode characters in UTF-8. You
            can use letters and numbers representable in UTF-8, and the following characters: + - =
            . _ : / @. Tag values are case-sensitive. </p>")
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>A tag key. The tag key length is from 1 to 128 Unicode characters in UTF-8. You can
            use letters and numbers representable in UTF-8, and the following characters: + - = . _
            : / @. Tag keys are case-sensitive and must be unique per resource. </p>")
  @as("Key")
  key: option<tagKey>,
}
@ocaml.doc("<p>The completion date, current state, submission time, and state change reason (if
            applicable) for the query execution.</p>")
type queryExecutionStatus = {
  @ocaml.doc("<p>The date and time that the query completed.</p>") @as("CompletionDateTime")
  completionDateTime: option<date>,
  @ocaml.doc("<p>The date and time that the query was submitted.</p>") @as("SubmissionDateTime")
  submissionDateTime: option<date>,
  @ocaml.doc("<p>Further detail about the status of the query.</p>") @as("StateChangeReason")
  stateChangeReason: option<string_>,
  @ocaml.doc("<p>The state of query execution. <code>QUEUED</code> indicates that the query has been
            submitted to the service, and Athena will execute the query as soon as resources are
            available. <code>RUNNING</code> indicates that the query is in execution phase.
                <code>SUCCEEDED</code> indicates that the query completed without errors.
                <code>FAILED</code> indicates that the query experienced an error and did not
            complete processing. <code>CANCELLED</code> indicates that a user input interrupted
            query execution.</p>
        <note>
            <p>Athena automatically retries your queries in cases of certain transient errors. As
                a result, you may see the query state transition from <code>RUNNING</code> or
                    <code>FAILED</code> to <code>QUEUED</code>. </p>
        </note>")
  @as("State")
  state: option<queryExecutionState>,
}
@ocaml.doc("<p>The amount of data scanned during the query execution and the amount of time that it
            took to execute, and the type of statement that was run.</p>")
type queryExecutionStatistics = {
  @ocaml.doc("<p>The number of milliseconds that Athena took to finalize and publish the query results
            after the query engine finished running the query.</p>")
  @as("ServiceProcessingTimeInMillis")
  serviceProcessingTimeInMillis: option<long>,
  @ocaml.doc("<p>The number of milliseconds that Athena took to plan the query processing flow. This
            includes the time spent retrieving table partitions from the data source. Note that
            because the query engine performs the query planning, query planning time is a subset of
            engine processing time.</p>")
  @as("QueryPlanningTimeInMillis")
  queryPlanningTimeInMillis: option<long>,
  @ocaml.doc("<p>The number of milliseconds that the query was in your query queue waiting for
            resources. Note that if transient errors occur, Athena might automatically add the query
            back to the queue.</p>")
  @as("QueryQueueTimeInMillis")
  queryQueueTimeInMillis: option<long>,
  @ocaml.doc("<p>The number of milliseconds that Athena took to run the query.</p>")
  @as("TotalExecutionTimeInMillis")
  totalExecutionTimeInMillis: option<long>,
  @ocaml.doc("<p>The location and file name of a data manifest file. The manifest file is saved to the
            Athena query results location in Amazon S3. The manifest file tracks files that the
            query wrote to Amazon S3. If the query fails, the manifest file also tracks files that
            the query intended to write. The manifest is useful for identifying orphaned files
            resulting from a failed query. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/querying.html\">Working with Query Results, Output Files, and
                Query History</a> in the <i>Amazon Athena User Guide</i>.</p>")
  @as("DataManifestLocation")
  dataManifestLocation: option<string_>,
  @ocaml.doc("<p>The number of bytes in the data that was queried.</p>") @as("DataScannedInBytes")
  dataScannedInBytes: option<long>,
  @ocaml.doc("<p>The number of milliseconds that the query took to execute.</p>")
  @as("EngineExecutionTimeInMillis")
  engineExecutionTimeInMillis: option<long>,
}
type queryExecutionIdList = array<queryExecutionId>
@ocaml.doc("<p>The database and data catalog context in which the query execution occurs.</p>")
type queryExecutionContext = {
  @ocaml.doc("<p>The name of the data catalog used in the query execution.</p>") @as("Catalog")
  catalog: option<catalogNameString>,
  @ocaml.doc("<p>The name of the database used in the query execution.</p>") @as("Database")
  database: option<databaseString>,
}
@ocaml.doc("<p>The name and last modified time of the prepared statement.</p>")
type preparedStatementSummary = {
  @ocaml.doc("<p>The last modified time of the prepared statement.</p>") @as("LastModifiedTime")
  lastModifiedTime: option<date>,
  @ocaml.doc("<p>The name of the prepared statement.</p>") @as("StatementName")
  statementName: option<statementName>,
}
@ocaml.doc("<p>A prepared SQL statement for use with Athena.</p>")
type preparedStatement = {
  @ocaml.doc("<p>The last modified time of the prepared statement.</p>") @as("LastModifiedTime")
  lastModifiedTime: option<date>,
  @ocaml.doc("<p>The description of the prepared statement.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the workgroup to which the prepared statement belongs.</p>")
  @as("WorkGroupName")
  workGroupName: option<workGroupName>,
  @ocaml.doc("<p>The query string for the prepared statement.</p>") @as("QueryStatement")
  queryStatement: option<queryString>,
  @ocaml.doc("<p>The name of the prepared statement.</p>") @as("StatementName")
  statementName: option<statementName>,
}
type parametersMap = Js.Dict.t<parametersMapValue>
type namedQueryIdList = array<namedQueryId>
@ocaml.doc("<p>A query, where <code>QueryString</code> is the list of SQL query statements that
            comprise the query.</p>")
type namedQuery = {
  @ocaml.doc("<p>The name of the workgroup that contains the named query.</p>") @as("WorkGroup")
  workGroup: option<workGroupName>,
  @ocaml.doc("<p>The unique identifier of the query.</p>") @as("NamedQueryId")
  namedQueryId: option<namedQueryId>,
  @ocaml.doc("<p>The SQL query statements that comprise the query.</p>") @as("QueryString")
  queryString: queryString,
  @ocaml.doc("<p>The database to which the query belongs.</p>") @as("Database")
  database: databaseString,
  @ocaml.doc("<p>The query description.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The query name.</p>") @as("Name") name: nameString,
}
@ocaml.doc("<p>The Athena engine version for running queries.</p>")
type engineVersion = {
  @ocaml.doc("<p>Read only. The engine version on which the query runs. If the user requests
            a valid engine version other than Auto, the effective engine version is the same as the
            engine version that the user requested. If the user requests Auto, the effective engine version is chosen by Athena. When a request to update the engine version is made by a <code>CreateWorkGroup</code> or <code>UpdateWorkGroup</code> operation, the 
            <code>EffectiveEngineVersion</code> field is ignored.</p>")
  @as("EffectiveEngineVersion")
  effectiveEngineVersion: option<nameString>,
  @ocaml.doc(
    "<p>The engine version requested by the user. Possible values are determined by the output of <code>ListEngineVersions</code>, including Auto. The default is Auto.</p>"
  )
  @as("SelectedEngineVersion")
  selectedEngineVersion: option<nameString>,
}
@ocaml.doc("<p>If query results are encrypted in Amazon S3, indicates the encryption option used (for
            example, <code>SSE-KMS</code> or <code>CSE-KMS</code>) and key information.</p>")
type encryptionConfiguration = {
  @ocaml.doc("<p>For <code>SSE-KMS</code> and <code>CSE-KMS</code>, this is the KMS key ARN or
            ID.</p>")
  @as("KmsKey")
  kmsKey: option<string_>,
  @ocaml.doc("<p>Indicates whether Amazon S3 server-side encryption with Amazon S3-managed keys
                (<code>SSE-S3</code>), server-side encryption with KMS-managed keys
                (<code>SSE-KMS</code>), or client-side encryption with KMS-managed keys (CSE-KMS) is
            used.</p>
        <p>If a query runs in a workgroup and the workgroup overrides client-side settings, then
            the workgroup's setting for encryption is used. It specifies whether query results must
            be encrypted, for all queries that run in this workgroup. </p>")
  @as("EncryptionOption")
  encryptionOption: encryptionOption,
}
@ocaml.doc("<p>A piece of data (a field in the table).</p>")
type datum = {
  @ocaml.doc("<p>The value of the datum.</p>") @as("VarCharValue")
  varCharValue: option<datumString>,
}
@ocaml.doc("<p>The summary information for the data catalog, which includes its name and type.</p>")
type dataCatalogSummary = {
  @ocaml.doc("<p>The data catalog type.</p>") @as("Type") type_: option<dataCatalogType>,
  @ocaml.doc("<p>The name of the data catalog.</p>") @as("CatalogName")
  catalogName: option<catalogNameString>,
}
@ocaml.doc("<p>Information about the columns in a query execution result.</p>")
type columnInfo = {
  @ocaml.doc("<p>Indicates whether values in the column are case-sensitive.</p>")
  @as("CaseSensitive")
  caseSensitive: option<boolean_>,
  @ocaml.doc("<p>Indicates the column's nullable status.</p>") @as("Nullable")
  nullable: option<columnNullable>,
  @ocaml.doc("<p>For <code>DECIMAL</code> data types, specifies the total number of digits in the
            fractional part of the value. Defaults to 0.</p>")
  @as("Scale")
  scale: option<integer_>,
  @ocaml.doc("<p>For <code>DECIMAL</code> data types, specifies the total number of digits, up to 38.
            For performance reasons, we recommend up to 18 digits.</p>")
  @as("Precision")
  precision: option<integer_>,
  @ocaml.doc("<p>The data type of the column.</p>") @as("Type") type_: string_,
  @ocaml.doc("<p>A column label.</p>") @as("Label") label: option<string_>,
  @ocaml.doc("<p>The name of the column.</p>") @as("Name") name: string_,
  @ocaml.doc("<p>The table name for the query results.</p>") @as("TableName")
  tableName: option<string_>,
  @ocaml.doc("<p>The schema name (database name) to which the query results belong.</p>")
  @as("SchemaName")
  schemaName: option<string_>,
  @ocaml.doc("<p>The catalog to which the query results belong.</p>") @as("CatalogName")
  catalogName: option<string_>,
}
@ocaml.doc("<p>Contains metadata for a column in a table.</p>")
type column = {
  @ocaml.doc("<p>Optional information about the column.</p>") @as("Comment")
  comment: option<commentString>,
  @ocaml.doc("<p>The data type of the column.</p>") @as("Type") type_: option<typeString>,
  @ocaml.doc("<p>The name of the column.</p>") @as("Name") name: nameString,
}
type datumList = array<datum>
@ocaml.doc("<p>The summary information for the workgroup, which includes its name, state,
            description, and the date and time it was created.</p>")
type workGroupSummary = {
  @ocaml.doc(
    "<p>The engine version setting for all queries on the workgroup. Queries on the <code>AmazonAthenaPreviewFunctionality</code> workgroup run on the preview engine regardless of this setting.</p>"
  )
  @as("EngineVersion")
  engineVersion: option<engineVersion>,
  @ocaml.doc("<p>The workgroup creation date and time.</p>") @as("CreationTime")
  creationTime: option<date>,
  @ocaml.doc("<p>The workgroup description.</p>") @as("Description")
  description: option<workGroupDescriptionString>,
  @ocaml.doc("<p>The state of the workgroup.</p>") @as("State") state: option<workGroupState>,
  @ocaml.doc("<p>The name of the workgroup.</p>") @as("Name") name: option<workGroupName>,
}
type unprocessedQueryExecutionIdList = array<unprocessedQueryExecutionId>
type unprocessedNamedQueryIdList = array<unprocessedNamedQueryId>
type tagList_ = array<tag>
@ocaml.doc("<p>The information about the updates in the query results, such as output location and
            encryption configuration for the query results.</p>")
type resultConfigurationUpdates = {
  @ocaml.doc("<p>If set to \"true\", indicates that the previously-specified encryption configuration
            (also known as the client-side setting) for queries in this workgroup should be ignored
            and set to null. If set to \"false\" or not set, and a value is present in the
            EncryptionConfiguration in ResultConfigurationUpdates (the client-side setting), the
            EncryptionConfiguration in the workgroup's ResultConfiguration will be updated with the
            new value. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override
                Client-Side Settings</a>.</p>")
  @as("RemoveEncryptionConfiguration")
  removeEncryptionConfiguration: option<boxedBoolean>,
  @ocaml.doc("<p>The encryption configuration for the query results.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: option<encryptionConfiguration>,
  @ocaml.doc("<p>If set to \"true\", indicates that the previously-specified query results location (also
            known as a client-side setting) for queries in this workgroup should be ignored and set
            to null. If set to \"false\" or not set, and a value is present in the OutputLocation in
            ResultConfigurationUpdates (the client-side setting), the OutputLocation in the
            workgroup's ResultConfiguration will be updated with the new value. For more
            information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override
                Client-Side Settings</a>.</p>")
  @as("RemoveOutputLocation")
  removeOutputLocation: option<boxedBoolean>,
  @ocaml.doc("<p>The location in Amazon S3 where your query results are stored, such as
                <code>s3://path/to/query/bucket/</code>. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/querying.html\">Query Results</a> If
            workgroup settings override client-side settings, then the query uses the location for
            the query results and the encryption configuration that are specified for the workgroup.
            The \"workgroup settings override\" is specified in EnforceWorkGroupConfiguration
            (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>")
  @as("OutputLocation")
  outputLocation: option<string_>,
}
@ocaml.doc("<p>The location in Amazon S3 where query results are stored and the encryption option, if
            any, used for query results. These are known as \"client-side settings\". If workgroup
            settings override client-side settings, then the query uses the workgroup
            settings.</p>")
type resultConfiguration = {
  @ocaml.doc("<p>If query results are encrypted in Amazon S3, indicates the encryption option used (for
            example, <code>SSE-KMS</code> or <code>CSE-KMS</code>) and key information. This is a
            client-side setting. If workgroup settings override client-side settings, then the query
            uses the encryption configuration that is specified for the workgroup, and also uses the
            location for storing query results specified in the workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a> and <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: option<encryptionConfiguration>,
  @ocaml.doc("<p>The location in Amazon S3 where your query results are stored, such as
                <code>s3://path/to/query/bucket/</code>. To run the query, you must specify the
            query results location using one of the ways: either for individual queries using either
            this setting (client-side), or in the workgroup, using <a>WorkGroupConfiguration</a>. If none of them is set, Athena issues an error
            that no output location is provided. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/querying.html\">Query Results</a>. If
            workgroup settings override client-side settings, then the query uses the settings
            specified for the workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>")
  @as("OutputLocation")
  outputLocation: option<string_>,
}
type preparedStatementsList = array<preparedStatementSummary>
type namedQueryList = array<namedQuery>
type engineVersionsList = array<engineVersion>
@ocaml.doc("<p>Contains metadata information for a database in a data catalog.</p>")
type database = {
  @ocaml.doc("<p>A set of custom key/value pairs.</p>") @as("Parameters")
  parameters: option<parametersMap>,
  @ocaml.doc("<p>An optional description of the database.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the database.</p>") @as("Name") name: nameString,
}
type dataCatalogSummaryList = array<dataCatalogSummary>
@ocaml.doc("<p>Contains information about a data catalog in an AWS account.</p>")
type dataCatalog = {
  @ocaml.doc("<p>Specifies the Lambda function or functions to use for the data catalog. This is a
            mapping whose values depend on the catalog type. </p>
        <ul>
            <li>
                <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
                        <code>metadata-function</code> parameter is required. <code>The
                        sdk-version</code> parameter is optional and defaults to the currently
                    supported version.</p>
                <p>
                  <code>metadata-function=<i>lambda_arn</i>,
                            sdk-version=<i>version_number</i>
                  </code>
               </p>
            </li>
            <li>
                <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
                    of required parameters, but not both.</p>
                <ul>
                  <li>
                        <p>If you have one Lambda function that processes metadata and another
                            for reading the actual data, use the following syntax. Both parameters
                            are required.</p>
                        <p>
                        <code>metadata-function=<i>lambda_arn</i>,
                                    record-function=<i>lambda_arn</i>
                        </code>
                     </p>
                    </li>
                  <li>
                        <p> If you have a composite Lambda function that processes both metadata
                            and data, use the following syntax to specify your Lambda
                            function.</p>
                        <p>
                        <code>function=<i>lambda_arn</i>
                        </code>
                     </p>
                    </li>
               </ul>
            </li>
         </ul>")
  @as("Parameters")
  parameters: option<parametersMap>,
  @ocaml.doc("<p>The type of data catalog: <code>LAMBDA</code> for a federated catalog or
                <code>HIVE</code> for an external hive metastore. <code>GLUE</code> refers to the
                <code>AwsDataCatalog</code> that already exists in your account, of which you can
            have only one.</p>")
  @as("Type")
  type_: dataCatalogType,
  @ocaml.doc("<p>An optional description of the data catalog.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the data catalog. The catalog name must be unique for the AWS account and
            can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters.</p>")
  @as("Name")
  name: catalogNameString,
}
type columnList = array<column>
type columnInfoList = array<columnInfo>
type workGroupsList = array<workGroupSummary>
@ocaml.doc("<p>The configuration information that will be updated for this workgroup, which includes
            the location in Amazon S3 where query results are stored, the encryption option, if any,
            used for query results, whether the Amazon CloudWatch Metrics are enabled for the
            workgroup, whether the workgroup settings override the client-side settings, and the
            data usage limit for the amount of bytes scanned per query, if it is specified.</p>")
type workGroupConfigurationUpdates = {
  @ocaml.doc(
    "<p>The engine version requested when a workgroup is updated. After the update, all queries on the workgroup run on the requested engine version. If no value was previously set, the default is Auto. Queries on the <code>AmazonAthenaPreviewFunctionality</code> workgroup run on the preview engine regardless of this setting.</p>"
  )
  @as("EngineVersion")
  engineVersion: option<engineVersion>,
  @ocaml.doc("<p>If set to <code>true</code>, allows members assigned to a workgroup to specify Amazon
            S3 Requester Pays buckets in queries. If set to <code>false</code>, workgroup members
            cannot query data from Requester Pays buckets, and queries that retrieve data from
            Requester Pays buckets cause an error. The default is <code>false</code>. For more
            information about Requester Pays buckets, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html\">Requester Pays Buckets</a>
            in the <i>Amazon Simple Storage Service Developer Guide</i>.</p>")
  @as("RequesterPaysEnabled")
  requesterPaysEnabled: option<boxedBoolean>,
  @ocaml.doc("<p>Indicates that the data usage control limit per query is removed. <a>WorkGroupConfiguration$BytesScannedCutoffPerQuery</a>
         </p>")
  @as("RemoveBytesScannedCutoffPerQuery")
  removeBytesScannedCutoffPerQuery: option<boxedBoolean>,
  @ocaml.doc("<p>The upper limit (cutoff) for the amount of bytes a single query in a workgroup is
            allowed to scan.</p>")
  @as("BytesScannedCutoffPerQuery")
  bytesScannedCutoffPerQuery: option<bytesScannedCutoffValue>,
  @ocaml.doc("<p>Indicates whether this workgroup enables publishing metrics to Amazon
            CloudWatch.</p>")
  @as("PublishCloudWatchMetricsEnabled")
  publishCloudWatchMetricsEnabled: option<boxedBoolean>,
  @ocaml.doc("<p>The result configuration information about the queries in this workgroup that will be
            updated. Includes the updated results location and an updated option for encrypting
            query results.</p>")
  @as("ResultConfigurationUpdates")
  resultConfigurationUpdates: option<resultConfigurationUpdates>,
  @ocaml.doc("<p>If set to \"true\", the settings for the workgroup override client-side settings. If set
            to \"false\" client-side settings are used. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>")
  @as("EnforceWorkGroupConfiguration")
  enforceWorkGroupConfiguration: option<boxedBoolean>,
}
@ocaml.doc("<p>The configuration of the workgroup, which includes the location in Amazon S3 where
            query results are stored, the encryption option, if any, used for query results, whether
            the Amazon CloudWatch Metrics are enabled for the workgroup and whether workgroup
            settings override query settings, and the data usage limits for the amount of data
            scanned per query or per workgroup. The workgroup settings override is specified in
            EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>. </p>")
type workGroupConfiguration = {
  @ocaml.doc("<p>The engine version that all queries running on
            the workgroup use. Queries on the <code>AmazonAthenaPreviewFunctionality</code> workgroup run on the preview engine regardless of this setting.</p>")
  @as("EngineVersion")
  engineVersion: option<engineVersion>,
  @ocaml.doc("<p>If set to <code>true</code>, allows members assigned to a workgroup to reference
            Amazon S3 Requester Pays buckets in queries. If set to <code>false</code>, workgroup
            members cannot query data from Requester Pays buckets, and queries that retrieve data
            from Requester Pays buckets cause an error. The default is <code>false</code>. For more
            information about Requester Pays buckets, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html\">Requester Pays Buckets</a>
            in the <i>Amazon Simple Storage Service Developer Guide</i>.</p>")
  @as("RequesterPaysEnabled")
  requesterPaysEnabled: option<boxedBoolean>,
  @ocaml.doc("<p>The upper data usage limit (cutoff) for the amount of bytes a single query in a
            workgroup is allowed to scan.</p>")
  @as("BytesScannedCutoffPerQuery")
  bytesScannedCutoffPerQuery: option<bytesScannedCutoffValue>,
  @ocaml.doc("<p>Indicates that the Amazon CloudWatch metrics are enabled for the workgroup.</p>")
  @as("PublishCloudWatchMetricsEnabled")
  publishCloudWatchMetricsEnabled: option<boxedBoolean>,
  @ocaml.doc("<p>If set to \"true\", the settings for the workgroup override client-side settings. If set
            to \"false\", client-side settings are used. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>")
  @as("EnforceWorkGroupConfiguration")
  enforceWorkGroupConfiguration: option<boxedBoolean>,
  @ocaml.doc("<p>The configuration for the workgroup, which includes the location in Amazon S3 where
            query results are stored and the encryption option, if any, used for query results. To
            run the query, you must specify the query results location using one of the ways: either
            in the workgroup using this setting, or for individual queries (client-side), using
                <a>ResultConfiguration$OutputLocation</a>. If none of them is set, Athena
            issues an error that no output location is provided. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/querying.html\">Query
            Results</a>.</p>")
  @as("ResultConfiguration")
  resultConfiguration: option<resultConfiguration>,
}
@ocaml.doc("<p>Contains metadata for a table.</p>")
type tableMetadata = {
  @ocaml.doc("<p>A set of custom key/value pairs for table properties.</p>") @as("Parameters")
  parameters: option<parametersMap>,
  @ocaml.doc("<p>A list of the partition keys in the table.</p>") @as("PartitionKeys")
  partitionKeys: option<columnList>,
  @ocaml.doc("<p>A list of the columns in the table.</p>") @as("Columns")
  columns: option<columnList>,
  @ocaml.doc("<p>The type of table. In Athena, only <code>EXTERNAL_TABLE</code> is supported.</p>")
  @as("TableType")
  tableType: option<tableTypeString>,
  @ocaml.doc("<p>The last time the table was accessed.</p>") @as("LastAccessTime")
  lastAccessTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the table was created.</p>") @as("CreateTime")
  createTime: option<timestamp_>,
  @ocaml.doc("<p>The name of the table.</p>") @as("Name") name: nameString,
}
@ocaml.doc("<p>The rows that comprise a query result table.</p>")
type row = {
  @ocaml.doc("<p>The data that populates a row in a query result table.</p>") @as("Data")
  data: option<datumList>,
}
@ocaml.doc("<p>The metadata that describes the column structure and data types of a table of query
            results. To return a <code>ResultSetMetadata</code> object, use <a>GetQueryResults</a>.</p>")
type resultSetMetadata = {
  @ocaml.doc("<p>Information about the columns returned in a query result metadata.</p>")
  @as("ColumnInfo")
  columnInfo: option<columnInfoList>,
}
@ocaml.doc("<p>Information about a single instance of a query execution.</p>")
type queryExecution = {
  @ocaml.doc("<p>The engine version that executed the query.</p>") @as("EngineVersion")
  engineVersion: option<engineVersion>,
  @ocaml.doc("<p>The name of the workgroup in which the query ran.</p>") @as("WorkGroup")
  workGroup: option<workGroupName>,
  @ocaml.doc("<p>Query execution statistics, such as the amount of data scanned, the amount of time
            that the query took to process, and the type of statement that was run.</p>")
  @as("Statistics")
  statistics: option<queryExecutionStatistics>,
  @ocaml.doc("<p>The completion date, current state, submission time, and state change reason (if
            applicable) for the query execution.</p>")
  @as("Status")
  status: option<queryExecutionStatus>,
  @ocaml.doc("<p>The database in which the query execution occurred.</p>")
  @as("QueryExecutionContext")
  queryExecutionContext: option<queryExecutionContext>,
  @ocaml.doc("<p>The location in Amazon S3 where query results were stored and the encryption option,
            if any, used for query results. These are known as \"client-side settings\". If workgroup
            settings override client-side settings, then the query uses the location for the query
            results and the encryption configuration that are specified for the workgroup.</p>")
  @as("ResultConfiguration")
  resultConfiguration: option<resultConfiguration>,
  @ocaml.doc("<p>The type of query statement that was run. <code>DDL</code> indicates DDL query
            statements. <code>DML</code> indicates DML (Data Manipulation Language) query
            statements, such as <code>CREATE TABLE AS SELECT</code>. <code>UTILITY</code> indicates
            query statements other than DDL and DML, such as <code>SHOW CREATE TABLE</code>, or
                <code>DESCRIBE <table></code>.</p>")
  @as("StatementType")
  statementType: option<statementType>,
  @ocaml.doc("<p>The SQL query statements which the query execution ran.</p>") @as("Query")
  query: option<queryString>,
  @ocaml.doc("<p>The unique identifier for each query execution.</p>") @as("QueryExecutionId")
  queryExecutionId: option<queryExecutionId>,
}
type databaseList = array<database>
@ocaml.doc("<p>A workgroup, which contains a name, description, creation time, state, and other
            configuration, listed under <a>WorkGroup$Configuration</a>. Each workgroup
            enables you to isolate queries for you or your group of users from other queries in the
            same account, to configure the query results location and the encryption configuration
            (known as workgroup settings), to enable sending query metrics to Amazon CloudWatch, and
            to establish per-query data usage control limits for all queries in a workgroup. The
            workgroup settings override is specified in EnforceWorkGroupConfiguration (true/false)
            in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>")
type workGroup = {
  @ocaml.doc("<p>The date and time the workgroup was created.</p>") @as("CreationTime")
  creationTime: option<date>,
  @ocaml.doc("<p>The workgroup description.</p>") @as("Description")
  description: option<workGroupDescriptionString>,
  @ocaml.doc("<p>The configuration of the workgroup, which includes the location in Amazon S3 where
            query results are stored, the encryption configuration, if any, used for query results;
            whether the Amazon CloudWatch Metrics are enabled for the workgroup; whether workgroup
            settings override client-side settings; and the data usage limits for the amount of data
            scanned per query or per workgroup. The workgroup settings override is specified in
            EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>")
  @as("Configuration")
  configuration: option<workGroupConfiguration>,
  @ocaml.doc("<p>The state of the workgroup: ENABLED or DISABLED.</p>") @as("State")
  state: option<workGroupState>,
  @ocaml.doc("<p>The workgroup name.</p>") @as("Name") name: workGroupName,
}
type tableMetadataList = array<tableMetadata>
type rowList = array<row>
type queryExecutionList = array<queryExecution>
@ocaml.doc("<p>The metadata and rows that comprise a query result set. The metadata describes the
            column structure and data types. To return a <code>ResultSet</code> object, use <a>GetQueryResults</a>.</p>")
type resultSet = {
  @ocaml.doc("<p>The metadata that describes the column structure and data types of a table of query
            results.</p>")
  @as("ResultSetMetadata")
  resultSetMetadata: option<resultSetMetadata>,
  @ocaml.doc("<p>The rows in the table.</p>") @as("Rows") rows: option<rowList>,
}
@ocaml.doc("<p>Amazon Athena is an interactive query service that lets you use standard SQL to
            analyze data directly in Amazon S3. You can point Athena at your data in Amazon S3 and
            run ad-hoc queries and get results in seconds. Athena is serverless, so there is no
            infrastructure to set up or manage. You pay only for the queries you run. Athena scales
            automatically—executing queries in parallel—so results are fast, even with large
            datasets and complex queries. For more information, see <a href=\"http://docs.aws.amazon.com/athena/latest/ug/what-is.html\">What is Amazon
                Athena</a> in the <i>Amazon Athena User Guide</i>.</p>
        <p>If you connect to Athena using the JDBC driver, use version 1.1.0 of the driver or
            later with the Amazon Athena API. Earlier version drivers do not support the API. For
            more information and to download the driver, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html\">Accessing
                Amazon Athena with JDBC</a>.</p>
        <p>For code samples using the AWS SDK for Java, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/code-samples.html\">Examples and
                Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>")
module UpdatePreparedStatement = {
  type t
  type request = {
    @ocaml.doc("<p>The description of the prepared statement.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The query string for the prepared statement.</p>") @as("QueryStatement")
    queryStatement: queryString,
    @ocaml.doc("<p>The workgroup for the prepared statement.</p>") @as("WorkGroup")
    workGroup: workGroupName,
    @ocaml.doc("<p>The name of the prepared statement.</p>") @as("StatementName")
    statementName: statementName,
  }

  @module("@aws-sdk/client-athena") @new
  external new: request => t = "UpdatePreparedStatementCommand"
  let make = (~queryStatement, ~workGroup, ~statementName, ~description=?, ()) =>
    new({
      description: description,
      queryStatement: queryStatement,
      workGroup: workGroup,
      statementName: statementName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopQueryExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the query execution to stop.</p>") @as("QueryExecutionId")
    queryExecutionId: queryExecutionId,
  }

  @module("@aws-sdk/client-athena") @new external new: request => t = "StopQueryExecutionCommand"
  let make = (~queryExecutionId, ()) => new({queryExecutionId: queryExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWorkGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The option to delete the workgroup and its contents even if the workgroup contains any
            named queries or query executions.</p>")
    @as("RecursiveDeleteOption")
    recursiveDeleteOption: option<boxedBoolean>,
    @ocaml.doc("<p>The unique name of the workgroup to delete.</p>") @as("WorkGroup")
    workGroup: workGroupName,
  }

  @module("@aws-sdk/client-athena") @new external new: request => t = "DeleteWorkGroupCommand"
  let make = (~workGroup, ~recursiveDeleteOption=?, ()) =>
    new({recursiveDeleteOption: recursiveDeleteOption, workGroup: workGroup})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePreparedStatement = {
  type t
  type request = {
    @ocaml.doc("<p>The workgroup to which the statement to be deleted belongs.</p>")
    @as("WorkGroup")
    workGroup: workGroupName,
    @ocaml.doc("<p>The name of the prepared statement to delete.</p>") @as("StatementName")
    statementName: statementName,
  }

  @module("@aws-sdk/client-athena") @new
  external new: request => t = "DeletePreparedStatementCommand"
  let make = (~workGroup, ~statementName, ()) =>
    new({workGroup: workGroup, statementName: statementName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteNamedQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the query to delete.</p>") @as("NamedQueryId")
    namedQueryId: namedQueryId,
  }

  @module("@aws-sdk/client-athena") @new external new: request => t = "DeleteNamedQueryCommand"
  let make = (~namedQueryId, ()) => new({namedQueryId: namedQueryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataCatalog = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the data catalog to delete.</p>") @as("Name")
    name: catalogNameString,
  }

  @module("@aws-sdk/client-athena") @new external new: request => t = "DeleteDataCatalogCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreatePreparedStatement = {
  type t
  type request = {
    @ocaml.doc("<p>The description of the prepared statement.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The query string for the prepared statement.</p>") @as("QueryStatement")
    queryStatement: queryString,
    @ocaml.doc("<p>The name of the workgroup to which the prepared statement belongs.</p>")
    @as("WorkGroup")
    workGroup: workGroupName,
    @ocaml.doc("<p>The name of the prepared statement.</p>") @as("StatementName")
    statementName: statementName,
  }

  @module("@aws-sdk/client-athena") @new
  external new: request => t = "CreatePreparedStatementCommand"
  let make = (~queryStatement, ~workGroup, ~statementName, ~description=?, ()) =>
    new({
      description: description,
      queryStatement: queryStatement,
      workGroup: workGroup,
      statementName: statementName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateNamedQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the workgroup in which the named query is being created.</p>")
    @as("WorkGroup")
    workGroup: option<workGroupName>,
    @ocaml.doc("<p>A unique case-sensitive string used to ensure the request to create the query is
            idempotent (executes only once). If another <code>CreateNamedQuery</code> request is
            received, the same response is returned and another query is not created. If a parameter
            has changed, for example, the <code>QueryString</code>, an error is returned.</p>
        <important>
            <p>This token is listed as not required because AWS SDKs (for example the AWS SDK for
                Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS
                CLI, you must provide this token or the action will fail.</p>
        </important>")
    @as("ClientRequestToken")
    clientRequestToken: option<idempotencyToken>,
    @ocaml.doc("<p>The contents of the query with all query statements.</p>") @as("QueryString")
    queryString: queryString,
    @ocaml.doc("<p>The database to which the query belongs.</p>") @as("Database")
    database: databaseString,
    @ocaml.doc("<p>The query description.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The query name.</p>") @as("Name") name: nameString,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of the query.</p>") @as("NamedQueryId")
    namedQueryId: option<namedQueryId>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "CreateNamedQueryCommand"
  let make = (
    ~queryString,
    ~database,
    ~name,
    ~workGroup=?,
    ~clientRequestToken=?,
    ~description=?,
    (),
  ) =>
    new({
      workGroup: workGroup,
      clientRequestToken: clientRequestToken,
      queryString: queryString,
      database: database,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataCatalog = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the Lambda function or functions to use for updating the data catalog. This
            is a mapping whose values depend on the catalog type. </p>
        <ul>
            <li>
                <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
                        <code>metadata-function</code> parameter is required. <code>The
                        sdk-version</code> parameter is optional and defaults to the currently
                    supported version.</p>
                <p>
                  <code>metadata-function=<i>lambda_arn</i>,
                            sdk-version=<i>version_number</i>
                  </code>
               </p>
            </li>
            <li>
                <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
                    of required parameters, but not both.</p>
                <ul>
                  <li>
                        <p>If you have one Lambda function that processes metadata and another
                            for reading the actual data, use the following syntax. Both parameters
                            are required.</p>
                        <p>
                        <code>metadata-function=<i>lambda_arn</i>,
                                    record-function=<i>lambda_arn</i>
                        </code>
                     </p>
                    </li>
                  <li>
                        <p> If you have a composite Lambda function that processes both metadata
                            and data, use the following syntax to specify your Lambda
                            function.</p>
                        <p>
                        <code>function=<i>lambda_arn</i>
                        </code>
                     </p>
                    </li>
               </ul>
            </li>
         </ul>")
    @as("Parameters")
    parameters: option<parametersMap>,
    @ocaml.doc("<p>New or modified text that describes the data catalog.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>Specifies the type of data catalog to update. Specify <code>LAMBDA</code> for a
            federated catalog or <code>HIVE</code> for an external hive metastore.</p>
        <note>
            <p>Do not use the <code>GLUE</code> type. This refers to the
                    <code>AwsDataCatalog</code> that already exists in your account, of which you
                can have only one. Specifying the <code>GLUE</code> type will result in an
                    <code>INVALID_INPUT</code> error.</p>
        </note>")
    @as("Type")
    type_: dataCatalogType,
    @ocaml.doc("<p>The name of the data catalog to update. The catalog name must be unique for the AWS
            account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen
            characters.</p>")
    @as("Name")
    name: catalogNameString,
  }

  @module("@aws-sdk/client-athena") @new external new: request => t = "UpdateDataCatalogCommand"
  let make = (~type_, ~name, ~parameters=?, ~description=?, ()) =>
    new({parameters: parameters, description: description, type_: type_, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A comma-separated list of one or more tag keys whose tags are to be removed from the
            specified resource.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>Specifies the ARN of the resource from which tags are to be removed.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-athena") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListQueryExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the workgroup from which queries are being returned. If a workgroup is not
            specified, a list of available query execution IDs for the queries in the primary
            workgroup is returned.</p>")
    @as("WorkGroup")
    workGroup: option<workGroupName>,
    @ocaml.doc("<p>The maximum number of query executions to return in this request.</p>")
    @as("MaxResults")
    maxResults: option<maxQueryExecutionsCount>,
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the
                <code>NextToken</code> from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>A token to be used by the next request if this request is truncated.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The unique IDs of each query execution as an array of strings.</p>")
    @as("QueryExecutionIds")
    queryExecutionIds: option<queryExecutionIdList>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "ListQueryExecutionsCommand"
  let make = (~workGroup=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({workGroup: workGroup, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNamedQueries = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the workgroup from which the named queries are being returned. If a
            workgroup is not specified, the saved queries for the primary workgroup are
            returned.</p>")
    @as("WorkGroup")
    workGroup: option<workGroupName>,
    @ocaml.doc("<p>The maximum number of queries to return in this request.</p>") @as("MaxResults")
    maxResults: option<maxNamedQueriesCount>,
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the
                <code>NextToken</code> from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the
                <code>NextToken</code> from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The list of unique query IDs.</p>") @as("NamedQueryIds")
    namedQueryIds: option<namedQueryIdList>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "ListNamedQueriesCommand"
  let make = (~workGroup=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({workGroup: workGroup, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPreparedStatement = {
  type t
  type request = {
    @ocaml.doc("<p>The workgroup to which the statement to be retrieved belongs.</p>")
    @as("WorkGroup")
    workGroup: workGroupName,
    @ocaml.doc("<p>The name of the prepared statement to retrieve.</p>") @as("StatementName")
    statementName: statementName,
  }
  type response = {
    @ocaml.doc("<p>The name of the prepared statement that was retrieved.</p>")
    @as("PreparedStatement")
    preparedStatement: option<preparedStatement>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "GetPreparedStatementCommand"
  let make = (~workGroup, ~statementName, ()) =>
    new({workGroup: workGroup, statementName: statementName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetNamedQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the query. Use <a>ListNamedQueries</a> to get query
            IDs.</p>")
    @as("NamedQueryId")
    namedQueryId: namedQueryId,
  }
  type response = {
    @ocaml.doc("<p>Information about the query.</p>") @as("NamedQuery")
    namedQuery: option<namedQuery>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "GetNamedQueryCommand"
  let make = (~namedQueryId, ()) => new({namedQueryId: namedQueryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of one or more tags, separated by commas, to be added to an Athena
            workgroup or data catalog resource.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>Specifies the ARN of the Athena resource (workgroup or data catalog) to which tags are
            to be added.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-athena") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartQueryExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the workgroup in which the query is being started.</p>")
    @as("WorkGroup")
    workGroup: option<workGroupName>,
    @ocaml.doc("<p>Specifies information about where and how to save the results of the query execution.
            If the query runs in a workgroup, then workgroup's settings may override query settings.
            This affects the query results location. The workgroup settings override is specified in
            EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>")
    @as("ResultConfiguration")
    resultConfiguration: option<resultConfiguration>,
    @ocaml.doc("<p>The database within which the query executes.</p>") @as("QueryExecutionContext")
    queryExecutionContext: option<queryExecutionContext>,
    @ocaml.doc("<p>A unique case-sensitive string used to ensure the request to create the query is
            idempotent (executes only once). If another <code>StartQueryExecution</code> request is
            received, the same response is returned and another query is not created. If a parameter
            has changed, for example, the <code>QueryString</code>, an error is returned.</p>
        <important>
            <p>This token is listed as not required because AWS SDKs (for example the AWS SDK for
                Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS
                CLI, you must provide this token or the action will fail.</p>
        </important>")
    @as("ClientRequestToken")
    clientRequestToken: option<idempotencyToken>,
    @ocaml.doc("<p>The SQL query statements to be executed.</p>") @as("QueryString")
    queryString: queryString,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of the query that ran as a result of this request.</p>")
    @as("QueryExecutionId")
    queryExecutionId: option<queryExecutionId>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "StartQueryExecutionCommand"
  let make = (
    ~queryString,
    ~workGroup=?,
    ~resultConfiguration=?,
    ~queryExecutionContext=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      workGroup: workGroup,
      resultConfiguration: resultConfiguration,
      queryExecutionContext: queryExecutionContext,
      clientRequestToken: clientRequestToken,
      queryString: queryString,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request that lists the tags for the
            resource.</p>")
    @as("MaxResults")
    maxResults: option<maxTagsCount>,
    @ocaml.doc("<p>The token for the next set of results, or null if there are no additional results for
            this request, where the request lists the tags for the resource with the specified
            ARN.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>Lists the tags for the resource with the specified ARN.</p>") @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>A token to be used by the next request if this request is truncated.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The list of tags associated with the specified resource.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPreparedStatements = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in this request.</p>") @as("MaxResults")
    maxResults: option<maxPreparedStatementsCount>,
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the
                <code>NextToken</code> from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The workgroup to list the prepared statements for.</p>") @as("WorkGroup")
    workGroup: workGroupName,
  }
  type response = {
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the
                <code>NextToken</code> from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The list of prepared statements for the workgroup.</p>")
    @as("PreparedStatements")
    preparedStatements: option<preparedStatementsList>,
  }
  @module("@aws-sdk/client-athena") @new
  external new: request => t = "ListPreparedStatementsCommand"
  let make = (~workGroup, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, workGroup: workGroup})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEngineVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of engine versions to return in this request.</p>")
    @as("MaxResults")
    maxResults: option<maxEngineVersionsCount>,
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the
                <code>NextToken</code> from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the
                <code>NextToken</code> from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of engine versions that are available to choose from.</p>")
    @as("EngineVersions")
    engineVersions: option<engineVersionsList>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "ListEngineVersionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataCatalogs = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the maximum number of data catalogs to return.</p>") @as("MaxResults")
    maxResults: option<maxDataCatalogsCount>,
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the NextToken
            from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the NextToken
            from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A summary list of data catalogs.</p>") @as("DataCatalogsSummary")
    dataCatalogsSummary: option<dataCatalogSummaryList>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "ListDataCatalogsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the database to return.</p>") @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The name of the data catalog that contains the database to return.</p>")
    @as("CatalogName")
    catalogName: catalogNameString,
  }
  type response = {
    @ocaml.doc("<p>The database returned.</p>") @as("Database") database: option<database>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "GetDatabaseCommand"
  let make = (~databaseName, ~catalogName, ()) =>
    new({databaseName: databaseName, catalogName: catalogName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDataCatalog = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the data catalog to return.</p>") @as("Name")
    name: catalogNameString,
  }
  type response = {
    @ocaml.doc("<p>The data catalog returned.</p>") @as("DataCatalog")
    dataCatalog: option<dataCatalog>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "GetDataCatalogCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataCatalog = {
  type t
  type request = {
    @ocaml.doc("<p>A list of comma separated tags to add to the data catalog that is created.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Specifies the Lambda function or functions to use for creating the data catalog. This
            is a mapping whose values depend on the catalog type. </p>
        <ul>
            <li>
                <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
                        <code>metadata-function</code> parameter is required. <code>The
                        sdk-version</code> parameter is optional and defaults to the currently
                    supported version.</p>
                <p>
                  <code>metadata-function=<i>lambda_arn</i>,
                            sdk-version=<i>version_number</i>
                  </code>
               </p>
            </li>
            <li>
                <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
                    of required parameters, but not both.</p>
                <ul>
                  <li>
                        <p>If you have one Lambda function that processes metadata and another
                            for reading the actual data, use the following syntax. Both parameters
                            are required.</p>
                        <p>
                        <code>metadata-function=<i>lambda_arn</i>,
                                    record-function=<i>lambda_arn</i>
                        </code>
                     </p>
                    </li>
                  <li>
                        <p> If you have a composite Lambda function that processes both metadata
                            and data, use the following syntax to specify your Lambda
                            function.</p>
                        <p>
                        <code>function=<i>lambda_arn</i>
                        </code>
                     </p>
                    </li>
               </ul>
            </li>
         </ul>")
    @as("Parameters")
    parameters: option<parametersMap>,
    @ocaml.doc("<p>A description of the data catalog to be created.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The type of data catalog to create: <code>LAMBDA</code> for a federated catalog or
                <code>HIVE</code> for an external hive metastore.</p>
        <note>
            <p>Do not use the <code>GLUE</code> type. This refers to the
                    <code>AwsDataCatalog</code> that already exists in your account, of which you
                can have only one. Specifying the <code>GLUE</code> type will result in an
                    <code>INVALID_INPUT</code> error.</p>
        </note>")
    @as("Type")
    type_: dataCatalogType,
    @ocaml.doc("<p>The name of the data catalog to create. The catalog name must be unique for the AWS
            account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen
            characters.</p>")
    @as("Name")
    name: catalogNameString,
  }

  @module("@aws-sdk/client-athena") @new external new: request => t = "CreateDataCatalogCommand"
  let make = (~type_, ~name, ~tags=?, ~parameters=?, ~description=?, ()) =>
    new({tags: tags, parameters: parameters, description: description, type_: type_, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module BatchGetNamedQuery = {
  type t
  type request = {
    @ocaml.doc("<p>An array of query IDs.</p>") @as("NamedQueryIds")
    namedQueryIds: namedQueryIdList,
  }
  type response = {
    @ocaml.doc("<p>Information about provided query IDs.</p>") @as("UnprocessedNamedQueryIds")
    unprocessedNamedQueryIds: option<unprocessedNamedQueryIdList>,
    @ocaml.doc("<p>Information about the named query IDs submitted.</p>") @as("NamedQueries")
    namedQueries: option<namedQueryList>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "BatchGetNamedQueryCommand"
  let make = (~namedQueryIds, ()) => new({namedQueryIds: namedQueryIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWorkGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The workgroup state that will be updated for the given workgroup.</p>")
    @as("State")
    state: option<workGroupState>,
    @ocaml.doc("<p>The workgroup configuration that will be updated for the given workgroup.</p>")
    @as("ConfigurationUpdates")
    configurationUpdates: option<workGroupConfigurationUpdates>,
    @ocaml.doc("<p>The workgroup description.</p>") @as("Description")
    description: option<workGroupDescriptionString>,
    @ocaml.doc("<p>The specified workgroup that will be updated.</p>") @as("WorkGroup")
    workGroup: workGroupName,
  }

  @module("@aws-sdk/client-athena") @new external new: request => t = "UpdateWorkGroupCommand"
  let make = (~workGroup, ~state=?, ~configurationUpdates=?, ~description=?, ()) =>
    new({
      state: state,
      configurationUpdates: configurationUpdates,
      description: description,
      workGroup: workGroup,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListWorkGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of workgroups to return in this request.</p>")
    @as("MaxResults")
    maxResults: option<maxWorkGroupsCount>,
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the
                <code>NextToken</code> from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the
                <code>NextToken</code> from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of <a>WorkGroupSummary</a> objects that include the names,
            descriptions, creation times, and states for each workgroup.</p>")
    @as("WorkGroups")
    workGroups: option<workGroupsList>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "ListWorkGroupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatabases = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxDatabasesCount>,
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the
                <code>NextToken</code> from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The name of the data catalog that contains the databases to return.</p>")
    @as("CatalogName")
    catalogName: catalogNameString,
  }
  type response = {
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the NextToken
            from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of databases from a data catalog.</p>") @as("DatabaseList")
    databaseList: option<databaseList>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "ListDatabasesCommand"
  let make = (~catalogName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, catalogName: catalogName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTableMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the table for which metadata is returned.</p>") @as("TableName")
    tableName: nameString,
    @ocaml.doc("<p>The name of the database that contains the table metadata to return.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The name of the data catalog that contains the database and table metadata to
            return.</p>")
    @as("CatalogName")
    catalogName: catalogNameString,
  }
  type response = {
    @ocaml.doc("<p>An object that contains table metadata.</p>") @as("TableMetadata")
    tableMetadata: option<tableMetadata>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "GetTableMetadataCommand"
  let make = (~tableName, ~databaseName, ~catalogName, ()) =>
    new({tableName: tableName, databaseName: databaseName, catalogName: catalogName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQueryExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the query execution.</p>") @as("QueryExecutionId")
    queryExecutionId: queryExecutionId,
  }
  type response = {
    @ocaml.doc("<p>Information about the query execution.</p>") @as("QueryExecution")
    queryExecution: option<queryExecution>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "GetQueryExecutionCommand"
  let make = (~queryExecutionId, ()) => new({queryExecutionId: queryExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorkGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A list of comma separated tags to add to the workgroup that is created.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The workgroup description.</p>") @as("Description")
    description: option<workGroupDescriptionString>,
    @ocaml.doc("<p>The configuration for the workgroup, which includes the location in Amazon S3 where
            query results are stored, the encryption configuration, if any, used for encrypting
            query results, whether the Amazon CloudWatch Metrics are enabled for the workgroup, the
            limit for the amount of bytes scanned (cutoff) per query, if it is specified, and
            whether workgroup's settings (specified with EnforceWorkGroupConfiguration) in the
            WorkGroupConfiguration override client-side settings. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>")
    @as("Configuration")
    configuration: option<workGroupConfiguration>,
    @ocaml.doc("<p>The workgroup name.</p>") @as("Name") name: workGroupName,
  }

  @module("@aws-sdk/client-athena") @new external new: request => t = "CreateWorkGroupCommand"
  let make = (~name, ~tags=?, ~description=?, ~configuration=?, ()) =>
    new({tags: tags, description: description, configuration: configuration, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTableMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxTableMetadataCount>,
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the NextToken
            from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A regex filter that pattern-matches table names. If no expression is supplied,
            metadata for all tables are listed.</p>")
    @as("Expression")
    expression: option<expressionString>,
    @ocaml.doc("<p>The name of the database for which table metadata should be returned.</p>")
    @as("DatabaseName")
    databaseName: nameString,
    @ocaml.doc("<p>The name of the data catalog for which table metadata should be returned.</p>")
    @as("CatalogName")
    catalogName: catalogNameString,
  }
  type response = {
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the NextToken
            from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of table metadata.</p>") @as("TableMetadataList")
    tableMetadataList: option<tableMetadataList>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "ListTableMetadataCommand"
  let make = (~databaseName, ~catalogName, ~maxResults=?, ~nextToken=?, ~expression=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      expression: expression,
      databaseName: databaseName,
      catalogName: catalogName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorkGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the workgroup.</p>") @as("WorkGroup") workGroup: workGroupName,
  }
  type response = {
    @ocaml.doc("<p>Information about the workgroup.</p>") @as("WorkGroup")
    workGroup: option<workGroup>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "GetWorkGroupCommand"
  let make = (~workGroup, ()) => new({workGroup: workGroup})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetQueryExecution = {
  type t
  type request = {
    @ocaml.doc("<p>An array of query execution IDs.</p>") @as("QueryExecutionIds")
    queryExecutionIds: queryExecutionIdList,
  }
  type response = {
    @ocaml.doc("<p>Information about the query executions that failed to run.</p>")
    @as("UnprocessedQueryExecutionIds")
    unprocessedQueryExecutionIds: option<unprocessedQueryExecutionIdList>,
    @ocaml.doc("<p>Information about a query execution.</p>") @as("QueryExecutions")
    queryExecutions: option<queryExecutionList>,
  }
  @module("@aws-sdk/client-athena") @new
  external new: request => t = "BatchGetQueryExecutionCommand"
  let make = (~queryExecutionIds, ()) => new({queryExecutionIds: queryExecutionIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQueryResults = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results (rows) to return in this request.</p>")
    @as("MaxResults")
    maxResults: option<maxQueryResults>,
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the
                <code>NextToken</code> from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The unique ID of the query execution.</p>") @as("QueryExecutionId")
    queryExecutionId: queryExecutionId,
  }
  type response = {
    @ocaml.doc("<p>A token generated by the Athena service that specifies where to continue pagination if
            a previous request was truncated. To obtain the next set of pages, pass in the
                <code>NextToken</code> from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The results of the query execution.</p>") @as("ResultSet")
    resultSet: option<resultSet>,
    @ocaml.doc("<p>The number of rows inserted with a CREATE TABLE AS SELECT statement. </p>")
    @as("UpdateCount")
    updateCount: option<long>,
  }
  @module("@aws-sdk/client-athena") @new external new: request => t = "GetQueryResultsCommand"
  let make = (~queryExecutionId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, queryExecutionId: queryExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
