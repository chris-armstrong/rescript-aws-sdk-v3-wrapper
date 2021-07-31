type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-timestream") @new external createClient: unit => awsServiceClient = "TimestreamQueryClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type timestamp_ = string
type string_ = string
type serviceErrorMessage = string
type scalarValue = string
type scalarType = [@as("INTEGER") #INTEGER | @as("UNKNOWN") #UNKNOWN | @as("INTERVAL_YEAR_TO_MONTH") #INTERVAL_YEAR_TO_MONTH | @as("INTERVAL_DAY_TO_SECOND") #INTERVAL_DAY_TO_SECOND | @as("TIME") #TIME | @as("DATE") #DATE | @as("TIMESTAMP") #TIMESTAMP | @as("DOUBLE") #DOUBLE | @as("BIGINT") #BIGINT | @as("BOOLEAN") #BOOLEAN | @as("VARCHAR") #VARCHAR]
type queryString = string
type queryId = string
type nullableBoolean = bool
type maxQueryResults = int
type long = float
type errorMessage = string
type double = float
type clientRequestToken = string
type queryStatus = {
@as("CumulativeBytesMetered") cumulativeBytesMetered: option<long>,
  @as("CumulativeBytesScanned") cumulativeBytesScanned: option<long>,
  @as("ProgressPercentage") progressPercentage: option<double>
}
type endpoint = {
@as("CachePeriodInMinutes") cachePeriodInMinutes: long,
  @as("Address") address: string_
}
type endpoints = array<endpoint>
type rec type_ = {
@as("RowColumnInfo") rowColumnInfo: option<columnInfoList>,
  @as("TimeSeriesMeasureValueColumnInfo") timeSeriesMeasureValueColumnInfo: option<columnInfo>,
  @as("ArrayColumnInfo") arrayColumnInfo: option<columnInfo>,
  @as("ScalarType") scalarType: option<scalarType>
} and columnInfoList = array<columnInfo> and columnInfo = {
@as("Type") type_: type_,
  @as("Name") name: option<string_>
} and row = {
@as("Data") data: datumList
} and datumList = array<datum> and datum = {
@as("NullValue") nullValue: option<nullableBoolean>,
  @as("RowValue") rowValue: option<row>,
  @as("ArrayValue") arrayValue: option<datumList>,
  @as("TimeSeriesValue") timeSeriesValue: option<timeSeriesDataPointList>,
  @as("ScalarValue") scalarValue: option<scalarValue>
} and timeSeriesDataPointList = array<timeSeriesDataPoint> and timeSeriesDataPoint = {
@as("Value") value: datum,
  @as("Time") time: timestamp_
}
type rowList = array<row>

module CancelQuery = {
  type t;
  type request = {
@as("QueryId") queryId: queryId
}
  type response = {
@as("CancellationMessage") cancellationMessage: option<string_>
}
  @module("@aws-sdk/client-timestream") @new external new_: (request) => t = "CancelQueryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpoints = {
  type t;
  type request = unit
  type response = {
@as("Endpoints") endpoints: endpoints
}
  @module("@aws-sdk/client-timestream") @new external new_: (request) => t = "DescribeEndpointsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module Query = {
  type t;
  type request = {
@as("MaxRows") maxRows: option<maxQueryResults>,
  @as("NextToken") nextToken: option<string_>,
  @as("ClientToken") clientToken: option<clientRequestToken>,
  @as("QueryString") queryString: queryString
}
  type response = {
@as("QueryStatus") queryStatus: option<queryStatus>,
  @as("ColumnInfo") columnInfo: columnInfoList,
  @as("Rows") rows: rowList,
  @as("NextToken") nextToken: option<string_>,
  @as("QueryId") queryId: queryId
}
  @module("@aws-sdk/client-timestream") @new external new_: (request) => t = "QueryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
