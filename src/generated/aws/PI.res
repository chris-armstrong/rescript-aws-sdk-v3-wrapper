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
type dataPoint = {
  @as("Value") value: double,
  @as("Timestamp") timestamp_: isotimestamp,
}
type responseResourceMetricKey = {
  @as("Dimensions") dimensions: option<dimensionMap>,
  @as("Metric") metric: string_,
}
type responsePartitionKey = {@as("Dimensions") dimensions: dimensionMap}
type dimensionKeyDescription = {
  @as("Partitions") partitions: option<metricValuesList>,
  @as("Total") total: option<double>,
  @as("Dimensions") dimensions: option<dimensionMap>,
}
type dimensionGroup = {
  @as("Limit") limit: option<limit>,
  @as("Dimensions") dimensions: option<stringList>,
  @as("Group") group: string_,
}
type dataPointsList = array<dataPoint>
type responsePartitionKeyList = array<responsePartitionKey>
type metricQuery = {
  @as("Filter") filter: option<metricQueryFilterMap>,
  @as("GroupBy") groupBy: option<dimensionGroup>,
  @as("Metric") metric: string_,
}
type metricKeyDataPoints = {
  @as("DataPoints") dataPoints: option<dataPointsList>,
  @as("Key") key: option<responseResourceMetricKey>,
}
type dimensionKeyDescriptionList = array<dimensionKeyDescription>
type metricQueryList = array<metricQuery>
type metricKeyDataPointsList = array<metricKeyDataPoints>

module DescribeDimensionKeys = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Filter") filter: option<metricQueryFilterMap>,
    @as("PartitionBy") partitionBy: option<dimensionGroup>,
    @as("GroupBy") groupBy: dimensionGroup,
    @as("PeriodInSeconds") periodInSeconds: option<integer_>,
    @as("Metric") metric: string_,
    @as("EndTime") endTime: isotimestamp,
    @as("StartTime") startTime: isotimestamp,
    @as("Identifier") identifier: string_,
    @as("ServiceType") serviceType: serviceType,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Keys") keys: option<dimensionKeyDescriptionList>,
    @as("PartitionKeys") partitionKeys: option<responsePartitionKeyList>,
    @as("AlignedEndTime") alignedEndTime: option<isotimestamp>,
    @as("AlignedStartTime") alignedStartTime: option<isotimestamp>,
  }
  @module("@aws-sdk/client-pi") @new external new: request => t = "DescribeDimensionKeysCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceMetrics = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("PeriodInSeconds") periodInSeconds: option<integer_>,
    @as("EndTime") endTime: isotimestamp,
    @as("StartTime") startTime: isotimestamp,
    @as("MetricQueries") metricQueries: metricQueryList,
    @as("Identifier") identifier: string_,
    @as("ServiceType") serviceType: serviceType,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("MetricList") metricList: option<metricKeyDataPointsList>,
    @as("Identifier") identifier: option<string_>,
    @as("AlignedEndTime") alignedEndTime: option<isotimestamp>,
    @as("AlignedStartTime") alignedStartTime: option<isotimestamp>,
  }
  @module("@aws-sdk/client-pi") @new external new: request => t = "GetResourceMetricsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
