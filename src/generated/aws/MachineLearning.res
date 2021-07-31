type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type floatLabel = float;
type vipURL = string
type verbose = bool;
type variableValue = string
type variableName = string
type taggableResourceType = [@as("MLModel") #MLModel | @as("Evaluation") #Evaluation | @as("DataSource") #DataSource | @as("BatchPrediction") #BatchPrediction]
type tagValue = string
type tagKey = string
type stringType = string
type sortOrder = [@as("dsc") #dsc | @as("asc") #asc]
type scoreValue = float;
type scoreThreshold = float;
type s3Url = string
type roleARN = string
type redshiftSelectSqlQuery = string
type redshiftDatabaseUsername = string
type redshiftDatabasePassword = string
type redshiftDatabaseName = string
type redshiftClusterIdentifier = string
type recipe = string
type realtimeEndpointStatus = [@as("FAILED") #FAILED | @as("UPDATING") #UPDATING | @as("READY") #READY | @as("NONE") #NONE]
type rDSSelectSqlQuery = string
type rDSInstanceIdentifier = string
type rDSDatabaseUsername = string
type rDSDatabasePassword = string
type rDSDatabaseName = string
type presignedS3Url = string
type performanceMetricsPropertyValue = string
type performanceMetricsPropertyKey = string
type pageLimit = int;
type message = string
type mLModelType = [@as("MULTICLASS") #MULTICLASS | @as("BINARY") #BINARY | @as("REGRESSION") #REGRESSION]
type mLModelName = string
type mLModelFilterVariable = [@as("TrainingDataURI") #TrainingDataURI | @as("Algorithm") #Algorithm | @as("MLModelType") #MLModelType | @as("RealtimeEndpointStatus") #RealtimeEndpointStatus | @as("TrainingDataSourceId") #TrainingDataSourceId | @as("IAMUser") #IAMUser | @as("Name") #Name | @as("Status") #Status | @as("LastUpdatedAt") #LastUpdatedAt | @as("CreatedAt") #CreatedAt]
type longType = float;
type label = string
type integerType = int;
type evaluationFilterVariable = [@as("DataURI") #DataURI | @as("DataSourceId") #DataSourceId | @as("MLModelId") #MLModelId | @as("IAMUser") #IAMUser | @as("Name") #Name | @as("Status") #Status | @as("LastUpdatedAt") #LastUpdatedAt | @as("CreatedAt") #CreatedAt]
type errorMessage = string
type errorCode = int;
type epochTime = Js.Date.t;
type entityStatus = [@as("DELETED") #DELETED | @as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("INPROGRESS") #INPROGRESS | @as("PENDING") #PENDING]
type entityName = string
type entityId = string
type eDPSubnetId = string
type eDPServiceRole = string
type eDPSecurityGroupId = string
type eDPResourceRole = string
type eDPPipelineId = string
type detailsValue = string
type detailsAttributes = [@as("Algorithm") #Algorithm | @as("PredictiveModelType") #PredictiveModelType]
type dataSourceFilterVariable = [@as("IAMUser") #IAMUser | @as("DataLocationS3") #DataLocationS3 | @as("Name") #Name | @as("Status") #Status | @as("LastUpdatedAt") #LastUpdatedAt | @as("CreatedAt") #CreatedAt]
type dataSchema = string
type dataRearrangement = string
type computeStatistics = bool;
type comparatorValue = string
type batchPredictionFilterVariable = [@as("DataURI") #DataURI | @as("DataSourceId") #DataSourceId | @as("MLModelId") #MLModelId | @as("IAMUser") #IAMUser | @as("Name") #Name | @as("Status") #Status | @as("LastUpdatedAt") #LastUpdatedAt | @as("CreatedAt") #CreatedAt]
type awsUserArn = string
type algorithm = [@as("sgd") #sgd]
type trainingParameters = Js.Dict.t< stringType>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type scoreValuePerLabelMap = Js.Dict.t< scoreValue>
type s3DataSpec = {
@as("DataSchemaLocationS3") dataSchemaLocationS3: s3Url,
@as("DataSchema") dataSchema: dataSchema,
@as("DataRearrangement") dataRearrangement: dataRearrangement,
@as("DataLocationS3") dataLocationS3: option<s3Url>
}
type redshiftDatabaseCredentials = {
@as("Password") password: option<redshiftDatabasePassword>,
@as("Username") username: option<redshiftDatabaseUsername>
}
type redshiftDatabase = {
@as("ClusterIdentifier") clusterIdentifier: option<redshiftClusterIdentifier>,
@as("DatabaseName") databaseName: option<redshiftDatabaseName>
}
type record = Js.Dict.t< variableValue>
type realtimeEndpointInfo = {
@as("EndpointStatus") endpointStatus: realtimeEndpointStatus,
@as("EndpointUrl") endpointUrl: vipURL,
@as("CreatedAt") createdAt: epochTime,
@as("PeakRequestsPerSecond") peakRequestsPerSecond: integerType
}
type rDSDatabaseCredentials = {
@as("Password") password: option<rDSDatabasePassword>,
@as("Username") username: option<rDSDatabaseUsername>
}
type rDSDatabase = {
@as("DatabaseName") databaseName: option<rDSDatabaseName>,
@as("InstanceIdentifier") instanceIdentifier: option<rDSInstanceIdentifier>
}
type performanceMetricsProperties = Js.Dict.t< performanceMetricsPropertyValue>
type eDPSecurityGroupIds = array<eDPSecurityGroupId>
type detailsMap = Js.Dict.t< detailsValue>
type batchPrediction = {
@as("InvalidRecordCount") invalidRecordCount: longType,
@as("TotalRecordCount") totalRecordCount: longType,
@as("StartedAt") startedAt: epochTime,
@as("FinishedAt") finishedAt: epochTime,
@as("ComputeTime") computeTime: longType,
@as("Message") message: message,
@as("OutputUri") outputUri: s3Url,
@as("Status") status: entityStatus,
@as("Name") name: entityName,
@as("LastUpdatedAt") lastUpdatedAt: epochTime,
@as("CreatedAt") createdAt: epochTime,
@as("CreatedByIamUser") createdByIamUser: awsUserArn,
@as("InputDataLocationS3") inputDataLocationS3: s3Url,
@as("BatchPredictionDataSourceId") batchPredictionDataSourceId: entityId,
@as("MLModelId") mLModelId: entityId,
@as("BatchPredictionId") batchPredictionId: entityId
}
type tagList = array<tag>
type redshiftMetadata = {
@as("SelectSqlQuery") selectSqlQuery: redshiftSelectSqlQuery,
@as("DatabaseUserName") databaseUserName: redshiftDatabaseUsername,
@as("RedshiftDatabase") redshiftDatabase: redshiftDatabase
}
type redshiftDataSpec = {
@as("DataSchemaUri") dataSchemaUri: s3Url,
@as("DataSchema") dataSchema: dataSchema,
@as("DataRearrangement") dataRearrangement: dataRearrangement,
@as("S3StagingLocation") s3StagingLocation: option<s3Url>,
@as("DatabaseCredentials") databaseCredentials: option<redshiftDatabaseCredentials>,
@as("SelectSqlQuery") selectSqlQuery: option<redshiftSelectSqlQuery>,
@as("DatabaseInformation") databaseInformation: option<redshiftDatabase>
}
type rDSMetadata = {
@as("DataPipelineId") dataPipelineId: eDPPipelineId,
@as("ServiceRole") serviceRole: eDPServiceRole,
@as("ResourceRole") resourceRole: eDPResourceRole,
@as("SelectSqlQuery") selectSqlQuery: rDSSelectSqlQuery,
@as("DatabaseUserName") databaseUserName: rDSDatabaseUsername,
@as("Database") database: rDSDatabase
}
type rDSDataSpec = {
@as("SecurityGroupIds") securityGroupIds: option<eDPSecurityGroupIds>,
@as("SubnetId") subnetId: option<eDPSubnetId>,
@as("ServiceRole") serviceRole: option<eDPServiceRole>,
@as("ResourceRole") resourceRole: option<eDPResourceRole>,
@as("DataSchemaUri") dataSchemaUri: s3Url,
@as("DataSchema") dataSchema: dataSchema,
@as("DataRearrangement") dataRearrangement: dataRearrangement,
@as("S3StagingLocation") s3StagingLocation: option<s3Url>,
@as("DatabaseCredentials") databaseCredentials: option<rDSDatabaseCredentials>,
@as("SelectSqlQuery") selectSqlQuery: option<rDSSelectSqlQuery>,
@as("DatabaseInformation") databaseInformation: option<rDSDatabase>
}
type prediction = {
@as("details") details: detailsMap,
@as("predictedScores") predictedScores: scoreValuePerLabelMap,
@as("predictedValue") predictedValue: floatLabel,
@as("predictedLabel") predictedLabel: label
}
type performanceMetrics = {
@as("Properties") properties: performanceMetricsProperties
}
type mLModel = {
@as("StartedAt") startedAt: epochTime,
@as("FinishedAt") finishedAt: epochTime,
@as("ComputeTime") computeTime: longType,
@as("Message") message: message,
@as("ScoreThresholdLastUpdatedAt") scoreThresholdLastUpdatedAt: epochTime,
@as("ScoreThreshold") scoreThreshold: scoreThreshold,
@as("MLModelType") mLModelType: mLModelType,
@as("Algorithm") algorithm: algorithm,
@as("InputDataLocationS3") inputDataLocationS3: s3Url,
@as("TrainingParameters") trainingParameters: trainingParameters,
@as("EndpointInfo") endpointInfo: realtimeEndpointInfo,
@as("SizeInBytes") sizeInBytes: longType,
@as("Status") status: entityStatus,
@as("Name") name: mLModelName,
@as("LastUpdatedAt") lastUpdatedAt: epochTime,
@as("CreatedAt") createdAt: epochTime,
@as("CreatedByIamUser") createdByIamUser: awsUserArn,
@as("TrainingDataSourceId") trainingDataSourceId: entityId,
@as("MLModelId") mLModelId: entityId
}
type batchPredictions = array<batchPrediction>
type mLModels = array<mLModel>
type evaluation = {
@as("StartedAt") startedAt: epochTime,
@as("FinishedAt") finishedAt: epochTime,
@as("ComputeTime") computeTime: longType,
@as("Message") message: message,
@as("PerformanceMetrics") performanceMetrics: performanceMetrics,
@as("Status") status: entityStatus,
@as("Name") name: entityName,
@as("LastUpdatedAt") lastUpdatedAt: epochTime,
@as("CreatedAt") createdAt: epochTime,
@as("CreatedByIamUser") createdByIamUser: awsUserArn,
@as("InputDataLocationS3") inputDataLocationS3: s3Url,
@as("EvaluationDataSourceId") evaluationDataSourceId: entityId,
@as("MLModelId") mLModelId: entityId,
@as("EvaluationId") evaluationId: entityId
}
type dataSource = {
@as("StartedAt") startedAt: epochTime,
@as("FinishedAt") finishedAt: epochTime,
@as("ComputeTime") computeTime: longType,
@as("ComputeStatistics") computeStatistics: computeStatistics,
@as("RoleARN") roleARN: roleARN,
@as("RDSMetadata") rDSMetadata: rDSMetadata,
@as("RedshiftMetadata") redshiftMetadata: redshiftMetadata,
@as("Message") message: message,
@as("Status") status: entityStatus,
@as("Name") name: entityName,
@as("NumberOfFiles") numberOfFiles: longType,
@as("DataSizeInBytes") dataSizeInBytes: longType,
@as("LastUpdatedAt") lastUpdatedAt: epochTime,
@as("CreatedAt") createdAt: epochTime,
@as("CreatedByIamUser") createdByIamUser: awsUserArn,
@as("DataRearrangement") dataRearrangement: dataRearrangement,
@as("DataLocationS3") dataLocationS3: s3Url,
@as("DataSourceId") dataSourceId: entityId
}
type evaluations = array<evaluation>
type dataSources = array<dataSource>
type clientType;
@module("@aws-sdk/client-machinelearning") @new external createClient: unit => clientType = "MachineLearningClient";
module UpdateMLModel = {
  type t;
  type request = {
@as("ScoreThreshold") scoreThreshold: scoreThreshold,
@as("MLModelName") mLModelName: entityName,
@as("MLModelId") mLModelId: option<entityId>
}
  type response = {
@as("MLModelId") mLModelId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "UpdateMLModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEvaluation = {
  type t;
  type request = {
@as("EvaluationName") evaluationName: option<entityName>,
@as("EvaluationId") evaluationId: option<entityId>
}
  type response = {
@as("EvaluationId") evaluationId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "UpdateEvaluationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDataSource = {
  type t;
  type request = {
@as("DataSourceName") dataSourceName: option<entityName>,
@as("DataSourceId") dataSourceId: option<entityId>
}
  type response = {
@as("DataSourceId") dataSourceId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "UpdateDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBatchPrediction = {
  type t;
  type request = {
@as("BatchPredictionName") batchPredictionName: option<entityName>,
@as("BatchPredictionId") batchPredictionId: option<entityId>
}
  type response = {
@as("BatchPredictionId") batchPredictionId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "UpdateBatchPredictionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBatchPrediction = {
  type t;
  type request = {
@as("BatchPredictionId") batchPredictionId: option<entityId>
}
  type response = {
@as("InvalidRecordCount") invalidRecordCount: longType,
@as("TotalRecordCount") totalRecordCount: longType,
@as("StartedAt") startedAt: epochTime,
@as("FinishedAt") finishedAt: epochTime,
@as("ComputeTime") computeTime: longType,
@as("Message") message: message,
@as("LogUri") logUri: presignedS3Url,
@as("OutputUri") outputUri: s3Url,
@as("Status") status: entityStatus,
@as("Name") name: entityName,
@as("LastUpdatedAt") lastUpdatedAt: epochTime,
@as("CreatedAt") createdAt: epochTime,
@as("CreatedByIamUser") createdByIamUser: awsUserArn,
@as("InputDataLocationS3") inputDataLocationS3: s3Url,
@as("BatchPredictionDataSourceId") batchPredictionDataSourceId: entityId,
@as("MLModelId") mLModelId: entityId,
@as("BatchPredictionId") batchPredictionId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "GetBatchPredictionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMLModel = {
  type t;
  type request = {
@as("MLModelId") mLModelId: option<entityId>
}
  type response = {
@as("MLModelId") mLModelId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "DeleteMLModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEvaluation = {
  type t;
  type request = {
@as("EvaluationId") evaluationId: option<entityId>
}
  type response = {
@as("EvaluationId") evaluationId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "DeleteEvaluationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDataSource = {
  type t;
  type request = {
@as("DataSourceId") dataSourceId: option<entityId>
}
  type response = {
@as("DataSourceId") dataSourceId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "DeleteDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBatchPrediction = {
  type t;
  type request = {
@as("BatchPredictionId") batchPredictionId: option<entityId>
}
  type response = {
@as("BatchPredictionId") batchPredictionId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "DeleteBatchPredictionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEvaluation = {
  type t;
  type request = {
@as("EvaluationDataSourceId") evaluationDataSourceId: option<entityId>,
@as("MLModelId") mLModelId: option<entityId>,
@as("EvaluationName") evaluationName: entityName,
@as("EvaluationId") evaluationId: option<entityId>
}
  type response = {
@as("EvaluationId") evaluationId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "CreateEvaluationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBatchPrediction = {
  type t;
  type request = {
@as("OutputUri") outputUri: option<s3Url>,
@as("BatchPredictionDataSourceId") batchPredictionDataSourceId: option<entityId>,
@as("MLModelId") mLModelId: option<entityId>,
@as("BatchPredictionName") batchPredictionName: entityName,
@as("BatchPredictionId") batchPredictionId: option<entityId>
}
  type response = {
@as("BatchPredictionId") batchPredictionId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "CreateBatchPredictionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMLModel = {
  type t;
  type request = {
@as("Verbose") verbose: verbose,
@as("MLModelId") mLModelId: option<entityId>
}
  type response = {
@as("Schema") schema: dataSchema,
@as("Recipe") recipe: recipe,
@as("StartedAt") startedAt: epochTime,
@as("FinishedAt") finishedAt: epochTime,
@as("ComputeTime") computeTime: longType,
@as("Message") message: message,
@as("LogUri") logUri: presignedS3Url,
@as("ScoreThresholdLastUpdatedAt") scoreThresholdLastUpdatedAt: epochTime,
@as("ScoreThreshold") scoreThreshold: scoreThreshold,
@as("MLModelType") mLModelType: mLModelType,
@as("InputDataLocationS3") inputDataLocationS3: s3Url,
@as("TrainingParameters") trainingParameters: trainingParameters,
@as("EndpointInfo") endpointInfo: realtimeEndpointInfo,
@as("SizeInBytes") sizeInBytes: longType,
@as("Status") status: entityStatus,
@as("Name") name: mLModelName,
@as("LastUpdatedAt") lastUpdatedAt: epochTime,
@as("CreatedAt") createdAt: epochTime,
@as("CreatedByIamUser") createdByIamUser: awsUserArn,
@as("TrainingDataSourceId") trainingDataSourceId: entityId,
@as("MLModelId") mLModelId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "GetMLModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
@as("ResourceType") resourceType: option<taggableResourceType>,
@as("ResourceId") resourceId: option<entityId>,
@as("TagKeys") tagKeys: option<tagKeyList>
}
  type response = {
@as("ResourceType") resourceType: taggableResourceType,
@as("ResourceId") resourceId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "DeleteTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRealtimeEndpoint = {
  type t;
  type request = {
@as("MLModelId") mLModelId: option<entityId>
}
  type response = {
@as("RealtimeEndpointInfo") realtimeEndpointInfo: realtimeEndpointInfo,
@as("MLModelId") mLModelId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "DeleteRealtimeEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRealtimeEndpoint = {
  type t;
  type request = {
@as("MLModelId") mLModelId: option<entityId>
}
  type response = {
@as("RealtimeEndpointInfo") realtimeEndpointInfo: realtimeEndpointInfo,
@as("MLModelId") mLModelId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "CreateRealtimeEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMLModel = {
  type t;
  type request = {
@as("RecipeUri") recipeUri: s3Url,
@as("Recipe") recipe: recipe,
@as("TrainingDataSourceId") trainingDataSourceId: option<entityId>,
@as("Parameters") parameters: trainingParameters,
@as("MLModelType") mLModelType: option<mLModelType>,
@as("MLModelName") mLModelName: entityName,
@as("MLModelId") mLModelId: option<entityId>
}
  type response = {
@as("MLModelId") mLModelId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "CreateMLModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataSourceFromS3 = {
  type t;
  type request = {
@as("ComputeStatistics") computeStatistics: computeStatistics,
@as("DataSpec") dataSpec: option<s3DataSpec>,
@as("DataSourceName") dataSourceName: entityName,
@as("DataSourceId") dataSourceId: option<entityId>
}
  type response = {
@as("DataSourceId") dataSourceId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "CreateDataSourceFromS3Command";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Predict = {
  type t;
  type request = {
@as("PredictEndpoint") predictEndpoint: option<vipURL>,
@as("Record") record: option<record>,
@as("MLModelId") mLModelId: option<entityId>
}
  type response = {
@as("Prediction") prediction: prediction
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "PredictCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEvaluation = {
  type t;
  type request = {
@as("EvaluationId") evaluationId: option<entityId>
}
  type response = {
@as("StartedAt") startedAt: epochTime,
@as("FinishedAt") finishedAt: epochTime,
@as("ComputeTime") computeTime: longType,
@as("Message") message: message,
@as("LogUri") logUri: presignedS3Url,
@as("PerformanceMetrics") performanceMetrics: performanceMetrics,
@as("Status") status: entityStatus,
@as("Name") name: entityName,
@as("LastUpdatedAt") lastUpdatedAt: epochTime,
@as("CreatedAt") createdAt: epochTime,
@as("CreatedByIamUser") createdByIamUser: awsUserArn,
@as("InputDataLocationS3") inputDataLocationS3: s3Url,
@as("EvaluationDataSourceId") evaluationDataSourceId: entityId,
@as("MLModelId") mLModelId: entityId,
@as("EvaluationId") evaluationId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "GetEvaluationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDataSource = {
  type t;
  type request = {
@as("Verbose") verbose: verbose,
@as("DataSourceId") dataSourceId: option<entityId>
}
  type response = {
@as("DataSourceSchema") dataSourceSchema: dataSchema,
@as("StartedAt") startedAt: epochTime,
@as("FinishedAt") finishedAt: epochTime,
@as("ComputeTime") computeTime: longType,
@as("ComputeStatistics") computeStatistics: computeStatistics,
@as("RoleARN") roleARN: roleARN,
@as("RDSMetadata") rDSMetadata: rDSMetadata,
@as("RedshiftMetadata") redshiftMetadata: redshiftMetadata,
@as("Message") message: message,
@as("LogUri") logUri: presignedS3Url,
@as("Status") status: entityStatus,
@as("Name") name: entityName,
@as("NumberOfFiles") numberOfFiles: longType,
@as("DataSizeInBytes") dataSizeInBytes: longType,
@as("LastUpdatedAt") lastUpdatedAt: epochTime,
@as("CreatedAt") createdAt: epochTime,
@as("CreatedByIamUser") createdByIamUser: awsUserArn,
@as("DataRearrangement") dataRearrangement: dataRearrangement,
@as("DataLocationS3") dataLocationS3: s3Url,
@as("DataSourceId") dataSourceId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "GetDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("ResourceType") resourceType: option<taggableResourceType>,
@as("ResourceId") resourceId: option<entityId>
}
  type response = {
@as("Tags") tags: tagList,
@as("ResourceType") resourceType: taggableResourceType,
@as("ResourceId") resourceId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "DescribeTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBatchPredictions = {
  type t;
  type request = {
@as("Limit") limit: pageLimit,
@as("NextToken") nextToken: stringType,
@as("SortOrder") sortOrder: sortOrder,
@as("Prefix") prefix: comparatorValue,
@as("NE") nE: comparatorValue,
@as("LE") lE: comparatorValue,
@as("GE") gE: comparatorValue,
@as("LT") lT: comparatorValue,
@as("GT") gT: comparatorValue,
@as("EQ") eQ: comparatorValue,
@as("FilterVariable") filterVariable: batchPredictionFilterVariable
}
  type response = {
@as("NextToken") nextToken: stringType,
@as("Results") results: batchPredictions
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "DescribeBatchPredictionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataSourceFromRedshift = {
  type t;
  type request = {
@as("ComputeStatistics") computeStatistics: computeStatistics,
@as("RoleARN") roleARN: option<roleARN>,
@as("DataSpec") dataSpec: option<redshiftDataSpec>,
@as("DataSourceName") dataSourceName: entityName,
@as("DataSourceId") dataSourceId: option<entityId>
}
  type response = {
@as("DataSourceId") dataSourceId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "CreateDataSourceFromRedshiftCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataSourceFromRDS = {
  type t;
  type request = {
@as("ComputeStatistics") computeStatistics: computeStatistics,
@as("RoleARN") roleARN: option<roleARN>,
@as("RDSData") rDSData: option<rDSDataSpec>,
@as("DataSourceName") dataSourceName: entityName,
@as("DataSourceId") dataSourceId: option<entityId>
}
  type response = {
@as("DataSourceId") dataSourceId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "CreateDataSourceFromRDSCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTags = {
  type t;
  type request = {
@as("ResourceType") resourceType: option<taggableResourceType>,
@as("ResourceId") resourceId: option<entityId>,
@as("Tags") tags: option<tagList>
}
  type response = {
@as("ResourceType") resourceType: taggableResourceType,
@as("ResourceId") resourceId: entityId
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "AddTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMLModels = {
  type t;
  type request = {
@as("Limit") limit: pageLimit,
@as("NextToken") nextToken: stringType,
@as("SortOrder") sortOrder: sortOrder,
@as("Prefix") prefix: comparatorValue,
@as("NE") nE: comparatorValue,
@as("LE") lE: comparatorValue,
@as("GE") gE: comparatorValue,
@as("LT") lT: comparatorValue,
@as("GT") gT: comparatorValue,
@as("EQ") eQ: comparatorValue,
@as("FilterVariable") filterVariable: mLModelFilterVariable
}
  type response = {
@as("NextToken") nextToken: stringType,
@as("Results") results: mLModels
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "DescribeMLModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEvaluations = {
  type t;
  type request = {
@as("Limit") limit: pageLimit,
@as("NextToken") nextToken: stringType,
@as("SortOrder") sortOrder: sortOrder,
@as("Prefix") prefix: comparatorValue,
@as("NE") nE: comparatorValue,
@as("LE") lE: comparatorValue,
@as("GE") gE: comparatorValue,
@as("LT") lT: comparatorValue,
@as("GT") gT: comparatorValue,
@as("EQ") eQ: comparatorValue,
@as("FilterVariable") filterVariable: evaluationFilterVariable
}
  type response = {
@as("NextToken") nextToken: stringType,
@as("Results") results: evaluations
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "DescribeEvaluationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataSources = {
  type t;
  type request = {
@as("Limit") limit: pageLimit,
@as("NextToken") nextToken: stringType,
@as("SortOrder") sortOrder: sortOrder,
@as("Prefix") prefix: comparatorValue,
@as("NE") nE: comparatorValue,
@as("LE") lE: comparatorValue,
@as("GE") gE: comparatorValue,
@as("LT") lT: comparatorValue,
@as("GT") gT: comparatorValue,
@as("EQ") eQ: comparatorValue,
@as("FilterVariable") filterVariable: dataSourceFilterVariable
}
  type response = {
@as("NextToken") nextToken: stringType,
@as("Results") results: dataSources
}
  @module("@aws-sdk/client-machinelearning") @new external new_: (Js.Promise.t<request>) => t = "DescribeDataSourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
