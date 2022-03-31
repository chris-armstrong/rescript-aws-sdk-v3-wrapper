type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-timestream") @new
external createClient: unit => awsServiceClient = "TimestreamQueryClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = string
type time = Js.Date.t
type tagValue = string
type tagKey = string
type stringValue2048 = string
type string_ = string
type serviceErrorMessage = string
type schemaName = string
type scheduledQueryState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type scheduledQueryRunStatus = [
  | @as("MANUAL_TRIGGER_FAILURE") #MANUAL_TRIGGER_FAILURE
  | @as("MANUAL_TRIGGER_SUCCESS") #MANUAL_TRIGGER_SUCCESS
  | @as("AUTO_TRIGGER_FAILURE") #AUTO_TRIGGER_FAILURE
  | @as("AUTO_TRIGGER_SUCCESS") #AUTO_TRIGGER_SUCCESS
]
type scheduledQueryName = string
type scheduleExpression = string
type scalarValue = string
type scalarType = [
  | @as("INTEGER") #INTEGER
  | @as("UNKNOWN") #UNKNOWN
  | @as("INTERVAL_YEAR_TO_MONTH") #INTERVAL_YEAR_TO_MONTH
  | @as("INTERVAL_DAY_TO_SECOND") #INTERVAL_DAY_TO_SECOND
  | @as("TIME") #TIME
  | @as("DATE") #DATE
  | @as("TIMESTAMP") #TIMESTAMP
  | @as("DOUBLE") #DOUBLE
  | @as("BIGINT") #BIGINT
  | @as("BOOLEAN") #BOOLEAN
  | @as("VARCHAR") #VARCHAR
]
type scalarMeasureValueType = [
  | @as("TIMESTAMP") #TIMESTAMP
  | @as("VARCHAR") #VARCHAR
  | @as("DOUBLE") #DOUBLE
  | @as("BOOLEAN") #BOOLEAN
  | @as("BIGINT") #BIGINT
]
type s3ObjectKeyPrefix = string
type s3ObjectKey = string
type s3EncryptionOption = [@as("SSE_KMS") #SSE_KMS | @as("SSE_S3") #SSE_S3]
type s3BucketName = string
type resourceName = string
type queryString = string
type queryId = string
type paginationToken = string
type nullableBoolean = bool
type nextTagsForResourceResultsToken = string
type nextScheduledQueriesResultsToken = string
type measureValueType = [
  | @as("MULTI") #MULTI
  | @as("VARCHAR") #VARCHAR
  | @as("DOUBLE") #DOUBLE
  | @as("BOOLEAN") #BOOLEAN
  | @as("BIGINT") #BIGINT
]
type maxTagsForResourceResult = int
type maxScheduledQueriesResults = int
type maxQueryResults = int
type long = float
type errorMessage = string
type double = float
type dimensionValueType = [@as("VARCHAR") #VARCHAR]
type clientToken = string
type clientRequestToken = string
type amazonResourceName = string
@ocaml.doc("<p>Destination for scheduled query.</p>")
type timestreamDestination = {
  @ocaml.doc("<p>Timestream table name. </p>") @as("TableName") tableName: option<resourceName>,
  @ocaml.doc("<p>Timestream database name. </p>") @as("DatabaseName")
  databaseName: option<resourceName>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A tag is a label that you assign to a Timestream database and/or table. Each tag
            consists of a key and an optional value, both of which you define. Tags enable you to
            categorize databases and/or tables, for example, by purpose, owner, or environment.
        </p>")
type tag = {
  @ocaml.doc("<p>The value of the tag. Tag values are case sensitive and can be null. </p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>The key of the tag. Tag keys are case sensitive. </p>") @as("Key") key: tagKey,
}
@ocaml.doc("<p>Details on SNS that are required to send the notification.</p>")
type snsConfiguration = {
  @ocaml.doc("<p>SNS topic ARN that the scheduled query status notifications will be sent to.</p>")
  @as("TopicArn")
  topicArn: amazonResourceName,
}
@ocaml.doc("<p>Configuration of the schedule of the query.</p>")
type scheduleConfiguration = {
  @ocaml.doc("<p>An expression that denotes when to trigger the scheduled query run. This can be a cron
            expression or a rate expression. </p>")
  @as("ScheduleExpression")
  scheduleExpression: scheduleExpression,
}
@ocaml.doc("<p> S3 report location for the scheduled query run.</p>")
type s3ReportLocation = {
  @ocaml.doc("<p>S3 key. </p>") @as("ObjectKey") objectKey: option<s3ObjectKey>,
  @ocaml.doc("<p> S3 bucket name. </p>") @as("BucketName") bucketName: option<s3BucketName>,
}
@ocaml.doc("<p>Details on S3 location for error reports that result from running a query. </p>")
type s3Configuration = {
  @ocaml.doc("<p> Encryption at rest options for the error reports. If no encryption option is
            specified, Timestream will choose SSE_S3 as default. </p>")
  @as("EncryptionOption")
  encryptionOption: option<s3EncryptionOption>,
  @ocaml.doc("<p> Prefix for the error report key. Timestream by default adds the following prefix to
            the error report path. </p>")
  @as("ObjectKeyPrefix")
  objectKeyPrefix: option<s3ObjectKeyPrefix>,
  @ocaml.doc("<p> Name of the S3 bucket under which error reports will be created.</p>")
  @as("BucketName")
  bucketName: s3BucketName,
}
@ocaml.doc("<p>Information about the status of the query, including progress and bytes
            scanned.</p>")
type queryStatus = {
  @ocaml.doc("<p>The amount of data scanned by the query in bytes that you will be charged for. This is
            a cumulative sum and represents the total amount of data that you will be charged for
            since the query was started. The charge is applied only once and is either applied when
            the query completes running or when the query is cancelled. </p>")
  @as("CumulativeBytesMetered")
  cumulativeBytesMetered: option<long>,
  @ocaml.doc("<p>The amount of data scanned by the query in bytes. This is a cumulative sum and
            represents the total amount of bytes scanned since the query was started. </p>")
  @as("CumulativeBytesScanned")
  cumulativeBytesScanned: option<long>,
  @ocaml.doc("<p>The progress of the query, expressed as a percentage.</p>")
  @as("ProgressPercentage")
  progressPercentage: option<double>,
}
@ocaml.doc("<p>Attribute mapping for MULTI value measures.</p>")
type multiMeasureAttributeMapping = {
  @ocaml.doc("<p>Type of the attribute to be read from the source column.</p>")
  @as("MeasureValueType")
  measureValueType: scalarMeasureValueType,
  @ocaml.doc("<p>Custom name to be used for attribute name in derived table. If not provided, source
            column name would be used.</p>")
  @as("TargetMultiMeasureAttributeName")
  targetMultiMeasureAttributeName: option<schemaName>,
  @ocaml.doc("<p>Source column from where the attribute value is to be read.</p>")
  @as("SourceColumn")
  sourceColumn: schemaName,
}
@ocaml.doc("<p>Statistics for a single scheduled query run.</p>")
type executionStats = {
  @ocaml.doc("<p>Number of rows present in the output from running a query before ingestion to
            destination data source.</p>")
  @as("QueryResultRows")
  queryResultRows: option<long>,
  @ocaml.doc("<p>The number of records ingested for a single scheduled query run. </p>")
  @as("RecordsIngested")
  recordsIngested: option<long>,
  @ocaml.doc("<p>Bytes metered for a single scheduled query run.</p>") @as("BytesMetered")
  bytesMetered: option<long>,
  @ocaml.doc("<p>Data writes metered for records ingested in a single scheduled query run.</p>")
  @as("DataWrites")
  dataWrites: option<long>,
  @ocaml.doc(
    "<p>Total time, measured in milliseconds, that was needed for the scheduled query run to complete.</p>"
  )
  @as("ExecutionTimeInMillis")
  executionTimeInMillis: option<long>,
}
@ocaml.doc("<p>Represents an available endpoint against which to make API calls against, as well as
            the TTL for that endpoint.</p>")
type endpoint = {
  @ocaml.doc("<p>The TTL for the endpoint, in minutes.</p>") @as("CachePeriodInMinutes")
  cachePeriodInMinutes: long,
  @ocaml.doc("<p>An endpoint address.</p>") @as("Address") address: string_,
}
@ocaml.doc("<p>This type is used to map column(s) from the query result to a dimension in the
            destination table.</p>")
type dimensionMapping = {
  @ocaml.doc("<p>Type for the dimension. </p>") @as("DimensionValueType")
  dimensionValueType: dimensionValueType,
  @ocaml.doc("<p>Column name from query result.</p>") @as("Name") name: schemaName,
}
@ocaml.doc("<p>Destination details to write data for a target data source. Current supported data
            source is Timestream.</p>")
type targetDestination = {
  @ocaml.doc("<p>Query result destination details for Timestream data source.</p>")
  @as("TimestreamDestination")
  timestreamDestination: option<timestreamDestination>,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Notification configuration for a scheduled query. A notification is sent by
            Timestream when a scheduled query is created, its state is updated or when it is deleted. </p>")
type notificationConfiguration = {
  @ocaml.doc("<p>Details on SNS configuration. </p>") @as("SnsConfiguration")
  snsConfiguration: snsConfiguration,
}
type multiMeasureAttributeMappingList = array<multiMeasureAttributeMapping>
@ocaml.doc("<p>This contains the location of the error report for a single scheduled query call.
        </p>")
type errorReportLocation = {
  @ocaml.doc("<p>The S3 location where error reports are written.</p>") @as("S3ReportLocation")
  s3ReportLocation: option<s3ReportLocation>,
}
@ocaml.doc("<p>Configuration required for error reporting.</p>")
type errorReportConfiguration = {
  @ocaml.doc("<p>The S3 configuration for the error reports.</p>") @as("S3Configuration")
  s3Configuration: s3Configuration,
}
type endpoints = array<endpoint>
type dimensionMappingList = array<dimensionMapping>
@ocaml.doc("<p>Run summary for the scheduled query</p>")
type scheduledQueryRunSummary = {
  @ocaml.doc("<p>Error message for the scheduled query in case of failure. You might have to look at
            the error report to get more detailed error reasons. </p>")
  @as("FailureReason")
  failureReason: option<errorMessage>,
  @ocaml.doc("<p>S3 location for error report.</p>") @as("ErrorReportLocation")
  errorReportLocation: option<errorReportLocation>,
  @ocaml.doc("<p>Runtime statistics for a scheduled run.</p>") @as("ExecutionStats")
  executionStats: option<executionStats>,
  @ocaml.doc("<p>The status of a scheduled query run.</p>") @as("RunStatus")
  runStatus: option<scheduledQueryRunStatus>,
  @ocaml.doc("<p>The actual time when the query was run.</p>") @as("TriggerTime")
  triggerTime: option<time>,
  @ocaml.doc("<p>InvocationTime for this run. This is the time at which the query is scheduled to run.
            Parameter <code>@scheduled_runtime</code> can be used in the query to get the value. </p>")
  @as("InvocationTime")
  invocationTime: option<time>,
}
@ocaml.doc("<p>Scheduled Query</p>")
type scheduledQuery = {
  @ocaml.doc("<p>Status of the last scheduled query run.</p>") @as("LastRunStatus")
  lastRunStatus: option<scheduledQueryRunStatus>,
  @ocaml.doc("<p>Target data source where final scheduled query result will be written.</p>")
  @as("TargetDestination")
  targetDestination: option<targetDestination>,
  @ocaml.doc("<p>Configuration for scheduled query error reporting.</p>")
  @as("ErrorReportConfiguration")
  errorReportConfiguration: option<errorReportConfiguration>,
  @ocaml.doc("<p>The next time the scheduled query is to be run.</p>") @as("NextInvocationTime")
  nextInvocationTime: option<time>,
  @ocaml.doc("<p>The last time the scheduled query was run.</p>") @as("PreviousInvocationTime")
  previousInvocationTime: option<time>,
  @ocaml.doc("<p>State of scheduled query. </p>") @as("State") state: scheduledQueryState,
  @ocaml.doc("<p>The creation time of the scheduled query.</p>") @as("CreationTime")
  creationTime: option<time>,
  @ocaml.doc("<p>The name of the scheduled query.</p>") @as("Name") name: scheduledQueryName,
  @ocaml.doc("<p>The Amazon Resource Name.</p>") @as("Arn") arn: amazonResourceName,
}
@ocaml.doc("<p>Only one of MixedMeasureMappings or MultiMeasureMappings is to be provided.
            MultiMeasureMappings can be used to ingest data as multi measures in the derived
            table.</p>")
type multiMeasureMappings = {
  @ocaml.doc("<p>Required. Attribute mappings to be used for mapping query results to ingest data for
            multi-measure attributes.</p>")
  @as("MultiMeasureAttributeMappings")
  multiMeasureAttributeMappings: multiMeasureAttributeMappingList,
  @ocaml.doc("<p>The name of the target multi-measure name in the derived table. This input is required
            when measureNameColumn is not provided. If MeasureNameColumn is provided, then value
            from that column will be used as multi-measure name.</p>")
  @as("TargetMultiMeasureName")
  targetMultiMeasureName: option<schemaName>,
}
@ocaml.doc("<p>MixedMeasureMappings are mappings that can be used to ingest data into a mixture of
            narrow and multi measures in the derived table.</p>")
type mixedMeasureMapping = {
  @ocaml.doc("<p>Required when measureValueType is MULTI. Attribute mappings for MULTI value
            measures.</p>")
  @as("MultiMeasureAttributeMappings")
  multiMeasureAttributeMappings: option<multiMeasureAttributeMappingList>,
  @ocaml.doc("<p>Type of the value that is to be read from sourceColumn. If the mapping is for MULTI,
            use MeasureValueType.MULTI.</p>")
  @as("MeasureValueType")
  measureValueType: measureValueType,
  @ocaml.doc("<p>Target measure name to be used. If not provided, the target measure name by default
            would be measure-name if provided, or sourceColumn otherwise. </p>")
  @as("TargetMeasureName")
  targetMeasureName: option<schemaName>,
  @ocaml.doc("<p>This field refers to the source column from which measure-value is to be read for
            result materialization.</p>")
  @as("SourceColumn")
  sourceColumn: option<schemaName>,
  @ocaml.doc("<p>Refers to the value of measure_name in a result row. This field is required if
            MeasureNameColumn is provided.</p>")
  @as("MeasureName")
  measureName: option<schemaName>,
}
type scheduledQueryRunSummaryList = array<scheduledQueryRunSummary>
type scheduledQueryList = array<scheduledQuery>
type mixedMeasureMappingList = array<mixedMeasureMapping>
@ocaml.doc("<p> Configuration to write data into Timestream database and table. This configuration
            allows the user to map the query result select columns into the destination table
            columns. </p>")
type timestreamConfiguration = {
  @ocaml.doc("<p>Name of the measure column.</p>") @as("MeasureNameColumn")
  measureNameColumn: option<schemaName>,
  @ocaml.doc("<p>Specifies how to map measures to multi-measure records.</p>")
  @as("MixedMeasureMappings")
  mixedMeasureMappings: option<mixedMeasureMappingList>,
  @ocaml.doc("<p>Multi-measure mappings.</p>") @as("MultiMeasureMappings")
  multiMeasureMappings: option<multiMeasureMappings>,
  @ocaml.doc("<p> This is to allow mapping column(s) from the query result to the dimension in the
            destination table. </p>")
  @as("DimensionMappings")
  dimensionMappings: dimensionMappingList,
  @ocaml.doc("<p>Column from query result that should be used as the time column in destination table.
            Column type for this should be TIMESTAMP.</p>")
  @as("TimeColumn")
  timeColumn: schemaName,
  @ocaml.doc("<p>Name of Timestream table that the query result will be written to. The table should
            be within the same database that is provided in Timestream configuration.</p>")
  @as("TableName")
  tableName: resourceName,
  @ocaml.doc("<p>Name of Timestream database to which the query result will be written.</p>")
  @as("DatabaseName")
  databaseName: resourceName,
}
@ocaml.doc("<p>Configuration used for writing the output of a query.</p>")
type targetConfiguration = {
  @ocaml.doc("<p>Configuration needed to write data into the Timestream database and table.</p>")
  @as("TimestreamConfiguration")
  timestreamConfiguration: timestreamConfiguration,
}
@ocaml.doc("<p>Structure that describes scheduled query.</p>")
type scheduledQueryDescription = {
  @ocaml.doc("<p>Runtime summary for the last five failed scheduled query runs.</p>")
  @as("RecentlyFailedRuns")
  recentlyFailedRuns: option<scheduledQueryRunSummaryList>,
  @ocaml.doc("<p>Runtime summary for the last scheduled query run. </p>") @as("LastRunSummary")
  lastRunSummary: option<scheduledQueryRunSummary>,
  @ocaml.doc("<p>Error-reporting configuration for the scheduled query.</p>")
  @as("ErrorReportConfiguration")
  errorReportConfiguration: option<errorReportConfiguration>,
  @ocaml.doc("<p>A customer provided KMS key used to encrypt the scheduled query resource.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<stringValue2048>,
  @ocaml.doc("<p>IAM role that Timestream uses to run the schedule query.</p>")
  @as("ScheduledQueryExecutionRoleArn")
  scheduledQueryExecutionRoleArn: option<amazonResourceName>,
  @ocaml.doc("<p>Scheduled query target store configuration.</p>") @as("TargetConfiguration")
  targetConfiguration: option<targetConfiguration>,
  @ocaml.doc("<p>Notification configuration.</p>") @as("NotificationConfiguration")
  notificationConfiguration: notificationConfiguration,
  @ocaml.doc("<p>Schedule configuration.</p>") @as("ScheduleConfiguration")
  scheduleConfiguration: scheduleConfiguration,
  @ocaml.doc("<p>The next time the scheduled query is scheduled to run.</p>")
  @as("NextInvocationTime")
  nextInvocationTime: option<time>,
  @ocaml.doc("<p>Last time the query was run.</p>") @as("PreviousInvocationTime")
  previousInvocationTime: option<time>,
  @ocaml.doc("<p>State of the scheduled query. </p>") @as("State") state: scheduledQueryState,
  @ocaml.doc("<p>Creation time of the scheduled query.</p>") @as("CreationTime")
  creationTime: option<time>,
  @ocaml.doc("<p>The query to be run.</p>") @as("QueryString") queryString: queryString,
  @ocaml.doc("<p>Name of the scheduled query.</p>") @as("Name") name: scheduledQueryName,
  @ocaml.doc("<p>Scheduled query ARN.</p>") @as("Arn") arn: amazonResourceName,
}
type rec type_ = {
  @ocaml.doc("<p>Indicates if the column is a row.</p>") @as("RowColumnInfo")
  rowColumnInfo: option<columnInfoList>,
  @ocaml.doc("<p>Indicates if the column is a timeseries data type.</p>")
  @as("TimeSeriesMeasureValueColumnInfo")
  timeSeriesMeasureValueColumnInfo: option<columnInfo>,
  @ocaml.doc("<p>Indicates if the column is an array.</p>") @as("ArrayColumnInfo")
  arrayColumnInfo: option<columnInfo>,
  @ocaml.doc("<p>Indicates if the column is of type string, integer, Boolean, double, timestamp, date,
            time. </p>")
  @as("ScalarType")
  scalarType: option<scalarType>,
}
and columnInfoList = array<columnInfo>
and columnInfo = {
  @ocaml.doc("<p>The data type of the result set column. The data type can be a scalar or complex.
            Scalar data types are integers, strings, doubles, Booleans, and others. Complex data
            types are types such as arrays, rows, and others. </p>")
  @as("Type")
  type_: type_,
  @ocaml.doc("<p> The name of the result set column. The name of the result set is available for
            columns of all data types except for arrays. </p>")
  @as("Name")
  name: option<string_>,
}
and row = {
  @ocaml.doc("<p>List of data points in a single row of the result set.</p>") @as("Data")
  data: datumList,
}
and datumList = array<datum>
and datum = {
  @ocaml.doc("<p> Indicates if the data point is null. </p>") @as("NullValue")
  nullValue: option<nullableBoolean>,
  @ocaml.doc("<p> Indicates if the data point is a row. </p>") @as("RowValue")
  rowValue: option<row>,
  @ocaml.doc("<p> Indicates if the data point is an array. </p>") @as("ArrayValue")
  arrayValue: option<datumList>,
  @ocaml.doc("<p> Indicates if the data point is a timeseries data type. </p>")
  @as("TimeSeriesValue")
  timeSeriesValue: option<timeSeriesDataPointList>,
  @ocaml.doc("<p> Indicates if the data point is a scalar value such as integer, string, double, or
            Boolean. </p>")
  @as("ScalarValue")
  scalarValue: option<scalarValue>,
}
and timeSeriesDataPointList = array<timeSeriesDataPoint>
and timeSeriesDataPoint = {
  @ocaml.doc("<p>The measure value for the data point.</p>") @as("Value") value: datum,
  @ocaml.doc("<p>The timestamp when the measure value was collected.</p>") @as("Time")
  time: timestamp_,
}
@ocaml.doc("<p>Details of the column that is returned by the query. </p>")
type selectColumn = {
  @ocaml.doc("<p>True, if the column name was aliased by the query. False otherwise.</p>")
  @as("Aliased")
  aliased: option<nullableBoolean>,
  @ocaml.doc("<p>Table within the database that has this column. </p>") @as("TableName")
  tableName: option<resourceName>,
  @ocaml.doc("<p> Database that has this column.</p>") @as("DatabaseName")
  databaseName: option<resourceName>,
  @as("Type") type_: option<type_>,
  @ocaml.doc("<p>Name of the column.</p>") @as("Name") name: option<string_>,
}
type rowList = array<row>
@ocaml.doc("<p>Mapping for named parameters.</p>")
type parameterMapping = {
  @as("Type") type_: type_,
  @ocaml.doc("<p>Parameter name.</p>") @as("Name") name: string_,
}
type selectColumnList = array<selectColumn>
type parameterMappingList = array<parameterMapping>
@ocaml.doc("<fullname>Amazon Timestream Query
        </fullname>
        <p></p>")
module UpdateScheduledQuery = {
  type t
  type request = {
    @ocaml.doc("<p>State of the scheduled query. </p>") @as("State") state: scheduledQueryState,
    @ocaml.doc("<p>ARN of the scheuled query.</p>") @as("ScheduledQueryArn")
    scheduledQueryArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-timestream") @new
  external new: request => t = "UpdateScheduledQueryCommand"
  let make = (~state, ~scheduledQueryArn, ()) =>
    new({state: state, scheduledQueryArn: scheduledQueryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ExecuteScheduledQuery = {
  type t
  type request = {
    @ocaml.doc("<p>Not used. </p>") @as("ClientToken") clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The timestamp in UTC. Query will be run as if it was invoked at this timestamp. </p>"
    )
    @as("InvocationTime")
    invocationTime: time,
    @ocaml.doc("<p>ARN of the scheduled query.</p>") @as("ScheduledQueryArn")
    scheduledQueryArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-timestream") @new
  external new: request => t = "ExecuteScheduledQueryCommand"
  let make = (~invocationTime, ~scheduledQueryArn, ~clientToken=?, ()) =>
    new({
      clientToken: clientToken,
      invocationTime: invocationTime,
      scheduledQueryArn: scheduledQueryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteScheduledQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the scheduled query. </p>") @as("ScheduledQueryArn")
    scheduledQueryArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-timestream") @new
  external new: request => t = "DeleteScheduledQueryCommand"
  let make = (~scheduledQueryArn, ()) => new({scheduledQueryArn: scheduledQueryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelQuery = {
  type t
  type request = {
    @ocaml.doc("<p> The ID of the query that needs to be cancelled. <code>QueryID</code> is returned as
            part of the query result. </p>")
    @as("QueryId")
    queryId: queryId,
  }
  type response = {
    @ocaml.doc("<p> A <code>CancellationMessage</code> is returned when a <code>CancelQuery</code>
            request for the query specified by <code>QueryId</code> has already been issued. </p>")
    @as("CancellationMessage")
    cancellationMessage: option<string_>,
  }
  @module("@aws-sdk/client-timestream") @new external new: request => t = "CancelQueryCommand"
  let make = (~queryId, ()) => new({queryId: queryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags keys. Existing tags of the resource whose keys are members of this list
            will be removed from the Timestream resource. </p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Timestream resource that the tags will be removed from. This value is an Amazon
            Resource Name (ARN). </p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-timestream") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the Timestream resource.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>Identifies the Timestream resource to which tags should be added. This value is an
            Amazon Resource Name (ARN).</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-timestream") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>A pagination token to resume pagination.</p>") @as("NextToken")
    nextToken: option<nextTagsForResourceResultsToken>,
    @ocaml.doc("<p>The maximum number of tags to return.</p>") @as("MaxResults")
    maxResults: option<maxTagsForResourceResult>,
    @ocaml.doc("<p>The Timestream resource with tags to be listed. This value is an Amazon Resource Name
            (ARN).</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>A pagination token to resume pagination with a subsequent call to
                <code>ListTagsForResourceResponse</code>.</p>")
    @as("NextToken")
    nextToken: option<nextTagsForResourceResultsToken>,
    @ocaml.doc("<p>The tags currently associated with the Timestream resource. </p>") @as("Tags")
    tags: tagList_,
  }
  @module("@aws-sdk/client-timestream") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpoints = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>An <code>Endpoints</code> object is returned when a <code>DescribeEndpoints</code>
            request is made.</p>")
    @as("Endpoints")
    endpoints: endpoints,
  }
  @module("@aws-sdk/client-timestream") @new external new: request => t = "DescribeEndpointsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListScheduledQueries = {
  type t
  type request = {
    @ocaml.doc("<p> A pagination token to resume pagination.</p>") @as("NextToken")
    nextToken: option<nextScheduledQueriesResultsToken>,
    @ocaml.doc("<p>The maximum number of items to return in the output. If the total number of items
            available is more than the value specified, a <code>NextToken</code> is provided in the
            output. To resume pagination, provide the <code>NextToken</code> value as the argument
            to the subsequent call to <code>ListScheduledQueriesRequest</code>.</p>")
    @as("MaxResults")
    maxResults: option<maxScheduledQueriesResults>,
  }
  type response = {
    @ocaml.doc("<p>A token to specify where to start paginating. This is the NextToken from a previously
            truncated response.</p>")
    @as("NextToken")
    nextToken: option<nextScheduledQueriesResultsToken>,
    @ocaml.doc("<p>A list of scheduled queries.</p>") @as("ScheduledQueries")
    scheduledQueries: scheduledQueryList,
  }
  @module("@aws-sdk/client-timestream") @new
  external new: request => t = "ListScheduledQueriesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateScheduledQuery = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Configuration for error reporting. Error reports will be generated when a problem is encountered when writing the query results. </p>"
    )
    @as("ErrorReportConfiguration")
    errorReportConfiguration: errorReportConfiguration,
    @ocaml.doc("<p>The Amazon KMS key used to encrypt the scheduled query resource, at-rest. If the Amazon KMS
            key is not specified, the scheduled query resource will be encrypted with a Timestream
            owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias name, or alias
            ARN. When using an alias name, prefix the name with <i>alias/</i>
         </p>
            <p>If ErrorReportConfiguration uses <code>SSE_KMS</code> as encryption type, the same KmsKeyId is used to encrypt the error report at rest.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<stringValue2048>,
    @ocaml.doc("<p>A list of key-value pairs to label the scheduled query.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>The ARN for the IAM role that Timestream will assume when running the scheduled query. </p>"
    )
    @as("ScheduledQueryExecutionRoleArn")
    scheduledQueryExecutionRoleArn: amazonResourceName,
    @ocaml.doc("<p>Using a ClientToken makes the call to CreateScheduledQuery idempotent, in other words, making the same request repeatedly will produce the same result. Making 
            multiple identical CreateScheduledQuery requests has the same effect as making a single request.

 </p>
         <ul>
            <li>
                <p> If CreateScheduledQuery is called without a <code>ClientToken</code>, the
                    Query SDK generates a <code>ClientToken</code> on your behalf.</p>
            </li>
            <li>
                <p> After 8 hours, any request with the same <code>ClientToken</code> is treated
                    as a new request. </p>
            </li>
         </ul>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>Configuration used for writing the result of a query.</p>")
    @as("TargetConfiguration")
    targetConfiguration: option<targetConfiguration>,
    @ocaml.doc("<p>Notification configuration for the scheduled query. A notification is sent by
            Timestream when a query run finishes, when the state is updated or when you delete it. </p>")
    @as("NotificationConfiguration")
    notificationConfiguration: notificationConfiguration,
    @ocaml.doc("<p>The schedule configuration for the query.</p>") @as("ScheduleConfiguration")
    scheduleConfiguration: scheduleConfiguration,
    @ocaml.doc("<p>The query string to run. Parameter
            names can be specified in the query string <code>@</code> character followed by an
            identifier. The named Parameter <code>@scheduled_runtime</code> is reserved and can be used in the query to get the time at which the query is scheduled to run.</p>
            <p>The timestamp calculated according to the ScheduleConfiguration parameter, will be the value of <code>@scheduled_runtime</code> paramater for each query run. 
            For example, consider an instance of a scheduled query executing on 2021-12-01 00:00:00. For this instance, the <code>@scheduled_runtime</code> parameter is 
            initialized to the timestamp 2021-12-01 00:00:00 when invoking the query.</p>")
    @as("QueryString")
    queryString: queryString,
    @ocaml.doc("<p>Name of the scheduled query.</p>") @as("Name") name: scheduledQueryName,
  }
  type response = {
    @ocaml.doc("<p>ARN for the created scheduled query.</p>") @as("Arn") arn: amazonResourceName,
  }
  @module("@aws-sdk/client-timestream") @new
  external new: request => t = "CreateScheduledQueryCommand"
  let make = (
    ~errorReportConfiguration,
    ~scheduledQueryExecutionRoleArn,
    ~notificationConfiguration,
    ~scheduleConfiguration,
    ~queryString,
    ~name,
    ~kmsKeyId=?,
    ~tags=?,
    ~clientToken=?,
    ~targetConfiguration=?,
    (),
  ) =>
    new({
      errorReportConfiguration: errorReportConfiguration,
      kmsKeyId: kmsKeyId,
      tags: tags,
      scheduledQueryExecutionRoleArn: scheduledQueryExecutionRoleArn,
      clientToken: clientToken,
      targetConfiguration: targetConfiguration,
      notificationConfiguration: notificationConfiguration,
      scheduleConfiguration: scheduleConfiguration,
      queryString: queryString,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScheduledQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the scheduled query.</p>") @as("ScheduledQueryArn")
    scheduledQueryArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The scheduled query.</p>") @as("ScheduledQuery")
    scheduledQuery: scheduledQueryDescription,
  }
  @module("@aws-sdk/client-timestream") @new
  external new: request => t = "DescribeScheduledQueryCommand"
  let make = (~scheduledQueryArn, ()) => new({scheduledQueryArn: scheduledQueryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Query = {
  type t
  type request = {
    @ocaml.doc("<p> The total number of rows to be returned in the <code>Query</code> output. The initial
            run of <code>Query</code> with a <code>MaxRows</code> value specified will return the
            result set of the query in two cases: </p>
        <ul>
            <li>
                <p>The size of the result is less than <code>1MB</code>.</p>
            </li>
            <li>
                <p>The number of rows in the result set is less than the value of
                        <code>maxRows</code>.</p>
            </li>
         </ul>
        <p>Otherwise, the initial invocation of <code>Query</code> only returns a
                <code>NextToken</code>, which can then be used in subsequent calls to fetch the
            result set. To resume pagination, provide the <code>NextToken</code> value in the
            subsequent command.</p>
        <p>If the row size is large (e.g. a row has many columns), Timestream may return
            fewer rows to keep the response size from exceeding the 1 MB limit. If
                <code>MaxRows</code> is not provided, Timestream will send the necessary
            number of rows to meet the 1 MB limit.</p>")
    @as("MaxRows")
    maxRows: option<maxQueryResults>,
    @ocaml.doc("<p> A pagination token used to return a set of results. When the <code>Query</code> API
            is invoked using <code>NextToken</code>, that particular invocation is assumed to be a
            subsequent invocation of a prior call to <code>Query</code>, and a result set is
            returned. However, if the <code>Query</code> invocation only contains the
                <code>ClientToken</code>, that invocation of <code>Query</code> is assumed to be a
            new query run. </p>
        <p>Note the following when using NextToken in a query:</p>
        <ul>
            <li>
                <p>A pagination token can be used for up to five <code>Query</code> invocations,
                    OR for a duration of up to 1 hour – whichever comes first.</p>
            </li>
            <li>
                <p>Using the same <code>NextToken</code> will return the same set of records. To
                    keep paginating through the result set, you must to use the most recent
                        <code>nextToken</code>.</p>
            </li>
            <li>
                <p>Suppose a <code>Query</code> invocation returns two <code>NextToken</code>
                    values, <code>TokenA</code> and <code>TokenB</code>. If <code>TokenB</code> is
                    used in a subsequent <code>Query</code> invocation, then <code>TokenA</code> is
                    invalidated and cannot be reused.</p>
            </li>
            <li>
                <p>To request a previous result set from a query after pagination has begun, you
                    must re-invoke the Query API.</p>
            </li>
            <li>
                <p>The latest <code>NextToken</code> should be used to paginate until
                        <code>null</code> is returned, at which point a new <code>NextToken</code>
                    should be used.</p>
            </li>
            <li>
                <p> If the IAM principal of the query initiator and the result reader are not the
                    same and/or the query initiator and the result reader do not have the same query
                    string in the query requests, the query will fail with an <code>Invalid
                        pagination token</code> error. </p>
            </li>
         </ul>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p> Unique, case-sensitive string of up to 64 ASCII characters specified when a
                <code>Query</code> request is made. Providing a <code>ClientToken</code> makes the
            call to <code>Query</code>
            <i>idempotent</i>. This means that running the same query repeatedly will
            produce the same result. In other words, making multiple identical <code>Query</code>
            requests has the same effect as making a single request. When using
                <code>ClientToken</code> in a query, note the following: </p>
        <ul>
            <li>
                <p> If the Query API is instantiated without a <code>ClientToken</code>, the
                    Query SDK generates a <code>ClientToken</code> on your behalf.</p>
            </li>
            <li>
                <p>If the <code>Query</code> invocation only contains the
                        <code>ClientToken</code> but does not include a <code>NextToken</code>, that
                    invocation of <code>Query</code> is assumed to be a new query run.</p>
            </li>
            <li>
                <p>If the invocation contains <code>NextToken</code>, that particular invocation
                    is assumed to be a subsequent invocation of a prior call to the Query API, and a
                    result set is returned.</p>
            </li>
            <li>
                <p> After 4 hours, any request with the same <code>ClientToken</code> is treated
                    as a new request. </p>
            </li>
         </ul>")
    @as("ClientToken")
    clientToken: option<clientRequestToken>,
    @ocaml.doc("<p> The query to be run by Timestream. </p>") @as("QueryString")
    queryString: queryString,
  }
  type response = {
    @ocaml.doc("<p>Information about the status of the query, including progress and bytes
            scanned.</p>")
    @as("QueryStatus")
    queryStatus: option<queryStatus>,
    @ocaml.doc("<p> The column data types of the returned result set. </p>") @as("ColumnInfo")
    columnInfo: columnInfoList,
    @ocaml.doc("<p> The result set rows returned by the query. </p>") @as("Rows") rows: rowList,
    @ocaml.doc("<p> A pagination token that can be used again on a <code>Query</code> call to get the
            next set of results. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p> A unique ID for the given query. </p>") @as("QueryId") queryId: queryId,
  }
  @module("@aws-sdk/client-timestream") @new external new: request => t = "QueryCommand"
  let make = (~queryString, ~maxRows=?, ~nextToken=?, ~clientToken=?, ()) =>
    new({
      maxRows: maxRows,
      nextToken: nextToken,
      clientToken: clientToken,
      queryString: queryString,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PrepareQuery = {
  type t
  type request = {
    @ocaml.doc("<p>By setting this value to <code>true</code>, Timestream will only validate that the
            query string is a valid Timestream query, and not store the prepared query for later
            use.</p>")
    @as("ValidateOnly")
    validateOnly: option<nullableBoolean>,
    @ocaml.doc("<p>The Timestream query string that you want to use as a prepared statement. Parameter
            names can be specified in the query string <code>@</code> character followed by an
            identifier. </p>")
    @as("QueryString")
    queryString: queryString,
  }
  type response = {
    @ocaml.doc("<p>A list of parameters used in the submitted query string. </p>") @as("Parameters")
    parameters: parameterMappingList,
    @ocaml.doc("<p>A list of SELECT clause columns of the submitted query string. </p>")
    @as("Columns")
    columns: selectColumnList,
    @ocaml.doc("<p>The query string that you want prepare.</p>") @as("QueryString")
    queryString: queryString,
  }
  @module("@aws-sdk/client-timestream") @new external new: request => t = "PrepareQueryCommand"
  let make = (~queryString, ~validateOnly=?, ()) =>
    new({validateOnly: validateOnly, queryString: queryString})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
