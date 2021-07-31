type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type value = string
type useGeolocationForTimeZone = bool
type timestampFormat = string
type timestamp_ = Js.Date.t;
type timeZone = string
type tagValue = string
type tagKey = string
type string_ = string
type status = string
type scalingType = [@as("ReverseLogarithmic") #ReverseLogarithmic | @as("Logarithmic") #Logarithmic | @as("Linear") #Linear | @as("Auto") #Auto]
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
type filterConditionString = [@as("IS_NOT") #ISNOT | @as("IS") #IS]
type featurizationMethodName = [@as("filling") #Filling]
type evaluationType = [@as("COMPUTED") #COMPUTED | @as("SUMMARY") #SUMMARY]
type errorMessage = string
type double = float
type domain = [@as("METRICS") #METRICS | @as("WEB_TRAFFIC") #WEBTRAFFIC | @as("WORK_FORCE") #WORKFORCE | @as("EC2_CAPACITY") #EC2CAPACITY | @as("INVENTORY_PLANNING") #INVENTORYPLANNING | @as("CUSTOM") #CUSTOM | @as("RETAIL") #RETAIL]
type datasetType = [@as("ITEM_METADATA") #ITEMMETADATA | @as("RELATED_TIME_SERIES") #RELATEDTIMESERIES | @as("TARGET_TIME_SERIES") #TARGETTIMESERIES]
type boolean_ = bool
type autoMLOverrideStrategy = [@as("LatencyOptimized") #LatencyOptimized]
type attributeType = [@as("geolocation") #Geolocation | @as("timestamp") #Timestamp | @as("float") #Float | @as("integer") #Integer | @as("string") #String]
type arn = string
type weightedQuantileLoss = {
@as("LossValue") lossValue: option<double>,
@as("Quantile") quantile: option<double>
}
type values = array<value>
type trainingParameters = Js.Dict.t< parameterValue>
type testWindowSummary = {
@as("Message") message: option<errorMessage>,
@as("Status") status: option<status>,
@as("TestWindowEnd") testWindowEnd: option<timestamp_>,
@as("TestWindowStart") testWindowStart: option<timestamp_>
}
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type supplementaryFeature = {
@as("Value") value: value,
@as("Name") name: name
}
type statistics = {
@as("CountNanLong") countNanLong: option<long>,
@as("CountNullLong") countNullLong: option<long>,
@as("CountDistinctLong") countDistinctLong: option<long>,
@as("CountLong") countLong: option<long>,
@as("Stddev") stddev: option<double>,
@as("Avg") avg: option<double>,
@as("Max") max: option<string_>,
@as("Min") min: option<string_>,
@as("CountNan") countNan: option<integer_>,
@as("CountNull") countNull: option<integer_>,
@as("CountDistinct") countDistinct: option<integer_>,
@as("Count") count: option<integer_>
}
type schemaAttribute = {
@as("AttributeType") attributeType: option<attributeType>,
@as("AttributeName") attributeName: option<name>
}
type s3Config = {
@as("KMSKeyArn") kmskeyArn: option<kmskeyArn>,
@as("RoleArn") roleArn: arn,
@as("Path") path: s3Path
}
type predictorSummary = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Message") message: option<errorMessage>,
@as("Status") status: option<status>,
@as("DatasetGroupArn") datasetGroupArn: option<arn>,
@as("PredictorName") predictorName: option<name>,
@as("PredictorArn") predictorArn: option<arn>
}
type integerParameterRange = {
@as("ScalingType") scalingType: option<scalingType>,
@as("MinValue") minValue: integer_,
@as("MaxValue") maxValue: integer_,
@as("Name") name: name
}
type forecastTypes = array<forecastType>
type forecastSummary = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Message") message: option<errorMessage>,
@as("Status") status: option<status>,
@as("DatasetGroupArn") datasetGroupArn: option<string_>,
@as("PredictorArn") predictorArn: option<string_>,
@as("ForecastName") forecastName: option<name>,
@as("ForecastArn") forecastArn: option<arn>
}
type forecastDimensions = array<name>
type filter = {
@as("Condition") condition: filterConditionString,
@as("Value") value: arn,
@as("Key") key: string_
}
type featurizationMethodParameters = Js.Dict.t< parameterValue>
type evaluationParameters = {
@as("BackTestWindowOffset") backTestWindowOffset: option<integer_>,
@as("NumberOfBacktestWindows") numberOfBacktestWindows: option<integer_>
}
type errorMetric = {
@as("RMSE") rmse: option<double>,
@as("WAPE") wape: option<double>,
@as("ForecastType") forecastType: option<forecastType>
}
type encryptionConfig = {
@as("KMSKeyArn") kmskeyArn: kmskeyArn,
@as("RoleArn") roleArn: arn
}
type datasetSummary = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Domain") domain: option<domain>,
@as("DatasetType") datasetType: option<datasetType>,
@as("DatasetName") datasetName: option<name>,
@as("DatasetArn") datasetArn: option<arn>
}
type datasetGroupSummary = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("DatasetGroupName") datasetGroupName: option<name>,
@as("DatasetGroupArn") datasetGroupArn: option<arn>
}
type continuousParameterRange = {
@as("ScalingType") scalingType: option<scalingType>,
@as("MinValue") minValue: double,
@as("MaxValue") maxValue: double,
@as("Name") name: name
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
type fieldStatistics = Js.Dict.t< statistics>
type featurizationMethod = {
@as("FeaturizationMethodParameters") featurizationMethodParameters: option<featurizationMethodParameters>,
@as("FeaturizationMethodName") featurizationMethodName: featurizationMethodName
}
type errorMetrics = array<errorMetric>
type datasets = array<datasetSummary>
type datasetGroups = array<datasetGroupSummary>
type dataSource = {
@as("S3Config") s3Config: s3Config
}
type dataDestination = {
@as("S3Config") s3Config: s3Config
}
type continuousParameterRanges = array<continuousParameterRange>
type categoricalParameterRange = {
@as("Values") values: values,
@as("Name") name: name
}
type schema = {
@as("Attributes") attributes: option<schemaAttributes>
}
type predictorExecution = {
@as("TestWindows") testWindows: option<testWindowDetails>,
@as("AlgorithmArn") algorithmArn: option<arn>
}
type predictorBacktestExportJobSummary = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Message") message: option<errorMessage>,
@as("Status") status: option<status>,
@as("Destination") destination: option<dataDestination>,
@as("PredictorBacktestExportJobName") predictorBacktestExportJobName: option<name>,
@as("PredictorBacktestExportJobArn") predictorBacktestExportJobArn: option<arn>
}
type metrics = {
@as("ErrorMetrics") errorMetrics: option<errorMetrics>,
@as("WeightedQuantileLosses") weightedQuantileLosses: option<weightedQuantileLosses>,
@as("RMSE") rmse: option<double>
}
type inputDataConfig = {
@as("SupplementaryFeatures") supplementaryFeatures: option<supplementaryFeatures>,
@as("DatasetGroupArn") datasetGroupArn: arn
}
type forecastExportJobSummary = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Message") message: option<errorMessage>,
@as("Status") status: option<status>,
@as("Destination") destination: option<dataDestination>,
@as("ForecastExportJobName") forecastExportJobName: option<name>,
@as("ForecastExportJobArn") forecastExportJobArn: option<arn>
}
type featurizationPipeline = array<featurizationMethod>
type datasetImportJobSummary = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Message") message: option<errorMessage>,
@as("Status") status: option<status>,
@as("DataSource") dataSource: option<dataSource>,
@as("DatasetImportJobName") datasetImportJobName: option<name>,
@as("DatasetImportJobArn") datasetImportJobArn: option<arn>
}
type categoricalParameterRanges = array<categoricalParameterRange>
type windowSummary = {
@as("Metrics") metrics: option<metrics>,
@as("EvaluationType") evaluationType: option<evaluationType>,
@as("ItemCount") itemCount: option<integer_>,
@as("TestWindowEnd") testWindowEnd: option<timestamp_>,
@as("TestWindowStart") testWindowStart: option<timestamp_>
}
type predictorExecutions = array<predictorExecution>
type predictorBacktestExportJobs = array<predictorBacktestExportJobSummary>
type parameterRanges = {
@as("IntegerParameterRanges") integerParameterRanges: option<integerParameterRanges>,
@as("ContinuousParameterRanges") continuousParameterRanges: option<continuousParameterRanges>,
@as("CategoricalParameterRanges") categoricalParameterRanges: option<categoricalParameterRanges>
}
type forecastExportJobs = array<forecastExportJobSummary>
type featurization = {
@as("FeaturizationPipeline") featurizationPipeline: option<featurizationPipeline>,
@as("AttributeName") attributeName: name
}
type datasetImportJobs = array<datasetImportJobSummary>
type testWindows = array<windowSummary>
type predictorExecutionDetails = {
@as("PredictorExecutions") predictorExecutions: option<predictorExecutions>
}
type hyperParameterTuningJobConfig = {
@as("ParameterRanges") parameterRanges: option<parameterRanges>
}
type featurizations = array<featurization>
type featurizationConfig = {
@as("Featurizations") featurizations: option<featurizations>,
@as("ForecastDimensions") forecastDimensions: option<forecastDimensions>,
@as("ForecastFrequency") forecastFrequency: frequency
}
type evaluationResult = {
@as("TestWindows") testWindows: option<testWindows>,
@as("AlgorithmArn") algorithmArn: option<arn>
}
type predictorEvaluationResults = array<evaluationResult>
type awsServiceClient;
@module("@aws-sdk/client-forecast") @new external createClient: unit => awsServiceClient = "ForecastClient";
module StopResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: arn
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "StopResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteResourceTree = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: arn
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeleteResourceTreeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeletePredictorBacktestExportJob = {
  type t;
  type request = {
@as("PredictorBacktestExportJobArn") predictorBacktestExportJobArn: arn
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeletePredictorBacktestExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeletePredictor = {
  type t;
  type request = {
@as("PredictorArn") predictorArn: arn
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeletePredictorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteForecastExportJob = {
  type t;
  type request = {
@as("ForecastExportJobArn") forecastExportJobArn: arn
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeleteForecastExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteForecast = {
  type t;
  type request = {
@as("ForecastArn") forecastArn: arn
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeleteForecastCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteDatasetImportJob = {
  type t;
  type request = {
@as("DatasetImportJobArn") datasetImportJobArn: arn
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeleteDatasetImportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteDatasetGroup = {
  type t;
  type request = {
@as("DatasetGroupArn") datasetGroupArn: arn
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeleteDatasetGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteDataset = {
  type t;
  type request = {
@as("DatasetArn") datasetArn: arn
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeleteDatasetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateDatasetGroup = {
  type t;
  type request = {
@as("DatasetArns") datasetArns: arnList,
@as("DatasetGroupArn") datasetGroupArn: arn
}
  type response = unit
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "UpdateDatasetGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeys,
@as("ResourceArn") resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeForecast = {
  type t;
  type request = {
@as("ForecastArn") forecastArn: arn
}
  type response = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Message") message: option<errorMessage>,
@as("Status") status: option<string_>,
@as("EstimatedTimeRemainingInMinutes") estimatedTimeRemainingInMinutes: option<long>,
@as("DatasetGroupArn") datasetGroupArn: option<arn>,
@as("PredictorArn") predictorArn: option<arn>,
@as("ForecastTypes") forecastTypes: option<forecastTypes>,
@as("ForecastName") forecastName: option<name>,
@as("ForecastArn") forecastArn: option<arn>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribeForecastCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDatasetGroup = {
  type t;
  type request = {
@as("DatasetGroupArn") datasetGroupArn: arn
}
  type response = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Status") status: option<status>,
@as("Domain") domain: option<domain>,
@as("DatasetArns") datasetArns: option<arnList>,
@as("DatasetGroupArn") datasetGroupArn: option<arn>,
@as("DatasetGroupName") datasetGroupName: option<name>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribeDatasetGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("ResourceArn") resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: arn
}
  type response = {
@as("Tags") tags: option<tags>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPredictors = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Predictors") predictors: option<predictors>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListPredictorsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListForecasts = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Forecasts") forecasts: option<forecasts>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListForecastsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDatasets = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Datasets") datasets: option<datasets>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListDatasetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDatasetGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("DatasetGroups") datasetGroups: option<datasetGroups>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListDatasetGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePredictorBacktestExportJob = {
  type t;
  type request = {
@as("PredictorBacktestExportJobArn") predictorBacktestExportJobArn: arn
}
  type response = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Status") status: option<status>,
@as("Message") message: option<message>,
@as("Destination") destination: option<dataDestination>,
@as("PredictorArn") predictorArn: option<arn>,
@as("PredictorBacktestExportJobName") predictorBacktestExportJobName: option<name>,
@as("PredictorBacktestExportJobArn") predictorBacktestExportJobArn: option<arn>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribePredictorBacktestExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeForecastExportJob = {
  type t;
  type request = {
@as("ForecastExportJobArn") forecastExportJobArn: arn
}
  type response = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Status") status: option<status>,
@as("Message") message: option<message>,
@as("Destination") destination: option<dataDestination>,
@as("ForecastArn") forecastArn: option<arn>,
@as("ForecastExportJobName") forecastExportJobName: option<name>,
@as("ForecastExportJobArn") forecastExportJobArn: option<arn>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribeForecastExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDatasetImportJob = {
  type t;
  type request = {
@as("DatasetImportJobArn") datasetImportJobArn: arn
}
  type response = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Message") message: option<message>,
@as("Status") status: option<status>,
@as("DataSize") dataSize: option<double>,
@as("FieldStatistics") fieldStatistics: option<fieldStatistics>,
@as("EstimatedTimeRemainingInMinutes") estimatedTimeRemainingInMinutes: option<long>,
@as("DataSource") dataSource: option<dataSource>,
@as("GeolocationFormat") geolocationFormat: option<geolocationFormat>,
@as("UseGeolocationForTimeZone") useGeolocationForTimeZone: option<useGeolocationForTimeZone>,
@as("TimeZone") timeZone: option<timeZone>,
@as("TimestampFormat") timestampFormat: option<timestampFormat>,
@as("DatasetArn") datasetArn: option<arn>,
@as("DatasetImportJobArn") datasetImportJobArn: option<arn>,
@as("DatasetImportJobName") datasetImportJobName: option<name>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribeDatasetImportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePredictorBacktestExportJob = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("Destination") destination: dataDestination,
@as("PredictorArn") predictorArn: arn,
@as("PredictorBacktestExportJobName") predictorBacktestExportJobName: name
}
  type response = {
@as("PredictorBacktestExportJobArn") predictorBacktestExportJobArn: option<arn>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreatePredictorBacktestExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateForecastExportJob = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("Destination") destination: dataDestination,
@as("ForecastArn") forecastArn: arn,
@as("ForecastExportJobName") forecastExportJobName: name
}
  type response = {
@as("ForecastExportJobArn") forecastExportJobArn: option<arn>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreateForecastExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateForecast = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ForecastTypes") forecastTypes: option<forecastTypes>,
@as("PredictorArn") predictorArn: arn,
@as("ForecastName") forecastName: name
}
  type response = {
@as("ForecastArn") forecastArn: option<arn>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreateForecastCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDatasetImportJob = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("GeolocationFormat") geolocationFormat: option<geolocationFormat>,
@as("UseGeolocationForTimeZone") useGeolocationForTimeZone: option<useGeolocationForTimeZone>,
@as("TimeZone") timeZone: option<timeZone>,
@as("TimestampFormat") timestampFormat: option<timestampFormat>,
@as("DataSource") dataSource: dataSource,
@as("DatasetArn") datasetArn: arn,
@as("DatasetImportJobName") datasetImportJobName: name
}
  type response = {
@as("DatasetImportJobArn") datasetImportJobArn: option<arn>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreateDatasetImportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDatasetGroup = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("DatasetArns") datasetArns: option<arnList>,
@as("Domain") domain: domain,
@as("DatasetGroupName") datasetGroupName: name
}
  type response = {
@as("DatasetGroupArn") datasetGroupArn: option<arn>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreateDatasetGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDataset = {
  type t;
  type request = {
@as("DatasetArn") datasetArn: arn
}
  type response = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Status") status: option<status>,
@as("EncryptionConfig") encryptionConfig: option<encryptionConfig>,
@as("Schema") schema: option<schema>,
@as("DataFrequency") dataFrequency: option<frequency>,
@as("DatasetType") datasetType: option<datasetType>,
@as("Domain") domain: option<domain>,
@as("DatasetName") datasetName: option<name>,
@as("DatasetArn") datasetArn: option<arn>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribeDatasetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDataset = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("EncryptionConfig") encryptionConfig: option<encryptionConfig>,
@as("Schema") schema: schema,
@as("DataFrequency") dataFrequency: option<frequency>,
@as("DatasetType") datasetType: datasetType,
@as("Domain") domain: domain,
@as("DatasetName") datasetName: name
}
  type response = {
@as("DatasetArn") datasetArn: option<arn>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreateDatasetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPredictorBacktestExportJobs = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("PredictorBacktestExportJobs") predictorBacktestExportJobs: option<predictorBacktestExportJobs>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListPredictorBacktestExportJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListForecastExportJobs = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ForecastExportJobs") forecastExportJobs: option<forecastExportJobs>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListForecastExportJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDatasetImportJobs = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("DatasetImportJobs") datasetImportJobs: option<datasetImportJobs>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListDatasetImportJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePredictor = {
  type t;
  type request = {
@as("PredictorArn") predictorArn: arn
}
  type response = {
@as("LastModificationTime") lastModificationTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("Message") message: option<message>,
@as("Status") status: option<status>,
@as("AutoMLAlgorithmArns") autoMLAlgorithmArns: option<arnList>,
@as("DatasetImportJobArns") datasetImportJobArns: option<arnList>,
@as("EstimatedTimeRemainingInMinutes") estimatedTimeRemainingInMinutes: option<long>,
@as("PredictorExecutionDetails") predictorExecutionDetails: option<predictorExecutionDetails>,
@as("EncryptionConfig") encryptionConfig: option<encryptionConfig>,
@as("FeaturizationConfig") featurizationConfig: option<featurizationConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("HPOConfig") hpoconfig: option<hyperParameterTuningJobConfig>,
@as("EvaluationParameters") evaluationParameters: option<evaluationParameters>,
@as("TrainingParameters") trainingParameters: option<trainingParameters>,
@as("PerformHPO") performHPO: option<boolean_>,
@as("AutoMLOverrideStrategy") autoMLOverrideStrategy: option<autoMLOverrideStrategy>,
@as("PerformAutoML") performAutoML: option<boolean_>,
@as("ForecastTypes") forecastTypes: option<forecastTypes>,
@as("ForecastHorizon") forecastHorizon: option<integer_>,
@as("AlgorithmArn") algorithmArn: option<arn>,
@as("PredictorName") predictorName: option<name>,
@as("PredictorArn") predictorArn: option<name>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribePredictorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePredictor = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("EncryptionConfig") encryptionConfig: option<encryptionConfig>,
@as("FeaturizationConfig") featurizationConfig: featurizationConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("HPOConfig") hpoconfig: option<hyperParameterTuningJobConfig>,
@as("EvaluationParameters") evaluationParameters: option<evaluationParameters>,
@as("TrainingParameters") trainingParameters: option<trainingParameters>,
@as("PerformHPO") performHPO: option<boolean_>,
@as("AutoMLOverrideStrategy") autoMLOverrideStrategy: option<autoMLOverrideStrategy>,
@as("PerformAutoML") performAutoML: option<boolean_>,
@as("ForecastTypes") forecastTypes: option<forecastTypes>,
@as("ForecastHorizon") forecastHorizon: integer_,
@as("AlgorithmArn") algorithmArn: option<arn>,
@as("PredictorName") predictorName: name
}
  type response = {
@as("PredictorArn") predictorArn: option<arn>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreatePredictorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccuracyMetrics = {
  type t;
  type request = {
@as("PredictorArn") predictorArn: arn
}
  type response = {
@as("AutoMLOverrideStrategy") autoMLOverrideStrategy: option<autoMLOverrideStrategy>,
@as("PredictorEvaluationResults") predictorEvaluationResults: option<predictorEvaluationResults>
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "GetAccuracyMetricsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
