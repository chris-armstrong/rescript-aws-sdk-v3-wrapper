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
external createClient: unit => awsServiceClient = "ForecastClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type value = string
type useGeolocationForTimeZone = bool
type timestampFormat = string
type timestamp_ = Js.Date.t
type timeZone = string
type tagValue = string
type tagKey = string
type string_ = string
type status = string
type scalingType = [
  | @as("ReverseLogarithmic") #ReverseLogarithmic
  | @as("Logarithmic") #Logarithmic
  | @as("Linear") #Linear
  | @as("Auto") #Auto
]
type s3Path = string
type parameterValue = string
type parameterKey = string
type nextToken = string
type name = string
type message = string
type maxResults = int
type long = float
type kmskeyArn = string
type integer_ = int
type geolocationFormat = string
type frequency = string
type forecastType = string
type filterConditionString = [@as("IS_NOT") #IS_NOT | @as("IS") #IS]
type featurizationMethodName = [@as("filling") #Filling]
type evaluationType = [@as("COMPUTED") #COMPUTED | @as("SUMMARY") #SUMMARY]
type errorMessage = string
type double = float
type domain = [
  | @as("METRICS") #METRICS
  | @as("WEB_TRAFFIC") #WEB_TRAFFIC
  | @as("WORK_FORCE") #WORK_FORCE
  | @as("EC2_CAPACITY") #EC2_CAPACITY
  | @as("INVENTORY_PLANNING") #INVENTORY_PLANNING
  | @as("CUSTOM") #CUSTOM
  | @as("RETAIL") #RETAIL
]
type datasetType = [
  | @as("ITEM_METADATA") #ITEM_METADATA
  | @as("RELATED_TIME_SERIES") #RELATED_TIME_SERIES
  | @as("TARGET_TIME_SERIES") #TARGET_TIME_SERIES
]
type boolean_ = bool
type autoMLOverrideStrategy = [@as("LatencyOptimized") #LatencyOptimized]
type attributeType = [
  | @as("geolocation") #Geolocation
  | @as("timestamp") #Timestamp
  | @as("float") #Float
  | @as("integer") #Integer
  | @as("string") #String
]
type arn = string
@ocaml.doc("<p>The weighted loss value for a quantile. This object is part of the
      <a>Metrics</a> object.</p>")
type weightedQuantileLoss = {
  @ocaml.doc("<p>The difference between the predicted value and the actual value over the quantile,
      weighted (normalized) by dividing by the sum over all quantiles.</p>")
  @as("LossValue")
  lossValue: option<double>,
  @ocaml.doc("<p>The quantile. Quantiles divide a probability distribution into regions of equal
      probability. For example, if the distribution was divided into 5 regions of equal
      probability, the quantiles would be 0.2, 0.4, 0.6, and 0.8.</p>")
  @as("Quantile")
  quantile: option<double>,
}
type values = array<value>
type trainingParameters = Js.Dict.t<parameterValue>
@ocaml.doc("<p>The status, start time, and end time of a backtest, as well as a failure reason if
      applicable.</p>")
type testWindowSummary = {
  @ocaml.doc("<p>If the test failed, the reason why it failed.</p>") @as("Message")
  message: option<errorMessage>,
  @ocaml.doc("<p>The status of the test. Possible status values are:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_FAILED</code>
               </p>
            </li>
         </ul>")
  @as("Status")
  status: option<status>,
  @ocaml.doc("<p>The time at which the test ended.</p>") @as("TestWindowEnd")
  testWindowEnd: option<timestamp_>,
  @ocaml.doc("<p>The time at which the test began.</p>") @as("TestWindowStart")
  testWindowStart: option<timestamp_>,
}
type tagKeys = array<tagKey>
@ocaml.doc("<p>The optional metadata that you apply to a resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p>
         <p>The following basic restrictions apply to tags:</p>
         <ul>
            <li>
               <p>Maximum number of tags per resource - 50.</p>
            </li>
            <li>
               <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p>
            </li>
            <li>
               <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p>
            </li>
         </ul>")
type tag = {
  @ocaml.doc(
    "<p>The optional part of a key-value pair that makes up a tag. A <code>value</code> acts as a descriptor within a tag category (key).</p>"
  )
  @as("Value")
  value: tagValue,
  @ocaml.doc(
    "<p>One part of a key-value pair that makes up a tag. A <code>key</code> is a general label that acts like a category for more specific tag values.</p>"
  )
  @as("Key")
  key: tagKey,
}
@ocaml.doc("<p>Describes a supplementary feature of a dataset group. This object is part of the <a>InputDataConfig</a> object. Forecast supports the Weather Index and Holidays built-in
      featurizations.</p>
         <p>
            <b>Weather Index</b>
         </p>
         <p>The Amazon Forecast Weather Index is a built-in featurization that incorporates historical and
      projected weather information into your model. The Weather Index supplements your datasets
      with over two years of historical weather data and up to 14 days of projected weather data.
      For more information, see <a href=\"https://docs.aws.amazon.com/forecast/latest/dg/weather.html\">Amazon Forecast Weather Index</a>.</p>
         <p>
            <b>Holidays</b>
         </p>
         <p>Holidays is a built-in featurization that incorporates a feature-engineered dataset of
      national holiday information into your model. It provides native support for the holiday
      calendars of 66 countries. To view the holiday calendars, refer to the <a href=\"http://jollyday.sourceforge.net/data.html\">Jollyday</a> library. For more
      information, see <a href=\"https://docs.aws.amazon.com/forecast/latest/dg/holidays.html\">Holidays Featurization</a>.</p>")
type supplementaryFeature = {
  @ocaml.doc("<p>
            <b>Weather Index</b>
         </p>
         <p>To enable the Weather Index, set the value to <code>\"true\"</code>
         </p>
         <p>
            <b>Holidays</b>
         </p>
         <p>To enable Holidays, specify a country with one of the following two-letter country
      codes:</p>
         <ul>
            <li>
               <p>\"AL\" - ALBANIA</p>
            </li>
            <li>
               <p>\"AR\" - ARGENTINA</p>
            </li>
            <li>
               <p>\"AT\" - AUSTRIA</p>
            </li>
            <li>
               <p>\"AU\" - AUSTRALIA</p>
            </li>
            <li>
               <p>\"BA\" - BOSNIA HERZEGOVINA</p>
            </li>
            <li>
               <p>\"BE\" - BELGIUM</p>
            </li>
            <li>
               <p>\"BG\" - BULGARIA</p>
            </li>
            <li>
               <p>\"BO\" - BOLIVIA</p>
            </li>
            <li>
               <p>\"BR\" - BRAZIL</p>
            </li>
            <li>
               <p>\"BY\" - BELARUS</p>
            </li>
            <li>
               <p>\"CA\" - CANADA</p>
            </li>
            <li>
               <p>\"CL\" - CHILE</p>
            </li>
            <li>
               <p>\"CO\" - COLOMBIA</p>
            </li>
            <li>
               <p>\"CR\" - COSTA RICA</p>
            </li>
            <li>
               <p>\"HR\" - CROATIA</p>
            </li>
            <li>
               <p>\"CZ\" - CZECH REPUBLIC</p>
            </li>
            <li>
               <p>\"DK\" - DENMARK</p>
            </li>
            <li>
               <p>\"EC\" - ECUADOR</p>
            </li>
            <li>
               <p>\"EE\" - ESTONIA</p>
            </li>
            <li>
               <p>\"ET\" - ETHIOPIA</p>
            </li>
            <li>
               <p>\"FI\" - FINLAND</p>
            </li>
            <li>
               <p>\"FR\" - FRANCE</p>
            </li>
            <li>
               <p>\"DE\" - GERMANY</p>
            </li>
            <li>
               <p>\"GR\" - GREECE</p>
            </li>
            <li>
               <p>\"HU\" - HUNGARY</p>
            </li>
            <li>
               <p>\"IS\" - ICELAND</p>
            </li>
            <li>
               <p>\"IN\" - INDIA</p>
            </li>
            <li>
               <p>\"IE\" - IRELAND</p>
            </li>
            <li>
               <p>\"IT\" - ITALY</p>
            </li>
            <li>
               <p>\"JP\" - JAPAN</p>
            </li>
            <li>
               <p>\"KZ\" - KAZAKHSTAN</p>
            </li>
            <li>
               <p>\"KR\" - KOREA</p>
            </li>
            <li>
               <p>\"LV\" - LATVIA</p>
            </li>
            <li>
               <p>\"LI\" - LIECHTENSTEIN</p>
            </li>
            <li>
               <p>\"LT\" - LITHUANIA</p>
            </li>
            <li>
               <p>\"LU\" - LUXEMBOURG</p>
            </li>
            <li>
               <p>\"MK\" - MACEDONIA</p>
            </li>
            <li>
               <p>\"MT\" - MALTA</p>
            </li>
            <li>
               <p>\"MX\" - MEXICO</p>
            </li>
            <li>
               <p>\"MD\" - MOLDOVA</p>
            </li>
            <li>
               <p>\"ME\" - MONTENEGRO</p>
            </li>
            <li>
               <p>\"NL\" - NETHERLANDS</p>
            </li>
            <li>
               <p>\"NZ\" - NEW ZEALAND</p>
            </li>
            <li>
               <p>\"NI\" - NICARAGUA</p>
            </li>
            <li>
               <p>\"NG\" - NIGERIA</p>
            </li>
            <li>
               <p>\"NO\" - NORWAY</p>
            </li>
            <li>
               <p>\"PA\" - PANAMA</p>
            </li>
            <li>
               <p>\"PY\" - PARAGUAY</p>
            </li>
            <li>
               <p>\"PE\" - PERU</p>
            </li>
            <li>
               <p>\"PL\" - POLAND</p>
            </li>
            <li>
               <p>\"PT\" - PORTUGAL</p>
            </li>
            <li>
               <p>\"RO\" - ROMANIA</p>
            </li>
            <li>
               <p>\"RU\" - RUSSIA</p>
            </li>
            <li>
               <p>\"RS\" - SERBIA</p>
            </li>
            <li>
               <p>\"SK\" - SLOVAKIA</p>
            </li>
            <li>
               <p>\"SI\" - SLOVENIA</p>
            </li>
            <li>
               <p>\"ZA\" - SOUTH AFRICA</p>
            </li>
            <li>
               <p>\"ES\" - SPAIN</p>
            </li>
            <li>
               <p>\"SE\" - SWEDEN</p>
            </li>
            <li>
               <p>\"CH\" - SWITZERLAND</p>
            </li>
            <li>
               <p>\"UA\" - UKRAINE</p>
            </li>
            <li>
               <p>\"AE\" - UNITED ARAB EMIRATES</p>
            </li>
            <li>
               <p>\"US\" - UNITED STATES</p>
            </li>
            <li>
               <p>\"UK\" - UNITED KINGDOM</p>
            </li>
            <li>
               <p>\"UY\" - URUGUAY</p>
            </li>
            <li>
               <p>\"VE\" - VENEZUELA</p>
            </li>
         </ul>")
  @as("Value")
  value: value,
  @ocaml.doc(
    "<p>The name of the feature. Valid values: <code>\"holiday\"</code> and <code>\"weather\"</code>.</p>"
  )
  @as("Name")
  name: name,
}
@ocaml.doc("<p>Provides statistics for each data field imported into to an Amazon Forecast dataset with
      the <a>CreateDatasetImportJob</a> operation.</p>")
type statistics = {
  @ocaml.doc("<p>The number of NAN (not a number) values in the field. <code>CountNanLong</code> is used
      instead of <code>CountNan</code> if the value is greater than 2,147,483,647.</p>")
  @as("CountNanLong")
  countNanLong: option<long>,
  @ocaml.doc("<p>The number of null values in the field. <code>CountNullLong</code> is used instead of
        <code>CountNull</code> if the value is greater than 2,147,483,647.</p>")
  @as("CountNullLong")
  countNullLong: option<long>,
  @ocaml.doc("<p>The number of distinct values in the field. <code>CountDistinctLong</code> is used instead
      of <code>CountDistinct</code> if the value is greater than 2,147,483,647.</p>")
  @as("CountDistinctLong")
  countDistinctLong: option<long>,
  @ocaml.doc("<p>The number of values in the field. <code>CountLong</code> is used instead of
        <code>Count</code> if the value is greater than 2,147,483,647.</p>")
  @as("CountLong")
  countLong: option<long>,
  @ocaml.doc("<p>For a numeric field, the standard deviation.</p>") @as("Stddev")
  stddev: option<double>,
  @ocaml.doc("<p>For a numeric field, the average value in the field.</p>") @as("Avg")
  avg: option<double>,
  @ocaml.doc("<p>For a numeric field, the maximum value in the field.</p>") @as("Max")
  max: option<string_>,
  @ocaml.doc("<p>For a numeric field, the minimum value in the field.</p>") @as("Min")
  min: option<string_>,
  @ocaml.doc("<p>The number of NAN (not a number) values in the field. If the response value is -1, refer to
      <code>CountNanLong</code>.</p>")
  @as("CountNan")
  countNan: option<integer_>,
  @ocaml.doc("<p>The number of null values in the field. If the response value is -1, refer to
      <code>CountNullLong</code>.</p>")
  @as("CountNull")
  countNull: option<integer_>,
  @ocaml.doc("<p>The number of distinct values in the field. If the response value is -1, refer to
      <code>CountDistinctLong</code>.</p>")
  @as("CountDistinct")
  countDistinct: option<integer_>,
  @ocaml.doc("<p>The number of values in the field. If the response value is -1, refer to
        <code>CountLong</code>.</p>")
  @as("Count")
  count: option<integer_>,
}
@ocaml.doc("<p>An attribute of a schema, which defines a dataset field. A schema attribute is required
      for every field in a dataset. The <a>Schema</a> object contains an array of
        <code>SchemaAttribute</code> objects.</p>")
type schemaAttribute = {
  @ocaml.doc("<p>The data type of the field.</p>") @as("AttributeType")
  attributeType: option<attributeType>,
  @ocaml.doc("<p>The name of the dataset field.</p>") @as("AttributeName")
  attributeName: option<name>,
}
@ocaml.doc("<p>The path to the file(s) in an Amazon Simple Storage Service (Amazon S3) bucket, and an AWS Identity and Access Management (IAM) role that
      Amazon Forecast can assume to access the file(s). Optionally, includes an AWS Key Management Service (KMS) key. This
      object is part of the <a>DataSource</a> object that is submitted in the <a>CreateDatasetImportJob</a> request, and part of the <a>DataDestination</a> object.</p>")
type s3Config = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Key Management Service (KMS) key.</p>")
  @as("KMSKeyArn")
  kmskeyArn: option<kmskeyArn>,
  @ocaml.doc("<p>The ARN of the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the Amazon S3
      bucket or files. If you provide a value for the <code>KMSKeyArn</code> key, the role must
      allow access to the key.</p>
         <p>Passing a role across AWS accounts is not allowed. If you pass a role that isn't in your
      account, you get an <code>InvalidInputException</code> error.</p>")
  @as("RoleArn")
  roleArn: arn,
  @ocaml.doc(
    "<p>The path to an Amazon Simple Storage Service (Amazon S3) bucket or file(s) in an Amazon S3 bucket.</p>"
  )
  @as("Path")
  path: s3Path,
}
@ocaml.doc("<p>Provides a summary of the predictor properties that are used in the <a>ListPredictors</a> operation. To get the complete set of properties, call the <a>DescribePredictor</a> operation, and provide the listed
      <code>PredictorArn</code>.</p>")
type predictorSummary = {
  @ocaml.doc("<p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
         <ul>
            <li>
               <p>
                  <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPED</code> - When the job stopped.</p>
            </li>
            <li>
               <p>
                  <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
          failed.</p>
            </li>
         </ul>")
  @as("LastModificationTime")
  lastModificationTime: option<timestamp_>,
  @ocaml.doc("<p>When the model training task was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>If an error occurred, an informational message about the error.</p>")
  @as("Message")
  message: option<errorMessage>,
  @ocaml.doc("<p>The status of the predictor. States include:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
          <code>CREATE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
          <code>DELETE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
               </p>
            </li>
         </ul>
         <note>
            <p>The <code>Status</code> of the predictor must be <code>ACTIVE</code> before you can use
        the predictor to create a forecast.</p>
         </note>")
  @as("Status")
  status: option<status>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group that contains the data used to train
      the predictor.</p>")
  @as("DatasetGroupArn")
  datasetGroupArn: option<arn>,
  @ocaml.doc("<p>The name of the predictor.</p>") @as("PredictorName") predictorName: option<name>,
  @ocaml.doc("<p>The ARN of the predictor.</p>") @as("PredictorArn") predictorArn: option<arn>,
}
@ocaml.doc("<p>Specifies an integer hyperparameter and it's range of tunable values.
      This object is part of the <a>ParameterRanges</a> object.</p>")
type integerParameterRange = {
  @ocaml.doc("<p>The scale that hyperparameter tuning uses to search the hyperparameter range.
      Valid values:</p>
         <dl>
            <dt>Auto</dt>
            <dd>
               <p>Amazon Forecast hyperparameter tuning chooses the best scale for the hyperparameter.</p>
            </dd>
            <dt>Linear</dt>
            <dd>
               <p>Hyperparameter tuning searches the values in the hyperparameter range by using a
            linear scale.</p>
            </dd>
            <dt>Logarithmic</dt>
            <dd>
               <p>Hyperparameter tuning searches the values in the hyperparameter range by using a
            logarithmic scale.</p>
               <p>Logarithmic scaling works only for ranges that have values greater than 0.</p>
            </dd>
            <dt>ReverseLogarithmic</dt>
            <dd>
               <p>Not supported for <code>IntegerParameterRange</code>.</p>
               <p>Reverse logarithmic scaling works only for ranges that are entirely within the
            range 0 <= x < 1.0.</p>
            </dd>
         </dl>
         <p>For information about choosing a hyperparameter scale, see
      <a href=\"http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type\">Hyperparameter Scaling</a>.
      One of the following values:</p>")
  @as("ScalingType")
  scalingType: option<scalingType>,
  @ocaml.doc("<p>The minimum tunable value of the hyperparameter.</p>") @as("MinValue")
  minValue: integer_,
  @ocaml.doc("<p>The maximum tunable value of the hyperparameter.</p>") @as("MaxValue")
  maxValue: integer_,
  @ocaml.doc("<p>The name of the hyperparameter to tune.</p>") @as("Name") name: name,
}
type forecastTypes = array<forecastType>
@ocaml.doc("<p>Provides a summary of the forecast properties used in the <a>ListForecasts</a>
      operation. To get the complete set of properties, call the <a>DescribeForecast</a>
      operation, and provide the <code>ForecastArn</code> that is listed in the summary.</p>")
type forecastSummary = {
  @ocaml.doc("<p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
         <ul>
            <li>
               <p>
                  <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPED</code> - When the job stopped.</p>
            </li>
            <li>
               <p>
                  <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
          failed.</p>
            </li>
         </ul>")
  @as("LastModificationTime")
  lastModificationTime: option<timestamp_>,
  @ocaml.doc("<p>When the forecast creation task was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>If an error occurred, an informational message about the error.</p>")
  @as("Message")
  message: option<errorMessage>,
  @ocaml.doc("<p>The status of the forecast. States include:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
          <code>CREATE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
          <code>DELETE_FAILED</code>
               </p>
            </li>
         </ul>
         <note>
            <p>The <code>Status</code> of the forecast must be <code>ACTIVE</code> before you can query
        or export the forecast.</p>
         </note>")
  @as("Status")
  status: option<status>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group that provided the data used to train
      the predictor.</p>")
  @as("DatasetGroupArn")
  datasetGroupArn: option<string_>,
  @ocaml.doc("<p>The ARN of the predictor used to generate the forecast.</p>") @as("PredictorArn")
  predictorArn: option<string_>,
  @ocaml.doc("<p>The name of the forecast.</p>") @as("ForecastName") forecastName: option<name>,
  @ocaml.doc("<p>The ARN of the forecast.</p>") @as("ForecastArn") forecastArn: option<arn>,
}
type forecastDimensions = array<name>
@ocaml.doc("<p>Describes a filter for choosing a subset of objects. Each filter consists of a
      condition and a match statement. The condition is either <code>IS</code> or
      <code>IS_NOT</code>, which specifies whether to include or exclude
      the objects that match the statement, respectively. The match statement consists of a key and a
      value.</p>")
type filter = {
  @ocaml.doc("<p>The condition to apply. To include the objects that match the statement, specify
      <code>IS</code>. To exclude matching objects, specify <code>IS_NOT</code>.</p>")
  @as("Condition")
  condition: filterConditionString,
  @ocaml.doc("<p>The value to match.</p>") @as("Value") value: arn,
  @ocaml.doc("<p>The name of the parameter to filter on.</p>") @as("Key") key: string_,
}
type featurizationMethodParameters = Js.Dict.t<parameterValue>
@ocaml.doc("<p>Parameters that define how to split a dataset into training data and testing data, and the
      number of iterations to perform. These parameters are specified in the predefined algorithms
      but you can override them in the <a>CreatePredictor</a> request.</p>")
type evaluationParameters = {
  @ocaml.doc("<p>The point from the end of the dataset where you want to split the data for model training
      and testing (evaluation). Specify the value as the number of data points. The default is the
      value of the forecast horizon. <code>BackTestWindowOffset</code> can be used to mimic a past
      virtual forecast start date. This value must be greater than or equal to the forecast horizon
      and less than half of the TARGET_TIME_SERIES dataset length.</p>
         <p>
            <code>ForecastHorizon</code> <= <code>BackTestWindowOffset</code> < 1/2 *
      TARGET_TIME_SERIES dataset length</p>")
  @as("BackTestWindowOffset")
  backTestWindowOffset: option<integer_>,
  @ocaml.doc("<p>The number of times to split the input data. The default is 1. Valid values are 1 through
      5.</p>")
  @as("NumberOfBacktestWindows")
  numberOfBacktestWindows: option<integer_>,
}
@ocaml.doc("<p>
      Provides detailed error metrics to evaluate the performance of a predictor. This object is
      part of the <a>Metrics</a> object.
    </p>")
type errorMetric = {
  @ocaml.doc("<p>
      The root-mean-square error (RMSE).
    </p>")
  @as("RMSE")
  rmse: option<double>,
  @ocaml.doc("<p>
      The weighted absolute percentage error (WAPE).
    </p>")
  @as("WAPE")
  wape: option<double>,
  @ocaml.doc("<p>
      The Forecast type used to compute WAPE and RMSE.
    </p>")
  @as("ForecastType")
  forecastType: option<forecastType>,
}
@ocaml.doc("<p>An AWS Key Management Service (KMS) key and an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to
      access the key. You can specify this optional object in the
      <a>CreateDataset</a> and <a>CreatePredictor</a> requests.</p>")
type encryptionConfig = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the KMS key.</p>") @as("KMSKeyArn")
  kmskeyArn: kmskeyArn,
  @ocaml.doc("<p>The ARN of the IAM role that Amazon Forecast can assume to access the AWS KMS key.</p>
         <p>Passing a role across AWS accounts is not allowed. If you pass a role that isn't in your
      account, you get an <code>InvalidInputException</code> error.</p>")
  @as("RoleArn")
  roleArn: arn,
}
@ocaml.doc("<p>Provides a summary of the dataset properties used in the <a>ListDatasets</a>
      operation. To get the complete set of properties, call the <a>DescribeDataset</a>
      operation, and provide the <code>DatasetArn</code>.</p>")
type datasetSummary = {
  @ocaml.doc("<p>When you create a dataset, <code>LastModificationTime</code> is the same as
        <code>CreationTime</code>. While data is being imported to the dataset,
        <code>LastModificationTime</code> is the current time of the <code>ListDatasets</code> call.
      After a <a>CreateDatasetImportJob</a> operation has finished,
        <code>LastModificationTime</code> is when the import job completed or failed.</p>")
  @as("LastModificationTime")
  lastModificationTime: option<timestamp_>,
  @ocaml.doc("<p>When the dataset was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The domain associated with the dataset.</p>") @as("Domain") domain: option<domain>,
  @ocaml.doc("<p>The dataset type.</p>") @as("DatasetType") datasetType: option<datasetType>,
  @ocaml.doc("<p>The name of the dataset.</p>") @as("DatasetName") datasetName: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset.</p>") @as("DatasetArn")
  datasetArn: option<arn>,
}
@ocaml.doc("<p>Provides a summary of the dataset group properties used in the <a>ListDatasetGroups</a> operation. To get the complete set of properties, call the
        <a>DescribeDatasetGroup</a> operation, and provide the
        <code>DatasetGroupArn</code>.</p>")
type datasetGroupSummary = {
  @ocaml.doc("<p>When the dataset group was created or last updated from a call to the <a>UpdateDatasetGroup</a> operation. While the dataset group is being updated,
        <code>LastModificationTime</code> is the current time of the <code>ListDatasetGroups</code>
      call.</p>")
  @as("LastModificationTime")
  lastModificationTime: option<timestamp_>,
  @ocaml.doc("<p>When the dataset group was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The name of the dataset group.</p>") @as("DatasetGroupName")
  datasetGroupName: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group.</p>") @as("DatasetGroupArn")
  datasetGroupArn: option<arn>,
}
@ocaml.doc("<p>Specifies a continuous hyperparameter and it's range of tunable values.
      This object is part of the <a>ParameterRanges</a> object.</p>")
type continuousParameterRange = {
  @ocaml.doc("<p>The scale that hyperparameter tuning uses to search the hyperparameter range.
      Valid values:</p>
         <dl>
            <dt>Auto</dt>
            <dd>
               <p>Amazon Forecast hyperparameter tuning chooses the best scale for the hyperparameter.</p>
            </dd>
            <dt>Linear</dt>
            <dd>
               <p>Hyperparameter tuning searches the values in the hyperparameter range by using a
            linear scale.</p>
            </dd>
            <dt>Logarithmic</dt>
            <dd>
               <p>Hyperparameter tuning searches the values in the hyperparameter range by using a
            logarithmic scale.</p>
               <p>Logarithmic scaling works only for ranges that have values greater than 0.</p>
            </dd>
            <dt>ReverseLogarithmic</dt>
            <dd>
               <p>hyperparameter tuning searches the values in the hyperparameter range by using a
            reverse logarithmic scale.</p>
               <p>Reverse logarithmic scaling works only for ranges that are entirely within the
            range 0 <= x < 1.0.</p>
            </dd>
         </dl>
         <p>For information about choosing a hyperparameter scale, see
      <a href=\"http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type\">Hyperparameter Scaling</a>.
      One of the following values:</p>")
  @as("ScalingType")
  scalingType: option<scalingType>,
  @ocaml.doc("<p>The minimum tunable value of the hyperparameter.</p>") @as("MinValue")
  minValue: double,
  @ocaml.doc("<p>The maximum tunable value of the hyperparameter.</p>") @as("MaxValue")
  maxValue: double,
  @ocaml.doc("<p>The name of the hyperparameter to tune.</p>") @as("Name") name: name,
}
type arnList = array<arn>
type weightedQuantileLosses = array<weightedQuantileLoss>
type testWindowDetails = array<testWindowSummary>
type tags = array<tag>
type supplementaryFeatures = array<supplementaryFeature>
type schemaAttributes = array<schemaAttribute>
type predictors = array<predictorSummary>
type integerParameterRanges = array<integerParameterRange>
type forecasts = array<forecastSummary>
type filters = array<filter>
type fieldStatistics = Js.Dict.t<statistics>
@ocaml.doc("<p>Provides information about the method that featurizes (transforms) a dataset field.
      The method is part of the <code>FeaturizationPipeline</code> of the
      <a>Featurization</a> object. </p>
         <p>The following is an example of how you specify a <code>FeaturizationMethod</code> object.</p>
         <p>
            <code>{</code>
         </p>
         <p>
            <code>\"FeaturizationMethodName\": \"filling\",</code>
         </p>
         <p>
            <code>\"FeaturizationMethodParameters\": {\"aggregation\": \"sum\", \"middlefill\": \"zero\", \"backfill\": \"zero\"}</code>
         </p>
         <p>
            <code>}</code>
         </p>")
type featurizationMethod = {
  @ocaml.doc("<p>The method parameters (key-value pairs), which are a map of override parameters. Specify these parameters to override the default values. 
      Related Time Series attributes do not accept aggregation parameters.</p>
         <p>The following list shows the parameters and their valid values for the \"filling\" featurization method for a <b>Target Time Series</b> dataset. Bold signifies the default
      value.</p>
         <ul>
            <li>
               <p>
                  <code>aggregation</code>: <b>sum</b>, <code>avg</code>, <code>first</code>, <code>min</code>, <code>max</code>
               </p>
            </li>
            <li>
               <p>
                  <code>frontfill</code>: <b>none</b>
               </p>
            </li>
            <li>
               <p>
                  <code>middlefill</code>: <b>zero</b>, <code>nan</code> (not a number), <code>value</code>, <code>median</code>, <code>mean</code>, <code>min</code>, <code>max</code>
               </p>
            </li>
            <li>
               <p>
                  <code>backfill</code>: <b>zero</b>, <code>nan</code>, <code>value</code>, <code>median</code>, <code>mean</code>, <code>min</code>, <code>max</code>
               </p>
            </li>
         </ul>

         <p>The following list shows the parameters and their valid values for a <b>Related Time Series</b> featurization method (there are no defaults):</p>
         <ul>
            <li>
               <p>
                  <code>middlefill</code>: <code>zero</code>, <code>value</code>, <code>median</code>, <code>mean</code>, <code>min</code>, <code>max</code>
               </p>
            </li>
            <li>
               <p>
                  <code>backfill</code>: <code>zero</code>, <code>value</code>, <code>median</code>, <code>mean</code>, <code>min</code>, <code>max</code>
               </p>
            </li>
            <li>
               <p>
                  <code>futurefill</code>: <code>zero</code>, <code>value</code>, <code>median</code>, <code>mean</code>, <code>min</code>, <code>max</code>
               </p>
            </li>
         </ul>
         <p>To set a filling method to a specific value, set the fill parameter to <code>value</code>
      and define the value in a corresponding <code>_value</code> parameter. For example, to set
      backfilling to a value of 2, include the following: <code>\"backfill\": \"value\"</code> and
        <code>\"backfill_value\":\"2\"</code>. </p>")
  @as("FeaturizationMethodParameters")
  featurizationMethodParameters: option<featurizationMethodParameters>,
  @ocaml.doc("<p>The name of the method. The \"filling\" method is the only supported method.</p>")
  @as("FeaturizationMethodName")
  featurizationMethodName: featurizationMethodName,
}
type errorMetrics = array<errorMetric>
type datasets = array<datasetSummary>
type datasetGroups = array<datasetGroupSummary>
@ocaml.doc("<p>The source of your training data, an AWS Identity and Access Management (IAM) role that allows Amazon Forecast to
      access the data and, optionally, an AWS Key Management Service (KMS) key. This object is submitted in the
      <a>CreateDatasetImportJob</a> request.</p>")
type dataSource = {
  @ocaml.doc("<p>The path to the training data stored in an Amazon Simple Storage Service (Amazon S3) bucket along with the
      credentials to access the data.</p>")
  @as("S3Config")
  s3Config: s3Config,
}
@ocaml.doc("<p>The destination for an export job. Provide an S3 path, an AWS Identity and Access Management (IAM) role that allows Amazon Forecast
      to access the location, and an AWS Key Management Service (KMS) key (optional). </p>")
type dataDestination = {
  @ocaml.doc("<p>The path to an Amazon Simple Storage Service (Amazon S3) bucket along with the credentials to access the
      bucket.</p>")
  @as("S3Config")
  s3Config: s3Config,
}
type continuousParameterRanges = array<continuousParameterRange>
@ocaml.doc("<p>Specifies a categorical hyperparameter and it's range of tunable values.
      This object is part of the <a>ParameterRanges</a> object.</p>")
type categoricalParameterRange = {
  @ocaml.doc("<p>A list of the tunable categories for the hyperparameter.</p>") @as("Values")
  values: values,
  @ocaml.doc("<p>The name of the categorical hyperparameter to tune.</p>") @as("Name") name: name,
}
@ocaml.doc(
  "<p>Defines the fields of a dataset. You specify this object in the <a>CreateDataset</a> request.</p>"
)
type schema = {
  @ocaml.doc(
    "<p>An array of attributes specifying the name and type of each field in a dataset.</p>"
  )
  @as("Attributes")
  attributes: option<schemaAttributes>,
}
@ocaml.doc("<p>The algorithm used to perform a backtest and the status of those tests.</p>")
type predictorExecution = {
  @ocaml.doc("<p>An array of test windows used to evaluate the algorithm. The
        <code>NumberOfBacktestWindows</code> from the 
      object determines the number of windows in the array.</p>")
  @as("TestWindows")
  testWindows: option<testWindowDetails>,
  @ocaml.doc("<p>The ARN of the algorithm used to test the predictor.</p>") @as("AlgorithmArn")
  algorithmArn: option<arn>,
}
@ocaml.doc("<p>Provides a summary of the predictor backtest export job properties used in the <a>ListPredictorBacktestExportJobs</a> operation. To get a complete set of properties, call
            the <a>DescribePredictorBacktestExportJob</a> operation, and provide the listed
            <code>PredictorBacktestExportJobArn</code>.</p>")
type predictorBacktestExportJobSummary = {
  @ocaml.doc("<p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
        <ul>
            <li>
                <p>
                  <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
            </li>
            <li>
                <p>
                  <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
            </li>
            <li>
                <p>
                  <code>CREATE_STOPPING</code> - The current timestamp.</p>
            </li>
            <li>
                <p>
                  <code>CREATE_STOPPED</code> - When the job stopped.</p>
            </li>
            <li>
                <p>
                  <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
                    failed.</p>
            </li>
         </ul>")
  @as("LastModificationTime")
  lastModificationTime: option<timestamp_>,
  @ocaml.doc("<p>When the predictor backtest export job was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>Information about any errors that may have occurred during the backtest export.</p>"
  )
  @as("Message")
  message: option<errorMessage>,
  @ocaml.doc("<p>The status of the predictor backtest export job. States include: </p>
        <ul>
            <li>
                <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
                <p>
                  <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
                    <code>CREATE_FAILED</code>
               </p>
            </li>
            <li>
                <p>
                    <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
                </p>
            </li>
            <li>
                <p>
                  <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
                    <code>DELETE_FAILED</code>
               </p>
            </li>
         </ul>")
  @as("Status")
  status: option<status>,
  @as("Destination") destination: option<dataDestination>,
  @ocaml.doc("<p>The name of the predictor backtest export job.</p>")
  @as("PredictorBacktestExportJobName")
  predictorBacktestExportJobName: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the predictor backtest export job.</p>")
  @as("PredictorBacktestExportJobArn")
  predictorBacktestExportJobArn: option<arn>,
}
@ocaml.doc("<p>Provides metrics that are used to evaluate the performance of a predictor. This object
      is part of the <a>WindowSummary</a> object.</p>")
type metrics = {
  @ocaml.doc("<p>
      Provides detailed error metrics on forecast type, root-mean square-error (RMSE), and weighted
      average percentage error (WAPE).
    </p>")
  @as("ErrorMetrics")
  errorMetrics: option<errorMetrics>,
  @ocaml.doc("<p>An array of weighted quantile losses. Quantiles divide a probability distribution into
      regions of equal probability. The distribution in this case is the loss function.</p>")
  @as("WeightedQuantileLosses")
  weightedQuantileLosses: option<weightedQuantileLosses>,
  @ocaml.doc("<p>The root-mean-square error (RMSE).</p>") @as("RMSE") rmse: option<double>,
}
@ocaml.doc("<p>The data used to train a predictor. The data includes a dataset group and any
      supplementary features. You specify this object in the <a>CreatePredictor</a>
      request.</p>")
type inputDataConfig = {
  @ocaml.doc("<p>An array of supplementary features. The only supported feature is a holiday
      calendar.</p>")
  @as("SupplementaryFeatures")
  supplementaryFeatures: option<supplementaryFeatures>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group.</p>") @as("DatasetGroupArn")
  datasetGroupArn: arn,
}
@ocaml.doc("<p>Provides a summary of the forecast export job properties used in the <a>ListForecastExportJobs</a> operation. To get the complete set of properties, call
      the <a>DescribeForecastExportJob</a> operation, and provide the listed
        <code>ForecastExportJobArn</code>.</p>")
type forecastExportJobSummary = {
  @ocaml.doc("<p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
         <ul>
            <li>
               <p>
                  <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPED</code> - When the job stopped.</p>
            </li>
            <li>
               <p>
                  <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
          failed.</p>
            </li>
         </ul>")
  @as("LastModificationTime")
  lastModificationTime: option<timestamp_>,
  @ocaml.doc("<p>When the forecast export job was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>If an error occurred, an informational message about the error.</p>")
  @as("Message")
  message: option<errorMessage>,
  @ocaml.doc("<p>The status of the forecast export job. States include:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
          <code>CREATE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
          <code>DELETE_FAILED</code>
               </p>
            </li>
         </ul>
         <note>
            <p>The <code>Status</code> of the forecast export job must be <code>ACTIVE</code> before
        you can access the forecast in your S3 bucket.</p>
         </note>")
  @as("Status")
  status: option<status>,
  @ocaml.doc(
    "<p>The path to the Amazon Simple Storage Service (Amazon S3) bucket where the forecast is exported.</p>"
  )
  @as("Destination")
  destination: option<dataDestination>,
  @ocaml.doc("<p>The name of the forecast export job.</p>") @as("ForecastExportJobName")
  forecastExportJobName: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the forecast export job.</p>")
  @as("ForecastExportJobArn")
  forecastExportJobArn: option<arn>,
}
type featurizationPipeline = array<featurizationMethod>
@ocaml.doc("<p>Provides a summary of the dataset import job properties used in the <a>ListDatasetImportJobs</a> operation. To get the complete set of properties, call the
        <a>DescribeDatasetImportJob</a> operation, and provide the
        <code>DatasetImportJobArn</code>.</p>")
type datasetImportJobSummary = {
  @ocaml.doc("<p>The last time the resource was modified. The timestamp depends on the status of the
      job:</p>
         <ul>
            <li>
               <p>
                  <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPED</code> - When the job stopped.</p>
            </li>
            <li>
               <p>
                  <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
          failed.</p>
            </li>
         </ul>")
  @as("LastModificationTime")
  lastModificationTime: option<timestamp_>,
  @ocaml.doc("<p>When the dataset import job was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>If an error occurred, an informational message about the error.</p>")
  @as("Message")
  message: option<errorMessage>,
  @ocaml.doc("<p>The status of the dataset import job. States include:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
            <code>CREATE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
            <code>DELETE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
               </p>
            </li>
         </ul>")
  @as("Status")
  status: option<status>,
  @ocaml.doc("<p>The location of the training data to import and an AWS Identity and Access Management (IAM) role that Amazon Forecast
      can assume to access the data. The training data must be stored in an Amazon S3 bucket.</p>
         <p>If encryption is used, <code>DataSource</code> includes an AWS Key Management Service (KMS) key.</p>")
  @as("DataSource")
  dataSource: option<dataSource>,
  @ocaml.doc("<p>The name of the dataset import job.</p>") @as("DatasetImportJobName")
  datasetImportJobName: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset import job.</p>")
  @as("DatasetImportJobArn")
  datasetImportJobArn: option<arn>,
}
type categoricalParameterRanges = array<categoricalParameterRange>
@ocaml.doc("<p>The metrics for a time range within the evaluation portion of a dataset. This object
      is part of the <a>EvaluationResult</a> object.</p>
         <p>The <code>TestWindowStart</code> and <code>TestWindowEnd</code> parameters are
      determined by the <code>BackTestWindowOffset</code> parameter of the
      <a>EvaluationParameters</a> object.</p>")
type windowSummary = {
  @ocaml.doc("<p>Provides metrics used to evaluate the performance of a predictor.</p>")
  @as("Metrics")
  metrics: option<metrics>,
  @ocaml.doc("<p>The type of evaluation.</p>
         <ul>
            <li>
               <p>
                  <code>SUMMARY</code> - The average metrics across all windows.</p>
            </li>
            <li>
               <p>
                  <code>COMPUTED</code> - The metrics for the specified window.</p>
            </li>
         </ul>")
  @as("EvaluationType")
  evaluationType: option<evaluationType>,
  @ocaml.doc("<p>The number of data points within the window.</p>") @as("ItemCount")
  itemCount: option<integer_>,
  @ocaml.doc("<p>The timestamp that defines the end of the window.</p>") @as("TestWindowEnd")
  testWindowEnd: option<timestamp_>,
  @ocaml.doc("<p>The timestamp that defines the start of the window.</p>") @as("TestWindowStart")
  testWindowStart: option<timestamp_>,
}
type predictorExecutions = array<predictorExecution>
type predictorBacktestExportJobs = array<predictorBacktestExportJobSummary>
@ocaml.doc("<p>Specifies the categorical, continuous, and integer hyperparameters, and their ranges of
      tunable values. The range of tunable values determines which values that a hyperparameter
      tuning job can choose for the specified hyperparameter. This object is part of the
      <a>HyperParameterTuningJobConfig</a> object.</p>")
type parameterRanges = {
  @ocaml.doc("<p>Specifies the tunable range for each integer hyperparameter.</p>")
  @as("IntegerParameterRanges")
  integerParameterRanges: option<integerParameterRanges>,
  @ocaml.doc("<p>Specifies the tunable range for each continuous hyperparameter.</p>")
  @as("ContinuousParameterRanges")
  continuousParameterRanges: option<continuousParameterRanges>,
  @ocaml.doc("<p>Specifies the tunable range for each categorical hyperparameter.</p>")
  @as("CategoricalParameterRanges")
  categoricalParameterRanges: option<categoricalParameterRanges>,
}
type forecastExportJobs = array<forecastExportJobSummary>
@ocaml.doc("<p>Provides featurization (transformation) information for a dataset field. This object
      is part of the <a>FeaturizationConfig</a> object.</p>
         <p>For example:</p>
         <p>
            <code>{</code>
         </p>
         <p>
            <code>\"AttributeName\": \"demand\",</code>
         </p>
         <p>
            <code>FeaturizationPipeline [ {</code>
         </p>
      
         <p>
            <code>\"FeaturizationMethodName\": \"filling\",</code>
         </p>
         <p>
            <code>\"FeaturizationMethodParameters\": {\"aggregation\": \"avg\", \"backfill\": \"nan\"}</code>
         </p>
         <p>
            <code>} ]</code>
         </p>
         <p>
            <code>}</code>
         </p>")
type featurization = {
  @ocaml.doc("<p>An array of one <code>FeaturizationMethod</code> object that specifies the feature
      transformation method.</p>")
  @as("FeaturizationPipeline")
  featurizationPipeline: option<featurizationPipeline>,
  @ocaml.doc("<p>The name of the schema attribute that specifies the data field to be featurized. Amazon Forecast supports the target field of 
      the <code>TARGET_TIME_SERIES</code> and the <code>RELATED_TIME_SERIES</code> datasets. For example, for the <code>RETAIL</code> domain, the target is
      <code>demand</code>, and for the <code>CUSTOM</code> domain, the target is
      <code>target_value</code>.
      For more information, see <a>howitworks-missing-values</a>.</p>")
  @as("AttributeName")
  attributeName: name,
}
type datasetImportJobs = array<datasetImportJobSummary>
type testWindows = array<windowSummary>
@ocaml.doc("<p>Contains details on the backtests performed to evaluate the accuracy of the predictor. The
      tests are returned in descending order of accuracy, with the most accurate backtest appearing
      first. You specify the number of backtests to perform when you call the  operation.</p>")
type predictorExecutionDetails = {
  @ocaml.doc("<p>An array of the backtests performed to evaluate the accuracy of the predictor against a
      particular algorithm. The <code>NumberOfBacktestWindows</code> from the  object determines the number of windows in the
      array.</p>")
  @as("PredictorExecutions")
  predictorExecutions: option<predictorExecutions>,
}
@ocaml.doc("<p>Configuration information for a hyperparameter tuning job. You specify this object in
      the <a>CreatePredictor</a> request.</p>
         <p>A <i>hyperparameter</i> is a parameter that governs the model training process. You set
      hyperparameters before training starts, unlike model parameters, which are determined during
      training. The values of the hyperparameters effect which values are chosen for the model parameters.</p>
         <p>In a <i>hyperparameter tuning job</i>, Amazon Forecast chooses the set of hyperparameter
      values that optimize a specified metric.  Forecast accomplishes this by running many training jobs
      over a range of hyperparameter values. The optimum set of values depends on the
      algorithm, the training data, and the specified metric objective.</p>")
type hyperParameterTuningJobConfig = {
  @ocaml.doc("<p>Specifies the ranges of valid values for the hyperparameters.</p>")
  @as("ParameterRanges")
  parameterRanges: option<parameterRanges>,
}
type featurizations = array<featurization>
@ocaml.doc("<p>In a <a>CreatePredictor</a> operation, the specified algorithm
      trains a model using the specified dataset group. You can optionally tell the operation
      to modify data fields prior to training a model. These modifications are referred to as
      <i>featurization</i>.</p>
         <p>You define featurization using the <code>FeaturizationConfig</code> object.
      You specify an array of transformations, one for each field that you want to
      featurize. You then include the <code>FeaturizationConfig</code> object in your
      <code>CreatePredictor</code> request. Amazon Forecast applies the featurization to the
      <code>TARGET_TIME_SERIES</code> and <code>RELATED_TIME_SERIES</code> datasets before model training.</p>
         <p>You can create multiple featurization configurations. For example, you
      might call the <code>CreatePredictor</code> operation twice by specifying different
      featurization configurations.</p>")
type featurizationConfig = {
  @ocaml.doc(
    "<p>An array of featurization (transformation) information for the fields of a dataset.</p>"
  )
  @as("Featurizations")
  featurizations: option<featurizations>,
  @ocaml.doc("<p>An array of dimension (field) names that specify how to group the generated forecast.</p>
         <p>For example, suppose that you are generating a forecast for item sales across all of
      your stores, and your dataset contains a <code>store_id</code> field. If you want the sales
      forecast for each item by store, you would specify <code>store_id</code> as the dimension.</p>
         <p>All forecast dimensions specified in the <code>TARGET_TIME_SERIES</code> dataset don't
      need to be specified in the <code>CreatePredictor</code> request.
      All forecast dimensions specified in the <code>RELATED_TIME_SERIES</code> dataset must
      be specified in the <code>CreatePredictor</code> request.</p>")
  @as("ForecastDimensions")
  forecastDimensions: option<forecastDimensions>,
  @ocaml.doc("<p>The frequency of predictions in a forecast.</p>
         <p>Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour), 30min (30 minutes),
      15min (15 minutes), 10min (10 minutes), 5min (5 minutes), and 1min (1 minute).
      For example, \"Y\" indicates every year and \"5min\" indicates every five minutes.</p>
         <p>The frequency must be greater than or equal to the TARGET_TIME_SERIES dataset
      frequency.</p>
         <p>When a RELATED_TIME_SERIES dataset is provided, the frequency must be equal to the
      RELATED_TIME_SERIES dataset frequency.</p>")
  @as("ForecastFrequency")
  forecastFrequency: frequency,
}
@ocaml.doc("<p>The results of evaluating an algorithm. Returned as part of the
      <a>GetAccuracyMetrics</a> response.</p>")
type evaluationResult = {
  @ocaml.doc("<p>The array of test windows used for evaluating the algorithm. The
      <code>NumberOfBacktestWindows</code> from the <a>EvaluationParameters</a>
      object determines the number of windows in the array.</p>")
  @as("TestWindows")
  testWindows: option<testWindows>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the algorithm that was evaluated.</p>")
  @as("AlgorithmArn")
  algorithmArn: option<arn>,
}
type predictorEvaluationResults = array<evaluationResult>
@ocaml.doc("<p>Provides APIs for creating and managing Amazon Forecast resources.</p>")
module StopResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the resource to stop. The supported ARNs
         are <code>DatasetImportJobArn</code>, <code>PredictorArn</code>,
            <code>PredictorBacktestExportJobArn</code>, <code>ForecastArn</code>, and
            <code>ForecastExportJobArn</code>. </p>")
    @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-forecast") @new external new: request => t = "StopResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResourceTree = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the parent resource to delete. All child resources
            of the parent resource will also be deleted.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-forecast") @new external new: request => t = "DeleteResourceTreeCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePredictorBacktestExportJob = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the predictor backtest export job to delete.</p>"
    )
    @as("PredictorBacktestExportJobArn")
    predictorBacktestExportJobArn: arn,
  }

  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "DeletePredictorBacktestExportJobCommand"
  let make = (~predictorBacktestExportJobArn, ()) =>
    new({predictorBacktestExportJobArn: predictorBacktestExportJobArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePredictor = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the predictor to delete.</p>")
    @as("PredictorArn")
    predictorArn: arn,
  }

  @module("@aws-sdk/client-forecast") @new external new: request => t = "DeletePredictorCommand"
  let make = (~predictorArn, ()) => new({predictorArn: predictorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteForecastExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the forecast export job to delete.</p>")
    @as("ForecastExportJobArn")
    forecastExportJobArn: arn,
  }

  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "DeleteForecastExportJobCommand"
  let make = (~forecastExportJobArn, ()) => new({forecastExportJobArn: forecastExportJobArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteForecast = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the forecast to delete.</p>")
    @as("ForecastArn")
    forecastArn: arn,
  }

  @module("@aws-sdk/client-forecast") @new external new: request => t = "DeleteForecastCommand"
  let make = (~forecastArn, ()) => new({forecastArn: forecastArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDatasetImportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset import job to delete.</p>")
    @as("DatasetImportJobArn")
    datasetImportJobArn: arn,
  }

  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "DeleteDatasetImportJobCommand"
  let make = (~datasetImportJobArn, ()) => new({datasetImportJobArn: datasetImportJobArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDatasetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group to delete.</p>")
    @as("DatasetGroupArn")
    datasetGroupArn: arn,
  }

  @module("@aws-sdk/client-forecast") @new external new: request => t = "DeleteDatasetGroupCommand"
  let make = (~datasetGroupArn, ()) => new({datasetGroupArn: datasetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataset = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset to delete.</p>") @as("DatasetArn")
    datasetArn: arn,
  }

  @module("@aws-sdk/client-forecast") @new external new: request => t = "DeleteDatasetCommand"
  let make = (~datasetArn, ()) => new({datasetArn: datasetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDatasetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>An array of the Amazon Resource Names (ARNs) of the datasets to add to the dataset
      group.</p>")
    @as("DatasetArns")
    datasetArns: arnList,
    @ocaml.doc("<p>The ARN of the dataset group.</p>") @as("DatasetGroupArn") datasetGroupArn: arn,
  }

  @module("@aws-sdk/client-forecast") @new external new: request => t = "UpdateDatasetGroupCommand"
  let make = (~datasetArns, ~datasetGroupArn, ()) =>
    new({datasetArns: datasetArns, datasetGroupArn: datasetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags to be removed.</p>") @as("TagKeys") tagKeys: tagKeys,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are Forecast dataset groups, datasets, dataset import jobs, predictors, forecasts, and forecast exports.</p>"
    )
    @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-forecast") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeForecast = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the forecast.</p>") @as("ForecastArn")
    forecastArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
         <ul>
            <li>
               <p>
                  <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPED</code> - When the job stopped.</p>
            </li>
            <li>
               <p>
                  <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
          failed.</p>
            </li>
         </ul>")
    @as("LastModificationTime")
    lastModificationTime: option<timestamp_>,
    @ocaml.doc("<p>When the forecast creation task was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>If an error occurred, an informational message about the error.</p>")
    @as("Message")
    message: option<errorMessage>,
    @ocaml.doc("<p>The status of the forecast. States include:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
          <code>CREATE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
          <code>DELETE_FAILED</code>
               </p>
            </li>
         </ul>
         <note>
            <p>The <code>Status</code> of the forecast must be <code>ACTIVE</code> before you can query
        or export the forecast.</p>
         </note>")
    @as("Status")
    status: option<string_>,
    @ocaml.doc("<p>The estimated time remaining in minutes for the forecast job to complete.</p>")
    @as("EstimatedTimeRemainingInMinutes")
    estimatedTimeRemainingInMinutes: option<long>,
    @ocaml.doc(
      "<p>The ARN of the dataset group that provided the data used to train the predictor.</p>"
    )
    @as("DatasetGroupArn")
    datasetGroupArn: option<arn>,
    @ocaml.doc("<p>The ARN of the predictor used to generate the forecast.</p>") @as("PredictorArn")
    predictorArn: option<arn>,
    @ocaml.doc("<p>The quantiles at which probabilistic forecasts were generated.</p>")
    @as("ForecastTypes")
    forecastTypes: option<forecastTypes>,
    @ocaml.doc("<p>The name of the forecast.</p>") @as("ForecastName") forecastName: option<name>,
    @ocaml.doc("<p>The forecast ARN as specified in the request.</p>") @as("ForecastArn")
    forecastArn: option<arn>,
  }
  @module("@aws-sdk/client-forecast") @new external new: request => t = "DescribeForecastCommand"
  let make = (~forecastArn, ()) => new({forecastArn: forecastArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDatasetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group.</p>") @as("DatasetGroupArn")
    datasetGroupArn: arn,
  }
  type response = {
    @ocaml.doc("<p>When the dataset group was created or last updated from a call to the <a>UpdateDatasetGroup</a> operation. While the dataset group is being updated,
        <code>LastModificationTime</code> is the current time of the
        <code>DescribeDatasetGroup</code> call.</p>")
    @as("LastModificationTime")
    lastModificationTime: option<timestamp_>,
    @ocaml.doc("<p>When the dataset group was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The status of the dataset group. States include:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
            <code>CREATE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
            <code>DELETE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UPDATE_PENDING</code>, <code>UPDATE_IN_PROGRESS</code>,
            <code>UPDATE_FAILED</code>
               </p>
            </li>
         </ul>
         <p>The <code>UPDATE</code> states apply when you call the <a>UpdateDatasetGroup</a> operation.</p>
         <note>
            <p>The <code>Status</code> of the dataset group must be <code>ACTIVE</code> before you can
        use the dataset group to create a predictor.</p>
         </note>")
    @as("Status")
    status: option<status>,
    @ocaml.doc("<p>The domain associated with the dataset group.</p>") @as("Domain")
    domain: option<domain>,
    @ocaml.doc("<p>An array of Amazon Resource Names (ARNs) of the datasets contained in the dataset
      group.</p>")
    @as("DatasetArns")
    datasetArns: option<arnList>,
    @ocaml.doc("<p>The ARN of the dataset group.</p>") @as("DatasetGroupArn")
    datasetGroupArn: option<arn>,
    @ocaml.doc("<p>The name of the dataset group.</p>") @as("DatasetGroupName")
    datasetGroupName: option<name>,
  }
  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "DescribeDatasetGroupCommand"
  let make = (~datasetGroupArn, ()) => new({datasetGroupArn: datasetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
         <p>The following basic restrictions apply to tags:</p>
         <ul>
            <li>
               <p>Maximum number of tags per resource - 50.</p>
            </li>
            <li>
               <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p>
            </li>
            <li>
               <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: tags,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are Forecast dataset groups, datasets, dataset import jobs, predictors, forecasts, and forecast export jobs.</p>"
    )
    @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-forecast") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are Forecast dataset groups, datasets, dataset import jobs, predictors, forecasts, and forecast export jobs.</p>"
    )
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {@ocaml.doc("<p>The tags for the resource.</p>") @as("Tags") tags: option<tags>}
  @module("@aws-sdk/client-forecast") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPredictors = {
  type t
  type request = {
    @ocaml.doc("<p>An array of filters. For each filter, you provide a condition and a match statement. The
      condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
      or exclude the predictors that match the statement from the list, respectively. The match
      statement consists of a key and a value.</p>
         <p>
            <b>Filter properties</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
            <code>IS_NOT</code>. To include the predictors that match the statement, specify
            <code>IS</code>. To exclude matching predictors, specify <code>IS_NOT</code>.</p>
            </li>
            <li>
               <p>
                  <code>Key</code> - The name of the parameter to filter on. Valid values are
            <code>DatasetGroupArn</code> and <code>Status</code>.</p>
            </li>
            <li>
               <p>
                  <code>Value</code> - The value to match.</p>
            </li>
         </ul>
         <p>For example, to list all predictors whose status is ACTIVE, you would specify:</p>
         <p>
            <code>\"Filters\": [ { \"Condition\": \"IS\", \"Key\": \"Status\", \"Value\": \"ACTIVE\" }
      ]</code>
         </p>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>The number of items to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the result of the previous request was truncated, the response includes a
        <code>NextToken</code>. To retrieve the next set of results, use the token in the next
      request. Tokens expire after 24 hours.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
      results, use the token in the next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects that summarize each predictor's properties.</p>")
    @as("Predictors")
    predictors: option<predictors>,
  }
  @module("@aws-sdk/client-forecast") @new external new: request => t = "ListPredictorsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({filters: filters, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListForecasts = {
  type t
  type request = {
    @ocaml.doc("<p>An array of filters. For each filter, you provide a condition and a match statement. The
      condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
      or exclude the forecasts that match the statement from the list, respectively. The match
      statement consists of a key and a value.</p>
         <p>
            <b>Filter properties</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
            <code>IS_NOT</code>. To include the forecasts that match the statement, specify
            <code>IS</code>. To exclude matching forecasts, specify <code>IS_NOT</code>.</p>
            </li>
            <li>
               <p>
                  <code>Key</code> - The name of the parameter to filter on. Valid values are
            <code>DatasetGroupArn</code>, <code>PredictorArn</code>, and <code>Status</code>.</p>
            </li>
            <li>
               <p>
                  <code>Value</code> - The value to match.</p>
            </li>
         </ul>
         <p>For example, to list all forecasts whose status is not ACTIVE, you would specify:</p>
         <p>
            <code>\"Filters\": [ { \"Condition\": \"IS_NOT\", \"Key\": \"Status\", \"Value\": \"ACTIVE\" }
      ]</code>
         </p>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>The number of items to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the result of the previous request was truncated, the response includes a
        <code>NextToken</code>. To retrieve the next set of results, use the token in the next
      request. Tokens expire after 24 hours.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set
      of results, use the token in the next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects that summarize each forecast's properties.</p>")
    @as("Forecasts")
    forecasts: option<forecasts>,
  }
  @module("@aws-sdk/client-forecast") @new external new: request => t = "ListForecastsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({filters: filters, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasets = {
  type t
  type request = {
    @ocaml.doc("<p>The number of items to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the result of the previous request was truncated, the response includes a
        <code>NextToken</code>. To retrieve the next set of results, use the token in the next
      request. Tokens expire after 24 hours.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
      results, use the token in the next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects that summarize each dataset's properties.</p>")
    @as("Datasets")
    datasets: option<datasets>,
  }
  @module("@aws-sdk/client-forecast") @new external new: request => t = "ListDatasetsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasetGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The number of items to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the result of the previous request was truncated, the response includes a
        <code>NextToken</code>. To retrieve the next set of results, use the token in the next
      request. Tokens expire after 24 hours.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
      results, use the token in the next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects that summarize each dataset group's properties.</p>")
    @as("DatasetGroups")
    datasetGroups: option<datasetGroups>,
  }
  @module("@aws-sdk/client-forecast") @new external new: request => t = "ListDatasetGroupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePredictorBacktestExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the predictor backtest export job.</p>")
    @as("PredictorBacktestExportJobArn")
    predictorBacktestExportJobArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
        <ul>
            <li>
                <p>
                  <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
            </li>
            <li>
                <p>
                  <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
            </li>
            <li>
                <p>
                  <code>CREATE_STOPPING</code> - The current timestamp.</p>
            </li>
            <li>
                <p>
                  <code>CREATE_STOPPED</code> - When the job stopped.</p>
            </li>
            <li>
                <p>
                  <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
                    failed.</p>
            </li>
         </ul>")
    @as("LastModificationTime")
    lastModificationTime: option<timestamp_>,
    @ocaml.doc("<p>When the predictor backtest export job was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The status of the predictor backtest export job. States include: </p>
        <ul>
            <li>
                <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
                <p>
                  <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
                    <code>CREATE_FAILED</code>
               </p>
            </li>
            <li>
                <p>
                    <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
                </p>
            </li>
            <li>
                <p>
                  <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
                    <code>DELETE_FAILED</code>
               </p>
            </li>
         </ul>")
    @as("Status")
    status: option<status>,
    @ocaml.doc(
      "<p>Information about any errors that may have occurred during the backtest export.</p>"
    )
    @as("Message")
    message: option<message>,
    @as("Destination") destination: option<dataDestination>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the predictor.</p>") @as("PredictorArn")
    predictorArn: option<arn>,
    @ocaml.doc("<p>The name of the predictor backtest export job.</p>")
    @as("PredictorBacktestExportJobName")
    predictorBacktestExportJobName: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the predictor backtest export job.</p>")
    @as("PredictorBacktestExportJobArn")
    predictorBacktestExportJobArn: option<arn>,
  }
  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "DescribePredictorBacktestExportJobCommand"
  let make = (~predictorBacktestExportJobArn, ()) =>
    new({predictorBacktestExportJobArn: predictorBacktestExportJobArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeForecastExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the forecast export job.</p>")
    @as("ForecastExportJobArn")
    forecastExportJobArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
         <ul>
            <li>
               <p>
                  <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPED</code> - When the job stopped.</p>
            </li>
            <li>
               <p>
                  <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
          failed.</p>
            </li>
         </ul>")
    @as("LastModificationTime")
    lastModificationTime: option<timestamp_>,
    @ocaml.doc("<p>When the forecast export job was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The status of the forecast export job. States include:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
          <code>CREATE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
          <code>DELETE_FAILED</code>
               </p>
            </li>
         </ul>
         <note>
            <p>The <code>Status</code> of the forecast export job must be <code>ACTIVE</code> before
        you can access the forecast in your S3 bucket.</p>
         </note>")
    @as("Status")
    status: option<status>,
    @ocaml.doc("<p>If an error occurred, an informational message about the error.</p>")
    @as("Message")
    message: option<message>,
    @ocaml.doc(
      "<p>The path to the Amazon Simple Storage Service (Amazon S3) bucket where the forecast is exported.</p>"
    )
    @as("Destination")
    destination: option<dataDestination>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the exported forecast.</p>") @as("ForecastArn")
    forecastArn: option<arn>,
    @ocaml.doc("<p>The name of the forecast export job.</p>") @as("ForecastExportJobName")
    forecastExportJobName: option<name>,
    @ocaml.doc("<p>The ARN of the forecast export job.</p>") @as("ForecastExportJobArn")
    forecastExportJobArn: option<arn>,
  }
  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "DescribeForecastExportJobCommand"
  let make = (~forecastExportJobArn, ()) => new({forecastExportJobArn: forecastExportJobArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDatasetImportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset import job.</p>")
    @as("DatasetImportJobArn")
    datasetImportJobArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The last time the resource was modified. The timestamp depends on the status of the
      job:</p>
         <ul>
            <li>
               <p>
                  <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPED</code> - When the job stopped.</p>
            </li>
            <li>
               <p>
                  <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
          failed.</p>
            </li>
         </ul>")
    @as("LastModificationTime")
    lastModificationTime: option<timestamp_>,
    @ocaml.doc("<p>When the dataset import job was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>If an error occurred, an informational message about the error.</p>")
    @as("Message")
    message: option<message>,
    @ocaml.doc("<p>The status of the dataset import job. States include:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
            <code>CREATE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
            <code>DELETE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
               </p>
            </li>
         </ul>")
    @as("Status")
    status: option<status>,
    @ocaml.doc(
      "<p>The size of the dataset in gigabytes (GB) after the import job has finished.</p>"
    )
    @as("DataSize")
    dataSize: option<double>,
    @ocaml.doc("<p>Statistical information about each field in the input data.</p>")
    @as("FieldStatistics")
    fieldStatistics: option<fieldStatistics>,
    @ocaml.doc(
      "<p>The estimated time remaining in minutes for the dataset import job to complete.</p>"
    )
    @as("EstimatedTimeRemainingInMinutes")
    estimatedTimeRemainingInMinutes: option<long>,
    @ocaml.doc("<p>The location of the training data to import and an AWS Identity and Access Management (IAM) role that Amazon Forecast
      can assume to access the data.</p>
         <p>If encryption is used, <code>DataSource</code> includes an AWS Key Management Service (KMS) key.</p>")
    @as("DataSource")
    dataSource: option<dataSource>,
    @ocaml.doc("<p>The format of the geolocation attribute. Valid Values:<code>\"LAT_LONG\"</code> and
                <code>\"CC_POSTALCODE\"</code>.</p>")
    @as("GeolocationFormat")
    geolocationFormat: option<geolocationFormat>,
    @ocaml.doc("<p>Whether <code>TimeZone</code> is automatically derived from the geolocation
            attribute.</p>")
    @as("UseGeolocationForTimeZone")
    useGeolocationForTimeZone: option<useGeolocationForTimeZone>,
    @ocaml.doc("<p>The single time zone applied to every item in the dataset</p>") @as("TimeZone")
    timeZone: option<timeZone>,
    @ocaml.doc("<p>The format of timestamps in the dataset. The format that you specify depends on the
        <code>DataFrequency</code> specified when the dataset was created. The following formats are
      supported</p>
         <ul>
            <li>
               <p>\"yyyy-MM-dd\"</p>
               <p>For the following data frequencies: Y, M, W, and D</p>
            </li>
            <li>
               <p>\"yyyy-MM-dd HH:mm:ss\"</p>
               <p>For the following data frequencies: H, 30min, 15min, and 1min; and optionally, for: Y,
          M, W, and D</p>
            </li>
         </ul>")
    @as("TimestampFormat")
    timestampFormat: option<timestampFormat>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset that the training data was imported
      to.</p>")
    @as("DatasetArn")
    datasetArn: option<arn>,
    @ocaml.doc("<p>The ARN of the dataset import job.</p>") @as("DatasetImportJobArn")
    datasetImportJobArn: option<arn>,
    @ocaml.doc("<p>The name of the dataset import job.</p>") @as("DatasetImportJobName")
    datasetImportJobName: option<name>,
  }
  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "DescribeDatasetImportJobCommand"
  let make = (~datasetImportJobArn, ()) => new({datasetImportJobArn: datasetImportJobArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePredictorBacktestExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>Optional metadata to help you categorize and organize your backtests. Each tag consists
            of a key and an optional value, both of which you define. Tag keys and values are case
            sensitive.</p>
        <p>The following restrictions apply to tags:</p>
        <ul>
            <li>
                <p>For each resource, each tag key must be unique and each tag key must have one
                    value.</p>
            </li>
            <li>
                <p>Maximum number of tags per resource: 50.</p>
            </li>
            <li>
                <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
            </li>
            <li>
                <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
            </li>
            <li>
                <p>Accepted characters: all letters and numbers, spaces representable in UTF-8, and +
                    - = . _ : / @. If your tagging schema is used across other services and resources,
                    the character restrictions of those services also apply. </p>
            </li>
            <li>
                <p>Key prefixes cannot include any upper or lowercase combination of
                    <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a tag
                    value has <code>aws</code> as its prefix but the key does not, Forecast considers it
                    to be a user tag and will count against the limit of 50 tags. Tags with only the key
                    prefix of <code>aws</code> do not count against your tags per resource limit. You
                    cannot edit or delete tag keys with this prefix.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tags>,
    @as("Destination") destination: dataDestination,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the predictor that you want to export.</p>")
    @as("PredictorArn")
    predictorArn: arn,
    @ocaml.doc("<p>The name for the backtest export job.</p>") @as("PredictorBacktestExportJobName")
    predictorBacktestExportJobName: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the predictor backtest export job that you want to
            export.</p>")
    @as("PredictorBacktestExportJobArn")
    predictorBacktestExportJobArn: option<arn>,
  }
  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "CreatePredictorBacktestExportJobCommand"
  let make = (~destination, ~predictorArn, ~predictorBacktestExportJobName, ~tags=?, ()) =>
    new({
      tags: tags,
      destination: destination,
      predictorArn: predictorArn,
      predictorBacktestExportJobName: predictorBacktestExportJobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateForecastExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The optional metadata that you apply to the forecast export job to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p>
         <p>The following basic restrictions apply to tags:</p>
         <ul>
            <li>
               <p>Maximum number of tags per resource - 50.</p>
            </li>
            <li>
               <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p>
            </li>
            <li>
               <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The location where you want to save the forecast and an AWS Identity and Access Management (IAM) role that
      Amazon Forecast can assume to access the location. The forecast must be exported to an Amazon S3
      bucket.</p>
         <p>If encryption is used, <code>Destination</code> must include an AWS Key Management Service (KMS) key. The
      IAM role must allow Amazon Forecast permission to access the key.</p>")
    @as("Destination")
    destination: dataDestination,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the forecast that you want to export.</p>")
    @as("ForecastArn")
    forecastArn: arn,
    @ocaml.doc("<p>The name for the forecast export job.</p>") @as("ForecastExportJobName")
    forecastExportJobName: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the export job.</p>")
    @as("ForecastExportJobArn")
    forecastExportJobArn: option<arn>,
  }
  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "CreateForecastExportJobCommand"
  let make = (~destination, ~forecastArn, ~forecastExportJobName, ~tags=?, ()) =>
    new({
      tags: tags,
      destination: destination,
      forecastArn: forecastArn,
      forecastExportJobName: forecastExportJobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateForecast = {
  type t
  type request = {
    @ocaml.doc("<p>The optional metadata that you apply to the forecast to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p>
         <p>The following basic restrictions apply to tags:</p>
         <ul>
            <li>
               <p>Maximum number of tags per resource - 50.</p>
            </li>
            <li>
               <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p>
            </li>
            <li>
               <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The quantiles at which probabilistic forecasts are generated. <b>You
        can currently specify up to 5 quantiles per forecast</b>. Accepted values include
        <code>0.01 to 0.99</code> (increments of .01 only) and <code>mean</code>. The mean forecast
      is different from the median (0.50) when the distribution is not symmetric (for example, Beta
      and Negative Binomial). The default value is <code>[\"0.1\", \"0.5\", \"0.9\"]</code>.</p>")
    @as("ForecastTypes")
    forecastTypes: option<forecastTypes>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the predictor to use to generate the forecast.</p>"
    )
    @as("PredictorArn")
    predictorArn: arn,
    @ocaml.doc("<p>A name for the forecast.</p>") @as("ForecastName") forecastName: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the forecast.</p>") @as("ForecastArn")
    forecastArn: option<arn>,
  }
  @module("@aws-sdk/client-forecast") @new external new: request => t = "CreateForecastCommand"
  let make = (~predictorArn, ~forecastName, ~tags=?, ~forecastTypes=?, ()) =>
    new({
      tags: tags,
      forecastTypes: forecastTypes,
      predictorArn: predictorArn,
      forecastName: forecastName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDatasetImportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The optional metadata that you apply to the dataset import job to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p>
         <p>The following basic restrictions apply to tags:</p>
         <ul>
            <li>
               <p>Maximum number of tags per resource - 50.</p>
            </li>
            <li>
               <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p>
            </li>
            <li>
               <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The format of the geolocation attribute. The geolocation attribute can be formatted in
            one of two ways:</p>
        <ul>
            <li>
                <p>
                  <code>LAT_LONG</code> - the latitude and longitude in decimal format (Example: 47.61_-122.33).</p>
            </li>
            <li>
                <p>
                  <code>CC_POSTALCODE</code> (US Only) - the country code (US), followed by the 5-digit ZIP code (Example: US_98121).</p>
            </li>
         </ul>")
    @as("GeolocationFormat")
    geolocationFormat: option<geolocationFormat>,
    @ocaml.doc("<p>Automatically derive time zone information from the geolocation attribute. This option
            is ideal for datasets that contain timestamps in multiple time zones and those
            timestamps are expressed in local time.</p>")
    @as("UseGeolocationForTimeZone")
    useGeolocationForTimeZone: option<useGeolocationForTimeZone>,
    @ocaml.doc("<p>A single time zone for every item in your dataset. This option is ideal for datasets
            with all timestamps within a single time zone, or if all timestamps are normalized to a
            single time zone. </p>
        <p>Refer to the <a href=\"http://joda-time.sourceforge.net/timezones.html\">Joda-Time
                API</a> for a complete list of valid time zone names.</p>")
    @as("TimeZone")
    timeZone: option<timeZone>,
    @ocaml.doc("<p>The format of timestamps in the dataset. The format that you specify depends on the
        <code>DataFrequency</code> specified when the dataset was created. The following formats are
      supported</p>
         <ul>
            <li>
               <p>\"yyyy-MM-dd\"</p>
               <p>For the following data frequencies: Y, M, W, and D</p>
            </li>
            <li>
               <p>\"yyyy-MM-dd HH:mm:ss\"</p>
               <p>For the following data frequencies: H, 30min, 15min, and 1min; and optionally, for: Y,
          M, W, and D</p>
            </li>
         </ul>
         <p>If the format isn't specified, Amazon Forecast expects the format to be \"yyyy-MM-dd
      HH:mm:ss\".</p>")
    @as("TimestampFormat")
    timestampFormat: option<timestampFormat>,
    @ocaml.doc("<p>The location of the training data to import and an AWS Identity and Access Management (IAM) role that Amazon Forecast
      can assume to access the data. The training data must be stored in an Amazon S3 bucket.</p>
         <p>If encryption is used, <code>DataSource</code> must include an AWS Key Management Service (KMS) key and the
      IAM role must allow Amazon Forecast permission to access the key. The KMS key and IAM role must
      match those specified in the <code>EncryptionConfig</code> parameter of the <a>CreateDataset</a> operation.</p>")
    @as("DataSource")
    dataSource: dataSource,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Forecast dataset that you want to import data
      to.</p>")
    @as("DatasetArn")
    datasetArn: arn,
    @ocaml.doc("<p>The name for the dataset import job. We recommend including the current timestamp in the
      name, for example, <code>20190721DatasetImport</code>. This can help you avoid getting a
        <code>ResourceAlreadyExistsException</code> exception.</p>")
    @as("DatasetImportJobName")
    datasetImportJobName: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset import job.</p>")
    @as("DatasetImportJobArn")
    datasetImportJobArn: option<arn>,
  }
  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "CreateDatasetImportJobCommand"
  let make = (
    ~dataSource,
    ~datasetArn,
    ~datasetImportJobName,
    ~tags=?,
    ~geolocationFormat=?,
    ~useGeolocationForTimeZone=?,
    ~timeZone=?,
    ~timestampFormat=?,
    (),
  ) =>
    new({
      tags: tags,
      geolocationFormat: geolocationFormat,
      useGeolocationForTimeZone: useGeolocationForTimeZone,
      timeZone: timeZone,
      timestampFormat: timestampFormat,
      dataSource: dataSource,
      datasetArn: datasetArn,
      datasetImportJobName: datasetImportJobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDatasetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The optional metadata that you apply to the dataset group to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p>
         <p>The following basic restrictions apply to tags:</p>
         <ul>
            <li>
               <p>Maximum number of tags per resource - 50.</p>
            </li>
            <li>
               <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p>
            </li>
            <li>
               <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>An array of Amazon Resource Names (ARNs) of the datasets that you want to include in the
      dataset group.</p>")
    @as("DatasetArns")
    datasetArns: option<arnList>,
    @ocaml.doc("<p>The domain associated with the dataset group. When you add a dataset to a dataset group,
      this value and the value specified for the <code>Domain</code> parameter of the <a>CreateDataset</a> operation must match.</p>
         <p>The <code>Domain</code> and <code>DatasetType</code> that you choose determine the fields
      that must be present in training data that you import to a dataset. For example, if you choose
      the <code>RETAIL</code> domain and <code>TARGET_TIME_SERIES</code> as the
        <code>DatasetType</code>, Amazon Forecast requires that <code>item_id</code>,
        <code>timestamp</code>, and <code>demand</code> fields are present in your data. For more
      information, see <a>howitworks-datasets-groups</a>.</p>")
    @as("Domain")
    domain: domain,
    @ocaml.doc("<p>A name for the dataset group.</p>") @as("DatasetGroupName")
    datasetGroupName: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group.</p>") @as("DatasetGroupArn")
    datasetGroupArn: option<arn>,
  }
  @module("@aws-sdk/client-forecast") @new external new: request => t = "CreateDatasetGroupCommand"
  let make = (~domain, ~datasetGroupName, ~tags=?, ~datasetArns=?, ()) =>
    new({tags: tags, datasetArns: datasetArns, domain: domain, datasetGroupName: datasetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataset = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset.</p>") @as("DatasetArn")
    datasetArn: arn,
  }
  type response = {
    @ocaml.doc("<p>When you create a dataset, <code>LastModificationTime</code> is the same as
        <code>CreationTime</code>. While data is being imported to the dataset,
        <code>LastModificationTime</code> is the current time of the <code>DescribeDataset</code>
      call. After a <a>CreateDatasetImportJob</a> operation has finished,
        <code>LastModificationTime</code> is when the import job completed or failed.</p>")
    @as("LastModificationTime")
    lastModificationTime: option<timestamp_>,
    @ocaml.doc("<p>When the dataset was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The status of the dataset. States include:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
            <code>CREATE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
            <code>DELETE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UPDATE_PENDING</code>, <code>UPDATE_IN_PROGRESS</code>,
            <code>UPDATE_FAILED</code>
               </p>
            </li>
         </ul>
         <p>The <code>UPDATE</code> states apply while data is imported to the dataset from a call to
      the <a>CreateDatasetImportJob</a> operation and reflect the status of the dataset
      import job. For example, when the import job status is <code>CREATE_IN_PROGRESS</code>, the
      status of the dataset is <code>UPDATE_IN_PROGRESS</code>.</p>
         <note>
            <p>The <code>Status</code> of the dataset must be <code>ACTIVE</code> before you can import
        training data.</p>
         </note>")
    @as("Status")
    status: option<status>,
    @ocaml.doc("<p>The AWS Key Management Service (KMS) key and the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access
      the key.</p>")
    @as("EncryptionConfig")
    encryptionConfig: option<encryptionConfig>,
    @ocaml.doc("<p>An array of <code>SchemaAttribute</code> objects that specify the dataset fields. Each
        <code>SchemaAttribute</code> specifies the name and data type of a field.</p>")
    @as("Schema")
    schema: option<schema>,
    @ocaml.doc("<p>The frequency of data collection.</p>
         <p>Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour), 30min (30 minutes),
      15min (15 minutes), 10min (10 minutes), 5min (5 minutes), and 1min (1 minute). For example,
      \"M\" indicates every month and \"30min\" indicates every 30 minutes.</p>")
    @as("DataFrequency")
    dataFrequency: option<frequency>,
    @ocaml.doc("<p>The dataset type.</p>") @as("DatasetType") datasetType: option<datasetType>,
    @ocaml.doc("<p>The domain associated with the dataset.</p>") @as("Domain")
    domain: option<domain>,
    @ocaml.doc("<p>The name of the dataset.</p>") @as("DatasetName") datasetName: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset.</p>") @as("DatasetArn")
    datasetArn: option<arn>,
  }
  @module("@aws-sdk/client-forecast") @new external new: request => t = "DescribeDatasetCommand"
  let make = (~datasetArn, ()) => new({datasetArn: datasetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataset = {
  type t
  type request = {
    @ocaml.doc("<p>The optional metadata that you apply to the dataset to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p>
         <p>The following basic restrictions apply to tags:</p>
         <ul>
            <li>
               <p>Maximum number of tags per resource - 50.</p>
            </li>
            <li>
               <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p>
            </li>
            <li>
               <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>An AWS Key Management Service (KMS) key and the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access
      the key.</p>")
    @as("EncryptionConfig")
    encryptionConfig: option<encryptionConfig>,
    @ocaml.doc("<p>The schema for the dataset. The schema attributes and their order must match the fields in
      your data. The dataset <code>Domain</code> and <code>DatasetType</code> that you choose
      determine the minimum required fields in your training data. For information about the
      required fields for a specific dataset domain and type, see <a>howitworks-domains-ds-types</a>.</p>")
    @as("Schema")
    schema: schema,
    @ocaml.doc("<p>The frequency of data collection. This parameter is required for RELATED_TIME_SERIES
      datasets.</p>
         <p>Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour), 30min (30 minutes),
      15min (15 minutes), 10min (10 minutes), 5min (5 minutes), and 1min (1 minute). For example,
      \"D\" indicates every day and \"15min\" indicates every 15 minutes.</p>")
    @as("DataFrequency")
    dataFrequency: option<frequency>,
    @ocaml.doc("<p>The dataset type. Valid values depend on the chosen <code>Domain</code>.</p>")
    @as("DatasetType")
    datasetType: datasetType,
    @ocaml.doc("<p>The domain associated with the dataset. When you add a dataset to a dataset group, this
      value and the value specified for the <code>Domain</code> parameter of the <a>CreateDatasetGroup</a> operation must match.</p>
         <p>The <code>Domain</code> and <code>DatasetType</code> that you choose determine the fields
      that must be present in the training data that you import to the dataset. For example, if you
      choose the <code>RETAIL</code> domain and <code>TARGET_TIME_SERIES</code> as the
        <code>DatasetType</code>, Amazon Forecast requires <code>item_id</code>, <code>timestamp</code>,
      and <code>demand</code> fields to be present in your data. For more information, see <a>howitworks-datasets-groups</a>.</p>")
    @as("Domain")
    domain: domain,
    @ocaml.doc("<p>A name for the dataset.</p>") @as("DatasetName") datasetName: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset.</p>") @as("DatasetArn")
    datasetArn: option<arn>,
  }
  @module("@aws-sdk/client-forecast") @new external new: request => t = "CreateDatasetCommand"
  let make = (
    ~schema,
    ~datasetType,
    ~domain,
    ~datasetName,
    ~tags=?,
    ~encryptionConfig=?,
    ~dataFrequency=?,
    (),
  ) =>
    new({
      tags: tags,
      encryptionConfig: encryptionConfig,
      schema: schema,
      dataFrequency: dataFrequency,
      datasetType: datasetType,
      domain: domain,
      datasetName: datasetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPredictorBacktestExportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>An array of filters. For each filter, provide a condition and a match statement. The
                condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
                include or exclude the predictor backtest export jobs that match the statement from the
                list. The match statement consists of a key and a value.</p>
            <p>
                <b>Filter properties</b>
            </p>
            <ul>
            <li>
                    <p>
                  <code>Condition</code> - The condition to apply. Valid values are
                        <code>IS</code> and <code>IS_NOT</code>. To include the predictor backtest
                        export jobs that match the statement, specify <code>IS</code>. To exclude matching
                        predictor backtest export jobs, specify <code>IS_NOT</code>.</p>
                </li>
            <li>
                    <p>
                  <code>Key</code> - The name of the parameter to filter on. Valid values are
                        <code>PredictorArn</code> and <code>Status</code>.</p>
                </li>
            <li>
                    <p>
                  <code>Value</code> - The value to match.</p>
                </li>
         </ul>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>The number of items to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the result of the previous request was truncated, the response includes a NextToken.
            To retrieve the next set of results, use the token in the next request. Tokens expire after
            24 hours.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>Returns this token if the response is truncated. To retrieve the next
            set of results, use the token in the next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects that summarize the properties of each predictor backtest export
            job.</p>")
    @as("PredictorBacktestExportJobs")
    predictorBacktestExportJobs: option<predictorBacktestExportJobs>,
  }
  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "ListPredictorBacktestExportJobsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({filters: filters, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListForecastExportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>An array of filters. For each filter, you provide a condition and a match statement. The
      condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
      or exclude the forecast export jobs that match the statement from the list, respectively. The
      match statement consists of a key and a value.</p>
         <p>
            <b>Filter properties</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
            <code>IS_NOT</code>. To include the forecast export jobs that match the statement,
          specify <code>IS</code>. To exclude matching forecast export jobs, specify
            <code>IS_NOT</code>.</p>
            </li>
            <li>
               <p>
                  <code>Key</code> - The name of the parameter to filter on. Valid values are
            <code>ForecastArn</code> and <code>Status</code>.</p>
            </li>
            <li>
               <p>
                  <code>Value</code> - The value to match.</p>
            </li>
         </ul>
         <p>For example, to list all jobs that export a forecast named
        <i>electricityforecast</i>, specify the following filter:</p>
         <p>
            <code>\"Filters\": [ { \"Condition\": \"IS\", \"Key\": \"ForecastArn\", \"Value\":
        \"arn:aws:forecast:us-west-2:<acct-id>:forecast/electricityforecast\" } ]</code>
         </p>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>The number of items to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the result of the previous request was truncated, the response includes a
        <code>NextToken</code>. To retrieve the next set of results, use the token in the next
      request. Tokens expire after 24 hours.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
      results, use the token in the next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects that summarize each export job's properties.</p>")
    @as("ForecastExportJobs")
    forecastExportJobs: option<forecastExportJobs>,
  }
  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "ListForecastExportJobsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({filters: filters, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasetImportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>An array of filters. For each filter, you provide a condition and a match statement. The
      condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
      or exclude the datasets that match the statement from the list, respectively. The match
      statement consists of a key and a value.</p>
         <p>
            <b>Filter properties</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
            <code>IS_NOT</code>. To include the datasets that match the statement, specify
            <code>IS</code>. To exclude matching datasets, specify <code>IS_NOT</code>.</p>
            </li>
            <li>
               <p>
                  <code>Key</code> - The name of the parameter to filter on. Valid values are
            <code>DatasetArn</code> and <code>Status</code>.</p>
            </li>
            <li>
               <p>
                  <code>Value</code> - The value to match.</p>
            </li>
         </ul>
         <p>For example, to list all dataset import jobs whose status is ACTIVE, you specify the
      following filter:</p>
         <p>
            <code>\"Filters\": [ { \"Condition\": \"IS\", \"Key\": \"Status\", \"Value\": \"ACTIVE\" }
      ]</code>
         </p>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>The number of items to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the result of the previous request was truncated, the response includes a
        <code>NextToken</code>. To retrieve the next set of results, use the token in the next
      request. Tokens expire after 24 hours.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of
      results, use the token in the next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects that summarize each dataset import job's properties.</p>")
    @as("DatasetImportJobs")
    datasetImportJobs: option<datasetImportJobs>,
  }
  @module("@aws-sdk/client-forecast") @new
  external new: request => t = "ListDatasetImportJobsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({filters: filters, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePredictor = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the predictor that you want information about.</p>"
    )
    @as("PredictorArn")
    predictorArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The last time the resource was modified. The timestamp depends on the status of the job:</p>
         <ul>
            <li>
               <p>
                  <code>CREATE_PENDING</code> - The <code>CreationTime</code>.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code> - The current timestamp.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPED</code> - When the job stopped.</p>
            </li>
            <li>
               <p>
                  <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or
          failed.</p>
            </li>
         </ul>")
    @as("LastModificationTime")
    lastModificationTime: option<timestamp_>,
    @ocaml.doc("<p>When the model training task was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>If an error occurred, an informational message about the error.</p>")
    @as("Message")
    message: option<message>,
    @ocaml.doc("<p>The status of the predictor. States include:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>,
          <code>CREATE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>,
          <code>DELETE_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CREATE_STOPPING</code>, <code>CREATE_STOPPED</code>
               </p>
            </li>
         </ul>
         <note>
            <p>The <code>Status</code> of the predictor must be <code>ACTIVE</code> before you can use
        the predictor to create a forecast.</p>
         </note>")
    @as("Status")
    status: option<status>,
    @ocaml.doc(
      "<p>When <code>PerformAutoML</code> is specified, the ARN of the chosen algorithm.</p>"
    )
    @as("AutoMLAlgorithmArns")
    autoMLAlgorithmArns: option<arnList>,
    @ocaml.doc("<p>An array of the ARNs of the dataset import jobs used to import training data for the
      predictor.</p>")
    @as("DatasetImportJobArns")
    datasetImportJobArns: option<arnList>,
    @ocaml.doc(
      "<p>The estimated time remaining in minutes for the predictor training job to complete.</p>"
    )
    @as("EstimatedTimeRemainingInMinutes")
    estimatedTimeRemainingInMinutes: option<long>,
    @ocaml.doc("<p>Details on the the status and results of the backtests performed to evaluate the accuracy
      of the predictor. You specify the number of backtests to perform when you call the  operation.</p>")
    @as("PredictorExecutionDetails")
    predictorExecutionDetails: option<predictorExecutionDetails>,
    @ocaml.doc("<p>An AWS Key Management Service (KMS) key and the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access
      the key.</p>")
    @as("EncryptionConfig")
    encryptionConfig: option<encryptionConfig>,
    @ocaml.doc("<p>The featurization configuration.</p>") @as("FeaturizationConfig")
    featurizationConfig: option<featurizationConfig>,
    @ocaml.doc(
      "<p>Describes the dataset group that contains the data to use to train the predictor.</p>"
    )
    @as("InputDataConfig")
    inputDataConfig: option<inputDataConfig>,
    @ocaml.doc("<p>The hyperparameter override values for the algorithm.</p>") @as("HPOConfig")
    hpoconfig: option<hyperParameterTuningJobConfig>,
    @ocaml.doc("<p>Used to override the default evaluation parameters of the specified algorithm. Amazon Forecast
      evaluates a predictor by splitting a dataset into training data and testing data. The
      evaluation parameters define how to perform the split and the number of iterations.</p>")
    @as("EvaluationParameters")
    evaluationParameters: option<evaluationParameters>,
    @ocaml.doc("<p>The default training parameters or overrides selected during model training. When running
      AutoML or choosing HPO with CNN-QR or DeepAR+, the optimized values for the chosen
      hyperparameters are returned. For more information, see <a>aws-forecast-choosing-recipes</a>.</p>")
    @as("TrainingParameters")
    trainingParameters: option<trainingParameters>,
    @ocaml.doc("<p>Whether the predictor is set to perform hyperparameter optimization (HPO).</p>")
    @as("PerformHPO")
    performHPO: option<boolean_>,
    @ocaml.doc("<p>The AutoML strategy used to train the predictor. Unless <code>LatencyOptimized</code>
            is specified, the AutoML strategy optimizes predictor accuracy.</p>
        <p>This parameter is only valid for predictors trained using AutoML.</p>")
    @as("AutoMLOverrideStrategy")
    autoMLOverrideStrategy: option<autoMLOverrideStrategy>,
    @ocaml.doc("<p>Whether the predictor is set to perform AutoML.</p>") @as("PerformAutoML")
    performAutoML: option<boolean_>,
    @ocaml.doc("<p>The forecast types used during predictor training. Default value is <code>[\"0.1\",\"0.5\",\"0.9\"]</code>
         </p>")
    @as("ForecastTypes")
    forecastTypes: option<forecastTypes>,
    @ocaml.doc("<p>The number of time-steps of the forecast. The forecast horizon is also called the
      prediction length.</p>")
    @as("ForecastHorizon")
    forecastHorizon: option<integer_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the algorithm used for model training.</p>")
    @as("AlgorithmArn")
    algorithmArn: option<arn>,
    @ocaml.doc("<p>The name of the predictor.</p>") @as("PredictorName")
    predictorName: option<name>,
    @ocaml.doc("<p>The ARN of the predictor.</p>") @as("PredictorArn") predictorArn: option<name>,
  }
  @module("@aws-sdk/client-forecast") @new external new: request => t = "DescribePredictorCommand"
  let make = (~predictorArn, ()) => new({predictorArn: predictorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePredictor = {
  type t
  type request = {
    @ocaml.doc("<p>The optional metadata that you apply to the predictor to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p>
         <p>The following basic restrictions apply to tags:</p>
         <ul>
            <li>
               <p>Maximum number of tags per resource - 50.</p>
            </li>
            <li>
               <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p>
            </li>
            <li>
               <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
            </li>
            <li>
               <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>An AWS Key Management Service (KMS) key and the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access
      the key.</p>")
    @as("EncryptionConfig")
    encryptionConfig: option<encryptionConfig>,
    @ocaml.doc("<p>The featurization configuration.</p>") @as("FeaturizationConfig")
    featurizationConfig: featurizationConfig,
    @ocaml.doc(
      "<p>Describes the dataset group that contains the data to use to train the predictor.</p>"
    )
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
    @ocaml.doc("<p>Provides hyperparameter override values for the algorithm. If you don't provide this
      parameter, Amazon Forecast uses default values. The individual algorithms specify which
      hyperparameters support hyperparameter optimization (HPO). For more information, see <a>aws-forecast-choosing-recipes</a>.</p>
         <p>If you included the <code>HPOConfig</code> object, you must set <code>PerformHPO</code> to
      true.</p>")
    @as("HPOConfig")
    hpoconfig: option<hyperParameterTuningJobConfig>,
    @ocaml.doc("<p>Used to override the default evaluation parameters of the specified algorithm. Amazon Forecast
      evaluates a predictor by splitting a dataset into training data and testing data. The
      evaluation parameters define how to perform the split and the number of iterations.</p>")
    @as("EvaluationParameters")
    evaluationParameters: option<evaluationParameters>,
    @ocaml.doc("<p>The hyperparameters to override for model training. The hyperparameters that you can
      override are listed in the individual algorithms. For the list of supported algorithms, see
        <a>aws-forecast-choosing-recipes</a>.</p>")
    @as("TrainingParameters")
    trainingParameters: option<trainingParameters>,
    @ocaml.doc("<p>Whether to perform hyperparameter optimization (HPO). HPO finds optimal hyperparameter
      values for your training data. The process of performing HPO is known as running a
      hyperparameter tuning job.</p>
         <p>The default value is <code>false</code>. In this case, Amazon Forecast uses default
      hyperparameter values from the chosen algorithm.</p>
         <p>To override the default values, set <code>PerformHPO</code> to <code>true</code> and,
      optionally, supply the <a>HyperParameterTuningJobConfig</a> object. The tuning job
      specifies a metric to optimize, which hyperparameters participate in tuning, and the valid
      range for each tunable hyperparameter. In this case, you are required to specify an algorithm
      and <code>PerformAutoML</code> must be false.</p>
         <p>The following algorithms support HPO:</p>
         <ul>
            <li>
               <p>DeepAR+</p>
            </li>
            <li>
               <p>CNN-QR</p>
            </li>
         </ul>")
    @as("PerformHPO")
    performHPO: option<boolean_>,
    @ocaml.doc("<p>Used to overide the default AutoML strategy, which is to optimize predictor accuracy.
            To apply an AutoML strategy that minimizes training time, use
                <code>LatencyOptimized</code>.</p>
        <p>This parameter is only valid for predictors trained using AutoML.</p>")
    @as("AutoMLOverrideStrategy")
    autoMLOverrideStrategy: option<autoMLOverrideStrategy>,
    @ocaml.doc("<p>Whether to perform AutoML. When Amazon Forecast performs AutoML, it evaluates the algorithms it
      provides and chooses the best algorithm and configuration for your training dataset.</p>
         <p>The default value is <code>false</code>. In this case, you are required to specify an
      algorithm.</p>
         <p>Set <code>PerformAutoML</code> to <code>true</code> to have Amazon Forecast perform AutoML. This
      is a good option if you aren't sure which algorithm is suitable for your training data. In
      this case, <code>PerformHPO</code> must be false.</p>")
    @as("PerformAutoML")
    performAutoML: option<boolean_>,
    @ocaml.doc("<p>Specifies the forecast types used to train a predictor. You can specify up to five forecast types.
      Forecast types can be quantiles from 0.01 to 0.99, by increments of 0.01 or higher. You can also specify 
      the mean forecast with <code>mean</code>.
    </p>
         <p>The default value is <code>[\"0.10\", \"0.50\", \"0.9\"]</code>.</p>")
    @as("ForecastTypes")
    forecastTypes: option<forecastTypes>,
    @ocaml.doc("<p>Specifies the number of time-steps that the model is trained to predict. The forecast
      horizon is also called the prediction length.</p>
         <p>For example, if you configure a dataset for daily data collection (using the
        <code>DataFrequency</code> parameter of the <a>CreateDataset</a> operation) and
      set the forecast horizon to 10, the model returns predictions for 10 days.</p>
         <p>The maximum forecast horizon is the lesser of 500 time-steps or 1/3 of the
      TARGET_TIME_SERIES dataset length.</p>")
    @as("ForecastHorizon")
    forecastHorizon: integer_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the algorithm to use for model training. Required if
        <code>PerformAutoML</code> is not set to <code>true</code>.</p>
         <p class=\"title\">
            <b>Supported algorithms:</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>arn:aws:forecast:::algorithm/ARIMA</code>
               </p>
            </li>
            <li>
               <p>
                  <code>arn:aws:forecast:::algorithm/CNN-QR</code>
               </p>
            </li>
            <li>
               <p>
                  <code>arn:aws:forecast:::algorithm/Deep_AR_Plus</code>
               </p>
            </li>
            <li>
               <p>
                  <code>arn:aws:forecast:::algorithm/ETS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>arn:aws:forecast:::algorithm/NPTS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>arn:aws:forecast:::algorithm/Prophet</code>
               </p>
            </li>
         </ul>")
    @as("AlgorithmArn")
    algorithmArn: option<arn>,
    @ocaml.doc("<p>A name for the predictor.</p>") @as("PredictorName") predictorName: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the predictor.</p>") @as("PredictorArn")
    predictorArn: option<arn>,
  }
  @module("@aws-sdk/client-forecast") @new external new: request => t = "CreatePredictorCommand"
  let make = (
    ~featurizationConfig,
    ~inputDataConfig,
    ~forecastHorizon,
    ~predictorName,
    ~tags=?,
    ~encryptionConfig=?,
    ~hpoconfig=?,
    ~evaluationParameters=?,
    ~trainingParameters=?,
    ~performHPO=?,
    ~autoMLOverrideStrategy=?,
    ~performAutoML=?,
    ~forecastTypes=?,
    ~algorithmArn=?,
    (),
  ) =>
    new({
      tags: tags,
      encryptionConfig: encryptionConfig,
      featurizationConfig: featurizationConfig,
      inputDataConfig: inputDataConfig,
      hpoconfig: hpoconfig,
      evaluationParameters: evaluationParameters,
      trainingParameters: trainingParameters,
      performHPO: performHPO,
      autoMLOverrideStrategy: autoMLOverrideStrategy,
      performAutoML: performAutoML,
      forecastTypes: forecastTypes,
      forecastHorizon: forecastHorizon,
      algorithmArn: algorithmArn,
      predictorName: predictorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccuracyMetrics = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the predictor to get metrics for.</p>")
    @as("PredictorArn")
    predictorArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The AutoML strategy used to train the predictor. Unless <code>LatencyOptimized</code>
            is specified, the AutoML strategy optimizes predictor accuracy.</p>
        <p>This parameter is only valid for predictors trained using AutoML.</p>")
    @as("AutoMLOverrideStrategy")
    autoMLOverrideStrategy: option<autoMLOverrideStrategy>,
    @ocaml.doc("<p>An array of results from evaluating the predictor.</p>")
    @as("PredictorEvaluationResults")
    predictorEvaluationResults: option<predictorEvaluationResults>,
  }
  @module("@aws-sdk/client-forecast") @new external new: request => t = "GetAccuracyMetricsCommand"
  let make = (~predictorArn, ()) => new({predictorArn: predictorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
