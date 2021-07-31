type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type tunable = bool;
type transactionsPerSecond = int;
type trainingMode = [@as("UPDATE") #UPDATE | @as("FULL") #FULL]
type trainingInputMode = string
type trainingHours = float;
type trackingId = string
type status = string
type s3Location = string
type roleArn = string
type recipeType = string
type recipeProvider = [@as("SERVICE") #SERVICE]
type performHPO = bool;
type performAutoML = bool;
type parameterValue = string
type parameterName = string
type objectiveSensitivity = [@as("OFF") #OFF | @as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
type numBatchResults = int;
type nextToken = string
type name = string
type metricValue = float;
type metricRegex = string
type metricName = string
type maxResults = int;
type kmsKeyArn = string
type itemAttribute = string
type integerMinValue = int;
type integerMaxValue = int;
type ingestionMode = [@as("ALL") #ALL | @as("PUT") #PUT | @as("BULK") #BULK]
type hPOResource = string
type hPOObjectiveType = string
type filterExpression = string
type failureReason = string
type eventValueThreshold = string
type eventType = string
type errorMessage = string
type dockerURI = string
type description = string
type date = Js.Date.t;
type datasetType = string
type continuousMinValue = float;
type continuousMaxValue = float;
type categoricalValue = string
type amazonawsBoolean = bool;
type avroSchema = string
type arn = string
type accountId = string
type solutionVersionSummary = {
@as("failureReason") failureReason: failureReason,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("solutionVersionArn") solutionVersionArn: arn
}
type solutionSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("solutionArn") solutionArn: arn,
@as("name") name: name
}
type s3DataConfig = {
@as("kmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("path") path: option<s3Location>
}
type resourceConfig = Js.Dict.t< parameterValue>
type recipeSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("recipeArn") recipeArn: arn,
@as("name") name: name
}
type recipe = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("recipeType") recipeType: recipeType,
@as("creationDateTime") creationDateTime: date,
@as("description") description: description,
@as("status") status: status,
@as("featureTransformationArn") featureTransformationArn: arn,
@as("algorithmArn") algorithmArn: arn,
@as("recipeArn") recipeArn: arn,
@as("name") name: name
}
type optimizationObjective = {
@as("objectiveSensitivity") objectiveSensitivity: objectiveSensitivity,
@as("itemAttribute") itemAttribute: itemAttribute
}
type metrics = Js.Dict.t< metricValue>
type integerHyperParameterRange = {
@as("maxValue") maxValue: integerMaxValue,
@as("minValue") minValue: integerMinValue,
@as("name") name: parameterName
}
type hyperParameters = Js.Dict.t< parameterValue>
type hPOResourceConfig = {
@as("maxParallelTrainingJobs") maxParallelTrainingJobs: hPOResource,
@as("maxNumberOfTrainingJobs") maxNumberOfTrainingJobs: hPOResource
}
type hPOObjective = {
@as("metricRegex") metricRegex: metricRegex,
@as("metricName") metricName: metricName,
@as("type") type_: hPOObjectiveType
}
type filterSummary = {
@as("status") status: status,
@as("failureReason") failureReason: failureReason,
@as("datasetGroupArn") datasetGroupArn: arn,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("filterArn") filterArn: arn,
@as("name") name: name
}
type filter = {
@as("status") status: status,
@as("filterExpression") filterExpression: filterExpression,
@as("failureReason") failureReason: failureReason,
@as("datasetGroupArn") datasetGroupArn: arn,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("filterArn") filterArn: arn,
@as("name") name: name
}
type featurizationParameters = Js.Dict.t< parameterValue>
type featureTransformationParameters = Js.Dict.t< parameterValue>
type eventTrackerSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("eventTrackerArn") eventTrackerArn: arn,
@as("name") name: name
}
type eventTracker = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("datasetGroupArn") datasetGroupArn: arn,
@as("trackingId") trackingId: trackingId,
@as("accountId") accountId: accountId,
@as("eventTrackerArn") eventTrackerArn: arn,
@as("name") name: name
}
type defaultIntegerHyperParameterRange = {
@as("isTunable") isTunable: tunable,
@as("maxValue") maxValue: integerMaxValue,
@as("minValue") minValue: integerMinValue,
@as("name") name: parameterName
}
type defaultContinuousHyperParameterRange = {
@as("isTunable") isTunable: tunable,
@as("maxValue") maxValue: continuousMaxValue,
@as("minValue") minValue: continuousMinValue,
@as("name") name: parameterName
}
type datasetSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("datasetType") datasetType: datasetType,
@as("datasetArn") datasetArn: arn,
@as("name") name: name
}
type datasetSchemaSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("schemaArn") schemaArn: arn,
@as("name") name: name
}
type datasetSchema = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("schema") schema: avroSchema,
@as("schemaArn") schemaArn: arn,
@as("name") name: name
}
type datasetImportJobSummary = {
@as("failureReason") failureReason: failureReason,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("jobName") jobName: name,
@as("datasetImportJobArn") datasetImportJobArn: arn
}
type datasetGroupSummary = {
@as("failureReason") failureReason: failureReason,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("datasetGroupArn") datasetGroupArn: arn,
@as("name") name: name
}
type datasetGroup = {
@as("failureReason") failureReason: failureReason,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("kmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("roleArn") roleArn: roleArn,
@as("status") status: status,
@as("datasetGroupArn") datasetGroupArn: arn,
@as("name") name: name
}
type datasetExportJobSummary = {
@as("failureReason") failureReason: failureReason,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("jobName") jobName: name,
@as("datasetExportJobArn") datasetExportJobArn: arn
}
type dataset = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("schemaArn") schemaArn: arn,
@as("datasetType") datasetType: datasetType,
@as("datasetGroupArn") datasetGroupArn: arn,
@as("datasetArn") datasetArn: arn,
@as("name") name: name
}
type dataSource = {
@as("dataLocation") dataLocation: s3Location
}
type continuousHyperParameterRange = {
@as("maxValue") maxValue: continuousMaxValue,
@as("minValue") minValue: continuousMinValue,
@as("name") name: parameterName
}
type categoricalValues = array<categoricalValue>
type campaignSummary = {
@as("failureReason") failureReason: failureReason,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("campaignArn") campaignArn: arn,
@as("name") name: name
}
type batchInferenceJobSummary = {
@as("solutionVersionArn") solutionVersionArn: arn,
@as("failureReason") failureReason: failureReason,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("jobName") jobName: name,
@as("batchInferenceJobArn") batchInferenceJobArn: arn
}
type autoMLResult = {
@as("bestRecipeArn") bestRecipeArn: arn
}
type arnList = array<arn>
type algorithmImage = {
@as("dockerURI") dockerURI: option<dockerURI>,
@as("name") name: name
}
type tunedHPOParams = {
@as("algorithmHyperParameters") algorithmHyperParameters: hyperParameters
}
type solutions = array<solutionSummary>
type solutionVersions = array<solutionVersionSummary>
type schemas = array<datasetSchemaSummary>
type recipes = array<recipeSummary>
type integerHyperParameterRanges = array<integerHyperParameterRange>
type filters = array<filterSummary>
type featureTransformation = {
@as("status") status: status,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("defaultParameters") defaultParameters: featurizationParameters,
@as("featureTransformationArn") featureTransformationArn: arn,
@as("name") name: name
}
type eventTrackers = array<eventTrackerSummary>
type defaultIntegerHyperParameterRanges = array<defaultIntegerHyperParameterRange>
type defaultContinuousHyperParameterRanges = array<defaultContinuousHyperParameterRange>
type defaultCategoricalHyperParameterRange = {
@as("isTunable") isTunable: tunable,
@as("values") values: categoricalValues,
@as("name") name: parameterName
}
type datasets = array<datasetSummary>
type datasetImportJobs = array<datasetImportJobSummary>
type datasetImportJob = {
@as("failureReason") failureReason: failureReason,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("roleArn") roleArn: arn,
@as("dataSource") dataSource: dataSource,
@as("datasetArn") datasetArn: arn,
@as("datasetImportJobArn") datasetImportJobArn: arn,
@as("jobName") jobName: name
}
type datasetGroups = array<datasetGroupSummary>
type datasetExportJobs = array<datasetExportJobSummary>
type datasetExportJobOutput = {
@as("s3DataDestination") s3DataDestination: option<s3DataConfig>
}
type continuousHyperParameterRanges = array<continuousHyperParameterRange>
type categoricalHyperParameterRange = {
@as("values") values: categoricalValues,
@as("name") name: parameterName
}
type campaigns = array<campaignSummary>
type campaignConfig = {
@as("itemExplorationConfig") itemExplorationConfig: hyperParameters
}
type batchInferenceJobs = array<batchInferenceJobSummary>
type batchInferenceJobOutput = {
@as("s3DataDestination") s3DataDestination: option<s3DataConfig>
}
type batchInferenceJobInput = {
@as("s3DataSource") s3DataSource: option<s3DataConfig>
}
type batchInferenceJobConfig = {
@as("itemExplorationConfig") itemExplorationConfig: hyperParameters
}
type autoMLConfig = {
@as("recipeList") recipeList: arnList,
@as("metricName") metricName: metricName
}
type defaultCategoricalHyperParameterRanges = array<defaultCategoricalHyperParameterRange>
type datasetExportJob = {
@as("failureReason") failureReason: failureReason,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("jobOutput") jobOutput: datasetExportJobOutput,
@as("status") status: status,
@as("roleArn") roleArn: arn,
@as("ingestionMode") ingestionMode: ingestionMode,
@as("datasetArn") datasetArn: arn,
@as("datasetExportJobArn") datasetExportJobArn: arn,
@as("jobName") jobName: name
}
type categoricalHyperParameterRanges = array<categoricalHyperParameterRange>
type campaignUpdateSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("failureReason") failureReason: failureReason,
@as("status") status: status,
@as("campaignConfig") campaignConfig: campaignConfig,
@as("minProvisionedTPS") minProvisionedTPS: transactionsPerSecond,
@as("solutionVersionArn") solutionVersionArn: arn
}
type batchInferenceJob = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("roleArn") roleArn: roleArn,
@as("batchInferenceJobConfig") batchInferenceJobConfig: batchInferenceJobConfig,
@as("jobOutput") jobOutput: batchInferenceJobOutput,
@as("jobInput") jobInput: batchInferenceJobInput,
@as("numResults") numResults: numBatchResults,
@as("solutionVersionArn") solutionVersionArn: arn,
@as("failureReason") failureReason: failureReason,
@as("filterArn") filterArn: arn,
@as("batchInferenceJobArn") batchInferenceJobArn: arn,
@as("jobName") jobName: name
}
type hyperParameterRanges = {
@as("categoricalHyperParameterRanges") categoricalHyperParameterRanges: categoricalHyperParameterRanges,
@as("continuousHyperParameterRanges") continuousHyperParameterRanges: continuousHyperParameterRanges,
@as("integerHyperParameterRanges") integerHyperParameterRanges: integerHyperParameterRanges
}
type defaultHyperParameterRanges = {
@as("categoricalHyperParameterRanges") categoricalHyperParameterRanges: defaultCategoricalHyperParameterRanges,
@as("continuousHyperParameterRanges") continuousHyperParameterRanges: defaultContinuousHyperParameterRanges,
@as("integerHyperParameterRanges") integerHyperParameterRanges: defaultIntegerHyperParameterRanges
}
type campaign = {
@as("latestCampaignUpdate") latestCampaignUpdate: campaignUpdateSummary,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("failureReason") failureReason: failureReason,
@as("status") status: status,
@as("campaignConfig") campaignConfig: campaignConfig,
@as("minProvisionedTPS") minProvisionedTPS: transactionsPerSecond,
@as("solutionVersionArn") solutionVersionArn: arn,
@as("campaignArn") campaignArn: arn,
@as("name") name: name
}
type hPOConfig = {
@as("algorithmHyperParameterRanges") algorithmHyperParameterRanges: hyperParameterRanges,
@as("hpoResourceConfig") hpoResourceConfig: hPOResourceConfig,
@as("hpoObjective") hpoObjective: hPOObjective
}
type algorithm = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("roleArn") roleArn: arn,
@as("trainingInputMode") trainingInputMode: trainingInputMode,
@as("defaultResourceConfig") defaultResourceConfig: resourceConfig,
@as("defaultHyperParameterRanges") defaultHyperParameterRanges: defaultHyperParameterRanges,
@as("defaultHyperParameters") defaultHyperParameters: hyperParameters,
@as("algorithmImage") algorithmImage: algorithmImage,
@as("algorithmArn") algorithmArn: arn,
@as("name") name: name
}
type solutionConfig = {
@as("optimizationObjective") optimizationObjective: optimizationObjective,
@as("autoMLConfig") autoMLConfig: autoMLConfig,
@as("featureTransformationParameters") featureTransformationParameters: featureTransformationParameters,
@as("algorithmHyperParameters") algorithmHyperParameters: hyperParameters,
@as("hpoConfig") hpoConfig: hPOConfig,
@as("eventValueThreshold") eventValueThreshold: eventValueThreshold
}
type solutionVersion = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("failureReason") failureReason: failureReason,
@as("status") status: status,
@as("tunedHPOParams") tunedHPOParams: tunedHPOParams,
@as("trainingMode") trainingMode: trainingMode,
@as("trainingHours") trainingHours: trainingHours,
@as("solutionConfig") solutionConfig: solutionConfig,
@as("datasetGroupArn") datasetGroupArn: arn,
@as("eventType") eventType: eventType,
@as("recipeArn") recipeArn: arn,
@as("performAutoML") performAutoML: performAutoML,
@as("performHPO") performHPO: performHPO,
@as("solutionArn") solutionArn: arn,
@as("solutionVersionArn") solutionVersionArn: arn
}
type solution = {
@as("latestSolutionVersion") latestSolutionVersion: solutionVersionSummary,
@as("lastUpdatedDateTime") lastUpdatedDateTime: date,
@as("creationDateTime") creationDateTime: date,
@as("status") status: status,
@as("autoMLResult") autoMLResult: autoMLResult,
@as("solutionConfig") solutionConfig: solutionConfig,
@as("eventType") eventType: eventType,
@as("datasetGroupArn") datasetGroupArn: arn,
@as("recipeArn") recipeArn: arn,
@as("performAutoML") performAutoML: performAutoML,
@as("performHPO") performHPO: performHPO,
@as("solutionArn") solutionArn: arn,
@as("name") name: name
}
type clientType;
@module("@aws-sdk/client-personalize") @new external createClient: unit => clientType = "PersonalizeClient";
module StopSolutionVersionCreation = {
  type t;
  type request = {
@as("solutionVersionArn") solutionVersionArn: option<arn>
}
  
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "StopSolutionVersionCreationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSolution = {
  type t;
  type request = {
@as("solutionArn") solutionArn: option<arn>
}
  
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DeleteSolutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSchema = {
  type t;
  type request = {
@as("schemaArn") schemaArn: option<arn>
}
  
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DeleteSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFilter = {
  type t;
  type request = {
@as("filterArn") filterArn: option<arn>
}
  
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DeleteFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteEventTracker = {
  type t;
  type request = {
@as("eventTrackerArn") eventTrackerArn: option<arn>
}
  
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DeleteEventTrackerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDatasetGroup = {
  type t;
  type request = {
@as("datasetGroupArn") datasetGroupArn: option<arn>
}
  
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DeleteDatasetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDataset = {
  type t;
  type request = {
@as("datasetArn") datasetArn: option<arn>
}
  
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DeleteDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCampaign = {
  type t;
  type request = {
@as("campaignArn") campaignArn: option<arn>
}
  
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DeleteCampaignCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateSolutionVersion = {
  type t;
  type request = {
@as("trainingMode") trainingMode: trainingMode,
@as("solutionArn") solutionArn: option<arn>
}
  type response = {
@as("solutionVersionArn") solutionVersionArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "CreateSolutionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSchema = {
  type t;
  type request = {
@as("schema") schema: option<avroSchema>,
@as("name") name: option<name>
}
  type response = {
@as("schemaArn") schemaArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "CreateSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFilter = {
  type t;
  type request = {
@as("filterExpression") filterExpression: option<filterExpression>,
@as("datasetGroupArn") datasetGroupArn: option<arn>,
@as("name") name: option<name>
}
  type response = {
@as("filterArn") filterArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "CreateFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEventTracker = {
  type t;
  type request = {
@as("datasetGroupArn") datasetGroupArn: option<arn>,
@as("name") name: option<name>
}
  type response = {
@as("trackingId") trackingId: trackingId,
@as("eventTrackerArn") eventTrackerArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "CreateEventTrackerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDatasetGroup = {
  type t;
  type request = {
@as("kmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("roleArn") roleArn: roleArn,
@as("name") name: option<name>
}
  type response = {
@as("datasetGroupArn") datasetGroupArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "CreateDatasetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataset = {
  type t;
  type request = {
@as("datasetType") datasetType: option<datasetType>,
@as("datasetGroupArn") datasetGroupArn: option<arn>,
@as("schemaArn") schemaArn: option<arn>,
@as("name") name: option<name>
}
  type response = {
@as("datasetArn") datasetArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "CreateDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSolutionMetrics = {
  type t;
  type request = {
@as("solutionVersionArn") solutionVersionArn: option<arn>
}
  type response = {
@as("metrics") metrics: metrics,
@as("solutionVersionArn") solutionVersionArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "GetSolutionMetricsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSchema = {
  type t;
  type request = {
@as("schemaArn") schemaArn: option<arn>
}
  type response = {
@as("schema") schema: datasetSchema
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRecipe = {
  type t;
  type request = {
@as("recipeArn") recipeArn: option<arn>
}
  type response = {
@as("recipe") recipe: recipe
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeRecipeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFilter = {
  type t;
  type request = {
@as("filterArn") filterArn: option<arn>
}
  type response = {
@as("filter") filter: filter
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventTracker = {
  type t;
  type request = {
@as("eventTrackerArn") eventTrackerArn: option<arn>
}
  type response = {
@as("eventTracker") eventTracker: eventTracker
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventTrackerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDatasetGroup = {
  type t;
  type request = {
@as("datasetGroupArn") datasetGroupArn: option<arn>
}
  type response = {
@as("datasetGroup") datasetGroup: datasetGroup
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeDatasetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataset = {
  type t;
  type request = {
@as("datasetArn") datasetArn: option<arn>
}
  type response = {
@as("dataset") dataset: dataset
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDatasetImportJob = {
  type t;
  type request = {
@as("roleArn") roleArn: option<roleArn>,
@as("dataSource") dataSource: option<dataSource>,
@as("datasetArn") datasetArn: option<arn>,
@as("jobName") jobName: option<name>
}
  type response = {
@as("datasetImportJobArn") datasetImportJobArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "CreateDatasetImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCampaign = {
  type t;
  type request = {
@as("campaignConfig") campaignConfig: campaignConfig,
@as("minProvisionedTPS") minProvisionedTPS: transactionsPerSecond,
@as("solutionVersionArn") solutionVersionArn: arn,
@as("campaignArn") campaignArn: option<arn>
}
  type response = {
@as("campaignArn") campaignArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "UpdateCampaignCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSolutions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("datasetGroupArn") datasetGroupArn: arn
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("solutions") solutions: solutions
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "ListSolutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSolutionVersions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("solutionArn") solutionArn: arn
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("solutionVersions") solutionVersions: solutionVersions
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "ListSolutionVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSchemas = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("schemas") schemas: schemas
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "ListSchemasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRecipes = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("recipeProvider") recipeProvider: recipeProvider
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("recipes") recipes: recipes
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "ListRecipesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFilters = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("datasetGroupArn") datasetGroupArn: arn
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("Filters") filters: filters
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "ListFiltersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEventTrackers = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("datasetGroupArn") datasetGroupArn: arn
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("eventTrackers") eventTrackers: eventTrackers
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "ListEventTrackersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatasets = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("datasetGroupArn") datasetGroupArn: arn
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("datasets") datasets: datasets
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "ListDatasetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatasetImportJobs = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("datasetArn") datasetArn: arn
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("datasetImportJobs") datasetImportJobs: datasetImportJobs
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "ListDatasetImportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatasetGroups = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("datasetGroups") datasetGroups: datasetGroups
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "ListDatasetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatasetExportJobs = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("datasetArn") datasetArn: arn
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("datasetExportJobs") datasetExportJobs: datasetExportJobs
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "ListDatasetExportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCampaigns = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("solutionArn") solutionArn: arn
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("campaigns") campaigns: campaigns
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "ListCampaignsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBatchInferenceJobs = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("solutionVersionArn") solutionVersionArn: arn
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("batchInferenceJobs") batchInferenceJobs: batchInferenceJobs
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "ListBatchInferenceJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFeatureTransformation = {
  type t;
  type request = {
@as("featureTransformationArn") featureTransformationArn: option<arn>
}
  type response = {
@as("featureTransformation") featureTransformation: featureTransformation
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeFeatureTransformationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDatasetImportJob = {
  type t;
  type request = {
@as("datasetImportJobArn") datasetImportJobArn: option<arn>
}
  type response = {
@as("datasetImportJob") datasetImportJob: datasetImportJob
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeDatasetImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDatasetExportJob = {
  type t;
  type request = {
@as("jobOutput") jobOutput: option<datasetExportJobOutput>,
@as("roleArn") roleArn: option<roleArn>,
@as("ingestionMode") ingestionMode: ingestionMode,
@as("datasetArn") datasetArn: option<arn>,
@as("jobName") jobName: option<name>
}
  type response = {
@as("datasetExportJobArn") datasetExportJobArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "CreateDatasetExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCampaign = {
  type t;
  type request = {
@as("campaignConfig") campaignConfig: campaignConfig,
@as("minProvisionedTPS") minProvisionedTPS: option<transactionsPerSecond>,
@as("solutionVersionArn") solutionVersionArn: option<arn>,
@as("name") name: option<name>
}
  type response = {
@as("campaignArn") campaignArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "CreateCampaignCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBatchInferenceJob = {
  type t;
  type request = {
@as("batchInferenceJobConfig") batchInferenceJobConfig: batchInferenceJobConfig,
@as("roleArn") roleArn: option<roleArn>,
@as("jobOutput") jobOutput: option<batchInferenceJobOutput>,
@as("jobInput") jobInput: option<batchInferenceJobInput>,
@as("numResults") numResults: numBatchResults,
@as("filterArn") filterArn: arn,
@as("solutionVersionArn") solutionVersionArn: option<arn>,
@as("jobName") jobName: option<name>
}
  type response = {
@as("batchInferenceJobArn") batchInferenceJobArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "CreateBatchInferenceJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDatasetExportJob = {
  type t;
  type request = {
@as("datasetExportJobArn") datasetExportJobArn: option<arn>
}
  type response = {
@as("datasetExportJob") datasetExportJob: datasetExportJob
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeDatasetExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBatchInferenceJob = {
  type t;
  type request = {
@as("batchInferenceJobArn") batchInferenceJobArn: option<arn>
}
  type response = {
@as("batchInferenceJob") batchInferenceJob: batchInferenceJob
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeBatchInferenceJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCampaign = {
  type t;
  type request = {
@as("campaignArn") campaignArn: option<arn>
}
  type response = {
@as("campaign") campaign: campaign
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeCampaignCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAlgorithm = {
  type t;
  type request = {
@as("algorithmArn") algorithmArn: option<arn>
}
  type response = {
@as("algorithm") algorithm: algorithm
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeAlgorithmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSolution = {
  type t;
  type request = {
@as("solutionConfig") solutionConfig: solutionConfig,
@as("eventType") eventType: eventType,
@as("datasetGroupArn") datasetGroupArn: option<arn>,
@as("recipeArn") recipeArn: arn,
@as("performAutoML") performAutoML: performAutoML,
@as("performHPO") performHPO: amazonawsBoolean,
@as("name") name: option<name>
}
  type response = {
@as("solutionArn") solutionArn: arn
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "CreateSolutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSolutionVersion = {
  type t;
  type request = {
@as("solutionVersionArn") solutionVersionArn: option<arn>
}
  type response = {
@as("solutionVersion") solutionVersion: solutionVersion
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeSolutionVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSolution = {
  type t;
  type request = {
@as("solutionArn") solutionArn: option<arn>
}
  type response = {
@as("solution") solution: solution
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "DescribeSolutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
