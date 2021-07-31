type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = string
type statistic = string
type nextToken = string
type errorMessage = string
type amazonawsDouble = float;
type dateTime = string
type attributeValue = string
type attributeName = string
type arn = string
type filters = Js.Dict.t< attributeValue>
type dataPoint = {
@as("Value") value: amazonawsDouble,
@as("Timestamp") timestamp: amazonawsTimestamp
}
type timeSeries = array<dataPoint>
type predictions = Js.Dict.t< timeSeries>
type forecast = {
@as("Predictions") predictions: predictions
}
type clientType;
@module("@aws-sdk/client-forecast") @new external createClient: unit => clientType = "ForecastqueryClient";
module QueryForecast = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Filters") filters: option<filters>,
@as("EndDate") endDate: dateTime,
@as("StartDate") startDate: dateTime,
@as("ForecastArn") forecastArn: option<arn>
}
  type response = {
@as("Forecast") forecast: forecast
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "QueryForecastCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
