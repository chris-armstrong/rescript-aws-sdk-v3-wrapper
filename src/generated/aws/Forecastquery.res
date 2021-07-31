type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-forecast") @new
external createClient: unit => awsServiceClient = "ForecastqueryClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = string
type statistic = string
type nextToken = string
type errorMessage = string
type double = float
type dateTime = string
type attributeValue = string
type attributeName = string
type arn = string
type filters = Js.Dict.t<attributeValue>
type dataPoint = {
  @as("Value") value: option<double>,
  @as("Timestamp") timestamp_: option<timestamp_>,
}
type timeSeries = array<dataPoint>
type predictions = Js.Dict.t<timeSeries>
type forecast = {@as("Predictions") predictions: option<predictions>}

module QueryForecast = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Filters") filters: filters,
    @as("EndDate") endDate: option<dateTime>,
    @as("StartDate") startDate: option<dateTime>,
    @as("ForecastArn") forecastArn: arn,
  }
  type response = {@as("Forecast") forecast: option<forecast>}
  @module("@aws-sdk/client-forecast") @new external new_: request => t = "QueryForecastCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
