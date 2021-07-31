type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type timeZoneOffset = string
type targetSamplingRate = [@as("PT1H") #PT1H | @as("PT30M") #PT30M | @as("PT15M") #PT15M | @as("PT10M") #PT10M | @as("PT5M") #PT5M | @as("PT1M") #PT1M | @as("PT30S") #PT30S | @as("PT15S") #PT15S | @as("PT10S") #PT10S | @as("PT5S") #PT5S | @as("PT1S") #PT1S]
type tagValue = string
type tagKey = string
type synthesizedJsonModelMetrics = string
type synthesizedJsonInlineDataSchema = string
type s3Prefix = string
type s3Key = string
type s3Bucket = string
type nextToken = string
type nameOrArn = string
type modelStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("IN_PROGRESS") #IN_PROGRESS]
type modelName = string
type modelArn = string
type maxResults = int;
type kmsKeyArn = string
type ingestionJobStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("IN_PROGRESS") #IN_PROGRESS]
type ingestionJobId = string
type inferenceSchedulerStatus = [@as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("PENDING") #PENDING]
type inferenceSchedulerName = string
type inferenceSchedulerIdentifier = string
type inferenceSchedulerArn = string
type inferenceExecutionStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("IN_PROGRESS") #IN_PROGRESS]
type idempotenceToken = string
type iamRoleArn = string
type fileNameTimestampFormat = string
type datasetStatus = [@as("ACTIVE") #ACTIVE | @as("INGESTION_IN_PROGRESS") #INGESTION_IN_PROGRESS | @as("CREATED") #CREATED]
type datasetName = string
type datasetIdentifier = string
type datasetArn = string
type dataUploadFrequency = [@as("PT1H") #PT1H | @as("PT30M") #PT30M | @as("PT15M") #PT15M | @as("PT10M") #PT10M | @as("PT5M") #PT5M]
type dataDelayOffsetInMinutes = float;
type componentTimestampDelimiter = string
type boundedLengthString = string
type amazonResourceArn = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type s3Object = {
@as("Key") key: option<s3Key>,
@as("Bucket") bucket: option<s3Bucket>
}
type modelSummary = {
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("Status") status: modelStatus,
@as("DatasetArn") datasetArn: datasetArn,
@as("DatasetName") datasetName: datasetName,
@as("ModelArn") modelArn: modelArn,
@as("ModelName") modelName: modelName
}
type labelsS3InputConfiguration = {
@as("Prefix") prefix: s3Prefix,
@as("Bucket") bucket: option<s3Bucket>
}
type ingestionS3InputConfiguration = {
@as("Prefix") prefix: s3Prefix,
@as("Bucket") bucket: option<s3Bucket>
}
type inferenceSchedulerSummary = {
@as("DataUploadFrequency") dataUploadFrequency: dataUploadFrequency,
@as("DataDelayOffsetInMinutes") dataDelayOffsetInMinutes: dataDelayOffsetInMinutes,
@as("Status") status: inferenceSchedulerStatus,
@as("InferenceSchedulerArn") inferenceSchedulerArn: inferenceSchedulerArn,
@as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerName,
@as("ModelArn") modelArn: modelArn,
@as("ModelName") modelName: modelName
}
type inferenceS3OutputConfiguration = {
@as("Prefix") prefix: s3Prefix,
@as("Bucket") bucket: option<s3Bucket>
}
type inferenceS3InputConfiguration = {
@as("Prefix") prefix: s3Prefix,
@as("Bucket") bucket: option<s3Bucket>
}
type inferenceInputNameConfiguration = {
@as("ComponentTimestampDelimiter") componentTimestampDelimiter: componentTimestampDelimiter,
@as("TimestampFormat") timestampFormat: fileNameTimestampFormat
}
type datasetSummary = {
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("Status") status: datasetStatus,
@as("DatasetArn") datasetArn: datasetArn,
@as("DatasetName") datasetName: datasetName
}
type datasetSchema = {
@as("InlineDataSchema") inlineDataSchema: synthesizedJsonInlineDataSchema
}
type dataPreProcessingConfiguration = {
@as("TargetSamplingRate") targetSamplingRate: targetSamplingRate
}
type tagList = array<tag>
type modelSummaries = array<modelSummary>
type labelsInputConfiguration = {
@as("S3InputConfiguration") s3InputConfiguration: option<labelsS3InputConfiguration>
}
type ingestionInputConfiguration = {
@as("S3InputConfiguration") s3InputConfiguration: option<ingestionS3InputConfiguration>
}
type inferenceSchedulerSummaries = array<inferenceSchedulerSummary>
type inferenceOutputConfiguration = {
@as("KmsKeyId") kmsKeyId: nameOrArn,
@as("S3OutputConfiguration") s3OutputConfiguration: option<inferenceS3OutputConfiguration>
}
type inferenceInputConfiguration = {
@as("InferenceInputNameConfiguration") inferenceInputNameConfiguration: inferenceInputNameConfiguration,
@as("InputTimeZoneOffset") inputTimeZoneOffset: timeZoneOffset,
@as("S3InputConfiguration") s3InputConfiguration: inferenceS3InputConfiguration
}
type datasetSummaries = array<datasetSummary>
type inferenceExecutionSummary = {
@as("FailedReason") failedReason: boundedLengthString,
@as("Status") status: inferenceExecutionStatus,
@as("CustomerResultObject") customerResultObject: s3Object,
@as("DataOutputConfiguration") dataOutputConfiguration: inferenceOutputConfiguration,
@as("DataInputConfiguration") dataInputConfiguration: inferenceInputConfiguration,
@as("DataEndTime") dataEndTime: amazonawsTimestamp,
@as("DataStartTime") dataStartTime: amazonawsTimestamp,
@as("ScheduledStartTime") scheduledStartTime: amazonawsTimestamp,
@as("InferenceSchedulerArn") inferenceSchedulerArn: inferenceSchedulerArn,
@as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerName,
@as("ModelArn") modelArn: modelArn,
@as("ModelName") modelName: modelName
}
type dataIngestionJobSummary = {
@as("Status") status: ingestionJobStatus,
@as("IngestionInputConfiguration") ingestionInputConfiguration: ingestionInputConfiguration,
@as("DatasetArn") datasetArn: datasetArn,
@as("DatasetName") datasetName: datasetName,
@as("JobId") jobId: ingestionJobId
}
type inferenceExecutionSummaries = array<inferenceExecutionSummary>
type dataIngestionJobSummaries = array<dataIngestionJobSummary>
type clientType;
@module("@aws-sdk/client-lookoutequipment") @new external createClient: unit => clientType = "LookoutEquipmentClient";
module StopInferenceScheduler = {
  type t;
  type request = {
@as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerIdentifier>
}
  type response = {
@as("Status") status: inferenceSchedulerStatus,
@as("InferenceSchedulerArn") inferenceSchedulerArn: inferenceSchedulerArn,
@as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerName,
@as("ModelName") modelName: modelName,
@as("ModelArn") modelArn: modelArn
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "StopInferenceSchedulerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartInferenceScheduler = {
  type t;
  type request = {
@as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerIdentifier>
}
  type response = {
@as("Status") status: inferenceSchedulerStatus,
@as("InferenceSchedulerArn") inferenceSchedulerArn: inferenceSchedulerArn,
@as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerName,
@as("ModelName") modelName: modelName,
@as("ModelArn") modelArn: modelArn
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "StartInferenceSchedulerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteModel = {
  type t;
  type request = {
@as("ModelName") modelName: option<modelName>
}
  
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "DeleteModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteInferenceScheduler = {
  type t;
  type request = {
@as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerIdentifier>
}
  
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "DeleteInferenceSchedulerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDataset = {
  type t;
  type request = {
@as("DatasetName") datasetName: option<datasetIdentifier>
}
  
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "DeleteDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<amazonResourceArn>
}
  type response = unit
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateInferenceScheduler = {
  type t;
  type request = {
@as("RoleArn") roleArn: iamRoleArn,
@as("DataOutputConfiguration") dataOutputConfiguration: inferenceOutputConfiguration,
@as("DataInputConfiguration") dataInputConfiguration: inferenceInputConfiguration,
@as("DataUploadFrequency") dataUploadFrequency: dataUploadFrequency,
@as("DataDelayOffsetInMinutes") dataDelayOffsetInMinutes: dataDelayOffsetInMinutes,
@as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerIdentifier>
}
  
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "UpdateInferenceSchedulerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<amazonResourceArn>
}
  type response = unit
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDataIngestionJob = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<idempotenceToken>,
@as("RoleArn") roleArn: option<iamRoleArn>,
@as("IngestionInputConfiguration") ingestionInputConfiguration: option<ingestionInputConfiguration>,
@as("DatasetName") datasetName: option<datasetIdentifier>
}
  type response = {
@as("Status") status: ingestionJobStatus,
@as("JobId") jobId: ingestionJobId
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "StartDataIngestionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<amazonResourceArn>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListModels = {
  type t;
  type request = {
@as("DatasetNameBeginsWith") datasetNameBeginsWith: datasetName,
@as("ModelNameBeginsWith") modelNameBeginsWith: modelName,
@as("Status") status: modelStatus,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("ModelSummaries") modelSummaries: modelSummaries,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "ListModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInferenceSchedulers = {
  type t;
  type request = {
@as("ModelName") modelName: modelName,
@as("InferenceSchedulerNameBeginsWith") inferenceSchedulerNameBeginsWith: inferenceSchedulerIdentifier,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("InferenceSchedulerSummaries") inferenceSchedulerSummaries: inferenceSchedulerSummaries,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "ListInferenceSchedulersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatasets = {
  type t;
  type request = {
@as("DatasetNameBeginsWith") datasetNameBeginsWith: datasetName,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("DatasetSummaries") datasetSummaries: datasetSummaries,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "ListDatasetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeModel = {
  type t;
  type request = {
@as("ModelName") modelName: option<modelName>
}
  type response = {
@as("ServerSideKmsKeyId") serverSideKmsKeyId: kmsKeyArn,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("ModelMetrics") modelMetrics: synthesizedJsonModelMetrics,
@as("FailedReason") failedReason: boundedLengthString,
@as("TrainingExecutionEndTime") trainingExecutionEndTime: amazonawsTimestamp,
@as("TrainingExecutionStartTime") trainingExecutionStartTime: amazonawsTimestamp,
@as("Status") status: modelStatus,
@as("DataPreProcessingConfiguration") dataPreProcessingConfiguration: dataPreProcessingConfiguration,
@as("RoleArn") roleArn: iamRoleArn,
@as("EvaluationDataEndTime") evaluationDataEndTime: amazonawsTimestamp,
@as("EvaluationDataStartTime") evaluationDataStartTime: amazonawsTimestamp,
@as("TrainingDataEndTime") trainingDataEndTime: amazonawsTimestamp,
@as("TrainingDataStartTime") trainingDataStartTime: amazonawsTimestamp,
@as("LabelsInputConfiguration") labelsInputConfiguration: labelsInputConfiguration,
@as("Schema") schema: synthesizedJsonInlineDataSchema,
@as("DatasetArn") datasetArn: datasetArn,
@as("DatasetName") datasetName: datasetName,
@as("ModelArn") modelArn: modelArn,
@as("ModelName") modelName: modelName
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "DescribeModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInferenceScheduler = {
  type t;
  type request = {
@as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerIdentifier>
}
  type response = {
@as("ServerSideKmsKeyId") serverSideKmsKeyId: kmsKeyArn,
@as("RoleArn") roleArn: iamRoleArn,
@as("DataOutputConfiguration") dataOutputConfiguration: inferenceOutputConfiguration,
@as("DataInputConfiguration") dataInputConfiguration: inferenceInputConfiguration,
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("DataUploadFrequency") dataUploadFrequency: dataUploadFrequency,
@as("DataDelayOffsetInMinutes") dataDelayOffsetInMinutes: dataDelayOffsetInMinutes,
@as("Status") status: inferenceSchedulerStatus,
@as("InferenceSchedulerArn") inferenceSchedulerArn: inferenceSchedulerArn,
@as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerName,
@as("ModelName") modelName: modelName,
@as("ModelArn") modelArn: modelArn
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "DescribeInferenceSchedulerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataset = {
  type t;
  type request = {
@as("DatasetName") datasetName: option<datasetIdentifier>
}
  type response = {
@as("IngestionInputConfiguration") ingestionInputConfiguration: ingestionInputConfiguration,
@as("ServerSideKmsKeyId") serverSideKmsKeyId: kmsKeyArn,
@as("Schema") schema: synthesizedJsonInlineDataSchema,
@as("Status") status: datasetStatus,
@as("LastUpdatedAt") lastUpdatedAt: amazonawsTimestamp,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("DatasetArn") datasetArn: datasetArn,
@as("DatasetName") datasetName: datasetName
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "DescribeDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataIngestionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<ingestionJobId>
}
  type response = {
@as("FailedReason") failedReason: boundedLengthString,
@as("Status") status: ingestionJobStatus,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("RoleArn") roleArn: iamRoleArn,
@as("IngestionInputConfiguration") ingestionInputConfiguration: ingestionInputConfiguration,
@as("DatasetArn") datasetArn: datasetArn,
@as("JobId") jobId: ingestionJobId
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "DescribeDataIngestionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateModel = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ServerSideKmsKeyId") serverSideKmsKeyId: nameOrArn,
@as("DataPreProcessingConfiguration") dataPreProcessingConfiguration: dataPreProcessingConfiguration,
@as("RoleArn") roleArn: iamRoleArn,
@as("EvaluationDataEndTime") evaluationDataEndTime: amazonawsTimestamp,
@as("EvaluationDataStartTime") evaluationDataStartTime: amazonawsTimestamp,
@as("TrainingDataEndTime") trainingDataEndTime: amazonawsTimestamp,
@as("TrainingDataStartTime") trainingDataStartTime: amazonawsTimestamp,
@as("ClientToken") clientToken: option<idempotenceToken>,
@as("LabelsInputConfiguration") labelsInputConfiguration: labelsInputConfiguration,
@as("DatasetSchema") datasetSchema: datasetSchema,
@as("DatasetName") datasetName: option<datasetIdentifier>,
@as("ModelName") modelName: option<modelName>
}
  type response = {
@as("Status") status: modelStatus,
@as("ModelArn") modelArn: modelArn
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "CreateModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInferenceScheduler = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ClientToken") clientToken: option<idempotenceToken>,
@as("ServerSideKmsKeyId") serverSideKmsKeyId: nameOrArn,
@as("RoleArn") roleArn: option<iamRoleArn>,
@as("DataOutputConfiguration") dataOutputConfiguration: option<inferenceOutputConfiguration>,
@as("DataInputConfiguration") dataInputConfiguration: option<inferenceInputConfiguration>,
@as("DataUploadFrequency") dataUploadFrequency: option<dataUploadFrequency>,
@as("DataDelayOffsetInMinutes") dataDelayOffsetInMinutes: dataDelayOffsetInMinutes,
@as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerName>,
@as("ModelName") modelName: option<modelName>
}
  type response = {
@as("Status") status: inferenceSchedulerStatus,
@as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerName,
@as("InferenceSchedulerArn") inferenceSchedulerArn: inferenceSchedulerArn
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "CreateInferenceSchedulerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataset = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ClientToken") clientToken: option<idempotenceToken>,
@as("ServerSideKmsKeyId") serverSideKmsKeyId: nameOrArn,
@as("DatasetSchema") datasetSchema: option<datasetSchema>,
@as("DatasetName") datasetName: option<datasetName>
}
  type response = {
@as("Status") status: datasetStatus,
@as("DatasetArn") datasetArn: datasetArn,
@as("DatasetName") datasetName: datasetName
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "CreateDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInferenceExecutions = {
  type t;
  type request = {
@as("Status") status: inferenceExecutionStatus,
@as("DataEndTimeBefore") dataEndTimeBefore: amazonawsTimestamp,
@as("DataStartTimeAfter") dataStartTimeAfter: amazonawsTimestamp,
@as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerIdentifier>,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("InferenceExecutionSummaries") inferenceExecutionSummaries: inferenceExecutionSummaries,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "ListInferenceExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDataIngestionJobs = {
  type t;
  type request = {
@as("Status") status: ingestionJobStatus,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("DatasetName") datasetName: datasetName
}
  type response = {
@as("DataIngestionJobSummaries") dataIngestionJobSummaries: dataIngestionJobSummaries,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-lookoutequipment") @new external new_: (Js.Promise.t<request>) => t = "ListDataIngestionJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
