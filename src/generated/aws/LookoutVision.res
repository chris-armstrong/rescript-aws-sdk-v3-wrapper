type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type tagValue = string
type tagKey = string
type tagArn = string
type stream = NodeJs.Buffer.t;
type s3ObjectVersion = string
type s3ObjectKey = string
type s3KeyPrefix = string
type s3BucketName = string
type retryAfterSeconds = int;
type resourceType = [@as("TRIAL") #TRIAL | @as("MODEL") #MODEL | @as("DATASET") #DATASET | @as("PROJECT") #PROJECT]
type queryString = string
type projectName = string
type projectArn = string
type paginationToken = string
type pageSize = int;
type modelVersion = string
type modelStatusMessage = string
type modelStatus = [@as("DELETING") #DELETING | @as("SYSTEM_UPDATING") #SYSTEM_UPDATING | @as("STOPPING_HOSTING") #STOPPING_HOSTING | @as("HOSTING_FAILED") #HOSTING_FAILED | @as("HOSTED") #HOSTED | @as("STARTING_HOSTING") #STARTING_HOSTING | @as("TRAINING_FAILED") #TRAINING_FAILED | @as("TRAINED") #TRAINED | @as("TRAINING") #TRAINING]
type modelHostingStatus = [@as("SYSTEM_UPDATING") #SYSTEM_UPDATING | @as("STOPPING_HOSTING") #STOPPING_HOSTING | @as("HOSTING_FAILED") #HOSTING_FAILED | @as("HOSTED") #HOSTED | @as("STARTING_HOSTING") #STARTING_HOSTING]
type modelDescriptionMessage = string
type modelArn = string
type kmsKeyId = string
type isLabeled = bool;
type amazonawsInteger = int;
type inferenceUnits = int;
type imageSourceType = string
type amazonawsFloat = float;
type exceptionString = string
type dateTime = Js.Date.t;
type datasetType = string
type datasetStatusMessage = string
type datasetStatus = [@as("DELETE_FAILED") #DELETE_FAILED | @as("DELETE_COMPLETE") #DELETE_COMPLETE | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("UPDATE_FAILED_ROLLBACK_COMPLETE") #UPDATE_FAILED_ROLLBACK_COMPLETE | @as("UPDATE_FAILED_ROLLBACK_IN_PROGRESS") #UPDATE_FAILED_ROLLBACK_IN_PROGRESS | @as("UPDATE_COMPLETE") #UPDATE_COMPLETE | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATE_COMPLETE") #CREATE_COMPLETE | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type datasetEntry = string
type datasetChanges = NodeJs.Buffer.t;
type contentType = string
type clientToken = string
type amazonawsBoolean = bool;
type anomalyClassFilter = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type s3Location = {
@as("Prefix") prefix: s3KeyPrefix,
@as("Bucket") bucket: option<s3BucketName>
}
type projectMetadata = {
@as("CreationTimestamp") creationTimestamp: dateTime,
@as("ProjectName") projectName: projectName,
@as("ProjectArn") projectArn: projectArn
}
type outputS3Object = {
@as("Key") key: option<s3ObjectKey>,
@as("Bucket") bucket: option<s3BucketName>
}
type modelPerformance = {
@as("Precision") precision: amazonawsFloat,
@as("Recall") recall: amazonawsFloat,
@as("F1Score") f1Score: amazonawsFloat
}
type inputS3Object = {
@as("VersionId") versionId: s3ObjectVersion,
@as("Key") key: option<s3ObjectKey>,
@as("Bucket") bucket: option<s3BucketName>
}
type imageSource = {
@as("Type") type_: imageSourceType
}
type datasetMetadata = {
@as("StatusMessage") statusMessage: datasetStatusMessage,
@as("Status") status: datasetStatus,
@as("CreationTimestamp") creationTimestamp: dateTime,
@as("DatasetType") datasetType: datasetType
}
type datasetImageStats = {
@as("Anomaly") anomaly: amazonawsInteger,
@as("Normal") normal: amazonawsInteger,
@as("Labeled") labeled: amazonawsInteger,
@as("Total") total: amazonawsInteger
}
type datasetEntryList = array<datasetEntry>
type tagList = array<tag>
type projectMetadataList = array<projectMetadata>
type outputConfig = {
@as("S3Location") s3Location: option<s3Location>
}
type modelMetadata = {
@as("Performance") performance: modelPerformance,
@as("StatusMessage") statusMessage: modelStatusMessage,
@as("Status") status: modelStatus,
@as("Description") description: modelDescriptionMessage,
@as("ModelArn") modelArn: modelArn,
@as("ModelVersion") modelVersion: modelVersion,
@as("CreationTimestamp") creationTimestamp: dateTime
}
type detectAnomalyResult = {
@as("Confidence") confidence: amazonawsFloat,
@as("IsAnomalous") isAnomalous: amazonawsBoolean,
@as("Source") source: imageSource
}
type datasetMetadataList = array<datasetMetadata>
type datasetGroundTruthManifest = {
@as("S3Object") s3Object: inputS3Object
}
type datasetDescription = {
@as("ImageStats") imageStats: datasetImageStats,
@as("StatusMessage") statusMessage: datasetStatusMessage,
@as("Status") status: datasetStatus,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: dateTime,
@as("CreationTimestamp") creationTimestamp: dateTime,
@as("DatasetType") datasetType: datasetType,
@as("ProjectName") projectName: projectName
}
type projectDescription = {
@as("Datasets") datasets: datasetMetadataList,
@as("CreationTimestamp") creationTimestamp: dateTime,
@as("ProjectName") projectName: projectName,
@as("ProjectArn") projectArn: projectArn
}
type modelMetadataList = array<modelMetadata>
type modelDescription = {
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("EvaluationEndTimestamp") evaluationEndTimestamp: dateTime,
@as("EvaluationResult") evaluationResult: outputS3Object,
@as("EvaluationManifest") evaluationManifest: outputS3Object,
@as("OutputConfig") outputConfig: outputConfig,
@as("Performance") performance: modelPerformance,
@as("StatusMessage") statusMessage: modelStatusMessage,
@as("Status") status: modelStatus,
@as("Description") description: modelDescriptionMessage,
@as("CreationTimestamp") creationTimestamp: dateTime,
@as("ModelArn") modelArn: modelArn,
@as("ModelVersion") modelVersion: modelVersion
}
type datasetSource = {
@as("GroundTruthManifest") groundTruthManifest: datasetGroundTruthManifest
}
type clientType;
@module("@aws-sdk/client-lookoutvision") @new external createClient: unit => clientType = "LookoutVisionClient";
module UpdateDatasetEntries = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("Changes") changes: option<datasetChanges>,
@as("DatasetType") datasetType: option<datasetType>,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("Status") status: datasetStatus
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "UpdateDatasetEntriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopModel = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("ModelVersion") modelVersion: option<modelVersion>,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("Status") status: modelHostingStatus
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "StopModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartModel = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("MinInferenceUnits") minInferenceUnits: option<inferenceUnits>,
@as("ModelVersion") modelVersion: option<modelVersion>,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("Status") status: modelHostingStatus
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "StartModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("ProjectArn") projectArn: projectArn
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "DeleteProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteModel = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("ModelVersion") modelVersion: option<modelVersion>,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("ModelArn") modelArn: modelArn
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "DeleteModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDataset = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("DatasetType") datasetType: option<datasetType>,
@as("ProjectName") projectName: option<projectName>
}
  type response = unit
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "DeleteDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<tagArn>
}
  type response = unit
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatasetEntries = {
  type t;
  type request = {
@as("SourceRefContains") sourceRefContains: queryString,
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: paginationToken,
@as("AfterCreationDate") afterCreationDate: dateTime,
@as("BeforeCreationDate") beforeCreationDate: dateTime,
@as("AnomalyClass") anomalyClass: anomalyClassFilter,
@as("Labeled") labeled: isLabeled,
@as("DatasetType") datasetType: option<datasetType>,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("DatasetEntries") datasetEntries: datasetEntryList
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "ListDatasetEntriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("ProjectMetadata") projectMetadata: projectMetadata
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "CreateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<tagArn>
}
  type response = unit
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<tagArn>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProjects = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Projects") projects: projectMetadataList
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "ListProjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectAnomalies = {
  type t;
  type request = {
@as("ContentType") contentType: option<contentType>,
@as("Body") body: option<stream>,
@as("ModelVersion") modelVersion: option<modelVersion>,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("DetectAnomalyResult") detectAnomalyResult: detectAnomalyResult
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "DetectAnomaliesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataset = {
  type t;
  type request = {
@as("DatasetType") datasetType: option<datasetType>,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("DatasetDescription") datasetDescription: datasetDescription
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "DescribeDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateModel = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("OutputConfig") outputConfig: option<outputConfig>,
@as("ClientToken") clientToken: clientToken,
@as("Description") description: modelDescriptionMessage,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("ModelMetadata") modelMetadata: modelMetadata
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "CreateModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListModels = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: paginationToken,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Models") models: modelMetadataList
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "ListModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProject = {
  type t;
  type request = {
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("ProjectDescription") projectDescription: projectDescription
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "DescribeProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeModel = {
  type t;
  type request = {
@as("ModelVersion") modelVersion: option<modelVersion>,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("ModelDescription") modelDescription: modelDescription
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "DescribeModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataset = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("DatasetSource") datasetSource: datasetSource,
@as("DatasetType") datasetType: option<datasetType>,
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("DatasetMetadata") datasetMetadata: datasetMetadata
}
  @module("@aws-sdk/client-lookoutvision") @new external new_: (request) => t = "CreateDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
