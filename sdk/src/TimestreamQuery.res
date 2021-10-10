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
type string_ = string
type serviceErrorMessage = string
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
type queryString = string
type queryId = string
type nullableBoolean = bool
type maxQueryResults = int
type long = float
type errorMessage = string
type double = float
type clientRequestToken = string
@ocaml.doc(
  "<p>Information about the status of the query, including progress and bytes scannned.</p>"
)
type queryStatus = {
  @ocaml.doc("<p>The amount of data scanned by the query in bytes that you will be charged for. 
            This is a cumulative sum and represents the total amount of data that you will be charged 
            for since the query was started. 
            The charge is applied only once and is either applied when 
            the query completes execution or when the query is cancelled.
        </p>")
  @as("CumulativeBytesMetered")
  cumulativeBytesMetered: option<long>,
  @ocaml.doc("<p>The amount of data scanned by the query in bytes. 
            This is a cumulative sum and represents the total amount of bytes scanned since the query was started.
        </p>")
  @as("CumulativeBytesScanned")
  cumulativeBytesScanned: option<long>,
  @ocaml.doc("<p>The progress of the query, expressed as a percentage.</p>")
  @as("ProgressPercentage")
  progressPercentage: option<double>,
}
@ocaml.doc(
  "<p>Represents an available endpoint against which to make API calls agaisnt, as well as the TTL for that endpoint.</p>"
)
type endpoint = {
  @ocaml.doc("<p>The TTL for the endpoint, in minutes.</p>") @as("CachePeriodInMinutes")
  cachePeriodInMinutes: long,
  @ocaml.doc("<p>An endpoint address.</p>") @as("Address") address: string_,
}
type endpoints = array<endpoint>
type rec type_ = {
  @ocaml.doc("<p>Indicates if the column is a row.</p>") @as("RowColumnInfo")
  rowColumnInfo: option<columnInfoList>,
  @ocaml.doc("<p>Indicates if the column is a timeseries data type.</p>")
  @as("TimeSeriesMeasureValueColumnInfo")
  timeSeriesMeasureValueColumnInfo: option<columnInfo>,
  @ocaml.doc("<p>Indicates if the column is an array.</p>") @as("ArrayColumnInfo")
  arrayColumnInfo: option<columnInfo>,
  @ocaml.doc(
    "<p>Indicates if the column is of type string, integer, boolean, double, timestamp, date, time. </p>"
  )
  @as("ScalarType")
  scalarType: option<scalarType>,
}
and columnInfoList = array<columnInfo>
and columnInfo = {
  @ocaml.doc("<p>
            The data type of the result set column. The data type can be a scalar or complex. Scalar data types are integers, strings, doubles, booleans, and others. Complex data types are types such as arrays, rows, and others.
        </p>")
  @as("Type")
  type_: type_,
  @ocaml.doc("<p>
            The name of the result set column. The name of the result set is available for columns of all data types except for arrays.
        </p>")
  @as("Name")
  name: option<string_>,
}
and row = {
  @ocaml.doc("<p>List of data points in a single row of the result set.</p>") @as("Data")
  data: datumList,
}
and datumList = array<datum>
and datum = {
  @ocaml.doc("<p>
            Indicates if the data point is null.
        </p>")
  @as("NullValue")
  nullValue: option<nullableBoolean>,
  @ocaml.doc("<p>
            Indicates if the data point is a row.
        </p>")
  @as("RowValue")
  rowValue: option<row>,
  @ocaml.doc("<p>
            Indicates if the data point is an array.
        </p>")
  @as("ArrayValue")
  arrayValue: option<datumList>,
  @ocaml.doc("<p>
            Indicates if the data point is of timeseries data type.
        </p>")
  @as("TimeSeriesValue")
  timeSeriesValue: option<timeSeriesDataPointList>,
  @ocaml.doc("<p>
            Indicates if the data point is a scalar value such as integer, string, double, or boolean.
        </p>")
  @as("ScalarValue")
  scalarValue: option<scalarValue>,
}
and timeSeriesDataPointList = array<timeSeriesDataPoint>
and timeSeriesDataPoint = {
  @ocaml.doc("<p>The measure value for the  data point.</p>") @as("Value") value: datum,
  @ocaml.doc("<p>The timestamp when the measure value was collected.</p>") @as("Time")
  time: timestamp_,
}
type rowList = array<row>
@ocaml.doc("<p>
            
        </p>")
module CancelQuery = {
  type t
  type request = {
    @ocaml.doc("<p>
      The id of the query that needs to be cancelled. <code>QueryID</code> is returned as part of QueryResult.
    </p>")
    @as("QueryId")
    queryId: queryId,
  }
  type response = {
    @ocaml.doc("<p>
        A <code>CancellationMessage</code> is returned when a <code>CancelQuery</code> request for the query specified by <code>QueryId</code> has already been issued. 
    </p>")
    @as("CancellationMessage")
    cancellationMessage: option<string_>,
  }
  @module("@aws-sdk/client-timestream") @new external new: request => t = "CancelQueryCommand"
  let make = (~queryId, ()) => new({queryId: queryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpoints = {
  type t

  type response = {
    @ocaml.doc(
      "<p>An <code>Endpoints</code> object is returned when a <code>DescribeEndpoints</code> request is made.</p>"
    )
    @as("Endpoints")
    endpoints: endpoints,
  }
  @module("@aws-sdk/client-timestream") @new external new: unit => t = "DescribeEndpointsCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Query = {
  type t
  type request = {
    @ocaml.doc("<p>
      The total number of rows to return in the output. If the total number of rows available
      is more than the value specified, a NextToken is provided in the command's output.
      To resume pagination, provide the NextToken value in the starting-token argument of a 
      subsequent command.
    </p>")
    @as("MaxRows")
    maxRows: option<maxQueryResults>,
    @ocaml.doc("<p>
       A pagination token passed to get a set of results.
    </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>
       Unique, case-sensitive string of up to 64 ASCII characters that you specify when you make a Query request.
       Providing a <code>ClientToken</code> makes the call to <code>Query</code> idempotent, meaning that multiple identical calls 
       have the same effect as one single call.
    </p>

         <p>Your query request will fail in the following cases:</p> 
         <ul>
            <li>
               <p>
                  If you submit a request with the same client token outside the 5-minute idepotency window.
               </p>
           </li>
            <li>
               <p>
                  If you submit a request with the same client token but a change in other parameters within the 5-minute idempotency window.  
               </p>
           </li>
         </ul>

         <p>
      After 4 hours, any request with the same client token is treated as a new request.
      </p>")
    @as("ClientToken")
    clientToken: option<clientRequestToken>,
    @ocaml.doc("<p>
            The query to be executed by Timestream.
        </p>")
    @as("QueryString")
    queryString: queryString,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the status of the query, including progress and bytes scannned.</p>"
    )
    @as("QueryStatus")
    queryStatus: option<queryStatus>,
    @ocaml.doc("<p>
            The column data types of the returned result set.
        </p>")
    @as("ColumnInfo")
    columnInfo: columnInfoList,
    @ocaml.doc("<p>
            The result set rows returned by the query.
        </p>")
    @as("Rows")
    rows: rowList,
    @ocaml.doc("<p>
       A pagination token that can be used again on a <code>Query</code> call to get the next set of results. 
    </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>
       A unique ID for the given query.
    </p>")
    @as("QueryId")
    queryId: queryId,
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
