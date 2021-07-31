type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsString = string
type serviceType = [@as("RDS") #RDS]
type maxResults = int;
type limit = int;
type amazonawsInteger = int;
type iSOTimestamp = Js.Date.t;
type amazonawsDouble = float;
type stringList = array<amazonawsString>
type metricValuesList = array<amazonawsDouble>
type metricQueryFilterMap = Js.Dict.t< amazonawsString>
type dimensionMap = Js.Dict.t< amazonawsString>
type dataPoint = {
@as("Value") value: option<amazonawsDouble>,
@as("Timestamp") timestamp: option<iSOTimestamp>
}
type responseResourceMetricKey = {
@as("Dimensions") dimensions: dimensionMap,
@as("Metric") metric: option<amazonawsString>
}
type responsePartitionKey = {
@as("Dimensions") dimensions: option<dimensionMap>
}
type dimensionKeyDescription = {
@as("Partitions") partitions: metricValuesList,
@as("Total") total: amazonawsDouble,
@as("Dimensions") dimensions: dimensionMap
}
type dimensionGroup = {
@as("Limit") limit: limit,
@as("Dimensions") dimensions: stringList,
@as("Group") group: option<amazonawsString>
}
type dataPointsList = array<dataPoint>
type responsePartitionKeyList = array<responsePartitionKey>
type metricQuery = {
@as("Filter") filter: metricQueryFilterMap,
@as("GroupBy") groupBy: dimensionGroup,
@as("Metric") metric: option<amazonawsString>
}
type metricKeyDataPoints = {
@as("DataPoints") dataPoints: dataPointsList,
@as("Key") key: responseResourceMetricKey
}
type dimensionKeyDescriptionList = array<dimensionKeyDescription>
type metricQueryList = array<metricQuery>
type metricKeyDataPointsList = array<metricKeyDataPoints>
type clientType;
@module("@aws-sdk/client-pi") @new external createClient: unit => clientType = "PIClient";
module DescribeDimensionKeys = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("Filter") filter: metricQueryFilterMap,
@as("PartitionBy") partitionBy: dimensionGroup,
@as("GroupBy") groupBy: option<dimensionGroup>,
@as("PeriodInSeconds") periodInSeconds: amazonawsInteger,
@as("Metric") metric: option<amazonawsString>,
@as("EndTime") endTime: option<iSOTimestamp>,
@as("StartTime") startTime: option<iSOTimestamp>,
@as("Identifier") identifier: option<amazonawsString>,
@as("ServiceType") serviceType: option<serviceType>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Keys") keys: dimensionKeyDescriptionList,
@as("PartitionKeys") partitionKeys: responsePartitionKeyList,
@as("AlignedEndTime") alignedEndTime: iSOTimestamp,
@as("AlignedStartTime") alignedStartTime: iSOTimestamp
}
  @module("@aws-sdk/client-pi") @new external new_: (Js.Promise.t<request>) => t = "DescribeDimensionKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourceMetrics = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("PeriodInSeconds") periodInSeconds: amazonawsInteger,
@as("EndTime") endTime: option<iSOTimestamp>,
@as("StartTime") startTime: option<iSOTimestamp>,
@as("MetricQueries") metricQueries: option<metricQueryList>,
@as("Identifier") identifier: option<amazonawsString>,
@as("ServiceType") serviceType: option<serviceType>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("MetricList") metricList: metricKeyDataPointsList,
@as("Identifier") identifier: amazonawsString,
@as("AlignedEndTime") alignedEndTime: iSOTimestamp,
@as("AlignedStartTime") alignedStartTime: iSOTimestamp
}
  @module("@aws-sdk/client-pi") @new external new_: (Js.Promise.t<request>) => t = "GetResourceMetricsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
