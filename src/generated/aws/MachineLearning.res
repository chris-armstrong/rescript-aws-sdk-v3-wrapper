type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-machinelearning") @new
external createClient: unit => awsServiceClient = "MachineLearningClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type floatLabel = float
type vipURL = string
type verbose = bool
type variableValue = string
type variableName = string
type taggableResourceType = [
  | @as("MLModel") #MLModel
  | @as("Evaluation") #Evaluation
  | @as("DataSource") #DataSource
  | @as("BatchPrediction") #BatchPrediction
]
type tagValue = string
type tagKey = string
type stringType = string
type sortOrder = [@as("dsc") #Dsc | @as("asc") #Asc]
type scoreValue = float
type scoreThreshold = float
type s3Url = string
type roleARN = string
type redshiftSelectSqlQuery = string
type redshiftDatabaseUsername = string
type redshiftDatabasePassword = string
type redshiftDatabaseName = string
type redshiftClusterIdentifier = string
type recipe = string
type realtimeEndpointStatus = [
  | @as("FAILED") #FAILED
  | @as("UPDATING") #UPDATING
  | @as("READY") #READY
  | @as("NONE") #NONE
]
type rdsselectSqlQuery = string
type rdsinstanceIdentifier = string
type rdsdatabaseUsername = string
type rdsdatabasePassword = string
type rdsdatabaseName = string
type presignedS3Url = string
type performanceMetricsPropertyValue = string
type performanceMetricsPropertyKey = string
type pageLimit = int
type message = string
type mlmodelType = [
  | @as("MULTICLASS") #MULTICLASS
  | @as("BINARY") #BINARY
  | @as("REGRESSION") #REGRESSION
]
type mlmodelName = string
type mlmodelFilterVariable = [
  | @as("TrainingDataURI") #TrainingDataURI
  | @as("Algorithm") #Algorithm
  | @as("MLModelType") #MLModelType
  | @as("RealtimeEndpointStatus") #RealtimeEndpointStatus
  | @as("TrainingDataSourceId") #TrainingDataSourceId
  | @as("IAMUser") #IAMUser
  | @as("Name") #Name
  | @as("Status") #Status
  | @as("LastUpdatedAt") #LastUpdatedAt
  | @as("CreatedAt") #CreatedAt
]
type longType = float
type label = string
type integerType = int
type evaluationFilterVariable = [
  | @as("DataURI") #DataURI
  | @as("DataSourceId") #DataSourceId
  | @as("MLModelId") #MLModelId
  | @as("IAMUser") #IAMUser
  | @as("Name") #Name
  | @as("Status") #Status
  | @as("LastUpdatedAt") #LastUpdatedAt
  | @as("CreatedAt") #CreatedAt
]
type errorMessage = string
type errorCode = int
type epochTime = Js.Date.t
type entityStatus = [
  | @as("DELETED") #DELETED
  | @as("COMPLETED") #COMPLETED
  | @as("FAILED") #FAILED
  | @as("INPROGRESS") #INPROGRESS
  | @as("PENDING") #PENDING
]
type entityName = string
type entityId = string
type edpsubnetId = string
type edpserviceRole = string
type edpsecurityGroupId = string
type edpresourceRole = string
type edppipelineId = string
type detailsValue = string
type detailsAttributes = [
  | @as("Algorithm") #Algorithm
  | @as("PredictiveModelType") #PredictiveModelType
]
type dataSourceFilterVariable = [
  | @as("IAMUser") #IAMUser
  | @as("DataLocationS3") #DataLocationS3
  | @as("Name") #Name
  | @as("Status") #Status
  | @as("LastUpdatedAt") #LastUpdatedAt
  | @as("CreatedAt") #CreatedAt
]
type dataSchema = string
type dataRearrangement = string
type computeStatistics = bool
type comparatorValue = string
type batchPredictionFilterVariable = [
  | @as("DataURI") #DataURI
  | @as("DataSourceId") #DataSourceId
  | @as("MLModelId") #MLModelId
  | @as("IAMUser") #IAMUser
  | @as("Name") #Name
  | @as("Status") #Status
  | @as("LastUpdatedAt") #LastUpdatedAt
  | @as("CreatedAt") #CreatedAt
]
type awsUserArn = string
type algorithm = [@as("sgd") #Sgd]
type trainingParameters = Js.Dict.t<stringType>
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: option<tagValue>,
  @as("Key") key: option<tagKey>,
}
type scoreValuePerLabelMap = Js.Dict.t<scoreValue>
type s3DataSpec = {
  @as("DataSchemaLocationS3") dataSchemaLocationS3: option<s3Url>,
  @as("DataSchema") dataSchema: option<dataSchema>,
  @as("DataRearrangement") dataRearrangement: option<dataRearrangement>,
  @as("DataLocationS3") dataLocationS3: s3Url,
}
type redshiftDatabaseCredentials = {
  @as("Password") password: redshiftDatabasePassword,
  @as("Username") username: redshiftDatabaseUsername,
}
type redshiftDatabase = {
  @as("ClusterIdentifier") clusterIdentifier: redshiftClusterIdentifier,
  @as("DatabaseName") databaseName: redshiftDatabaseName,
}
type record = Js.Dict.t<variableValue>
type realtimeEndpointInfo = {
  @as("EndpointStatus") endpointStatus: option<realtimeEndpointStatus>,
  @as("EndpointUrl") endpointUrl: option<vipURL>,
  @as("CreatedAt") createdAt: option<epochTime>,
  @as("PeakRequestsPerSecond") peakRequestsPerSecond: option<integerType>,
}
type rdsdatabaseCredentials = {
  @as("Password") password: rdsdatabasePassword,
  @as("Username") username: rdsdatabaseUsername,
}
type rdsdatabase = {
  @as("DatabaseName") databaseName: rdsdatabaseName,
  @as("InstanceIdentifier") instanceIdentifier: rdsinstanceIdentifier,
}
type performanceMetricsProperties = Js.Dict.t<performanceMetricsPropertyValue>
type edpsecurityGroupIds = array<edpsecurityGroupId>
type detailsMap = Js.Dict.t<detailsValue>
type batchPrediction = {
  @as("InvalidRecordCount") invalidRecordCount: option<longType>,
  @as("TotalRecordCount") totalRecordCount: option<longType>,
  @as("StartedAt") startedAt: option<epochTime>,
  @as("FinishedAt") finishedAt: option<epochTime>,
  @as("ComputeTime") computeTime: option<longType>,
  @as("Message") message: option<message>,
  @as("OutputUri") outputUri: option<s3Url>,
  @as("Status") status: option<entityStatus>,
  @as("Name") name: option<entityName>,
  @as("LastUpdatedAt") lastUpdatedAt: option<epochTime>,
  @as("CreatedAt") createdAt: option<epochTime>,
  @as("CreatedByIamUser") createdByIamUser: option<awsUserArn>,
  @as("InputDataLocationS3") inputDataLocationS3: option<s3Url>,
  @as("BatchPredictionDataSourceId") batchPredictionDataSourceId: option<entityId>,
  @as("MLModelId") mlmodelId: option<entityId>,
  @as("BatchPredictionId") batchPredictionId: option<entityId>,
}
type tagList_ = array<tag>
type redshiftMetadata = {
  @as("SelectSqlQuery") selectSqlQuery: option<redshiftSelectSqlQuery>,
  @as("DatabaseUserName") databaseUserName: option<redshiftDatabaseUsername>,
  @as("RedshiftDatabase") redshiftDatabase: option<redshiftDatabase>,
}
type redshiftDataSpec = {
  @as("DataSchemaUri") dataSchemaUri: option<s3Url>,
  @as("DataSchema") dataSchema: option<dataSchema>,
  @as("DataRearrangement") dataRearrangement: option<dataRearrangement>,
  @as("S3StagingLocation") s3StagingLocation: s3Url,
  @as("DatabaseCredentials") databaseCredentials: redshiftDatabaseCredentials,
  @as("SelectSqlQuery") selectSqlQuery: redshiftSelectSqlQuery,
  @as("DatabaseInformation") databaseInformation: redshiftDatabase,
}
type rdsmetadata = {
  @as("DataPipelineId") dataPipelineId: option<edppipelineId>,
  @as("ServiceRole") serviceRole: option<edpserviceRole>,
  @as("ResourceRole") resourceRole: option<edpresourceRole>,
  @as("SelectSqlQuery") selectSqlQuery: option<rdsselectSqlQuery>,
  @as("DatabaseUserName") databaseUserName: option<rdsdatabaseUsername>,
  @as("Database") database: option<rdsdatabase>,
}
type rdsdataSpec = {
  @as("SecurityGroupIds") securityGroupIds: edpsecurityGroupIds,
  @as("SubnetId") subnetId: edpsubnetId,
  @as("ServiceRole") serviceRole: edpserviceRole,
  @as("ResourceRole") resourceRole: edpresourceRole,
  @as("DataSchemaUri") dataSchemaUri: option<s3Url>,
  @as("DataSchema") dataSchema: option<dataSchema>,
  @as("DataRearrangement") dataRearrangement: option<dataRearrangement>,
  @as("S3StagingLocation") s3StagingLocation: s3Url,
  @as("DatabaseCredentials") databaseCredentials: rdsdatabaseCredentials,
  @as("SelectSqlQuery") selectSqlQuery: rdsselectSqlQuery,
  @as("DatabaseInformation") databaseInformation: rdsdatabase,
}
type prediction = {
  details: option<detailsMap>,
  predictedScores: option<scoreValuePerLabelMap>,
  predictedValue: option<floatLabel>,
  predictedLabel: option<label>,
}
type performanceMetrics = {@as("Properties") properties: option<performanceMetricsProperties>}
type mlmodel = {
  @as("StartedAt") startedAt: option<epochTime>,
  @as("FinishedAt") finishedAt: option<epochTime>,
  @as("ComputeTime") computeTime: option<longType>,
  @as("Message") message: option<message>,
  @as("ScoreThresholdLastUpdatedAt") scoreThresholdLastUpdatedAt: option<epochTime>,
  @as("ScoreThreshold") scoreThreshold: option<scoreThreshold>,
  @as("MLModelType") mlmodelType: option<mlmodelType>,
  @as("Algorithm") algorithm: option<algorithm>,
  @as("InputDataLocationS3") inputDataLocationS3: option<s3Url>,
  @as("TrainingParameters") trainingParameters: option<trainingParameters>,
  @as("EndpointInfo") endpointInfo: option<realtimeEndpointInfo>,
  @as("SizeInBytes") sizeInBytes: option<longType>,
  @as("Status") status: option<entityStatus>,
  @as("Name") name: option<mlmodelName>,
  @as("LastUpdatedAt") lastUpdatedAt: option<epochTime>,
  @as("CreatedAt") createdAt: option<epochTime>,
  @as("CreatedByIamUser") createdByIamUser: option<awsUserArn>,
  @as("TrainingDataSourceId") trainingDataSourceId: option<entityId>,
  @as("MLModelId") mlmodelId: option<entityId>,
}
type batchPredictions = array<batchPrediction>
type mlmodels = array<mlmodel>
type evaluation = {
  @as("StartedAt") startedAt: option<epochTime>,
  @as("FinishedAt") finishedAt: option<epochTime>,
  @as("ComputeTime") computeTime: option<longType>,
  @as("Message") message: option<message>,
  @as("PerformanceMetrics") performanceMetrics: option<performanceMetrics>,
  @as("Status") status: option<entityStatus>,
  @as("Name") name: option<entityName>,
  @as("LastUpdatedAt") lastUpdatedAt: option<epochTime>,
  @as("CreatedAt") createdAt: option<epochTime>,
  @as("CreatedByIamUser") createdByIamUser: option<awsUserArn>,
  @as("InputDataLocationS3") inputDataLocationS3: option<s3Url>,
  @as("EvaluationDataSourceId") evaluationDataSourceId: option<entityId>,
  @as("MLModelId") mlmodelId: option<entityId>,
  @as("EvaluationId") evaluationId: option<entityId>,
}
type dataSource = {
  @as("StartedAt") startedAt: option<epochTime>,
  @as("FinishedAt") finishedAt: option<epochTime>,
  @as("ComputeTime") computeTime: option<longType>,
  @as("ComputeStatistics") computeStatistics: option<computeStatistics>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("RDSMetadata") rdsmetadata: option<rdsmetadata>,
  @as("RedshiftMetadata") redshiftMetadata: option<redshiftMetadata>,
  @as("Message") message: option<message>,
  @as("Status") status: option<entityStatus>,
  @as("Name") name: option<entityName>,
  @as("NumberOfFiles") numberOfFiles: option<longType>,
  @as("DataSizeInBytes") dataSizeInBytes: option<longType>,
  @as("LastUpdatedAt") lastUpdatedAt: option<epochTime>,
  @as("CreatedAt") createdAt: option<epochTime>,
  @as("CreatedByIamUser") createdByIamUser: option<awsUserArn>,
  @as("DataRearrangement") dataRearrangement: option<dataRearrangement>,
  @as("DataLocationS3") dataLocationS3: option<s3Url>,
  @as("DataSourceId") dataSourceId: option<entityId>,
}
type evaluations = array<evaluation>
type dataSources = array<dataSource>

module UpdateMLModel = {
  type t
  type request = {
    @as("ScoreThreshold") scoreThreshold: option<scoreThreshold>,
    @as("MLModelName") mlmodelName: option<entityName>,
    @as("MLModelId") mlmodelId: entityId,
  }
  type response = {@as("MLModelId") mlmodelId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "UpdateMLModelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEvaluation = {
  type t
  type request = {
    @as("EvaluationName") evaluationName: entityName,
    @as("EvaluationId") evaluationId: entityId,
  }
  type response = {@as("EvaluationId") evaluationId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "UpdateEvaluationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataSource = {
  type t
  type request = {
    @as("DataSourceName") dataSourceName: entityName,
    @as("DataSourceId") dataSourceId: entityId,
  }
  type response = {@as("DataSourceId") dataSourceId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "UpdateDataSourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBatchPrediction = {
  type t
  type request = {
    @as("BatchPredictionName") batchPredictionName: entityName,
    @as("BatchPredictionId") batchPredictionId: entityId,
  }
  type response = {@as("BatchPredictionId") batchPredictionId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "UpdateBatchPredictionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBatchPrediction = {
  type t
  type request = {@as("BatchPredictionId") batchPredictionId: entityId}
  type response = {
    @as("InvalidRecordCount") invalidRecordCount: option<longType>,
    @as("TotalRecordCount") totalRecordCount: option<longType>,
    @as("StartedAt") startedAt: option<epochTime>,
    @as("FinishedAt") finishedAt: option<epochTime>,
    @as("ComputeTime") computeTime: option<longType>,
    @as("Message") message: option<message>,
    @as("LogUri") logUri: option<presignedS3Url>,
    @as("OutputUri") outputUri: option<s3Url>,
    @as("Status") status: option<entityStatus>,
    @as("Name") name: option<entityName>,
    @as("LastUpdatedAt") lastUpdatedAt: option<epochTime>,
    @as("CreatedAt") createdAt: option<epochTime>,
    @as("CreatedByIamUser") createdByIamUser: option<awsUserArn>,
    @as("InputDataLocationS3") inputDataLocationS3: option<s3Url>,
    @as("BatchPredictionDataSourceId") batchPredictionDataSourceId: option<entityId>,
    @as("MLModelId") mlmodelId: option<entityId>,
    @as("BatchPredictionId") batchPredictionId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "GetBatchPredictionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMLModel = {
  type t
  type request = {@as("MLModelId") mlmodelId: entityId}
  type response = {@as("MLModelId") mlmodelId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "DeleteMLModelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEvaluation = {
  type t
  type request = {@as("EvaluationId") evaluationId: entityId}
  type response = {@as("EvaluationId") evaluationId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "DeleteEvaluationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDataSource = {
  type t
  type request = {@as("DataSourceId") dataSourceId: entityId}
  type response = {@as("DataSourceId") dataSourceId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "DeleteDataSourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBatchPrediction = {
  type t
  type request = {@as("BatchPredictionId") batchPredictionId: entityId}
  type response = {@as("BatchPredictionId") batchPredictionId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "DeleteBatchPredictionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEvaluation = {
  type t
  type request = {
    @as("EvaluationDataSourceId") evaluationDataSourceId: entityId,
    @as("MLModelId") mlmodelId: entityId,
    @as("EvaluationName") evaluationName: option<entityName>,
    @as("EvaluationId") evaluationId: entityId,
  }
  type response = {@as("EvaluationId") evaluationId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "CreateEvaluationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBatchPrediction = {
  type t
  type request = {
    @as("OutputUri") outputUri: s3Url,
    @as("BatchPredictionDataSourceId") batchPredictionDataSourceId: entityId,
    @as("MLModelId") mlmodelId: entityId,
    @as("BatchPredictionName") batchPredictionName: option<entityName>,
    @as("BatchPredictionId") batchPredictionId: entityId,
  }
  type response = {@as("BatchPredictionId") batchPredictionId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "CreateBatchPredictionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMLModel = {
  type t
  type request = {
    @as("Verbose") verbose: option<verbose>,
    @as("MLModelId") mlmodelId: entityId,
  }
  type response = {
    @as("Schema") schema: option<dataSchema>,
    @as("Recipe") recipe: option<recipe>,
    @as("StartedAt") startedAt: option<epochTime>,
    @as("FinishedAt") finishedAt: option<epochTime>,
    @as("ComputeTime") computeTime: option<longType>,
    @as("Message") message: option<message>,
    @as("LogUri") logUri: option<presignedS3Url>,
    @as("ScoreThresholdLastUpdatedAt") scoreThresholdLastUpdatedAt: option<epochTime>,
    @as("ScoreThreshold") scoreThreshold: option<scoreThreshold>,
    @as("MLModelType") mlmodelType: option<mlmodelType>,
    @as("InputDataLocationS3") inputDataLocationS3: option<s3Url>,
    @as("TrainingParameters") trainingParameters: option<trainingParameters>,
    @as("EndpointInfo") endpointInfo: option<realtimeEndpointInfo>,
    @as("SizeInBytes") sizeInBytes: option<longType>,
    @as("Status") status: option<entityStatus>,
    @as("Name") name: option<mlmodelName>,
    @as("LastUpdatedAt") lastUpdatedAt: option<epochTime>,
    @as("CreatedAt") createdAt: option<epochTime>,
    @as("CreatedByIamUser") createdByIamUser: option<awsUserArn>,
    @as("TrainingDataSourceId") trainingDataSourceId: option<entityId>,
    @as("MLModelId") mlmodelId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new external new_: request => t = "GetMLModelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTags = {
  type t
  type request = {
    @as("ResourceType") resourceType: taggableResourceType,
    @as("ResourceId") resourceId: entityId,
    @as("TagKeys") tagKeys: tagKeyList,
  }
  type response = {
    @as("ResourceType") resourceType: option<taggableResourceType>,
    @as("ResourceId") resourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new external new_: request => t = "DeleteTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRealtimeEndpoint = {
  type t
  type request = {@as("MLModelId") mlmodelId: entityId}
  type response = {
    @as("RealtimeEndpointInfo") realtimeEndpointInfo: option<realtimeEndpointInfo>,
    @as("MLModelId") mlmodelId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "DeleteRealtimeEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRealtimeEndpoint = {
  type t
  type request = {@as("MLModelId") mlmodelId: entityId}
  type response = {
    @as("RealtimeEndpointInfo") realtimeEndpointInfo: option<realtimeEndpointInfo>,
    @as("MLModelId") mlmodelId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "CreateRealtimeEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMLModel = {
  type t
  type request = {
    @as("RecipeUri") recipeUri: option<s3Url>,
    @as("Recipe") recipe: option<recipe>,
    @as("TrainingDataSourceId") trainingDataSourceId: entityId,
    @as("Parameters") parameters: option<trainingParameters>,
    @as("MLModelType") mlmodelType: mlmodelType,
    @as("MLModelName") mlmodelName: option<entityName>,
    @as("MLModelId") mlmodelId: entityId,
  }
  type response = {@as("MLModelId") mlmodelId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "CreateMLModelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataSourceFromS3 = {
  type t
  type request = {
    @as("ComputeStatistics") computeStatistics: option<computeStatistics>,
    @as("DataSpec") dataSpec: s3DataSpec,
    @as("DataSourceName") dataSourceName: option<entityName>,
    @as("DataSourceId") dataSourceId: entityId,
  }
  type response = {@as("DataSourceId") dataSourceId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "CreateDataSourceFromS3Command"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Predict = {
  type t
  type request = {
    @as("PredictEndpoint") predictEndpoint: vipURL,
    @as("Record") record: record,
    @as("MLModelId") mlmodelId: entityId,
  }
  type response = {@as("Prediction") prediction: option<prediction>}
  @module("@aws-sdk/client-machinelearning") @new external new_: request => t = "PredictCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEvaluation = {
  type t
  type request = {@as("EvaluationId") evaluationId: entityId}
  type response = {
    @as("StartedAt") startedAt: option<epochTime>,
    @as("FinishedAt") finishedAt: option<epochTime>,
    @as("ComputeTime") computeTime: option<longType>,
    @as("Message") message: option<message>,
    @as("LogUri") logUri: option<presignedS3Url>,
    @as("PerformanceMetrics") performanceMetrics: option<performanceMetrics>,
    @as("Status") status: option<entityStatus>,
    @as("Name") name: option<entityName>,
    @as("LastUpdatedAt") lastUpdatedAt: option<epochTime>,
    @as("CreatedAt") createdAt: option<epochTime>,
    @as("CreatedByIamUser") createdByIamUser: option<awsUserArn>,
    @as("InputDataLocationS3") inputDataLocationS3: option<s3Url>,
    @as("EvaluationDataSourceId") evaluationDataSourceId: option<entityId>,
    @as("MLModelId") mlmodelId: option<entityId>,
    @as("EvaluationId") evaluationId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "GetEvaluationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDataSource = {
  type t
  type request = {
    @as("Verbose") verbose: option<verbose>,
    @as("DataSourceId") dataSourceId: entityId,
  }
  type response = {
    @as("DataSourceSchema") dataSourceSchema: option<dataSchema>,
    @as("StartedAt") startedAt: option<epochTime>,
    @as("FinishedAt") finishedAt: option<epochTime>,
    @as("ComputeTime") computeTime: option<longType>,
    @as("ComputeStatistics") computeStatistics: option<computeStatistics>,
    @as("RoleARN") roleARN: option<roleARN>,
    @as("RDSMetadata") rdsmetadata: option<rdsmetadata>,
    @as("RedshiftMetadata") redshiftMetadata: option<redshiftMetadata>,
    @as("Message") message: option<message>,
    @as("LogUri") logUri: option<presignedS3Url>,
    @as("Status") status: option<entityStatus>,
    @as("Name") name: option<entityName>,
    @as("NumberOfFiles") numberOfFiles: option<longType>,
    @as("DataSizeInBytes") dataSizeInBytes: option<longType>,
    @as("LastUpdatedAt") lastUpdatedAt: option<epochTime>,
    @as("CreatedAt") createdAt: option<epochTime>,
    @as("CreatedByIamUser") createdByIamUser: option<awsUserArn>,
    @as("DataRearrangement") dataRearrangement: option<dataRearrangement>,
    @as("DataLocationS3") dataLocationS3: option<s3Url>,
    @as("DataSourceId") dataSourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "GetDataSourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTags = {
  type t
  type request = {
    @as("ResourceType") resourceType: taggableResourceType,
    @as("ResourceId") resourceId: entityId,
  }
  type response = {
    @as("Tags") tags: option<tagList_>,
    @as("ResourceType") resourceType: option<taggableResourceType>,
    @as("ResourceId") resourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "DescribeTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBatchPredictions = {
  type t
  type request = {
    @as("Limit") limit: option<pageLimit>,
    @as("NextToken") nextToken: option<stringType>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("Prefix") prefix: option<comparatorValue>,
    @as("NE") ne: option<comparatorValue>,
    @as("LE") le: option<comparatorValue>,
    @as("GE") ge: option<comparatorValue>,
    @as("LT") lt: option<comparatorValue>,
    @as("GT") gt: option<comparatorValue>,
    @as("EQ") eq: option<comparatorValue>,
    @as("FilterVariable") filterVariable: option<batchPredictionFilterVariable>,
  }
  type response = {
    @as("NextToken") nextToken: option<stringType>,
    @as("Results") results: option<batchPredictions>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "DescribeBatchPredictionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataSourceFromRedshift = {
  type t
  type request = {
    @as("ComputeStatistics") computeStatistics: option<computeStatistics>,
    @as("RoleARN") roleARN: roleARN,
    @as("DataSpec") dataSpec: redshiftDataSpec,
    @as("DataSourceName") dataSourceName: option<entityName>,
    @as("DataSourceId") dataSourceId: entityId,
  }
  type response = {@as("DataSourceId") dataSourceId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "CreateDataSourceFromRedshiftCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataSourceFromRDS = {
  type t
  type request = {
    @as("ComputeStatistics") computeStatistics: option<computeStatistics>,
    @as("RoleARN") roleARN: roleARN,
    @as("RDSData") rdsdata: rdsdataSpec,
    @as("DataSourceName") dataSourceName: option<entityName>,
    @as("DataSourceId") dataSourceId: entityId,
  }
  type response = {@as("DataSourceId") dataSourceId: option<entityId>}
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "CreateDataSourceFromRDSCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTags = {
  type t
  type request = {
    @as("ResourceType") resourceType: taggableResourceType,
    @as("ResourceId") resourceId: entityId,
    @as("Tags") tags: tagList_,
  }
  type response = {
    @as("ResourceType") resourceType: option<taggableResourceType>,
    @as("ResourceId") resourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new external new_: request => t = "AddTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMLModels = {
  type t
  type request = {
    @as("Limit") limit: option<pageLimit>,
    @as("NextToken") nextToken: option<stringType>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("Prefix") prefix: option<comparatorValue>,
    @as("NE") ne: option<comparatorValue>,
    @as("LE") le: option<comparatorValue>,
    @as("GE") ge: option<comparatorValue>,
    @as("LT") lt: option<comparatorValue>,
    @as("GT") gt: option<comparatorValue>,
    @as("EQ") eq: option<comparatorValue>,
    @as("FilterVariable") filterVariable: option<mlmodelFilterVariable>,
  }
  type response = {
    @as("NextToken") nextToken: option<stringType>,
    @as("Results") results: option<mlmodels>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "DescribeMLModelsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvaluations = {
  type t
  type request = {
    @as("Limit") limit: option<pageLimit>,
    @as("NextToken") nextToken: option<stringType>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("Prefix") prefix: option<comparatorValue>,
    @as("NE") ne: option<comparatorValue>,
    @as("LE") le: option<comparatorValue>,
    @as("GE") ge: option<comparatorValue>,
    @as("LT") lt: option<comparatorValue>,
    @as("GT") gt: option<comparatorValue>,
    @as("EQ") eq: option<comparatorValue>,
    @as("FilterVariable") filterVariable: option<evaluationFilterVariable>,
  }
  type response = {
    @as("NextToken") nextToken: option<stringType>,
    @as("Results") results: option<evaluations>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "DescribeEvaluationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataSources = {
  type t
  type request = {
    @as("Limit") limit: option<pageLimit>,
    @as("NextToken") nextToken: option<stringType>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("Prefix") prefix: option<comparatorValue>,
    @as("NE") ne: option<comparatorValue>,
    @as("LE") le: option<comparatorValue>,
    @as("GE") ge: option<comparatorValue>,
    @as("LT") lt: option<comparatorValue>,
    @as("GT") gt: option<comparatorValue>,
    @as("EQ") eq: option<comparatorValue>,
    @as("FilterVariable") filterVariable: option<dataSourceFilterVariable>,
  }
  type response = {
    @as("NextToken") nextToken: option<stringType>,
    @as("Results") results: option<dataSources>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new_: request => t = "DescribeDataSourcesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
