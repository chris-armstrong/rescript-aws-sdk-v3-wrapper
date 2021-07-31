type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type value = string
type useGeolocationForTimeZone = bool;
type timestampFormat = string
type amazonawsTimestamp = Js.Date.t;
type timeZone = string
type tagValue = string
type tagKey = string
type amazonawsString = string
type status = string
type scalingType = [@as("ReverseLogarithmic") #ReverseLogarithmic | @as("Logarithmic") #Logarithmic | @as("Linear") #Linear | @as("Auto") #Auto]
type s3Path = string
type parameterValue = string
type parameterKey = string
type nextToken = string
type name = string
type message = string
type maxResults = int;
type amazonawsLong = float;
type kMSKeyArn = string
type amazonawsInteger = int;
type geolocationFormat = string
type frequency = string
type forecastType = string
type filterConditionString = [@as("IS_NOT") #IS_NOT | @as("IS") #IS]
type featurizationMethodName = [@as("filling") #filling]
type evaluationType = [@as("COMPUTED") #COMPUTED | @as("SUMMARY") #SUMMARY]
type errorMessage = string
type amazonawsDouble = float;
type domain = [@as("METRICS") #METRICS | @as("WEB_TRAFFIC") #WEB_TRAFFIC | @as("WORK_FORCE") #WORK_FORCE | @as("EC2_CAPACITY") #EC2_CAPACITY | @as("INVENTORY_PLANNING") #INVENTORY_PLANNING | @as("CUSTOM") #CUSTOM | @as("RETAIL") #RETAIL]
type datasetType = [@as("ITEM_METADATA") #ITEM_METADATA | @as("RELATED_TIME_SERIES") #RELATED_TIME_SERIES | @as("TARGET_TIME_SERIES") #TARGET_TIME_SERIES]
type amazonawsBoolean = bool;
type autoMLOverrideStrategy = [@as("LatencyOptimized") #LatencyOptimized]
type attributeType = [@as("geolocation") #geolocation | @as("timestamp") #timestamp | @as("float") #float | @as("integer") #integer | @as("string") #string]
type arn = string
type weightedQuantileLoss = {
@as("LossValue") lossValue: amazonawsDouble,
@as("Quantile") quantile: amazonawsDouble
}
type values = array<value>
type trainingParameters = Js.Dict.t< parameterValue>
type testWindowSummary = {
@as("Message") message: errorMessage,
@as("Status") status: status,
@as("TestWindowEnd") testWindowEnd: amazonawsTimestamp,
@as("TestWindowStart") testWindowStart: amazonawsTimestamp
}
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type supplementaryFeature = {
@as("Value") value: option<value>,
@as("Name") name: option<name>
}
type statistics = {
@as("CountNanLong") countNanLong: amazonawsLong,
@as("CountNullLong") countNullLong: amazonawsLong,
@as("CountDistinctLong") countDistinctLong: amazonawsLong,
@as("CountLong") countLong: amazonawsLong,
@as("Stddev") stddev: amazonawsDouble,
@as("Avg") avg: amazonawsDouble,
@as("Max") max: amazonawsString,
@as("Min") min: amazonawsString,
@as("CountNan") countNan: amazonawsInteger,
@as("CountNull") countNull: amazonawsInteger,
@as("CountDistinct") countDistinct: amazonawsInteger,
@as("Count") count: amazonawsInteger
}
type schemaAttribute = {
@as("AttributeType") attributeType: attributeType,
@as("AttributeName") attributeName: name
}
type s3Config = {
@as("KMSKeyArn") kMSKeyArn: kMSKeyArn,
@as("RoleArn") roleArn: option<arn>,
@as("Path") path: option<s3Path>
}
type predictorSummary = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Message") message: errorMessage,
@as("Status") status: status,
@as("DatasetGroupArn") datasetGroupArn: arn,
@as("PredictorName") predictorName: name,
@as("PredictorArn") predictorArn: arn
}
type integerParameterRange = {
@as("ScalingType") scalingType: scalingType,
@as("MinValue") minValue: option<amazonawsInteger>,
@as("MaxValue") maxValue: option<amazonawsInteger>,
@as("Name") name: option<name>
}
type forecastTypes = array<forecastType>
type forecastSummary = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Message") message: errorMessage,
@as("Status") status: status,
@as("DatasetGroupArn") datasetGroupArn: amazonawsString,
@as("PredictorArn") predictorArn: amazonawsString,
@as("ForecastName") forecastName: name,
@as("ForecastArn") forecastArn: arn
}
type forecastDimensions = array<name>
type filter = {
@as("Condition") condition: option<filterConditionString>,
@as("Value") value: option<arn>,
@as("Key") key: option<amazonawsString>
}
type featurizationMethodParameters = Js.Dict.t< parameterValue>
type evaluationParameters = {
@as("BackTestWindowOffset") backTestWindowOffset: amazonawsInteger,
@as("NumberOfBacktestWindows") numberOfBacktestWindows: amazonawsInteger
}
type errorMetric = {
@as("RMSE") rMSE: amazonawsDouble,
@as("WAPE") wAPE: amazonawsDouble,
@as("ForecastType") forecastType: forecastType
}
type encryptionConfig = {
@as("KMSKeyArn") kMSKeyArn: option<kMSKeyArn>,
@as("RoleArn") roleArn: option<arn>
}
type datasetSummary = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Domain") domain: domain,
@as("DatasetType") datasetType: datasetType,
@as("DatasetName") datasetName: name,
@as("DatasetArn") datasetArn: arn
}
type datasetGroupSummary = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("DatasetGroupName") datasetGroupName: name,
@as("DatasetGroupArn") datasetGroupArn: arn
}
type continuousParameterRange = {
@as("ScalingType") scalingType: scalingType,
@as("MinValue") minValue: option<amazonawsDouble>,
@as("MaxValue") maxValue: option<amazonawsDouble>,
@as("Name") name: option<name>
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
@as("FeaturizationMethodParameters") featurizationMethodParameters: featurizationMethodParameters,
@as("FeaturizationMethodName") featurizationMethodName: option<featurizationMethodName>
}
type errorMetrics = array<errorMetric>
type datasets = array<datasetSummary>
type datasetGroups = array<datasetGroupSummary>
type dataSource = {
@as("S3Config") s3Config: option<s3Config>
}
type dataDestination = {
@as("S3Config") s3Config: option<s3Config>
}
type continuousParameterRanges = array<continuousParameterRange>
type categoricalParameterRange = {
@as("Values") values: option<values>,
@as("Name") name: option<name>
}
type schema = {
@as("Attributes") attributes: schemaAttributes
}
type predictorExecution = {
@as("TestWindows") testWindows: testWindowDetails,
@as("AlgorithmArn") algorithmArn: arn
}
type predictorBacktestExportJobSummary = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Message") message: errorMessage,
@as("Status") status: status,
@as("Destination") destination: dataDestination,
@as("PredictorBacktestExportJobName") predictorBacktestExportJobName: name,
@as("PredictorBacktestExportJobArn") predictorBacktestExportJobArn: arn
}
type metrics = {
@as("ErrorMetrics") errorMetrics: errorMetrics,
@as("WeightedQuantileLosses") weightedQuantileLosses: weightedQuantileLosses,
@as("RMSE") rMSE: amazonawsDouble
}
type inputDataConfig = {
@as("SupplementaryFeatures") supplementaryFeatures: supplementaryFeatures,
@as("DatasetGroupArn") datasetGroupArn: option<arn>
}
type forecastExportJobSummary = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Message") message: errorMessage,
@as("Status") status: status,
@as("Destination") destination: dataDestination,
@as("ForecastExportJobName") forecastExportJobName: name,
@as("ForecastExportJobArn") forecastExportJobArn: arn
}
type featurizationPipeline = array<featurizationMethod>
type datasetImportJobSummary = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Message") message: errorMessage,
@as("Status") status: status,
@as("DataSource") dataSource: dataSource,
@as("DatasetImportJobName") datasetImportJobName: name,
@as("DatasetImportJobArn") datasetImportJobArn: arn
}
type categoricalParameterRanges = array<categoricalParameterRange>
type windowSummary = {
@as("Metrics") metrics: metrics,
@as("EvaluationType") evaluationType: evaluationType,
@as("ItemCount") itemCount: amazonawsInteger,
@as("TestWindowEnd") testWindowEnd: amazonawsTimestamp,
@as("TestWindowStart") testWindowStart: amazonawsTimestamp
}
type predictorExecutions = array<predictorExecution>
type predictorBacktestExportJobs = array<predictorBacktestExportJobSummary>
type parameterRanges = {
@as("IntegerParameterRanges") integerParameterRanges: integerParameterRanges,
@as("ContinuousParameterRanges") continuousParameterRanges: continuousParameterRanges,
@as("CategoricalParameterRanges") categoricalParameterRanges: categoricalParameterRanges
}
type forecastExportJobs = array<forecastExportJobSummary>
type featurization = {
@as("FeaturizationPipeline") featurizationPipeline: featurizationPipeline,
@as("AttributeName") attributeName: option<name>
}
type datasetImportJobs = array<datasetImportJobSummary>
type testWindows = array<windowSummary>
type predictorExecutionDetails = {
@as("PredictorExecutions") predictorExecutions: predictorExecutions
}
type hyperParameterTuningJobConfig = {
@as("ParameterRanges") parameterRanges: parameterRanges
}
type featurizations = array<featurization>
type featurizationConfig = {
@as("Featurizations") featurizations: featurizations,
@as("ForecastDimensions") forecastDimensions: forecastDimensions,
@as("ForecastFrequency") forecastFrequency: option<frequency>
}
type evaluationResult = {
@as("TestWindows") testWindows: testWindows,
@as("AlgorithmArn") algorithmArn: arn
}
type predictorEvaluationResults = array<evaluationResult>
type clientType;
@module("@aws-sdk/client-forecast") @new external createClient: unit => clientType = "ForecastClient";
module StopResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arn>
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "StopResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteResourceTree = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arn>
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeleteResourceTreeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePredictorBacktestExportJob = {
  type t;
  type request = {
@as("PredictorBacktestExportJobArn") predictorBacktestExportJobArn: option<arn>
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeletePredictorBacktestExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePredictor = {
  type t;
  type request = {
@as("PredictorArn") predictorArn: option<arn>
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeletePredictorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteForecastExportJob = {
  type t;
  type request = {
@as("ForecastExportJobArn") forecastExportJobArn: option<arn>
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeleteForecastExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteForecast = {
  type t;
  type request = {
@as("ForecastArn") forecastArn: option<arn>
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeleteForecastCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDatasetImportJob = {
  type t;
  type request = {
@as("DatasetImportJobArn") datasetImportJobArn: option<arn>
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeleteDatasetImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDatasetGroup = {
  type t;
  type request = {
@as("DatasetGroupArn") datasetGroupArn: option<arn>
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeleteDatasetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDataset = {
  type t;
  type request = {
@as("DatasetArn") datasetArn: option<arn>
}
  
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DeleteDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateDatasetGroup = {
  type t;
  type request = {
@as("DatasetArns") datasetArns: option<arnList>,
@as("DatasetGroupArn") datasetGroupArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "UpdateDatasetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeForecast = {
  type t;
  type request = {
@as("ForecastArn") forecastArn: option<arn>
}
  type response = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Message") message: errorMessage,
@as("Status") status: amazonawsString,
@as("EstimatedTimeRemainingInMinutes") estimatedTimeRemainingInMinutes: amazonawsLong,
@as("DatasetGroupArn") datasetGroupArn: arn,
@as("PredictorArn") predictorArn: arn,
@as("ForecastTypes") forecastTypes: forecastTypes,
@as("ForecastName") forecastName: name,
@as("ForecastArn") forecastArn: arn
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribeForecastCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDatasetGroup = {
  type t;
  type request = {
@as("DatasetGroupArn") datasetGroupArn: option<arn>
}
  type response = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Status") status: status,
@as("Domain") domain: domain,
@as("DatasetArns") datasetArns: arnList,
@as("DatasetGroupArn") datasetGroupArn: arn,
@as("DatasetGroupName") datasetGroupName: name
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribeDatasetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPredictors = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Predictors") predictors: predictors
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListPredictorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListForecasts = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Forecasts") forecasts: forecasts
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListForecastsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatasets = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Datasets") datasets: datasets
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListDatasetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatasetGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("DatasetGroups") datasetGroups: datasetGroups
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListDatasetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePredictorBacktestExportJob = {
  type t;
  type request = {
@as("PredictorBacktestExportJobArn") predictorBacktestExportJobArn: option<arn>
}
  type response = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Status") status: status,
@as("Message") message: message,
@as("Destination") destination: dataDestination,
@as("PredictorArn") predictorArn: arn,
@as("PredictorBacktestExportJobName") predictorBacktestExportJobName: name,
@as("PredictorBacktestExportJobArn") predictorBacktestExportJobArn: arn
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribePredictorBacktestExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeForecastExportJob = {
  type t;
  type request = {
@as("ForecastExportJobArn") forecastExportJobArn: option<arn>
}
  type response = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Status") status: status,
@as("Message") message: message,
@as("Destination") destination: dataDestination,
@as("ForecastArn") forecastArn: arn,
@as("ForecastExportJobName") forecastExportJobName: name,
@as("ForecastExportJobArn") forecastExportJobArn: arn
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribeForecastExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDatasetImportJob = {
  type t;
  type request = {
@as("DatasetImportJobArn") datasetImportJobArn: option<arn>
}
  type response = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Message") message: message,
@as("Status") status: status,
@as("DataSize") dataSize: amazonawsDouble,
@as("FieldStatistics") fieldStatistics: fieldStatistics,
@as("EstimatedTimeRemainingInMinutes") estimatedTimeRemainingInMinutes: amazonawsLong,
@as("DataSource") dataSource: dataSource,
@as("GeolocationFormat") geolocationFormat: geolocationFormat,
@as("UseGeolocationForTimeZone") useGeolocationForTimeZone: useGeolocationForTimeZone,
@as("TimeZone") timeZone: timeZone,
@as("TimestampFormat") timestampFormat: timestampFormat,
@as("DatasetArn") datasetArn: arn,
@as("DatasetImportJobArn") datasetImportJobArn: arn,
@as("DatasetImportJobName") datasetImportJobName: name
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribeDatasetImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePredictorBacktestExportJob = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("Destination") destination: option<dataDestination>,
@as("PredictorArn") predictorArn: option<arn>,
@as("PredictorBacktestExportJobName") predictorBacktestExportJobName: option<name>
}
  type response = {
@as("PredictorBacktestExportJobArn") predictorBacktestExportJobArn: arn
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreatePredictorBacktestExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateForecastExportJob = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("Destination") destination: option<dataDestination>,
@as("ForecastArn") forecastArn: option<arn>,
@as("ForecastExportJobName") forecastExportJobName: option<name>
}
  type response = {
@as("ForecastExportJobArn") forecastExportJobArn: arn
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreateForecastExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateForecast = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("ForecastTypes") forecastTypes: forecastTypes,
@as("PredictorArn") predictorArn: option<arn>,
@as("ForecastName") forecastName: option<name>
}
  type response = {
@as("ForecastArn") forecastArn: arn
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreateForecastCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDatasetImportJob = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("GeolocationFormat") geolocationFormat: geolocationFormat,
@as("UseGeolocationForTimeZone") useGeolocationForTimeZone: useGeolocationForTimeZone,
@as("TimeZone") timeZone: timeZone,
@as("TimestampFormat") timestampFormat: timestampFormat,
@as("DataSource") dataSource: option<dataSource>,
@as("DatasetArn") datasetArn: option<arn>,
@as("DatasetImportJobName") datasetImportJobName: option<name>
}
  type response = {
@as("DatasetImportJobArn") datasetImportJobArn: arn
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreateDatasetImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDatasetGroup = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("DatasetArns") datasetArns: arnList,
@as("Domain") domain: option<domain>,
@as("DatasetGroupName") datasetGroupName: option<name>
}
  type response = {
@as("DatasetGroupArn") datasetGroupArn: arn
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreateDatasetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataset = {
  type t;
  type request = {
@as("DatasetArn") datasetArn: option<arn>
}
  type response = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Status") status: status,
@as("EncryptionConfig") encryptionConfig: encryptionConfig,
@as("Schema") schema: schema,
@as("DataFrequency") dataFrequency: frequency,
@as("DatasetType") datasetType: datasetType,
@as("Domain") domain: domain,
@as("DatasetName") datasetName: name,
@as("DatasetArn") datasetArn: arn
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribeDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataset = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("EncryptionConfig") encryptionConfig: encryptionConfig,
@as("Schema") schema: option<schema>,
@as("DataFrequency") dataFrequency: frequency,
@as("DatasetType") datasetType: option<datasetType>,
@as("Domain") domain: option<domain>,
@as("DatasetName") datasetName: option<name>
}
  type response = {
@as("DatasetArn") datasetArn: arn
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreateDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPredictorBacktestExportJobs = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("PredictorBacktestExportJobs") predictorBacktestExportJobs: predictorBacktestExportJobs
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListPredictorBacktestExportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListForecastExportJobs = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ForecastExportJobs") forecastExportJobs: forecastExportJobs
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListForecastExportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatasetImportJobs = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("DatasetImportJobs") datasetImportJobs: datasetImportJobs
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "ListDatasetImportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePredictor = {
  type t;
  type request = {
@as("PredictorArn") predictorArn: option<arn>
}
  type response = {
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Message") message: message,
@as("Status") status: status,
@as("AutoMLAlgorithmArns") autoMLAlgorithmArns: arnList,
@as("DatasetImportJobArns") datasetImportJobArns: arnList,
@as("EstimatedTimeRemainingInMinutes") estimatedTimeRemainingInMinutes: amazonawsLong,
@as("PredictorExecutionDetails") predictorExecutionDetails: predictorExecutionDetails,
@as("EncryptionConfig") encryptionConfig: encryptionConfig,
@as("FeaturizationConfig") featurizationConfig: featurizationConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("HPOConfig") hPOConfig: hyperParameterTuningJobConfig,
@as("EvaluationParameters") evaluationParameters: evaluationParameters,
@as("TrainingParameters") trainingParameters: trainingParameters,
@as("PerformHPO") performHPO: amazonawsBoolean,
@as("AutoMLOverrideStrategy") autoMLOverrideStrategy: autoMLOverrideStrategy,
@as("PerformAutoML") performAutoML: amazonawsBoolean,
@as("ForecastTypes") forecastTypes: forecastTypes,
@as("ForecastHorizon") forecastHorizon: amazonawsInteger,
@as("AlgorithmArn") algorithmArn: arn,
@as("PredictorName") predictorName: name,
@as("PredictorArn") predictorArn: name
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "DescribePredictorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePredictor = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("EncryptionConfig") encryptionConfig: encryptionConfig,
@as("FeaturizationConfig") featurizationConfig: option<featurizationConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("HPOConfig") hPOConfig: hyperParameterTuningJobConfig,
@as("EvaluationParameters") evaluationParameters: evaluationParameters,
@as("TrainingParameters") trainingParameters: trainingParameters,
@as("PerformHPO") performHPO: amazonawsBoolean,
@as("AutoMLOverrideStrategy") autoMLOverrideStrategy: autoMLOverrideStrategy,
@as("PerformAutoML") performAutoML: amazonawsBoolean,
@as("ForecastTypes") forecastTypes: forecastTypes,
@as("ForecastHorizon") forecastHorizon: option<amazonawsInteger>,
@as("AlgorithmArn") algorithmArn: arn,
@as("PredictorName") predictorName: option<name>
}
  type response = {
@as("PredictorArn") predictorArn: arn
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "CreatePredictorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccuracyMetrics = {
  type t;
  type request = {
@as("PredictorArn") predictorArn: option<arn>
}
  type response = {
@as("AutoMLOverrideStrategy") autoMLOverrideStrategy: autoMLOverrideStrategy,
@as("PredictorEvaluationResults") predictorEvaluationResults: predictorEvaluationResults
}
  @module("@aws-sdk/client-forecast") @new external new_: (request) => t = "GetAccuracyMetricsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
