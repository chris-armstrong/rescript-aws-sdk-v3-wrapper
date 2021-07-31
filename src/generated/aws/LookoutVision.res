type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-lookoutvision") @new
external createClient: unit => awsServiceClient = "LookoutVisionClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tagValue = string
type tagKey = string
type tagArn = string
type stream = NodeJs.Buffer.t
type s3ObjectVersion = string
type s3ObjectKey = string
type s3KeyPrefix = string
type s3BucketName = string
type retryAfterSeconds = int
type resourceType = [
  | @as("TRIAL") #TRIAL
  | @as("MODEL") #MODEL
  | @as("DATASET") #DATASET
  | @as("PROJECT") #PROJECT
]
type queryString = string
type projectName = string
type projectArn = string
type paginationToken = string
type pageSize = int
type modelVersion = string
type modelStatusMessage = string
type modelStatus = [
  | @as("DELETING") #DELETING
  | @as("SYSTEM_UPDATING") #SYSTEM_UPDATING
  | @as("STOPPING_HOSTING") #STOPPING_HOSTING
  | @as("HOSTING_FAILED") #HOSTING_FAILED
  | @as("HOSTED") #HOSTED
  | @as("STARTING_HOSTING") #STARTING_HOSTING
  | @as("TRAINING_FAILED") #TRAINING_FAILED
  | @as("TRAINED") #TRAINED
  | @as("TRAINING") #TRAINING
]
type modelHostingStatus = [
  | @as("SYSTEM_UPDATING") #SYSTEM_UPDATING
  | @as("STOPPING_HOSTING") #STOPPING_HOSTING
  | @as("HOSTING_FAILED") #HOSTING_FAILED
  | @as("HOSTED") #HOSTED
  | @as("STARTING_HOSTING") #STARTING_HOSTING
]
type modelDescriptionMessage = string
type modelArn = string
type kmsKeyId = string
type isLabeled = bool
type integer_ = int
type inferenceUnits = int
type imageSourceType = string
type float_ = float
type exceptionString = string
type dateTime = Js.Date.t
type datasetType = string
type datasetStatusMessage = string
type datasetStatus = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_COMPLETE") #DELETE_COMPLETE
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("UPDATE_FAILED_ROLLBACK_COMPLETE") #UPDATE_FAILED_ROLLBACK_COMPLETE
  | @as("UPDATE_FAILED_ROLLBACK_IN_PROGRESS") #UPDATE_FAILED_ROLLBACK_IN_PROGRESS
  | @as("UPDATE_COMPLETE") #UPDATE_COMPLETE
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_COMPLETE") #CREATE_COMPLETE
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type datasetEntry = string
type datasetChanges = NodeJs.Buffer.t
type contentType = string
type clientToken = string
type boolean_ = bool
type anomalyClassFilter = string
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type s3Location = {
  @as("Prefix") prefix: option<s3KeyPrefix>,
  @as("Bucket") bucket: s3BucketName,
}
type projectMetadata = {
  @as("CreationTimestamp") creationTimestamp: option<dateTime>,
  @as("ProjectName") projectName: option<projectName>,
  @as("ProjectArn") projectArn: option<projectArn>,
}
type outputS3Object = {
  @as("Key") key: s3ObjectKey,
  @as("Bucket") bucket: s3BucketName,
}
type modelPerformance = {
  @as("Precision") precision: option<float_>,
  @as("Recall") recall: option<float_>,
  @as("F1Score") f1Score: option<float_>,
}
type inputS3Object = {
  @as("VersionId") versionId: option<s3ObjectVersion>,
  @as("Key") key: s3ObjectKey,
  @as("Bucket") bucket: s3BucketName,
}
type imageSource = {@as("Type") type_: option<imageSourceType>}
type datasetMetadata = {
  @as("StatusMessage") statusMessage: option<datasetStatusMessage>,
  @as("Status") status: option<datasetStatus>,
  @as("CreationTimestamp") creationTimestamp: option<dateTime>,
  @as("DatasetType") datasetType: option<datasetType>,
}
type datasetImageStats = {
  @as("Anomaly") anomaly: option<integer_>,
  @as("Normal") normal: option<integer_>,
  @as("Labeled") labeled: option<integer_>,
  @as("Total") total: option<integer_>,
}
type datasetEntryList = array<datasetEntry>
type tagList_ = array<tag>
type projectMetadataList = array<projectMetadata>
type outputConfig = {@as("S3Location") s3Location: s3Location}
type modelMetadata = {
  @as("Performance") performance: option<modelPerformance>,
  @as("StatusMessage") statusMessage: option<modelStatusMessage>,
  @as("Status") status: option<modelStatus>,
  @as("Description") description: option<modelDescriptionMessage>,
  @as("ModelArn") modelArn: option<modelArn>,
  @as("ModelVersion") modelVersion: option<modelVersion>,
  @as("CreationTimestamp") creationTimestamp: option<dateTime>,
}
type detectAnomalyResult = {
  @as("Confidence") confidence: option<float_>,
  @as("IsAnomalous") isAnomalous: option<boolean_>,
  @as("Source") source: option<imageSource>,
}
type datasetMetadataList = array<datasetMetadata>
type datasetGroundTruthManifest = {@as("S3Object") s3Object: option<inputS3Object>}
type datasetDescription = {
  @as("ImageStats") imageStats: option<datasetImageStats>,
  @as("StatusMessage") statusMessage: option<datasetStatusMessage>,
  @as("Status") status: option<datasetStatus>,
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<dateTime>,
  @as("CreationTimestamp") creationTimestamp: option<dateTime>,
  @as("DatasetType") datasetType: option<datasetType>,
  @as("ProjectName") projectName: option<projectName>,
}
type projectDescription = {
  @as("Datasets") datasets: option<datasetMetadataList>,
  @as("CreationTimestamp") creationTimestamp: option<dateTime>,
  @as("ProjectName") projectName: option<projectName>,
  @as("ProjectArn") projectArn: option<projectArn>,
}
type modelMetadataList = array<modelMetadata>
type modelDescription = {
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("EvaluationEndTimestamp") evaluationEndTimestamp: option<dateTime>,
  @as("EvaluationResult") evaluationResult: option<outputS3Object>,
  @as("EvaluationManifest") evaluationManifest: option<outputS3Object>,
  @as("OutputConfig") outputConfig: option<outputConfig>,
  @as("Performance") performance: option<modelPerformance>,
  @as("StatusMessage") statusMessage: option<modelStatusMessage>,
  @as("Status") status: option<modelStatus>,
  @as("Description") description: option<modelDescriptionMessage>,
  @as("CreationTimestamp") creationTimestamp: option<dateTime>,
  @as("ModelArn") modelArn: option<modelArn>,
  @as("ModelVersion") modelVersion: option<modelVersion>,
}
type datasetSource = {
  @as("GroundTruthManifest") groundTruthManifest: option<datasetGroundTruthManifest>,
}

module UpdateDatasetEntries = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("Changes") changes: datasetChanges,
    @as("DatasetType") datasetType: datasetType,
    @as("ProjectName") projectName: projectName,
  }
  type response = {@as("Status") status: option<datasetStatus>}
  @module("@aws-sdk/client-lookoutvision") @new
  external new: request => t = "UpdateDatasetEntriesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopModel = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("ModelVersion") modelVersion: modelVersion,
    @as("ProjectName") projectName: projectName,
  }
  type response = {@as("Status") status: option<modelHostingStatus>}
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "StopModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartModel = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("MinInferenceUnits") minInferenceUnits: inferenceUnits,
    @as("ModelVersion") modelVersion: modelVersion,
    @as("ProjectName") projectName: projectName,
  }
  type response = {@as("Status") status: option<modelHostingStatus>}
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "StartModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProject = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("ProjectName") projectName: projectName,
  }
  type response = {@as("ProjectArn") projectArn: option<projectArn>}
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "DeleteProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteModel = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("ModelVersion") modelVersion: modelVersion,
    @as("ProjectName") projectName: projectName,
  }
  type response = {@as("ModelArn") modelArn: option<modelArn>}
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "DeleteModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDataset = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("DatasetType") datasetType: datasetType,
    @as("ProjectName") projectName: projectName,
  }
  type response = unit
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "DeleteDatasetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: tagArn,
  }
  type response = unit
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasetEntries = {
  type t
  type request = {
    @as("SourceRefContains") sourceRefContains: option<queryString>,
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("AfterCreationDate") afterCreationDate: option<dateTime>,
    @as("BeforeCreationDate") beforeCreationDate: option<dateTime>,
    @as("AnomalyClass") anomalyClass: option<anomalyClassFilter>,
    @as("Labeled") labeled: option<isLabeled>,
    @as("DatasetType") datasetType: datasetType,
    @as("ProjectName") projectName: projectName,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("DatasetEntries") datasetEntries: option<datasetEntryList>,
  }
  @module("@aws-sdk/client-lookoutvision") @new
  external new: request => t = "ListDatasetEntriesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProject = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("ProjectName") projectName: projectName,
  }
  type response = {@as("ProjectMetadata") projectMetadata: option<projectMetadata>}
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "CreateProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceArn") resourceArn: tagArn,
  }
  type response = unit
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: tagArn}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-lookoutvision") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjects = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Projects") projects: option<projectMetadataList>,
  }
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "ListProjectsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectAnomalies = {
  type t
  type request = {
    @as("ContentType") contentType: contentType,
    @as("Body") body: stream,
    @as("ModelVersion") modelVersion: modelVersion,
    @as("ProjectName") projectName: projectName,
  }
  type response = {@as("DetectAnomalyResult") detectAnomalyResult: option<detectAnomalyResult>}
  @module("@aws-sdk/client-lookoutvision") @new
  external new: request => t = "DetectAnomaliesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataset = {
  type t
  type request = {
    @as("DatasetType") datasetType: datasetType,
    @as("ProjectName") projectName: projectName,
  }
  type response = {@as("DatasetDescription") datasetDescription: option<datasetDescription>}
  @module("@aws-sdk/client-lookoutvision") @new
  external new: request => t = "DescribeDatasetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModel = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("OutputConfig") outputConfig: outputConfig,
    @as("ClientToken") clientToken: option<clientToken>,
    @as("Description") description: option<modelDescriptionMessage>,
    @as("ProjectName") projectName: projectName,
  }
  type response = {@as("ModelMetadata") modelMetadata: option<modelMetadata>}
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "CreateModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListModels = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<pageSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("ProjectName") projectName: projectName,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Models") models: option<modelMetadataList>,
  }
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "ListModelsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProject = {
  type t
  type request = {@as("ProjectName") projectName: projectName}
  type response = {@as("ProjectDescription") projectDescription: option<projectDescription>}
  @module("@aws-sdk/client-lookoutvision") @new
  external new: request => t = "DescribeProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeModel = {
  type t
  type request = {
    @as("ModelVersion") modelVersion: modelVersion,
    @as("ProjectName") projectName: projectName,
  }
  type response = {@as("ModelDescription") modelDescription: option<modelDescription>}
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "DescribeModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataset = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("DatasetSource") datasetSource: option<datasetSource>,
    @as("DatasetType") datasetType: datasetType,
    @as("ProjectName") projectName: projectName,
  }
  type response = {@as("DatasetMetadata") datasetMetadata: option<datasetMetadata>}
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "CreateDatasetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
