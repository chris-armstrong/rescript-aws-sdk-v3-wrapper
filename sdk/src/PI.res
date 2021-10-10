type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-pi") @new external createClient: unit => awsServiceClient = "PIClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type string_ = string
type serviceType = [@as("RDS") #RDS]
type maxResults = int
type limit = int
type integer_ = int
type isotimestamp = Js.Date.t
type double = float
type stringList = array<string_>
type metricValuesList = array<double>
type metricQueryFilterMap = Js.Dict.t<string_>
type dimensionMap = Js.Dict.t<string_>
@ocaml.doc(
  "<p>A timestamp, and a single numerical value, which together represent a measurement at a particular point in time.</p>"
)
type dataPoint = {
  @ocaml.doc("<p>The actual value associated with a particular <code>Timestamp</code>.</p>")
  @as("Value")
  value: double,
  @ocaml.doc("<p>The time, in epoch format, associated with a particular <code>Value</code>.</p>")
  @as("Timestamp")
  timestamp_: isotimestamp,
}
@ocaml.doc(
  "<p>An object describing a Performance Insights metric and one or more dimensions for that metric.</p>"
)
type responseResourceMetricKey = {
  @ocaml.doc("<p>The valid dimensions for the metric.</p>") @as("Dimensions")
  dimensions: option<dimensionMap>,
  @ocaml.doc("<p>The name of a Performance Insights metric to be measured.</p>
         <p>Valid values for <code>Metric</code> are:</p>
    
         <ul>
            <li>
               <p>
                  <code>db.load.avg</code> - a scaled representation of the number of active sessions
          for the database engine.</p>
            </li>
            <li>
               <p>
                  <code>db.sampledload.avg</code> - the raw number of active sessions for the
          database engine.</p>
            </li>
         </ul>
         <p>If the number of active sessions is less than an internal Performance Insights threshold, <code>db.load.avg</code> and <code>db.sampledload.avg</code> 
          are the same value. If the number of active sessions is greater than the internal threshold, Performance Insights samples the active sessions, with <code>db.load.avg</code> 
          showing the scaled values, <code>db.sampledload.avg</code> showing the raw values, and <code>db.sampledload.avg</code> less than <code>db.load.avg</code>. 
          For most use cases, you can query <code>db.load.avg</code> only. </p>")
  @as("Metric")
  metric: string_,
}
@ocaml.doc("<p>If <code>PartitionBy</code> was specified in a <code>DescribeDimensionKeys</code>
      request, the dimensions are returned in an array. Each element in the array specifies one
      dimension. </p>")
type responsePartitionKey = {
  @ocaml.doc("<p>A dimension map that contains the dimension(s) for this partition.</p>")
  @as("Dimensions")
  dimensions: dimensionMap,
}
@ocaml.doc("<p>An array of descriptions and aggregated values for
      each dimension within a dimension group.</p>")
type dimensionKeyDescription = {
  @ocaml.doc(
    "<p>If <code>PartitionBy</code> was specified, <code>PartitionKeys</code> contains the dimensions that were.</p>"
  )
  @as("Partitions")
  partitions: option<metricValuesList>,
  @ocaml.doc(
    "<p>The aggregated metric value for the dimension(s), over the requested time range.</p>"
  )
  @as("Total")
  total: option<double>,
  @ocaml.doc("<p>A map of name-value pairs for the dimensions in the group.</p>") @as("Dimensions")
  dimensions: option<dimensionMap>,
}
@ocaml.doc("<p>A logical grouping of Performance Insights metrics for a related subject area. For example, the
        <code>db.sql</code> dimension group consists of the following dimensions:
        <code>db.sql.id</code>, <code>db.sql.db_id</code>, <code>db.sql.statement</code>, and
        <code>db.sql.tokenized_id</code>.</p>
         <note>
            <p>Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements, 
        only the first 500 bytes are returned.</p>
         </note>")
type dimensionGroup = {
  @ocaml.doc("<p>The maximum number of items to fetch for this dimension group.</p>") @as("Limit")
  limit: option<limit>,
  @ocaml.doc("<p>A list of specific dimensions from a dimension group. If this parameter is not present,
      then it signifies that all of the dimensions in the group were requested, or are present in
      the response.</p>
         <p>Valid values for elements in the <code>Dimensions</code> array are:</p>
    
         <ul>
            <li>
               <p>
                  <code>db.application.name</code> - The name of the application that is connected to the database (only
      Aurora PostgreSQL and RDS PostgreSQL)</p>
            </li>
            <li>
               <p>
                  <code>db.host.id</code> - The host ID of the connected client (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.host.name</code> - The host name of the connected client (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.name</code> - The name of the database to which the client is connected (only Aurora
      PostgreSQL, RDS PostgreSQL, Aurora MySQL, RDS MySQL, and MariaDB)</p>
            </li>
            <li>
               <p>
                  <code>db.session_type.name</code> - The type of the current session (only Aurora PostgreSQL and RDS PostgreSQL)</p>
            </li>
            <li>
               <p>
                  <code>db.sql.id</code> - The SQL ID generated by Performance Insights (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.sql.db_id</code> - The SQL ID generated by the database (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.sql.statement</code> - The SQL text that is being executed (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.sql.tokenized_id</code>
               </p>
            </li>
            <li>
               <p>
                  <code>db.sql_tokenized.id</code> - The SQL digest ID generated by Performance Insights (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.sql_tokenized.db_id</code> - SQL digest ID generated by the database (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.sql_tokenized.statement</code> - The SQL digest text (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.user.id</code> - The ID of the user logged in to the database (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.user.name</code> - The name of the user logged in to the database (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.wait_event.name</code> - The event for which the backend is waiting (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.wait_event.type</code> - The type of event for which the backend is waiting (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.wait_event_type.name</code> - The name of the event type for which the backend is waiting (all
      engines)</p>
            </li>
         </ul>")
  @as("Dimensions")
  dimensions: option<stringList>,
  @ocaml.doc("<p>The name of the dimension group.  Valid values are:</p>
    
         <ul>
            <li>
               <p>
                  <code>db</code> - The name of the database to which the client is connected (only Aurora PostgreSQL, RDS
        PostgreSQL, Aurora MySQL, RDS MySQL, and MariaDB)</p>
            </li>
            <li>
               <p>
                  <code>db.application</code> - The name of the application that is connected to the database (only Aurora
        PostgreSQL and RDS PostgreSQL)</p>
            </li>
            <li>
               <p>
                  <code>db.host</code> - The host name of the connected client (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.session_type</code> - The type of the current session (only Aurora PostgreSQL and RDS PostgreSQL)</p>
            </li>
            <li>
               <p>
                  <code>db.sql</code> - The SQL that is currently executing (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.sql_tokenized</code> - The SQL digest (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.wait_event</code> - The event for which the database backend is waiting  (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.wait_event_type</code> - The type of event for which the database backend is waiting (all engines)</p>
            </li>
            <li>
               <p>
                  <code>db.user</code> - The user logged in to the database (all engines)</p>
            </li>
         </ul>")
  @as("Group")
  group: string_,
}
type dataPointsList = array<dataPoint>
type responsePartitionKeyList = array<responsePartitionKey>
@ocaml.doc("<p>A single query to be processed. You must provide the metric to query. If no other
      parameters are specified, Performance Insights returns all of the data points for that metric. You can
      optionally request that the data points be aggregated by dimension group (
      <code>GroupBy</code>), and return only those data points that match your criteria (<code>Filter</code>).</p>")
type metricQuery = {
  @ocaml.doc("<p>One or more filters to apply in the request.  Restrictions:</p>
         <ul>
            <li>
               <p>Any number of filters by the same dimension, as specified in the <code>GroupBy</code> parameter.</p>
            </li>
            <li>
               <p>A single filter for any other dimension in this dimension group.</p>
            </li>
         </ul>")
  @as("Filter")
  filter: option<metricQueryFilterMap>,
  @ocaml.doc("<p>A specification for how to aggregate the data points from a query result. You must
      specify a valid dimension group.  Performance Insights will return all of the dimensions within that group,
      unless you provide the names of specific dimensions within that group. You can also request
      that Performance Insights return a limited number of values for a dimension.</p>")
  @as("GroupBy")
  groupBy: option<dimensionGroup>,
  @ocaml.doc("<p>The name of a Performance Insights metric to be measured.</p>
         <p>Valid values for <code>Metric</code> are:</p>
    
         <ul>
            <li>
               <p>
                  <code>db.load.avg</code> - a scaled representation of the number of active sessions
          for the database engine.</p>
            </li>
            <li>
               <p>
                  <code>db.sampledload.avg</code> - the raw number of active sessions for the
          database engine.</p>
            </li>
         </ul>
         <p>If the number of active sessions is less than an internal Performance Insights threshold, <code>db.load.avg</code> and <code>db.sampledload.avg</code> 
          are the same value. If the number of active sessions is greater than the internal threshold, Performance Insights samples the active sessions, with <code>db.load.avg</code> 
          showing the scaled values, <code>db.sampledload.avg</code> showing the raw values, and <code>db.sampledload.avg</code> less than <code>db.load.avg</code>. 
          For most use cases, you can query <code>db.load.avg</code> only. </p>")
  @as("Metric")
  metric: string_,
}
@ocaml.doc("<p>A time-ordered series of data points, corresponding to a dimension of a Performance Insights
      metric.</p>")
type metricKeyDataPoints = {
  @ocaml.doc(
    "<p>An array of timestamp-value pairs, representing measurements over a period of time.</p>"
  )
  @as("DataPoints")
  dataPoints: option<dataPointsList>,
  @ocaml.doc("<p>The dimension(s) to which the data points apply.</p>") @as("Key")
  key: option<responseResourceMetricKey>,
}
type dimensionKeyDescriptionList = array<dimensionKeyDescription>
type metricQueryList = array<metricQuery>
type metricKeyDataPointsList = array<metricKeyDataPoints>
@ocaml.doc("<fullname>Amazon RDS Performance Insights</fullname>
    
         <p>Amazon RDS Performance Insights enables you to monitor and explore different dimensions of
      database load based on data captured from a running DB instance. The guide provides detailed
      information about Performance Insights data types, parameters and errors.</p>
    
         <p>When Performance Insights is enabled, the Amazon RDS Performance Insights API provides visibility into the performance of your DB instance. Amazon
      CloudWatch provides the authoritative source for AWS service-vended monitoring metrics.  Performance Insights offers a domain-specific
      view of DB load. </p>
         <p>DB load is measured as Average Active Sessions. Performance Insights provides the data to API consumers as a two-dimensional
      time-series dataset. The time dimension provides DB load data for each time point in the queried time range. Each time
      point decomposes overall load in relation to the requested dimensions, measured at that time point. Examples include
      SQL, Wait event, User, and Host.</p>

         <ul>
            <li>
               <p>To learn more about Performance Insights and Amazon Aurora DB instances, go to the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html\">Amazon Aurora User Guide</a>.</p>
            </li>
            <li>
               <p>To learn more about Performance Insights and Amazon RDS DB instances, go to the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\">Amazon RDS User Guide</a>.</p>
            </li>
         </ul>")
module DescribeDimensionKeys = {
  type t
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If
      this parameter is specified, the response includes only records beyond the token, up to the
      value specified by <code>MaxRecords</code>.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of items to return in the response. 
      If more items exist than the specified <code>MaxRecords</code> value, a pagination 
      token is included in the response so that the remaining 
      results can be retrieved.
    </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>One or more filters to apply in the request.  Restrictions:</p>
         <ul>
            <li>
               <p>Any number of filters by the same dimension, as specified in the <code>GroupBy</code> or
          <code>Partition</code> parameters.</p>
            </li>
            <li>
               <p>A single filter for any other dimension in this dimension group.</p>
            </li>
         </ul>")
    @as("Filter")
    filter: option<metricQueryFilterMap>,
    @ocaml.doc("<p>For each dimension specified in 
      <code>GroupBy</code>, specify a secondary dimension to further subdivide the partition keys in the response.</p>")
    @as("PartitionBy")
    partitionBy: option<dimensionGroup>,
    @ocaml.doc("<p>A specification for how to aggregate the data points from a query result. You must specify a valid dimension group.
      Performance Insights returns all dimensions within this group, unless you provide the names of specific dimensions within this group.
      You can also request that Performance Insights return a limited number of values for a dimension.</p>")
    @as("GroupBy")
    groupBy: dimensionGroup,
    @ocaml.doc("<p>The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as
      one second, or as long as one day (86400 seconds).  Valid values are:</p>
    
        <ul>
            <li>
               <p>
                  <code>1</code> (one second)</p>
            </li>
            <li>
               <p>
                  <code>60</code> (one minute)</p>
            </li>
            <li>
               <p>
                  <code>300</code> (five minutes)</p>
            </li>
            <li>
               <p>
                  <code>3600</code> (one hour)</p>
            </li>
            <li>
               <p>
                  <code>86400</code> (twenty-four hours)</p>
            </li>
         </ul>
    
         <p>If you don't specify <code>PeriodInSeconds</code>, then Performance Insights chooses a value for you, with a goal of returning
      roughly 100-200 data points in the response.</p>")
    @as("PeriodInSeconds")
    periodInSeconds: option<integer_>,
    @ocaml.doc("<p>The name of a Performance Insights metric to be measured.</p>
         <p>Valid values for <code>Metric</code> are:</p>
     
         <ul>
            <li>
               <p>
                  <code>db.load.avg</code> - a scaled representation of the number of active sessions
          for the database engine.</p>
            </li>
            <li>
               <p>
                  <code>db.sampledload.avg</code> - the raw number of active sessions for the
          database engine.</p>
            </li>
         </ul>
         <p>If the number of active sessions is less than an internal Performance Insights threshold, <code>db.load.avg</code> and <code>db.sampledload.avg</code> 
          are the same value. If the number of active sessions is greater than the internal threshold, Performance Insights samples the active sessions, with <code>db.load.avg</code> 
          showing the scaled values, <code>db.sampledload.avg</code> showing the raw values, and <code>db.sampledload.avg</code> less than <code>db.load.avg</code>. 
          For most use cases, you can query <code>db.load.avg</code> only. </p>")
    @as("Metric")
    metric: string_,
    @ocaml.doc("<p>The date and time specifying the end of the requested time series data. The value specified is
        <i>exclusive</i>, which means that data points less than (but not equal to) <code>EndTime</code> are
      returned.</p>
         <p>The value for <code>EndTime</code> must be later than the value for
        <code>StartTime</code>.</p>")
    @as("EndTime")
    endTime: isotimestamp,
    @ocaml.doc("<p>The date and time specifying the beginning of the requested time series data. You must specify a
        <code>StartTime</code> within the past 7 days. The value specified is <i>inclusive</i>, which means
      that data points equal to or greater than <code>StartTime</code> are returned.</p>
         <p>The value for <code>StartTime</code> must be earlier than the value for
        <code>EndTime</code>.</p>")
    @as("StartTime")
    startTime: isotimestamp,
    @ocaml.doc("<p>An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from
      this data source.</p>
         <p>To use an Amazon RDS instance as a data source, you specify its <code>DbiResourceId</code> value. For example,
      specify <code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code>
         </p>")
    @as("Identifier")
    identifier: string_,
    @ocaml.doc("<p>The AWS service for which Performance Insights will return metrics. The only valid value for <i>ServiceType</i> is
        <code>RDS</code>.</p>")
    @as("ServiceType")
    serviceType: serviceType,
  }
  type response = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If
      this parameter is specified, the response includes only records beyond the token, up to the
      value specified by <code>MaxRecords</code>.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The dimension keys that were requested.</p>") @as("Keys")
    keys: option<dimensionKeyDescriptionList>,
    @ocaml.doc(
      "<p>If <code>PartitionBy</code> was present in the request, <code>PartitionKeys</code> contains the breakdown of dimension keys by the specified partitions.</p>"
    )
    @as("PartitionKeys")
    partitionKeys: option<responsePartitionKeyList>,
    @ocaml.doc("<p>The end time for the returned dimension keys, after alignment to a granular boundary (as
      specified by <code>PeriodInSeconds</code>). <code>AlignedEndTime</code> will be greater than
      or equal to the value of the user-specified <code>Endtime</code>.</p>")
    @as("AlignedEndTime")
    alignedEndTime: option<isotimestamp>,
    @ocaml.doc("<p>The start time for the returned dimension keys, after alignment to a granular boundary (as
      specified by <code>PeriodInSeconds</code>). <code>AlignedStartTime</code> will be less than or
      equal to the value of the user-specified <code>StartTime</code>.</p>")
    @as("AlignedStartTime")
    alignedStartTime: option<isotimestamp>,
  }
  @module("@aws-sdk/client-pi") @new external new: request => t = "DescribeDimensionKeysCommand"
  let make = (
    ~groupBy,
    ~metric,
    ~endTime,
    ~startTime,
    ~identifier,
    ~serviceType,
    ~nextToken=?,
    ~maxResults=?,
    ~filter=?,
    ~partitionBy=?,
    ~periodInSeconds=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filter: filter,
      partitionBy: partitionBy,
      groupBy: groupBy,
      periodInSeconds: periodInSeconds,
      metric: metric,
      endTime: endTime,
      startTime: startTime,
      identifier: identifier,
      serviceType: serviceType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceMetrics = {
  type t
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If
      this parameter is specified, the response includes only records beyond the token, up to the
      value specified by <code>MaxRecords</code>.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of items to return in the response. 
      If more items exist than the specified <code>MaxRecords</code> value, a pagination 
      token is included in the response so that the remaining 
      results can be retrieved.
    </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as
      one second, or as long as one day (86400 seconds).  Valid values are:</p>
    
        <ul>
            <li>
               <p>
                  <code>1</code> (one second)</p>
            </li>
            <li>
               <p>
                  <code>60</code> (one minute)</p>
            </li>
            <li>
               <p>
                  <code>300</code> (five minutes)</p>
            </li>
            <li>
               <p>
                  <code>3600</code> (one hour)</p>
            </li>
            <li>
               <p>
                  <code>86400</code> (twenty-four hours)</p>
            </li>
         </ul>
    
         <p>If you don't specify <code>PeriodInSeconds</code>, then Performance Insights will choose a value for
      you, with a goal of returning roughly 100-200 data points in the response.</p>")
    @as("PeriodInSeconds")
    periodInSeconds: option<integer_>,
    @ocaml.doc("<p>The date and time specifying the end of the requested time series data.  The value specified is 
      <i>exclusive</i> - data points less than (but not equal to) <code>EndTime</code> will be returned.</p>
         <p>The value for <code>EndTime</code> must be later than the value for <code>StartTime</code>.</p>")
    @as("EndTime")
    endTime: isotimestamp,
    @ocaml.doc("<p>The date and time specifying the beginning of the requested time series data. You can't
      specify a <code>StartTime</code> that's earlier than 7 days ago. The value specified is
        <i>inclusive</i> - data points equal to or greater than <code>StartTime</code>
      will be returned.</p>
         <p>The value for <code>StartTime</code> must be earlier than the value for <code>EndTime</code>.</p>")
    @as("StartTime")
    startTime: isotimestamp,
    @ocaml.doc("<p>An array of one or more queries to perform. Each query must specify a Performance Insights metric, and
      can optionally specify aggregation and filtering criteria.</p>")
    @as("MetricQueries")
    metricQueries: metricQueryList,
    @ocaml.doc("<p>An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from
      this data source.</p>
         <p>To use a DB instance as a data source, specify its <code>DbiResourceId</code> value. For example, specify
        <code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code>.</p>")
    @as("Identifier")
    identifier: string_,
    @ocaml.doc("<p>The AWS service for which Performance Insights returns metrics. The only valid value for <i>ServiceType</i> is
        <code>RDS</code>.</p>")
    @as("ServiceType")
    serviceType: serviceType,
  }
  type response = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If
      this parameter is specified, the response includes only records beyond the token, up to the
      value specified by <code>MaxRecords</code>.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>An array of metric results,, where each array element contains all of the data points for a particular dimension.</p>"
    )
    @as("MetricList")
    metricList: option<metricKeyDataPointsList>,
    @ocaml.doc("<p>An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from
      this data source.</p>
         <p>To use a DB instance as a data source, you specify its 
      <code>DbiResourceId</code> value - for example:  
      <code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code>
         </p>")
    @as("Identifier")
    identifier: option<string_>,
    @ocaml.doc("<p>The end time for the returned metrics, after alignment to a granular boundary (as
      specified by <code>PeriodInSeconds</code>). <code>AlignedEndTime</code> will be greater than
      or equal to the value of the user-specified <code>Endtime</code>.</p>")
    @as("AlignedEndTime")
    alignedEndTime: option<isotimestamp>,
    @ocaml.doc("<p>The start time for the returned metrics, after alignment to a granular boundary (as
      specified by <code>PeriodInSeconds</code>). <code>AlignedStartTime</code> will be less than or
      equal to the value of the user-specified <code>StartTime</code>.</p>")
    @as("AlignedStartTime")
    alignedStartTime: option<isotimestamp>,
  }
  @module("@aws-sdk/client-pi") @new external new: request => t = "GetResourceMetricsCommand"
  let make = (
    ~endTime,
    ~startTime,
    ~metricQueries,
    ~identifier,
    ~serviceType,
    ~nextToken=?,
    ~maxResults=?,
    ~periodInSeconds=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      periodInSeconds: periodInSeconds,
      endTime: endTime,
      startTime: startTime,
      metricQueries: metricQueries,
      identifier: identifier,
      serviceType: serviceType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
