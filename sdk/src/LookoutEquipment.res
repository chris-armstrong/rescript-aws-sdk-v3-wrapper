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
type offCondition = string
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
@ocaml.doc("<p>A tag is a key-value pair that can be added to a resource as metadata. </p>")
type tag = {
  @ocaml.doc("<p>The value for the specified tag. </p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The key for the specified tag. </p>") @as("Key") key: tagKey,
}
@ocaml.doc("<p>Contains information about an S3 bucket. </p>")
type s3Object = {
  @ocaml.doc("<p>The AWS Key Management Service (AWS KMS) key being used to encrypt the S3 object.
         Without this key, data in the bucket is not accessible. </p>")
  @as("Key")
  key: s3Key,
  @ocaml.doc("<p>The name of the specific S3 bucket. </p>") @as("Bucket") bucket: s3Bucket,
}
@ocaml.doc("<p>Provides information about the specified ML model, including dataset and model names and
         ARNs, as well as status. </p>")
type modelSummary = {
  @ocaml.doc("<p>The time at which the specific model was created. </p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>Indicates the status of the ML model. </p>") @as("Status")
  status: option<modelStatus>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the dataset used to create the model. </p>")
  @as("DatasetArn")
  datasetArn: option<datasetArn>,
  @ocaml.doc("<p>The name of the dataset being used for the ML model. </p>") @as("DatasetName")
  datasetName: option<datasetName>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the ML model. </p>") @as("ModelArn")
  modelArn: option<modelArn>,
  @ocaml.doc("<p>The name of the ML model. </p>") @as("ModelName") modelName: option<modelName>,
}
@ocaml.doc("<p>The location information (prefix and bucket name) for the s3 location being used for
         label data. </p>")
type labelsS3InputConfiguration = {
  @ocaml.doc("<p> The prefix for the S3 bucket used for the label data. </p>") @as("Prefix")
  prefix: option<s3Prefix>,
  @ocaml.doc("<p>The name of the S3 bucket holding the label data. </p>") @as("Bucket")
  bucket: s3Bucket,
}
@ocaml.doc("<p> Specifies S3 configuration information for the input data for the data ingestion job.
      </p>")
type ingestionS3InputConfiguration = {
  @ocaml.doc("<p>The prefix for the S3 location being used for the input data for the data ingestion.
      </p>")
  @as("Prefix")
  prefix: option<s3Prefix>,
  @ocaml.doc("<p>The name of the S3 bucket used for the input data for the data ingestion. </p>")
  @as("Bucket")
  bucket: s3Bucket,
}
@ocaml.doc("<p>Contains information about the specific inference scheduler, including data delay
         offset, model name and ARN, status, and so on. </p>")
type inferenceSchedulerSummary = {
  @ocaml.doc("<p>How often data is uploaded to the source S3 bucket for the input data. This value is the
         length of time between data uploads. For instance, if you select 5 minutes, Amazon Lookout for Equipment
         will upload the real-time data to the source bucket once every 5 minutes. This frequency also
         determines how often Amazon Lookout for Equipment starts a scheduled inference on your data. In this
         example, it starts once every 5 minutes. </p>")
  @as("DataUploadFrequency")
  dataUploadFrequency: option<dataUploadFrequency>,
  @ocaml.doc("<p>A period of time (in minutes) by which inference on the data is delayed after the data
         starts. For instance, if an offset delay time of five minutes was selected, inference will
         not begin on the data until the first data measurement after the five minute mark. For example, if 
         five minutes is selected, the inference scheduler will wake up at the configured frequency with the 
         additional five minute delay time to check the customer S3 bucket. The customer can upload data at 
         the same frequency and they don't need to stop and restart the scheduler when uploading new data.
      </p>")
  @as("DataDelayOffsetInMinutes")
  dataDelayOffsetInMinutes: option<dataDelayOffsetInMinutes>,
  @ocaml.doc("<p>Indicates the status of the inference scheduler. </p>") @as("Status")
  status: option<inferenceSchedulerStatus>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the inference scheduler. </p>")
  @as("InferenceSchedulerArn")
  inferenceSchedulerArn: option<inferenceSchedulerArn>,
  @ocaml.doc("<p>The name of the inference scheduler. </p>") @as("InferenceSchedulerName")
  inferenceSchedulerName: option<inferenceSchedulerName>,
  @ocaml.doc(
    "<p> The Amazon Resource Name (ARN) of the ML model used by the inference scheduler. </p>"
  )
  @as("ModelArn")
  modelArn: option<modelArn>,
  @ocaml.doc("<p>The name of the ML model used for the inference scheduler. </p>") @as("ModelName")
  modelName: option<modelName>,
}
@ocaml.doc("<p> Specifies configuration information for the output results from the inference,
         including output S3 location. </p>")
type inferenceS3OutputConfiguration = {
  @ocaml.doc(
    "<p> The prefix for the S3 bucket used for the output results from the inference. </p>"
  )
  @as("Prefix")
  prefix: option<s3Prefix>,
  @ocaml.doc("<p> The bucket containing the output results from the inference </p>") @as("Bucket")
  bucket: s3Bucket,
}
@ocaml.doc("<p> Specifies configuration information for the input data for the inference, including
         input data S3 location. </p>")
type inferenceS3InputConfiguration = {
  @ocaml.doc("<p>The prefix for the S3 bucket used for the input data for the inference. </p>")
  @as("Prefix")
  prefix: option<s3Prefix>,
  @ocaml.doc("<p>The bucket containing the input dataset for the inference. </p>") @as("Bucket")
  bucket: s3Bucket,
}
@ocaml.doc("<p>Specifies configuration information for the input data for the inference, including
         timestamp format and delimiter. </p>")
type inferenceInputNameConfiguration = {
  @ocaml.doc("<p>Indicates the delimiter character used between items in the data. </p>")
  @as("ComponentTimestampDelimiter")
  componentTimestampDelimiter: option<componentTimestampDelimiter>,
  @ocaml.doc("<p>The format of the timestamp, whether Epoch time, or standard, with or without hyphens
         (-). </p>")
  @as("TimestampFormat")
  timestampFormat: option<fileNameTimestampFormat>,
}
@ocaml.doc("<p>Contains information about the specific data set, including name, ARN, and status.
      </p>")
type datasetSummary = {
  @ocaml.doc("<p>The time at which the dataset was created in Amazon Lookout for Equipment. </p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>Indicates the status of the dataset. </p>") @as("Status")
  status: option<datasetStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the specified dataset. </p>") @as("DatasetArn")
  datasetArn: option<datasetArn>,
  @ocaml.doc("<p>The name of the dataset. </p>") @as("DatasetName")
  datasetName: option<datasetName>,
}
@ocaml.doc("<p>Provides information about the data schema used with the given dataset. </p>")
type datasetSchema = {
  @ocaml.doc("<p>
      </p>")
  @as("InlineDataSchema")
  inlineDataSchema: option<synthesizedJsonInlineDataSchema>,
}
@ocaml.doc("<p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of 
         the data after post processing by 
         Amazon Lookout for Equipment. For example, if you provide data that 
         has been collected at a 1 second level and you want the system to resample 
         the data at a 1 minute rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>
            <p>When providing a value for the <code>TargetSamplingRate</code>, you must 
               attach the prefix \"PT\" to the rate you want.  The value for a 1 second rate 
               is therefore <i>PT1S</i>, the value for a 15 minute rate 
               is <i>PT15M</i>, and the value for a 1 hour rate 
               is <i>PT1H</i>
         </p>")
type dataPreProcessingConfiguration = {
  @ocaml.doc("<p>The sampling rate of the data after post processing by Amazon Lookout for Equipment. 
         For example, if you provide data that has been collected at a 1 second level and 
         you want the system to resample the data at a 1 minute rate before training, 
         the <code>TargetSamplingRate</code> is 1 minute.</p>
         <p>When providing a value for the <code>TargetSamplingRate</code>, you must attach 
            the prefix \"PT\" to the rate you want.  The value for a 1 second rate is 
            therefore <i>PT1S</i>, the value for a 15 minute 
            rate is <i>PT15M</i>, and the value for a 1 hour rate 
            is <i>PT1H</i>
         </p>")
  @as("TargetSamplingRate")
  targetSamplingRate: option<targetSamplingRate>,
}
type tagList_ = array<tag>
type modelSummaries = array<modelSummary>
@ocaml.doc("<p>Contains the configuration information for the S3 location being used to hold label
         data. </p>")
type labelsInputConfiguration = {
  @ocaml.doc("<p>Contains location information for the S3 location being used for label data. </p>")
  @as("S3InputConfiguration")
  s3InputConfiguration: labelsS3InputConfiguration,
}
@ocaml.doc("<p> Specifies configuration information for the input data for the data ingestion job,
         including input data S3 location. </p>")
type ingestionInputConfiguration = {
  @ocaml.doc("<p>The location information for the S3 bucket used for input data for the data ingestion.
      </p>")
  @as("S3InputConfiguration")
  s3InputConfiguration: ingestionS3InputConfiguration,
}
type inferenceSchedulerSummaries = array<inferenceSchedulerSummary>
@ocaml.doc("<p> Specifies configuration information for the output results from for the inference,
         including KMS key ID and output S3 location. </p>")
type inferenceOutputConfiguration = {
  @ocaml.doc("<p>The ID number for the AWS KMS key used to encrypt the inference output. </p>")
  @as("KmsKeyId")
  kmsKeyId: option<nameOrArn>,
  @ocaml.doc("<p> Specifies configuration information for the output results from for the inference,
         output S3 location. </p>")
  @as("S3OutputConfiguration")
  s3OutputConfiguration: inferenceS3OutputConfiguration,
}
@ocaml.doc("<p>Specifies configuration information for the input data for the inference, including S3
         location of input data.. </p>")
type inferenceInputConfiguration = {
  @ocaml.doc("<p>Specifies configuration information for the input data for the inference, including
         timestamp format and delimiter. </p>")
  @as("InferenceInputNameConfiguration")
  inferenceInputNameConfiguration: option<inferenceInputNameConfiguration>,
  @ocaml.doc(
    "<p>Indicates the difference between your time zone and Greenwich Mean Time (GMT). </p>"
  )
  @as("InputTimeZoneOffset")
  inputTimeZoneOffset: option<timeZoneOffset>,
  @ocaml.doc("<p> Specifies configuration information for the input data for the inference, including S3
         location of input data.. </p>")
  @as("S3InputConfiguration")
  s3InputConfiguration: option<inferenceS3InputConfiguration>,
}
type datasetSummaries = array<datasetSummary>
@ocaml.doc("<p>Contains information about the specific inference execution, including input and output
         data configuration, inference scheduling information, status, and so on. </p>")
type inferenceExecutionSummary = {
  @ocaml.doc("<p> Specifies the reason for failure when an inference execution has failed. </p>")
  @as("FailedReason")
  failedReason: option<boundedLengthString>,
  @ocaml.doc("<p>Indicates the status of the inference execution. </p>") @as("Status")
  status: option<inferenceExecutionStatus>,
  @ocaml.doc("<p>
      </p>")
  @as("CustomerResultObject")
  customerResultObject: option<s3Object>,
  @ocaml.doc("<p> Specifies configuration information for the output results from for the inference
         execution, including the output S3 location. </p>")
  @as("DataOutputConfiguration")
  dataOutputConfiguration: option<inferenceOutputConfiguration>,
  @ocaml.doc("<p> Specifies configuration information for the input data for the inference scheduler,
         including delimiter, format, and dataset location. </p>")
  @as("DataInputConfiguration")
  dataInputConfiguration: option<inferenceInputConfiguration>,
  @ocaml.doc("<p>Indicates the time reference in the dataset at which the inference execution stopped.
      </p>")
  @as("DataEndTime")
  dataEndTime: option<timestamp_>,
  @ocaml.doc("<p>Indicates the time reference in the dataset at which the inference execution began.
      </p>")
  @as("DataStartTime")
  dataStartTime: option<timestamp_>,
  @ocaml.doc("<p>Indicates the start time at which the inference scheduler began the specific inference
         execution. </p>")
  @as("ScheduledStartTime")
  scheduledStartTime: option<timestamp_>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the inference scheduler being used for the inference
         execution. </p>")
  @as("InferenceSchedulerArn")
  inferenceSchedulerArn: option<inferenceSchedulerArn>,
  @ocaml.doc("<p>The name of the inference scheduler being used for the inference execution. </p>")
  @as("InferenceSchedulerName")
  inferenceSchedulerName: option<inferenceSchedulerName>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the ML model used for the inference execution. </p>"
  )
  @as("ModelArn")
  modelArn: option<modelArn>,
  @ocaml.doc("<p>The name of the ML model being used for the inference execution. </p>")
  @as("ModelName")
  modelName: option<modelName>,
}
@ocaml.doc("<p>Provides information about a specified data ingestion job, including dataset
         information, data ingestion configuration, and status. </p>")
type dataIngestionJobSummary = {
  @ocaml.doc("<p>Indicates the status of the data ingestion job. </p>") @as("Status")
  status: option<ingestionJobStatus>,
  @ocaml.doc("<p> Specifies information for the input data for the data inference job, including data S3
         location parameters. </p>")
  @as("IngestionInputConfiguration")
  ingestionInputConfiguration: option<ingestionInputConfiguration>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the dataset used in the data ingestion job. </p>"
  )
  @as("DatasetArn")
  datasetArn: option<datasetArn>,
  @ocaml.doc("<p>The name of the dataset used for the data ingestion job. </p>") @as("DatasetName")
  datasetName: option<datasetName>,
  @ocaml.doc("<p>Indicates the job ID of the data ingestion job. </p>") @as("JobId")
  jobId: option<ingestionJobId>,
}
type inferenceExecutionSummaries = array<inferenceExecutionSummary>
type dataIngestionJobSummaries = array<dataIngestionJobSummary>
@ocaml.doc("<p>Amazon Lookout for Equipment is a machine learning service that uses advanced analytics to identify
         anomalies in machines from sensor data for use in predictive maintenance. </p>")
module StopInferenceScheduler = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the inference scheduler to be stopped. </p>")
    @as("InferenceSchedulerName")
    inferenceSchedulerName: inferenceSchedulerIdentifier,
  }
  type response = {
    @ocaml.doc("<p>Indicates the status of the inference scheduler. </p>") @as("Status")
    status: option<inferenceSchedulerStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the inference schedule being stopped. </p>")
    @as("InferenceSchedulerArn")
    inferenceSchedulerArn: option<inferenceSchedulerArn>,
    @ocaml.doc("<p>The name of the inference scheduler being stopped. </p>")
    @as("InferenceSchedulerName")
    inferenceSchedulerName: option<inferenceSchedulerName>,
    @ocaml.doc("<p>The name of the ML model used by the inference scheduler being stopped. </p>")
    @as("ModelName")
    modelName: option<modelName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the ML model used by the inference scheduler being
         stopped. </p>")
    @as("ModelArn")
    modelArn: option<modelArn>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "StopInferenceSchedulerCommand"
  let make = (~inferenceSchedulerName, ()) => new({inferenceSchedulerName: inferenceSchedulerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartInferenceScheduler = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the inference scheduler to be started. </p>")
    @as("InferenceSchedulerName")
    inferenceSchedulerName: inferenceSchedulerIdentifier,
  }
  type response = {
    @ocaml.doc("<p>Indicates the status of the inference scheduler. </p>") @as("Status")
    status: option<inferenceSchedulerStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the inference scheduler being started. </p>")
    @as("InferenceSchedulerArn")
    inferenceSchedulerArn: option<inferenceSchedulerArn>,
    @ocaml.doc("<p>The name of the inference scheduler being started. </p>")
    @as("InferenceSchedulerName")
    inferenceSchedulerName: option<inferenceSchedulerName>,
    @ocaml.doc("<p>The name of the ML model being used by the inference scheduler. </p>")
    @as("ModelName")
    modelName: option<modelName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the ML model being used by the inference scheduler.
      </p>")
    @as("ModelArn")
    modelArn: option<modelArn>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "StartInferenceSchedulerCommand"
  let make = (~inferenceSchedulerName, ()) => new({inferenceSchedulerName: inferenceSchedulerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteModel = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the ML model to be deleted. </p>") @as("ModelName")
    modelName: modelName,
  }
  type response = {.}
  @module("@aws-sdk/client-lookoutequipment") @new external new: request => t = "DeleteModelCommand"
  let make = (~modelName, ()) => new({modelName: modelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteInferenceScheduler = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the inference scheduler to be deleted. </p>")
    @as("InferenceSchedulerName")
    inferenceSchedulerName: inferenceSchedulerIdentifier,
  }
  type response = {.}
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "DeleteInferenceSchedulerCommand"
  let make = (~inferenceSchedulerName, ()) => new({inferenceSchedulerName: inferenceSchedulerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteDataset = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the dataset to be deleted. </p>") @as("DatasetName")
    datasetName: datasetIdentifier,
  }
  type response = {.}
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "DeleteDatasetCommand"
  let make = (~datasetName, ()) => new({datasetName: datasetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the key of the tag to be removed from a specified resource. </p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to which the tag is currently associated.
      </p>")
    @as("ResourceArn")
    resourceArn: amazonResourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateInferenceScheduler = {
  type t
  type request = {
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
         the inference scheduler. </p>")
    @as("RoleArn")
    roleArn: option<iamRoleArn>,
    @ocaml.doc(
      "<p> Specifies information for the output results from the inference scheduler, including the output S3 location. </p>"
    )
    @as("DataOutputConfiguration")
    dataOutputConfiguration: option<inferenceOutputConfiguration>,
    @ocaml.doc("<p> Specifies information for the input data for the inference scheduler, including
         delimiter, format, and dataset location. </p>")
    @as("DataInputConfiguration")
    dataInputConfiguration: option<inferenceInputConfiguration>,
    @ocaml.doc("<p>How often data is uploaded to the source S3 bucket for the input data. The value chosen
         is the length of time between data uploads. For instance, if you select 5 minutes, Amazon
         Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This frequency
         also determines how often Amazon Lookout for Equipment starts a scheduled inference on your data. In this
         example, it starts once every 5 minutes. </p>")
    @as("DataUploadFrequency")
    dataUploadFrequency: option<dataUploadFrequency>,
    @ocaml.doc("<p> A period of time (in minutes) by which inference on the data is delayed after the data
         starts. For instance, if you select an offset delay time of five minutes, inference will
         not begin on the data until the first data measurement after the five minute mark. For example, if 
         five minutes is selected, the inference scheduler will wake up at the configured frequency with the 
         additional five minute delay time to check the customer S3 bucket. The customer can upload data at 
         the same frequency and they don't need to stop and restart the scheduler when uploading new data.</p>")
    @as("DataDelayOffsetInMinutes")
    dataDelayOffsetInMinutes: option<dataDelayOffsetInMinutes>,
    @ocaml.doc("<p>The name of the inference scheduler to be updated. </p>")
    @as("InferenceSchedulerName")
    inferenceSchedulerName: inferenceSchedulerIdentifier,
  }
  type response = {.}
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "UpdateInferenceSchedulerCommand"
  let make = (
    ~inferenceSchedulerName,
    ~roleArn=?,
    ~dataOutputConfiguration=?,
    ~dataInputConfiguration=?,
    ~dataUploadFrequency=?,
    ~dataDelayOffsetInMinutes=?,
    (),
  ) =>
    new({
      roleArn,
      dataOutputConfiguration,
      dataInputConfiguration,
      dataUploadFrequency,
      dataDelayOffsetInMinutes,
      inferenceSchedulerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag or tags to be associated with a specific resource. Both the tag key and value
         are specified. </p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the specific resource to which the tag should be
         associated. </p>")
    @as("ResourceArn")
    resourceArn: amazonResourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-lookoutequipment") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartDataIngestionJob = {
  type t
  type request = {
    @ocaml.doc("<p> A unique identifier for the request. If you do not set the client request token, Amazon
         Lookout for Equipment generates one. </p>")
    @as("ClientToken")
    clientToken: idempotenceToken,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
         the data ingestion job. </p>")
    @as("RoleArn")
    roleArn: iamRoleArn,
    @ocaml.doc("<p> Specifies information for the input data for the data ingestion job, including dataset
         S3 location. </p>")
    @as("IngestionInputConfiguration")
    ingestionInputConfiguration: ingestionInputConfiguration,
    @ocaml.doc("<p>The name of the dataset being used by the data ingestion job. </p>")
    @as("DatasetName")
    datasetName: datasetIdentifier,
  }
  type response = {
    @ocaml.doc("<p>Indicates the status of the <code>StartDataIngestionJob</code> operation. </p>")
    @as("Status")
    status: option<ingestionJobStatus>,
    @ocaml.doc("<p>Indicates the job ID of the data ingestion job. </p>") @as("JobId")
    jobId: option<ingestionJobId>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "StartDataIngestionJobCommand"
  let make = (~clientToken, ~roleArn, ~ingestionInputConfiguration, ~datasetName, ()) =>
    new({clientToken, roleArn, ingestionInputConfiguration, datasetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource (such as the dataset or model) that is
         the focus of the <code>ListTagsForResource</code> operation. </p>")
    @as("ResourceArn")
    resourceArn: amazonResourceArn,
  }
  type response = {
    @ocaml.doc("<p> Any tags associated with the resource. </p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListModels = {
  type t
  type request = {
    @ocaml.doc("<p>The beginning of the name of the dataset of the ML models to be listed. </p>")
    @as("DatasetNameBeginsWith")
    datasetNameBeginsWith: option<datasetName>,
    @ocaml.doc("<p>The beginning of the name of the ML models being listed. </p>")
    @as("ModelNameBeginsWith")
    modelNameBeginsWith: option<modelName>,
    @ocaml.doc("<p>The status of the ML model. </p>") @as("Status") status: option<modelStatus>,
    @ocaml.doc("<p> Specifies the maximum number of ML models to list. </p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p> An opaque pagination token indicating where to continue the listing of ML models.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>Provides information on the specified model, including created time, model and dataset
         ARNs, and status. </p>")
    @as("ModelSummaries")
    modelSummaries: option<modelSummaries>,
    @ocaml.doc("<p> An opaque pagination token indicating where to continue the listing of ML models.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new external new: request => t = "ListModelsCommand"
  let make = (
    ~datasetNameBeginsWith=?,
    ~modelNameBeginsWith=?,
    ~status=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) => new({datasetNameBeginsWith, modelNameBeginsWith, status, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListInferenceSchedulers = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the ML model used by the inference scheduler to be listed. </p>")
    @as("ModelName")
    modelName: option<modelName>,
    @ocaml.doc("<p>The beginning of the name of the inference schedulers to be listed. </p>")
    @as("InferenceSchedulerNameBeginsWith")
    inferenceSchedulerNameBeginsWith: option<inferenceSchedulerIdentifier>,
    @ocaml.doc("<p> Specifies the maximum number of inference schedulers to list. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p> An opaque pagination token indicating where to continue the listing of inference
         schedulers. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>Provides information about the specified inference scheduler, including data upload
         frequency, model name and ARN, and status. </p>")
    @as("InferenceSchedulerSummaries")
    inferenceSchedulerSummaries: option<inferenceSchedulerSummaries>,
    @ocaml.doc("<p> An opaque pagination token indicating where to continue the listing of inference
         schedulers. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "ListInferenceSchedulersCommand"
  let make = (~modelName=?, ~inferenceSchedulerNameBeginsWith=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({modelName, inferenceSchedulerNameBeginsWith, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDatasets = {
  type t
  type request = {
    @ocaml.doc("<p>The beginning of the name of the datasets to be listed. </p>")
    @as("DatasetNameBeginsWith")
    datasetNameBeginsWith: option<datasetName>,
    @ocaml.doc("<p> Specifies the maximum number of datasets to list. </p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p> An opaque pagination token indicating where to continue the listing of datasets.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>Provides information about the specified dataset, including creation time, dataset ARN,
         and status. </p>")
    @as("DatasetSummaries")
    datasetSummaries: option<datasetSummaries>,
    @ocaml.doc("<p> An opaque pagination token indicating where to continue the listing of datasets.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "ListDatasetsCommand"
  let make = (~datasetNameBeginsWith=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({datasetNameBeginsWith, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeModel = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the ML model to be described. </p>") @as("ModelName")
    modelName: modelName,
  }
  type response = {
    @ocaml.doc(
      "<p>Indicates that the asset associated with this sensor has been shut off. As long as this condition is met, Lookout for Equipment will not use data from this asset for training, evaluation, or inference.</p>"
    )
    @as("OffCondition")
    offCondition: option<offCondition>,
    @ocaml.doc(
      "<p>Provides the identifier of the KMS key used to encrypt model data by Amazon Lookout for Equipment. </p>"
    )
    @as("ServerSideKmsKeyId")
    serverSideKmsKeyId: option<kmsKeyArn>,
    @ocaml.doc("<p>Indicates the time and date at which the ML model was created. </p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>Indicates the last time the ML model was updated. The type of update is not specified.
      </p>")
    @as("LastUpdatedTime")
    lastUpdatedTime: option<timestamp_>,
    @ocaml.doc("<p>The Model Metrics show an aggregated summary of the model's performance within the evaluation time 
         range. This is the JSON content of the metrics created when evaluating the model. </p>")
    @as("ModelMetrics")
    modelMetrics: option<synthesizedJsonModelMetrics>,
    @ocaml.doc("<p>If the training of the ML model failed, this indicates the reason for that failure.
      </p>")
    @as("FailedReason")
    failedReason: option<boundedLengthString>,
    @ocaml.doc("<p>Indicates the time at which the training of the ML model was completed. </p>")
    @as("TrainingExecutionEndTime")
    trainingExecutionEndTime: option<timestamp_>,
    @ocaml.doc("<p>Indicates the time at which the training of the ML model began. </p>")
    @as("TrainingExecutionStartTime")
    trainingExecutionStartTime: option<timestamp_>,
    @ocaml.doc("<p>Specifies the current status of the model being described. Status describes the status
         of the most recent action of the model. </p>")
    @as("Status")
    status: option<modelStatus>,
    @ocaml.doc("<p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of 
         the data after post processing by 
         Amazon Lookout for Equipment. For example, if you provide data that 
         has been collected at a 1 second level and you want the system to resample 
         the data at a 1 minute rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>
            <p>When providing a value for the <code>TargetSamplingRate</code>, you must 
               attach the prefix \"PT\" to the rate you want.  The value for a 1 second rate 
               is therefore <i>PT1S</i>, the value for a 15 minute rate 
               is <i>PT15M</i>, and the value for a 1 hour rate 
               is <i>PT1H</i>
         </p>")
    @as("DataPreProcessingConfiguration")
    dataPreProcessingConfiguration: option<dataPreProcessingConfiguration>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
         the ML model being described. </p>")
    @as("RoleArn")
    roleArn: option<iamRoleArn>,
    @ocaml.doc("<p> Indicates the time reference in the dataset that was used to end the subset of
         evaluation data for the ML model. </p>")
    @as("EvaluationDataEndTime")
    evaluationDataEndTime: option<timestamp_>,
    @ocaml.doc("<p> Indicates the time reference in the dataset that was used to begin the subset of
         evaluation data for the ML model. </p>")
    @as("EvaluationDataStartTime")
    evaluationDataStartTime: option<timestamp_>,
    @ocaml.doc("<p> Indicates the time reference in the dataset that was used to end the subset of training
         data for the ML model. </p>")
    @as("TrainingDataEndTime")
    trainingDataEndTime: option<timestamp_>,
    @ocaml.doc("<p> Indicates the time reference in the dataset that was used to begin the subset of
         training data for the ML model. </p>")
    @as("TrainingDataStartTime")
    trainingDataStartTime: option<timestamp_>,
    @ocaml.doc("<p>Specifies configuration information about the labels input, including its S3 location.
      </p>")
    @as("LabelsInputConfiguration")
    labelsInputConfiguration: option<labelsInputConfiguration>,
    @ocaml.doc("<p>A JSON description of the data that is in each time series dataset, including names,
         column names, and data types. </p>")
    @as("Schema")
    schema: option<synthesizedJsonInlineDataSchema>,
    @ocaml.doc("<p>The Amazon Resouce Name (ARN) of the dataset used to create the ML model being
         described. </p>")
    @as("DatasetArn")
    datasetArn: option<datasetArn>,
    @ocaml.doc("<p>The name of the dataset being used by the ML being described. </p>")
    @as("DatasetName")
    datasetName: option<datasetName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the ML model being described. </p>")
    @as("ModelArn")
    modelArn: option<modelArn>,
    @ocaml.doc("<p>The name of the ML model being described. </p>") @as("ModelName")
    modelName: option<modelName>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "DescribeModelCommand"
  let make = (~modelName, ()) => new({modelName: modelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeInferenceScheduler = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the inference scheduler being described. </p>")
    @as("InferenceSchedulerName")
    inferenceSchedulerName: inferenceSchedulerIdentifier,
  }
  type response = {
    @ocaml.doc(
      "<p>Provides the identifier of the KMS key used to encrypt inference scheduler data by Amazon Lookout for Equipment. </p>"
    )
    @as("ServerSideKmsKeyId")
    serverSideKmsKeyId: option<kmsKeyArn>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
         the inference scheduler being described. </p>")
    @as("RoleArn")
    roleArn: option<iamRoleArn>,
    @ocaml.doc("<p> Specifies information for the output results for the inference scheduler, 
         including the output S3 location. </p>")
    @as("DataOutputConfiguration")
    dataOutputConfiguration: option<inferenceOutputConfiguration>,
    @ocaml.doc("<p> Specifies configuration information for the input data for the inference scheduler,
         including delimiter, format, and dataset location. </p>")
    @as("DataInputConfiguration")
    dataInputConfiguration: option<inferenceInputConfiguration>,
    @ocaml.doc(
      "<p>Specifies the time at which the inference scheduler was last updated, if it was. </p>"
    )
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>Specifies the time at which the inference scheduler was created. </p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>Specifies how often data is uploaded to the source S3 bucket for the input data. This
         value is the length of time between data uploads. For instance, if you select 5 minutes,
         Amazon Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This
         frequency also determines how often Amazon Lookout for Equipment starts a scheduled inference on your data.
         In this example, it starts once every 5 minutes. </p>")
    @as("DataUploadFrequency")
    dataUploadFrequency: option<dataUploadFrequency>,
    @ocaml.doc("<p> A period of time (in minutes) by which inference on the data is delayed after the data
         starts. For instance, if you select an offset delay time of five minutes, inference will
         not begin on the data until the first data measurement after the five minute mark. For example, if 
         five minutes is selected, the inference scheduler will wake up at the configured frequency with the 
         additional five minute delay time to check the customer S3 bucket. The customer can upload data at 
         the same frequency and they don't need to stop and restart the scheduler when uploading new data.</p>")
    @as("DataDelayOffsetInMinutes")
    dataDelayOffsetInMinutes: option<dataDelayOffsetInMinutes>,
    @ocaml.doc("<p>Indicates the status of the inference scheduler. </p>") @as("Status")
    status: option<inferenceSchedulerStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the inference scheduler being described. </p>")
    @as("InferenceSchedulerArn")
    inferenceSchedulerArn: option<inferenceSchedulerArn>,
    @ocaml.doc("<p>The name of the inference scheduler being described. </p>")
    @as("InferenceSchedulerName")
    inferenceSchedulerName: option<inferenceSchedulerName>,
    @ocaml.doc("<p>The name of the ML model of the inference scheduler being described. </p>")
    @as("ModelName")
    modelName: option<modelName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the ML model of the inference scheduler being
         described. </p>")
    @as("ModelArn")
    modelArn: option<modelArn>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "DescribeInferenceSchedulerCommand"
  let make = (~inferenceSchedulerName, ()) => new({inferenceSchedulerName: inferenceSchedulerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDataset = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the dataset to be described. </p>") @as("DatasetName")
    datasetName: datasetIdentifier,
  }
  type response = {
    @ocaml.doc(
      "<p>Specifies the S3 location configuration for the data input for the data ingestion job. </p>"
    )
    @as("IngestionInputConfiguration")
    ingestionInputConfiguration: option<ingestionInputConfiguration>,
    @ocaml.doc(
      "<p>Provides the identifier of the KMS key used to encrypt dataset data by Amazon Lookout for Equipment. </p>"
    )
    @as("ServerSideKmsKeyId")
    serverSideKmsKeyId: option<kmsKeyArn>,
    @ocaml.doc("<p>A JSON description of the data that is in each time series dataset, including names,
         column names, and data types. </p>")
    @as("Schema")
    schema: option<synthesizedJsonInlineDataSchema>,
    @ocaml.doc("<p>Indicates the status of the dataset. </p>") @as("Status")
    status: option<datasetStatus>,
    @ocaml.doc("<p>Specifies the time the dataset was last updated, if it was. </p>")
    @as("LastUpdatedAt")
    lastUpdatedAt: option<timestamp_>,
    @ocaml.doc(
      "<p>Specifies the time the dataset was created in Amazon Lookout for Equipment. </p>"
    )
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset being described. </p>")
    @as("DatasetArn")
    datasetArn: option<datasetArn>,
    @ocaml.doc("<p>The name of the dataset being described. </p>") @as("DatasetName")
    datasetName: option<datasetName>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "DescribeDatasetCommand"
  let make = (~datasetName, ()) => new({datasetName: datasetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDataIngestionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The job ID of the data ingestion job. </p>") @as("JobId") jobId: ingestionJobId,
  }
  type response = {
    @ocaml.doc("<p>Specifies the reason for failure when a data ingestion job has failed. </p>")
    @as("FailedReason")
    failedReason: option<boundedLengthString>,
    @ocaml.doc("<p>Indicates the status of the <code>DataIngestionJob</code> operation. </p>")
    @as("Status")
    status: option<ingestionJobStatus>,
    @ocaml.doc("<p>The time at which the data ingestion job was created. </p>") @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM role with permission to access the data source
         being ingested. </p>")
    @as("RoleArn")
    roleArn: option<iamRoleArn>,
    @ocaml.doc("<p>Specifies the S3 location configuration for the data input for the data ingestion job.
      </p>")
    @as("IngestionInputConfiguration")
    ingestionInputConfiguration: option<ingestionInputConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset being used in the data ingestion job.
      </p>")
    @as("DatasetArn")
    datasetArn: option<datasetArn>,
    @ocaml.doc("<p>Indicates the job ID of the data ingestion job. </p>") @as("JobId")
    jobId: option<ingestionJobId>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "DescribeDataIngestionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateModel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Indicates that the asset associated with this sensor has been shut off. As long as this condition is met, Lookout for Equipment will not use data from this asset for training, evaluation, or inference.</p>"
    )
    @as("OffCondition")
    offCondition: option<offCondition>,
    @ocaml.doc("<p> Any tags associated with the ML model being created. </p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>Provides the identifier of the KMS key used to encrypt model data by Amazon Lookout for Equipment. </p>"
    )
    @as("ServerSideKmsKeyId")
    serverSideKmsKeyId: option<nameOrArn>,
    @ocaml.doc("<p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of 
         the data after post processing by 
         Amazon Lookout for Equipment. For example, if you provide data that 
         has been collected at a 1 second level and you want the system to resample 
         the data at a 1 minute rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>
         <p>When providing a value for the <code>TargetSamplingRate</code>, you must 
            attach the prefix \"PT\" to the rate you want.  The value for a 1 second rate 
            is therefore <i>PT1S</i>, the value for a 15 minute rate 
            is <i>PT15M</i>, and the value for a 1 hour rate 
            is <i>PT1H</i>
         </p>")
    @as("DataPreProcessingConfiguration")
    dataPreProcessingConfiguration: option<dataPreProcessingConfiguration>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of a role with permission to access the data source
         being used to create the ML model. </p>")
    @as("RoleArn")
    roleArn: option<iamRoleArn>,
    @ocaml.doc("<p> Indicates the time reference in the dataset that should be used to end the subset of
         evaluation data for the ML model. </p>")
    @as("EvaluationDataEndTime")
    evaluationDataEndTime: option<timestamp_>,
    @ocaml.doc("<p>Indicates the time reference in the dataset that should be used to begin the subset of
         evaluation data for the ML model. </p>")
    @as("EvaluationDataStartTime")
    evaluationDataStartTime: option<timestamp_>,
    @ocaml.doc("<p>Indicates the time reference in the dataset that should be used to end the subset of
         training data for the ML model. </p>")
    @as("TrainingDataEndTime")
    trainingDataEndTime: option<timestamp_>,
    @ocaml.doc("<p>Indicates the time reference in the dataset that should be used to begin the subset of
         training data for the ML model. </p>")
    @as("TrainingDataStartTime")
    trainingDataStartTime: option<timestamp_>,
    @ocaml.doc("<p>A unique identifier for the request. If you do not set the client request token, Amazon
         Lookout for Equipment generates one. </p>")
    @as("ClientToken")
    clientToken: idempotenceToken,
    @ocaml.doc("<p>The input configuration for the labels being used for the ML model that's being created.
      </p>")
    @as("LabelsInputConfiguration")
    labelsInputConfiguration: option<labelsInputConfiguration>,
    @ocaml.doc("<p>The data schema for the ML model being created. </p>") @as("DatasetSchema")
    datasetSchema: option<datasetSchema>,
    @ocaml.doc("<p>The name of the dataset for the ML model being created. </p>") @as("DatasetName")
    datasetName: datasetIdentifier,
    @ocaml.doc("<p>The name for the ML model to be created.</p>") @as("ModelName")
    modelName: modelName,
  }
  type response = {
    @ocaml.doc("<p>Indicates the status of the <code>CreateModel</code> operation. </p>")
    @as("Status")
    status: option<modelStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the model being created. </p>") @as("ModelArn")
    modelArn: option<modelArn>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new external new: request => t = "CreateModelCommand"
  let make = (
    ~clientToken,
    ~datasetName,
    ~modelName,
    ~offCondition=?,
    ~tags=?,
    ~serverSideKmsKeyId=?,
    ~dataPreProcessingConfiguration=?,
    ~roleArn=?,
    ~evaluationDataEndTime=?,
    ~evaluationDataStartTime=?,
    ~trainingDataEndTime=?,
    ~trainingDataStartTime=?,
    ~labelsInputConfiguration=?,
    ~datasetSchema=?,
    (),
  ) =>
    new({
      offCondition,
      tags,
      serverSideKmsKeyId,
      dataPreProcessingConfiguration,
      roleArn,
      evaluationDataEndTime,
      evaluationDataStartTime,
      trainingDataEndTime,
      trainingDataStartTime,
      clientToken,
      labelsInputConfiguration,
      datasetSchema,
      datasetName,
      modelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateInferenceScheduler = {
  type t
  type request = {
    @ocaml.doc("<p>Any tags associated with the inference scheduler. </p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p> A unique identifier for the request. If you do not set the client request token, Amazon
         Lookout for Equipment generates one. </p>")
    @as("ClientToken")
    clientToken: idempotenceToken,
    @ocaml.doc(
      "<p>Provides the identifier of the KMS key used to encrypt inference scheduler data by Amazon Lookout for Equipment. </p>"
    )
    @as("ServerSideKmsKeyId")
    serverSideKmsKeyId: option<nameOrArn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a role with permission to access the data source being
         used for the inference. </p>")
    @as("RoleArn")
    roleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies configuration information for the output results for the inference scheduler,
         including the S3 location for the output. </p>")
    @as("DataOutputConfiguration")
    dataOutputConfiguration: inferenceOutputConfiguration,
    @ocaml.doc("<p>Specifies configuration information for the input data for the inference scheduler,
         including delimiter, format, and dataset location. </p>")
    @as("DataInputConfiguration")
    dataInputConfiguration: inferenceInputConfiguration,
    @ocaml.doc("<p> How often data is uploaded to the source S3 bucket for the input data. The value chosen
         is the length of time between data uploads. For instance, if you select 5 minutes, Amazon
         Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This frequency
         also determines how often Amazon Lookout for Equipment starts a scheduled inference on your data. In this
         example, it starts once every 5 minutes. </p>")
    @as("DataUploadFrequency")
    dataUploadFrequency: dataUploadFrequency,
    @ocaml.doc("<p>A period of time (in minutes) by which inference on the data is delayed after the data
         starts. For instance, if you select an offset delay time of five minutes, inference will
         not begin on the data until the first data measurement after the five minute mark. For example, if 
         five minutes is selected, the inference scheduler will wake up at the configured frequency with the 
         additional five minute delay time to check the customer S3 bucket. The customer can upload data at 
         the same frequency and they don't need to stop and restart the scheduler when uploading new data. </p>")
    @as("DataDelayOffsetInMinutes")
    dataDelayOffsetInMinutes: option<dataDelayOffsetInMinutes>,
    @ocaml.doc("<p>The name of the inference scheduler being created. </p>")
    @as("InferenceSchedulerName")
    inferenceSchedulerName: inferenceSchedulerName,
    @ocaml.doc("<p>The name of the previously trained ML model being used to create the inference
         scheduler. </p>")
    @as("ModelName")
    modelName: modelName,
  }
  type response = {
    @ocaml.doc(
      "<p>Indicates the status of the <code>CreateInferenceScheduler</code> operation. </p>"
    )
    @as("Status")
    status: option<inferenceSchedulerStatus>,
    @ocaml.doc("<p>The name of inference scheduler being created. </p>")
    @as("InferenceSchedulerName")
    inferenceSchedulerName: option<inferenceSchedulerName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the inference scheduler being created. </p>")
    @as("InferenceSchedulerArn")
    inferenceSchedulerArn: option<inferenceSchedulerArn>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "CreateInferenceSchedulerCommand"
  let make = (
    ~clientToken,
    ~roleArn,
    ~dataOutputConfiguration,
    ~dataInputConfiguration,
    ~dataUploadFrequency,
    ~inferenceSchedulerName,
    ~modelName,
    ~tags=?,
    ~serverSideKmsKeyId=?,
    ~dataDelayOffsetInMinutes=?,
    (),
  ) =>
    new({
      tags,
      clientToken,
      serverSideKmsKeyId,
      roleArn,
      dataOutputConfiguration,
      dataInputConfiguration,
      dataUploadFrequency,
      dataDelayOffsetInMinutes,
      inferenceSchedulerName,
      modelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDataset = {
  type t
  type request = {
    @ocaml.doc("<p>Any tags associated with the ingested data described in the dataset. </p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p> A unique identifier for the request. If you do not set the client request token, Amazon
         Lookout for Equipment generates one. </p>")
    @as("ClientToken")
    clientToken: idempotenceToken,
    @ocaml.doc(
      "<p>Provides the identifier of the KMS key used to encrypt dataset data by Amazon Lookout for Equipment. </p>"
    )
    @as("ServerSideKmsKeyId")
    serverSideKmsKeyId: option<nameOrArn>,
    @ocaml.doc("<p>A JSON description of the data that is in each time series dataset, including names,
         column names, and data types. </p>")
    @as("DatasetSchema")
    datasetSchema: datasetSchema,
    @ocaml.doc("<p>The name of the dataset being created. </p>") @as("DatasetName")
    datasetName: datasetName,
  }
  type response = {
    @ocaml.doc("<p>Indicates the status of the <code>CreateDataset</code> operation. </p>")
    @as("Status")
    status: option<datasetStatus>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the dataset being created. </p>")
    @as("DatasetArn")
    datasetArn: option<datasetArn>,
    @ocaml.doc("<p>The name of the dataset being created. </p>") @as("DatasetName")
    datasetName: option<datasetName>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "CreateDatasetCommand"
  let make = (~clientToken, ~datasetSchema, ~datasetName, ~tags=?, ~serverSideKmsKeyId=?, ()) =>
    new({tags, clientToken, serverSideKmsKeyId, datasetSchema, datasetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListInferenceExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the inference execution. </p>") @as("Status")
    status: option<inferenceExecutionStatus>,
    @ocaml.doc("<p>The time reference in the inferenced dataset before which Amazon Lookout for Equipment stopped the
         inference execution. </p>")
    @as("DataEndTimeBefore")
    dataEndTimeBefore: option<timestamp_>,
    @ocaml.doc("<p>The time reference in the inferenced dataset after which Amazon Lookout for Equipment started the
         inference execution. </p>")
    @as("DataStartTimeAfter")
    dataStartTimeAfter: option<timestamp_>,
    @ocaml.doc("<p>The name of the inference scheduler for the inference execution listed. </p>")
    @as("InferenceSchedulerName")
    inferenceSchedulerName: inferenceSchedulerIdentifier,
    @ocaml.doc("<p>Specifies the maximum number of inference executions to list. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An opaque pagination token indicating where to continue the listing of inference
         executions.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>Provides an array of information about the individual inference executions returned from
         the <code>ListInferenceExecutions</code> operation, including model used, inference
         scheduler, data configuration, and so on. </p>")
    @as("InferenceExecutionSummaries")
    inferenceExecutionSummaries: option<inferenceExecutionSummaries>,
    @ocaml.doc("<p> An opaque pagination token indicating where to continue the listing of inference
         executions. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "ListInferenceExecutionsCommand"
  let make = (
    ~inferenceSchedulerName,
    ~status=?,
    ~dataEndTimeBefore=?,
    ~dataStartTimeAfter=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      status,
      dataEndTimeBefore,
      dataStartTimeAfter,
      inferenceSchedulerName,
      maxResults,
      nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDataIngestionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates the status of the data ingestion job. </p>") @as("Status")
    status: option<ingestionJobStatus>,
    @ocaml.doc("<p> Specifies the maximum number of data ingestion jobs to list. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p> An opaque pagination token indicating where to continue the listing of data ingestion
         jobs. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the dataset being used for the data ingestion job. </p>")
    @as("DatasetName")
    datasetName: option<datasetName>,
  }
  type response = {
    @ocaml.doc("<p>Specifies information about the specific data ingestion job, including dataset name and
         status. </p>")
    @as("DataIngestionJobSummaries")
    dataIngestionJobSummaries: option<dataIngestionJobSummaries>,
    @ocaml.doc("<p> An opaque pagination token indicating where to continue the listing of data ingestion
         jobs. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-lookoutequipment") @new
  external new: request => t = "ListDataIngestionJobsCommand"
  let make = (~status=?, ~maxResults=?, ~nextToken=?, ~datasetName=?, ()) =>
    new({status, maxResults, nextToken, datasetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
