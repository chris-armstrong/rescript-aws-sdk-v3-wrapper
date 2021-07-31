type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-lookoutequipment") @new
external createClient: unit => awsServiceClient = "LookoutEquipmentClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type timeZoneOffset = string
type targetSamplingRate = [
  | @as("PT1H") #PT1H
  | @as("PT30M") #PT30M
  | @as("PT15M") #PT15M
  | @as("PT10M") #PT10M
  | @as("PT5M") #PT5M
  | @as("PT1M") #PT1M
  | @as("PT30S") #PT30S
  | @as("PT15S") #PT15S
  | @as("PT10S") #PT10S
  | @as("PT5S") #PT5S
  | @as("PT1S") #PT1S
]
type tagValue = string
type tagKey = string
type synthesizedJsonModelMetrics = string
type synthesizedJsonInlineDataSchema = string
type s3Prefix = string
type s3Key = string
type s3Bucket = string
type nextToken = string
type nameOrArn = string
type modelStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type modelName = string
type modelArn = string
type maxResults = int
type kmsKeyArn = string
type ingestionJobStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type ingestionJobId = string
type inferenceSchedulerStatus = [
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("RUNNING") #RUNNING
  | @as("PENDING") #PENDING
]
type inferenceSchedulerName = string
type inferenceSchedulerIdentifier = string
type inferenceSchedulerArn = string
type inferenceExecutionStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type idempotenceToken = string
type iamRoleArn = string
type fileNameTimestampFormat = string
type datasetStatus = [
  | @as("ACTIVE") #ACTIVE
  | @as("INGESTION_IN_PROGRESS") #INGESTION_IN_PROGRESS
  | @as("CREATED") #CREATED
]
type datasetName = string
type datasetIdentifier = string
type datasetArn = string
type dataUploadFrequency = [
  | @as("PT1H") #PT1H
  | @as("PT30M") #PT30M
  | @as("PT15M") #PT15M
  | @as("PT10M") #PT10M
  | @as("PT5M") #PT5M
]
type dataDelayOffsetInMinutes = float
type componentTimestampDelimiter = string
type boundedLengthString = string
type amazonResourceArn = string
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type s3Object = {
  @as("Key") key: s3Key,
  @as("Bucket") bucket: s3Bucket,
}
type modelSummary = {
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("Status") status: option<modelStatus>,
  @as("DatasetArn") datasetArn: option<datasetArn>,
  @as("DatasetName") datasetName: option<datasetName>,
  @as("ModelArn") modelArn: option<modelArn>,
  @as("ModelName") modelName: option<modelName>,
}
type labelsS3InputConfiguration = {
  @as("Prefix") prefix: option<s3Prefix>,
  @as("Bucket") bucket: s3Bucket,
}
type ingestionS3InputConfiguration = {
  @as("Prefix") prefix: option<s3Prefix>,
  @as("Bucket") bucket: s3Bucket,
}
type inferenceSchedulerSummary = {
  @as("DataUploadFrequency") dataUploadFrequency: option<dataUploadFrequency>,
  @as("DataDelayOffsetInMinutes") dataDelayOffsetInMinutes: option<dataDelayOffsetInMinutes>,
  @as("Status") status: option<inferenceSchedulerStatus>,
  @as("InferenceSchedulerArn") inferenceSchedulerArn: option<inferenceSchedulerArn>,
  @as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerName>,
  @as("ModelArn") modelArn: option<modelArn>,
  @as("ModelName") modelName: option<modelName>,
}
type inferenceS3OutputConfiguration = {
  @as("Prefix") prefix: option<s3Prefix>,
  @as("Bucket") bucket: s3Bucket,
}
type inferenceS3InputConfiguration = {
  @as("Prefix") prefix: option<s3Prefix>,
  @as("Bucket") bucket: s3Bucket,
}
type inferenceInputNameConfiguration = {
  @as("ComponentTimestampDelimiter")
  componentTimestampDelimiter: option<componentTimestampDelimiter>,
  @as("TimestampFormat") timestampFormat: option<fileNameTimestampFormat>,
}
type datasetSummary = {
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("Status") status: option<datasetStatus>,
  @as("DatasetArn") datasetArn: option<datasetArn>,
  @as("DatasetName") datasetName: option<datasetName>,
}
type datasetSchema = {
  @as("InlineDataSchema") inlineDataSchema: option<synthesizedJsonInlineDataSchema>,
}
type dataPreProcessingConfiguration = {
  @as("TargetSamplingRate") targetSamplingRate: option<targetSamplingRate>,
}
type tagList_ = array<tag>
type modelSummaries = array<modelSummary>
type labelsInputConfiguration = {
  @as("S3InputConfiguration") s3InputConfiguration: labelsS3InputConfiguration,
}
type ingestionInputConfiguration = {
  @as("S3InputConfiguration") s3InputConfiguration: ingestionS3InputConfiguration,
}
type inferenceSchedulerSummaries = array<inferenceSchedulerSummary>
type inferenceOutputConfiguration = {
  @as("KmsKeyId") kmsKeyId: option<nameOrArn>,
  @as("S3OutputConfiguration") s3OutputConfiguration: inferenceS3OutputConfiguration,
}
type inferenceInputConfiguration = {
  @as("InferenceInputNameConfiguration")
  inferenceInputNameConfiguration: option<inferenceInputNameConfiguration>,
  @as("InputTimeZoneOffset") inputTimeZoneOffset: option<timeZoneOffset>,
  @as("S3InputConfiguration") s3InputConfiguration: option<inferenceS3InputConfiguration>,
}
type datasetSummaries = array<datasetSummary>
type inferenceExecutionSummary = {
  @as("FailedReason") failedReason: option<boundedLengthString>,
  @as("Status") status: option<inferenceExecutionStatus>,
  @as("CustomerResultObject") customerResultObject: option<s3Object>,
  @as("DataOutputConfiguration") dataOutputConfiguration: option<inferenceOutputConfiguration>,
  @as("DataInputConfiguration") dataInputConfiguration: option<inferenceInputConfiguration>,
  @as("DataEndTime") dataEndTime: option<timestamp_>,
  @as("DataStartTime") dataStartTime: option<timestamp_>,
  @as("ScheduledStartTime") scheduledStartTime: option<timestamp_>,
  @as("InferenceSchedulerArn") inferenceSchedulerArn: option<inferenceSchedulerArn>,
  @as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerName>,
  @as("ModelArn") modelArn: option<modelArn>,
  @as("ModelName") modelName: option<modelName>,
}
type dataIngestionJobSummary = {
  @as("Status") status: option<ingestionJobStatus>,
  @as("IngestionInputConfiguration")
  ingestionInputConfiguration: option<ingestionInputConfiguration>,
  @as("DatasetArn") datasetArn: option<datasetArn>,
  @as("DatasetName") datasetName: option<datasetName>,
  @as("JobId") jobId: option<ingestionJobId>,
}
type inferenceExecutionSummaries = array<inferenceExecutionSummary>
type dataIngestionJobSummaries = array<dataIngestionJobSummary>

module StopInferenceScheduler = {
  type t
  type request = {
    @as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerIdentifier,
  }
  type response = {
    @as("Status") status: option<inferenceSchedulerStatus>,
    @as("InferenceSchedulerArn") inferenceSchedulerArn: option<inferenceSchedulerArn>,
    @as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerName>,
    @as("ModelName") modelName: option<modelName>,
    @as("ModelArn") modelArn: option<modelArn>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "StopInferenceSchedulerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartInferenceScheduler = {
  type t
  type request = {
    @as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerIdentifier,
  }
  type response = {
    @as("Status") status: option<inferenceSchedulerStatus>,
    @as("InferenceSchedulerArn") inferenceSchedulerArn: option<inferenceSchedulerArn>,
    @as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerName>,
    @as("ModelName") modelName: option<modelName>,
    @as("ModelArn") modelArn: option<modelArn>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "StartInferenceSchedulerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteModel = {
  type t
  type request = {@as("ModelName") modelName: modelName}

  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "DeleteModelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteInferenceScheduler = {
  type t
  type request = {
    @as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerIdentifier,
  }

  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "DeleteInferenceSchedulerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataset = {
  type t
  type request = {@as("DatasetName") datasetName: datasetIdentifier}

  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "DeleteDatasetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: amazonResourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInferenceScheduler = {
  type t
  type request = {
    @as("RoleArn") roleArn: option<iamRoleArn>,
    @as("DataOutputConfiguration") dataOutputConfiguration: option<inferenceOutputConfiguration>,
    @as("DataInputConfiguration") dataInputConfiguration: option<inferenceInputConfiguration>,
    @as("DataUploadFrequency") dataUploadFrequency: option<dataUploadFrequency>,
    @as("DataDelayOffsetInMinutes") dataDelayOffsetInMinutes: option<dataDelayOffsetInMinutes>,
    @as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerIdentifier,
  }

  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "UpdateInferenceSchedulerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceArn") resourceArn: amazonResourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDataIngestionJob = {
  type t
  type request = {
    @as("ClientToken") clientToken: idempotenceToken,
    @as("RoleArn") roleArn: iamRoleArn,
    @as("IngestionInputConfiguration") ingestionInputConfiguration: ingestionInputConfiguration,
    @as("DatasetName") datasetName: datasetIdentifier,
  }
  type response = {
    @as("Status") status: option<ingestionJobStatus>,
    @as("JobId") jobId: option<ingestionJobId>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "StartDataIngestionJobCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: amazonResourceArn}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListModels = {
  type t
  type request = {
    @as("DatasetNameBeginsWith") datasetNameBeginsWith: option<datasetName>,
    @as("ModelNameBeginsWith") modelNameBeginsWith: option<modelName>,
    @as("Status") status: option<modelStatus>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("ModelSummaries") modelSummaries: option<modelSummaries>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new external new_: request => t = "ListModelsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInferenceSchedulers = {
  type t
  type request = {
    @as("ModelName") modelName: option<modelName>,
    @as("InferenceSchedulerNameBeginsWith")
    inferenceSchedulerNameBeginsWith: option<inferenceSchedulerIdentifier>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("InferenceSchedulerSummaries")
    inferenceSchedulerSummaries: option<inferenceSchedulerSummaries>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "ListInferenceSchedulersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasets = {
  type t
  type request = {
    @as("DatasetNameBeginsWith") datasetNameBeginsWith: option<datasetName>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("DatasetSummaries") datasetSummaries: option<datasetSummaries>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "ListDatasetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeModel = {
  type t
  type request = {@as("ModelName") modelName: modelName}
  type response = {
    @as("ServerSideKmsKeyId") serverSideKmsKeyId: option<kmsKeyArn>,
    @as("CreatedAt") createdAt: option<timestamp_>,
    @as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
    @as("ModelMetrics") modelMetrics: option<synthesizedJsonModelMetrics>,
    @as("FailedReason") failedReason: option<boundedLengthString>,
    @as("TrainingExecutionEndTime") trainingExecutionEndTime: option<timestamp_>,
    @as("TrainingExecutionStartTime") trainingExecutionStartTime: option<timestamp_>,
    @as("Status") status: option<modelStatus>,
    @as("DataPreProcessingConfiguration")
    dataPreProcessingConfiguration: option<dataPreProcessingConfiguration>,
    @as("RoleArn") roleArn: option<iamRoleArn>,
    @as("EvaluationDataEndTime") evaluationDataEndTime: option<timestamp_>,
    @as("EvaluationDataStartTime") evaluationDataStartTime: option<timestamp_>,
    @as("TrainingDataEndTime") trainingDataEndTime: option<timestamp_>,
    @as("TrainingDataStartTime") trainingDataStartTime: option<timestamp_>,
    @as("LabelsInputConfiguration") labelsInputConfiguration: option<labelsInputConfiguration>,
    @as("Schema") schema: option<synthesizedJsonInlineDataSchema>,
    @as("DatasetArn") datasetArn: option<datasetArn>,
    @as("DatasetName") datasetName: option<datasetName>,
    @as("ModelArn") modelArn: option<modelArn>,
    @as("ModelName") modelName: option<modelName>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "DescribeModelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInferenceScheduler = {
  type t
  type request = {
    @as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerIdentifier,
  }
  type response = {
    @as("ServerSideKmsKeyId") serverSideKmsKeyId: option<kmsKeyArn>,
    @as("RoleArn") roleArn: option<iamRoleArn>,
    @as("DataOutputConfiguration") dataOutputConfiguration: option<inferenceOutputConfiguration>,
    @as("DataInputConfiguration") dataInputConfiguration: option<inferenceInputConfiguration>,
    @as("UpdatedAt") updatedAt: option<timestamp_>,
    @as("CreatedAt") createdAt: option<timestamp_>,
    @as("DataUploadFrequency") dataUploadFrequency: option<dataUploadFrequency>,
    @as("DataDelayOffsetInMinutes") dataDelayOffsetInMinutes: option<dataDelayOffsetInMinutes>,
    @as("Status") status: option<inferenceSchedulerStatus>,
    @as("InferenceSchedulerArn") inferenceSchedulerArn: option<inferenceSchedulerArn>,
    @as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerName>,
    @as("ModelName") modelName: option<modelName>,
    @as("ModelArn") modelArn: option<modelArn>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "DescribeInferenceSchedulerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataset = {
  type t
  type request = {@as("DatasetName") datasetName: datasetIdentifier}
  type response = {
    @as("IngestionInputConfiguration")
    ingestionInputConfiguration: option<ingestionInputConfiguration>,
    @as("ServerSideKmsKeyId") serverSideKmsKeyId: option<kmsKeyArn>,
    @as("Schema") schema: option<synthesizedJsonInlineDataSchema>,
    @as("Status") status: option<datasetStatus>,
    @as("LastUpdatedAt") lastUpdatedAt: option<timestamp_>,
    @as("CreatedAt") createdAt: option<timestamp_>,
    @as("DatasetArn") datasetArn: option<datasetArn>,
    @as("DatasetName") datasetName: option<datasetName>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "DescribeDatasetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataIngestionJob = {
  type t
  type request = {@as("JobId") jobId: ingestionJobId}
  type response = {
    @as("FailedReason") failedReason: option<boundedLengthString>,
    @as("Status") status: option<ingestionJobStatus>,
    @as("CreatedAt") createdAt: option<timestamp_>,
    @as("RoleArn") roleArn: option<iamRoleArn>,
    @as("IngestionInputConfiguration")
    ingestionInputConfiguration: option<ingestionInputConfiguration>,
    @as("DatasetArn") datasetArn: option<datasetArn>,
    @as("JobId") jobId: option<ingestionJobId>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "DescribeDataIngestionJobCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModel = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ServerSideKmsKeyId") serverSideKmsKeyId: option<nameOrArn>,
    @as("DataPreProcessingConfiguration")
    dataPreProcessingConfiguration: option<dataPreProcessingConfiguration>,
    @as("RoleArn") roleArn: option<iamRoleArn>,
    @as("EvaluationDataEndTime") evaluationDataEndTime: option<timestamp_>,
    @as("EvaluationDataStartTime") evaluationDataStartTime: option<timestamp_>,
    @as("TrainingDataEndTime") trainingDataEndTime: option<timestamp_>,
    @as("TrainingDataStartTime") trainingDataStartTime: option<timestamp_>,
    @as("ClientToken") clientToken: idempotenceToken,
    @as("LabelsInputConfiguration") labelsInputConfiguration: option<labelsInputConfiguration>,
    @as("DatasetSchema") datasetSchema: option<datasetSchema>,
    @as("DatasetName") datasetName: datasetIdentifier,
    @as("ModelName") modelName: modelName,
  }
  type response = {
    @as("Status") status: option<modelStatus>,
    @as("ModelArn") modelArn: option<modelArn>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "CreateModelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInferenceScheduler = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientToken") clientToken: idempotenceToken,
    @as("ServerSideKmsKeyId") serverSideKmsKeyId: option<nameOrArn>,
    @as("RoleArn") roleArn: iamRoleArn,
    @as("DataOutputConfiguration") dataOutputConfiguration: inferenceOutputConfiguration,
    @as("DataInputConfiguration") dataInputConfiguration: inferenceInputConfiguration,
    @as("DataUploadFrequency") dataUploadFrequency: dataUploadFrequency,
    @as("DataDelayOffsetInMinutes") dataDelayOffsetInMinutes: option<dataDelayOffsetInMinutes>,
    @as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerName,
    @as("ModelName") modelName: modelName,
  }
  type response = {
    @as("Status") status: option<inferenceSchedulerStatus>,
    @as("InferenceSchedulerName") inferenceSchedulerName: option<inferenceSchedulerName>,
    @as("InferenceSchedulerArn") inferenceSchedulerArn: option<inferenceSchedulerArn>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "CreateInferenceSchedulerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataset = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientToken") clientToken: idempotenceToken,
    @as("ServerSideKmsKeyId") serverSideKmsKeyId: option<nameOrArn>,
    @as("DatasetSchema") datasetSchema: datasetSchema,
    @as("DatasetName") datasetName: datasetName,
  }
  type response = {
    @as("Status") status: option<datasetStatus>,
    @as("DatasetArn") datasetArn: option<datasetArn>,
    @as("DatasetName") datasetName: option<datasetName>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "CreateDatasetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInferenceExecutions = {
  type t
  type request = {
    @as("Status") status: option<inferenceExecutionStatus>,
    @as("DataEndTimeBefore") dataEndTimeBefore: option<timestamp_>,
    @as("DataStartTimeAfter") dataStartTimeAfter: option<timestamp_>,
    @as("InferenceSchedulerName") inferenceSchedulerName: inferenceSchedulerIdentifier,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("InferenceExecutionSummaries")
    inferenceExecutionSummaries: option<inferenceExecutionSummaries>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "ListInferenceExecutionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataIngestionJobs = {
  type t
  type request = {
    @as("Status") status: option<ingestionJobStatus>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("DatasetName") datasetName: option<datasetName>,
  }
  type response = {
    @as("DataIngestionJobSummaries") dataIngestionJobSummaries: option<dataIngestionJobSummaries>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new_: request => t = "ListDataIngestionJobsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
