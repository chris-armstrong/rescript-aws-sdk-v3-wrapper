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
@ocaml.doc("<p>The forecast value for a specific date. Part of the <a>Forecast</a>
      object.</p>")
type dataPoint = {
  @ocaml.doc("<p>The forecast value.</p>") @as("Value") value: option<double>,
  @ocaml.doc("<p>The timestamp of the specific forecast.</p>") @as("Timestamp")
  timestamp_: option<timestamp_>,
}
type timeSeries = array<dataPoint>
type predictions = Js.Dict.t<timeSeries>
@ocaml.doc(
  "<p>Provides information about a forecast. Returned as part of the <a>QueryForecast</a> response.</p>"
)
type forecast = {
  @ocaml.doc("<p>The forecast.</p>
         <p>The <i>string</i> of the string-to-array map is one of the following
      values:</p>
         <ul>
            <li>
               <p>p10</p>
            </li>
            <li>
               <p>p50</p>
            </li>
            <li>
               <p>p90</p>
            </li>
         </ul>")
  @as("Predictions")
  predictions: option<predictions>,
}
@ocaml.doc("<p>Provides APIs for creating and managing Amazon Forecast resources.</p>")
module QueryForecast = {
  type t
  type request = {
    @ocaml.doc("<p>If the result of the previous request was truncated, the response includes a
        <code>NextToken</code>. To retrieve the next set of results, use the token in the next
      request. Tokens expire after 24 hours.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The filtering criteria to apply when retrieving the forecast. For example, to get the
      forecast for <code>client_21</code> in the electricity usage dataset, specify the
      following:</p>
         <p>
            <code>{\"item_id\" : \"client_21\"}</code>
         </p>
      
      
         <p>To get the full forecast, use the <a href=\"https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateForecastExportJob.html\">CreateForecastExportJob</a> operation.</p>")
    @as("Filters")
    filters: filters,
    @ocaml.doc("<p>The end date for the forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss
      (ISO 8601 format). For example, 2015-01-01T20:00:00. </p>")
    @as("EndDate")
    endDate: option<dateTime>,
    @ocaml.doc("<p>The start date for the forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss
      (ISO 8601 format). For example, 2015-01-01T08:00:00.</p>")
    @as("StartDate")
    startDate: option<dateTime>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the forecast to query.</p>") @as("ForecastArn")
    forecastArn: arn,
  }
  type response = {@ocaml.doc("<p>The forecast.</p>") @as("Forecast") forecast: option<forecast>}
  @module("@aws-sdk/client-forecast") @new external new: request => t = "QueryForecastCommand"
  let make = (~filters, ~forecastArn, ~nextToken=?, ~endDate=?, ~startDate=?, ()) =>
    new({nextToken, filters, endDate, startDate, forecastArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
