type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-personalize") @new
external createClient: unit => awsServiceClient = "PersonalizeClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tunable = bool
type transactionsPerSecond = int
type trainingMode = [@as("UPDATE") #UPDATE | @as("FULL") #FULL]
type trainingInputMode = string
type trainingHours = float
type trackingId = string
type status = string
type s3Location = string
type roleArn = string
type recipeType = string
type recipeProvider = [@as("SERVICE") #SERVICE]
type performHPO = bool
type performAutoML = bool
type parameterValue = string
type parameterName = string
type objectiveSensitivity = [
  | @as("OFF") #OFF
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
]
type numBatchResults = int
type nextToken = string
type name = string
type metricValue = float
type metricRegex = string
type metricName = string
type maxResults = int
type kmsKeyArn = string
type itemAttribute = string
type integerMinValue = int
type integerMaxValue = int
type ingestionMode = [@as("ALL") #ALL | @as("PUT") #PUT | @as("BULK") #BULK]
type hporesource = string
type hpoobjectiveType = string
type filterExpression = string
type failureReason = string
type eventValueThreshold = string
type eventType = string
type errorMessage = string
type dockerURI = string
type description = string
type date = Js.Date.t
type datasetType = string
type continuousMinValue = float
type continuousMaxValue = float
type categoricalValue = string
type boolean_ = bool
type avroSchema = string
type arn = string
type accountId = string
type solutionVersionSummary = {
  failureReason: option<failureReason>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  solutionVersionArn: option<arn>,
}
type solutionSummary = {
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  solutionArn: option<arn>,
  name: option<name>,
}
type s3DataConfig = {
  kmsKeyArn: option<kmsKeyArn>,
  path: s3Location,
}
type resourceConfig = Js.Dict.t<parameterValue>
type recipeSummary = {
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  recipeArn: option<arn>,
  name: option<name>,
}
type recipe = {
  lastUpdatedDateTime: option<date>,
  recipeType: option<recipeType>,
  creationDateTime: option<date>,
  description: option<description>,
  status: option<status>,
  featureTransformationArn: option<arn>,
  algorithmArn: option<arn>,
  recipeArn: option<arn>,
  name: option<name>,
}
type optimizationObjective = {
  objectiveSensitivity: option<objectiveSensitivity>,
  itemAttribute: option<itemAttribute>,
}
type metrics = Js.Dict.t<metricValue>
type integerHyperParameterRange = {
  maxValue: option<integerMaxValue>,
  minValue: option<integerMinValue>,
  name: option<parameterName>,
}
type hyperParameters = Js.Dict.t<parameterValue>
type hporesourceConfig = {
  maxParallelTrainingJobs: option<hporesource>,
  maxNumberOfTrainingJobs: option<hporesource>,
}
type hpoobjective = {
  metricRegex: option<metricRegex>,
  metricName: option<metricName>,
  @as("type") type_: option<hpoobjectiveType>,
}
type filterSummary = {
  status: option<status>,
  failureReason: option<failureReason>,
  datasetGroupArn: option<arn>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  filterArn: option<arn>,
  name: option<name>,
}
type filter = {
  status: option<status>,
  filterExpression: option<filterExpression>,
  failureReason: option<failureReason>,
  datasetGroupArn: option<arn>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  filterArn: option<arn>,
  name: option<name>,
}
type featurizationParameters = Js.Dict.t<parameterValue>
type featureTransformationParameters = Js.Dict.t<parameterValue>
type eventTrackerSummary = {
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  eventTrackerArn: option<arn>,
  name: option<name>,
}
type eventTracker = {
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  datasetGroupArn: option<arn>,
  trackingId: option<trackingId>,
  accountId: option<accountId>,
  eventTrackerArn: option<arn>,
  name: option<name>,
}
type defaultIntegerHyperParameterRange = {
  isTunable: option<tunable>,
  maxValue: option<integerMaxValue>,
  minValue: option<integerMinValue>,
  name: option<parameterName>,
}
type defaultContinuousHyperParameterRange = {
  isTunable: option<tunable>,
  maxValue: option<continuousMaxValue>,
  minValue: option<continuousMinValue>,
  name: option<parameterName>,
}
type datasetSummary = {
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  datasetType: option<datasetType>,
  datasetArn: option<arn>,
  name: option<name>,
}
type datasetSchemaSummary = {
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  schemaArn: option<arn>,
  name: option<name>,
}
type datasetSchema = {
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  schema: option<avroSchema>,
  schemaArn: option<arn>,
  name: option<name>,
}
type datasetImportJobSummary = {
  failureReason: option<failureReason>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  jobName: option<name>,
  datasetImportJobArn: option<arn>,
}
type datasetGroupSummary = {
  failureReason: option<failureReason>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  datasetGroupArn: option<arn>,
  name: option<name>,
}
type datasetGroup = {
  failureReason: option<failureReason>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  kmsKeyArn: option<kmsKeyArn>,
  roleArn: option<roleArn>,
  status: option<status>,
  datasetGroupArn: option<arn>,
  name: option<name>,
}
type datasetExportJobSummary = {
  failureReason: option<failureReason>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  jobName: option<name>,
  datasetExportJobArn: option<arn>,
}
type dataset = {
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  schemaArn: option<arn>,
  datasetType: option<datasetType>,
  datasetGroupArn: option<arn>,
  datasetArn: option<arn>,
  name: option<name>,
}
type dataSource = {dataLocation: option<s3Location>}
type continuousHyperParameterRange = {
  maxValue: option<continuousMaxValue>,
  minValue: option<continuousMinValue>,
  name: option<parameterName>,
}
type categoricalValues = array<categoricalValue>
type campaignSummary = {
  failureReason: option<failureReason>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  campaignArn: option<arn>,
  name: option<name>,
}
type batchInferenceJobSummary = {
  solutionVersionArn: option<arn>,
  failureReason: option<failureReason>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  jobName: option<name>,
  batchInferenceJobArn: option<arn>,
}
type autoMLResult = {bestRecipeArn: option<arn>}
type arnList = array<arn>
type algorithmImage = {
  dockerURI: dockerURI,
  name: option<name>,
}
type tunedHPOParams = {algorithmHyperParameters: option<hyperParameters>}
type solutions = array<solutionSummary>
type solutionVersions = array<solutionVersionSummary>
type schemas = array<datasetSchemaSummary>
type recipes = array<recipeSummary>
type integerHyperParameterRanges = array<integerHyperParameterRange>
type filters = array<filterSummary>
type featureTransformation = {
  status: option<status>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  defaultParameters: option<featurizationParameters>,
  featureTransformationArn: option<arn>,
  name: option<name>,
}
type eventTrackers = array<eventTrackerSummary>
type defaultIntegerHyperParameterRanges = array<defaultIntegerHyperParameterRange>
type defaultContinuousHyperParameterRanges = array<defaultContinuousHyperParameterRange>
type defaultCategoricalHyperParameterRange = {
  isTunable: option<tunable>,
  values: option<categoricalValues>,
  name: option<parameterName>,
}
type datasets = array<datasetSummary>
type datasetImportJobs = array<datasetImportJobSummary>
type datasetImportJob = {
  failureReason: option<failureReason>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  roleArn: option<arn>,
  dataSource: option<dataSource>,
  datasetArn: option<arn>,
  datasetImportJobArn: option<arn>,
  jobName: option<name>,
}
type datasetGroups = array<datasetGroupSummary>
type datasetExportJobs = array<datasetExportJobSummary>
type datasetExportJobOutput = {s3DataDestination: s3DataConfig}
type continuousHyperParameterRanges = array<continuousHyperParameterRange>
type categoricalHyperParameterRange = {
  values: option<categoricalValues>,
  name: option<parameterName>,
}
type campaigns = array<campaignSummary>
type campaignConfig = {itemExplorationConfig: option<hyperParameters>}
type batchInferenceJobs = array<batchInferenceJobSummary>
type batchInferenceJobOutput = {s3DataDestination: s3DataConfig}
type batchInferenceJobInput = {s3DataSource: s3DataConfig}
type batchInferenceJobConfig = {itemExplorationConfig: option<hyperParameters>}
type autoMLConfig = {
  recipeList: option<arnList>,
  metricName: option<metricName>,
}
type defaultCategoricalHyperParameterRanges = array<defaultCategoricalHyperParameterRange>
type datasetExportJob = {
  failureReason: option<failureReason>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  jobOutput: option<datasetExportJobOutput>,
  status: option<status>,
  roleArn: option<arn>,
  ingestionMode: option<ingestionMode>,
  datasetArn: option<arn>,
  datasetExportJobArn: option<arn>,
  jobName: option<name>,
}
type categoricalHyperParameterRanges = array<categoricalHyperParameterRange>
type campaignUpdateSummary = {
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  failureReason: option<failureReason>,
  status: option<status>,
  campaignConfig: option<campaignConfig>,
  minProvisionedTPS: option<transactionsPerSecond>,
  solutionVersionArn: option<arn>,
}
type batchInferenceJob = {
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  roleArn: option<roleArn>,
  batchInferenceJobConfig: option<batchInferenceJobConfig>,
  jobOutput: option<batchInferenceJobOutput>,
  jobInput: option<batchInferenceJobInput>,
  numResults: option<numBatchResults>,
  solutionVersionArn: option<arn>,
  failureReason: option<failureReason>,
  filterArn: option<arn>,
  batchInferenceJobArn: option<arn>,
  jobName: option<name>,
}
type hyperParameterRanges = {
  categoricalHyperParameterRanges: option<categoricalHyperParameterRanges>,
  continuousHyperParameterRanges: option<continuousHyperParameterRanges>,
  integerHyperParameterRanges: option<integerHyperParameterRanges>,
}
type defaultHyperParameterRanges = {
  categoricalHyperParameterRanges: option<defaultCategoricalHyperParameterRanges>,
  continuousHyperParameterRanges: option<defaultContinuousHyperParameterRanges>,
  integerHyperParameterRanges: option<defaultIntegerHyperParameterRanges>,
}
type campaign = {
  latestCampaignUpdate: option<campaignUpdateSummary>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  failureReason: option<failureReason>,
  status: option<status>,
  campaignConfig: option<campaignConfig>,
  minProvisionedTPS: option<transactionsPerSecond>,
  solutionVersionArn: option<arn>,
  campaignArn: option<arn>,
  name: option<name>,
}
type hpoconfig = {
  algorithmHyperParameterRanges: option<hyperParameterRanges>,
  hpoResourceConfig: option<hporesourceConfig>,
  hpoObjective: option<hpoobjective>,
}
type algorithm = {
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  roleArn: option<arn>,
  trainingInputMode: option<trainingInputMode>,
  defaultResourceConfig: option<resourceConfig>,
  defaultHyperParameterRanges: option<defaultHyperParameterRanges>,
  defaultHyperParameters: option<hyperParameters>,
  algorithmImage: option<algorithmImage>,
  algorithmArn: option<arn>,
  name: option<name>,
}
type solutionConfig = {
  optimizationObjective: option<optimizationObjective>,
  autoMLConfig: option<autoMLConfig>,
  featureTransformationParameters: option<featureTransformationParameters>,
  algorithmHyperParameters: option<hyperParameters>,
  hpoConfig: option<hpoconfig>,
  eventValueThreshold: option<eventValueThreshold>,
}
type solutionVersion = {
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  failureReason: option<failureReason>,
  status: option<status>,
  tunedHPOParams: option<tunedHPOParams>,
  trainingMode: option<trainingMode>,
  trainingHours: option<trainingHours>,
  solutionConfig: option<solutionConfig>,
  datasetGroupArn: option<arn>,
  eventType: option<eventType>,
  recipeArn: option<arn>,
  performAutoML: option<performAutoML>,
  performHPO: option<performHPO>,
  solutionArn: option<arn>,
  solutionVersionArn: option<arn>,
}
type solution = {
  latestSolutionVersion: option<solutionVersionSummary>,
  lastUpdatedDateTime: option<date>,
  creationDateTime: option<date>,
  status: option<status>,
  autoMLResult: option<autoMLResult>,
  solutionConfig: option<solutionConfig>,
  eventType: option<eventType>,
  datasetGroupArn: option<arn>,
  recipeArn: option<arn>,
  performAutoML: option<performAutoML>,
  performHPO: option<performHPO>,
  solutionArn: option<arn>,
  name: option<name>,
}

module StopSolutionVersionCreation = {
  type t
  type request = {solutionVersionArn: arn}

  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "StopSolutionVersionCreationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSolution = {
  type t
  type request = {solutionArn: arn}

  @module("@aws-sdk/client-personalize") @new external new: request => t = "DeleteSolutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSchema = {
  type t
  type request = {schemaArn: arn}

  @module("@aws-sdk/client-personalize") @new external new: request => t = "DeleteSchemaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFilter = {
  type t
  type request = {filterArn: arn}

  @module("@aws-sdk/client-personalize") @new external new: request => t = "DeleteFilterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEventTracker = {
  type t
  type request = {eventTrackerArn: arn}

  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DeleteEventTrackerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDatasetGroup = {
  type t
  type request = {datasetGroupArn: arn}

  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DeleteDatasetGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataset = {
  type t
  type request = {datasetArn: arn}

  @module("@aws-sdk/client-personalize") @new external new: request => t = "DeleteDatasetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCampaign = {
  type t
  type request = {campaignArn: arn}

  @module("@aws-sdk/client-personalize") @new external new: request => t = "DeleteCampaignCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateSolutionVersion = {
  type t
  type request = {
    trainingMode: option<trainingMode>,
    solutionArn: arn,
  }
  type response = {solutionVersionArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "CreateSolutionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSchema = {
  type t
  type request = {
    schema: avroSchema,
    name: name,
  }
  type response = {schemaArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "CreateSchemaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFilter = {
  type t
  type request = {
    filterExpression: filterExpression,
    datasetGroupArn: arn,
    name: name,
  }
  type response = {filterArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "CreateFilterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventTracker = {
  type t
  type request = {
    datasetGroupArn: arn,
    name: name,
  }
  type response = {
    trackingId: option<trackingId>,
    eventTrackerArn: option<arn>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "CreateEventTrackerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDatasetGroup = {
  type t
  type request = {
    kmsKeyArn: option<kmsKeyArn>,
    roleArn: option<roleArn>,
    name: name,
  }
  type response = {datasetGroupArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "CreateDatasetGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataset = {
  type t
  type request = {
    datasetType: datasetType,
    datasetGroupArn: arn,
    schemaArn: arn,
    name: name,
  }
  type response = {datasetArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "CreateDatasetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSolutionMetrics = {
  type t
  type request = {solutionVersionArn: arn}
  type response = {
    metrics: option<metrics>,
    solutionVersionArn: option<arn>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "GetSolutionMetricsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSchema = {
  type t
  type request = {schemaArn: arn}
  type response = {schema: option<datasetSchema>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "DescribeSchemaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRecipe = {
  type t
  type request = {recipeArn: arn}
  type response = {recipe: option<recipe>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "DescribeRecipeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFilter = {
  type t
  type request = {filterArn: arn}
  type response = {filter: option<filter>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "DescribeFilterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventTracker = {
  type t
  type request = {eventTrackerArn: arn}
  type response = {eventTracker: option<eventTracker>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeEventTrackerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDatasetGroup = {
  type t
  type request = {datasetGroupArn: arn}
  type response = {datasetGroup: option<datasetGroup>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeDatasetGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataset = {
  type t
  type request = {datasetArn: arn}
  type response = {dataset: option<dataset>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "DescribeDatasetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDatasetImportJob = {
  type t
  type request = {
    roleArn: roleArn,
    dataSource: dataSource,
    datasetArn: arn,
    jobName: name,
  }
  type response = {datasetImportJobArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "CreateDatasetImportJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCampaign = {
  type t
  type request = {
    campaignConfig: option<campaignConfig>,
    minProvisionedTPS: option<transactionsPerSecond>,
    solutionVersionArn: option<arn>,
    campaignArn: arn,
  }
  type response = {campaignArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "UpdateCampaignCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSolutions = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    datasetGroupArn: option<arn>,
  }
  type response = {
    nextToken: option<nextToken>,
    solutions: option<solutions>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "ListSolutionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSolutionVersions = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    solutionArn: option<arn>,
  }
  type response = {
    nextToken: option<nextToken>,
    solutionVersions: option<solutionVersions>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "ListSolutionVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSchemas = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    schemas: option<schemas>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "ListSchemasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecipes = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    recipeProvider: option<recipeProvider>,
  }
  type response = {
    nextToken: option<nextToken>,
    recipes: option<recipes>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "ListRecipesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFilters = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    datasetGroupArn: option<arn>,
  }
  type response = {
    nextToken: option<nextToken>,
    @as("Filters") filters: option<filters>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "ListFiltersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventTrackers = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    datasetGroupArn: option<arn>,
  }
  type response = {
    nextToken: option<nextToken>,
    eventTrackers: option<eventTrackers>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "ListEventTrackersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasets = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    datasetGroupArn: option<arn>,
  }
  type response = {
    nextToken: option<nextToken>,
    datasets: option<datasets>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "ListDatasetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasetImportJobs = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    datasetArn: option<arn>,
  }
  type response = {
    nextToken: option<nextToken>,
    datasetImportJobs: option<datasetImportJobs>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "ListDatasetImportJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasetGroups = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    datasetGroups: option<datasetGroups>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "ListDatasetGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasetExportJobs = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    datasetArn: option<arn>,
  }
  type response = {
    nextToken: option<nextToken>,
    datasetExportJobs: option<datasetExportJobs>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "ListDatasetExportJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCampaigns = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    solutionArn: option<arn>,
  }
  type response = {
    nextToken: option<nextToken>,
    campaigns: option<campaigns>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "ListCampaignsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBatchInferenceJobs = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    solutionVersionArn: option<arn>,
  }
  type response = {
    nextToken: option<nextToken>,
    batchInferenceJobs: option<batchInferenceJobs>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "ListBatchInferenceJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFeatureTransformation = {
  type t
  type request = {featureTransformationArn: arn}
  type response = {featureTransformation: option<featureTransformation>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeFeatureTransformationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDatasetImportJob = {
  type t
  type request = {datasetImportJobArn: arn}
  type response = {datasetImportJob: option<datasetImportJob>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeDatasetImportJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDatasetExportJob = {
  type t
  type request = {
    jobOutput: datasetExportJobOutput,
    roleArn: roleArn,
    ingestionMode: option<ingestionMode>,
    datasetArn: arn,
    jobName: name,
  }
  type response = {datasetExportJobArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "CreateDatasetExportJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCampaign = {
  type t
  type request = {
    campaignConfig: option<campaignConfig>,
    minProvisionedTPS: transactionsPerSecond,
    solutionVersionArn: arn,
    name: name,
  }
  type response = {campaignArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "CreateCampaignCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBatchInferenceJob = {
  type t
  type request = {
    batchInferenceJobConfig: option<batchInferenceJobConfig>,
    roleArn: roleArn,
    jobOutput: batchInferenceJobOutput,
    jobInput: batchInferenceJobInput,
    numResults: option<numBatchResults>,
    filterArn: option<arn>,
    solutionVersionArn: arn,
    jobName: name,
  }
  type response = {batchInferenceJobArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "CreateBatchInferenceJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDatasetExportJob = {
  type t
  type request = {datasetExportJobArn: arn}
  type response = {datasetExportJob: option<datasetExportJob>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeDatasetExportJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBatchInferenceJob = {
  type t
  type request = {batchInferenceJobArn: arn}
  type response = {batchInferenceJob: option<batchInferenceJob>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeBatchInferenceJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCampaign = {
  type t
  type request = {campaignArn: arn}
  type response = {campaign: option<campaign>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "DescribeCampaignCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlgorithm = {
  type t
  type request = {algorithmArn: arn}
  type response = {algorithm: option<algorithm>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeAlgorithmCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSolution = {
  type t
  type request = {
    solutionConfig: option<solutionConfig>,
    eventType: option<eventType>,
    datasetGroupArn: arn,
    recipeArn: option<arn>,
    performAutoML: option<performAutoML>,
    performHPO: option<boolean_>,
    name: name,
  }
  type response = {solutionArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "CreateSolutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSolutionVersion = {
  type t
  type request = {solutionVersionArn: arn}
  type response = {solutionVersion: option<solutionVersion>}
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeSolutionVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSolution = {
  type t
  type request = {solutionArn: arn}
  type response = {solution: option<solution>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "DescribeSolutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
